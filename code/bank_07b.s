; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

	cp   a                                           ; $4000: $bf
	ld   bc, $0086                                   ; $4001: $01 $86 $00
	ld   [$0f01], sp                                 ; $4004: $08 $01 $0f
	inc  c                                           ; $4007: $0c
	rrca                                             ; $4008: $0f
	ld   [$080f], sp                                 ; $4009: $08 $0f $08
	rrca                                             ; $400c: $0f
	dec  c                                           ; $400d: $0d
	add  l                                           ; $400e: $85
	nop                                              ; $400f: $00
	ld   [$f474], sp                                 ; $4010: $08 $74 $f4
	ld   l, b                                        ; $4013: $68
	add  sp, -$2f                                    ; $4014: $e8 $d1
	ret  nc                                          ; $4016: $d0

	ldh  [c], a                                      ; $4017: $e2
	ldh  [$03], a                                    ; $4018: $e0 $03
	add  l                                           ; $401a: $85
	nop                                              ; $401b: $00
	ld   [$017e], sp                                 ; $401c: $08 $7e $01
	and  b                                           ; $401f: $a0
	ldh  [$08], a                                    ; $4020: $e0 $08
	ld   hl, sp+$09                                  ; $4022: $f8 $09
	ccf                                              ; $4024: $3f
	ld   sp, hl                                      ; $4025: $f9
	add  l                                           ; $4026: $85
	nop                                              ; $4027: $00
	ld   bc, $837c                                   ; $4028: $01 $7c $83
	add  b                                           ; $402b: $80
	ld   h, b                                        ; $402c: $60
	add  b                                           ; $402d: $80
	db   $18, $80                                    ; $402e: $18 $80
	ld   c, $00                                      ; $4030: $0e $00
	rst  $38                                         ; $4032: $ff
	add  l                                           ; $4033: $85
	nop                                              ; $4034: $00
	ld   bc, $6b94                                   ; $4035: $01 $94 $6b
	add  b                                           ; $4038: $80
	adc  b                                           ; $4039: $88
	add  b                                           ; $403a: $80
	rst  $20                                         ; $403b: $e7
	add  b                                           ; $403c: $80
	add  hl, de                                      ; $403d: $19
	nop                                              ; $403e: $00
	rst  $38                                         ; $403f: $ff
	add  l                                           ; $4040: $85
	nop                                              ; $4041: $00
	ld   bc, $629d                                   ; $4042: $01 $9d $62
	add  b                                           ; $4045: $80
	sbc  b                                           ; $4046: $98
	add  b                                           ; $4047: $80
	ld   d, [hl]                                     ; $4048: $56
	add  b                                           ; $4049: $80
	ld   d, l                                        ; $404a: $55
	nop                                              ; $404b: $00
	rst  $38                                         ; $404c: $ff
	add  l                                           ; $404d: $85
	nop                                              ; $404e: $00
	ld   bc, $aa55                                   ; $404f: $01 $55 $aa
	add  b                                           ; $4052: $80
	ld   d, l                                        ; $4053: $55
	inc  b                                           ; $4054: $04
	ld   a, [hl-]                                    ; $4055: $3a
	ccf                                              ; $4056: $3f
	db   $10                                         ; $4057: $10
	dec  d                                           ; $4058: $15
	rst  $38                                         ; $4059: $ff
	add  l                                           ; $405a: $85
	nop                                              ; $405b: $00

jr_07b_405c:
	ld   bc, $aa55                                   ; $405c: $01 $55 $aa
	add  b                                           ; $405f: $80
	ld   d, l                                        ; $4060: $55

jr_07b_4061:
	inc  b                                           ; $4061: $04
	nop                                              ; $4062: $00
	rst  $38                                         ; $4063: $ff
	xor  d                                           ; $4064: $aa
	ld   d, l                                        ; $4065: $55
	rst  $38                                         ; $4066: $ff
	add  l                                           ; $4067: $85
	nop                                              ; $4068: $00
	ld   bc, $a15e                                   ; $4069: $01 $5e $a1
	add  b                                           ; $406c: $80
	ld   d, c                                        ; $406d: $51
	inc  b                                           ; $406e: $04
	jr   nc, jr_07b_4061                             ; $406f: $30 $f0

	sub  c                                           ; $4071: $91
	ld   d, c                                        ; $4072: $51
	rst  $38                                         ; $4073: $ff
	add  l                                           ; $4074: $85
	nop                                              ; $4075: $00
	ld   bc, $00ff                                   ; $4076: $01 $ff $00
	add  b                                           ; $4079: $80
	inc  c                                           ; $407a: $0c
	add  b                                           ; $407b: $80
	ld   c, h                                        ; $407c: $4c
	add  b                                           ; $407d: $80
	call z, $ff00                                    ; $407e: $cc $00 $ff
	add  l                                           ; $4081: $85
	nop                                              ; $4082: $00
	dec  b                                           ; $4083: $05
	adc  d                                           ; $4084: $8a
	ld   a, a                                        ; $4085: $7f
	jr   jr_07b_4107                                 ; $4086: $18 $7f

	dec  d                                           ; $4088: $15
	ld   a, a                                        ; $4089: $7f
	add  b                                           ; $408a: $80
	rst  $38                                         ; $408b: $ff
	nop                                              ; $408c: $00
	ld   hl, sp-$7b                                  ; $408d: $f8 $85
	nop                                              ; $408f: $00
	ld   [$e79f], sp                                 ; $4090: $08 $9f $e7
	inc  sp                                          ; $4093: $33
	rst  $30                                         ; $4094: $f7
	inc  de                                          ; $4095: $13
	di                                               ; $4096: $f3
	sub  e                                           ; $4097: $93
	di                                               ; $4098: $f3
	inc  a                                           ; $4099: $3c
	add  l                                           ; $409a: $85
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	rst  $38                                         ; $409d: $ff
	add  c                                           ; $409e: $81
	db   $fc                                         ; $409f: $fc
	add  b                                           ; $40a0: $80
	call nc, $a480                                   ; $40a1: $d4 $80 $a4
	nop                                              ; $40a4: $00
	inc  bc                                          ; $40a5: $03
	add  l                                           ; $40a6: $85
	nop                                              ; $40a7: $00
	ld   bc, $02fd                                   ; $40a8: $01 $fd $02
	add  d                                           ; $40ab: $82
	ld   b, $80                                      ; $40ac: $06 $80
	inc  c                                           ; $40ae: $0c
	nop                                              ; $40af: $00
	rst  $38                                         ; $40b0: $ff
	add  l                                           ; $40b1: $85
	nop                                              ; $40b2: $00
	ld   bc, $0cf3                                   ; $40b3: $01 $f3 $0c
	add  b                                           ; $40b6: $80
	inc  bc                                          ; $40b7: $03
	add  d                                           ; $40b8: $82
	nop                                              ; $40b9: $00
	nop                                              ; $40ba: $00
	rst  $38                                         ; $40bb: $ff
	add  l                                           ; $40bc: $85
	nop                                              ; $40bd: $00
	nop                                              ; $40be: $00
	rst  $38                                         ; $40bf: $ff
	add  c                                           ; $40c0: $81
	nop                                              ; $40c1: $00
	add  b                                           ; $40c2: $80
	ret  nz                                          ; $40c3: $c0

	add  b                                           ; $40c4: $80
	jr   nc, @+$04                                   ; $40c5: $30 $02

	ld   a, [$090f]                                  ; $40c7: $fa $0f $09
	adc  e                                           ; $40ca: $8b
	rrca                                             ; $40cb: $0f
	ld   [bc], a                                     ; $40cc: $02
	set  0, b                                        ; $40cd: $cb $c0
	adc  b                                           ; $40cf: $88
	adc  e                                           ; $40d0: $8b
	add  b                                           ; $40d1: $80
	ld   bc, $07f7                                   ; $40d2: $01 $f7 $07
	add  b                                           ; $40d5: $80
	ld   hl, $2080                                   ; $40d6: $21 $80 $20
	add  b                                           ; $40d9: $80
	jr   z, jr_07b_405c                              ; $40da: $28 $80

	ld   a, [hl+]                                    ; $40dc: $2a
	add  b                                           ; $40dd: $80
	ld   a, d                                        ; $40de: $7a
	add  b                                           ; $40df: $80
	ld   c, $09                                      ; $40e0: $0e $09
	ld   [hl+], a                                    ; $40e2: $22
	inc  hl                                          ; $40e3: $23
	inc  bc                                          ; $40e4: $03
	jp   $f001                                       ; $40e5: $c3 $01 $f0


	jr   z, jr_07b_4108                              ; $40e8: $28 $1e

	add  l                                           ; $40ea: $85
	add  e                                           ; $40eb: $83
	add  b                                           ; $40ec: $80
	and  b                                           ; $40ed: $a0
	add  b                                           ; $40ee: $80
	cp   b                                           ; $40ef: $b8
	add  b                                           ; $40f0: $80
	ld   a, $11                                      ; $40f1: $3e $11
	rlca                                             ; $40f3: $07
	add  a                                           ; $40f4: $87
	ld   b, $86                                      ; $40f5: $06 $86
	and  c                                           ; $40f7: $a1
	pop  hl                                          ; $40f8: $e1
	ld   l, b                                        ; $40f9: $68
	jr   c, @+$1c                                    ; $40fa: $38 $1a

	adc  [hl]                                        ; $40fc: $8e
	add  $63                                         ; $40fd: $c6 $63
	ld   sp, $0c18                                   ; $40ff: $31 $18 $0c
	ld   b, $83                                      ; $4102: $06 $83
	add  c                                           ; $4104: $81
	add  d                                           ; $4105: $82
	xor  d                                           ; $4106: $aa

jr_07b_4107:
	add  b                                           ; $4107: $80

jr_07b_4108:
	ld   h, l                                        ; $4108: $65
	add  b                                           ; $4109: $80
	ld   a, [de]                                     ; $410a: $1a
	add  b                                           ; $410b: $80
	add  [hl]                                        ; $410c: $86
	ld   de, $e1a1                                   ; $410d: $11 $a1 $e1
	ld   l, b                                        ; $4110: $68
	jr   c, jr_07b_412c                              ; $4111: $38 $19

	adc  a                                           ; $4113: $8f
	ld   l, h                                        ; $4114: $6c
	ld   [$7353], a                                  ; $4115: $ea $53 $73
	jr   nc, jr_07b_4132                             ; $4118: $30 $18

	ldh  [c], a                                      ; $411a: $e2
	xor  $56                                         ; $411b: $ee $56
	ld   d, e                                        ; $411d: $53
	adc  a                                           ; $411e: $8f
	adc  [hl]                                        ; $411f: $8e
	add  b                                           ; $4120: $80
	ld   [hl], c                                     ; $4121: $71
	add  b                                           ; $4122: $80
	ld   a, [bc]                                     ; $4123: $0a
	add  b                                           ; $4124: $80
	xor  d                                           ; $4125: $aa
	add  b                                           ; $4126: $80
	rst  $38                                         ; $4127: $ff
	add  b                                           ; $4128: $80
	xor  d                                           ; $4129: $aa
	add  b                                           ; $412a: $80
	ld   d, l                                        ; $412b: $55

jr_07b_412c:
	add  b                                           ; $412c: $80
	cp   a                                           ; $412d: $bf
	inc  bc                                          ; $412e: $03
	adc  a                                           ; $412f: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4130: $cf
	ld   [hl], e                                     ; $4131: $73

jr_07b_4132:
	inc  sp                                          ; $4132: $33
	add  b                                           ; $4133: $80
	push de                                          ; $4134: $d5
	add  b                                           ; $4135: $80
	and  c                                           ; $4136: $a1
	add  b                                           ; $4137: $80
	ld   hl, sp-$80                                  ; $4138: $f8 $80
	xor  b                                           ; $413a: $a8
	add  b                                           ; $413b: $80
	ld   d, h                                        ; $413c: $54
	ld   [bc], a                                     ; $413d: $02
	ld   [bc], a                                     ; $413e: $02
	cp   $03                                         ; $413f: $fe $03
	add  c                                           ; $4141: $81
	rst  $38                                         ; $4142: $ff
	add  b                                           ; $4143: $80
	ld   c, e                                        ; $4144: $4b
	add  b                                           ; $4145: $80
	add  b                                           ; $4146: $80
	add  d                                           ; $4147: $82
	jp   hl                                          ; $4148: $e9


	add  b                                           ; $4149: $80
	nop                                              ; $414a: $00
	inc  b                                           ; $414b: $04
	ld   b, h                                        ; $414c: $44
	ld   c, h                                        ; $414d: $4c
	rlca                                             ; $414e: $07
	rra                                              ; $414f: $1f
	rst  $38                                         ; $4150: $ff
	add  c                                           ; $4151: $81
	rst  $28                                         ; $4152: $ef
	ld   bc, $fefd                                   ; $4153: $01 $fd $fe
	add  b                                           ; $4156: $80
	rst  $38                                         ; $4157: $ff
	ld   bc, $fffd                                   ; $4158: $01 $fd $ff
	add  b                                           ; $415b: $80
	ld   hl, $4202                                   ; $415c: $21 $02 $42
	ld   a, a                                        ; $415f: $7f
	ld   b, e                                        ; $4160: $43
	add  e                                           ; $4161: $83
	ld   a, a                                        ; $4162: $7f
	rlca                                             ; $4163: $07
	ld   a, [de]                                     ; $4164: $1a
	ei                                               ; $4165: $fb
	ld   hl, sp-$07                                  ; $4166: $f8 $f9
	ld   a, b                                        ; $4168: $78
	ld   a, c                                        ; $4169: $79
	ld   l, b                                        ; $416a: $68
	ld   a, c                                        ; $416b: $79
	add  d                                           ; $416c: $82
	cp   h                                           ; $416d: $bc

jr_07b_416e:
	ld   bc, $dc54                                   ; $416e: $01 $54 $dc
	add  b                                           ; $4171: $80
	sbc  $07                                         ; $4172: $de $07
	ld   d, h                                        ; $4174: $54
	call nc, $aca8                                   ; $4175: $d4 $a8 $ac
	ld   [hl], l                                     ; $4178: $75
	push af                                          ; $4179: $f5
	inc  b                                           ; $417a: $04
	add  h                                           ; $417b: $84
	add  b                                           ; $417c: $80
	call nz, $e480                                   ; $417d: $c4 $80 $e4
	inc  b                                           ; $4180: $04
	ld   b, l                                        ; $4181: $45
	push bc                                          ; $4182: $c5
	inc  [hl]                                        ; $4183: $34
	ld   [hl], h                                     ; $4184: $74
	jr   nc, jr_07b_4108                             ; $4185: $30 $81

	inc  c                                           ; $4187: $0c
	ld   bc, $0c08                                   ; $4188: $01 $08 $0c
	add  b                                           ; $418b: $80
	dec  c                                           ; $418c: $0d
	add  b                                           ; $418d: $80
	inc  c                                           ; $418e: $0c
	add  b                                           ; $418f: $80
	dec  c                                           ; $4190: $0d
	add  b                                           ; $4191: $80
	ld   [$0980], sp                                 ; $4192: $08 $80 $09
	ld   bc, $0004                                   ; $4195: $01 $04 $00
	add  b                                           ; $4198: $80
	inc  d                                           ; $4199: $14
	add  b                                           ; $419a: $80
	xor  d                                           ; $419b: $aa
	add  b                                           ; $419c: $80
	ld   d, l                                        ; $419d: $55
	add  b                                           ; $419e: $80
	cp   $02                                         ; $419f: $fe $02
	ld   h, e                                        ; $41a1: $63
	ld   a, a                                        ; $41a2: $7f
	pop  bc                                          ; $41a3: $c1
	add  c                                           ; $41a4: $81
	db   $e3                                         ; $41a5: $e3
	dec  b                                           ; $41a6: $05
	ld   a, [hl-]                                    ; $41a7: $3a
	inc  c                                           ; $41a8: $0c
	add  hl, bc                                      ; $41a9: $09
	inc  bc                                          ; $41aa: $03
	ld   [bc], a                                     ; $41ab: $02
	nop                                              ; $41ac: $00
	add  b                                           ; $41ad: $80
	ld   bc, $8380                                   ; $41ae: $01 $80 $83
	ld   b, $45                                      ; $41b1: $06 $45
	ld   b, a                                        ; $41b3: $47
	adc  b                                           ; $41b4: $88
	adc  a                                           ; $41b5: $8f
	ld   d, h                                        ; $41b6: $54
	ld   e, a                                        ; $41b7: $5f
	ldh  a, [c]                                      ; $41b8: $f2
	add  e                                           ; $41b9: $83
	rrca                                             ; $41ba: $0f
	nop                                              ; $41bb: $00
	ld   c, $81                                      ; $41bc: $0e $81
	rrca                                             ; $41be: $0f
	ld   b, $0e                                      ; $41bf: $06 $0e
	rrca                                             ; $41c1: $0f
	dec  c                                           ; $41c2: $0d
	rrca                                             ; $41c3: $0f
	dec  c                                           ; $41c4: $0d
	rrca                                             ; $41c5: $0f
	add  e                                           ; $41c6: $83
	add  e                                           ; $41c7: $83
	add  b                                           ; $41c8: $80
	dec  b                                           ; $41c9: $05
	and  b                                           ; $41ca: $a0
	ldh  [rP1], a                                    ; $41cb: $e0 $00
	ldh  [rAUD4LEN], a                               ; $41cd: $e0 $20
	add  b                                           ; $41cf: $80
	add  b                                           ; $41d0: $80
	ldh  a, [$80]                                    ; $41d1: $f0 $80
	ret  nz                                          ; $41d3: $c0

	ld   bc, $28d8                                   ; $41d4: $01 $d8 $28
	adc  h                                           ; $41d7: $8c
	ld   a, [hl+]                                    ; $41d8: $2a
	add  b                                           ; $41d9: $80
	cp   c                                           ; $41da: $b9
	add  b                                           ; $41db: $80
	cp   [hl]                                        ; $41dc: $be
	add  b                                           ; $41dd: $80

jr_07b_41de:
	add  e                                           ; $41de: $83
	add  b                                           ; $41df: $80
	or   b                                           ; $41e0: $b0
	add  b                                           ; $41e1: $80
	adc  [hl]                                        ; $41e2: $8e
	add  b                                           ; $41e3: $80
	add  c                                           ; $41e4: $81
	add  b                                           ; $41e5: $80
	or   b                                           ; $41e6: $b0
	add  b                                           ; $41e7: $80
	cp   h                                           ; $41e8: $bc
	add  b                                           ; $41e9: $80
	ldh  [$80], a                                    ; $41ea: $e0 $80
	jr   c, jr_07b_416e                              ; $41ec: $38 $80

	adc  $80                                         ; $41ee: $ce $80
	di                                               ; $41f0: $f3
	add  b                                           ; $41f1: $80
	inc  a                                           ; $41f2: $3c
	add  b                                           ; $41f3: $80
	adc  a                                           ; $41f4: $8f
	add  b                                           ; $41f5: $80
	ld   h, e                                        ; $41f6: $63
	add  b                                           ; $41f7: $80
	add  hl, de                                      ; $41f8: $19
	dec  b                                           ; $41f9: $05
	ld   b, d                                        ; $41fa: $42
	ld   h, e                                        ; $41fb: $63
	ld   sp, $0e18                                   ; $41fc: $31 $18 $0e
	ld   b, $80                                      ; $41ff: $06 $80
	add  c                                           ; $4201: $81
	add  b                                           ; $4202: $80
	ret  z                                           ; $4203: $c8

	add  b                                           ; $4204: $80
	ld   h, h                                        ; $4205: $64
	add  b                                           ; $4206: $80
	or   h                                           ; $4207: $b4
	add  b                                           ; $4208: $80
	jp   nc, $4611                                   ; $4209: $d2 $11 $46

	add  $11                                         ; $420c: $c6 $11
	pop  af                                          ; $420e: $f1
	ld   b, [hl]                                     ; $420f: $46
	ld   a, $91                                      ; $4210: $3e $91
	adc  a                                           ; $4212: $8f
	ld   h, b                                        ; $4213: $60
	ld   h, a                                        ; $4214: $67
	dec  e                                           ; $4215: $1d
	rra                                              ; $4216: $1f
	ld   a, [bc]                                     ; $4217: $0a
	ld   c, $15                                      ; $4218: $0e $15
	dec  e                                           ; $421a: $1d
	dec  h                                           ; $421b: $25
	ld   a, [hl+]                                    ; $421c: $2a
	add  b                                           ; $421d: $80
	push de                                          ; $421e: $d5
	add  b                                           ; $421f: $80
	ld   c, d                                        ; $4220: $4a
	dec  bc                                          ; $4221: $0b
	sub  l                                           ; $4222: $95
	push af                                          ; $4223: $f5
	jr   c, jr_07b_41de                              ; $4224: $38 $b8

	ld   a, l                                        ; $4226: $7d
	ld   e, l                                        ; $4227: $5d
	adc  d                                           ; $4228: $8a
	adc  $08                                         ; $4229: $ce $08
	adc  [hl]                                        ; $422b: $8e
	or   a                                           ; $422c: $b7
	or   l                                           ; $422d: $b5
	add  b                                           ; $422e: $80
	ld   c, d                                        ; $422f: $4a
	add  b                                           ; $4230: $80
	or   b                                           ; $4231: $b0
	add  b                                           ; $4232: $80
	ld   h, l                                        ; $4233: $65
	add  b                                           ; $4234: $80
	jp   z, $9f80                                    ; $4235: $ca $80 $9f

	inc  bc                                          ; $4238: $03
	ld   hl, sp-$01                                  ; $4239: $f8 $ff
	rlca                                             ; $423b: $07
	nop                                              ; $423c: $00
	add  b                                           ; $423d: $80
	ld   b, l                                        ; $423e: $45
	add  b                                           ; $423f: $80
	xor  d                                           ; $4240: $aa
	add  b                                           ; $4241: $80
	nop                                              ; $4242: $00
	add  b                                           ; $4243: $80
	ld   b, l                                        ; $4244: $45
	add  b                                           ; $4245: $80
	rst  $28                                         ; $4246: $ef
	dec  b                                           ; $4247: $05
	pop  hl                                          ; $4248: $e1
	rst  $28                                         ; $4249: $ef
	ld   [$ffe9], sp                                 ; $424a: $08 $e9 $ff
	db   $10                                         ; $424d: $10
	add  b                                           ; $424e: $80
	ld   d, l                                        ; $424f: $55
	add  b                                           ; $4250: $80
	ld   a, [hl+]                                    ; $4251: $2a
	add  b                                           ; $4252: $80
	nop                                              ; $4253: $00
	add  b                                           ; $4254: $80
	ld   d, l                                        ; $4255: $55
	add  b                                           ; $4256: $80
	ld   a, a                                        ; $4257: $7f
	rlca                                             ; $4258: $07
	ld   bc, $007f                                   ; $4259: $01 $7f $00
	ld   bc, $80ff                                   ; $425c: $01 $ff $80
	ld   [hl], d                                     ; $425f: $72
	ld   c, [hl]                                     ; $4260: $4e
	add  b                                           ; $4261: $80
	xor  [hl]                                        ; $4262: $ae
	ld   [de], a                                     ; $4263: $12
	add  [hl]                                        ; $4264: $86
	and  [hl]                                        ; $4265: $a6
	ld   [hl], h                                     ; $4266: $74
	halt                                             ; $4267: $76
	jp   nc, $20f2                                   ; $4268: $d2 $f2 $20

	ldh  [c], a                                      ; $426b: $e2
	ld   [$e80c], sp                                 ; $426c: $08 $0c $e8
	db   $10                                         ; $426f: $10
	inc  e                                           ; $4270: $1c
	ld   h, h                                        ; $4271: $64

jr_07b_4272:
	inc  a                                           ; $4272: $3c
	ld   a, h                                        ; $4273: $7c
	inc  b                                           ; $4274: $04
	inc  a                                           ; $4275: $3c
	inc  d                                           ; $4276: $14
	add  a                                           ; $4277: $87
	inc  l                                           ; $4278: $2c
	inc  bc                                          ; $4279: $03
	jr   nc, jr_07b_4288                             ; $427a: $30 $0c

	ld   [$800c], sp                                 ; $427c: $08 $0c $80
	rlca                                             ; $427f: $07
	add  b                                           ; $4280: $80
	inc  bc                                          ; $4281: $03
	add  h                                           ; $4282: $84
	nop                                              ; $4283: $00
	add  b                                           ; $4284: $80
	ld   bc, $dd05                                   ; $4285: $01 $05 $dd

jr_07b_4288:
	db   $e3                                         ; $4288: $e3
	ld   e, h                                        ; $4289: $5c
	ld   a, [hl]                                     ; $428a: $7e
	nop                                              ; $428b: $00
	inc  e                                           ; $428c: $1c
	add  b                                           ; $428d: $80
	add  c                                           ; $428e: $81
	dec  d                                           ; $428f: $15
	jp   nz, $45c3                                   ; $4290: $c2 $c3 $45

	ld   b, a                                        ; $4293: $47
	set  1, a                                        ; $4294: $cb $cf
	sub  [hl]                                        ; $4296: $96
	sbc  a                                           ; $4297: $9f
	xor  h                                           ; $4298: $ac
	cp   [hl]                                        ; $4299: $be
	ld   e, b                                        ; $429a: $58
	ld   a, h                                        ; $429b: $7c
	or   b                                           ; $429c: $b0
	ld   hl, sp+$63                                  ; $429d: $f8 $63
	di                                               ; $429f: $f3
	rst  ToBoot                                         ; $42a0: $c7
	rst  $20                                         ; $42a1: $e7
	adc  a                                           ; $42a2: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a3: $cf
	ld   e, $9e                                      ; $42a4: $1e $9e
	add  b                                           ; $42a6: $80
	jr   c, jr_07b_42a9                              ; $42a7: $38 $00

jr_07b_42a9:
	db   $fc                                         ; $42a9: $fc
	adc  l                                           ; $42aa: $8d
	rrca                                             ; $42ab: $0f
	nop                                              ; $42ac: $00
	add  e                                           ; $42ad: $83
	adc  l                                           ; $42ae: $8d
	add  b                                           ; $42af: $80
	nop                                              ; $42b0: $00
	jp   c, $2a8d                                    ; $42b1: $da $8d $2a

	add  b                                           ; $42b4: $80
	cp   a                                           ; $42b5: $bf
	add  b                                           ; $42b6: $80
	adc  a                                           ; $42b7: $8f
	add  b                                           ; $42b8: $80
	add  c                                           ; $42b9: $81
	add  b                                           ; $42ba: $80
	or   b                                           ; $42bb: $b0
	add  b                                           ; $42bc: $80
	cp   h                                           ; $42bd: $bc
	add  b                                           ; $42be: $80
	adc  [hl]                                        ; $42bf: $8e
	add  b                                           ; $42c0: $80
	add  [hl]                                        ; $42c1: $86
	add  b                                           ; $42c2: $80
	add  e                                           ; $42c3: $83
	add  b                                           ; $42c4: $80
	inc  c                                           ; $42c5: $0c
	add  b                                           ; $42c6: $80
	add  $82                                         ; $42c7: $c6 $82
	and  $86                                         ; $42c9: $e6 $86
	ld   h, [hl]                                     ; $42cb: $66
	add  d                                           ; $42cc: $82
	jp   c, $d88a                                    ; $42cd: $da $8a $d8

	ld   bc, $7d6b                                   ; $42d0: $01 $6b $7d
	add  b                                           ; $42d3: $80
	ld   a, h                                        ; $42d4: $7c
	nop                                              ; $42d5: $00
	inc  b                                           ; $42d6: $04
	adc  c                                           ; $42d7: $89
	inc  e                                           ; $42d8: $1c
	ld   bc, $676b                                   ; $42d9: $01 $6b $67
	add  b                                           ; $42dc: $80
	ld   [hl], $80                                   ; $42dd: $36 $80
	ld   d, $82                                      ; $42df: $16 $82
	xor  [hl]                                        ; $42e1: $ae
	add  d                                           ; $42e2: $82
	ld   b, $80                                      ; $42e3: $06 $80
	and  [hl]                                        ; $42e5: $a6
	dec  b                                           ; $42e6: $05
	adc  d                                           ; $42e7: $8a
	adc  b                                           ; $42e8: $88
	jr   nz, jr_07b_434b                             ; $42e9: $20 $60

	ld   e, b                                        ; $42eb: $58
	jr   @-$7e                                       ; $42ec: $18 $80

	add  $80                                         ; $42ee: $c6 $80
	jr   nc, jr_07b_4272                             ; $42f0: $30 $80

	ld   a, [bc]                                     ; $42f2: $0a
	add  d                                           ; $42f3: $82
	dec  b                                           ; $42f4: $05
	add  b                                           ; $42f5: $80
	db   $10                                         ; $42f6: $10
	add  b                                           ; $42f7: $80
	add  hl, bc                                      ; $42f8: $09
	add  b                                           ; $42f9: $80
	ld   b, $84                                      ; $42fa: $06 $84
	nop                                              ; $42fc: $00
	dec  b                                           ; $42fd: $05
	rla                                              ; $42fe: $17
	rra                                              ; $42ff: $1f
	dec  de                                          ; $4300: $1b
	inc  sp                                          ; $4301: $33
	and  b                                           ; $4302: $a0
	add  b                                           ; $4303: $80
	adc  b                                           ; $4304: $88
	nop                                              ; $4305: $00
	add  b                                           ; $4306: $80
	rst  $38                                         ; $4307: $ff
	add  b                                           ; $4308: $80
	sbc  h                                           ; $4309: $9c
	add  d                                           ; $430a: $82
	nop                                              ; $430b: $00
	add  b                                           ; $430c: $80
	ld   bc, $0580                                   ; $430d: $01 $80 $05
	add  b                                           ; $4310: $80
	ld   [bc], a                                     ; $4311: $02
	add  b                                           ; $4312: $80
	nop                                              ; $4313: $00
	add  b                                           ; $4314: $80
	rst  $38                                         ; $4315: $ff
	add  b                                           ; $4316: $80
	ld   [hl], c                                     ; $4317: $71
	ld   bc, $3c04                                   ; $4318: $01 $04 $3c
	add  b                                           ; $431b: $80
	inc  l                                           ; $431c: $2c
	add  d                                           ; $431d: $82
	inc  a                                           ; $431e: $3c
	dec  b                                           ; $431f: $05
	jr   nz, jr_07b_4361                             ; $4320: $20 $3f

	rlca                                             ; $4322: $07
	ccf                                              ; $4323: $3f
	add  b                                           ; $4324: $80
	sbc  a                                           ; $4325: $9f
	add  b                                           ; $4326: $80
	nop                                              ; $4327: $00
	add  b                                           ; $4328: $80
	ld   bc, $0282                                   ; $4329: $01 $82 $02
	add  b                                           ; $432c: $80
	nop                                              ; $432d: $00
	inc  de                                          ; $432e: $13
	adc  b                                           ; $432f: $88
	ld   hl, sp-$1c                                  ; $4330: $f8 $e4
	db   $ec                                         ; $4332: $ec
	sub  b                                           ; $4333: $90
	db   $f4                                         ; $4334: $f4
	inc  c                                           ; $4335: $0c
	inc  e                                           ; $4336: $1c
	ld   l, $3e                                      ; $4337: $2e $3e
	ld   c, b                                        ; $4339: $48
	ld   a, h                                        ; $433a: $7c
	ld   b, c                                        ; $433b: $41
	ld   a, c                                        ; $433c: $79
	jp   nz, $b0f3                                   ; $433d: $c2 $f3 $b0

	di                                               ; $4340: $f3
	db   $e4                                         ; $4341: $e4
	and  $80                                         ; $4342: $e6 $80
	xor  $03                                         ; $4344: $ee $03
	add  sp, -$12                                    ; $4346: $e8 $ee
	ld   d, $70                                      ; $4348: $16 $70
	add  b                                           ; $434a: $80

jr_07b_434b:
	ldh  [rTMA], a                                   ; $434b: $e0 $06
	ld   b, a                                        ; $434d: $47
	rst  ToBoot                                         ; $434e: $c7
	nop                                              ; $434f: $00
	add  b                                           ; $4350: $80
	jr   c, jr_07b_4392                              ; $4351: $38 $3f

	rlca                                             ; $4353: $07
	add  c                                           ; $4354: $81
	nop                                              ; $4355: $00
	add  b                                           ; $4356: $80
	ld   a, c                                        ; $4357: $79
	nop                                              ; $4358: $00
	db   $fc                                         ; $4359: $fc
	adc  l                                           ; $435a: $8d
	rrca                                             ; $435b: $0f
	nop                                              ; $435c: $00
	add  e                                           ; $435d: $83
	adc  l                                           ; $435e: $8d
	add  b                                           ; $435f: $80
	nop                                              ; $4360: $00

jr_07b_4361:
	jp   c, $2a8d                                    ; $4361: $da $8d $2a

	add  h                                           ; $4364: $84
	add  e                                           ; $4365: $83
	add  h                                           ; $4366: $84
	add  c                                           ; $4367: $81
	add  d                                           ; $4368: $82
	add  b                                           ; $4369: $80
	adc  [hl]                                        ; $436a: $8e
	ld   h, [hl]                                     ; $436b: $66
	adc  [hl]                                        ; $436c: $8e
	ret  c                                           ; $436d: $d8

	ld   [bc], a                                     ; $436e: $02
	jr   jr_07b_438f                                 ; $436f: $18 $1e

	inc  d                                           ; $4371: $14
	adc  e                                           ; $4372: $8b
	inc  e                                           ; $4373: $1c
	ld   bc, $060a                                   ; $4374: $01 $0a $06
	add  b                                           ; $4377: $80
	and  [hl]                                        ; $4378: $a6
	ld   [bc], a                                     ; $4379: $02
	inc  b                                           ; $437a: $04
	ld   b, $04                                      ; $437b: $06 $04
	add  a                                           ; $437d: $87
	ld   b, $00                                      ; $437e: $06 $00
	rlca                                             ; $4380: $07
	adc  l                                           ; $4381: $8d
	dec  b                                           ; $4382: $05
	dec  de                                          ; $4383: $1b
	ld   h, a                                        ; $4384: $67
	ld   h, h                                        ; $4385: $64
	dec  c                                           ; $4386: $0d
	ld   c, b                                        ; $4387: $48
	ld   e, d                                        ; $4388: $5a
	ld   e, b                                        ; $4389: $58
	ld   e, l                                        ; $438a: $5d
	ld   e, b                                        ; $438b: $58
	ld   b, d                                        ; $438c: $42
	ld   b, b                                        ; $438d: $40
	ld   b, h                                        ; $438e: $44

jr_07b_438f:
	ld   b, b                                        ; $438f: $40
	ld   c, c                                        ; $4390: $49
	ld   c, b                                        ; $4391: $48

jr_07b_4392:
	ld   e, d                                        ; $4392: $5a
	ld   d, b                                        ; $4393: $50
	ld   [hl], h                                     ; $4394: $74
	jr   z, @+$63                                    ; $4395: $28 $61

	nop                                              ; $4397: $00
	halt                                             ; $4398: $76
	db   $fc                                         ; $4399: $fc
	xor  b                                           ; $439a: $a8
	call c, $8c05                                    ; $439b: $dc $05 $8c
	ld   d, [hl]                                     ; $439e: $56
	call c, $8c80                                    ; $439f: $dc $80 $8c
	dec  c                                           ; $43a2: $0d
	db   $fd                                         ; $43a3: $fd
	nop                                              ; $43a4: $00
	sub  d                                           ; $43a5: $92
	and  e                                           ; $43a6: $a3
	add  a                                           ; $43a7: $87
	dec  b                                           ; $43a8: $05
	push bc                                          ; $43a9: $c5
	ei                                               ; $43aa: $fb
	ld   [hl+], a                                    ; $43ab: $22
	call c, $888e                                    ; $43ac: $dc $8e $88
	inc  h                                           ; $43af: $24
	xor  b                                           ; $43b0: $a8
	add  b                                           ; $43b1: $80
	ret  c                                           ; $43b2: $d8

	ld   [bc], a                                     ; $43b3: $02
	ld   l, c                                        ; $43b4: $69
	ld   bc, $81e0                                   ; $43b5: $01 $e0 $81
	nop                                              ; $43b8: $00
	add  b                                           ; $43b9: $80
	ld   d, l                                        ; $43ba: $55
	add  b                                           ; $43bb: $80
	dec  hl                                          ; $43bc: $2b
	add  b                                           ; $43bd: $80
	ld   d, a                                        ; $43be: $57
	ld   a, [bc]                                     ; $43bf: $0a
	ld   l, $2f                                      ; $43c0: $2e $2f
	ld   e, l                                        ; $43c2: $5d
	ld   e, a                                        ; $43c3: $5f
	dec  sp                                          ; $43c4: $3b
	ccf                                              ; $43c5: $3f
	rla                                              ; $43c6: $17
	inc  e                                           ; $43c7: $1c
	nop                                              ; $43c8: $00
	inc  c                                           ; $43c9: $0c
	ret  nc                                          ; $43ca: $d0

	add  c                                           ; $43cb: $81
	call c, Call_07b_5c00                            ; $43cc: $dc $00 $5c
	add  e                                           ; $43cf: $83
	call c, Call_07b_5002                            ; $43d0: $dc $02 $50
	ld   e, h                                        ; $43d3: $5c
	ld   [$ee81], sp                                 ; $43d4: $08 $81 $ee
	ld   [bc], a                                     ; $43d7: $02
	xor  [hl]                                        ; $43d8: $ae
	xor  $8e                                         ; $43d9: $ee $8e
	add  e                                           ; $43db: $83
	adc  $82                                         ; $43dc: $ce $82
	xor  $0c                                         ; $43de: $ee $0c
	sub  l                                           ; $43e0: $95
	di                                               ; $43e1: $f3
	ld   h, a                                        ; $43e2: $67
	ld   h, d                                        ; $43e3: $62
	dec  sp                                          ; $43e4: $3b
	jr   nc, @+$14                                   ; $43e5: $30 $12

	db   $10                                         ; $43e7: $10
	inc  b                                           ; $43e8: $04
	ld   [$0405], sp                                 ; $43e9: $08 $05 $04
	ld   b, $81                                      ; $43ec: $06 $81
	inc  b                                           ; $43ee: $04
	inc  b                                           ; $43ef: $04
	rst  $38                                         ; $43f0: $ff
	rrca                                             ; $43f1: $0f
	inc  c                                           ; $43f2: $0c
	rrca                                             ; $43f3: $0f
	inc  c                                           ; $43f4: $0c
	adc  c                                           ; $43f5: $89
	rrca                                             ; $43f6: $0f
	ld   bc, $8083                                   ; $43f7: $01 $83 $80
	add  b                                           ; $43fa: $80
	ldh  a, [$82]                                    ; $43fb: $f0 $82
	ret  nc                                          ; $43fd: $d0

	add  [hl]                                        ; $43fe: $86
	sub  b                                           ; $43ff: $90
	nop                                              ; $4400: $00
	jp   c, $2a8d                                    ; $4401: $da $8d $2a

jr_07b_4404:
	adc  [hl]                                        ; $4404: $8e
	add  b                                           ; $4405: $80
	add  b                                           ; $4406: $80
	ld   h, [hl]                                     ; $4407: $66
	adc  b                                           ; $4408: $88
	ld   h, $82                                      ; $4409: $26 $82
	ld   b, $8e                                      ; $440b: $06 $8e
	ret  c                                           ; $440d: $d8

	inc  b                                           ; $440e: $04
	ld   [de], a                                     ; $440f: $12
	inc  e                                           ; $4410: $1c
	ld   d, $1e                                      ; $4411: $16 $1e
	inc  d                                           ; $4413: $14
	adc  c                                           ; $4414: $89
	inc  e                                           ; $4415: $1c
	nop                                              ; $4416: $00
	ld   a, [bc]                                     ; $4417: $0a
	add  e                                           ; $4418: $83
	ld   b, $00                                      ; $4419: $06 $00
	inc  b                                           ; $441b: $04
	add  a                                           ; $441c: $87
	ld   b, $8e                                      ; $441d: $06 $8e
	dec  b                                           ; $441f: $05
	dec  bc                                          ; $4420: $0b
	jr   @+$5a                                       ; $4421: $18 $58

	ld   b, d                                        ; $4423: $42
	ld   b, e                                        ; $4424: $43
	ld   b, l                                        ; $4425: $45
	ld   b, [hl]                                     ; $4426: $46
	ld   c, [hl]                                     ; $4427: $4e
	ld   c, e                                        ; $4428: $4b
	ld   e, c                                        ; $4429: $59
	ld   e, b                                        ; $442a: $58
	ld   e, d                                        ; $442b: $5a
	ld   e, h                                        ; $442c: $5c
	add  b                                           ; $442d: $80
	ld   e, b                                        ; $442e: $58
	inc  sp                                          ; $442f: $33

jr_07b_4430:
	ld   b, c                                        ; $4430: $41
	ld   b, b                                        ; $4431: $40
	and  l                                           ; $4432: $a5
	ld   b, $e0                                      ; $4433: $06 $e0
	and  $ec                                         ; $4435: $e6 $ec
	ld   h, $17                                      ; $4437: $26 $17
	push hl                                          ; $4439: $e5
	db   $e4                                         ; $443a: $e4
	rlca                                             ; $443b: $07
	ld   b, a                                        ; $443c: $47
	nop                                              ; $443d: $00
	adc  b                                           ; $443e: $88
	nop                                              ; $443f: $00
	ld   de, $6200                                   ; $4440: $11 $00 $62
	and  c                                           ; $4443: $a1
	dec  b                                           ; $4444: $05
	inc  hl                                          ; $4445: $23
	adc  e                                           ; $4446: $8b
	and  l                                           ; $4447: $a5
	ld   [hl], h                                     ; $4448: $74
	ld   h, d                                        ; $4449: $62
	jr   nz, jr_07b_4430                             ; $444a: $20 $e4

	add  b                                           ; $444c: $80
	ld   [$1181], sp                                 ; $444d: $08 $81 $11
	nop                                              ; $4450: $00
	jr   nz, jr_07b_4404                             ; $4451: $20 $b1

	ld   a, [hl]                                     ; $4453: $7e
	rrca                                             ; $4454: $0f
	nop                                              ; $4455: $00
	ld   [hl], l                                     ; $4456: $75
	ld   a, e                                        ; $4457: $7b
	ld   h, h                                        ; $4458: $64
	ld   [hl], a                                     ; $4459: $77
	ld   c, b                                        ; $445a: $48
	ld   l, [hl]                                     ; $445b: $6e
	ld   [hl], b                                     ; $445c: $70
	ld   a, l                                        ; $445d: $7d
	ld   b, b                                        ; $445e: $40
	ld   a, e                                        ; $445f: $7b
	ld   l, b                                        ; $4460: $68
	ld   a, a                                        ; $4461: $7f
	adc  d                                           ; $4462: $8a
	sbc  h                                           ; $4463: $9c
	add  c                                           ; $4464: $81
	ld   l, h                                        ; $4465: $6c
	dec  bc                                          ; $4466: $0b
	db   $ec                                         ; $4467: $ec
	ld   [$0828], sp                                 ; $4468: $08 $28 $08
	xor  b                                           ; $446b: $a8
	ld   c, b                                        ; $446c: $48
	call z, $f460                                    ; $446d: $cc $60 $f4
	ret  z                                           ; $4470: $c8

	db   $ec                                         ; $4471: $ec
	or   b                                           ; $4472: $b0
	add  c                                           ; $4473: $81
	xor  $02                                         ; $4474: $ee $02
	xor  [hl]                                        ; $4476: $ae
	xor  $8e                                         ; $4477: $ee $8e
	add  e                                           ; $4479: $83
	adc  $82                                         ; $447a: $ce $82
	xor  $03                                         ; $447c: $ee $03
	ld   h, c                                        ; $447e: $61
	nop                                              ; $447f: $00
	rlca                                             ; $4480: $07
	nop                                              ; $4481: $00
	add  b                                           ; $4482: $80
	dec  c                                           ; $4483: $0d
	inc  bc                                          ; $4484: $03
	jr   jr_07b_4497                                 ; $4485: $18 $10

	add  hl, de                                      ; $4487: $19
	db   $10                                         ; $4488: $10
	add  b                                           ; $4489: $80

jr_07b_448a:
	ld   [de], a                                     ; $448a: $12
	inc  b                                           ; $448b: $04
	ld   c, $0d                                      ; $448c: $0e $0d
	dec  b                                           ; $448e: $05
	ld   b, $fd                                      ; $448f: $06 $fd
	adc  l                                           ; $4491: $8d
	rrca                                             ; $4492: $0f
	nop                                              ; $4493: $00
	sub  e                                           ; $4494: $93
	adc  l                                           ; $4495: $8d
	sub  b                                           ; $4496: $90

jr_07b_4497:
	nop                                              ; $4497: $00
	jp   c, $2a8d                                    ; $4498: $da $8d $2a

	adc  [hl]                                        ; $449b: $8e
	add  b                                           ; $449c: $80
	add  b                                           ; $449d: $80
	ld   b, $8a                                      ; $449e: $06 $8a
	ld   [bc], a                                     ; $44a0: $02
	add  b                                           ; $44a1: $80
	nop                                              ; $44a2: $00
	adc  [hl]                                        ; $44a3: $8e
	ret  c                                           ; $44a4: $d8

	ld   [bc], a                                     ; $44a5: $02
	inc  e                                           ; $44a6: $1c
	ld   e, $10                                      ; $44a7: $1e $10
	adc  c                                           ; $44a9: $89
	inc  e                                           ; $44aa: $1c
	inc  bc                                          ; $44ab: $03
	ld   d, $1e                                      ; $44ac: $16 $1e
	nop                                              ; $44ae: $00
	ld   b, $80                                      ; $44af: $06 $80
	inc  b                                           ; $44b1: $04
	add  b                                           ; $44b2: $80
	ld   b, $80                                      ; $44b3: $06 $80
	inc  b                                           ; $44b5: $04
	add  b                                           ; $44b6: $80
	ld   [bc], a                                     ; $44b7: $02
	add  b                                           ; $44b8: $80
	inc  b                                           ; $44b9: $04
	add  b                                           ; $44ba: $80
	ld   [bc], a                                     ; $44bb: $02
	add  b                                           ; $44bc: $80
	inc  b                                           ; $44bd: $04
	add  b                                           ; $44be: $80
	dec  b                                           ; $44bf: $05
	adc  d                                           ; $44c0: $8a
	nop                                              ; $44c1: $00
	add  c                                           ; $44c2: $81
	inc  bc                                          ; $44c3: $03
	ld   [$4440], sp                                 ; $44c4: $08 $40 $44
	ld   b, b                                        ; $44c7: $40
	ld   c, b                                        ; $44c8: $48
	ld   b, h                                        ; $44c9: $44
	ld   d, l                                        ; $44ca: $55
	ld   e, d                                        ; $44cb: $5a
	ld   e, b                                        ; $44cc: $58
	ld   e, h                                        ; $44cd: $5c
	add  b                                           ; $44ce: $80
	ld   e, b                                        ; $44cf: $58
	add  b                                           ; $44d0: $80
	rst  $38                                         ; $44d1: $ff
	dec  c                                           ; $44d2: $0d
	ret  nz                                          ; $44d3: $c0

	rst  $38                                         ; $44d4: $ff
	cp   h                                           ; $44d5: $bc
	nop                                              ; $44d6: $00
	ld   b, h                                        ; $44d7: $44
	nop                                              ; $44d8: $00
	adc  b                                           ; $44d9: $88
	ld   bc, $0a10                                   ; $44da: $01 $10 $0a
	jr   z, jr_07b_44f3                              ; $44dd: $28 $14

	ld   d, b                                        ; $44df: $50
	ld   a, b                                        ; $44e0: $78
	add  b                                           ; $44e1: $80
	rst  $38                                         ; $44e2: $ff
	dec  b                                           ; $44e3: $05
	nop                                              ; $44e4: $00
	rst  $38                                         ; $44e5: $ff
	ld   e, $61                                      ; $44e6: $1e $61
	jr   nz, jr_07b_448a                             ; $44e8: $20 $a0

	add  [hl]                                        ; $44ea: $86
	ld   hl, $fc80                                   ; $44eb: $21 $80 $fc
	add  hl, de                                      ; $44ee: $19
	ld   [bc], a                                     ; $44ef: $02
	cp   $b7                                         ; $44f0: $fe $b7
	ld   a, a                                        ; $44f2: $7f

jr_07b_44f3:
	ld   h, e                                        ; $44f3: $63
	ld   a, a                                        ; $44f4: $7f
	ld   d, [hl]                                     ; $44f5: $56
	ld   a, a                                        ; $44f6: $7f
	cp   h                                           ; $44f7: $bc
	cp   [hl]                                        ; $44f8: $be
	cp   c                                           ; $44f9: $b9
	cp   l                                           ; $44fa: $bd
	dec  a                                           ; $44fb: $3d
	cp   l                                           ; $44fc: $bd
	db   $fd                                         ; $44fd: $fd
	ld   a, l                                        ; $44fe: $7d
	ld   a, a                                        ; $44ff: $7f
	ld   a, d                                        ; $4500: $7a
	xor  d                                           ; $4501: $aa
	ld   hl, sp+$00                                  ; $4502: $f8 $00
	or   b                                           ; $4504: $b0
	ld   b, b                                        ; $4505: $40
	ldh  [rAUD2LOW], a                               ; $4506: $e0 $18
	ret  c                                           ; $4508: $d8

	add  b                                           ; $4509: $80
	cp   b                                           ; $450a: $b8
	ld   bc, $0080                                   ; $450b: $01 $80 $00
	add  d                                           ; $450e: $82
	ld   hl, sp+$00                                  ; $450f: $f8 $00
	adc  b                                           ; $4511: $88
	add  c                                           ; $4512: $81
	xor  $0d                                         ; $4513: $ee $0d
	set  1, a                                        ; $4515: $cb $cf
	set  1, a                                        ; $4517: $cb $cf
	adc  e                                           ; $4519: $8b
	rst  $28                                         ; $451a: $ef
	adc  b                                           ; $451b: $88
	xor  $a9                                         ; $451c: $ee $a9
	rst  $28                                         ; $451e: $ef
	jr   z, jr_07b_458f                              ; $451f: $28 $6e

	ld   h, [hl]                                     ; $4521: $66
	ld   [bc], a                                     ; $4522: $02
	add  b                                           ; $4523: $80
	ld   bc, $0080                                   ; $4524: $01 $80 $00
	add  b                                           ; $4527: $80
	add  b                                           ; $4528: $80
	add  b                                           ; $4529: $80
	ret  nz                                          ; $452a: $c0

	add  b                                           ; $452b: $80
	ldh  [$80], a                                    ; $452c: $e0 $80
	ld   [hl], b                                     ; $452e: $70
	add  b                                           ; $452f: $80
	cp   b                                           ; $4530: $b8
	nop                                              ; $4531: $00
	db   $fc                                         ; $4532: $fc
	add  l                                           ; $4533: $85
	rrca                                             ; $4534: $0f
	ld   [bc], a                                     ; $4535: $02
	dec  c                                           ; $4536: $0d
	rrca                                             ; $4537: $0f
	dec  c                                           ; $4538: $0d
	add  e                                           ; $4539: $83
	rrca                                             ; $453a: $0f
	nop                                              ; $453b: $00
	sub  e                                           ; $453c: $93
	add  l                                           ; $453d: $85
	sub  b                                           ; $453e: $90
	add  d                                           ; $453f: $82
	ret  nz                                          ; $4540: $c0

	add  d                                           ; $4541: $82
	add  b                                           ; $4542: $80
	nop                                              ; $4543: $00
	jp   c, $2a8d                                    ; $4544: $da $8d $2a

	adc  [hl]                                        ; $4547: $8e
	add  b                                           ; $4548: $80
	adc  [hl]                                        ; $4549: $8e
	nop                                              ; $454a: $00
	adc  d                                           ; $454b: $8a
	ret  c                                           ; $454c: $d8

	add  d                                           ; $454d: $82
	ld   e, b                                        ; $454e: $58
	nop                                              ; $454f: $00
	ld   [de], a                                     ; $4550: $12
	add  e                                           ; $4551: $83
	inc  e                                           ; $4552: $1c
	inc  bc                                          ; $4553: $03
	ld   d, $1e                                      ; $4554: $16 $1e
	ld   de, $8019                                   ; $4556: $11 $19 $80
	rra                                              ; $4559: $1f
	inc  bc                                          ; $455a: $03
	adc  $ff                                         ; $455b: $ce $ff
	ccf                                              ; $455d: $3f
	nop                                              ; $455e: $00
	add  b                                           ; $455f: $80
	ld   [bc], a                                     ; $4560: $02
	add  b                                           ; $4561: $80
	inc  b                                           ; $4562: $04
	add  b                                           ; $4563: $80
	ld   b, $80                                      ; $4564: $06 $80
	rra                                              ; $4566: $1f
	add  b                                           ; $4567: $80
	rst  $38                                         ; $4568: $ff
	ld   [bc], a                                     ; $4569: $02
	xor  d                                           ; $456a: $aa
	rst  $38                                         ; $456b: $ff
	ld   d, l                                        ; $456c: $55
	add  b                                           ; $456d: $80
	rst  $38                                         ; $456e: $ff
	add  [hl]                                        ; $456f: $86
	nop                                              ; $4570: $00
	dec  b                                           ; $4571: $05
	rst  $38                                         ; $4572: $ff
	nop                                              ; $4573: $00
	rst  $38                                         ; $4574: $ff
	and  h                                           ; $4575: $a4
	rst  $38                                         ; $4576: $ff
	ld   e, e                                        ; $4577: $5b
	add  b                                           ; $4578: $80
	rst  $38                                         ; $4579: $ff
	add  [hl]                                        ; $457a: $86
	nop                                              ; $457b: $00
	dec  b                                           ; $457c: $05
	rst  $38                                         ; $457d: $ff
	nop                                              ; $457e: $00
	rst  $38                                         ; $457f: $ff
	sub  d                                           ; $4580: $92
	rst  $38                                         ; $4581: $ff
	ld   l, l                                        ; $4582: $6d
	add  b                                           ; $4583: $80
	rst  $38                                         ; $4584: $ff
	add  c                                           ; $4585: $81
	nop                                              ; $4586: $00
	add  b                                           ; $4587: $80
	ld   [bc], a                                     ; $4588: $02
	add  b                                           ; $4589: $80
	nop                                              ; $458a: $00
	inc  de                                          ; $458b: $13
	ld   [$08f8], sp                                 ; $458c: $08 $f8 $08

jr_07b_458f:
	db   $fc                                         ; $458f: $fc
	ld   b, b                                        ; $4590: $40
	cp   $b7                                         ; $4591: $fe $b7
	cp   $a0                                         ; $4593: $fe $a0
	ld   e, l                                        ; $4595: $5d
	cp   d                                           ; $4596: $ba
	cp   a                                           ; $4597: $bf
	jp   $c1cd                                       ; $4598: $c3 $cd $c1


	add  $90                                         ; $459b: $c6 $90
	sub  e                                           ; $459d: $93
	ld   b, d                                        ; $459e: $42
	ld   b, e                                        ; $459f: $43
	add  b                                           ; $45a0: $80
	rlca                                             ; $45a1: $07
	add  b                                           ; $45a2: $80
	ld   c, $80                                      ; $45a3: $0e $80
	inc  e                                           ; $45a5: $1c
	db   $10                                         ; $45a6: $10
	ld   a, b                                        ; $45a7: $78
	ld   a, a                                        ; $45a8: $7f
	ccf                                              ; $45a9: $3f
	cp   a                                           ; $45aa: $bf
	rra                                              ; $45ab: $1f
	ld   e, a                                        ; $45ac: $5f
	sbc  a                                           ; $45ad: $9f
	ld   a, [hl-]                                    ; $45ae: $3a
	ld   c, d                                        ; $45af: $4a
	sbc  a                                           ; $45b0: $9f
	ld   [hl], a                                     ; $45b1: $77
	rst  JumpTable                                         ; $45b2: $df
	ld   e, [hl]                                     ; $45b3: $5e
	ld   l, [hl]                                     ; $45b4: $6e
	nop                                              ; $45b5: $00
	ccf                                              ; $45b6: $3f
	add  sp, -$79                                    ; $45b7: $e8 $87
	ld   hl, sp+$01                                  ; $45b9: $f8 $01
	nop                                              ; $45bb: $00
	rst  $38                                         ; $45bc: $ff
	add  b                                           ; $45bd: $80
	ld   a, a                                        ; $45be: $7f
	rlca                                             ; $45bf: $07
	nop                                              ; $45c0: $00
	rst  $38                                         ; $45c1: $ff
	call z, $08ee                                    ; $45c2: $cc $ee $08
	ld   l, [hl]                                     ; $45c5: $6e
	ld   [$80ae], a                                  ; $45c6: $ea $ae $80
	ld   l, [hl]                                     ; $45c9: $6e
	add  b                                           ; $45ca: $80
	xor  [hl]                                        ; $45cb: $ae
	ld   bc, $dd22                                   ; $45cc: $01 $22 $dd
	add  b                                           ; $45cf: $80
	adc  l                                           ; $45d0: $8d
	ld   bc, $ff00                                   ; $45d1: $01 $00 $ff
	add  b                                           ; $45d4: $80
	ld   e, h                                        ; $45d5: $5c
	add  b                                           ; $45d6: $80
	inc  l                                           ; $45d7: $2c
	add  b                                           ; $45d8: $80
	inc  d                                           ; $45d9: $14
	add  b                                           ; $45da: $80
	inc  c                                           ; $45db: $0c
	add  b                                           ; $45dc: $80
	inc  b                                           ; $45dd: $04
	dec  b                                           ; $45de: $05
	or   [hl]                                        ; $45df: $b6
	rst  $38                                         ; $45e0: $ff
	ld   c, b                                        ; $45e1: $48
	rst  $38                                         ; $45e2: $ff
	ld   bc, $1eff                                   ; $45e3: $01 $ff $1e
	ld   [bc], a                                     ; $45e6: $02
	add  [hl]                                        ; $45e7: $86
	nop                                              ; $45e8: $00
	nop                                              ; $45e9: $00
	rrca                                             ; $45ea: $0f
	add  l                                           ; $45eb: $85
	nop                                              ; $45ec: $00
	nop                                              ; $45ed: $00
	rrca                                             ; $45ee: $0f
	add  l                                           ; $45ef: $85
	nop                                              ; $45f0: $00
	dec  b                                           ; $45f1: $05
	and  e                                           ; $45f2: $a3
	ld   b, b                                        ; $45f3: $40
	inc  bc                                          ; $45f4: $03
	jr   jr_07b_45fb                                 ; $45f5: $18 $04

	inc  bc                                          ; $45f7: $03
	add  b                                           ; $45f8: $80
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00

jr_07b_45fb:
	rst  $38                                         ; $45fb: $ff
	add  l                                           ; $45fc: $85
	nop                                              ; $45fd: $00
	ld   [$38c5], sp                                 ; $45fe: $08 $c5 $38
	dec  b                                           ; $4601: $05
	ld   b, $60                                      ; $4602: $06 $60
	ld   bc, $c098                                   ; $4604: $01 $98 $c0
	rst  ToBoot                                         ; $4607: $c7
	add  l                                           ; $4608: $85
	nop                                              ; $4609: $00
	dec  b                                           ; $460a: $05
	rst  $20                                         ; $460b: $e7
	jr   @-$7e                                       ; $460c: $18 $80

	nop                                              ; $460e: $00
	ld   h, b                                        ; $460f: $60
	ldh  [$80], a                                    ; $4610: $e0 $80
	ld   a, b                                        ; $4612: $78
	nop                                              ; $4613: $00
	rst  $38                                         ; $4614: $ff
	add  l                                           ; $4615: $85
	nop                                              ; $4616: $00
	ld   [bc], a                                     ; $4617: $02
	jp   $0f0c                                       ; $4618: $c3 $0c $0f


	add  b                                           ; $461b: $80
	inc  bc                                          ; $461c: $03
	add  c                                           ; $461d: $81
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	ret  nz                                          ; $4620: $c0

	add  l                                           ; $4621: $85
	nop                                              ; $4622: $00
	ld   bc, $18e4                                   ; $4623: $01 $e4 $18
	add  b                                           ; $4626: $80
	nop                                              ; $4627: $00
	inc  b                                           ; $4628: $04
	add  b                                           ; $4629: $80
	add  d                                           ; $462a: $82
	ldh  [$61], a                                    ; $462b: $e0 $61
	ld   a, a                                        ; $462d: $7f
	add  l                                           ; $462e: $85
	nop                                              ; $462f: $00
	ld   [$6798], sp                                 ; $4630: $08 $98 $67
	xor  a                                           ; $4633: $af
	inc  hl                                          ; $4634: $23
	ld   b, e                                        ; $4635: $43
	add  hl, bc                                      ; $4636: $09
	add  hl, hl                                      ; $4637: $29
	xor  h                                           ; $4638: $ac
	cp   h                                           ; $4639: $bc
	add  [hl]                                        ; $463a: $86
	nop                                              ; $463b: $00
	add  e                                           ; $463c: $83
	rst  $38                                         ; $463d: $ff
	add  b                                           ; $463e: $80
	cp   $00                                         ; $463f: $fe $00
	rst  $38                                         ; $4641: $ff
	add  [hl]                                        ; $4642: $86
	nop                                              ; $4643: $00
	add  e                                           ; $4644: $83
	rst  $38                                         ; $4645: $ff
	add  b                                           ; $4646: $80
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	rst  $38                                         ; $4649: $ff
	add  [hl]                                        ; $464a: $86
	nop                                              ; $464b: $00
	add  e                                           ; $464c: $83
	rst  $38                                         ; $464d: $ff
	add  b                                           ; $464e: $80
	nop                                              ; $464f: $00
	nop                                              ; $4650: $00
	rst  $38                                         ; $4651: $ff
	add  [hl]                                        ; $4652: $86
	nop                                              ; $4653: $00
	add  e                                           ; $4654: $83
	rst  $38                                         ; $4655: $ff
	add  b                                           ; $4656: $80
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	rst  $38                                         ; $4659: $ff
	add  [hl]                                        ; $465a: $86
	nop                                              ; $465b: $00
	add  e                                           ; $465c: $83
	rst  $38                                         ; $465d: $ff
	add  b                                           ; $465e: $80
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	rst  $38                                         ; $4661: $ff
	add  [hl]                                        ; $4662: $86
	nop                                              ; $4663: $00
	add  e                                           ; $4664: $83
	rst  $38                                         ; $4665: $ff
	add  b                                           ; $4666: $80
	inc  bc                                          ; $4667: $03
	nop                                              ; $4668: $00
	rst  $38                                         ; $4669: $ff
	add  [hl]                                        ; $466a: $86
	nop                                              ; $466b: $00
	add  e                                           ; $466c: $83
	rst  $38                                         ; $466d: $ff
	add  b                                           ; $466e: $80
	cp   $00                                         ; $466f: $fe $00
	rst  $38                                         ; $4671: $ff
	add  l                                           ; $4672: $85
	nop                                              ; $4673: $00
	ld   [$e01d], sp                                 ; $4674: $08 $1d $e0

jr_07b_4677:
	adc  $c0                                         ; $4677: $ce $c0
	dec  e                                           ; $4679: $1d
	nop                                              ; $467a: $00
	scf                                              ; $467b: $37
	jr   nz, jr_07b_4677                             ; $467c: $20 $f9

	add  l                                           ; $467e: $85
	nop                                              ; $467f: $00
	add  hl, bc                                      ; $4680: $09
	adc  $21                                         ; $4681: $ce $21
	sub  a                                           ; $4683: $97
	rlca                                             ; $4684: $07
	sbc  a                                           ; $4685: $9f
	ld   e, $7e                                      ; $4686: $1e $7e
	ld   a, b                                        ; $4688: $78
	rst  $30                                         ; $4689: $f7
	nop                                              ; $468a: $00
	add  b                                           ; $468b: $80
	ld   [$0f8a], sp                                 ; $468c: $08 $8a $0f
	nop                                              ; $468f: $00
	ldh  a, [$83]                                    ; $4690: $f0 $83
	nop                                              ; $4692: $00
	add  b                                           ; $4693: $80
	ldh  [$80], a                                    ; $4694: $e0 $80
	cp   $00                                         ; $4696: $fe $00
	rst  $38                                         ; $4698: $ff

jr_07b_4699:
	add  b                                           ; $4699: $80
	db   $fd                                         ; $469a: $fd
	add  b                                           ; $469b: $80
	ld   [$d506], a                                  ; $469c: $ea $06 $d5
	ld   de, $0030                                   ; $469f: $11 $30 $00
	ld   a, [bc]                                     ; $46a2: $0a
	ld   [bc], a                                     ; $46a3: $02
	inc  bc                                          ; $46a4: $03
	add  d                                           ; $46a5: $82
	nop                                              ; $46a6: $00

jr_07b_46a7:
	ld   a, [bc]                                     ; $46a7: $0a
	ldh  [$60], a                                    ; $46a8: $e0 $60
	ld   a, [hl]                                     ; $46aa: $7e
	xor  [hl]                                        ; $46ab: $ae
	xor  a                                           ; $46ac: $af
	ld   d, l                                        ; $46ad: $55
	xor  d                                           ; $46ae: $aa
	nop                                              ; $46af: $00
	ret  nz                                          ; $46b0: $c0

	ld   b, b                                        ; $46b1: $40
	ld   [hl], b                                     ; $46b2: $70
	add  c                                           ; $46b3: $81
	ldh  a, [$84]                                    ; $46b4: $f0 $84
	nop                                              ; $46b6: $00
	add  b                                           ; $46b7: $80
	add  b                                           ; $46b8: $80
	nop                                              ; $46b9: $00
	ccf                                              ; $46ba: $3f
	add  l                                           ; $46bb: $85
	nop                                              ; $46bc: $00
	dec  b                                           ; $46bd: $05
	jr   nz, jr_07b_46d0                             ; $46be: $20 $10

	ld   [$0204], sp                                 ; $46c0: $08 $04 $02
	ld   bc, $0080                                   ; $46c3: $01 $80 $00
	inc  b                                           ; $46c6: $04
	ldh  a, [rAUD1SWEEP]                             ; $46c7: $f0 $10
	inc  e                                           ; $46c9: $1c
	inc  b                                           ; $46ca: $04
	rlca                                             ; $46cb: $07
	add  b                                           ; $46cc: $80
	inc  bc                                          ; $46cd: $03
	add  e                                           ; $46ce: $83
	nop                                              ; $46cf: $00

jr_07b_46d0:
	ld   b, $0c                                      ; $46d0: $06 $0c
	nop                                              ; $46d2: $00
	add  a                                           ; $46d3: $87
	ld   b, h                                        ; $46d4: $44
	ld   e, a                                        ; $46d5: $5f
	ld   h, [hl]                                     ; $46d6: $66
	ld   b, $80                                      ; $46d7: $06 $80
	inc  bc                                          ; $46d9: $03
	ld   [$800c], sp                                 ; $46da: $08 $0c $80
	add  d                                           ; $46dd: $82
	ldh  [$61], a                                    ; $46de: $e0 $61
	ld   [hl], b                                     ; $46e0: $70
	db   $10                                         ; $46e1: $10
	jr   jr_07b_46e4                                 ; $46e2: $18 $00

jr_07b_46e4:
	add  b                                           ; $46e4: $80
	inc  bc                                          ; $46e5: $03
	ld   [bc], a                                     ; $46e6: $02
	ld   h, $5e                                      ; $46e7: $26 $5e
	ld   e, a                                        ; $46e9: $5f
	add  b                                           ; $46ea: $80
	rra                                              ; $46eb: $1f
	add  b                                           ; $46ec: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46ed: $cf
	add  b                                           ; $46ee: $80

jr_07b_46ef:
	ld   b, a                                        ; $46ef: $47
	ld   b, $db                                      ; $46f0: $06 $db
	ld   e, e                                        ; $46f2: $5b
	ld   c, l                                        ; $46f3: $4d
	dec  l                                           ; $46f4: $2d
	scf                                              ; $46f5: $37
	rlca                                             ; $46f6: $07
	rrca                                             ; $46f7: $0f
	add  b                                           ; $46f8: $80
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	rst  $38                                         ; $46fb: $ff
	add  b                                           ; $46fc: $80
	add  b                                           ; $46fd: $80
	add  b                                           ; $46fe: $80
	ret  nz                                          ; $46ff: $c0

	add  b                                           ; $4700: $80
	ldh  [rP1], a                                    ; $4701: $e0 $00
	rst  $38                                         ; $4703: $ff
	add  b                                           ; $4704: $80
	ld   a, a                                        ; $4705: $7f
	add  b                                           ; $4706: $80
	cp   a                                           ; $4707: $bf
	ld   b, $df                                      ; $4708: $06 $df
	ret  c                                           ; $470a: $d8

	rlca                                             ; $470b: $07
	nop                                              ; $470c: $00
	cp   a                                           ; $470d: $bf
	add  b                                           ; $470e: $80
	ret  nz                                          ; $470f: $c0

	add  b                                           ; $4710: $80
	ld   b, b                                        ; $4711: $40
	add  b                                           ; $4712: $80
	jr   nz, jr_07b_4699                             ; $4713: $20 $84

	rst  $38                                         ; $4715: $ff
	inc  bc                                          ; $4716: $03
	nop                                              ; $4717: $00
	rst  $38                                         ; $4718: $ff
	nop                                              ; $4719: $00
	rst  $38                                         ; $471a: $ff

jr_07b_471b:
	add  h                                           ; $471b: $84
	ld   b, b                                        ; $471c: $40
	add  h                                           ; $471d: $84
	rst  $38                                         ; $471e: $ff
	dec  b                                           ; $471f: $05
	nop                                              ; $4720: $00
	rst  $38                                         ; $4721: $ff
	nop                                              ; $4722: $00
	rst  JumpTable                                         ; $4723: $df
	db   $10                                         ; $4724: $10
	jr   nc, jr_07b_46a7                             ; $4725: $30 $80

	jr   nz, @-$7e                                   ; $4727: $20 $80

	ld   b, b                                        ; $4729: $40
	add  h                                           ; $472a: $84
	rst  $38                                         ; $472b: $ff
	inc  bc                                          ; $472c: $03
	inc  bc                                          ; $472d: $03
	rst  $38                                         ; $472e: $ff
	inc  bc                                          ; $472f: $03
	rst  $38                                         ; $4730: $ff
	add  b                                           ; $4731: $80
	rrca                                             ; $4732: $0f
	add  b                                           ; $4733: $80
	rra                                              ; $4734: $1f
	add  b                                           ; $4735: $80
	ccf                                              ; $4736: $3f
	nop                                              ; $4737: $00
	rst  $38                                         ; $4738: $ff
	add  b                                           ; $4739: $80
	db   $fc                                         ; $473a: $fc
	inc  e                                           ; $473b: $1c
	ei                                               ; $473c: $fb
	ld   sp, hl                                      ; $473d: $f9
	rst  $20                                         ; $473e: $e7
	ldh  [$fc], a                                    ; $473f: $e0 $fc
	ld   hl, sp-$0d                                  ; $4741: $f8 $f3
	ldh  a, [$ee]                                    ; $4743: $f0 $ee
	ldh  [$9f], a                                    ; $4745: $e0 $9f
	add  b                                           ; $4747: $80
	ccf                                              ; $4748: $3f
	nop                                              ; $4749: $00
	cp   l                                           ; $474a: $bd
	add  c                                           ; $474b: $81
	scf                                              ; $474c: $37
	ld   b, $be                                      ; $474d: $06 $be
	sbc  l                                           ; $474f: $9d
	sbc  d                                           ; $4750: $9a

jr_07b_4751:
	nop                                              ; $4751: $00
	cp   e                                           ; $4752: $bb
	inc  hl                                          ; $4753: $23
	adc  a                                           ; $4754: $8f
	ld   c, $be                                      ; $4755: $0e $be
	jr   c, jr_07b_4751                              ; $4757: $38 $f8

	add  b                                           ; $4759: $80
	ldh  [$80], a                                    ; $475a: $e0 $80
	ret  nz                                          ; $475c: $c0

	add  b                                           ; $475d: $80
	add  b                                           ; $475e: $80
	add  b                                           ; $475f: $80
	nop                                              ; $4760: $00
	ld   bc, $e1e0                                   ; $4761: $01 $e0 $e1
	add  b                                           ; $4764: $80
	add  b                                           ; $4765: $80
	ld   b, $00                                      ; $4766: $06 $00
	jr   c, jr_07b_476a                              ; $4768: $38 $00

jr_07b_476a:
	ld   a, l                                        ; $476a: $7d
	jr   c, jr_07b_47a7                              ; $476b: $38 $3a

	jr   c, jr_07b_46ef                              ; $476d: $38 $80

	ld   a, b                                        ; $476f: $78
	ld   [bc], a                                     ; $4770: $02
	ld   b, c                                        ; $4771: $41
	nop                                              ; $4772: $00
	ccf                                              ; $4773: $3f
	adc  [hl]                                        ; $4774: $8e
	rrca                                             ; $4775: $0f
	add  b                                           ; $4776: $80
	ld   [$d580], a                                  ; $4777: $ea $80 $d5
	add  b                                           ; $477a: $80
	xor  d                                           ; $477b: $aa
	add  b                                           ; $477c: $80
	push de                                          ; $477d: $d5
	add  b                                           ; $477e: $80
	xor  d                                           ; $477f: $aa
	add  b                                           ; $4780: $80
	ld   e, a                                        ; $4781: $5f
	add  b                                           ; $4782: $80
	xor  d                                           ; $4783: $aa
	add  b                                           ; $4784: $80
	ld   e, c                                        ; $4785: $59
	add  b                                           ; $4786: $80
	xor  d                                           ; $4787: $aa
	add  b                                           ; $4788: $80
	ld   d, l                                        ; $4789: $55
	add  b                                           ; $478a: $80
	xor  d                                           ; $478b: $aa
	add  b                                           ; $478c: $80
	ld   d, l                                        ; $478d: $55
	add  b                                           ; $478e: $80
	xor  d                                           ; $478f: $aa
	add  b                                           ; $4790: $80
	ld   d, l                                        ; $4791: $55
	add  b                                           ; $4792: $80
	ld   a, [$5701]                                  ; $4793: $fa $01 $57
	jr   z, jr_07b_471b                              ; $4796: $28 $83

	add  b                                           ; $4798: $80
	ld   [bc], a                                     ; $4799: $02
	db   $fc                                         ; $479a: $fc
	ld   a, h                                        ; $479b: $7c
	ld   a, a                                        ; $479c: $7f
	add  b                                           ; $479d: $80
	xor  e                                           ; $479e: $ab
	add  b                                           ; $479f: $80
	ld   d, l                                        ; $47a0: $55
	add  b                                           ; $47a1: $80
	and  b                                           ; $47a2: $a0
	ld   bc, $ff00                                   ; $47a3: $01 $00 $ff
	add  l                                           ; $47a6: $85

jr_07b_47a7:
	nop                                              ; $47a7: $00
	add  b                                           ; $47a8: $80
	ret  nz                                          ; $47a9: $c0

	ld   [bc], a                                     ; $47aa: $02
	db   $fc                                         ; $47ab: $fc
	inc  a                                           ; $47ac: $3c
	ccf                                              ; $47ad: $3f
	add  b                                           ; $47ae: $80
	inc  bc                                          ; $47af: $03
	dec  b                                           ; $47b0: $05
	nop                                              ; $47b1: $00
	ld   hl, sp+$07                                  ; $47b2: $f8 $07
	ld   bc, $0100                                   ; $47b4: $01 $00 $01
	add  l                                           ; $47b7: $85
	nop                                              ; $47b8: $00
	add  b                                           ; $47b9: $80
	ret  nz                                          ; $47ba: $c0

	inc  de                                          ; $47bb: $13
	db   $fc                                         ; $47bc: $fc
	inc  a                                           ; $47bd: $3c
	ei                                               ; $47be: $fb
	ld   bc, $e2d1                                   ; $47bf: $01 $d1 $e2
	ld   [hl], d                                     ; $47c2: $72
	ld   sp, $0241                                   ; $47c3: $31 $41 $02
	dec  c                                           ; $47c6: $0d
	nop                                              ; $47c7: $00
	ld   [$1404], sp                                 ; $47c8: $08 $04 $14
	add  hl, bc                                      ; $47cb: $09
	add  hl, hl                                      ; $47cc: $29
	inc  d                                           ; $47cd: $14
	xor  e                                           ; $47ce: $ab
	add  e                                           ; $47cf: $83
	add  b                                           ; $47d0: $80
	pop  hl                                          ; $47d1: $e1
	add  b                                           ; $47d2: $80
	ldh  a, [$80]                                    ; $47d3: $f0 $80
	db   $fc                                         ; $47d5: $fc
	add  b                                           ; $47d6: $80
	rst  $38                                         ; $47d7: $ff
	add  b                                           ; $47d8: $80
	ccf                                              ; $47d9: $3f
	add  d                                           ; $47da: $82
	rrca                                             ; $47db: $0f
	ld   bc, $e0e7                                   ; $47dc: $01 $e7 $e0
	add  b                                           ; $47df: $80
	ldh  a, [$80]                                    ; $47e0: $f0 $80
	ld   [hl], b                                     ; $47e2: $70
	ld   bc, $3031                                   ; $47e3: $01 $31 $30
	add  b                                           ; $47e6: $80
	ld   bc, $ba04                                   ; $47e7: $01 $04 $ba
	cp   h                                           ; $47ea: $bc
	cp   $ea                                         ; $47eb: $fe $ea
	db   $eb                                         ; $47ed: $eb
	add  b                                           ; $47ee: $80
	push de                                          ; $47ef: $d5
	add  e                                           ; $47f0: $83
	nop                                              ; $47f1: $00
	inc  b                                           ; $47f2: $04
	rst  $38                                         ; $47f3: $ff
	nop                                              ; $47f4: $00
	rst  $38                                         ; $47f5: $ff
	add  b                                           ; $47f6: $80
	ld   a, a                                        ; $47f7: $7f
	add  c                                           ; $47f8: $81
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	rst  $38                                         ; $47fb: $ff
	add  b                                           ; $47fc: $80
	ld   e, a                                        ; $47fd: $5f
	add  e                                           ; $47fe: $83
	nop                                              ; $47ff: $00
	ld   bc, $00c0                                   ; $4800: $01 $c0 $00
	add  b                                           ; $4803: $80
	ret  nz                                          ; $4804: $c0

	nop                                              ; $4805: $00
	ccf                                              ; $4806: $3f
	add  c                                           ; $4807: $81
	nop                                              ; $4808: $00
	add  b                                           ; $4809: $80
	rst  $38                                         ; $480a: $ff
	ld   bc, $00fc                                   ; $480b: $01 $fc $00
	add  h                                           ; $480e: $84
	ld   bc, $0080                                   ; $480f: $01 $80 $00
	ld   bc, $00fc                                   ; $4812: $01 $fc $00
	add  b                                           ; $4815: $80
	rlca                                             ; $4816: $07
	add  b                                           ; $4817: $80
	rst  $38                                         ; $4818: $ff
	inc  bc                                          ; $4819: $03
	ld   e, $1c                                      ; $481a: $1e $1c
	rst  $38                                         ; $481c: $ff
	db   $fd                                         ; $481d: $fd
	add  b                                           ; $481e: $80
	di                                               ; $481f: $f3
	ld   [bc], a                                     ; $4820: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4821: $cf
	call $803d                                       ; $4822: $cd $3d $80
	ld   a, [hl-]                                    ; $4825: $3a
	rlca                                             ; $4826: $07
	dec  [hl]                                        ; $4827: $35
	or   l                                           ; $4828: $b5
	xor  d                                           ; $4829: $aa
	ld   [$55d5], a                                  ; $482a: $ea $d5 $55
	ld   l, d                                        ; $482d: $6a
	ld   [$d080], a                                  ; $482e: $ea $80 $d0
	add  b                                           ; $4831: $80
	and  b                                           ; $4832: $a0
	add  b                                           ; $4833: $80
	ld   d, b                                        ; $4834: $50
	add  b                                           ; $4835: $80
	and  b                                           ; $4836: $a0
	add  b                                           ; $4837: $80
	ld   b, b                                        ; $4838: $40
	add  b                                           ; $4839: $80
	add  b                                           ; $483a: $80
	add  e                                           ; $483b: $83
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	ld   bc, $0089                                   ; $483e: $01 $89 $00
	ld   a, [bc]                                     ; $4841: $0a
	ld   a, $00                                      ; $4842: $3e $00
	pop  bc                                          ; $4844: $c1
	ld   bc, $0302                                   ; $4845: $01 $02 $03
	dec  c                                           ; $4848: $0d
	rrca                                             ; $4849: $0f
	inc  sp                                          ; $484a: $33
	ccf                                              ; $484b: $3f
	cpl                                              ; $484c: $2f
	add  e                                           ; $484d: $83
	ccf                                              ; $484e: $3f
	nop                                              ; $484f: $00
	ldh  [$80], a                                    ; $4850: $e0 $80
	ld   c, $80                                      ; $4852: $0e $80
	rrca                                             ; $4854: $0f
	add  b                                           ; $4855: $80
	ld   c, $80                                      ; $4856: $0e $80
	rrca                                             ; $4858: $0f
	add  b                                           ; $4859: $80
	ld   c, $80                                      ; $485a: $0e $80
	rrca                                             ; $485c: $0f
	add  b                                           ; $485d: $80
	ld   c, $80                                      ; $485e: $0e $80
	dec  c                                           ; $4860: $0d
	add  b                                           ; $4861: $80
	xor  d                                           ; $4862: $aa
	add  b                                           ; $4863: $80
	ld   e, c                                        ; $4864: $59
	add  b                                           ; $4865: $80
	xor  d                                           ; $4866: $aa
	add  b                                           ; $4867: $80
	ld   e, c                                        ; $4868: $59
	add  b                                           ; $4869: $80
	xor  d                                           ; $486a: $aa
	add  b                                           ; $486b: $80
	ld   e, c                                        ; $486c: $59
	add  b                                           ; $486d: $80
	xor  d                                           ; $486e: $aa
	add  b                                           ; $486f: $80
	ld   e, c                                        ; $4870: $59
	add  b                                           ; $4871: $80
	xor  d                                           ; $4872: $aa
	add  b                                           ; $4873: $80
	ld   d, l                                        ; $4874: $55
	add  b                                           ; $4875: $80
	xor  d                                           ; $4876: $aa
	add  b                                           ; $4877: $80
	ld   d, h                                        ; $4878: $54
	add  b                                           ; $4879: $80
	xor  d                                           ; $487a: $aa
	add  b                                           ; $487b: $80
	ld   d, h                                        ; $487c: $54
	add  b                                           ; $487d: $80
	xor  b                                           ; $487e: $a8

jr_07b_487f:
	add  b                                           ; $487f: $80
	ld   d, b                                        ; $4880: $50
	ld   bc, $80e0                                   ; $4881: $01 $e0 $80
	adc  e                                           ; $4884: $8b
	nop                                              ; $4885: $00
	nop                                              ; $4886: $00
	ld   h, b                                        ; $4887: $60
	adc  [hl]                                        ; $4888: $8e
	nop                                              ; $4889: $00
	add  b                                           ; $488a: $80
	rlca                                             ; $488b: $07
	add  b                                           ; $488c: $80
	ld   bc, $0089                                   ; $488d: $01 $89 $00
	nop                                              ; $4890: $00
	inc  bc                                          ; $4891: $03
	add  b                                           ; $4892: $80
	xor  c                                           ; $4893: $a9
	add  b                                           ; $4894: $80
	ld   d, l                                        ; $4895: $55
	add  b                                           ; $4896: $80
	add  hl, hl                                      ; $4897: $29
	add  b                                           ; $4898: $80
	dec  d                                           ; $4899: $15
	add  b                                           ; $489a: $80
	add  hl, hl                                      ; $489b: $29
	add  b                                           ; $489c: $80
	dec  d                                           ; $489d: $15
	add  b                                           ; $489e: $80
	ld   bc, $0501                                   ; $489f: $01 $01 $05
	or   $85                                         ; $48a2: $f6 $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a4: $cf
	add  b                                           ; $48a5: $80
	ld   c, a                                        ; $48a6: $4f
	add  h                                           ; $48a7: $84
	rrca                                             ; $48a8: $0f
	nop                                              ; $48a9: $00
	ccf                                              ; $48aa: $3f
	add  b                                           ; $48ab: $80
	jp   z, $c08b                                    ; $48ac: $ca $8b $c0

	inc  b                                           ; $48af: $04
	rst  $38                                         ; $48b0: $ff
	add  b                                           ; $48b1: $80
	sbc  a                                           ; $48b2: $9f
	ld   e, a                                        ; $48b3: $5f
	ld   d, b                                        ; $48b4: $50
	add  b                                           ; $48b5: $80
	db   $10                                         ; $48b6: $10
	add  c                                           ; $48b7: $81
	rla                                              ; $48b8: $17
	add  d                                           ; $48b9: $82
	ld   d, $03                                      ; $48ba: $16 $03
	rla                                              ; $48bc: $17
	ld   d, $c6                                      ; $48bd: $16 $c6
	nop                                              ; $48bf: $00
	add  b                                           ; $48c0: $80
	rst  $38                                         ; $48c1: $ff
	add  c                                           ; $48c2: $81
	nop                                              ; $48c3: $00
	add  c                                           ; $48c4: $81
	cp   $82                                         ; $48c5: $fe $82
	ld   b, $02                                      ; $48c7: $06 $02
	cp   $06                                         ; $48c9: $fe $06
	add  hl, sp                                      ; $48cb: $39
	add  b                                           ; $48cc: $80
	ld   a, [hl+]                                    ; $48cd: $2a
	add  b                                           ; $48ce: $80
	dec  d                                           ; $48cf: $15
	add  b                                           ; $48d0: $80
	ld   a, [hl+]                                    ; $48d1: $2a
	add  b                                           ; $48d2: $80
	dec  d                                           ; $48d3: $15
	add  b                                           ; $48d4: $80
	ld   [bc], a                                     ; $48d5: $02
	add  b                                           ; $48d6: $80
	ld   bc, $0081                                   ; $48d7: $01 $81 $00
	nop                                              ; $48da: $00
	ret  nz                                          ; $48db: $c0

	add  b                                           ; $48dc: $80
	ld   [$5580], a                                  ; $48dd: $ea $80 $55
	add  b                                           ; $48e0: $80
	ld   [$5480], a                                  ; $48e1: $ea $80 $54
	add  b                                           ; $48e4: $80
	ld   [$5480], a                                  ; $48e5: $ea $80 $54
	add  b                                           ; $48e8: $80
	add  sp, -$80                                    ; $48e9: $e8 $80
	ld   d, h                                        ; $48eb: $54
	add  b                                           ; $48ec: $80
	add  b                                           ; $48ed: $80
	adc  e                                           ; $48ee: $8b
	nop                                              ; $48ef: $00
	nop                                              ; $48f0: $00
	ld   bc, $008d                                   ; $48f1: $01 $8d $00
	nop                                              ; $48f4: $00
	sbc  $83                                         ; $48f5: $de $83
	ccf                                              ; $48f7: $3f
	add  e                                           ; $48f8: $83
	jr   c, jr_07b_48fc                              ; $48f9: $38 $01

	ccf                                              ; $48fb: $3f

jr_07b_48fc:
	jr   c, jr_07b_487f                              ; $48fc: $38 $81

	ccf                                              ; $48fe: $3f
	nop                                              ; $48ff: $00
	ldh  [$80], a                                    ; $4900: $e0 $80
	ld   c, $80                                      ; $4902: $0e $80
	dec  c                                           ; $4904: $0d
	add  b                                           ; $4905: $80
	ld   c, $80                                      ; $4906: $0e $80
	dec  c                                           ; $4908: $0d
	add  b                                           ; $4909: $80
	ld   c, $80                                      ; $490a: $0e $80
	dec  c                                           ; $490c: $0d
	add  b                                           ; $490d: $80
	ld   c, $80                                      ; $490e: $0e $80
	dec  c                                           ; $4910: $0d
	add  b                                           ; $4911: $80
	xor  d                                           ; $4912: $aa
	add  b                                           ; $4913: $80
	ld   e, c                                        ; $4914: $59
	add  b                                           ; $4915: $80
	xor  d                                           ; $4916: $aa
	ld   bc, $5859                                   ; $4917: $01 $59 $58
	add  b                                           ; $491a: $80
	xor  d                                           ; $491b: $aa
	add  b                                           ; $491c: $80
	ld   e, d                                        ; $491d: $5a
	add  b                                           ; $491e: $80
	xor  d                                           ; $491f: $aa
	ld   bc, $5b5a                                   ; $4920: $01 $5a $5b
	add  b                                           ; $4923: $80
	and  b                                           ; $4924: $a0
	add  b                                           ; $4925: $80
	ld   d, b                                        ; $4926: $50
	add  b                                           ; $4927: $80
	and  b                                           ; $4928: $a0
	add  b                                           ; $4929: $80
	ld   b, b                                        ; $492a: $40
	add  b                                           ; $492b: $80
	add  b                                           ; $492c: $80
	add  b                                           ; $492d: $80
	ld   b, b                                        ; $492e: $40
	add  b                                           ; $492f: $80
	add  b                                           ; $4930: $80
	ld   bc, $2040                                   ; $4931: $01 $40 $20
	adc  l                                           ; $4934: $8d
	nop                                              ; $4935: $00
	nop                                              ; $4936: $00
	ld   h, b                                        ; $4937: $60
	sbc  l                                           ; $4938: $9d
	nop                                              ; $4939: $00
	nop                                              ; $493a: $00
	inc  bc                                          ; $493b: $03
	add  b                                           ; $493c: $80
	ld   bc, $0580                                   ; $493d: $01 $80 $05
	adc  c                                           ; $4940: $89
	ld   bc, $f200                                   ; $4941: $01 $00 $f2
	add  b                                           ; $4944: $80
	rrca                                             ; $4945: $0f
	adc  e                                           ; $4946: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4947: $cf
	nop                                              ; $4948: $00
	ccf                                              ; $4949: $3f
	add  d                                           ; $494a: $82
	ret  nz                                          ; $494b: $c0

	nop                                              ; $494c: $00
	rst  ToBoot                                         ; $494d: $c7
	add  b                                           ; $494e: $80
	jp   $c780                                       ; $494f: $c3 $80 $c7


	add  b                                           ; $4952: $80
	jp   $c700                                       ; $4953: $c3 $00 $c7


	add  c                                           ; $4956: $81
	ret  nz                                          ; $4957: $c0

	nop                                              ; $4958: $00
	rst  $28                                         ; $4959: $ef
	add  d                                           ; $495a: $82
	rla                                              ; $495b: $17
	nop                                              ; $495c: $00
	sub  a                                           ; $495d: $97
	add  b                                           ; $495e: $80
	rla                                              ; $495f: $17
	add  b                                           ; $4960: $80
	sub  a                                           ; $4961: $97
	add  b                                           ; $4962: $80
	rla                                              ; $4963: $17
	inc  b                                           ; $4964: $04
	sbc  a                                           ; $4965: $9f
	rla                                              ; $4966: $17
	dec  de                                          ; $4967: $1b
	rla                                              ; $4968: $17
	jp   $fe8d                                       ; $4969: $c3 $8d $fe


	nop                                              ; $496c: $00
	pop  bc                                          ; $496d: $c1
	adc  l                                           ; $496e: $8d
	nop                                              ; $496f: $00
	nop                                              ; $4970: $00
	ret  nz                                          ; $4971: $c0

	add  b                                           ; $4972: $80
	ld   l, b                                        ; $4973: $68
	add  b                                           ; $4974: $80
	ld   d, b                                        ; $4975: $50
	add  b                                           ; $4976: $80
	ld   l, b                                        ; $4977: $68
	add  b                                           ; $4978: $80
	ld   d, b                                        ; $4979: $50
	add  b                                           ; $497a: $80
	ld   h, b                                        ; $497b: $60
	add  b                                           ; $497c: $80
	ld   d, b                                        ; $497d: $50
	add  b                                           ; $497e: $80
	ld   h, b                                        ; $497f: $60
	add  b                                           ; $4980: $80
	ld   d, b                                        ; $4981: $50
	adc  l                                           ; $4982: $8d
	nop                                              ; $4983: $00
	nop                                              ; $4984: $00
	ld   bc, $008d                                   ; $4985: $01 $8d $00
	nop                                              ; $4988: $00
	sbc  $8d                                         ; $4989: $de $8d
	ccf                                              ; $498b: $3f
	nop                                              ; $498c: $00
	ldh  [$80], a                                    ; $498d: $e0 $80
	ld   c, $80                                      ; $498f: $0e $80
	dec  c                                           ; $4991: $0d
	add  b                                           ; $4992: $80
	ld   c, $80                                      ; $4993: $0e $80
	dec  c                                           ; $4995: $0d
	add  b                                           ; $4996: $80
	ld   c, $80                                      ; $4997: $0e $80
	dec  c                                           ; $4999: $0d
	add  b                                           ; $499a: $80
	ld   c, $01                                      ; $499b: $0e $01
	dec  c                                           ; $499d: $0d
	inc  c                                           ; $499e: $0c
	add  b                                           ; $499f: $80
	xor  d                                           ; $49a0: $aa
	add  b                                           ; $49a1: $80
	ld   e, d                                        ; $49a2: $5a
	dec  b                                           ; $49a3: $05
	xor  d                                           ; $49a4: $aa
	xor  b                                           ; $49a5: $a8
	ld   e, b                                        ; $49a6: $58
	ld   e, e                                        ; $49a7: $5b
	xor  d                                           ; $49a8: $aa
	xor  c                                           ; $49a9: $a9
	add  b                                           ; $49aa: $80
	ld   e, b                                        ; $49ab: $58
	ld   bc, $aba8                                   ; $49ac: $01 $a8 $ab
	add  b                                           ; $49af: $80
	ld   e, c                                        ; $49b0: $59
	add  b                                           ; $49b1: $80
	add  b                                           ; $49b2: $80
	add  b                                           ; $49b3: $80
	ld   b, b                                        ; $49b4: $40
	add  b                                           ; $49b5: $80
	add  b                                           ; $49b6: $80
	add  b                                           ; $49b7: $80
	ld   b, b                                        ; $49b8: $40
	add  b                                           ; $49b9: $80
	add  b                                           ; $49ba: $80
	add  b                                           ; $49bb: $80
	ld   b, b                                        ; $49bc: $40
	add  b                                           ; $49bd: $80
	add  b                                           ; $49be: $80
	ld   bc, $2040                                   ; $49bf: $01 $40 $20
	adc  l                                           ; $49c2: $8d
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	ld   h, b                                        ; $49c5: $60
	sbc  l                                           ; $49c6: $9d
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	inc  bc                                          ; $49c9: $03
	adc  c                                           ; $49ca: $89
	ld   bc, $0580                                   ; $49cb: $01 $80 $05
	add  b                                           ; $49ce: $80
	dec  e                                           ; $49cf: $1d
	nop                                              ; $49d0: $00
	ldh  a, [c]                                      ; $49d1: $f2
	add  c                                           ; $49d2: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d3: $cf
	inc  bc                                          ; $49d4: $03
	call z, $a3cf                                    ; $49d5: $cc $cf $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d8: $cf
	add  h                                           ; $49d9: $84
	adc  a                                           ; $49da: $8f
	ld   a, [bc]                                     ; $49db: $0a
	xor  a                                           ; $49dc: $af
	adc  a                                           ; $49dd: $8f
	ld   h, l                                        ; $49de: $65
	rst  $38                                         ; $49df: $ff
	ld   b, c                                        ; $49e0: $41
	rst  $38                                         ; $49e1: $ff
	jp   $c3ff                                       ; $49e2: $c3 $ff $c3


	rst  $38                                         ; $49e5: $ff
	db   $eb                                         ; $49e6: $eb
	add  l                                           ; $49e7: $85
	rst  $38                                         ; $49e8: $ff
	ld   [bc], a                                     ; $49e9: $02
	daa                                              ; $49ea: $27
	db   $db                                         ; $49eb: $db
	ld   e, e                                        ; $49ec: $5b
	add  c                                           ; $49ed: $81
	db   $db                                         ; $49ee: $db
	ld   [bc], a                                     ; $49ef: $02
	rst  JumpTable                                         ; $49f0: $df
	rst  $10                                         ; $49f1: $d7
	db   $db                                         ; $49f2: $db
	add  b                                           ; $49f3: $80
	db   $d3                                         ; $49f4: $d3
	add  e                                           ; $49f5: $83
	rst  $10                                         ; $49f6: $d7
	nop                                              ; $49f7: $00
	rst  ToBoot                                         ; $49f8: $c7
	adc  [hl]                                        ; $49f9: $8e
	cp   $8d                                         ; $49fa: $fe $8d
	ccf                                              ; $49fc: $3f
	ld   bc, $e060                                   ; $49fd: $01 $60 $e0
	add  b                                           ; $4a00: $80
	ld   hl, sp-$80                                  ; $4a01: $f8 $80
	cp   $84                                         ; $4a03: $fe $84
	rst  $38                                         ; $4a05: $ff
	inc  b                                           ; $4a06: $04
	rst  JumpTable                                         ; $4a07: $df
	rst  $38                                         ; $4a08: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a09: $cf
	rst  $38                                         ; $4a0a: $ff
	ld   d, b                                        ; $4a0b: $50
	add  e                                           ; $4a0c: $83
	nop                                              ; $4a0d: $00
	add  b                                           ; $4a0e: $80
	add  b                                           ; $4a0f: $80
	add  b                                           ; $4a10: $80
	ldh  [$80], a                                    ; $4a11: $e0 $80
	ld   hl, sp-$80                                  ; $4a13: $f8 $80
	cp   $80                                         ; $4a15: $fe $80
	rst  $38                                         ; $4a17: $ff
	nop                                              ; $4a18: $00
	ld   bc, $008b                                   ; $4a19: $01 $8b $00
	add  b                                           ; $4a1c: $80
	ret  nz                                          ; $4a1d: $c0

	nop                                              ; $4a1e: $00
	sbc  $8d                                         ; $4a1f: $de $8d
	ccf                                              ; $4a21: $3f
	nop                                              ; $4a22: $00
	ldh  [$80], a                                    ; $4a23: $e0 $80
	ld   c, $80                                      ; $4a25: $0e $80
	dec  c                                           ; $4a27: $0d
	add  b                                           ; $4a28: $80
	ld   c, $80                                      ; $4a29: $0e $80
	dec  c                                           ; $4a2b: $0d
	add  b                                           ; $4a2c: $80
	ld   c, $80                                      ; $4a2d: $0e $80
	dec  c                                           ; $4a2f: $0d
	add  b                                           ; $4a30: $80
	ld   c, $80                                      ; $4a31: $0e $80
	dec  c                                           ; $4a33: $0d
	add  b                                           ; $4a34: $80
	xor  d                                           ; $4a35: $aa
	add  b                                           ; $4a36: $80
	ld   e, c                                        ; $4a37: $59
	add  b                                           ; $4a38: $80
	xor  d                                           ; $4a39: $aa
	add  b                                           ; $4a3a: $80
	ld   e, c                                        ; $4a3b: $59
	add  b                                           ; $4a3c: $80
	xor  e                                           ; $4a3d: $ab
	add  b                                           ; $4a3e: $80
	ld   e, [hl]                                     ; $4a3f: $5e
	add  b                                           ; $4a40: $80
	xor  d                                           ; $4a41: $aa
	add  b                                           ; $4a42: $80
	ld   d, h                                        ; $4a43: $54
	add  b                                           ; $4a44: $80
	xor  b                                           ; $4a45: $a8
	add  b                                           ; $4a46: $80
	ld   d, l                                        ; $4a47: $55
	add  b                                           ; $4a48: $80
	xor  e                                           ; $4a49: $ab
	add  b                                           ; $4a4a: $80
	ld   e, [hl]                                     ; $4a4b: $5e
	add  b                                           ; $4a4c: $80
	ldh  [$80], a                                    ; $4a4d: $e0 $80
	inc  bc                                          ; $4a4f: $03
	add  b                                           ; $4a50: $80
	inc  e                                           ; $4a51: $1c
	ld   bc, $83e3                                   ; $4a52: $01 $e3 $83
	add  c                                           ; $4a55: $81
	nop                                              ; $4a56: $00
	nop                                              ; $4a57: $00
	ld   h, b                                        ; $4a58: $60
	add  b                                           ; $4a59: $80
	ret  nz                                          ; $4a5a: $c0

	add  b                                           ; $4a5b: $80
	nop                                              ; $4a5c: $00
	add  b                                           ; $4a5d: $80
	ld   [hl], b                                     ; $4a5e: $70
	add  b                                           ; $4a5f: $80
	add  b                                           ; $4a60: $80
	add  b                                           ; $4a61: $80
	nop                                              ; $4a62: $00
	add  b                                           ; $4a63: $80
	ret  nz                                          ; $4a64: $c0

	add  a                                           ; $4a65: $87
	nop                                              ; $4a66: $00
	add  b                                           ; $4a67: $80
	ld   bc, $0780                                   ; $4a68: $01 $80 $07
	inc  bc                                          ; $4a6b: $03
	rrca                                             ; $4a6c: $0f
	rra                                              ; $4a6d: $1f
	stop                                             ; $4a6e: $10 $00
	add  b                                           ; $4a70: $80
	ld   bc, $0780                                   ; $4a71: $01 $80 $07
	add  b                                           ; $4a74: $80
	rra                                              ; $4a75: $1f
	add  b                                           ; $4a76: $80
	ld   a, a                                        ; $4a77: $7f
	add  h                                           ; $4a78: $84
	rst  $38                                         ; $4a79: $ff
	ld   de, $7d7f                                   ; $4a7a: $11 $7f $7d
	db   $fc                                         ; $4a7d: $fc
	db   $fd                                         ; $4a7e: $fd
	db   $fc                                         ; $4a7f: $fc
	db   $fd                                         ; $4a80: $fd
	db   $fc                                         ; $4a81: $fc
	db   $fd                                         ; $4a82: $fd
	db   $fc                                         ; $4a83: $fc
	db   $fd                                         ; $4a84: $fd
	db   $fc                                         ; $4a85: $fc
	db   $fd                                         ; $4a86: $fd
	db   $fc                                         ; $4a87: $fc
	db   $fd                                         ; $4a88: $fd
	db   $fc                                         ; $4a89: $fc
	db   $fd                                         ; $4a8a: $fd
	db   $fc                                         ; $4a8b: $fc
	adc  a                                           ; $4a8c: $8f
	add  b                                           ; $4a8d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a8e: $cf
	rla                                              ; $4a8f: $17
	rrca                                             ; $4a90: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a91: $cf
	rrca                                             ; $4a92: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a93: $cf
	rlca                                             ; $4a94: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a95: $cf
	ld   [bc], a                                     ; $4a96: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a97: $cf
	nop                                              ; $4a98: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a99: $cf
	nop                                              ; $4a9a: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a9b: $cf
	jp   nz, $e3ff                                   ; $4a9c: $c2 $ff $e3

	rst  $38                                         ; $4a9f: $ff
	jp   $c3ff                                       ; $4aa0: $c3 $ff $c3


	rst  $38                                         ; $4aa3: $ff
	pop  bc                                          ; $4aa4: $c1
	rst  $38                                         ; $4aa5: $ff
	ld   a, [hl+]                                    ; $4aa6: $2a
	cp   a                                           ; $4aa7: $bf
	add  b                                           ; $4aa8: $80
	add  b                                           ; $4aa9: $80
	add  b                                           ; $4aaa: $80
	ld   a, [hl+]                                    ; $4aab: $2a
	nop                                              ; $4aac: $00
	db   $10                                         ; $4aad: $10
	add  a                                           ; $4aae: $87
	rst  $10                                         ; $4aaf: $d7
	ld   bc, $d017                                   ; $4ab0: $01 $17 $d0
	add  b                                           ; $4ab3: $80
	nop                                              ; $4ab4: $00
	add  b                                           ; $4ab5: $80
	xor  d                                           ; $4ab6: $aa
	nop                                              ; $4ab7: $00
	nop                                              ; $4ab8: $00
	adc  b                                           ; $4ab9: $88
	cp   $81                                         ; $4aba: $fe $81
	nop                                              ; $4abc: $00
	add  b                                           ; $4abd: $80
	xor  d                                           ; $4abe: $aa
	nop                                              ; $4abf: $00
	nop                                              ; $4ac0: $00
	add  c                                           ; $4ac1: $81
	ccf                                              ; $4ac2: $3f
	rlca                                             ; $4ac3: $07
	rra                                              ; $4ac4: $1f
	ccf                                              ; $4ac5: $3f
	rrca                                             ; $4ac6: $0f
	ccf                                              ; $4ac7: $3f
	dec  b                                           ; $4ac8: $05
	ccf                                              ; $4ac9: $3f
	ld   a, [hl+]                                    ; $4aca: $2a
	ccf                                              ; $4acb: $3f
	add  b                                           ; $4acc: $80
	nop                                              ; $4acd: $00
	ld   [de], a                                     ; $4ace: $12
	xor  d                                           ; $4acf: $aa
	xor  b                                           ; $4ad0: $a8
	ld   h, d                                        ; $4ad1: $62
	rst  $38                                         ; $4ad2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad3: $cf
	rst  $38                                         ; $4ad4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad5: $cf
	rst  $38                                         ; $4ad6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad7: $cf
	rst  $38                                         ; $4ad8: $ff
	ld   b, a                                        ; $4ad9: $47
	rst  $38                                         ; $4ada: $ff
	add  e                                           ; $4adb: $83
	cp   a                                           ; $4adc: $bf
	inc  bc                                          ; $4add: $03
	ccf                                              ; $4ade: $3f
	add  e                                           ; $4adf: $83
	ccf                                              ; $4ae0: $3f
	xor  e                                           ; $4ae1: $ab
	adc  l                                           ; $4ae2: $8d
	rst  $38                                         ; $4ae3: $ff
	ld   b, $e1                                      ; $4ae4: $06 $e1
	ldh  a, [$e0]                                    ; $4ae6: $f0 $e0
	db   $fc                                         ; $4ae8: $fc
	ldh  a, [$fe]                                    ; $4ae9: $f0 $fe
	db   $fc                                         ; $4aeb: $fc
	add  a                                           ; $4aec: $87
	cp   $00                                         ; $4aed: $fe $00
	sbc  $83                                         ; $4aef: $de $83
	ccf                                              ; $4af1: $3f
	inc  bc                                          ; $4af2: $03
	cpl                                              ; $4af3: $2f
	scf                                              ; $4af4: $37
	sub  a                                           ; $4af5: $97
	ld   [hl], a                                     ; $4af6: $77
	add  b                                           ; $4af7: $80
	rst  $30                                         ; $4af8: $f7
	nop                                              ; $4af9: $00
	rst  ToBoot                                         ; $4afa: $c7
	add  c                                           ; $4afb: $81
	daa                                              ; $4afc: $27
	nop                                              ; $4afd: $00
	ld   hl, sp-$80                                  ; $4afe: $f8 $80
	ld   c, $80                                      ; $4b00: $0e $80
	dec  c                                           ; $4b02: $0d
	add  b                                           ; $4b03: $80
	ld   c, $80                                      ; $4b04: $0e $80
	dec  c                                           ; $4b06: $0d
	add  b                                           ; $4b07: $80
	ld   c, $80                                      ; $4b08: $0e $80
	dec  c                                           ; $4b0a: $0d
	add  b                                           ; $4b0b: $80
	ld   c, $05                                      ; $4b0c: $0e $05
	dec  c                                           ; $4b0e: $0d
	rrca                                             ; $4b0f: $0f
	xor  l                                           ; $4b10: $ad
	xor  a                                           ; $4b11: $af
	ld   a, b                                        ; $4b12: $78
	ld   l, b                                        ; $4b13: $68
	add  b                                           ; $4b14: $80
	and  b                                           ; $4b15: $a0
	add  b                                           ; $4b16: $80
	ld   h, b                                        ; $4b17: $60
	add  b                                           ; $4b18: $80
	and  b                                           ; $4b19: $a0
	add  b                                           ; $4b1a: $80
	ld   h, b                                        ; $4b1b: $60
	dec  bc                                          ; $4b1c: $0b
	and  c                                           ; $4b1d: $a1
	and  b                                           ; $4b1e: $a0
	ld   h, d                                        ; $4b1f: $62
	ld   [hl], e                                     ; $4b20: $73
	ld   e, $e0                                      ; $4b21: $1e $e0
	rra                                              ; $4b23: $1f
	inc  c                                           ; $4b24: $0c
	dec  e                                           ; $4b25: $1d
	inc  b                                           ; $4b26: $04
	inc  c                                           ; $4b27: $0c
	ld   [bc], a                                     ; $4b28: $02
	add  c                                           ; $4b29: $81
	ld   b, $80                                      ; $4b2a: $06 $80
	rlca                                             ; $4b2c: $07
	ld   [bc], a                                     ; $4b2d: $02
	daa                                              ; $4b2e: $27
	rlca                                             ; $4b2f: $07
	call c, $2080                                    ; $4b30: $dc $80 $20
	inc  bc                                          ; $4b33: $03
	sbc  c                                           ; $4b34: $99
	sbc  b                                           ; $4b35: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b36: $cf
	jp   hl                                          ; $4b37: $e9


	add  b                                           ; $4b38: $80
	rst  $20                                         ; $4b39: $e7
	add  l                                           ; $4b3a: $85
	ld   h, a                                        ; $4b3b: $67
	inc  b                                           ; $4b3c: $04
	ld   e, a                                        ; $4b3d: $5f
	ld   a, a                                        ; $4b3e: $7f
	rra                                              ; $4b3f: $1f
	rst  $38                                         ; $4b40: $ff
	ld   a, a                                        ; $4b41: $7f
	sbc  c                                           ; $4b42: $99
	rst  $38                                         ; $4b43: $ff
	nop                                              ; $4b44: $00
	cp   $8d                                         ; $4b45: $fe $8d
	db   $fd                                         ; $4b47: $fd
	dec  b                                           ; $4b48: $05
	ld   [hl], $ce                                   ; $4b49: $36 $ce
	pop  bc                                          ; $4b4b: $c1
	call $cdc5                                       ; $4b4c: $cd $c5 $cd
	add  b                                           ; $4b4f: $80
	res  0, b                                        ; $4b50: $cb $80
	jp   z, $c780                                    ; $4b52: $ca $80 $c7

	add  b                                           ; $4b55: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b56: $cf
	add  b                                           ; $4b57: $80
	ret  nz                                          ; $4b58: $c0

jr_07b_4b59:
	add  b                                           ; $4b59: $80
	rst  $38                                         ; $4b5a: $ff
	add  b                                           ; $4b5b: $80
	ld   d, l                                        ; $4b5c: $55
	add  b                                           ; $4b5d: $80
	rst  $38                                         ; $4b5e: $ff
	add  b                                           ; $4b5f: $80
	cp   $80                                         ; $4b60: $fe $80
	xor  d                                           ; $4b62: $aa
	add  d                                           ; $4b63: $82
	db   $fd                                         ; $4b64: $fd
	add  b                                           ; $4b65: $80
	nop                                              ; $4b66: $00
	add  b                                           ; $4b67: $80
	ld   a, a                                        ; $4b68: $7f
	add  b                                           ; $4b69: $80
	ld   d, l                                        ; $4b6a: $55
	add  b                                           ; $4b6b: $80
	ld   a, a                                        ; $4b6c: $7f
	add  b                                           ; $4b6d: $80
	rst  $38                                         ; $4b6e: $ff
	add  b                                           ; $4b6f: $80
	xor  d                                           ; $4b70: $aa
	add  d                                           ; $4b71: $82
	rst  $38                                         ; $4b72: $ff
	add  b                                           ; $4b73: $80
	nop                                              ; $4b74: $00
	add  b                                           ; $4b75: $80
	cp   a                                           ; $4b76: $bf
	add  b                                           ; $4b77: $80
	dec  d                                           ; $4b78: $15
	add  d                                           ; $4b79: $82
	cp   a                                           ; $4b7a: $bf
	add  b                                           ; $4b7b: $80
	xor  d                                           ; $4b7c: $aa
	add  d                                           ; $4b7d: $82
	cp   a                                           ; $4b7e: $bf
	add  b                                           ; $4b7f: $80
	nop                                              ; $4b80: $00
	inc  b                                           ; $4b81: $04
	cp   a                                           ; $4b82: $bf
	cp   d                                           ; $4b83: $ba
	ld   d, b                                        ; $4b84: $50
	ld   d, l                                        ; $4b85: $55
	rst  JumpTable                                         ; $4b86: $df
	add  b                                           ; $4b87: $80
	jp   c, $dd03                                    ; $4b88: $da $03 $dd

	adc  b                                           ; $4b8b: $88
	adc  d                                           ; $4b8c: $8a
	rst  $28                                         ; $4b8d: $ef
	add  b                                           ; $4b8e: $80
	db   $ed                                         ; $4b8f: $ed
	inc  de                                          ; $4b90: $13
	ld   [$0005], a                                  ; $4b91: $ea $05 $00
	jp   z, $109f                                    ; $4b94: $ca $9f $10

	ld   c, a                                        ; $4b97: $4f
	ld   hl, sp-$49                                  ; $4b98: $f8 $b7
	or   b                                           ; $4b9a: $b0
	ld   d, a                                        ; $4b9b: $57
	jr   jr_07b_4b59                                 ; $4b9c: $18 $bb

	db   $fc                                         ; $4b9e: $fc
	ld   e, l                                        ; $4b9f: $5d
	ld   e, h                                        ; $4ba0: $5c
	xor  l                                           ; $4ba1: $ad
	ld   c, a                                        ; $4ba2: $4f
	ld   e, $00                                      ; $4ba3: $1e $00
	add  c                                           ; $4ba5: $81
	rst  $38                                         ; $4ba6: $ff
	inc  c                                           ; $4ba7: $0c
	ld   a, a                                        ; $4ba8: $7f
	rst  $38                                         ; $4ba9: $ff
	ccf                                              ; $4baa: $3f
	rst  $38                                         ; $4bab: $ff
	ccf                                              ; $4bac: $3f
	rst  $38                                         ; $4bad: $ff
	ccf                                              ; $4bae: $3f
	rst  $38                                         ; $4baf: $ff
	rra                                              ; $4bb0: $1f
	rst  $38                                         ; $4bb1: $ff
	rrca                                             ; $4bb2: $0f
	rst  $38                                         ; $4bb3: $ff
	xor  a                                           ; $4bb4: $af
	adc  [hl]                                        ; $4bb5: $8e
	cp   $80                                         ; $4bb6: $fe $80
	inc  hl                                          ; $4bb8: $23
	add  c                                           ; $4bb9: $81
	inc  sp                                          ; $4bba: $33
	ld   [bc], a                                     ; $4bbb: $02
	ld   [hl], e                                     ; $4bbc: $73
	ld   b, a                                        ; $4bbd: $47
	daa                                              ; $4bbe: $27
	add  l                                           ; $4bbf: $85
	ccf                                              ; $4bc0: $3f
	ld   c, a                                        ; $4bc1: $4f
	ld   [bc], a                                     ; $4bc2: $02
	add  [hl]                                        ; $4bc3: $86
	nop                                              ; $4bc4: $00
	ld   bc, $0a0b                                   ; $4bc5: $01 $0b $0a
	add  b                                           ; $4bc8: $80
	inc  b                                           ; $4bc9: $04
	add  b                                           ; $4bca: $80
	ld   a, [bc]                                     ; $4bcb: $0a
	add  b                                           ; $4bcc: $80
	inc  b                                           ; $4bcd: $04
	nop                                              ; $4bce: $00
	ld   bc, $0085                                   ; $4bcf: $01 $85 $00
	nop                                              ; $4bd2: $00
	rst  $38                                         ; $4bd3: $ff
	add  l                                           ; $4bd4: $85
	nop                                              ; $4bd5: $00
	nop                                              ; $4bd6: $00
	rst  $38                                         ; $4bd7: $ff
	add  l                                           ; $4bd8: $85
	nop                                              ; $4bd9: $00
	nop                                              ; $4bda: $00
	ld   l, a                                        ; $4bdb: $6f
	add  l                                           ; $4bdc: $85
	sub  b                                           ; $4bdd: $90
	nop                                              ; $4bde: $00
	rst  $38                                         ; $4bdf: $ff
	add  l                                           ; $4be0: $85
	nop                                              ; $4be1: $00
	ld   bc, $2aea                                   ; $4be2: $01 $ea $2a
	add  b                                           ; $4be5: $80
	dec  d                                           ; $4be6: $15
	add  b                                           ; $4be7: $80
	ld   a, [bc]                                     ; $4be8: $0a
	add  b                                           ; $4be9: $80
	dec  b                                           ; $4bea: $05

jr_07b_4beb:
	nop                                              ; $4beb: $00
	ret  nz                                          ; $4bec: $c0

	add  l                                           ; $4bed: $85
	nop                                              ; $4bee: $00
	add  d                                           ; $4bef: $82
	rst  $38                                         ; $4bf0: $ff
	add  b                                           ; $4bf1: $80
	ld   a, [$d580]                                  ; $4bf2: $fa $80 $d5
	add  [hl]                                        ; $4bf5: $86
	nop                                              ; $4bf6: $00
	add  b                                           ; $4bf7: $80
	xor  d                                           ; $4bf8: $aa
	add  b                                           ; $4bf9: $80
	ld   d, l                                        ; $4bfa: $55
	add  b                                           ; $4bfb: $80
	xor  d                                           ; $4bfc: $aa
	add  b                                           ; $4bfd: $80
	ld   d, l                                        ; $4bfe: $55
	add  [hl]                                        ; $4bff: $86
	nop                                              ; $4c00: $00
	add  b                                           ; $4c01: $80
	xor  b                                           ; $4c02: $a8
	add  b                                           ; $4c03: $80
	ld   d, b                                        ; $4c04: $50
	add  b                                           ; $4c05: $80
	and  b                                           ; $4c06: $a0
	add  b                                           ; $4c07: $80
	ld   b, b                                        ; $4c08: $40
	add  [hl]                                        ; $4c09: $86
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	inc  bc                                          ; $4c0c: $03
	add  l                                           ; $4c0d: $85
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	inc  bc                                          ; $4c10: $03
	add  l                                           ; $4c11: $85
	nop                                              ; $4c12: $00
	ld   [bc], a                                     ; $4c13: $02
	cp   $02                                         ; $4c14: $fe $02
	inc  bc                                          ; $4c16: $03
	add  e                                           ; $4c17: $83
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	rst  $38                                         ; $4c1a: $ff
	adc  b                                           ; $4c1b: $88
	nop                                              ; $4c1c: $00
	dec  b                                           ; $4c1d: $05
	rst  $38                                         ; $4c1e: $ff
	ld   b, b                                        ; $4c1f: $40
	ld   a, a                                        ; $4c20: $7f
	ccf                                              ; $4c21: $3f
	nop                                              ; $4c22: $00
	rst  $38                                         ; $4c23: $ff
	add  l                                           ; $4c24: $85
	nop                                              ; $4c25: $00
	inc  bc                                          ; $4c26: $03
	rra                                              ; $4c27: $1f
	db   $10                                         ; $4c28: $10
	jr   nc, jr_07b_4beb                             ; $4c29: $30 $c0

	add  b                                           ; $4c2b: $80
	add  b                                           ; $4c2c: $80
	add  b                                           ; $4c2d: $80
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	rst  $38                                         ; $4c30: $ff
	add  l                                           ; $4c31: $85
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	ld   hl, sp-$7b                                  ; $4c34: $f8 $85
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	ld   hl, sp-$7b                                  ; $4c38: $f8 $85
	nop                                              ; $4c3a: $00
	add  b                                           ; $4c3b: $80
	ld   [bc], a                                     ; $4c3c: $02

jr_07b_4c3d:
	add  b                                           ; $4c3d: $80
	ld   bc, $008a                                   ; $4c3e: $01 $8a $00
	add  b                                           ; $4c41: $80
	xor  d                                           ; $4c42: $aa
	add  b                                           ; $4c43: $80
	ld   d, l                                        ; $4c44: $55
	add  b                                           ; $4c45: $80
	ld   a, [hl+]                                    ; $4c46: $2a
	add  b                                           ; $4c47: $80
	dec  d                                           ; $4c48: $15
	add  [hl]                                        ; $4c49: $86
	nop                                              ; $4c4a: $00
	add  b                                           ; $4c4b: $80
	xor  a                                           ; $4c4c: $af
	add  b                                           ; $4c4d: $80
	ld   d, a                                        ; $4c4e: $57
	add  b                                           ; $4c4f: $80
	xor  e                                           ; $4c50: $ab
	add  b                                           ; $4c51: $80
	ld   d, l                                        ; $4c52: $55
	add  [hl]                                        ; $4c53: $86
	nop                                              ; $4c54: $00
	add  b                                           ; $4c55: $80
	xor  d                                           ; $4c56: $aa
	add  b                                           ; $4c57: $80
	call nc, $aa80                                   ; $4c58: $d4 $80 $aa
	add  b                                           ; $4c5b: $80
	call nc, Boot                                    ; $4c5c: $d4 $00 $01
	adc  l                                           ; $4c5f: $8d
	nop                                              ; $4c60: $00
	ld   bc, $00fe                                   ; $4c61: $01 $fe $00
	adc  h                                           ; $4c64: $8c
	ld   bc, $9082                                   ; $4c65: $01 $82 $90
	add  d                                           ; $4c68: $82
	sub  d                                           ; $4c69: $92
	add  [hl]                                        ; $4c6a: $86
	ld   [de], a                                     ; $4c6b: $12
	ld   bc, $0a35                                   ; $4c6c: $01 $35 $0a
	add  b                                           ; $4c6f: $80
	dec  b                                           ; $4c70: $05
	add  b                                           ; $4c71: $80
	ld   [bc], a                                     ; $4c72: $02
	add  b                                           ; $4c73: $80
	dec  b                                           ; $4c74: $05
	add  b                                           ; $4c75: $80
	ld   [bc], a                                     ; $4c76: $02
	add  b                                           ; $4c77: $80
	ld   bc, $0280                                   ; $4c78: $01 $80 $02
	add  b                                           ; $4c7b: $80
	ld   bc, $2a01                                   ; $4c7c: $01 $01 $2a
	ld   [$d580], a                                  ; $4c7f: $ea $80 $d5
	add  b                                           ; $4c82: $80
	xor  d                                           ; $4c83: $aa
	add  b                                           ; $4c84: $80
	push de                                          ; $4c85: $d5

jr_07b_4c86:
	add  b                                           ; $4c86: $80
	xor  d                                           ; $4c87: $aa
	add  b                                           ; $4c88: $80
	push de                                          ; $4c89: $d5
	add  b                                           ; $4c8a: $80
	xor  d                                           ; $4c8b: $aa
	add  b                                           ; $4c8c: $80
	call nc, $aa80                                   ; $4c8d: $d4 $80 $aa
	add  b                                           ; $4c90: $80
	ld   d, h                                        ; $4c91: $54
	add  b                                           ; $4c92: $80
	xor  b                                           ; $4c93: $a8
	add  b                                           ; $4c94: $80
	ld   b, b                                        ; $4c95: $40
	add  b                                           ; $4c96: $80
	add  b                                           ; $4c97: $80
	sub  h                                           ; $4c98: $94
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	inc  bc                                          ; $4c9b: $03
	adc  l                                           ; $4c9c: $8d
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	ld   hl, sp-$7f                                  ; $4c9f: $f8 $81
	inc  b                                           ; $4ca1: $04
	add  h                                           ; $4ca2: $84
	ld   b, $82                                      ; $4ca3: $06 $82
	inc  b                                           ; $4ca5: $04
	add  b                                           ; $4ca6: $80
	inc  c                                           ; $4ca7: $0c
	add  d                                           ; $4ca8: $82
	nop                                              ; $4ca9: $00
	add  b                                           ; $4caa: $80
	ld   [FarMemCopy16C], sp                                 ; $4cab: $08 $82 $0a
	add  b                                           ; $4cae: $80
	ld   e, d                                        ; $4caf: $5a
	add  d                                           ; $4cb0: $82
	ld   e, e                                        ; $4cb1: $5b
	add  h                                           ; $4cb2: $84
	jr   nz, @-$7e                                   ; $4cb3: $20 $80

	jr   nc, jr_07b_4c3d                             ; $4cb5: $30 $86

	ld   sp, $0700                                   ; $4cb7: $31 $00 $07
	adc  l                                           ; $4cba: $8d
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	ld   hl, sp-$74                                  ; $4cbd: $f8 $8c
	nop                                              ; $4cbf: $00
	ld   [bc], a                                     ; $4cc0: $02
	ccf                                              ; $4cc1: $3f
	dec  [hl]                                        ; $4cc2: $35
	ld   a, [bc]                                     ; $4cc3: $0a
	add  b                                           ; $4cc4: $80
	ld   bc, $0088                                   ; $4cc5: $01 $88 $00
	inc  bc                                          ; $4cc8: $03
	rst  $38                                         ; $4cc9: $ff
	nop                                              ; $4cca: $00
	ld   d, l                                        ; $4ccb: $55
	xor  d                                           ; $4ccc: $aa
	add  b                                           ; $4ccd: $80
	ld   d, l                                        ; $4cce: $55
	add  b                                           ; $4ccf: $80
	xor  d                                           ; $4cd0: $aa
	add  b                                           ; $4cd1: $80
	ld   d, l                                        ; $4cd2: $55
	add  b                                           ; $4cd3: $80
	ld   a, [hl+]                                    ; $4cd4: $2a
	add  b                                           ; $4cd5: $80
	dec  d                                           ; $4cd6: $15
	add  b                                           ; $4cd7: $80
	ld   a, [bc]                                     ; $4cd8: $0a
	inc  bc                                          ; $4cd9: $03
	add  l                                           ; $4cda: $85
	dec  b                                           ; $4cdb: $05
	jr   z, jr_07b_4c86                              ; $4cdc: $28 $a8

	add  b                                           ; $4cde: $80
	ret  nc                                          ; $4cdf: $d0

	add  b                                           ; $4ce0: $80
	and  b                                           ; $4ce1: $a0
	add  b                                           ; $4ce2: $80
	ret  nc                                          ; $4ce3: $d0

	add  b                                           ; $4ce4: $80
	and  b                                           ; $4ce5: $a0
	add  b                                           ; $4ce6: $80
	ret  nz                                          ; $4ce7: $c0

	add  b                                           ; $4ce8: $80
	add  b                                           ; $4ce9: $80
	add  b                                           ; $4cea: $80
	ret  nz                                          ; $4ceb: $c0

	ld   bc, $1fe0                                   ; $4cec: $01 $e0 $1f
	add  b                                           ; $4cef: $80
	ld   c, $82                                      ; $4cf0: $0e $82
	adc  $82                                         ; $4cf2: $ce $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf4: $cf
	add  b                                           ; $4cf5: $80
	jp   $c102                                       ; $4cf6: $c3 $02 $c1


	call $810f                                       ; $4cf9: $cd $0f $81
	inc  bc                                          ; $4cfc: $03
	add  [hl]                                        ; $4cfd: $86
	ld   [bc], a                                     ; $4cfe: $02
	add  d                                           ; $4cff: $82
	inc  b                                           ; $4d00: $04
	add  d                                           ; $4d01: $82
	ld   [hl-], a                                    ; $4d02: $32
	add  d                                           ; $4d03: $82
	add  hl, sp                                      ; $4d04: $39
	add  d                                           ; $4d05: $82
	ld   a, c                                        ; $4d06: $79
	add  d                                           ; $4d07: $82
	ld   e, c                                        ; $4d08: $59
	ld   bc, $003f                                   ; $4d09: $01 $3f $00
	add  b                                           ; $4d0c: $80
	ld   bc, $0080                                   ; $4d0d: $01 $80 $00
	add  b                                           ; $4d10: $80
	ld   bc, $0086                                   ; $4d11: $01 $86 $00
	ld   bc, $a868                                   ; $4d14: $01 $68 $a8
	add  b                                           ; $4d17: $80
	ret  nc                                          ; $4d18: $d0

	add  b                                           ; $4d19: $80
	and  b                                           ; $4d1a: $a0
	add  b                                           ; $4d1b: $80
	ret  nz                                          ; $4d1c: $c0

	add  b                                           ; $4d1d: $80
	and  b                                           ; $4d1e: $a0
	add  b                                           ; $4d1f: $80
	ld   b, b                                        ; $4d20: $40
	add  b                                           ; $4d21: $80

jr_07b_4d22:
	add  b                                           ; $4d22: $80
	add  b                                           ; $4d23: $80
	nop                                              ; $4d24: $00
	ld   bc, $59a6                                   ; $4d25: $01 $a6 $59
	add  b                                           ; $4d28: $80
	ld   e, h                                        ; $4d29: $5c
	add  d                                           ; $4d2a: $82
	ld   e, a                                        ; $4d2b: $5f
	add  h                                           ; $4d2c: $84
	ld   c, a                                        ; $4d2d: $4f
	add  b                                           ; $4d2e: $80
	ld   e, a                                        ; $4d2f: $5f
	rlca                                             ; $4d30: $07
	db   $e3                                         ; $4d31: $e3
	db   $fc                                         ; $4d32: $fc
	ld   h, d                                        ; $4d33: $62
	ld   a, d                                        ; $4d34: $7a
	jr   c, jr_07b_4d75                              ; $4d35: $38 $3e

	adc  [hl]                                        ; $4d37: $8e
	adc  a                                           ; $4d38: $8f
	add  b                                           ; $4d39: $80
	db   $e3                                         ; $4d3a: $e3
	add  b                                           ; $4d3b: $80
	pop  af                                          ; $4d3c: $f1
	add  b                                           ; $4d3d: $80
	db   $fc                                         ; $4d3e: $fc
	add  b                                           ; $4d3f: $80
	cp   $01                                         ; $4d40: $fe $01
	rst  $38                                         ; $4d42: $ff
	nop                                              ; $4d43: $00
	add  b                                           ; $4d44: $80
	db   $10                                         ; $4d45: $10
	add  b                                           ; $4d46: $80
	nop                                              ; $4d47: $00
	add  b                                           ; $4d48: $80
	db   $10                                         ; $4d49: $10
	dec  b                                           ; $4d4a: $05
	nop                                              ; $4d4b: $00
	ret  nz                                          ; $4d4c: $c0

	ret  nc                                          ; $4d4d: $d0

	ldh  a, [$60]                                    ; $4d4e: $f0 $60
	ld   [hl], b                                     ; $4d50: $70
	add  b                                           ; $4d51: $80
	jr   nc, jr_07b_4d55                             ; $4d52: $30 $01

	inc  bc                                          ; $4d54: $03

jr_07b_4d55:
	inc  c                                           ; $4d55: $0c
	add  d                                           ; $4d56: $82
	ld   [$0980], sp                                 ; $4d57: $08 $80 $09
	add  b                                           ; $4d5a: $80
	add  hl, de                                      ; $4d5b: $19
	add  b                                           ; $4d5c: $80
	ld   de, $1380                                   ; $4d5d: $11 $80 $13
	add  b                                           ; $4d60: $80
	inc  hl                                          ; $4d61: $23
	ld   [bc], a                                     ; $4d62: $02
	db   $db                                         ; $4d63: $db
	db   $d3                                         ; $4d64: $d3
	or   e                                           ; $4d65: $b3
	add  e                                           ; $4d66: $83
	or   c                                           ; $4d67: $b1
	inc  bc                                          ; $4d68: $03
	ld   l, e                                        ; $4d69: $6b
	ld   h, c                                        ; $4d6a: $61
	ld   a, e                                        ; $4d6b: $7b
	ld   h, b                                        ; $4d6c: $60
	add  d                                           ; $4d6d: $82
	ldh  [rSB], a                                    ; $4d6e: $e0 $01
	ld   a, [bc]                                     ; $4d70: $0a
	ld   de, $9180                                   ; $4d71: $11 $80 $91
	add  d                                           ; $4d74: $82

jr_07b_4d75:
	sbc  c                                           ; $4d75: $99
	add  b                                           ; $4d76: $80
	ret  c                                           ; $4d77: $d8

	add  d                                           ; $4d78: $82
	ret  z                                           ; $4d79: $c8

	add  b                                           ; $4d7a: $80
	db   $ec                                         ; $4d7b: $ec
	ld   bc, $0007                                   ; $4d7c: $01 $07 $00
	adc  d                                           ; $4d7f: $8a

Call_07b_4d80:
	add  b                                           ; $4d80: $80
	add  b                                           ; $4d81: $80
	ret  nz                                          ; $4d82: $c0

	ld   bc, $20f8                                   ; $4d83: $01 $f8 $20
	add  b                                           ; $4d86: $80
	ld   hl, $2780                                   ; $4d87: $21 $80 $27
	dec  d                                           ; $4d8a: $15
	ld   h, $27                                      ; $4d8b: $26 $27
	dec  hl                                          ; $4d8d: $2b
	cpl                                              ; $4d8e: $2f
	jr   z, jr_07b_4dc0                              ; $4d8f: $28 $2f

	add  hl, hl                                      ; $4d91: $29
	ld   l, $32                                      ; $4d92: $2e $32
	jr   c, jr_07b_4db9                              ; $4d94: $38 $23

	ld   c, $99                                      ; $4d96: $0e $99
	sbc  a                                           ; $4d98: $9f
	di                                               ; $4d99: $f3
	rst  $38                                         ; $4d9a: $ff
	adc  $fe                                         ; $4d9b: $ce $fe
	ld   [hl], $fe                                   ; $4d9d: $36 $fe
	db   $10                                         ; $4d9f: $10
	jr   jr_07b_4d22                                 ; $4da0: $18 $80

	inc  [hl]                                        ; $4da2: $34
	inc  bc                                          ; $4da3: $03
	add  h                                           ; $4da4: $84
	ldh  a, [$0e]                                    ; $4da5: $f0 $0e
	ld   [bc], a                                     ; $4da7: $02
	add  b                                           ; $4da8: $80
	dec  b                                           ; $4da9: $05
	add  b                                           ; $4daa: $80
	ld   [bc], a                                     ; $4dab: $02
	add  b                                           ; $4dac: $80
	ld   bc, $0080                                   ; $4dad: $01 $80 $00
	add  b                                           ; $4db0: $80
	ld   bc, $0083                                   ; $4db1: $01 $83 $00
	add  a                                           ; $4db4: $87
	add  b                                           ; $4db5: $80
	add  b                                           ; $4db6: $80
	nop                                              ; $4db7: $00
	add  b                                           ; $4db8: $80

jr_07b_4db9:
	add  b                                           ; $4db9: $80
	dec  b                                           ; $4dba: $05
	nop                                              ; $4dbb: $00

jr_07b_4dbc:
	ld   b, $f9                                      ; $4dbc: $06 $f9
	ld   e, $0a                                      ; $4dbe: $1e $0a

jr_07b_4dc0:
	db   $eb                                         ; $4dc0: $eb
	add  b                                           ; $4dc1: $80
	ld   d, l                                        ; $4dc2: $55
	adc  b                                           ; $4dc3: $88
	nop                                              ; $4dc4: $00
	ld   bc, $04fb                                   ; $4dc5: $01 $fb $04
	add  b                                           ; $4dc8: $80
	inc  c                                           ; $4dc9: $0c
	add  b                                           ; $4dca: $80
	ld   [$0980], sp                                 ; $4dcb: $08 $80 $09
	add  d                                           ; $4dce: $82
	ld   bc, $0382                                   ; $4dcf: $01 $82 $03
	add  c                                           ; $4dd2: $81
	call c, $8c83                                    ; $4dd3: $dc $83 $8c
	ld   [bc], a                                     ; $4dd6: $02
	call c, $de8c                                    ; $4dd7: $dc $8c $de
	add  b                                           ; $4dda: $80
	add  [hl]                                        ; $4ddb: $86
	add  c                                           ; $4ddc: $81
	ld   b, $00                                      ; $4ddd: $06 $00
	rst  $20                                         ; $4ddf: $e7
	adc  l                                           ; $4de0: $8d
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	ret  nz                                          ; $4de3: $c0

	add  c                                           ; $4de4: $81
	nop                                              ; $4de5: $00
	adc  d                                           ; $4de6: $8a
	add  b                                           ; $4de7: $80
	nop                                              ; $4de8: $00
	and  b                                           ; $4de9: $a0
	add  c                                           ; $4dea: $81
	ld   e, a                                        ; $4deb: $5f
	inc  c                                           ; $4dec: $0c
	rra                                              ; $4ded: $1f
	sbc  a                                           ; $4dee: $9f
	rra                                              ; $4def: $1f
	ld   e, a                                        ; $4df0: $5f
	rlca                                             ; $4df1: $07
	daa                                              ; $4df2: $27
	inc  de                                          ; $4df3: $13
	dec  bc                                          ; $4df4: $0b
	ld   bc, $0005                                   ; $4df5: $01 $05 $00
	ld   [bc], a                                     ; $4df8: $02
	nop                                              ; $4df9: $00
	adc  l                                           ; $4dfa: $8d
	cp   $01                                         ; $4dfb: $fe $01
	adc  a                                           ; $4dfd: $8f
	add  b                                           ; $4dfe: $80
	add  b                                           ; $4dff: $80
	ret  nz                                          ; $4e00: $c0

	adc  d                                           ; $4e01: $8a
	ldh  a, [rSB]                                    ; $4e02: $f0 $01
	add  hl, hl                                      ; $4e04: $29
	ld   h, $80                                      ; $4e05: $26 $80
	ld   c, [hl]                                     ; $4e07: $4e
	add  b                                           ; $4e08: $80
	dec  c                                           ; $4e09: $0d
	add  b                                           ; $4e0a: $80
	dec  e                                           ; $4e0b: $1d
	add  b                                           ; $4e0c: $80
	dec  sp                                          ; $4e0d: $3b
	add  b                                           ; $4e0e: $80
	ld   [hl], a                                     ; $4e0f: $77
	add  b                                           ; $4e10: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e11: $cf
	ld   [bc], a                                     ; $4e12: $02
	or   a                                           ; $4e13: $b7
	or   [hl]                                        ; $4e14: $b6
	ld   a, [$c081]                                  ; $4e15: $fa $81 $c0
	ld   [bc], a                                     ; $4e18: $02
	cp   e                                           ; $4e19: $bb
	add  b                                           ; $4e1a: $80
	ei                                               ; $4e1b: $fb
	add  d                                           ; $4e1c: $82
	add  b                                           ; $4e1d: $80
	add  e                                           ; $4e1e: $83

jr_07b_4e1f:
	nop                                              ; $4e1f: $00
	ld   bc, $6c17                                   ; $4e20: $01 $17 $6c
	add  b                                           ; $4e23: $80
	ld   h, h                                        ; $4e24: $64
	inc  bc                                          ; $4e25: $03
	or   $76                                         ; $4e26: $f6 $76
	ldh  a, [c]                                      ; $4e28: $f2
	ld   [hl-], a                                    ; $4e29: $32
	add  d                                           ; $4e2a: $82
	ld   a, [hl-]                                    ; $4e2b: $3a
	ld   bc, $1f3f                                   ; $4e2c: $01 $3f $1f
	add  b                                           ; $4e2f: $80
	dec  e                                           ; $4e30: $1d
	nop                                              ; $4e31: $00
	and  a                                           ; $4e32: $a7
	add  l                                           ; $4e33: $85
	ld   b, b                                        ; $4e34: $40
	add  b                                           ; $4e35: $80
	ld   h, b                                        ; $4e36: $60
	add  b                                           ; $4e37: $80
	jr   nz, jr_07b_4dbc                             ; $4e38: $20 $82

	nop                                              ; $4e3a: $00
	add  hl, bc                                      ; $4e3b: $09
	rst  $38                                         ; $4e3c: $ff
	jr   c, @+$22                                    ; $4e3d: $38 $20

	jr   c, jr_07b_4e61                              ; $4e3f: $38 $20

	daa                                              ; $4e41: $27
	scf                                              ; $4e42: $37
	jr   c, jr_07b_4e66                              ; $4e43: $38 $21

	ld   sp, $2380                                   ; $4e45: $31 $80 $23
	add  b                                           ; $4e48: $80
	ld   [hl+], a                                    ; $4e49: $22
	add  b                                           ; $4e4a: $80
	ld   sp, $c70d                                   ; $4e4b: $31 $0d $c7
	db   $f4                                         ; $4e4e: $f4
	ld   l, h                                        ; $4e4f: $6c
	ldh  a, [$5c]                                    ; $4e50: $f0 $5c
	inc  a                                           ; $4e52: $3c
	xor  $fe                                         ; $4e53: $ee $fe
	inc  de                                          ; $4e55: $13
	ld   a, a                                        ; $4e56: $7f
	or   l                                           ; $4e57: $b5
	rst  $38                                         ; $4e58: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e59: $cf
	rst  $30                                         ; $4e5a: $f7
	add  b                                           ; $4e5b: $80
	or   $00                                         ; $4e5c: $f6 $00
	cp   $8d                                         ; $4e5e: $fe $8d
	add  b                                           ; $4e60: $80

jr_07b_4e61:
	ld   bc, $8f06                                   ; $4e61: $01 $06 $8f
	add  b                                           ; $4e64: $80
	sbc  c                                           ; $4e65: $99

jr_07b_4e66:
	ld   bc, $9980                                   ; $4e66: $01 $80 $99
	add  b                                           ; $4e69: $80
	sbc  b                                           ; $4e6a: $98
	add  d                                           ; $4e6b: $82
	sub  h                                           ; $4e6c: $94
	add  d                                           ; $4e6d: $82
	sub  d                                           ; $4e6e: $92
	nop                                              ; $4e6f: $00
	db   $10                                         ; $4e70: $10
	add  l                                           ; $4e71: $85
	ld   bc, $0081                                   ; $4e72: $01 $81 $00
	add  c                                           ; $4e75: $81
	ld   c, $80                                      ; $4e76: $0e $80
	nop                                              ; $4e78: $00
	nop                                              ; $4e79: $00
	di                                               ; $4e7a: $f3
	add  c                                           ; $4e7b: $81
	inc  bc                                          ; $4e7c: $03
	add  b                                           ; $4e7d: $80
	ld   b, $00                                      ; $4e7e: $06 $00
	rlca                                             ; $4e80: $07
	add  e                                           ; $4e81: $83
	ld   b, $00                                      ; $4e82: $06 $00
	ld   c, $81                                      ; $4e84: $0e $81
	inc  c                                           ; $4e86: $0c
	rlca                                             ; $4e87: $07
	db   $dd                                         ; $4e88: $dd
	ld   b, $1e                                      ; $4e89: $06 $1e
	ld   b, $de                                      ; $4e8b: $06 $de
	ld   b, $c7                                      ; $4e8d: $06 $c7
	rlca                                             ; $4e8f: $07
	add  e                                           ; $4e90: $83
	inc  bc                                          ; $4e91: $03
	nop                                              ; $4e92: $00
	ld   bc, $0080                                   ; $4e93: $01 $80 $00
	nop                                              ; $4e96: $00
	push hl                                          ; $4e97: $e5
	add  b                                           ; $4e98: $80
	rrca                                             ; $4e99: $0f
	nop                                              ; $4e9a: $00
	ccf                                              ; $4e9b: $3f
	add  b                                           ; $4e9c: $80
	jr   nc, jr_07b_4e1f                             ; $4e9d: $30 $80

	dec  b                                           ; $4e9f: $05
	add  [hl]                                        ; $4ea0: $86
	dec  [hl]                                        ; $4ea1: $35
	add  d                                           ; $4ea2: $82
	rst  $38                                         ; $4ea3: $ff
	add  b                                           ; $4ea4: $80
	nop                                              ; $4ea5: $00
	adc  b                                           ; $4ea6: $88
	ld   l, l                                        ; $4ea7: $6d
	add  d                                           ; $4ea8: $82
	rst  $38                                         ; $4ea9: $ff
	add  b                                           ; $4eaa: $80
	nop                                              ; $4eab: $00
	adc  b                                           ; $4eac: $88
	or   [hl]                                        ; $4ead: $b6
	add  d                                           ; $4eae: $82
	rst  $38                                         ; $4eaf: $ff
	add  b                                           ; $4eb0: $80
	nop                                              ; $4eb1: $00
	adc  b                                           ; $4eb2: $88
	db   $db                                         ; $4eb3: $db
	add  d                                           ; $4eb4: $82
	db   $fc                                         ; $4eb5: $fc
	add  b                                           ; $4eb6: $80
	nop                                              ; $4eb7: $00
	add  h                                           ; $4eb8: $84
	ld   l, l                                        ; $4eb9: $6d
	add  h                                           ; $4eba: $84
	ld   l, h                                        ; $4ebb: $6c
	ld   b, $db                                      ; $4ebc: $06 $db
	ret  c                                           ; $4ebe: $d8

	jr   c, @+$32                                    ; $4ebf: $38 $30

	ld   [hl], b                                     ; $4ec1: $70
	ld   h, b                                        ; $4ec2: $60
	ldh  [$81], a                                    ; $4ec3: $e0 $81
	add  b                                           ; $4ec5: $80
	add  b                                           ; $4ec6: $80
	nop                                              ; $4ec7: $00
	ld   bc, $c0bb                                   ; $4ec8: $01 $bb $c0
	add  b                                           ; $4ecb: $80
	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	ei                                               ; $4ece: $fb
	adc  c                                           ; $4ecf: $89
	nop                                              ; $4ed0: $00
	ld   bc, $00fb                                   ; $4ed1: $01 $fb $00
	add  b                                           ; $4ed4: $80
	ld   c, $03                                      ; $4ed5: $0e $03
	cp   $0e                                         ; $4ed7: $fe $0e
	rrca                                             ; $4ed9: $0f
	rlca                                             ; $4eda: $07
	add  c                                           ; $4edb: $81
	inc  bc                                          ; $4edc: $03
	ld   b, $01                                      ; $4edd: $06 $01
	nop                                              ; $4edf: $00
	ld   bc, $0203                                   ; $4ee0: $01 $03 $02
	ld   a, [$8000]                                  ; $4ee3: $fa $00 $80
	sub  a                                           ; $4ee6: $97
	add  b                                           ; $4ee7: $80
	rst  ToBoot                                         ; $4ee8: $c7
	add  b                                           ; $4ee9: $80
	ld   b, b                                        ; $4eea: $40
	add  b                                           ; $4eeb: $80
	nop                                              ; $4eec: $00
	ld   [$dec0], sp                                 ; $4eed: $08 $c0 $de
	ld   e, $21                                      ; $4ef0: $1e $21
	scf                                              ; $4ef2: $37
	halt                                             ; $4ef3: $76
	ld   b, e                                        ; $4ef4: $43
	or   e                                           ; $4ef5: $b3
	ld   a, c                                        ; $4ef6: $79
	add  c                                           ; $4ef7: $81
	ld   sp, hl                                      ; $4ef8: $f9
	ld   bc, $3f2f                                   ; $4ef9: $01 $2f $3f
	add  b                                           ; $4efc: $80
	ld   b, b                                        ; $4efd: $40
	add  b                                           ; $4efe: $80
	ld   l, l                                        ; $4eff: $6d
	add  b                                           ; $4f00: $80
	dec  l                                           ; $4f01: $2d
	add  b                                           ; $4f02: $80
	xor  l                                           ; $4f03: $ad
	add  b                                           ; $4f04: $80
	call $f705                                       ; $4f05: $cd $05 $f7
	or   $4c                                         ; $4f08: $f6 $4c
	xor  $5c                                         ; $4f0a: $ee $5c
	rst  $38                                         ; $4f0c: $ff
	add  b                                           ; $4f0d: $80
	nop                                              ; $4f0e: $00
	add  [hl]                                        ; $4f0f: $86
	or   [hl]                                        ; $4f10: $b6
	add  d                                           ; $4f11: $82
	rst  $38                                         ; $4f12: $ff
	add  b                                           ; $4f13: $80
	add  b                                           ; $4f14: $80
	add  b                                           ; $4f15: $80
	ld   e, e                                        ; $4f16: $5b
	add  b                                           ; $4f17: $80
	db   $db                                         ; $4f18: $db
	add  b                                           ; $4f19: $80
	db   $d3                                         ; $4f1a: $d3
	dec  b                                           ; $4f1b: $05
	ret  c                                           ; $4f1c: $d8

	db   $d3                                         ; $4f1d: $d3
	jp   nc, $f4d3                                   ; $4f1e: $d2 $d3 $f4

	pop  af                                          ; $4f21: $f1
	add  b                                           ; $4f22: $80
	push af                                          ; $4f23: $f5
	add  b                                           ; $4f24: $80
	inc  d                                           ; $4f25: $14
	add  b                                           ; $4f26: $80
	ld   d, d                                        ; $4f27: $52
	add  b                                           ; $4f28: $80
	ld   e, e                                        ; $4f29: $5b
	add  b                                           ; $4f2a: $80
	ld   e, c                                        ; $4f2b: $59
	inc  b                                           ; $4f2c: $04
	ld   e, $97                                      ; $4f2d: $1e $97
	ld   de, $f697                                   ; $4f2f: $11 $97 $f6
	adc  l                                           ; $4f32: $8d
	ld   b, $03                                      ; $4f33: $06 $03
	rst  $38                                         ; $4f35: $ff
	inc  c                                           ; $4f36: $0c
	add  h                                           ; $4f37: $84
	add  b                                           ; $4f38: $80
	add  b                                           ; $4f39: $80
	ld   a, b                                        ; $4f3a: $78
	add  d                                           ; $4f3b: $82
	ld   [$0080], sp                                 ; $4f3c: $08 $80 $00
	inc  b                                           ; $4f3f: $04
	inc  bc                                          ; $4f40: $03
	nop                                              ; $4f41: $00
	inc  b                                           ; $4f42: $04
	nop                                              ; $4f43: $00
	jp   c, $0081                                    ; $4f44: $da $81 $00

	inc  c                                           ; $4f47: $0c
	ld   [bc], a                                     ; $4f48: $02
	nop                                              ; $4f49: $00
	add  hl, bc                                      ; $4f4a: $09
	ld   bc, $0313                                   ; $4f4b: $01 $13 $03
	jp   $030f                                       ; $4f4e: $c3 $0f $03


	inc  sp                                          ; $4f51: $33
	inc  bc                                          ; $4f52: $03
	jp   $8dc9                                       ; $4f53: $c3 $c9 $8d


	dec  [hl]                                        ; $4f56: $35
	adc  [hl]                                        ; $4f57: $8e
	ld   l, l                                        ; $4f58: $6d
	adc  [hl]                                        ; $4f59: $8e
	or   [hl]                                        ; $4f5a: $b6
	adc  [hl]                                        ; $4f5b: $8e
	db   $db                                         ; $4f5c: $db
	adc  b                                           ; $4f5d: $88
	ld   l, h                                        ; $4f5e: $6c
	add  h                                           ; $4f5f: $84
	ld   l, b                                        ; $4f60: $68
	add  b                                           ; $4f61: $80
	ret  nz                                          ; $4f62: $c0

	ld   bc, $ffe0                                   ; $4f63: $01 $e0 $ff
	add  b                                           ; $4f66: $80
	or   b                                           ; $4f67: $b0
	nop                                              ; $4f68: $00
	and  b                                           ; $4f69: $a0
	add  c                                           ; $4f6a: $81
	or   b                                           ; $4f6b: $b0
	add  b                                           ; $4f6c: $80
	ret  nc                                          ; $4f6d: $d0

	add  d                                           ; $4f6e: $82
	ld   d, b                                        ; $4f6f: $50
	nop                                              ; $4f70: $00
	rrca                                             ; $4f71: $0f
	add  b                                           ; $4f72: $80
	nop                                              ; $4f73: $00
	nop                                              ; $4f74: $00
	rst  $38                                         ; $4f75: $ff
	adc  d                                           ; $4f76: $8a

jr_07b_4f77:
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	rst  $38                                         ; $4f79: $ff
	add  b                                           ; $4f7a: $80
	nop                                              ; $4f7b: $00
	nop                                              ; $4f7c: $00
	cp   $83                                         ; $4f7d: $fe $83
	ld   [bc], a                                     ; $4f7f: $02
	add  l                                           ; $4f80: $85
	nop                                              ; $4f81: $00
	dec  b                                           ; $4f82: $05
	res  7, a                                        ; $4f83: $cb $bf
	jr   jr_07b_4f77                                 ; $4f85: $18 $f0

	or   $96                                         ; $4f87: $f6 $96
	add  b                                           ; $4f89: $80
	ld   e, d                                        ; $4f8a: $5a
	add  b                                           ; $4f8b: $80
	ld   hl, $1e80                                   ; $4f8c: $21 $80 $1e
	add  b                                           ; $4f8f: $80
	ld   [$0e80], sp                                 ; $4f90: $08 $80 $0e
	add  b                                           ; $4f93: $80
	call Call_07b_4d80                               ; $4f94: $cd $80 $4d
	add  b                                           ; $4f97: $80
	call $ad80                                       ; $4f98: $cd $80 $ad
	add  b                                           ; $4f9b: $80
	dec  l                                           ; $4f9c: $2d
	add  b                                           ; $4f9d: $80
	ld   l, l                                        ; $4f9e: $6d
	add  d                                           ; $4f9f: $82
	db   $ed                                         ; $4fa0: $ed
	add  b                                           ; $4fa1: $80
	or   [hl]                                        ; $4fa2: $b6
	inc  bc                                          ; $4fa3: $03
	or   h                                           ; $4fa4: $b4
	or   a                                           ; $4fa5: $b7
	or   b                                           ; $4fa6: $b0
	or   e                                           ; $4fa7: $b3
	adc  b                                           ; $4fa8: $88
	or   b                                           ; $4fa9: $b0
	ld   [bc], a                                     ; $4faa: $02
	jp   c, $01d1                                    ; $4fab: $da $d1 $01

	add  b                                           ; $4fae: $80
	pop  af                                          ; $4faf: $f1
	inc  e                                           ; $4fb0: $1c
	ld   sp, hl                                      ; $4fb1: $f9
	ld   sp, $5cfd                                   ; $4fb2: $31 $fd $5c
	ld   a, a                                        ; $4fb5: $7f
	and  h                                           ; $4fb6: $a4
	cp   a                                           ; $4fb7: $bf
	ld   c, e                                        ; $4fb8: $4b
	ld   c, a                                        ; $4fb9: $4f
	or   h                                           ; $4fba: $b4
	or   a                                           ; $4fbb: $b7
	inc  d                                           ; $4fbc: $14
	sub  h                                           ; $4fbd: $94
	sub  c                                           ; $4fbe: $91
	sub  a                                           ; $4fbf: $97
	adc  e                                           ; $4fc0: $8b
	cp   l                                           ; $4fc1: $bd
	sub  l                                           ; $4fc2: $95
	sbc  l                                           ; $4fc3: $9d
	sbc  h                                           ; $4fc4: $9c
	dec  e                                           ; $4fc5: $1d
	ld   e, $df                                      ; $4fc6: $1e $df
	db   $d3                                         ; $4fc8: $d3

jr_07b_4fc9:
	ret  nc                                          ; $4fc9: $d0

	pop  de                                          ; $4fca: $d1
	sub  $b3                                         ; $4fcb: $d6 $b3
	or   b                                           ; $4fcd: $b0
	add  b                                           ; $4fce: $80
	and  b                                           ; $4fcf: $a0
	nop                                              ; $4fd0: $00
	add  b                                           ; $4fd1: $80
	add  b                                           ; $4fd2: $80
	and  b                                           ; $4fd3: $a0
	inc  bc                                          ; $4fd4: $03
	ldh  [rLCDC], a                                  ; $4fd5: $e0 $40
	jr   nc, jr_07b_4fe9                             ; $4fd7: $30 $10

	add  c                                           ; $4fd9: $81
	nop                                              ; $4fda: $00
	add  b                                           ; $4fdb: $80
	db   $10                                         ; $4fdc: $10
	ld   [bc], a                                     ; $4fdd: $02
	rst  $38                                         ; $4fde: $ff
	ld   bc, $8308                                   ; $4fdf: $01 $08 $83
	ld   c, $00                                      ; $4fe2: $0e $00
	ld   a, [bc]                                     ; $4fe4: $0a
	add  l                                           ; $4fe5: $85
	ld   c, $00                                      ; $4fe6: $0e $00
	db   $fc                                         ; $4fe8: $fc

jr_07b_4fe9:
	add  c                                           ; $4fe9: $81
	inc  bc                                          ; $4fea: $03

jr_07b_4feb:
	adc  b                                           ; $4feb: $88
	rlca                                             ; $4fec: $07
	inc  bc                                          ; $4fed: $03
	inc  c                                           ; $4fee: $0c

jr_07b_4fef:
	nop                                              ; $4fef: $00
	ldh  a, [rP1]                                    ; $4ff0: $f0 $00
	add  b                                           ; $4ff2: $80
	ld   bc, $0380                                   ; $4ff3: $01 $80 $03
	add  b                                           ; $4ff6: $80
	inc  c                                           ; $4ff7: $0c
	add  b                                           ; $4ff8: $80
	db   $10                                         ; $4ff9: $10
	add  b                                           ; $4ffa: $80
	ld   h, $80                                      ; $4ffb: $26 $80
	ld   [$1b80], sp                                 ; $4ffd: $08 $80 $1b

Call_07b_5000:
	add  b                                           ; $5000: $80

Call_07b_5001:
	nop                                              ; $5001: $00

Call_07b_5002:
	add  b                                           ; $5002: $80
	rst  $38                                         ; $5003: $ff
	add  b                                           ; $5004: $80
	nop                                              ; $5005: $00
	add  b                                           ; $5006: $80

jr_07b_5007:
	inc  bc                                          ; $5007: $03
	add  b                                           ; $5008: $80
	add  a                                           ; $5009: $87
	add  b                                           ; $500a: $80
	rst  $20                                         ; $500b: $e7
	add  b                                           ; $500c: $80
	ld   [bc], a                                     ; $500d: $02
	add  b                                           ; $500e: $80
	adc  l                                           ; $500f: $8d
	add  b                                           ; $5010: $80
	nop                                              ; $5011: $00
	add  b                                           ; $5012: $80
	rst  $38                                         ; $5013: $ff
	add  b                                           ; $5014: $80
	nop                                              ; $5015: $00
	add  b                                           ; $5016: $80
	db   $10                                         ; $5017: $10
	add  b                                           ; $5018: $80
	ccf                                              ; $5019: $3f
	add  b                                           ; $501a: $80
	cp   $80                                         ; $501b: $fe $80
	ld   a, c                                        ; $501d: $79
	add  b                                           ; $501e: $80
	dec  h                                           ; $501f: $25
	add  b                                           ; $5020: $80
	nop                                              ; $5021: $00
	add  b                                           ; $5022: $80
	rst  $38                                         ; $5023: $ff
	add  b                                           ; $5024: $80
	nop                                              ; $5025: $00
	add  b                                           ; $5026: $80
	cp   h                                           ; $5027: $bc
	add  b                                           ; $5028: $80
	ld   sp, hl                                      ; $5029: $f9
	add  b                                           ; $502a: $80
	ld   a, [hl]                                     ; $502b: $7e
	add  b                                           ; $502c: $80
	ret  nc                                          ; $502d: $d0

	add  b                                           ; $502e: $80
	ld   [bc], a                                     ; $502f: $02
	add  b                                           ; $5030: $80
	nop                                              ; $5031: $00
	add  b                                           ; $5032: $80
	rst  $38                                         ; $5033: $ff
	add  b                                           ; $5034: $80
	nop                                              ; $5035: $00
	add  b                                           ; $5036: $80
	ld   c, b                                        ; $5037: $48
	add  b                                           ; $5038: $80
	rst  $38                                         ; $5039: $ff
	add  b                                           ; $503a: $80
	sbc  [hl]                                        ; $503b: $9e
	add  b                                           ; $503c: $80
	ccf                                              ; $503d: $3f
	add  b                                           ; $503e: $80
	rrca                                             ; $503f: $0f
	add  b                                           ; $5040: $80
	nop                                              ; $5041: $00
	add  b                                           ; $5042: $80
	rst  $38                                         ; $5043: $ff
	add  b                                           ; $5044: $80
	nop                                              ; $5045: $00
	add  b                                           ; $5046: $80
	jr   z, jr_07b_4fc9                              ; $5047: $28 $80

	ld   l, h                                        ; $5049: $6c
	add  b                                           ; $504a: $80
	cp   [hl]                                        ; $504b: $be
	add  b                                           ; $504c: $80
	jp   hl                                          ; $504d: $e9


	add  b                                           ; $504e: $80
	pop  hl                                          ; $504f: $e1
	add  b                                           ; $5050: $80

jr_07b_5051:
	nop                                              ; $5051: $00
	ld   bc, $fffe                                   ; $5052: $01 $fe $ff
	add  b                                           ; $5055: $80
	rlca                                             ; $5056: $07
	add  b                                           ; $5057: $80
	ld   h, a                                        ; $5058: $67
	add  b                                           ; $5059: $80
	ld   b, a                                        ; $505a: $47
	add  b                                           ; $505b: $80
	and  a                                           ; $505c: $a7
	add  b                                           ; $505d: $80
	ld   b, a                                        ; $505e: $47
	ld   bc, $2627                                   ; $505f: $01 $27 $26
	add  c                                           ; $5062: $81
	nop                                              ; $5063: $00
	adc  d                                           ; $5064: $8a
	rst  $38                                         ; $5065: $ff
	add  b                                           ; $5066: $80
	nop                                              ; $5067: $00
	add  b                                           ; $5068: $80
	jr   nc, jr_07b_4feb                             ; $5069: $30 $80

	ld   h, b                                        ; $506b: $60
	add  b                                           ; $506c: $80
	jr   c, jr_07b_4fef                              ; $506d: $38 $80

	ret  nz                                          ; $506f: $c0

	add  h                                           ; $5070: $84
	rst  $38                                         ; $5071: $ff
	add  d                                           ; $5072: $82
	nop                                              ; $5073: $00
	add  b                                           ; $5074: $80
	ccf                                              ; $5075: $3f
	add  b                                           ; $5076: $80
	nop                                              ; $5077: $00
	inc  b                                           ; $5078: $04
	ld   a, a                                        ; $5079: $7f
	nop                                              ; $507a: $00
	rst  $38                                         ; $507b: $ff
	ld   a, a                                        ; $507c: $7f
	rst  $38                                         ; $507d: $ff
	add  b                                           ; $507e: $80
	ld   a, [hl]                                     ; $507f: $7e
	add  b                                           ; $5080: $80
	ccf                                              ; $5081: $3f
	add  c                                           ; $5082: $81
	nop                                              ; $5083: $00
	add  b                                           ; $5084: $80
	jr   nc, jr_07b_5007                             ; $5085: $30 $80

	ld   hl, sp+$05                                  ; $5087: $f8 $05
	db   $fc                                         ; $5089: $fc
	inc  c                                           ; $508a: $0c
	cp   $f2                                         ; $508b: $fe $f2
	rst  $38                                         ; $508d: $ff
	db   $fd                                         ; $508e: $fd
	add  b                                           ; $508f: $80
	rst  $38                                         ; $5090: $ff
	nop                                              ; $5091: $00
	cp   $80                                         ; $5092: $fe $80
	ld   a, c                                        ; $5094: $79
	add  b                                           ; $5095: $80
	cp   [hl]                                        ; $5096: $be
	add  b                                           ; $5097: $80
	ld   a, [hl]                                     ; $5098: $7e
	add  b                                           ; $5099: $80
	cp   [hl]                                        ; $509a: $be
	add  b                                           ; $509b: $80
	ld   a, [hl]                                     ; $509c: $7e
	ld   [bc], a                                     ; $509d: $02
	ld   b, $7e                                      ; $509e: $06 $7e
	ld   a, b                                        ; $50a0: $78
	add  b                                           ; $50a1: $80
	ld   a, $0a                                      ; $50a2: $3e $0a
	rra                                              ; $50a4: $1f
	rst  $30                                         ; $50a5: $f7
	rst  $10                                         ; $50a6: $d7
	sub  $f7                                         ; $50a7: $d6 $f7
	ld   h, $3e                                      ; $50a9: $26 $3e
	jp   z, $e4cf                                    ; $50ab: $ca $cf $e4

	rst  $20                                         ; $50ae: $e7
	add  b                                           ; $50af: $80
	ld   sp, hl                                      ; $50b0: $f9
	add  b                                           ; $50b1: $80
	db   $fc                                         ; $50b2: $fc
	add  b                                           ; $50b3: $80
	cp   $07                                         ; $50b4: $fe $07
	inc  b                                           ; $50b6: $04
	rst  $20                                         ; $50b7: $e7
	ld   sp, hl                                      ; $50b8: $f9
	rst  JumpTable                                         ; $50b9: $df
	pop  hl                                          ; $50ba: $e1
	ccf                                              ; $50bb: $3f
	dec  e                                           ; $50bc: $1d
	ld   sp, hl                                      ; $50bd: $f9
	add  b                                           ; $50be: $80
	db   $fc                                         ; $50bf: $fc
	add  b                                           ; $50c0: $80
	ld   a, [$fc80]                                  ; $50c1: $fa $80 $fc
	ld   [bc], a                                     ; $50c4: $02
	ld   a, [hl-]                                    ; $50c5: $3a
	ld   a, [$8312]                                  ; $50c6: $fa $12 $83
	ld   l, $00                                      ; $50c9: $2e $00
	cpl                                              ; $50cb: $2f
	add  e                                           ; $50cc: $83
	inc  l                                           ; $50cd: $2c
	add  b                                           ; $50ce: $80
	jr   z, jr_07b_5051                              ; $50cf: $28 $80

	ld   bc, $e405                                   ; $50d1: $01 $05 $e4
	inc  b                                           ; $50d4: $04
	ld   [hl], b                                     ; $50d5: $70
	db   $10                                         ; $50d6: $10
	jp   nz, $8042                                   ; $50d7: $c2 $42 $80

	add  h                                           ; $50da: $84
	add  b                                           ; $50db: $80
	db   $10                                         ; $50dc: $10
	add  b                                           ; $50dd: $80
	daa                                              ; $50de: $27
	add  b                                           ; $50df: $80
	cp   e                                           ; $50e0: $bb
	add  b                                           ; $50e1: $80
	ld   [hl], d                                     ; $50e2: $72
	add  b                                           ; $50e3: $80
	ld   a, h                                        ; $50e4: $7c
	add  b                                           ; $50e5: $80
	ei                                               ; $50e6: $fb
	add  b                                           ; $50e7: $80
	ld   a, [hl+]                                    ; $50e8: $2a
	add  b                                           ; $50e9: $80
	ld   c, a                                        ; $50ea: $4f
	add  b                                           ; $50eb: $80
	ld   e, d                                        ; $50ec: $5a
	add  d                                           ; $50ed: $82
	rst  $38                                         ; $50ee: $ff
	add  b                                           ; $50ef: $80
	cp   $80                                         ; $50f0: $fe $80
	dec  b                                           ; $50f2: $05
	add  b                                           ; $50f3: $80
	cp   a                                           ; $50f4: $bf
	add  b                                           ; $50f5: $80
	ei                                               ; $50f6: $fb
	add  b                                           ; $50f7: $80
	cp   $80                                         ; $50f8: $fe $80
	ld   hl, sp-$80                                  ; $50fa: $f8 $80
	db   $e3                                         ; $50fc: $e3
	add  b                                           ; $50fd: $80
	ldh  [$80], a                                    ; $50fe: $e0 $80
	pop  bc                                          ; $5100: $c1
	add  b                                           ; $5101: $80
	ret  z                                           ; $5102: $c8

	add  b                                           ; $5103: $80
	reti                                             ; $5104: $d9


	add  b                                           ; $5105: $80
	ld   [bc], a                                     ; $5106: $02
	add  b                                           ; $5107: $80
	ld   [$4080], sp                                 ; $5108: $08 $80 $40
	add  b                                           ; $510b: $80
	inc  d                                           ; $510c: $14
	add  b                                           ; $510d: $80
	ld   e, h                                        ; $510e: $5c
	add  b                                           ; $510f: $80
	adc  [hl]                                        ; $5110: $8e
	add  b                                           ; $5111: $80
	ld   bc, $1b80                                   ; $5112: $01 $80 $1b
	add  b                                           ; $5115: $80
	inc  b                                           ; $5116: $04
	add  b                                           ; $5117: $80
	dec  d                                           ; $5118: $15
	add  b                                           ; $5119: $80
	ld   de, $2780                                   ; $511a: $11 $80 $27
	add  b                                           ; $511d: $80
	ld   c, a                                        ; $511e: $4f
	add  b                                           ; $511f: $80
	ld   a, a                                        ; $5120: $7f
	add  b                                           ; $5121: $80
	ld   l, [hl]                                     ; $5122: $6e
	add  b                                           ; $5123: $80
	ld   sp, hl                                      ; $5124: $f9
	add  b                                           ; $5125: $80
	ld   e, e                                        ; $5126: $5b
	add  b                                           ; $5127: $80
	db   $fd                                         ; $5128: $fd
	add  b                                           ; $5129: $80
	ld   hl, sp-$80                                  ; $512a: $f8 $80
	db   $fd                                         ; $512c: $fd
	add  d                                           ; $512d: $82
	rst  $38                                         ; $512e: $ff
	add  b                                           ; $512f: $80
	ld   h, b                                        ; $5130: $60
	add  b                                           ; $5131: $80
	ld   b, $80                                      ; $5132: $06 $80
	db   $fc                                         ; $5134: $fc
	add  b                                           ; $5135: $80
	ldh  a, [$80]                                    ; $5136: $f0 $80
	call z, $e180                                    ; $5138: $cc $80 $e1
	add  b                                           ; $513b: $80
	sub  a                                           ; $513c: $97
	add  b                                           ; $513d: $80
	rst  $38                                         ; $513e: $ff
	ld   bc, $4746                                   ; $513f: $01 $46 $47
	add  b                                           ; $5142: $80
	daa                                              ; $5143: $27
	add  b                                           ; $5144: $80
	ld   b, a                                        ; $5145: $47
	add  b                                           ; $5146: $80
	daa                                              ; $5147: $27
	add  b                                           ; $5148: $80
	add  a                                           ; $5149: $87
	ld   bc, $2726                                   ; $514a: $01 $26 $27
	add  b                                           ; $514d: $80
	and  a                                           ; $514e: $a7
	add  b                                           ; $514f: $80
	ld   h, a                                        ; $5150: $67
	nop                                              ; $5151: $00
	nop                                              ; $5152: $00
	adc  l                                           ; $5153: $8d
	rst  $38                                         ; $5154: $ff
	add  c                                           ; $5155: $81
	cp   a                                           ; $5156: $bf
	ld   a, [bc]                                     ; $5157: $0a
	jp   $c47f                                       ; $5158: $c3 $7f $c4


	jp   nz, Jump_07b_65e5                           ; $515b: $c2 $e5 $65

	ld   a, l                                        ; $515e: $7d
	add  hl, de                                      ; $515f: $19
	dec  e                                           ; $5160: $1d
	ld   c, h                                        ; $5161: $4c
	ld   c, a                                        ; $5162: $4f
	add  b                                           ; $5163: $80
	ld   b, e                                        ; $5164: $43
	ld   [bc], a                                     ; $5165: $02
	rra                                              ; $5166: $1f
	sbc  a                                           ; $5167: $9f
	add  b                                           ; $5168: $80
	add  b                                           ; $5169: $80
	ret  nz                                          ; $516a: $c0

	add  a                                           ; $516b: $87
	rst  $38                                         ; $516c: $ff
	inc  b                                           ; $516d: $04
	cp   $fd                                         ; $516e: $fe $fd
	ld   [bc], a                                     ; $5170: $02
	cp   $00                                         ; $5171: $fe $00
	add  b                                           ; $5173: $80
	ld   bc, $ff85                                   ; $5174: $01 $85 $ff
	ld   bc, $ff00                                   ; $5177: $01 $00 $ff
	add  b                                           ; $517a: $80
	ld   a, a                                        ; $517b: $7f
	add  e                                           ; $517c: $83
	nop                                              ; $517d: $00
	add  b                                           ; $517e: $80
	add  b                                           ; $517f: $80
	add  b                                           ; $5180: $80
	ret  nz                                          ; $5181: $c0

	add  b                                           ; $5182: $80
	ldh  [rTIMA], a                                  ; $5183: $e0 $05
	rst  $38                                         ; $5185: $ff
	rlca                                             ; $5186: $07
	rst  $38                                         ; $5187: $ff
	ei                                               ; $5188: $fb
	rst  $38                                         ; $5189: $ff
	ld   a, l                                        ; $518a: $7d
	add  l                                           ; $518b: $85
	ld   a, [hl]                                     ; $518c: $7e
	add  b                                           ; $518d: $80
	ld   a, $05                                      ; $518e: $3e $05
	ld   e, $de                                      ; $5190: $1e $de
	adc  $ee                                         ; $5192: $ce $ee
	and  $f6                                         ; $5194: $e6 $f6
	jr   c, jr_07b_519a                              ; $5196: $38 $02

	add  [hl]                                        ; $5198: $86
	nop                                              ; $5199: $00

jr_07b_519a:
	add  [hl]                                        ; $519a: $86
	rrca                                             ; $519b: $0f
	add  [hl]                                        ; $519c: $86
	nop                                              ; $519d: $00
	add  [hl]                                        ; $519e: $86
	rst  $38                                         ; $519f: $ff
	add  [hl]                                        ; $51a0: $86
	nop                                              ; $51a1: $00
	add  b                                           ; $51a2: $80
	rst  $38                                         ; $51a3: $ff
	add  b                                           ; $51a4: $80
	cp   $80                                         ; $51a5: $fe $80
	rst  $38                                         ; $51a7: $ff
	add  b                                           ; $51a8: $80
	cp   $96                                         ; $51a9: $fe $96
	nop                                              ; $51ab: $00
	ld   [$003f], sp                                 ; $51ac: $08 $3f $00
	jr   nz, jr_07b_51b1                             ; $51af: $20 $00

jr_07b_51b1:
	stop                                             ; $51b1: $10 $00
	ld   [$0700], sp                                 ; $51b3: $08 $00 $07
	add  l                                           ; $51b6: $85
	nop                                              ; $51b7: $00
	nop                                              ; $51b8: $00
	rst  $38                                         ; $51b9: $ff
	add  l                                           ; $51ba: $85
	nop                                              ; $51bb: $00

jr_07b_51bc:
	nop                                              ; $51bc: $00
	rst  $38                                         ; $51bd: $ff
	add  l                                           ; $51be: $85
	nop                                              ; $51bf: $00
	nop                                              ; $51c0: $00
	rst  $38                                         ; $51c1: $ff
	add  l                                           ; $51c2: $85
	nop                                              ; $51c3: $00
	nop                                              ; $51c4: $00

jr_07b_51c5:
	rst  $38                                         ; $51c5: $ff
	add  l                                           ; $51c6: $85
	nop                                              ; $51c7: $00
	ld   [bc], a                                     ; $51c8: $02
	ccf                                              ; $51c9: $3f
	jr   nc, jr_07b_51bc                             ; $51ca: $30 $f0

	add  e                                           ; $51cc: $83
	nop                                              ; $51cd: $00
	nop                                              ; $51ce: $00
	rst  $38                                         ; $51cf: $ff
	add  l                                           ; $51d0: $85
	nop                                              ; $51d1: $00
	nop                                              ; $51d2: $00
	rst  $38                                         ; $51d3: $ff
	add  l                                           ; $51d4: $85
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	rst  $38                                         ; $51d7: $ff
	add  l                                           ; $51d8: $85
	nop                                              ; $51d9: $00
	nop                                              ; $51da: $00
	rst  $38                                         ; $51db: $ff
	add  e                                           ; $51dc: $83
	nop                                              ; $51dd: $00
	ld   [bc], a                                     ; $51de: $02
	ld   bc, $fe00                                   ; $51df: $01 $00 $fe
	add  l                                           ; $51e2: $85
	nop                                              ; $51e3: $00
	ld   [bc], a                                     ; $51e4: $02
	add  b                                           ; $51e5: $80
	nop                                              ; $51e6: $00
	add  b                                           ; $51e7: $80
	adc  e                                           ; $51e8: $8b
	nop                                              ; $51e9: $00
	add  b                                           ; $51ea: $80
	ld   a, [hl+]                                    ; $51eb: $2a
	add  b                                           ; $51ec: $80
	dec  d                                           ; $51ed: $15
	add  b                                           ; $51ee: $80
	ld   a, [bc]                                     ; $51ef: $0a
	add  b                                           ; $51f0: $80
	dec  b                                           ; $51f1: $05
	add  [hl]                                        ; $51f2: $86
	nop                                              ; $51f3: $00
	add  b                                           ; $51f4: $80
	cp   a                                           ; $51f5: $bf
	add  b                                           ; $51f6: $80
	ld   e, a                                        ; $51f7: $5f
	add  b                                           ; $51f8: $80
	xor  a                                           ; $51f9: $af
	add  b                                           ; $51fa: $80
	ld   d, a                                        ; $51fb: $57
	adc  [hl]                                        ; $51fc: $8e
	rrca                                             ; $51fd: $0f
	sub  b                                           ; $51fe: $90
	rst  $38                                         ; $51ff: $ff
	add  b                                           ; $5200: $80

jr_07b_5201:
	cp   $80                                         ; $5201: $fe $80
	rst  $38                                         ; $5203: $ff
	add  b                                           ; $5204: $80
	cp   $80                                         ; $5205: $fe $80
	rst  $38                                         ; $5207: $ff
	add  b                                           ; $5208: $80
	cp   $80                                         ; $5209: $fe $80
	rst  $38                                         ; $520b: $ff
	add  b                                           ; $520c: $80
	cp   $88                                         ; $520d: $fe $88
	nop                                              ; $520f: $00
	nop                                              ; $5210: $00
	ld   b, $83                                      ; $5211: $06 $83
	ld   bc, $0404                                   ; $5213: $01 $04 $04
	nop                                              ; $5216: $00
	ld   [bc], a                                     ; $5217: $02
	nop                                              ; $5218: $00
	ld   bc, $0085                                   ; $5219: $01 $85 $00
	add  b                                           ; $521c: $80
	ret  nz                                          ; $521d: $c0

	ld   [bc], a                                     ; $521e: $02
	jr   nz, jr_07b_5201                             ; $521f: $20 $e0

	ccf                                              ; $5221: $3f
	add  e                                           ; $5222: $83
	nop                                              ; $5223: $00
	ld   a, [bc]                                     ; $5224: $0a
	add  b                                           ; $5225: $80
	nop                                              ; $5226: $00
	ld   b, b                                        ; $5227: $40
	nop                                              ; $5228: $00
	jr   nz, jr_07b_522b                             ; $5229: $20 $00

jr_07b_522b:
	stop                                             ; $522b: $10 $00
	db   $10                                         ; $522d: $10
	dec  de                                          ; $522e: $1b
	ei                                               ; $522f: $fb
	adc  e                                           ; $5230: $8b
	nop                                              ; $5231: $00
	ld   [bc], a                                     ; $5232: $02
	ld   [$f3fb], sp                                 ; $5233: $08 $fb $f3
	add  b                                           ; $5236: $80
	nop                                              ; $5237: $00
	add  b                                           ; $5238: $80
	jr   nc, jr_07b_523b                             ; $5239: $30 $00

jr_07b_523b:
	ld   a, b                                        ; $523b: $78
	add  b                                           ; $523c: $80
	jr   c, jr_07b_5241                              ; $523d: $38 $02

	ld   e, b                                        ; $523f: $58
	db   $10                                         ; $5240: $10

jr_07b_5241:
	jr   nc, jr_07b_51c5                             ; $5241: $30 $82

	nop                                              ; $5243: $00
	add  b                                           ; $5244: $80
	rst  $38                                         ; $5245: $ff
	adc  h                                           ; $5246: $8c
	nop                                              ; $5247: $00
	inc  bc                                          ; $5248: $03
	rst  $38                                         ; $5249: $ff
	cp   $00                                         ; $524a: $fe $00
	ld   [bc], a                                     ; $524c: $02
	add  c                                           ; $524d: $81
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	inc  b                                           ; $5250: $04
	add  c                                           ; $5251: $81
	nop                                              ; $5252: $00
	nop                                              ; $5253: $00
	ld   [$0081], sp                                 ; $5254: $08 $81 $00
	inc  bc                                          ; $5257: $03
	ld   b, b                                        ; $5258: $40
	ldh  a, [rSCY]                                   ; $5259: $f0 $42
	ld   [bc], a                                     ; $525b: $02
	add  b                                           ; $525c: $80
	ld   bc, $008a                                   ; $525d: $01 $8a $00
	add  b                                           ; $5260: $80
	xor  e                                           ; $5261: $ab
	add  b                                           ; $5262: $80
	ld   d, l                                        ; $5263: $55
	add  b                                           ; $5264: $80
	xor  e                                           ; $5265: $ab
	add  b                                           ; $5266: $80
	ld   d, l                                        ; $5267: $55
	add  b                                           ; $5268: $80
	ld   a, [hl+]                                    ; $5269: $2a
	add  b                                           ; $526a: $80
	dec  d                                           ; $526b: $15
	add  b                                           ; $526c: $80
	ld   a, [bc]                                     ; $526d: $0a
	add  b                                           ; $526e: $80
	dec  d                                           ; $526f: $15
	adc  b                                           ; $5270: $88
	rst  $38                                         ; $5271: $ff
	add  b                                           ; $5272: $80
	ld   a, a                                        ; $5273: $7f
	add  b                                           ; $5274: $80
	cp   a                                           ; $5275: $bf
	add  b                                           ; $5276: $80
	ld   e, a                                        ; $5277: $5f
	nop                                              ; $5278: $00
	ld   b, $8d                                      ; $5279: $06 $8d
	ld   bc, $8f03                                   ; $527b: $01 $03 $8f
	ld   a, b                                        ; $527e: $78
	db   $10                                         ; $527f: $10
	ld   e, $80                                      ; $5280: $1e $80
	ld   b, $05                                      ; $5282: $06 $05
	ld   [bc], a                                     ; $5284: $02
	ld   b, d                                        ; $5285: $42
	ld   [hl+], a                                    ; $5286: $22
	ld   [hl], d                                     ; $5287: $72
	ld   [hl+], a                                    ; $5288: $22
	ld   [hl-], a                                    ; $5289: $32
	add  b                                           ; $528a: $80
	ld   [bc], a                                     ; $528b: $02
	add  b                                           ; $528c: $80
	ld   h, d                                        ; $528d: $62
	ld   bc, $0bf1                                   ; $528e: $01 $f1 $0b
	add  b                                           ; $5291: $80
	rra                                              ; $5292: $1f
	add  b                                           ; $5293: $80
	cpl                                              ; $5294: $2f
	add  b                                           ; $5295: $80
	rra                                              ; $5296: $1f
	add  b                                           ; $5297: $80
	ccf                                              ; $5298: $3f
	add  b                                           ; $5299: $80
	ld   e, a                                        ; $529a: $5f
	add  b                                           ; $529b: $80
	ccf                                              ; $529c: $3f
	add  b                                           ; $529d: $80
	ld   a, a                                        ; $529e: $7f
	ld   bc, $fbf3                                   ; $529f: $01 $f3 $fb
	add  b                                           ; $52a2: $80
	rst  $38                                         ; $52a3: $ff
	add  b                                           ; $52a4: $80
	ei                                               ; $52a5: $fb
	add  b                                           ; $52a6: $80
	rst  $38                                         ; $52a7: $ff
	ld   [$f9fb], sp                                 ; $52a8: $08 $fb $f9
	pop  af                                          ; $52ab: $f1
	di                                               ; $52ac: $f3
	rst  $10                                         ; $52ad: $d7
	or   a                                           ; $52ae: $b7
	sub  [hl]                                        ; $52af: $96
	ld   h, $23                                      ; $52b0: $26 $23
	add  c                                           ; $52b2: $81
	rst  $38                                         ; $52b3: $ff
	ld   bc, $ff00                                   ; $52b4: $01 $00 $ff
	add  b                                           ; $52b7: $80
	add  b                                           ; $52b8: $80
	nop                                              ; $52b9: $00
	cp   e                                           ; $52ba: $bb
	add  e                                           ; $52bb: $83
	add  b                                           ; $52bc: $80
	ld   [bc], a                                     ; $52bd: $02
	cp   e                                           ; $52be: $bb
	add  b                                           ; $52bf: $80
	nop                                              ; $52c0: $00
	add  c                                           ; $52c1: $81
	rst  $38                                         ; $52c2: $ff
	ld   bc, $ff00                                   ; $52c3: $01 $00 $ff
	add  b                                           ; $52c6: $80
	ld   bc, $dd00                                   ; $52c7: $01 $00 $dd
	add  e                                           ; $52ca: $83
	ld   bc, $dd03                                   ; $52cb: $01 $03 $dd
	ld   bc, $f04f                                   ; $52ce: $01 $4f $f0
	add  b                                           ; $52d1: $80
	ld   [hl], b                                     ; $52d2: $70
	add  b                                           ; $52d3: $80
	ldh  a, [$80]                                    ; $52d4: $f0 $80
	ld   [hl], b                                     ; $52d6: $70
	add  b                                           ; $52d7: $80
	ldh  a, [$84]                                    ; $52d8: $f0 $84
	ld   [hl], b                                     ; $52da: $70
	ld   bc, $0a4a                                   ; $52db: $01 $4a $0a
	add  b                                           ; $52de: $80
	dec  b                                           ; $52df: $05
	add  b                                           ; $52e0: $80
	ld   [bc], a                                     ; $52e1: $02
	add  b                                           ; $52e2: $80
	ld   bc, $0280                                   ; $52e3: $01 $80 $02
	add  b                                           ; $52e6: $80
	ld   bc, $0082                                   ; $52e7: $01 $82 $00
	add  b                                           ; $52ea: $80
	cp   a                                           ; $52eb: $bf
	add  b                                           ; $52ec: $80
	ld   e, a                                        ; $52ed: $5f
	add  b                                           ; $52ee: $80
	xor  a                                           ; $52ef: $af
	add  b                                           ; $52f0: $80
	ld   e, a                                        ; $52f1: $5f
	add  b                                           ; $52f2: $80
	xor  a                                           ; $52f3: $af
	add  b                                           ; $52f4: $80
	ld   d, a                                        ; $52f5: $57
	add  b                                           ; $52f6: $80
	xor  e                                           ; $52f7: $ab
	add  b                                           ; $52f8: $80
	ld   d, l                                        ; $52f9: $55
	nop                                              ; $52fa: $00
	adc  h                                           ; $52fb: $8c
	add  e                                           ; $52fc: $83
	ld   [hl], d                                     ; $52fd: $72
	ld   bc, $1262                                   ; $52fe: $01 $62 $12

Call_07b_5301:
	add  b                                           ; $5301: $80
	ld   [bc], a                                     ; $5302: $02
	ld   bc, $4232                                   ; $5303: $01 $32 $42
	add  d                                           ; $5306: $82
	ld   [hl], d                                     ; $5307: $72
	ld   [bc], a                                     ; $5308: $02

jr_07b_5309:
	push bc                                          ; $5309: $c5
	ccf                                              ; $530a: $3f
	ld   a, a                                        ; $530b: $7f
	add  b                                           ; $530c: $80
	ld   a, [hl]                                     ; $530d: $7e
	inc  bc                                          ; $530e: $03
	ld   b, $00                                      ; $530f: $06 $00
	ld   h, d                                        ; $5311: $62
	ld   h, b                                        ; $5312: $60
	add  b                                           ; $5313: $80
	ld   [hl], b                                     ; $5314: $70
	nop                                              ; $5315: $00
	ld   a, b                                        ; $5316: $78
	add  b                                           ; $5317: $80
	ld   a, h                                        ; $5318: $7c
	ld   [de], a                                     ; $5319: $12
	ld   l, b                                        ; $531a: $68
	ld   e, b                                        ; $531b: $58
	ret  z                                           ; $531c: $c8

	ld   h, b                                        ; $531d: $60
	ld   [hl+], a                                    ; $531e: $22
	ld   h, e                                        ; $531f: $63
	rst  $20                                         ; $5320: $e7
	and  $e4                                         ; $5321: $e6 $e4
	push hl                                          ; $5323: $e5
	jr   nz, @+$24                                   ; $5324: $20 $22

	and  e                                           ; $5326: $a3
	and  d                                           ; $5327: $a2
	daa                                              ; $5328: $27
	dec  h                                           ; $5329: $25
	ld   hl, $1a20                                   ; $532a: $21 $20 $1a
	add  b                                           ; $532d: $80
	nop                                              ; $532e: $00
	add  b                                           ; $532f: $80
	add  b                                           ; $5330: $80
	rlca                                             ; $5331: $07

jr_07b_5332:
	nop                                              ; $5332: $00
	ld   b, b                                        ; $5333: $40
	ret  nz                                          ; $5334: $c0

	cp   e                                           ; $5335: $bb
	nop                                              ; $5336: $00
	dec  sp                                          ; $5337: $3b
	ld   b, b                                        ; $5338: $40
	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	ld   b, b                                        ; $533b: $40
	ld   bc, $66c0                                   ; $533c: $01 $c0 $66
	add  l                                           ; $533f: $85
	ld   bc, $dd02                                   ; $5340: $01 $02 $dd
	ld   bc, $83dd                                   ; $5343: $01 $dd $83
	ld   bc, $1300                                   ; $5346: $01 $00 $13
	adc  l                                           ; $5349: $8d
	ld   [hl], b                                     ; $534a: $70
	ld   bc, $aaea                                   ; $534b: $01 $ea $aa
	add  b                                           ; $534e: $80
	ld   d, l                                        ; $534f: $55
	add  b                                           ; $5350: $80
	ld   a, [hl+]                                    ; $5351: $2a
	add  b                                           ; $5352: $80

jr_07b_5353:
	dec  d                                           ; $5353: $15
	add  b                                           ; $5354: $80
	ld   a, [hl+]                                    ; $5355: $2a
	add  b                                           ; $5356: $80
	dec  d                                           ; $5357: $15
	add  b                                           ; $5358: $80
	ld   a, [bc]                                     ; $5359: $0a
	add  b                                           ; $535a: $80
	dec  d                                           ; $535b: $15
	add  h                                           ; $535c: $84
	rst  $38                                         ; $535d: $ff
	add  b                                           ; $535e: $80
	ld   a, a                                        ; $535f: $7f
	add  b                                           ; $5360: $80
	cp   a                                           ; $5361: $bf
	add  b                                           ; $5362: $80
	ld   e, a                                        ; $5363: $5f
	add  b                                           ; $5364: $80
	cp   a                                           ; $5365: $bf
	add  b                                           ; $5366: $80
	ld   e, a                                        ; $5367: $5f
	nop                                              ; $5368: $00
	adc  h                                           ; $5369: $8c
	adc  l                                           ; $536a: $8d
	ld   [hl], d                                     ; $536b: $72
	ld   [bc], a                                     ; $536c: $02
	add  e                                           ; $536d: $83
	ld   h, d                                        ; $536e: $62
	ld   h, b                                        ; $536f: $60
	add  b                                           ; $5370: $80
	ld   h, d                                        ; $5371: $62
	add  b                                           ; $5372: $80
	ld   [hl], c                                     ; $5373: $71
	inc  bc                                          ; $5374: $03
	ld   [hl], b                                     ; $5375: $70
	ld   [hl], c                                     ; $5376: $71
	ld   e, c                                        ; $5377: $59
	ld   e, h                                        ; $5378: $5c
	add  b                                           ; $5379: $80
	ld   h, [hl]                                     ; $537a: $66
	add  hl, bc                                      ; $537b: $09

jr_07b_537c:
	halt                                             ; $537c: $76
	ld   [hl], d                                     ; $537d: $72
	ld   [hl], b                                     ; $537e: $70
	ldh  [$34], a                                    ; $537f: $e0 $34
	inc  h                                           ; $5381: $24
	ld   bc, $0100                                   ; $5382: $01 $00 $01
	nop                                              ; $5385: $00
	add  b                                           ; $5386: $80
	jr   nz, jr_07b_5309                             ; $5387: $20 $80

	ld   h, $80                                      ; $5389: $26 $80
	dec  b                                           ; $538b: $05
	add  b                                           ; $538c: $80
	inc  b                                           ; $538d: $04
	add  b                                           ; $538e: $80
	nop                                              ; $538f: $00
	inc  bc                                          ; $5390: $03
	ret  nz                                          ; $5391: $c0

	sbc  e                                           ; $5392: $9b
	ret  nz                                          ; $5393: $c0

	and  b                                           ; $5394: $a0
	add  d                                           ; $5395: $82
	nop                                              ; $5396: $00
	add  hl, bc                                      ; $5397: $09
	ld   b, b                                        ; $5398: $40
	dec  sp                                          ; $5399: $3b
	ld   b, b                                        ; $539a: $40
	ld   a, e                                        ; $539b: $7b
	ld   b, b                                        ; $539c: $40
	nop                                              ; $539d: $00
	ld   b, b                                        ; $539e: $40
	ld   a, d                                        ; $539f: $7a
	ld   bc, $85dd                                   ; $53a0: $01 $dd $85
	ld   bc, $dd02                                   ; $53a3: $01 $02 $dd
	ld   bc, $81dd                                   ; $53a6: $01 $dd $81
	ld   bc, $1300                                   ; $53a9: $01 $00 $13
	adc  c                                           ; $53ac: $89
	ld   [hl], b                                     ; $53ad: $70
	nop                                              ; $53ae: $00
	jr   nc, jr_07b_5332                             ; $53af: $30 $81

	nop                                              ; $53b1: $00
	nop                                              ; $53b2: $00
	db   $fc                                         ; $53b3: $fc
	adc  l                                           ; $53b4: $8d
	ld   [hl], d                                     ; $53b5: $72
	ld   [bc], a                                     ; $53b6: $02
	add  e                                           ; $53b7: $83
	ld   h, d                                        ; $53b8: $62
	ld   h, b                                        ; $53b9: $60
	add  b                                           ; $53ba: $80
	ld   h, d                                        ; $53bb: $62

jr_07b_53bc:
	add  b                                           ; $53bc: $80
	ld   [hl], c                                     ; $53bd: $71
	inc  bc                                          ; $53be: $03
	ld   [hl], b                                     ; $53bf: $70
	ld   [hl], c                                     ; $53c0: $71
	ld   e, c                                        ; $53c1: $59
	ld   e, h                                        ; $53c2: $5c
	add  b                                           ; $53c3: $80
	ld   h, [hl]                                     ; $53c4: $66
	add  hl, bc                                      ; $53c5: $09
	halt                                             ; $53c6: $76
	ld   [hl], d                                     ; $53c7: $72
	ld   [hl], b                                     ; $53c8: $70
	ldh  [$34], a                                    ; $53c9: $e0 $34
	inc  h                                           ; $53cb: $24
	ld   bc, $0100                                   ; $53cc: $01 $00 $01
	nop                                              ; $53cf: $00
	add  b                                           ; $53d0: $80
	jr   nz, jr_07b_5353                             ; $53d1: $20 $80

	ld   h, $80                                      ; $53d3: $26 $80
	dec  b                                           ; $53d5: $05
	add  b                                           ; $53d6: $80
	inc  b                                           ; $53d7: $04
	add  b                                           ; $53d8: $80
	nop                                              ; $53d9: $00
	inc  bc                                          ; $53da: $03
	ret  nz                                          ; $53db: $c0

	sbc  e                                           ; $53dc: $9b
	ret  nz                                          ; $53dd: $c0

	and  b                                           ; $53de: $a0
	add  d                                           ; $53df: $82
	nop                                              ; $53e0: $00
	add  hl, bc                                      ; $53e1: $09
	ld   b, b                                        ; $53e2: $40
	dec  sp                                          ; $53e3: $3b
	ld   b, b                                        ; $53e4: $40
	ld   a, e                                        ; $53e5: $7b
	ld   b, b                                        ; $53e6: $40
	nop                                              ; $53e7: $00
	ld   b, b                                        ; $53e8: $40
	ld   a, d                                        ; $53e9: $7a
	ld   bc, $85dd                                   ; $53ea: $01 $dd $85
	ld   bc, $dd02                                   ; $53ed: $01 $02 $dd
	ld   bc, $81dd                                   ; $53f0: $01 $dd $81
	ld   bc, $1300                                   ; $53f3: $01 $00 $13
	adc  c                                           ; $53f6: $89
	ld   [hl], b                                     ; $53f7: $70
	nop                                              ; $53f8: $00
	jr   nc, jr_07b_537c                             ; $53f9: $30 $81

	nop                                              ; $53fb: $00
	ld   bc, $0a7a                                   ; $53fc: $01 $7a $0a
	add  b                                           ; $53ff: $80
	dec  b                                           ; $5400: $05
	add  b                                           ; $5401: $80
	ld   [bc], a                                     ; $5402: $02
	add  b                                           ; $5403: $80
	dec  b                                           ; $5404: $05
	add  b                                           ; $5405: $80
	ld   [bc], a                                     ; $5406: $02
	add  b                                           ; $5407: $80
	ld   bc, $0280                                   ; $5408: $01 $80 $02
	add  b                                           ; $540b: $80
	ld   bc, $af80                                   ; $540c: $01 $80 $af
	add  b                                           ; $540f: $80
	ld   e, a                                        ; $5410: $5f
	add  b                                           ; $5411: $80
	xor  a                                           ; $5412: $af
	add  b                                           ; $5413: $80
	ld   d, a                                        ; $5414: $57
	add  b                                           ; $5415: $80
	xor  e                                           ; $5416: $ab
	add  b                                           ; $5417: $80
	ld   d, a                                        ; $5418: $57
	add  b                                           ; $5419: $80
	xor  e                                           ; $541a: $ab
	add  b                                           ; $541b: $80
	ld   d, l                                        ; $541c: $55
	adc  l                                           ; $541d: $8d
	nop                                              ; $541e: $00
	ld   bc, $0503                                   ; $541f: $01 $03 $05
	add  a                                           ; $5422: $87
	ld   bc, $0908                                   ; $5423: $01 $08 $09
	ld   de, $cd21                                   ; $5426: $11 $21 $cd
	dec  b                                           ; $5429: $05
	add  hl, sp                                      ; $542a: $39
	ld   b, a                                        ; $542b: $47
	ld   [hl], d                                     ; $542c: $72
	ld   h, a                                        ; $542d: $67
	add  b                                           ; $542e: $80
	ld   h, [hl]                                     ; $542f: $66
	ld   [bc], a                                     ; $5430: $02
	ld   h, d                                        ; $5431: $62
	ld   h, b                                        ; $5432: $60
	ld   h, d                                        ; $5433: $62
	add  [hl]                                        ; $5434: $86
	ld   [hl], d                                     ; $5435: $72
	inc  bc                                          ; $5436: $03
	add  d                                           ; $5437: $82
	nop                                              ; $5438: $00
	sbc  b                                           ; $5439: $98
	jr   jr_07b_53bc                                 ; $543a: $18 $80

	and  $80                                         ; $543c: $e6 $80
	add  b                                           ; $543e: $80
	add  b                                           ; $543f: $80
	or   b                                           ; $5440: $b0
	add  b                                           ; $5441: $80
	cp   [hl]                                        ; $5442: $be
	add  b                                           ; $5443: $80
	and  b                                           ; $5444: $a0
	add  b                                           ; $5445: $80
	or   b                                           ; $5446: $b0
	dec  b                                           ; $5447: $05
	nop                                              ; $5448: $00
	ld   bc, $2223                                   ; $5449: $01 $23 $22
	ld   h, $27                                      ; $544c: $26 $27
	add  b                                           ; $544e: $80
	ld   bc, $0002                                   ; $544f: $01 $02 $00
	inc  bc                                          ; $5452: $03
	ld   [bc], a                                     ; $5453: $02
	add  e                                           ; $5454: $83
	nop                                              ; $5455: $00
	ld   b, $7b                                      ; $5456: $06 $7b
	ret  nz                                          ; $5458: $c0

	cp   e                                           ; $5459: $bb
	nop                                              ; $545a: $00
	ld   a, e                                        ; $545b: $7b
	ret  nz                                          ; $545c: $c0

	add  b                                           ; $545d: $80
	add  d                                           ; $545e: $82
	ret  nz                                          ; $545f: $c0

	ld   bc, $3b00                                   ; $5460: $01 $00 $3b
	add  b                                           ; $5463: $80
	add  b                                           ; $5464: $80
	dec  b                                           ; $5465: $05
	nop                                              ; $5466: $00
	db   $dd                                         ; $5467: $dd
	ld   bc, $01dd                                   ; $5468: $01 $dd $01
	db   $dd                                         ; $546b: $dd
	add  l                                           ; $546c: $85
	ld   bc, $dd00                                   ; $546d: $01 $00 $dd
	add  c                                           ; $5470: $81
	ld   bc, $8f01                                   ; $5471: $01 $01 $8f
	nop                                              ; $5474: $00
	add  b                                           ; $5475: $80
	ld   [$0406], sp                                 ; $5476: $08 $06 $04
	inc  c                                           ; $5479: $0c
	dec  bc                                          ; $547a: $0b
	rrca                                             ; $547b: $0f
	add  l                                           ; $547c: $85
	add  [hl]                                        ; $547d: $86
	add  b                                           ; $547e: $80
	add  b                                           ; $547f: $80
	adc  e                                           ; $5480: $8b
	inc  bc                                          ; $5481: $03
	adc  h                                           ; $5482: $8c
	adc  [hl]                                        ; $5483: $8e
	adc  d                                           ; $5484: $8a
	ld   [hl], a                                     ; $5485: $77
	add  l                                           ; $5486: $85
	nop                                              ; $5487: $00
	add  b                                           ; $5488: $80
	add  b                                           ; $5489: $80
	rlca                                             ; $548a: $07
	ret  nz                                          ; $548b: $c0

	ld   b, b                                        ; $548c: $40
	ld   [hl], b                                     ; $548d: $70
	or   b                                           ; $548e: $b0
	sbc  b                                           ; $548f: $98
	ld   l, b                                        ; $5490: $68
	or   b                                           ; $5491: $b0
	nop                                              ; $5492: $00
	add  b                                           ; $5493: $80
	ld   bc, $008a                                   ; $5494: $01 $8a $00
	add  b                                           ; $5497: $80
	xor  e                                           ; $5498: $ab
	add  b                                           ; $5499: $80
	ld   d, l                                        ; $549a: $55
	add  b                                           ; $549b: $80
	xor  d                                           ; $549c: $aa
	add  b                                           ; $549d: $80
	ld   d, l                                        ; $549e: $55
	add  b                                           ; $549f: $80
	xor  d                                           ; $54a0: $aa
	add  b                                           ; $54a1: $80
	ld   d, l                                        ; $54a2: $55
	add  b                                           ; $54a3: $80
	ld   a, [hl+]                                    ; $54a4: $2a
	add  b                                           ; $54a5: $80
	ld   d, l                                        ; $54a6: $55
	adc  b                                           ; $54a7: $88
	ldh  a, [$80]                                    ; $54a8: $f0 $80
	ld   [hl], b                                     ; $54aa: $70
	add  b                                           ; $54ab: $80
	ldh  a, [$80]                                    ; $54ac: $f0 $80
	ld   [hl], b                                     ; $54ae: $70
	adc  c                                           ; $54af: $89
	nop                                              ; $54b0: $00
	dec  b                                           ; $54b1: $05
	inc  bc                                          ; $54b2: $03
	nop                                              ; $54b3: $00
	inc  e                                           ; $54b4: $1c
	ld   bc, $ffe1                                   ; $54b5: $01 $e1 $ff
	add  d                                           ; $54b8: $82
	nop                                              ; $54b9: $00
	inc  b                                           ; $54ba: $04
	inc  bc                                          ; $54bb: $03
	nop                                              ; $54bc: $00
	inc  e                                           ; $54bd: $1c
	ld   bc, $80e1                                   ; $54be: $01 $e1 $80
	rrca                                             ; $54c1: $0f
	add  b                                           ; $54c2: $80
	ld   a, h                                        ; $54c3: $7c
	add  b                                           ; $54c4: $80
	di                                               ; $54c5: $f3
	dec  c                                           ; $54c6: $0d
	ld   hl, sp+$18                                  ; $54c7: $f8 $18
	nop                                              ; $54c9: $00
	rst  $20                                         ; $54ca: $e7
	dec  de                                          ; $54cb: $1b
	inc  e                                           ; $54cc: $1c
	ld   [hl], b                                     ; $54cd: $70
	ld   [hl], c                                     ; $54ce: $71
	ret  nz                                          ; $54cf: $c0

	rst  ToBoot                                         ; $54d0: $c7
	ld   a, [bc]                                     ; $54d1: $0a
	ld   e, $62                                      ; $54d2: $1e $62
	ld   [hl], d                                     ; $54d4: $72
	add  b                                           ; $54d5: $80
	jp   nz, $2307                                   ; $54d6: $c2 $07 $23

	push hl                                          ; $54d9: $e5
	call $251d                                       ; $54da: $cd $1d $25
	ld   [hl], l                                     ; $54dd: $75
	add  l                                           ; $54de: $85
	push bc                                          ; $54df: $c5
	add  b                                           ; $54e0: $80
	dec  d                                           ; $54e1: $15
	add  b                                           ; $54e2: $80
	dec  h                                           ; $54e3: $25
	nop                                              ; $54e4: $00
	add  c                                           ; $54e5: $81
	add  c                                           ; $54e6: $81
	add  l                                           ; $54e7: $85
	nop                                              ; $54e8: $00
	ld   [hl], b                                     ; $54e9: $70
	adc  l                                           ; $54ea: $8d
	ld   [hl], d                                     ; $54eb: $72
	ld   bc, $b2b0                                   ; $54ec: $01 $b0 $b2
	add  b                                           ; $54ef: $80
	and  d                                           ; $54f0: $a2
	add  b                                           ; $54f1: $80
	add  d                                           ; $54f2: $82
	add  b                                           ; $54f3: $80
	add  e                                           ; $54f4: $83
	add  b                                           ; $54f5: $80
	add  d                                           ; $54f6: $82
	add  b                                           ; $54f7: $80
	add  l                                           ; $54f8: $85
	add  b                                           ; $54f9: $80
	sub  e                                           ; $54fa: $93
	add  b                                           ; $54fb: $80
	xor  h                                           ; $54fc: $ac
	add  b                                           ; $54fd: $80
	ld   [bc], a                                     ; $54fe: $02
	nop                                              ; $54ff: $00
	add  b                                           ; $5500: $80
	add  b                                           ; $5501: $80
	add  c                                           ; $5502: $81
	nop                                              ; $5503: $00
	add  b                                           ; $5504: $80
	add  b                                           ; $5505: $80
	inc  bc                                          ; $5506: $03
	nop                                              ; $5507: $00
	add  b                                           ; $5508: $80
	add  b                                           ; $5509: $80
	add  d                                           ; $550a: $82
	ld   [bc], a                                     ; $550b: $02
	add  e                                           ; $550c: $83
	inc  bc                                          ; $550d: $03
	nop                                              ; $550e: $00
	add  b                                           ; $550f: $80
	ld   b, b                                        ; $5510: $40
	ld   [bc], a                                     ; $5511: $02
	ld   bc, $7e7f                                   ; $5512: $01 $7f $7e
	add  b                                           ; $5515: $80
	ld   a, a                                        ; $5516: $7f
	add  [hl]                                        ; $5517: $86
	rst  $38                                         ; $5518: $ff
	add  c                                           ; $5519: $81

jr_07b_551a:
	ld   a, a                                        ; $551a: $7f
	ld   [$ff80], sp                                 ; $551b: $08 $80 $ff
	ccf                                              ; $551e: $3f
	rst  $38                                         ; $551f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5520: $cf
	rst  $38                                         ; $5521: $ff
	rst  $28                                         ; $5522: $ef
	rst  $38                                         ; $5523: $ff
	ldh  [$85], a                                    ; $5524: $e0 $85
	rst  $38                                         ; $5526: $ff
	ld   bc, $89f6                                   ; $5527: $01 $f6 $89
	add  d                                           ; $552a: $82
	adc  b                                           ; $552b: $88
	inc  b                                           ; $552c: $04
	ld   a, [bc]                                     ; $552d: $0a
	adc  d                                           ; $552e: $8a
	ld   c, d                                        ; $552f: $4a
	jp   z, $838a                                    ; $5530: $ca $8a $83

	ld   a, [$e30d]                                  ; $5533: $fa $0d $e3
	or   h                                           ; $5536: $b4
	xor  e                                           ; $5537: $ab
	rst  JumpTable                                         ; $5538: $df
	pop  de                                          ; $5539: $d1
	xor  [hl]                                        ; $553a: $ae
	xor  l                                           ; $553b: $ad
	sub  a                                           ; $553c: $97
	sbc  [hl]                                        ; $553d: $9e
	adc  c                                           ; $553e: $89
	and  l                                           ; $553f: $a5
	and  h                                           ; $5540: $a4
	inc  de                                          ; $5541: $13
	sub  e                                           ; $5542: $93
	add  b                                           ; $5543: $80
	adc  e                                           ; $5544: $8b
	nop                                              ; $5545: $00
	rst  $38                                         ; $5546: $ff
	add  c                                           ; $5547: $81
	nop                                              ; $5548: $00
	add  b                                           ; $5549: $80
	add  b                                           ; $554a: $80
	dec  bc                                          ; $554b: $0b
	ret  nz                                          ; $554c: $c0

	ld   b, b                                        ; $554d: $40
	ldh  a, [$b0]                                    ; $554e: $f0 $b0
	jr   c, jr_07b_551a                              ; $5550: $38 $c8

	call z, $ef64                                    ; $5552: $cc $64 $ef
	sbc  e                                           ; $5555: $9b
	add  $2a                                         ; $5556: $c6 $2a
	add  b                                           ; $5558: $80
	dec  d                                           ; $5559: $15
	add  b                                           ; $555a: $80
	ld   a, [hl+]                                    ; $555b: $2a
	add  b                                           ; $555c: $80
	dec  d                                           ; $555d: $15
	add  b                                           ; $555e: $80
	ld   a, [bc]                                     ; $555f: $0a

jr_07b_5560:
	add  b                                           ; $5560: $80
	dec  d                                           ; $5561: $15
	add  b                                           ; $5562: $80
	ld   a, [bc]                                     ; $5563: $0a
	add  b                                           ; $5564: $80
	dec  b                                           ; $5565: $05
	add  b                                           ; $5566: $80
	or   b                                           ; $5567: $b0
	add  b                                           ; $5568: $80
	ld   [hl], b                                     ; $5569: $70
	add  b                                           ; $556a: $80
	or   b                                           ; $556b: $b0
	add  b                                           ; $556c: $80
	ld   d, b                                        ; $556d: $50
	add  b                                           ; $556e: $80
	or   b                                           ; $556f: $b0
	add  b                                           ; $5570: $80
	ld   d, b                                        ; $5571: $50
	add  b                                           ; $5572: $80
	and  b                                           ; $5573: $a0
	add  b                                           ; $5574: $80
	ld   d, b                                        ; $5575: $50
	nop                                              ; $5576: $00
	rrca                                             ; $5577: $0f
	add  e                                           ; $5578: $83
	nop                                              ; $5579: $00
	add  b                                           ; $557a: $80
	ld   bc, $0086                                   ; $557b: $01 $86 $00
	nop                                              ; $557e: $00
	ldh  a, [$83]                                    ; $557f: $f0 $83
	nop                                              ; $5581: $00
	add  b                                           ; $5582: $80
	ld   d, l                                        ; $5583: $55
	add  d                                           ; $5584: $82
	nop                                              ; $5585: $00
	add  b                                           ; $5586: $80
	ld   d, l                                        ; $5587: $55
	add  [hl]                                        ; $5588: $86
	nop                                              ; $5589: $00
	add  b                                           ; $558a: $80
	ld   hl, sp-$7e                                  ; $558b: $f8 $82
	nop                                              ; $558d: $00
	add  b                                           ; $558e: $80
	ld   a, b                                        ; $558f: $78
	add  b                                           ; $5590: $80
	db   $10                                         ; $5591: $10
	add  b                                           ; $5592: $80
	rlca                                             ; $5593: $07
	add  b                                           ; $5594: $80
	ld   a, $80                                      ; $5595: $3e $80
	ldh  a, [$80]                                    ; $5597: $f0 $80
	rst  ToBoot                                         ; $5599: $c7
	add  b                                           ; $559a: $80
	ld   e, $80                                      ; $559b: $1e $80
	ld   a, c                                        ; $559d: $79
	add  b                                           ; $559e: $80
	db   $e3                                         ; $559f: $e3
	add  b                                           ; $55a0: $80
	ld   [$8f80], a                                  ; $55a1: $ea $80 $8f
	add  b                                           ; $55a4: $80
	ld   a, h                                        ; $55a5: $7c
	add  b                                           ; $55a6: $80
	db   $ed                                         ; $55a7: $ed
	add  b                                           ; $55a8: $80
	adc  l                                           ; $55a9: $8d
	add  b                                           ; $55aa: $80
	ld   c, l                                        ; $55ab: $4d
	add  d                                           ; $55ac: $82
	adc  l                                           ; $55ad: $8d
	add  b                                           ; $55ae: $80
	dec  c                                           ; $55af: $0d
	inc  bc                                          ; $55b0: $03
	db   $10                                         ; $55b1: $10
	ld   [de], a                                     ; $55b2: $12
	ld   h, b                                        ; $55b3: $60
	ld   h, d                                        ; $55b4: $62
	add  b                                           ; $55b5: $80
	ld   b, d                                        ; $55b6: $42
	add  b                                           ; $55b7: $80
	ld   [bc], a                                     ; $55b8: $02
	add  b                                           ; $55b9: $80
	ld   [hl+], a                                    ; $55ba: $22
	add  h                                           ; $55bb: $84
	ld   h, d                                        ; $55bc: $62
	adc  d                                           ; $55bd: $8a
	and  l                                           ; $55be: $a5
	add  b                                           ; $55bf: $80
	add  l                                           ; $55c0: $85
	add  b                                           ; $55c1: $80
	sub  l                                           ; $55c2: $95
	nop                                              ; $55c3: $00
	ld   [hl], b                                     ; $55c4: $70
	add  e                                           ; $55c5: $83
	ld   [hl], d                                     ; $55c6: $72
	add  b                                           ; $55c7: $80
	ld   h, d                                        ; $55c8: $62
	add  b                                           ; $55c9: $80
	ld   [de], a                                     ; $55ca: $12
	add  b                                           ; $55cb: $80
	ld   [hl-], a                                    ; $55cc: $32
	nop                                              ; $55cd: $00
	ld   [hl], d                                     ; $55ce: $72
	add  b                                           ; $55cf: $80
	ld   [hl], b                                     ; $55d0: $70
	ld   [bc], a                                     ; $55d1: $02
	ld   [hl], c                                     ; $55d2: $71

jr_07b_55d3:
	sbc  c                                           ; $55d3: $99
	sbc  b                                           ; $55d4: $98
	add  b                                           ; $55d5: $80
	ld   [hl], b                                     ; $55d6: $70
	add  b                                           ; $55d7: $80
	ldh  [rDIV], a                                   ; $55d8: $e0 $04
	ret  nz                                          ; $55da: $c0

	ret  nc                                          ; $55db: $d0

	sub  b                                           ; $55dc: $90
	or   b                                           ; $55dd: $b0
	jr   nc, jr_07b_5560                             ; $55de: $30 $80

	ld   [hl], b                                     ; $55e0: $70
	add  b                                           ; $55e1: $80
	db   $e3                                         ; $55e2: $e3
	add  b                                           ; $55e3: $80

jr_07b_55e4:
	xor  $82                                         ; $55e4: $ee $82
	inc  bc                                          ; $55e6: $03
	add  b                                           ; $55e7: $80

jr_07b_55e8:
	rlca                                             ; $55e8: $07
	add  d                                           ; $55e9: $82
	rrca                                             ; $55ea: $0f
	add  d                                           ; $55eb: $82
	ccf                                              ; $55ec: $3f
	add  b                                           ; $55ed: $80
	ld   a, a                                        ; $55ee: $7f
	adc  l                                           ; $55ef: $8d

jr_07b_55f0:
	rst  $38                                         ; $55f0: $ff
	nop                                              ; $55f1: $00
	push af                                          ; $55f2: $f5
	add  c                                           ; $55f3: $81
	ld   a, [$f880]                                  ; $55f4: $fa $80 $f8
	add  d                                           ; $55f7: $82
	db   $f4                                         ; $55f8: $f4
	nop                                              ; $55f9: $00
	ldh  a, [c]                                      ; $55fa: $f2
	add  c                                           ; $55fb: $81
	ld   a, [$fb80]                                  ; $55fc: $fa $80 $fb
	nop                                              ; $55ff: $00
	ld   d, d                                        ; $5600: $52
	adc  e                                           ; $5601: $8b
	xor  d                                           ; $5602: $aa
	add  b                                           ; $5603: $80
	ld   c, d                                        ; $5604: $4a
	add  b                                           ; $5605: $80
	ld   c, h                                        ; $5606: $4c
	add  b                                           ; $5607: $80
	ld   h, $80                                      ; $5608: $26 $80
	ld   e, e                                        ; $560a: $5b
	add  b                                           ; $560b: $80
	ld   l, l                                        ; $560c: $6d
	add  b                                           ; $560d: $80
	ld   [hl], $80                                   ; $560e: $36 $80
	inc  de                                          ; $5610: $13
	add  d                                           ; $5611: $82
	ld   d, e                                        ; $5612: $53
	db   $10                                         ; $5613: $10
	ld   a, a                                        ; $5614: $7f
	add  b                                           ; $5615: $80
	ret  nz                                          ; $5616: $c0

	ld   b, b                                        ; $5617: $40
	ld   h, b                                        ; $5618: $60
	jr   nz, jr_07b_55d3                             ; $5619: $20 $b8

	adc  b                                           ; $561b: $88
	call z, $b6c4                                    ; $561c: $cc $c4 $b6
	or   d                                           ; $561f: $b2
	db   $db                                         ; $5620: $db
	reti                                             ; $5621: $d9


	ld   l, l                                        ; $5622: $6d
	ld   l, h                                        ; $5623: $6c
	rst  $38                                         ; $5624: $ff
	adc  c                                           ; $5625: $89
	nop                                              ; $5626: $00
	add  b                                           ; $5627: $80
	add  b                                           ; $5628: $80
	inc  bc                                          ; $5629: $03
	ret  nz                                          ; $562a: $c0

	ld   b, b                                        ; $562b: $40
	add  d                                           ; $562c: $82
	ld   [bc], a                                     ; $562d: $02
	add  b                                           ; $562e: $80
	dec  b                                           ; $562f: $05
	add  b                                           ; $5630: $80
	ld   [bc], a                                     ; $5631: $02
	add  b                                           ; $5632: $80
	dec  b                                           ; $5633: $05
	add  b                                           ; $5634: $80
	ld   [bc], a                                     ; $5635: $02
	add  b                                           ; $5636: $80
	ld   bc, $0280                                   ; $5637: $01 $80 $02
	add  b                                           ; $563a: $80
	ld   bc, $a080                                   ; $563b: $01 $80 $a0
	add  b                                           ; $563e: $80
	ld   d, b                                        ; $563f: $50
	add  b                                           ; $5640: $80
	and  b                                           ; $5641: $a0
	add  b                                           ; $5642: $80
	ld   d, b                                        ; $5643: $50
	add  b                                           ; $5644: $80
	and  b                                           ; $5645: $a0
	add  b                                           ; $5646: $80
	ld   d, b                                        ; $5647: $50
	add  b                                           ; $5648: $80
	and  b                                           ; $5649: $a0
	add  b                                           ; $564a: $80
	ld   d, b                                        ; $564b: $50
	nop                                              ; $564c: $00
	rrca                                             ; $564d: $0f
	adc  l                                           ; $564e: $8d
	nop                                              ; $564f: $00
	ld   bc, $00f0                                   ; $5650: $01 $f0 $00
	add  b                                           ; $5653: $80
	ld   a, $80                                      ; $5654: $3e $80
	inc  b                                           ; $5656: $04
	add  b                                           ; $5657: $80
	ld   b, $80                                      ; $5658: $06 $80
	inc  b                                           ; $565a: $04
	add  b                                           ; $565b: $80
	ld   b, $80                                      ; $565c: $06 $80
	inc  b                                           ; $565e: $04
	add  b                                           ; $565f: $80
	ld   [bc], a                                     ; $5660: $02
	add  b                                           ; $5661: $80
	jr   jr_07b_55e4                                 ; $5662: $18 $80

	db   $10                                         ; $5664: $10
	add  b                                           ; $5665: $80
	jr   jr_07b_55e8                                 ; $5666: $18 $80

	db   $10                                         ; $5668: $10
	add  b                                           ; $5669: $80
	jr   jr_07b_55f0                                 ; $566a: $18 $84

	db   $10                                         ; $566c: $10
	add  b                                           ; $566d: $80
	add  sp, -$80                                    ; $566e: $e8 $80
	jp   hl                                          ; $5670: $e9


	adc  d                                           ; $5671: $8a
	db   $eb                                         ; $5672: $eb
	adc  [hl]                                        ; $5673: $8e
	adc  l                                           ; $5674: $8d
	add  [hl]                                        ; $5675: $86
	ld   h, d                                        ; $5676: $62
	add  b                                           ; $5677: $80
	ld   d, e                                        ; $5678: $53
	add  b                                           ; $5679: $80

jr_07b_567a:
	inc  sp                                          ; $567a: $33
	add  b                                           ; $567b: $80
	ld   b, [hl]                                     ; $567c: $46
	add  b                                           ; $567d: $80
	inc  e                                           ; $567e: $1c
	add  b                                           ; $567f: $80
	and  l                                           ; $5680: $a5
	add  b                                           ; $5681: $80
	adc  l                                           ; $5682: $8d
	add  b                                           ; $5683: $80
	add  hl, sp                                      ; $5684: $39

jr_07b_5685:
	add  b                                           ; $5685: $80
	ld   [hl], l                                     ; $5686: $75
	add  b                                           ; $5687: $80
	call c, $b805                                    ; $5688: $dc $05 $b8
	cp   c                                           ; $568b: $b9
	ld   [hl], c                                     ; $568c: $71
	ld   [hl], a                                     ; $568d: $77
	rst  ToBoot                                         ; $568e: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $568f: $cf
	add  b                                           ; $5690: $80
	ld   c, a                                        ; $5691: $4f
	nop                                              ; $5692: $00
	rrca                                             ; $5693: $0f
	add  b                                           ; $5694: $80
	ccf                                              ; $5695: $3f
	add  d                                           ; $5696: $82
	ld   a, a                                        ; $5697: $7f
	sub  l                                           ; $5698: $95
	rst  $38                                         ; $5699: $ff
	nop                                              ; $569a: $00
	cp   $81                                         ; $569b: $fe $81
	db   $fd                                         ; $569d: $fd
	nop                                              ; $569e: $00
	db   $fc                                         ; $569f: $fc
	add  d                                           ; $56a0: $82
	cp   $85                                         ; $56a1: $fe $85
	rst  $38                                         ; $56a3: $ff
	ld   bc, $6a95                                   ; $56a4: $01 $95 $6a
	add  b                                           ; $56a7: $80
	xor  d                                           ; $56a8: $aa
	add  b                                           ; $56a9: $80
	or   d                                           ; $56aa: $b2
	add  b                                           ; $56ab: $80
	jp   nc, Jump_07b_5a80                           ; $56ac: $d2 $80 $5a

	add  b                                           ; $56af: $80
	ld   l, d                                        ; $56b0: $6a
	add  b                                           ; $56b1: $80
	ld   l, [hl]                                     ; $56b2: $6e
	ld   [bc], a                                     ; $56b3: $02
	ld   [hl], $b6                                   ; $56b4: $36 $b6
	db   $d3                                         ; $56b6: $d3
	adc  l                                           ; $56b7: $8d
	ld   d, e                                        ; $56b8: $53
	add  b                                           ; $56b9: $80
	scf                                              ; $56ba: $37
	add  b                                           ; $56bb: $80
	add  hl, de                                      ; $56bc: $19
	add  b                                           ; $56bd: $80
	inc  l                                           ; $56be: $2c
	add  b                                           ; $56bf: $80
	ld   [hl], $80                                   ; $56c0: $36 $80
	dec  de                                          ; $56c2: $1b
	add  b                                           ; $56c3: $80
	inc  c                                           ; $56c4: $0c
	add  b                                           ; $56c5: $80
	ld   b, $80                                      ; $56c6: $06 $80
	ld   [hl+], a                                    ; $56c8: $22
	dec  bc                                          ; $56c9: $0b
	rrca                                             ; $56ca: $0f
	jr   nc, jr_07b_5685                             ; $56cb: $30 $b8

	sbc  b                                           ; $56cd: $98
	call c, Call_07b_76c4                            ; $56ce: $dc $c4 $76
	ld   [hl], d                                     ; $56d1: $72
	cp   e                                           ; $56d2: $bb
	cp   c                                           ; $56d3: $b9
	call $80cc                                       ; $56d4: $cd $cc $80
	ld   h, [hl]                                     ; $56d7: $66
	add  b                                           ; $56d8: $80
	ld   [hl], e                                     ; $56d9: $73
	nop                                              ; $56da: $00
	rst  $38                                         ; $56db: $ff
	add  a                                           ; $56dc: $87
	nop                                              ; $56dd: $00
	rlca                                             ; $56de: $07
	ret  nz                                          ; $56df: $c0

	ld   b, b                                        ; $56e0: $40
	ld   h, b                                        ; $56e1: $60
	jr   nz, @-$46                                   ; $56e2: $20 $b8

	sbc  b                                           ; $56e4: $98
	ldh  [rP1], a                                    ; $56e5: $e0 $00
	add  b                                           ; $56e7: $80
	ld   bc, $008a                                   ; $56e8: $01 $8a $00
	add  b                                           ; $56eb: $80
	and  b                                           ; $56ec: $a0
	add  b                                           ; $56ed: $80
	ld   d, b                                        ; $56ee: $50
	add  b                                           ; $56ef: $80
	and  b                                           ; $56f0: $a0
	add  b                                           ; $56f1: $80
	ld   d, b                                        ; $56f2: $50
	add  b                                           ; $56f3: $80
	and  b                                           ; $56f4: $a0
	add  b                                           ; $56f5: $80
	ld   d, b                                        ; $56f6: $50
	add  b                                           ; $56f7: $80
	jr   nz, jr_07b_567a                             ; $56f8: $20 $80

	ld   d, b                                        ; $56fa: $50
	ld   bc, $00ff                                   ; $56fb: $01 $ff $00
	add  b                                           ; $56fe: $80
	ld   [bc], a                                     ; $56ff: $02
	adc  d                                           ; $5700: $8a
	nop                                              ; $5701: $00
	add  [hl]                                        ; $5702: $86
	db   $10                                         ; $5703: $10
	add  [hl]                                        ; $5704: $86
	nop                                              ; $5705: $00
	add  h                                           ; $5706: $84
	db   $eb                                         ; $5707: $eb
	add  b                                           ; $5708: $80
	ld   [$e880], a                                  ; $5709: $ea $80 $e8
	add  b                                           ; $570c: $80
	db   $eb                                         ; $570d: $eb
	add  b                                           ; $570e: $80
	ld   [$e180], a                                  ; $570f: $ea $80 $e1
	add  b                                           ; $5712: $80
	adc  l                                           ; $5713: $8d
	add  b                                           ; $5714: $80
	adc  h                                           ; $5715: $8c
	add  b                                           ; $5716: $80
	adc  l                                           ; $5717: $8d
	add  b                                           ; $5718: $80
	ld   c, a                                        ; $5719: $4f
	add  b                                           ; $571a: $80
	xor  $80                                         ; $571b: $ee $80
	cp   b                                           ; $571d: $b8
	add  b                                           ; $571e: $80
	ld   [hl], e                                     ; $571f: $73
	add  b                                           ; $5720: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5721: $cf
	add  b                                           ; $5722: $80
	dec  sp                                          ; $5723: $3b
	add  b                                           ; $5724: $80
	rst  $20                                         ; $5725: $e7
	add  b                                           ; $5726: $80
	call c, $3809                                    ; $5727: $dc $09 $38
	dec  sp                                          ; $572a: $3b
	ld   [hl], e                                     ; $572b: $73
	ld   [hl], a                                     ; $572c: $77
	rst  $20                                         ; $572d: $e7
	rst  $28                                         ; $572e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572f: $cf
	rst  JumpTable                                         ; $5730: $df
	rra                                              ; $5731: $1f
	ccf                                              ; $5732: $3f
	add  b                                           ; $5733: $80
	cp   a                                           ; $5734: $bf
	nop                                              ; $5735: $00
	ccf                                              ; $5736: $3f
	add  b                                           ; $5737: $80
	ld   a, a                                        ; $5738: $7f
	adc  c                                           ; $5739: $89
	rst  $38                                         ; $573a: $ff
	inc  bc                                          ; $573b: $03
	ret  z                                           ; $573c: $c8

	or   a                                           ; $573d: $b7
	sbc  e                                           ; $573e: $9b
	db   $db                                         ; $573f: $db
	add  b                                           ; $5740: $80
	reti                                             ; $5741: $d9


	add  b                                           ; $5742: $80
	db   $dd                                         ; $5743: $dd
	ld   bc, $eccc                                   ; $5744: $01 $cc $ec
	add  d                                           ; $5747: $82
	xor  $02                                         ; $5748: $ee $02
	rst  $20                                         ; $574a: $e7
	rst  $30                                         ; $574b: $f7
	and  e                                           ; $574c: $a3
	add  c                                           ; $574d: $81
	ld   d, e                                        ; $574e: $53
	add  d                                           ; $574f: $82
	sub  e                                           ; $5750: $93
	add  b                                           ; $5751: $80
	db   $d3                                         ; $5752: $d3
	add  b                                           ; $5753: $80
	db   $e3                                         ; $5754: $e3
	add  b                                           ; $5755: $80
	ld   h, e                                        ; $5756: $63
	add  b                                           ; $5757: $80
	ld   [hl], e                                     ; $5758: $73
	add  b                                           ; $5759: $80
	ld   [hl-], a                                    ; $575a: $32
	adc  h                                           ; $575b: $8c
	ld   a, [hl-]                                    ; $575c: $3a
	add  b                                           ; $575d: $80
	ld   a, b                                        ; $575e: $78
	add  b                                           ; $575f: $80
	ld   l, [hl]                                     ; $5760: $6e
	add  b                                           ; $5761: $80
	ld   h, a                                        ; $5762: $67
	add  b                                           ; $5763: $80
	ld   h, e                                        ; $5764: $63
	add  [hl]                                        ; $5765: $86
	ld   h, b                                        ; $5766: $60
	and  a                                           ; $5767: $a7
	ld   [bc], a                                     ; $5768: $02
	add  [hl]                                        ; $5769: $86
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	rrca                                             ; $576c: $0f
	add  l                                           ; $576d: $85
	nop                                              ; $576e: $00
	nop                                              ; $576f: $00
	rrca                                             ; $5770: $0f
	add  l                                           ; $5771: $85
	nop                                              ; $5772: $00
	nop                                              ; $5773: $00
	rst  $38                                         ; $5774: $ff
	add  l                                           ; $5775: $85
	nop                                              ; $5776: $00
	nop                                              ; $5777: $00
	rst  $38                                         ; $5778: $ff
	add  l                                           ; $5779: $85
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	rst  $38                                         ; $577c: $ff
	add  l                                           ; $577d: $85
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	rst  $38                                         ; $5780: $ff
	add  l                                           ; $5781: $85
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	rst  $38                                         ; $5784: $ff
	add  l                                           ; $5785: $85
	rlca                                             ; $5786: $07
	nop                                              ; $5787: $00
	ld   hl, sp-$7a                                  ; $5788: $f8 $86
	nop                                              ; $578a: $00
	add  b                                           ; $578b: $80
	xor  d                                           ; $578c: $aa
	add  b                                           ; $578d: $80
	add  b                                           ; $578e: $80
	add  b                                           ; $578f: $80
	xor  d                                           ; $5790: $aa
	add  b                                           ; $5791: $80
	add  b                                           ; $5792: $80
	add  [hl]                                        ; $5793: $86
	nop                                              ; $5794: $00
	add  b                                           ; $5795: $80
	xor  d                                           ; $5796: $aa
	add  b                                           ; $5797: $80
	ld   d, l                                        ; $5798: $55
	add  b                                           ; $5799: $80
	xor  d                                           ; $579a: $aa
	add  b                                           ; $579b: $80
	dec  b                                           ; $579c: $05
	add  l                                           ; $579d: $85
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	ld   bc, $ab80                                   ; $57a0: $01 $80 $ab
	add  b                                           ; $57a3: $80
	ld   d, a                                        ; $57a4: $57
	add  b                                           ; $57a5: $80
	xor  e                                           ; $57a6: $ab
	ld   bc, $5657                                   ; $57a7: $01 $57 $56
	add  l                                           ; $57aa: $85
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	rst  $38                                         ; $57ad: $ff
	add  l                                           ; $57ae: $85
	ret  nz                                          ; $57af: $c0

	nop                                              ; $57b0: $00
	ccf                                              ; $57b1: $3f
	add  l                                           ; $57b2: $85
	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	rst  $38                                         ; $57b5: $ff
	add  l                                           ; $57b6: $85
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	rst  $38                                         ; $57b9: $ff
	add  l                                           ; $57ba: $85
	nop                                              ; $57bb: $00
	nop                                              ; $57bc: $00
	rst  $38                                         ; $57bd: $ff
	add  l                                           ; $57be: $85
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	rst  $38                                         ; $57c1: $ff
	add  l                                           ; $57c2: $85
	nop                                              ; $57c3: $00
	ld   [$1de0], sp                                 ; $57c4: $08 $e0 $1d
	dec  l                                           ; $57c7: $2d
	dec  hl                                          ; $57c8: $2b
	ld   e, e                                        ; $57c9: $5b
	ld   d, a                                        ; $57ca: $57
	or   a                                           ; $57cb: $b7
	xor  a                                           ; $57cc: $af
	rst  $28                                         ; $57cd: $ef
	add  [hl]                                        ; $57ce: $86
	nop                                              ; $57cf: $00
	add  b                                           ; $57d0: $80
	ret  nz                                          ; $57d1: $c0

	add  d                                           ; $57d2: $82
	add  b                                           ; $57d3: $80
	add  a                                           ; $57d4: $87
	nop                                              ; $57d5: $00
	nop                                              ; $57d6: $00
	inc  bc                                          ; $57d7: $03
	add  b                                           ; $57d8: $80
	nop                                              ; $57d9: $00
	add  d                                           ; $57da: $82
	db   $10                                         ; $57db: $10
	ld   bc, $2320                                   ; $57dc: $01 $20 $23
	add  l                                           ; $57df: $85
	nop                                              ; $57e0: $00

jr_07b_57e1:
	nop                                              ; $57e1: $00
	ldh  [$80], a                                    ; $57e2: $e0 $80
	ld   a, [$f580]                                  ; $57e4: $fa $80 $f5
	add  b                                           ; $57e7: $80
	ld   a, [$f501]                                  ; $57e8: $fa $01 $f5
	dec  d                                           ; $57eb: $15
	add  [hl]                                        ; $57ec: $86
	nop                                              ; $57ed: $00
	add  b                                           ; $57ee: $80
	xor  d                                           ; $57ef: $aa
	add  b                                           ; $57f0: $80
	ld   d, l                                        ; $57f1: $55
	add  b                                           ; $57f2: $80
	xor  d                                           ; $57f3: $aa
	add  b                                           ; $57f4: $80
	ld   d, h                                        ; $57f5: $54
	add  [hl]                                        ; $57f6: $86
	nop                                              ; $57f7: $00
	add  b                                           ; $57f8: $80
	xor  d                                           ; $57f9: $aa
	add  b                                           ; $57fa: $80
	ld   d, b                                        ; $57fb: $50
	add  b                                           ; $57fc: $80
	xor  d                                           ; $57fd: $aa
	ld   bc, $0f00                                   ; $57fe: $01 $00 $0f
	adc  l                                           ; $5801: $8d
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	ldh  a, [$9e]                                    ; $5804: $f0 $9e
	nop                                              ; $5806: $00
	adc  l                                           ; $5807: $8d
	rlca                                             ; $5808: $07
	nop                                              ; $5809: $00
	ld   hl, sp-$80                                  ; $580a: $f8 $80
	add  d                                           ; $580c: $82
	adc  h                                           ; $580d: $8c
	add  b                                           ; $580e: $80
	add  b                                           ; $580f: $80
	xor  d                                           ; $5810: $aa
	add  b                                           ; $5811: $80
	nop                                              ; $5812: $00
	add  b                                           ; $5813: $80
	ld   a, [bc]                                     ; $5814: $0a
	add  a                                           ; $5815: $87
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	ld   bc, $ab80                                   ; $5818: $01 $80 $ab
	add  b                                           ; $581b: $80
	rla                                              ; $581c: $17
	add  b                                           ; $581d: $80
	xor  e                                           ; $581e: $ab
	add  b                                           ; $581f: $80
	rlca                                             ; $5820: $07
	add  b                                           ; $5821: $80
	xor  e                                           ; $5822: $ab
	add  b                                           ; $5823: $80
	rlca                                             ; $5824: $07
	add  b                                           ; $5825: $80
	dec  hl                                          ; $5826: $2b
	ld   bc, $fd03                                   ; $5827: $01 $03 $fd
	adc  [hl]                                        ; $582a: $8e
	ret  nz                                          ; $582b: $c0

	adc  l                                           ; $582c: $8d
	nop                                              ; $582d: $00
	add  b                                           ; $582e: $80
	ld   bc, $0280                                   ; $582f: $01 $80 $02
	add  b                                           ; $5832: $80
	dec  b                                           ; $5833: $05
	add  b                                           ; $5834: $80
	ld   a, [bc]                                     ; $5835: $0a
	add  b                                           ; $5836: $80
	rla                                              ; $5837: $17
	add  b                                           ; $5838: $80
	dec  hl                                          ; $5839: $2b
	add  b                                           ; $583a: $80
	ld   d, [hl]                                     ; $583b: $56
	add  b                                           ; $583c: $80
	dec  c                                           ; $583d: $0d
	add  b                                           ; $583e: $80
	ld   a, a                                        ; $583f: $7f
	ld   bc, $bebf                                   ; $5840: $01 $bf $be
	add  c                                           ; $5843: $81
	cp   $80                                         ; $5844: $fe $80
	db   $fd                                         ; $5846: $fd
	add  b                                           ; $5847: $80
	ei                                               ; $5848: $fb
	add  b                                           ; $5849: $80
	ld   a, [$f680]                                  ; $584a: $fa $80 $f6
	add  b                                           ; $584d: $80
	rst  $38                                         ; $584e: $ff
	add  b                                           ; $584f: $80
	ld   b, b                                        ; $5850: $40
	add  d                                           ; $5851: $82
	add  b                                           ; $5852: $80
	add  b                                           ; $5853: $80
	nop                                              ; $5854: $00
	add  b                                           ; $5855: $80
	ld   b, c                                        ; $5856: $41
	add  b                                           ; $5857: $80
	ld   [bc], a                                     ; $5858: $02
	add  b                                           ; $5859: $80
	adc  d                                           ; $585a: $8a
	ld   bc, $fcff                                   ; $585b: $01 $ff $fc
	add  b                                           ; $585e: $80
	jr   nz, jr_07b_57e1                             ; $585f: $20 $80

	jr   z, @-$7e                                    ; $5861: $28 $80

	ld   c, b                                        ; $5863: $48
	add  d                                           ; $5864: $82
	ld   e, b                                        ; $5865: $58
	add  d                                           ; $5866: $82
	cp   h                                           ; $5867: $bc
	ld   bc, $1ffc                                   ; $5868: $01 $fc $1f
	add  b                                           ; $586b: $80
	ld   a, [$f580]                                  ; $586c: $fa $80 $f5
	add  b                                           ; $586f: $80
	ld   a, [$f480]                                  ; $5870: $fa $80 $f4
	add  b                                           ; $5873: $80
	ld   a, [$f480]                                  ; $5874: $fa $80 $f4
	add  b                                           ; $5877: $80
	ld   a, [$f001]                                  ; $5878: $fa $01 $f0
	db   $10                                         ; $587b: $10
	add  b                                           ; $587c: $80
	xor  d                                           ; $587d: $aa
	add  b                                           ; $587e: $80
	ld   b, b                                        ; $587f: $40
	add  b                                           ; $5880: $80
	xor  d                                           ; $5881: $aa
	add  b                                           ; $5882: $80
	nop                                              ; $5883: $00
	add  b                                           ; $5884: $80
	xor  b                                           ; $5885: $a8
	add  b                                           ; $5886: $80
	nop                                              ; $5887: $00
	add  b                                           ; $5888: $80
	and  b                                           ; $5889: $a0
	add  b                                           ; $588a: $80
	nop                                              ; $588b: $00
	add  b                                           ; $588c: $80
	xor  d                                           ; $588d: $aa
	add  b                                           ; $588e: $80
	nop                                              ; $588f: $00
	add  b                                           ; $5890: $80
	add  b                                           ; $5891: $80
	add  a                                           ; $5892: $87
	nop                                              ; $5893: $00
	add  e                                           ; $5894: $83
	rrca                                             ; $5895: $0f
	ld   bc, $0f00                                   ; $5896: $01 $00 $0f
	add  b                                           ; $5899: $80
	ld   a, [bc]                                     ; $589a: $0a
	add  b                                           ; $589b: $80
	dec  b                                           ; $589c: $05
	add  b                                           ; $589d: $80
	ld   a, [bc]                                     ; $589e: $0a
	add  b                                           ; $589f: $80
	dec  b                                           ; $58a0: $05
	ld   bc, $f50a                                   ; $58a1: $01 $0a $f5
	add  d                                           ; $58a4: $82
	rst  $38                                         ; $58a5: $ff
	ld   bc, $ff00                                   ; $58a6: $01 $00 $ff
	add  b                                           ; $58a9: $80
	xor  d                                           ; $58aa: $aa
	add  b                                           ; $58ab: $80
	ld   d, l                                        ; $58ac: $55
	add  b                                           ; $58ad: $80
	xor  d                                           ; $58ae: $aa
	add  b                                           ; $58af: $80
	ld   d, l                                        ; $58b0: $55
	ld   bc, $55aa                                   ; $58b1: $01 $aa $55
	add  d                                           ; $58b4: $82
	rst  $38                                         ; $58b5: $ff
	ld   bc, $ff00                                   ; $58b6: $01 $00 $ff
	add  b                                           ; $58b9: $80
	xor  d                                           ; $58ba: $aa
	add  b                                           ; $58bb: $80
	ld   d, l                                        ; $58bc: $55
	add  b                                           ; $58bd: $80
	xor  d                                           ; $58be: $aa
	add  b                                           ; $58bf: $80
	ld   d, l                                        ; $58c0: $55
	ld   bc, $55aa                                   ; $58c1: $01 $aa $55
	add  d                                           ; $58c4: $82
	rst  $30                                         ; $58c5: $f7
	ld   bc, $f737                                   ; $58c6: $01 $37 $f7
	add  b                                           ; $58c9: $80
	or   a                                           ; $58ca: $b7
	add  b                                           ; $58cb: $80
	ld   [hl], a                                     ; $58cc: $77
	add  b                                           ; $58cd: $80
	or   a                                           ; $58ce: $b7
	add  b                                           ; $58cf: $80
	ld   [hl], a                                     ; $58d0: $77
	ld   bc, $88b7                                   ; $58d1: $01 $b7 $88
	adc  [hl]                                        ; $58d4: $8e
	add  b                                           ; $58d5: $80
	adc  l                                           ; $58d6: $8d
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	ld   bc, $0b80                                   ; $58d9: $01 $80 $0b
	adc  e                                           ; $58dc: $8b
	inc  bc                                          ; $58dd: $03
	nop                                              ; $58de: $00
	db   $fd                                         ; $58df: $fd
	add  b                                           ; $58e0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58e1: $cf
	add  b                                           ; $58e2: $80
	rst  $10                                         ; $58e3: $d7
	nop                                              ; $58e4: $00
	ret  c                                           ; $58e5: $d8

	add  e                                           ; $58e6: $83
	db   $db                                         ; $58e7: $db
	add  b                                           ; $58e8: $80
	jp   c, $db80                                    ; $58e9: $da $80 $db

	ld   bc, $d9da                                   ; $58ec: $01 $da $d9
	add  d                                           ; $58ef: $82
	rst  $38                                         ; $58f0: $ff
	nop                                              ; $58f1: $00
	nop                                              ; $58f2: $00
	add  c                                           ; $58f3: $81
	rst  $38                                         ; $58f4: $ff
	add  b                                           ; $58f5: $80
	ld   d, l                                        ; $58f6: $55
	add  b                                           ; $58f7: $80
	xor  d                                           ; $58f8: $aa
	add  b                                           ; $58f9: $80
	ld   d, l                                        ; $58fa: $55
	ld   bc, $55aa                                   ; $58fb: $01 $aa $55
	add  d                                           ; $58fe: $82
	rst  $38                                         ; $58ff: $ff
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	add  c                                           ; $5902: $81
	rst  $38                                         ; $5903: $ff
	add  b                                           ; $5904: $80
	ld   d, l                                        ; $5905: $55
	add  b                                           ; $5906: $80
	xor  d                                           ; $5907: $aa
	add  b                                           ; $5908: $80
	ld   d, l                                        ; $5909: $55
	ld   bc, $55aa                                   ; $590a: $01 $aa $55
	add  d                                           ; $590d: $82
	rst  $38                                         ; $590e: $ff
	nop                                              ; $590f: $00
	nop                                              ; $5910: $00
	add  c                                           ; $5911: $81
	rst  $38                                         ; $5912: $ff
	add  b                                           ; $5913: $80
	ld   d, l                                        ; $5914: $55
	add  b                                           ; $5915: $80
	xor  d                                           ; $5916: $aa
	add  b                                           ; $5917: $80
	ld   d, l                                        ; $5918: $55
	ld   bc, $55aa                                   ; $5919: $01 $aa $55
	add  d                                           ; $591c: $82
	rst  $38                                         ; $591d: $ff
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	add  c                                           ; $5920: $81
	rst  $38                                         ; $5921: $ff
	add  b                                           ; $5922: $80
	ld   d, l                                        ; $5923: $55
	add  b                                           ; $5924: $80
	xor  b                                           ; $5925: $a8
	add  b                                           ; $5926: $80
	ld   d, b                                        ; $5927: $50
	ld   bc, $7f80                                   ; $5928: $01 $80 $7f
	add  b                                           ; $592b: $80
	db   $fc                                         ; $592c: $fc
	add  b                                           ; $592d: $80
	ld   a, [$0600]                                  ; $592e: $fa $00 $06
	add  c                                           ; $5931: $81
	or   $85                                         ; $5932: $f6 $85
	ld   b, $00                                      ; $5934: $06 $00
	jp   hl                                          ; $5936: $e9


	add  b                                           ; $5937: $80
	ld   a, [$f080]                                  ; $5938: $fa $80 $f0
	add  b                                           ; $593b: $80
	ld   hl, sp-$79                                  ; $593c: $f8 $87
	ldh  a, [rP1]                                    ; $593e: $f0 $00
	db   $10                                         ; $5940: $10
	sbc  [hl]                                        ; $5941: $9e
	nop                                              ; $5942: $00
	add  b                                           ; $5943: $80
	dec  b                                           ; $5944: $05
	add  b                                           ; $5945: $80
	ld   a, [bc]                                     ; $5946: $0a
	add  b                                           ; $5947: $80
	dec  b                                           ; $5948: $05
	add  b                                           ; $5949: $80
	ld   a, [bc]                                     ; $594a: $0a
	add  b                                           ; $594b: $80
	dec  b                                           ; $594c: $05
	add  b                                           ; $594d: $80
	ld   a, [bc]                                     ; $594e: $0a
	add  b                                           ; $594f: $80
	dec  b                                           ; $5950: $05
	add  b                                           ; $5951: $80
	ld   a, [bc]                                     ; $5952: $0a
	add  b                                           ; $5953: $80
	ld   d, l                                        ; $5954: $55
	add  b                                           ; $5955: $80
	xor  d                                           ; $5956: $aa
	add  b                                           ; $5957: $80
	ld   d, l                                        ; $5958: $55
	add  b                                           ; $5959: $80
	xor  d                                           ; $595a: $aa
	add  b                                           ; $595b: $80
	ld   d, l                                        ; $595c: $55
	add  b                                           ; $595d: $80
	xor  d                                           ; $595e: $aa
	add  b                                           ; $595f: $80
	ld   d, l                                        ; $5960: $55
	add  b                                           ; $5961: $80
	xor  d                                           ; $5962: $aa
	add  b                                           ; $5963: $80
	ld   d, l                                        ; $5964: $55
	add  b                                           ; $5965: $80
	xor  d                                           ; $5966: $aa
	add  b                                           ; $5967: $80
	ld   d, l                                        ; $5968: $55
	add  b                                           ; $5969: $80
	xor  d                                           ; $596a: $aa
	add  b                                           ; $596b: $80
	ld   d, b                                        ; $596c: $50
	add  b                                           ; $596d: $80
	xor  b                                           ; $596e: $a8
	add  b                                           ; $596f: $80
	ld   b, b                                        ; $5970: $40
	ld   bc, $3f00                                   ; $5971: $01 $00 $3f
	add  b                                           ; $5974: $80
	ld   [hl], a                                     ; $5975: $77
	add  b                                           ; $5976: $80
	or   a                                           ; $5977: $b7
	add  b                                           ; $5978: $80
	ld   [hl], a                                     ; $5979: $77
	add  a                                           ; $597a: $87
	scf                                              ; $597b: $37
	nop                                              ; $597c: $00
	ld   [$808e], sp                                 ; $597d: $08 $8e $80
	adc  l                                           ; $5980: $8d
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	ld   bc, $038d                                   ; $5983: $01 $8d $03
	nop                                              ; $5986: $00
	cp   $80                                         ; $5987: $fe $80
	db   $db                                         ; $5989: $db
	add  b                                           ; $598a: $80
	jp   c, $db80                                    ; $598b: $da $80 $db

	add  b                                           ; $598e: $80
	jp   c, $db80                                    ; $598f: $da $80 $db

	add  b                                           ; $5992: $80
	jp   c, $db80                                    ; $5993: $da $80 $db

	ld   bc, $26da                                   ; $5996: $01 $da $26
	add  b                                           ; $5999: $80
	ld   d, l                                        ; $599a: $55
	add  b                                           ; $599b: $80
	xor  d                                           ; $599c: $aa
	add  b                                           ; $599d: $80
	ld   d, l                                        ; $599e: $55
	add  b                                           ; $599f: $80
	xor  d                                           ; $59a0: $aa
	add  b                                           ; $59a1: $80
	ld   d, l                                        ; $59a2: $55
	add  b                                           ; $59a3: $80
	xor  b                                           ; $59a4: $a8
	add  b                                           ; $59a5: $80
	ld   d, b                                        ; $59a6: $50
	add  b                                           ; $59a7: $80
	add  b                                           ; $59a8: $80
	add  b                                           ; $59a9: $80
	ld   d, l                                        ; $59aa: $55
	add  b                                           ; $59ab: $80
	xor  d                                           ; $59ac: $aa
	add  b                                           ; $59ad: $80
	ld   d, l                                        ; $59ae: $55
	add  b                                           ; $59af: $80
	adc  d                                           ; $59b0: $8a
	add  b                                           ; $59b1: $80
	dec  d                                           ; $59b2: $15
	add  b                                           ; $59b3: $80
	ld   a, [hl+]                                    ; $59b4: $2a
	add  b                                           ; $59b5: $80
	ld   d, h                                        ; $59b6: $54
	add  b                                           ; $59b7: $80
	xor  b                                           ; $59b8: $a8
	add  b                                           ; $59b9: $80
	ld   d, l                                        ; $59ba: $55
	add  b                                           ; $59bb: $80
	xor  b                                           ; $59bc: $a8
	add  b                                           ; $59bd: $80
	ld   d, h                                        ; $59be: $54
	add  b                                           ; $59bf: $80
	and  b                                           ; $59c0: $a0
	add  b                                           ; $59c1: $80
	nop                                              ; $59c2: $00
	add  b                                           ; $59c3: $80
	add  b                                           ; $59c4: $80
	sub  c                                           ; $59c5: $91
	nop                                              ; $59c6: $00
	nop                                              ; $59c7: $00
	rrca                                             ; $59c8: $0f
	add  [hl]                                        ; $59c9: $86
	ld   b, $80                                      ; $59ca: $06 $80
	ld   d, $80                                      ; $59cc: $16 $80
	ld   h, $80                                      ; $59ce: $26 $80
	ld   d, $01                                      ; $59d0: $16 $01
	and  [hl]                                        ; $59d2: $a6
	ld   c, c                                        ; $59d3: $49
	adc  l                                           ; $59d4: $8d
	ldh  a, [rP1]                                    ; $59d5: $f0 $00
	db   $10                                         ; $59d7: $10
	sbc  [hl]                                        ; $59d8: $9e
	nop                                              ; $59d9: $00
	add  b                                           ; $59da: $80
	dec  b                                           ; $59db: $05
	add  b                                           ; $59dc: $80
	ld   a, [bc]                                     ; $59dd: $0a
	add  b                                           ; $59de: $80
	dec  b                                           ; $59df: $05
	add  b                                           ; $59e0: $80
	ld   a, [bc]                                     ; $59e1: $0a
	add  b                                           ; $59e2: $80
	dec  b                                           ; $59e3: $05
	add  b                                           ; $59e4: $80
	ld   a, [bc]                                     ; $59e5: $0a
	add  b                                           ; $59e6: $80
	dec  b                                           ; $59e7: $05
	add  b                                           ; $59e8: $80
	ld   a, [bc]                                     ; $59e9: $0a
	add  b                                           ; $59ea: $80
	ld   d, l                                        ; $59eb: $55
	add  b                                           ; $59ec: $80
	xor  b                                           ; $59ed: $a8
	add  b                                           ; $59ee: $80
	ld   d, b                                        ; $59ef: $50
	add  b                                           ; $59f0: $80
	and  b                                           ; $59f1: $a0
	add  b                                           ; $59f2: $80
	ld   d, b                                        ; $59f3: $50
	add  b                                           ; $59f4: $80
	and  b                                           ; $59f5: $a0
	sub  c                                           ; $59f6: $91
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	ccf                                              ; $59f9: $3f
	adc  l                                           ; $59fa: $8d
	scf                                              ; $59fb: $37
	ld   [bc], a                                     ; $59fc: $02
	adc  d                                           ; $59fd: $8a
	ld   a, l                                        ; $59fe: $7d

Jump_07b_59ff:
	ld   a, a                                        ; $59ff: $7f
	add  l                                           ; $5a00: $85
	ld   b, d                                        ; $5a01: $42
	ld   [bc], a                                     ; $5a02: $02
	nop                                              ; $5a03: $00
	dec  a                                           ; $5a04: $3d
	ld   a, l                                        ; $5a05: $7d
	add  c                                           ; $5a06: $81
	ld   b, b                                        ; $5a07: $40
	ld   [bc], a                                     ; $5a08: $02
	jp   nc, $ffef                                   ; $5a09: $d2 $ef $ff

	add  b                                           ; $5a0c: $80
	db   $10                                         ; $5a0d: $10
	add  b                                           ; $5a0e: $80
	ld   [hl-], a                                    ; $5a0f: $32
	dec  b                                           ; $5a10: $05
	dec  d                                           ; $5a11: $15
	dec  b                                           ; $5a12: $05
	ld   [hl+], a                                    ; $5a13: $22
	dec  c                                           ; $5a14: $0d
	ret  nz                                          ; $5a15: $c0

	rst  $28                                         ; $5a16: $ef
	add  b                                           ; $5a17: $80
	ld   a, [bc]                                     ; $5a18: $0a
	inc  bc                                          ; $5a19: $03
	and  l                                           ; $5a1a: $a5
	jp   z, $bd81                                    ; $5a1b: $ca $81 $bd

	add  h                                           ; $5a1e: $84
	dec  a                                           ; $5a1f: $3d
	nop                                              ; $5a20: $00
	cp   l                                           ; $5a21: $bd
	add  b                                           ; $5a22: $80
	ld   bc, $bd82                                   ; $5a23: $01 $82 $bd
	nop                                              ; $5a26: $00
	ld   [bc], a                                     ; $5a27: $02
	add  b                                           ; $5a28: $80
	db   $db                                         ; $5a29: $db
	add  h                                           ; $5a2a: $84
	jp   c, $db80                                    ; $5a2b: $da $80 $db

	add  b                                           ; $5a2e: $80
	jp   c, $db80                                    ; $5a2f: $da $80 $db

	ld   bc, $26da                                   ; $5a32: $01 $da $26
	add  b                                           ; $5a35: $80
	dec  b                                           ; $5a36: $05
	add  b                                           ; $5a37: $80
	ld   a, [bc]                                     ; $5a38: $0a
	add  b                                           ; $5a39: $80
	dec  d                                           ; $5a3a: $15
	add  b                                           ; $5a3b: $80
	ld   a, [hl+]                                    ; $5a3c: $2a
	add  b                                           ; $5a3d: $80
	ld   d, b                                        ; $5a3e: $50
	add  b                                           ; $5a3f: $80
	xor  b                                           ; $5a40: $a8
	add  b                                           ; $5a41: $80
	ld   b, b                                        ; $5a42: $40
	add  b                                           ; $5a43: $80
	and  b                                           ; $5a44: $a0
	add  b                                           ; $5a45: $80
	ld   b, b                                        ; $5a46: $40
	add  b                                           ; $5a47: $80
	and  b                                           ; $5a48: $a0
	add  b                                           ; $5a49: $80
	ld   b, b                                        ; $5a4a: $40
	sbc  d                                           ; $5a4b: $9a
	nop                                              ; $5a4c: $00
	add  b                                           ; $5a4d: $80
	ld   [bc], a                                     ; $5a4e: $02
	add  b                                           ; $5a4f: $80
	dec  b                                           ; $5a50: $05
	add  b                                           ; $5a51: $80
	ld   [bc], a                                     ; $5a52: $02
	add  b                                           ; $5a53: $80
	dec  d                                           ; $5a54: $15
	add  b                                           ; $5a55: $80
	ld   a, [bc]                                     ; $5a56: $0a
	add  b                                           ; $5a57: $80
	ld   d, l                                        ; $5a58: $55
	ld   bc, $a5aa                                   ; $5a59: $01 $aa $a5
	add  b                                           ; $5a5c: $80
	ld   d, [hl]                                     ; $5a5d: $56
	add  b                                           ; $5a5e: $80
	and  [hl]                                        ; $5a5f: $a6
	add  b                                           ; $5a60: $80
	ld   d, [hl]                                     ; $5a61: $56
	add  b                                           ; $5a62: $80
	and  [hl]                                        ; $5a63: $a6
	add  b                                           ; $5a64: $80
	ld   d, [hl]                                     ; $5a65: $56
	add  b                                           ; $5a66: $80
	and  [hl]                                        ; $5a67: $a6
	add  b                                           ; $5a68: $80
	ld   d, [hl]                                     ; $5a69: $56
	inc  bc                                          ; $5a6a: $03
	and  [hl]                                        ; $5a6b: $a6
	ld   d, [hl]                                     ; $5a6c: $56
	ldh  [$e7], a                                    ; $5a6d: $e0 $e7
	add  b                                           ; $5a6f: $80
	ldh  [$80], a                                    ; $5a70: $e0 $80
	and  $80                                         ; $5a72: $e6 $80
	db   $e4                                         ; $5a74: $e4
	nop                                              ; $5a75: $00
	rst  $20                                         ; $5a76: $e7
	add  b                                           ; $5a77: $80
	ldh  [rP1], a                                    ; $5a78: $e0 $00
	rst  $20                                         ; $5a7a: $e7
	add  b                                           ; $5a7b: $80
	and  $03                                         ; $5a7c: $e6 $03
	rst  $20                                         ; $5a7e: $e7
	db   $dd                                         ; $5a7f: $dd

Jump_07b_5a80:
	dec  a                                           ; $5a80: $3d
	cp   a                                           ; $5a81: $bf
	add  b                                           ; $5a82: $80
	ld   [bc], a                                     ; $5a83: $02
	ld   bc, $282a                                   ; $5a84: $01 $2a $28
	add  b                                           ; $5a87: $80
	ld   sp, $2803                                   ; $5a88: $31 $03 $28
	sub  l                                           ; $5a8b: $95
	nop                                              ; $5a8c: $00
	cp   l                                           ; $5a8d: $bd
	add  b                                           ; $5a8e: $80
	ld   bc, $2903                                   ; $5a8f: $01 $03 $29
	ld   a, e                                        ; $5a92: $7b
	rst  $28                                         ; $5a93: $ef
	rst  $38                                         ; $5a94: $ff
	add  b                                           ; $5a95: $80
	db   $10                                         ; $5a96: $10
	add  b                                           ; $5a97: $80
	sub  b                                           ; $5a98: $90
	add  b                                           ; $5a99: $80
	ld   d, b                                        ; $5a9a: $50
	inc  bc                                          ; $5a9b: $03
	sub  b                                           ; $5a9c: $90
	ld   l, c                                        ; $5a9d: $69
	ld   b, $ef                                      ; $5a9e: $06 $ef
	add  b                                           ; $5aa0: $80
	nop                                              ; $5aa1: $00
	ld   bc, $d0c0                                   ; $5aa2: $01 $c0 $d0
	add  b                                           ; $5aa5: $80
	dec  b                                           ; $5aa6: $05
	add  b                                           ; $5aa7: $80
	ld   a, [bc]                                     ; $5aa8: $0a
	add  b                                           ; $5aa9: $80
	dec  b                                           ; $5aaa: $05
	add  b                                           ; $5aab: $80
	ld   a, [bc]                                     ; $5aac: $0a
	add  b                                           ; $5aad: $80
	dec  b                                           ; $5aae: $05
	add  b                                           ; $5aaf: $80
	ld   a, [bc]                                     ; $5ab0: $0a
	add  b                                           ; $5ab1: $80
	dec  b                                           ; $5ab2: $05
	add  b                                           ; $5ab3: $80
	ld   a, [bc]                                     ; $5ab4: $0a
	sub  h                                           ; $5ab5: $94
	nop                                              ; $5ab6: $00
	add  b                                           ; $5ab7: $80
	ld   [bc], a                                     ; $5ab8: $02
	add  b                                           ; $5ab9: $80
	dec  b                                           ; $5aba: $05
	add  b                                           ; $5abb: $80
	ld   a, [bc]                                     ; $5abc: $0a
	add  b                                           ; $5abd: $80
	dec  b                                           ; $5abe: $05
	dec  b                                           ; $5abf: $05
	ld   a, [hl+]                                    ; $5ac0: $2a
	dec  d                                           ; $5ac1: $15
	ld   [hl], a                                     ; $5ac2: $77
	ld   h, a                                        ; $5ac3: $67
	or   a                                           ; $5ac4: $b7
	add  a                                           ; $5ac5: $87
	add  b                                           ; $5ac6: $80
	ld   h, a                                        ; $5ac7: $67
	add  b                                           ; $5ac8: $80
	and  a                                           ; $5ac9: $a7
	add  b                                           ; $5aca: $80
	ld   h, a                                        ; $5acb: $67
	add  b                                           ; $5acc: $80
	and  a                                           ; $5acd: $a7
	add  b                                           ; $5ace: $80
	ld   h, a                                        ; $5acf: $67
	rlca                                             ; $5ad0: $07
	and  a                                           ; $5ad1: $a7
	ld   a, [hl-]                                    ; $5ad2: $3a
	ld   c, b                                        ; $5ad3: $48
	ld   [$2914], sp                                 ; $5ad4: $08 $14 $29
	nop                                              ; $5ad7: $00
	dec  a                                           ; $5ad8: $3d
	add  b                                           ; $5ad9: $80
	nop                                              ; $5ada: $00
	add  d                                           ; $5adb: $82
	inc  e                                           ; $5adc: $1c
	nop                                              ; $5add: $00
	dec  a                                           ; $5ade: $3d
	add  b                                           ; $5adf: $80
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	rst  $28                                         ; $5ae2: $ef
	add  b                                           ; $5ae3: $80
	ld   c, d                                        ; $5ae4: $4a
	inc  bc                                          ; $5ae5: $03
	and  a                                           ; $5ae6: $a7
	ld   c, b                                        ; $5ae7: $48
	nop                                              ; $5ae8: $00
	rst  $28                                         ; $5ae9: $ef
	add  b                                           ; $5aea: $80
	ld   hl, $e780                                   ; $5aeb: $21 $80 $e7
	add  c                                           ; $5aee: $81
	rst  $28                                         ; $5aef: $ef
	add  b                                           ; $5af0: $80
	nop                                              ; $5af1: $00
	nop                                              ; $5af2: $00
	cp   h                                           ; $5af3: $bc
	add  b                                           ; $5af4: $80
	cp   l                                           ; $5af5: $bd
	ld   [bc], a                                     ; $5af6: $02
	dec  a                                           ; $5af7: $3d
	add  c                                           ; $5af8: $81
	ld   bc, $bd86                                   ; $5af9: $01 $86 $bd
	add  b                                           ; $5afc: $80
	ld   bc, $0200                                   ; $5afd: $01 $00 $02
	add  b                                           ; $5b00: $80
	db   $db                                         ; $5b01: $db
	adc  e                                           ; $5b02: $8b
	jp   c, $2600                                    ; $5b03: $da $00 $26

	sbc  d                                           ; $5b06: $9a
	nop                                              ; $5b07: $00
	add  b                                           ; $5b08: $80
	ld   bc, $0a80                                   ; $5b09: $01 $80 $0a
	add  b                                           ; $5b0c: $80
	dec  b                                           ; $5b0d: $05
	add  b                                           ; $5b0e: $80
	ld   a, [bc]                                     ; $5b0f: $0a
	add  b                                           ; $5b10: $80
	ld   d, l                                        ; $5b11: $55
	add  b                                           ; $5b12: $80
	ld   a, [hl+]                                    ; $5b13: $2a
	add  b                                           ; $5b14: $80
	ld   d, l                                        ; $5b15: $55
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
	add  b                                           ; $5b22: $80
	xor  d                                           ; $5b23: $aa
	add  b                                           ; $5b24: $80
	ld   d, l                                        ; $5b25: $55
	add  b                                           ; $5b26: $80
	xor  d                                           ; $5b27: $aa
	add  b                                           ; $5b28: $80
	ld   d, l                                        ; $5b29: $55
	ld   bc, $a5aa                                   ; $5b2a: $01 $aa $a5
	add  b                                           ; $5b2d: $80
	ld   d, [hl]                                     ; $5b2e: $56
	dec  b                                           ; $5b2f: $05
	and  d                                           ; $5b30: $a2
	and  b                                           ; $5b31: $a0
	ld   d, d                                        ; $5b32: $52
	ld   d, c                                        ; $5b33: $51
	and  l                                           ; $5b34: $a5
	and  h                                           ; $5b35: $a4
	add  b                                           ; $5b36: $80
	ld   d, h                                        ; $5b37: $54
	add  b                                           ; $5b38: $80

jr_07b_5b39:
	and  h                                           ; $5b39: $a4
	inc  bc                                          ; $5b3a: $03
	ld   d, h                                        ; $5b3b: $54
	ld   d, l                                        ; $5b3c: $55
	and  l                                           ; $5b3d: $a5
	ld   d, e                                        ; $5b3e: $53
	add  c                                           ; $5b3f: $81
	rst  $20                                         ; $5b40: $e7
	add  b                                           ; $5b41: $80
	ldh  [rP1], a                                    ; $5b42: $e0 $00
	rst  $20                                         ; $5b44: $e7
	add  b                                           ; $5b45: $80
	db   $e4                                         ; $5b46: $e4
	add  e                                           ; $5b47: $83
	rst  $20                                         ; $5b48: $e7
	add  b                                           ; $5b49: $80
	ldh  [rP1], a                                    ; $5b4a: $e0 $00
	ld   e, l                                        ; $5b4c: $5d
	add  b                                           ; $5b4d: $80
	sub  l                                           ; $5b4e: $95
	inc  bc                                          ; $5b4f: $03
	xor  c                                           ; $5b50: $a9
	inc  d                                           ; $5b51: $14
	nop                                              ; $5b52: $00
	cp   l                                           ; $5b53: $bd
	add  b                                           ; $5b54: $80
	ld   hl, $b180                                   ; $5b55: $21 $80 $b1
	add  c                                           ; $5b58: $81
	cp   l                                           ; $5b59: $bd
	add  b                                           ; $5b5a: $80
	nop                                              ; $5b5b: $00
	nop                                              ; $5b5c: $00
	rst  $28                                         ; $5b5d: $ef
	add  b                                           ; $5b5e: $80
	ld   c, d                                        ; $5b5f: $4a
	inc  bc                                          ; $5b60: $03
	db   $e4                                         ; $5b61: $e4
	dec  bc                                          ; $5b62: $0b
	nop                                              ; $5b63: $00
	rst  $28                                         ; $5b64: $ef
	add  b                                           ; $5b65: $80
	nop                                              ; $5b66: $00
	add  b                                           ; $5b67: $80
	ld   b, h                                        ; $5b68: $44
	add  b                                           ; $5b69: $80
	ld   [$4f03], a                                  ; $5b6a: $ea $03 $4f
	and  b                                           ; $5b6d: $a0
	nop                                              ; $5b6e: $00
	rst  $38                                         ; $5b6f: $ff
	add  b                                           ; $5b70: $80
	dec  b                                           ; $5b71: $05
	add  b                                           ; $5b72: $80
	ld   a, [bc]                                     ; $5b73: $0a
	add  b                                           ; $5b74: $80
	dec  b                                           ; $5b75: $05
	add  b                                           ; $5b76: $80
	ld   a, [bc]                                     ; $5b77: $0a
	add  b                                           ; $5b78: $80
	dec  b                                           ; $5b79: $05
	add  b                                           ; $5b7a: $80
	ld   a, [bc]                                     ; $5b7b: $0a
	add  b                                           ; $5b7c: $80
	dec  b                                           ; $5b7d: $05
	add  b                                           ; $5b7e: $80
	ld   a, [bc]                                     ; $5b7f: $0a
	add  b                                           ; $5b80: $80
	nop                                              ; $5b81: $00
	add  b                                           ; $5b82: $80
	ld   [bc], a                                     ; $5b83: $02
	add  b                                           ; $5b84: $80
	ld   bc, $0a80                                   ; $5b85: $01 $80 $0a
	add  b                                           ; $5b88: $80
	dec  b                                           ; $5b89: $05
	add  b                                           ; $5b8a: $80
	ld   a, [hl+]                                    ; $5b8b: $2a
	add  b                                           ; $5b8c: $80
	ld   d, l                                        ; $5b8d: $55
	add  b                                           ; $5b8e: $80
	xor  d                                           ; $5b8f: $aa
	add  b                                           ; $5b90: $80
	ld   d, l                                        ; $5b91: $55
	add  b                                           ; $5b92: $80
	xor  d                                           ; $5b93: $aa
	add  b                                           ; $5b94: $80
	ld   d, l                                        ; $5b95: $55
	add  b                                           ; $5b96: $80
	xor  d                                           ; $5b97: $aa
	add  b                                           ; $5b98: $80
	ld   d, l                                        ; $5b99: $55
	add  b                                           ; $5b9a: $80
	xor  d                                           ; $5b9b: $aa
	add  b                                           ; $5b9c: $80
	ld   d, l                                        ; $5b9d: $55
	ld   bc, $b5aa                                   ; $5b9e: $01 $aa $b5
	add  b                                           ; $5ba1: $80
	ld   h, a                                        ; $5ba2: $67
	add  b                                           ; $5ba3: $80
	and  a                                           ; $5ba4: $a7
	add  b                                           ; $5ba5: $80
	ld   h, a                                        ; $5ba6: $67
	add  b                                           ; $5ba7: $80
	and  a                                           ; $5ba8: $a7
	ld   bc, $4767                                   ; $5ba9: $01 $67 $47
	add  b                                           ; $5bac: $80
	and  a                                           ; $5bad: $a7
	add  b                                           ; $5bae: $80
	ld   [hl], a                                     ; $5baf: $77
	ld   bc, $4ab7                                   ; $5bb0: $01 $b7 $4a
	add  b                                           ; $5bb3: $80
	nop                                              ; $5bb4: $00
	add  b                                           ; $5bb5: $80
	jr   nc, jr_07b_5b39                             ; $5bb6: $30 $81

	inc  a                                           ; $5bb8: $3c
	ld   bc, $0001                                   ; $5bb9: $01 $01 $00
	add  h                                           ; $5bbc: $84
	dec  a                                           ; $5bbd: $3d
	nop                                              ; $5bbe: $00
	rst  $28                                         ; $5bbf: $ef
	add  b                                           ; $5bc0: $80
	nop                                              ; $5bc1: $00
	add  b                                           ; $5bc2: $80
	ld   h, a                                        ; $5bc3: $67
	add  b                                           ; $5bc4: $80
	and  a                                           ; $5bc5: $a7
	inc  bc                                          ; $5bc6: $03
	ld   l, a                                        ; $5bc7: $6f
	add  b                                           ; $5bc8: $80
	nop                                              ; $5bc9: $00
	rst  $28                                         ; $5bca: $ef
	add  b                                           ; $5bcb: $80
	nop                                              ; $5bcc: $00
	add  b                                           ; $5bcd: $80
	rst  $20                                         ; $5bce: $e7
	ld   bc, $bcef                                   ; $5bcf: $01 $ef $bc
	add  b                                           ; $5bd2: $80
	adc  l                                           ; $5bd3: $8d
	add  b                                           ; $5bd4: $80
	sbc  l                                           ; $5bd5: $9d
	add  c                                           ; $5bd6: $81
	cp   l                                           ; $5bd7: $bd
	add  b                                           ; $5bd8: $80
	ld   bc, $bd84                                   ; $5bd9: $01 $84 $bd
	nop                                              ; $5bdc: $00
	ld   [bc], a                                     ; $5bdd: $02
	adc  l                                           ; $5bde: $8d
	jp   c, $2600                                    ; $5bdf: $da $00 $26

	add  h                                           ; $5be2: $84
	nop                                              ; $5be3: $00
	add  b                                           ; $5be4: $80
	ld   [bc], a                                     ; $5be5: $02
	add  b                                           ; $5be6: $80
	ld   bc, $2a80                                   ; $5be7: $01 $80 $2a
	add  b                                           ; $5bea: $80
	ld   d, l                                        ; $5beb: $55
	add  b                                           ; $5bec: $80
	ld   a, [hl+]                                    ; $5bed: $2a
	add  b                                           ; $5bee: $80
	ld   d, l                                        ; $5bef: $55
	add  b                                           ; $5bf0: $80
	xor  d                                           ; $5bf1: $aa
	add  b                                           ; $5bf2: $80
	ld   d, l                                        ; $5bf3: $55
	add  b                                           ; $5bf4: $80
	xor  d                                           ; $5bf5: $aa
	add  b                                           ; $5bf6: $80
	ld   d, l                                        ; $5bf7: $55
	add  b                                           ; $5bf8: $80
	xor  d                                           ; $5bf9: $aa
	add  b                                           ; $5bfa: $80
	ld   d, l                                        ; $5bfb: $55
	add  b                                           ; $5bfc: $80
	xor  d                                           ; $5bfd: $aa
	add  b                                           ; $5bfe: $80
	ld   d, l                                        ; $5bff: $55

Call_07b_5c00:
	add  b                                           ; $5c00: $80
	xor  d                                           ; $5c01: $aa
	add  b                                           ; $5c02: $80
	ld   d, l                                        ; $5c03: $55
	add  b                                           ; $5c04: $80
	xor  d                                           ; $5c05: $aa
	add  b                                           ; $5c06: $80
	ld   d, l                                        ; $5c07: $55
	add  b                                           ; $5c08: $80
	xor  d                                           ; $5c09: $aa
	add  b                                           ; $5c0a: $80
	ld   d, l                                        ; $5c0b: $55
	add  b                                           ; $5c0c: $80
	xor  d                                           ; $5c0d: $aa
	add  b                                           ; $5c0e: $80
	ld   d, l                                        ; $5c0f: $55
	add  b                                           ; $5c10: $80
	xor  d                                           ; $5c11: $aa
	add  b                                           ; $5c12: $80
	ld   d, l                                        ; $5c13: $55
	add  b                                           ; $5c14: $80
	xor  d                                           ; $5c15: $aa
	add  b                                           ; $5c16: $80
	ld   d, l                                        ; $5c17: $55
	add  b                                           ; $5c18: $80
	xor  d                                           ; $5c19: $aa
	add  b                                           ; $5c1a: $80
	ld   d, h                                        ; $5c1b: $54
	ld   bc, $a4aa                                   ; $5c1c: $01 $aa $a4
	add  b                                           ; $5c1f: $80
	ld   d, l                                        ; $5c20: $55
	add  b                                           ; $5c21: $80
	and  l                                           ; $5c22: $a5
	add  b                                           ; $5c23: $80
	ld   d, l                                        ; $5c24: $55
	ld   bc, $a4a5                                   ; $5c25: $01 $a5 $a4
	add  b                                           ; $5c28: $80
	ld   b, b                                        ; $5c29: $40
	add  b                                           ; $5c2a: $80
	and  d                                           ; $5c2b: $a2
	add  c                                           ; $5c2c: $81
	ld   b, $00                                      ; $5c2d: $06 $00
	pop  af                                          ; $5c2f: $f1
	add  b                                           ; $5c30: $80
	db   $e4                                         ; $5c31: $e4
	add  e                                           ; $5c32: $83
	rst  $20                                         ; $5c33: $e7
	add  b                                           ; $5c34: $80
	ldh  [rP1], a                                    ; $5c35: $e0 $00
	rst  $20                                         ; $5c37: $e7
	add  b                                           ; $5c38: $80
	and  $81                                         ; $5c39: $e6 $81
	rst  $20                                         ; $5c3b: $e7
	nop                                              ; $5c3c: $00
	ld   e, l                                        ; $5c3d: $5d
	add  b                                           ; $5c3e: $80
	ld   sp, $3d80                                   ; $5c3f: $31 $80 $3d
	add  c                                           ; $5c42: $81
	cp   l                                           ; $5c43: $bd
	add  b                                           ; $5c44: $80
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	cp   l                                           ; $5c47: $bd
	add  b                                           ; $5c48: $80
	ld   hl, $3980                                   ; $5c49: $21 $80 $39
	ld   bc, $efbd                                   ; $5c4c: $01 $bd $ef
	add  b                                           ; $5c4f: $80
	adc  d                                           ; $5c50: $8a
	add  b                                           ; $5c51: $80
	push bc                                          ; $5c52: $c5
	add  c                                           ; $5c53: $81
	rst  $28                                         ; $5c54: $ef
	add  b                                           ; $5c55: $80
	nop                                              ; $5c56: $00
	add  h                                           ; $5c57: $84
	rst  $28                                         ; $5c58: $ef
	nop                                              ; $5c59: $00
	rst  $38                                         ; $5c5a: $ff
	add  b                                           ; $5c5b: $80
	dec  b                                           ; $5c5c: $05
	add  b                                           ; $5c5d: $80
	ld   a, [bc]                                     ; $5c5e: $0a
	add  b                                           ; $5c5f: $80
	dec  b                                           ; $5c60: $05
	add  b                                           ; $5c61: $80
	ld   a, [bc]                                     ; $5c62: $0a
	add  b                                           ; $5c63: $80
	dec  b                                           ; $5c64: $05
	add  b                                           ; $5c65: $80
	ld   a, [bc]                                     ; $5c66: $0a
	add  b                                           ; $5c67: $80
	dec  b                                           ; $5c68: $05
	add  b                                           ; $5c69: $80
	ld   a, [bc]                                     ; $5c6a: $0a
	add  b                                           ; $5c6b: $80
	ld   d, l                                        ; $5c6c: $55
	add  b                                           ; $5c6d: $80
	xor  d                                           ; $5c6e: $aa
	add  b                                           ; $5c6f: $80
	ld   d, l                                        ; $5c70: $55
	add  b                                           ; $5c71: $80
	xor  d                                           ; $5c72: $aa
	add  b                                           ; $5c73: $80
	ld   d, l                                        ; $5c74: $55
	add  b                                           ; $5c75: $80
	xor  d                                           ; $5c76: $aa
	add  b                                           ; $5c77: $80
	ld   d, l                                        ; $5c78: $55
	add  b                                           ; $5c79: $80
	xor  b                                           ; $5c7a: $a8
	add  b                                           ; $5c7b: $80
	ld   d, l                                        ; $5c7c: $55
	add  b                                           ; $5c7d: $80
	xor  b                                           ; $5c7e: $a8
	add  b                                           ; $5c7f: $80
	ld   d, b                                        ; $5c80: $50
	add  b                                           ; $5c81: $80
	add  b                                           ; $5c82: $80
	add  b                                           ; $5c83: $80
	ld   d, b                                        ; $5c84: $50
	add  e                                           ; $5c85: $83
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	ccf                                              ; $5c88: $3f
	add  b                                           ; $5c89: $80
	scf                                              ; $5c8a: $37
	add  b                                           ; $5c8b: $80
	or   a                                           ; $5c8c: $b7
	adc  c                                           ; $5c8d: $89
	scf                                              ; $5c8e: $37
	ld   bc, $3dca                                   ; $5c8f: $01 $ca $3d
	add  b                                           ; $5c92: $80
	nop                                              ; $5c93: $00
	add  [hl]                                        ; $5c94: $86
	dec  a                                           ; $5c95: $3d
	add  b                                           ; $5c96: $80
	nop                                              ; $5c97: $00
	add  b                                           ; $5c98: $80
	dec  a                                           ; $5c99: $3d
	add  b                                           ; $5c9a: $80
	rst  $28                                         ; $5c9b: $ef
	add  b                                           ; $5c9c: $80
	nop                                              ; $5c9d: $00
	nop                                              ; $5c9e: $00
	rst  $28                                         ; $5c9f: $ef
	add  b                                           ; $5ca0: $80
	add  c                                           ; $5ca1: $81
	add  b                                           ; $5ca2: $80
	pop  hl                                          ; $5ca3: $e1
	add  c                                           ; $5ca4: $81
	rst  $28                                         ; $5ca5: $ef
	add  b                                           ; $5ca6: $80
	nop                                              ; $5ca7: $00
	inc  bc                                          ; $5ca8: $03
	rst  $28                                         ; $5ca9: $ef
	add  sp, -$45                                    ; $5caa: $e8 $bb
	cp   l                                           ; $5cac: $bd
	add  b                                           ; $5cad: $80
	ld   bc, $bd00                                   ; $5cae: $01 $00 $bd
	add  b                                           ; $5cb1: $80
	adc  l                                           ; $5cb2: $8d
	add  b                                           ; $5cb3: $80
	sbc  l                                           ; $5cb4: $9d
	add  c                                           ; $5cb5: $81
	cp   l                                           ; $5cb6: $bd
	add  b                                           ; $5cb7: $80
	ld   bc, $bd02                                   ; $5cb8: $01 $02 $bd
	adc  l                                           ; $5cbb: $8d
	ld   [hl-], a                                    ; $5cbc: $32
	add  b                                           ; $5cbd: $80
	db   $db                                         ; $5cbe: $db
	add  b                                           ; $5cbf: $80
	jp   c, $db80                                    ; $5cc0: $da $80 $db

	add  b                                           ; $5cc3: $80
	jp   c, $db80                                    ; $5cc4: $da $80 $db

	add  b                                           ; $5cc7: $80
	jp   c, $db80                                    ; $5cc8: $da $80 $db

	ld   bc, $26da                                   ; $5ccb: $01 $da $26
	add  b                                           ; $5cce: $80
	ld   d, l                                        ; $5ccf: $55
	add  b                                           ; $5cd0: $80
	xor  d                                           ; $5cd1: $aa
	add  b                                           ; $5cd2: $80
	ld   d, l                                        ; $5cd3: $55
	add  b                                           ; $5cd4: $80
	xor  d                                           ; $5cd5: $aa

jr_07b_5cd6:
	add  b                                           ; $5cd6: $80
	ld   d, l                                        ; $5cd7: $55
	add  b                                           ; $5cd8: $80
	xor  d                                           ; $5cd9: $aa
	add  b                                           ; $5cda: $80
	ld   d, l                                        ; $5cdb: $55
	add  b                                           ; $5cdc: $80
	xor  d                                           ; $5cdd: $aa
	add  b                                           ; $5cde: $80
	ld   d, l                                        ; $5cdf: $55
	add  b                                           ; $5ce0: $80
	xor  d                                           ; $5ce1: $aa
	add  b                                           ; $5ce2: $80
	ld   d, l                                        ; $5ce3: $55
	add  b                                           ; $5ce4: $80
	xor  d                                           ; $5ce5: $aa
	add  b                                           ; $5ce6: $80
	ld   d, l                                        ; $5ce7: $55
	add  b                                           ; $5ce8: $80
	xor  d                                           ; $5ce9: $aa
	add  b                                           ; $5cea: $80
	ld   d, l                                        ; $5ceb: $55
	add  b                                           ; $5cec: $80
	xor  d                                           ; $5ced: $aa
	add  b                                           ; $5cee: $80
	ld   d, l                                        ; $5cef: $55
	add  b                                           ; $5cf0: $80
	xor  d                                           ; $5cf1: $aa
	add  b                                           ; $5cf2: $80
	ld   d, l                                        ; $5cf3: $55
	add  b                                           ; $5cf4: $80
	xor  d                                           ; $5cf5: $aa
	add  b                                           ; $5cf6: $80
	ld   d, b                                        ; $5cf7: $50
	add  b                                           ; $5cf8: $80
	and  d                                           ; $5cf9: $a2
	add  b                                           ; $5cfa: $80
	ld   d, b                                        ; $5cfb: $50

jr_07b_5cfc:
	add  b                                           ; $5cfc: $80
	and  b                                           ; $5cfd: $a0
	add  b                                           ; $5cfe: $80
	ld   b, b                                        ; $5cff: $40
	add  b                                           ; $5d00: $80
	and  b                                           ; $5d01: $a0
	add  b                                           ; $5d02: $80
	nop                                              ; $5d03: $00
	add  b                                           ; $5d04: $80
	add  b                                           ; $5d05: $80
	add  l                                           ; $5d06: $85
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	rrca                                             ; $5d09: $0f
	adc  h                                           ; $5d0a: $8c
	ld   b, $02                                      ; $5d0b: $06 $02
	ld   d, $e1                                      ; $5d0d: $16 $e1
	rst  $20                                         ; $5d0f: $e7
	add  b                                           ; $5d10: $80
	ldh  [$86], a                                    ; $5d11: $e0 $86
	rst  $20                                         ; $5d13: $e7
	add  b                                           ; $5d14: $80
	ldh  [$80], a                                    ; $5d15: $e0 $80
	rst  $20                                         ; $5d17: $e7
	ld   bc, $bd5d                                   ; $5d18: $01 $5d $bd
	add  b                                           ; $5d1b: $80
	nop                                              ; $5d1c: $00
	add  l                                           ; $5d1d: $85
	cp   l                                           ; $5d1e: $bd
	ld   [bc], a                                     ; $5d1f: $02
	or   c                                           ; $5d20: $b1
	inc  c                                           ; $5d21: $0c
	nop                                              ; $5d22: $00
	add  b                                           ; $5d23: $80
	cp   l                                           ; $5d24: $bd
	add  b                                           ; $5d25: $80
	rst  $28                                         ; $5d26: $ef
	add  b                                           ; $5d27: $80
	nop                                              ; $5d28: $00
	nop                                              ; $5d29: $00
	rst  $28                                         ; $5d2a: $ef
	add  b                                           ; $5d2b: $80
	adc  a                                           ; $5d2c: $8f
	add  e                                           ; $5d2d: $83
	rst  $28                                         ; $5d2e: $ef
	add  b                                           ; $5d2f: $80
	nop                                              ; $5d30: $00
	add  b                                           ; $5d31: $80
	rst  $28                                         ; $5d32: $ef
	add  hl, bc                                      ; $5d33: $09
	ld   [bc], a                                     ; $5d34: $02
	add  a                                           ; $5d35: $87
	nop                                              ; $5d36: $00
	add  [hl]                                        ; $5d37: $86
	rrca                                             ; $5d38: $0f
	add  l                                           ; $5d39: $85
	nop                                              ; $5d3a: $00
	ld   bc, $fc03                                   ; $5d3b: $01 $03 $fc
	add  l                                           ; $5d3e: $85
	rst  $38                                         ; $5d3f: $ff
	add  l                                           ; $5d40: $85
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00
	rst  $38                                         ; $5d43: $ff
	add  c                                           ; $5d44: $81
	nop                                              ; $5d45: $00
	add  b                                           ; $5d46: $80
	pop  bc                                          ; $5d47: $c1
	add  b                                           ; $5d48: $80
	pop  af                                          ; $5d49: $f1
	nop                                              ; $5d4a: $00
	rst  $38                                         ; $5d4b: $ff
	add  l                                           ; $5d4c: $85
	nop                                              ; $5d4d: $00
	ld   bc, $946b                                   ; $5d4e: $01 $6b $94
	add  b                                           ; $5d51: $80
	and  e                                           ; $5d52: $a3
	add  b                                           ; $5d53: $80
	jr   nz, jr_07b_5cd6                             ; $5d54: $20 $80

	ld   b, b                                        ; $5d56: $40
	nop                                              ; $5d57: $00
	rst  $38                                         ; $5d58: $ff
	add  l                                           ; $5d59: $85
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00
	rst  $38                                         ; $5d5c: $ff
	add  c                                           ; $5d5d: $81
	nop                                              ; $5d5e: $00
	add  b                                           ; $5d5f: $80
	add  b                                           ; $5d60: $80
	add  b                                           ; $5d61: $80
	ld   h, b                                        ; $5d62: $60
	nop                                              ; $5d63: $00
	rst  $38                                         ; $5d64: $ff
	add  l                                           ; $5d65: $85
	nop                                              ; $5d66: $00
	ld   bc, $04fb                                   ; $5d67: $01 $fb $04
	add  b                                           ; $5d6a: $80
	ld   [bc], a                                     ; $5d6b: $02
	add  b                                           ; $5d6c: $80
	ld   bc, $0080                                   ; $5d6d: $01 $80 $00
	nop                                              ; $5d70: $00
	rst  $38                                         ; $5d71: $ff
	add  l                                           ; $5d72: $85
	nop                                              ; $5d73: $00
	ld   bc, $807f                                   ; $5d74: $01 $7f $80
	add  b                                           ; $5d77: $80
	ld   b, b                                        ; $5d78: $40
	add  b                                           ; $5d79: $80
	jr   nz, jr_07b_5cfc                             ; $5d7a: $20 $80

	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	rst  $38                                         ; $5d7e: $ff
	add  l                                           ; $5d7f: $85
	nop                                              ; $5d80: $00
	ld   bc, $02fd                                   ; $5d81: $01 $fd $02
	add  b                                           ; $5d84: $80
	nop                                              ; $5d85: $00
	add  b                                           ; $5d86: $80
	ld   bc, $0080                                   ; $5d87: $01 $80 $00
	nop                                              ; $5d8a: $00
	rst  $38                                         ; $5d8b: $ff
	add  l                                           ; $5d8c: $85
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	rst  $38                                         ; $5d8f: $ff
	add  b                                           ; $5d90: $80
	ld   b, b                                        ; $5d91: $40
	dec  b                                           ; $5d92: $05
	nop                                              ; $5d93: $00
	and  b                                           ; $5d94: $a0
	pop  hl                                          ; $5d95: $e1
	ld   h, b                                        ; $5d96: $60
	pop  hl                                          ; $5d97: $e1
	ccf                                              ; $5d98: $3f
	add  l                                           ; $5d99: $85
	nop                                              ; $5d9a: $00

jr_07b_5d9b:
	ld   [$9fe9], sp                                 ; $5d9b: $08 $e9 $9f
	add  hl, de                                      ; $5d9e: $19
	pop  af                                          ; $5d9f: $f1
	ccf                                              ; $5da0: $3f
	rst  JumpTable                                         ; $5da1: $df
	xor  l                                           ; $5da2: $ad
	cp   h                                           ; $5da3: $bc
	ld   l, a                                        ; $5da4: $6f
	add  l                                           ; $5da5: $85
	nop                                              ; $5da6: $00
	ld   [$f997], sp                                 ; $5da7: $08 $97 $f9
	db   $fd                                         ; $5daa: $fd
	xor  $f1                                         ; $5dab: $ee $f1
	di                                               ; $5dad: $f3
	db   $10                                         ; $5dae: $10
	sbc  c                                           ; $5daf: $99
	or   $85                                         ; $5db0: $f6 $85
	nop                                              ; $5db2: $00
	nop                                              ; $5db3: $00
	db   $fd                                         ; $5db4: $fd
	add  b                                           ; $5db5: $80
	ld   b, $05                                      ; $5db6: $06 $05
	ld   [bc], a                                     ; $5db8: $02
	dec  bc                                          ; $5db9: $0b
	adc  a                                           ; $5dba: $8f
	rlca                                             ; $5dbb: $07
	adc  a                                           ; $5dbc: $8f
	di                                               ; $5dbd: $f3
	add  l                                           ; $5dbe: $85
	nop                                              ; $5dbf: $00
	ld   bc, $807f                                   ; $5dc0: $01 $7f $80
	add  h                                           ; $5dc3: $84
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	rst  $38                                         ; $5dc6: $ff
	add  l                                           ; $5dc7: $85
	nop                                              ; $5dc8: $00
	ld   bc, $02fd                                   ; $5dc9: $01 $fd $02
	add  b                                           ; $5dcc: $80
	inc  b                                           ; $5dcd: $04
	add  b                                           ; $5dce: $80
	add  hl, bc                                      ; $5dcf: $09
	add  b                                           ; $5dd0: $80
	nop                                              ; $5dd1: $00
	nop                                              ; $5dd2: $00
	rst  $38                                         ; $5dd3: $ff
	add  l                                           ; $5dd4: $85
	nop                                              ; $5dd5: $00
	ld   bc, $40bf                                   ; $5dd6: $01 $bf $40
	add  b                                           ; $5dd9: $80
	add  b                                           ; $5dda: $80
	add  d                                           ; $5ddb: $82
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	rst  $38                                         ; $5dde: $ff
	add  l                                           ; $5ddf: $85
	nop                                              ; $5de0: $00
	ld   bc, $00ff                                   ; $5de1: $01 $ff $00
	add  b                                           ; $5de4: $80
	ld   bc, $0280                                   ; $5de5: $01 $80 $02
	add  b                                           ; $5de8: $80
	inc  c                                           ; $5de9: $0c
	nop                                              ; $5dea: $00
	rst  $38                                         ; $5deb: $ff
	add  c                                           ; $5dec: $81
	rrca                                             ; $5ded: $0f
	add  b                                           ; $5dee: $80
	inc  bc                                          ; $5def: $03
	adc  b                                           ; $5df0: $88
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	rrca                                             ; $5df3: $0f
	add  l                                           ; $5df4: $85
	rst  $38                                         ; $5df5: $ff
	add  b                                           ; $5df6: $80
	rra                                              ; $5df7: $1f
	add  b                                           ; $5df8: $80
	rlca                                             ; $5df9: $07
	add  b                                           ; $5dfa: $80
	ld   bc, $0080                                   ; $5dfb: $01 $80 $00
	add  b                                           ; $5dfe: $80
	ld   hl, sp-$76                                  ; $5dff: $f8 $8a
	cp   $80                                         ; $5e01: $fe $80
	ld   a, [hl]                                     ; $5e03: $7e
	add  d                                           ; $5e04: $82
	ld   b, b                                        ; $5e05: $40
	add  b                                           ; $5e06: $80
	ld   bc, $2180                                   ; $5e07: $01 $80 $21
	add  b                                           ; $5e0a: $80
	add  hl, sp                                      ; $5e0b: $39
	add  b                                           ; $5e0c: $80
	ld   a, $82                                      ; $5e0d: $3e $82
	ccf                                              ; $5e0f: $3f
	add  b                                           ; $5e10: $80
	sbc  a                                           ; $5e11: $9f
	add  b                                           ; $5e12: $80
	and  b                                           ; $5e13: $a0
	add  b                                           ; $5e14: $80
	jr   nz, jr_07b_5d9b                             ; $5e15: $20 $84

	ld   b, b                                        ; $5e17: $40
	add  b                                           ; $5e18: $80
	nop                                              ; $5e19: $00
	add  b                                           ; $5e1a: $80
	ld   a, a                                        ; $5e1b: $7f
	add  b                                           ; $5e1c: $80
	rst  $38                                         ; $5e1d: $ff
	adc  d                                           ; $5e1e: $8a
	nop                                              ; $5e1f: $00
	add  d                                           ; $5e20: $82
	rst  $38                                         ; $5e21: $ff
	adc  b                                           ; $5e22: $88
	and  b                                           ; $5e23: $a0
	add  b                                           ; $5e24: $80
	nop                                              ; $5e25: $00
	add  b                                           ; $5e26: $80
	pop  af                                          ; $5e27: $f1
	add  b                                           ; $5e28: $80
	rst  $38                                         ; $5e29: $ff
	add  b                                           ; $5e2a: $80
	ld   [bc], a                                     ; $5e2b: $02
	add  d                                           ; $5e2c: $82
	nop                                              ; $5e2d: $00
	add  d                                           ; $5e2e: $82
	ld   bc, $0080                                   ; $5e2f: $01 $80 $00
	add  b                                           ; $5e32: $80
	rst  $38                                         ; $5e33: $ff
	ld   bc, $ff3f                                   ; $5e34: $01 $3f $ff
	add  d                                           ; $5e37: $82
	ldh  [rP1], a                                    ; $5e38: $e0 $00
	add  b                                           ; $5e3a: $80
	add  e                                           ; $5e3b: $83
	ld   b, b                                        ; $5e3c: $40
	add  b                                           ; $5e3d: $80
	nop                                              ; $5e3e: $00
	add  b                                           ; $5e3f: $80
	rst  $38                                         ; $5e40: $ff
	add  b                                           ; $5e41: $80
	rst  $28                                         ; $5e42: $ef
	add  hl, bc                                      ; $5e43: $09
	sbc  d                                           ; $5e44: $9a
	cp   $51                                         ; $5e45: $fe $51
	dec  [hl]                                        ; $5e47: $35
	inc  b                                           ; $5e48: $04
	rra                                              ; $5e49: $1f
	dec  e                                           ; $5e4a: $1d
	rlca                                             ; $5e4b: $07
	inc  bc                                          ; $5e4c: $03
	ld   [bc], a                                     ; $5e4d: $02
	add  b                                           ; $5e4e: $80
	nop                                              ; $5e4f: $00
	add  b                                           ; $5e50: $80
	rst  $38                                         ; $5e51: $ff
	add  b                                           ; $5e52: $80
	di                                               ; $5e53: $f3
	add  hl, bc                                      ; $5e54: $09
	and  l                                           ; $5e55: $a5
	or   a                                           ; $5e56: $b7
	xor  h                                           ; $5e57: $ac
	cp   [hl]                                        ; $5e58: $be
	inc  h                                           ; $5e59: $24
	db   $fc                                         ; $5e5a: $fc
	cp   b                                           ; $5e5b: $b8
	ldh  [rP1], a                                    ; $5e5c: $e0 $00
	add  b                                           ; $5e5e: $80
	add  b                                           ; $5e5f: $80
	nop                                              ; $5e60: $00
	add  b                                           ; $5e61: $80
	rst  $38                                         ; $5e62: $ff
	ld   bc, $fff3                                   ; $5e63: $01 $f3 $ff
	add  d                                           ; $5e66: $82
	rrca                                             ; $5e67: $0f

jr_07b_5e68:
	nop                                              ; $5e68: $00
	add  hl, bc                                      ; $5e69: $09
	add  e                                           ; $5e6a: $83
	dec  b                                           ; $5e6b: $05
	add  b                                           ; $5e6c: $80
	nop                                              ; $5e6d: $00
	add  d                                           ; $5e6e: $82
	rst  $38                                         ; $5e6f: $ff
	adc  d                                           ; $5e70: $8a
	nop                                              ; $5e71: $00
	add  d                                           ; $5e72: $82
	rst  $38                                         ; $5e73: $ff
	adc  b                                           ; $5e74: $88
	ld   a, [bc]                                     ; $5e75: $0a
	add  b                                           ; $5e76: $80
	nop                                              ; $5e77: $00
	add  b                                           ; $5e78: $80
	rra                                              ; $5e79: $1f
	add  hl, bc                                      ; $5e7a: $09
	rst  $28                                         ; $5e7b: $ef
	xor  d                                           ; $5e7c: $aa
	nop                                              ; $5e7d: $00
	ld   b, l                                        ; $5e7e: $45
	ld   l, d                                        ; $5e7f: $6a
	ld   l, a                                        ; $5e80: $6f
	ld   [bc], a                                     ; $5e81: $02
	ld   l, d                                        ; $5e82: $6a
	ld   d, l                                        ; $5e83: $55
	ld   a, a                                        ; $5e84: $7f
	add  b                                           ; $5e85: $80
	rst  ToBoot                                         ; $5e86: $c7
	inc  bc                                          ; $5e87: $03
	sbc  e                                           ; $5e88: $9b
	rst  $38                                         ; $5e89: $ff
	inc  hl                                          ; $5e8a: $23
	nop                                              ; $5e8b: $00
	add  b                                           ; $5e8c: $80
	ld   a, [$0a80]                                  ; $5e8d: $fa $80 $0a
	add  b                                           ; $5e90: $80
	add  hl, bc                                      ; $5e91: $09
	add  b                                           ; $5e92: $80
	dec  b                                           ; $5e93: $05
	add  b                                           ; $5e94: $80
	inc  b                                           ; $5e95: $04
	add  b                                           ; $5e96: $80
	dec  b                                           ; $5e97: $05
	add  b                                           ; $5e98: $80
	inc  bc                                          ; $5e99: $03
	add  b                                           ; $5e9a: $80
	ei                                               ; $5e9b: $fb
	ld   bc, $00f0                                   ; $5e9c: $01 $f0 $00
	add  b                                           ; $5e9f: $80
	ld   b, $82                                      ; $5ea0: $06 $82
	dec  bc                                          ; $5ea2: $0b
	add  d                                           ; $5ea3: $82
	dec  c                                           ; $5ea4: $0d
	add  b                                           ; $5ea5: $80
	ld   c, $80                                      ; $5ea6: $0e $80
	ld   [bc], a                                     ; $5ea8: $02
	nop                                              ; $5ea9: $00
	ldh  a, [$81]                                    ; $5eaa: $f0 $81
	nop                                              ; $5eac: $00
	add  b                                           ; $5ead: $80
	ret  nz                                          ; $5eae: $c0

	add  b                                           ; $5eaf: $80
	ldh  a, [$86]                                    ; $5eb0: $f0 $86
	rst  $30                                         ; $5eb2: $f7
	add  b                                           ; $5eb3: $80
	ld   c, $80                                      ; $5eb4: $0e $80
	ld   [bc], a                                     ; $5eb6: $02
	add  h                                           ; $5eb7: $84
	nop                                              ; $5eb8: $00
	add  b                                           ; $5eb9: $80
	ldh  [$82], a                                    ; $5eba: $e0 $82
	ld   hl, sp-$7c                                  ; $5ebc: $f8 $84
	ccf                                              ; $5ebe: $3f
	add  b                                           ; $5ebf: $80
	rra                                              ; $5ec0: $1f
	add  b                                           ; $5ec1: $80
	rlca                                             ; $5ec2: $07
	add  b                                           ; $5ec3: $80
	ld   bc, $0082                                   ; $5ec4: $01 $82 $00
	adc  d                                           ; $5ec7: $8a
	ld   a, a                                        ; $5ec8: $7f
	add  d                                           ; $5ec9: $82
	nop                                              ; $5eca: $00
	adc  d                                           ; $5ecb: $8a
	rst  $38                                         ; $5ecc: $ff
	add  d                                           ; $5ecd: $82
	nop                                              ; $5ece: $00
	add  b                                           ; $5ecf: $80
	pop  af                                          ; $5ed0: $f1
	adc  b                                           ; $5ed1: $88

jr_07b_5ed2:
	ldh  a, [$82]                                    ; $5ed2: $f0 $82
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	add  b                                           ; $5ed6: $80
	add  b                                           ; $5ed7: $80
	rst  $38                                         ; $5ed8: $ff
	ld   b, $f0                                      ; $5ed9: $06 $f0
	or   e                                           ; $5edb: $b3
	ei                                               ; $5edc: $fb
	ld   a, b                                        ; $5edd: $78
	ld   a, a                                        ; $5ede: $7f
	ld   b, b                                        ; $5edf: $40
	ld   a, a                                        ; $5ee0: $7f
	add  l                                           ; $5ee1: $85
	nop                                              ; $5ee2: $00
	add  b                                           ; $5ee3: $80
	rst  $38                                         ; $5ee4: $ff
	add  b                                           ; $5ee5: $80
	jr   c, jr_07b_5e68                              ; $5ee6: $38 $80

	ld   e, $02                                      ; $5ee8: $1e $02
	rst  $38                                         ; $5eea: $ff
	nop                                              ; $5eeb: $00
	rst  $38                                         ; $5eec: $ff
	add  l                                           ; $5eed: $85
	nop                                              ; $5eee: $00
	ld   [$7eff], sp                                 ; $5eef: $08 $ff $7e
	sbc  c                                           ; $5ef2: $99
	ld   e, b                                        ; $5ef3: $58
	ld   a, h                                        ; $5ef4: $7c
	inc  a                                           ; $5ef5: $3c
	rst  $38                                         ; $5ef6: $ff
	nop                                              ; $5ef7: $00
	rst  $38                                         ; $5ef8: $ff
	add  l                                           ; $5ef9: $85
	nop                                              ; $5efa: $00
	add  b                                           ; $5efb: $80
	rst  $38                                         ; $5efc: $ff
	ld   b, $3c                                      ; $5efd: $06 $3c
	dec  e                                           ; $5eff: $1d
	dec  a                                           ; $5f00: $3d
	inc  e                                           ; $5f01: $1c
	rst  $38                                         ; $5f02: $ff
	nop                                              ; $5f03: $00
	rst  $38                                         ; $5f04: $ff
	add  l                                           ; $5f05: $85
	nop                                              ; $5f06: $00
	ld   [sRandomSeed], sp                                 ; $5f07: $08 $ff $bf
	ld   e, b                                        ; $5f0a: $58
	sbc  d                                           ; $5f0b: $9a
	sbc  a                                           ; $5f0c: $9f
	dec  e                                           ; $5f0d: $1d
	rst  $38                                         ; $5f0e: $ff
	nop                                              ; $5f0f: $00
	rst  $38                                         ; $5f10: $ff
	add  h                                           ; $5f11: $84
	nop                                              ; $5f12: $00
	add  hl, bc                                      ; $5f13: $09
	inc  bc                                          ; $5f14: $03
	rst  $38                                         ; $5f15: $ff
	sbc  $3e                                         ; $5f16: $de $3e
	ld   a, [de]                                     ; $5f18: $1a
	ld   a, $3c                                      ; $5f19: $3e $3c
	db   $fc                                         ; $5f1b: $fc
	inc  b                                           ; $5f1c: $04
	db   $fc                                         ; $5f1d: $fc
	add  h                                           ; $5f1e: $84
	nop                                              ; $5f1f: $00
	adc  d                                           ; $5f20: $8a
	rra                                              ; $5f21: $1f
	add  d                                           ; $5f22: $82
	nop                                              ; $5f23: $00
	dec  bc                                          ; $5f24: $0b
	ld   bc, $3b36                                   ; $5f25: $01 $36 $3b
	xor  a                                           ; $5f28: $af
	xor  l                                           ; $5f29: $ad
	add  hl, bc                                      ; $5f2a: $09
	rra                                              ; $5f2b: $1f
	rst  $20                                         ; $5f2c: $e7
	cp   $1f                                         ; $5f2d: $fe $1f
	cp   $e0                                         ; $5f2f: $fe $e0
	add  b                                           ; $5f31: $80
	rst  $38                                         ; $5f32: $ff
	add  b                                           ; $5f33: $80
	nop                                              ; $5f34: $00
	adc  d                                           ; $5f35: $8a
	ei                                               ; $5f36: $fb
	add  b                                           ; $5f37: $80
	nop                                              ; $5f38: $00
	add  b                                           ; $5f39: $80
	inc  bc                                          ; $5f3a: $03
	ld   bc, $00f0                                   ; $5f3b: $01 $f0 $00
	add  b                                           ; $5f3e: $80
	ld   [$0f83], sp                                 ; $5f3f: $08 $83 $0f
	add  b                                           ; $5f42: $80
	rlca                                             ; $5f43: $07
	add  b                                           ; $5f44: $80
	dec  bc                                          ; $5f45: $0b
	add  b                                           ; $5f46: $80
	dec  b                                           ; $5f47: $05
	ld   bc, wWY                                   ; $5f48: $01 $0a $c2
	adc  l                                           ; $5f4b: $8d
	scf                                              ; $5f4c: $37
	adc  [hl]                                        ; $5f4d: $8e
	ld   hl, sp-$80                                  ; $5f4e: $f8 $80
	jr   nc, jr_07b_5ed2                             ; $5f50: $30 $80

	ld   a, $86                                      ; $5f52: $3e $86
	ccf                                              ; $5f54: $3f
	add  b                                           ; $5f55: $80
	rlca                                             ; $5f56: $07
	add  h                                           ; $5f57: $84
	nop                                              ; $5f58: $00
	adc  b                                           ; $5f59: $88
	ld   a, a                                        ; $5f5a: $7f
	add  h                                           ; $5f5b: $84
	nop                                              ; $5f5c: $00
	adc  b                                           ; $5f5d: $88
	rst  $38                                         ; $5f5e: $ff
	add  h                                           ; $5f5f: $84
	nop                                              ; $5f60: $00
	adc  b                                           ; $5f61: $88
	ldh  a, [$84]                                    ; $5f62: $f0 $84
	nop                                              ; $5f64: $00
	add  d                                           ; $5f65: $82
	cp   $80                                         ; $5f66: $fe $80
	nop                                              ; $5f68: $00
	add  d                                           ; $5f69: $82
	db   $fc                                         ; $5f6a: $fc
	add  b                                           ; $5f6b: $80
	cp   $82                                         ; $5f6c: $fe $82
	nop                                              ; $5f6e: $00
	add  d                                           ; $5f6f: $82
	ld   a, [hl]                                     ; $5f70: $7e
	add  b                                           ; $5f71: $80
	nop                                              ; $5f72: $00
	add  d                                           ; $5f73: $82
	db   $fc                                         ; $5f74: $fc
	add  b                                           ; $5f75: $80
	ld   a, [hl]                                     ; $5f76: $7e
	add  d                                           ; $5f77: $82
	nop                                              ; $5f78: $00
	add  d                                           ; $5f79: $82
	ld   a, a                                        ; $5f7a: $7f
	add  b                                           ; $5f7b: $80
	nop                                              ; $5f7c: $00
	add  d                                           ; $5f7d: $82
	cp   $80                                         ; $5f7e: $fe $80
	ld   a, a                                        ; $5f80: $7f
	add  d                                           ; $5f81: $82
	nop                                              ; $5f82: $00
	add  d                                           ; $5f83: $82
	ccf                                              ; $5f84: $3f
	add  b                                           ; $5f85: $80
	nop                                              ; $5f86: $00
	add  d                                           ; $5f87: $82
	rra                                              ; $5f88: $1f
	add  b                                           ; $5f89: $80
	ccf                                              ; $5f8a: $3f
	add  d                                           ; $5f8b: $82
	nop                                              ; $5f8c: $00
	add  d                                           ; $5f8d: $82
	sbc  a                                           ; $5f8e: $9f
	add  b                                           ; $5f8f: $80
	nop                                              ; $5f90: $00
	add  d                                           ; $5f91: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f92: $cf
	add  b                                           ; $5f93: $80
	sbc  a                                           ; $5f94: $9f
	add  d                                           ; $5f95: $82
	nop                                              ; $5f96: $00
	add  d                                           ; $5f97: $82
	sbc  [hl]                                        ; $5f98: $9e
	add  b                                           ; $5f99: $80
	nop                                              ; $5f9a: $00
	add  d                                           ; $5f9b: $82
	adc  $80                                         ; $5f9c: $ce $80
	sbc  [hl]                                        ; $5f9e: $9e
	add  d                                           ; $5f9f: $82
	nop                                              ; $5fa0: $00
	adc  b                                           ; $5fa1: $88
	rra                                              ; $5fa2: $1f
	add  h                                           ; $5fa3: $84
	nop                                              ; $5fa4: $00
	add  b                                           ; $5fa5: $80
	rst  $38                                         ; $5fa6: $ff
	add  b                                           ; $5fa7: $80
	db   $fc                                         ; $5fa8: $fc
	add  b                                           ; $5fa9: $80
	db   $fd                                         ; $5faa: $fd
	add  d                                           ; $5fab: $82
	cp   $80                                         ; $5fac: $fe $80
	nop                                              ; $5fae: $00
	add  b                                           ; $5faf: $80
	inc  e                                           ; $5fb0: $1c
	add  b                                           ; $5fb1: $80
	ld   h, e                                        ; $5fb2: $63
	add  b                                           ; $5fb3: $80
	sbc  h                                           ; $5fb4: $9c
	add  b                                           ; $5fb5: $80
	ld   h, b                                        ; $5fb6: $60
	add  b                                           ; $5fb7: $80
	add  d                                           ; $5fb8: $82
	add  b                                           ; $5fb9: $80
	ld   [de], a                                     ; $5fba: $12
	add  b                                           ; $5fbb: $80
	ld   [hl-], a                                    ; $5fbc: $32
	add  b                                           ; $5fbd: $80
	jr   nc, @+$03                                   ; $5fbe: $30 $01

	ld   a, [$8005]                                  ; $5fc0: $fa $05 $80
	ld   [bc], a                                     ; $5fc3: $02
	add  d                                           ; $5fc4: $82
	rlca                                             ; $5fc5: $07
	nop                                              ; $5fc6: $00
	dec  bc                                          ; $5fc7: $0b
	add  l                                           ; $5fc8: $85
	rrca                                             ; $5fc9: $0f
	ld   [bc], a                                     ; $5fca: $02
	ld   c, h                                        ; $5fcb: $4c
	or   a                                           ; $5fcc: $b7
	rst  $30                                         ; $5fcd: $f7
	add  b                                           ; $5fce: $80
	rst  $10                                         ; $5fcf: $d7
	add  b                                           ; $5fd0: $80
	rst  $20                                         ; $5fd1: $e7
	add  b                                           ; $5fd2: $80
	rst  $10                                         ; $5fd3: $d7
	add  l                                           ; $5fd4: $85
	rst  ToBoot                                         ; $5fd5: $c7
	ld   [$ec50], sp                                 ; $5fd6: $08 $50 $ec
	ld   a, a                                        ; $5fd9: $7f
	cp   $a6                                         ; $5fda: $fe $a6
	rst  JumpTable                                         ; $5fdc: $df
	ld   b, h                                        ; $5fdd: $44
	ld   d, b                                        ; $5fde: $50
	sbc  a                                           ; $5fdf: $9f
	add  e                                           ; $5fe0: $83
	rst  $38                                         ; $5fe1: $ff
	sub  l                                           ; $5fe2: $95
	nop                                              ; $5fe3: $00
	dec  bc                                          ; $5fe4: $0b
	ld   hl, $3704                                   ; $5fe5: $21 $04 $37
	ld   b, b                                        ; $5fe8: $40
	ld   e, d                                        ; $5fe9: $5a
	halt                                             ; $5fea: $76
	ld   a, a                                        ; $5feb: $7f
	ld   bc, $6100                                   ; $5fec: $01 $00 $61
	ld   [hl], c                                     ; $5fef: $71
	db   $10                                         ; $5ff0: $10
	add  d                                           ; $5ff1: $82
	nop                                              ; $5ff2: $00
	ld   [bc], a                                     ; $5ff3: $02
	add  b                                           ; $5ff4: $80
	nop                                              ; $5ff5: $00
	add  b                                           ; $5ff6: $80
	add  l                                           ; $5ff7: $85
	nop                                              ; $5ff8: $00
	add  b                                           ; $5ff9: $80
	add  b                                           ; $5ffa: $80
	adc  l                                           ; $5ffb: $8d
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	rst  $10                                         ; $5ffe: $d7
	add  c                                           ; $5fff: $81
	push de                                          ; $6000: $d5
	ld   [bc], a                                     ; $6001: $02
	sub  d                                           ; $6002: $92
	or   b                                           ; $6003: $b0
	or   a                                           ; $6004: $b7
	add  e                                           ; $6005: $83
	or   l                                           ; $6006: $b5
	inc  b                                           ; $6007: $04
	push de                                          ; $6008: $d5
	push af                                          ; $6009: $f5
	ldh  a, [$f2]                                    ; $600a: $f0 $f2
	rst  $38                                         ; $600c: $ff
	add  c                                           ; $600d: $81
	ld   d, l                                        ; $600e: $55
	inc  bc                                          ; $600f: $03
	nop                                              ; $6010: $00
	xor  d                                           ; $6011: $aa
	ld   d, l                                        ; $6012: $55
	rst  $38                                         ; $6013: $ff
	add  h                                           ; $6014: $84
	ld   d, l                                        ; $6015: $55
	inc  de                                          ; $6016: $13
	nop                                              ; $6017: $00
	xor  d                                           ; $6018: $aa
	ld   [hl], l                                     ; $6019: $75
	ld   d, [hl]                                     ; $601a: $56
	ld   b, a                                        ; $601b: $47
	ld   h, a                                        ; $601c: $67
	ld   c, l                                        ; $601d: $4d
	ld   l, l                                        ; $601e: $6d
	call z, $eccf                                    ; $601f: $cc $cf $ec
	rst  $28                                         ; $6022: $ef
	ld   h, [hl]                                     ; $6023: $66
	ld   h, a                                        ; $6024: $67
	sbc  e                                           ; $6025: $9b
	rst  $38                                         ; $6026: $ff
	ld   b, [hl]                                     ; $6027: $46
	nop                                              ; $6028: $00
	rra                                              ; $6029: $1f
	ld   c, d                                        ; $602a: $4a
	add  b                                           ; $602b: $80
	ld   b, b                                        ; $602c: $40
	ld   [bc], a                                     ; $602d: $02
	ld   d, b                                        ; $602e: $50
	push bc                                          ; $602f: $c5
	rst  JumpTable                                         ; $6030: $df
	add  h                                           ; $6031: $84
	jp   z, $0a04                                    ; $6032: $ca $04 $0a

	nop                                              ; $6035: $00
	dec  d                                           ; $6036: $15
	ld   a, [bc]                                     ; $6037: $0a
	rra                                              ; $6038: $1f
	add  b                                           ; $6039: $80
	ld   [$1a81], a                                  ; $603a: $ea $81 $1a
	add  hl, bc                                      ; $603d: $09
	jp   z, $2d28                                    ; $603e: $ca $28 $2d

	ld   b, d                                        ; $6041: $42
	ld   l, a                                        ; $6042: $6f
	ld   [bc], a                                     ; $6043: $02
	ld   [hl+], a                                    ; $6044: $22
	ld   a, [bc]                                     ; $6045: $0a
	ld   e, h                                        ; $6046: $5c
	ld   [hl], c                                     ; $6047: $71
	add  c                                           ; $6048: $81
	xor  d                                           ; $6049: $aa
	ld   [bc], a                                     ; $604a: $02
	ld   c, b                                        ; $604b: $48
	inc  c                                           ; $604c: $0c
	db   $ec                                         ; $604d: $ec
	add  e                                           ; $604e: $83
	xor  h                                           ; $604f: $ac
	dec  d                                           ; $6050: $15
	xor  d                                           ; $6051: $aa
	xor  [hl]                                        ; $6052: $ae
	ld   c, $4e                                      ; $6053: $0e $4e
	ld   d, h                                        ; $6055: $54
	cp   $54                                         ; $6056: $fe $54
	ld   d, l                                        ; $6058: $55
	ld   d, h                                        ; $6059: $54

jr_07b_605a:
	ld   d, l                                        ; $605a: $55
	ld   d, h                                        ; $605b: $54
	ld   d, l                                        ; $605c: $55
	ld   [bc], a                                     ; $605d: $02
	xor  b                                           ; $605e: $a8
	ld   d, l                                        ; $605f: $55

jr_07b_6060:
	rst  $38                                         ; $6060: $ff
	db   $e4                                         ; $6061: $e4
	ldh  a, [c]                                      ; $6062: $f2
	add  $8f                                         ; $6063: $c6 $8f
	inc  hl                                          ; $6065: $23
	rst  $10                                         ; $6066: $d7
	add  b                                           ; $6067: $80
	ld   d, a                                        ; $6068: $57
	add  b                                           ; $6069: $80
	rla                                              ; $606a: $17
	add  b                                           ; $606b: $80
	ld   d, a                                        ; $606c: $57
	add  b                                           ; $606d: $80
	ld   [hl], a                                     ; $606e: $77
	add  b                                           ; $606f: $80
	rla                                              ; $6070: $17
	add  b                                           ; $6071: $80
	rlca                                             ; $6072: $07
	add  b                                           ; $6073: $80
	rst  ToBoot                                         ; $6074: $c7
	add  b                                           ; $6075: $80
	ld   [hl+], a                                    ; $6076: $22
	add  b                                           ; $6077: $80
	inc  de                                          ; $6078: $13
	add  h                                           ; $6079: $84
	ld   d, e                                        ; $607a: $53
	add  b                                           ; $607b: $80
	inc  de                                          ; $607c: $13
	add  b                                           ; $607d: $80
	ld   [hl], e                                     ; $607e: $73
	ld   [bc], a                                     ; $607f: $02
	ld   [hl], d                                     ; $6080: $72
	ld   [hl], e                                     ; $6081: $73
	db   $fd                                         ; $6082: $fd
	add  l                                           ; $6083: $85
	rrca                                             ; $6084: $0f
	add  h                                           ; $6085: $84
	inc  bc                                          ; $6086: $03
	add  b                                           ; $6087: $80
	dec  bc                                          ; $6088: $0b
	ld   b, $0e                                      ; $6089: $06 $0e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $608b: $cf
	ret  z                                           ; $608c: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $608d: $cf
	call z, $cecf                                    ; $608e: $cc $cf $ce
	adc  b                                           ; $6091: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6092: $cf
	add  c                                           ; $6093: $81
	ld   hl, sp+$0c                                  ; $6094: $f8 $0c
	ld   e, b                                        ; $6096: $58
	ld   hl, sp+$08                                  ; $6097: $f8 $08
	ld   hl, sp+$00                                  ; $6099: $f8 $00
	ld   hl, sp-$80                                  ; $609b: $f8 $80
	ld   hl, sp-$40                                  ; $609d: $f8 $c0
	ld   hl, sp-$20                                  ; $609f: $f8 $e0
	ld   hl, sp-$10                                  ; $60a1: $f8 $f0
	add  c                                           ; $60a3: $81
	nop                                              ; $60a4: $00
	add  b                                           ; $60a5: $80
	ld   bc, $4180                                   ; $60a6: $01 $80 $41
	add  b                                           ; $60a9: $80
	jp   nz, $c580                                   ; $60aa: $c2 $80 $c5

	add  b                                           ; $60ad: $80
	jp   nz, $8080                                   ; $60ae: $c2 $80 $80

	inc  bc                                          ; $60b1: $03
	ld   b, b                                        ; $60b2: $40
	ld   h, b                                        ; $60b3: $60
	ldh  [$c0], a                                    ; $60b4: $e0 $c0
	add  b                                           ; $60b6: $80
	ret                                              ; $60b7: $c9


	add  b                                           ; $60b8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b9: $cf
	dec  bc                                          ; $60ba: $0b
	jp   nz, $86c3                                   ; $60bb: $c2 $c3 $86

	rst  ToBoot                                         ; $60be: $c7
	set  1, a                                        ; $60bf: $cb $cf
	ld   c, a                                        ; $60c1: $4f
	dec  bc                                          ; $60c2: $0b
	nop                                              ; $60c3: $00
	add  b                                           ; $60c4: $80
	nop                                              ; $60c5: $00
	add  b                                           ; $60c6: $80
	add  b                                           ; $60c7: $80
	ret  nz                                          ; $60c8: $c0

	add  b                                           ; $60c9: $80
	ld   b, b                                        ; $60ca: $40
	add  b                                           ; $60cb: $80
	ret  nc                                          ; $60cc: $d0

	ld   bc, $c040                                   ; $60cd: $01 $40 $c0
	add  b                                           ; $60d0: $80
	ldh  [rSB], a                                    ; $60d1: $e0 $01
	nop                                              ; $60d3: $00
	add  b                                           ; $60d4: $80
	add  b                                           ; $60d5: $80
	nop                                              ; $60d6: $00
	add  b                                           ; $60d7: $80
	jr   nz, jr_07b_605a                             ; $60d8: $20 $80

jr_07b_60da:
	nop                                              ; $60da: $00
	add  b                                           ; $60db: $80
	jr   nz, jr_07b_6060                             ; $60dc: $20 $82

	nop                                              ; $60de: $00
	add  d                                           ; $60df: $82
	jr   nz, jr_07b_60e6                             ; $60e0: $20 $04

	push de                                          ; $60e2: $d5
	rst  $30                                         ; $60e3: $f7
	or   l                                           ; $60e4: $b5
	push af                                          ; $60e5: $f5

jr_07b_60e6:
	ld   b, l                                        ; $60e6: $45
	add  b                                           ; $60e7: $80
	ld   [hl], l                                     ; $60e8: $75
	ld   a, [bc]                                     ; $60e9: $0a
	push af                                          ; $60ea: $f5
	sub  b                                           ; $60eb: $90
	ldh  a, [c]                                      ; $60ec: $f2
	push hl                                          ; $60ed: $e5
	rst  $30                                         ; $60ee: $f7

jr_07b_60ef:
	dec  [hl]                                        ; $60ef: $35
	push af                                          ; $60f0: $f5
	push bc                                          ; $60f1: $c5
	push af                                          ; $60f2: $f5
	rlca                                             ; $60f3: $07
	rst  $38                                         ; $60f4: $ff
	add  h                                           ; $60f5: $84
	ld   d, l                                        ; $60f6: $55
	add  hl, bc                                      ; $60f7: $09
	nop                                              ; $60f8: $00
	xor  d                                           ; $60f9: $aa
	ld   d, l                                        ; $60fa: $55
	rst  $38                                         ; $60fb: $ff
	ld   e, l                                        ; $60fc: $5d
	ld   d, l                                        ; $60fd: $55
	push de                                          ; $60fe: $d5
	ld   d, l                                        ; $60ff: $55
	ld   [hl], a                                     ; $6100: $77
	rst  $38                                         ; $6101: $ff
	add  h                                           ; $6102: $84
	ld   d, l                                        ; $6103: $55
	add  hl, bc                                      ; $6104: $09
	nop                                              ; $6105: $00
	xor  d                                           ; $6106: $aa
	ld   d, l                                        ; $6107: $55
	rst  $38                                         ; $6108: $ff
	ld   b, d                                        ; $6109: $42
	ld   c, a                                        ; $610a: $4f
	ld   [hl], a                                     ; $610b: $77
	ld   e, a                                        ; $610c: $5f
	and  l                                           ; $610d: $a5
	ccf                                              ; $610e: $3f
	add  h                                           ; $610f: $84
	ld   a, [hl+]                                    ; $6110: $2a
	add  hl, bc                                      ; $6111: $09
	nop                                              ; $6112: $00
	dec  d                                           ; $6113: $15
	ld   a, [hl+]                                    ; $6114: $2a
	ccf                                              ; $6115: $3f
	ld   a, [hl-]                                    ; $6116: $3a
	ld   [$f6d2], a                                  ; $6117: $ea $d2 $f6
	ld   c, e                                        ; $611a: $4b
	rst  $38                                         ; $611b: $ff
	add  b                                           ; $611c: $80
	xor  d                                           ; $611d: $aa
	dec  e                                           ; $611e: $1d

jr_07b_611f:
	or   d                                           ; $611f: $b2
	and  d                                           ; $6120: $a2
	sub  [hl]                                        ; $6121: $96
	ldh  a, [c]                                      ; $6122: $f2
	db   $10                                         ; $6123: $10
	ld   [hl], c                                     ; $6124: $71
	or   d                                           ; $6125: $b2
	di                                               ; $6126: $f3
	add  $82                                         ; $6127: $c6 $82
	and  [hl]                                        ; $6129: $a6
	and  d                                           ; $612a: $a2
	db   $eb                                         ; $612b: $eb
	xor  $ac                                         ; $612c: $ee $ac

jr_07b_612e:
	xor  [hl]                                        ; $612e: $ae
	and  d                                           ; $612f: $a2

jr_07b_6130:
	xor  [hl]                                        ; $6130: $ae
	xor  h                                           ; $6131: $ac
	xor  [hl]                                        ; $6132: $ae
	ld   a, [bc]                                     ; $6133: $0a
	ld   c, [hl]                                     ; $6134: $4e
	and  [hl]                                        ; $6135: $a6
	xor  $ac                                         ; $6136: $ee $ac
	xor  [hl]                                        ; $6138: $ae
	and  d                                           ; $6139: $a2
	xor  [hl]                                        ; $613a: $ae
	ld   c, d                                        ; $613b: $4a
	nop                                              ; $613c: $00
	add  b                                           ; $613d: $80
	ld   [$0080], sp                                 ; $613e: $08 $80 $00
	add  b                                           ; $6141: $80
	ld   [$0082], sp                                 ; $6142: $08 $82 $00
	add  d                                           ; $6145: $82
	ld   [$0088], sp                                 ; $6146: $08 $88 $00
	add  b                                           ; $6149: $80
	db   $10                                         ; $614a: $10
	add  b                                           ; $614b: $80
	nop                                              ; $614c: $00
	add  b                                           ; $614d: $80
	db   $10                                         ; $614e: $10
	inc  b                                           ; $614f: $04
	ld   h, c                                        ; $6150: $61
	ld   [hl], e                                     ; $6151: $73
	ld   b, b                                        ; $6152: $40
	ld   [hl], e                                     ; $6153: $73
	ld   hl, $0085                                   ; $6154: $21 $85 $00
	add  b                                           ; $6157: $80
	jr   nc, jr_07b_60da                             ; $6158: $30 $80

	inc  bc                                          ; $615a: $03
	nop                                              ; $615b: $00
	db   $fc                                         ; $615c: $fc
	add  l                                           ; $615d: $85
	rrca                                             ; $615e: $0f
	add  d                                           ; $615f: $82
	dec  bc                                          ; $6160: $0b
	add  d                                           ; $6161: $82
	inc  bc                                          ; $6162: $03
	nop                                              ; $6163: $00
	dec  bc                                          ; $6164: $0b
	adc  l                                           ; $6165: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6166: $cf
	nop                                              ; $6167: $00
	scf                                              ; $6168: $37
	adc  l                                           ; $6169: $8d
	ld   hl, sp+$00                                  ; $616a: $f8 $00
	jr   c, jr_07b_60ef                              ; $616c: $38 $81

	ret  nz                                          ; $616e: $c0

	add  b                                           ; $616f: $80
	sub  b                                           ; $6170: $90
	add  b                                           ; $6171: $80
	ret  nc                                          ; $6172: $d0

	add  b                                           ; $6173: $80
	ret  c                                           ; $6174: $d8

	add  b                                           ; $6175: $80
	reti                                             ; $6176: $d9


	add  d                                           ; $6177: $82
	pop  de                                          ; $6178: $d1
	add  d                                           ; $6179: $82
	sbc  a                                           ; $617a: $9f
	dec  b                                           ; $617b: $05
	ld   e, [hl]                                     ; $617c: $5e
	ld   e, a                                        ; $617d: $5f
	ld   e, $3f                                      ; $617e: $1e $3f
	dec  hl                                          ; $6180: $2b
	rrca                                             ; $6181: $0f
	add  b                                           ; $6182: $80
	inc  b                                           ; $6183: $04
	ld   bc, $a7a3                                   ; $6184: $01 $a3 $a7
	add  b                                           ; $6187: $80
	ld   e, a                                        ; $6188: $5f
	add  b                                           ; $6189: $80
	and  b                                           ; $618a: $a0
	inc  bc                                          ; $618b: $03
	jr   nz, jr_07b_612e                             ; $618c: $20 $a0

	jr   nz, jr_07b_6130                             ; $618e: $20 $a0

	add  b                                           ; $6190: $80
	ret  nz                                          ; $6191: $c0

	add  b                                           ; $6192: $80
	ld   b, b                                        ; $6193: $40
	add  b                                           ; $6194: $80
	jr   nz, @+$06                                   ; $6195: $20 $04

	ldh  [$f0], a                                    ; $6197: $e0 $f0
	add  b                                           ; $6199: $80
	ldh  a, [rLCDC]                                  ; $619a: $f0 $40
	adc  b                                           ; $619c: $88
	jr   nz, jr_07b_611f                             ; $619d: $20 $80

	ld   hl, $2780                                   ; $619f: $21 $80 $27
	ld   d, $20                                      ; $61a2: $16 $20
	daa                                              ; $61a4: $27
	push af                                          ; $61a5: $f5
	sub  c                                           ; $61a6: $91
	di                                               ; $61a7: $f3
	db   $f4                                         ; $61a8: $f4
	or   $34                                         ; $61a9: $f6 $34
	db   $f4                                         ; $61ab: $f4
	ldh  a, [c]                                      ; $61ac: $f2
	cp   $7e                                         ; $61ad: $fe $7e
	cp   $fd                                         ; $61af: $fe $fd
	rst  $38                                         ; $61b1: $ff
	db   $fc                                         ; $61b2: $fc
	nop                                              ; $61b3: $00
	ld   [hl], a                                     ; $61b4: $77
	ld   d, l                                        ; $61b5: $55
	ld   b, h                                        ; $61b6: $44
	ld   h, [hl]                                     ; $61b7: $66
	ld   c, l                                        ; $61b8: $4d
	ld   l, a                                        ; $61b9: $6f
	add  b                                           ; $61ba: $80
	call $ee0d                                       ; $61bb: $cd $0d $ee
	rst  $28                                         ; $61be: $ef
	ld   h, [hl]                                     ; $61bf: $66
	ld   h, a                                        ; $61c0: $67
	sbc  e                                           ; $61c1: $9b
	rst  $38                                         ; $61c2: $ff
	ld   b, [hl]                                     ; $61c3: $46
	nop                                              ; $61c4: $00
	or   b                                           ; $61c5: $b0
	ccf                                              ; $61c6: $3f
	or   a                                           ; $61c7: $b7
	ccf                                              ; $61c8: $3f

jr_07b_61c9:
	jr   jr_07b_61ea                                 ; $61c9: $18 $1f

	add  b                                           ; $61cb: $80
	nop                                              ; $61cc: $00
	add  h                                           ; $61cd: $84
	rst  $38                                         ; $61ce: $ff
	add  b                                           ; $61cf: $80
	nop                                              ; $61d0: $00
	dec  b                                           ; $61d1: $05
	dec  de                                          ; $61d2: $1b
	ld   a, [$f9d8]                                  ; $61d3: $fa $d8 $f9
	jr   nc, jr_07b_61c9                             ; $61d6: $30 $f1

	add  b                                           ; $61d8: $80
	nop                                              ; $61d9: $00
	add  b                                           ; $61da: $80
	rst  $38                                         ; $61db: $ff
	nop                                              ; $61dc: $00
	cp   $81                                         ; $61dd: $fe $81
	rst  $38                                         ; $61df: $ff
	add  b                                           ; $61e0: $80
	nop                                              ; $61e1: $00
	add  hl, bc                                      ; $61e2: $09
	rst  $28                                         ; $61e3: $ef
	xor  d                                           ; $61e4: $aa
	nop                                              ; $61e5: $00
	ld   b, l                                        ; $61e6: $45
	xor  d                                           ; $61e7: $aa
	rst  $28                                         ; $61e8: $ef
	add  d                                           ; $61e9: $82

jr_07b_61ea:
	xor  d                                           ; $61ea: $aa
	ld   d, l                                        ; $61eb: $55
	rst  $38                                         ; $61ec: $ff
	add  b                                           ; $61ed: $80
	rst  ToBoot                                         ; $61ee: $c7
	inc  bc                                          ; $61ef: $03
	db   $db                                         ; $61f0: $db
	rst  $38                                         ; $61f1: $ff

jr_07b_61f2:
	db   $e3                                         ; $61f2: $e3
	nop                                              ; $61f3: $00

jr_07b_61f4:
	add  b                                           ; $61f4: $80
	ld   b, $02                                      ; $61f5: $06 $02
	ld   [bc], a                                     ; $61f7: $02

jr_07b_61f8:
	ld   b, $02                                      ; $61f8: $06 $02
	add  c                                           ; $61fa: $81
	ld   b, $07                                      ; $61fb: $06 $07
	nop                                              ; $61fd: $00
	ld   b, $02                                      ; $61fe: $06 $02
	rlca                                             ; $6200: $07
	dec  a                                           ; $6201: $3d
	rst  $38                                         ; $6202: $ff
	pop  bc                                          ; $6203: $c1

jr_07b_6204:
	nop                                              ; $6204: $00
	adc  c                                           ; $6205: $89
	ld   [$8880], sp                                 ; $6206: $08 $80 $88
	add  b                                           ; $6209: $80
	add  sp, $00                                     ; $620a: $e8 $00
	ld   [$0080], sp                                 ; $620c: $08 $80 $00
	adc  h                                           ; $620f: $8c
	db   $10                                         ; $6210: $10
	add  b                                           ; $6211: $80
	jr   nc, jr_07b_621a                             ; $6212: $30 $06

	ld   [hl-], a                                    ; $6214: $32
	inc  sp                                          ; $6215: $33
	jr   nc, jr_07b_624b                             ; $6216: $30 $33

	jr   nc, jr_07b_624d                             ; $6218: $30 $33

jr_07b_621a:
	ld   bc, $0380                                   ; $621a: $01 $80 $03
	add  c                                           ; $621d: $81

jr_07b_621e:
	nop                                              ; $621e: $00
	add  b                                           ; $621f: $80
	ld   bc, $f000                                   ; $6220: $01 $00 $f0
	add  b                                           ; $6223: $80
	inc  bc                                          ; $6224: $03
	add  c                                           ; $6225: $81
	rrca                                             ; $6226: $0f
	inc  b                                           ; $6227: $04
	ld   [$000f], sp                                 ; $6228: $08 $0f $00
	ld   [$8000], sp                                 ; $622b: $08 $00 $80
	ld   b, $03                                      ; $622e: $06 $03
	ld   c, $0a                                      ; $6230: $0e $0a
	ld   [$8104], sp                                 ; $6232: $08 $04 $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6235: $cf
	ld   bc, $cfdf                                   ; $6236: $01 $df $cf
	add  b                                           ; $6239: $80
	xor  a                                           ; $623a: $af
	dec  b                                           ; $623b: $05
	cpl                                              ; $623c: $2f
	ld   l, a                                        ; $623d: $6f
	ld   h, e                                        ; $623e: $63
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $623f: $cf
	add  c                                           ; $6240: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6241: $cf
	add  b                                           ; $6242: $80
	adc  a                                           ; $6243: $8f
	ld   bc, $f772                                   ; $6244: $01 $72 $f7
	add  b                                           ; $6247: $80
	rla                                              ; $6248: $17
	add  b                                           ; $6249: $80
	rst  $10                                         ; $624a: $d7

jr_07b_624b:
	add  b                                           ; $624b: $80
	ld   d, a                                        ; $624c: $57

jr_07b_624d:
	add  b                                           ; $624d: $80
	rst  $10                                         ; $624e: $d7
	add  b                                           ; $624f: $80
	ld   d, a                                        ; $6250: $57
	add  b                                           ; $6251: $80
	rst  $10                                         ; $6252: $d7
	add  b                                           ; $6253: $80
	ld   d, a                                        ; $6254: $57
	add  h                                           ; $6255: $84
	ret  nc                                          ; $6256: $d0

	add  b                                           ; $6257: $80
	ret  c                                           ; $6258: $d8

	add  [hl]                                        ; $6259: $86
	call c, $a780                                    ; $625a: $dc $80 $a7
	add  b                                           ; $625d: $80
	nop                                              ; $625e: $00
	add  b                                           ; $625f: $80
	ld   [bc], a                                     ; $6260: $02
	add  b                                           ; $6261: $80
	ld   b, $80                                      ; $6262: $06 $80
	ld   [bc], a                                     ; $6264: $02
	add  d                                           ; $6265: $82
	ld   [hl+], a                                    ; $6266: $22
	add  b                                           ; $6267: $80
	ld   h, $80                                      ; $6268: $26 $80
	nop                                              ; $626a: $00
	add  h                                           ; $626b: $84
	ld   h, b                                        ; $626c: $60
	add  b                                           ; $626d: $80
	jr   nz, jr_07b_61f2                             ; $626e: $20 $82

	ld   h, b                                        ; $6270: $60
	add  d                                           ; $6271: $82
	jr   nz, jr_07b_61f4                             ; $6272: $20 $80

	nop                                              ; $6274: $00
	add  b                                           ; $6275: $80
	jr   nz, jr_07b_61f8                             ; $6276: $20 $80

	nop                                              ; $6278: $00
	add  b                                           ; $6279: $80
	jr   nz, @-$7e                                   ; $627a: $20 $80

	nop                                              ; $627c: $00
	add  b                                           ; $627d: $80
	jr   nz, jr_07b_6204                             ; $627e: $20 $84

	nop                                              ; $6280: $00
	add  b                                           ; $6281: $80
	rst  $28                                         ; $6282: $ef
	add  b                                           ; $6283: $80
	rrca                                             ; $6284: $0f
	add  b                                           ; $6285: $80
	add  sp, -$80                                    ; $6286: $e8 $80
	ld   [$e982], sp                                 ; $6288: $08 $82 $e9
	add  d                                           ; $628b: $82
	nop                                              ; $628c: $00
	add  d                                           ; $628d: $82
	rst  $38                                         ; $628e: $ff
	add  d                                           ; $628f: $82
	nop                                              ; $6290: $00
	add  d                                           ; $6291: $82
	rst  $38                                         ; $6292: $ff
	add  d                                           ; $6293: $82
	nop                                              ; $6294: $00
	add  d                                           ; $6295: $82
	rst  $38                                         ; $6296: $ff
	add  b                                           ; $6297: $80
	db   $10                                         ; $6298: $10
	add  b                                           ; $6299: $80
	jr   nc, jr_07b_621e                             ; $629a: $30 $82

	di                                               ; $629c: $f3
	add  d                                           ; $629d: $82
	nop                                              ; $629e: $00
	add  d                                           ; $629f: $82
	rst  $38                                         ; $62a0: $ff
	add  b                                           ; $62a1: $80
	ld   [$1880], sp                                 ; $62a2: $08 $80 $18
	add  d                                           ; $62a5: $82
	ld   sp, hl                                      ; $62a6: $f9
	add  b                                           ; $62a7: $80
	ld   a, [bc]                                     ; $62a8: $0a
	add  b                                           ; $62a9: $80
	dec  b                                           ; $62aa: $05
	add  b                                           ; $62ab: $80
	ld   [bc], a                                     ; $62ac: $02
	add  b                                           ; $62ad: $80
	ld   b, c                                        ; $62ae: $41
	add  b                                           ; $62af: $80
	ld   [hl], b                                     ; $62b0: $70
	add  b                                           ; $62b1: $80
	ld   a, h                                        ; $62b2: $7c
	add  b                                           ; $62b3: $80
	rra                                              ; $62b4: $1f
	add  b                                           ; $62b5: $80
	inc  bc                                          ; $62b6: $03
	add  d                                           ; $62b7: $82
	nop                                              ; $62b8: $00
	add  b                                           ; $62b9: $80
	rst  $30                                         ; $62ba: $f7
	add  b                                           ; $62bb: $80
	ldh  a, [$80]                                    ; $62bc: $f0 $80
	scf                                              ; $62be: $37
	add  b                                           ; $62bf: $80
	ld   [hl], b                                     ; $62c0: $70
	add  d                                           ; $62c1: $82
	rst  $30                                         ; $62c2: $f7
	add  b                                           ; $62c3: $80
	ld   [$0080], sp                                 ; $62c4: $08 $80 $00
	add  b                                           ; $62c7: $80
	ld   [$0080], sp                                 ; $62c8: $08 $80 $00
	add  b                                           ; $62cb: $80
	ld   [$0080], sp                                 ; $62cc: $08 $80 $00
	add  b                                           ; $62cf: $80
	ld   [$0080], sp                                 ; $62d0: $08 $80 $00
	add  h                                           ; $62d3: $84
	db   $10                                         ; $62d4: $10
	inc  bc                                          ; $62d5: $03
	nop                                              ; $62d6: $00
	inc  bc                                          ; $62d7: $03
	inc  de                                          ; $62d8: $13
	ld   de, $0180                                   ; $62d9: $11 $80 $01
	add  b                                           ; $62dc: $80
	ld   de, $0180                                   ; $62dd: $11 $80 $01

jr_07b_62e0:
	ld   [$0203], sp                                 ; $62e0: $08 $03 $02
	inc  c                                           ; $62e3: $0c
	dec  c                                           ; $62e4: $0d
	ld   sp, $c232                                   ; $62e5: $31 $32 $c2
	adc  $0e                                         ; $62e8: $ce $0e
	add  b                                           ; $62ea: $80
	inc  a                                           ; $62eb: $3c
	add  b                                           ; $62ec: $80
	ld   a, b                                        ; $62ed: $78
	ld   [bc], a                                     ; $62ee: $02
	ld   [hl], c                                     ; $62ef: $71
	halt                                             ; $62f0: $76
	ld   h, h                                        ; $62f1: $64
	ret                                              ; $62f2: $c9


	ld   bc, $0086                                   ; $62f3: $01 $86 $00
	add  [hl]                                        ; $62f6: $86
	rrca                                             ; $62f7: $0f
	add  [hl]                                        ; $62f8: $86
	nop                                              ; $62f9: $00
	add  [hl]                                        ; $62fa: $86
	rst  $38                                         ; $62fb: $ff
	add  d                                           ; $62fc: $82
	ldh  a, [rDIV]                                   ; $62fd: $f0 $04
	or   b                                           ; $62ff: $b0
	ldh  a, [rSVBK]                                  ; $6300: $f0 $70
	ldh  a, [$c0]                                    ; $6302: $f0 $c0
	add  l                                           ; $6304: $85
	ldh  a, [rDIV]                                   ; $6305: $f0 $04
	rrca                                             ; $6307: $0f
	rst  $38                                         ; $6308: $ff
	ld   e, a                                        ; $6309: $5f
	rst  $38                                         ; $630a: $ff
	and  b                                           ; $630b: $a0
	add  l                                           ; $630c: $85
	rst  $38                                         ; $630d: $ff
	inc  b                                           ; $630e: $04
	cp   a                                           ; $630f: $bf
	rst  $38                                         ; $6310: $ff
	rla                                              ; $6311: $17
	rst  $38                                         ; $6312: $ff
	ld   d, a                                        ; $6313: $57
	add  l                                           ; $6314: $85
	nop                                              ; $6315: $00
	add  b                                           ; $6316: $80
	rst  $38                                         ; $6317: $ff
	add  b                                           ; $6318: $80
	db   $fd                                         ; $6319: $fd
	add  d                                           ; $631a: $82
	rst  $38                                         ; $631b: $ff
	inc  b                                           ; $631c: $04
	rst  JumpTable                                         ; $631d: $df
	rst  $38                                         ; $631e: $ff
	and  b                                           ; $631f: $a0
	rst  $38                                         ; $6320: $ff
	ld   a, a                                        ; $6321: $7f
	add  e                                           ; $6322: $83
	rst  $38                                         ; $6323: $ff
	ld   a, [bc]                                     ; $6324: $0a
	rst  $30                                         ; $6325: $f7
	rst  $38                                         ; $6326: $ff
	and  e                                           ; $6327: $a3
	rst  $38                                         ; $6328: $ff
	ld   bc, $2aff                                   ; $6329: $01 $ff $2a
	rst  $38                                         ; $632c: $ff
	push de                                          ; $632d: $d5
	rst  $38                                         ; $632e: $ff
	xor  d                                           ; $632f: $aa
	add  a                                           ; $6330: $87
	rst  $38                                         ; $6331: $ff
	ld   [bc], a                                     ; $6332: $02
	db   $ed                                         ; $6333: $ed
	rst  $38                                         ; $6334: $ff
	dec  e                                           ; $6335: $1d
	add  [hl]                                        ; $6336: $86
	ld   h, b                                        ; $6337: $60
	add  d                                           ; $6338: $82
	nop                                              ; $6339: $00
	add  b                                           ; $633a: $80
	add  b                                           ; $633b: $80
	ld   bc, $fff0                                   ; $633c: $01 $f0 $ff
	add  b                                           ; $633f: $80
	sub  l                                           ; $6340: $95
	add  h                                           ; $6341: $84
	nop                                              ; $6342: $00
	add  b                                           ; $6343: $80
	add  b                                           ; $6344: $80
	add  b                                           ; $6345: $80
	ldh  [$80], a                                    ; $6346: $e0 $80
	db   $fc                                         ; $6348: $fc
	nop                                              ; $6349: $00
	rst  $38                                         ; $634a: $ff
	add  [hl]                                        ; $634b: $86
	nop                                              ; $634c: $00
	add  b                                           ; $634d: $80
	rst  $38                                         ; $634e: $ff
	add  b                                           ; $634f: $80
	cp   $83                                         ; $6350: $fe $83
	rst  $38                                         ; $6352: $ff
	add  b                                           ; $6353: $80
	inc  d                                           ; $6354: $14
	add  h                                           ; $6355: $84
	nop                                              ; $6356: $00
	add  b                                           ; $6357: $80
	rra                                              ; $6358: $1f
	add  h                                           ; $6359: $84
	rst  $38                                         ; $635a: $ff
	add  h                                           ; $635b: $84
	jr   nc, jr_07b_62e0                             ; $635c: $30 $82

	nop                                              ; $635e: $00
	add  b                                           ; $635f: $80
	inc  hl                                          ; $6360: $23
	add  c                                           ; $6361: $81
	rst  $38                                         ; $6362: $ff
	nop                                              ; $6363: $00
	ldh  a, [$80]                                    ; $6364: $f0 $80
	ret  nc                                          ; $6366: $d0

	add  b                                           ; $6367: $80
	or   b                                           ; $6368: $b0

jr_07b_6369:
	rrca                                             ; $6369: $0f
	ld   [hl], b                                     ; $636a: $70
	ld   h, b                                        ; $636b: $60
	or   b                                           ; $636c: $b0
	add  b                                           ; $636d: $80
	ld   [hl], b                                     ; $636e: $70
	ld   b, b                                        ; $636f: $40
	or   b                                           ; $6370: $b0
	and  b                                           ; $6371: $a0
	ld   [hl], b                                     ; $6372: $70
	ld   h, b                                        ; $6373: $60
	or   b                                           ; $6374: $b0
	rrca                                             ; $6375: $0f
	ldh  a, [rP1]                                    ; $6376: $f0 $00
	pop  af                                          ; $6378: $f1
	and  c                                           ; $6379: $a1
	add  b                                           ; $637a: $80
	inc  bc                                          ; $637b: $03
	add  b                                           ; $637c: $80
	nop                                              ; $637d: $00
	add  b                                           ; $637e: $80
	ld   bc, $0080                                   ; $637f: $01 $80 $00
	add  b                                           ; $6382: $80
	ld   bc, $0206                                   ; $6383: $01 $06 $02
	ld   c, b                                        ; $6386: $48
	rst  $38                                         ; $6387: $ff
	ld   h, b                                        ; $6388: $60
	rst  $38                                         ; $6389: $ff
	jp   z, $80e0                                    ; $638a: $ca $e0 $80

	ret  nz                                          ; $638d: $c0

	jr   jr_07b_63d0                                 ; $638e: $18 $40

	ret  nz                                          ; $6390: $c0

	nop                                              ; $6391: $00
	ret  nz                                          ; $6392: $c0

	nop                                              ; $6393: $00
	ret  nz                                          ; $6394: $c0

	ld   b, b                                        ; $6395: $40
	ret  nz                                          ; $6396: $c0

	ld   l, a                                        ; $6397: $6f
	rst  $38                                         ; $6398: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6399: $cf
	rst  $38                                         ; $639a: $ff
	adc  d                                           ; $639b: $8a
	rst  $38                                         ; $639c: $ff
	ret  nz                                          ; $639d: $c0

	rst  $38                                         ; $639e: $ff
	add  sp, -$01                                    ; $639f: $e8 $ff
	ld   hl, sp-$51                                  ; $63a1: $f8 $af
	and  c                                           ; $63a3: $a1
	ld   a, a                                        ; $63a4: $7f
	ld   l, d                                        ; $63a5: $6a
	rst  $38                                         ; $63a6: $ff
	ld   de, $0f8c                                   ; $63a7: $11 $8c $0f
	ld   [bc], a                                     ; $63aa: $02
	inc  bc                                          ; $63ab: $03
	ldh  a, [c]                                      ; $63ac: $f2
	cp   $9c                                         ; $63ad: $fe $9c
	rst  $38                                         ; $63af: $ff
	add  b                                           ; $63b0: $80
	ldh  a, [rAUD3HIGH]                              ; $63b1: $f0 $1e
	ld   h, b                                        ; $63b3: $60
	ldh  a, [$60]                                    ; $63b4: $f0 $60
	ldh  a, [$d0]                                    ; $63b6: $f0 $d0
	ldh  a, [$50]                                    ; $63b8: $f0 $50
	ldh  a, [rAUD4LEN]                               ; $63ba: $f0 $20
	ldh  a, [rP1]                                    ; $63bc: $f0 $00
	ldh  a, [rP1]                                    ; $63be: $f0 $00
	ldh  a, [$af]                                    ; $63c0: $f0 $af
	rst  $38                                         ; $63c2: $ff
	ld   [hl], a                                     ; $63c3: $77
	rst  $38                                         ; $63c4: $ff
	ld   [hl], a                                     ; $63c5: $77
	rst  $38                                         ; $63c6: $ff
	db   $dd                                         ; $63c7: $dd
	rst  $38                                         ; $63c8: $ff
	ld   d, l                                        ; $63c9: $55
	rst  $38                                         ; $63ca: $ff
	ld   [hl+], a                                    ; $63cb: $22
	rst  $38                                         ; $63cc: $ff
	nop                                              ; $63cd: $00
	rst  $38                                         ; $63ce: $ff
	nop                                              ; $63cf: $00

jr_07b_63d0:
	rst  $38                                         ; $63d0: $ff
	xor  d                                           ; $63d1: $aa
	add  l                                           ; $63d2: $85
	rst  $38                                         ; $63d3: $ff
	add  b                                           ; $63d4: $80
	cp   $84                                         ; $63d5: $fe $84
	rst  $38                                         ; $63d7: $ff
	adc  [hl]                                        ; $63d8: $8e
	ldh  a, [$82]                                    ; $63d9: $f0 $82
	rst  $38                                         ; $63db: $ff
	add  b                                           ; $63dc: $80
	rst  JumpTable                                         ; $63dd: $df
	adc  b                                           ; $63de: $88
	rst  $38                                         ; $63df: $ff
	nop                                              ; $63e0: $00
	ldh  a, [$80]                                    ; $63e1: $f0 $80
	ld   d, b                                        ; $63e3: $50
	add  b                                           ; $63e4: $80
	or   b                                           ; $63e5: $b0
	add  b                                           ; $63e6: $80
	jr   nz, jr_07b_6369                             ; $63e7: $20 $80

	db   $10                                         ; $63e9: $10
	add  h                                           ; $63ea: $84
	nop                                              ; $63eb: $00
	ld   [bc], a                                     ; $63ec: $02
	ld   h, b                                        ; $63ed: $60
	ld   l, a                                        ; $63ee: $6f
	rst  $38                                         ; $63ef: $ff
	add  b                                           ; $63f0: $80
	rst  JumpTable                                         ; $63f1: $df
	adc  e                                           ; $63f2: $8b
	rst  $38                                         ; $63f3: $ff
	add  b                                           ; $63f4: $80
	ld   bc, $0280                                   ; $63f5: $01 $80 $02
	add  b                                           ; $63f8: $80
	dec  b                                           ; $63f9: $05
	add  e                                           ; $63fa: $83
	nop                                              ; $63fb: $00
	ld   a, [de]                                     ; $63fc: $1a
	add  b                                           ; $63fd: $80
	ldh  a, [$30]                                    ; $63fe: $f0 $30
	ldh  a, [rLCDC]                                  ; $6400: $f0 $40
	ldh  a, [hScriptOpcodeParams]                                    ; $6402: $f0 $a0
	ldh  [rAUD4LEN], a                               ; $6404: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $6406: $e0 $a0
	ld   h, b                                        ; $6408: $60
	nop                                              ; $6409: $00
	ret  nz                                          ; $640a: $c0

	add  b                                           ; $640b: $80
	nop                                              ; $640c: $00
	ld   c, $7f                                      ; $640d: $0e $7f
	ld   [hl], e                                     ; $640f: $73
	adc  a                                           ; $6410: $8f
	sbc  b                                           ; $6411: $98
	ld   a, a                                        ; $6412: $7f
	ld   l, b                                        ; $6413: $68
	cp   a                                           ; $6414: $bf
	cp   h                                           ; $6415: $bc
	ld   [hl], a                                     ; $6416: $77
	halt                                             ; $6417: $76
	add  b                                           ; $6418: $80
	xor  e                                           ; $6419: $ab
	add  b                                           ; $641a: $80
	ld   d, $80                                      ; $641b: $16 $80
	ld   a, [bc]                                     ; $641d: $0a
	add  b                                           ; $641e: $80
	nop                                              ; $641f: $00
	add  b                                           ; $6420: $80
	ld   [$ff89], sp                                 ; $6421: $08 $89 $ff
	add  b                                           ; $6424: $80
	cp   $80                                         ; $6425: $fe $80
	rst  $38                                         ; $6427: $ff
	ld   a, [bc]                                     ; $6428: $0a
	ld   b, b                                        ; $6429: $40
	ldh  a, [rAUD4LEN]                               ; $642a: $f0 $20
	ldh  a, [$c0]                                    ; $642c: $f0 $c0
	ldh  a, [rAUD1SWEEP]                             ; $642e: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $6430: $f0 $10
	ldh  a, [hScriptOpcodeParams]                                    ; $6432: $f0 $a0
	add  b                                           ; $6434: $80
	ld   d, b                                        ; $6435: $50
	add  b                                           ; $6436: $80
	ldh  [rAUD1ENV], a                               ; $6437: $e0 $12
	ldh  a, [rHDMA5]                                 ; $6439: $f0 $55
	rst  $38                                         ; $643b: $ff
	nop                                              ; $643c: $00
	rst  $38                                         ; $643d: $ff
	inc  bc                                          ; $643e: $03
	rst  $38                                         ; $643f: $ff
	ld   bc, $02ff                                   ; $6440: $01 $ff $02
	rst  $38                                         ; $6443: $ff
	dec  b                                           ; $6444: $05
	db   $fd                                         ; $6445: $fd
	dec  b                                           ; $6446: $05
	ld   a, [$f902]                                  ; $6447: $fa $02 $f9
	ld   e, c                                        ; $644a: $59
	nop                                              ; $644b: $00
	add  h                                           ; $644c: $84
	ld   [$0c82], sp                                 ; $644d: $08 $82 $0c
	add  b                                           ; $6450: $80
	inc  b                                           ; $6451: $04
	add  b                                           ; $6452: $80
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	ldh  a, [$80]                                    ; $6455: $f0 $80
	ld   a, a                                        ; $6457: $7f
	add  b                                           ; $6458: $80
	rrca                                             ; $6459: $0f
	adc  d                                           ; $645a: $8a
	nop                                              ; $645b: $00
	add  h                                           ; $645c: $84
	rst  $38                                         ; $645d: $ff
	ld   bc, $1d1f                                   ; $645e: $01 $1f $1d
	add  b                                           ; $6461: $80
	inc  bc                                          ; $6462: $03
	nop                                              ; $6463: $00
	ld   [bc], a                                     ; $6464: $02
	add  d                                           ; $6465: $82
	ld   b, $00                                      ; $6466: $06 $00
	nop                                              ; $6468: $00
	adc  b                                           ; $6469: $88
	rst  $38                                         ; $646a: $ff
	add  b                                           ; $646b: $80
	ld   a, a                                        ; $646c: $7f
	add  b                                           ; $646d: $80
	rrca                                             ; $646e: $0f
	ld   hl, $ab01                                   ; $646f: $21 $01 $ab
	rst  $38                                         ; $6472: $ff
	nop                                              ; $6473: $00
	rst  $38                                         ; $6474: $ff
	nop                                              ; $6475: $00
	rst  $38                                         ; $6476: $ff
	nop                                              ; $6477: $00
	rst  $38                                         ; $6478: $ff
	nop                                              ; $6479: $00
	rst  $38                                         ; $647a: $ff
	nop                                              ; $647b: $00
	rst  $38                                         ; $647c: $ff
	nop                                              ; $647d: $00
	rst  $38                                         ; $647e: $ff
	nop                                              ; $647f: $00
	rst  $38                                         ; $6480: $ff
	ld   [hl], b                                     ; $6481: $70
	rst  $38                                         ; $6482: $ff
	sbc  b                                           ; $6483: $98
	rst  $38                                         ; $6484: $ff
	ld   a, $ff                                      ; $6485: $3e $ff
	cp   b                                           ; $6487: $b8
	rst  $38                                         ; $6488: $ff
	sub  b                                           ; $6489: $90
	rst  $38                                         ; $648a: $ff
	sub  l                                           ; $648b: $95
	rst  $38                                         ; $648c: $ff
	sbc  h                                           ; $648d: $9c
	rst  $38                                         ; $648e: $ff
	sbc  l                                           ; $648f: $9d
	ld   a, a                                        ; $6490: $7f
	ld   b, b                                        ; $6491: $40
	add  a                                           ; $6492: $87
	rst  $38                                         ; $6493: $ff
	add  b                                           ; $6494: $80
	ld   a, a                                        ; $6495: $7f
	add  d                                           ; $6496: $82
	rst  $38                                         ; $6497: $ff
	add  [hl]                                        ; $6498: $86
	nop                                              ; $6499: $00
	add  h                                           ; $649a: $84
	ldh  a, [$80]                                    ; $649b: $f0 $80
	ret  nc                                          ; $649d: $d0

	add  [hl]                                        ; $649e: $86
	nop                                              ; $649f: $00
	add  d                                           ; $64a0: $82
	rst  $38                                         ; $64a1: $ff
	add  b                                           ; $64a2: $80
	db   $fd                                         ; $64a3: $fd
	add  b                                           ; $64a4: $80
	rst  $38                                         ; $64a5: $ff
	ld   [bc], a                                     ; $64a6: $02
	ld   bc, $feff                                   ; $64a7: $01 $ff $fe
	add  c                                           ; $64aa: $81
	rst  $38                                         ; $64ab: $ff
	inc  b                                           ; $64ac: $04
	rst  $30                                         ; $64ad: $f7
	rst  $38                                         ; $64ae: $ff
	db   $d3                                         ; $64af: $d3
	rst  $38                                         ; $64b0: $ff
	db   $db                                         ; $64b1: $db
	add  e                                           ; $64b2: $83
	rst  $38                                         ; $64b3: $ff
	ld   b, $db                                      ; $64b4: $06 $db
	rst  $38                                         ; $64b6: $ff
	rst  $30                                         ; $64b7: $f7
	ei                                               ; $64b8: $fb
	inc  hl                                          ; $64b9: $23
	ei                                               ; $64ba: $fb
	sbc  e                                           ; $64bb: $9b
	add  c                                           ; $64bc: $81
	ld   l, e                                        ; $64bd: $6b
	ld   [de], a                                     ; $64be: $12
	ld   b, e                                        ; $64bf: $43
	ld   l, e                                        ; $64c0: $6b

jr_07b_64c1:
	inc  bc                                          ; $64c1: $03
	ld   l, e                                        ; $64c2: $6b
	ld   b, c                                        ; $64c3: $41
	ld   l, e                                        ; $64c4: $6b
	cp   [hl]                                        ; $64c5: $be
	rst  $10                                         ; $64c6: $d7
	add  d                                           ; $64c7: $82
	rst  ToBoot                                         ; $64c8: $c7
	ld   b, [hl]                                     ; $64c9: $46
	db   $dd                                         ; $64ca: $dd
	ld   e, h                                        ; $64cb: $5c
	sbc  l                                           ; $64cc: $9d
	db   $e4                                         ; $64cd: $e4
	db   $fd                                         ; $64ce: $fd
	ld   [$f0fd], sp                                 ; $64cf: $08 $fd $f0
	add  b                                           ; $64d2: $80
	db   $fd                                         ; $64d3: $fd
	ld   c, $fc                                      ; $64d4: $0e $fc
	ld   b, e                                        ; $64d6: $43
	rst  $38                                         ; $64d7: $ff
	ld   a, a                                        ; $64d8: $7f
	rst  $38                                         ; $64d9: $ff
	ld   l, [hl]                                     ; $64da: $6e
	cp   a                                           ; $64db: $bf
	sub  h                                           ; $64dc: $94
	cp   a                                           ; $64dd: $bf

jr_07b_64de:
	ld   a, [$ffdf]                                  ; $64de: $fa $df $ff
	rst  $20                                         ; $64e1: $e7
	rst  $38                                         ; $64e2: $ff
	ei                                               ; $64e3: $fb
	add  b                                           ; $64e4: $80
	di                                               ; $64e5: $f3
	ld   a, [bc]                                     ; $64e6: $0a
	sbc  $fd                                         ; $64e7: $de $fd
	db   $fc                                         ; $64e9: $fc
	call c, $ddc8                                    ; $64ea: $dc $c8 $dd
	push de                                          ; $64ed: $d5
	db   $dd                                         ; $64ee: $dd
	call $0adb                                       ; $64ef: $cd $db $0a
	add  b                                           ; $64f2: $80
	rlca                                             ; $64f3: $07
	inc  bc                                          ; $64f4: $03
	ld   d, a                                        ; $64f5: $57
	ld   d, [hl]                                     ; $64f6: $56
	ld   b, a                                        ; $64f7: $47
	sub  d                                           ; $64f8: $92
	add  b                                           ; $64f9: $80
	rst  $10                                         ; $64fa: $d7
	rlca                                             ; $64fb: $07
	push de                                          ; $64fc: $d5
	add  c                                           ; $64fd: $81
	sub  l                                           ; $64fe: $95
	push de                                          ; $64ff: $d5

jr_07b_6500:
	pop  af                                          ; $6500: $f1
	sub  c                                           ; $6501: $91
	db   $fd                                         ; $6502: $fd
	ld   e, h                                        ; $6503: $5c
	add  b                                           ; $6504: $80
	db   $fc                                         ; $6505: $fc
	add  c                                           ; $6506: $81
	db   $fd                                         ; $6507: $fd
	inc  b                                           ; $6508: $04
	ld   a, [de]                                     ; $6509: $1a
	rst  $38                                         ; $650a: $ff
	rla                                              ; $650b: $17
	rst  $28                                         ; $650c: $ef
	ld   c, a                                        ; $650d: $4f

jr_07b_650e:
	add  c                                           ; $650e: $81
	xor  a                                           ; $650f: $af
	inc  b                                           ; $6510: $04
	xor  d                                           ; $6511: $aa
	xor  a                                           ; $6512: $af
	nop                                              ; $6513: $00
	and  a                                           ; $6514: $a7
	and  d                                           ; $6515: $a2
	add  b                                           ; $6516: $80
	cp   a                                           ; $6517: $bf
	ld   bc, $6f9f                                   ; $6518: $01 $9f $6f
	add  e                                           ; $651b: $83
	nop                                              ; $651c: $00
	add  b                                           ; $651d: $80
	ld   c, $84                                      ; $651e: $0e $84
	rrca                                             ; $6520: $0f
	ld   [bc], a                                     ; $6521: $02
	ld   bc, $fc0d                                   ; $6522: $01 $0d $fc
	add  l                                           ; $6525: $85
	nop                                              ; $6526: $00
	add  [hl]                                        ; $6527: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6528: $cf
	add  d                                           ; $6529: $82
	ld   a, [bc]                                     ; $652a: $0a
	add  b                                           ; $652b: $80
	ld   [bc], a                                     ; $652c: $02
	add  d                                           ; $652d: $82
	nop                                              ; $652e: $00
	add  b                                           ; $652f: $80
	ldh  [$82], a                                    ; $6530: $e0 $82
	rst  $38                                         ; $6532: $ff
	adc  h                                           ; $6533: $8c
	nop                                              ; $6534: $00
	add  b                                           ; $6535: $80
	adc  $05                                         ; $6536: $ce $05
	nop                                              ; $6538: $00
	rrca                                             ; $6539: $0f
	rra                                              ; $653a: $1f
	inc  de                                          ; $653b: $13
	dec  de                                          ; $653c: $1b
	jr   jr_07b_64c1                                 ; $653d: $18 $82

	jr   z, jr_07b_64c1                              ; $653f: $28 $80

	ld   [$0083], sp                                 ; $6541: $08 $83 $00
	add  d                                           ; $6544: $82
	rst  $38                                         ; $6545: $ff
	add  b                                           ; $6546: $80
	ld   a, a                                        ; $6547: $7f
	add  b                                           ; $6548: $80
	rlca                                             ; $6549: $07
	add  [hl]                                        ; $654a: $86
	nop                                              ; $654b: $00
	add  [hl]                                        ; $654c: $86
	rst  $38                                         ; $654d: $ff
	add  b                                           ; $654e: $80
	cp   $84                                         ; $654f: $fe $84
	nop                                              ; $6551: $00
	add  e                                           ; $6552: $83
	rst  $38                                         ; $6553: $ff
	inc  bc                                          ; $6554: $03
	rst  $30                                         ; $6555: $f7
	add  sp, -$08                                    ; $6556: $e8 $f8
	jr   jr_07b_64de                                 ; $6558: $18 $84

	inc  h                                           ; $655a: $24
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	add  b                                           ; $655d: $80
	rst  $38                                         ; $655e: $ff
	ld   bc, $fffc                                   ; $655f: $01 $fc $ff
	add  b                                           ; $6562: $80
	jp   $0300                                       ; $6563: $c3 $00 $03


	add  h                                           ; $6566: $84
	inc  b                                           ; $6567: $04
	add  c                                           ; $6568: $81
	nop                                              ; $6569: $00
	add  b                                           ; $656a: $80
	ld   hl, sp-$7f                                  ; $656b: $f8 $81
	nop                                              ; $656d: $00
	add  h                                           ; $656e: $84
	add  c                                           ; $656f: $81
	add  b                                           ; $6570: $80
	add  b                                           ; $6571: $80
	add  c                                           ; $6572: $81
	nop                                              ; $6573: $00
	ld   [bc], a                                     ; $6574: $02
	inc  bc                                          ; $6575: $03
	ld   b, e                                        ; $6576: $43
	ld   b, b                                        ; $6577: $40
	add  b                                           ; $6578: $80
	ret  nz                                          ; $6579: $c0

	add  h                                           ; $657a: $84
	jr   nz, jr_07b_6500                             ; $657b: $20 $83

	nop                                              ; $657d: $00
	rlca                                             ; $657e: $07
	rst  $38                                         ; $657f: $ff
	ld   [hl], a                                     ; $6580: $77
	rst  $38                                         ; $6581: $ff
	ld   [hl], a                                     ; $6582: $77
	ccf                                              ; $6583: $3f
	dec  a                                           ; $6584: $3d
	rrca                                             ; $6585: $0f
	dec  l                                           ; $6586: $2d
	add  b                                           ; $6587: $80
	daa                                              ; $6588: $27
	nop                                              ; $6589: $00
	jr   nz, jr_07b_650e                             ; $658a: $20 $82

	ld   hl, $0304                                   ; $658c: $21 $04 $03
	rst  $38                                         ; $658f: $ff
	ld   d, h                                        ; $6590: $54
	rst  $38                                         ; $6591: $ff
	xor  l                                           ; $6592: $ad
	add  e                                           ; $6593: $83
	ld   a, [$f880]                                  ; $6594: $fa $80 $f8
	ld   [$fbe0], sp                                 ; $6597: $08 $e0 $fb
	db   $db                                         ; $659a: $db
	di                                               ; $659b: $f3
	adc  $ff                                         ; $659c: $ce $ff
	add  sp, -$01                                    ; $659e: $e8 $ff
	ld   [$ffa7], a                                  ; $65a0: $ea $a7 $ff
	ld   [bc], a                                     ; $65a3: $02
	ld   a, a                                        ; $65a4: $7f
	rst  $38                                         ; $65a5: $ff
	ld   [hl], c                                     ; $65a6: $71
	add  b                                           ; $65a7: $80
	dec  c                                           ; $65a8: $0d
	add  b                                           ; $65a9: $80
	ld   bc, $0d86                                   ; $65aa: $01 $86 $0d
	add  b                                           ; $65ad: $80
	ld   bc, $0d01                                   ; $65ae: $01 $01 $0d
	inc  sp                                          ; $65b1: $33
	adc  l                                           ; $65b2: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65b3: $cf
	add  b                                           ; $65b4: $80
	rst  $38                                         ; $65b5: $ff
	ld   [bc], a                                     ; $65b6: $02
	rst  ToBoot                                         ; $65b7: $c7
	rst  $30                                         ; $65b8: $f7
	pop  af                                          ; $65b9: $f1
	add  b                                           ; $65ba: $80
	push af                                          ; $65bb: $f5
	add  b                                           ; $65bc: $80
	push bc                                          ; $65bd: $c5
	add  b                                           ; $65be: $80
	pop  af                                          ; $65bf: $f1
	add  d                                           ; $65c0: $82
	push af                                          ; $65c1: $f5
	nop                                              ; $65c2: $00
	pop  bc                                          ; $65c3: $c1
	adc  [hl]                                        ; $65c4: $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c5: $cf
	add  b                                           ; $65c6: $80
	ldh  a, [$82]                                    ; $65c7: $f0 $82
	db   $fc                                         ; $65c9: $fc
	ld   [bc], a                                     ; $65ca: $02
	sbc  h                                           ; $65cb: $9c
	call c, $80c4                                    ; $65cc: $dc $c4 $80
	call nc, $8480                                   ; $65cf: $d4 $80 $84
	add  c                                           ; $65d2: $81
	call nc, Call_07b_5001                           ; $65d3: $d4 $01 $50
	nop                                              ; $65d6: $00
	add  b                                           ; $65d7: $80
	ret  nz                                          ; $65d8: $c0

	add  b                                           ; $65d9: $80
	db   $fc                                         ; $65da: $fc
	add  d                                           ; $65db: $82
	rst  $38                                         ; $65dc: $ff
	add  h                                           ; $65dd: $84
	cp   $04                                         ; $65de: $fe $04
	ld   a, a                                        ; $65e0: $7f
	rst  $38                                         ; $65e1: $ff
	ccf                                              ; $65e2: $3f
	rst  $38                                         ; $65e3: $ff
	cp   a                                           ; $65e4: $bf

Jump_07b_65e5:
	add  e                                           ; $65e5: $83
	rst  $38                                         ; $65e6: $ff
	ld   b, $77                                      ; $65e7: $06 $77
	rst  $38                                         ; $65e9: $ff
	inc  hl                                          ; $65ea: $23
	rst  $38                                         ; $65eb: $ff
	ld   bc, $aaff                                   ; $65ec: $01 $ff $aa
	adc  b                                           ; $65ef: $88
	nop                                              ; $65f0: $00
	add  b                                           ; $65f1: $80
	ld   [$0080], sp                                 ; $65f2: $08 $80 $00
	add  b                                           ; $65f5: $80
	ld   [$0086], sp                                 ; $65f6: $08 $86 $00
	add  d                                           ; $65f9: $82
	ld   bc, $0080                                   ; $65fa: $01 $80 $00
	dec  b                                           ; $65fd: $05
	ld   bc, $ff54                                   ; $65fe: $01 $54 $ff
	add  b                                           ; $6601: $80
	rst  $38                                         ; $6602: $ff
	ld   a, [hl+]                                    ; $6603: $2a
	add  e                                           ; $6604: $83
	rst  $38                                         ; $6605: $ff
	rlca                                             ; $6606: $07
	db   $fd                                         ; $6607: $fd
	rst  $38                                         ; $6608: $ff
	ld   d, b                                        ; $6609: $50
	rst  $38                                         ; $660a: $ff
	xor  h                                           ; $660b: $ac
	rst  $38                                         ; $660c: $ff
	cp   $00                                         ; $660d: $fe $00
	add  e                                           ; $660f: $83
	ld   bc, $2182                                   ; $6610: $01 $82 $21
	add  b                                           ; $6613: $80
	ld   bc, $2182                                   ; $6614: $01 $82 $21
	nop                                              ; $6617: $00
	ld   bc, $8180                                   ; $6618: $01 $80 $81
	add  b                                           ; $661b: $80
	ldh  [$80], a                                    ; $661c: $e0 $80
	ldh  a, [$80]                                    ; $661e: $f0 $80
	add  $00                                         ; $6620: $c6 $00
	rst  ToBoot                                         ; $6622: $c7
	add  e                                           ; $6623: $83
	rst  $20                                         ; $6624: $e7
	ld   [$7f0a], sp                                 ; $6625: $08 $0a $7f
	nop                                              ; $6628: $00
	ld   a, a                                        ; $6629: $7f
	nop                                              ; $662a: $00
	ccf                                              ; $662b: $3f
	nop                                              ; $662c: $00
	ccf                                              ; $662d: $3f
	jr   nz, @-$7e                                   ; $662e: $20 $80

	ld   c, $35                                      ; $6630: $0e $35
	adc  e                                           ; $6632: $8b
	add  c                                           ; $6633: $81
	ldh  [c], a                                      ; $6634: $e2
	ldh  a, [c]                                      ; $6635: $f2
	ld   [hl], l                                     ; $6636: $75
	xor  a                                           ; $6637: $af
	rst  $38                                         ; $6638: $ff
	ret  nz                                          ; $6639: $c0

	rst  $38                                         ; $663a: $ff
	ldh  a, [rIE]                                    ; $663b: $f0 $ff
	jr   nc, jr_07b_66be                             ; $663d: $30 $7f

	sbc  $ff                                         ; $663f: $de $ff
	inc  [hl]                                        ; $6641: $34
	rst  $38                                         ; $6642: $ff
	sbc  d                                           ; $6643: $9a
	rst  $38                                         ; $6644: $ff
	ret  nc                                          ; $6645: $d0

	rst  $38                                         ; $6646: $ff
	ld   b, b                                        ; $6647: $40
	rst  $38                                         ; $6648: $ff
	nop                                              ; $6649: $00
	rst  $38                                         ; $664a: $ff
	nop                                              ; $664b: $00
	rst  $38                                         ; $664c: $ff
	nop                                              ; $664d: $00
	rst  $38                                         ; $664e: $ff
	nop                                              ; $664f: $00
	rst  $38                                         ; $6650: $ff
	nop                                              ; $6651: $00
	rst  $38                                         ; $6652: $ff
	nop                                              ; $6653: $00
	rst  $38                                         ; $6654: $ff
	add  b                                           ; $6655: $80

jr_07b_6656:
	rst  $38                                         ; $6656: $ff
	add  b                                           ; $6657: $80
	rst  $38                                         ; $6658: $ff
	nop                                              ; $6659: $00
	rst  $38                                         ; $665a: $ff
	nop                                              ; $665b: $00
	rst  $38                                         ; $665c: $ff
	nop                                              ; $665d: $00
	rst  $38                                         ; $665e: $ff
	nop                                              ; $665f: $00
	rst  $38                                         ; $6660: $ff
	inc  bc                                          ; $6661: $03
	cp   $00                                         ; $6662: $fe $00
	cp   $02                                         ; $6664: $fe $02
	cp   $5b                                         ; $6666: $fe $5b
	add  d                                           ; $6668: $82
	dec  c                                           ; $6669: $0d
	nop                                              ; $666a: $00
	ld   bc, $0086                                   ; $666b: $01 $86 $00
	add  b                                           ; $666e: $80
	rrca                                             ; $666f: $0f
	nop                                              ; $6670: $00
	ccf                                              ; $6671: $3f
	add  e                                           ; $6672: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6673: $cf
	add  [hl]                                        ; $6674: $86
	rrca                                             ; $6675: $0f
	add  b                                           ; $6676: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6677: $cf
	nop                                              ; $6678: $00
	pop  bc                                          ; $6679: $c1
	add  e                                           ; $667a: $83
	push af                                          ; $667b: $f5
	nop                                              ; $667c: $00
	inc  [hl]                                        ; $667d: $34
	add  l                                           ; $667e: $85
	nop                                              ; $667f: $00
	add  b                                           ; $6680: $80
	rst  $38                                         ; $6681: $ff
	add  [hl]                                        ; $6682: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6683: $cf
	add  d                                           ; $6684: $82
	ld   c, $80                                      ; $6685: $0e $80
	rrca                                             ; $6687: $0f
	add  b                                           ; $6688: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6689: $cf
	add  c                                           ; $668a: $81
	add  h                                           ; $668b: $84
	add  e                                           ; $668c: $83
	call nc, Call_07b_5000                           ; $668d: $d4 $00 $50
	add  c                                           ; $6690: $81
	nop                                              ; $6691: $00
	add  d                                           ; $6692: $82
	db   $fc                                         ; $6693: $fc
	add  b                                           ; $6694: $80
	cp   $84                                         ; $6695: $fe $84
	db   $fc                                         ; $6697: $fc
	add  d                                           ; $6698: $82
	ret  nz                                          ; $6699: $c0

	add  d                                           ; $669a: $82
	ld   hl, sp+$00                                  ; $669b: $f8 $00
	nop                                              ; $669d: $00
	add  c                                           ; $669e: $81
	rst  $38                                         ; $669f: $ff
	ld   a, [bc]                                     ; $66a0: $0a
	ld   d, l                                        ; $66a1: $55
	rst  $38                                         ; $66a2: $ff
	xor  d                                           ; $66a3: $aa
	rst  $38                                         ; $66a4: $ff
	ccf                                              ; $66a5: $3f
	rst  $38                                         ; $66a6: $ff
	ccf                                              ; $66a7: $3f
	rst  $38                                         ; $66a8: $ff
	dec  b                                           ; $66a9: $05
	rst  $38                                         ; $66aa: $ff
	ld   a, [$ff80]                                  ; $66ab: $fa $80 $ff
	add  b                                           ; $66ae: $80
	ld   [$0080], sp                                 ; $66af: $08 $80 $00
	add  d                                           ; $66b2: $82
	ld   [$0086], sp                                 ; $66b3: $08 $86 $00
	add  b                                           ; $66b6: $80
	ld   bc, $0080                                   ; $66b7: $01 $80 $00
	add  d                                           ; $66ba: $82
	ld   bc, $0085                                   ; $66bb: $01 $85 $00

jr_07b_66be:
	nop                                              ; $66be: $00
	ldh  a, [$83]                                    ; $66bf: $f0 $83
	rrca                                             ; $66c1: $0f
	ld   b, $08                                      ; $66c2: $06 $08
	rrca                                             ; $66c4: $0f
	ld   [$0e0f], sp                                 ; $66c5: $08 $0f $0e
	rrca                                             ; $66c8: $0f
	ld   c, $81                                      ; $66c9: $0e $81
	rrca                                             ; $66cb: $0f
	nop                                              ; $66cc: $00
	cp   $80                                         ; $66cd: $fe $80
	ld   bc, $2181                                   ; $66cf: $01 $81 $21
	nop                                              ; $66d2: $00
	jr   nz, jr_07b_6656                             ; $66d3: $20 $81

	nop                                              ; $66d5: $00
	add  e                                           ; $66d6: $83
	ld   bc, $2100                                   ; $66d7: $01 $00 $21
	add  h                                           ; $66da: $84
	rst  $20                                         ; $66db: $e7
	add  b                                           ; $66dc: $80
	ld   h, a                                        ; $66dd: $67
	ld   bc, $0424                                   ; $66de: $01 $24 $04
	add  b                                           ; $66e1: $80
	db   $e4                                         ; $66e2: $e4
	add  b                                           ; $66e3: $80
	db   $f4                                         ; $66e4: $f4
	add  b                                           ; $66e5: $80
	call nz, $0000                                  ; $66e6: $c4 $00 $00
	add  b                                           ; $66e9: $80
	ld   a, e                                        ; $66ea: $7b
	add  b                                           ; $66eb: $80
	ld   h, h                                        ; $66ec: $64
	add  b                                           ; $66ed: $80
	ld   h, b                                        ; $66ee: $60
	add  b                                           ; $66ef: $80
	ld   [hl], e                                     ; $66f0: $73
	add  b                                           ; $66f1: $80
	ld   bc, $171d                                   ; $66f2: $01 $1d $17
	scf                                              ; $66f5: $37
	ld   [hl-], a                                    ; $66f6: $32
	ld   [de], a                                     ; $66f7: $12
	ld   bc, $ff2a                                   ; $66f8: $01 $2a $ff
	db   $db                                         ; $66fb: $db
	rst  JumpTable                                         ; $66fc: $df
	rst  $10                                         ; $66fd: $d7
	cp   a                                           ; $66fe: $bf
	rst  $20                                         ; $66ff: $e7
	ld   e, a                                        ; $6700: $5f
	xor  l                                           ; $6701: $ad
	cp   a                                           ; $6702: $bf
	ld   b, h                                        ; $6703: $44
	cp   $8f                                         ; $6704: $fe $8f
	cp   a                                           ; $6706: $bf
	db   $db                                         ; $6707: $db
	ld   a, a                                        ; $6708: $7f
	sub  [hl]                                        ; $6709: $96
	rst  $38                                         ; $670a: $ff
	nop                                              ; $670b: $00
	rst  $38                                         ; $670c: $ff
	add  b                                           ; $670d: $80
	rst  $38                                         ; $670e: $ff
	ld   d, l                                        ; $670f: $55
	add  b                                           ; $6710: $80
	nop                                              ; $6711: $00
	add  b                                           ; $6712: $80
	add  b                                           ; $6713: $80
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	add  b                                           ; $6716: $80
	add  b                                           ; $6717: $80
	add  b                                           ; $6718: $80
	ret  nz                                          ; $6719: $c0

	dec  bc                                          ; $671a: $0b
	and  b                                           ; $671b: $a0
	ld   a, [$f50a]                                  ; $671c: $fa $0a $f5
	dec  b                                           ; $671f: $05
	ldh  a, [c]                                      ; $6720: $f2
	ld   d, d                                        ; $6721: $52
	dec  b                                           ; $6722: $05
	dec  c                                           ; $6723: $0d
	ld   a, [bc]                                     ; $6724: $0a
	ld   [de], a                                     ; $6725: $12
	dec  e                                           ; $6726: $1d
	add  c                                           ; $6727: $81
	dec  c                                           ; $6728: $0d
	inc  bc                                          ; $6729: $03
	ld   a, [de]                                     ; $672a: $1a
	push hl                                          ; $672b: $e5
	rrca                                             ; $672c: $0f
	ld   bc, $0d84                                   ; $672d: $01 $84 $0d
	add  b                                           ; $6730: $80
	ld   bc, $0d83                                   ; $6731: $01 $83 $0d
	nop                                              ; $6734: $00
	db   $fc                                         ; $6735: $fc
	add  c                                           ; $6736: $81
	rst  $38                                         ; $6737: $ff
	ld   c, $bf                                      ; $6738: $0e $bf
	rst  $38                                         ; $673a: $ff
	ld   l, d                                        ; $673b: $6a
	rst  $38                                         ; $673c: $ff
	push de                                          ; $673d: $d5
	rst  $38                                         ; $673e: $ff
	cp   $ff                                         ; $673f: $fe $ff
	db   $fd                                         ; $6741: $fd
	rst  $38                                         ; $6742: $ff
	di                                               ; $6743: $f3
	rst  $38                                         ; $6744: $ff
	ldh  a, [rIE]                                    ; $6745: $f0 $ff
	pop  bc                                          ; $6747: $c1
	add  d                                           ; $6748: $82
	push af                                          ; $6749: $f5
	add  b                                           ; $674a: $80
	pop  bc                                          ; $674b: $c1
	add  l                                           ; $674c: $85
	push af                                          ; $674d: $f5
	nop                                              ; $674e: $00
	inc  l                                           ; $674f: $2c
	add  b                                           ; $6750: $80
	ld   a, a                                        ; $6751: $7f
	add  c                                           ; $6752: $81
	rst  $38                                         ; $6753: $ff
	ld   b, $fe                                      ; $6754: $06 $fe
	ld   a, a                                        ; $6756: $7f
	ld   a, l                                        ; $6757: $7d
	rst  $38                                         ; $6758: $ff
	cp   a                                           ; $6759: $bf
	rst  $38                                         ; $675a: $ff
	cp   a                                           ; $675b: $bf
	add  c                                           ; $675c: $81
	rst  $38                                         ; $675d: $ff
	nop                                              ; $675e: $00
	ld   h, b                                        ; $675f: $60
	add  d                                           ; $6760: $82
	call nc, $8480                                   ; $6761: $d4 $80 $84
	add  h                                           ; $6764: $84
	call nc, $8480                                   ; $6765: $d4 $80 $84
	ld   bc, $a0d4                                   ; $6768: $01 $d4 $a0
	add  e                                           ; $676b: $83
	ldh  a, [$84]                                    ; $676c: $f0 $84
	ldh  [$82], a                                    ; $676e: $e0 $82
	ret  nz                                          ; $6770: $c0

	sub  c                                           ; $6771: $91
	nop                                              ; $6772: $00
	add  d                                           ; $6773: $82
	ld   [$0080], sp                                 ; $6774: $08 $80 $00
	add  b                                           ; $6777: $80
	ld   [$0080], sp                                 ; $6778: $08 $80 $00
	add  d                                           ; $677b: $82
	ld   [$0184], sp                                 ; $677c: $08 $84 $01
	add  b                                           ; $677f: $80
	nop                                              ; $6780: $00
	add  d                                           ; $6781: $82
	ld   bc, $0080                                   ; $6782: $01 $80 $00
	add  b                                           ; $6785: $80
	ld   bc, $ff83                                   ; $6786: $01 $83 $ff
	ld   b, $af                                      ; $6789: $06 $af
	rst  $38                                         ; $678b: $ff
	ld   d, a                                        ; $678c: $57
	rst  $38                                         ; $678d: $ff
	and  a                                           ; $678e: $a7
	rst  $38                                         ; $678f: $ff
	ld   e, a                                        ; $6790: $5f
	add  c                                           ; $6791: $81
	rst  $38                                         ; $6792: $ff
	nop                                              ; $6793: $00
	cp   $82                                         ; $6794: $fe $82
	ld   hl, $0180                                   ; $6796: $21 $80 $01
	add  d                                           ; $6799: $82
	ld   hl, $0181                                   ; $679a: $21 $81 $01
	add  b                                           ; $679d: $80
	ld   de, $c400                                   ; $679e: $11 $00 $c4
	add  a                                           ; $67a1: $87
	db   $e4                                         ; $67a2: $e4
	add  b                                           ; $67a3: $80
	push hl                                          ; $67a4: $e5
	add  b                                           ; $67a5: $80
	db   $eb                                         ; $67a6: $eb
	ld   bc, $f7d7                                   ; $67a7: $01 $d7 $f7
	add  c                                           ; $67aa: $81
	nop                                              ; $67ab: $00
	add  b                                           ; $67ac: $80
	dec  b                                           ; $67ad: $05
	add  b                                           ; $67ae: $80
	ld   a, [bc]                                     ; $67af: $0a
	add  b                                           ; $67b0: $80
	ld   b, b                                        ; $67b1: $40
	add  b                                           ; $67b2: $80
	nop                                              ; $67b3: $00
	add  hl, bc                                      ; $67b4: $09
	pop  hl                                          ; $67b5: $e1
	ld   d, d                                        ; $67b6: $52
	rst  $30                                         ; $67b7: $f7
	inc  b                                           ; $67b8: $04

jr_07b_67b9:
	rst  $38                                         ; $67b9: $ff
	sbc  d                                           ; $67ba: $9a
	rst  $38                                         ; $67bb: $ff
	ret  c                                           ; $67bc: $d8

	ld   a, a                                        ; $67bd: $7f
	ld   a, l                                        ; $67be: $7d
	add  b                                           ; $67bf: $80
	ld   a, $80                                      ; $67c0: $3e $80
	ld   d, l                                        ; $67c2: $55
	add  b                                           ; $67c3: $80
	ld   a, [hl+]                                    ; $67c4: $2a
	add  c                                           ; $67c5: $81
	nop                                              ; $67c6: $00
	ld   a, [bc]                                     ; $67c7: $0a
	ld   [bc], a                                     ; $67c8: $02
	ld   h, d                                        ; $67c9: $62
	nop                                              ; $67ca: $00
	ldh  [rLCDC], a                                  ; $67cb: $e0 $40
	ret  nz                                          ; $67cd: $c0

	ld   [hl], b                                     ; $67ce: $70
	ldh  a, [hScriptOpcodeParams]                                    ; $67cf: $f0 $a0
	ldh  [$80], a                                    ; $67d1: $e0 $80
	add  c                                           ; $67d3: $81
	ld   b, b                                        ; $67d4: $40
	inc  b                                           ; $67d5: $04
	rrca                                             ; $67d6: $0f
	rst  $38                                         ; $67d7: $ff
	db   $e4                                         ; $67d8: $e4
	ccf                                              ; $67d9: $3f
	dec  hl                                          ; $67da: $2b
	add  b                                           ; $67db: $80
	dec  d                                           ; $67dc: $15
	add  b                                           ; $67dd: $80
	ld   a, [bc]                                     ; $67de: $0a
	add  b                                           ; $67df: $80
	inc  b                                           ; $67e0: $04
	add  b                                           ; $67e1: $80
	nop                                              ; $67e2: $00
	rlca                                             ; $67e3: $07
	ld   bc, $1011                                   ; $67e4: $01 $11 $10
	nop                                              ; $67e7: $00
	ld   hl, sp+$58                                  ; $67e8: $f8 $58
	or   $a7                                         ; $67ea: $f6 $a7

jr_07b_67ec:
	add  d                                           ; $67ec: $82
	dec  c                                           ; $67ed: $0d
	add  b                                           ; $67ee: $80
	ld   bc, $0d81                                   ; $67ef: $01 $81 $0d
	ld   bc, $060a                                   ; $67f2: $01 $0a $06
	add  d                                           ; $67f5: $82
	rrca                                             ; $67f6: $0f
	nop                                              ; $67f7: $00
	ccf                                              ; $67f8: $3f
	add  l                                           ; $67f9: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67fa: $cf
	add  b                                           ; $67fb: $80
	ret  z                                           ; $67fc: $c8

	add  b                                           ; $67fd: $80
	rst  JumpTable                                         ; $67fe: $df
	add  b                                           ; $67ff: $80
	ccf                                              ; $6800: $3f
	add  b                                           ; $6801: $80
	cp   $81                                         ; $6802: $fe $81
	pop  bc                                          ; $6804: $c1
	add  c                                           ; $6805: $81
	push af                                          ; $6806: $f5
	add  b                                           ; $6807: $80
	db   $fd                                         ; $6808: $fd
	ld   bc, $bf8b                                   ; $6809: $01 $8b $bf
	add  b                                           ; $680c: $80
	rst  $30                                         ; $680d: $f7
	add  b                                           ; $680e: $80
	ld   e, e                                        ; $680f: $5b
	add  b                                           ; $6810: $80
	add  b                                           ; $6811: $80
	add  d                                           ; $6812: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6813: $cf
	add  b                                           ; $6814: $80
	call z, $9b80                                    ; $6815: $cc $80 $9b
	add  b                                           ; $6818: $80
	xor  $80                                         ; $6819: $ee $80
	ld   d, b                                        ; $681b: $50
	add  c                                           ; $681c: $81
	nop                                              ; $681d: $00
	ld   [bc], a                                     ; $681e: $02
	inc  bc                                          ; $681f: $03
	rst  $10                                         ; $6820: $d7
	add  h                                           ; $6821: $84
	add  b                                           ; $6822: $80
	add  e                                           ; $6823: $83
	ld   bc, $faaa                                   ; $6824: $01 $aa $fa
	add  b                                           ; $6827: $80
	ld   e, c                                        ; $6828: $59
	add  e                                           ; $6829: $83
	nop                                              ; $682a: $00
	add  b                                           ; $682b: $80
	ccf                                              ; $682c: $3f
	ld   [bc], a                                     ; $682d: $02
	rst  $38                                         ; $682e: $ff
	ccf                                              ; $682f: $3f
	ret  nz                                          ; $6830: $c0

	add  b                                           ; $6831: $80
	ld   b, b                                        ; $6832: $40
	add  b                                           ; $6833: $80
	and  b                                           ; $6834: $a0
	add  b                                           ; $6835: $80
	jr   nz, jr_07b_67b9                             ; $6836: $20 $81

	nop                                              ; $6838: $00
	add  b                                           ; $6839: $80
	cp   $81                                         ; $683a: $fe $81
	rst  $38                                         ; $683c: $ff
	ld   bc, $9d62                                   ; $683d: $01 $62 $9d
	add  b                                           ; $6840: $80
	ld   b, d                                        ; $6841: $42
	add  a                                           ; $6842: $87
	nop                                              ; $6843: $00
	add  c                                           ; $6844: $81
	rst  $38                                         ; $6845: $ff
	ld   bc, $56a9                                   ; $6846: $01 $a9 $56
	add  b                                           ; $6849: $80
	ld   [bc], a                                     ; $684a: $02
	add  a                                           ; $684b: $87
	nop                                              ; $684c: $00
	add  b                                           ; $684d: $80
	ret  nz                                          ; $684e: $c0

	ld   [bc], a                                     ; $684f: $02
	rst  $38                                         ; $6850: $ff
	push hl                                          ; $6851: $e5
	ld   a, [de]                                     ; $6852: $1a
	add  b                                           ; $6853: $80
	ld   h, h                                        ; $6854: $64
	add  d                                           ; $6855: $82
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	ld   [bc], a                                     ; $6858: $02
	add  h                                           ; $6859: $84
	inc  bc                                          ; $685a: $03
	ld   [bc], a                                     ; $685b: $02
	ei                                               ; $685c: $fb
	add  hl, hl                                      ; $685d: $29
	ret  nc                                          ; $685e: $d0

	add  b                                           ; $685f: $80
	ld   e, d                                        ; $6860: $5a
	adc  c                                           ; $6861: $89
	nop                                              ; $6862: $00
	inc  bc                                          ; $6863: $03
	ldh  a, [$c9]                                    ; $6864: $f0 $c9
	dec  sp                                          ; $6866: $3b
	ld   a, [hl-]                                    ; $6867: $3a
	add  h                                           ; $6868: $84
	jr   c, jr_07b_67ec                              ; $6869: $38 $81

	inc  a                                           ; $686b: $3c
	ld   [$3f24], sp                                 ; $686c: $08 $24 $3f
	db   $10                                         ; $686f: $10
	ld   a, a                                        ; $6870: $7f
	adc  h                                           ; $6871: $8c
	rst  $38                                         ; $6872: $ff
	ld   d, e                                        ; $6873: $53
	ld   d, b                                        ; $6874: $50
	nop                                              ; $6875: $00
	add  b                                           ; $6876: $80
	inc  b                                           ; $6877: $04
	add  b                                           ; $6878: $80
	nop                                              ; $6879: $00
	add  b                                           ; $687a: $80
	inc  bc                                          ; $687b: $03
	dec  b                                           ; $687c: $05
	rrca                                             ; $687d: $0f
	db   $f4                                         ; $687e: $f4
	rst  $38                                         ; $687f: $ff
	ret  z                                           ; $6880: $c8

	rst  $38                                         ; $6881: $ff
	inc  sp                                          ; $6882: $33
	add  b                                           ; $6883: $80
	and  b                                           ; $6884: $a0
	add  d                                           ; $6885: $82
	nop                                              ; $6886: $00
	add  d                                           ; $6887: $82
	ret  nz                                          ; $6888: $c0

	dec  b                                           ; $6889: $05
	rst  $38                                         ; $688a: $ff
	jr   nz, @+$01                                   ; $688b: $20 $ff

	ld   d, a                                        ; $688d: $57
	rst  $38                                         ; $688e: $ff
	adc  a                                           ; $688f: $8f
	add  d                                           ; $6890: $82
	ld   h, a                                        ; $6891: $67
	add  h                                           ; $6892: $84
	rlca                                             ; $6893: $07
	dec  b                                           ; $6894: $05
	rst  ToBoot                                         ; $6895: $c7
	ld   b, a                                        ; $6896: $47
	rst  $30                                         ; $6897: $f7
	adc  c                                           ; $6898: $89
	rst  $38                                         ; $6899: $ff
	ld   b, $80                                      ; $689a: $06 $80
	dec  h                                           ; $689c: $25
	add  h                                           ; $689d: $84
	nop                                              ; $689e: $00
	add  b                                           ; $689f: $80
	rra                                              ; $68a0: $1f
	dec  b                                           ; $68a1: $05
	rst  $20                                         ; $68a2: $e7
	rst  $28                                         ; $68a3: $ef
	rst  $38                                         ; $68a4: $ff
	rst  $28                                         ; $68a5: $ef
	rst  JumpTable                                         ; $68a6: $df
	rst  ToBoot                                         ; $68a7: $c7
	add  b                                           ; $68a8: $80
	ld   d, h                                        ; $68a9: $54
	add  [hl]                                        ; $68aa: $86
	nop                                              ; $68ab: $00
	add  b                                           ; $68ac: $80
	ldh  a, [$81]                                    ; $68ad: $f0 $81
	rst  $38                                         ; $68af: $ff
	inc  l                                           ; $68b0: $2c
	ld   [bc], a                                     ; $68b1: $02
	add  [hl]                                        ; $68b2: $86
	nop                                              ; $68b3: $00
	add  [hl]                                        ; $68b4: $86
	rrca                                             ; $68b5: $0f
	add  [hl]                                        ; $68b6: $86
	nop                                              ; $68b7: $00
	add  [hl]                                        ; $68b8: $86
	rst  $38                                         ; $68b9: $ff
	add  [hl]                                        ; $68ba: $86
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	db   $fd                                         ; $68bd: $fd
	add  l                                           ; $68be: $85
	ld   a, $00                                      ; $68bf: $3e $00
	jp   $0085                                       ; $68c1: $c3 $85 $00


	ld   [bc], a                                     ; $68c4: $02
	rst  $28                                         ; $68c5: $ef
	ldh  a, [$e8]                                    ; $68c6: $f0 $e8
	add  c                                           ; $68c8: $81
	ld   hl, sp-$80                                  ; $68c9: $f8 $80
	ld   sp, hl                                      ; $68cb: $f9
	nop                                              ; $68cc: $00
	rrca                                             ; $68cd: $0f
	add  l                                           ; $68ce: $85
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	rst  $38                                         ; $68d1: $ff
	add  l                                           ; $68d2: $85
	ccf                                              ; $68d3: $3f
	nop                                              ; $68d4: $00
	ret  nz                                          ; $68d5: $c0

	add  l                                           ; $68d6: $85
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	rst  $38                                         ; $68d9: $ff
	add  b                                           ; $68da: $80
	cp   $83                                         ; $68db: $fe $83
	rst  $38                                         ; $68dd: $ff
	add  [hl]                                        ; $68de: $86
	nop                                              ; $68df: $00
	ld   bc, $10ef                                   ; $68e0: $01 $ef $10
	add  b                                           ; $68e3: $80
	nop                                              ; $68e4: $00
	add  b                                           ; $68e5: $80
	inc  b                                           ; $68e6: $04
	add  b                                           ; $68e7: $80

jr_07b_68e8:
	ld   [bc], a                                     ; $68e8: $02
	nop                                              ; $68e9: $00
	rst  $38                                         ; $68ea: $ff
	add  l                                           ; $68eb: $85
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	rst  $38                                         ; $68ee: $ff
	add  l                                           ; $68ef: $85
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	rst  $38                                         ; $68f2: $ff
	add  l                                           ; $68f3: $85
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00

jr_07b_68f6:
	rst  $38                                         ; $68f6: $ff
	add  l                                           ; $68f7: $85

jr_07b_68f8:
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	rst  $38                                         ; $68fa: $ff
	add  l                                           ; $68fb: $85

Call_07b_68fc:
	nop                                              ; $68fc: $00
	ld   bc, $6d92                                   ; $68fd: $01 $92 $6d
	add  b                                           ; $6900: $80
	ld   b, b                                        ; $6901: $40
	add  b                                           ; $6902: $80
	ccf                                              ; $6903: $3f
	add  c                                           ; $6904: $81
	rst  $38                                         ; $6905: $ff
	add  l                                           ; $6906: $85
	nop                                              ; $6907: $00
	ld   bc, $df20                                   ; $6908: $01 $20 $df
	add  d                                           ; $690b: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $690c: $cf
	add  b                                           ; $690d: $80
	rst  $30                                         ; $690e: $f7
	nop                                              ; $690f: $00
	rst  $38                                         ; $6910: $ff
	add  [hl]                                        ; $6911: $86
	nop                                              ; $6912: $00
	add  [hl]                                        ; $6913: $86
	rst  $38                                         ; $6914: $ff
	add  l                                           ; $6915: $85
	nop                                              ; $6916: $00
	ld   bc, $fe01                                   ; $6917: $01 $01 $fe
	add  b                                           ; $691a: $80
	db   $fd                                         ; $691b: $fd
	add  b                                           ; $691c: $80
	ei                                               ; $691d: $fb
	ld   [bc], a                                     ; $691e: $02
	rst  $30                                         ; $691f: $f7
	or   $fe                                         ; $6920: $f6 $fe
	add  l                                           ; $6922: $85
	nop                                              ; $6923: $00
	inc  bc                                          ; $6924: $03
	ld   b, b                                        ; $6925: $40
	ret  nz                                          ; $6926: $c0

	nop                                              ; $6927: $00
	add  b                                           ; $6928: $80
	sbc  d                                           ; $6929: $9a
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	cp   b                                           ; $692c: $b8
	add  c                                           ; $692d: $81
	rst  ToBoot                                         ; $692e: $c7
	add  b                                           ; $692f: $80
	call nz, $c580                                   ; $6930: $c4 $80 $c5
	nop                                              ; $6933: $00
	ld   [hl], b                                     ; $6934: $70
	adc  l                                           ; $6935: $8d
	rrca                                             ; $6936: $0f
	adc  [hl]                                        ; $6937: $8e
	rst  $38                                         ; $6938: $ff
	nop                                              ; $6939: $00
	db   $fd                                         ; $693a: $fd
	add  d                                           ; $693b: $82
	ld   a, $05                                      ; $693c: $3e $05
	ld   c, $3e                                      ; $693e: $0e $3e
	ld   [hl-], a                                    ; $6940: $32
	inc  c                                           ; $6941: $0c
	inc  a                                           ; $6942: $3c
	ld   [hl-], a                                    ; $6943: $32
	add  e                                           ; $6944: $83
	ld   a, $01                                      ; $6945: $3e $01
	dec  [hl]                                        ; $6947: $35
	ld   sp, hl                                      ; $6948: $f9
	add  d                                           ; $6949: $82
	jp   hl                                          ; $694a: $e9


	add  b                                           ; $694b: $80
	reti                                             ; $694c: $d9


	ld   [$39f9], sp                                 ; $694d: $08 $f9 $39
	cp   c                                           ; $6950: $b9
	adc  c                                           ; $6951: $89
	ld   [hl], c                                     ; $6952: $71
	or   c                                           ; $6953: $b1
	add  hl, hl                                      ; $6954: $29
	add  hl, de                                      ; $6955: $19
	ldh  a, [$8d]                                    ; $6956: $f0 $8d
	ccf                                              ; $6958: $3f
	ld   [bc], a                                     ; $6959: $02
	sub  b                                           ; $695a: $90
	or   b                                           ; $695b: $b0
	and  b                                           ; $695c: $a0
	adc  e                                           ; $695d: $8b
	or   b                                           ; $695e: $b0
	ld   bc, $010e                                   ; $695f: $01 $0e $01
	add  e                                           ; $6962: $83
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	jr   nz, jr_07b_68e8                             ; $6965: $20 $81

	jr   nc, jr_07b_6969                             ; $6967: $30 $00

jr_07b_6969:
	inc  [hl]                                        ; $6969: $34
	add  d                                           ; $696a: $82
	scf                                              ; $696b: $37
	ld   bc, $0024                                   ; $696c: $01 $24 $00
	add  b                                           ; $696f: $80
	add  b                                           ; $6970: $80
	add  d                                           ; $6971: $82
	nop                                              ; $6972: $00

jr_07b_6973:
	add  b                                           ; $6973: $80
	jr   nz, jr_07b_68f6                             ; $6974: $20 $80

	jr   jr_07b_68f8                                 ; $6976: $18 $80

	ld   c, $06                                      ; $6978: $0e $06
	rlca                                             ; $697a: $07
	ld   b, a                                        ; $697b: $47
	ld   b, b                                        ; $697c: $40
	inc  bc                                          ; $697d: $03
	ld   [bc], a                                     ; $697e: $02
	nop                                              ; $697f: $00
	ld   bc, $0087                                   ; $6980: $01 $87 $00
	add  b                                           ; $6983: $80
	cp   $02                                         ; $6984: $fe $02
	nop                                              ; $6986: $00
	rst  $38                                         ; $6987: $ff
	ccf                                              ; $6988: $3f
	add  c                                           ; $6989: $81
	ld   a, $03                                      ; $698a: $3e $03
	sbc  $5c                                         ; $698c: $de $5c
	ld   a, h                                        ; $698e: $7c
	nop                                              ; $698f: $00
	add  d                                           ; $6990: $82
	inc  bc                                          ; $6991: $03
	add  b                                           ; $6992: $80
	ld   bc, $f780                                   ; $6993: $01 $80 $f7
	add  b                                           ; $6996: $80
	inc  de                                          ; $6997: $13
	add  b                                           ; $6998: $80
	daa                                              ; $6999: $27
	add  b                                           ; $699a: $80
	ld   c, a                                        ; $699b: $4f
	add  b                                           ; $699c: $80
	ccf                                              ; $699d: $3f
	adc  [hl]                                        ; $699e: $8e
	rst  $38                                         ; $699f: $ff
	add  b                                           ; $69a0: $80
	cp   $80                                         ; $69a1: $fe $80
	db   $fd                                         ; $69a3: $fd
	add  b                                           ; $69a4: $80
	ei                                               ; $69a5: $fb
	ld   [bc], a                                     ; $69a6: $02
	rst  $28                                         ; $69a7: $ef
	db   $ec                                         ; $69a8: $ec
	call c, $d880                                    ; $69a9: $dc $80 $d8
	ld   [bc], a                                     ; $69ac: $02
	ret  nc                                          ; $69ad: $d0

	and  b                                           ; $69ae: $a0
	or   b                                           ; $69af: $b0
	add  b                                           ; $69b0: $80
	ld   h, b                                        ; $69b1: $60
	nop                                              ; $69b2: $00
	ldh  [$80], a                                    ; $69b3: $e0 $80
	ret  nz                                          ; $69b5: $c0

	ld   [bc], a                                     ; $69b6: $02
	add  b                                           ; $69b7: $80
	add  c                                           ; $69b8: $81
	ld   bc, $008a                                   ; $69b9: $01 $8a $00
	inc  b                                           ; $69bc: $04
	ld   [hl], b                                     ; $69bd: $70
	ld   h, b                                        ; $69be: $60
	and  b                                           ; $69bf: $a0
	ldh  [$91], a                                    ; $69c0: $e0 $91
	add  e                                           ; $69c2: $83
	ld   a, $80                                      ; $69c3: $3e $80
	ld   e, $80                                      ; $69c5: $1e $80
	and  $80                                         ; $69c7: $e6 $80
	ld   a, b                                        ; $69c9: $78
	add  b                                           ; $69ca: $80
	sbc  $80                                         ; $69cb: $de $80
	ldh  a, [c]                                      ; $69cd: $f2
	nop                                              ; $69ce: $00
	ld   b, l                                        ; $69cf: $45
	adc  l                                           ; $69d0: $8d
	push bc                                          ; $69d1: $c5
	nop                                              ; $69d2: $00
	db   $ed                                         ; $69d3: $ed
	adc  l                                           ; $69d4: $8d
	ld   l, l                                        ; $69d5: $6d
	inc  b                                           ; $69d6: $04
	cp   a                                           ; $69d7: $bf
	or   b                                           ; $69d8: $b0
	sub  b                                           ; $69d9: $90
	or   b                                           ; $69da: $b0
	and  b                                           ; $69db: $a0
	adc  c                                           ; $69dc: $89
	or   b                                           ; $69dd: $b0
	ld   bc, $3e3d                                   ; $69de: $01 $3d $3e
	add  b                                           ; $69e1: $80
	ld   a, [hl-]                                    ; $69e2: $3a
	add  b                                           ; $69e3: $80
	ld   [hl-], a                                    ; $69e4: $32
	add  b                                           ; $69e5: $80
	ld   [hl+], a                                    ; $69e6: $22
	add  b                                           ; $69e7: $80

jr_07b_69e8:
	ld   [bc], a                                     ; $69e8: $02
	add  b                                           ; $69e9: $80
	ld   b, $80                                      ; $69ea: $06 $80
	ld   [hl], $03                                   ; $69ec: $36 $03
	ld   [hl-], a                                    ; $69ee: $32
	ld   [bc], a                                     ; $69ef: $02
	db   $e4                                         ; $69f0: $e4
	jr   jr_07b_6973                                 ; $69f1: $18 $80

	jr   c, @-$7e                                    ; $69f3: $38 $80

	ld   a, c                                        ; $69f5: $79
	adc  b                                           ; $69f6: $88
	ld   sp, hl                                      ; $69f7: $f9
	nop                                              ; $69f8: $00
	adc  [hl]                                        ; $69f9: $8e
	adc  l                                           ; $69fa: $8d
	ld   a, [hl]                                     ; $69fb: $7e
	nop                                              ; $69fc: $00
	ret                                              ; $69fd: $c9


	adc  l                                           ; $69fe: $8d
	reti                                             ; $69ff: $d9


	ld   bc, $1703                                   ; $6a00: $01 $03 $17
	add  c                                           ; $6a03: $81
	rlca                                             ; $6a04: $07
	nop                                              ; $6a05: $00
	inc  bc                                          ; $6a06: $03
	add  b                                           ; $6a07: $80
	ld   bc, $0081                                   ; $6a08: $01 $81 $00
	ld   [bc], a                                     ; $6a0b: $02
	jr   nz, jr_07b_6a3e                             ; $6a0c: $20 $30

	inc  [hl]                                        ; $6a0e: $34
	add  b                                           ; $6a0f: $80
	scf                                              ; $6a10: $37
	nop                                              ; $6a11: $00
	inc  h                                           ; $6a12: $24
	add  b                                           ; $6a13: $80
	ld   h, b                                        ; $6a14: $60
	add  b                                           ; $6a15: $80
	ld   [hl], b                                     ; $6a16: $70
	add  b                                           ; $6a17: $80
	ld   a, b                                        ; $6a18: $78
	nop                                              ; $6a19: $00
	ld   a, e                                        ; $6a1a: $7b
	add  [hl]                                        ; $6a1b: $86
	ld   a, a                                        ; $6a1c: $7f
	nop                                              ; $6a1d: $00
	ld   a, e                                        ; $6a1e: $7b
	add  h                                           ; $6a1f: $84
	nop                                              ; $6a20: $00
	add  l                                           ; $6a21: $85
	rst  $38                                         ; $6a22: $ff
	inc  bc                                          ; $6a23: $03
	ldh  [rIE], a                                    ; $6a24: $e0 $ff
	ldh  [rP1], a                                    ; $6a26: $e0 $00
	add  b                                           ; $6a28: $80
	ld   l, a                                        ; $6a29: $6f
	ld   b, $73                                      ; $6a2a: $06 $73
	ld   c, a                                        ; $6a2c: $4f
	dec  h                                           ; $6a2d: $25
	add  a                                           ; $6a2e: $87
	sbc  [hl]                                        ; $6a2f: $9e
	ldh  a, [$f1]                                    ; $6a30: $f0 $f1
	add  c                                           ; $6a32: $81
	cp   $01                                         ; $6a33: $fe $01
	nop                                              ; $6a35: $00
	rst  $38                                         ; $6a36: $ff
	add  b                                           ; $6a37: $80
	nop                                              ; $6a38: $00
	add  b                                           ; $6a39: $80
	ret  nz                                          ; $6a3a: $c0

	add  b                                           ; $6a3b: $80
	sbc  a                                           ; $6a3c: $9f
	inc  b                                           ; $6a3d: $04

jr_07b_6a3e:
	rra                                              ; $6a3e: $1f
	nop                                              ; $6a3f: $00
	jr   nz, jr_07b_6a42                             ; $6a40: $20 $00

jr_07b_6a42:
	ret  nz                                          ; $6a42: $c0

	add  d                                           ; $6a43: $82
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	cp   $80                                         ; $6a46: $fe $80
	ld   [bc], a                                     ; $6a48: $02
	ld   [bc], a                                     ; $6a49: $02
	ld   b, $04                                      ; $6a4a: $06 $04
	db   $f4                                         ; $6a4c: $f4
	add  b                                           ; $6a4d: $80
	ldh  a, [$87]                                    ; $6a4e: $f0 $87
	ld   [$0209], sp                                 ; $6a50: $08 $09 $02
	inc  bc                                          ; $6a53: $03
	dec  b                                           ; $6a54: $05
	rlca                                             ; $6a55: $07
	db   $10                                         ; $6a56: $10
	inc  e                                           ; $6a57: $1c
	jr   z, jr_07b_6a92                              ; $6a58: $28 $38

	ld   bc, $8061                                   ; $6a5a: $01 $61 $80
	ld   b, e                                        ; $6a5d: $43

jr_07b_6a5e:
	add  b                                           ; $6a5e: $80
	ld   c, a                                        ; $6a5f: $4f
	add  b                                           ; $6a60: $80
	ld   e, h                                        ; $6a61: $5c
	ld   bc, $a00f                                   ; $6a62: $01 $0f $a0
	add  d                                           ; $6a65: $82
	jr   nz, jr_07b_69e8                             ; $6a66: $20 $80

	and  b                                           ; $6a68: $a0
	nop                                              ; $6a69: $00
	add  b                                           ; $6a6a: $80
	add  e                                           ; $6a6b: $83
	and  b                                           ; $6a6c: $a0
	add  b                                           ; $6a6d: $80
	jr   nz, jr_07b_6a70                             ; $6a6e: $20 $00

jr_07b_6a70:
	dec  c                                           ; $6a70: $0d
	add  e                                           ; $6a71: $83
	ld   a, $00                                      ; $6a72: $3e $00
	ld   a, [hl-]                                    ; $6a74: $3a
	add  e                                           ; $6a75: $83
	ld   a, $04                                      ; $6a76: $3e $04
	ld   [hl], $3e                                   ; $6a78: $36 $3e
	cp   [hl]                                        ; $6a7a: $be
	adc  [hl]                                        ; $6a7b: $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a7c: $cf
	add  c                                           ; $6a7d: $81
	call c, $1c80                                    ; $6a7e: $dc $80 $1c
	add  h                                           ; $6a81: $84
	call c, $1c80                                    ; $6a82: $dc $80 $1c
	add  b                                           ; $6a85: $80
	call c, $930a                                    ; $6a86: $dc $0a $93
	rst  $38                                         ; $6a89: $ff
	rlca                                             ; $6a8a: $07
	rst  $38                                         ; $6a8b: $ff
	add  b                                           ; $6a8c: $80
	rst  $38                                         ; $6a8d: $ff
	cp   b                                           ; $6a8e: $b8
	ld   a, a                                        ; $6a8f: $7f
	ld   d, e                                        ; $6a90: $53
	ld   l, a                                        ; $6a91: $6f

jr_07b_6a92:
	ld   l, [hl]                                     ; $6a92: $6e
	add  e                                           ; $6a93: $83
	ld   l, l                                        ; $6a94: $6d
	ld   bc, $807f                                   ; $6a95: $01 $7f $80
	add  b                                           ; $6a98: $80
	ldh  a, [$08]                                    ; $6a99: $f0 $08
	ld   [hl], b                                     ; $6a9b: $70
	ldh  a, [rP1]                                    ; $6a9c: $f0 $00
	ldh  a, [$80]                                    ; $6a9e: $f0 $80
	ldh  a, [rSVBK]                                  ; $6aa0: $f0 $70
	ldh  a, [$c0]                                    ; $6aa2: $f0 $c0
	add  c                                           ; $6aa4: $81
	or   b                                           ; $6aa5: $b0
	inc  b                                           ; $6aa6: $04
	dec  a                                           ; $6aa7: $3d
	ld   [hl-], a                                    ; $6aa8: $32
	ld   c, $3e                                      ; $6aa9: $0e $3e
	ld   [hl-], a                                    ; $6aab: $32
	add  e                                           ; $6aac: $83
	ld   a, $80                                      ; $6aad: $3e $80
	ld   a, [hl-]                                    ; $6aaf: $3a
	add  b                                           ; $6ab0: $80
	ld   [hl-], a                                    ; $6ab1: $32
	add  b                                           ; $6ab2: $80
	ld   h, $07                                      ; $6ab3: $26 $07
	dec  [hl]                                        ; $6ab5: $35
	add  hl, de                                      ; $6ab6: $19
	reti                                             ; $6ab7: $d9


	ret                                              ; $6ab8: $c9


	add  hl, sp                                      ; $6ab9: $39
	ld   sp, hl                                      ; $6aba: $f9
	add  hl, bc                                      ; $6abb: $09
	add  hl, sp                                      ; $6abc: $39
	add  b                                           ; $6abd: $80
	ld   a, b                                        ; $6abe: $78
	add  b                                           ; $6abf: $80
	ld   hl, sp-$80                                  ; $6ac0: $f8 $80
	jp   hl                                          ; $6ac2: $e9


	add  b                                           ; $6ac3: $80
	reti                                             ; $6ac4: $d9


	ld   bc, $0fff                                   ; $6ac5: $01 $ff $0f
	add  b                                           ; $6ac8: $80
	add  c                                           ; $6ac9: $81
	add  b                                           ; $6aca: $80
	nop                                              ; $6acb: $00
	add  b                                           ; $6acc: $80
	ld   b, b                                        ; $6acd: $40
	add  b                                           ; $6ace: $80
	ld   [hl], b                                     ; $6acf: $70
	add  b                                           ; $6ad0: $80
	ld   a, h                                        ; $6ad1: $7c
	add  d                                           ; $6ad2: $82
	ld   a, [hl]                                     ; $6ad3: $7e
	ld   b, $cb                                      ; $6ad4: $06 $cb
	db   $db                                         ; $6ad6: $db
	ret  c                                           ; $6ad7: $d8

	db   $db                                         ; $6ad8: $db
	ld   e, e                                        ; $6ad9: $5b
	ld   e, c                                        ; $6ada: $59
	jr   jr_07b_6a5e                                 ; $6adb: $18 $81

	add  hl, de                                      ; $6add: $19
	add  b                                           ; $6ade: $80
	sbc  c                                           ; $6adf: $99
	add  d                                           ; $6ae0: $82
	reti                                             ; $6ae1: $d9


	nop                                              ; $6ae2: $00
	inc  bc                                          ; $6ae3: $03
	add  b                                           ; $6ae4: $80
	scf                                              ; $6ae5: $37
	inc  b                                           ; $6ae6: $04
	rla                                              ; $6ae7: $17
	rlca                                             ; $6ae8: $07
	inc  hl                                          ; $6ae9: $23
	jr   nc, jr_07b_6b20                             ; $6aea: $30 $34

	add  h                                           ; $6aec: $84
	scf                                              ; $6aed: $37
	ld   [bc], a                                     ; $6aee: $02
	daa                                              ; $6aef: $27
	rlca                                             ; $6af0: $07
	nop                                              ; $6af1: $00
	adc  l                                           ; $6af2: $8d
	ld   a, a                                        ; $6af3: $7f
	ld   bc, $f06b                                   ; $6af4: $01 $6b $f0
	add  b                                           ; $6af7: $80
	db   $f4                                         ; $6af8: $f4
	adc  d                                           ; $6af9: $8a
	push af                                          ; $6afa: $f5
	nop                                              ; $6afb: $00
	ldh  [$81], a                                    ; $6afc: $e0 $81
	nop                                              ; $6afe: $00
	add  b                                           ; $6aff: $80
	rst  $38                                         ; $6b00: $ff
	nop                                              ; $6b01: $00
	ld   [$fb83], sp                                 ; $6b02: $08 $83 $fb
	add  b                                           ; $6b05: $80
	ld   a, [$0c03]                                  ; $6b06: $fa $03 $0c
	rst  $38                                         ; $6b09: $ff
	inc  bc                                          ; $6b0a: $03
	ld   [bc], a                                     ; $6b0b: $02
	add  b                                           ; $6b0c: $80
	ld   a, [bc]                                     ; $6b0d: $0a
	add  b                                           ; $6b0e: $80
	ld   [$2a01], a                                  ; $6b0f: $ea $01 $2a
	ld   [$aa80], a                                  ; $6b12: $ea $80 $aa
	add  e                                           ; $6b15: $83
	ld   a, [hl+]                                    ; $6b16: $2a
	ld   bc, $f6ea                                   ; $6b17: $01 $ea $f6
	adc  l                                           ; $6b1a: $8d
	ld   [$2c01], sp                                 ; $6b1b: $08 $01 $2c
	ld   d, e                                        ; $6b1e: $53
	add  b                                           ; $6b1f: $80

jr_07b_6b20:
	ld   c, [hl]                                     ; $6b20: $4e
	add  b                                           ; $6b21: $80
	ld   c, c                                        ; $6b22: $49
	nop                                              ; $6b23: $00
	ld   d, c                                        ; $6b24: $51
	add  [hl]                                        ; $6b25: $86
	ld   d, l                                        ; $6b26: $55
	ld   bc, $af51                                   ; $6b27: $01 $51 $af
	adc  l                                           ; $6b2a: $8d
	jr   nz, @+$08                                   ; $6b2b: $20 $06

	ld   a, a                                        ; $6b2d: $7f
	ld   a, [hl]                                     ; $6b2e: $7e
	adc  [hl]                                        ; $6b2f: $8e
	cp   $6e                                         ; $6b30: $fe $6e
	ldh  a, [$e0]                                    ; $6b32: $f0 $e0
	add  b                                           ; $6b34: $80
	rrca                                             ; $6b35: $0f
	add  d                                           ; $6b36: $82
	rst  $38                                         ; $6b37: $ff
	ld   b, $f8                                      ; $6b38: $06 $f8
	ld   sp, hl                                      ; $6b3a: $f9
	ld   bc, $c545                                   ; $6b3b: $01 $45 $c5
	pop  bc                                          ; $6b3e: $c1
	push bc                                          ; $6b3f: $c5
	add  e                                           ; $6b40: $83
	call nz, $c784                                   ; $6b41: $c4 $84 $c7
	dec  b                                           ; $6b44: $05
	call nz, $8e08                                   ; $6b45: $c4 $08 $8e
	cp   d                                           ; $6b48: $ba
	cp   [hl]                                        ; $6b49: $be
	add  [hl]                                        ; $6b4a: $86
	add  b                                           ; $6b4b: $80
	cp   [hl]                                        ; $6b4c: $be
	nop                                              ; $6b4d: $00
	cp   d                                           ; $6b4e: $ba
	add  b                                           ; $6b4f: $80
	xor  d                                           ; $6b50: $aa
	add  d                                           ; $6b51: $82
	cp   d                                           ; $6b52: $ba
	add  b                                           ; $6b53: $80
	xor  d                                           ; $6b54: $aa
	nop                                              ; $6b55: $00
	push af                                          ; $6b56: $f5
	adc  l                                           ; $6b57: $8d
	call c, $0101                                    ; $6b58: $dc $01 $01
	ld   l, $82                                      ; $6b5b: $2e $82
	ld   a, $80                                      ; $6b5d: $3e $80
	ld   a, [hl-]                                    ; $6b5f: $3a
	add  b                                           ; $6b60: $80
	ld   [hl], $80                                   ; $6b61: $36 $80
	ld   l, $01                                      ; $6b63: $2e $01
	ld   a, $02                                      ; $6b65: $3e $02
	add  b                                           ; $6b67: $80
	ld   a, $01                                      ; $6b68: $3e $01
	ld   c, c                                        ; $6b6a: $49
	cp   c                                           ; $6b6b: $b9
	add  d                                           ; $6b6c: $82
	ld   a, c                                        ; $6b6d: $79
	add  b                                           ; $6b6e: $80
	ld   sp, hl                                      ; $6b6f: $f9
	add  b                                           ; $6b70: $80
	add  hl, sp                                      ; $6b71: $39
	ld   bc, $f101                                   ; $6b72: $01 $01 $f1
	add  b                                           ; $6b75: $80
	ld   bc, $c902                                   ; $6b76: $01 $02 $c9
	add  hl, sp                                      ; $6b79: $39
	ccf                                              ; $6b7a: $3f
	add  l                                           ; $6b7b: $85
	call c, $1c82                                    ; $6b7c: $dc $82 $1c
	add  b                                           ; $6b7f: $80
	db   $db                                         ; $6b80: $db
	ld   [bc], a                                     ; $6b81: $02
	ret  c                                           ; $6b82: $d8

	db   $db                                         ; $6b83: $db
	rst  $28                                         ; $6b84: $ef
	adc  c                                           ; $6b85: $89
	nop                                              ; $6b86: $00
	add  b                                           ; $6b87: $80
	add  b                                           ; $6b88: $80
	add  b                                           ; $6b89: $80
	ld   hl, sp+$02                                  ; $6b8a: $f8 $02
	rst  $28                                         ; $6b8c: $ef
	jr   nc, jr_07b_6bc2                             ; $6b8d: $30 $33

	add  l                                           ; $6b8f: $85
	scf                                              ; $6b90: $37
	inc  bc                                          ; $6b91: $03
	dec  h                                           ; $6b92: $25
	ld   bc, $3612                                   ; $6b93: $01 $12 $36
	add  b                                           ; $6b96: $80
	scf                                              ; $6b97: $37
	ld   bc, $20fb                                   ; $6b98: $01 $fb $20
	add  b                                           ; $6b9b: $80
	db   $10                                         ; $6b9c: $10
	add  b                                           ; $6b9d: $80
	jr   nz, jr_07b_6b20                             ; $6b9e: $20 $80

	db   $10                                         ; $6ba0: $10
	add  b                                           ; $6ba1: $80
	nop                                              ; $6ba2: $00
	add  b                                           ; $6ba3: $80
	db   $10                                         ; $6ba4: $10
	add  b                                           ; $6ba5: $80
	nop                                              ; $6ba6: $00
	add  b                                           ; $6ba7: $80
	stop                                             ; $6ba8: $10 $00
	ld   [$f58d], a                                  ; $6baa: $ea $8d $f5
	nop                                              ; $6bad: $00
	add  sp, -$77                                    ; $6bae: $e8 $89
	ei                                               ; $6bb0: $fb
	inc  b                                           ; $6bb1: $04
	inc  c                                           ; $6bb2: $0c
	rst  $38                                         ; $6bb3: $ff
	ld   [$d8fb], sp                                 ; $6bb4: $08 $fb $d8
	add  l                                           ; $6bb7: $85
	ld   [$aa80], a                                  ; $6bb8: $ea $80 $aa
	add  c                                           ; $6bbb: $81
	ld   a, [hl+]                                    ; $6bbc: $2a
	inc  b                                           ; $6bbd: $04
	ld   [$ea2a], a                                  ; $6bbe: $ea $2a $ea

jr_07b_6bc1:
	or   c                                           ; $6bc1: $b1

jr_07b_6bc2:
	ld   [hl], b                                     ; $6bc2: $70
	add  b                                           ; $6bc3: $80
	cp   $80                                         ; $6bc4: $fe $80
	ccf                                              ; $6bc6: $3f
	add  b                                           ; $6bc7: $80
	inc  bc                                          ; $6bc8: $03
	add  b                                           ; $6bc9: $80
	ldh  a, [$80]                                    ; $6bca: $f0 $80
	cp   $80                                         ; $6bcc: $fe $80
	rst  $38                                         ; $6bce: $ff
	add  b                                           ; $6bcf: $80
	ld   a, a                                        ; $6bd0: $7f
	ld   bc, $5fdf                                   ; $6bd1: $01 $df $5f
	add  b                                           ; $6bd4: $80
	ld   d, b                                        ; $6bd5: $50
	add  d                                           ; $6bd6: $82
	ld   c, a                                        ; $6bd7: $4f
	add  b                                           ; $6bd8: $80
	ld   b, c                                        ; $6bd9: $41
	add  h                                           ; $6bda: $84
	ld   b, l                                        ; $6bdb: $45
	ld   bc, $ff7f                                   ; $6bdc: $01 $7f $ff
	add  b                                           ; $6bdf: $80
	ld   a, a                                        ; $6be0: $7f
	add  e                                           ; $6be1: $83
	nop                                              ; $6be2: $00
	add  l                                           ; $6be3: $85
	ld   a, $01                                      ; $6be4: $3e $01
	or   c                                           ; $6be6: $b1
	sbc  h                                           ; $6be7: $9c
	add  b                                           ; $6be8: $80
	ld   e, h                                        ; $6be9: $5c
	adc  d                                           ; $6bea: $8a
	call c, Call_07b_5301                            ; $6beb: $dc $01 $53
	call nz, $c58c                                   ; $6bee: $c4 $8c $c5
	nop                                              ; $6bf1: $00
	ld   a, e                                        ; $6bf2: $7b
	add  l                                           ; $6bf3: $85
	nop                                              ; $6bf4: $00
	add  b                                           ; $6bf5: $80
	and  b                                           ; $6bf6: $a0
	add  b                                           ; $6bf7: $80
	ld   d, b                                        ; $6bf8: $50
	add  b                                           ; $6bf9: $80
	and  b                                           ; $6bfa: $a0
	add  b                                           ; $6bfb: $80
	ld   d, b                                        ; $6bfc: $50
	ld   bc, $aa6f                                   ; $6bfd: $01 $6f $aa
	add  c                                           ; $6c00: $81
	cp   d                                           ; $6c01: $ba
	add  b                                           ; $6c02: $80
	and  d                                           ; $6c03: $a2
	add  e                                           ; $6c04: $83
	cp   [hl]                                        ; $6c05: $be
	dec  b                                           ; $6c06: $05
	jr   nc, jr_07b_6c47                             ; $6c07: $30 $3e

	jr   nc, jr_07b_6c0b                             ; $6c09: $30 $00

jr_07b_6c0b:
	ld   [bc], a                                     ; $6c0b: $02
	ld   a, $80                                      ; $6c0c: $3e $80
	ld   a, [hl-]                                    ; $6c0e: $3a
	add  b                                           ; $6c0f: $80
	ld   [hl-], a                                    ; $6c10: $32
	add  b                                           ; $6c11: $80
	ld   [hl+], a                                    ; $6c12: $22

jr_07b_6c13:
	add  d                                           ; $6c13: $82
	ld   [bc], a                                     ; $6c14: $02
	add  b                                           ; $6c15: $80
	ld   c, $80                                      ; $6c16: $0e $80
	ld   a, [de]                                     ; $6c18: $1a
	ld   bc, $38f4                                   ; $6c19: $01 $f4 $38
	add  b                                           ; $6c1c: $80
	jr   @-$7e                                       ; $6c1d: $18 $80

	ld   a, b                                        ; $6c1f: $78
	add  b                                           ; $6c20: $80
	add  hl, bc                                      ; $6c21: $09
	add  d                                           ; $6c22: $82
	add  hl, de                                      ; $6c23: $19
	add  b                                           ; $6c24: $80
	add  hl, bc                                      ; $6c25: $09
	add  b                                           ; $6c26: $80
	add  hl, de                                      ; $6c27: $19
	nop                                              ; $6c28: $00
	rrca                                             ; $6c29: $0f
	add  a                                           ; $6c2a: $87
	nop                                              ; $6c2b: $00
	add  b                                           ; $6c2c: $80
	ld   bc, $0082                                   ; $6c2d: $01 $82 $00
	adc  h                                           ; $6c30: $8c
	rst  $38                                         ; $6c31: $ff
	inc  bc                                          ; $6c32: $03
	ld   hl, sp-$01                                  ; $6c33: $f8 $ff
	db   $eb                                         ; $6c35: $eb
	scf                                              ; $6c36: $37
	add  d                                           ; $6c37: $82
	rla                                              ; $6c38: $17
	inc  bc                                          ; $6c39: $03
	ld   [hl-], a                                    ; $6c3a: $32
	ld   [hl], $14                                   ; $6c3b: $36 $14
	inc  [hl]                                        ; $6c3d: $34
	add  b                                           ; $6c3e: $80
	jr   nz, jr_07b_6bc1                             ; $6c3f: $20 $80

	ld   [bc], a                                     ; $6c41: $02
	add  b                                           ; $6c42: $80
	ld   a, [hl+]                                    ; $6c43: $2a
	rlca                                             ; $6c44: $07
	nop                                              ; $6c45: $00

jr_07b_6c46:
	ld   a, e                                        ; $6c46: $7b

jr_07b_6c47:
	ld   a, b                                        ; $6c47: $78
	ld   a, e                                        ; $6c48: $7b
	ld   c, b                                        ; $6c49: $48
	ld   [hl], b                                     ; $6c4a: $70
	ld   [$8048], sp                                 ; $6c4b: $08 $48 $80

jr_07b_6c4e:
	add  hl, hl                                      ; $6c4e: $29
	add  h                                           ; $6c4f: $84
	xor  c                                           ; $6c50: $a9
	inc  bc                                          ; $6c51: $03
	dec  d                                           ; $6c52: $15
	push af                                          ; $6c53: $f5
	dec  [hl]                                        ; $6c54: $35
	push de                                          ; $6c55: $d5
	add  d                                           ; $6c56: $82
	dec  d                                           ; $6c57: $15
	add  [hl]                                        ; $6c58: $86
	ld   d, l                                        ; $6c59: $55
	nop                                              ; $6c5a: $00
	ld   [$fb85], sp                                 ; $6c5b: $08 $85 $fb
	ld   [bc], a                                     ; $6c5e: $02
	inc  c                                           ; $6c5f: $0c
	rst  $38                                         ; $6c60: $ff
	ld   [$fb83], sp                                 ; $6c61: $08 $83 $fb
	inc  bc                                          ; $6c64: $03
	ret  c                                           ; $6c65: $d8

	ld   [$eaeb], a                                  ; $6c66: $ea $eb $ea
	add  d                                           ; $6c69: $82
	xor  d                                           ; $6c6a: $aa
	ld   [bc], a                                     ; $6c6b: $02
	ld   a, [hl+]                                    ; $6c6c: $2a
	ld   [$832a], a                                  ; $6c6d: $ea $2a $83
	ld   [$3f05], a                                  ; $6c70: $ea $05 $3f
	ld   [$fe0a], sp                                 ; $6c73: $08 $0a $fe
	nop                                              ; $6c76: $00
	inc  bc                                          ; $6c77: $03
	add  b                                           ; $6c78: $80
	nop                                              ; $6c79: $00
	add  [hl]                                        ; $6c7a: $86
	and  l                                           ; $6c7b: $a5
	ld   bc, $45c5                                   ; $6c7c: $01 $c5 $45
	add  b                                           ; $6c7f: $80
	ld   b, c                                        ; $6c80: $41
	ld   bc, $cf4f                                   ; $6c81: $01 $4f $cf
	add  b                                           ; $6c84: $80
	ld   b, a                                        ; $6c85: $47
	add  b                                           ; $6c86: $80
	ld   e, b                                        ; $6c87: $58
	add  b                                           ; $6c88: $80
	ld   b, a                                        ; $6c89: $47
	add  b                                           ; $6c8a: $80
	ld   b, b                                        ; $6c8b: $40
	add  b                                           ; $6c8c: $80
	ld   b, [hl]                                     ; $6c8d: $46
	nop                                              ; $6c8e: $00
	cpl                                              ; $6c8f: $2f
	add  a                                           ; $6c90: $87
	jr   nz, jr_07b_6c13                             ; $6c91: $20 $80

	xor  h                                           ; $6c93: $ac
	add  b                                           ; $6c94: $80
	cpl                                              ; $6c95: $2f
	ld   [bc], a                                     ; $6c96: $02
	dec  hl                                          ; $6c97: $2b
	dec  h                                           ; $6c98: $25
	cp   $89                                         ; $6c99: $fe $89
	nop                                              ; $6c9b: $00
	add  b                                           ; $6c9c: $80
	ret  nz                                          ; $6c9d: $c0

	add  b                                           ; $6c9e: $80
	ld   hl, sp+$00                                  ; $6c9f: $f8 $00
	cp   [hl]                                        ; $6ca1: $be
	add  h                                           ; $6ca2: $84
	push bc                                          ; $6ca3: $c5
	ld   bc, $c4c1                                   ; $6ca4: $01 $c1 $c4
	add  c                                           ; $6ca7: $81
	call z, $c800                                    ; $6ca8: $cc $00 $c8
	add  c                                           ; $6cab: $81
	ret  nz                                          ; $6cac: $c0

	nop                                              ; $6cad: $00
	ld   a, a                                        ; $6cae: $7f
	add  l                                           ; $6caf: $85
	nop                                              ; $6cb0: $00
	ld   bc, $e718                                   ; $6cb1: $01 $18 $e7
	add  b                                           ; $6cb4: $80
	ld   a, $80                                      ; $6cb5: $3e $80
	cp   $80                                         ; $6cb7: $fe $80
	ld   [hl], b                                     ; $6cb9: $70
	nop                                              ; $6cba: $00
	rst  $38                                         ; $6cbb: $ff
	add  l                                           ; $6cbc: $85
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	jr   nc, jr_07b_6c46                             ; $6cbf: $30 $85

	call c, $1d01                                    ; $6cc1: $dc $01 $1d
	ld   [hl-], a                                    ; $6cc4: $32
	add  d                                           ; $6cc5: $82
	ld   [hl+], a                                    ; $6cc6: $22
	add  c                                           ; $6cc7: $81
	ld   [hl-], a                                    ; $6cc8: $32
	ld   [bc], a                                     ; $6cc9: $02
	ld   a, $08                                      ; $6cca: $3e $08
	jr   c, jr_07b_6c4e                              ; $6ccc: $38 $80

	nop                                              ; $6cce: $00
	add  b                                           ; $6ccf: $80
	ld   bc, $f901                                   ; $6cd0: $01 $01 $f9
	add  hl, bc                                      ; $6cd3: $09
	add  b                                           ; $6cd4: $80
	add  hl, de                                      ; $6cd5: $19
	inc  bc                                          ; $6cd6: $03
	add  hl, hl                                      ; $6cd7: $29
	add  hl, sp                                      ; $6cd8: $39

jr_07b_6cd9:
	db   $10                                         ; $6cd9: $10
	ldh  a, [$80]                                    ; $6cda: $f0 $80
	add  c                                           ; $6cdc: $81
	add  b                                           ; $6cdd: $80
	rlca                                             ; $6cde: $07
	add  b                                           ; $6cdf: $80
	jr   c, @-$7e                                    ; $6ce0: $38 $80

	ldh  [c], a                                      ; $6ce2: $e2
	rlca                                             ; $6ce3: $07
	nop                                              ; $6ce4: $00
	ccf                                              ; $6ce5: $3f
	ld   a, $3f                                      ; $6ce6: $3e $3f
	ld   sp, $0c3f                                   ; $6ce8: $31 $3f $0c
	inc  a                                           ; $6ceb: $3c
	add  b                                           ; $6cec: $80
	ldh  [c], a                                      ; $6ced: $e2
	add  b                                           ; $6cee: $80
	ld   a, [bc]                                     ; $6cef: $0a
	add  b                                           ; $6cf0: $80
	ld   a, [hl+]                                    ; $6cf1: $2a
	add  b                                           ; $6cf2: $80
	xor  d                                           ; $6cf3: $aa
	inc  bc                                          ; $6cf4: $03
	ld   a, h                                        ; $6cf5: $7c
	db   $fc                                         ; $6cf6: $fc
	ld   h, d                                        ; $6cf7: $62
	ldh  [c], a                                      ; $6cf8: $e2
	add  b                                           ; $6cf9: $80
	ld   a, [bc]                                     ; $6cfa: $0a
	sbc  b                                           ; $6cfb: $98
	xor  d                                           ; $6cfc: $aa
	add  d                                           ; $6cfd: $82
	xor  c                                           ; $6cfe: $a9
	add  d                                           ; $6cff: $82
	xor  b                                           ; $6d00: $a8
	add  b                                           ; $6d01: $80
	and  h                                           ; $6d02: $a4
	add  b                                           ; $6d03: $80
	xor  h                                           ; $6d04: $ac
	add  b                                           ; $6d05: $80
	sub  e                                           ; $6d06: $93
	add  b                                           ; $6d07: $80
	and  b                                           ; $6d08: $a0
	add  d                                           ; $6d09: $82
	ld   d, l                                        ; $6d0a: $55
	add  b                                           ; $6d0b: $80
	inc  d                                           ; $6d0c: $14
	add  b                                           ; $6d0d: $80
	ld   bc, $ff80                                   ; $6d0e: $01 $80 $ff
	add  b                                           ; $6d11: $80
	nop                                              ; $6d12: $00
	add  b                                           ; $6d13: $80
	rst  $38                                         ; $6d14: $ff
	add  b                                           ; $6d15: $80
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	ld   [$fb81], sp                                 ; $6d18: $08 $81 $fb
	ld   bc, $00f3                                   ; $6d1b: $01 $f3 $00
	add  d                                           ; $6d1e: $82
	rst  $38                                         ; $6d1f: $ff
	add  b                                           ; $6d20: $80
	nop                                              ; $6d21: $00
	add  b                                           ; $6d22: $80
	rst  $38                                         ; $6d23: $ff
	add  b                                           ; $6d24: $80
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	ld   a, [hl+]                                    ; $6d27: $2a
	add  c                                           ; $6d28: $81
	ld   [$c201], a                                  ; $6d29: $ea $01 $c2
	ld   [bc], a                                     ; $6d2c: $02
	add  b                                           ; $6d2d: $80
	ld   hl, sp-$80                                  ; $6d2e: $f8 $80
	rst  $38                                         ; $6d30: $ff
	add  b                                           ; $6d31: $80
	nop                                              ; $6d32: $00
	add  b                                           ; $6d33: $80
	rst  $38                                         ; $6d34: $ff
	add  b                                           ; $6d35: $80
	nop                                              ; $6d36: $00
	add  d                                           ; $6d37: $82
	and  l                                           ; $6d38: $a5
	add  b                                           ; $6d39: $80
	dec  b                                           ; $6d3a: $05
	add  b                                           ; $6d3b: $80
	ld   bc, $f880                                   ; $6d3c: $01 $80 $f8
	add  b                                           ; $6d3f: $80
	dec  b                                           ; $6d40: $05
	add  b                                           ; $6d41: $80
	cp   $80                                         ; $6d42: $fe $80
	rlca                                             ; $6d44: $07
	add  c                                           ; $6d45: $81
	ld   b, c                                        ; $6d46: $41
	add  [hl]                                        ; $6d47: $86
	ld   b, l                                        ; $6d48: $45
	nop                                              ; $6d49: $00
	ld   b, c                                        ; $6d4a: $41
	add  b                                           ; $6d4b: $80
	ld   c, c                                        ; $6d4c: $49
	add  b                                           ; $6d4d: $80
	ld   l, l                                        ; $6d4e: $6d
	add  b                                           ; $6d4f: $80
	dec  h                                           ; $6d50: $25
	nop                                              ; $6d51: $00
	jr   nz, jr_07b_6cd9                             ; $6d52: $20 $85

	dec  h                                           ; $6d54: $25
	nop                                              ; $6d55: $00
	inc  hl                                          ; $6d56: $23
	add  e                                           ; $6d57: $83
	daa                                              ; $6d58: $27
	inc  b                                           ; $6d59: $04
	ld   b, c                                        ; $6d5a: $41
	ld   a, a                                        ; $6d5b: $7f
	ld   l, a                                        ; $6d5c: $6f
	ld   d, a                                        ; $6d5d: $57
	ld   bc, $5685                                   ; $6d5e: $01 $85 $56
	add  b                                           ; $6d61: $80
	or   $80                                         ; $6d62: $f6 $80
	cp   $00                                         ; $6d64: $fe $00
	db   $10                                         ; $6d66: $10
	add  c                                           ; $6d67: $81
	ret  nz                                          ; $6d68: $c0

	add  b                                           ; $6d69: $80
	call nz, $c586                                   ; $6d6a: $c4 $86 $c5
	add  b                                           ; $6d6d: $80
	call nz, $7000                                   ; $6d6e: $c4 $00 $70
	add  a                                           ; $6d71: $87
	rrca                                             ; $6d72: $0f
	inc  bc                                          ; $6d73: $03
	inc  c                                           ; $6d74: $0c
	rrca                                             ; $6d75: $0f
	inc  bc                                          ; $6d76: $03
	rrca                                             ; $6d77: $0f
	add  b                                           ; $6d78: $80
	ld   c, $00                                      ; $6d79: $0e $00
	ldh  a, [$81]                                    ; $6d7b: $f0 $81
	rst  $38                                         ; $6d7d: $ff
	rlca                                             ; $6d7e: $07
	db   $fc                                         ; $6d7f: $fc
	rst  $38                                         ; $6d80: $ff
	di                                               ; $6d81: $f3
	rst  $38                                         ; $6d82: $ff
	adc  [hl]                                        ; $6d83: $8e
	cp   $70                                         ; $6d84: $fe $70
	ldh  a, [$80]                                    ; $6d86: $f0 $80
	jp   z, $2a80                                    ; $6d88: $ca $80 $2a

	add  b                                           ; $6d8b: $80
	rrca                                             ; $6d8c: $0f
	add  b                                           ; $6d8d: $80
	inc  a                                           ; $6d8e: $3c
	add  b                                           ; $6d8f: $80
	ldh  a, [c]                                      ; $6d90: $f2
	add  b                                           ; $6d91: $80
	adc  d                                           ; $6d92: $8a
	add  b                                           ; $6d93: $80
	ld   a, [hl+]                                    ; $6d94: $2a
	add  h                                           ; $6d95: $84
	xor  d                                           ; $6d96: $aa
	add  b                                           ; $6d97: $80
	adc  d                                           ; $6d98: $8a
	add  b                                           ; $6d99: $80
	ld   a, [hl+]                                    ; $6d9a: $2a
	adc  d                                           ; $6d9b: $8a
	xor  d                                           ; $6d9c: $aa
	add  b                                           ; $6d9d: $80
	ld   d, $80                                      ; $6d9e: $16 $80
	sub  [hl]                                        ; $6da0: $96
	add  b                                           ; $6da1: $80
	add  $80                                         ; $6da2: $c6 $80
	and  $80                                         ; $6da4: $e6 $80
	ld   [bc], a                                     ; $6da6: $02
	add  b                                           ; $6da7: $80
	ld   hl, sp-$80                                  ; $6da8: $f8 $80
	db   $fc                                         ; $6daa: $fc
	add  b                                           ; $6dab: $80
	cp   $00                                         ; $6dac: $fe $00
	ld   b, h                                        ; $6dae: $44
	add  a                                           ; $6daf: $87
	call nz, $c782                                   ; $6db0: $c4 $82 $c7
	ld   bc, $41c1                                   ; $6db3: $01 $c1 $41
	add  b                                           ; $6db6: $80
	xor  d                                           ; $6db7: $aa
	add  b                                           ; $6db8: $80
	xor  c                                           ; $6db9: $a9
	add  b                                           ; $6dba: $80
	xor  e                                           ; $6dbb: $ab
	add  b                                           ; $6dbc: $80
	and  d                                           ; $6dbd: $a2
	add  b                                           ; $6dbe: $80
	xor  h                                           ; $6dbf: $ac
	add  b                                           ; $6dc0: $80
	sub  b                                           ; $6dc1: $90
	add  b                                           ; $6dc2: $80
	and  c                                           ; $6dc3: $a1
	add  b                                           ; $6dc4: $80
	ld   b, b                                        ; $6dc5: $40
	add  b                                           ; $6dc6: $80
	ld   c, a                                        ; $6dc7: $4f
	add  b                                           ; $6dc8: $80
	add  b                                           ; $6dc9: $80
	add  b                                           ; $6dca: $80
	ccf                                              ; $6dcb: $3f
	add  b                                           ; $6dcc: $80
	nop                                              ; $6dcd: $00
	add  b                                           ; $6dce: $80
	rst  $38                                         ; $6dcf: $ff
	add  b                                           ; $6dd0: $80
	nop                                              ; $6dd1: $00
	add  b                                           ; $6dd2: $80
	rst  $38                                         ; $6dd3: $ff
	add  b                                           ; $6dd4: $80
	nop                                              ; $6dd5: $00
	add  b                                           ; $6dd6: $80
	rst  $38                                         ; $6dd7: $ff
	add  b                                           ; $6dd8: $80
	ld   bc, $fc1b                                   ; $6dd9: $01 $1b $fc
	rst  $38                                         ; $6ddc: $ff
	inc  b                                           ; $6ddd: $04
	rlca                                             ; $6dde: $07
	ld   hl, sp-$01                                  ; $6ddf: $f8 $ff
	ld   [$f00f], sp                                 ; $6de1: $08 $0f $f0
	rst  $38                                         ; $6de4: $ff
	db   $10                                         ; $6de5: $10
	rra                                              ; $6de6: $1f
	dec  hl                                          ; $6de7: $2b
	rst  $38                                         ; $6de8: $ff
	inc  a                                           ; $6de9: $3c
	add  sp, $2b                                     ; $6dea: $e8 $2b
	rst  $38                                         ; $6dec: $ff
	ld   l, $fa                                      ; $6ded: $2e $fa
	ld   a, [bc]                                     ; $6def: $0a
	rst  $38                                         ; $6df0: $ff
	dec  bc                                          ; $6df1: $0b
	cp   $02                                         ; $6df2: $fe $02
	rst  $38                                         ; $6df4: $ff
	inc  bc                                          ; $6df5: $03
	cp   $80                                         ; $6df6: $fe $80
	rst  $38                                         ; $6df8: $ff
	add  b                                           ; $6df9: $80
	nop                                              ; $6dfa: $00
	add  b                                           ; $6dfb: $80
	rst  $38                                         ; $6dfc: $ff
	add  b                                           ; $6dfd: $80
	nop                                              ; $6dfe: $00
	add  b                                           ; $6dff: $80
	rst  $38                                         ; $6e00: $ff
	add  b                                           ; $6e01: $80
	nop                                              ; $6e02: $00
	add  b                                           ; $6e03: $80
	rst  $38                                         ; $6e04: $ff
	add  b                                           ; $6e05: $80
	add  b                                           ; $6e06: $80
	rrca                                             ; $6e07: $0f
	db   $fc                                         ; $6e08: $fc
	rst  $38                                         ; $6e09: $ff
	nop                                              ; $6e0a: $00
	inc  bc                                          ; $6e0b: $03
	db   $fc                                         ; $6e0c: $fc
	rst  $38                                         ; $6e0d: $ff
	nop                                              ; $6e0e: $00
	inc  bc                                          ; $6e0f: $03
	db   $fc                                         ; $6e10: $fc
	rst  $38                                         ; $6e11: $ff
	nop                                              ; $6e12: $00
	inc  bc                                          ; $6e13: $03
	db   $fc                                         ; $6e14: $fc
	rst  $38                                         ; $6e15: $ff
	nop                                              ; $6e16: $00
	inc  bc                                          ; $6e17: $03
	add  b                                           ; $6e18: $80
	add  [hl]                                        ; $6e19: $86
	add  b                                           ; $6e1a: $80
	di                                               ; $6e1b: $f3
	inc  c                                           ; $6e1c: $0c
	add  hl, bc                                      ; $6e1d: $09
	ld   sp, hl                                      ; $6e1e: $f9
	ld   c, $fe                                      ; $6e1f: $0e $fe
	ld   [bc], a                                     ; $6e21: $02
	cp   $03                                         ; $6e22: $fe $03
	rst  $38                                         ; $6e24: $ff
	ld   bc, $01ff                                   ; $6e25: $01 $ff $01
	rst  $38                                         ; $6e28: $ff
	ld   h, $81                                      ; $6e29: $26 $81
	daa                                              ; $6e2b: $27
	ld   bc, $a7a6                                   ; $6e2c: $01 $a6 $a7
	add  d                                           ; $6e2f: $82
	and  l                                           ; $6e30: $a5
	add  h                                           ; $6e31: $84
	dec  h                                           ; $6e32: $25
	nop                                              ; $6e33: $00
	xor  [hl]                                        ; $6e34: $ae
	add  e                                           ; $6e35: $83
	cp   $01                                         ; $6e36: $fe $01
	xor  $fe                                         ; $6e38: $ee $fe
	add  b                                           ; $6e3a: $80
	or   $80                                         ; $6e3b: $f6 $80
	halt                                             ; $6e3d: $76
	nop                                              ; $6e3e: $00
	ld   d, $81                                      ; $6e3f: $16 $81
	ld   d, [hl]                                     ; $6e41: $56
	nop                                              ; $6e42: $00
	ld   b, h                                        ; $6e43: $44
	adc  l                                           ; $6e44: $8d
	call nz, $022a                                   ; $6e45: $c4 $2a $02
	add  [hl]                                        ; $6e48: $86
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	dec  c                                           ; $6e4b: $0d
	add  d                                           ; $6e4c: $82
	ld   c, $00                                      ; $6e4d: $0e $00
	ld   [bc], a                                     ; $6e4f: $02
	add  b                                           ; $6e50: $80
	inc  c                                           ; $6e51: $0c
	nop                                              ; $6e52: $00
	rrca                                             ; $6e53: $0f
	add  l                                           ; $6e54: $85
	nop                                              ; $6e55: $00
	add  [hl]                                        ; $6e56: $86
	rst  $38                                         ; $6e57: $ff
	add  [hl]                                        ; $6e58: $86
	nop                                              ; $6e59: $00
	ld   bc, $03ff                                   ; $6e5a: $01 $ff $03
	add  c                                           ; $6e5d: $81
	add  e                                           ; $6e5e: $83
	add  c                                           ; $6e5f: $81
	and  e                                           ; $6e60: $a3
	nop                                              ; $6e61: $00
	call c, $0085                                    ; $6e62: $dc $85 $00
	nop                                              ; $6e65: $00
	rst  $38                                         ; $6e66: $ff
	add  b                                           ; $6e67: $80
	ldh  a, [rDIV]                                   ; $6e68: $f0 $04
	ld   hl, sp-$06                                  ; $6e6a: $f8 $fa
	cp   $fc                                         ; $6e6c: $fe $fc
	rst  $38                                         ; $6e6e: $ff
	add  [hl]                                        ; $6e6f: $86
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	rst  $38                                         ; $6e72: $ff
	add  l                                           ; $6e73: $85
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	rst  $38                                         ; $6e76: $ff
	add  l                                           ; $6e77: $85
	nop                                              ; $6e78: $00
	inc  b                                           ; $6e79: $04
	ld   hl, sp+$00                                  ; $6e7a: $f8 $00
	ld   [$1000], sp                                 ; $6e7c: $08 $00 $10
	add  c                                           ; $6e7f: $81
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	ldh  [$95], a                                    ; $6e82: $e0 $95
	nop                                              ; $6e84: $00
	ld   bc, $f2bd                                   ; $6e85: $01 $bd $f2
	add  b                                           ; $6e88: $80
	push af                                          ; $6e89: $f5
	add  b                                           ; $6e8a: $80
	ldh  a, [c]                                      ; $6e8b: $f2
	add  b                                           ; $6e8c: $80
	push af                                          ; $6e8d: $f5
	nop                                              ; $6e8e: $00
	ld   c, a                                        ; $6e8f: $4f
	add  l                                           ; $6e90: $85
	nop                                              ; $6e91: $00
	ld   bc, $fc7f                                   ; $6e92: $01 $7f $fc
	add  b                                           ; $6e95: $80
	ld   a, h                                        ; $6e96: $7c
	add  b                                           ; $6e97: $80
	db   $fc                                         ; $6e98: $fc
	add  b                                           ; $6e99: $80
	ld   a, h                                        ; $6e9a: $7c
	nop                                              ; $6e9b: $00
	add  e                                           ; $6e9c: $83
	add  l                                           ; $6e9d: $85
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	rst  $38                                         ; $6ea0: $ff
	add  l                                           ; $6ea1: $85
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	rst  $38                                         ; $6ea4: $ff
	add  [hl]                                        ; $6ea5: $86
	nop                                              ; $6ea6: $00
	add  [hl]                                        ; $6ea7: $86
	rst  $38                                         ; $6ea8: $ff
	add  [hl]                                        ; $6ea9: $86
	nop                                              ; $6eaa: $00
	add  [hl]                                        ; $6eab: $86
	ldh  a, [rP1]                                    ; $6eac: $f0 $00
	rrca                                             ; $6eae: $0f
	add  b                                           ; $6eaf: $80
	ld   bc, $0880                                   ; $6eb0: $01 $80 $08
	ld   [bc], a                                     ; $6eb3: $02
	rlca                                             ; $6eb4: $07
	rrca                                             ; $6eb5: $0f
	ld   a, [bc]                                     ; $6eb6: $0a
	add  l                                           ; $6eb7: $85
	ld   c, $07                                      ; $6eb8: $0e $07
	db   $fc                                         ; $6eba: $fc
	ccf                                              ; $6ebb: $3f
	cp   a                                           ; $6ebc: $bf
	adc  a                                           ; $6ebd: $8f
	ld   a, a                                        ; $6ebe: $7f
	ld   [hl], e                                     ; $6ebf: $73
	rra                                              ; $6ec0: $1f
	inc  e                                           ; $6ec1: $1c
	add  b                                           ; $6ec2: $80
	rst  ToBoot                                         ; $6ec3: $c7
	ld   b, $31                                      ; $6ec4: $06 $31
	pop  af                                          ; $6ec6: $f1
	call z, $d3fc                                    ; $6ec7: $cc $fc $d3
	rst  JumpTable                                         ; $6eca: $df
	ld   a, h                                        ; $6ecb: $7c
	add  e                                           ; $6ecc: $83
	and  e                                           ; $6ecd: $a3
	add  c                                           ; $6ece: $81
	inc  hl                                          ; $6ecf: $23
	nop                                              ; $6ed0: $00
	inc  bc                                          ; $6ed1: $03
	add  b                                           ; $6ed2: $80
	add  e                                           ; $6ed3: $83
	nop                                              ; $6ed4: $00
	inc  bc                                          ; $6ed5: $03
	add  b                                           ; $6ed6: $80
	inc  hl                                          ; $6ed7: $23
	add  b                                           ; $6ed8: $80
	inc  bc                                          ; $6ed9: $03
	adc  [hl]                                        ; $6eda: $8e
	rst  $38                                         ; $6edb: $ff
	inc  bc                                          ; $6edc: $03
	add  b                                           ; $6edd: $80
	and  b                                           ; $6ede: $a0
	ldh  [$c0], a                                    ; $6edf: $e0 $c0
	add  b                                           ; $6ee1: $80
	ldh  a, [$88]                                    ; $6ee2: $f0 $88
	ld   hl, sp-$70                                  ; $6ee4: $f8 $90
	nop                                              ; $6ee6: $00
	add  b                                           ; $6ee7: $80
	ld   [$3c80], sp                                 ; $6ee8: $08 $80 $3c
	add  [hl]                                        ; $6eeb: $86
	ld   a, [hl]                                     ; $6eec: $7e
	add  b                                           ; $6eed: $80
	inc  a                                           ; $6eee: $3c
	add  l                                           ; $6eef: $85
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	ld   bc, $0081                                   ; $6ef2: $01 $81 $00
	inc  d                                           ; $6ef5: $14
	ld   [bc], a                                     ; $6ef6: $02
	nop                                              ; $6ef7: $00
	inc  b                                           ; $6ef8: $04
	nop                                              ; $6ef9: $00
	jr   c, jr_07b_6efc                              ; $6efa: $38 $00

jr_07b_6efc:
	ld   b, b                                        ; $6efc: $40
	nop                                              ; $6efd: $00
	inc  bc                                          ; $6efe: $03
	nop                                              ; $6eff: $00
	add  h                                           ; $6f00: $84
	nop                                              ; $6f01: $00
	ld   [$1400], sp                                 ; $6f02: $08 $00 $14
	ld   bc, $0309                                   ; $6f05: $01 $09 $03
	rla                                              ; $6f08: $17
	ld   b, $01                                      ; $6f09: $06 $01
	add  [hl]                                        ; $6f0b: $86
	nop                                              ; $6f0c: $00
	add  c                                           ; $6f0d: $81
	ret  nz                                          ; $6f0e: $c0

	add  d                                           ; $6f0f: $82
	nop                                              ; $6f10: $00
	ld   bc, $f27d                                   ; $6f11: $01 $7d $f2
	add  b                                           ; $6f14: $80
	push af                                          ; $6f15: $f5
	add  b                                           ; $6f16: $80
	ldh  a, [c]                                      ; $6f17: $f2
	add  b                                           ; $6f18: $80
	push af                                          ; $6f19: $f5
	add  b                                           ; $6f1a: $80
	ldh  a, [c]                                      ; $6f1b: $f2
	add  b                                           ; $6f1c: $80
	push af                                          ; $6f1d: $f5
	add  b                                           ; $6f1e: $80
	ldh  a, [c]                                      ; $6f1f: $f2
	add  b                                           ; $6f20: $80
	push af                                          ; $6f21: $f5
	ld   bc, $fc30                                   ; $6f22: $01 $30 $fc
	add  b                                           ; $6f25: $80

jr_07b_6f26:
	ld   a, h                                        ; $6f26: $7c
	add  b                                           ; $6f27: $80
	db   $fc                                         ; $6f28: $fc
	add  b                                           ; $6f29: $80
	ld   a, h                                        ; $6f2a: $7c
	add  b                                           ; $6f2b: $80
	db   $fc                                         ; $6f2c: $fc
	add  b                                           ; $6f2d: $80
	ld   a, h                                        ; $6f2e: $7c
	add  b                                           ; $6f2f: $80
	db   $fc                                         ; $6f30: $fc
	add  b                                           ; $6f31: $80
	ld   a, h                                        ; $6f32: $7c
	ld   [bc], a                                     ; $6f33: $02
	add  e                                           ; $6f34: $83
	rst  $38                                         ; $6f35: $ff
	ld   a, a                                        ; $6f36: $7f
	add  c                                           ; $6f37: $81
	rst  $38                                         ; $6f38: $ff
	nop                                              ; $6f39: $00
	cp   a                                           ; $6f3a: $bf
	add  c                                           ; $6f3b: $81
	rst  $38                                         ; $6f3c: $ff
	nop                                              ; $6f3d: $00
	rst  JumpTable                                         ; $6f3e: $df
	add  c                                           ; $6f3f: $81
	rst  $38                                         ; $6f40: $ff
	ld   [bc], a                                     ; $6f41: $02
	rst  $28                                         ; $6f42: $ef
	rst  $38                                         ; $6f43: $ff
	rrca                                             ; $6f44: $0f
	adc  l                                           ; $6f45: $8d
	ldh  a, [rP1]                                    ; $6f46: $f0 $00
	db   $fd                                         ; $6f48: $fd
	add  l                                           ; $6f49: $85
	ld   c, $80                                      ; $6f4a: $0e $80
	ld   a, [bc]                                     ; $6f4c: $0a
	add  h                                           ; $6f4d: $84
	ld   [bc], a                                     ; $6f4e: $02
	ld   bc, $bfbc                                   ; $6f4f: $01 $bc $bf
	add  b                                           ; $6f52: $80
	ld   e, a                                        ; $6f53: $5f
	add  b                                           ; $6f54: $80
	cp   a                                           ; $6f55: $bf
	add  b                                           ; $6f56: $80
	ld   e, a                                        ; $6f57: $5f
	add  b                                           ; $6f58: $80
	rst  $38                                         ; $6f59: $ff
	add  b                                           ; $6f5a: $80
	ld   a, a                                        ; $6f5b: $7f
	add  e                                           ; $6f5c: $83
	rst  $38                                         ; $6f5d: $ff
	ld   bc, $8303                                   ; $6f5e: $01 $03 $83
	adc  e                                           ; $6f61: $8b
	and  e                                           ; $6f62: $a3
	ld   [bc], a                                     ; $6f63: $02
	inc  hl                                          ; $6f64: $23
	ld   a, [$87fb]                                  ; $6f65: $fa $fb $87
	ld   a, [$fb00]                                  ; $6f68: $fa $00 $fb
	add  d                                           ; $6f6b: $82
	ld   hl, sp+$00                                  ; $6f6c: $f8 $00
	nop                                              ; $6f6e: $00
	add  b                                           ; $6f6f: $80
	add  b                                           ; $6f70: $80
	rlca                                             ; $6f71: $07
	ldh  [rAUD4LEN], a                               ; $6f72: $e0 $20
	db   $10                                         ; $6f74: $10
	jr   nc, jr_07b_6fdb                             ; $6f75: $30 $64

	ld   l, h                                        ; $6f77: $6c
	ld   l, b                                        ; $6f78: $68
	ld   l, [hl]                                     ; $6f79: $6e
	add  c                                           ; $6f7a: $81
	xor  $80                                         ; $6f7b: $ee $80
	ld   l, $85                                      ; $6f7d: $2e $85
	nop                                              ; $6f7f: $00
	add  b                                           ; $6f80: $80
	jr   nz, jr_07b_6f89                             ; $6f81: $20 $06

	db   $10                                         ; $6f83: $10
	jr   nc, jr_07b_6f26                             ; $6f84: $30 $a0

	cp   b                                           ; $6f86: $b8
	cp   d                                           ; $6f87: $ba
	cp   [hl]                                        ; $6f88: $be

jr_07b_6f89:
	inc  a                                           ; $6f89: $3c
	adc  h                                           ; $6f8a: $8c
	nop                                              ; $6f8b: $00
	ld   bc, $0c03                                   ; $6f8c: $01 $03 $0c
	add  c                                           ; $6f8f: $81

jr_07b_6f90:
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	db   $10                                         ; $6f92: $10
	add  c                                           ; $6f93: $81
	nop                                              ; $6f94: $00
	ld   [bc], a                                     ; $6f95: $02
	jr   nz, jr_07b_6f98                             ; $6f96: $20 $00

jr_07b_6f98:
	ld   b, b                                        ; $6f98: $40
	add  c                                           ; $6f99: $81
	nop                                              ; $6f9a: $00
	ld   b, $80                                      ; $6f9b: $06 $80
	nop                                              ; $6f9d: $00
	ld   c, a                                        ; $6f9e: $4f
	inc  c                                           ; $6f9f: $0c
	inc  e                                           ; $6fa0: $1c
	jr   jr_07b_6fdb                                 ; $6fa1: $18 $38

	add  b                                           ; $6fa3: $80
	jr   nc, @+$06                                   ; $6fa4: $30 $04

	ld   h, b                                        ; $6fa6: $60
	ldh  [c], a                                      ; $6fa7: $e2
	jp   nz, $86c6                                   ; $6fa8: $c2 $c6 $86

	add  b                                           ; $6fab: $80
	adc  [hl]                                        ; $6fac: $8e
	add  b                                           ; $6fad: $80
	sbc  h                                           ; $6fae: $9c
	nop                                              ; $6faf: $00
	ld   a, a                                        ; $6fb0: $7f
	adc  l                                           ; $6fb1: $8d
	ret  nz                                          ; $6fb2: $c0

	nop                                              ; $6fb3: $00
	ccf                                              ; $6fb4: $3f
	adc  c                                           ; $6fb5: $89
	nop                                              ; $6fb6: $00
	add  b                                           ; $6fb7: $80
	ld   bc, $0006                                   ; $6fb8: $01 $06 $00
	inc  bc                                          ; $6fbb: $03
	inc  c                                           ; $6fbc: $0c
	rst  $38                                         ; $6fbd: $ff
	rst  $30                                         ; $6fbe: $f7
	rst  $38                                         ; $6fbf: $ff
	ld   hl, sp-$80                                  ; $6fc0: $f8 $80
	db   $fc                                         ; $6fc2: $fc
	ld   [bc], a                                     ; $6fc3: $02
	ldh  [$e7], a                                    ; $6fc4: $e0 $e7
	rlca                                             ; $6fc6: $07
	add  b                                           ; $6fc7: $80
	ccf                                              ; $6fc8: $3f
	dec  b                                           ; $6fc9: $05
	ld   e, a                                        ; $6fca: $5f
	rst  $38                                         ; $6fcb: $ff
	rrca                                             ; $6fcc: $0f
	rst  $38                                         ; $6fcd: $ff
	cp   a                                           ; $6fce: $bf
	ldh  [$80], a                                    ; $6fcf: $e0 $80
	nop                                              ; $6fd1: $00
	add  b                                           ; $6fd2: $80
	db   $10                                         ; $6fd3: $10
	adc  b                                           ; $6fd4: $88
	ldh  a, [rSB]                                    ; $6fd5: $f0 $01
	pop  af                                          ; $6fd7: $f1
	ld   c, $81                                      ; $6fd8: $0e $81
	ld   [bc], a                                     ; $6fda: $02

jr_07b_6fdb:
	add  e                                           ; $6fdb: $83
	ld   c, $80                                      ; $6fdc: $0e $80
	ld   a, [bc]                                     ; $6fde: $0a
	add  d                                           ; $6fdf: $82
	ld   [bc], a                                     ; $6fe0: $02
	dec  bc                                          ; $6fe1: $0b
	db   $fc                                         ; $6fe2: $fc
	rst  $38                                         ; $6fe3: $ff
	ccf                                              ; $6fe4: $3f
	rst  $38                                         ; $6fe5: $ff
	inc  bc                                          ; $6fe6: $03
	ccf                                              ; $6fe7: $3f
	ret  nz                                          ; $6fe8: $c0

	inc  bc                                          ; $6fe9: $03
	jr   c, jr_07b_6ff0                              ; $6fea: $38 $04

	inc  c                                           ; $6fec: $0c
	rrca                                             ; $6fed: $0f
	add  b                                           ; $6fee: $80
	rra                                              ; $6fef: $1f

jr_07b_6ff0:
	add  b                                           ; $6ff0: $80
	ccf                                              ; $6ff1: $3f
	nop                                              ; $6ff2: $00
	ld   a, a                                        ; $6ff3: $7f
	add  l                                           ; $6ff4: $85
	and  e                                           ; $6ff5: $a3
	ld   [bc], a                                     ; $6ff6: $02
	inc  hl                                          ; $6ff7: $23
	inc  bc                                          ; $6ff8: $03
	add  e                                           ; $6ff9: $83
	add  e                                           ; $6ffa: $83
	and  e                                           ; $6ffb: $a3
	nop                                              ; $6ffc: $00
	inc  hl                                          ; $6ffd: $23
	add  c                                           ; $6ffe: $81
	ld   hl, sp+$00                                  ; $6fff: $f8 $00
	ld   sp, hl                                      ; $7001: $f9
	adc  c                                           ; $7002: $89
	ld   hl, sp+$00                                  ; $7003: $f8 $00
	ld   sp, hl                                      ; $7005: $f9
	add  b                                           ; $7006: $80
	ld   c, $03                                      ; $7007: $0e $03
	ld   [bc], a                                     ; $7009: $02
	add  d                                           ; $700a: $82
	nop                                              ; $700b: $00
	ld   b, b                                        ; $700c: $40
	add  b                                           ; $700d: $80
	jr   nz, jr_07b_6f90                             ; $700e: $20 $80

	inc  l                                           ; $7010: $2c
	nop                                              ; $7011: $00
	ld   l, $82                                      ; $7012: $2e $82
	ld   l, a                                        ; $7014: $6f
	nop                                              ; $7015: $00
	ld   l, [hl]                                     ; $7016: $6e
	adc  l                                           ; $7017: $8d
	cp   a                                           ; $7018: $bf
	nop                                              ; $7019: $00
	ccf                                              ; $701a: $3f
	add  b                                           ; $701b: $80
	nop                                              ; $701c: $00
	add  b                                           ; $701d: $80
	add  b                                           ; $701e: $80
	inc  bc                                          ; $701f: $03
	ret  nz                                          ; $7020: $c0

	ret  nc                                          ; $7021: $d0

	ldh  a, [$e0]                                    ; $7022: $f0 $e0
	add  d                                           ; $7024: $82
	ldh  a, [$03]                                    ; $7025: $f0 $03
	rst  $38                                         ; $7027: $ff
	ldh  a, [rIE]                                    ; $7028: $f0 $ff
	ldh  a, [$8a]                                    ; $702a: $f0 $8a
	nop                                              ; $702c: $00
	inc  bc                                          ; $702d: $03
	ld   hl, sp+$00                                  ; $702e: $f8 $00
	cp   $06                                         ; $7030: $fe $06
	add  d                                           ; $7032: $82
	rlca                                             ; $7033: $07
	add  b                                           ; $7034: $80
	inc  bc                                          ; $7035: $03
	add  [hl]                                        ; $7036: $86
	nop                                              ; $7037: $00
	add  b                                           ; $7038: $80
	ld   bc, $8082                                   ; $7039: $01 $82 $80
	adc  b                                           ; $703c: $88
	nop                                              ; $703d: $00
	ld   bc, $7f80                                   ; $703e: $01 $80 $7f
	adc  c                                           ; $7041: $89
	nop                                              ; $7042: $00
	inc  b                                           ; $7043: $04
	ld   [$1000], sp                                 ; $7044: $08 $00 $10
	nop                                              ; $7047: $00
	rst  $30                                         ; $7048: $f7
	add  d                                           ; $7049: $82
	sub  b                                           ; $704a: $90
	adc  c                                           ; $704b: $89
	sub  d                                           ; $704c: $92
	ld   bc, $fc02                                   ; $704d: $01 $02 $fc
	add  b                                           ; $7050: $80
	ld   a, h                                        ; $7051: $7c
	add  b                                           ; $7052: $80
	db   $fc                                         ; $7053: $fc
	add  b                                           ; $7054: $80
	ld   a, h                                        ; $7055: $7c
	add  b                                           ; $7056: $80
	db   $fc                                         ; $7057: $fc
	add  b                                           ; $7058: $80
	ld   a, h                                        ; $7059: $7c
	add  b                                           ; $705a: $80
	db   $fd                                         ; $705b: $fd
	nop                                              ; $705c: $00
	ld   a, h                                        ; $705d: $7c
	add  b                                           ; $705e: $80
	ld   a, a                                        ; $705f: $7f
	add  b                                           ; $7060: $80
	rlca                                             ; $7061: $07
	add  b                                           ; $7062: $80
	rrca                                             ; $7063: $0f
	add  b                                           ; $7064: $80
	rra                                              ; $7065: $1f
	inc  de                                          ; $7066: $13
	ccf                                              ; $7067: $3f
	jr   c, jr_07b_70e9                              ; $7068: $38 $7f

	nop                                              ; $706a: $00
	rst  $38                                         ; $706b: $ff
	rlca                                             ; $706c: $07
	rst  $38                                         ; $706d: $ff
	ld   a, a                                        ; $706e: $7f
	rst  $38                                         ; $706f: $ff
	xor  b                                           ; $7070: $a8
	rst  $38                                         ; $7071: $ff
	add  e                                           ; $7072: $83
	rst  $38                                         ; $7073: $ff
	ret  nz                                          ; $7074: $c0

	cp   $de                                         ; $7075: $fe $de
	push af                                          ; $7077: $f5
	ld   bc, $3fff                                   ; $7078: $01 $ff $3f
	add  e                                           ; $707b: $83
	rst  $38                                         ; $707c: $ff
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	add  c                                           ; $707f: $81
	ldh  a, [$81]                                    ; $7080: $f0 $81
	nop                                              ; $7082: $00
	add  a                                           ; $7083: $87
	ldh  a, [rP1]                                    ; $7084: $f0 $00
	ld   bc, $0286                                   ; $7086: $01 $86 $02
	nop                                              ; $7089: $00
	ld   c, $80                                      ; $708a: $0e $80
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	ld   [bc], a                                     ; $708e: $02
	add  c                                           ; $708f: $81
	ld   c, $01                                      ; $7090: $0e $01
	inc  a                                           ; $7092: $3c
	ccf                                              ; $7093: $3f
	add  b                                           ; $7094: $80
	ld   a, a                                        ; $7095: $7f
	add  h                                           ; $7096: $84
	rst  $38                                         ; $7097: $ff
	ld   b, $0f                                      ; $7098: $06 $0f
	rst  $38                                         ; $709a: $ff
	nop                                              ; $709b: $00
	rrca                                             ; $709c: $0f
	db   $10                                         ; $709d: $10
	ldh  [rSVBK], a                                  ; $709e: $e0 $70
	adc  e                                           ; $70a0: $8b
	and  e                                           ; $70a1: $a3
	ld   b, $23                                      ; $70a2: $06 $23
	inc  bc                                          ; $70a4: $03
	ld   [bc], a                                     ; $70a5: $02
	ld   hl, sp-$07                                  ; $70a6: $f8 $f9
	ld   hl, sp-$07                                  ; $70a8: $f8 $f9
	adc  d                                           ; $70aa: $8a
	ld   hl, sp-$80                                  ; $70ab: $f8 $80
	rst  $28                                         ; $70ad: $ef
	inc  bc                                          ; $70ae: $03
	rrca                                             ; $70af: $0f
	adc  $20                                         ; $70b0: $ce $20
	ld   hl, $2f81                                   ; $70b2: $21 $81 $2f
	add  d                                           ; $70b5: $82
	ld   l, a                                        ; $70b6: $6f
	add  b                                           ; $70b7: $80
	rst  $28                                         ; $70b8: $ef
	inc  b                                           ; $70b9: $04
	db   $e4                                         ; $70ba: $e4
	rst  $38                                         ; $70bb: $ff
	db   $f4                                         ; $70bc: $f4
	rst  $38                                         ; $70bd: $ff
	cp   $81                                         ; $70be: $fe $81
	rst  $38                                         ; $70c0: $ff
	add  b                                           ; $70c1: $80
	rst  $30                                         ; $70c2: $f7
	add  d                                           ; $70c3: $82
	di                                               ; $70c4: $f3
	add  b                                           ; $70c5: $80
	pop  af                                          ; $70c6: $f1
	ld   [$ff51], sp                                 ; $70c7: $08 $51 $ff
	ld   a, [bc]                                     ; $70ca: $0a
	rst  $38                                         ; $70cb: $ff
	adc  h                                           ; $70cc: $8c
	rst  $38                                         ; $70cd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ce: $cf
	rst  $38                                         ; $70cf: $ff
	xor  $85                                         ; $70d0: $ee $85
	rst  $38                                         ; $70d2: $ff
	ld   b, $f6                                      ; $70d3: $06 $f6
	add  c                                           ; $70d5: $81
	ld   bc, $20e0                                   ; $70d6: $01 $e0 $20
	ret  z                                           ; $70d9: $c8

	adc  b                                           ; $70da: $88
	add  b                                           ; $70db: $80
	ldh  a, [rSB]                                    ; $70dc: $f0 $01
	cp   $ff                                         ; $70de: $fe $ff
	add  b                                           ; $70e0: $80
	ccf                                              ; $70e1: $3f
	add  c                                           ; $70e2: $81
	rra                                              ; $70e3: $1f
	nop                                              ; $70e4: $00
	ld   e, $80                                      ; $70e5: $1e $80
	add  b                                           ; $70e7: $80
	add  l                                           ; $70e8: $85

jr_07b_70e9:
	nop                                              ; $70e9: $00
	add  h                                           ; $70ea: $84
	rst  $38                                         ; $70eb: $ff
	nop                                              ; $70ec: $00
	rst  ToBoot                                         ; $70ed: $c7
	adc  l                                           ; $70ee: $8d
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	rst  $10                                         ; $70f1: $d7
	add  [hl]                                        ; $70f2: $86
	sub  d                                           ; $70f3: $92
	add  b                                           ; $70f4: $80
	sub  b                                           ; $70f5: $90
	add  d                                           ; $70f6: $82
	sbc  [hl]                                        ; $70f7: $9e
	ld   [bc], a                                     ; $70f8: $02
	sub  b                                           ; $70f9: $90
	nop                                              ; $70fa: $00
	rst  $38                                         ; $70fb: $ff
	add  b                                           ; $70fc: $80
	ld   a, a                                        ; $70fd: $7f
	add  b                                           ; $70fe: $80
	rst  $38                                         ; $70ff: $ff
	add  b                                           ; $7100: $80
	ld   a, a                                        ; $7101: $7f
	add  b                                           ; $7102: $80
	rst  $38                                         ; $7103: $ff
	ld   bc, $7c7f                                   ; $7104: $01 $7f $7c
	add  b                                           ; $7107: $80
	db   $fc                                         ; $7108: $fc
	add  c                                           ; $7109: $81
	ld   a, h                                        ; $710a: $7c
	add  l                                           ; $710b: $85
	rst  $38                                         ; $710c: $ff
	ld   [bc], a                                     ; $710d: $02
	cp   $ff                                         ; $710e: $fe $ff
	cp   $81                                         ; $7110: $fe $81
	nop                                              ; $7112: $00
	add  b                                           ; $7113: $80
	add  b                                           ; $7114: $80
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	add  [hl]                                        ; $7117: $86
	rst  $38                                         ; $7118: $ff
	add  l                                           ; $7119: $85
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	rrca                                             ; $711c: $0f
	add  e                                           ; $711d: $83
	ldh  a, [rSB]                                    ; $711e: $f0 $01
	ld   [hl], b                                     ; $7120: $70
	add  b                                           ; $7121: $80
	add  [hl]                                        ; $7122: $86
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	db   $fd                                         ; $7125: $fd
	add  l                                           ; $7126: $85
	ld   c, $80                                      ; $7127: $0e $80
	ld   a, [bc]                                     ; $7129: $0a
	add  h                                           ; $712a: $84
	ld   [bc], a                                     ; $712b: $02
	ld   bc, $c3c0                                   ; $712c: $01 $c0 $c3
	add  b                                           ; $712f: $80
	add  a                                           ; $7130: $87
	add  b                                           ; $7131: $80
	rrca                                             ; $7132: $0f
	add  b                                           ; $7133: $80
	rra                                              ; $7134: $1f
	add  b                                           ; $7135: $80
	ccf                                              ; $7136: $3f
	add  b                                           ; $7137: $80
	ld   a, a                                        ; $7138: $7f
	add  d                                           ; $7139: $82
	rst  $38                                         ; $713a: $ff
	nop                                              ; $713b: $00
	ld   a, a                                        ; $713c: $7f
	adc  l                                           ; $713d: $8d
	and  e                                           ; $713e: $a3
	ld   [bc], a                                     ; $713f: $02
	inc  hl                                          ; $7140: $23
	ld   hl, sp-$07                                  ; $7141: $f8 $f9
	adc  c                                           ; $7143: $89
	ld   hl, sp+$00                                  ; $7144: $f8 $00
	ld   sp, hl                                      ; $7146: $f9
	add  b                                           ; $7147: $80
	ld   hl, sp+$01                                  ; $7148: $f8 $01
	nop                                              ; $714a: $00
	pop  bc                                          ; $714b: $c1
	add  e                                           ; $714c: $83
	cpl                                              ; $714d: $2f
	add  d                                           ; $714e: $82
	ld   l, a                                        ; $714f: $6f
	dec  b                                           ; $7150: $05
	xor  $e0                                         ; $7151: $ee $e0
	pop  hl                                          ; $7153: $e1
	rrca                                             ; $7154: $0f
	nop                                              ; $7155: $00
	pop  af                                          ; $7156: $f1
	adc  c                                           ; $7157: $89
	ldh  a, [$81]                                    ; $7158: $f0 $81
	rst  $38                                         ; $715a: $ff
	nop                                              ; $715b: $00
	ld   sp, hl                                      ; $715c: $f9
	add  e                                           ; $715d: $83
	rst  $38                                         ; $715e: $ff
	add  d                                           ; $715f: $82
	ld   a, a                                        ; $7160: $7f
	ld   [bc], a                                     ; $7161: $02
	ccf                                              ; $7162: $3f
	dec  a                                           ; $7163: $3d
	dec  b                                           ; $7164: $05
	add  c                                           ; $7165: $81
	pop  af                                          ; $7166: $f1
	nop                                              ; $7167: $00
	ld   b, c                                        ; $7168: $41
	add  c                                           ; $7169: $81
	ld   e, a                                        ; $716a: $5f
	add  d                                           ; $716b: $82
	rra                                              ; $716c: $1f
	nop                                              ; $716d: $00
	ld   c, $85                                      ; $716e: $0e $85
	db   $10                                         ; $7170: $10
	add  [hl]                                        ; $7171: $86
	rst  $38                                         ; $7172: $ff
	add  [hl]                                        ; $7173: $86
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	rst  ToBoot                                         ; $7176: $c7
	adc  h                                           ; $7177: $8c
	nop                                              ; $7178: $00
	ld   [bc], a                                     ; $7179: $02
	add  b                                           ; $717a: $80
	ld   e, c                                        ; $717b: $59
	sbc  [hl]                                        ; $717c: $9e
	add  b                                           ; $717d: $80
	sub  b                                           ; $717e: $90
	nop                                              ; $717f: $00
	sub  d                                           ; $7180: $92
	adc  c                                           ; $7181: $89
	sub  b                                           ; $7182: $90
	ld   bc, $fc02                                   ; $7183: $01 $02 $fc
	add  b                                           ; $7186: $80
	ld   a, h                                        ; $7187: $7c
	add  b                                           ; $7188: $80
	db   $fc                                         ; $7189: $fc
	add  b                                           ; $718a: $80
	ld   a, h                                        ; $718b: $7c
	add  b                                           ; $718c: $80
	db   $fc                                         ; $718d: $fc
	add  b                                           ; $718e: $80
	ld   a, h                                        ; $718f: $7c
	add  b                                           ; $7190: $80
	db   $fc                                         ; $7191: $fc
	add  b                                           ; $7192: $80
	ld   a, h                                        ; $7193: $7c
	ld   bc, $403c                                   ; $7194: $01 $3c $40
	add  b                                           ; $7197: $80
	and  b                                           ; $7198: $a0
	add  b                                           ; $7199: $80
	ld   d, b                                        ; $719a: $50
	add  b                                           ; $719b: $80
	xor  b                                           ; $719c: $a8
	add  b                                           ; $719d: $80
	ld   d, l                                        ; $719e: $55
	add  b                                           ; $719f: $80
	xor  c                                           ; $71a0: $a9
	add  b                                           ; $71a1: $80
	push de                                          ; $71a2: $d5
	add  b                                           ; $71a3: $80
	xor  c                                           ; $71a4: $a9
	add  [hl]                                        ; $71a5: $86
	nop                                              ; $71a6: $00
	add  [hl]                                        ; $71a7: $86
	rst  $38                                         ; $71a8: $ff
	nop                                              ; $71a9: $00
	rrca                                             ; $71aa: $0f
	add  l                                           ; $71ab: $85
	nop                                              ; $71ac: $00
	add  [hl]                                        ; $71ad: $86
	ldh  a, [rSB]                                    ; $71ae: $f0 $01
	push af                                          ; $71b0: $f5
	ld   b, $80                                      ; $71b1: $06 $80
	ld   c, $01                                      ; $71b3: $0e $01
	ld   [bc], a                                     ; $71b5: $02
	ld   c, $80                                      ; $71b6: $0e $80
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	ld   [bc], a                                     ; $71ba: $02
	add  l                                           ; $71bb: $85
	ld   c, $03                                      ; $71bc: $0e $03
	db   $fc                                         ; $71be: $fc
	rst  $38                                         ; $71bf: $ff
	nop                                              ; $71c0: $00
	rst  $38                                         ; $71c1: $ff
	add  b                                           ; $71c2: $80
	nop                                              ; $71c3: $00
	ld   bc, $e01f                                   ; $71c4: $01 $1f $e0
	add  b                                           ; $71c7: $80
	pop  bc                                          ; $71c8: $c1
	add  b                                           ; $71c9: $80
	add  e                                           ; $71ca: $83
	add  b                                           ; $71cb: $80
	rlca                                             ; $71cc: $07
	add  b                                           ; $71cd: $80
	rrca                                             ; $71ce: $0f
	nop                                              ; $71cf: $00
	ld   a, a                                        ; $71d0: $7f
	add  c                                           ; $71d1: $81
	and  e                                           ; $71d2: $a3
	ld   [bc], a                                     ; $71d3: $02
	inc  hl                                          ; $71d4: $23
	inc  bc                                          ; $71d5: $03
	add  e                                           ; $71d6: $83
	add  a                                           ; $71d7: $87
	and  e                                           ; $71d8: $a3
	nop                                              ; $71d9: $00
	ld   [hl+], a                                    ; $71da: $22
	adc  d                                           ; $71db: $8a
	ld   hl, sp+$00                                  ; $71dc: $f8 $00
	ld   sp, hl                                      ; $71de: $f9
	add  b                                           ; $71df: $80
	ld   hl, sp+$00                                  ; $71e0: $f8 $00
	add  hl, sp                                      ; $71e2: $39
	add  e                                           ; $71e3: $83
	cpl                                              ; $71e4: $2f
	add  b                                           ; $71e5: $80
	ld   l, a                                        ; $71e6: $6f
	add  b                                           ; $71e7: $80
	rst  $28                                         ; $71e8: $ef
	inc  bc                                          ; $71e9: $03
	ldh  a, [$fe]                                    ; $71ea: $f0 $fe
	db   $10                                         ; $71ec: $10
	ldh  a, [$80]                                    ; $71ed: $f0 $80
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	add  b                                           ; $71f1: $80
	add  d                                           ; $71f2: $82
	cp   a                                           ; $71f3: $bf
	add  b                                           ; $71f4: $80
	cp   [hl]                                        ; $71f5: $be
	ld   [bc], a                                     ; $71f6: $02
	or   b                                           ; $71f7: $b0
	jr   nc, jr_07b_71fa                             ; $71f8: $30 $00

jr_07b_71fa:
	add  b                                           ; $71fa: $80
	ld   [bc], a                                     ; $71fb: $02
	add  b                                           ; $71fc: $80
	inc  [hl]                                        ; $71fd: $34
	add  b                                           ; $71fe: $80
	and  b                                           ; $71ff: $a0
	nop                                              ; $7200: $00
	rrca                                             ; $7201: $0f
	add  b                                           ; $7202: $80
	rst  $28                                         ; $7203: $ef
	add  b                                           ; $7204: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7205: $cf
	add  c                                           ; $7206: $81
	rrca                                             ; $7207: $0f
	add  b                                           ; $7208: $80
	ld   c, a                                        ; $7209: $4f
	add  b                                           ; $720a: $80
	xor  a                                           ; $720b: $af
	add  b                                           ; $720c: $80
	rrca                                             ; $720d: $0f
	add  b                                           ; $720e: $80
	cpl                                              ; $720f: $2f
	adc  [hl]                                        ; $7210: $8e
	pop  af                                          ; $7211: $f1
	add  b                                           ; $7212: $80
	db   $10                                         ; $7213: $10
	add  [hl]                                        ; $7214: $86
	nop                                              ; $7215: $00
	add  b                                           ; $7216: $80
	rlca                                             ; $7217: $07
	add  b                                           ; $7218: $80
	rra                                              ; $7219: $1f
	add  b                                           ; $721a: $80
	ld   a, a                                        ; $721b: $7f
	add  [hl]                                        ; $721c: $86
	nop                                              ; $721d: $00
	add  b                                           ; $721e: $80
	db   $fc                                         ; $721f: $fc
	add  d                                           ; $7220: $82
	cp   $03                                         ; $7221: $fe $03
	ld   [$93fe], a                                  ; $7223: $ea $fe $93
	add  b                                           ; $7226: $80
	add  b                                           ; $7227: $80
	call nz, $c781                                   ; $7228: $c4 $81 $c7
	add  b                                           ; $722b: $80
	jp   nz, $c480                                   ; $722c: $c2 $80 $c4

	add  b                                           ; $722f: $80
	jp   nz, $c081                                   ; $7230: $c2 $81 $c0

	nop                                              ; $7233: $00
	ld   [de], a                                     ; $7234: $12
	add  d                                           ; $7235: $82
	sub  b                                           ; $7236: $90
	add  b                                           ; $7237: $80
	ret  nc                                          ; $7238: $d0

	add  c                                           ; $7239: $81
	sub  b                                           ; $723a: $90
	nop                                              ; $723b: $00
	sub  d                                           ; $723c: $92
	add  b                                           ; $723d: $80
	sub  h                                           ; $723e: $94
	inc  b                                           ; $723f: $04
	sub  [hl]                                        ; $7240: $96
	add  [hl]                                        ; $7241: $86
	add  d                                           ; $7242: $82
	ld   b, d                                        ; $7243: $42
	cp   h                                           ; $7244: $bc
	add  b                                           ; $7245: $80

jr_07b_7246:
	inc  a                                           ; $7246: $3c
	add  b                                           ; $7247: $80
	sbc  h                                           ; $7248: $9c
	add  b                                           ; $7249: $80

jr_07b_724a:
	inc  e                                           ; $724a: $1c
	add  b                                           ; $724b: $80
	adc  h                                           ; $724c: $8c
	add  b                                           ; $724d: $80

jr_07b_724e:
	inc  c                                           ; $724e: $0c
	add  b                                           ; $724f: $80
	add  h                                           ; $7250: $84
	add  b                                           ; $7251: $80

jr_07b_7252:
	inc  b                                           ; $7252: $04
	ld   bc, $d5a9                                   ; $7253: $01 $a9 $d5
	add  b                                           ; $7256: $80
	jp   hl                                          ; $7257: $e9


	add  b                                           ; $7258: $80
	push de                                          ; $7259: $d5
	add  b                                           ; $725a: $80
	jp   hl                                          ; $725b: $e9


	add  b                                           ; $725c: $80
	push af                                          ; $725d: $f5
	add  b                                           ; $725e: $80
	jp   hl                                          ; $725f: $e9


	add  b                                           ; $7260: $80
	push af                                          ; $7261: $f5
	add  b                                           ; $7262: $80
	ei                                               ; $7263: $fb
	adc  [hl]                                        ; $7264: $8e
	rst  $38                                         ; $7265: $ff
	nop                                              ; $7266: $00
	ldh  a, [c]                                      ; $7267: $f2
	adc  e                                           ; $7268: $8b
	ld   c, $03                                      ; $7269: $0e $03
	ld   [bc], a                                     ; $726b: $02
	ld   c, $10                                      ; $726c: $0e $10
	rra                                              ; $726e: $1f
	add  b                                           ; $726f: $80
	ccf                                              ; $7270: $3f
	add  b                                           ; $7271: $80
	ld   a, a                                        ; $7272: $7f
	add  d                                           ; $7273: $82
	rst  $38                                         ; $7274: $ff
	inc  bc                                          ; $7275: $03
	ldh  a, [rIE]                                    ; $7276: $f0 $ff
	nop                                              ; $7278: $00
	ldh  a, [$80]                                    ; $7279: $f0 $80
	rrca                                             ; $727b: $0f
	nop                                              ; $727c: $00
	add  b                                           ; $727d: $80
	add  h                                           ; $727e: $84
	and  e                                           ; $727f: $a3
	add  b                                           ; $7280: $80
	and  d                                           ; $7281: $a2
	nop                                              ; $7282: $00
	and  b                                           ; $7283: $a0
	add  b                                           ; $7284: $80
	jr   nz, jr_07b_7288                             ; $7285: $20 $01

	ret  nz                                          ; $7287: $c0

jr_07b_7288:
	ldh  [$81], a                                    ; $7288: $e0 $81
	nop                                              ; $728a: $00
	add  b                                           ; $728b: $80
	rst  $38                                         ; $728c: $ff

jr_07b_728d:
	add  b                                           ; $728d: $80
	cp   $80                                         ; $728e: $fe $80
	ldh  [$81], a                                    ; $7290: $e0 $81
	nop                                              ; $7292: $00
	add  b                                           ; $7293: $80
	inc  bc                                          ; $7294: $03
	add  b                                           ; $7295: $80
	ld   e, $80                                      ; $7296: $1e $80
	ldh  a, [rP1]                                    ; $7298: $f0 $00
	nop                                              ; $729a: $00
	add  b                                           ; $729b: $80
	ldh  [rP1], a                                    ; $729c: $e0 $00
	nop                                              ; $729e: $00
	add  b                                           ; $729f: $80
	inc  bc                                          ; $72a0: $03
	add  b                                           ; $72a1: $80
	rra                                              ; $72a2: $1f
	add  b                                           ; $72a3: $80
	ld   [hl], e                                     ; $72a4: $73
	add  b                                           ; $72a5: $80
	jp   $0382                                       ; $72a6: $c3 $82 $03


	add  b                                           ; $72a9: $80
	inc  c                                           ; $72aa: $0c
	add  b                                           ; $72ab: $80
	ld   [hl], b                                     ; $72ac: $70
	add  b                                           ; $72ad: $80
	add  b                                           ; $72ae: $80
	add  b                                           ; $72af: $80
	add  d                                           ; $72b0: $82
	add  b                                           ; $72b1: $80
	sbc  h                                           ; $72b2: $9c
	add  h                                           ; $72b3: $84
	sbc  [hl]                                        ; $72b4: $9e
	add  b                                           ; $72b5: $80
	ld   de, $2280                                   ; $72b6: $11 $80 $22
	add  b                                           ; $72b9: $80
	dec  d                                           ; $72ba: $15
	add  b                                           ; $72bb: $80
	ld   [hl+], a                                    ; $72bc: $22
	add  b                                           ; $72bd: $80
	dec  d                                           ; $72be: $15
	add  b                                           ; $72bf: $80
	ld   [hl+], a                                    ; $72c0: $22
	add  b                                           ; $72c1: $80
	inc  d                                           ; $72c2: $14
	add  b                                           ; $72c3: $80
	jr   nz, jr_07b_7246                             ; $72c4: $20 $80

	rrca                                             ; $72c6: $0f
	add  b                                           ; $72c7: $80
	jr   nz, jr_07b_724a                             ; $72c8: $20 $80

	nop                                              ; $72ca: $00
	add  b                                           ; $72cb: $80
	jr   nz, jr_07b_724e                             ; $72cc: $20 $80

	nop                                              ; $72ce: $00
	add  b                                           ; $72cf: $80
	jr   nz, jr_07b_7252                             ; $72d0: $20 $80

	ld   b, b                                        ; $72d2: $40
	add  b                                           ; $72d3: $80
	and  b                                           ; $72d4: $a0
	add  b                                           ; $72d5: $80
	pop  af                                          ; $72d6: $f1
	add  b                                           ; $72d7: $80
	inc  bc                                          ; $72d8: $03
	adc  d                                           ; $72d9: $8a
	nop                                              ; $72da: $00
	add  b                                           ; $72db: $80
	rst  $38                                         ; $72dc: $ff
	ld   [bc], a                                     ; $72dd: $02
	cp   $ff                                         ; $72de: $fe $ff
	ld   bc, $0089                                   ; $72e0: $01 $89 $00
	inc  b                                           ; $72e3: $04
	ld   d, h                                        ; $72e4: $54
	cp   $2a                                         ; $72e5: $fe $2a
	cp   $7e                                         ; $72e7: $fe $7e
	adc  c                                           ; $72e9: $89
	nop                                              ; $72ea: $00
	ld   bc, $4240                                   ; $72eb: $01 $40 $42
	adc  d                                           ; $72ee: $8a
	ld   [bc], a                                     ; $72ef: $02
	ld   b, $06                                      ; $72f0: $06 $06
	inc  b                                           ; $72f2: $04
	jr   jr_07b_728d                                 ; $72f3: $18 $98

	add  [hl]                                        ; $72f5: $86
	sbc  [hl]                                        ; $72f6: $9e
	adc  b                                           ; $72f7: $88
	add  b                                           ; $72f8: $80
	sbc  [hl]                                        ; $72f9: $9e
	add  b                                           ; $72fa: $80
	sub  d                                           ; $72fb: $92
	add  h                                           ; $72fc: $84
	sub  b                                           ; $72fd: $90
	ld   [bc], a                                     ; $72fe: $02
	sub  d                                           ; $72ff: $92
	ld   e, l                                        ; $7300: $5d
	ldh  [$80], a                                    ; $7301: $e0 $80
	ld   hl, sp+$0c                                  ; $7303: $f8 $0c
	cp   $de                                         ; $7305: $fe $de
	rst  $28                                         ; $7307: $ef
	rst  $30                                         ; $7308: $f7
	rst  JumpTable                                         ; $7309: $df
	ld   sp, hl                                      ; $730a: $f9
	rst  $20                                         ; $730b: $e7
	sbc  $d9                                         ; $730c: $de $d9
	rst  ToBoot                                         ; $730e: $c7
	add  $c3                                         ; $730f: $c6 $c3
	db   $fc                                         ; $7311: $fc

jr_07b_7312:
	add  e                                           ; $7312: $83
	nop                                              ; $7313: $00
	add  b                                           ; $7314: $80
	add  b                                           ; $7315: $80
	add  b                                           ; $7316: $80
	ldh  [$80], a                                    ; $7317: $e0 $80
	db   $fc                                         ; $7319: $fc
	dec  b                                           ; $731a: $05
	ld   a, a                                        ; $731b: $7f
	cp   a                                           ; $731c: $bf
	ld   e, a                                        ; $731d: $5f
	rst  $28                                         ; $731e: $ef
	call $80f2                                       ; $731f: $cd $f2 $80
	push af                                          ; $7322: $f5
	inc  bc                                          ; $7323: $03
	di                                               ; $7324: $f3
	ldh  a, [c]                                      ; $7325: $f2
	rst  $30                                         ; $7326: $f7
	push af                                          ; $7327: $f5
	add  b                                           ; $7328: $80
	pop  af                                          ; $7329: $f1
	add  b                                           ; $732a: $80
	rst  $30                                         ; $732b: $f7
	ld   bc, $f3f0                                   ; $732c: $01 $f0 $f3
	add  b                                           ; $732f: $80
	push af                                          ; $7330: $f5
	ld   [bc], a                                     ; $7331: $02
	ld   c, h                                        ; $7332: $4c
	add  b                                           ; $7333: $80
	ld   a, h                                        ; $7334: $7c
	add  b                                           ; $7335: $80
	inc  c                                           ; $7336: $0c
	ld   [bc], a                                     ; $7337: $02
	call z, $e8e4                                    ; $7338: $cc $e4 $e8
	add  b                                           ; $733b: $80
	ret  z                                           ; $733c: $c8

	inc  bc                                          ; $733d: $03
	adc  b                                           ; $733e: $88
	ret  z                                           ; $733f: $c8

	ld   [$8088], sp                                 ; $7340: $08 $88 $80
	nop                                              ; $7343: $00
	add  b                                           ; $7344: $80
	push af                                          ; $7345: $f5
	add  b                                           ; $7346: $80
	ei                                               ; $7347: $fb
	add  b                                           ; $7348: $80
	push af                                          ; $7349: $f5
	add  b                                           ; $734a: $80
	ei                                               ; $734b: $fb
	add  b                                           ; $734c: $80
	db   $fd                                         ; $734d: $fd
	add  b                                           ; $734e: $80
	ei                                               ; $734f: $fb
	add  b                                           ; $7350: $80
	db   $fd                                         ; $7351: $fd
	add  b                                           ; $7352: $80
	rst  $38                                         ; $7353: $ff
	ld   bc, $00f0                                   ; $7354: $01 $f0 $00
	add  b                                           ; $7357: $80
	rrca                                             ; $7358: $0f
	adc  e                                           ; $7359: $8b
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	ldh  a, [$80]                                    ; $735c: $f0 $80
	nop                                              ; $735e: $00
	add  b                                           ; $735f: $80
	inc  bc                                          ; $7360: $03
	add  b                                           ; $7361: $80
	ld   e, $80                                      ; $7362: $1e $80
	db   $10                                         ; $7364: $10
	add  h                                           ; $7365: $84
	nop                                              ; $7366: $00
	add  b                                           ; $7367: $80
	rrca                                             ; $7368: $0f
	add  b                                           ; $7369: $80
	ld   [hl], c                                     ; $736a: $71
	add  b                                           ; $736b: $80
	pop  bc                                          ; $736c: $c1
	add  [hl]                                        ; $736d: $86
	ld   bc, $6180                                   ; $736e: $01 $80 $61

Call_07b_7371:
	add  d                                           ; $7371: $82
	ret  nz                                          ; $7372: $c0

	add  b                                           ; $7373: $80
	res  1, b                                        ; $7374: $cb $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7376: $cf
	add  b                                           ; $7377: $80
	inc  hl                                          ; $7378: $23
	adc  d                                           ; $7379: $8a
	db   $e3                                         ; $737a: $e3
	add  b                                           ; $737b: $80
	ldh  [c], a                                      ; $737c: $e2
	add  h                                           ; $737d: $84
	sbc  [hl]                                        ; $737e: $9e
	add  b                                           ; $737f: $80
	sbc  d                                           ; $7380: $9a
	add  b                                           ; $7381: $80
	sub  h                                           ; $7382: $94
	add  b                                           ; $7383: $80
	adc  b                                           ; $7384: $88
	add  b                                           ; $7385: $80
	ld   bc, $8a80                                   ; $7386: $01 $80 $8a
	add  b                                           ; $7389: $80
	ld   sp, $2280                                   ; $738a: $31 $80 $22
	add  b                                           ; $738d: $80
	inc  d                                           ; $738e: $14
	add  b                                           ; $738f: $80
	jr   z, jr_07b_7312                              ; $7390: $28 $80

	ld   d, b                                        ; $7392: $50
	add  b                                           ; $7393: $80
	add  b                                           ; $7394: $80
	adc  c                                           ; $7395: $89
	nop                                              ; $7396: $00
	add  b                                           ; $7397: $80
	ld   bc, $0380                                   ; $7398: $01 $80 $03
	add  b                                           ; $739b: $80
	rlca                                             ; $739c: $07
	add  b                                           ; $739d: $80
	rrca                                             ; $739e: $0f
	add  b                                           ; $739f: $80
	rra                                              ; $73a0: $1f
	add  b                                           ; $73a1: $80
	ccf                                              ; $73a2: $3f
	add  b                                           ; $73a3: $80
	ld   a, a                                        ; $73a4: $7f
	adc  c                                           ; $73a5: $89
	rst  $38                                         ; $73a6: $ff
	ld   b, $f9                                      ; $73a7: $06 $f9
	and  $e7                                         ; $73a9: $e6 $e7
	rst  $30                                         ; $73ab: $f7
	di                                               ; $73ac: $f3
	ei                                               ; $73ad: $fb
	ld   sp, hl                                      ; $73ae: $f9
	add  c                                           ; $73af: $81
	db   $fd                                         ; $73b0: $fd
	nop                                              ; $73b1: $00
	db   $fc                                         ; $73b2: $fc
	add  b                                           ; $73b3: $80
	cp   $81                                         ; $73b4: $fe $81
	rst  $38                                         ; $73b6: $ff
	call $8601                                       ; $73b7: $cd $01 $86
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	rrca                                             ; $73bc: $0f
	add  l                                           ; $73bd: $85
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	rrca                                             ; $73c0: $0f
	add  l                                           ; $73c1: $85
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	rst  $38                                         ; $73c4: $ff
	add  l                                           ; $73c5: $85
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	rst  $38                                         ; $73c8: $ff
	add  l                                           ; $73c9: $85
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	jp   z, $3785                                    ; $73cc: $ca $85 $37

	nop                                              ; $73cf: $00
	db   $fd                                         ; $73d0: $fd
	add  l                                           ; $73d1: $85
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	rst  $38                                         ; $73d4: $ff
	add  e                                           ; $73d5: $83
	nop                                              ; $73d6: $00
	add  b                                           ; $73d7: $80
	add  b                                           ; $73d8: $80
	nop                                              ; $73d9: $00
	rst  $38                                         ; $73da: $ff
	add  l                                           ; $73db: $85
	nop                                              ; $73dc: $00
	ld   bc, $8e73                                   ; $73dd: $01 $73 $8e
	add  d                                           ; $73e0: $82
	ld   c, $02                                      ; $73e1: $0e $02
	ld   [bc], a                                     ; $73e3: $02
	nop                                              ; $73e4: $00
	rst  $38                                         ; $73e5: $ff
	add  l                                           ; $73e6: $85
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	rst  $38                                         ; $73e9: $ff
	add  l                                           ; $73ea: $85
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	rst  $38                                         ; $73ed: $ff
	add  l                                           ; $73ee: $85
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	rst  $38                                         ; $73f1: $ff
	add  l                                           ; $73f2: $85
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	rst  $38                                         ; $73f5: $ff
	add  l                                           ; $73f6: $85
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	di                                               ; $73f9: $f3
	add  e                                           ; $73fa: $83
	ld   c, $02                                      ; $73fb: $0e $02
	ld   [bc], a                                     ; $73fd: $02
	nop                                              ; $73fe: $00
	rst  $38                                         ; $73ff: $ff
	add  l                                           ; $7400: $85
	nop                                              ; $7401: $00
	inc  bc                                          ; $7402: $03
	sbc  l                                           ; $7403: $9d
	ld   h, d                                        ; $7404: $62
	pop  de                                          ; $7405: $d1
	or   c                                           ; $7406: $b1
	add  b                                           ; $7407: $80
	ldh  a, [rSC]                                    ; $7408: $f0 $02

jr_07b_740a:
	ld   bc, $ff61                                   ; $740a: $01 $61 $ff
	add  l                                           ; $740d: $85
	nop                                              ; $740e: $00
	add  c                                           ; $740f: $81
	ldh  a, [$80]                                    ; $7410: $f0 $80
	ld   [hl], b                                     ; $7412: $70
	inc  bc                                          ; $7413: $03
	or   b                                           ; $7414: $b0
	cp   b                                           ; $7415: $b8
	ld   a, b                                        ; $7416: $78
	add  b                                           ; $7417: $80
	add  l                                           ; $7418: $85
	nop                                              ; $7419: $00
	inc  bc                                          ; $741a: $03
	ccf                                              ; $741b: $3f
	inc  [hl]                                        ; $741c: $34
	ld   [hl], $3a                                   ; $741d: $36 $3a
	add  b                                           ; $741f: $80
	dec  a                                           ; $7420: $3d
	ld   [bc], a                                     ; $7421: $02
	ld   a, d                                        ; $7422: $7a
	ld   l, d                                        ; $7423: $6a
	rla                                              ; $7424: $17
	add  l                                           ; $7425: $85
	nop                                              ; $7426: $00
	inc  bc                                          ; $7427: $03
	ld   sp, hl                                      ; $7428: $f9
	ld   b, $0b                                      ; $7429: $06 $0b
	dec  c                                           ; $742b: $0d
	add  b                                           ; $742c: $80
	rrca                                             ; $742d: $0f
	ld   [bc], a                                     ; $742e: $02
	nop                                              ; $742f: $00
	ld   b, $ff                                      ; $7430: $06 $ff
	add  l                                           ; $7432: $85
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7435: $cf
	add  e                                           ; $7436: $83
	ld   [hl], b                                     ; $7437: $70
	ld   [bc], a                                     ; $7438: $02
	ld   b, b                                        ; $7439: $40
	nop                                              ; $743a: $00
	rst  $38                                         ; $743b: $ff
	add  l                                           ; $743c: $85
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	rst  $38                                         ; $743f: $ff
	add  l                                           ; $7440: $85
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	rst  $38                                         ; $7443: $ff
	add  l                                           ; $7444: $85
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	rst  $38                                         ; $7447: $ff
	add  l                                           ; $7448: $85
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	rst  $38                                         ; $744b: $ff
	add  l                                           ; $744c: $85
	nop                                              ; $744d: $00
	ld   bc, $71ce                                   ; $744e: $01 $ce $71
	add  d                                           ; $7451: $82
	ld   [hl], b                                     ; $7452: $70
	ld   [bc], a                                     ; $7453: $02
	ld   b, b                                        ; $7454: $40
	nop                                              ; $7455: $00
	ldh  a, [$8d]                                    ; $7456: $f0 $8d
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	ldh  a, [$8d]                                    ; $745a: $f0 $8d
	nop                                              ; $745c: $00
	ld   bc, $3735                                   ; $745d: $01 $35 $37
	add  h                                           ; $7460: $84
	inc  hl                                          ; $7461: $23
	add  [hl]                                        ; $7462: $86
	dec  hl                                          ; $7463: $2b
	nop                                              ; $7464: $00
	add  d                                           ; $7465: $82
	add  b                                           ; $7466: $80
	sbc  a                                           ; $7467: $9f
	add  b                                           ; $7468: $80
	add  b                                           ; $7469: $80
	add  b                                           ; $746a: $80
	sbc  a                                           ; $746b: $9f
	add  b                                           ; $746c: $80
	add  b                                           ; $746d: $80
	add  b                                           ; $746e: $80
	sbc  a                                           ; $746f: $9f
	nop                                              ; $7470: $00
	add  b                                           ; $7471: $80
	add  b                                           ; $7472: $80
	sbc  a                                           ; $7473: $9f
	add  b                                           ; $7474: $80
	add  b                                           ; $7475: $80
	dec  bc                                          ; $7476: $0b
	nop                                              ; $7477: $00
	rst  $38                                         ; $7478: $ff
	rst  $20                                         ; $7479: $e7
	jr   jr_07b_7480                                 ; $747a: $18 $04

	rst  $38                                         ; $747c: $ff
	ei                                               ; $747d: $fb
	jr   jr_07b_749c                                 ; $747e: $18 $1c

jr_07b_7480:
	rst  $38                                         ; $7480: $ff
	ei                                               ; $7481: $fb
	nop                                              ; $7482: $00
	add  b                                           ; $7483: $80
	db   $fd                                         ; $7484: $fd
	ld   [bc], a                                     ; $7485: $02
	inc  b                                           ; $7486: $04
	inc  e                                           ; $7487: $1c
	jr   jr_07b_740a                                 ; $7488: $18 $80

	rst  $38                                         ; $748a: $ff
	add  b                                           ; $748b: $80
	nop                                              ; $748c: $00
	add  b                                           ; $748d: $80
	rst  $38                                         ; $748e: $ff
	add  b                                           ; $748f: $80
	nop                                              ; $7490: $00
	add  b                                           ; $7491: $80
	rst  $38                                         ; $7492: $ff
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	add  b                                           ; $7495: $80

jr_07b_7496:
	rst  $38                                         ; $7496: $ff
	add  c                                           ; $7497: $81
	nop                                              ; $7498: $00
	ld   a, [bc]                                     ; $7499: $0a
	rst  $38                                         ; $749a: $ff
	sbc  a                                           ; $749b: $9f

jr_07b_749c:
	ld   h, b                                        ; $749c: $60
	db   $10                                         ; $749d: $10
	rst  $38                                         ; $749e: $ff
	rst  $28                                         ; $749f: $ef
	ld   h, b                                        ; $74a0: $60
	ld   [hl], b                                     ; $74a1: $70
	rst  $38                                         ; $74a2: $ff
	rst  $28                                         ; $74a3: $ef
	nop                                              ; $74a4: $00
	add  b                                           ; $74a5: $80
	rst  $30                                         ; $74a6: $f7
	ld   [bc], a                                     ; $74a7: $02
	db   $10                                         ; $74a8: $10
	ld   [hl], b                                     ; $74a9: $70
	ld   h, b                                        ; $74aa: $60
	add  b                                           ; $74ab: $80
	rst  $38                                         ; $74ac: $ff
	add  b                                           ; $74ad: $80
	nop                                              ; $74ae: $00
	rra                                              ; $74af: $1f
	db   $fd                                         ; $74b0: $fd
	cp   $01                                         ; $74b1: $fe $01
	rlca                                             ; $74b3: $07
	pop  af                                          ; $74b4: $f1
	rst  $38                                         ; $74b5: $ff
	inc  sp                                          ; $74b6: $33
	adc  [hl]                                        ; $74b7: $8e
	adc  $5c                                         ; $74b8: $ce $5c
	ld   e, l                                        ; $74ba: $5d
	ld   a, e                                        ; $74bb: $7b
	ld   h, d                                        ; $74bc: $62
	ld   hl, $60e1                                   ; $74bd: $21 $e1 $60
	ldh  [hScriptOpcodeParams], a                                    ; $74c0: $e0 $a0
	ldh  [rAUD4LEN], a                               ; $74c2: $e0 $20
	rst  $28                                         ; $74c4: $ef
	jr   nz, jr_07b_7496                             ; $74c5: $20 $cf

	ld   b, b                                        ; $74c7: $40
	cp   a                                           ; $74c8: $bf
	add  b                                           ; $74c9: $80
	ccf                                              ; $74ca: $3f
	nop                                              ; $74cb: $00
	cp   a                                           ; $74cc: $bf
	rst  $38                                         ; $74cd: $ff
	ld   d, b                                        ; $74ce: $50
	db   $10                                         ; $74cf: $10
	add  d                                           ; $74d0: $82
	nop                                              ; $74d1: $00
	dec  bc                                          ; $74d2: $0b
	rst  $38                                         ; $74d3: $ff
	nop                                              ; $74d4: $00
	rst  $38                                         ; $74d5: $ff
	nop                                              ; $74d6: $00
	rst  $38                                         ; $74d7: $ff
	nop                                              ; $74d8: $00
	rst  $38                                         ; $74d9: $ff
	dec  b                                           ; $74da: $05
	push de                                          ; $74db: $d5
	jp   nc, $282a                                   ; $74dc: $d2 $2a $28

	add  d                                           ; $74df: $82
	nop                                              ; $74e0: $00
	rla                                              ; $74e1: $17
	rst  $38                                         ; $74e2: $ff
	nop                                              ; $74e3: $00
	rst  $38                                         ; $74e4: $ff
	nop                                              ; $74e5: $00
	rst  $38                                         ; $74e6: $ff
	nop                                              ; $74e7: $00
	rst  $38                                         ; $74e8: $ff
	nop                                              ; $74e9: $00
	ld   b, $04                                      ; $74ea: $06 $04
	rlca                                             ; $74ec: $07
	ld   b, $07                                      ; $74ed: $06 $07
	dec  b                                           ; $74ef: $05
	rlca                                             ; $74f0: $07
	inc  b                                           ; $74f1: $04
	rst  $30                                         ; $74f2: $f7
	inc  b                                           ; $74f3: $04
	di                                               ; $74f4: $f3
	ld   [bc], a                                     ; $74f5: $02
	db   $fd                                         ; $74f6: $fd
	ld   bc, $00fc                                   ; $74f7: $01 $fc $00
	add  b                                           ; $74fa: $80
	rst  $38                                         ; $74fb: $ff
	add  b                                           ; $74fc: $80
	nop                                              ; $74fd: $00
	ld   d, $bf                                      ; $74fe: $16 $bf
	ld   a, a                                        ; $7500: $7f
	add  b                                           ; $7501: $80
	ldh  [$8f], a                                    ; $7502: $e0 $8f
	rst  $38                                         ; $7504: $ff
	call z, Call_07b_7371                            ; $7505: $cc $71 $73
	ld   a, [hl-]                                    ; $7508: $3a
	cp   d                                           ; $7509: $ba
	sbc  [hl]                                        ; $750a: $9e
	rst  $38                                         ; $750b: $ff
	ld   sp, hl                                      ; $750c: $f9
	ld   b, $08                                      ; $750d: $06 $08
	rst  $38                                         ; $750f: $ff
	rst  $30                                         ; $7510: $f7
	ld   b, $0e                                      ; $7511: $06 $0e
	rst  $38                                         ; $7513: $ff
	rst  $30                                         ; $7514: $f7
	nop                                              ; $7515: $00
	add  b                                           ; $7516: $80
	rst  $28                                         ; $7517: $ef
	ld   [bc], a                                     ; $7518: $02
	ld   [$630e], sp                                 ; $7519: $08 $0e $63
	add  l                                           ; $751c: $85
	ld   a, a                                        ; $751d: $7f
	add  d                                           ; $751e: $82
	rst  $38                                         ; $751f: $ff
	nop                                              ; $7520: $00
	rst  $28                                         ; $7521: $ef
	add  c                                           ; $7522: $81
	rst  $38                                         ; $7523: $ff
	dec  bc                                          ; $7524: $0b
	ld   a, [bc]                                     ; $7525: $0a
	rst  $38                                         ; $7526: $ff
	rst  $20                                         ; $7527: $e7
	jr   jr_07b_754a                                 ; $7528: $18 $20

	rst  $38                                         ; $752a: $ff
	rst  JumpTable                                         ; $752b: $df
	jr   jr_07b_7566                                 ; $752c: $18 $38

	rst  $38                                         ; $752e: $ff
	rst  JumpTable                                         ; $752f: $df
	nop                                              ; $7530: $00
	add  b                                           ; $7531: $80
	cp   a                                           ; $7532: $bf
	inc  bc                                          ; $7533: $03
	jr   nz, jr_07b_756e                             ; $7534: $20 $38

	db   $ec                                         ; $7536: $ec
	ld   a, [bc]                                     ; $7537: $0a
	add  b                                           ; $7538: $80
	ld   d, h                                        ; $7539: $54
	add  b                                           ; $753a: $80
	ld   a, $01                                      ; $753b: $3e $01
	ld   e, [hl]                                     ; $753d: $5e
	ld   e, a                                        ; $753e: $5f
	add  a                                           ; $753f: $87
	rst  $38                                         ; $7540: $ff
	ld   [bc], a                                     ; $7541: $02
	nop                                              ; $7542: $00
	ld   e, h                                        ; $7543: $5c
	and  e                                           ; $7544: $a3
	add  b                                           ; $7545: $80
	ld   d, l                                        ; $7546: $55
	ld   bc, $2faf                                   ; $7547: $01 $af $2f

jr_07b_754a:
	add  [hl]                                        ; $754a: $86
	ld   a, a                                        ; $754b: $7f
	nop                                              ; $754c: $00
	ld   d, [hl]                                     ; $754d: $56
	add  c                                           ; $754e: $81
	dec  hl                                          ; $754f: $2b
	add  h                                           ; $7550: $84
	cpl                                              ; $7551: $2f
	ld   bc, $2725                                   ; $7552: $01 $25 $27
	add  d                                           ; $7555: $82
	or   a                                           ; $7556: $b7
	add  b                                           ; $7557: $80
	sbc  a                                           ; $7558: $9f
	add  d                                           ; $7559: $82
	add  b                                           ; $755a: $80
	add  c                                           ; $755b: $81
	sbc  a                                           ; $755c: $9f
	nop                                              ; $755d: $00
	add  b                                           ; $755e: $80
	add  d                                           ; $755f: $82
	sbc  a                                           ; $7560: $9f
	add  b                                           ; $7561: $80
	add  b                                           ; $7562: $80
	ld   bc, $fdfa                                   ; $7563: $01 $fa $fd

jr_07b_7566:
	add  d                                           ; $7566: $82
	inc  e                                           ; $7567: $1c
	nop                                              ; $7568: $00
	rst  $20                                         ; $7569: $e7
	add  b                                           ; $756a: $80
	rst  $38                                         ; $756b: $ff
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00

jr_07b_756e:
	add  d                                           ; $756e: $82
	rst  $38                                         ; $756f: $ff
	add  c                                           ; $7570: $81
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	rst  $38                                         ; $7573: $ff
	add  d                                           ; $7574: $82
	nop                                              ; $7575: $00
	add  c                                           ; $7576: $81
	rst  $38                                         ; $7577: $ff
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	add  d                                           ; $757a: $82
	rst  $38                                         ; $757b: $ff
	add  b                                           ; $757c: $80
	nop                                              ; $757d: $00
	ld   bc, $f768                                   ; $757e: $01 $68 $f7
	add  d                                           ; $7581: $82
	ld   [hl], b                                     ; $7582: $70
	nop                                              ; $7583: $00
	sbc  a                                           ; $7584: $9f
	add  b                                           ; $7585: $80
	rst  $38                                         ; $7586: $ff
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	add  b                                           ; $7589: $80
	ldh  [$80], a                                    ; $758a: $e0 $80
	ret  nz                                          ; $758c: $c0

	add  b                                           ; $758d: $80
	add  b                                           ; $758e: $80
	rrca                                             ; $758f: $0f
	scf                                              ; $7590: $37
	ld   a, [$6452]                                  ; $7591: $fa $52 $64
	ld   d, $73                                      ; $7594: $16 $73
	pop  af                                          ; $7596: $f1
	ldh  a, [$f4]                                    ; $7597: $f0 $f4
	ld   [hl], a                                     ; $7599: $77
	ld   [hl], h                                     ; $759a: $74
	ld   [hl], a                                     ; $759b: $77
	db   $10                                         ; $759c: $10
	ld   [hl], b                                     ; $759d: $70
	ld   a, a                                        ; $759e: $7f
	nop                                              ; $759f: $00
	add  b                                           ; $75a0: $80
	rst  $38                                         ; $75a1: $ff
	add  hl, bc                                      ; $75a2: $09
	nop                                              ; $75a3: $00
	rst  $38                                         ; $75a4: $ff
	nop                                              ; $75a5: $00
	rst  $38                                         ; $75a6: $ff
	nop                                              ; $75a7: $00
	rst  $38                                         ; $75a8: $ff
	nop                                              ; $75a9: $00
	rst  $38                                         ; $75aa: $ff
	nop                                              ; $75ab: $00
	rst  $38                                         ; $75ac: $ff
	add  b                                           ; $75ad: $80
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	rst  $38                                         ; $75b0: $ff
	add  b                                           ; $75b1: $80
	nop                                              ; $75b2: $00
	add  e                                           ; $75b3: $83
	rst  $38                                         ; $75b4: $ff
	add  b                                           ; $75b5: $80
	nop                                              ; $75b6: $00
	add  b                                           ; $75b7: $80
	rst  $38                                         ; $75b8: $ff
	ld   b, $00                                      ; $75b9: $06 $00
	rst  $38                                         ; $75bb: $ff
	ld   bc, $0300                                   ; $75bc: $01 $00 $03
	nop                                              ; $75bf: $00
	ld   [bc], a                                     ; $75c0: $02
	add  e                                           ; $75c1: $83
	rst  $38                                         ; $75c2: $ff
	add  b                                           ; $75c3: $80
	nop                                              ; $75c4: $00
	add  b                                           ; $75c5: $80
	rst  $38                                         ; $75c6: $ff
	ld   [bc], a                                     ; $75c7: $02
	nop                                              ; $75c8: $00
	rst  $38                                         ; $75c9: $ff
	ld   bc, $0081                                   ; $75ca: $01 $81 $00
	nop                                              ; $75cd: $00
	cp   $85                                         ; $75ce: $fe $85
	nop                                              ; $75d0: $00
	add  h                                           ; $75d1: $84
	add  b                                           ; $75d2: $80
	add  b                                           ; $75d3: $80
	add  d                                           ; $75d4: $82
	ld   de, $5f13                                   ; $75d5: $11 $13 $5f
	ld   c, d                                        ; $75d8: $4a
	ld   h, $68                                      ; $75d9: $26 $68
	adc  $8f                                         ; $75db: $ce $8f
	rrca                                             ; $75dd: $0f
	cpl                                              ; $75de: $2f
	xor  $2e                                         ; $75df: $ee $2e
	xor  $08                                         ; $75e1: $ee $08
	ld   c, $fe                                      ; $75e3: $0e $fe
	nop                                              ; $75e5: $00
	ld   d, $ef                                      ; $75e6: $16 $ef
	add  d                                           ; $75e8: $82
	ld   c, $00                                      ; $75e9: $0e $00
	ld   sp, hl                                      ; $75eb: $f9
	add  b                                           ; $75ec: $80
	rst  $38                                         ; $75ed: $ff
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	add  b                                           ; $75f0: $80
	rlca                                             ; $75f1: $07
	add  b                                           ; $75f2: $80
	inc  bc                                          ; $75f3: $03
	add  b                                           ; $75f4: $80
	ld   bc, $0001                                   ; $75f5: $01 $01 $00
	rst  $38                                         ; $75f8: $ff
	add  d                                           ; $75f9: $82
	nop                                              ; $75fa: $00
	add  c                                           ; $75fb: $81
	rst  $38                                         ; $75fc: $ff
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	add  d                                           ; $75ff: $82
	rst  $38                                         ; $7600: $ff
	add  b                                           ; $7601: $80
	nop                                              ; $7602: $00
	ld   bc, $bf58                                   ; $7603: $01 $58 $bf
	add  d                                           ; $7606: $82
	jr   c, jr_07b_7609                              ; $7607: $38 $00

jr_07b_7609:
	rst  $20                                         ; $7609: $e7
	add  b                                           ; $760a: $80
	rst  $38                                         ; $760b: $ff
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	add  d                                           ; $760e: $82
	rst  $38                                         ; $760f: $ff
	add  b                                           ; $7610: $80
	nop                                              ; $7611: $00
	ld   bc, $0001                                   ; $7612: $01 $01 $00
	add  b                                           ; $7615: $80
	ld   [bc], a                                     ; $7616: $02
	add  b                                           ; $7617: $80
	inc  b                                           ; $7618: $04
	ld   bc, $282b                                   ; $7619: $01 $2b $28
	add  b                                           ; $761c: $80
	ld   e, l                                        ; $761d: $5d
	add  b                                           ; $761e: $80
	ld   sp, hl                                      ; $761f: $f9
	add  e                                           ; $7620: $83
	db   $fd                                         ; $7621: $fd
	ld   [bc], a                                     ; $7622: $02
	nop                                              ; $7623: $00
	cp   $00                                         ; $7624: $fe $00
	add  b                                           ; $7626: $80
	inc  d                                           ; $7627: $14
	add  b                                           ; $7628: $80
	xor  d                                           ; $7629: $aa
	add  b                                           ; $762a: $80
	ld   [hl], h                                     ; $762b: $74
	add  h                                           ; $762c: $84
	cp   $02                                         ; $762d: $fe $02
	ld   c, c                                        ; $762f: $49
	or   a                                           ; $7630: $b7
	or   l                                           ; $7631: $b5
	add  l                                           ; $7632: $85
	or   a                                           ; $7633: $b7
	ld   bc, $b796                                   ; $7634: $01 $96 $b7
	add  b                                           ; $7637: $80
	cp   a                                           ; $7638: $bf
	ld   [bc], a                                     ; $7639: $02
	cp   l                                           ; $763a: $bd
	cp   a                                           ; $763b: $bf
	cp   $87                                         ; $763c: $fe $87
	ret  nz                                          ; $763e: $c0

	add  d                                           ; $763f: $82
	rst  JumpTable                                         ; $7640: $df
	ld   [bc], a                                     ; $7641: $02
	sbc  $c1                                         ; $7642: $de $c1
	rst  $38                                         ; $7644: $ff
	add  a                                           ; $7645: $87
	nop                                              ; $7646: $00
	add  d                                           ; $7647: $82
	rst  $38                                         ; $7648: $ff
	ld   [bc], a                                     ; $7649: $02
	rst  $28                                         ; $764a: $ef
	ldh  a, [$1f]                                    ; $764b: $f0 $1f
	add  a                                           ; $764d: $87
	nop                                              ; $764e: $00
	add  e                                           ; $764f: $83
	rst  $38                                         ; $7650: $ff
	add  b                                           ; $7651: $80
	nop                                              ; $7652: $00
	add  c                                           ; $7653: $81
	rst  $38                                         ; $7654: $ff
	add  h                                           ; $7655: $84
	nop                                              ; $7656: $00
	add  e                                           ; $7657: $83
	rst  $38                                         ; $7658: $ff
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	add  h                                           ; $765b: $84
	rst  $38                                         ; $765c: $ff
	add  b                                           ; $765d: $80
	nop                                              ; $765e: $00
	add  b                                           ; $765f: $80
	rst  $38                                         ; $7660: $ff
	ld   [bc], a                                     ; $7661: $02
	nop                                              ; $7662: $00
	rst  $38                                         ; $7663: $ff
	ld   bc, $0081                                   ; $7664: $01 $81 $00
	nop                                              ; $7667: $00
	ld   bc, $ff83                                   ; $7668: $01 $83 $ff
	add  b                                           ; $766b: $80
	nop                                              ; $766c: $00
	add  b                                           ; $766d: $80
	rst  $38                                         ; $766e: $ff
	ld   [bc], a                                     ; $766f: $02
	nop                                              ; $7670: $00
	rst  $38                                         ; $7671: $ff
	ld   bc, $0081                                   ; $7672: $01 $81 $00
	nop                                              ; $7675: $00
	ld   bc, $ff83                                   ; $7676: $01 $83 $ff
	add  b                                           ; $7679: $80
	nop                                              ; $767a: $00
	add  b                                           ; $767b: $80
	rst  $38                                         ; $767c: $ff
	inc  b                                           ; $767d: $04
	nop                                              ; $767e: $00
	rst  $38                                         ; $767f: $ff
	ld   bc, $0100                                   ; $7680: $01 $00 $01
	add  b                                           ; $7683: $80
	nop                                              ; $7684: $00
	add  e                                           ; $7685: $83
	rst  $38                                         ; $7686: $ff
	add  b                                           ; $7687: $80
	nop                                              ; $7688: $00
	add  b                                           ; $7689: $80
	rst  $38                                         ; $768a: $ff
	ld   b, $00                                      ; $768b: $06 $00
	rst  $38                                         ; $768d: $ff
	ld   bc, $8100                                   ; $768e: $01 $00 $81
	nop                                              ; $7691: $00
	add  a                                           ; $7692: $87
	add  e                                           ; $7693: $83
	ld   hl, sp-$80                                  ; $7694: $f8 $80
	nop                                              ; $7696: $00
	add  b                                           ; $7697: $80
	cp   $06                                         ; $7698: $fe $06
	nop                                              ; $769a: $00
	rst  $38                                         ; $769b: $ff
	ld   bc, $8100                                   ; $769c: $01 $00 $81
	nop                                              ; $769f: $00
	ld   a, l                                        ; $76a0: $7d
	add  c                                           ; $76a1: $81
	ld   [bc], a                                     ; $76a2: $02

jr_07b_76a3:
	add  h                                           ; $76a3: $84
	nop                                              ; $76a4: $00
	add  b                                           ; $76a5: $80
	add  b                                           ; $76a6: $80
	inc  b                                           ; $76a7: $04
	add  sp, $18                                     ; $76a8: $e8 $18
	adc  a                                           ; $76aa: $8f
	nop                                              ; $76ab: $00
	ld   l, l                                        ; $76ac: $6d
	add  e                                           ; $76ad: $83
	rra                                              ; $76ae: $1f
	nop                                              ; $76af: $00
	dec  de                                          ; $76b0: $1b
	add  c                                           ; $76b1: $81
	rra                                              ; $76b2: $1f
	ld   b, $1d                                      ; $76b3: $06 $1d
	inc  e                                           ; $76b5: $1c
	ld   a, [bc]                                     ; $76b6: $0a
	inc  bc                                          ; $76b7: $03
	ld   a, [hl]                                     ; $76b8: $7e
	nop                                              ; $76b9: $00
	ldh  a, [$85]                                    ; $76ba: $f0 $85
	add  b                                           ; $76bc: $80
	add  b                                           ; $76bd: $80
	nop                                              ; $76be: $00
	ld   b, $20                                      ; $76bf: $06 $20
	jr   nc, jr_07b_76a3                             ; $76c1: $30 $e0

	nop                                              ; $76c3: $00

Call_07b_76c4:
	add  b                                           ; $76c4: $80
	nop                                              ; $76c5: $00
	ldh  a, [$8d]                                    ; $76c6: $f0 $8d
	add  b                                           ; $76c8: $80
	inc  bc                                          ; $76c9: $03
	di                                               ; $76ca: $f3
	nop                                              ; $76cb: $00
	and  c                                           ; $76cc: $a1
	and  b                                           ; $76cd: $a0
	add  b                                           ; $76ce: $80
	ld   d, h                                        ; $76cf: $54
	ld   bc, $e9ef                                   ; $76d0: $01 $ef $e9
	add  b                                           ; $76d3: $80
	ld   a, [$fb81]                                  ; $76d4: $fa $81 $fb
	add  d                                           ; $76d7: $82
	rst  $30                                         ; $76d8: $f7
	ld   [bc], a                                     ; $76d9: $02
	nop                                              ; $76da: $00
	db   $fd                                         ; $76db: $fd
	nop                                              ; $76dc: $00
	add  b                                           ; $76dd: $80
	add  b                                           ; $76de: $80
	add  b                                           ; $76df: $80
	inc  b                                           ; $76e0: $04
	add  b                                           ; $76e1: $80
	xor  l                                           ; $76e2: $ad
	ld   bc, $f3f5                                   ; $76e3: $01 $f5 $f3
	add  d                                           ; $76e6: $82
	ei                                               ; $76e7: $fb
	nop                                              ; $76e8: $00
	ld   l, l                                        ; $76e9: $6d
	add  c                                           ; $76ea: $81
	or   a                                           ; $76eb: $b7
	nop                                              ; $76ec: $00
	or   e                                           ; $76ed: $b3
	add  c                                           ; $76ee: $81
	or   a                                           ; $76ef: $b7
	nop                                              ; $76f0: $00
	and  a                                           ; $76f1: $a7
	add  c                                           ; $76f2: $81
	or   a                                           ; $76f3: $b7
	add  d                                           ; $76f4: $82
	rst  $30                                         ; $76f5: $f7
	ld   b, $f1                                      ; $76f6: $06 $f1
	rst  ToBoot                                         ; $76f8: $c7
	jp   nc, $cadf                                   ; $76f9: $d2 $df $ca

	call c, $81d8                                    ; $76fc: $dc $d8 $81
	rst  JumpTable                                         ; $76ff: $df
	add  c                                           ; $7700: $81
	ret  nz                                          ; $7701: $c0

	add  c                                           ; $7702: $81
	rst  JumpTable                                         ; $7703: $df
	inc  bc                                          ; $7704: $03
	ld   c, a                                        ; $7705: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7706: $cf
	cp   a                                           ; $7707: $bf
	ccf                                              ; $7708: $3f
	add  b                                           ; $7709: $80
	rst  $38                                         ; $770a: $ff
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	add  c                                           ; $770d: $81
	rst  $38                                         ; $770e: $ff
	add  c                                           ; $770f: $81
	nop                                              ; $7710: $00
	add  a                                           ; $7711: $87
	rst  $38                                         ; $7712: $ff
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	add  c                                           ; $7715: $81
	rst  $38                                         ; $7716: $ff
	add  c                                           ; $7717: $81
	nop                                              ; $7718: $00
	adc  e                                           ; $7719: $8b
	rst  $38                                         ; $771a: $ff
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	add  c                                           ; $771d: $81
	rst  $38                                         ; $771e: $ff
	add  b                                           ; $771f: $80
	nop                                              ; $7720: $00
	add  b                                           ; $7721: $80
	dec  b                                           ; $7722: $05
	ld   bc, $0a8a                                   ; $7723: $01 $8a $0a
	add  b                                           ; $7726: $80
	dec  d                                           ; $7727: $15
	add  b                                           ; $7728: $80
	cpl                                              ; $7729: $2f
	add  c                                           ; $772a: $81
	ld   a, a                                        ; $772b: $7f
	add  h                                           ; $772c: $84
	cp   a                                           ; $772d: $bf
	ld   [bc], a                                     ; $772e: $02
	nop                                              ; $772f: $00
	ld   a, a                                        ; $7730: $7f
	nop                                              ; $7731: $00
	add  b                                           ; $7732: $80
	ld   [hl+], a                                    ; $7733: $22
	ld   bc, $9555                                   ; $7734: $01 $55 $95
	add  b                                           ; $7737: $80
	xor  a                                           ; $7738: $af
	add  c                                           ; $7739: $81
	cp   a                                           ; $773a: $bf
	add  c                                           ; $773b: $81
	rst  JumpTable                                         ; $773c: $df
	ld   bc, $45e5                                   ; $773d: $01 $e5 $45
	add  b                                           ; $7740: $80
	ld   a, [hl+]                                    ; $7741: $2a
	ld   bc, $bf7f                                   ; $7742: $01 $7f $bf
	add  b                                           ; $7745: $80
	ccf                                              ; $7746: $3f
	nop                                              ; $7747: $00
	cp   a                                           ; $7748: $bf
	add  d                                           ; $7749: $82
	rst  JumpTable                                         ; $774a: $df
	add  d                                           ; $774b: $82
	rst  $28                                         ; $774c: $ef
	ld   [bc], a                                     ; $774d: $02
	nop                                              ; $774e: $00
	ccf                                              ; $774f: $3f
	add  b                                           ; $7750: $80
	add  b                                           ; $7751: $80
	xor  b                                           ; $7752: $a8
	ld   bc, $d5b5                                   ; $7753: $01 $b5 $d5
	add  b                                           ; $7756: $80
	jp   c, $df00                                    ; $7757: $da $00 $df

	add  d                                           ; $775a: $82
	rst  $28                                         ; $775b: $ef
	ld   b, $f7                                      ; $775c: $06 $f7
	adc  d                                           ; $775e: $8a
	ld   [bc], a                                     ; $775f: $02
	push de                                          ; $7760: $d5
	dec  d                                           ; $7761: $15
	db   $eb                                         ; $7762: $eb
	adc  e                                           ; $7763: $8b
	add  b                                           ; $7764: $80
	ld   e, a                                        ; $7765: $5f
	nop                                              ; $7766: $00
	rst  JumpTable                                         ; $7767: $df
	add  b                                           ; $7768: $80
	rst  $28                                         ; $7769: $ef
	add  d                                           ; $776a: $82
	rst  $30                                         ; $776b: $f7
	add  b                                           ; $776c: $80
	ei                                               ; $776d: $fb
	ld   [$3f80], sp                                 ; $776e: $08 $80 $3f
	nop                                              ; $7771: $00
	and  d                                           ; $7772: $a2
	jp   nz, $e5d5                                   ; $7773: $c2 $d5 $e5

	db   $eb                                         ; $7776: $eb
	di                                               ; $7777: $f3
	add  c                                           ; $7778: $81
	rst  $30                                         ; $7779: $f7
	add  b                                           ; $777a: $80
	ei                                               ; $777b: $fb
	ld   b, $fd                                      ; $777c: $06 $fd
	ret  z                                           ; $777e: $c8

	ld   a, [bc]                                     ; $777f: $0a
	push af                                          ; $7780: $f5
	dec  d                                           ; $7781: $15
	sbc  a                                           ; $7782: $9f
	xor  a                                           ; $7783: $af
	add  b                                           ; $7784: $80
	ld   l, a                                        ; $7785: $6f
	nop                                              ; $7786: $00
	rst  $28                                         ; $7787: $ef
	add  b                                           ; $7788: $80
	rst  $30                                         ; $7789: $f7
	add  b                                           ; $778a: $80
	ei                                               ; $778b: $fb
	add  b                                           ; $778c: $80
	db   $fd                                         ; $778d: $fd
	ld   bc, $f1fe                                   ; $778e: $01 $fe $f1
	add  b                                           ; $7791: $80
	add  b                                           ; $7792: $80
	add  b                                           ; $7793: $80
	ret  nc                                          ; $7794: $d0

	add  b                                           ; $7795: $80
	ldh  [$87], a                                    ; $7796: $e0 $87
	ldh  a, [rTIMA]                                  ; $7798: $f0 $05
	rlca                                             ; $779a: $07
	nop                                              ; $779b: $00
	rrca                                             ; $779c: $0f
	nop                                              ; $779d: $00
	dec  c                                           ; $779e: $0d
	dec  b                                           ; $779f: $05
	add  b                                           ; $77a0: $80
	ld   a, [bc]                                     ; $77a1: $0a
	add  l                                           ; $77a2: $85
	rrca                                             ; $77a3: $0f
	inc  b                                           ; $77a4: $04
	ld   c, $02                                      ; $77a5: $0e $02
	nop                                              ; $77a7: $00
	and  a                                           ; $77a8: $a7
	and  b                                           ; $77a9: $a0
	add  b                                           ; $77aa: $80
	ld   b, b                                        ; $77ab: $40
	ld   bc, $e0ec                                   ; $77ac: $01 $ec $e0
	add  b                                           ; $77af: $80
	pop  af                                          ; $77b0: $f1
	ld   bc, $eaf2                                   ; $77b1: $01 $f2 $ea
	add  c                                           ; $77b4: $81
	rst  $28                                         ; $77b5: $ef
	ld   b, $df                                      ; $77b6: $06 $df
	sbc  $00                                         ; $77b8: $de $00
	db   $fc                                         ; $77ba: $fc
	nop                                              ; $77bb: $00
	dec  b                                           ; $77bc: $05
	inc  bc                                          ; $77bd: $03
	add  b                                           ; $77be: $80
	dec  hl                                          ; $77bf: $2b
	ld   bc, $575b                                   ; $77c0: $01 $5b $57
	add  c                                           ; $77c3: $81
	rst  $30                                         ; $77c4: $f7
	add  c                                           ; $77c5: $81
	rst  $28                                         ; $77c6: $ef
	nop                                              ; $77c7: $00
	dec  l                                           ; $77c8: $2d
	add  c                                           ; $77c9: $81
	rst  $30                                         ; $77ca: $f7
	add  b                                           ; $77cb: $80
	ld   [hl], a                                     ; $77cc: $77
	ld   bc, $7771                                   ; $77cd: $01 $71 $77
	add  b                                           ; $77d0: $80
	ld   [hl], e                                     ; $77d1: $73
	nop                                              ; $77d2: $00
	ld   [hl], d                                     ; $77d3: $72
	add  c                                           ; $77d4: $81

jr_07b_77d5:
	ld   [hl], e                                     ; $77d5: $73
	ld   [bc], a                                     ; $77d6: $02
	ld   h, e                                        ; $77d7: $63
	ld   [hl], e                                     ; $77d8: $73
	db   $fd                                         ; $77d9: $fd
	add  c                                           ; $77da: $81
	rst  JumpTable                                         ; $77db: $df
	add  d                                           ; $77dc: $82
	ret  nz                                          ; $77dd: $c0

	add  [hl]                                        ; $77de: $86
	rst  ToBoot                                         ; $77df: $c7
	add  d                                           ; $77e0: $82
	rst  $38                                         ; $77e1: $ff
	add  d                                           ; $77e2: $82
	nop                                              ; $77e3: $00
	add  [hl]                                        ; $77e4: $86
	rst  $38                                         ; $77e5: $ff
	dec  b                                           ; $77e6: $05
	inc  bc                                          ; $77e7: $03
	nop                                              ; $77e8: $00
	db   $f4                                         ; $77e9: $f4
	nop                                              ; $77ea: $00
	dec  e                                           ; $77eb: $1d
	dec  b                                           ; $77ec: $05
	add  b                                           ; $77ed: $80
	xor  [hl]                                        ; $77ee: $ae
	ld   [bc], a                                     ; $77ef: $02
	ld   l, a                                        ; $77f0: $6f
	ld   e, a                                        ; $77f1: $5f
	rst  JumpTable                                         ; $77f2: $df
	add  b                                           ; $77f3: $80
	cp   a                                           ; $77f4: $bf
	add  b                                           ; $77f5: $80
	ld   a, a                                        ; $77f6: $7f
	ld   bc, $78ff                                   ; $77f7: $01 $ff $78
	add  e                                           ; $77fa: $83
	add  a                                           ; $77fb: $87
	add  d                                           ; $77fc: $82
	rlca                                             ; $77fd: $07
	ld   b, $18                                      ; $77fe: $06 $18
	rra                                              ; $7800: $1f
	rla                                              ; $7801: $17
	rra                                              ; $7802: $1f
	db   $10                                         ; $7803: $10
	jr   nz, jr_07b_77d5                             ; $7804: $20 $cf

	add  a                                           ; $7806: $87
	nop                                              ; $7807: $00
	ld   b, $04                                      ; $7808: $06 $04
	inc  c                                           ; $780a: $0c
	ld   b, $00                                      ; $780b: $06 $00
	inc  bc                                          ; $780d: $03
	nop                                              ; $780e: $00
	db   $fd                                         ; $780f: $fd
	adc  c                                           ; $7810: $89
	nop                                              ; $7811: $00
	inc  b                                           ; $7812: $04
	ld   b, b                                        ; $7813: $40
	ret  nz                                          ; $7814: $c0

	ld   a, l                                        ; $7815: $7d
	nop                                              ; $7816: $00
	ld   [bc], a                                     ; $7817: $02
	add  c                                           ; $7818: $81
	rst  $38                                         ; $7819: $ff
	add  d                                           ; $781a: $82
	nop                                              ; $781b: $00
	add  d                                           ; $781c: $82
	rst  $38                                         ; $781d: $ff
	add  c                                           ; $781e: $81
	cp   $01                                         ; $781f: $fe $01
	db   $fc                                         ; $7821: $fc
	db   $fd                                         ; $7822: $fd
	add  c                                           ; $7823: $81
	rst  $38                                         ; $7824: $ff
	add  d                                           ; $7825: $82
	nop                                              ; $7826: $00
	add  d                                           ; $7827: $82
	rst  $38                                         ; $7828: $ff
	add  b                                           ; $7829: $80
	ccf                                              ; $782a: $3f
	ld   [bc], a                                     ; $782b: $02
	adc  a                                           ; $782c: $8f
	rrca                                             ; $782d: $0f
	cp   [hl]                                        ; $782e: $be
	adc  c                                           ; $782f: $89
	ccf                                              ; $7830: $3f
	ld   bc, $ff01                                   ; $7831: $01 $01 $ff
	add  c                                           ; $7834: $81
	nop                                              ; $7835: $00
	add  a                                           ; $7836: $87
	rst  $38                                         ; $7837: $ff
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	add  c                                           ; $783a: $81
	rst  $38                                         ; $783b: $ff
	add  c                                           ; $783c: $81
	nop                                              ; $783d: $00
	add  c                                           ; $783e: $81
	rst  $38                                         ; $783f: $ff
	add  b                                           ; $7840: $80
	ld   bc, $3e00                                   ; $7841: $01 $00 $3e
	add  a                                           ; $7844: $87
	ccf                                              ; $7845: $3f
	ld   bc, $fff4                                   ; $7846: $01 $f4 $ff
	add  d                                           ; $7849: $82
	cp   a                                           ; $784a: $bf
	inc  bc                                          ; $784b: $03
	cp   [hl]                                        ; $784c: $be
	cp   a                                           ; $784d: $bf
	cp   e                                           ; $784e: $bb
	cp   a                                           ; $784f: $bf
	add  h                                           ; $7850: $84
	ccf                                              ; $7851: $3f
	adc  [hl]                                        ; $7852: $8e
	add  b                                           ; $7853: $80
	ld   [$00f7], sp                                 ; $7854: $08 $f7 $00
	inc  bc                                          ; $7857: $03
	nop                                              ; $7858: $00
	ld   e, [hl]                                     ; $7859: $5e
	ld   d, d                                        ; $785a: $52
	or   l                                           ; $785b: $b5
	xor  l                                           ; $785c: $ad
	rst  $28                                         ; $785d: $ef
	add  d                                           ; $785e: $82
	rst  JumpTable                                         ; $785f: $df
	add  b                                           ; $7860: $80
	cp   a                                           ; $7861: $bf
	ld   b, $7f                                      ; $7862: $06 $7f
	ld   a, [hl]                                     ; $7864: $7e
	nop                                              ; $7865: $00
	ld   a, [$ad00]                                  ; $7866: $fa $00 $ad
	and  c                                           ; $7869: $a1
	add  b                                           ; $786a: $80
	jp   nc, $f700                                   ; $786b: $d2 $00 $f7

	add  b                                           ; $786e: $80
	rst  $28                                         ; $786f: $ef
	add  d                                           ; $7870: $82
	rst  JumpTable                                         ; $7871: $df
	ld   bc, $eebf                                   ; $7872: $01 $bf $ee
	add  c                                           ; $7875: $81
	ld   [hl], e                                     ; $7876: $73
	inc  bc                                          ; $7877: $03
	ld   [hl], c                                     ; $7878: $71
	ld   [hl], e                                     ; $7879: $73
	ld   d, e                                        ; $787a: $53
	ld   [hl], e                                     ; $787b: $73
	add  h                                           ; $787c: $84
	di                                               ; $787d: $f3
	add  b                                           ; $787e: $80
	ei                                               ; $787f: $fb
	add  b                                           ; $7880: $80
	rst  ToBoot                                         ; $7881: $c7
	adc  h                                           ; $7882: $8c
	add  a                                           ; $7883: $87
	adc  [hl]                                        ; $7884: $8e
	rst  $38                                         ; $7885: $ff
	add  b                                           ; $7886: $80
	ld   hl, sp-$7a                                  ; $7887: $f8 $86
	rst  $38                                         ; $7889: $ff
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	add  c                                           ; $788c: $81
	rst  $38                                         ; $788d: $ff
	add  b                                           ; $788e: $80
	nop                                              ; $788f: $00
	ld   bc, $fb04                                   ; $7890: $01 $04 $fb
	add  [hl]                                        ; $7893: $86
	cp   e                                           ; $7894: $bb
	add  h                                           ; $7895: $84
	or   e                                           ; $7896: $b3
	add  b                                           ; $7897: $80

jr_07b_7898:
	inc  sp                                          ; $7898: $33
	add  d                                           ; $7899: $82
	ld   sp, $1180                                   ; $789a: $31 $80 $11
	add  b                                           ; $789d: $80
	nop                                              ; $789e: $00
	add  b                                           ; $789f: $80
	ld   bc, $1604                                   ; $78a0: $01 $04 $16
	jr   jr_07b_7898                                 ; $78a3: $18 $f3

	nop                                              ; $78a5: $00
	ldh  [c], a                                      ; $78a6: $e2
	add  e                                           ; $78a7: $83
	rra                                              ; $78a8: $1f
	add  b                                           ; $78a9: $80
	nop                                              ; $78aa: $00
	add  b                                           ; $78ab: $80
	ld   a, a                                        ; $78ac: $7f
	inc  b                                           ; $78ad: $04

jr_07b_78ae:
	nop                                              ; $78ae: $00
	rst  $38                                         ; $78af: $ff
	ld   bc, $0300                                   ; $78b0: $01 $00 $03
	add  b                                           ; $78b3: $80
	nop                                              ; $78b4: $00
	jr   nz, jr_07b_78ae                             ; $78b5: $20 $f7

	pop  af                                          ; $78b7: $f1
	rst  $38                                         ; $78b8: $ff
	pop  af                                          ; $78b9: $f1
	rst  $28                                         ; $78ba: $ef
	push hl                                          ; $78bb: $e5
	cp   $f5                                         ; $78bc: $fe $f5
	db   $ec                                         ; $78be: $ec
	ldh  [c], a                                      ; $78bf: $e2
	cp   $f9                                         ; $78c0: $fe $f9
	rst  $30                                         ; $78c2: $f7
	ld   a, [$4df2]                                  ; $78c3: $fa $f2 $4d
	rst  $28                                         ; $78c6: $ef
	rlca                                             ; $78c7: $07
	rst  $20                                         ; $78c8: $e7
	rlca                                             ; $78c9: $07
	ld   [hl], a                                     ; $78ca: $77
	rla                                              ; $78cb: $17
	daa                                              ; $78cc: $27
	ld   b, a                                        ; $78cd: $47
	ld   [hl], a                                     ; $78ce: $77
	sub  a                                           ; $78cf: $97
	rst  $20                                         ; $78d0: $e7
	rrca                                             ; $78d1: $0f
	rst  $28                                         ; $78d2: $ef
	xor  a                                           ; $78d3: $af
	adc  a                                           ; $78d4: $8f
	cp   a                                           ; $78d5: $bf
	ccf                                              ; $78d6: $3f
	add  [hl]                                        ; $78d7: $86
	rst  $38                                         ; $78d8: $ff
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	add  c                                           ; $78db: $81
	rst  $38                                         ; $78dc: $ff
	add  c                                           ; $78dd: $81
	nop                                              ; $78de: $00
	add  a                                           ; $78df: $87
	rst  $38                                         ; $78e0: $ff
	inc  bc                                          ; $78e1: $03
	ld   bc, $feff                                   ; $78e2: $01 $ff $fe
	rst  $38                                         ; $78e5: $ff
	add  b                                           ; $78e6: $80
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	pop  bc                                          ; $78e9: $c1
	adc  l                                           ; $78ea: $8d
	ccf                                              ; $78eb: $3f
	nop                                              ; $78ec: $00
	db   $e3                                         ; $78ed: $e3
	add  a                                           ; $78ee: $87
	ldh  [c], a                                      ; $78ef: $e2
	ld   b, $1a                                      ; $78f0: $06 $1a
	ld   a, [$faea]                                  ; $78f2: $fa $ea $fa
	ld   [$7e04], sp                                 ; $78f5: $08 $04 $7e
	add  e                                           ; $78f8: $83
	add  d                                           ; $78f9: $82
	adc  b                                           ; $78fa: $88
	ld   [bc], a                                     ; $78fb: $02
	nop                                              ; $78fc: $00
	rst  $38                                         ; $78fd: $ff
	rst  $38                                         ; $78fe: $ff
	nop                                              ; $78ff: $00
	db   $fc                                         ; $7900: $fc
	nop                                              ; $7901: $00
	rst  $20                                         ; $7902: $e7

jr_07b_7903:
	ld   bc, $0086                                   ; $7903: $01 $86 $00
	nop                                              ; $7906: $00
	ld   [bc], a                                     ; $7907: $02
	add  l                                           ; $7908: $85
	dec  c                                           ; $7909: $0d
	nop                                              ; $790a: $00
	rrca                                             ; $790b: $0f
	add  l                                           ; $790c: $85
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	ld   [bc], a                                     ; $790f: $02
	add  l                                           ; $7910: $85
	db   $fd                                         ; $7911: $fd
	nop                                              ; $7912: $00
	rst  $38                                         ; $7913: $ff
	add  l                                           ; $7914: $85
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	inc  h                                           ; $7917: $24
	add  l                                           ; $7918: $85
	db   $db                                         ; $7919: $db
	nop                                              ; $791a: $00
	rst  $38                                         ; $791b: $ff
	add  [hl]                                        ; $791c: $86
	nop                                              ; $791d: $00
	add  [hl]                                        ; $791e: $86
	rst  $38                                         ; $791f: $ff
	add  l                                           ; $7920: $85
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	ld   b, b                                        ; $7923: $40
	add  l                                           ; $7924: $85
	cp   a                                           ; $7925: $bf
	nop                                              ; $7926: $00
	rst  $38                                         ; $7927: $ff
	add  l                                           ; $7928: $85
	nop                                              ; $7929: $00
	ld   bc, $f00f                                   ; $792a: $01 $0f $f0
	add  b                                           ; $792d: $80
	ldh  [$80], a                                    ; $792e: $e0 $80
	ldh  a, [$80]                                    ; $7930: $f0 $80
	ldh  [rP1], a                                    ; $7932: $e0 $00
	rst  $38                                         ; $7934: $ff
	add  l                                           ; $7935: $85
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	ld   [hl], h                                     ; $7938: $74
	add  e                                           ; $7939: $83
	adc  e                                           ; $793a: $8b
	add  b                                           ; $793b: $80
	sbc  e                                           ; $793c: $9b
	nop                                              ; $793d: $00
	rst  $38                                         ; $793e: $ff
	add  l                                           ; $793f: $85
	nop                                              ; $7940: $00
	ld   bc, $cc33                                   ; $7941: $01 $33 $cc
	add  b                                           ; $7944: $80
	adc  h                                           ; $7945: $8c
	add  b                                           ; $7946: $80
	call z, $8c80                                    ; $7947: $cc $80 $8c
	nop                                              ; $794a: $00
	rst  $38                                         ; $794b: $ff
	add  l                                           ; $794c: $85
	nop                                              ; $794d: $00
	ld   bc, $7d82                                   ; $794e: $01 $82 $7d
	add  b                                           ; $7951: $80
	ld   a, d                                        ; $7952: $7a
	add  b                                           ; $7953: $80
	ld   a, l                                        ; $7954: $7d
	add  b                                           ; $7955: $80
	ld   a, d                                        ; $7956: $7a
	nop                                              ; $7957: $00
	rst  $38                                         ; $7958: $ff
	add  l                                           ; $7959: $85
	nop                                              ; $795a: $00
	ld   bc, $7d82                                   ; $795b: $01 $82 $7d
	add  b                                           ; $795e: $80
	ld   a, [hl]                                     ; $795f: $7e
	add  b                                           ; $7960: $80
	ld   a, l                                        ; $7961: $7d
	add  b                                           ; $7962: $80
	ld   a, [hl]                                     ; $7963: $7e
	nop                                              ; $7964: $00
	rst  $38                                         ; $7965: $ff
	add  l                                           ; $7966: $85
	nop                                              ; $7967: $00
	ld   bc, $40bf                                   ; $7968: $01 $bf $40
	add  b                                           ; $796b: $80
	adc  b                                           ; $796c: $88
	add  b                                           ; $796d: $80
	ld   b, b                                        ; $796e: $40
	add  b                                           ; $796f: $80
	adc  b                                           ; $7970: $88
	nop                                              ; $7971: $00
	rst  $38                                         ; $7972: $ff
	add  l                                           ; $7973: $85
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	rst  $38                                         ; $7976: $ff
	add  l                                           ; $7977: $85
	nop                                              ; $7978: $00
	ld   bc, $707f                                   ; $7979: $01 $7f $70
	add  b                                           ; $797c: $80
	add  b                                           ; $797d: $80
	add  [hl]                                        ; $797e: $86
	ldh  a, [$80]                                    ; $797f: $f0 $80
	jr   nc, jr_07b_7903                             ; $7981: $30 $80

	ret  nz                                          ; $7983: $c0

	ld   bc, $fcf3                                   ; $7984: $01 $f3 $fc
	add  b                                           ; $7987: $80
	rst  $38                                         ; $7988: $ff
	add  b                                           ; $7989: $80
	ccf                                              ; $798a: $3f
	add  b                                           ; $798b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $798c: $cf
	add  b                                           ; $798d: $80
	di                                               ; $798e: $f3
	add  b                                           ; $798f: $80
	db   $fc                                         ; $7990: $fc
	add  d                                           ; $7991: $82
	rst  $38                                         ; $7992: $ff
	add  b                                           ; $7993: $80
	db   $e3                                         ; $7994: $e3
	add  b                                           ; $7995: $80
	db   $fc                                         ; $7996: $fc
	add  b                                           ; $7997: $80
	rst  $38                                         ; $7998: $ff
	add  b                                           ; $7999: $80
	ld   a, a                                        ; $799a: $7f
	add  b                                           ; $799b: $80
	sbc  a                                           ; $799c: $9f
	add  b                                           ; $799d: $80
	rst  $20                                         ; $799e: $e7
	add  b                                           ; $799f: $80
	ld   sp, hl                                      ; $79a0: $f9
	add  b                                           ; $79a1: $80
	cp   $00                                         ; $79a2: $fe $00
	rst  $38                                         ; $79a4: $ff
	add  l                                           ; $79a5: $85
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	ld   a, b                                        ; $79a8: $78
	add  c                                           ; $79a9: $81
	add  a                                           ; $79aa: $87
	add  b                                           ; $79ab: $80
	ld   b, a                                        ; $79ac: $47
	add  b                                           ; $79ad: $80
	cpl                                              ; $79ae: $2f
	nop                                              ; $79af: $00
	db   $fd                                         ; $79b0: $fd
	adc  [hl]                                        ; $79b1: $8e
	dec  c                                           ; $79b2: $0d
	add  a                                           ; $79b3: $87
	db   $fd                                         ; $79b4: $fd
	add  h                                           ; $79b5: $84
	rst  $38                                         ; $79b6: $ff
	adc  [hl]                                        ; $79b7: $8e
	db   $db                                         ; $79b8: $db
	add  b                                           ; $79b9: $80
	rst  $28                                         ; $79ba: $ef
	add  b                                           ; $79bb: $80
	di                                               ; $79bc: $f3
	add  b                                           ; $79bd: $80
	db   $fd                                         ; $79be: $fd
	add  b                                           ; $79bf: $80
	ld   a, [hl]                                     ; $79c0: $7e
	add  b                                           ; $79c1: $80
	cp   a                                           ; $79c2: $bf
	add  b                                           ; $79c3: $80
	rst  JumpTable                                         ; $79c4: $df
	add  b                                           ; $79c5: $80
	rst  $20                                         ; $79c6: $e7
	add  b                                           ; $79c7: $80
	ei                                               ; $79c8: $fb
	adc  [hl]                                        ; $79c9: $8e
	cp   a                                           ; $79ca: $bf
	adc  [hl]                                        ; $79cb: $8e
	ldh  a, [$88]                                    ; $79cc: $f0 $88
	sbc  e                                           ; $79ce: $9b
	add  h                                           ; $79cf: $84
	db   $db                                         ; $79d0: $db
	adc  d                                           ; $79d1: $8a
	call z, $cf82                                    ; $79d2: $cc $82 $cf
	add  b                                           ; $79d5: $80
	ld   a, l                                        ; $79d6: $7d
	add  b                                           ; $79d7: $80
	ld   a, d                                        ; $79d8: $7a
	add  b                                           ; $79d9: $80
	ld   a, l                                        ; $79da: $7d
	add  b                                           ; $79db: $80
	ld   a, d                                        ; $79dc: $7a
	add  b                                           ; $79dd: $80
	ld   a, l                                        ; $79de: $7d
	add  b                                           ; $79df: $80
	ld   a, d                                        ; $79e0: $7a
	add  b                                           ; $79e1: $80
	ld   a, l                                        ; $79e2: $7d
	add  b                                           ; $79e3: $80
	ld   a, d                                        ; $79e4: $7a
	add  b                                           ; $79e5: $80
	ld   a, l                                        ; $79e6: $7d
	add  b                                           ; $79e7: $80
	ld   a, [hl]                                     ; $79e8: $7e
	add  b                                           ; $79e9: $80
	ld   a, l                                        ; $79ea: $7d
	add  b                                           ; $79eb: $80
	ld   a, [hl]                                     ; $79ec: $7e
	add  b                                           ; $79ed: $80
	ld   a, l                                        ; $79ee: $7d
	add  b                                           ; $79ef: $80
	ld   a, [hl]                                     ; $79f0: $7e
	add  b                                           ; $79f1: $80
	ld   a, l                                        ; $79f2: $7d
	add  b                                           ; $79f3: $80
	ld   a, [hl]                                     ; $79f4: $7e
	add  b                                           ; $79f5: $80
	ld   b, h                                        ; $79f6: $44
	add  b                                           ; $79f7: $80
	adc  b                                           ; $79f8: $88
	add  b                                           ; $79f9: $80
	ld   b, h                                        ; $79fa: $44
	add  b                                           ; $79fb: $80
	adc  b                                           ; $79fc: $88
	add  b                                           ; $79fd: $80
	ld   b, h                                        ; $79fe: $44
	add  b                                           ; $79ff: $80
	adc  d                                           ; $7a00: $8a
	add  b                                           ; $7a01: $80
	ld   b, h                                        ; $7a02: $44
	add  b                                           ; $7a03: $80
	adc  d                                           ; $7a04: $8a
	sub  h                                           ; $7a05: $94
	nop                                              ; $7a06: $00
	add  b                                           ; $7a07: $80
	ld   b, b                                        ; $7a08: $40
	add  b                                           ; $7a09: $80
	nop                                              ; $7a0a: $00
	add  b                                           ; $7a0b: $80
	ld   b, b                                        ; $7a0c: $40
	add  b                                           ; $7a0d: $80
	nop                                              ; $7a0e: $00
	add  b                                           ; $7a0f: $80
	ld   b, b                                        ; $7a10: $40
	nop                                              ; $7a11: $00
	ld   e, a                                        ; $7a12: $5f
	adc  e                                           ; $7a13: $8b
	ld   d, b                                        ; $7a14: $50
	add  b                                           ; $7a15: $80
	add  b                                           ; $7a16: $80
	nop                                              ; $7a17: $00
	ld   [$f581], a                                  ; $7a18: $ea $81 $f5
	add  b                                           ; $7a1b: $80
	ld   [hl], l                                     ; $7a1c: $75
	add  b                                           ; $7a1d: $80
	sub  l                                           ; $7a1e: $95
	add  b                                           ; $7a1f: $80
	push af                                          ; $7a20: $f5
	add  b                                           ; $7a21: $80
	ld   [hl], c                                     ; $7a22: $71
	add  b                                           ; $7a23: $80
	sub  [hl]                                        ; $7a24: $96
	ld   bc, $e3f3                                   ; $7a25: $01 $f3 $e3
	add  b                                           ; $7a28: $80
	cpl                                              ; $7a29: $2f
	add  b                                           ; $7a2a: $80
	ld   b, $80                                      ; $7a2b: $06 $80
	ld   a, [de]                                     ; $7a2d: $1a
	add  b                                           ; $7a2e: $80
	inc  e                                           ; $7a2f: $1c
	add  b                                           ; $7a30: $80
	dec  e                                           ; $7a31: $1d
	rlca                                             ; $7a32: $07
	dec  l                                           ; $7a33: $2d
	dec  a                                           ; $7a34: $3d
	dec  b                                           ; $7a35: $05
	dec  a                                           ; $7a36: $3d
	inc  bc                                          ; $7a37: $03
	ld   a, e                                        ; $7a38: $7b
	rrca                                             ; $7a39: $0f
	ld   e, a                                        ; $7a3a: $5f
	add  b                                           ; $7a3b: $80
	ld   h, e                                        ; $7a3c: $63
	add  b                                           ; $7a3d: $80
	inc  a                                           ; $7a3e: $3c
	add  b                                           ; $7a3f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a40: $cf
	add  b                                           ; $7a41: $80
	pop  af                                          ; $7a42: $f1
	add  b                                           ; $7a43: $80
	cp   $80                                         ; $7a44: $fe $80
	ld   a, a                                        ; $7a46: $7f
	add  b                                           ; $7a47: $80
	sbc  a                                           ; $7a48: $9f
	adc  [hl]                                        ; $7a49: $8e
	rst  $38                                         ; $7a4a: $ff
	adc  [hl]                                        ; $7a4b: $8e
	db   $db                                         ; $7a4c: $db
	inc  bc                                          ; $7a4d: $03
	ldh  [$e1], a                                    ; $7a4e: $e0 $e1
	ld   sp, hl                                      ; $7a50: $f9
	ld   hl, sp-$80                                  ; $7a51: $f8 $80
	ld   a, [hl]                                     ; $7a53: $7e
	add  b                                           ; $7a54: $80
	sbc  a                                           ; $7a55: $9f
	add  b                                           ; $7a56: $80
	rst  $20                                         ; $7a57: $e7
	add  b                                           ; $7a58: $80
	ld   sp, hl                                      ; $7a59: $f9
	add  b                                           ; $7a5a: $80
	ld   a, [hl]                                     ; $7a5b: $7e
	add  b                                           ; $7a5c: $80
	sbc  a                                           ; $7a5d: $9f
	adc  d                                           ; $7a5e: $8a
	cp   a                                           ; $7a5f: $bf
	add  d                                           ; $7a60: $82
	cp   e                                           ; $7a61: $bb
	ld   bc, $5545                                   ; $7a62: $01 $45 $55
	add  h                                           ; $7a65: $84
	dec  d                                           ; $7a66: $15
	add  b                                           ; $7a67: $80
	sub  l                                           ; $7a68: $95
	add  b                                           ; $7a69: $80
	ld   [hl], c                                     ; $7a6a: $71
	add  b                                           ; $7a6b: $80
	sub  [hl]                                        ; $7a6c: $96
	ld   bc, $e3f3                                   ; $7a6d: $01 $f3 $e3
	adc  [hl]                                        ; $7a70: $8e
	db   $db                                         ; $7a71: $db
	add  h                                           ; $7a72: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a73: $cf
	adc  b                                           ; $7a74: $88

jr_07b_7a75:
	rst  $28                                         ; $7a75: $ef
	add  b                                           ; $7a76: $80
	ld   a, l                                        ; $7a77: $7d
	add  b                                           ; $7a78: $80
	ld   a, d                                        ; $7a79: $7a
	add  b                                           ; $7a7a: $80
	ld   a, l                                        ; $7a7b: $7d
	add  b                                           ; $7a7c: $80
	ld   a, [$fd80]                                  ; $7a7d: $fa $80 $fd
	add  b                                           ; $7a80: $80
	ld   a, [$fd80]                                  ; $7a81: $fa $80 $fd
	add  b                                           ; $7a84: $80
	ld   hl, sp-$80                                  ; $7a85: $f8 $80
	ld   a, l                                        ; $7a87: $7d
	add  b                                           ; $7a88: $80
	ld   a, [hl]                                     ; $7a89: $7e
	add  b                                           ; $7a8a: $80
	ld   a, l                                        ; $7a8b: $7d
	add  b                                           ; $7a8c: $80
	ld   a, [hl]                                     ; $7a8d: $7e
	add  b                                           ; $7a8e: $80
	ld   a, l                                        ; $7a8f: $7d
	add  b                                           ; $7a90: $80
	cp   $80                                         ; $7a91: $fe $80
	ld   a, l                                        ; $7a93: $7d
	add  b                                           ; $7a94: $80
	nop                                              ; $7a95: $00
	add  b                                           ; $7a96: $80
	ld   b, h                                        ; $7a97: $44
	add  b                                           ; $7a98: $80
	adc  d                                           ; $7a99: $8a
	add  b                                           ; $7a9a: $80
	ld   b, l                                        ; $7a9b: $45
	add  b                                           ; $7a9c: $80
	adc  d                                           ; $7a9d: $8a
	add  b                                           ; $7a9e: $80
	ld   b, l                                        ; $7a9f: $45
	add  b                                           ; $7aa0: $80
	adc  d                                           ; $7aa1: $8a
	add  b                                           ; $7aa2: $80
	ld   b, l                                        ; $7aa3: $45
	add  b                                           ; $7aa4: $80
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	ld   e, a                                        ; $7aa7: $5f
	adc  l                                           ; $7aa8: $8d
	ld   d, b                                        ; $7aa9: $50
	ld   bc, $202f                                   ; $7aaa: $01 $2f $20
	add  b                                           ; $7aad: $80
	ld   b, b                                        ; $7aae: $40
	add  b                                           ; $7aaf: $80
	and  b                                           ; $7ab0: $a0
	add  b                                           ; $7ab1: $80
	ld   d, b                                        ; $7ab2: $50
	add  b                                           ; $7ab3: $80
	and  b                                           ; $7ab4: $a0
	add  b                                           ; $7ab5: $80
	ld   d, b                                        ; $7ab6: $50
	add  b                                           ; $7ab7: $80
	and  b                                           ; $7ab8: $a0
	add  b                                           ; $7ab9: $80
	ld   d, b                                        ; $7aba: $50
	nop                                              ; $7abb: $00
	push hl                                          ; $7abc: $e5
	adc  l                                           ; $7abd: $8d
	push af                                          ; $7abe: $f5
	nop                                              ; $7abf: $00
	db   $10                                         ; $7ac0: $10
	add  [hl]                                        ; $7ac1: $86
	nop                                              ; $7ac2: $00
	add  d                                           ; $7ac3: $82
	ld   bc, $0381                                   ; $7ac4: $01 $81 $03
	ld   de, $7b10                                   ; $7ac7: $11 $10 $7b
	ld   h, c                                        ; $7aca: $61
	ei                                               ; $7acb: $fb
	ldh  a, [$f7]                                    ; $7acc: $f0 $f7
	ldh  a, [$f7]                                    ; $7ace: $f0 $f7
	ldh  a, [$f7]                                    ; $7ad0: $f0 $f7
	db   $f4                                         ; $7ad2: $f4
	rst  $28                                         ; $7ad3: $ef
	xor  $ef                                         ; $7ad4: $ee $ef
	xor  $df                                         ; $7ad6: $ee $df
	ld   hl, $80f0                                   ; $7ad8: $21 $f0 $80
	nop                                              ; $7adb: $00
	adc  d                                           ; $7adc: $8a
	ld   d, b                                        ; $7add: $50
	nop                                              ; $7ade: $00
	ldh  a, [$87]                                    ; $7adf: $f0 $87
	rst  $38                                         ; $7ae1: $ff
	add  h                                           ; $7ae2: $84
	db   $fd                                         ; $7ae3: $fd
	add  h                                           ; $7ae4: $84
	db   $db                                         ; $7ae5: $db
	adc  b                                           ; $7ae6: $88
	rst  JumpTable                                         ; $7ae7: $df
	add  d                                           ; $7ae8: $82
	rst  $38                                         ; $7ae9: $ff
	adc  d                                           ; $7aea: $8a
	rst  $30                                         ; $7aeb: $f7
	adc  [hl]                                        ; $7aec: $8e
	cp   e                                           ; $7aed: $bb
	add  b                                           ; $7aee: $80
	ccf                                              ; $7aef: $3f
	add  b                                           ; $7af0: $80
	nop                                              ; $7af1: $00
	add  b                                           ; $7af2: $80
	jr   nc, jr_07b_7a75                             ; $7af3: $30 $80

	call z, $f380                                    ; $7af5: $cc $80 $f3
	add  b                                           ; $7af8: $80
	cp   $80                                         ; $7af9: $fe $80
	ld   a, a                                        ; $7afb: $7f
	add  b                                           ; $7afc: $80
	sbc  a                                           ; $7afd: $9f
	add  b                                           ; $7afe: $80
	db   $db                                         ; $7aff: $db
	adc  h                                           ; $7b00: $8c
	ei                                               ; $7b01: $fb
	adc  [hl]                                        ; $7b02: $8e
	rst  $28                                         ; $7b03: $ef
	add  e                                           ; $7b04: $83
	nop                                              ; $7b05: $00
	ld   [bc], a                                     ; $7b06: $02
	rst  $38                                         ; $7b07: $ff
	add  b                                           ; $7b08: $80
	rst  $38                                         ; $7b09: $ff
	add  b                                           ; $7b0a: $80
	ret  nz                                          ; $7b0b: $c0

	add  b                                           ; $7b0c: $80
	push de                                          ; $7b0d: $d5
	add  b                                           ; $7b0e: $80
	reti                                             ; $7b0f: $d9


	add  b                                           ; $7b10: $80
	call c, Call_07b_7f00                            ; $7b11: $dc $00 $7f
	sub  l                                           ; $7b14: $95
	nop                                              ; $7b15: $00
	ld   [$1c08], sp                                 ; $7b16: $08 $08 $1c
	nop                                              ; $7b19: $00
	ld   l, $10                                      ; $7b1a: $2e $10
	ld   e, a                                        ; $7b1c: $5f
	ld   [hl+], a                                    ; $7b1d: $22
	xor  a                                           ; $7b1e: $af
	ld   hl, sp-$74                                  ; $7b1f: $f8 $8c
	nop                                              ; $7b21: $00
	add  b                                           ; $7b22: $80
	add  b                                           ; $7b23: $80
	add  h                                           ; $7b24: $84
	nop                                              ; $7b25: $00
	add  b                                           ; $7b26: $80
	inc  bc                                          ; $7b27: $03
	db   $10                                         ; $7b28: $10
	rrca                                             ; $7b29: $0f
	add  hl, de                                      ; $7b2a: $19
	ccf                                              ; $7b2b: $3f
	add  d                                           ; $7b2c: $82
	rst  $38                                         ; $7b2d: $ff
	ld   bc, $a5ff                                   ; $7b2e: $01 $ff $a5
	nop                                              ; $7b31: $00
	ld   [$0400], sp                                 ; $7b32: $08 $00 $04
	inc  [hl]                                        ; $7b35: $34
	ld   [hl+], a                                    ; $7b36: $22
	ld   l, d                                        ; $7b37: $6a
	ld   [hl], l                                     ; $7b38: $75
	push af                                          ; $7b39: $f5
	add  b                                           ; $7b3a: $80
	ld   a, [$d404]                                  ; $7b3b: $fa $04 $d4
	db   $f4                                         ; $7b3e: $f4
	inc  c                                           ; $7b3f: $0c
	db   $fc                                         ; $7b40: $fc
	ret  nc                                          ; $7b41: $d0

	add  h                                           ; $7b42: $84
	rlca                                             ; $7b43: $07
	add  d                                           ; $7b44: $82
	rrca                                             ; $7b45: $0f
	add  d                                           ; $7b46: $82
	rra                                              ; $7b47: $1f
	ld   bc, $2f3f                                   ; $7b48: $01 $3f $2f
	add  c                                           ; $7b4b: $81
	rst  JumpTable                                         ; $7b4c: $df
	inc  c                                           ; $7b4d: $0c
	rst  $38                                         ; $7b4e: $ff
	cp   a                                           ; $7b4f: $bf
	and  h                                           ; $7b50: $a4
	cp   a                                           ; $7b51: $bf
	cp   e                                           ; $7b52: $bb
	cp   a                                           ; $7b53: $bf
	push bc                                          ; $7b54: $c5
	ld   a, a                                        ; $7b55: $7f
	ld   b, b                                        ; $7b56: $40
	ld   a, [hl]                                     ; $7b57: $7e
	ld   [hl+], a                                    ; $7b58: $22
	ld   a, [hl]                                     ; $7b59: $7e
	or   l                                           ; $7b5a: $b5
	add  a                                           ; $7b5b: $87
	dec  c                                           ; $7b5c: $0d
	add  b                                           ; $7b5d: $80
	add  hl, bc                                      ; $7b5e: $09
	add  b                                           ; $7b5f: $80
	dec  b                                           ; $7b60: $05
	add  b                                           ; $7b61: $80
	add  hl, bc                                      ; $7b62: $09
	nop                                              ; $7b63: $00
	ld   c, l                                        ; $7b64: $4d
	adc  l                                           ; $7b65: $8d
	cp   l                                           ; $7b66: $bd
	adc  [hl]                                        ; $7b67: $8e
	rst  JumpTable                                         ; $7b68: $df
	add  [hl]                                        ; $7b69: $86
	rst  $30                                         ; $7b6a: $f7
	add  d                                           ; $7b6b: $82
	rst  $38                                         ; $7b6c: $ff
	add  b                                           ; $7b6d: $80
	ld   a, a                                        ; $7b6e: $7f
	add  b                                           ; $7b6f: $80
	ld   a, [hl]                                     ; $7b70: $7e
	add  h                                           ; $7b71: $84
	cp   e                                           ; $7b72: $bb
	adc  b                                           ; $7b73: $88
	or   e                                           ; $7b74: $b3
	adc  b                                           ; $7b75: $88
	ldh  a, [$84]                                    ; $7b76: $f0 $84
	ld   [hl], b                                     ; $7b78: $70
	adc  [hl]                                        ; $7b79: $8e
	ei                                               ; $7b7a: $fb
	ld   bc, $b0a0                                   ; $7b7b: $01 $a0 $b0
	add  b                                           ; $7b7e: $80
	push de                                          ; $7b7f: $d5
	adc  d                                           ; $7b80: $8a
	push af                                          ; $7b81: $f5
	ld   bc, $ce5e                                   ; $7b82: $01 $5e $ce
	add  b                                           ; $7b85: $80
	rst  ToBoot                                         ; $7b86: $c7
	add  b                                           ; $7b87: $80
	jp   $d180                                       ; $7b88: $c3 $80 $d1


	add  b                                           ; $7b8b: $80
	ret  nc                                          ; $7b8c: $d0

	add  h                                           ; $7b8d: $84
	call nc, Call_07b_7d05                           ; $7b8e: $d4 $05 $7d
	ld   bc, $007c                                   ; $7b91: $01 $7c $00
	add  b                                           ; $7b94: $80
	nop                                              ; $7b95: $00
	add  b                                           ; $7b96: $80
	ld   [bc], a                                     ; $7b97: $02
	add  b                                           ; $7b98: $80
	dec  d                                           ; $7b99: $15
	add  b                                           ; $7b9a: $80
	xor  d                                           ; $7b9b: $aa
	add  b                                           ; $7b9c: $80
	ld   d, l                                        ; $7b9d: $55
	add  b                                           ; $7b9e: $80
	xor  e                                           ; $7b9f: $ab
	rlca                                             ; $7ba0: $07
	ld   e, h                                        ; $7ba1: $5c
	ld   e, a                                        ; $7ba2: $5f
	adc  c                                           ; $7ba3: $89
	adc  a                                           ; $7ba4: $8f
	ld   e, e                                        ; $7ba5: $5b
	ld   e, a                                        ; $7ba6: $5f
	cp   [hl]                                        ; $7ba7: $be
	cp   a                                           ; $7ba8: $bf
	add  b                                           ; $7ba9: $80
	ld   a, a                                        ; $7baa: $7f
	ld   de, $bfb5                                   ; $7bab: $11 $b5 $bf
	ldh  a, [rIE]                                    ; $7bae: $f0 $ff
	and  l                                           ; $7bb0: $a5
	rst  $38                                         ; $7bb1: $ff
	ld   [hl+], a                                    ; $7bb2: $22
	add  a                                           ; $7bb3: $87
	inc  b                                           ; $7bb4: $04
	sbc  a                                           ; $7bb5: $9f
	ld   e, $bf                                      ; $7bb6: $1e $bf
	cpl                                              ; $7bb8: $2f
	xor  a                                           ; $7bb9: $af
	rla                                              ; $7bba: $17
	rst  $10                                         ; $7bbb: $d7
	ld   l, e                                        ; $7bbc: $6b
	db   $eb                                         ; $7bbd: $eb
	add  b                                           ; $7bbe: $80
	ld   e, a                                        ; $7bbf: $5f
	add  b                                           ; $7bc0: $80
	cp   a                                           ; $7bc1: $bf
	add  hl, de                                      ; $7bc2: $19
	ld   d, h                                        ; $7bc3: $54
	rst  $38                                         ; $7bc4: $ff
	ld   [hl], c                                     ; $7bc5: $71
	rst  $38                                         ; $7bc6: $ff
	ret  nc                                          ; $7bc7: $d0

	rst  $38                                         ; $7bc8: $ff
	ldh  a, [rIE]                                    ; $7bc9: $f0 $ff
	ret  nc                                          ; $7bcb: $d0

	rst  $38                                         ; $7bcc: $ff
	add  d                                           ; $7bcd: $82
	rst  $38                                         ; $7bce: $ff
	inc  hl                                          ; $7bcf: $23
	rst  $38                                         ; $7bd0: $ff
	ld   [hl], h                                     ; $7bd1: $74
	rst  $38                                         ; $7bd2: $ff
	inc  d                                           ; $7bd3: $14
	db   $fc                                         ; $7bd4: $fc
	ld   h, b                                        ; $7bd5: $60
	ld   hl, sp+$30                                  ; $7bd6: $f8 $30
	ldh  a, [rP1]                                    ; $7bd8: $f0 $00
	ldh  a, [hScriptOpcodeParams]                                    ; $7bda: $f0 $a0
	ldh  [$80], a                                    ; $7bdc: $e0 $80
	ret  nz                                          ; $7bde: $c0

	ld   bc, $c040                                   ; $7bdf: $01 $40 $c0
	add  c                                           ; $7be2: $81
	add  b                                           ; $7be3: $80
	add  d                                           ; $7be4: $82
	ld   a, $03                                      ; $7be5: $3e $03
	ld   a, [hl]                                     ; $7be7: $7e
	ld   a, a                                        ; $7be8: $7f
	ld   a, l                                        ; $7be9: $7d
	ld   a, h                                        ; $7bea: $7c
	add  d                                           ; $7beb: $82
	db   $fd                                         ; $7bec: $fd
	add  hl, bc                                      ; $7bed: $09
	ei                                               ; $7bee: $fb
	db   $db                                         ; $7bef: $db
	bit  0, c                                        ; $7bf0: $cb $41
	cp   $a8                                         ; $7bf2: $fe $a8
	db   $fc                                         ; $7bf4: $fc
	sbc  h                                           ; $7bf5: $9c
	db   $fd                                         ; $7bf6: $fd
	ld   l, c                                        ; $7bf7: $69
	add  d                                           ; $7bf8: $82
	ld   sp, hl                                      ; $7bf9: $f9
	nop                                              ; $7bfa: $00
	ei                                               ; $7bfb: $fb
	add  d                                           ; $7bfc: $82
	di                                               ; $7bfd: $f3
	ld   bc, $0407                                   ; $7bfe: $01 $07 $04
	add  b                                           ; $7c01: $80
	ld   [$0480], sp                                 ; $7c02: $08 $80 $04
	add  b                                           ; $7c05: $80
	nop                                              ; $7c06: $00
	add  b                                           ; $7c07: $80
	inc  b                                           ; $7c08: $04
	add  b                                           ; $7c09: $80
	nop                                              ; $7c0a: $00
	add  b                                           ; $7c0b: $80
	inc  b                                           ; $7c0c: $04
	add  b                                           ; $7c0d: $80
	nop                                              ; $7c0e: $00
	ld   bc, $bd4d                                   ; $7c0f: $01 $4d $bd
	add  b                                           ; $7c12: $80
	ld   a, l                                        ; $7c13: $7d
	add  b                                           ; $7c14: $80
	cp   l                                           ; $7c15: $bd
	add  b                                           ; $7c16: $80
	ld   a, l                                        ; $7c17: $7d
	add  b                                           ; $7c18: $80
	cp   l                                           ; $7c19: $bd
	add  b                                           ; $7c1a: $80
	ld   a, l                                        ; $7c1b: $7d
	add  b                                           ; $7c1c: $80
	cp   l                                           ; $7c1d: $bd
	add  b                                           ; $7c1e: $80
	ld   e, l                                        ; $7c1f: $5d
	nop                                              ; $7c20: $00
	inc  b                                           ; $7c21: $04
	adc  l                                           ; $7c22: $8d
	dec  b                                           ; $7c23: $05
	ld   bc, $7e7f                                   ; $7c24: $01 $7f $7e
	adc  b                                           ; $7c27: $88
	halt                                             ; $7c28: $76
	add  d                                           ; $7c29: $82
	ld   h, [hl]                                     ; $7c2a: $66
	adc  [hl]                                        ; $7c2b: $8e
	or   e                                           ; $7c2c: $b3
	add  h                                           ; $7c2d: $84
	ld   [hl], b                                     ; $7c2e: $70
	add  b                                           ; $7c2f: $80
	ld   h, b                                        ; $7c30: $60
	add  [hl]                                        ; $7c31: $86
	jr   nz, jr_07b_7c34                             ; $7c32: $20 $00

jr_07b_7c34:
	rrca                                             ; $7c34: $0f
	adc  e                                           ; $7c35: $8b
	ldh  a, [rSC]                                    ; $7c36: $f0 $02
	ld   [hl], b                                     ; $7c38: $70
	ldh  a, [$9f]                                    ; $7c39: $f0 $9f
	add  l                                           ; $7c3b: $85
	rst  $30                                         ; $7c3c: $f7
	add  b                                           ; $7c3d: $80
	rst  $10                                         ; $7c3e: $d7
	add  b                                           ; $7c3f: $80
	or   a                                           ; $7c40: $b7
	add  b                                           ; $7c41: $80
	scf                                              ; $7c42: $37
	ld   [bc], a                                     ; $7c43: $02
	jr   nc, jr_07b_7c7d                             ; $7c44: $30 $37

	ld   b, h                                        ; $7c46: $44
	adc  c                                           ; $7c47: $89
	call nc, $c005                                   ; $7c48: $d4 $05 $c0
	jp   $8f83                                       ; $7c4b: $c3 $83 $8f


	ret  c                                           ; $7c4e: $d8

	ld   d, a                                        ; $7c4f: $57
	add  b                                           ; $7c50: $80
	xor  e                                           ; $7c51: $ab
	add  b                                           ; $7c52: $80
	ld   d, l                                        ; $7c53: $55
	add  b                                           ; $7c54: $80
	xor  c                                           ; $7c55: $a9
	add  b                                           ; $7c56: $80
	push af                                          ; $7c57: $f5
	add  b                                           ; $7c58: $80
	ld   [$5515], a                                  ; $7c59: $ea $15 $55
	push de                                          ; $7c5c: $d5
	adc  d                                           ; $7c5d: $8a
	ld   a, [$ff04]                                  ; $7c5e: $fa $04 $ff
	or   c                                           ; $7c61: $b1
	rst  $38                                         ; $7c62: $ff
	ret  nc                                          ; $7c63: $d0

	rst  $38                                         ; $7c64: $ff
	ldh  a, [rIE]                                    ; $7c65: $f0 $ff
	sbc  e                                           ; $7c67: $9b
	rst  $38                                         ; $7c68: $ff
	db   $fd                                         ; $7c69: $fd
	rst  $38                                         ; $7c6a: $ff

jr_07b_7c6b:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c6b: $cf
	rst  $38                                         ; $7c6c: $ff
	jp   z, Jump_07b_59ff                            ; $7c6d: $ca $ff $59

	rst  JumpTable                                         ; $7c70: $df
	add  b                                           ; $7c71: $80
	xor  a                                           ; $7c72: $af
	add  b                                           ; $7c73: $80
	rst  ToBoot                                         ; $7c74: $c7
	inc  bc                                          ; $7c75: $03
	dec  l                                           ; $7c76: $2d
	db   $ed                                         ; $7c77: $ed
	dec  d                                           ; $7c78: $15
	push de                                          ; $7c79: $d5
	add  b                                           ; $7c7a: $80
	and  d                                           ; $7c7b: $a2
	add  hl, bc                                      ; $7c7c: $09

jr_07b_7c7d:
	ld   d, l                                        ; $7c7d: $55
	push de                                          ; $7c7e: $d5
	ld   a, [hl+]                                    ; $7c7f: $2a
	xor  d                                           ; $7c80: $aa
	ld   [hl], a                                     ; $7c81: $77
	rst  $38                                         ; $7c82: $ff
	db   $e3                                         ; $7c83: $e3
	rst  $38                                         ; $7c84: $ff
	db   $eb                                         ; $7c85: $eb
	rst  $38                                         ; $7c86: $ff
	add  b                                           ; $7c87: $80
	cp   $80                                         ; $7c88: $fe $80
	call c, $b880                                    ; $7c8a: $dc $80 $b8
	add  b                                           ; $7c8d: $80
	ld   d, b                                        ; $7c8e: $50
	add  b                                           ; $7c8f: $80
	xor  b                                           ; $7c90: $a8
	ld   [bc], a                                     ; $7c91: $02
	cp   $ff                                         ; $7c92: $fe $ff
	db   $fd                                         ; $7c94: $fd
	add  c                                           ; $7c95: $81
	rst  $38                                         ; $7c96: $ff
	inc  c                                           ; $7c97: $0c
	ld   a, [$fdfe]                                  ; $7c98: $fa $fe $fd
	db   $fc                                         ; $7c9b: $fc
	ldh  a, [c]                                      ; $7c9c: $f2
	ld   sp, hl                                      ; $7c9d: $f9
	push af                                          ; $7c9e: $f5
	ldh  a, [c]                                      ; $7c9f: $f2
	ldh  [c], a                                      ; $7ca0: $e2
	ldh  a, [c]                                      ; $7ca1: $f2
	ld   e, d                                        ; $7ca2: $5a
	add  e                                           ; $7ca3: $83
	ld   b, e                                        ; $7ca4: $43
	add  b                                           ; $7ca5: $80
	rla                                              ; $7ca6: $17
	ld   bc, $8707                                   ; $7ca7: $01 $07 $87
	add  b                                           ; $7caa: $80
	daa                                              ; $7cab: $27
	add  b                                           ; $7cac: $80
	cpl                                              ; $7cad: $2f
	add  d                                           ; $7cae: $82
	ld   c, a                                        ; $7caf: $4f
	add  b                                           ; $7cb0: $80
	rra                                              ; $7cb1: $1f
	add  b                                           ; $7cb2: $80
	rst  $30                                         ; $7cb3: $f7
	add  d                                           ; $7cb4: $82
	rst  $20                                         ; $7cb5: $e7
	add  b                                           ; $7cb6: $80
	rst  $28                                         ; $7cb7: $ef
	add  b                                           ; $7cb8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cb9: $cf
	add  d                                           ; $7cba: $82
	adc  $01                                         ; $7cbb: $ce $01
	sbc  [hl]                                        ; $7cbd: $9e
	ld   l, [hl]                                     ; $7cbe: $6e
	adc  l                                           ; $7cbf: $8d
	nop                                              ; $7cc0: $00
	ld   bc, $3dcd                                   ; $7cc1: $01 $cd $3d
	add  b                                           ; $7cc4: $80
	dec  e                                           ; $7cc5: $1d
	add  b                                           ; $7cc6: $80
	dec  l                                           ; $7cc7: $2d
	add  b                                           ; $7cc8: $80
	dec  e                                           ; $7cc9: $1d
	add  b                                           ; $7cca: $80
	dec  c                                           ; $7ccb: $0d
	add  b                                           ; $7ccc: $80
	dec  d                                           ; $7ccd: $15
	add  b                                           ; $7cce: $80
	add  hl, bc                                      ; $7ccf: $09
	add  b                                           ; $7cd0: $80
	ld   bc, $df8c                                   ; $7cd1: $01 $8c $df
	add  b                                           ; $7cd4: $80
	ret  nz                                          ; $7cd5: $c0

jr_07b_7cd6:
	adc  h                                           ; $7cd6: $8c
	ld   h, [hl]                                     ; $7cd7: $66
	add  b                                           ; $7cd8: $80
	ld   h, b                                        ; $7cd9: $60
	adc  d                                           ; $7cda: $8a
	or   e                                           ; $7cdb: $b3
	add  b                                           ; $7cdc: $80
	or   b                                           ; $7cdd: $b0
	add  b                                           ; $7cde: $80
	nop                                              ; $7cdf: $00
	adc  [hl]                                        ; $7ce0: $8e
	jr   nz, jr_07b_7c6b                             ; $7ce1: $20 $88

	ei                                               ; $7ce3: $fb
	add  b                                           ; $7ce4: $80
	ld   a, e                                        ; $7ce5: $7b
	add  d                                           ; $7ce6: $82
	ld   a, a                                        ; $7ce7: $7f
	ld   a, [de]                                     ; $7ce8: $1a
	ld   bc, $1c1f                                   ; $7ce9: $01 $1f $1c
	ld   a, a                                        ; $7cec: $7f
	ld   a, h                                        ; $7ced: $7c
	ld   a, a                                        ; $7cee: $7f
	ld   h, h                                        ; $7cef: $64
	rst  $38                                         ; $7cf0: $ff
	sbc  d                                           ; $7cf1: $9a
	rst  $38                                         ; $7cf2: $ff
	cp   a                                           ; $7cf3: $bf
	rst  $38                                         ; $7cf4: $ff
	add  e                                           ; $7cf5: $83
	rst  $38                                         ; $7cf6: $ff
	cp   h                                           ; $7cf7: $bc
	rst  $38                                         ; $7cf8: $ff
	cp   $1f                                         ; $7cf9: $fe $1f
	sbc  d                                           ; $7cfb: $9a
	sbc  a                                           ; $7cfc: $9f
	ld   [hl], a                                     ; $7cfd: $77
	rst  $38                                         ; $7cfe: $ff
	ld   l, h                                        ; $7cff: $6c
	rst  $38                                         ; $7d00: $ff
	jp   $3cff                                       ; $7d01: $c3 $ff $3c


	add  e                                           ; $7d04: $83

Call_07b_7d05:
	rst  $38                                         ; $7d05: $ff
	ld   [$f8bf], sp                                 ; $7d06: $08 $bf $f8
	ret  nz                                          ; $7d09: $c0

	db   $fc                                         ; $7d0a: $fc
	ld   [hl], h                                     ; $7d0b: $74
	db   $fc                                         ; $7d0c: $fc
	db   $e4                                         ; $7d0d: $e4
	db   $fc                                         ; $7d0e: $fc
	ld   [$fe81], a                                  ; $7d0f: $ea $81 $fe
	add  hl, bc                                      ; $7d12: $09
	ld   a, [hl]                                     ; $7d13: $7e
	rst  $38                                         ; $7d14: $ff
	db   $fc                                         ; $7d15: $fc
	rst  $38                                         ; $7d16: $ff
	rst  JumpTable                                         ; $7d17: $df
	ld   e, a                                        ; $7d18: $5f
	jr   z, jr_07b_7d46                              ; $7d19: $28 $2b

	rla                                              ; $7d1b: $17
	ld   d, $80                                      ; $7d1c: $16 $80
	add  hl, bc                                      ; $7d1e: $09
	add  c                                           ; $7d1f: $81

jr_07b_7d20:
	nop                                              ; $7d20: $00
	add  b                                           ; $7d21: $80
	ldh  [rIF], a                                    ; $7d22: $e0 $0f
	ld   hl, sp+$78                                  ; $7d24: $f8 $78
	db   $fc                                         ; $7d26: $fc
	jr   z, jr_07b_7d20                              ; $7d27: $28 $f7

	ld   a, [bc]                                     ; $7d29: $0a
	rst  $38                                         ; $7d2a: $ff
	ld   de, $23ff                                   ; $7d2b: $11 $ff $23
	rst  $38                                         ; $7d2e: $ff
	ld   hl, $437f                                   ; $7d2f: $21 $7f $43
	ld   a, a                                        ; $7d32: $7f
	add  hl, de                                      ; $7d33: $19
	add  c                                           ; $7d34: $81
	rra                                              ; $7d35: $1f
	add  b                                           ; $7d36: $80
	ret  nc                                          ; $7d37: $d0

	inc  bc                                          ; $7d38: $03
	and  b                                           ; $7d39: $a0
	ldh  [rP1], a                                    ; $7d3a: $e0 $00
	ld   b, b                                        ; $7d3c: $40
	add  b                                           ; $7d3d: $80
	and  b                                           ; $7d3e: $a0
	inc  b                                           ; $7d3f: $04
	pop  bc                                          ; $7d40: $c1
	ret  nz                                          ; $7d41: $c0

	jp   $06c0                                       ; $7d42: $c3 $c0 $06


	add  c                                           ; $7d45: $81

jr_07b_7d46:
	add  b                                           ; $7d46: $80
	ld   [$e474], sp                                 ; $7d47: $08 $74 $e4
	db   $f4                                         ; $7d4a: $f4
	call z, $9dec                                    ; $7d4b: $cc $ec $9d
	db   $dd                                         ; $7d4e: $dd
	add  hl, sp                                      ; $7d4f: $39
	cp   c                                           ; $7d50: $b9
	add  b                                           ; $7d51: $80
	jr   c, jr_07b_7cd6                              ; $7d52: $38 $82

	ld   [hl], d                                     ; $7d54: $72
	add  b                                           ; $7d55: $80
	ld   h, h                                        ; $7d56: $64
	add  c                                           ; $7d57: $81
	sbc  a                                           ; $7d58: $9f
	nop                                              ; $7d59: $00
	cp   a                                           ; $7d5a: $bf
	add  c                                           ; $7d5b: $81
	ccf                                              ; $7d5c: $3f
	ld   [$7e7f], sp                                 ; $7d5d: $08 $7f $7e
	ld   a, h                                        ; $7d60: $7c
	ld   a, [hl]                                     ; $7d61: $7e
	ld   [hl+], a                                    ; $7d62: $22
	ld   a, [hl]                                     ; $7d63: $7e
	call nc, Call_07b_68fc                           ; $7d64: $d4 $fc $68
	add  b                                           ; $7d67: $80
	sbc  [hl]                                        ; $7d68: $9e
	add  d                                           ; $7d69: $82
	inc  e                                           ; $7d6a: $1c
	add  c                                           ; $7d6b: $81
	inc  a                                           ; $7d6c: $3c
	ld   b, $38                                      ; $7d6d: $06 $38
	inc  a                                           ; $7d6f: $3c
	jr   nc, jr_07b_7daa                             ; $7d70: $30 $38

	ld   [$0e38], sp                                 ; $7d72: $08 $38 $0e
	add  l                                           ; $7d75: $85
	rrca                                             ; $7d76: $0f
	add  b                                           ; $7d77: $80
	ld   a, a                                        ; $7d78: $7f
	add  b                                           ; $7d79: $80
	rlca                                             ; $7d7a: $07
	add  b                                           ; $7d7b: $80
	ld   bc, $0580                                   ; $7d7c: $01 $80 $05
	nop                                              ; $7d7f: $00
	ld   e, [hl]                                     ; $7d80: $5e
	adc  l                                           ; $7d81: $8d
	ld   e, a                                        ; $7d82: $5f
	adc  d                                           ; $7d83: $8a
	nop                                              ; $7d84: $00
	add  b                                           ; $7d85: $80
	add  hl, de                                      ; $7d86: $19
	add  b                                           ; $7d87: $80
	rst  $20                                         ; $7d88: $e7
	adc  b                                           ; $7d89: $88
	nop                                              ; $7d8a: $00
	add  b                                           ; $7d8b: $80
	rra                                              ; $7d8c: $1f
	add  b                                           ; $7d8d: $80
	db   $fc                                         ; $7d8e: $fc
	add  b                                           ; $7d8f: $80
	di                                               ; $7d90: $f3
	add  [hl]                                        ; $7d91: $86
	nop                                              ; $7d92: $00
	add  b                                           ; $7d93: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d94: $cf
	add  b                                           ; $7d95: $80
	ccf                                              ; $7d96: $3f
	add  b                                           ; $7d97: $80
	rst  $38                                         ; $7d98: $ff
	add  b                                           ; $7d99: $80
	db   $fc                                         ; $7d9a: $fc
	add  h                                           ; $7d9b: $84
	nop                                              ; $7d9c: $00
	add  b                                           ; $7d9d: $80
	ld   a, l                                        ; $7d9e: $7d
	add  b                                           ; $7d9f: $80
	di                                               ; $7da0: $f3
	add  b                                           ; $7da1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7da2: $cf
	add  b                                           ; $7da3: $80
	ld   a, $80                                      ; $7da4: $3e $80
	db   $fd                                         ; $7da6: $fd
	inc  c                                           ; $7da7: $0c
	inc  c                                           ; $7da8: $0c
	rrca                                             ; $7da9: $0f

jr_07b_7daa:
	ld   a, [bc]                                     ; $7daa: $0a
	ld   a, a                                        ; $7dab: $7f
	halt                                             ; $7dac: $76
	ld   a, a                                        ; $7dad: $7f
	ld   d, a                                        ; $7dae: $57
	rst  $38                                         ; $7daf: $ff
	ret  nz                                          ; $7db0: $c0

	rst  $38                                         ; $7db1: $ff
	add  a                                           ; $7db2: $87
	rst  $38                                         ; $7db3: $ff
	ld   l, a                                        ; $7db4: $6f
	add  c                                           ; $7db5: $81
	rst  $38                                         ; $7db6: $ff
	inc  c                                           ; $7db7: $0c
	db   $10                                         ; $7db8: $10
	rst  $38                                         ; $7db9: $ff
	ld   [$faff], a                                  ; $7dba: $ea $ff $fa
	rst  $38                                         ; $7dbd: $ff
	rst  $10                                         ; $7dbe: $d7
	rst  $38                                         ; $7dbf: $ff
	jp   z, $ddff                                    ; $7dc0: $ca $ff $dd

	rst  $38                                         ; $7dc3: $ff
	ccf                                              ; $7dc4: $3f
	add  c                                           ; $7dc5: $81
	rst  $38                                         ; $7dc6: $ff
	add  hl, bc                                      ; $7dc7: $09
	nop                                              ; $7dc8: $00
	rst  $38                                         ; $7dc9: $ff
	or   b                                           ; $7dca: $b0
	rst  $38                                         ; $7dcb: $ff
	xor  a                                           ; $7dcc: $af
	rst  $38                                         ; $7dcd: $ff
	ld   a, [hl]                                     ; $7dce: $7e
	cp   $9d                                         ; $7dcf: $fe $9d
	db   $fd                                         ; $7dd1: $fd
	add  b                                           ; $7dd2: $80
	ld   a, [$fd80]                                  ; $7dd3: $fa $80 $fd
	add  b                                           ; $7dd6: $80
	ld   a, [$bf02]                                  ; $7dd7: $fa $02 $bf
	rst  $38                                         ; $7dda: $ff
	cp   a                                           ; $7ddb: $bf
	add  c                                           ; $7ddc: $81
	rst  $38                                         ; $7ddd: $ff
	add  b                                           ; $7dde: $80
	rst  $28                                         ; $7ddf: $ef
	add  b                                           ; $7de0: $80
	ld   e, a                                        ; $7de1: $5f
	add  b                                           ; $7de2: $80
	cp   d                                           ; $7de3: $ba
	add  b                                           ; $7de4: $80
	ld   [hl], l                                     ; $7de5: $75
	add  b                                           ; $7de6: $80
	xor  d                                           ; $7de7: $aa
	rlca                                             ; $7de8: $07
	ldh  a, [$fe]                                    ; $7de9: $f0 $fe
	or   $fe                                         ; $7deb: $f6 $fe
	ld   a, [$fcfe]                                  ; $7ded: $fa $fe $fc
	cp   $80                                         ; $7df0: $fe $80
	or   $80                                         ; $7df2: $f6 $80
	db   $ec                                         ; $7df4: $ec
	add  b                                           ; $7df5: $80
	ld   d, h                                        ; $7df6: $54
	add  b                                           ; $7df7: $80
	xor  b                                           ; $7df8: $a8
	add  d                                           ; $7df9: $82
	rrca                                             ; $7dfa: $0f
	add  b                                           ; $7dfb: $80
	ld   c, $80                                      ; $7dfc: $0e $80
	ld   e, $80                                      ; $7dfe: $1e $80
	inc  d                                           ; $7e00: $14
	add  b                                           ; $7e01: $80
	jr   z, jr_07b_7e0e                              ; $7e02: $28 $0a

	ld   d, c                                        ; $7e04: $51
	ld   d, b                                        ; $7e05: $50
	inc  bc                                          ; $7e06: $03
	nop                                              ; $7e07: $00
	ld   a, [bc]                                     ; $7e08: $0a
	nop                                              ; $7e09: $00
	jr   jr_07b_7e0c                                 ; $7e0a: $18 $00

jr_07b_7e0c:
	jr   nc, jr_07b_7e0e                             ; $7e0c: $30 $00

jr_07b_7e0e:
	ld   h, b                                        ; $7e0e: $60
	add  c                                           ; $7e0f: $81
	ld   bc, $c102                                   ; $7e10: $01 $02 $c1
	inc  bc                                          ; $7e13: $03
	add  e                                           ; $7e14: $83
	add  b                                           ; $7e15: $80
	ld   bc, $0080                                   ; $7e16: $01 $80 $00
	add  b                                           ; $7e19: $80
	db   $e4                                         ; $7e1a: $e4
	nop                                              ; $7e1b: $00
	ret  z                                           ; $7e1c: $c8

	add  c                                           ; $7e1d: $81
	ret                                              ; $7e1e: $c9


	add  b                                           ; $7e1f: $80
	reti                                             ; $7e20: $d9


	ld   bc, $9291                                   ; $7e21: $01 $91 $92
	add  b                                           ; $7e24: $80
	sub  e                                           ; $7e25: $93
	inc  c                                           ; $7e26: $0c
	inc  hl                                          ; $7e27: $23

jr_07b_7e28:
	jr   nz, jr_07b_7e4d                             ; $7e28: $20 $23

	ld   a, [$50fc]                                  ; $7e2a: $fa $fc $50
	db   $fc                                         ; $7e2d: $fc
	jr   nc, jr_07b_7e28                             ; $7e2e: $30 $f8

	ret  z                                           ; $7e30: $c8

	ld   hl, sp-$78                                  ; $7e31: $f8 $88
	ld   hl, sp-$80                                  ; $7e33: $f8 $80
	ldh  a, [rSB]                                    ; $7e35: $f0 $01
	ld   [hl], b                                     ; $7e37: $70
	ldh  a, [$80]                                    ; $7e38: $f0 $80
	ldh  [rTAC], a                                   ; $7e3a: $e0 $07
	add  sp, $78                                     ; $7e3c: $e8 $78
	ld   h, b                                        ; $7e3e: $60
	ld   a, b                                        ; $7e3f: $78
	db   $10                                         ; $7e40: $10
	ld   a, b                                        ; $7e41: $78
	jr   jr_07b_7ebc                                 ; $7e42: $18 $78

	add  h                                           ; $7e44: $84
	ld   [hl], b                                     ; $7e45: $70
	add  b                                           ; $7e46: $80
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	ld   bc, $0302                                   ; $7e49: $01 $02 $03
	inc  b                                           ; $7e4c: $04

jr_07b_7e4d:
	inc  b                                           ; $7e4d: $04
	inc  b                                           ; $7e4e: $04
	rlca                                             ; $7e4f: $07
	ld   [$0a09], sp                                 ; $7e50: $08 $09 $0a
	dec  bc                                          ; $7e53: $0b
	inc  c                                           ; $7e54: $0c
	dec  c                                           ; $7e55: $0d
	inc  b                                           ; $7e56: $04
	inc  b                                           ; $7e57: $04
	jr   nz, jr_07b_7e7b                             ; $7e58: $20 $21

	ld   [hl+], a                                    ; $7e5a: $22
	inc  hl                                          ; $7e5b: $23
	db   $10                                         ; $7e5c: $10
	ld   de, $1312                                   ; $7e5d: $11 $12 $13
	inc  d                                           ; $7e60: $14
	dec  d                                           ; $7e61: $15
	ld   d, $17                                      ; $7e62: $16 $17
	jr   @+$1b                                       ; $7e64: $18 $19

	ld   a, [de]                                     ; $7e66: $1a
	dec  de                                          ; $7e67: $1b
	inc  e                                           ; $7e68: $1c
	dec  e                                           ; $7e69: $1d
	ld   e, $1f                                      ; $7e6a: $1e $1f
	jr   nc, jr_07b_7e9f                             ; $7e6c: $30 $31

	ld   [hl-], a                                    ; $7e6e: $32
	inc  sp                                          ; $7e6f: $33
	jr   nz, jr_07b_7e93                             ; $7e70: $20 $21

	ld   [hl+], a                                    ; $7e72: $22
	inc  hl                                          ; $7e73: $23
	inc  h                                           ; $7e74: $24
	dec  h                                           ; $7e75: $25
	ld   h, $27                                      ; $7e76: $26 $27
	jr   z, jr_07b_7ea3                              ; $7e78: $28 $29

	ld   a, [hl+]                                    ; $7e7a: $2a

jr_07b_7e7b:
	dec  hl                                          ; $7e7b: $2b
	inc  l                                           ; $7e7c: $2c
	dec  l                                           ; $7e7d: $2d
	ld   l, $2f                                      ; $7e7e: $2e $2f
	inc  h                                           ; $7e80: $24
	dec  h                                           ; $7e81: $25
	ld   h, $27                                      ; $7e82: $26 $27
	jr   nc, jr_07b_7eb7                             ; $7e84: $30 $31

	ld   [hl-], a                                    ; $7e86: $32
	inc  sp                                          ; $7e87: $33
	inc  [hl]                                        ; $7e88: $34
	dec  [hl]                                        ; $7e89: $35
	ld   [hl], $37                                   ; $7e8a: $36 $37
	jr   c, jr_07b_7ec7                              ; $7e8c: $38 $39

	ld   a, [hl-]                                    ; $7e8e: $3a
	dec  sp                                          ; $7e8f: $3b
	inc  a                                           ; $7e90: $3c
	dec  l                                           ; $7e91: $2d
	ld   b, h                                        ; $7e92: $44

jr_07b_7e93:
	ccf                                              ; $7e93: $3f
	inc  [hl]                                        ; $7e94: $34
	dec  [hl]                                        ; $7e95: $35
	ld   [hl], $37                                   ; $7e96: $36 $37
	ld   b, b                                        ; $7e98: $40
	ld   b, c                                        ; $7e99: $41
	ld   b, d                                        ; $7e9a: $42
	ld   b, e                                        ; $7e9b: $43
	ld   b, h                                        ; $7e9c: $44
	ld   b, l                                        ; $7e9d: $45
	ld   b, [hl]                                     ; $7e9e: $46

jr_07b_7e9f:
	ld   b, a                                        ; $7e9f: $47
	ld   c, b                                        ; $7ea0: $48
	ld   c, c                                        ; $7ea1: $49
	ld   c, d                                        ; $7ea2: $4a

jr_07b_7ea3:
	ld   c, e                                        ; $7ea3: $4b
	ld   c, h                                        ; $7ea4: $4c
	dec  l                                           ; $7ea5: $2d
	ld   b, h                                        ; $7ea6: $44
	ld   b, h                                        ; $7ea7: $44
	jr   z, jr_07b_7edf                              ; $7ea8: $28 $35

	ld   a, [hl+]                                    ; $7eaa: $2a
	dec  hl                                          ; $7eab: $2b
	ld   d, b                                        ; $7eac: $50
	ld   d, c                                        ; $7ead: $51
	ld   d, d                                        ; $7eae: $52
	ld   d, e                                        ; $7eaf: $53
	ld   b, h                                        ; $7eb0: $44
	ld   b, h                                        ; $7eb1: $44
	ld   b, h                                        ; $7eb2: $44
	ld   d, a                                        ; $7eb3: $57
	ld   e, b                                        ; $7eb4: $58
	ld   e, c                                        ; $7eb5: $59
	ld   e, d                                        ; $7eb6: $5a

jr_07b_7eb7:
	ld   e, e                                        ; $7eb7: $5b
	ld   e, h                                        ; $7eb8: $5c
	dec  l                                           ; $7eb9: $2d
	ld   b, h                                        ; $7eba: $44
	ld   b, h                                        ; $7ebb: $44

jr_07b_7ebc:
	jr   z, jr_07b_7ef3                              ; $7ebc: $28 $35

	ld   a, [hl-]                                    ; $7ebe: $3a
	dec  hl                                          ; $7ebf: $2b
	ld   h, b                                        ; $7ec0: $60
	ld   h, c                                        ; $7ec1: $61
	ld   h, d                                        ; $7ec2: $62
	ld   h, e                                        ; $7ec3: $63
	ld   h, h                                        ; $7ec4: $64
	ld   h, l                                        ; $7ec5: $65
	ld   h, [hl]                                     ; $7ec6: $66

jr_07b_7ec7:
	ld   h, a                                        ; $7ec7: $67
	ld   l, b                                        ; $7ec8: $68
	ld   b, h                                        ; $7ec9: $44
	ld   b, h                                        ; $7eca: $44
	ld   l, e                                        ; $7ecb: $6b
	ld   l, h                                        ; $7ecc: $6c
	ld   l, l                                        ; $7ecd: $6d
	ld   l, [hl]                                     ; $7ece: $6e
	ld   l, a                                        ; $7ecf: $6f
	inc  l                                           ; $7ed0: $2c
	dec  l                                           ; $7ed1: $2d
	ld   l, $2b                                      ; $7ed2: $2e $2b
	ld   b, h                                        ; $7ed4: $44
	ld   [hl], c                                     ; $7ed5: $71
	ld   [hl], d                                     ; $7ed6: $72
	ld   [hl], e                                     ; $7ed7: $73
	ld   [hl], h                                     ; $7ed8: $74
	ld   [hl], l                                     ; $7ed9: $75
	halt                                             ; $7eda: $76
	ld   [hl], a                                     ; $7edb: $77
	ld   a, b                                        ; $7edc: $78
	ld   a, c                                        ; $7edd: $79
	ld   a, c                                        ; $7ede: $79

jr_07b_7edf:
	ld   a, e                                        ; $7edf: $7b
	ld   a, h                                        ; $7ee0: $7c
	ld   a, l                                        ; $7ee1: $7d
	ld   a, [hl]                                     ; $7ee2: $7e
	ld   a, a                                        ; $7ee3: $7f
	inc  a                                           ; $7ee4: $3c
	dec  a                                           ; $7ee5: $3d
	ld   a, $3f                                      ; $7ee6: $3e $3f
	nop                                              ; $7ee8: $00
	ld   bc, $0302                                   ; $7ee9: $01 $02 $03
	inc  b                                           ; $7eec: $04
	dec  b                                           ; $7eed: $05
	ld   b, $07                                      ; $7eee: $06 $07
	rlca                                             ; $7ef0: $07
	add  hl, bc                                      ; $7ef1: $09
	ld   a, [bc]                                     ; $7ef2: $0a

jr_07b_7ef3:
	dec  bc                                          ; $7ef3: $0b
	inc  c                                           ; $7ef4: $0c
	dec  c                                           ; $7ef5: $0d
	ld   c, $0f                                      ; $7ef6: $0e $0f
	ld   b, b                                        ; $7ef8: $40
	ld   b, c                                        ; $7ef9: $41
	ld   b, d                                        ; $7efa: $42
	ld   b, e                                        ; $7efb: $43
	db   $10                                         ; $7efc: $10
	ld   de, $1312                                   ; $7efd: $11 $12 $13

Call_07b_7f00:
	inc  d                                           ; $7f00: $14
	dec  d                                           ; $7f01: $15
	ld   d, $17                                      ; $7f02: $16 $17
	jr   jr_07b_7f1f                                 ; $7f04: $18 $19

	ld   a, [de]                                     ; $7f06: $1a
	dec  de                                          ; $7f07: $1b
	dec  de                                          ; $7f08: $1b
	dec  e                                           ; $7f09: $1d
	ld   e, $1f                                      ; $7f0a: $1e $1f
	ld   b, h                                        ; $7f0c: $44
	dec  de                                          ; $7f0d: $1b
	dec  de                                          ; $7f0e: $1b
	ld   b, a                                        ; $7f0f: $47
	inc  b                                           ; $7f10: $04
	inc  b                                           ; $7f11: $04
	inc  b                                           ; $7f12: $04
	inc  b                                           ; $7f13: $04
	inc  b                                           ; $7f14: $04
	inc  b                                           ; $7f15: $04
	inc  b                                           ; $7f16: $04
	inc  b                                           ; $7f17: $04
	inc  bc                                          ; $7f18: $03
	inc  bc                                          ; $7f19: $03
	inc  b                                           ; $7f1a: $04
	inc  bc                                          ; $7f1b: $03
	inc  bc                                          ; $7f1c: $03
	inc  b                                           ; $7f1d: $04
	inc  b                                           ; $7f1e: $04

jr_07b_7f1f:
	inc  b                                           ; $7f1f: $04
	inc  c                                           ; $7f20: $0c
	inc  c                                           ; $7f21: $0c
	inc  c                                           ; $7f22: $0c
	inc  c                                           ; $7f23: $0c
	inc  b                                           ; $7f24: $04
	inc  b                                           ; $7f25: $04
	inc  b                                           ; $7f26: $04
	inc  b                                           ; $7f27: $04
	inc  b                                           ; $7f28: $04
	inc  b                                           ; $7f29: $04
	inc  b                                           ; $7f2a: $04
	inc  bc                                          ; $7f2b: $03
	inc  bc                                          ; $7f2c: $03
	inc  bc                                          ; $7f2d: $03
	inc  b                                           ; $7f2e: $04
	inc  bc                                          ; $7f2f: $03
	inc  bc                                          ; $7f30: $03
	inc  b                                           ; $7f31: $04
	inc  b                                           ; $7f32: $04
	inc  b                                           ; $7f33: $04
	inc  c                                           ; $7f34: $0c
	inc  c                                           ; $7f35: $0c
	inc  c                                           ; $7f36: $0c
	inc  c                                           ; $7f37: $0c
	inc  b                                           ; $7f38: $04
	inc  b                                           ; $7f39: $04
	inc  b                                           ; $7f3a: $04
	inc  b                                           ; $7f3b: $04
	inc  b                                           ; $7f3c: $04
	inc  bc                                          ; $7f3d: $03
	inc  bc                                          ; $7f3e: $03
	inc  bc                                          ; $7f3f: $03
	inc  bc                                          ; $7f40: $03
	inc  bc                                          ; $7f41: $03
	inc  b                                           ; $7f42: $04
	inc  bc                                          ; $7f43: $03
	inc  bc                                          ; $7f44: $03
	inc  b                                           ; $7f45: $04
	inc  b                                           ; $7f46: $04
	inc  b                                           ; $7f47: $04
	inc  c                                           ; $7f48: $0c
	inc  c                                           ; $7f49: $0c
	dec  bc                                          ; $7f4a: $0b
	inc  c                                           ; $7f4b: $0c
	inc  b                                           ; $7f4c: $04
	inc  b                                           ; $7f4d: $04
	inc  b                                           ; $7f4e: $04
	inc  b                                           ; $7f4f: $04
	inc  b                                           ; $7f50: $04
	inc  bc                                          ; $7f51: $03
	inc  bc                                          ; $7f52: $03
	inc  bc                                          ; $7f53: $03
	inc  bc                                          ; $7f54: $03
	inc  bc                                          ; $7f55: $03
	inc  b                                           ; $7f56: $04
	inc  bc                                          ; $7f57: $03
	inc  bc                                          ; $7f58: $03
	inc  b                                           ; $7f59: $04
	inc  b                                           ; $7f5a: $04
	inc  b                                           ; $7f5b: $04
	inc  c                                           ; $7f5c: $0c
	inc  c                                           ; $7f5d: $0c
	dec  bc                                          ; $7f5e: $0b
	inc  c                                           ; $7f5f: $0c
	inc  b                                           ; $7f60: $04
	inc  b                                           ; $7f61: $04
	inc  b                                           ; $7f62: $04
	inc  b                                           ; $7f63: $04
	inc  b                                           ; $7f64: $04
	inc  bc                                          ; $7f65: $03
	inc  bc                                          ; $7f66: $03
	inc  bc                                          ; $7f67: $03
	inc  bc                                          ; $7f68: $03
	inc  b                                           ; $7f69: $04
	inc  b                                           ; $7f6a: $04
	inc  b                                           ; $7f6b: $04
	inc  bc                                          ; $7f6c: $03
	inc  b                                           ; $7f6d: $04
	inc  b                                           ; $7f6e: $04
	inc  b                                           ; $7f6f: $04
	inc  c                                           ; $7f70: $0c
	inc  c                                           ; $7f71: $0c
	dec  bc                                          ; $7f72: $0b
	inc  c                                           ; $7f73: $0c
	inc  b                                           ; $7f74: $04
	inc  b                                           ; $7f75: $04
	inc  b                                           ; $7f76: $04
	inc  b                                           ; $7f77: $04
	inc  b                                           ; $7f78: $04
	inc  b                                           ; $7f79: $04
	inc  b                                           ; $7f7a: $04
	inc  bc                                          ; $7f7b: $03
	inc  bc                                          ; $7f7c: $03
	inc  b                                           ; $7f7d: $04
	inc  b                                           ; $7f7e: $04
	inc  b                                           ; $7f7f: $04
	inc  bc                                          ; $7f80: $03
	inc  b                                           ; $7f81: $04
	inc  b                                           ; $7f82: $04
	inc  b                                           ; $7f83: $04
	inc  c                                           ; $7f84: $0c
	inc  c                                           ; $7f85: $0c
	dec  bc                                          ; $7f86: $0b
	inc  c                                           ; $7f87: $0c
	inc  b                                           ; $7f88: $04
	inc  b                                           ; $7f89: $04
	inc  b                                           ; $7f8a: $04
	dec  b                                           ; $7f8b: $05
	dec  b                                           ; $7f8c: $05
	dec  b                                           ; $7f8d: $05
	dec  b                                           ; $7f8e: $05
	inc  bc                                          ; $7f8f: $03
	inc  bc                                          ; $7f90: $03
	inc  b                                           ; $7f91: $04
	inc  b                                           ; $7f92: $04
	inc  b                                           ; $7f93: $04
	inc  b                                           ; $7f94: $04
	inc  b                                           ; $7f95: $04
	inc  b                                           ; $7f96: $04
	inc  b                                           ; $7f97: $04
	inc  c                                           ; $7f98: $0c
	inc  c                                           ; $7f99: $0c
	inc  c                                           ; $7f9a: $0c
	inc  c                                           ; $7f9b: $0c
	inc  b                                           ; $7f9c: $04
	inc  b                                           ; $7f9d: $04
	dec  b                                           ; $7f9e: $05
	dec  b                                           ; $7f9f: $05
	dec  b                                           ; $7fa0: $05
	dec  b                                           ; $7fa1: $05
	dec  b                                           ; $7fa2: $05
	inc  b                                           ; $7fa3: $04
	inc  b                                           ; $7fa4: $04
	inc  b                                           ; $7fa5: $04
	inc  b                                           ; $7fa6: $04
	inc  b                                           ; $7fa7: $04
	inc  b                                           ; $7fa8: $04
	inc  b                                           ; $7fa9: $04
	dec  b                                           ; $7faa: $05
	dec  b                                           ; $7fab: $05
	inc  c                                           ; $7fac: $0c
	inc  c                                           ; $7fad: $0c
	inc  c                                           ; $7fae: $0c
	inc  c                                           ; $7faf: $0c
	inc  c                                           ; $7fb0: $0c
	inc  c                                           ; $7fb1: $0c
	inc  c                                           ; $7fb2: $0c
	inc  c                                           ; $7fb3: $0c
	inc  c                                           ; $7fb4: $0c
	inc  c                                           ; $7fb5: $0c
	inc  c                                           ; $7fb6: $0c
	inc  c                                           ; $7fb7: $0c
	inc  c                                           ; $7fb8: $0c
	inc  c                                           ; $7fb9: $0c
	inc  c                                           ; $7fba: $0c
	inc  c                                           ; $7fbb: $0c
	inc  c                                           ; $7fbc: $0c
	inc  c                                           ; $7fbd: $0c
	dec  c                                           ; $7fbe: $0d
	dec  c                                           ; $7fbf: $0d
	inc  c                                           ; $7fc0: $0c
	inc  c                                           ; $7fc1: $0c
	inc  c                                           ; $7fc2: $0c
	inc  c                                           ; $7fc3: $0c
	inc  c                                           ; $7fc4: $0c
	inc  c                                           ; $7fc5: $0c
	inc  c                                           ; $7fc6: $0c
	inc  c                                           ; $7fc7: $0c
	inc  c                                           ; $7fc8: $0c
	inc  c                                           ; $7fc9: $0c
	inc  c                                           ; $7fca: $0c
	inc  c                                           ; $7fcb: $0c
	inc  c                                           ; $7fcc: $0c
	inc  c                                           ; $7fcd: $0c
	inc  c                                           ; $7fce: $0c
	inc  c                                           ; $7fcf: $0c
	inc  c                                           ; $7fd0: $0c
	inc  c                                           ; $7fd1: $0c
	inc  c                                           ; $7fd2: $0c
	inc  c                                           ; $7fd3: $0c
	inc  c                                           ; $7fd4: $0c
	inc  c                                           ; $7fd5: $0c
	inc  c                                           ; $7fd6: $0c
	inc  c                                           ; $7fd7: $0c
	stop                                             ; $7fd8: $10 $00
	rst  $38                                         ; $7fda: $ff
	nop                                              ; $7fdb: $00
	rst  $38                                         ; $7fdc: $ff
	nop                                              ; $7fdd: $00
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
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $28                                         ; $7ff8: $ef
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
