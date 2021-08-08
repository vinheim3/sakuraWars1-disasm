; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $092", ROMX[$4000], BANK[$92]

	nop                                              ; $4000: $00
	rst  $38                                         ; $4001: $ff
	nop                                              ; $4002: $00
	rst  $38                                         ; $4003: $ff
	nop                                              ; $4004: $00
	rst  $38                                         ; $4005: $ff
	nop                                              ; $4006: $00
	rst  $38                                         ; $4007: $ff
	nop                                              ; $4008: $00
	rst  $38                                         ; $4009: $ff
	ld   b, d                                        ; $400a: $42
	rst  $38                                         ; $400b: $ff
	add  l                                           ; $400c: $85
	rst  $38                                         ; $400d: $ff
	add  l                                           ; $400e: $85
	rst  $38                                         ; $400f: $ff
	db   $10                                         ; $4010: $10
	rst  $38                                         ; $4011: $ff
	jr   nz, @+$01                                   ; $4012: $20 $ff

	jr   nz, @+$01                                   ; $4014: $20 $ff

	ld   b, b                                        ; $4016: $40
	rst  $38                                         ; $4017: $ff
	pop  bc                                          ; $4018: $c1
	rst  $38                                         ; $4019: $ff
	pop  bc                                          ; $401a: $c1
	rst  $38                                         ; $401b: $ff
	pop  bc                                          ; $401c: $c1
	rst  $38                                         ; $401d: $ff
	jp   $007f                                       ; $401e: $c3 $7f $00


	rst  $38                                         ; $4021: $ff
	nop                                              ; $4022: $00
	rst  $38                                         ; $4023: $ff
	nop                                              ; $4024: $00
	rst  $38                                         ; $4025: $ff
	nop                                              ; $4026: $00
	rst  $38                                         ; $4027: $ff
	nop                                              ; $4028: $00
	rst  $38                                         ; $4029: $ff
	ld   b, b                                        ; $402a: $40
	rst  $38                                         ; $402b: $ff
	ld   d, b                                        ; $402c: $50
	rst  $38                                         ; $402d: $ff
	ld   d, b                                        ; $402e: $50
	rst  $38                                         ; $402f: $ff
	ld   [bc], a                                     ; $4030: $02
	cp   $02                                         ; $4031: $fe $02
	cp   $72                                         ; $4033: $fe $72
	cp   $0e                                         ; $4035: $fe $0e
	cp   $62                                         ; $4037: $fe $62
	cp   $1a                                         ; $4039: $fe $1a
	cp   $06                                         ; $403b: $fe $06
	cp   $02                                         ; $403d: $fe $02
	cp   $0b                                         ; $403f: $fe $0b
	rst  $38                                         ; $4041: $ff
	dec  bc                                          ; $4042: $0b
	sbc  $0b                                         ; $4043: $de $0b
	ld   e, [hl]                                     ; $4045: $5e
	ld   e, $3c                                      ; $4046: $1e $3c
	ld   e, $bc                                      ; $4048: $1e $bc
	ld   a, $ec                                      ; $404a: $3e $ec
	ccf                                              ; $404c: $3f
	rst  $28                                         ; $404d: $ef
	ld   a, a                                        ; $404e: $7f
	db   $fc                                         ; $404f: $fc
	jp   $475f                                       ; $4050: $c3 $5f $47


	ld   c, a                                        ; $4053: $4f
	ld   b, a                                        ; $4054: $47
	ld   c, a                                        ; $4055: $4f
	ld   b, a                                        ; $4056: $47
	ld   h, [hl]                                     ; $4057: $66
	ld   b, a                                        ; $4058: $47
	ld   l, [hl]                                     ; $4059: $6e
	ld   h, a                                        ; $405a: $67
	ld   [hl], $e7                                   ; $405b: $36 $e7
	cp   [hl]                                        ; $405d: $be
	rst  $20                                         ; $405e: $e7
	ld   a, [hl]                                     ; $405f: $7e
	ld   l, b                                        ; $4060: $68
	rst  $38                                         ; $4061: $ff
	ld   l, b                                        ; $4062: $68
	db   $fd                                         ; $4063: $fd
	ld   l, h                                        ; $4064: $6c
	cp   $b6                                         ; $4065: $fe $b6
	rst  $38                                         ; $4067: $ff
	or   [hl]                                        ; $4068: $b6
	rst  $38                                         ; $4069: $ff
	rst  $38                                         ; $406a: $ff
	ld   l, l                                        ; $406b: $6d
	ld   a, a                                        ; $406c: $7f
	ld   a, a                                        ; $406d: $7f
	rst  $38                                         ; $406e: $ff
	ldh  [c], a                                      ; $406f: $e2
	add  d                                           ; $4070: $82
	cp   $62                                         ; $4071: $fe $62
	halt                                             ; $4073: $76
	ld   [hl-], a                                    ; $4074: $32
	ld   a, [hl-]                                    ; $4075: $3a
	ld   [de], a                                     ; $4076: $12
	ld   e, [hl]                                     ; $4077: $5e
	ld   a, [de]                                     ; $4078: $1a
	cp   $0e                                         ; $4079: $fe $0e
	cp   $8e                                         ; $407b: $fe $8e
	cp   $c6                                         ; $407d: $fe $c6
	cp   $77                                         ; $407f: $fe $77
	push hl                                          ; $4081: $e5
	ld   h, a                                        ; $4082: $67
	rst  $20                                         ; $4083: $e7
	ld   l, [hl]                                     ; $4084: $6e
	add  $6b                                         ; $4085: $c6 $6b
	bit  5, e                                        ; $4087: $cb $6b
	bit  4, e                                        ; $4089: $cb $63
	jp   nz, $c263                                   ; $408b: $c2 $63 $c2

	ld   h, e                                        ; $408e: $63
	db   $e3                                         ; $408f: $e3
	rst  $30                                         ; $4090: $f7
	cp   [hl]                                        ; $4091: $be
	di                                               ; $4092: $f3
	rst  JumpTable                                         ; $4093: $df
	ei                                               ; $4094: $fb
	ld   l, a                                        ; $4095: $6f
	call $cacf                                       ; $4096: $cd $cf $ca
	set  1, c                                        ; $4099: $cb $c9
	ret                                              ; $409b: $c9


	ret                                              ; $409c: $c9


	ld   c, c                                        ; $409d: $49
	ret                                              ; $409e: $c9


	ret                                              ; $409f: $c9


	cp   a                                           ; $40a0: $bf
	xor  [hl]                                        ; $40a1: $ae
	ccf                                              ; $40a2: $3f
	rra                                              ; $40a3: $1f
	scf                                              ; $40a4: $37
	inc  de                                          ; $40a5: $13
	adc  a                                           ; $40a6: $8f
	adc  a                                           ; $40a7: $8f
	adc  a                                           ; $40a8: $8f
	adc  a                                           ; $40a9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40aa: $cf
	set  5, a                                        ; $40ab: $cb $ef
	ld   l, c                                        ; $40ad: $69
	rst  $28                                         ; $40ae: $ef
	rrca                                             ; $40af: $0f
	and  $7e                                         ; $40b0: $e6 $7e
	ldh  a, [c]                                      ; $40b2: $f2
	ld   a, $f2                                      ; $40b3: $3e $f2
	cp   [hl]                                        ; $40b5: $be
	ld   a, [$7e5e]                                  ; $40b6: $fa $5e $7e
	ld   e, [hl]                                     ; $40b9: $5e
	ld   a, [hl]                                     ; $40ba: $7e
	ld   e, $3a                                      ; $40bb: $1e $3a
	ld   e, $3a                                      ; $40bd: $1e $3a
	ld   l, $f0                                      ; $40bf: $2e $f0
	ldh  [$d8], a                                    ; $40c1: $e0 $d8
	ldh  a, [$df]                                    ; $40c3: $f0 $df
	rst  $38                                         ; $40c5: $ff
	reti                                             ; $40c6: $d9


	pop  af                                          ; $40c7: $f1
	db   $fc                                         ; $40c8: $fc
	db   $f4                                         ; $40c9: $f4
	ld   a, b                                        ; $40ca: $78
	ldh  a, [$58]                                    ; $40cb: $f0 $58
	ld   hl, sp-$74                                  ; $40cd: $f8 $8c
	db   $fc                                         ; $40cf: $fc
	db   $10                                         ; $40d0: $10
	db   $10                                         ; $40d1: $10

Jump_092_40d2:
	jr   nz, @+$22                                   ; $40d2: $20 $20

	jp   nz, $0ec0                                   ; $40d4: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $40d7: $08 $0e $08
	add  b                                           ; $40da: $80
	add  b                                           ; $40db: $80
	dec  bc                                          ; $40dc: $0b
	dec  bc                                          ; $40dd: $0b
	inc  bc                                          ; $40de: $03
	nop                                              ; $40df: $00
	ret  nz                                          ; $40e0: $c0

	add  b                                           ; $40e1: $80
	ld   h, b                                        ; $40e2: $60
	ld   b, b                                        ; $40e3: $40
	ccf                                              ; $40e4: $3f
	ccf                                              ; $40e5: $3f
	inc  h                                           ; $40e6: $24
	inc  h                                           ; $40e7: $24
	ld   bc, $0801                                   ; $40e8: $01 $01 $08
	ld   [$0080], sp                                 ; $40eb: $08 $80 $00
	nop                                              ; $40ee: $00
	nop                                              ; $40ef: $00
	ld   a, d                                        ; $40f0: $7a
	ld   c, [hl]                                     ; $40f1: $4e
	ld   a, [$7a8e]                                  ; $40f2: $fa $8e $7a
	ld   c, $7e                                      ; $40f5: $0e $7e
	ld   e, $7e                                      ; $40f7: $1e $7e
	ld   e, $7e                                      ; $40f9: $1e $7e
	ld   a, $7e                                      ; $40fb: $3e $7e
	ld   a, $ce                                      ; $40fd: $3e $ce
	ld   c, [hl]                                     ; $40ff: $4e
	sbc  [hl]                                        ; $4100: $9e
	cp   $fd                                         ; $4101: $fe $fd
	db   $fd                                         ; $4103: $fd
	adc  b                                           ; $4104: $88
	ld   hl, sp+$18                                  ; $4105: $f8 $18
	ld   hl, sp+$30                                  ; $4107: $f8 $30
	ldh  a, [$e0]                                    ; $4109: $f0 $e0
	ldh  [rLCDC], a                                  ; $410b: $e0 $40
	ret  nz                                          ; $410d: $c0

	ret  nz                                          ; $410e: $c0

	ret  nz                                          ; $410f: $c0

	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	add  b                                           ; $4112: $80
	add  b                                           ; $4113: $80
	ret  nz                                          ; $4114: $c0

	ret  nz                                          ; $4115: $c0

	ldh  a, [$f0]                                    ; $4116: $f0 $f0
	cp   h                                           ; $4118: $bc
	cp   h                                           ; $4119: $bc
	sub  e                                           ; $411a: $93
	sub  e                                           ; $411b: $93
	ret  z                                           ; $411c: $c8

	ld   hl, sp-$17                                  ; $411d: $f8 $e9
	cp   c                                           ; $411f: $b9
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	ld   bc, $0601                                   ; $4122: $01 $01 $06
	ld   b, $19                                      ; $4125: $06 $19
	add  hl, de                                      ; $4127: $19
	ld   a, [hl]                                     ; $4128: $7e
	ld   a, [hl]                                     ; $4129: $7e
	ldh  [$e1], a                                    ; $412a: $e0 $e1
	adc  a                                           ; $412c: $8f
	sbc  a                                           ; $412d: $9f
	ccf                                              ; $412e: $3f
	ld   [hl], b                                     ; $412f: $70
	add  [hl]                                        ; $4130: $86
	add  [hl]                                        ; $4131: $86
	ldh  [c], a                                      ; $4132: $e2
	ldh  [c], a                                      ; $4133: $e2
	or   d                                           ; $4134: $b2
	ldh  a, [c]                                      ; $4135: $f2
	ldh  a, [c]                                      ; $4136: $f2
	ldh  a, [c]                                      ; $4137: $f2
	ld   [hl-], a                                    ; $4138: $32
	ld   [hl], d                                     ; $4139: $72
	ldh  a, [c]                                      ; $413a: $f2
	jp   nc, $12f2                                   ; $413b: $d2 $f2 $12

	ldh  a, [c]                                      ; $413e: $f2
	ld   [de], a                                     ; $413f: $12
	add  c                                           ; $4140: $81
	add  c                                           ; $4141: $81
	inc  bc                                          ; $4142: $03
	inc  bc                                          ; $4143: $03
	rst  $38                                         ; $4144: $ff
	db   $fc                                         ; $4145: $fc
	rst  $38                                         ; $4146: $ff
	nop                                              ; $4147: $00
	rst  $38                                         ; $4148: $ff
	nop                                              ; $4149: $00
	rst  $38                                         ; $414a: $ff
	ld   bc, $01ff                                   ; $414b: $01 $ff $01
	rst  $38                                         ; $414e: $ff
	ld   bc, $bfe6                                   ; $414f: $01 $e6 $bf
	db   $f4                                         ; $4152: $f4
	sbc  a                                           ; $4153: $9f
	db   $fd                                         ; $4154: $fd
	rra                                              ; $4155: $1f
	ld   sp, hl                                      ; $4156: $f9
	sbc  a                                           ; $4157: $9f
	ei                                               ; $4158: $fb
	sbc  $f7                                         ; $4159: $de $f7
	db   $fd                                         ; $415b: $fd
	ld   l, a                                        ; $415c: $6f
	ld   hl, sp-$61                                  ; $415d: $f8 $9f
	db   $fc                                         ; $415f: $fc
	ld   a, a                                        ; $4160: $7f
	ret  nz                                          ; $4161: $c0

	rst  $38                                         ; $4162: $ff
	add  b                                           ; $4163: $80
	rst  $38                                         ; $4164: $ff
	nop                                              ; $4165: $00
	rst  $38                                         ; $4166: $ff
	pop  bc                                          ; $4167: $c1
	rst  $38                                         ; $4168: $ff
	db   $10                                         ; $4169: $10
	rst  $38                                         ; $416a: $ff
	ldh  [rIE], a                                    ; $416b: $e0 $ff
	nop                                              ; $416d: $00
	rst  $38                                         ; $416e: $ff
	nop                                              ; $416f: $00
	ldh  a, [c]                                      ; $4170: $f2
	ld   [de], a                                     ; $4171: $12
	cp   $3e                                         ; $4172: $fe $3e
	cp   $62                                         ; $4174: $fe $62
	cp   $92                                         ; $4176: $fe $92
	cp   $22                                         ; $4178: $fe $22
	cp   $42                                         ; $417a: $fe $42
	cp   $02                                         ; $417c: $fe $02
	cp   $02                                         ; $417e: $fe $02
	ld   [hl], a                                     ; $4180: $77
	db   $e4                                         ; $4181: $e4
	ld   h, a                                        ; $4182: $67
	push hl                                          ; $4183: $e5
	ld   h, a                                        ; $4184: $67
	rst  ToBoot                                         ; $4185: $c7
	ld   l, a                                        ; $4186: $6f
	add  $6b                                         ; $4187: $c6 $6b
	bit  5, e                                        ; $4189: $cb $6b
	jp   z, $c263                                    ; $418b: $ca $63 $c2

	ld   h, e                                        ; $418e: $63
	db   $e3                                         ; $418f: $e3
	rst  $30                                         ; $4190: $f7
	ld   a, $f3                                      ; $4191: $3e $f3
	rst  JumpTable                                         ; $4193: $df
	ei                                               ; $4194: $fb
	rst  $28                                         ; $4195: $ef
	ld   l, l                                        ; $4196: $6d
	ld   l, a                                        ; $4197: $6f
	jp   z, $c9cb                                    ; $4198: $ca $cb $c9

	ret                                              ; $419b: $c9


	ret                                              ; $419c: $c9


	ld   c, c                                        ; $419d: $49
	ret                                              ; $419e: $c9


	ret                                              ; $419f: $c9


	cp   a                                           ; $41a0: $bf
	and  d                                           ; $41a1: $a2
	ccf                                              ; $41a2: $3f
	ld   c, $3f                                      ; $41a3: $0e $3f
	rra                                              ; $41a5: $1f
	sbc  e                                           ; $41a6: $9b
	sbc  c                                           ; $41a7: $99
	adc  a                                           ; $41a8: $8f
	adc  a                                           ; $41a9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41aa: $cf
	set  5, a                                        ; $41ab: $cb $ef
	ld   l, c                                        ; $41ad: $69
	rst  $28                                         ; $41ae: $ef
	rrca                                             ; $41af: $0f
	and  $7e                                         ; $41b0: $e6 $7e
	ldh  a, [c]                                      ; $41b2: $f2
	ld   a, $f2                                      ; $41b3: $3e $f2
	ld   a, $fa                                      ; $41b5: $3e $fa
	sbc  [hl]                                        ; $41b7: $9e
	ld   a, [hl]                                     ; $41b8: $7e
	ld   e, [hl]                                     ; $41b9: $5e
	ld   a, [hl]                                     ; $41ba: $7e
	ld   e, [hl]                                     ; $41bb: $5e
	ld   a, [hl-]                                    ; $41bc: $3a
	ld   e, $3a                                      ; $41bd: $1e $3a
	ld   l, $10                                      ; $41bf: $2e $10
	db   $10                                         ; $41c1: $10
	jr   nz, @+$22                                   ; $41c2: $20 $20

	jp   nz, $0ec0                                   ; $41c4: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $41c7: $08 $0e $08
	add  b                                           ; $41ca: $80
	add  b                                           ; $41cb: $80
	rrca                                             ; $41cc: $0f
	add  hl, bc                                      ; $41cd: $09
	inc  bc                                          ; $41ce: $03
	nop                                              ; $41cf: $00
	ret  nz                                          ; $41d0: $c0

	add  b                                           ; $41d1: $80
	ld   h, b                                        ; $41d2: $60
	ld   b, b                                        ; $41d3: $40
	ccf                                              ; $41d4: $3f
	ccf                                              ; $41d5: $3f
	inc  h                                           ; $41d6: $24
	inc  h                                           ; $41d7: $24
	ld   bc, $0801                                   ; $41d8: $01 $01 $08
	ld   [$8080], sp                                 ; $41db: $08 $80 $80
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	dec  bc                                          ; $41e0: $0b
	rst  $38                                         ; $41e1: $ff
	dec  bc                                          ; $41e2: $0b
	sbc  $0b                                         ; $41e3: $de $0b
	ld   e, [hl]                                     ; $41e5: $5e
	ld   e, $3c                                      ; $41e6: $1e $3c
	ld   e, $bc                                      ; $41e8: $1e $bc
	ld   a, $ec                                      ; $41ea: $3e $ec
	ccf                                              ; $41ec: $3f
	rst  $28                                         ; $41ed: $ef
	ld   a, a                                        ; $41ee: $7f
	db   $fd                                         ; $41ef: $fd
	ld   l, b                                        ; $41f0: $68
	rst  $38                                         ; $41f1: $ff
	ld   l, b                                        ; $41f2: $68
	db   $fd                                         ; $41f3: $fd
	ld   l, h                                        ; $41f4: $6c
	cp   $b6                                         ; $41f5: $fe $b6
	rst  $38                                         ; $41f7: $ff
	or   [hl]                                        ; $41f8: $b6
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	ld   l, l                                        ; $41fb: $6d
	ld   a, a                                        ; $41fc: $7f
	ld   a, a                                        ; $41fd: $7f
	rst  $38                                         ; $41fe: $ff
	xor  $7f                                         ; $41ff: $ee $7f
	xor  $77                                         ; $4201: $ee $77
	di                                               ; $4203: $f3
	ld   l, a                                        ; $4204: $6f
	rst  ToBoot                                         ; $4205: $c7
	ld   l, [hl]                                     ; $4206: $6e
	adc  $6b                                         ; $4207: $ce $6b
	bit  4, e                                        ; $4209: $cb $63
	jp   nz, $c263                                   ; $420b: $c2 $63 $c2

	ld   h, a                                        ; $420e: $67
	db   $e3                                         ; $420f: $e3
	or   a                                           ; $4210: $b7
	ld   a, $d3                                      ; $4211: $3e $d3
	sbc  a                                           ; $4213: $9f
	db   $eb                                         ; $4214: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4215: $cf
	db   $ed                                         ; $4216: $ed
	rst  $28                                         ; $4217: $ef
	jp   z, $c9cb                                    ; $4218: $ca $cb $c9

	ret                                              ; $421b: $c9


	ret                                              ; $421c: $c9


	ld   c, c                                        ; $421d: $49
	ret                                              ; $421e: $c9


	ret                                              ; $421f: $c9


	xor  a                                           ; $4220: $af
	and  e                                           ; $4221: $a3
	rra                                              ; $4222: $1f
	rrca                                             ; $4223: $0f
	rra                                              ; $4224: $1f
	rra                                              ; $4225: $1f
	or   a                                           ; $4226: $b7
	sub  e                                           ; $4227: $93
	adc  a                                           ; $4228: $8f
	adc  a                                           ; $4229: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422a: $cf
	set  5, a                                        ; $422b: $cb $ef
	ld   l, c                                        ; $422d: $69
	rst  $28                                         ; $422e: $ef
	rrca                                             ; $422f: $0f
	and  $fe                                         ; $4230: $e6 $fe
	ldh  a, [c]                                      ; $4232: $f2
	ld   a, $f2                                      ; $4233: $3e $f2
	cp   [hl]                                        ; $4235: $be
	ld   a, [$7ede]                                  ; $4236: $fa $de $7e
	ld   e, [hl]                                     ; $4239: $5e
	ld   a, [hl]                                     ; $423a: $7e
	ld   e, $3a                                      ; $423b: $1e $3a
	ld   e, $ba                                      ; $423d: $1e $ba
	ld   l, $10                                      ; $423f: $2e $10
	db   $10                                         ; $4241: $10
	jr   nz, @+$22                                   ; $4242: $20 $20

	jp   nz, $0ec0                                   ; $4244: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $4247: $08 $0e $08
	add  b                                           ; $424a: $80
	add  b                                           ; $424b: $80
	dec  bc                                          ; $424c: $0b
	add  hl, bc                                      ; $424d: $09
	nop                                              ; $424e: $00
	nop                                              ; $424f: $00
	ret  nz                                          ; $4250: $c0

	add  b                                           ; $4251: $80
	ld   h, b                                        ; $4252: $60
	ld   b, b                                        ; $4253: $40
	ccf                                              ; $4254: $3f
	ccf                                              ; $4255: $3f
	inc  h                                           ; $4256: $24
	inc  h                                           ; $4257: $24
	ld   bc, $0801                                   ; $4258: $01 $01 $08
	ld   [rRAMG], sp                                 ; $425b: $08 $00 $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	ld   [hl], a                                     ; $4260: $77
	rst  $20                                         ; $4261: $e7
	ld   h, [hl]                                     ; $4262: $66
	and  $6c                                         ; $4263: $e6 $6c
	call z, $c868                                    ; $4265: $cc $68 $c8
	ld   l, b                                        ; $4268: $68
	ret  z                                           ; $4269: $c8

	ld   h, c                                        ; $426a: $61
	pop  bc                                          ; $426b: $c1
	ld   h, c                                        ; $426c: $61
	ret  nz                                          ; $426d: $c0

	ld   h, b                                        ; $426e: $60
	ldh  [$f7], a                                    ; $426f: $e0 $f7
	sbc  $73                                         ; $4271: $de $73
	ld   a, a                                        ; $4273: $7f
	dec  sp                                          ; $4274: $3b
	cpl                                              ; $4275: $2f
	adc  l                                           ; $4276: $8d
	adc  a                                           ; $4277: $8f
	jp   z, $c9cb                                    ; $4278: $ca $cb $c9

	ret                                              ; $427b: $c9


	ret                                              ; $427c: $c9


	adc  c                                           ; $427d: $89
	add  hl, bc                                      ; $427e: $09
	add  hl, bc                                      ; $427f: $09
	cp   a                                           ; $4280: $bf
	cp   a                                           ; $4281: $bf
	ld   sp, $2031                                   ; $4282: $31 $31 $20
	jr   nz, @-$78                                   ; $4285: $20 $86

	add  h                                           ; $4287: $84
	add  [hl]                                        ; $4288: $86
	add  [hl]                                        ; $4289: $86
	adc  $ce                                         ; $428a: $ce $ce
	xor  $64                                         ; $428c: $ee $64
	ldh  [rP1], a                                    ; $428e: $e0 $00
	and  $7e                                         ; $4290: $e6 $7e
	ldh  a, [c]                                      ; $4292: $f2
	cp   [hl]                                        ; $4293: $be
	ldh  a, [c]                                      ; $4294: $f2
	cp   $fa                                         ; $4295: $fe $fa
	ld   e, [hl]                                     ; $4297: $5e
	ld   a, [hl]                                     ; $4298: $7e
	ld   e, [hl]                                     ; $4299: $5e
	ld   a, [hl]                                     ; $429a: $7e
	ld   e, $3a                                      ; $429b: $1e $3a
	ld   e, $3a                                      ; $429d: $1e $3a
	ld   l, $f3                                      ; $429f: $2e $f3
	db   $e3                                         ; $42a1: $e3
	ret  c                                           ; $42a2: $d8

	ldh  a, [$df]                                    ; $42a3: $f0 $df
	rst  $38                                         ; $42a5: $ff
	reti                                             ; $42a6: $d9


	pop  af                                          ; $42a7: $f1
	db   $fc                                         ; $42a8: $fc
	db   $f4                                         ; $42a9: $f4
	ld   a, b                                        ; $42aa: $78
	ldh  a, [$58]                                    ; $42ab: $f0 $58
	ld   hl, sp-$74                                  ; $42ad: $f8 $8c
	db   $fc                                         ; $42af: $fc
	ret  nc                                          ; $42b0: $d0

	ret  nc                                          ; $42b1: $d0

	jr   nz, @+$22                                   ; $42b2: $20 $20

	jp   nz, $0ec0                                   ; $42b4: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $42b7: $08 $0e $08
	add  b                                           ; $42ba: $80
	add  b                                           ; $42bb: $80
	rrca                                             ; $42bc: $0f
	add  hl, bc                                      ; $42bd: $09
	ld   c, $08                                      ; $42be: $0e $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c0: $cf
	adc  a                                           ; $42c1: $8f

Jump_092_42c2:
	ld   h, b                                        ; $42c2: $60
	ld   b, b                                        ; $42c3: $40
	ccf                                              ; $42c4: $3f
	ccf                                              ; $42c5: $3f
	inc  h                                           ; $42c6: $24
	inc  h                                           ; $42c7: $24
	ld   bc, $0801                                   ; $42c8: $01 $01 $08
	ld   [$8000], sp                                 ; $42cb: $08 $00 $80
	nop                                              ; $42ce: $00
	ld   b, b                                        ; $42cf: $40
	dec  bc                                          ; $42d0: $0b
	rst  $38                                         ; $42d1: $ff
	dec  bc                                          ; $42d2: $0b
	sbc  $0b                                         ; $42d3: $de $0b
	ld   e, [hl]                                     ; $42d5: $5e
	ld   e, $3c                                      ; $42d6: $1e $3c
	ld   e, $bc                                      ; $42d8: $1e $bc
	ld   a, $ec                                      ; $42da: $3e $ec
	ccf                                              ; $42dc: $3f
	rst  $28                                         ; $42dd: $ef
	ld   a, a                                        ; $42de: $7f
	db   $fd                                         ; $42df: $fd
	ld   l, b                                        ; $42e0: $68
	rst  $38                                         ; $42e1: $ff
	ld   l, b                                        ; $42e2: $68
	db   $fd                                         ; $42e3: $fd
	ld   l, h                                        ; $42e4: $6c
	cp   $b6                                         ; $42e5: $fe $b6
	rst  $38                                         ; $42e7: $ff
	or   [hl]                                        ; $42e8: $b6
	rst  $38                                         ; $42e9: $ff
	rst  $38                                         ; $42ea: $ff
	ld   l, l                                        ; $42eb: $6d
	ld   a, a                                        ; $42ec: $7f
	ld   a, a                                        ; $42ed: $7f
	rst  $38                                         ; $42ee: $ff
	xor  $7f                                         ; $42ef: $ee $7f
	xor  $77                                         ; $42f1: $ee $77
	di                                               ; $42f3: $f3
	ld   l, a                                        ; $42f4: $6f
	rst  ToBoot                                         ; $42f5: $c7
	ld   l, [hl]                                     ; $42f6: $6e
	adc  $6f                                         ; $42f7: $ce $6f
	bit  5, e                                        ; $42f9: $cb $6b
	jp   nz, $c263                                   ; $42fb: $c2 $63 $c2

	ld   h, a                                        ; $42fe: $67
	db   $e3                                         ; $42ff: $e3
	or   a                                           ; $4300: $b7
	ld   a, $d3                                      ; $4301: $3e $d3
	sbc  a                                           ; $4303: $9f
	db   $eb                                         ; $4304: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4305: $cf
	db   $ed                                         ; $4306: $ed
	rst  $28                                         ; $4307: $ef
	jp   z, $c9cb                                    ; $4308: $ca $cb $c9

	ret                                              ; $430b: $c9


	ret                                              ; $430c: $c9


	ld   c, c                                        ; $430d: $49
	ret                                              ; $430e: $c9


	ret                                              ; $430f: $c9


	xor  a                                           ; $4310: $af
	and  e                                           ; $4311: $a3
	rra                                              ; $4312: $1f
	rrca                                             ; $4313: $0f
	ccf                                              ; $4314: $3f
	rra                                              ; $4315: $1f
	sub  a                                           ; $4316: $97
	sub  e                                           ; $4317: $93
	adc  a                                           ; $4318: $8f
	adc  a                                           ; $4319: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $431a: $cf
	set  5, a                                        ; $431b: $cb $ef
	ld   l, c                                        ; $431d: $69
	rst  $28                                         ; $431e: $ef
	rrca                                             ; $431f: $0f
	and  $fe                                         ; $4320: $e6 $fe
	ldh  a, [c]                                      ; $4322: $f2
	ld   a, $f2                                      ; $4323: $3e $f2
	cp   [hl]                                        ; $4325: $be
	ld   a, [$fede]                                  ; $4326: $fa $de $fe
	ld   e, [hl]                                     ; $4329: $5e
	ld   a, [hl]                                     ; $432a: $7e
	ld   e, $3a                                      ; $432b: $1e $3a
	ld   e, $ba                                      ; $432d: $1e $ba
	ld   l, $f1                                      ; $432f: $2e $f1
	ldh  [$da], a                                    ; $4331: $e0 $da
	ldh  a, [$df]                                    ; $4333: $f0 $df
	rst  $38                                         ; $4335: $ff
	db   $db                                         ; $4336: $db
	pop  af                                          ; $4337: $f1
	db   $fc                                         ; $4338: $fc
	db   $f4                                         ; $4339: $f4
	ld   a, b                                        ; $433a: $78
	ldh  a, [$58]                                    ; $433b: $f0 $58
	ld   hl, sp-$74                                  ; $433d: $f8 $8c
	db   $fc                                         ; $433f: $fc
	db   $10                                         ; $4340: $10
	db   $10                                         ; $4341: $10
	and  b                                           ; $4342: $a0
	jr   nz, @-$1c                                   ; $4343: $20 $e2

	ret  nz                                          ; $4345: $c0

	ld   c, $08                                      ; $4346: $0e $08
	ld   c, $08                                      ; $4348: $0e $08
	add  b                                           ; $434a: $80
	add  b                                           ; $434b: $80
	rrca                                             ; $434c: $0f
	add  hl, bc                                      ; $434d: $09
	inc  bc                                          ; $434e: $03
	nop                                              ; $434f: $00
	jp   nz, Jump_092_6580                           ; $4350: $c2 $80 $65

	ld   b, b                                        ; $4353: $40
	ccf                                              ; $4354: $3f
	ccf                                              ; $4355: $3f
	ld   h, $24                                      ; $4356: $26 $24
	ld   bc, $0801                                   ; $4358: $01 $01 $08
	ld   [$8080], sp                                 ; $435b: $08 $80 $80
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	ld   a, d                                        ; $4360: $7a
	ld   c, [hl]                                     ; $4361: $4e
	ld   a, [$7a8e]                                  ; $4362: $fa $8e $7a
	ld   c, $fe                                      ; $4365: $0e $fe
	ld   e, $7e                                      ; $4367: $1e $7e
	ld   e, $7e                                      ; $4369: $1e $7e
	ld   a, $7e                                      ; $436b: $3e $7e
	ld   a, $ce                                      ; $436d: $3e $ce
	ld   c, [hl]                                     ; $436f: $4e
	dec  bc                                          ; $4370: $0b
	rst  $38                                         ; $4371: $ff
	dec  bc                                          ; $4372: $0b
	sbc  $0b                                         ; $4373: $de $0b
	ld   e, [hl]                                     ; $4375: $5e
	ld   e, $3c                                      ; $4376: $1e $3c
	ld   e, $bc                                      ; $4378: $1e $bc
	ld   a, $ec                                      ; $437a: $3e $ec
	ccf                                              ; $437c: $3f
	rst  $28                                         ; $437d: $ef
	ld   a, a                                        ; $437e: $7f
	db   $f4                                         ; $437f: $f4
	jp   $475f                                       ; $4380: $c3 $5f $47


	ld   c, a                                        ; $4383: $4f
	ld   b, a                                        ; $4384: $47
	ld   c, a                                        ; $4385: $4f
	ld   b, a                                        ; $4386: $47
	ld   h, [hl]                                     ; $4387: $66
	ld   b, a                                        ; $4388: $47
	ld   l, [hl]                                     ; $4389: $6e
	ld   h, a                                        ; $438a: $67
	ld   [hl], $e7                                   ; $438b: $36 $e7
	cp   [hl]                                        ; $438d: $be
	rst  $20                                         ; $438e: $e7
	cp   $68                                         ; $438f: $fe $68
	rst  $38                                         ; $4391: $ff
	ld   l, b                                        ; $4392: $68
	db   $fd                                         ; $4393: $fd
	ld   l, h                                        ; $4394: $6c
	cp   $b6                                         ; $4395: $fe $b6
	rst  $38                                         ; $4397: $ff
	or   [hl]                                        ; $4398: $b6
	rst  $38                                         ; $4399: $ff
	rst  $38                                         ; $439a: $ff
	ld   l, l                                        ; $439b: $6d
	ld   a, a                                        ; $439c: $7f
	ld   a, a                                        ; $439d: $7f
	rst  $38                                         ; $439e: $ff
	xor  $77                                         ; $439f: $ee $77
	push hl                                          ; $43a1: $e5
	ld   h, a                                        ; $43a2: $67
	rst  $20                                         ; $43a3: $e7
	ld   l, [hl]                                     ; $43a4: $6e
	add  $6b                                         ; $43a5: $c6 $6b
	bit  5, e                                        ; $43a7: $cb $6b
	bit  4, e                                        ; $43a9: $cb $63
	jp   nz, $c263                                   ; $43ab: $c2 $63 $c2

	ld   h, e                                        ; $43ae: $63
	db   $e3                                         ; $43af: $e3
	rst  $30                                         ; $43b0: $f7
	cp   [hl]                                        ; $43b1: $be
	di                                               ; $43b2: $f3
	rst  $38                                         ; $43b3: $ff
	ei                                               ; $43b4: $fb
	ld   l, a                                        ; $43b5: $6f
	call $cacf                                       ; $43b6: $cd $cf $ca
	set  1, c                                        ; $43b9: $cb $c9
	ret                                              ; $43bb: $c9


	ret                                              ; $43bc: $c9


	ld   c, c                                        ; $43bd: $49
	ret                                              ; $43be: $c9


	ret                                              ; $43bf: $c9


	cp   a                                           ; $43c0: $bf
	cp   a                                           ; $43c1: $bf
	ld   a, a                                        ; $43c2: $7f
	ld   e, a                                        ; $43c3: $5f
	scf                                              ; $43c4: $37
	inc  sp                                          ; $43c5: $33
	adc  a                                           ; $43c6: $8f
	adc  a                                           ; $43c7: $8f
	adc  a                                           ; $43c8: $8f
	adc  a                                           ; $43c9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ca: $cf
	set  5, a                                        ; $43cb: $cb $ef
	ld   l, c                                        ; $43cd: $69
	rst  $28                                         ; $43ce: $ef
	rrca                                             ; $43cf: $0f
	and  $7e                                         ; $43d0: $e6 $7e
	ldh  a, [c]                                      ; $43d2: $f2
	cp   [hl]                                        ; $43d3: $be
	ldh  a, [c]                                      ; $43d4: $f2
	cp   $fa                                         ; $43d5: $fe $fa
	ld   e, [hl]                                     ; $43d7: $5e
	ld   a, [hl]                                     ; $43d8: $7e
	ld   e, $7e                                      ; $43d9: $1e $7e
	ld   e, $3a                                      ; $43db: $1e $3a
	ld   e, $3a                                      ; $43dd: $1e $3a
	ld   l, $10                                      ; $43df: $2e $10
	db   $10                                         ; $43e1: $10
	jr   nz, @+$22                                   ; $43e2: $20 $20

	jp   nz, $0ec0                                   ; $43e4: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $43e7: $08 $0e $08
	sbc  b                                           ; $43ea: $98
	add  b                                           ; $43eb: $80
	dec  de                                          ; $43ec: $1b
	add  hl, bc                                      ; $43ed: $09
	inc  bc                                          ; $43ee: $03
	nop                                              ; $43ef: $00
	ret  nz                                          ; $43f0: $c0

	add  b                                           ; $43f1: $80
	ld   h, b                                        ; $43f2: $60
	ld   b, b                                        ; $43f3: $40
	ccf                                              ; $43f4: $3f
	ccf                                              ; $43f5: $3f
	inc  h                                           ; $43f6: $24
	inc  h                                           ; $43f7: $24
	ld   bc, $0801                                   ; $43f8: $01 $01 $08
	ld   [$c0c0], sp                                 ; $43fb: $08 $c0 $c0
	add  b                                           ; $43fe: $80
	nop                                              ; $43ff: $00
	dec  bc                                          ; $4400: $0b
	rst  $38                                         ; $4401: $ff
	dec  bc                                          ; $4402: $0b
	sbc  $0b                                         ; $4403: $de $0b
	ld   e, [hl]                                     ; $4405: $5e
	ld   e, $3c                                      ; $4406: $1e $3c
	ld   e, $bc                                      ; $4408: $1e $bc
	ld   a, $ec                                      ; $440a: $3e $ec
	ccf                                              ; $440c: $3f
	rst  $28                                         ; $440d: $ef
	ld   a, a                                        ; $440e: $7f
	or   $68                                         ; $440f: $f6 $68
	rst  $38                                         ; $4411: $ff
	ld   l, b                                        ; $4412: $68
	db   $fd                                         ; $4413: $fd
	ld   l, h                                        ; $4414: $6c
	cp   $b6                                         ; $4415: $fe $b6
	rst  $38                                         ; $4417: $ff
	or   [hl]                                        ; $4418: $b6
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	ld   l, l                                        ; $441b: $6d
	ld   a, a                                        ; $441c: $7f
	ld   a, a                                        ; $441d: $7f
	rst  $38                                         ; $441e: $ff
	cp   $7f                                         ; $441f: $fe $7f
	rst  $20                                         ; $4421: $e7
	ld   a, a                                        ; $4422: $7f
	ld   a, [$c367]                                  ; $4423: $fa $67 $c3
	ld   l, a                                        ; $4426: $6f
	rst  ToBoot                                         ; $4427: $c7
	ld   l, c                                        ; $4428: $69
	ret                                              ; $4429: $c9


	ld   h, e                                        ; $442a: $63
	jp   $c063                                       ; $442b: $c3 $63 $c0


	ld   h, e                                        ; $442e: $63
	db   $e3                                         ; $442f: $e3
	rst  $30                                         ; $4430: $f7
	cp   [hl]                                        ; $4431: $be
	di                                               ; $4432: $f3
	ccf                                              ; $4433: $3f
	ei                                               ; $4434: $fb
	adc  a                                           ; $4435: $8f
	db   $fd                                         ; $4436: $fd
	rst  $28                                         ; $4437: $ef
	adc  d                                           ; $4438: $8a
	adc  e                                           ; $4439: $8b
	adc  c                                           ; $443a: $89
	adc  c                                           ; $443b: $89
	adc  c                                           ; $443c: $89
	adc  c                                           ; $443d: $89
	ret                                              ; $443e: $c9


	adc  c                                           ; $443f: $89
	cp   a                                           ; $4440: $bf
	xor  a                                           ; $4441: $af
	ccf                                              ; $4442: $3f
	inc  h                                           ; $4443: $24
	ccf                                              ; $4444: $3f
	rra                                              ; $4445: $1f
	cp   a                                           ; $4446: $bf
	cp   a                                           ; $4447: $bf
	adc  h                                           ; $4448: $8c
	adc  h                                           ; $4449: $8c
	call c, $fcdc                                    ; $444a: $dc $dc $fc
	ld   h, h                                        ; $444d: $64
	rst  $38                                         ; $444e: $ff
	ld   e, $e6                                      ; $444f: $1e $e6
	cp   $f2                                         ; $4451: $fe $f2
	ld   a, [hl]                                     ; $4453: $7e
	ldh  a, [c]                                      ; $4454: $f2
	ld   a, $fa                                      ; $4455: $3e $fa
	sbc  [hl]                                        ; $4457: $9e
	ld   a, [hl]                                     ; $4458: $7e
	ld   e, [hl]                                     ; $4459: $5e
	ld   a, $1e                                      ; $445a: $3e $1e
	ld   a, [hl-]                                    ; $445c: $3a
	ld   e, $3a                                      ; $445d: $1e $3a
	ld   l, $10                                      ; $445f: $2e $10
	db   $10                                         ; $4461: $10
	jr   nz, jr_092_4484                             ; $4462: $20 $20

	jp   nz, $0ec0                                   ; $4464: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $4467: $08 $0e $08
	add  b                                           ; $446a: $80
	add  b                                           ; $446b: $80
	rrca                                             ; $446c: $0f
	ld   b, $03                                      ; $446d: $06 $03
	nop                                              ; $446f: $00
	dec  bc                                          ; $4470: $0b
	rst  $38                                         ; $4471: $ff
	dec  bc                                          ; $4472: $0b
	sbc  $0b                                         ; $4473: $de $0b
	ld   e, [hl]                                     ; $4475: $5e
	ld   e, $3c                                      ; $4476: $1e $3c
	ld   e, $bc                                      ; $4478: $1e $bc
	ld   a, $ec                                      ; $447a: $3e $ec
	ccf                                              ; $447c: $3f
	rst  $28                                         ; $447d: $ef
	ld   a, a                                        ; $447e: $7f
	rst  $30                                         ; $447f: $f7
	ld   l, b                                        ; $4480: $68
	rst  $38                                         ; $4481: $ff
	ld   l, b                                        ; $4482: $68
	db   $fd                                         ; $4483: $fd

jr_092_4484:
	ld   l, h                                        ; $4484: $6c
	cp   $b6                                         ; $4485: $fe $b6
	rst  $38                                         ; $4487: $ff
	or   [hl]                                        ; $4488: $b6
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	ld   l, l                                        ; $448b: $6d
	ld   a, a                                        ; $448c: $7f
	ld   a, a                                        ; $448d: $7f
	rst  $38                                         ; $448e: $ff
	rst  $20                                         ; $448f: $e7
	ld   [hl], a                                     ; $4490: $77
	push hl                                          ; $4491: $e5
	ld   h, a                                        ; $4492: $67
	rst  $20                                         ; $4493: $e7
	ld   l, [hl]                                     ; $4494: $6e
	add  $6b                                         ; $4495: $c6 $6b
	bit  5, e                                        ; $4497: $cb $6b
	bit  4, e                                        ; $4499: $cb $63
	jp   nz, $c263                                   ; $449b: $c2 $63 $c2

	ld   h, e                                        ; $449e: $63
	db   $e3                                         ; $449f: $e3
	rst  $30                                         ; $44a0: $f7
	cp   [hl]                                        ; $44a1: $be
	di                                               ; $44a2: $f3
	rst  $38                                         ; $44a3: $ff
	ei                                               ; $44a4: $fb
	ld   l, a                                        ; $44a5: $6f
	call $cacf                                       ; $44a6: $cd $cf $ca
	set  1, c                                        ; $44a9: $cb $c9
	ret                                              ; $44ab: $c9


	ret                                              ; $44ac: $c9


	ld   c, c                                        ; $44ad: $49
	ret                                              ; $44ae: $c9


	ret                                              ; $44af: $c9


	sbc  a                                           ; $44b0: $9f
	sbc  a                                           ; $44b1: $9f
	cp   a                                           ; $44b2: $bf
	cp   a                                           ; $44b3: $bf
	ld   [hl], a                                     ; $44b4: $77
	ld   [hl], e                                     ; $44b5: $73
	adc  a                                           ; $44b6: $8f
	adc  a                                           ; $44b7: $8f
	adc  a                                           ; $44b8: $8f
	adc  a                                           ; $44b9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ba: $cf
	set  5, a                                        ; $44bb: $cb $ef
	ld   l, c                                        ; $44bd: $69
	rst  $28                                         ; $44be: $ef
	rrca                                             ; $44bf: $0f
	and  $7e                                         ; $44c0: $e6 $7e
	ldh  a, [c]                                      ; $44c2: $f2
	cp   [hl]                                        ; $44c3: $be
	ldh  a, [c]                                      ; $44c4: $f2
	cp   $fa                                         ; $44c5: $fe $fa
	ld   e, [hl]                                     ; $44c7: $5e
	ld   a, [hl]                                     ; $44c8: $7e
	ld   e, $7e                                      ; $44c9: $1e $7e
	ld   e, $3a                                      ; $44cb: $1e $3a
	ld   e, $3a                                      ; $44cd: $1e $3a

Call_092_44cf:
	ld   l, $10                                      ; $44cf: $2e $10
	db   $10                                         ; $44d1: $10
	jr   nz, jr_092_44f4                             ; $44d2: $20 $20

	jp   nz, $0ec0                                   ; $44d4: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $44d7: $08 $0e $08
	add  b                                           ; $44da: $80
	add  b                                           ; $44db: $80
	rrca                                             ; $44dc: $0f
	dec  bc                                          ; $44dd: $0b
	inc  bc                                          ; $44de: $03
	nop                                              ; $44df: $00
	ret  nz                                          ; $44e0: $c0

	add  b                                           ; $44e1: $80
	ld   h, b                                        ; $44e2: $60
	ld   b, b                                        ; $44e3: $40
	ccf                                              ; $44e4: $3f
	ccf                                              ; $44e5: $3f
	inc  h                                           ; $44e6: $24
	inc  h                                           ; $44e7: $24
	ld   bc, $0801                                   ; $44e8: $01 $01 $08
	ld   [$0080], sp                                 ; $44eb: $08 $80 $00
	add  b                                           ; $44ee: $80
	nop                                              ; $44ef: $00
	ld   a, h                                        ; $44f0: $7c
	rst  $38                                         ; $44f1: $ff
	ldh  a, [$fc]                                    ; $44f2: $f0 $fc

jr_092_44f4:
	jp   nz, $0cfa                                   ; $44f4: $c2 $fa $0c

	rst  $38                                         ; $44f7: $ff
	ld   [hl], b                                     ; $44f8: $70
	cp   $e0                                         ; $44f9: $fe $e0
	rst  $38                                         ; $44fb: $ff
	jp   nz, $8cff                                   ; $44fc: $c2 $ff $8c

	rst  $38                                         ; $44ff: $ff
	nop                                              ; $4500: $00
	ld   a, a                                        ; $4501: $7f
	nop                                              ; $4502: $00
	rst  $38                                         ; $4503: $ff
	nop                                              ; $4504: $00
	rst  $38                                         ; $4505: $ff
	nop                                              ; $4506: $00
	ccf                                              ; $4507: $3f
	nop                                              ; $4508: $00
	db   $fd                                         ; $4509: $fd
	nop                                              ; $450a: $00
	db   $fc                                         ; $450b: $fc
	db   $10                                         ; $450c: $10
	cp   $64                                         ; $450d: $fe $64
	rst  $38                                         ; $450f: $ff
	nop                                              ; $4510: $00
	rst  $38                                         ; $4511: $ff
	nop                                              ; $4512: $00
	rst  $38                                         ; $4513: $ff
	nop                                              ; $4514: $00
	ei                                               ; $4515: $fb
	nop                                              ; $4516: $00
	db   $fc                                         ; $4517: $fc
	nop                                              ; $4518: $00
	ld   a, [hl]                                     ; $4519: $7e
	ld   b, b                                        ; $451a: $40
	rst  $38                                         ; $451b: $ff
	ld   b, b                                        ; $451c: $40
	rst  $38                                         ; $451d: $ff
	jp   nz, $02ff                                   ; $451e: $c2 $ff $02

	cp   $02                                         ; $4521: $fe $02
	adc  $02                                         ; $4523: $ce $02
	ld   h, d                                        ; $4525: $62
	ld   [bc], a                                     ; $4526: $02
	adc  [hl]                                        ; $4527: $8e
	ld   [bc], a                                     ; $4528: $02
	ld   a, [hl]                                     ; $4529: $7e
	ld   [bc], a                                     ; $452a: $02
	ld   a, [hl]                                     ; $452b: $7e
	ld   [bc], a                                     ; $452c: $02
	cp   $02                                         ; $452d: $fe $02
	cp   $38                                         ; $452f: $fe $38
	rst  $38                                         ; $4531: $ff
	pop  af                                          ; $4532: $f1
	rst  $38                                         ; $4533: $ff
	or   e                                           ; $4534: $b3
	rst  $38                                         ; $4535: $ff
	ld   h, a                                        ; $4536: $67
	cp   $e4                                         ; $4537: $fe $e4
	rst  $38                                         ; $4539: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $453a: $cf
	ld   hl, sp-$21                                  ; $453b: $f8 $df
	pop  af                                          ; $453d: $f1
	rst  $38                                         ; $453e: $ff
	di                                               ; $453f: $f3
	call z, $dcff                                    ; $4540: $cc $ff $dc
	rst  $30                                         ; $4543: $f7
	sbc  h                                           ; $4544: $9c
	rst  $30                                         ; $4545: $f7
	cp   h                                           ; $4546: $bc
	rst  $20                                         ; $4547: $e7
	db   $fd                                         ; $4548: $fd
	rst  ToBoot                                         ; $4549: $c7
	db   $dd                                         ; $454a: $dd
	rst  $20                                         ; $454b: $e7
	db   $fd                                         ; $454c: $fd
	rst  $20                                         ; $454d: $e7
	ccf                                              ; $454e: $3f
	ld   [hl-], a                                    ; $454f: $32
	jp   nc, $d2ff                                   ; $4550: $d2 $ff $d2

	rst  $38                                         ; $4553: $ff
	jp   hl                                          ; $4554: $e9


	cp   a                                           ; $4555: $bf
	jp   hl                                          ; $4556: $e9


	cp   a                                           ; $4557: $bf
	ld   sp, hl                                      ; $4558: $f9
	rra                                              ; $4559: $1f
	db   $fd                                         ; $455a: $fd
	rra                                              ; $455b: $1f
	rst  $38                                         ; $455c: $ff
	dec  bc                                          ; $455d: $0b
	rst  $38                                         ; $455e: $ff
	ld   a, a                                        ; $455f: $7f
	ld   [bc], a                                     ; $4560: $02
	cp   $02                                         ; $4561: $fe $02
	cp   $22                                         ; $4563: $fe $22
	cp   $22                                         ; $4565: $fe $22
	cp   $92                                         ; $4567: $fe $92
	cp   $92                                         ; $4569: $fe $92
	cp   $ca                                         ; $456b: $fe $ca
	ld   a, [hl]                                     ; $456d: $7e
	ld   l, $fe                                      ; $456e: $2e $fe
	xor  $f6                                         ; $4570: $ee $f6
	ld   l, h                                        ; $4572: $6c
	ld   [hl], h                                     ; $4573: $74
	ld   e, h                                        ; $4574: $5c
	ld   d, b                                        ; $4575: $50
	ld   e, b                                        ; $4576: $58
	ld   d, b                                        ; $4577: $50
	jr   jr_092_458a                                 ; $4578: $18 $10

	inc  a                                           ; $457a: $3c
	ld   a, h                                        ; $457b: $7c
	ld   [hl], a                                     ; $457c: $77
	di                                               ; $457d: $f3
	or   e                                           ; $457e: $b3
	or   c                                           ; $457f: $b1
	rra                                              ; $4580: $1f
	inc  de                                          ; $4581: $13
	rra                                              ; $4582: $1f
	ld   a, [bc]                                     ; $4583: $0a
	ld   h, a                                        ; $4584: $67
	ld   h, d                                        ; $4585: $62
	inc  bc                                          ; $4586: $03
	ld   h, e                                        ; $4587: $63
	inc  b                                           ; $4588: $04
	inc  b                                           ; $4589: $04

jr_092_458a:
	ld   [$d008], sp                                 ; $458a: $08 $08 $d0
	ret  nc                                          ; $458d: $d0

	cp   h                                           ; $458e: $bc
	db   $10                                         ; $458f: $10
	cp   a                                           ; $4590: $bf
	rst  JumpTable                                         ; $4591: $df
	pop  hl                                          ; $4592: $e1
	ld   hl, $40c0                                   ; $4593: $21 $c0 $40
	db   $ec                                         ; $4596: $ec
	db   $fc                                         ; $4597: $fc
	jr   jr_092_45b6                                 ; $4598: $18 $1c

	inc  b                                           ; $459a: $04
	inc  b                                           ; $459b: $04
	ld   [bc], a                                     ; $459c: $02
	ld   [bc], a                                     ; $459d: $02
	ld   [hl-], a                                    ; $459e: $32
	ld   [hl-], a                                    ; $459f: $32
	or   $3e                                         ; $45a0: $f6 $3e
	cp   $de                                         ; $45a2: $fe $de
	ld   a, [hl]                                     ; $45a4: $7e
	ld   a, [hl]                                     ; $45a5: $7e
	ld   a, $36                                      ; $45a6: $3e $36
	ld   e, $1a                                      ; $45a8: $1e $1a
	ld   c, $0a                                      ; $45aa: $0e $0a
	ld   c, $06                                      ; $45ac: $0e $06
	ld   e, $06                                      ; $45ae: $1e $06
	jr   nc, @+$32                                   ; $45b0: $30 $30

	jr   nc, jr_092_4624                             ; $45b2: $30 $70

	ld   [hl-], a                                    ; $45b4: $32
	ld   [hl], d                                     ; $45b5: $72

jr_092_45b6:
	ld   d, h                                        ; $45b6: $54
	ld   d, h                                        ; $45b7: $54
	add  d                                           ; $45b8: $82
	sbc  d                                           ; $45b9: $9a
	adc  c                                           ; $45ba: $89
	adc  c                                           ; $45bb: $89
	ld   h, $66                                      ; $45bc: $26 $66
	ld   a, [de]                                     ; $45be: $1a
	rra                                              ; $45bf: $1f
	rst  JumpTable                                         ; $45c0: $df
	or   c                                           ; $45c1: $b1
	rst  $30                                         ; $45c2: $f7
	jp   nc, $9090                                   ; $45c3: $d2 $90 $90

	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	add  h                                           ; $45c8: $84
	add  [hl]                                        ; $45c9: $86
	inc  bc                                          ; $45ca: $03
	inc  bc                                          ; $45cb: $03
	ld   h, e                                        ; $45cc: $63
	ld   a, [hl]                                     ; $45cd: $7e
	ld   [hl+], a                                    ; $45ce: $22
	ld   [de], a                                     ; $45cf: $12
	ccf                                              ; $45d0: $3f
	rrca                                             ; $45d1: $0f
	adc  a                                           ; $45d2: $8f
	add  e                                           ; $45d3: $83
	cpl                                              ; $45d4: $2f
	ld   a, [hl+]                                    ; $45d5: $2a
	ld   d, h                                        ; $45d6: $54
	ld   d, h                                        ; $45d7: $54
	ld   a, [bc]                                     ; $45d8: $0a
	ld   a, [de]                                     ; $45d9: $1a
	di                                               ; $45da: $f3
	di                                               ; $45db: $f3
	inc  b                                           ; $45dc: $04
	inc  b                                           ; $45dd: $04
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	ld   a, [$3afe]                                  ; $45e0: $fa $fe $3a
	ld   c, $fa                                      ; $45e3: $0e $fa
	adc  $fa                                         ; $45e5: $ce $fa
	ld   c, $be                                      ; $45e7: $0e $be
	add  [hl]                                        ; $45e9: $86
	ld   a, $06                                      ; $45ea: $3e $06
	ld   a, [hl]                                     ; $45ec: $7e
	ld   c, $7e                                      ; $45ed: $0e $7e
	ld   e, $06                                      ; $45ef: $1e $06
	rlca                                             ; $45f1: $07
	ld   c, $0f                                      ; $45f2: $0e $0f
	ld   a, [de]                                     ; $45f4: $1a
	rra                                              ; $45f5: $1f
	ld   [hl+], a                                    ; $45f6: $22
	scf                                              ; $45f7: $37
	daa                                              ; $45f8: $27
	cpl                                              ; $45f9: $2f
	ld   l, a                                        ; $45fa: $6f
	ld   a, a                                        ; $45fb: $7f
	pop  de                                          ; $45fc: $d1
	rst  $38                                         ; $45fd: $ff
	ld   h, e                                        ; $45fe: $63
	rst  $38                                         ; $45ff: $ff
	adc  [hl]                                        ; $4600: $8e
	adc  h                                           ; $4601: $8c
	ld   b, b                                        ; $4602: $40
	ldh  [$34], a                                    ; $4603: $e0 $34
	ld   hl, sp+$7f                                  ; $4605: $f8 $7f
	rst  $38                                         ; $4607: $ff
	add  e                                           ; $4608: $83
	rst  $38                                         ; $4609: $ff
	rlca                                             ; $460a: $07
	rst  $38                                         ; $460b: $ff
	sbc  a                                           ; $460c: $9f
	cp   $ff                                         ; $460d: $fe $ff
	db   $fc                                         ; $460f: $fc
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	rlca                                             ; $4612: $07
	inc  bc                                          ; $4613: $03
	ld   l, a                                        ; $4614: $6f
	inc  e                                           ; $4615: $1c
	cp   $e0                                         ; $4616: $fe $e0
	cp   $c0                                         ; $4618: $fe $c0
	db   $fd                                         ; $461a: $fd
	ld   h, c                                        ; $461b: $61
	ei                                               ; $461c: $fb
	ld   h, e                                        ; $461d: $63
	ldh  a, [c]                                      ; $461e: $f2
	ldh  a, [c]                                      ; $461f: $f2
	ld   c, $0e                                      ; $4620: $0e $0e
	ld   c, $0e                                      ; $4622: $0e $0e

jr_092_4624:
	ld   c, $0e                                      ; $4624: $0e $0e

jr_092_4626:
	ld   [hl-], a                                    ; $4626: $32
	ld   a, $46                                      ; $4627: $3e $46
	ld   a, [hl]                                     ; $4629: $7e
	sbc  [hl]                                        ; $462a: $9e
	ld   a, [$e23e]                                  ; $462b: $fa $3e $e2
	ld   a, [hl]                                     ; $462e: $7e
	jp   nz, $ffff                                   ; $462f: $c2 $ff $ff

	sbc  h                                           ; $4632: $9c
	db   $fc                                         ; $4633: $fc
	jr   nc, jr_092_4626                             ; $4634: $30 $f0

	ld   h, b                                        ; $4636: $60
	ldh  [$c0], a                                    ; $4637: $e0 $c0
	ret  nz                                          ; $4639: $c0

	add  b                                           ; $463a: $80
	add  b                                           ; $463b: $80
	add  c                                           ; $463c: $81
	add  c                                           ; $463d: $81
	pop  bc                                          ; $463e: $c1
	pop  bc                                          ; $463f: $c1
	ld   b, $07                                      ; $4640: $06 $07
	rlca                                             ; $4642: $07
	rlca                                             ; $4643: $07
	rra                                              ; $4644: $1f
	inc  e                                           ; $4645: $1c
	ld   a, a                                        ; $4646: $7f
	ld   [hl], b                                     ; $4647: $70
	rst  $38                                         ; $4648: $ff
	ret  nz                                          ; $4649: $c0

	rst  $38                                         ; $464a: $ff
	sub  b                                           ; $464b: $90
	rst  $38                                         ; $464c: $ff
	inc  h                                           ; $464d: $24
	rst  $38                                         ; $464e: $ff
	inc  c                                           ; $464f: $0c
	ld   [hl], d                                     ; $4650: $72
	di                                               ; $4651: $f3
	cp   d                                           ; $4652: $ba
	ei                                               ; $4653: $fb
	cp   d                                           ; $4654: $ba
	ei                                               ; $4655: $fb
	cp   h                                           ; $4656: $bc
	rst  $38                                         ; $4657: $ff
	db   $fd                                         ; $4658: $fd
	rst  $38                                         ; $4659: $ff
	push hl                                          ; $465a: $e5
	ccf                                              ; $465b: $3f
	bit  7, a                                        ; $465c: $cb $7f
	ldh  a, [c]                                      ; $465e: $f2
	ld   a, a                                        ; $465f: $7f
	cp   $c6                                         ; $4660: $fe $c6
	cp   $8a                                         ; $4662: $fe $8a
	cp   $92                                         ; $4664: $fe $92
	cp   $b2                                         ; $4666: $fe $b2
	cp   $62                                         ; $4668: $fe $62
	cp   $c2                                         ; $466a: $fe $c2
	cp   $82                                         ; $466c: $fe $82
	ld   a, [hl]                                     ; $466e: $7e
	jp   nz, $fe1e                                   ; $466f: $c2 $1e $fe

	ld   sp, hl                                      ; $4672: $f9
	ld   sp, hl                                      ; $4673: $f9
	ldh  a, [$f0]                                    ; $4674: $f0 $f0
	ld   h, b                                        ; $4676: $60
	ldh  [$fe], a                                    ; $4677: $e0 $fe
	cp   $e1                                         ; $4679: $fe $e1
	rst  $38                                         ; $467b: $ff
	add  c                                           ; $467c: $81
	rst  $38                                         ; $467d: $ff
	inc  bc                                          ; $467e: $03
	rst  $38                                         ; $467f: $ff
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	add  b                                           ; $4682: $80
	add  b                                           ; $4683: $80
	ldh  [$c0], a                                    ; $4684: $e0 $c0
	ld   hl, sp-$10                                  ; $4686: $f8 $f0
	cp   a                                           ; $4688: $bf
	xor  h                                           ; $4689: $ac
	sbc  a                                           ; $468a: $9f
	sbc  a                                           ; $468b: $9f
	ldh  [$e0], a                                    ; $468c: $e0 $e0
	sbc  b                                           ; $468e: $98
	sbc  b                                           ; $468f: $98
	ld   bc, $0300                                   ; $4690: $01 $00 $03
	ld   bc, $060f                                   ; $4693: $01 $0f $06
	ccf                                              ; $4696: $3f
	add  hl, de                                      ; $4697: $19
	cp   $66                                         ; $4698: $fe $66
	ld   hl, sp-$08                                  ; $469a: $f8 $f8
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	inc  de                                          ; $469e: $13
	inc  de                                          ; $469f: $13
	add  [hl]                                        ; $46a0: $86
	add  [hl]                                        ; $46a1: $86
	add  d                                           ; $46a2: $82
	add  d                                           ; $46a3: $82
	jp   nz, $c2c2                                   ; $46a4: $c2 $c2 $c2

	jp   nz, Jump_092_42c2                           ; $46a7: $c2 $c2 $42

	jp   nz, $c242                                   ; $46aa: $c2 $42 $c2

	jp   nz, Jump_092_66e6                           ; $46ad: $c2 $e6 $66

	rrca                                             ; $46b0: $0f
	rst  $38                                         ; $46b1: $ff
	rrca                                             ; $46b2: $0f
	cp   $0f                                         ; $46b3: $fe $0f
	ld   hl, sp+$1e                                  ; $46b5: $f8 $1e
	ld   hl, sp+$1c                                  ; $46b7: $f8 $1c
	ldh  a, [rAUD3LEVEL]                             ; $46b9: $f0 $1c
	ldh  a, [rAUD2LOW]                               ; $46bb: $f0 $18
	ldh  a, [$38]                                    ; $46bd: $f0 $38
	ldh  a, [$87]                                    ; $46bf: $f0 $87
	add  a                                           ; $46c1: $87
	ret  nz                                          ; $46c2: $c0

	ld   b, b                                        ; $46c3: $40
	jr   nc, @+$32                                   ; $46c4: $30 $30

	rra                                              ; $46c6: $1f
	rra                                              ; $46c7: $1f
	inc  de                                          ; $46c8: $13
	ld   [de], a                                     ; $46c9: $12
	ld   [hl+], a                                    ; $46ca: $22
	ld   [hl+], a                                    ; $46cb: $22
	inc  h                                           ; $46cc: $24
	inc  h                                           ; $46cd: $24
	ld   b, h                                        ; $46ce: $44
	ld   b, h                                        ; $46cf: $44
	rst  $38                                         ; $46d0: $ff
	ldh  [rTAC], a                                   ; $46d1: $e0 $07
	nop                                              ; $46d3: $00
	ccf                                              ; $46d4: $3f
	inc  bc                                          ; $46d5: $03
	rst  $38                                         ; $46d6: $ff
	db   $fc                                         ; $46d7: $fc
	rst  $38                                         ; $46d8: $ff
	ld   c, c                                        ; $46d9: $49
	xor  $ca                                         ; $46da: $ee $ca
	call z, $c4cc                                    ; $46dc: $cc $cc $c4
	call nz, $6eea                                   ; $46df: $c4 $ea $6e
	ldh  a, [c]                                      ; $46e2: $f2
	sbc  $fe                                         ; $46e3: $de $fe
	ld   c, [hl]                                     ; $46e5: $4e
	cp   [hl]                                        ; $46e6: $be
	add  d                                           ; $46e7: $82
	ld   e, $02                                      ; $46e8: $1e $02
	ld   e, $02                                      ; $46ea: $1e $02
	ld   c, $02                                      ; $46ec: $0e $02
	ld   c, $02                                      ; $46ee: $0e $02
	ldh  a, [$e0]                                    ; $46f0: $f0 $e0
	ret  nc                                          ; $46f2: $d0

	ldh  a, [$d0]                                    ; $46f3: $f0 $d0
	ldh  a, [$d9]                                    ; $46f5: $f0 $d9
	pop  af                                          ; $46f7: $f1
	db   $fc                                         ; $46f8: $fc
	db   $f4                                         ; $46f9: $f4
	ld   hl, sp-$08                                  ; $46fa: $f8 $f8
	db   $fc                                         ; $46fc: $fc
	ld   hl, sp-$02                                  ; $46fd: $f8 $fe
	db   $fc                                         ; $46ff: $fc
	ld   a, [hl-]                                    ; $4700: $3a
	ld   c, $3a                                      ; $4701: $0e $3a
	ld   c, $7a                                      ; $4703: $0e $7a
	ld   c, $7e                                      ; $4705: $0e $7e
	ld   e, $7e                                      ; $4707: $1e $7e
	ld   e, $7a                                      ; $4709: $1e $7a
	ld   a, $fa                                      ; $470b: $3e $fa
	ld   a, $fa                                      ; $470d: $3e $fa
	ld   a, [hl]                                     ; $470f: $7e
	sub  $fe                                         ; $4710: $d6 $fe
	sub  e                                           ; $4712: $93
	rst  $38                                         ; $4713: $ff
	ld   d, e                                        ; $4714: $53
	ld   a, a                                        ; $4715: $7f
	ld   b, e                                        ; $4716: $43
	ld   a, a                                        ; $4717: $7f
	ld   b, c                                        ; $4718: $41
	ld   l, a                                        ; $4719: $6f
	ld   b, c                                        ; $471a: $41
	ld   l, a                                        ; $471b: $6f
	ld   b, c                                        ; $471c: $41
	ld   h, a                                        ; $471d: $67
	add  e                                           ; $471e: $83
	rst  $10                                         ; $471f: $d7
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	add  b                                           ; $4722: $80
	add  b                                           ; $4723: $80
	ldh  [$c0], a                                    ; $4724: $e0 $c0
	ld   hl, sp-$50                                  ; $4726: $f8 $b0
	rst  $38                                         ; $4728: $ff
	adc  h                                           ; $4729: $8c
	cp   a                                           ; $472a: $bf
	add  e                                           ; $472b: $83
	sbc  a                                           ; $472c: $9f
	add  b                                           ; $472d: $80
	adc  a                                           ; $472e: $8f
	add  b                                           ; $472f: $80
	ld   bc, $0300                                   ; $4730: $01 $00 $03
	ld   bc, $070f                                   ; $4733: $01 $0f $07
	ccf                                              ; $4736: $3f
	add  hl, de                                      ; $4737: $19
	rst  $38                                         ; $4738: $ff
	ld   h, c                                        ; $4739: $61
	rst  $38                                         ; $473a: $ff
	add  c                                           ; $473b: $81
	rst  $38                                         ; $473c: $ff
	ld   bc, $01e7                                   ; $473d: $01 $e7 $01
	or   $fe                                         ; $4740: $f6 $fe
	or   $fe                                         ; $4742: $f6 $fe
	and  [hl]                                        ; $4744: $a6
	cp   $a2                                         ; $4745: $fe $a2
	cp   $a2                                         ; $4747: $fe $a2
	ld   a, [$fa12]                                  ; $4749: $fa $12 $fa
	ld   [de], a                                     ; $474c: $12
	ldh  a, [c]                                      ; $474d: $f2
	ld   [de], a                                     ; $474e: $12
	ld   a, [$df83]                                  ; $474f: $fa $83 $df
	inc  bc                                          ; $4752: $03
	rst  $38                                         ; $4753: $ff
	ld   a, $fc                                      ; $4754: $3e $fc
	ldh  [$c0], a                                    ; $4756: $e0 $c0
	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	ld   b, $00                                      ; $475a: $06 $00
	inc  bc                                          ; $475c: $03
	nop                                              ; $475d: $00
	ld   bc, $8300                                   ; $475e: $01 $00 $83
	add  b                                           ; $4761: $80
	add  b                                           ; $4762: $80
	add  b                                           ; $4763: $80
	add  b                                           ; $4764: $80
	add  b                                           ; $4765: $80
	add  b                                           ; $4766: $80
	add  b                                           ; $4767: $80
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	add  b                                           ; $476c: $80
	nop                                              ; $476d: $00
	ldh  [rP1], a                                    ; $476e: $e0 $00
	add  a                                           ; $4770: $87
	ld   bc, $0107                                   ; $4771: $01 $07 $01
	rlca                                             ; $4774: $07
	ld   bc, $0107                                   ; $4775: $01 $07 $01
	rrca                                             ; $4778: $0f
	ld   bc, $000f                                   ; $4779: $01 $0f $00
	rrca                                             ; $477c: $0f
	nop                                              ; $477d: $00
	ld   a, $00                                      ; $477e: $3e $00
	ld   [hl-], a                                    ; $4780: $32
	cp   $ba                                         ; $4781: $fe $ba
	cp   $fe                                         ; $4783: $fe $fe
	ld   a, [hl]                                     ; $4785: $7e
	cp   $0e                                         ; $4786: $fe $0e
	cp   $02                                         ; $4788: $fe $02
	ldh  a, [c]                                      ; $478a: $f2
	ld   [bc], a                                     ; $478b: $02
	jp   nz, $0202                                   ; $478c: $c2 $02 $02

	ld   [bc], a                                     ; $478f: $02
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	ld   [bc], a                                     ; $4794: $02
	nop                                              ; $4795: $00
	ld   c, $08                                      ; $4796: $0e $08
	ld   c, $08                                      ; $4798: $0e $08
	add  b                                           ; $479a: $80
	add  b                                           ; $479b: $80
	dec  bc                                          ; $479c: $0b
	dec  bc                                          ; $479d: $0b
	inc  bc                                          ; $479e: $03
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	nop                                              ; $47a4: $00
	nop                                              ; $47a5: $00
	inc  h                                           ; $47a6: $24
	inc  h                                           ; $47a7: $24
	ld   bc, $0801                                   ; $47a8: $01 $01 $08
	ld   [$0080], sp                                 ; $47ab: $08 $80 $00
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	ccf                                              ; $47b0: $3f
	push af                                          ; $47b1: $f5
	ld   a, a                                        ; $47b2: $7f
	rst  $30                                         ; $47b3: $f7
	ld   a, [hl]                                     ; $47b4: $7e
	or   $7b                                         ; $47b5: $f6 $7b
	db   $eb                                         ; $47b7: $eb
	ld   e, e                                        ; $47b8: $5b
	db   $eb                                         ; $47b9: $eb
	ld   d, e                                        ; $47ba: $53
	ldh  [c], a                                      ; $47bb: $e2
	ld   d, e                                        ; $47bc: $53
	ldh  [c], a                                      ; $47bd: $e2
	ld   [hl], e                                     ; $47be: $73
	db   $e3                                         ; $47bf: $e3
	rst  $10                                         ; $47c0: $d7
	sbc  [hl]                                        ; $47c1: $9e
	di                                               ; $47c2: $f3
	rst  JumpTable                                         ; $47c3: $df
	ei                                               ; $47c4: $fb
	ld   l, a                                        ; $47c5: $6f
	call $c2c7                                       ; $47c6: $cd $c7 $c2
	jp   $c1c1                                       ; $47c9: $c3 $c1 $c1


	ret  nz                                          ; $47cc: $c0

	ld   b, b                                        ; $47cd: $40
	ret  nz                                          ; $47ce: $c0

	ret  nz                                          ; $47cf: $c0

	ccf                                              ; $47d0: $3f
	ld   l, $3f                                      ; $47d1: $2e $3f
	rra                                              ; $47d3: $1f
	scf                                              ; $47d4: $37
	inc  de                                          ; $47d5: $13
	adc  a                                           ; $47d6: $8f
	adc  a                                           ; $47d7: $8f
	adc  a                                           ; $47d8: $8f
	adc  a                                           ; $47d9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47da: $cf
	set  5, a                                        ; $47db: $cb $ef
	ld   l, c                                        ; $47dd: $69
	ld   l, a                                        ; $47de: $6f
	rrca                                             ; $47df: $0f
	and  $7e                                         ; $47e0: $e6 $7e
	ldh  a, [c]                                      ; $47e2: $f2
	ld   a, $f2                                      ; $47e3: $3e $f2
	cp   [hl]                                        ; $47e5: $be
	ld   a, [$7e5e]                                  ; $47e6: $fa $5e $7e
	ld   e, [hl]                                     ; $47e9: $5e
	ld   a, [hl]                                     ; $47ea: $7e
	ld   e, $3a                                      ; $47eb: $1e $3a
	ld   e, $1a                                      ; $47ed: $1e $1a
	ld   c, $3f                                      ; $47ef: $0e $3f
	db   $f4                                         ; $47f1: $f4
	ld   a, a                                        ; $47f2: $7f
	push af                                          ; $47f3: $f5
	ld   a, a                                        ; $47f4: $7f
	rst  $30                                         ; $47f5: $f7
	ld   a, a                                        ; $47f6: $7f
	and  $5b                                         ; $47f7: $e6 $5b
	db   $eb                                         ; $47f9: $eb
	ld   e, e                                        ; $47fa: $5b
	ld   [$e253], a                                  ; $47fb: $ea $53 $e2
	ld   [hl], e                                     ; $47fe: $73
	db   $e3                                         ; $47ff: $e3
	rst  $30                                         ; $4800: $f7
	ld   a, $f3                                      ; $4801: $3e $f3
	rst  JumpTable                                         ; $4803: $df
	ei                                               ; $4804: $fb
	rst  $28                                         ; $4805: $ef
	ld   l, l                                        ; $4806: $6d
	ld   h, a                                        ; $4807: $67
	jp   nz, $c1c3                                   ; $4808: $c2 $c3 $c1

	pop  bc                                          ; $480b: $c1
	ret  nz                                          ; $480c: $c0

	ld   b, b                                        ; $480d: $40
	ret  nz                                          ; $480e: $c0

	ret  nz                                          ; $480f: $c0

	ccf                                              ; $4810: $3f
	ld   [hl+], a                                    ; $4811: $22
	ccf                                              ; $4812: $3f
	ld   c, $3f                                      ; $4813: $0e $3f
	rra                                              ; $4815: $1f
	sbc  e                                           ; $4816: $9b
	sbc  c                                           ; $4817: $99
	adc  a                                           ; $4818: $8f
	adc  a                                           ; $4819: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $481a: $cf
	set  5, a                                        ; $481b: $cb $ef
	ld   l, c                                        ; $481d: $69
	ld   l, a                                        ; $481e: $6f
	rrca                                             ; $481f: $0f
	and  $7e                                         ; $4820: $e6 $7e
	ldh  a, [c]                                      ; $4822: $f2
	ld   a, $f2                                      ; $4823: $3e $f2
	ld   a, $fa                                      ; $4825: $3e $fa
	sbc  [hl]                                        ; $4827: $9e
	ld   a, [hl]                                     ; $4828: $7e
	ld   e, [hl]                                     ; $4829: $5e
	ld   a, [hl]                                     ; $482a: $7e
	ld   e, [hl]                                     ; $482b: $5e
	ld   a, [hl-]                                    ; $482c: $3a
	ld   e, $1a                                      ; $482d: $1e $1a
	ld   c, $00                                      ; $482f: $0e $00
	nop                                              ; $4831: $00
	nop                                              ; $4832: $00
	nop                                              ; $4833: $00
	ld   [bc], a                                     ; $4834: $02
	nop                                              ; $4835: $00
	ld   c, $08                                      ; $4836: $0e $08
	ld   c, $08                                      ; $4838: $0e $08
	add  b                                           ; $483a: $80
	add  b                                           ; $483b: $80
	rrca                                             ; $483c: $0f
	add  hl, bc                                      ; $483d: $09
	inc  bc                                          ; $483e: $03
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	inc  h                                           ; $4846: $24
	inc  h                                           ; $4847: $24
	ld   bc, $0801                                   ; $4848: $01 $01 $08
	ld   [$8080], sp                                 ; $484b: $08 $80 $80
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	dec  bc                                          ; $4850: $0b
	rst  $38                                         ; $4851: $ff
	dec  bc                                          ; $4852: $0b
	sbc  $0b                                         ; $4853: $de $0b
	ld   e, [hl]                                     ; $4855: $5e
	ld   e, $3c                                      ; $4856: $1e $3c
	ld   e, $bc                                      ; $4858: $1e $bc
	ld   a, $fc                                      ; $485a: $3e $fc
	ld   a, $fc                                      ; $485c: $3e $fc
	ld   a, a                                        ; $485e: $7f
	db   $fd                                         ; $485f: $fd
	jp   $475f                                       ; $4860: $c3 $5f $47


	ld   c, a                                        ; $4863: $4f
	ld   b, a                                        ; $4864: $47
	ld   c, a                                        ; $4865: $4f
	ld   b, a                                        ; $4866: $47
	ld   h, [hl]                                     ; $4867: $66
	ld   b, a                                        ; $4868: $47
	ld   l, [hl]                                     ; $4869: $6e
	ld   h, a                                        ; $486a: $67
	ld   [hl], $67                                   ; $486b: $36 $67
	ld   a, [hl]                                     ; $486d: $7e
	rst  $20                                         ; $486e: $e7
	cp   [hl]                                        ; $486f: $be
	ld   l, b                                        ; $4870: $68
	rst  $38                                         ; $4871: $ff
	ld   l, b                                        ; $4872: $68
	db   $fd                                         ; $4873: $fd
	ld   l, h                                        ; $4874: $6c
	cp   $b6                                         ; $4875: $fe $b6
	rst  $38                                         ; $4877: $ff
	or   [hl]                                        ; $4878: $b6
	rst  $38                                         ; $4879: $ff
	rst  $38                                         ; $487a: $ff
	ld   l, l                                        ; $487b: $6d
	ld   l, a                                        ; $487c: $6f
	ld   l, l                                        ; $487d: $6d
	ld   a, a                                        ; $487e: $7f
	ld   a, h                                        ; $487f: $7c
	ccf                                              ; $4880: $3f
	cp   $7f                                         ; $4881: $fe $7f
	di                                               ; $4883: $f3
	ld   a, a                                        ; $4884: $7f
	rst  $30                                         ; $4885: $f7
	ld   a, [hl]                                     ; $4886: $7e
	xor  $5b                                         ; $4887: $ee $5b
	db   $eb                                         ; $4889: $eb
	ld   d, e                                        ; $488a: $53
	ldh  [c], a                                      ; $488b: $e2
	ld   d, e                                        ; $488c: $53
	ldh  [c], a                                      ; $488d: $e2
	ld   [hl], a                                     ; $488e: $77
	db   $e3                                         ; $488f: $e3
	or   a                                           ; $4890: $b7
	ld   a, $f3                                      ; $4891: $3e $f3
	sbc  a                                           ; $4893: $9f
	ei                                               ; $4894: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4895: $cf
	db   $ed                                         ; $4896: $ed
	rst  $20                                         ; $4897: $e7
	jp   nz, $c1c3                                   ; $4898: $c2 $c3 $c1

	pop  bc                                          ; $489b: $c1
	ret  nz                                          ; $489c: $c0

jr_092_489d:
	ld   b, b                                        ; $489d: $40
	ret  nz                                          ; $489e: $c0

	ret  nz                                          ; $489f: $c0

	cpl                                              ; $48a0: $2f
	inc  hl                                          ; $48a1: $23
	rra                                              ; $48a2: $1f
	rrca                                             ; $48a3: $0f
	rra                                              ; $48a4: $1f
	rra                                              ; $48a5: $1f
	or   a                                           ; $48a6: $b7
	sub  e                                           ; $48a7: $93
	adc  a                                           ; $48a8: $8f
	adc  a                                           ; $48a9: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48aa: $cf
	set  5, a                                        ; $48ab: $cb $ef
	ld   l, c                                        ; $48ad: $69
	ld   l, a                                        ; $48ae: $6f
	rrca                                             ; $48af: $0f
	and  $fe                                         ; $48b0: $e6 $fe
	ldh  a, [c]                                      ; $48b2: $f2
	ld   a, $f2                                      ; $48b3: $3e $f2
	cp   [hl]                                        ; $48b5: $be
	ld   a, [$7ede]                                  ; $48b6: $fa $de $7e
	ld   e, [hl]                                     ; $48b9: $5e
	ld   a, [hl]                                     ; $48ba: $7e
	ld   e, $3a                                      ; $48bb: $1e $3a
	ld   e, $9a                                      ; $48bd: $1e $9a
	ld   c, $00                                      ; $48bf: $0e $00
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00
	ld   [bc], a                                     ; $48c4: $02
	nop                                              ; $48c5: $00
	ld   c, $08                                      ; $48c6: $0e $08
	ld   c, $08                                      ; $48c8: $0e $08
	add  b                                           ; $48ca: $80
	add  b                                           ; $48cb: $80
	dec  bc                                          ; $48cc: $0b
	add  hl, bc                                      ; $48cd: $09
	nop                                              ; $48ce: $00
	nop                                              ; $48cf: $00
	nop                                              ; $48d0: $00
	nop                                              ; $48d1: $00
	nop                                              ; $48d2: $00
	nop                                              ; $48d3: $00
	nop                                              ; $48d4: $00
	nop                                              ; $48d5: $00
	inc  h                                           ; $48d6: $24
	inc  h                                           ; $48d7: $24
	ld   bc, $0801                                   ; $48d8: $01 $01 $08
	ld   [rRAMG], sp                                 ; $48db: $08 $00 $00
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	ld   l, b                                        ; $48e0: $68
	rst  $38                                         ; $48e1: $ff
	ld   l, b                                        ; $48e2: $68
	db   $fd                                         ; $48e3: $fd
	ld   l, h                                        ; $48e4: $6c
	cp   $b6                                         ; $48e5: $fe $b6
	rst  $38                                         ; $48e7: $ff
	or   [hl]                                        ; $48e8: $b6
	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	ld   l, l                                        ; $48eb: $6d
	ld   a, a                                        ; $48ec: $7f
	ld   a, a                                        ; $48ed: $7f
	ld   a, a                                        ; $48ee: $7f
	ld   h, d                                        ; $48ef: $62
	ccf                                              ; $48f0: $3f
	rst  $30                                         ; $48f1: $f7
	ld   a, [hl]                                     ; $48f2: $7e
	or   $7c                                         ; $48f3: $f6 $7c
	db   $fc                                         ; $48f5: $fc
	ld   a, b                                        ; $48f6: $78
	add  sp, $58                                     ; $48f7: $e8 $58
	add  sp, $51                                     ; $48f9: $e8 $51
	pop  hl                                          ; $48fb: $e1
	ld   d, c                                        ; $48fc: $51
	ldh  [rSVBK], a                                  ; $48fd: $e0 $70
	ldh  [$f7], a                                    ; $48ff: $e0 $f7
	sbc  $73                                         ; $4901: $de $73
	ld   a, a                                        ; $4903: $7f
	dec  sp                                          ; $4904: $3b
	cpl                                              ; $4905: $2f
	adc  l                                           ; $4906: $8d
	add  a                                           ; $4907: $87
	jp   nz, $c1c3                                   ; $4908: $c2 $c3 $c1

	pop  bc                                          ; $490b: $c1
	ret  nz                                          ; $490c: $c0

	add  b                                           ; $490d: $80
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	cp   a                                           ; $4910: $bf
	cp   a                                           ; $4911: $bf
	ld   sp, $2031                                   ; $4912: $31 $31 $20
	jr   nz, jr_092_489d                             ; $4915: $20 $86

	add  h                                           ; $4917: $84
	add  [hl]                                        ; $4918: $86
	add  [hl]                                        ; $4919: $86
	adc  $ce                                         ; $491a: $ce $ce
	xor  $64                                         ; $491c: $ee $64
	ld   h, b                                        ; $491e: $60
	nop                                              ; $491f: $00
	and  $7e                                         ; $4920: $e6 $7e
	ldh  a, [c]                                      ; $4922: $f2
	cp   [hl]                                        ; $4923: $be
	ldh  a, [c]                                      ; $4924: $f2
	cp   $fa                                         ; $4925: $fe $fa
	ld   e, [hl]                                     ; $4927: $5e
	ld   a, [hl]                                     ; $4928: $7e
	ld   e, [hl]                                     ; $4929: $5e
	ld   a, [hl]                                     ; $492a: $7e
	ld   e, $3a                                      ; $492b: $1e $3a
	ld   e, $1a                                      ; $492d: $1e $1a
	ld   c, $f3                                      ; $492f: $0e $f3
	db   $e3                                         ; $4931: $e3
	ret  nc                                          ; $4932: $d0

	ldh  a, [$d0]                                    ; $4933: $f0 $d0
	ldh  a, [$d9]                                    ; $4935: $f0 $d9
	pop  af                                          ; $4937: $f1
	db   $fc                                         ; $4938: $fc
	db   $f4                                         ; $4939: $f4
	ld   a, b                                        ; $493a: $78
	ld   hl, sp+$58                                  ; $493b: $f8 $58
	ld   hl, sp-$74                                  ; $493d: $f8 $8c
	db   $fc                                         ; $493f: $fc
	ret  nz                                          ; $4940: $c0

	ret  nz                                          ; $4941: $c0

	nop                                              ; $4942: $00
	nop                                              ; $4943: $00
	ld   [bc], a                                     ; $4944: $02
	nop                                              ; $4945: $00
	ld   c, $08                                      ; $4946: $0e $08
	ld   c, $08                                      ; $4948: $0e $08
	add  b                                           ; $494a: $80
	add  b                                           ; $494b: $80
	rrca                                             ; $494c: $0f
	add  hl, bc                                      ; $494d: $09
	ld   c, $08                                      ; $494e: $0e $08
	rrca                                             ; $4950: $0f
	rrca                                             ; $4951: $0f
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	nop                                              ; $4954: $00
	nop                                              ; $4955: $00
	inc  h                                           ; $4956: $24
	inc  h                                           ; $4957: $24
	ld   bc, $0801                                   ; $4958: $01 $01 $08
	ld   [$8000], sp                                 ; $495b: $08 $00 $80
	nop                                              ; $495e: $00
	ld   b, b                                        ; $495f: $40
	ccf                                              ; $4960: $3f
	cp   $7f                                         ; $4961: $fe $7f
	di                                               ; $4963: $f3
	ld   a, a                                        ; $4964: $7f
	rst  $30                                         ; $4965: $f7
	ld   a, [hl]                                     ; $4966: $7e
	xor  $5f                                         ; $4967: $ee $5f
	db   $eb                                         ; $4969: $eb
	ld   e, e                                        ; $496a: $5b
	ldh  [c], a                                      ; $496b: $e2
	ld   d, e                                        ; $496c: $53
	ldh  [c], a                                      ; $496d: $e2
	ld   [hl], a                                     ; $496e: $77
	db   $e3                                         ; $496f: $e3
	or   a                                           ; $4970: $b7
	ld   e, $d3                                      ; $4971: $1e $d3
	sbc  a                                           ; $4973: $9f
	ei                                               ; $4974: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4975: $cf
	db   $ed                                         ; $4976: $ed
	rst  $20                                         ; $4977: $e7
	jp   nz, $c1c3                                   ; $4978: $c2 $c3 $c1

	pop  bc                                          ; $497b: $c1
	ret  nz                                          ; $497c: $c0

	ld   b, b                                        ; $497d: $40
	ret  nz                                          ; $497e: $c0

	ret  nz                                          ; $497f: $c0

	cpl                                              ; $4980: $2f
	inc  hl                                          ; $4981: $23
	rra                                              ; $4982: $1f
	rrca                                             ; $4983: $0f
	ccf                                              ; $4984: $3f
	rra                                              ; $4985: $1f
	sub  a                                           ; $4986: $97
	sub  e                                           ; $4987: $93
	adc  a                                           ; $4988: $8f
	adc  a                                           ; $4989: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $498a: $cf
	set  5, a                                        ; $498b: $cb $ef
	ld   l, c                                        ; $498d: $69
	ld   l, a                                        ; $498e: $6f
	rrca                                             ; $498f: $0f
	and  $fe                                         ; $4990: $e6 $fe
	ldh  a, [c]                                      ; $4992: $f2
	ld   a, $f2                                      ; $4993: $3e $f2
	cp   [hl]                                        ; $4995: $be
	ld   a, [$fede]                                  ; $4996: $fa $de $fe
	ld   e, [hl]                                     ; $4999: $5e
	ld   a, [hl]                                     ; $499a: $7e
	ld   e, $3a                                      ; $499b: $1e $3a
	ld   e, $9a                                      ; $499d: $1e $9a
	ld   c, $f0                                      ; $499f: $0e $f0
	ldh  [$d5], a                                    ; $49a1: $e0 $d5
	ldh  a, [$da]                                    ; $49a3: $f0 $da
	ldh  a, [$d9]                                    ; $49a5: $f0 $d9
	pop  af                                          ; $49a7: $f1
	db   $fc                                         ; $49a8: $fc
	db   $f4                                         ; $49a9: $f4
	ld   a, b                                        ; $49aa: $78
	ld   hl, sp+$58                                  ; $49ab: $f8 $58
	ld   hl, sp-$74                                  ; $49ad: $f8 $8c
	db   $fc                                         ; $49af: $fc
	nop                                              ; $49b0: $00
	nop                                              ; $49b1: $00
	ld   b, b                                        ; $49b2: $40
	nop                                              ; $49b3: $00
	add  d                                           ; $49b4: $82
	nop                                              ; $49b5: $00
	ld   c, $08                                      ; $49b6: $0e $08
	ld   c, $08                                      ; $49b8: $0e $08
	add  b                                           ; $49ba: $80
	add  b                                           ; $49bb: $80
	rrca                                             ; $49bc: $0f
	add  hl, bc                                      ; $49bd: $09
	inc  bc                                          ; $49be: $03
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	ld   a, [bc]                                     ; $49c2: $0a
	nop                                              ; $49c3: $00
	dec  d                                           ; $49c4: $15
	nop                                              ; $49c5: $00
	inc  h                                           ; $49c6: $24
	inc  h                                           ; $49c7: $24
	ld   bc, $0801                                   ; $49c8: $01 $01 $08
	ld   [$8080], sp                                 ; $49cb: $08 $80 $80
	nop                                              ; $49ce: $00
	nop                                              ; $49cf: $00
	ld   a, [hl-]                                    ; $49d0: $3a
	ld   c, $ba                                      ; $49d1: $0e $ba
	ld   c, $7a                                      ; $49d3: $0e $7a
	ld   c, $fe                                      ; $49d5: $0e $fe
	ld   e, $7e                                      ; $49d7: $1e $7e
	ld   e, $7e                                      ; $49d9: $1e $7e
	ld   a, $fe                                      ; $49db: $3e $fe
	ld   a, $ce                                      ; $49dd: $3e $ce
	ld   c, [hl]                                     ; $49df: $4e
	dec  bc                                          ; $49e0: $0b
	rst  $38                                         ; $49e1: $ff
	dec  bc                                          ; $49e2: $0b
	sbc  $0b                                         ; $49e3: $de $0b
	ld   e, [hl]                                     ; $49e5: $5e
	ld   e, $3c                                      ; $49e6: $1e $3c
	ld   e, $bc                                      ; $49e8: $1e $bc
	ld   a, $fc                                      ; $49ea: $3e $fc
	ld   a, $fc                                      ; $49ec: $3e $fc
	ccf                                              ; $49ee: $3f
	cp   $c3                                         ; $49ef: $fe $c3
	ld   e, a                                        ; $49f1: $5f
	ld   b, a                                        ; $49f2: $47
	ld   c, a                                        ; $49f3: $4f
	ld   b, a                                        ; $49f4: $47
	ld   c, a                                        ; $49f5: $4f
	ld   b, a                                        ; $49f6: $47
	ld   h, [hl]                                     ; $49f7: $66
	ld   b, a                                        ; $49f8: $47
	ld   l, [hl]                                     ; $49f9: $6e
	ld   h, a                                        ; $49fa: $67
	ld   [hl], $67                                   ; $49fb: $36 $67
	ld   a, $67                                      ; $49fd: $3e $67
	ld   a, $68                                      ; $49ff: $3e $68
	rst  $38                                         ; $4a01: $ff
	ld   l, b                                        ; $4a02: $68
	db   $fd                                         ; $4a03: $fd
	ld   l, h                                        ; $4a04: $6c
	cp   $b6                                         ; $4a05: $fe $b6
	rst  $38                                         ; $4a07: $ff
	or   [hl]                                        ; $4a08: $b6
	rst  $38                                         ; $4a09: $ff
	rst  $38                                         ; $4a0a: $ff
	ld   l, l                                        ; $4a0b: $6d
	ld   a, a                                        ; $4a0c: $7f
	ld   l, l                                        ; $4a0d: $6d
	ld   l, a                                        ; $4a0e: $6f
	ld   l, a                                        ; $4a0f: $6f
	ccf                                              ; $4a10: $3f
	push af                                          ; $4a11: $f5
	ld   a, a                                        ; $4a12: $7f
	rst  $30                                         ; $4a13: $f7
	ld   a, [hl]                                     ; $4a14: $7e
	or   $7b                                         ; $4a15: $f6 $7b
	db   $eb                                         ; $4a17: $eb
	ld   e, e                                        ; $4a18: $5b
	db   $eb                                         ; $4a19: $eb
	ld   d, e                                        ; $4a1a: $53
	ldh  [c], a                                      ; $4a1b: $e2
	ld   d, e                                        ; $4a1c: $53
	ldh  [c], a                                      ; $4a1d: $e2
	ld   [hl], e                                     ; $4a1e: $73
	db   $e3                                         ; $4a1f: $e3
	rst  $30                                         ; $4a20: $f7
	cp   [hl]                                        ; $4a21: $be
	di                                               ; $4a22: $f3
	rst  $38                                         ; $4a23: $ff
	ei                                               ; $4a24: $fb
	ld   l, a                                        ; $4a25: $6f
	call $c2c7                                       ; $4a26: $cd $c7 $c2
	jp   $c1c1                                       ; $4a29: $c3 $c1 $c1


	ret  nz                                          ; $4a2c: $c0

	ld   b, b                                        ; $4a2d: $40
	ret  nz                                          ; $4a2e: $c0

	ret  nz                                          ; $4a2f: $c0

	ccf                                              ; $4a30: $3f
	inc  a                                           ; $4a31: $3c
	ld   a, a                                        ; $4a32: $7f
	ld   e, a                                        ; $4a33: $5f
	scf                                              ; $4a34: $37
	inc  sp                                          ; $4a35: $33
	adc  a                                           ; $4a36: $8f
	adc  a                                           ; $4a37: $8f
	adc  a                                           ; $4a38: $8f
	adc  a                                           ; $4a39: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a3a: $cf
	set  5, a                                        ; $4a3b: $cb $ef
	ld   l, c                                        ; $4a3d: $69
	ld   l, a                                        ; $4a3e: $6f
	rrca                                             ; $4a3f: $0f
	and  $7e                                         ; $4a40: $e6 $7e
	ldh  a, [c]                                      ; $4a42: $f2
	ld   a, $f2                                      ; $4a43: $3e $f2
	cp   [hl]                                        ; $4a45: $be
	ld   a, [$7e5e]                                  ; $4a46: $fa $5e $7e
	ld   e, [hl]                                     ; $4a49: $5e
	ld   a, [hl]                                     ; $4a4a: $7e
	ld   e, $3a                                      ; $4a4b: $1e $3a
	ld   e, $1a                                      ; $4a4d: $1e $1a
	ld   c, $00                                      ; $4a4f: $0e $00
	nop                                              ; $4a51: $00
	nop                                              ; $4a52: $00
	nop                                              ; $4a53: $00
	ld   [bc], a                                     ; $4a54: $02
	nop                                              ; $4a55: $00
	ld   c, $08                                      ; $4a56: $0e $08
	ld   c, $08                                      ; $4a58: $0e $08
	sbc  b                                           ; $4a5a: $98
	add  b                                           ; $4a5b: $80
	dec  de                                          ; $4a5c: $1b
	add  hl, bc                                      ; $4a5d: $09
	inc  bc                                          ; $4a5e: $03
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	nop                                              ; $4a65: $00
	inc  h                                           ; $4a66: $24
	inc  h                                           ; $4a67: $24
	ld   bc, $0801                                   ; $4a68: $01 $01 $08
	ld   [$c0c0], sp                                 ; $4a6b: $08 $c0 $c0
	add  b                                           ; $4a6e: $80
	nop                                              ; $4a6f: $00
	dec  bc                                          ; $4a70: $0b
	rst  $38                                         ; $4a71: $ff
	dec  bc                                          ; $4a72: $0b
	sbc  $0b                                         ; $4a73: $de $0b
	ld   e, [hl]                                     ; $4a75: $5e
	ld   e, $3c                                      ; $4a76: $1e $3c
	ld   e, $bc                                      ; $4a78: $1e $bc
	ld   a, $fc                                      ; $4a7a: $3e $fc
	ld   a, $fc                                      ; $4a7c: $3e $fc
	ld   a, $fc                                      ; $4a7e: $3e $fc
	jp   $475f                                       ; $4a80: $c3 $5f $47


	ld   c, a                                        ; $4a83: $4f
	ld   b, a                                        ; $4a84: $47
	ld   c, a                                        ; $4a85: $4f
	ld   b, a                                        ; $4a86: $47
	ld   h, [hl]                                     ; $4a87: $66
	ld   b, a                                        ; $4a88: $47
	ld   l, [hl]                                     ; $4a89: $6e
	ld   h, a                                        ; $4a8a: $67
	ld   [hl], $67                                   ; $4a8b: $36 $67
	ld   a, $e7                                      ; $4a8d: $3e $e7
	ld   a, [hl]                                     ; $4a8f: $7e
	ld   l, b                                        ; $4a90: $68
	rst  $38                                         ; $4a91: $ff
	ld   l, b                                        ; $4a92: $68
	db   $fd                                         ; $4a93: $fd
	ld   l, h                                        ; $4a94: $6c
	cp   $b6                                         ; $4a95: $fe $b6
	rst  $38                                         ; $4a97: $ff
	or   [hl]                                        ; $4a98: $b6
	rst  $38                                         ; $4a99: $ff
	rst  $38                                         ; $4a9a: $ff
	ld   l, l                                        ; $4a9b: $6d
	ld   a, a                                        ; $4a9c: $7f
	ld   l, l                                        ; $4a9d: $6d
	rst  $38                                         ; $4a9e: $ff
	db   $fc                                         ; $4a9f: $fc
	ccf                                              ; $4aa0: $3f
	rst  $30                                         ; $4aa1: $f7
	ld   a, a                                        ; $4aa2: $7f
	ld   a, [$f37f]                                  ; $4aa3: $fa $7f $f3
	ld   a, a                                        ; $4aa6: $7f
	rst  $20                                         ; $4aa7: $e7
	ld   e, c                                        ; $4aa8: $59
	jp   hl                                          ; $4aa9: $e9


	ld   d, e                                        ; $4aaa: $53
	db   $e3                                         ; $4aab: $e3
	ld   d, e                                        ; $4aac: $53
	ldh  [$73], a                                    ; $4aad: $e0 $73
	db   $e3                                         ; $4aaf: $e3
	rst  $30                                         ; $4ab0: $f7
	cp   [hl]                                        ; $4ab1: $be
	di                                               ; $4ab2: $f3
	ccf                                              ; $4ab3: $3f
	ei                                               ; $4ab4: $fb
	adc  a                                           ; $4ab5: $8f
	db   $fd                                         ; $4ab6: $fd
	rst  $20                                         ; $4ab7: $e7
	add  d                                           ; $4ab8: $82
	add  e                                           ; $4ab9: $83
	add  c                                           ; $4aba: $81
	add  c                                           ; $4abb: $81
	add  b                                           ; $4abc: $80
	add  b                                           ; $4abd: $80
	ret  nz                                          ; $4abe: $c0

	add  b                                           ; $4abf: $80
	ccf                                              ; $4ac0: $3f
	cpl                                              ; $4ac1: $2f
	ccf                                              ; $4ac2: $3f
	inc  h                                           ; $4ac3: $24
	ccf                                              ; $4ac4: $3f
	rra                                              ; $4ac5: $1f
	cp   a                                           ; $4ac6: $bf
	cp   a                                           ; $4ac7: $bf
	adc  h                                           ; $4ac8: $8c
	adc  h                                           ; $4ac9: $8c
	call c, $fcdc                                    ; $4aca: $dc $dc $fc
	ld   h, h                                        ; $4acd: $64
	ld   a, a                                        ; $4ace: $7f
	ld   e, $e6                                      ; $4acf: $1e $e6
	cp   $f2                                         ; $4ad1: $fe $f2
	ld   a, [hl]                                     ; $4ad3: $7e
	ldh  a, [c]                                      ; $4ad4: $f2
	ld   a, $fa                                      ; $4ad5: $3e $fa
	sbc  [hl]                                        ; $4ad7: $9e
	ld   a, [hl]                                     ; $4ad8: $7e
	ld   e, [hl]                                     ; $4ad9: $5e
	ld   a, $1e                                      ; $4ada: $3e $1e
	ld   a, [hl-]                                    ; $4adc: $3a
	ld   e, $1a                                      ; $4add: $1e $1a
	ld   c, $00                                      ; $4adf: $0e $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	ld   [bc], a                                     ; $4ae4: $02
	nop                                              ; $4ae5: $00
	ld   c, $08                                      ; $4ae6: $0e $08
	ld   c, $08                                      ; $4ae8: $0e $08
	add  b                                           ; $4aea: $80
	add  b                                           ; $4aeb: $80
	rrca                                             ; $4aec: $0f
	ld   b, $03                                      ; $4aed: $06 $03
	nop                                              ; $4aef: $00
	ld   a, [hl-]                                    ; $4af0: $3a
	ld   c, $3a                                      ; $4af1: $0e $3a
	ld   c, $7a                                      ; $4af3: $0e $7a
	ld   c, $7e                                      ; $4af5: $0e $7e
	ld   e, $7e                                      ; $4af7: $1e $7e
	ld   e, $7a                                      ; $4af9: $1e $7a
	ld   a, $fa                                      ; $4afb: $3e $fa
	ld   a, $fa                                      ; $4afd: $3e $fa
	ld   a, [hl]                                     ; $4aff: $7e
	ccf                                              ; $4b00: $3f
	push af                                          ; $4b01: $f5
	ld   a, a                                        ; $4b02: $7f
	rst  $30                                         ; $4b03: $f7
	ld   a, [hl]                                     ; $4b04: $7e
	or   $7b                                         ; $4b05: $f6 $7b
	db   $eb                                         ; $4b07: $eb
	ld   e, e                                        ; $4b08: $5b
	db   $eb                                         ; $4b09: $eb
	ld   d, e                                        ; $4b0a: $53
	ldh  [c], a                                      ; $4b0b: $e2
	ld   d, e                                        ; $4b0c: $53
	ldh  [c], a                                      ; $4b0d: $e2
	ld   [hl], e                                     ; $4b0e: $73
	db   $e3                                         ; $4b0f: $e3
	rst  $30                                         ; $4b10: $f7
	cp   [hl]                                        ; $4b11: $be
	di                                               ; $4b12: $f3
	rst  $38                                         ; $4b13: $ff
	ei                                               ; $4b14: $fb
	ld   l, a                                        ; $4b15: $6f
	call $c2c7                                       ; $4b16: $cd $c7 $c2
	jp   $c1c1                                       ; $4b19: $c3 $c1 $c1


	ret  nz                                          ; $4b1c: $c0

	ld   b, b                                        ; $4b1d: $40
	ret  nz                                          ; $4b1e: $c0

	ret  nz                                          ; $4b1f: $c0

	ccf                                              ; $4b20: $3f
	inc  a                                           ; $4b21: $3c
	rst  $38                                         ; $4b22: $ff
	ld   a, a                                        ; $4b23: $7f
	ld   [hl], a                                     ; $4b24: $77
	inc  sp                                          ; $4b25: $33
	adc  a                                           ; $4b26: $8f
	adc  a                                           ; $4b27: $8f
	adc  a                                           ; $4b28: $8f
	adc  a                                           ; $4b29: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b2a: $cf
	set  5, a                                        ; $4b2b: $cb $ef
	ld   l, c                                        ; $4b2d: $69
	ld   l, a                                        ; $4b2e: $6f
	rrca                                             ; $4b2f: $0f
	nop                                              ; $4b30: $00
	nop                                              ; $4b31: $00
	nop                                              ; $4b32: $00
	nop                                              ; $4b33: $00
	ld   [bc], a                                     ; $4b34: $02
	nop                                              ; $4b35: $00
	ld   c, $08                                      ; $4b36: $0e $08
	ld   c, $08                                      ; $4b38: $0e $08
	add  b                                           ; $4b3a: $80
	add  b                                           ; $4b3b: $80
	rrca                                             ; $4b3c: $0f
	dec  bc                                          ; $4b3d: $0b
	inc  bc                                          ; $4b3e: $03
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	nop                                              ; $4b42: $00
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	inc  h                                           ; $4b46: $24
	inc  h                                           ; $4b47: $24
	ld   bc, $0801                                   ; $4b48: $01 $01 $08
	ld   [$0080], sp                                 ; $4b4b: $08 $80 $00
	add  b                                           ; $4b4e: $80
	nop                                              ; $4b4f: $00
	dec  bc                                          ; $4b50: $0b
	rst  $38                                         ; $4b51: $ff
	dec  bc                                          ; $4b52: $0b
	sbc  $0b                                         ; $4b53: $de $0b
	ld   e, [hl]                                     ; $4b55: $5e
	ld   e, $3c                                      ; $4b56: $1e $3c
	ld   e, $bc                                      ; $4b58: $1e $bc
	ld   a, $fc                                      ; $4b5a: $3e $fc
	ccf                                              ; $4b5c: $3f
	rst  $38                                         ; $4b5d: $ff
	ccf                                              ; $4b5e: $3f
	db   $fc                                         ; $4b5f: $fc
	ret  nc                                          ; $4b60: $d0

	ret  nc                                          ; $4b61: $d0

	jr   nz, jr_092_4b84                             ; $4b62: $20 $20

	jp   nz, $0ec0                                   ; $4b64: $c2 $c0 $0e

	ld   [$080e], sp                                 ; $4b67: $08 $0e $08
	add  b                                           ; $4b6a: $80
	add  b                                           ; $4b6b: $80
	rrca                                             ; $4b6c: $0f
	add  hl, bc                                      ; $4b6d: $09
	ld   c, $08                                      ; $4b6e: $0e $08
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b70: $cf
	adc  a                                           ; $4b71: $8f
	ld   h, b                                        ; $4b72: $60
	ld   b, b                                        ; $4b73: $40
	ccf                                              ; $4b74: $3f
	ccf                                              ; $4b75: $3f
	inc  h                                           ; $4b76: $24
	inc  h                                           ; $4b77: $24
	ld   bc, $0801                                   ; $4b78: $01 $01 $08
	ld   [$8000], sp                                 ; $4b7b: $08 $00 $80
	nop                                              ; $4b7e: $00
	ld   b, b                                        ; $4b7f: $40
	inc  b                                           ; $4b80: $04
	ld   [$8482], sp                                 ; $4b81: $08 $82 $84

jr_092_4b84:
	rst  ToBoot                                         ; $4b84: $c7
	jp   $f0f0                                       ; $4b85: $c3 $f0 $f0


	cp   h                                           ; $4b88: $bc
	cp   h                                           ; $4b89: $bc
	sbc  e                                           ; $4b8a: $9b
	sub  e                                           ; $4b8b: $93
	add  sp, -$38                                    ; $4b8c: $e8 $c8
	jp   hl                                          ; $4b8e: $e9


	xor  c                                           ; $4b8f: $a9
	ld   b, b                                        ; $4b90: $40
	ld   b, b                                        ; $4b91: $40
	ld   b, c                                        ; $4b92: $41
	add  c                                           ; $4b93: $81
	add  [hl]                                        ; $4b94: $86
	ld   b, $19                                      ; $4b95: $06 $19
	add  hl, de                                      ; $4b97: $19
	ld   a, [hl]                                     ; $4b98: $7e
	ld   a, [hl]                                     ; $4b99: $7e
	ldh  [$e1], a                                    ; $4b9a: $e0 $e1
	adc  a                                           ; $4b9c: $8f
	sbc  a                                           ; $4b9d: $9f
	ccf                                              ; $4b9e: $3f
	ld   [hl], b                                     ; $4b9f: $70
	inc  b                                           ; $4ba0: $04
	ld   [$8480], sp                                 ; $4ba1: $08 $80 $84
	rst  $20                                         ; $4ba4: $e7
	jp   $f0f8                                       ; $4ba5: $c3 $f8 $f0


	cp   a                                           ; $4ba8: $bf
	xor  h                                           ; $4ba9: $ac
	sbc  a                                           ; $4baa: $9f
	sbc  a                                           ; $4bab: $9f
	ldh  [$e0], a                                    ; $4bac: $e0 $e0
	sbc  b                                           ; $4bae: $98
	sbc  b                                           ; $4baf: $98
	ld   b, c                                        ; $4bb0: $41
	ld   b, b                                        ; $4bb1: $40
	jp   $8f01                                       ; $4bb2: $c3 $01 $8f


	ld   b, $3f                                      ; $4bb5: $06 $3f
	add  hl, de                                      ; $4bb7: $19
	cp   $66                                         ; $4bb8: $fe $66
	ld   hl, sp-$08                                  ; $4bba: $f8 $f8
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	inc  de                                          ; $4bbe: $13
	inc  de                                          ; $4bbf: $13
	inc  b                                           ; $4bc0: $04
	ld   [$8480], sp                                 ; $4bc1: $08 $80 $84
	rst  $20                                         ; $4bc4: $e7
	jp   $b0f8                                       ; $4bc5: $c3 $f8 $b0


	rst  $38                                         ; $4bc8: $ff
	adc  h                                           ; $4bc9: $8c
	cp   a                                           ; $4bca: $bf
	add  e                                           ; $4bcb: $83
	sbc  a                                           ; $4bcc: $9f
	add  b                                           ; $4bcd: $80
	adc  a                                           ; $4bce: $8f
	add  b                                           ; $4bcf: $80
	ld   b, c                                        ; $4bd0: $41
	ld   b, b                                        ; $4bd1: $40
	jp   $8f01                                       ; $4bd2: $c3 $01 $8f


	rlca                                             ; $4bd5: $07
	ccf                                              ; $4bd6: $3f
	add  hl, de                                      ; $4bd7: $19
	rst  $38                                         ; $4bd8: $ff
	ld   h, c                                        ; $4bd9: $61
	rst  $38                                         ; $4bda: $ff
	add  c                                           ; $4bdb: $81
	rst  $38                                         ; $4bdc: $ff
	ld   bc, $01e7                                   ; $4bdd: $01 $e7 $01
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
	db   $10                                         ; $4c00: $10
	rst  $30                                         ; $4c01: $f7
	ld   hl, $42e7                                   ; $4c02: $21 $e7 $42
	jp   z, $9787                                    ; $4c05: $ca $87 $97

	inc  c                                           ; $4c08: $0c
	adc  a                                           ; $4c09: $8f
	ld   de, $231f                                   ; $4c0a: $11 $1f $23
	xor  a                                           ; $4c0d: $af
	ld   b, a                                        ; $4c0e: $47
	ld   e, a                                        ; $4c0f: $5f
	adc  a                                           ; $4c10: $8f
	cp   [hl]                                        ; $4c11: $be
	add  hl, de                                      ; $4c12: $19
	ld   a, l                                        ; $4c13: $7d
	add  hl, sp                                      ; $4c14: $39
	ld   h, c                                        ; $4c15: $61
	ld   a, b                                        ; $4c16: $78
	pop  hl                                          ; $4c17: $e1
	cp   a                                           ; $4c18: $bf
	db   $e3                                         ; $4c19: $e3
	jr   c, @+$72                                    ; $4c1a: $38 $70

	jr   jr_092_4c8e                                 ; $4c1c: $18 $70

	jr   jr_092_4c90                                 ; $4c1e: $18 $70

	sbc  h                                           ; $4c20: $9c
	or   b                                           ; $4c21: $b0
	ld   c, h                                        ; $4c22: $4c
	ld   a, b                                        ; $4c23: $78
	ld   l, b                                        ; $4c24: $68
	ld   hl, sp-$18                                  ; $4c25: $f8 $e8
	ld   hl, sp-$0c                                  ; $4c27: $f8 $f4
	cp   h                                           ; $4c29: $bc
	call c, $ec0c                                    ; $4c2a: $dc $0c $ec
	ret  nz                                          ; $4c2d: $c0

	db   $f4                                         ; $4c2e: $f4
	ldh  a, [rSVBK]                                  ; $4c2f: $f0 $70
	ld   a, b                                        ; $4c31: $78
	ld   hl, sp-$08                                  ; $4c32: $f8 $f8
	ldh  a, [rSVBK]                                  ; $4c34: $f0 $70
	or   b                                           ; $4c36: $b0
	ldh  [$f0], a                                    ; $4c37: $e0 $f0
	ldh  a, [rP1]                                    ; $4c39: $f0 $00
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	ld   a, [bc]                                     ; $4c40: $0a
	rrca                                             ; $4c41: $0f
	dec  bc                                          ; $4c42: $0b
	rrca                                             ; $4c43: $0f
	dec  bc                                          ; $4c44: $0b
	ld   c, $17                                      ; $4c45: $0e $17
	rra                                              ; $4c47: $1f
	rra                                              ; $4c48: $1f
	inc  e                                           ; $4c49: $1c
	inc  a                                           ; $4c4a: $3c
	jr   nc, jr_092_4c88                             ; $4c4b: $30 $3b

	inc  bc                                          ; $4c4d: $03
	rrca                                             ; $4c4e: $0f
	rrca                                             ; $4c4f: $0f
	ld   c, $1c                                      ; $4c50: $0e $1c
	rra                                              ; $4c52: $1f
	rla                                              ; $4c53: $17
	dec  b                                           ; $4c54: $05
	rlca                                             ; $4c55: $07
	inc  bc                                          ; $4c56: $03
	ld   b, $0f                                      ; $4c57: $06 $0f
	rlca                                             ; $4c59: $07
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	add  b                                           ; $4c5e: $80
	nop                                              ; $4c5f: $00
	inc  b                                           ; $4c60: $04
	add  a                                           ; $4c61: $87
	ld   [bc], a                                     ; $4c62: $02
	db   $db                                         ; $4c63: $db
	add  c                                           ; $4c64: $81
	push hl                                          ; $4c65: $e5
	add  c                                           ; $4c66: $81
	ei                                               ; $4c67: $fb
	ret  nz                                          ; $4c68: $c0

	ld   a, l                                        ; $4c69: $7d
	ldh  [$3e], a                                    ; $4c6a: $e0 $3e
	ldh  [rIE], a                                    ; $4c6c: $e0 $ff
	ldh  a, [rIE]                                    ; $4c6e: $f0 $ff
	ld   hl, sp-$01                                  ; $4c70: $f8 $ff
	ld   sp, hl                                      ; $4c72: $f9
	rst  JumpTable                                         ; $4c73: $df
	call c, $cec7                                    ; $4c74: $dc $c7 $ce
	add  a                                           ; $4c77: $87
	cp   $e7                                         ; $4c78: $fe $e7
	ld   sp, hl                                      ; $4c7a: $f9
	rrca                                             ; $4c7b: $0f
	ld   a, c                                        ; $4c7c: $79
	dec  bc                                          ; $4c7d: $0b
	ld   a, c                                        ; $4c7e: $79
	dec  bc                                          ; $4c7f: $0b
	db   $10                                         ; $4c80: $10
	rst  $30                                         ; $4c81: $f7
	ld   hl, $42e7                                   ; $4c82: $21 $e7 $42
	jp   z, $9787                                    ; $4c85: $ca $87 $97

jr_092_4c88:
	inc  c                                           ; $4c88: $0c
	adc  a                                           ; $4c89: $8f
	ld   de, $231f                                   ; $4c8a: $11 $1f $23
	xor  [hl]                                        ; $4c8d: $ae

jr_092_4c8e:
	ld   b, [hl]                                     ; $4c8e: $46
	ld   e, h                                        ; $4c8f: $5c

jr_092_4c90:
	adc  a                                           ; $4c90: $8f
	cp   c                                           ; $4c91: $b9
	rra                                              ; $4c92: $1f
	ld   [hl], a                                     ; $4c93: $77
	dec  sp                                          ; $4c94: $3b
	ld   h, e                                        ; $4c95: $63
	ld   a, b                                        ; $4c96: $78
	pop  hl                                          ; $4c97: $e1
	cp   a                                           ; $4c98: $bf
	db   $e3                                         ; $4c99: $e3
	jr   c, jr_092_4d0c                              ; $4c9a: $38 $70

	jr   jr_092_4d0e                                 ; $4c9c: $18 $70

	jr   jr_092_4d10                                 ; $4c9e: $18 $70

	sbc  h                                           ; $4ca0: $9c
	or   b                                           ; $4ca1: $b0
	ld   c, h                                        ; $4ca2: $4c
	ld   a, b                                        ; $4ca3: $78
	ld   l, b                                        ; $4ca4: $68
	ld   hl, sp-$18                                  ; $4ca5: $f8 $e8
	ld   hl, sp-$0c                                  ; $4ca7: $f8 $f4
	cp   h                                           ; $4ca9: $bc
	db   $fc                                         ; $4caa: $fc
	inc  c                                           ; $4cab: $0c
	sbc  h                                           ; $4cac: $9c
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	ld   hl, sp-$10                                  ; $4cb0: $f8 $f0
	ld   hl, sp-$08                                  ; $4cb2: $f8 $f8
	ldh  a, [rSVBK]                                  ; $4cb4: $f0 $70
	or   b                                           ; $4cb6: $b0
	ldh  [$f0], a                                    ; $4cb7: $e0 $f0
	ldh  a, [rP1]                                    ; $4cb9: $f0 $00
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	ld   a, [bc]                                     ; $4cc0: $0a
	rrca                                             ; $4cc1: $0f
	dec  bc                                          ; $4cc2: $0b
	rrca                                             ; $4cc3: $0f
	dec  bc                                          ; $4cc4: $0b
	ld   c, $17                                      ; $4cc5: $0e $17
	rra                                              ; $4cc7: $1f
	rra                                              ; $4cc8: $1f
	inc  e                                           ; $4cc9: $1c
	inc  a                                           ; $4cca: $3c
	jr   nc, jr_092_4d05                             ; $4ccb: $30 $38

	nop                                              ; $4ccd: $00
	nop                                              ; $4cce: $00
	nop                                              ; $4ccf: $00
	rra                                              ; $4cd0: $1f
	rlca                                             ; $4cd1: $07
	rra                                              ; $4cd2: $1f
	rra                                              ; $4cd3: $1f
	dec  b                                           ; $4cd4: $05
	rlca                                             ; $4cd5: $07
	inc  bc                                          ; $4cd6: $03
	ld   b, $0f                                      ; $4cd7: $06 $0f
	rlca                                             ; $4cd9: $07
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	add  b                                           ; $4cde: $80
	nop                                              ; $4cdf: $00
	inc  b                                           ; $4ce0: $04
	add  a                                           ; $4ce1: $87
	ld   [bc], a                                     ; $4ce2: $02
	db   $db                                         ; $4ce3: $db
	add  c                                           ; $4ce4: $81
	push hl                                          ; $4ce5: $e5
	add  c                                           ; $4ce6: $81
	ei                                               ; $4ce7: $fb
	ret  nz                                          ; $4ce8: $c0

	ld   a, l                                        ; $4ce9: $7d
	ldh  [$3e], a                                    ; $4cea: $e0 $3e
	ld   h, b                                        ; $4cec: $60
	ccf                                              ; $4ced: $3f
	jr   nc, @+$21                                   ; $4cee: $30 $1f

	ld   hl, sp-$31                                  ; $4cf0: $f8 $cf
	ld   sp, hl                                      ; $4cf2: $f9
	rst  $30                                         ; $4cf3: $f7
	db   $fc                                         ; $4cf4: $fc
	rst  $20                                         ; $4cf5: $e7
	adc  $87                                         ; $4cf6: $ce $87
	cp   $e7                                         ; $4cf8: $fe $e7
	ld   sp, hl                                      ; $4cfa: $f9
	rrca                                             ; $4cfb: $0f
	ld   a, c                                        ; $4cfc: $79
	dec  bc                                          ; $4cfd: $0b
	ld   a, c                                        ; $4cfe: $79
	dec  bc                                          ; $4cff: $0b
	adc  h                                           ; $4d00: $8c
	cp   b                                           ; $4d01: $b8
	inc  e                                           ; $4d02: $1c
	ld   [hl], b                                     ; $4d03: $70
	ccf                                              ; $4d04: $3f

jr_092_4d05:
	ld   h, h                                        ; $4d05: $64
	ld   a, a                                        ; $4d06: $7f
	db   $e3                                         ; $4d07: $e3
	cp   l                                           ; $4d08: $bd
	pop  hl                                          ; $4d09: $e1
	jr   c, jr_092_4d7c                              ; $4d0a: $38 $70

jr_092_4d0c:
	jr   jr_092_4d7e                                 ; $4d0c: $18 $70

jr_092_4d0e:
	jr   jr_092_4d80                                 ; $4d0e: $18 $70

jr_092_4d10:
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	add  b                                           ; $4d14: $80
	nop                                              ; $4d15: $00
	ld   hl, sp-$08                                  ; $4d16: $f8 $f8
	ld   hl, sp-$10                                  ; $4d18: $f8 $f0
	nop                                              ; $4d1a: $00
	nop                                              ; $4d1b: $00
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	rrca                                             ; $4d26: $0f
	rrca                                             ; $4d27: $0f
	rrca                                             ; $4d28: $0f
	rlca                                             ; $4d29: $07
	nop                                              ; $4d2a: $00
	nop                                              ; $4d2b: $00
	nop                                              ; $4d2c: $00
	nop                                              ; $4d2d: $00
	add  b                                           ; $4d2e: $80
	nop                                              ; $4d2f: $00
	jr   @+$11                                       ; $4d30: $18 $0f

	add  hl, de                                      ; $4d32: $19
	rlca                                             ; $4d33: $07
	ld   a, h                                        ; $4d34: $7c
	rla                                              ; $4d35: $17
	cp   $e7                                         ; $4d36: $fe $e7
	cp   $c7                                         ; $4d38: $fe $c7
	ld   sp, hl                                      ; $4d3a: $f9
	rrca                                             ; $4d3b: $0f
	ld   a, c                                        ; $4d3c: $79
	dec  bc                                          ; $4d3d: $0b
	ld   a, c                                        ; $4d3e: $79
	dec  bc                                          ; $4d3f: $0b
	ld   [$1c00], sp                                 ; $4d40: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $4d43: $08 $00 $00
	ld   [hl], $22                                   ; $4d46: $36 $22
	nop                                              ; $4d48: $00
	nop                                              ; $4d49: $00
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	nop                                              ; $4d4c: $00
	nop                                              ; $4d4d: $00
	add  c                                           ; $4d4e: $81
	nop                                              ; $4d4f: $00
	rst  $20                                         ; $4d50: $e7
	jp   $3c3c                                       ; $4d51: $c3 $3c $3c


	nop                                              ; $4d54: $00
	nop                                              ; $4d55: $00
	nop                                              ; $4d56: $00
	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	ld   [$1c00], sp                                 ; $4d60: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $4d63: $08 $00 $00
	ld   a, $14                                      ; $4d66: $3e $14
	ld   a, $22                                      ; $4d68: $3e $22
	ld   [hl+], a                                    ; $4d6a: $22
	nop                                              ; $4d6b: $00
	inc  e                                           ; $4d6c: $1c
	ld   [$0081], sp                                 ; $4d6d: $08 $81 $00
	adc  a                                           ; $4d70: $8f
	cp   h                                           ; $4d71: $bc
	dec  e                                           ; $4d72: $1d
	ld   a, c                                        ; $4d73: $79
	add  hl, sp                                      ; $4d74: $39
	ld   h, c                                        ; $4d75: $61
	ld   a, b                                        ; $4d76: $78
	pop  hl                                          ; $4d77: $e1
	cp   a                                           ; $4d78: $bf
	db   $e3                                         ; $4d79: $e3
	jr   c, jr_092_4dec                              ; $4d7a: $38 $70

jr_092_4d7c:
	jr   jr_092_4dee                                 ; $4d7c: $18 $70

jr_092_4d7e:
	jr   jr_092_4df0                                 ; $4d7e: $18 $70

jr_092_4d80:
	sbc  h                                           ; $4d80: $9c
	or   b                                           ; $4d81: $b0
	ld   c, h                                        ; $4d82: $4c
	ld   a, b                                        ; $4d83: $78
	ld   l, b                                        ; $4d84: $68
	ld   hl, sp-$18                                  ; $4d85: $f8 $e8
	ld   hl, sp-$0c                                  ; $4d87: $f8 $f4
	cp   h                                           ; $4d89: $bc
	call c, $ec0c                                    ; $4d8a: $dc $0c $ec
	ldh  [$f4], a                                    ; $4d8d: $e0 $f4
	ldh  a, [$78]                                    ; $4d8f: $f0 $78
	ld   a, b                                        ; $4d91: $78
	ld   hl, sp-$10                                  ; $4d92: $f8 $f0
	ldh  a, [rSVBK]                                  ; $4d94: $f0 $70
	or   b                                           ; $4d96: $b0
	ldh  [$f0], a                                    ; $4d97: $e0 $f0
	ldh  a, [rP1]                                    ; $4d99: $f0 $00
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	nop                                              ; $4d9d: $00
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	ld   a, [bc]                                     ; $4da0: $0a
	rrca                                             ; $4da1: $0f
	dec  bc                                          ; $4da2: $0b
	rrca                                             ; $4da3: $0f
	dec  bc                                          ; $4da4: $0b
	ld   c, $17                                      ; $4da5: $0e $17
	rra                                              ; $4da7: $1f
	rra                                              ; $4da8: $1f
	inc  e                                           ; $4da9: $1c
	inc  a                                           ; $4daa: $3c
	jr   nc, jr_092_4dec                             ; $4dab: $30 $3f

	rlca                                             ; $4dad: $07
	rrca                                             ; $4dae: $0f
	rrca                                             ; $4daf: $0f
	ld   e, $1c                                      ; $4db0: $1e $1c
	rra                                              ; $4db2: $1f
	rlca                                             ; $4db3: $07
	dec  b                                           ; $4db4: $05
	rlca                                             ; $4db5: $07
	inc  bc                                          ; $4db6: $03
	ld   b, $0f                                      ; $4db7: $06 $0f
	rlca                                             ; $4db9: $07
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	nop                                              ; $4dbd: $00
	add  b                                           ; $4dbe: $80
	nop                                              ; $4dbf: $00
	ld   hl, sp-$21                                  ; $4dc0: $f8 $df
	ld   sp, hl                                      ; $4dc2: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dc3: $cf
	call c, $cec7                                    ; $4dc4: $dc $c7 $ce
	add  a                                           ; $4dc7: $87
	cp   $e7                                         ; $4dc8: $fe $e7
	ld   sp, hl                                      ; $4dca: $f9
	rrca                                             ; $4dcb: $0f
	ld   a, c                                        ; $4dcc: $79
	dec  bc                                          ; $4dcd: $0b
	ld   a, c                                        ; $4dce: $79
	dec  bc                                          ; $4dcf: $0b
	adc  a                                           ; $4dd0: $8f
	cp   e                                           ; $4dd1: $bb
	rra                                              ; $4dd2: $1f
	ld   [hl], a                                     ; $4dd3: $77
	dec  a                                           ; $4dd4: $3d
	ld   h, l                                        ; $4dd5: $65
	ld   a, b                                        ; $4dd6: $78
	pop  hl                                          ; $4dd7: $e1
	cp   a                                           ; $4dd8: $bf
	db   $e3                                         ; $4dd9: $e3
	jr   c, jr_092_4e4c                              ; $4dda: $38 $70

	jr   jr_092_4e4e                                 ; $4ddc: $18 $70

	jr   jr_092_4e50                                 ; $4dde: $18 $70

	ld   hl, sp-$20                                  ; $4de0: $f8 $e0
	ld   hl, sp-$08                                  ; $4de2: $f8 $f8
	ld   hl, sp+$70                                  ; $4de4: $f8 $70
	or   b                                           ; $4de6: $b0
	ldh  [$f0], a                                    ; $4de7: $e0 $f0
	ldh  a, [rP1]                                    ; $4de9: $f0 $00
	nop                                              ; $4deb: $00

jr_092_4dec:
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00

jr_092_4dee:
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00

jr_092_4df0:
	ld   hl, sp-$11                                  ; $4df0: $f8 $ef
	ld   sp, hl                                      ; $4df2: $f9
	rst  $38                                         ; $4df3: $ff
	call c, $ced7                                    ; $4df4: $dc $d7 $ce
	add  a                                           ; $4df7: $87
	cp   $e7                                         ; $4df8: $fe $e7
	ld   sp, hl                                      ; $4dfa: $f9
	rrca                                             ; $4dfb: $0f
	ld   a, c                                        ; $4dfc: $79
	dec  bc                                          ; $4dfd: $0b
	ld   a, c                                        ; $4dfe: $79
	dec  bc                                          ; $4dff: $0b
	ld   [$1c00], sp                                 ; $4e00: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $4e03: $08 $00 $00
	ld   [hl], a                                     ; $4e06: $77
	ld   [hl+], a                                    ; $4e07: $22
	inc  e                                           ; $4e08: $1c
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	add  c                                           ; $4e0e: $81
	nop                                              ; $4e0f: $00
	ld   [$1c00], sp                                 ; $4e10: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $4e13: $08 $00 $00
	ld   a, a                                        ; $4e16: $7f
	ld   [hl+], a                                    ; $4e17: $22
	ld   [hl+], a                                    ; $4e18: $22
	ld   [hl+], a                                    ; $4e19: $22
	inc  e                                           ; $4e1a: $1c
	inc  d                                           ; $4e1b: $14
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	add  c                                           ; $4e1e: $81
	nop                                              ; $4e1f: $00
	db   $10                                         ; $4e20: $10
	rst  $30                                         ; $4e21: $f7
	ld   hl, $42e7                                   ; $4e22: $21 $e7 $42
	jp   z, $9786                                    ; $4e25: $ca $86 $97

	add  hl, bc                                      ; $4e28: $09
	adc  a                                           ; $4e29: $8f
	ld   de, $231f                                   ; $4e2a: $11 $1f $23
	xor  a                                           ; $4e2d: $af
	ld   b, a                                        ; $4e2e: $47
	ld   e, a                                        ; $4e2f: $5f
	sbc  h                                           ; $4e30: $9c
	or   b                                           ; $4e31: $b0
	ld   c, h                                        ; $4e32: $4c
	ld   a, b                                        ; $4e33: $78
	ld   l, b                                        ; $4e34: $68
	ld   hl, sp+$68                                  ; $4e35: $f8 $68
	ld   hl, sp-$0c                                  ; $4e37: $f8 $f4
	sbc  h                                           ; $4e39: $9c
	db   $fc                                         ; $4e3a: $fc

jr_092_4e3b:
	db   $ec                                         ; $4e3b: $ec
	db   $fc                                         ; $4e3c: $fc
	jr   nc, jr_092_4e3b                             ; $4e3d: $30 $fc

	ld   hl, sp+$78                                  ; $4e3f: $f8 $78
	ld   [hl], b                                     ; $4e41: $70
	ld   hl, sp-$08                                  ; $4e42: $f8 $f8
	ldh  a, [rSVBK]                                  ; $4e44: $f0 $70
	or   b                                           ; $4e46: $b0
	ldh  [$f0], a                                    ; $4e47: $e0 $f0
	ldh  a, [rP1]                                    ; $4e49: $f0 $00
	nop                                              ; $4e4b: $00

jr_092_4e4c:
	nop                                              ; $4e4c: $00
	nop                                              ; $4e4d: $00

jr_092_4e4e:
	nop                                              ; $4e4e: $00
	nop                                              ; $4e4f: $00

jr_092_4e50:
	ld   a, [bc]                                     ; $4e50: $0a
	rrca                                             ; $4e51: $0f
	dec  bc                                          ; $4e52: $0b
	rrca                                             ; $4e53: $0f
	dec  bc                                          ; $4e54: $0b
	ld   c, $17                                      ; $4e55: $0e $17
	inc  e                                           ; $4e57: $1c
	rra                                              ; $4e58: $1f
	add  hl, de                                      ; $4e59: $19
	ccf                                              ; $4e5a: $3f
	scf                                              ; $4e5b: $37
	ccf                                              ; $4e5c: $3f
	inc  c                                           ; $4e5d: $0c
	ccf                                              ; $4e5e: $3f
	rra                                              ; $4e5f: $1f
	ld   e, $0c                                      ; $4e60: $1e $0c
	rra                                              ; $4e62: $1f
	rla                                              ; $4e63: $17
	dec  b                                           ; $4e64: $05
	rlca                                             ; $4e65: $07
	inc  bc                                          ; $4e66: $03
	ld   b, $0f                                      ; $4e67: $06 $0f
	rlca                                             ; $4e69: $07
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	add  b                                           ; $4e6e: $80
	nop                                              ; $4e6f: $00
	inc  b                                           ; $4e70: $04
	add  a                                           ; $4e71: $87
	ld   [bc], a                                     ; $4e72: $02
	db   $db                                         ; $4e73: $db
	add  c                                           ; $4e74: $81
	push hl                                          ; $4e75: $e5
	add  c                                           ; $4e76: $81
	ei                                               ; $4e77: $fb
	ret  nz                                          ; $4e78: $c0

	db   $fd                                         ; $4e79: $fd
	ldh  [$3e], a                                    ; $4e7a: $e0 $3e
	ldh  [rIE], a                                    ; $4e7c: $e0 $ff
	ldh  a, [rIE]                                    ; $4e7e: $f0 $ff
	db   $10                                         ; $4e80: $10
	rst  $30                                         ; $4e81: $f7
	ld   hl, $42e7                                   ; $4e82: $21 $e7 $42
	jp   z, $9786                                    ; $4e85: $ca $86 $97

	add  hl, bc                                      ; $4e88: $09
	adc  a                                           ; $4e89: $8f
	ld   de, $231f                                   ; $4e8a: $11 $1f $23
	xor  [hl]                                        ; $4e8d: $ae
	ld   b, [hl]                                     ; $4e8e: $46
	ld   e, h                                        ; $4e8f: $5c
	adc  a                                           ; $4e90: $8f
	cp   e                                           ; $4e91: $bb
	rra                                              ; $4e92: $1f
	ld   a, a                                        ; $4e93: $7f
	dec  a                                           ; $4e94: $3d
	ld   h, l                                        ; $4e95: $65
	ld   a, b                                        ; $4e96: $78
	pop  hl                                          ; $4e97: $e1
	cp   a                                           ; $4e98: $bf
	db   $e3                                         ; $4e99: $e3
	jr   c, jr_092_4f0c                              ; $4e9a: $38 $70

	jr   @+$72                                       ; $4e9c: $18 $70

	jr   jr_092_4f10                                 ; $4e9e: $18 $70

	sbc  h                                           ; $4ea0: $9c
	or   b                                           ; $4ea1: $b0
	ld   c, h                                        ; $4ea2: $4c
	ld   a, b                                        ; $4ea3: $78
	ld   l, b                                        ; $4ea4: $68
	ld   hl, sp+$68                                  ; $4ea5: $f8 $68
	ld   hl, sp-$0c                                  ; $4ea7: $f8 $f4
	sbc  h                                           ; $4ea9: $9c
	db   $fc                                         ; $4eaa: $fc
	db   $ec                                         ; $4eab: $ec
	db   $fc                                         ; $4eac: $fc
	jr   nc, jr_092_4ecb                             ; $4ead: $30 $1c

	nop                                              ; $4eaf: $00
	ld   hl, sp-$20                                  ; $4eb0: $f8 $e0
	ld   hl, sp-$08                                  ; $4eb2: $f8 $f8
	ldh  a, [rSVBK]                                  ; $4eb4: $f0 $70
	or   b                                           ; $4eb6: $b0
	ldh  [$f0], a                                    ; $4eb7: $e0 $f0
	ldh  a, [rP1]                                    ; $4eb9: $f0 $00
	nop                                              ; $4ebb: $00
	nop                                              ; $4ebc: $00
	nop                                              ; $4ebd: $00
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	ld   a, [bc]                                     ; $4ec0: $0a
	rrca                                             ; $4ec1: $0f
	dec  bc                                          ; $4ec2: $0b
	rrca                                             ; $4ec3: $0f
	dec  bc                                          ; $4ec4: $0b
	ld   c, $17                                      ; $4ec5: $0e $17
	inc  e                                           ; $4ec7: $1c
	rra                                              ; $4ec8: $1f
	add  hl, de                                      ; $4ec9: $19
	ccf                                              ; $4eca: $3f

jr_092_4ecb:
	scf                                              ; $4ecb: $37
	ccf                                              ; $4ecc: $3f
	inc  c                                           ; $4ecd: $0c
	inc  a                                           ; $4ece: $3c
	jr   jr_092_4ed5                                 ; $4ecf: $18 $04

	add  a                                           ; $4ed1: $87
	ld   [bc], a                                     ; $4ed2: $02
	db   $db                                         ; $4ed3: $db
	add  c                                           ; $4ed4: $81

jr_092_4ed5:
	push hl                                          ; $4ed5: $e5
	add  c                                           ; $4ed6: $81
	ei                                               ; $4ed7: $fb
	ret  nz                                          ; $4ed8: $c0

	db   $fd                                         ; $4ed9: $fd
	ldh  [$3e], a                                    ; $4eda: $e0 $3e
	jr   nz, jr_092_4f1d                             ; $4edc: $20 $3f

	db   $10                                         ; $4ede: $10
	rra                                              ; $4edf: $1f
	ld   hl, sp-$21                                  ; $4ee0: $f8 $df
	ld   sp, hl                                      ; $4ee2: $f9
	rst  $38                                         ; $4ee3: $ff
	call c, $ced7                                    ; $4ee4: $dc $d7 $ce
	add  a                                           ; $4ee7: $87
	cp   $e7                                         ; $4ee8: $fe $e7
	ld   sp, hl                                      ; $4eea: $f9
	rrca                                             ; $4eeb: $0f
	ld   a, c                                        ; $4eec: $79
	dec  bc                                          ; $4eed: $0b
	ld   a, c                                        ; $4eee: $79
	dec  bc                                          ; $4eef: $0b
	db   $10                                         ; $4ef0: $10
	rst  $30                                         ; $4ef1: $f7
	ld   hl, $42e7                                   ; $4ef2: $21 $e7 $42
	jp   z, $9786                                    ; $4ef5: $ca $86 $97

	add  hl, bc                                      ; $4ef8: $09
	adc  a                                           ; $4ef9: $8f
	ld   de, $231f                                   ; $4efa: $11 $1f $23
	xor  a                                           ; $4efd: $af
	ld   b, [hl]                                     ; $4efe: $46
	ld   e, h                                        ; $4eff: $5c
	sbc  h                                           ; $4f00: $9c
	or   b                                           ; $4f01: $b0
	ld   c, h                                        ; $4f02: $4c
	ld   a, b                                        ; $4f03: $78
	ld   l, b                                        ; $4f04: $68
	ld   hl, sp+$68                                  ; $4f05: $f8 $68
	ld   hl, sp-$0c                                  ; $4f07: $f8 $f4
	sbc  h                                           ; $4f09: $9c
	db   $fc                                         ; $4f0a: $fc
	db   $ec                                         ; $4f0b: $ec

jr_092_4f0c:
	db   $fc                                         ; $4f0c: $fc
	jr   nc, jr_092_4f4b                             ; $4f0d: $30 $3c

	inc  c                                           ; $4f0f: $0c

jr_092_4f10:
	ld   a, [bc]                                     ; $4f10: $0a
	rrca                                             ; $4f11: $0f
	dec  bc                                          ; $4f12: $0b
	rrca                                             ; $4f13: $0f
	dec  bc                                          ; $4f14: $0b
	ld   c, $17                                      ; $4f15: $0e $17
	inc  e                                           ; $4f17: $1c
	rra                                              ; $4f18: $1f
	add  hl, de                                      ; $4f19: $19
	ccf                                              ; $4f1a: $3f
	scf                                              ; $4f1b: $37
	ccf                                              ; $4f1c: $3f

jr_092_4f1d:
	inc  c                                           ; $4f1d: $0c
	inc  e                                           ; $4f1e: $1c
	jr   jr_092_4f25                                 ; $4f1f: $18 $04

	add  a                                           ; $4f21: $87
	ld   [bc], a                                     ; $4f22: $02
	db   $db                                         ; $4f23: $db
	add  c                                           ; $4f24: $81

jr_092_4f25:
	push hl                                          ; $4f25: $e5
	add  c                                           ; $4f26: $81
	ei                                               ; $4f27: $fb
	ret  nz                                          ; $4f28: $c0

	db   $fd                                         ; $4f29: $fd
	ldh  [$3e], a                                    ; $4f2a: $e0 $3e
	jr   nz, jr_092_4f6d                             ; $4f2c: $20 $3f

	jr   nc, jr_092_4f4f                             ; $4f2e: $30 $1f

	ld   [$1c00], sp                                 ; $4f30: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $4f33: $08 $00 $00
	inc  a                                           ; $4f36: $3c
	inc  h                                           ; $4f37: $24
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	nop                                              ; $4f3c: $00
	nop                                              ; $4f3d: $00
	add  c                                           ; $4f3e: $81
	nop                                              ; $4f3f: $00
	ld   [$1c00], sp                                 ; $4f40: $08 $00 $1c

Jump_092_4f43:
	ld   [$0018], sp                                 ; $4f43: $08 $18 $00
	inc  a                                           ; $4f46: $3c
	jr   jr_092_4f6d                                 ; $4f47: $18 $24

	inc  h                                           ; $4f49: $24
	inc  a                                           ; $4f4a: $3c

jr_092_4f4b:
	jr   jr_092_4f4d                                 ; $4f4b: $18 $00

jr_092_4f4d:
	nop                                              ; $4f4d: $00
	add  c                                           ; $4f4e: $81

jr_092_4f4f:
	nop                                              ; $4f4f: $00
	db   $10                                         ; $4f50: $10
	rst  $30                                         ; $4f51: $f7
	ld   hl, $42e7                                   ; $4f52: $21 $e7 $42
	jp   z, $9784                                    ; $4f55: $ca $84 $97

	ld   [$118f], sp                                 ; $4f58: $08 $8f $11
	rra                                              ; $4f5b: $1f
	cpl                                              ; $4f5c: $2f
	xor  [hl]                                        ; $4f5d: $ae
	ld   b, a                                        ; $4f5e: $47
	ld   e, a                                        ; $4f5f: $5f
	adc  a                                           ; $4f60: $8f
	cp   [hl]                                        ; $4f61: $be
	dec  e                                           ; $4f62: $1d
	ld   a, l                                        ; $4f63: $7d
	add  hl, sp                                      ; $4f64: $39
	ld   l, c                                        ; $4f65: $69
	ld   a, b                                        ; $4f66: $78
	pop  hl                                          ; $4f67: $e1
	cp   a                                           ; $4f68: $bf
	db   $e3                                         ; $4f69: $e3
	jr   c, jr_092_4fdc                              ; $4f6a: $38 $70

	ld   a, [de]                                     ; $4f6c: $1a

jr_092_4f6d:
	ld   [hl], b                                     ; $4f6d: $70
	dec  e                                           ; $4f6e: $1d
	ld   [hl], b                                     ; $4f6f: $70
	sbc  h                                           ; $4f70: $9c
	or   b                                           ; $4f71: $b0
	ld   c, h                                        ; $4f72: $4c
	ld   a, b                                        ; $4f73: $78
	ld   l, b                                        ; $4f74: $68
	ld   hl, sp-$14                                  ; $4f75: $f8 $ec
	db   $fc                                         ; $4f77: $fc
	db   $f4                                         ; $4f78: $f4
	cp   h                                           ; $4f79: $bc
	db   $fc                                         ; $4f7a: $fc
	db   $ec                                         ; $4f7b: $ec
	db   $fc                                         ; $4f7c: $fc
	ret  nz                                          ; $4f7d: $c0

	ldh  a, [$e0]                                    ; $4f7e: $f0 $e0
	ld   [hl], b                                     ; $4f80: $70
	ld   a, b                                        ; $4f81: $78
	ld   hl, sp-$08                                  ; $4f82: $f8 $f8
	ldh  a, [rSVBK]                                  ; $4f84: $f0 $70
	or   b                                           ; $4f86: $b0
	ldh  [$f0], a                                    ; $4f87: $e0 $f0
	ldh  a, [rP1]                                    ; $4f89: $f0 $00
	nop                                              ; $4f8b: $00
	add  b                                           ; $4f8c: $80
	nop                                              ; $4f8d: $00
	nop                                              ; $4f8e: $00
	nop                                              ; $4f8f: $00
	ld   a, [bc]                                     ; $4f90: $0a
	rrca                                             ; $4f91: $0f
	dec  bc                                          ; $4f92: $0b
	rrca                                             ; $4f93: $0f
	dec  bc                                          ; $4f94: $0b
	ld   c, $37                                      ; $4f95: $0e $37
	inc  a                                           ; $4f97: $3c
	rra                                              ; $4f98: $1f
	ld   e, $3f                                      ; $4f99: $1e $3f
	ld   sp, $033f                                   ; $4f9b: $31 $3f $03
	rrca                                             ; $4f9e: $0f
	rlca                                             ; $4f9f: $07
	ld   c, $1c                                      ; $4fa0: $0e $1c
	rra                                              ; $4fa2: $1f
	rla                                              ; $4fa3: $17
	dec  b                                           ; $4fa4: $05
	rlca                                             ; $4fa5: $07
	inc  bc                                          ; $4fa6: $03
	ld   b, $0f                                      ; $4fa7: $06 $0f
	rlca                                             ; $4fa9: $07
	nop                                              ; $4faa: $00
	nop                                              ; $4fab: $00
	dec  b                                           ; $4fac: $05
	nop                                              ; $4fad: $00
	add  d                                           ; $4fae: $82
	nop                                              ; $4faf: $00
	inc  b                                           ; $4fb0: $04
	add  a                                           ; $4fb1: $87
	ld   [bc], a                                     ; $4fb2: $02
	db   $db                                         ; $4fb3: $db
	add  c                                           ; $4fb4: $81
	push hl                                          ; $4fb5: $e5
	add  c                                           ; $4fb6: $81
	ei                                               ; $4fb7: $fb
	ret  nz                                          ; $4fb8: $c0

	ld   a, l                                        ; $4fb9: $7d
	ldh  [$fe], a                                    ; $4fba: $e0 $fe
	ldh  [$bf], a                                    ; $4fbc: $e0 $bf
	ldh  a, [rIE]                                    ; $4fbe: $f0 $ff
	ld   hl, sp-$01                                  ; $4fc0: $f8 $ff
	ld   sp, hl                                      ; $4fc2: $f9
	rst  JumpTable                                         ; $4fc3: $df
	call c, $cecf                                    ; $4fc4: $dc $cf $ce
	add  a                                           ; $4fc7: $87
	cp   $e7                                         ; $4fc8: $fe $e7
	ld   sp, hl                                      ; $4fca: $f9
	rrca                                             ; $4fcb: $0f
	ld   a, c                                        ; $4fcc: $79
	dec  bc                                          ; $4fcd: $0b
	ld   sp, hl                                      ; $4fce: $f9
	dec  bc                                          ; $4fcf: $0b
	db   $10                                         ; $4fd0: $10
	rst  $30                                         ; $4fd1: $f7
	ld   hl, $42e7                                   ; $4fd2: $21 $e7 $42
	jp   z, $9784                                    ; $4fd5: $ca $84 $97

	ld   [$118f], sp                                 ; $4fd8: $08 $8f $11
	rra                                              ; $4fdb: $1f

jr_092_4fdc:
	cpl                                              ; $4fdc: $2f
	xor  [hl]                                        ; $4fdd: $ae
	ld   b, a                                        ; $4fde: $47
	ld   e, h                                        ; $4fdf: $5c
	adc  a                                           ; $4fe0: $8f
	cp   e                                           ; $4fe1: $bb
	rra                                              ; $4fe2: $1f
	ld   [hl], a                                     ; $4fe3: $77
	dec  a                                           ; $4fe4: $3d
	ld   l, l                                        ; $4fe5: $6d
	ld   a, b                                        ; $4fe6: $78
	pop  hl                                          ; $4fe7: $e1
	cp   a                                           ; $4fe8: $bf
	db   $e3                                         ; $4fe9: $e3
	jr   c, jr_092_505c                              ; $4fea: $38 $70

	ld   a, [de]                                     ; $4fec: $1a
	ld   [hl], b                                     ; $4fed: $70
	dec  e                                           ; $4fee: $1d
	ld   [hl], b                                     ; $4fef: $70
	sbc  h                                           ; $4ff0: $9c
	or   b                                           ; $4ff1: $b0
	ld   c, h                                        ; $4ff2: $4c
	ld   a, b                                        ; $4ff3: $78
	ld   l, b                                        ; $4ff4: $68
	ld   hl, sp-$14                                  ; $4ff5: $f8 $ec
	db   $fc                                         ; $4ff7: $fc
	db   $f4                                         ; $4ff8: $f4
	cp   h                                           ; $4ff9: $bc
	db   $fc                                         ; $4ffa: $fc
	db   $ec                                         ; $4ffb: $ec
	add  b                                           ; $4ffc: $80
	nop                                              ; $4ffd: $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	ld   hl, sp-$20                                  ; $5000: $f8 $e0
	ld   hl, sp-$08                                  ; $5002: $f8 $f8
	ldh  a, [rSVBK]                                  ; $5004: $f0 $70
	or   b                                           ; $5006: $b0
	ldh  [$f0], a                                    ; $5007: $e0 $f0
	ldh  a, [rP1]                                    ; $5009: $f0 $00
	nop                                              ; $500b: $00
	add  b                                           ; $500c: $80
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	ld   a, [bc]                                     ; $5010: $0a
	rrca                                             ; $5011: $0f
	dec  bc                                          ; $5012: $0b
	rrca                                             ; $5013: $0f
	dec  bc                                          ; $5014: $0b
	ld   c, $37                                      ; $5015: $0e $37
	inc  a                                           ; $5017: $3c
	rra                                              ; $5018: $1f
	ld   e, $3f                                      ; $5019: $1e $3f
	ld   sp, $0031                                   ; $501b: $31 $31 $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	rra                                              ; $5020: $1f
	rlca                                             ; $5021: $07
	rra                                              ; $5022: $1f
	rra                                              ; $5023: $1f
	dec  b                                           ; $5024: $05
	rlca                                             ; $5025: $07
	inc  bc                                          ; $5026: $03
	ld   b, $0f                                      ; $5027: $06 $0f
	rlca                                             ; $5029: $07
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	dec  b                                           ; $502c: $05
	nop                                              ; $502d: $00
	add  d                                           ; $502e: $82
	nop                                              ; $502f: $00
	inc  b                                           ; $5030: $04
	add  a                                           ; $5031: $87
	ld   [bc], a                                     ; $5032: $02
	db   $db                                         ; $5033: $db
	add  c                                           ; $5034: $81
	push hl                                          ; $5035: $e5
	add  c                                           ; $5036: $81
	ei                                               ; $5037: $fb
	ret  nz                                          ; $5038: $c0

	ld   a, l                                        ; $5039: $7d
	ldh  [$fe], a                                    ; $503a: $e0 $fe
	ldh  [$3f], a                                    ; $503c: $e0 $3f
	ld   [hl], b                                     ; $503e: $70
	rra                                              ; $503f: $1f
	ld   hl, sp-$11                                  ; $5040: $f8 $ef
	ld   sp, hl                                      ; $5042: $f9
	rst  $38                                         ; $5043: $ff
	call c, $cedf                                    ; $5044: $dc $df $ce
	add  a                                           ; $5047: $87
	cp   $e7                                         ; $5048: $fe $e7
	ld   sp, hl                                      ; $504a: $f9
	rrca                                             ; $504b: $0f
	ld   a, c                                        ; $504c: $79
	dec  bc                                          ; $504d: $0b
	ld   sp, hl                                      ; $504e: $f9
	dec  bc                                          ; $504f: $0b
	db   $10                                         ; $5050: $10
	rst  $30                                         ; $5051: $f7
	ld   hl, $42e7                                   ; $5052: $21 $e7 $42
	jp   z, $9784                                    ; $5055: $ca $84 $97

	ld   [$118f], sp                                 ; $5058: $08 $8f $11
	rra                                              ; $505b: $1f

jr_092_505c:
	cpl                                              ; $505c: $2f
	xor  [hl]                                        ; $505d: $ae
	ld   b, [hl]                                     ; $505e: $46
	ld   e, h                                        ; $505f: $5c
	adc  h                                           ; $5060: $8c
	cp   b                                           ; $5061: $b8
	inc  e                                           ; $5062: $1c
	ld   [hl], b                                     ; $5063: $70
	ccf                                              ; $5064: $3f
	ld   h, h                                        ; $5065: $64
	ld   a, a                                        ; $5066: $7f
	db   $e3                                         ; $5067: $e3
	cp   l                                           ; $5068: $bd
	pop  hl                                          ; $5069: $e1
	jr   c, jr_092_50dc                              ; $506a: $38 $70

	ld   a, [de]                                     ; $506c: $1a
	ld   [hl], b                                     ; $506d: $70
	dec  e                                           ; $506e: $1d
	ld   [hl], b                                     ; $506f: $70
	sbc  h                                           ; $5070: $9c
	or   b                                           ; $5071: $b0
	ld   c, h                                        ; $5072: $4c
	ld   a, b                                        ; $5073: $78
	ld   l, b                                        ; $5074: $68
	ld   hl, sp-$14                                  ; $5075: $f8 $ec
	db   $fc                                         ; $5077: $fc
	db   $f4                                         ; $5078: $f4
	cp   h                                           ; $5079: $bc
	db   $fc                                         ; $507a: $fc
	db   $ec                                         ; $507b: $ec
	inc  e                                           ; $507c: $1c
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	add  b                                           ; $5084: $80
	nop                                              ; $5085: $00
	ld   hl, sp-$08                                  ; $5086: $f8 $f8
	ld   hl, sp-$10                                  ; $5088: $f8 $f0
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	add  b                                           ; $508c: $80
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	ld   a, [bc]                                     ; $5090: $0a
	rrca                                             ; $5091: $0f
	dec  bc                                          ; $5092: $0b
	rrca                                             ; $5093: $0f
	dec  bc                                          ; $5094: $0b
	ld   c, $37                                      ; $5095: $0e $37
	inc  a                                           ; $5097: $3c
	rra                                              ; $5098: $1f
	ld   e, $3f                                      ; $5099: $1e $3f
	ld   sp, $0030                                   ; $509b: $31 $30 $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	rrca                                             ; $50a6: $0f
	rrca                                             ; $50a7: $0f
	rrca                                             ; $50a8: $0f
	rlca                                             ; $50a9: $07
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	dec  b                                           ; $50ac: $05
	nop                                              ; $50ad: $00
	add  d                                           ; $50ae: $82
	nop                                              ; $50af: $00
	inc  b                                           ; $50b0: $04
	add  a                                           ; $50b1: $87
	ld   [bc], a                                     ; $50b2: $02
	db   $db                                         ; $50b3: $db
	add  c                                           ; $50b4: $81
	push hl                                          ; $50b5: $e5
	add  c                                           ; $50b6: $81
	ei                                               ; $50b7: $fb
	ret  nz                                          ; $50b8: $c0

	ld   a, l                                        ; $50b9: $7d
	ldh  [$fe], a                                    ; $50ba: $e0 $fe
	ld   h, b                                        ; $50bc: $60
	ccf                                              ; $50bd: $3f
	jr   nc, jr_092_50df                             ; $50be: $30 $1f

	jr   @+$11                                       ; $50c0: $18 $0f

	add  hl, de                                      ; $50c2: $19
	rlca                                             ; $50c3: $07
	ld   a, h                                        ; $50c4: $7c
	rla                                              ; $50c5: $17
	cp   $e7                                         ; $50c6: $fe $e7
	cp   $c7                                         ; $50c8: $fe $c7
	ld   sp, hl                                      ; $50ca: $f9
	rrca                                             ; $50cb: $0f
	ld   a, c                                        ; $50cc: $79
	dec  bc                                          ; $50cd: $0b
	ld   sp, hl                                      ; $50ce: $f9
	dec  bc                                          ; $50cf: $0b
	ld   [$1c00], sp                                 ; $50d0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $50d3: $08 $00 $00
	ld   a, [hl]                                     ; $50d6: $7e
	inc  h                                           ; $50d7: $24
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	nop                                              ; $50db: $00

jr_092_50dc:
	nop                                              ; $50dc: $00
	nop                                              ; $50dd: $00
	add  c                                           ; $50de: $81

jr_092_50df:
	nop                                              ; $50df: $00
	ld   [$1c00], sp                                 ; $50e0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $50e3: $08 $00 $00
	inc  a                                           ; $50e6: $3c
	jr   jr_092_510d                                 ; $50e7: $18 $24

	inc  h                                           ; $50e9: $24
	inc  a                                           ; $50ea: $3c
	jr   jr_092_50ed                                 ; $50eb: $18 $00

jr_092_50ed:
	nop                                              ; $50ed: $00
	add  c                                           ; $50ee: $81
	nop                                              ; $50ef: $00
	db   $10                                         ; $50f0: $10
	rst  $30                                         ; $50f1: $f7
	ld   hl, $42e7                                   ; $50f2: $21 $e7 $42
	jp   z, $9784                                    ; $50f5: $ca $84 $97

	ld   [$1f8f], sp                                 ; $50f8: $08 $8f $1f
	rra                                              ; $50fb: $1f
	inc  hl                                          ; $50fc: $23
	and  a                                           ; $50fd: $a7
	ld   b, a                                        ; $50fe: $47
	ld   e, a                                        ; $50ff: $5f
	sbc  h                                           ; $5100: $9c
	or   b                                           ; $5101: $b0
	ld   c, h                                        ; $5102: $4c
	ld   a, b                                        ; $5103: $78
	ld   l, b                                        ; $5104: $68
	ld   hl, sp-$14                                  ; $5105: $f8 $ec
	db   $fc                                         ; $5107: $fc
	db   $f4                                         ; $5108: $f4
	cp   h                                           ; $5109: $bc
	db   $fc                                         ; $510a: $fc
	db   $fc                                         ; $510b: $fc
	db   $fc                                         ; $510c: $fc

jr_092_510d:
	add  b                                           ; $510d: $80
	ldh  a, [$e0]                                    ; $510e: $f0 $e0
	ld   [hl], b                                     ; $5110: $70
	ld   a, b                                        ; $5111: $78
	ld   hl, sp-$08                                  ; $5112: $f8 $f8
	ldh  a, [rSVBK]                                  ; $5114: $f0 $70
	ldh  a, [$f0]                                    ; $5116: $f0 $f0
	ret  nz                                          ; $5118: $c0

	add  b                                           ; $5119: $80
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	add  b                                           ; $511c: $80
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	ld   a, [bc]                                     ; $5120: $0a
	rrca                                             ; $5121: $0f
	dec  bc                                          ; $5122: $0b
	rrca                                             ; $5123: $0f
	dec  bc                                          ; $5124: $0b
	ld   c, $17                                      ; $5125: $0e $17
	inc  e                                           ; $5127: $1c
	rra                                              ; $5128: $1f
	inc  e                                           ; $5129: $1c
	ccf                                              ; $512a: $3f
	ccf                                              ; $512b: $3f
	ccf                                              ; $512c: $3f
	inc  bc                                          ; $512d: $03
	rrca                                             ; $512e: $0f
	rlca                                             ; $512f: $07
	ld   c, $1c                                      ; $5130: $0e $1c
	rra                                              ; $5132: $1f
	rla                                              ; $5133: $17
	dec  b                                           ; $5134: $05
	rlca                                             ; $5135: $07
	rlca                                             ; $5136: $07
	rlca                                             ; $5137: $07
	ld   bc, $0000                                   ; $5138: $01 $00 $00
	nop                                              ; $513b: $00
	dec  b                                           ; $513c: $05
	nop                                              ; $513d: $00
	add  d                                           ; $513e: $82
	nop                                              ; $513f: $00
	db   $10                                         ; $5140: $10
	rst  $30                                         ; $5141: $f7
	ld   hl, $42e7                                   ; $5142: $21 $e7 $42
	jp   z, $9784                                    ; $5145: $ca $84 $97

	ld   [$1f8f], sp                                 ; $5148: $08 $8f $1f
	rra                                              ; $514b: $1f
	inc  hl                                          ; $514c: $23
	and  [hl]                                        ; $514d: $a6
	ld   b, a                                        ; $514e: $47
	ld   e, h                                        ; $514f: $5c
	adc  a                                           ; $5150: $8f
	cp   c                                           ; $5151: $b9
	rra                                              ; $5152: $1f
	ld   [hl], a                                     ; $5153: $77
	dec  a                                           ; $5154: $3d
	ld   l, l                                        ; $5155: $6d
	ld   a, b                                        ; $5156: $78
	jp   hl                                          ; $5157: $e9


	cp   a                                           ; $5158: $bf
	db   $e3                                         ; $5159: $e3
	jr   c, jr_092_51cc                              ; $515a: $38 $70

	ld   a, [de]                                     ; $515c: $1a
	ld   [hl], b                                     ; $515d: $70
	dec  e                                           ; $515e: $1d
	ld   [hl], b                                     ; $515f: $70
	sbc  h                                           ; $5160: $9c
	or   b                                           ; $5161: $b0
	ld   c, h                                        ; $5162: $4c
	ld   a, b                                        ; $5163: $78
	ld   l, b                                        ; $5164: $68
	ld   hl, sp-$14                                  ; $5165: $f8 $ec
	db   $fc                                         ; $5167: $fc
	db   $f4                                         ; $5168: $f4
	cp   h                                           ; $5169: $bc
	db   $fc                                         ; $516a: $fc
	db   $fc                                         ; $516b: $fc
	db   $fc                                         ; $516c: $fc
	nop                                              ; $516d: $00
	add  b                                           ; $516e: $80
	nop                                              ; $516f: $00
	ld   hl, sp-$20                                  ; $5170: $f8 $e0
	ld   hl, sp-$08                                  ; $5172: $f8 $f8
	ldh  a, [rSVBK]                                  ; $5174: $f0 $70
	ldh  a, [$f0]                                    ; $5176: $f0 $f0
	ldh  a, [$c0]                                    ; $5178: $f0 $c0
	nop                                              ; $517a: $00
	nop                                              ; $517b: $00
	add  b                                           ; $517c: $80
	nop                                              ; $517d: $00
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	ld   a, [bc]                                     ; $5180: $0a
	rrca                                             ; $5181: $0f
	dec  bc                                          ; $5182: $0b
	rrca                                             ; $5183: $0f
	dec  bc                                          ; $5184: $0b
	ld   c, $17                                      ; $5185: $0e $17
	inc  e                                           ; $5187: $1c
	rra                                              ; $5188: $1f
	inc  e                                           ; $5189: $1c
	ccf                                              ; $518a: $3f
	ccf                                              ; $518b: $3f
	ccf                                              ; $518c: $3f
	nop                                              ; $518d: $00
	rlca                                             ; $518e: $07
	nop                                              ; $518f: $00
	rra                                              ; $5190: $1f
	rlca                                             ; $5191: $07
	rra                                              ; $5192: $1f
	rra                                              ; $5193: $1f
	dec  b                                           ; $5194: $05
	rlca                                             ; $5195: $07
	rlca                                             ; $5196: $07
	rlca                                             ; $5197: $07
	rlca                                             ; $5198: $07
	ld   bc, $0000                                   ; $5199: $01 $00 $00
	dec  b                                           ; $519c: $05
	nop                                              ; $519d: $00
	add  d                                           ; $519e: $82
	nop                                              ; $519f: $00
	inc  b                                           ; $51a0: $04
	add  a                                           ; $51a1: $87
	ld   [bc], a                                     ; $51a2: $02
	db   $db                                         ; $51a3: $db
	add  c                                           ; $51a4: $81
	push hl                                          ; $51a5: $e5
	add  c                                           ; $51a6: $81
	ei                                               ; $51a7: $fb
	ret  nz                                          ; $51a8: $c0

	ld   a, l                                        ; $51a9: $7d
	ldh  [$fe], a                                    ; $51aa: $e0 $fe
	ldh  [$3f], a                                    ; $51ac: $e0 $3f
	ldh  a, [$1f]                                    ; $51ae: $f0 $1f
	ld   hl, sp-$21                                  ; $51b0: $f8 $df
	ld   sp, hl                                      ; $51b2: $f9
	rst  $38                                         ; $51b3: $ff
	call c, $cedf                                    ; $51b4: $dc $df $ce
	add  a                                           ; $51b7: $87
	cp   $e7                                         ; $51b8: $fe $e7
	ld   sp, hl                                      ; $51ba: $f9
	rrca                                             ; $51bb: $0f
	ld   a, c                                        ; $51bc: $79
	dec  bc                                          ; $51bd: $0b
	ld   sp, hl                                      ; $51be: $f9
	dec  bc                                          ; $51bf: $0b
	db   $10                                         ; $51c0: $10
	rst  $30                                         ; $51c1: $f7
	ld   hl, $42e7                                   ; $51c2: $21 $e7 $42
	jp   z, $9784                                    ; $51c5: $ca $84 $97

	ld   [$1f8f], sp                                 ; $51c8: $08 $8f $1f
	rra                                              ; $51cb: $1f

jr_092_51cc:
	inc  hl                                          ; $51cc: $23
	xor  [hl]                                        ; $51cd: $ae
	ld   b, [hl]                                     ; $51ce: $46
	ld   e, h                                        ; $51cf: $5c
	sbc  h                                           ; $51d0: $9c
	or   b                                           ; $51d1: $b0
	ld   c, h                                        ; $51d2: $4c
	ld   a, b                                        ; $51d3: $78
	ld   l, b                                        ; $51d4: $68
	ld   hl, sp-$14                                  ; $51d5: $f8 $ec
	db   $fc                                         ; $51d7: $fc
	db   $f4                                         ; $51d8: $f4
	cp   h                                           ; $51d9: $bc
	db   $fc                                         ; $51da: $fc
	db   $fc                                         ; $51db: $fc
	sbc  h                                           ; $51dc: $9c
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	ld   a, [bc]                                     ; $51e0: $0a
	rrca                                             ; $51e1: $0f
	dec  bc                                          ; $51e2: $0b
	rrca                                             ; $51e3: $0f
	dec  bc                                          ; $51e4: $0b
	ld   c, $17                                      ; $51e5: $0e $17
	inc  e                                           ; $51e7: $1c
	rra                                              ; $51e8: $1f
	inc  e                                           ; $51e9: $1c
	ld   a, a                                        ; $51ea: $7f
	ccf                                              ; $51eb: $3f
	jr   c, jr_092_51ee                              ; $51ec: $38 $00

jr_092_51ee:
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	inc  b                                           ; $51f0: $04
	add  a                                           ; $51f1: $87
	ld   [bc], a                                     ; $51f2: $02
	db   $db                                         ; $51f3: $db
	add  c                                           ; $51f4: $81
	push hl                                          ; $51f5: $e5
	add  c                                           ; $51f6: $81
	ei                                               ; $51f7: $fb
	ret  nz                                          ; $51f8: $c0

	ld   a, l                                        ; $51f9: $7d
	ldh  [$fe], a                                    ; $51fa: $e0 $fe
	ldh  [$3f], a                                    ; $51fc: $e0 $3f
	jr   nc, jr_092_521f                             ; $51fe: $30 $1f

	ld   [$1c00], sp                                 ; $5200: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $5203: $08 $00 $00
	ld   a, [hl]                                     ; $5206: $7e
	ld   [hl+], a                                    ; $5207: $22
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	add  c                                           ; $520e: $81
	nop                                              ; $520f: $00
	ld   [$1c00], sp                                 ; $5210: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $5213: $08 $00 $00
	ld   a, $1c                                      ; $5216: $3e $1c
	ld   [hl+], a                                    ; $5218: $22
	ld   [hl+], a                                    ; $5219: $22
	ld   a, $1c                                      ; $521a: $3e $1c
	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	add  c                                           ; $521e: $81

jr_092_521f:
	nop                                              ; $521f: $00
	sbc  h                                           ; $5220: $9c
	or   b                                           ; $5221: $b0
	ld   c, h                                        ; $5222: $4c
	ld   a, b                                        ; $5223: $78
	ld   l, b                                        ; $5224: $68
	ld   hl, sp-$14                                  ; $5225: $f8 $ec
	db   $fc                                         ; $5227: $fc
	db   $f4                                         ; $5228: $f4
	cp   h                                           ; $5229: $bc
	db   $fc                                         ; $522a: $fc
	db   $ec                                         ; $522b: $ec
	db   $fc                                         ; $522c: $fc
	nop                                              ; $522d: $00
	ldh  a, [rP1]                                    ; $522e: $f0 $00
	ld   a, [bc]                                     ; $5230: $0a
	rrca                                             ; $5231: $0f
	dec  bc                                          ; $5232: $0b
	rrca                                             ; $5233: $0f
	dec  bc                                          ; $5234: $0b
	ld   c, $37                                      ; $5235: $0e $37
	inc  a                                           ; $5237: $3c
	rra                                              ; $5238: $1f
	ld   e, $3f                                      ; $5239: $1e $3f
	ld   sp, $003f                                   ; $523b: $31 $3f $00
	rrca                                             ; $523e: $0f
	nop                                              ; $523f: $00
	ld   hl, sp-$21                                  ; $5240: $f8 $df
	ld   sp, hl                                      ; $5242: $f9
	rst  $38                                         ; $5243: $ff
	db   $fc                                         ; $5244: $fc
	cp   a                                           ; $5245: $bf
	sbc  $97                                         ; $5246: $de $97
	cp   $e7                                         ; $5248: $fe $e7
	ld   sp, hl                                      ; $524a: $f9
	rrca                                             ; $524b: $0f
	ld   a, c                                        ; $524c: $79
	dec  bc                                          ; $524d: $0b
	ld   sp, hl                                      ; $524e: $f9
	dec  bc                                          ; $524f: $0b
	sbc  h                                           ; $5250: $9c
	or   b                                           ; $5251: $b0
	ld   c, h                                        ; $5252: $4c
	ld   a, b                                        ; $5253: $78
	ld   l, b                                        ; $5254: $68
	ld   hl, sp-$14                                  ; $5255: $f8 $ec
	db   $fc                                         ; $5257: $fc
	db   $f4                                         ; $5258: $f4
	cp   h                                           ; $5259: $bc
	db   $fc                                         ; $525a: $fc
	db   $ec                                         ; $525b: $ec
	sbc  h                                           ; $525c: $9c
	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	ld   a, [bc]                                     ; $5260: $0a
	rrca                                             ; $5261: $0f
	dec  bc                                          ; $5262: $0b
	rrca                                             ; $5263: $0f
	dec  bc                                          ; $5264: $0b
	ld   c, $37                                      ; $5265: $0e $37
	inc  a                                           ; $5267: $3c
	rra                                              ; $5268: $1f
	ld   e, $3f                                      ; $5269: $1e $3f
	ld   sp, $0038                                   ; $526b: $31 $38 $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	ld   [$1c00], sp                                 ; $5270: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $5273: $08 $00 $00
	ld   a, [hl]                                     ; $5276: $7e
	inc  h                                           ; $5277: $24
	jr   jr_092_527a                                 ; $5278: $18 $00

jr_092_527a:
	nop                                              ; $527a: $00
	nop                                              ; $527b: $00
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	add  c                                           ; $527e: $81
	nop                                              ; $527f: $00
	ld   [$1c00], sp                                 ; $5280: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $5283: $08 $00 $00
	ld   a, [hl]                                     ; $5286: $7e
	inc  h                                           ; $5287: $24
	ld   h, [hl]                                     ; $5288: $66
	inc  h                                           ; $5289: $24
	inc  a                                           ; $528a: $3c
	jr   jr_092_528d                                 ; $528b: $18 $00

jr_092_528d:
	nop                                              ; $528d: $00
	add  c                                           ; $528e: $81
	nop                                              ; $528f: $00
	db   $10                                         ; $5290: $10
	rst  $30                                         ; $5291: $f7
	ld   hl, $42e7                                   ; $5292: $21 $e7 $42
	jp   z, $9787                                    ; $5295: $ca $87 $97

	inc  c                                           ; $5298: $0c
	adc  a                                           ; $5299: $8f
	ld   de, $231f                                   ; $529a: $11 $1f $23
	xor  a                                           ; $529d: $af
	ld   b, [hl]                                     ; $529e: $46
	ld   e, [hl]                                     ; $529f: $5e
	adc  h                                           ; $52a0: $8c
	cp   h                                           ; $52a1: $bc
	jr   jr_092_5320                                 ; $52a2: $18 $7c

	jr   c, jr_092_5306                              ; $52a4: $38 $60

	ld   a, b                                        ; $52a6: $78
	ldh  [$be], a                                    ; $52a7: $e0 $be
	ldh  [c], a                                      ; $52a9: $e2
	add  hl, sp                                      ; $52aa: $39
	ld   [hl], c                                     ; $52ab: $71
	jr   jr_092_531e                                 ; $52ac: $18 $70

	jr   jr_092_5320                                 ; $52ae: $18 $70

	sbc  h                                           ; $52b0: $9c
	or   b                                           ; $52b1: $b0
	ld   c, h                                        ; $52b2: $4c
	ld   a, b                                        ; $52b3: $78
	db   $ec                                         ; $52b4: $ec
	db   $fc                                         ; $52b5: $fc
	add  sp, -$08                                    ; $52b6: $e8 $f8
	db   $f4                                         ; $52b8: $f4

jr_092_52b9:
	cp   h                                           ; $52b9: $bc
	db   $fc                                         ; $52ba: $fc
	call z, $f0fc                                    ; $52bb: $cc $fc $f0
	ld   a, h                                        ; $52be: $7c
	jr   jr_092_52b9                                 ; $52bf: $18 $f8

	ld   l, b                                        ; $52c1: $68
	ret  z                                           ; $52c2: $c8

	ret  z                                           ; $52c3: $c8

	ldh  [$e0], a                                    ; $52c4: $e0 $e0
	ret  nz                                          ; $52c6: $c0

	ld   h, b                                        ; $52c7: $60
	ld   [hl], b                                     ; $52c8: $70
	ld   [hl], b                                     ; $52c9: $70
	ret  nz                                          ; $52ca: $c0

	add  b                                           ; $52cb: $80
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	ld   a, [bc]                                     ; $52d0: $0a
	rrca                                             ; $52d1: $0f
	dec  bc                                          ; $52d2: $0b
	rrca                                             ; $52d3: $0f
	dec  sp                                          ; $52d4: $3b
	ld   a, $17                                      ; $52d5: $3e $17
	dec  e                                           ; $52d7: $1d
	rra                                              ; $52d8: $1f
	inc  e                                           ; $52d9: $1c
	ccf                                              ; $52da: $3f
	ld   sp, $073f                                   ; $52db: $31 $3f $07
	rrca                                             ; $52de: $0f
	inc  c                                           ; $52df: $0c
	rrca                                             ; $52e0: $0f
	dec  bc                                          ; $52e1: $0b
	add  hl, bc                                      ; $52e2: $09
	add  hl, bc                                      ; $52e3: $09
	inc  bc                                          ; $52e4: $03
	inc  bc                                          ; $52e5: $03
	ld   bc, $0f03                                   ; $52e6: $01 $03 $0f
	rlca                                             ; $52e9: $07
	ld   bc, $0000                                   ; $52ea: $01 $00 $00
	nop                                              ; $52ed: $00
	add  b                                           ; $52ee: $80
	nop                                              ; $52ef: $00
	inc  b                                           ; $52f0: $04
	add  a                                           ; $52f1: $87

Jump_092_52f2:
	ld   [bc], a                                     ; $52f2: $02
	db   $db                                         ; $52f3: $db
	add  c                                           ; $52f4: $81
	push hl                                          ; $52f5: $e5
	add  c                                           ; $52f6: $81
	ei                                               ; $52f7: $fb
	ret  nz                                          ; $52f8: $c0

	ld   a, l                                        ; $52f9: $7d
	ldh  [$fe], a                                    ; $52fa: $e0 $fe
	ldh  [rIE], a                                    ; $52fc: $e0 $ff
	jr   nc, jr_092_533f                             ; $52fe: $30 $3f

	sbc  b                                           ; $5300: $98
	rra                                              ; $5301: $1f
	adc  c                                           ; $5302: $89
	adc  a                                           ; $5303: $8f
	sbc  h                                           ; $5304: $9c
	add  a                                           ; $5305: $87

jr_092_5306:
	adc  [hl]                                        ; $5306: $8e
	rlca                                             ; $5307: $07
	ld   a, $27                                      ; $5308: $3e $27
	ld   sp, hl                                      ; $530a: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $530b: $cf
	ld   a, c                                        ; $530c: $79
	dec  bc                                          ; $530d: $0b
	ld   a, c                                        ; $530e: $79
	dec  bc                                          ; $530f: $0b
	db   $10                                         ; $5310: $10
	rst  $30                                         ; $5311: $f7
	ld   hl, $42e7                                   ; $5312: $21 $e7 $42
	jp   z, $9787                                    ; $5315: $ca $87 $97

	inc  c                                           ; $5318: $0c
	adc  a                                           ; $5319: $8f
	ld   de, $231f                                   ; $531a: $11 $1f $23
	xor  [hl]                                        ; $531d: $ae

jr_092_531e:
	ld   b, a                                        ; $531e: $47
	ld   e, l                                        ; $531f: $5d

jr_092_5320:
	adc  a                                           ; $5320: $8f
	cp   a                                           ; $5321: $bf
	inc  e                                           ; $5322: $1c
	ld   a, h                                        ; $5323: $7c
	jr   c, jr_092_538e                              ; $5324: $38 $68

	ld   a, b                                        ; $5326: $78
	add  sp, -$42                                    ; $5327: $e8 $be
	ldh  [c], a                                      ; $5329: $e2
	add  hl, sp                                      ; $532a: $39
	ld   [hl], c                                     ; $532b: $71
	jr   jr_092_539e                                 ; $532c: $18 $70

	jr   jr_092_53a0                                 ; $532e: $18 $70

	sbc  h                                           ; $5330: $9c
	or   b                                           ; $5331: $b0
	ld   c, h                                        ; $5332: $4c
	ld   a, b                                        ; $5333: $78
	db   $ec                                         ; $5334: $ec
	db   $fc                                         ; $5335: $fc
	add  sp, -$08                                    ; $5336: $e8 $f8
	db   $f4                                         ; $5338: $f4
	cp   h                                           ; $5339: $bc
	db   $fc                                         ; $533a: $fc
	inc  c                                           ; $533b: $0c
	db   $fc                                         ; $533c: $fc
	nop                                              ; $533d: $00
	db   $fc                                         ; $533e: $fc

jr_092_533f:
	ldh  [$f8], a                                    ; $533f: $e0 $f8
	ld   hl, sp-$38                                  ; $5341: $f8 $c8
	ret  z                                           ; $5343: $c8

	ldh  [$e0], a                                    ; $5344: $e0 $e0
	ret  nz                                          ; $5346: $c0

	ld   h, b                                        ; $5347: $60
	ld   [hl], b                                     ; $5348: $70
	ld   [hl], b                                     ; $5349: $70
	ldh  [$c0], a                                    ; $534a: $e0 $c0
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	ld   a, [bc]                                     ; $5350: $0a
	rrca                                             ; $5351: $0f
	dec  bc                                          ; $5352: $0b
	rrca                                             ; $5353: $0f
	dec  sp                                          ; $5354: $3b
	ld   a, $17                                      ; $5355: $3e $17
	dec  e                                           ; $5357: $1d
	rra                                              ; $5358: $1f
	inc  e                                           ; $5359: $1c
	ccf                                              ; $535a: $3f
	jr   nc, jr_092_539c                             ; $535b: $30 $3f

	nop                                              ; $535d: $00
	rrca                                             ; $535e: $0f
	inc  bc                                          ; $535f: $03
	rrca                                             ; $5360: $0f
	rrca                                             ; $5361: $0f
	add  hl, bc                                      ; $5362: $09
	add  hl, bc                                      ; $5363: $09
	inc  bc                                          ; $5364: $03
	inc  bc                                          ; $5365: $03
	ld   bc, $0f03                                   ; $5366: $01 $03 $0f
	rlca                                             ; $5369: $07
	inc  bc                                          ; $536a: $03
	ld   bc, $0000                                   ; $536b: $01 $00 $00
	add  b                                           ; $536e: $80
	nop                                              ; $536f: $00
	inc  b                                           ; $5370: $04
	add  a                                           ; $5371: $87
	ld   [bc], a                                     ; $5372: $02
	db   $db                                         ; $5373: $db
	add  c                                           ; $5374: $81
	push hl                                          ; $5375: $e5
	add  c                                           ; $5376: $81
	ei                                               ; $5377: $fb
	ret  nz                                          ; $5378: $c0

	ld   a, l                                        ; $5379: $7d
	ldh  [$3e], a                                    ; $537a: $e0 $3e
	ldh  [$3f], a                                    ; $537c: $e0 $3f
	ldh  a, [rIE]                                    ; $537e: $f0 $ff
	ld   hl, sp-$01                                  ; $5380: $f8 $ff
	sbc  c                                           ; $5382: $99
	sbc  a                                           ; $5383: $9f
	adc  h                                           ; $5384: $8c
	add  a                                           ; $5385: $87
	adc  [hl]                                        ; $5386: $8e
	rlca                                             ; $5387: $07
	ld   a, $27                                      ; $5388: $3e $27
	ld   sp, hl                                      ; $538a: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $538b: $cf
	ld   a, c                                        ; $538c: $79
	dec  bc                                          ; $538d: $0b

jr_092_538e:
	ld   a, c                                        ; $538e: $79
	dec  bc                                          ; $538f: $0b
	sbc  h                                           ; $5390: $9c
	or   b                                           ; $5391: $b0
	ld   c, h                                        ; $5392: $4c
	ld   a, b                                        ; $5393: $78
	db   $ec                                         ; $5394: $ec
	db   $fc                                         ; $5395: $fc
	add  sp, -$08                                    ; $5396: $e8 $f8
	db   $f4                                         ; $5398: $f4
	cp   h                                           ; $5399: $bc
	db   $fc                                         ; $539a: $fc
	inc  c                                           ; $539b: $0c

jr_092_539c:
	sbc  h                                           ; $539c: $9c
	nop                                              ; $539d: $00

jr_092_539e:
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00

jr_092_53a0:
	ld   a, [bc]                                     ; $53a0: $0a
	rrca                                             ; $53a1: $0f
	dec  bc                                          ; $53a2: $0b
	rrca                                             ; $53a3: $0f
	dec  sp                                          ; $53a4: $3b
	ld   a, $17                                      ; $53a5: $3e $17
	dec  e                                           ; $53a7: $1d
	rra                                              ; $53a8: $1f
	inc  e                                           ; $53a9: $1c
	ccf                                              ; $53aa: $3f
	jr   nc, jr_092_53e5                             ; $53ab: $30 $38

	nop                                              ; $53ad: $00
	nop                                              ; $53ae: $00
	nop                                              ; $53af: $00
	ld   [$1c00], sp                                 ; $53b0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $53b3: $08 $00 $00
	inc  a                                           ; $53b6: $3c
	inc  h                                           ; $53b7: $24
	ld   a, [hl]                                     ; $53b8: $7e
	ld   b, d                                        ; $53b9: $42
	ld   h, [hl]                                     ; $53ba: $66
	ld   b, d                                        ; $53bb: $42
	ld   b, d                                        ; $53bc: $42
	ld   b, d                                        ; $53bd: $42
	cp   l                                           ; $53be: $bd
	inc  h                                           ; $53bf: $24
	ld   [$1c00], sp                                 ; $53c0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $53c3: $08 $00 $00
	nop                                              ; $53c6: $00
	nop                                              ; $53c7: $00
	inc  a                                           ; $53c8: $3c
	inc  h                                           ; $53c9: $24
	nop                                              ; $53ca: $00
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	add  c                                           ; $53ce: $81
	nop                                              ; $53cf: $00
	adc  h                                           ; $53d0: $8c
	cp   h                                           ; $53d1: $bc
	jr   jr_092_5450                                 ; $53d2: $18 $7c

	inc  a                                           ; $53d4: $3c
	ld   h, h                                        ; $53d5: $64
	ld   a, [hl]                                     ; $53d6: $7e
	db   $e4                                         ; $53d7: $e4
	cp   a                                           ; $53d8: $bf
	ldh  [c], a                                      ; $53d9: $e2
	add  hl, sp                                      ; $53da: $39
	ld   [hl], c                                     ; $53db: $71
	ld   a, [de]                                     ; $53dc: $1a
	ld   [hl], b                                     ; $53dd: $70
	dec  e                                           ; $53de: $1d
	ld   [hl], b                                     ; $53df: $70
	sbc  h                                           ; $53e0: $9c
	or   b                                           ; $53e1: $b0
	ld   c, h                                        ; $53e2: $4c
	ld   a, b                                        ; $53e3: $78
	ld   l, b                                        ; $53e4: $68

jr_092_53e5:
	ld   hl, sp+$68                                  ; $53e5: $f8 $68
	ld   hl, sp-$0c                                  ; $53e7: $f8 $f4
	sbc  h                                           ; $53e9: $9c
	db   $fc                                         ; $53ea: $fc

jr_092_53eb:
	db   $ec                                         ; $53eb: $ec
	db   $fc                                         ; $53ec: $fc
	jr   nc, jr_092_53eb                             ; $53ed: $30 $fc

	adc  b                                           ; $53ef: $88
	ld   hl, sp+$70                                  ; $53f0: $f8 $70
	ld   l, b                                        ; $53f2: $68
	ld   c, b                                        ; $53f3: $48
	ld   h, b                                        ; $53f4: $60
	ld   h, b                                        ; $53f5: $60
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	db   $10                                         ; $53f8: $10
	db   $10                                         ; $53f9: $10
	ldh  [$c0], a                                    ; $53fa: $e0 $c0
	and  b                                           ; $53fc: $a0
	nop                                              ; $53fd: $00
	ld   b, b                                        ; $53fe: $40
	nop                                              ; $53ff: $00
	ld   a, [bc]                                     ; $5400: $0a
	rrca                                             ; $5401: $0f
	dec  bc                                          ; $5402: $0b
	rrca                                             ; $5403: $0f
	dec  bc                                          ; $5404: $0b
	ld   c, $17                                      ; $5405: $0e $17
	inc  e                                           ; $5407: $1c
	rra                                              ; $5408: $1f
	add  hl, de                                      ; $5409: $19
	ccf                                              ; $540a: $3f
	scf                                              ; $540b: $37
	ccf                                              ; $540c: $3f
	inc  c                                           ; $540d: $0c
	ccf                                              ; $540e: $3f
	add  hl, de                                      ; $540f: $19
	rra                                              ; $5410: $1f
	ld   c, $16                                      ; $5411: $0e $16
	ld   [de], a                                     ; $5413: $12
	ld   b, $06                                      ; $5414: $06 $06
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	ld   [$0708], sp                                 ; $5418: $08 $08 $07
	inc  bc                                          ; $541b: $03
	dec  b                                           ; $541c: $05
	nop                                              ; $541d: $00
	add  d                                           ; $541e: $82
	nop                                              ; $541f: $00
	inc  b                                           ; $5420: $04
	add  a                                           ; $5421: $87
	ld   [bc], a                                     ; $5422: $02
	db   $db                                         ; $5423: $db
	add  c                                           ; $5424: $81
	push hl                                          ; $5425: $e5
	add  c                                           ; $5426: $81
	ei                                               ; $5427: $fb
	ret  nz                                          ; $5428: $c0

	db   $fd                                         ; $5429: $fd
	ldh  [$3e], a                                    ; $542a: $e0 $3e
	ldh  [$3f], a                                    ; $542c: $e0 $3f
	ldh  a, [rIE]                                    ; $542e: $f0 $ff
	jr   jr_092_5451                                 ; $5430: $18 $1f

	add  hl, bc                                      ; $5432: $09
	rrca                                             ; $5433: $0f
	inc  e                                           ; $5434: $1c
	rrca                                             ; $5435: $0f
	ld   e, $17                                      ; $5436: $1e $17
	ld   a, [hl]                                     ; $5438: $7e
	daa                                              ; $5439: $27
	ld   sp, hl                                      ; $543a: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $543b: $cf
	ld   a, c                                        ; $543c: $79
	dec  bc                                          ; $543d: $0b
	ld   sp, hl                                      ; $543e: $f9
	dec  bc                                          ; $543f: $0b
	adc  h                                           ; $5440: $8c
	cp   h                                           ; $5441: $bc
	dec  de                                          ; $5442: $1b
	ld   a, a                                        ; $5443: $7f
	inc  a                                           ; $5444: $3c
	ld   h, h                                        ; $5445: $64
	ld   a, [hl]                                     ; $5446: $7e
	db   $e4                                         ; $5447: $e4
	cp   a                                           ; $5448: $bf
	ldh  [c], a                                      ; $5449: $e2
	add  hl, sp                                      ; $544a: $39
	ld   [hl], c                                     ; $544b: $71
	ld   a, [de]                                     ; $544c: $1a
	ld   [hl], b                                     ; $544d: $70
	dec  e                                           ; $544e: $1d
	ld   [hl], b                                     ; $544f: $70

jr_092_5450:
	sbc  h                                           ; $5450: $9c

jr_092_5451:
	or   b                                           ; $5451: $b0
	ld   c, h                                        ; $5452: $4c
	ld   a, b                                        ; $5453: $78
	ld   l, b                                        ; $5454: $68
	ld   hl, sp+$68                                  ; $5455: $f8 $68
	ld   hl, sp-$0c                                  ; $5457: $f8 $f4
	sbc  h                                           ; $5459: $9c
	db   $fc                                         ; $545a: $fc
	db   $ec                                         ; $545b: $ec
	db   $fc                                         ; $545c: $fc
	jr   nc, jr_092_549b                             ; $545d: $30 $3c

	ld   [$000c], sp                                 ; $545f: $08 $0c $00
	add  b                                           ; $5462: $80
	nop                                              ; $5463: $00
	ldh  a, [$f0]                                    ; $5464: $f0 $f0
	ld   l, b                                        ; $5466: $68
	ld   l, b                                        ; $5467: $68
	ld   [hl], b                                     ; $5468: $70
	ld   d, b                                        ; $5469: $50
	ldh  [$e0], a                                    ; $546a: $e0 $e0
	and  b                                           ; $546c: $a0
	nop                                              ; $546d: $00
	ld   b, b                                        ; $546e: $40
	nop                                              ; $546f: $00
	jr   nc, jr_092_5472                             ; $5470: $30 $00

jr_092_5472:
	inc  bc                                          ; $5472: $03
	ld   bc, $0e0e                                   ; $5473: $01 $0e $0e
	ld   d, $16                                      ; $5476: $16 $16
	ld   c, $0a                                      ; $5478: $0e $0a
	rlca                                             ; $547a: $07
	rlca                                             ; $547b: $07
	dec  b                                           ; $547c: $05
	nop                                              ; $547d: $00
	add  d                                           ; $547e: $82
	nop                                              ; $547f: $00
	inc  b                                           ; $5480: $04
	add  a                                           ; $5481: $87
	ld   [bc], a                                     ; $5482: $02
	db   $db                                         ; $5483: $db
	add  c                                           ; $5484: $81
	push hl                                          ; $5485: $e5
	add  c                                           ; $5486: $81
	ei                                               ; $5487: $fb
	ret  nz                                          ; $5488: $c0

	db   $fd                                         ; $5489: $fd
	ldh  [$3e], a                                    ; $548a: $e0 $3e
	jr   nz, jr_092_54cd                             ; $548c: $20 $3f

	jr   nc, jr_092_54cf                             ; $548e: $30 $3f

	jr   @+$21                                       ; $5490: $18 $1f

	ld   sp, hl                                      ; $5492: $f9
	rst  $28                                         ; $5493: $ef
	inc  e                                           ; $5494: $1c
	rrca                                             ; $5495: $0f
	ld   e, $17                                      ; $5496: $1e $17
	ld   a, [hl]                                     ; $5498: $7e
	daa                                              ; $5499: $27
	ld   sp, hl                                      ; $549a: $f9

jr_092_549b:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $549b: $cf
	ld   a, c                                        ; $549c: $79
	dec  bc                                          ; $549d: $0b
	ld   sp, hl                                      ; $549e: $f9
	dec  bc                                          ; $549f: $0b
	sbc  h                                           ; $54a0: $9c
	or   b                                           ; $54a1: $b0
	ld   c, h                                        ; $54a2: $4c
	ld   a, b                                        ; $54a3: $78
	ld   l, b                                        ; $54a4: $68
	ld   hl, sp+$68                                  ; $54a5: $f8 $68
	ld   hl, sp-$0c                                  ; $54a7: $f8 $f4
	sbc  h                                           ; $54a9: $9c
	db   $fc                                         ; $54aa: $fc
	db   $ec                                         ; $54ab: $ec
	db   $fc                                         ; $54ac: $fc
	jr   nc, jr_092_54bb                             ; $54ad: $30 $0c

	ld   [rRAMG], sp                                 ; $54af: $08 $00 $00
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	add  b                                           ; $54b4: $80
	nop                                              ; $54b5: $00
	ld   hl, sp-$08                                  ; $54b6: $f8 $f8
	ld   hl, sp-$10                                  ; $54b8: $f8 $f0
	nop                                              ; $54ba: $00

jr_092_54bb:
	nop                                              ; $54bb: $00
	and  b                                           ; $54bc: $a0
	nop                                              ; $54bd: $00
	ld   b, b                                        ; $54be: $40
	nop                                              ; $54bf: $00
	ld   [$1c00], sp                                 ; $54c0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $54c3: $08 $00 $00
	jr   jr_092_54c8                                 ; $54c6: $18 $00

jr_092_54c8:
	inc  h                                           ; $54c8: $24
	inc  h                                           ; $54c9: $24
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00

jr_092_54cd:
	nop                                              ; $54cd: $00
	add  c                                           ; $54ce: $81

jr_092_54cf:
	nop                                              ; $54cf: $00
	ld   [$1c00], sp                                 ; $54d0: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $54d3: $08 $00 $00
	inc  a                                           ; $54d6: $3c
	inc  h                                           ; $54d7: $24
	ld   a, [hl]                                     ; $54d8: $7e
	ld   b, d                                        ; $54d9: $42
	ld   h, [hl]                                     ; $54da: $66
	ld   b, d                                        ; $54db: $42
	ld   b, d                                        ; $54dc: $42
	ld   b, d                                        ; $54dd: $42
	cp   l                                           ; $54de: $bd
	nop                                              ; $54df: $00
	db   $10                                         ; $54e0: $10
	rst  $30                                         ; $54e1: $f7
	ld   hl, $42e7                                   ; $54e2: $21 $e7 $42
	jp   z, $9585                                    ; $54e5: $ca $85 $95

	ld   c, $8f                                      ; $54e8: $0e $8f
	add  hl, de                                      ; $54ea: $19
	rra                                              ; $54eb: $1f
	inc  hl                                          ; $54ec: $23
	xor  [hl]                                        ; $54ed: $ae
	ld   b, [hl]                                     ; $54ee: $46
	ld   e, h                                        ; $54ef: $5c
	adc  l                                           ; $54f0: $8d
	cp   b                                           ; $54f1: $b8
	rra                                              ; $54f2: $1f
	ld   [hl], e                                     ; $54f3: $73
	ccf                                              ; $54f4: $3f
	ld   h, a                                        ; $54f5: $67
	ld   a, l                                        ; $54f6: $7d
	db   $ed                                         ; $54f7: $ed
	cp   a                                           ; $54f8: $bf
	db   $e3                                         ; $54f9: $e3
	jr   c, jr_092_556c                              ; $54fa: $38 $70

	dec  e                                           ; $54fc: $1d
	ld   [hl], b                                     ; $54fd: $70
	ld   a, [de]                                     ; $54fe: $1a
	ld   [hl], b                                     ; $54ff: $70
	sbc  h                                           ; $5500: $9c
	or   b                                           ; $5501: $b0
	ld   c, h                                        ; $5502: $4c
	ld   a, b                                        ; $5503: $78
	ld   l, b                                        ; $5504: $68
	ld   hl, sp-$18                                  ; $5505: $f8 $e8
	ld   hl, sp-$0c                                  ; $5507: $f8 $f4
	cp   h                                           ; $5509: $bc
	sbc  h                                           ; $550a: $9c
	inc  c                                           ; $550b: $0c
	ld   a, b                                        ; $550c: $78
	jr   nc, jr_092_5517                             ; $550d: $30 $08

	ld   [$e0f0], sp                                 ; $550f: $08 $f0 $e0
	ldh  a, [$f8]                                    ; $5512: $f0 $f8
	ld   a, b                                        ; $5514: $78
	ld   e, b                                        ; $5515: $58
	or   b                                           ; $5516: $b0

jr_092_5517:
	ld   [hl], b                                     ; $5517: $70
	ldh  a, [$f0]                                    ; $5518: $f0 $f0
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	ld   d, b                                        ; $551c: $50
	nop                                              ; $551d: $00
	and  b                                           ; $551e: $a0
	nop                                              ; $551f: $00
	ld   a, [bc]                                     ; $5520: $0a
	rrca                                             ; $5521: $0f
	dec  bc                                          ; $5522: $0b
	rrca                                             ; $5523: $0f
	dec  bc                                          ; $5524: $0b
	ld   c, $17                                      ; $5525: $0e $17
	rra                                              ; $5527: $1f
	rra                                              ; $5528: $1f
	inc  e                                           ; $5529: $1c
	add  hl, sp                                      ; $552a: $39
	jr   nc, jr_092_5544                             ; $552b: $30 $17

	ld   b, $08                                      ; $552d: $06 $08
	ld   [$0307], sp                                 ; $552f: $08 $07 $03
	rrca                                             ; $5532: $0f
	rra                                              ; $5533: $1f
	dec  e                                           ; $5534: $1d
	dec  e                                           ; $5535: $1d
	ld   b, $05                                      ; $5536: $06 $05
	rrca                                             ; $5538: $0f
	rlca                                             ; $5539: $07
	nop                                              ; $553a: $00
	nop                                              ; $553b: $00
	dec  b                                           ; $553c: $05
	nop                                              ; $553d: $00
	adc  d                                           ; $553e: $8a
	nop                                              ; $553f: $00
	inc  b                                           ; $5540: $04
	add  a                                           ; $5541: $87
	ld   [bc], a                                     ; $5542: $02
	db   $db                                         ; $5543: $db

jr_092_5544:
	add  c                                           ; $5544: $81
	push hl                                          ; $5545: $e5
	add  c                                           ; $5546: $81
	ei                                               ; $5547: $fb
	ret  nz                                          ; $5548: $c0

	db   $fd                                         ; $5549: $fd
	ldh  [$3e], a                                    ; $554a: $e0 $3e
	ldh  [$3f], a                                    ; $554c: $e0 $3f
	ld   [hl], b                                     ; $554e: $70
	rra                                              ; $554f: $1f
	ld   hl, sp-$71                                  ; $5550: $f8 $8f
	ld   sp, hl                                      ; $5552: $f9
	rst  $28                                         ; $5553: $ef
	db   $fc                                         ; $5554: $fc
	ld   [hl], a                                     ; $5555: $77
	sbc  $df                                         ; $5556: $de $df
	cp   $e7                                         ; $5558: $fe $e7
	ld   sp, hl                                      ; $555a: $f9
	rrca                                             ; $555b: $0f
	ld   a, c                                        ; $555c: $79
	dec  bc                                          ; $555d: $0b
	ld   sp, hl                                      ; $555e: $f9
	dec  bc                                          ; $555f: $0b
	adc  l                                           ; $5560: $8d
	cp   b                                           ; $5561: $b8
	rra                                              ; $5562: $1f
	ld   [hl], c                                     ; $5563: $71
	ccf                                              ; $5564: $3f
	ld   h, e                                        ; $5565: $63
	ld   a, l                                        ; $5566: $7d
	db   $ed                                         ; $5567: $ed
	cp   a                                           ; $5568: $bf
	db   $e3                                         ; $5569: $e3
	jr   c, jr_092_55dc                              ; $556a: $38 $70

jr_092_556c:
	dec  e                                           ; $556c: $1d
	ld   [hl], b                                     ; $556d: $70
	ld   a, [de]                                     ; $556e: $1a
	ld   [hl], b                                     ; $556f: $70
	sbc  h                                           ; $5570: $9c
	or   b                                           ; $5571: $b0
	ld   c, h                                        ; $5572: $4c
	ld   a, b                                        ; $5573: $78
	ld   l, b                                        ; $5574: $68
	ld   hl, sp-$18                                  ; $5575: $f8 $e8
	ld   hl, sp-$0c                                  ; $5577: $f8 $f4
	cp   h                                           ; $5579: $bc
	sbc  h                                           ; $557a: $9c
	inc  c                                           ; $557b: $0c
	ld   [rROMB1], sp                                 ; $557c: $08 $00 $30
	nop                                              ; $557f: $00
	ret  z                                           ; $5580: $c8

	nop                                              ; $5581: $00
	ldh  a, [$e8]                                    ; $5582: $f0 $e8
	ld   hl, sp-$10                                  ; $5584: $f8 $f0
	cp   b                                           ; $5586: $b8
	ld   a, b                                        ; $5587: $78
	ldh  a, [$f0]                                    ; $5588: $f0 $f0
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
	ld   d, b                                        ; $558c: $50
	nop                                              ; $558d: $00
	and  b                                           ; $558e: $a0
	nop                                              ; $558f: $00
	ld   a, [bc]                                     ; $5590: $0a
	rrca                                             ; $5591: $0f
	dec  bc                                          ; $5592: $0b
	rrca                                             ; $5593: $0f
	dec  bc                                          ; $5594: $0b
	ld   c, $17                                      ; $5595: $0e $17
	rra                                              ; $5597: $1f
	rra                                              ; $5598: $1f
	inc  e                                           ; $5599: $1c
	jr   c, jr_092_55cc                              ; $559a: $38 $30

	stop                                             ; $559c: $10 $00
	ld   b, $00                                      ; $559e: $06 $00
	add  hl, bc                                      ; $55a0: $09
	nop                                              ; $55a1: $00
	rrca                                             ; $55a2: $0f
	rlca                                             ; $55a3: $07
	rra                                              ; $55a4: $1f
	rrca                                             ; $55a5: $0f
	ld   d, $15                                      ; $55a6: $16 $15
	rrca                                             ; $55a8: $0f
	rlca                                             ; $55a9: $07
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
	dec  b                                           ; $55ac: $05
	nop                                              ; $55ad: $00
	adc  d                                           ; $55ae: $8a
	nop                                              ; $55af: $00
	inc  b                                           ; $55b0: $04
	add  a                                           ; $55b1: $87
	ld   [bc], a                                     ; $55b2: $02
	db   $db                                         ; $55b3: $db
	add  c                                           ; $55b4: $81
	push hl                                          ; $55b5: $e5
	add  c                                           ; $55b6: $81
	ei                                               ; $55b7: $fb
	ret  nz                                          ; $55b8: $c0

	db   $fd                                         ; $55b9: $fd
	ldh  [$3e], a                                    ; $55ba: $e0 $3e
	ld   h, b                                        ; $55bc: $60
	ccf                                              ; $55bd: $3f
	ld   [hl], b                                     ; $55be: $70
	rra                                              ; $55bf: $1f
	ld   hl, sp+$0f                                  ; $55c0: $f8 $0f
	ld   sp, hl                                      ; $55c2: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55c3: $cf
	db   $fc                                         ; $55c4: $fc
	rst  $20                                         ; $55c5: $e7
	sbc  $df                                         ; $55c6: $de $df
	cp   $e7                                         ; $55c8: $fe $e7
	ld   sp, hl                                      ; $55ca: $f9
	rrca                                             ; $55cb: $0f

jr_092_55cc:
	ld   a, c                                        ; $55cc: $79
	dec  bc                                          ; $55cd: $0b
	ld   sp, hl                                      ; $55ce: $f9
	dec  bc                                          ; $55cf: $0b
	adc  h                                           ; $55d0: $8c
	cp   b                                           ; $55d1: $b8
	inc  e                                           ; $55d2: $1c
	ld   [hl], b                                     ; $55d3: $70
	ccf                                              ; $55d4: $3f
	ld   h, h                                        ; $55d5: $64
	ld   a, a                                        ; $55d6: $7f
	db   $e3                                         ; $55d7: $e3
	cp   l                                           ; $55d8: $bd
	pop  hl                                          ; $55d9: $e1
	jr   c, @+$72                                    ; $55da: $38 $70

jr_092_55dc:
	dec  e                                           ; $55dc: $1d
	ld   [hl], b                                     ; $55dd: $70
	ld   a, [de]                                     ; $55de: $1a
	ld   [hl], b                                     ; $55df: $70
	sbc  h                                           ; $55e0: $9c
	or   b                                           ; $55e1: $b0
	ld   c, h                                        ; $55e2: $4c
	ld   a, b                                        ; $55e3: $78
	ld   l, b                                        ; $55e4: $68
	ld   hl, sp-$18                                  ; $55e5: $f8 $e8
	ld   hl, sp-$0c                                  ; $55e7: $f8 $f4
	cp   h                                           ; $55e9: $bc
	adc  h                                           ; $55ea: $8c
	inc  c                                           ; $55eb: $0c
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	jr   c, jr_092_55f4                              ; $55f2: $38 $00

jr_092_55f4:
	add  b                                           ; $55f4: $80
	nop                                              ; $55f5: $00
	ld   hl, sp-$08                                  ; $55f6: $f8 $f8
	ld   hl, sp-$10                                  ; $55f8: $f8 $f0
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	ld   d, b                                        ; $55fc: $50
	nop                                              ; $55fd: $00
	and  b                                           ; $55fe: $a0
	nop                                              ; $55ff: $00
	ld   a, [bc]                                     ; $5600: $0a
	rrca                                             ; $5601: $0f
	dec  bc                                          ; $5602: $0b
	rrca                                             ; $5603: $0f
	dec  bc                                          ; $5604: $0b
	ld   c, $17                                      ; $5605: $0e $17
	rra                                              ; $5607: $1f
	rra                                              ; $5608: $1f
	inc  e                                           ; $5609: $1c
	jr   c, @+$32                                    ; $560a: $38 $30

	stop                                             ; $560c: $10 $00
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00
	nop                                              ; $5610: $00
	nop                                              ; $5611: $00
	ld   c, $00                                      ; $5612: $0e $00
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	rrca                                             ; $5616: $0f
	rrca                                             ; $5617: $0f
	rrca                                             ; $5618: $0f
	rlca                                             ; $5619: $07
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	dec  b                                           ; $561c: $05
	nop                                              ; $561d: $00
	adc  d                                           ; $561e: $8a
	nop                                              ; $561f: $00
	inc  b                                           ; $5620: $04
	add  a                                           ; $5621: $87
	ld   [bc], a                                     ; $5622: $02
	db   $db                                         ; $5623: $db
	add  c                                           ; $5624: $81
	push hl                                          ; $5625: $e5
	add  c                                           ; $5626: $81
	ei                                               ; $5627: $fb
	ret  nz                                          ; $5628: $c0

	db   $fd                                         ; $5629: $fd
	ldh  [$3e], a                                    ; $562a: $e0 $3e
	ld   h, b                                        ; $562c: $60
	ccf                                              ; $562d: $3f
	jr   nc, jr_092_564f                             ; $562e: $30 $1f

	ld   [$1c00], sp                                 ; $5630: $08 $00 $1c
	ld   [rRAMG], sp                                 ; $5633: $08 $00 $00
	ld   a, $1c                                      ; $5636: $3e $1c
	ld   h, $24                                      ; $5638: $26 $24
	inc  a                                           ; $563a: $3c
	jr   jr_092_563d                                 ; $563b: $18 $00

jr_092_563d:
	nop                                              ; $563d: $00
	add  c                                           ; $563e: $81
	nop                                              ; $563f: $00
	db   $10                                         ; $5640: $10
	rst  $30                                         ; $5641: $f7
	ld   hl, $42e7                                   ; $5642: $21 $e7 $42
	jp   z, $9585                                    ; $5645: $ca $85 $95

	ld   c, $8f                                      ; $5648: $0e $8f
	ld   de, $231f                                   ; $564a: $11 $1f $23
	xor  [hl]                                        ; $564d: $ae
	ld   b, [hl]                                     ; $564e: $46

jr_092_564f:
	ld   e, h                                        ; $564f: $5c
	sbc  h                                           ; $5650: $9c
	or   b                                           ; $5651: $b0
	ld   c, h                                        ; $5652: $4c
	ld   a, b                                        ; $5653: $78
	ld   l, b                                        ; $5654: $68
	ld   hl, sp-$14                                  ; $5655: $f8 $ec
	db   $fc                                         ; $5657: $fc
	db   $f4                                         ; $5658: $f4
	cp   h                                           ; $5659: $bc
	db   $fc                                         ; $565a: $fc
	inc  c                                           ; $565b: $0c
	sbc  h                                           ; $565c: $9c
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	inc  c                                           ; $5664: $0c
	nop                                              ; $5665: $00
	ld   hl, sp-$08                                  ; $5666: $f8 $f8
	ld   hl, sp-$10                                  ; $5668: $f8 $f0
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	ld   a, [bc]                                     ; $5670: $0a
	rrca                                             ; $5671: $0f
	dec  bc                                          ; $5672: $0b
	rrca                                             ; $5673: $0f
	dec  bc                                          ; $5674: $0b
	ld   c, $37                                      ; $5675: $0e $37
	ccf                                              ; $5677: $3f
	rra                                              ; $5678: $1f
	inc  e                                           ; $5679: $1c
	inc  a                                           ; $567a: $3c
	jr   nc, @+$3a                                   ; $567b: $30 $38

	nop                                              ; $567d: $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	jr   jr_092_5686                                 ; $5684: $18 $00

jr_092_5686:
	rrca                                             ; $5686: $0f
	rrca                                             ; $5687: $0f
	rrca                                             ; $5688: $0f
	rlca                                             ; $5689: $07
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
	add  b                                           ; $568e: $80
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	ld   [hl], c                                     ; $5691: $71
	nop                                              ; $5692: $00
	rst  ToBoot                                         ; $5693: $c7
	ld   bc, $020f                                   ; $5694: $01 $0f $02
	ccf                                              ; $5697: $3f
	inc  b                                           ; $5698: $04
	ld   a, a                                        ; $5699: $7f
	inc  b                                           ; $569a: $04
	rst  $38                                         ; $569b: $ff
	ld   [$10fb], sp                                 ; $569c: $08 $fb $10
	rst  $30                                         ; $569f: $f7
	dec  hl                                          ; $56a0: $2b
	rst  $38                                         ; $56a1: $ff
	cp   [hl]                                        ; $56a2: $be
	ldh  [$3e], a                                    ; $56a3: $e0 $3e
	ldh  a, [$3c]                                    ; $56a5: $f0 $3c
	ldh  a, [$5c]                                    ; $56a7: $f0 $5c
	ldh  a, [$5c]                                    ; $56a9: $f0 $5c
	ldh  a, [$bc]                                    ; $56ab: $f0 $bc
	ldh  [$b8], a                                    ; $56ad: $e0 $b8
	ldh  [$50], a                                    ; $56af: $e0 $50
	ld   hl, sp+$70                                  ; $56b1: $f8 $70
	ld   [de], a                                     ; $56b3: $12
	jr   nc, jr_092_56cd                             ; $56b4: $30 $17

	ld   a, [de]                                     ; $56b6: $1a
	rrca                                             ; $56b7: $0f
	add  hl, de                                      ; $56b8: $19
	rrca                                             ; $56b9: $0f
	jr   jr_092_56ca                                 ; $56ba: $18 $0e

	jr   jr_092_56cb                                 ; $56bc: $18 $0d

	db   $10                                         ; $56be: $10
	ld   e, $02                                      ; $56bf: $1e $02
	add  d                                           ; $56c1: $82
	ld   [bc], a                                     ; $56c2: $02
	ld   [bc], a                                     ; $56c3: $02
	ld   [bc], a                                     ; $56c4: $02

jr_092_56c5:
	adc  [hl]                                        ; $56c5: $8e
	ld   [bc], a                                     ; $56c6: $02
	add  $82                                         ; $56c7: $c6 $82
	ldh  a, [c]                                      ; $56c9: $f2

jr_092_56ca:
	ld   b, d                                        ; $56ca: $42

jr_092_56cb:
	ld   a, d                                        ; $56cb: $7a
	ld   [hl+], a                                    ; $56cc: $22

jr_092_56cd:
	ld   a, $12                                      ; $56cd: $3e $12
	ld   e, $21                                      ; $56cf: $1e $21
	rst  $28                                         ; $56d1: $ef
	ld   b, d                                        ; $56d2: $42
	adc  $84                                         ; $56d3: $ce $84
	sub  l                                           ; $56d5: $95
	rrca                                             ; $56d6: $0f
	cpl                                              ; $56d7: $2f
	add  hl, de                                      ; $56d8: $19
	rra                                              ; $56d9: $1f
	inc  hl                                          ; $56da: $23
	ld   a, $47                                      ; $56db: $3e $47
	ld   e, a                                        ; $56dd: $5f
	adc  a                                           ; $56de: $8f
	cp   a                                           ; $56df: $bf
	jr   c, @+$62                                    ; $56e0: $38 $60

	sbc  b                                           ; $56e2: $98
	ldh  a, [$d0]                                    ; $56e3: $f0 $d0
	ldh  a, [$d0]                                    ; $56e5: $f0 $d0
	ldh  a, [$e8]                                    ; $56e7: $f0 $e8
	ld   a, b                                        ; $56e9: $78
	cp   b                                           ; $56ea: $b8
	jr   jr_092_56c5                                 ; $56eb: $18 $d8

	add  b                                           ; $56ed: $80
	add  sp, -$20                                    ; $56ee: $e8 $e0
	inc  d                                           ; $56f0: $14
	rra                                              ; $56f1: $1f
	ld   d, $1f                                      ; $56f2: $16 $1f
	rla                                              ; $56f4: $17
	dec  e                                           ; $56f5: $1d
	cpl                                              ; $56f6: $2f
	ccf                                              ; $56f7: $3f
	ccf                                              ; $56f8: $3f
	jr   c, jr_092_5774                              ; $56f9: $38 $79

	ld   h, b                                        ; $56fb: $60
	ld   [hl], a                                     ; $56fc: $77
	rlca                                             ; $56fd: $07
	rra                                              ; $56fe: $1f
	rra                                              ; $56ff: $1f
	ld   a, [bc]                                     ; $5700: $0a
	ld   c, $06                                      ; $5701: $0e $06
	or   [hl]                                        ; $5703: $b6
	ld   [bc], a                                     ; $5704: $02
	jp   z, $f602                                    ; $5705: $ca $02 $f6

	add  d                                           ; $5708: $82
	ld   a, [$7ec2]                                  ; $5709: $fa $c2 $7e
	jp   nz, $e2fe                                   ; $570c: $c2 $fe $e2

	cp   $1e                                         ; $570f: $fe $1e
	ld   a, h                                        ; $5711: $7c
	inc  sp                                          ; $5712: $33
	ei                                               ; $5713: $fb
	ld   [hl], e                                     ; $5714: $73
	jp   nz, $c3f1                                   ; $5715: $c2 $f1 $c3

	ld   a, a                                        ; $5718: $7f
	rst  ToBoot                                         ; $5719: $c7
	ld   [hl], b                                     ; $571a: $70
	ldh  [$30], a                                    ; $571b: $e0 $30
	ldh  [$30], a                                    ; $571d: $e0 $30
	ldh  [$e0], a                                    ; $571f: $e0 $e0
	ldh  a, [$f0]                                    ; $5721: $f0 $f0
	ldh  a, [$e0]                                    ; $5723: $f0 $e0
	ldh  [$60], a                                    ; $5725: $e0 $60
	ret  nz                                          ; $5727: $c0

	ldh  [$e0], a                                    ; $5728: $e0 $e0
	nop                                              ; $572a: $00
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	nop                                              ; $572d: $00
	ld   bc, $1d00                                   ; $572e: $01 $00 $1d
	add  hl, sp                                      ; $5731: $39
	ccf                                              ; $5732: $3f
	cpl                                              ; $5733: $2f
	dec  bc                                          ; $5734: $0b
	rrca                                             ; $5735: $0f
	rlca                                             ; $5736: $07
	dec  c                                           ; $5737: $0d
	rra                                              ; $5738: $1f
	rrca                                             ; $5739: $0f
	ld   bc, $0000                                   ; $573a: $01 $00 $00
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	ldh  a, [c]                                      ; $5740: $f2
	cp   $f2                                         ; $5741: $fe $f2
	cp   [hl]                                        ; $5743: $be
	cp   d                                           ; $5744: $ba
	adc  [hl]                                        ; $5745: $8e
	sbc  [hl]                                        ; $5746: $9e
	ld   c, $fe                                      ; $5747: $0e $fe
	adc  $f2                                         ; $5749: $ce $f2
	ld   e, $f2                                      ; $574b: $1e $f2
	ld   d, $f2                                      ; $574d: $16 $f2
	ld   d, $38                                      ; $574f: $16 $38
	ld   [hl], b                                     ; $5751: $70
	jr   c, @+$72                                    ; $5752: $38 $70

	inc  a                                           ; $5754: $3c
	ld   l, b                                        ; $5755: $68
	inc  a                                           ; $5756: $3c
	ld   l, h                                        ; $5757: $6c
	sbc  [hl]                                        ; $5758: $9e
	or   [hl]                                        ; $5759: $b6
	sbc  a                                           ; $575a: $9f
	or   l                                           ; $575b: $b5
	ld   c, a                                        ; $575c: $4f
	ld   e, d                                        ; $575d: $5a
	cpl                                              ; $575e: $2f
	dec  a                                           ; $575f: $3d
	ld   bc, $0300                                   ; $5760: $01 $00 $03
	ld   bc, $0000                                   ; $5763: $01 $00 $00
	ld   b, $04                                      ; $5766: $06 $04
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	ret  nz                                          ; $576c: $c0

	add  b                                           ; $576d: $80
	ldh  a, [$60]                                    ; $576e: $f0 $60
	nop                                              ; $5770: $00
	nop                                              ; $5771: $00
	add  b                                           ; $5772: $80
	nop                                              ; $5773: $00

jr_092_5774:
	nop                                              ; $5774: $00
	nop                                              ; $5775: $00
	pop  bc                                          ; $5776: $c1
	ld   b, b                                        ; $5777: $40
	ld   bc, $0301                                   ; $5778: $01 $01 $03
	inc  bc                                          ; $577b: $03
	rrca                                             ; $577c: $0f
	rlca                                             ; $577d: $07
	ccf                                              ; $577e: $3f
	ld   a, [de]                                     ; $577f: $1a
	and  $2e                                         ; $5780: $e6 $2e
	and  $2e                                         ; $5782: $e6 $2e
	add  $5e                                         ; $5784: $c6 $5e
	adc  $da                                         ; $5786: $ce $da
	adc  $5a                                         ; $5788: $ce $5a
	sbc  $76                                         ; $578a: $de $76
	sbc  [hl]                                        ; $578c: $9e
	or   $9e                                         ; $578d: $f6 $9e
	ld   a, [$9797]                                  ; $578f: $fa $97 $97
	db   $e4                                         ; $5792: $e4
	rst  $30                                         ; $5793: $f7
	ret  z                                           ; $5794: $c8

	jp   hl                                          ; $5795: $e9


	ld   d, b                                        ; $5796: $50
	ld   e, b                                        ; $5797: $58
	ld   d, b                                        ; $5798: $50
	ld   e, h                                        ; $5799: $5c
	jr   z, @+$31                                    ; $579a: $28 $2f

	jr   jr_092_581d                                 ; $579c: $18 $7f

	nop                                              ; $579e: $00
	rst  $38                                         ; $579f: $ff
	ld   e, b                                        ; $57a0: $58
	ret  c                                           ; $57a1: $d8

	rst  $30                                         ; $57a2: $f7
	rst  $30                                         ; $57a3: $f7
	ld   l, a                                        ; $57a4: $6f
	rst  $28                                         ; $57a5: $ef
	ld   e, b                                        ; $57a6: $58
	ret  c                                           ; $57a7: $d8

	ld   b, a                                        ; $57a8: $47
	rst  ToBoot                                         ; $57a9: $c7
	ld   b, h                                        ; $57aa: $44
	db   $fc                                         ; $57ab: $fc
	call z, $37ff                                    ; $57ac: $cc $ff $37
	rst  $38                                         ; $57af: $ff
	ld   h, h                                        ; $57b0: $64
	ld   l, a                                        ; $57b1: $6f
	sbc  l                                           ; $57b2: $9d
	sbc  a                                           ; $57b3: $9f
	ld   h, a                                        ; $57b4: $67
	ld   h, a                                        ; $57b5: $67
	sbc  b                                           ; $57b6: $98
	sbc  b                                           ; $57b7: $98
	ldh  [$e0], a                                    ; $57b8: $e0 $e0
	ld   b, b                                        ; $57ba: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57bb: $cf
	ld   h, b                                        ; $57bc: $60
	rst  $38                                         ; $57bd: $ff
	ldh  [rIE], a                                    ; $57be: $e0 $ff
	or   [hl]                                        ; $57c0: $b6
	or   $be                                         ; $57c1: $f6 $be
	cp   $9e                                         ; $57c3: $fe $9e
	cp   [hl]                                        ; $57c5: $be
	ld   d, d                                        ; $57c6: $52
	ld   d, d                                        ; $57c7: $52
	ld   h, d                                        ; $57c8: $62
	ld   h, d                                        ; $57c9: $62
	add  $46                                         ; $57ca: $c6 $46
	add  [hl]                                        ; $57cc: $86
	add  [hl]                                        ; $57cd: $86
	sbc  [hl]                                        ; $57ce: $9e
	add  d                                           ; $57cf: $82
	nop                                              ; $57d0: $00
	rst  $38                                         ; $57d1: $ff
	nop                                              ; $57d2: $00
	rst  $38                                         ; $57d3: $ff
	nop                                              ; $57d4: $00
	cp   $41                                         ; $57d5: $fe $41
	ld   a, a                                        ; $57d7: $7f
	pop  bc                                          ; $57d8: $c1
	rst  $38                                         ; $57d9: $ff
	ret  nz                                          ; $57da: $c0

	ld   hl, sp+$03                                  ; $57db: $f8 $03
	di                                               ; $57dd: $f3
	ld   bc, $27c3                                   ; $57de: $01 $c3 $27
	db   $fc                                         ; $57e1: $fc
	ld   e, $f8                                      ; $57e2: $1e $f8
	sbc  [hl]                                        ; $57e4: $9e
	ld   hl, sp-$61                                  ; $57e5: $f8 $9f
	ldh  a, [$9f]                                    ; $57e7: $f0 $9f
	ldh  a, [$1f]                                    ; $57e9: $f0 $1f
	ldh  a, [$3e]                                    ; $57eb: $f0 $3e
	jr   nc, @+$20                                   ; $57ed: $30 $1e

	db   $10                                         ; $57ef: $10
	sub  c                                           ; $57f0: $91
	rst  $38                                         ; $57f1: $ff
	ret                                              ; $57f2: $c9


	ld   a, a                                        ; $57f3: $7f
	ld   h, [hl]                                     ; $57f4: $66
	ld   a, $3e                                      ; $57f5: $3e $3e
	ld   e, $f9                                      ; $57f7: $1e $f9
	add  hl, de                                      ; $57f9: $19
	ld   a, b                                        ; $57fa: $78
	jr   jr_092_582d                                 ; $57fb: $18 $30

	inc  e                                           ; $57fd: $1c
	jr   nc, jr_092_5810                             ; $57fe: $30 $10

	ld   a, d                                        ; $5800: $7a
	ld   a, [de]                                     ; $5801: $1a
	ld   h, [hl]                                     ; $5802: $66
	ld   h, [hl]                                     ; $5803: $66
	ld   c, $0e                                      ; $5804: $0e $0e
	adc  $0e                                         ; $5806: $ce $0e
	cp   $8a                                         ; $5808: $fe $8a
	ld   a, [hl]                                     ; $580a: $7e
	ld   h, [hl]                                     ; $580b: $66
	ld   e, $12                                      ; $580c: $1e $12
	ld   c, $0e                                      ; $580e: $0e $0e

jr_092_5810:
	ld   hl, $42ef                                   ; $5810: $21 $ef $42
	adc  $84                                         ; $5813: $ce $84
	sub  l                                           ; $5815: $95
	rrca                                             ; $5816: $0f
	cpl                                              ; $5817: $2f
	add  hl, de                                      ; $5818: $19
	rra                                              ; $5819: $1f
	inc  hl                                          ; $581a: $23
	ld   a, $47                                      ; $581b: $3e $47

jr_092_581d:
	ld   e, a                                        ; $581d: $5f
	adc  a                                           ; $581e: $8f
	cp   a                                           ; $581f: $bf
	jr   c, jr_092_5882                              ; $5820: $38 $60

	sbc  b                                           ; $5822: $98
	ldh  a, [$d0]                                    ; $5823: $f0 $d0
	ldh  a, [$d0]                                    ; $5825: $f0 $d0
	ldh  a, [$e8]                                    ; $5827: $f0 $e8
	ld   a, b                                        ; $5829: $78
	cp   b                                           ; $582a: $b8
	jr   @-$26                                       ; $582b: $18 $d8

jr_092_582d:
	ret  nz                                          ; $582d: $c0

	add  sp, -$20                                    ; $582e: $e8 $e0
	inc  d                                           ; $5830: $14
	rra                                              ; $5831: $1f
	ld   d, $1f                                      ; $5832: $16 $1f
	rla                                              ; $5834: $17
	dec  e                                           ; $5835: $1d
	cpl                                              ; $5836: $2f
	ccf                                              ; $5837: $3f
	ccf                                              ; $5838: $3f
	jr   c, @+$7b                                    ; $5839: $38 $79

	ld   h, b                                        ; $583b: $60
	ld   a, a                                        ; $583c: $7f
	rrca                                             ; $583d: $0f
	rra                                              ; $583e: $1f
	rra                                              ; $583f: $1f
	ld   a, [bc]                                     ; $5840: $0a
	ld   c, $06                                      ; $5841: $0e $06
	or   [hl]                                        ; $5843: $b6
	ld   [bc], a                                     ; $5844: $02
	jp   z, $f602                                    ; $5845: $ca $02 $f6

	add  d                                           ; $5848: $82
	ld   a, [$7ec2]                                  ; $5849: $fa $c2 $7e
	jp   nz, $e2fe                                   ; $584c: $c2 $fe $e2

	cp   $1e                                         ; $584f: $fe $1e
	ld   a, b                                        ; $5851: $78
	dec  sp                                          ; $5852: $3b
	di                                               ; $5853: $f3
	ld   [hl], e                                     ; $5854: $73
	jp   nz, $c3f1                                   ; $5855: $c2 $f1 $c3

	ld   a, a                                        ; $5858: $7f
	rst  ToBoot                                         ; $5859: $c7
	ld   [hl], b                                     ; $585a: $70
	ldh  [$30], a                                    ; $585b: $e0 $30
	ldh  [$30], a                                    ; $585d: $e0 $30
	ldh  [$f0], a                                    ; $585f: $e0 $f0
	ldh  a, [$f0]                                    ; $5861: $f0 $f0
	ldh  [$e0], a                                    ; $5863: $e0 $e0
	ldh  [$60], a                                    ; $5865: $e0 $60
	ret  nz                                          ; $5867: $c0

	ldh  [$e0], a                                    ; $5868: $e0 $e0
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	nop                                              ; $586d: $00
	ld   bc, $3d00                                   ; $586e: $01 $00 $3d
	add  hl, sp                                      ; $5871: $39
	ccf                                              ; $5872: $3f
	rrca                                             ; $5873: $0f
	dec  bc                                          ; $5874: $0b
	rrca                                             ; $5875: $0f
	rlca                                             ; $5876: $07
	dec  c                                           ; $5877: $0d
	rra                                              ; $5878: $1f
	rrca                                             ; $5879: $0f
	ld   bc, $0000                                   ; $587a: $01 $00 $00
	nop                                              ; $587d: $00
	nop                                              ; $587e: $00
	nop                                              ; $587f: $00
	ldh  a, [c]                                      ; $5880: $f2
	cp   [hl]                                        ; $5881: $be

jr_092_5882:
	ldh  a, [c]                                      ; $5882: $f2
	sbc  [hl]                                        ; $5883: $9e
	cp   d                                           ; $5884: $ba
	adc  [hl]                                        ; $5885: $8e
	sbc  [hl]                                        ; $5886: $9e
	ld   c, $fe                                      ; $5887: $0e $fe
	adc  $f2                                         ; $5889: $ce $f2
	ld   e, $f2                                      ; $588b: $1e $f2
	ld   d, $f2                                      ; $588d: $16 $f2
	ld   d, $01                                      ; $588f: $16 $01
	nop                                              ; $5891: $00
	inc  bc                                          ; $5892: $03
	ld   bc, $0000                                   ; $5893: $01 $00 $00
	ld   c, $04                                      ; $5896: $0e $04
	inc  bc                                          ; $5898: $03
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	nop                                              ; $589b: $00
	ret  nz                                          ; $589c: $c0

	add  b                                           ; $589d: $80
	ldh  a, [$60]                                    ; $589e: $f0 $60
	nop                                              ; $58a0: $00
	nop                                              ; $58a1: $00
	add  b                                           ; $58a2: $80
	nop                                              ; $58a3: $00
	nop                                              ; $58a4: $00
	nop                                              ; $58a5: $00
	pop  hl                                          ; $58a6: $e1
	ld   b, b                                        ; $58a7: $40
	add  c                                           ; $58a8: $81
	ld   bc, $0303                                   ; $58a9: $01 $03 $03
	rrca                                             ; $58ac: $0f
	rlca                                             ; $58ad: $07
	ccf                                              ; $58ae: $3f
	ld   a, [de]                                     ; $58af: $1a
	ld   hl, $42ef                                   ; $58b0: $21 $ef $42
	adc  $84                                         ; $58b3: $ce $84
	sub  l                                           ; $58b5: $95
	inc  c                                           ; $58b6: $0c
	cpl                                              ; $58b7: $2f
	inc  de                                          ; $58b8: $13
	rra                                              ; $58b9: $1f
	inc  hl                                          ; $58ba: $23
	ccf                                              ; $58bb: $3f
	ld   b, a                                        ; $58bc: $47
	ld   e, [hl]                                     ; $58bd: $5e
	adc  a                                           ; $58be: $8f
	cp   a                                           ; $58bf: $bf
	jr   c, jr_092_5922                              ; $58c0: $38 $60

	sbc  b                                           ; $58c2: $98

jr_092_58c3:
	ldh  a, [$d0]                                    ; $58c3: $f0 $d0
	ldh  a, [$d0]                                    ; $58c5: $f0 $d0
	ldh  a, [$e8]                                    ; $58c7: $f0 $e8
	jr   c, jr_092_58c3                              ; $58c9: $38 $f8

	ret  c                                           ; $58cb: $d8

	ld   hl, sp+$60                                  ; $58cc: $f8 $60
	ld   hl, sp-$10                                  ; $58ce: $f8 $f0
	inc  d                                           ; $58d0: $14
	rra                                              ; $58d1: $1f
	ld   d, $1f                                      ; $58d2: $16 $1f
	rla                                              ; $58d4: $17
	dec  e                                           ; $58d5: $1d
	cpl                                              ; $58d6: $2f
	add  hl, sp                                      ; $58d7: $39
	ccf                                              ; $58d8: $3f
	inc  sp                                          ; $58d9: $33
	ld   a, a                                        ; $58da: $7f
	ld   l, [hl]                                     ; $58db: $6e
	ld   a, a                                        ; $58dc: $7f
	add  hl, de                                      ; $58dd: $19
	ld   a, a                                        ; $58de: $7f
	ccf                                              ; $58df: $3f
	ldh  a, [$e0]                                    ; $58e0: $f0 $e0
	ldh  a, [$f0]                                    ; $58e2: $f0 $f0
	ldh  [$e0], a                                    ; $58e4: $e0 $e0
	ld   h, b                                        ; $58e6: $60
	ret  nz                                          ; $58e7: $c0

	ldh  [$e0], a                                    ; $58e8: $e0 $e0
	nop                                              ; $58ea: $00
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	nop                                              ; $58ed: $00
	ld   bc, $3d00                                   ; $58ee: $01 $00 $3d
	add  hl, de                                      ; $58f1: $19
	ccf                                              ; $58f2: $3f
	cpl                                              ; $58f3: $2f
	dec  bc                                          ; $58f4: $0b
	rrca                                             ; $58f5: $0f
	rlca                                             ; $58f6: $07
	dec  c                                           ; $58f7: $0d
	rra                                              ; $58f8: $1f
	rrca                                             ; $58f9: $0f
	ld   bc, $0000                                   ; $58fa: $01 $00 $00
	nop                                              ; $58fd: $00
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	ld   hl, $42ef                                   ; $5900: $21 $ef $42
	adc  $84                                         ; $5903: $ce $84
	sub  l                                           ; $5905: $95
	add  hl, bc                                      ; $5906: $09
	cpl                                              ; $5907: $2f
	ld   de, $231f                                   ; $5908: $11 $1f $23
	ccf                                              ; $590b: $3f
	ld   e, a                                        ; $590c: $5f
	ld   e, l                                        ; $590d: $5d
	adc  a                                           ; $590e: $8f
	cp   a                                           ; $590f: $bf
	jr   c, @+$62                                    ; $5910: $38 $60

	sbc  b                                           ; $5912: $98
	ldh  a, [$d0]                                    ; $5913: $f0 $d0
	ldh  a, [$d8]                                    ; $5915: $f0 $d8
	ld   hl, sp-$18                                  ; $5917: $f8 $e8
	ld   a, b                                        ; $5919: $78
	ld   hl, sp-$28                                  ; $591a: $f8 $d8
	ld   hl, sp-$80                                  ; $591c: $f8 $80
	ldh  [$c0], a                                    ; $591e: $e0 $c0
	inc  d                                           ; $5920: $14
	rra                                              ; $5921: $1f

jr_092_5922:
	ld   d, $1f                                      ; $5922: $16 $1f
	rla                                              ; $5924: $17
	dec  e                                           ; $5925: $1d
	ld   l, a                                        ; $5926: $6f
	ld   a, c                                        ; $5927: $79
	ccf                                              ; $5928: $3f
	inc  a                                           ; $5929: $3c
	ld   a, a                                        ; $592a: $7f
	ld   h, e                                        ; $592b: $63
	ld   a, a                                        ; $592c: $7f
	rlca                                             ; $592d: $07
	rra                                              ; $592e: $1f
	rrca                                             ; $592f: $0f
	ld   a, [bc]                                     ; $5930: $0a
	ld   c, $06                                      ; $5931: $0e $06
	or   [hl]                                        ; $5933: $b6
	ld   [bc], a                                     ; $5934: $02
	jp   z, $f602                                    ; $5935: $ca $02 $f6

	add  d                                           ; $5938: $82
	ld   a, [$fec2]                                  ; $5939: $fa $c2 $fe
	jp   nz, $e27e                                   ; $593c: $c2 $7e $e2

	cp   $1e                                         ; $593f: $fe $1e
	ld   a, h                                        ; $5941: $7c
	dec  sp                                          ; $5942: $3b
	ei                                               ; $5943: $fb
	ld   [hl], e                                     ; $5944: $73
	jp   nc, $c3f1                                   ; $5945: $d2 $f1 $c3

	ld   a, a                                        ; $5948: $7f
	rst  ToBoot                                         ; $5949: $c7
	ld   [hl], b                                     ; $594a: $70
	ldh  [$35], a                                    ; $594b: $e0 $35
	ldh  [$3a], a                                    ; $594d: $e0 $3a
	ldh  [$e0], a                                    ; $594f: $e0 $e0
	ldh  a, [$f0]                                    ; $5951: $f0 $f0
	ldh  a, [$e0]                                    ; $5953: $f0 $e0
	ldh  [$60], a                                    ; $5955: $e0 $60
	ret  nz                                          ; $5957: $c0

	ldh  [$e0], a                                    ; $5958: $e0 $e0
	nop                                              ; $595a: $00
	nop                                              ; $595b: $00
	nop                                              ; $595c: $00
	nop                                              ; $595d: $00
	ld   bc, $1d00                                   ; $595e: $01 $00 $1d
	add  hl, sp                                      ; $5961: $39
	ccf                                              ; $5962: $3f
	cpl                                              ; $5963: $2f
	dec  bc                                          ; $5964: $0b
	rrca                                             ; $5965: $0f
	rlca                                             ; $5966: $07
	dec  c                                           ; $5967: $0d
	rra                                              ; $5968: $1f
	rrca                                             ; $5969: $0f
	ld   bc, $0a00                                   ; $596a: $01 $00 $0a
	nop                                              ; $596d: $00
	dec  b                                           ; $596e: $05
	nop                                              ; $596f: $00
	ldh  a, [c]                                      ; $5970: $f2
	cp   $f2                                         ; $5971: $fe $f2
	cp   [hl]                                        ; $5973: $be
	cp   d                                           ; $5974: $ba
	sbc  [hl]                                        ; $5975: $9e
	sbc  [hl]                                        ; $5976: $9e
	ld   c, $fe                                      ; $5977: $0e $fe
	adc  $f2                                         ; $5979: $ce $f2
	ld   e, $f2                                      ; $597b: $1e $f2
	ld   d, $f2                                      ; $597d: $16 $f2
	ld   d, $01                                      ; $597f: $16 $01
	nop                                              ; $5981: $00
	inc  bc                                          ; $5982: $03
	ld   bc, $0000                                   ; $5983: $01 $00 $00
	rrca                                             ; $5986: $0f
	inc  b                                           ; $5987: $04
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	ret  nz                                          ; $598c: $c0

	add  b                                           ; $598d: $80
	ldh  a, [$60]                                    ; $598e: $f0 $60
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	add  b                                           ; $5992: $80
	nop                                              ; $5993: $00
	nop                                              ; $5994: $00
	nop                                              ; $5995: $00
	pop  bc                                          ; $5996: $c1
	add  b                                           ; $5997: $80
	ld   bc, $0301                                   ; $5998: $01 $01 $03
	inc  bc                                          ; $599b: $03
	rrca                                             ; $599c: $0f
	rlca                                             ; $599d: $07
	ccf                                              ; $599e: $3f
	ld   a, [de]                                     ; $599f: $1a
	ld   hl, $42ef                                   ; $59a0: $21 $ef $42
	adc  $84                                         ; $59a3: $ce $84
	sub  l                                           ; $59a5: $95
	add  hl, bc                                      ; $59a6: $09
	cpl                                              ; $59a7: $2f
	ld   de, $3f1f                                   ; $59a8: $11 $1f $3f
	ccf                                              ; $59ab: $3f
	ld   b, a                                        ; $59ac: $47
	ld   c, a                                        ; $59ad: $4f
	adc  a                                           ; $59ae: $8f
	cp   a                                           ; $59af: $bf
	jr   c, @+$62                                    ; $59b0: $38 $60

	sbc  b                                           ; $59b2: $98
	ldh  a, [$d0]                                    ; $59b3: $f0 $d0
	ldh  a, [$d8]                                    ; $59b5: $f0 $d8
	ld   hl, sp-$18                                  ; $59b7: $f8 $e8
	ld   a, b                                        ; $59b9: $78
	ld   hl, sp-$08                                  ; $59ba: $f8 $f8
	ld   hl, sp+$00                                  ; $59bc: $f8 $00
	ldh  [$c0], a                                    ; $59be: $e0 $c0
	inc  d                                           ; $59c0: $14
	rra                                              ; $59c1: $1f
	ld   d, $1f                                      ; $59c2: $16 $1f
	rla                                              ; $59c4: $17
	dec  e                                           ; $59c5: $1d
	cpl                                              ; $59c6: $2f
	add  hl, sp                                      ; $59c7: $39
	ccf                                              ; $59c8: $3f
	jr   c, jr_092_5a4a                              ; $59c9: $38 $7f

	ld   a, a                                        ; $59cb: $7f
	ld   a, a                                        ; $59cc: $7f
	rlca                                             ; $59cd: $07
	rra                                              ; $59ce: $1f
	rrca                                             ; $59cf: $0f
	ld   a, [bc]                                     ; $59d0: $0a
	ld   c, $06                                      ; $59d1: $0e $06
	or   [hl]                                        ; $59d3: $b6
	ld   [bc], a                                     ; $59d4: $02
	jp   z, $f602                                    ; $59d5: $ca $02 $f6

	add  d                                           ; $59d8: $82
	ld   a, [$fec2]                                  ; $59d9: $fa $c2 $fe
	jp   nz, $e27e                                   ; $59dc: $c2 $7e $e2

	cp   $1e                                         ; $59df: $fe $1e
	ld   a, h                                        ; $59e1: $7c
	dec  sp                                          ; $59e2: $3b
	ei                                               ; $59e3: $fb
	ld   [hl], e                                     ; $59e4: $73
	jp   nc, $c3f1                                   ; $59e5: $d2 $f1 $c3

	ld   a, a                                        ; $59e8: $7f
	rst  ToBoot                                         ; $59e9: $c7
	ld   [hl], b                                     ; $59ea: $70
	ldh  [$35], a                                    ; $59eb: $e0 $35
	ldh  [$3a], a                                    ; $59ed: $e0 $3a
	ldh  [$e0], a                                    ; $59ef: $e0 $e0
	ldh  a, [$f0]                                    ; $59f1: $f0 $f0
	ldh  a, [$e0]                                    ; $59f3: $f0 $e0
	ldh  [$e0], a                                    ; $59f5: $e0 $e0
	ldh  [$80], a                                    ; $59f7: $e0 $80
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	ld   bc, $1d00                                   ; $59fe: $01 $00 $1d
	add  hl, sp                                      ; $5a01: $39
	ccf                                              ; $5a02: $3f
	cpl                                              ; $5a03: $2f
	dec  bc                                          ; $5a04: $0b
	rrca                                             ; $5a05: $0f
	rrca                                             ; $5a06: $0f
	rrca                                             ; $5a07: $0f
	inc  bc                                          ; $5a08: $03
	ld   bc, $0001                                   ; $5a09: $01 $01 $00
	ld   a, [bc]                                     ; $5a0c: $0a
	nop                                              ; $5a0d: $00
	dec  b                                           ; $5a0e: $05
	nop                                              ; $5a0f: $00
	ldh  a, [c]                                      ; $5a10: $f2
	cp   $f2                                         ; $5a11: $fe $f2
	cp   [hl]                                        ; $5a13: $be
	cp   d                                           ; $5a14: $ba
	sbc  [hl]                                        ; $5a15: $9e
	sbc  [hl]                                        ; $5a16: $9e
	ld   c, $fe                                      ; $5a17: $0e $fe
	adc  $f2                                         ; $5a19: $ce $f2
	ld   e, $f2                                      ; $5a1b: $1e $f2
	ld   d, $f2                                      ; $5a1d: $16 $f2
	ld   d, $00                                      ; $5a1f: $16 $00
	nop                                              ; $5a21: $00
	add  b                                           ; $5a22: $80
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	pop  bc                                          ; $5a26: $c1
	ld   b, b                                        ; $5a27: $40
	ld   bc, $0301                                   ; $5a28: $01 $01 $03
	inc  bc                                          ; $5a2b: $03
	rrca                                             ; $5a2c: $0f
	rlca                                             ; $5a2d: $07
	ccf                                              ; $5a2e: $3f
	ld   a, [de]                                     ; $5a2f: $1a
	ld   hl, $42ef                                   ; $5a30: $21 $ef $42
	adc  $85                                         ; $5a33: $ce $85
	sub  l                                           ; $5a35: $95
	rrca                                             ; $5a36: $0f
	cpl                                              ; $5a37: $2f
	add  hl, de                                      ; $5a38: $19
	rra                                              ; $5a39: $1f
	inc  hl                                          ; $5a3a: $23
	ccf                                              ; $5a3b: $3f
	ld   b, a                                        ; $5a3c: $47
	ld   e, a                                        ; $5a3d: $5f
	adc  h                                           ; $5a3e: $8c
	cp   h                                           ; $5a3f: $bc
	jr   c, @+$62                                    ; $5a40: $38 $60

	sbc  b                                           ; $5a42: $98
	ldh  a, [$d8]                                    ; $5a43: $f0 $d8
	ld   hl, sp-$30                                  ; $5a45: $f8 $d0
	ldh  a, [$e8]                                    ; $5a47: $f0 $e8
	ld   a, b                                        ; $5a49: $78

jr_092_5a4a:
	ld   hl, sp-$68                                  ; $5a4a: $f8 $98
	ld   hl, sp-$20                                  ; $5a4c: $f8 $e0
	ld   hl, sp+$30                                  ; $5a4e: $f8 $30
	inc  d                                           ; $5a50: $14
	rra                                              ; $5a51: $1f
	ld   d, $1f                                      ; $5a52: $16 $1f
	ld   [hl], a                                     ; $5a54: $77
	ld   a, l                                        ; $5a55: $7d
	cpl                                              ; $5a56: $2f
	dec  sp                                          ; $5a57: $3b
	ccf                                              ; $5a58: $3f
	jr   c, jr_092_5ada                              ; $5a59: $38 $7f

	ld   h, e                                        ; $5a5b: $63
	ld   a, a                                        ; $5a5c: $7f
	rrca                                             ; $5a5d: $0f

jr_092_5a5e:
	ld   e, $18                                      ; $5a5e: $1e $18

jr_092_5a60:
	ld   a, [bc]                                     ; $5a60: $0a
	ld   c, $06                                      ; $5a61: $0e $06
	or   [hl]                                        ; $5a63: $b6
	ld   [bc], a                                     ; $5a64: $02
	jp   z, $f602                                    ; $5a65: $ca $02 $f6

	add  d                                           ; $5a68: $82
	ld   a, [$fec2]                                  ; $5a69: $fa $c2 $fe
	jp   nz, Jump_092_62fe                           ; $5a6c: $c2 $fe $62

	ld   a, [hl]                                     ; $5a6f: $7e
	add  hl, de                                      ; $5a70: $19
	ld   a, b                                        ; $5a71: $78
	ld   sp, $71f9                                   ; $5a72: $31 $f9 $71
	pop  bc                                          ; $5a75: $c1
	pop  af                                          ; $5a76: $f1
	ret  nz                                          ; $5a77: $c0

	ld   a, h                                        ; $5a78: $7c
	call nz, $e373                                   ; $5a79: $c4 $73 $e3
	jr   nc, jr_092_5a5e                             ; $5a7c: $30 $e0

	jr   nc, jr_092_5a60                             ; $5a7e: $30 $e0

	ldh  a, [$d0]                                    ; $5a80: $f0 $d0
	sub  b                                           ; $5a82: $90
	sub  b                                           ; $5a83: $90
	ret  nz                                          ; $5a84: $c0

	ret  nz                                          ; $5a85: $c0

	add  b                                           ; $5a86: $80
	ret  nz                                          ; $5a87: $c0

	ldh  [$e0], a                                    ; $5a88: $e0 $e0
	add  b                                           ; $5a8a: $80
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	ld   bc, $1f00                                   ; $5a8e: $01 $00 $1f
	ld   d, $13                                      ; $5a91: $16 $13
	inc  de                                          ; $5a93: $13
	rlca                                             ; $5a94: $07
	rlca                                             ; $5a95: $07
	inc  bc                                          ; $5a96: $03
	ld   b, $1e                                      ; $5a97: $06 $1e
	ld   c, $03                                      ; $5a99: $0e $03
	ld   bc, $0000                                   ; $5a9b: $01 $00 $00
	nop                                              ; $5a9e: $00
	nop                                              ; $5a9f: $00
	ld   [hl-], a                                    ; $5aa0: $32
	ld   a, $12                                      ; $5aa1: $3e $12
	ld   e, $3a                                      ; $5aa3: $1e $3a
	ld   c, $1e                                      ; $5aa5: $0e $1e
	ld   c, $7e                                      ; $5aa7: $0e $7e
	ld   c, [hl]                                     ; $5aa9: $4e
	ldh  a, [c]                                      ; $5aaa: $f2
	sbc  [hl]                                        ; $5aab: $9e
	ldh  a, [c]                                      ; $5aac: $f2
	ld   d, $f2                                      ; $5aad: $16 $f2
	ld   d, $01                                      ; $5aaf: $16 $01
	nop                                              ; $5ab1: $00
	inc  bc                                          ; $5ab2: $03
	ld   bc, $0000                                   ; $5ab3: $01 $00 $00
	rlca                                             ; $5ab6: $07
	inc  b                                           ; $5ab7: $04
	rrca                                             ; $5ab8: $0f
	ld   [$080c], sp                                 ; $5ab9: $08 $0c $08
	ret  z                                           ; $5abc: $c8

	adc  b                                           ; $5abd: $88
	rst  $30                                         ; $5abe: $f7
	ld   h, h                                        ; $5abf: $64
	nop                                              ; $5ac0: $00
	nop                                              ; $5ac1: $00
	add  b                                           ; $5ac2: $80
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	nop                                              ; $5ac5: $00
	ld   bc, $8100                                   ; $5ac6: $01 $00 $81
	add  c                                           ; $5ac9: $81
	inc  bc                                          ; $5aca: $03
	inc  bc                                          ; $5acb: $03
	rrca                                             ; $5acc: $0f
	rlca                                             ; $5acd: $07
	ccf                                              ; $5ace: $3f
	ld   a, [de]                                     ; $5acf: $1a
	ld   hl, $42ef                                   ; $5ad0: $21 $ef $42
	adc  $84                                         ; $5ad3: $ce $84
	sub  l                                           ; $5ad5: $95
	inc  c                                           ; $5ad6: $0c
	cpl                                              ; $5ad7: $2f
	inc  de                                          ; $5ad8: $13
	rra                                              ; $5ad9: $1f

jr_092_5ada:
	inc  hl                                          ; $5ada: $23
	ccf                                              ; $5adb: $3f
	ld   b, a                                        ; $5adc: $47
	ld   e, [hl]                                     ; $5add: $5e
	adc  a                                           ; $5ade: $8f
	cp   a                                           ; $5adf: $bf
	jr   c, @+$62                                    ; $5ae0: $38 $60

	sbc  b                                           ; $5ae2: $98

jr_092_5ae3:
	ldh  a, [$d0]                                    ; $5ae3: $f0 $d0
	ldh  a, [$d0]                                    ; $5ae5: $f0 $d0
	ldh  a, [$e8]                                    ; $5ae7: $f0 $e8
	jr   c, jr_092_5ae3                              ; $5ae9: $38 $f8

	ret  c                                           ; $5aeb: $d8

	ld   hl, sp+$60                                  ; $5aec: $f8 $60
	ld   hl, sp+$10                                  ; $5aee: $f8 $10
	inc  d                                           ; $5af0: $14
	rra                                              ; $5af1: $1f
	ld   d, $1f                                      ; $5af2: $16 $1f
	rla                                              ; $5af4: $17
	dec  e                                           ; $5af5: $1d
	cpl                                              ; $5af6: $2f
	add  hl, sp                                      ; $5af7: $39
	ccf                                              ; $5af8: $3f
	inc  sp                                          ; $5af9: $33
	ld   a, a                                        ; $5afa: $7f
	ld   l, [hl]                                     ; $5afb: $6e
	ld   a, a                                        ; $5afc: $7f
	jr   jr_092_5b7e                                 ; $5afd: $18 $7f

	inc  sp                                          ; $5aff: $33
	ld   a, [bc]                                     ; $5b00: $0a
	ld   c, $06                                      ; $5b01: $0e $06
	or   [hl]                                        ; $5b03: $b6
	ld   [bc], a                                     ; $5b04: $02
	jp   z, $f602                                    ; $5b05: $ca $02 $f6

	add  d                                           ; $5b08: $82
	ld   a, [$7ec2]                                  ; $5b09: $fa $c2 $7e

jr_092_5b0c:
	jp   nz, $e27e                                   ; $5b0c: $c2 $7e $e2

	cp   $19                                         ; $5b0f: $fe $19
	ld   a, b                                        ; $5b11: $78
	jr   nc, jr_092_5b0c                             ; $5b12: $30 $f8

	ld   a, b                                        ; $5b14: $78
	ret  z                                           ; $5b15: $c8

	db   $fc                                         ; $5b16: $fc
	ret  z                                           ; $5b17: $c8

	ld   a, [hl]                                     ; $5b18: $7e
	call nz, $e373                                   ; $5b19: $c4 $73 $e3
	dec  [hl]                                        ; $5b1c: $35
	ldh  [$3a], a                                    ; $5b1d: $e0 $3a
	ldh  [$f0], a                                    ; $5b1f: $e0 $f0
	ldh  [$d0], a                                    ; $5b21: $e0 $d0
	sub  b                                           ; $5b23: $90
	ret  nz                                          ; $5b24: $c0

	ret  nz                                          ; $5b25: $c0

	nop                                              ; $5b26: $00
	nop                                              ; $5b27: $00
	jr   nz, jr_092_5b4a                             ; $5b28: $20 $20

	ret  nz                                          ; $5b2a: $c0

	add  b                                           ; $5b2b: $80
	ld   b, b                                        ; $5b2c: $40
	nop                                              ; $5b2d: $00
	add  c                                           ; $5b2e: $81
	nop                                              ; $5b2f: $00
	ld   a, $1c                                      ; $5b30: $3e $1c
	inc  l                                           ; $5b32: $2c
	inc  h                                           ; $5b33: $24
	inc  c                                           ; $5b34: $0c
	inc  c                                           ; $5b35: $0c
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	db   $10                                         ; $5b38: $10
	db   $10                                         ; $5b39: $10
	rrca                                             ; $5b3a: $0f
	rlca                                             ; $5b3b: $07
	ld   a, [bc]                                     ; $5b3c: $0a
	nop                                              ; $5b3d: $00
	dec  b                                           ; $5b3e: $05
	nop                                              ; $5b3f: $00
	ld   [hl-], a                                    ; $5b40: $32
	ld   a, $12                                      ; $5b41: $3e $12
	ld   e, $3a                                      ; $5b43: $1e $3a
	ld   e, $3e                                      ; $5b45: $1e $3e
	ld   l, $fe                                      ; $5b47: $2e $fe
	ld   c, [hl]                                     ; $5b49: $4e

jr_092_5b4a:
	ldh  a, [c]                                      ; $5b4a: $f2
	sbc  [hl]                                        ; $5b4b: $9e
	ldh  a, [c]                                      ; $5b4c: $f2
	ld   d, $f2                                      ; $5b4d: $16 $f2
	ld   d, $01                                      ; $5b4f: $16 $01
	nop                                              ; $5b51: $00
	inc  bc                                          ; $5b52: $03
	ld   bc, $0000                                   ; $5b53: $01 $00 $00
	inc  bc                                          ; $5b56: $03
	nop                                              ; $5b57: $00
	inc  b                                           ; $5b58: $04
	inc  b                                           ; $5b59: $04
	nop                                              ; $5b5a: $00
	nop                                              ; $5b5b: $00
	ret  nz                                          ; $5b5c: $c0

	add  b                                           ; $5b5d: $80
	ldh  a, [$60]                                    ; $5b5e: $f0 $60
	rst  $30                                         ; $5b60: $f7
	sub  a                                           ; $5b61: $97
	rst  $30                                         ; $5b62: $f7
	db   $f4                                         ; $5b63: $f4
	rla                                              ; $5b64: $17
	dec  d                                           ; $5b65: $15
	cpl                                              ; $5b66: $2f
	jr   z, @-$1f                                    ; $5b67: $28 $df

	ret  c                                           ; $5b69: $d8

	ld   e, [hl]                                     ; $5b6a: $5e
	ret  c                                           ; $5b6b: $d8

	ld   l, $f8                                      ; $5b6c: $2e $f8
	ld   c, $f8                                      ; $5b6e: $0e $f8
	ret  c                                           ; $5b70: $d8

	ret  c                                           ; $5b71: $d8

	rst  $20                                         ; $5b72: $e7
	ld   h, a                                        ; $5b73: $67
	ld   hl, sp-$68                                  ; $5b74: $f8 $98
	rst  $38                                         ; $5b76: $ff
	ld   a, a                                        ; $5b77: $7f
	db   $fd                                         ; $5b78: $fd
	inc  b                                           ; $5b79: $04
	cp   $7c                                         ; $5b7a: $fe $7c
	cp   $0c                                         ; $5b7c: $fe $0c

jr_092_5b7e:
	ld   a, a                                        ; $5b7e: $7f
	ld   [hl-], a                                    ; $5b7f: $32
	ld   l, a                                        ; $5b80: $6f
	ld   l, d                                        ; $5b81: $6a
	adc  a                                           ; $5b82: $8f
	adc  a                                           ; $5b83: $8f
	rra                                              ; $5b84: $1f
	db   $10                                         ; $5b85: $10
	rst  $38                                         ; $5b86: $ff
	db   $e3                                         ; $5b87: $e3
	rst  $38                                         ; $5b88: $ff
	inc  l                                           ; $5b89: $2c
	ccf                                              ; $5b8a: $3f
	jr   nc, @+$01                                   ; $5b8b: $30 $ff

	cp   h                                           ; $5b8d: $bc
	di                                               ; $5b8e: $f3
	and  e                                           ; $5b8f: $a3
	cp   [hl]                                        ; $5b90: $be
	or   [hl]                                        ; $5b91: $b6
	cp   [hl]                                        ; $5b92: $be
	cp   [hl]                                        ; $5b93: $be
	and  d                                           ; $5b94: $a2
	and  d                                           ; $5b95: $a2
	jp   nc, $de92                                   ; $5b96: $d2 $92 $de

	ld   e, [hl]                                     ; $5b99: $5e
	ld   [$f24e], a                                  ; $5b9a: $ea $4e $f2
	ld   a, $f2                                      ; $5b9d: $3e $f2
	ld   e, $0f                                      ; $5b9f: $1e $0f
	ld   hl, sp+$0f                                  ; $5ba1: $f8 $0f
	ld   hl, sp+$07                                  ; $5ba3: $f8 $07
	db   $fc                                         ; $5ba5: $fc
	rlca                                             ; $5ba6: $07
	db   $fc                                         ; $5ba7: $fc
	rlca                                             ; $5ba8: $07
	rst  $38                                         ; $5ba9: $ff
	rlca                                             ; $5baa: $07
	db   $fc                                         ; $5bab: $fc
	rrca                                             ; $5bac: $0f
	ld   hl, sp+$0f                                  ; $5bad: $f8 $0f
	ld   hl, sp-$31                                  ; $5baf: $f8 $cf
	rst  ToBoot                                         ; $5bb1: $c7
	dec  a                                           ; $5bb2: $3d
	rrca                                             ; $5bb3: $0f
	db   $fd                                         ; $5bb4: $fd
	dec  d                                           ; $5bb5: $15
	db   $fd                                         ; $5bb6: $fd
	ld   h, l                                        ; $5bb7: $65
	ld   sp, hl                                      ; $5bb8: $f9
	ret                                              ; $5bb9: $c9


	ld   sp, hl                                      ; $5bba: $f9
	ld   c, c                                        ; $5bbb: $49
	cp   c                                           ; $5bbc: $b9
	adc  c                                           ; $5bbd: $89
	or   b                                           ; $5bbe: $b0
	sbc  b                                           ; $5bbf: $98
	db   $fc                                         ; $5bc0: $fc
	ldh  a, [$3f]                                    ; $5bc1: $f0 $3f
	ld   l, b                                        ; $5bc3: $68
	ccf                                              ; $5bc4: $3f
	inc  h                                           ; $5bc5: $24
	ccf                                              ; $5bc6: $3f
	daa                                              ; $5bc7: $27
	dec  de                                          ; $5bc8: $1b
	ld   [de], a                                     ; $5bc9: $12
	dec  de                                          ; $5bca: $1b
	ld   [de], a                                     ; $5bcb: $12
	dec  e                                           ; $5bcc: $1d
	ld   de, $998d                                   ; $5bcd: $11 $8d $99
	or   d                                           ; $5bd0: $b2
	ld   e, $72                                      ; $5bd1: $1e $72
	ld   e, $f2                                      ; $5bd3: $1e $f2
	ld   e, $e2                                      ; $5bd5: $1e $e2
	ld   a, $e2                                      ; $5bd7: $3e $e2
	cp   $e2                                         ; $5bd9: $fe $e2
	ld   a, $d2                                      ; $5bdb: $3e $d2
	ld   e, $d2                                      ; $5bdd: $1e $d2
	ld   e, $38                                      ; $5bdf: $1e $38
	ld   [hl], b                                     ; $5be1: $70
	jr   c, jr_092_5c54                              ; $5be2: $38 $70

	inc  a                                           ; $5be4: $3c
	ld   l, b                                        ; $5be5: $68
	inc  a                                           ; $5be6: $3c
	ld   l, h                                        ; $5be7: $6c
	sbc  [hl]                                        ; $5be8: $9e
	or   [hl]                                        ; $5be9: $b6
	rst  JumpTable                                         ; $5bea: $df
	sub  l                                           ; $5beb: $95
	rst  $28                                         ; $5bec: $ef
	ld   e, e                                        ; $5bed: $5b
	rst  $28                                         ; $5bee: $ef
	dec  l                                           ; $5bef: $2d
	jr   c, @+$72                                    ; $5bf0: $38 $70

	jr   c, @+$72                                    ; $5bf2: $38 $70

	inc  a                                           ; $5bf4: $3c
	ld   l, b                                        ; $5bf5: $68
	inc  a                                           ; $5bf6: $3c
	ld   l, h                                        ; $5bf7: $6c
	sbc  [hl]                                        ; $5bf8: $9e
	or   [hl]                                        ; $5bf9: $b6
	sbc  a                                           ; $5bfa: $9f
	or   l                                           ; $5bfb: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bfc: $cf
	ld   e, e                                        ; $5bfd: $5b
	ld   l, a                                        ; $5bfe: $6f
	cp   l                                           ; $5bff: $bd
	or   a                                           ; $5c00: $b7
	db   $dd                                         ; $5c01: $dd
	rst  $30                                         ; $5c02: $f7
	rst  $38                                         ; $5c03: $ff
	rst  $30                                         ; $5c04: $f7
	dec  a                                           ; $5c05: $3d
	rst  $28                                         ; $5c06: $ef
	ld   a, [hl-]                                    ; $5c07: $3a
	rst  JumpTable                                         ; $5c08: $df
	ld   [hl], h                                     ; $5c09: $74
	rst  JumpTable                                         ; $5c0a: $df
	ld   a, c                                        ; $5c0b: $79
	cp   $32                                         ; $5c0c: $fe $32
	db   $fc                                         ; $5c0e: $fc
	inc  h                                           ; $5c0f: $24
	db   $fc                                         ; $5c10: $fc
	ld   e, b                                        ; $5c11: $58
	rst  $38                                         ; $5c12: $ff
	rst  ToBoot                                         ; $5c13: $c7
	rst  JumpTable                                         ; $5c14: $df
	ret  nz                                          ; $5c15: $c0

	ld   c, a                                        ; $5c16: $4f
	ret  nz                                          ; $5c17: $c0

	rst  ToBoot                                         ; $5c18: $c7
	ret  nz                                          ; $5c19: $c0

	ld   b, b                                        ; $5c1a: $40
	ld   b, b                                        ; $5c1b: $40
	ld   b, b                                        ; $5c1c: $40
	ld   b, b                                        ; $5c1d: $40
	ld   b, b                                        ; $5c1e: $40
	ld   b, b                                        ; $5c1f: $40
	rst  $38                                         ; $5c20: $ff
	ld   l, e                                        ; $5c21: $6b
	rst  $38                                         ; $5c22: $ff
	adc  [hl]                                        ; $5c23: $8e
	db   $fd                                         ; $5c24: $fd
	ld   c, $f9                                      ; $5c25: $0e $f9
	ld   c, $d9                                      ; $5c27: $0e $d9
	rrca                                             ; $5c29: $0f
	ld   e, $0e                                      ; $5c2a: $1e $0e
	rra                                              ; $5c2c: $1f
	rrca                                             ; $5c2d: $0f
	ei                                               ; $5c2e: $fb
	ld   c, $be                                      ; $5c2f: $0e $be
	or   $be                                         ; $5c31: $f6 $be
	cp   $b2                                         ; $5c33: $fe $b2
	ldh  a, [c]                                      ; $5c35: $f2
	sub  d                                           ; $5c36: $92
	ldh  a, [c]                                      ; $5c37: $f2
	jp   nc, Jump_092_52f2                           ; $5c38: $d2 $f2 $52

	ld   [hl], d                                     ; $5c3b: $72
	ld   h, d                                        ; $5c3c: $62
	ld   h, d                                        ; $5c3d: $62
	jp   nz, $f8c2                                   ; $5c3e: $c2 $c2 $f8

	ld   a, b                                        ; $5c41: $78
	ld   hl, sp-$38                                  ; $5c42: $f8 $c8
	cp   h                                           ; $5c44: $bc
	sub  h                                           ; $5c45: $94
	cp   h                                           ; $5c46: $bc
	and  h                                           ; $5c47: $a4
	halt                                             ; $5c48: $76
	ld   [hl+], a                                    ; $5c49: $22
	di                                               ; $5c4a: $f3
	ld   b, c                                        ; $5c4b: $41
	di                                               ; $5c4c: $f3
	ld   b, b                                        ; $5c4d: $40
	di                                               ; $5c4e: $f3
	add  b                                           ; $5c4f: $80
	add  hl, bc                                      ; $5c50: $09
	nop                                              ; $5c51: $00
	inc  c                                           ; $5c52: $0c
	nop                                              ; $5c53: $00

jr_092_5c54:
	ld   [rRAMG], sp                                 ; $5c54: $08 $00 $00
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	nop                                              ; $5c59: $00
	add  b                                           ; $5c5a: $80
	add  b                                           ; $5c5b: $80
	rst  $38                                         ; $5c5c: $ff
	ld   a, a                                        ; $5c5d: $7f
	db   $e3                                         ; $5c5e: $e3
	nop                                              ; $5c5f: $00
	ei                                               ; $5c60: $fb
	xor  $1b                                         ; $5c61: $ee $1b
	ld   e, $0a                                      ; $5c63: $1e $0a
	ld   c, $09                                      ; $5c65: $0e $09
	rrca                                             ; $5c67: $0f
	add  hl, bc                                      ; $5c68: $09
	rrca                                             ; $5c69: $0f
	ld   a, a                                        ; $5c6a: $7f
	ld   a, a                                        ; $5c6b: $7f
	jp   hl                                          ; $5c6c: $e9


	sbc  a                                           ; $5c6d: $9f
	ret                                              ; $5c6e: $c9


	ccf                                              ; $5c6f: $3f
	cp   $3e                                         ; $5c70: $fe $3e
	add  d                                           ; $5c72: $82
	ld   [bc], a                                     ; $5c73: $02
	ld   [bc], a                                     ; $5c74: $02
	ld   [bc], a                                     ; $5c75: $02
	ld   [bc], a                                     ; $5c76: $02
	ld   [bc], a                                     ; $5c77: $02
	ld   [bc], a                                     ; $5c78: $02
	ld   [bc], a                                     ; $5c79: $02
	ld   [bc], a                                     ; $5c7a: $02
	ld   [bc], a                                     ; $5c7b: $02
	ld   [bc], a                                     ; $5c7c: $02
	ld   [bc], a                                     ; $5c7d: $02
	ld   c, $02                                      ; $5c7e: $0e $02
	jr   nc, @+$33                                   ; $5c80: $30 $31

	ld   b, b                                        ; $5c82: $40
	ld   b, a                                        ; $5c83: $47
	add  c                                           ; $5c84: $81
	adc  a                                           ; $5c85: $8f
	ld   [bc], a                                     ; $5c86: $02
	ccf                                              ; $5c87: $3f
	inc  b                                           ; $5c88: $04
	ld   a, a                                        ; $5c89: $7f
	inc  b                                           ; $5c8a: $04
	rst  $38                                         ; $5c8b: $ff
	ld   [$10fb], sp                                 ; $5c8c: $08 $fb $10
	rst  $30                                         ; $5c8f: $f7
	ld   [hl], d                                     ; $5c90: $72
	ldh  a, [c]                                      ; $5c91: $f2
	ld   a, [bc]                                     ; $5c92: $0a
	ld   a, [bc]                                     ; $5c93: $0a
	ld   b, $8e                                      ; $5c94: $06 $8e
	ld   [bc], a                                     ; $5c96: $02
	add  $82                                         ; $5c97: $c6 $82
	ldh  a, [c]                                      ; $5c99: $f2
	ld   b, d                                        ; $5c9a: $42
	ld   a, d                                        ; $5c9b: $7a
	ld   [hl+], a                                    ; $5c9c: $22
	ld   a, $12                                      ; $5c9d: $3e $12
	ld   e, $38                                      ; $5c9f: $1e $38
	ld   [hl], b                                     ; $5ca1: $70
	jr   c, jr_092_5d14                              ; $5ca2: $38 $70

	inc  a                                           ; $5ca4: $3c
	ld   l, b                                        ; $5ca5: $68
	inc  a                                           ; $5ca6: $3c
	ld   l, h                                        ; $5ca7: $6c
	sbc  [hl]                                        ; $5ca8: $9e
	or   [hl]                                        ; $5ca9: $b6
	sbc  a                                           ; $5caa: $9f
	or   l                                           ; $5cab: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cac: $cf
	ld   e, d                                        ; $5cad: $5a
	rst  $28                                         ; $5cae: $ef
	dec  a                                           ; $5caf: $3d
	and  $2e                                         ; $5cb0: $e6 $2e
	and  $2e                                         ; $5cb2: $e6 $2e
	add  $5e                                         ; $5cb4: $c6 $5e
	adc  $da                                         ; $5cb6: $ce $da
	adc  $5a                                         ; $5cb8: $ce $5a
	sbc  $76                                         ; $5cba: $de $76
	sbc  [hl]                                        ; $5cbc: $9e
	or   [hl]                                        ; $5cbd: $b6
	sbc  [hl]                                        ; $5cbe: $9e
	cp   [hl]                                        ; $5cbf: $be
	rst  $30                                         ; $5cc0: $f7
	sbc  l                                           ; $5cc1: $9d
	rst  $30                                         ; $5cc2: $f7
	cp   $57                                         ; $5cc3: $fe $57
	ld   e, a                                        ; $5cc5: $5f
	xor  c                                           ; $5cc6: $a9
	cp   c                                           ; $5cc7: $b9
	push de                                          ; $5cc8: $d5
	push af                                          ; $5cc9: $f5
	ld   e, l                                        ; $5cca: $5d
	ld   a, l                                        ; $5ccb: $7d
	and  e                                           ; $5ccc: $a3
	and  e                                           ; $5ccd: $a3
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	db   $fc                                         ; $5cd0: $fc
	sbc  b                                           ; $5cd1: $98
	cp   a                                           ; $5cd2: $bf
	add  a                                           ; $5cd3: $87
	rst  JumpTable                                         ; $5cd4: $df
	ret  nz                                          ; $5cd5: $c0

	xor  a                                           ; $5cd6: $af
	and  b                                           ; $5cd7: $a0
	dec  sp                                          ; $5cd8: $3b
	jr   c, jr_092_5d03                              ; $5cd9: $38 $28

	xor  b                                           ; $5cdb: $a8
	rst  ToBoot                                         ; $5cdc: $c7
	rst  $30                                         ; $5cdd: $f7
	inc  a                                           ; $5cde: $3c
	inc  a                                           ; $5cdf: $3c
	rst  $38                                         ; $5ce0: $ff
	halt                                             ; $5ce1: $76
	rst  $38                                         ; $5ce2: $ff
	sub  a                                           ; $5ce3: $97
	rst  $38                                         ; $5ce4: $ff
	rra                                              ; $5ce5: $1f
	or   $1f                                         ; $5ce6: $f6 $1f
	db   $f4                                         ; $5ce8: $f4
	rra                                              ; $5ce9: $1f
	dec  a                                           ; $5cea: $3d
	rra                                              ; $5ceb: $1f
	ld   a, [hl]                                     ; $5cec: $7e
	ld   [hl], e                                     ; $5ced: $73
	sbc  a                                           ; $5cee: $9f
	sub  a                                           ; $5cef: $97
	cp   d                                           ; $5cf0: $ba
	jp   nc, $febe                                   ; $5cf1: $d2 $be $fe

	or   d                                           ; $5cf4: $b2
	ldh  [c], a                                      ; $5cf5: $e2
	sbc  $ba                                         ; $5cf6: $de $ba
	sub  $f6                                         ; $5cf8: $d6 $f6
	ld   d, d                                        ; $5cfa: $52
	ld   [hl], d                                     ; $5cfb: $72
	ld   h, d                                        ; $5cfc: $62
	ld   h, d                                        ; $5cfd: $62
	sbc  d                                           ; $5cfe: $9a
	sbc  d                                           ; $5cff: $9a
	nop                                              ; $5d00: $00
	nop                                              ; $5d01: $00
	nop                                              ; $5d02: $00

jr_092_5d03:
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	rlca                                             ; $5d05: $07
	nop                                              ; $5d06: $00
	rra                                              ; $5d07: $1f
	nop                                              ; $5d08: $00
	rst  $38                                         ; $5d09: $ff
	nop                                              ; $5d0a: $00
	rst  $38                                         ; $5d0b: $ff
	nop                                              ; $5d0c: $00
	rst  $38                                         ; $5d0d: $ff
	nop                                              ; $5d0e: $00
	rst  $38                                         ; $5d0f: $ff
	inc  bc                                          ; $5d10: $03
	rra                                              ; $5d11: $1f
	nop                                              ; $5d12: $00
	rlca                                             ; $5d13: $07

jr_092_5d14:
	nop                                              ; $5d14: $00
	db   $e3                                         ; $5d15: $e3
	nop                                              ; $5d16: $00
	ret  nz                                          ; $5d17: $c0

	nop                                              ; $5d18: $00
	add  b                                           ; $5d19: $80
	nop                                              ; $5d1a: $00
	add  b                                           ; $5d1b: $80
	nop                                              ; $5d1c: $00
	nop                                              ; $5d1d: $00
	nop                                              ; $5d1e: $00
	nop                                              ; $5d1f: $00
	sbc  d                                           ; $5d20: $9a
	sbc  e                                           ; $5d21: $9b
	ld   c, d                                        ; $5d22: $4a
	rst  $38                                         ; $5d23: $ff
	inc  a                                           ; $5d24: $3c
	rst  $38                                         ; $5d25: $ff
	ld   [$0cff], sp                                 ; $5d26: $08 $ff $0c
	ld   a, [hl]                                     ; $5d29: $7e
	ld   e, $1e                                      ; $5d2a: $1e $1e
	rra                                              ; $5d2c: $1f
	dec  de                                          ; $5d2d: $1b
	ccf                                              ; $5d2e: $3f
	add  hl, hl                                      ; $5d2f: $29
	ld   b, $8e                                      ; $5d30: $06 $8e
	ld   b, $86                                      ; $5d32: $06 $86
	ld   [bc], a                                     ; $5d34: $02
	ld   b, $02                                      ; $5d35: $06 $02
	ld   [bc], a                                     ; $5d37: $02
	ld   [bc], a                                     ; $5d38: $02
	ld   [bc], a                                     ; $5d39: $02
	ld   [bc], a                                     ; $5d3a: $02
	ld   b, $02                                      ; $5d3b: $06 $02
	ld   a, $82                                      ; $5d3d: $3e $82
	sbc  [hl]                                        ; $5d3f: $9e
	ld   hl, $42ef                                   ; $5d40: $21 $ef $42
	adc  $84                                         ; $5d43: $ce $84
	sub  l                                           ; $5d45: $95
	dec  bc                                          ; $5d46: $0b
	dec  hl                                          ; $5d47: $2b
	dec  e                                           ; $5d48: $1d
	rra                                              ; $5d49: $1f
	inc  sp                                          ; $5d4a: $33
	ld   a, $46                                      ; $5d4b: $3e $46
	ld   e, h                                        ; $5d4d: $5c
	adc  h                                           ; $5d4e: $8c
	cp   b                                           ; $5d4f: $b8
	jr   c, @+$62                                    ; $5d50: $38 $60

	sbc  b                                           ; $5d52: $98
	ldh  a, [$d0]                                    ; $5d53: $f0 $d0
	ldh  a, [$d0]                                    ; $5d55: $f0 $d0
	ldh  a, [$e8]                                    ; $5d57: $f0 $e8
	ld   a, b                                        ; $5d59: $78
	jr   c, jr_092_5d74                              ; $5d5a: $38 $18

	ldh  a, [$60]                                    ; $5d5c: $f0 $60
	db   $10                                         ; $5d5e: $10
	db   $10                                         ; $5d5f: $10
	inc  d                                           ; $5d60: $14
	rra                                              ; $5d61: $1f
	ld   d, $1f                                      ; $5d62: $16 $1f
	rla                                              ; $5d64: $17
	dec  e                                           ; $5d65: $1d
	cpl                                              ; $5d66: $2f
	ccf                                              ; $5d67: $3f
	ccf                                              ; $5d68: $3f
	add  hl, sp                                      ; $5d69: $39
	ld   [hl], e                                     ; $5d6a: $73
	ld   h, b                                        ; $5d6b: $60
	cpl                                              ; $5d6c: $2f
	inc  c                                           ; $5d6d: $0c
	db   $10                                         ; $5d6e: $10
	db   $10                                         ; $5d6f: $10
	ld   a, [bc]                                     ; $5d70: $0a
	ld   c, $06                                      ; $5d71: $0e $06
	or   [hl]                                        ; $5d73: $b6

jr_092_5d74:
	ld   [bc], a                                     ; $5d74: $02
	jp   z, $f602                                    ; $5d75: $ca $02 $f6

	add  d                                           ; $5d78: $82
	ld   a, [$7ec2]                                  ; $5d79: $fa $c2 $7e
	jp   nz, $e27e                                   ; $5d7c: $c2 $7e $e2

	ld   a, $1b                                      ; $5d7f: $3e $1b
	ld   [hl], c                                     ; $5d81: $71
	ccf                                              ; $5d82: $3f
	rst  $20                                         ; $5d83: $e7
	ld   a, [hl]                                     ; $5d84: $7e
	adc  $fb                                         ; $5d85: $ce $fb
	jp   c, $c77f                                    ; $5d87: $da $7f $c7

	ld   [hl], b                                     ; $5d8a: $70
	ldh  [$3a], a                                    ; $5d8b: $e0 $3a
	ldh  [$35], a                                    ; $5d8d: $e0 $35
	ldh  [$e0], a                                    ; $5d8f: $e0 $e0
	ret  nz                                          ; $5d91: $c0

	ldh  [$f0], a                                    ; $5d92: $e0 $f0
	ldh  a, [$b0]                                    ; $5d94: $f0 $b0
	ld   h, b                                        ; $5d96: $60
	ldh  [$e0], a                                    ; $5d97: $e0 $e0
	ldh  [rP1], a                                    ; $5d99: $e0 $00
	nop                                              ; $5d9b: $00
	and  b                                           ; $5d9c: $a0
	nop                                              ; $5d9d: $00
	ld   b, c                                        ; $5d9e: $41
	nop                                              ; $5d9f: $00
	rrca                                             ; $5da0: $0f
	rlca                                             ; $5da1: $07
	rra                                              ; $5da2: $1f
	ccf                                              ; $5da3: $3f
	dec  sp                                          ; $5da4: $3b
	ld   a, [hl-]                                    ; $5da5: $3a
	dec  c                                           ; $5da6: $0d
	dec  bc                                          ; $5da7: $0b
	rra                                              ; $5da8: $1f
	rrca                                             ; $5da9: $0f
	ld   bc, $0a00                                   ; $5daa: $01 $00 $0a
	nop                                              ; $5dad: $00
	dec  d                                           ; $5dae: $15
	nop                                              ; $5daf: $00
	ldh  a, [c]                                      ; $5db0: $f2
	ld   e, $f2                                      ; $5db1: $1e $f2
	sbc  $fa                                         ; $5db3: $de $fa
	xor  $be                                         ; $5db5: $ee $be
	cp   [hl]                                        ; $5db7: $be
	cp   $ce                                         ; $5db8: $fe $ce
	ldh  a, [c]                                      ; $5dba: $f2
	ld   e, $f2                                      ; $5dbb: $1e $f2
	ld   d, $f2                                      ; $5dbd: $16 $f2
	ld   d, $e0                                      ; $5dbf: $16 $e0
	ld   h, b                                        ; $5dc1: $60
	add  b                                           ; $5dc2: $80
	add  b                                           ; $5dc3: $80
	nop                                              ; $5dc4: $00
	nop                                              ; $5dc5: $00
	inc  bc                                          ; $5dc6: $03
	inc  bc                                          ; $5dc7: $03
	inc  c                                           ; $5dc8: $0c
	dec  c                                           ; $5dc9: $0d
	db   $10                                         ; $5dca: $10
	inc  de                                          ; $5dcb: $13
	jr   nz, jr_092_5df4                             ; $5dcc: $20 $26

	ld   b, b                                        ; $5dce: $40
	ld   b, h                                        ; $5dcf: $44
	rra                                              ; $5dd0: $1f
	rra                                              ; $5dd1: $1f
	jr   nc, @+$32                                   ; $5dd2: $30 $30

	ldh  [$e0], a                                    ; $5dd4: $e0 $e0
	ld   b, b                                        ; $5dd6: $40
	db   $fd                                         ; $5dd7: $fd
	add  b                                           ; $5dd8: $80
	db   $e3                                         ; $5dd9: $e3
	ld   bc, $0183                                   ; $5dda: $01 $83 $01
	scf                                              ; $5ddd: $37
	ld   bc, $0177                                   ; $5dde: $01 $77 $01
	ld   bc, $8686                                   ; $5de1: $01 $86 $86
	ld   a, b                                        ; $5de4: $78
	ld   a, b                                        ; $5de5: $78
	jr   z, @+$01                                    ; $5de6: $28 $ff

	sub  b                                           ; $5de8: $90
	rst  $38                                         ; $5de9: $ff
	ld   b, l                                        ; $5dea: $45
	rst  $38                                         ; $5deb: $ff
	xor  h                                           ; $5dec: $ac
	rst  $38                                         ; $5ded: $ff
	ld   a, d                                        ; $5dee: $7a
	rst  $38                                         ; $5def: $ff
	sbc  [hl]                                        ; $5df0: $9e
	sbc  d                                           ; $5df1: $9a
	ld   b, [hl]                                     ; $5df2: $46
	ld   b, [hl]                                     ; $5df3: $46

jr_092_5df4:
	ld   [hl+], a                                    ; $5df4: $22
	ld   [hl+], a                                    ; $5df5: $22
	ld   [de], a                                     ; $5df6: $12
	sub  d                                           ; $5df7: $92
	ld   a, [bc]                                     ; $5df8: $0a
	ld   [$b606], a                                  ; $5df9: $ea $06 $b6
	add  d                                           ; $5dfc: $82
	jp   nz, $e682                                   ; $5dfd: $c2 $82 $e6

	add  b                                           ; $5e00: $80
	add  b                                           ; $5e01: $80
	nop                                              ; $5e02: $00
	ld   hl, $e200                                   ; $5e03: $21 $00 $e2
	nop                                              ; $5e06: $00
	pop  hl                                          ; $5e07: $e1
	nop                                              ; $5e08: $00
	call $f800                                       ; $5e09: $cd $00 $f8
	inc  b                                           ; $5e0c: $04
	db   $fc                                         ; $5e0d: $fc
	ld   [$03f8], sp                                 ; $5e0e: $08 $f8 $03
	or   $12                                         ; $5e11: $f6 $12
	or   $12                                         ; $5e13: $f6 $12
	or   $12                                         ; $5e15: $f6 $12
	or   $12                                         ; $5e17: $f6 $12
	halt                                             ; $5e19: $76
	ld   [de], a                                     ; $5e1a: $12
	ld   a, [hl]                                     ; $5e1b: $7e
	ld   [hl-], a                                    ; $5e1c: $32
	ld   a, [hl]                                     ; $5e1d: $7e
	ld   a, [hl-]                                    ; $5e1e: $3a
	xor  $9e                                         ; $5e1f: $ee $9e
	inc  bc                                          ; $5e21: $03
	ld   c, $03                                      ; $5e22: $0e $03
	ld   c, $03                                      ; $5e24: $0e $03
	ld   b, $03                                      ; $5e26: $06 $03
	ld   b, $03                                      ; $5e28: $06 $03
	ld   b, $03                                      ; $5e2a: $06 $03
	ld   b, $03                                      ; $5e2c: $06 $03
	inc  c                                           ; $5e2e: $0c
	rlca                                             ; $5e2f: $07
	ld   b, d                                        ; $5e30: $42
	ldh  a, [c]                                      ; $5e31: $f2
	ld   h, d                                        ; $5e32: $62
	ld   a, [$7e62]                                  ; $5e33: $fa $62 $7e
	ld   d, d                                        ; $5e36: $52
	ld   a, [hl]                                     ; $5e37: $7e
	ld   d, d                                        ; $5e38: $52
	ld   a, [hl]                                     ; $5e39: $7e
	ld   c, d                                        ; $5e3a: $4a
	cp   $8a                                         ; $5e3b: $fe $8a
	cp   $86                                         ; $5e3d: $fe $86
	sub  $30                                         ; $5e3f: $d6 $30
	pop  af                                          ; $5e41: $f1
	ret  nz                                          ; $5e42: $c0

	rst  $20                                         ; $5e43: $e7
	ld   [bc], a                                     ; $5e44: $02
	rst  $38                                         ; $5e45: $ff
	inc  b                                           ; $5e46: $04
	rst  $38                                         ; $5e47: $ff
	add  hl, de                                      ; $5e48: $19
	rst  $38                                         ; $5e49: $ff
	ld   h, d                                        ; $5e4a: $62
	cp   $87                                         ; $5e4b: $fe $87
	db   $fc                                         ; $5e4d: $fc
	ccf                                              ; $5e4e: $3f
	ld   a, [$cf79]                                  ; $5e4f: $fa $79 $cf
	ld   a, l                                        ; $5e52: $7d
	rst  $38                                         ; $5e53: $ff
	adc  a                                           ; $5e54: $8f
	add  a                                           ; $5e55: $87
	add  a                                           ; $5e56: $87
	add  b                                           ; $5e57: $80
	nop                                              ; $5e58: $00
	nop                                              ; $5e59: $00
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	inc  c                                           ; $5e5c: $0c
	nop                                              ; $5e5d: $00
	rst  ToBoot                                         ; $5e5e: $c7
	ld   b, $0d                                      ; $5e5f: $06 $0d
	rlca                                             ; $5e61: $07
	adc  e                                           ; $5e62: $8b
	ld   c, $8f                                      ; $5e63: $0e $8f
	adc  a                                           ; $5e65: $8f
	ld   b, $06                                      ; $5e66: $06 $06
	ld   b, $00                                      ; $5e68: $06 $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	ld   b, $00                                      ; $5e6e: $06 $00
	add  $76                                         ; $5e70: $c6 $76
	jp   nz, $e26a                                   ; $5e72: $c2 $6a $e2

	ldh  a, [c]                                      ; $5e75: $f2
	ld   h, d                                        ; $5e76: $62
	ld   a, [hl-]                                    ; $5e77: $3a
	ld   [hl-], a                                    ; $5e78: $32
	ld   a, [de]                                     ; $5e79: $1a
	ld   [hl-], a                                    ; $5e7a: $32
	ld   e, $3a                                      ; $5e7b: $1e $3a
	ld   e, $7a                                      ; $5e7d: $1e $7a
	ld   e, $df                                      ; $5e7f: $1e $df
	pop  de                                          ; $5e81: $d1
	sbc  l                                           ; $5e82: $9d
	ret  nc                                          ; $5e83: $d0

	sbc  h                                           ; $5e84: $9c
	ret  nc                                          ; $5e85: $d0

	adc  h                                           ; $5e86: $8c
	ret  z                                           ; $5e87: $c8

	call z, $ce68                                    ; $5e88: $cc $68 $ce
	ld   l, b                                        ; $5e8b: $68
	adc  $6c                                         ; $5e8c: $ce $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e8e: $cf
	ld   l, d                                        ; $5e8f: $6a
	cp   $fc                                         ; $5e90: $fe $fc
	ld   hl, sp-$08                                  ; $5e92: $f8 $f8
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	inc  c                                           ; $5ea0: $0c
	ld   [$0707], sp                                 ; $5ea1: $08 $07 $07
	inc  bc                                          ; $5ea4: $03
	inc  bc                                          ; $5ea5: $03
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	ld   b, b                                        ; $5eaa: $40
	nop                                              ; $5eab: $00
	ld   h, b                                        ; $5eac: $60
	jr   nz, jr_092_5f0f                             ; $5ead: $20 $60

	nop                                              ; $5eaf: $00
	or   $5e                                         ; $5eb0: $f6 $5e
	and  $ee                                         ; $5eb2: $e6 $ee
	and  $ae                                         ; $5eb4: $e6 $ae
	ld   h, [hl]                                     ; $5eb6: $66
	ld   l, $6a                                      ; $5eb7: $2e $6a
	ld   a, [hl-]                                    ; $5eb9: $3a
	ld   l, d                                        ; $5eba: $6a
	ld   a, d                                        ; $5ebb: $7a
	ld   c, d                                        ; $5ebc: $4a
	ld   e, d                                        ; $5ebd: $5a
	jp   z, $efda                                    ; $5ebe: $ca $da $ef

	dec  a                                           ; $5ec1: $3d
	push hl                                          ; $5ec2: $e5
	ld   a, h                                        ; $5ec3: $7c
	and  [hl]                                        ; $5ec4: $a6
	cp   [hl]                                        ; $5ec5: $be
	sub  l                                           ; $5ec6: $95
	sbc  l                                           ; $5ec7: $9d
	dec  [hl]                                        ; $5ec8: $35
	dec  a                                           ; $5ec9: $3d
	push hl                                          ; $5eca: $e5
	db   $fd                                         ; $5ecb: $fd
	ld   a, [hl+]                                    ; $5ecc: $2a
	ld   a, [hl-]                                    ; $5ecd: $3a
	add  hl, hl                                      ; $5ece: $29
	add  hl, sp                                      ; $5ecf: $39
	add  c                                           ; $5ed0: $81
	nop                                              ; $5ed1: $00
	ret  nz                                          ; $5ed2: $c0

	add  b                                           ; $5ed3: $80
	ld   [hl], b                                     ; $5ed4: $70
	ld   h, b                                        ; $5ed5: $60
	ld   a, h                                        ; $5ed6: $7c
	jr   @-$1f                                       ; $5ed7: $18 $df

	rst  ToBoot                                         ; $5ed9: $c7
	ld   b, c                                        ; $5eda: $41
	ld   b, b                                        ; $5edb: $40
	dec  sp                                          ; $5edc: $3b
	dec  sp                                          ; $5edd: $3b
	db   $e4                                         ; $5ede: $e4
	db   $e4                                         ; $5edf: $e4
	add  c                                           ; $5ee0: $81
	add  b                                           ; $5ee1: $80
	inc  bc                                          ; $5ee2: $03
	inc  bc                                          ; $5ee3: $03
	rra                                              ; $5ee4: $1f
	rrca                                             ; $5ee5: $0f
	ld   [hl], a                                     ; $5ee6: $77
	dec  a                                           ; $5ee7: $3d
	and  a                                           ; $5ee8: $a7
	rst  $38                                         ; $5ee9: $ff
	db   $eb                                         ; $5eea: $eb
	ei                                               ; $5eeb: $fb
	di                                               ; $5eec: $f3
	sbc  e                                           ; $5eed: $9b
	db   $fc                                         ; $5eee: $fc
	cp   h                                           ; $5eef: $bc
	sbc  $f6                                         ; $5ef0: $de $f6
	sbc  $76                                         ; $5ef2: $de $76
	sbc  $76                                         ; $5ef4: $de $76
	sbc  [hl]                                        ; $5ef6: $9e
	or   [hl]                                        ; $5ef7: $b6
	sbc  [hl]                                        ; $5ef8: $9e
	or   [hl]                                        ; $5ef9: $b6
	adc  $5a                                         ; $5efa: $ce $5a
	xor  $3a                                         ; $5efc: $ee $3a
	xor  $ea                                         ; $5efe: $ee $ea
	db   $10                                         ; $5f00: $10
	stop                                             ; $5f01: $10 $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	ccf                                              ; $5f05: $3f
	nop                                              ; $5f06: $00
	cp   $00                                         ; $5f07: $fe $00
	db   $fc                                         ; $5f09: $fc
	nop                                              ; $5f0a: $00
	db   $fc                                         ; $5f0b: $fc
	nop                                              ; $5f0c: $00
	ld   hl, sp+$00                                  ; $5f0d: $f8 $00

jr_092_5f0f:
	ld   hl, sp+$1c                                  ; $5f0f: $f8 $1c
	db   $fc                                         ; $5f11: $fc
	ld   [bc], a                                     ; $5f12: $02
	ld   a, $01                                      ; $5f13: $3e $01
	rra                                              ; $5f15: $1f
	nop                                              ; $5f16: $00
	rlca                                             ; $5f17: $07
	nop                                              ; $5f18: $00
	inc  bc                                          ; $5f19: $03
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	ld   bc, $d001                                   ; $5f1e: $01 $01 $d0
	rst  $38                                         ; $5f21: $ff
	ld   d, b                                        ; $5f22: $50
	ld   a, [hl]                                     ; $5f23: $7e
	ldh  [$fe], a                                    ; $5f24: $e0 $fe
	ld   b, b                                        ; $5f26: $40
	db   $fc                                         ; $5f27: $fc
	ld   h, b                                        ; $5f28: $60
	ld   hl, sp-$10                                  ; $5f29: $f8 $f0
	ldh  a, [$f8]                                    ; $5f2b: $f0 $f8
	reti                                             ; $5f2d: $d9


	db   $fc                                         ; $5f2e: $fc
	ld   c, h                                        ; $5f2f: $4c
	ld   d, [hl]                                     ; $5f30: $56
	ld   d, [hl]                                     ; $5f31: $56
	ld   a, d                                        ; $5f32: $7a
	ld   a, d                                        ; $5f33: $7a
	ld   b, $1e                                      ; $5f34: $06 $1e
	ld   [bc], a                                     ; $5f36: $02
	ld   e, $02                                      ; $5f37: $1e $02
	ld   e, $02                                      ; $5f39: $1e $02
	ld   a, $02                                      ; $5f3b: $3e $02
	cp   $02                                         ; $5f3d: $fe $02
	cp   $97                                         ; $5f3f: $fe $97
	sbc  a                                           ; $5f41: $9f
	ld   h, l                                        ; $5f42: $65
	db   $ed                                         ; $5f43: $ed
	ld   c, b                                        ; $5f44: $48
	ret  c                                           ; $5f45: $d8

	ld   d, b                                        ; $5f46: $50
	ret  nc                                          ; $5f47: $d0

	ld   d, b                                        ; $5f48: $50
	ldh  a, [rBCPD]                                  ; $5f49: $f0 $69
	ld   sp, hl                                      ; $5f4b: $f9
	sub  c                                           ; $5f4c: $91
	sub  b                                           ; $5f4d: $90
	sub  b                                           ; $5f4e: $90
	sub  b                                           ; $5f4f: $90
	sbc  b                                           ; $5f50: $98
	jr   jr_092_5f6a                                 ; $5f51: $18 $17

	rlca                                             ; $5f53: $07
	adc  b                                           ; $5f54: $88
	add  b                                           ; $5f55: $80
	ld   b, a                                        ; $5f56: $47
	ld   b, b                                        ; $5f57: $40
	ccf                                              ; $5f58: $3f
	add  hl, sp                                      ; $5f59: $39
	and  $e6                                         ; $5f5a: $e6 $e6
	rst  $20                                         ; $5f5c: $e7
	ld   h, $25                                      ; $5f5d: $26 $25
	dec  h                                           ; $5f5f: $25
	ld   l, [hl]                                     ; $5f60: $6e
	ld   l, a                                        ; $5f61: $6f
	cp   $f3                                         ; $5f62: $fe $f3
	ld   a, $03                                      ; $5f64: $3e $03
	rst  $38                                         ; $5f66: $ff
	ld   a, e                                        ; $5f67: $7b
	add  h                                           ; $5f68: $84
	add  h                                           ; $5f69: $84

jr_092_5f6a:
	inc  b                                           ; $5f6a: $04
	inc  b                                           ; $5f6b: $04
	add  $46                                         ; $5f6c: $c6 $46
	adc  $0e                                         ; $5f6e: $ce $0e
	or   [hl]                                        ; $5f70: $b6
	cp   $ba                                         ; $5f71: $fe $ba
	ld   a, [$fe9e]                                  ; $5f73: $fa $9e $fe
	ld   d, d                                        ; $5f76: $52
	cp   $e2                                         ; $5f77: $fe $e2
	or   $62                                         ; $5f79: $f6 $62
	halt                                             ; $5f7b: $76
	and  d                                           ; $5f7c: $a2
	or   [hl]                                        ; $5f7d: $b6
	ld   b, d                                        ; $5f7e: $42
	halt                                             ; $5f7f: $76
	adc  b                                           ; $5f80: $88
	ld   [$37b7], sp                                 ; $5f81: $08 $b7 $37
	jp   $8642                                       ; $5f84: $c3 $42 $86


	add  h                                           ; $5f87: $84
	rla                                              ; $5f88: $17
	dec  d                                           ; $5f89: $15
	ld   sp, $6321                                   ; $5f8a: $31 $21 $63
	ld   b, d                                        ; $5f8d: $42
	db   $e3                                         ; $5f8e: $e3
	add  d                                           ; $5f8f: $82
	db   $fc                                         ; $5f90: $fc
	db   $fc                                         ; $5f91: $fc
	cp   $46                                         ; $5f92: $fe $46
	push hl                                          ; $5f94: $e5
	add  l                                           ; $5f95: $85
	call wBaseScriptBank                                       ; $5f96: $cd $8c $cb
	ld   a, [bc]                                     ; $5f99: $0a
	adc  e                                           ; $5f9a: $8b
	ld   a, [bc]                                     ; $5f9b: $0a
	adc  e                                           ; $5f9c: $8b
	ld   a, [bc]                                     ; $5f9d: $0a
	inc  de                                          ; $5f9e: $13
	ld   [de], a                                     ; $5f9f: $12
	adc  b                                           ; $5fa0: $88
	adc  b                                           ; $5fa1: $88
	jr   @+$12                                       ; $5fa2: $18 $10

	add  hl, de                                      ; $5fa4: $19
	db   $10                                         ; $5fa5: $10
	rst  JumpTable                                         ; $5fa6: $df
	pop  de                                          ; $5fa7: $d1
	cp   $b3                                         ; $5fa8: $fe $b3
	call c, Call_092_7896                            ; $5faa: $dc $96 $78
	ld   e, h                                        ; $5fad: $5c
	ld   l, c                                        ; $5fae: $69
	ld   c, l                                        ; $5faf: $4d
	ld   b, d                                        ; $5fb0: $42
	halt                                             ; $5fb1: $76
	add  d                                           ; $5fb2: $82
	xor  $82                                         ; $5fb3: $ee $82
	adc  $02                                         ; $5fb5: $ce $02
	sbc  [hl]                                        ; $5fb7: $9e
	ld   [bc], a                                     ; $5fb8: $02
	ld   a, [hl]                                     ; $5fb9: $7e
	ld   [bc], a                                     ; $5fba: $02
	cp   $e2                                         ; $5fbb: $fe $e2
	cp   $1e                                         ; $5fbd: $fe $1e
	cp   $b7                                         ; $5fbf: $fe $b7
	db   $dd                                         ; $5fc1: $dd
	rst  $30                                         ; $5fc2: $f7
	rst  $38                                         ; $5fc3: $ff
	inc  [hl]                                        ; $5fc4: $34
	inc  a                                           ; $5fc5: $3c
	inc  l                                           ; $5fc6: $2c
	inc  a                                           ; $5fc7: $3c
	ld   e, b                                        ; $5fc8: $58
	ld   a, b                                        ; $5fc9: $78
	ret  c                                           ; $5fca: $d8

	ld   hl, sp-$11                                  ; $5fcb: $f8 $ef
	ld   h, a                                        ; $5fcd: $67
	ld   bc, $fc00                                   ; $5fce: $01 $00 $fc
	ld   e, b                                        ; $5fd1: $58
	rst  $38                                         ; $5fd2: $ff
	rst  ToBoot                                         ; $5fd3: $c7
	ld   e, a                                        ; $5fd4: $5f
	ld   b, b                                        ; $5fd5: $40
	ld   c, a                                        ; $5fd6: $4f
	ld   b, b                                        ; $5fd7: $40
	ld   b, a                                        ; $5fd8: $47
	ld   b, b                                        ; $5fd9: $40
	ld   b, b                                        ; $5fda: $40
	ld   b, b                                        ; $5fdb: $40
	ret  nz                                          ; $5fdc: $c0

	add  b                                           ; $5fdd: $80
	ret  nz                                          ; $5fde: $c0

	nop                                              ; $5fdf: $00
	rst  $38                                         ; $5fe0: $ff
	ld   l, e                                        ; $5fe1: $6b
	cp   $8e                                         ; $5fe2: $fe $8e
	ld   hl, sp+$08                                  ; $5fe4: $f8 $08
	ret  c                                           ; $5fe6: $d8

	ld   [$0898], sp                                 ; $5fe7: $08 $98 $08
	jr   @+$0a                                       ; $5fea: $18 $08

	ccf                                              ; $5fec: $3f
	rlca                                             ; $5fed: $07
	ccf                                              ; $5fee: $3f
	nop                                              ; $5fef: $00
	cp   [hl]                                        ; $5ff0: $be
	or   $be                                         ; $5ff1: $f6 $be
	cp   $b2                                         ; $5ff3: $fe $b2
	ldh  a, [c]                                      ; $5ff5: $f2
	sub  d                                           ; $5ff6: $92
	ldh  a, [c]                                      ; $5ff7: $f2
	jp   nc, $def2                                   ; $5ff8: $d2 $f2 $de

	cp   $f2                                         ; $5ffb: $fe $f2
	ldh  [c], a                                      ; $5ffd: $e2
	ld   [bc], a                                     ; $5ffe: $02
	ld   [bc], a                                     ; $5fff: $02
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	jr   nz, jr_092_600a                             ; $6008: $20 $00

jr_092_600a:
	jr   nz, jr_092_600c                             ; $600a: $20 $00

jr_092_600c:
	ld   h, b                                        ; $600c: $60
	nop                                              ; $600d: $00
	ldh  [rP1], a                                    ; $600e: $e0 $00
	nop                                              ; $6010: $00
	nop                                              ; $6011: $00
	nop                                              ; $6012: $00
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	ld   a, h                                        ; $6020: $7c
	inc  a                                           ; $6021: $3c
	ldh  [rLCDC], a                                  ; $6022: $e0 $40
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	nop                                              ; $602c: $00
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	nop                                              ; $602f: $00
	ld   [bc], a                                     ; $6030: $02
	ld   [bc], a                                     ; $6031: $02
	ld   [bc], a                                     ; $6032: $02
	ld   [bc], a                                     ; $6033: $02
	ld   [bc], a                                     ; $6034: $02
	ld   [bc], a                                     ; $6035: $02
	ld   [bc], a                                     ; $6036: $02
	ld   [bc], a                                     ; $6037: $02
	ld   [bc], a                                     ; $6038: $02
	ld   [bc], a                                     ; $6039: $02
	ld   a, [bc]                                     ; $603a: $0a
	ld   [bc], a                                     ; $603b: $02
	ld   c, $02                                      ; $603c: $0e $02
	ld   c, $02                                      ; $603e: $0e $02
	ld   hl, $42ef                                   ; $6040: $21 $ef $42
	adc  $84                                         ; $6043: $ce $84
	sub  l                                           ; $6045: $95
	dec  bc                                          ; $6046: $0b
	dec  hl                                          ; $6047: $2b
	dec  e                                           ; $6048: $1d
	rra                                              ; $6049: $1f
	inc  hl                                          ; $604a: $23
	ld   a, $47                                      ; $604b: $3e $47
	ld   e, h                                        ; $604d: $5c
	adc  h                                           ; $604e: $8c
	cp   b                                           ; $604f: $b8
	jr   c, @+$62                                    ; $6050: $38 $60

	sbc  b                                           ; $6052: $98
	ldh  a, [$d0]                                    ; $6053: $f0 $d0
	ldh  a, [$d8]                                    ; $6055: $f0 $d8
	ld   hl, sp-$18                                  ; $6057: $f8 $e8
	ld   a, b                                        ; $6059: $78
	ld   hl, sp+$18                                  ; $605a: $f8 $18
	jr   c, jr_092_605e                              ; $605c: $38 $00

jr_092_605e:
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	inc  d                                           ; $6060: $14
	rra                                              ; $6061: $1f
	ld   d, $1f                                      ; $6062: $16 $1f

jr_092_6064:
	rla                                              ; $6064: $17
	dec  e                                           ; $6065: $1d
	ld   l, a                                        ; $6066: $6f
	ld   a, a                                        ; $6067: $7f
	ccf                                              ; $6068: $3f
	jr   c, jr_092_60e4                              ; $6069: $38 $79

	ld   h, b                                        ; $606b: $60
	ld   [hl], b                                     ; $606c: $70
	nop                                              ; $606d: $00

jr_092_606e:
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00

jr_092_6070:
	ld   a, [bc]                                     ; $6070: $0a
	ld   c, $06                                      ; $6071: $0e $06
	or   [hl]                                        ; $6073: $b6
	ld   [bc], a                                     ; $6074: $02
	jp   z, $f602                                    ; $6075: $ca $02 $f6

	add  d                                           ; $6078: $82
	ld   a, [$7ec2]                                  ; $6079: $fa $c2 $7e
	jp   nz, Jump_092_627e                           ; $607c: $c2 $7e $62

	ld   a, $18                                      ; $607f: $3e $18
	ld   [hl], b                                     ; $6081: $70
	jr   c, jr_092_6064                              ; $6082: $38 $e0

	ld   a, [hl]                                     ; $6084: $7e
	ret  z                                           ; $6085: $c8

	rst  $38                                         ; $6086: $ff
	rst  ToBoot                                         ; $6087: $c7
	ld   a, e                                        ; $6088: $7b
	jp   $e070                                       ; $6089: $c3 $70 $e0


	jr   nc, jr_092_606e                             ; $608c: $30 $e0

	jr   nc, jr_092_6070                             ; $608e: $30 $e0

	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	jr   jr_092_6096                                 ; $6094: $18 $00

jr_092_6096:
	ldh  a, [$f0]                                    ; $6096: $f0 $f0
	ldh  a, [$e0]                                    ; $6098: $f0 $e0
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	ld   bc, $0000                                   ; $609e: $01 $00 $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	jr   nc, jr_092_60a6                             ; $60a4: $30 $00

jr_092_60a6:
	rra                                              ; $60a6: $1f
	rra                                              ; $60a7: $1f
	rra                                              ; $60a8: $1f
	rrca                                             ; $60a9: $0f
	ld   bc, $0000                                   ; $60aa: $01 $00 $00
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	ld   [hl-], a                                    ; $60b0: $32
	ld   e, $32                                      ; $60b1: $1e $32
	ld   c, $fa                                      ; $60b3: $0e $fa
	ld   l, $fe                                      ; $60b5: $2e $fe
	adc  $fe                                         ; $60b7: $ce $fe
	adc  [hl]                                        ; $60b9: $8e
	ldh  a, [c]                                      ; $60ba: $f2
	ld   e, $f2                                      ; $60bb: $1e $f2
	ld   d, $f2                                      ; $60bd: $16 $f2
	ld   d, $00                                      ; $60bf: $16 $00
	nop                                              ; $60c1: $00
	add  b                                           ; $60c2: $80
	nop                                              ; $60c3: $00

jr_092_60c4:
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	add  c                                           ; $60c6: $81
	add  b                                           ; $60c7: $80
	pop  bc                                          ; $60c8: $c1
	ld   b, c                                        ; $60c9: $41
	jp   Jump_092_4f43                               ; $60ca: $c3 $43 $4f


	ld   b, a                                        ; $60cd: $47
	cp   a                                           ; $60ce: $bf
	sbc  d                                           ; $60cf: $9a
	ld   bc, $0300                                   ; $60d0: $01 $00 $03
	ld   bc, $0000                                   ; $60d3: $01 $00 $00
	rlca                                             ; $60d6: $07
	inc  b                                           ; $60d7: $04
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	ret  nz                                          ; $60dc: $c0

	add  b                                           ; $60dd: $80
	ldh  a, [$60]                                    ; $60de: $f0 $60
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	add  b                                           ; $60e2: $80
	nop                                              ; $60e3: $00

jr_092_60e4:
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	add  c                                           ; $60e6: $81
	add  b                                           ; $60e7: $80
	ld   bc, $0301                                   ; $60e8: $01 $01 $03
	inc  bc                                          ; $60eb: $03
	rrca                                             ; $60ec: $0f
	rlca                                             ; $60ed: $07
	ccf                                              ; $60ee: $3f
	ld   a, [de]                                     ; $60ef: $1a
	ld   bc, $0300                                   ; $60f0: $01 $00 $03
	ld   bc, $0000                                   ; $60f3: $01 $00 $00
	rrca                                             ; $60f6: $0f
	inc  b                                           ; $60f7: $04
	inc  bc                                          ; $60f8: $03
	nop                                              ; $60f9: $00
	nop                                              ; $60fa: $00
	nop                                              ; $60fb: $00
	ret  nz                                          ; $60fc: $c0

	add  b                                           ; $60fd: $80
	ldh  a, [$60]                                    ; $60fe: $f0 $60
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	rra                                              ; $6110: $1f
	inc  bc                                          ; $6111: $03
	add  b                                           ; $6112: $80
	nop                                              ; $6113: $00
	add  b                                           ; $6114: $80
	ld   a, a                                        ; $6115: $7f
	sbc  d                                           ; $6116: $9a
	ld   b, b                                        ; $6117: $40
	add  b                                           ; $6118: $80
	nop                                              ; $6119: $00
	add  b                                           ; $611a: $80
	rst  $38                                         ; $611b: $ff
	sbc  e                                           ; $611c: $9b
	nop                                              ; $611d: $00
	ld   bc, $80ff                                   ; $611e: $01 $ff $80
	sbc  e                                           ; $6121: $9b
	rst  $38                                         ; $6122: $ff
	nop                                              ; $6123: $00
	add  b                                           ; $6124: $80
	add  c                                           ; $6125: $81
	nop                                              ; $6126: $00
	ld   a, [de]                                     ; $6127: $1a
	jr   jr_092_612a                                 ; $6128: $18 $00

jr_092_612a:
	inc  h                                           ; $612a: $24
	nop                                              ; $612b: $00
	ld   [bc], a                                     ; $612c: $02
	nop                                              ; $612d: $00
	ld   hl, $1000                                   ; $612e: $21 $00 $10
	nop                                              ; $6131: $00
	ld   [$0400], sp                                 ; $6132: $08 $00 $04
	nop                                              ; $6135: $00
	inc  b                                           ; $6136: $04
	nop                                              ; $6137: $00
	ld   [$1000], sp                                 ; $6138: $08 $00 $10
	nop                                              ; $613b: $00
	ld   hl, $0200                                   ; $613c: $21 $00 $02
	nop                                              ; $613f: $00
	inc  h                                           ; $6140: $24
	nop                                              ; $6141: $00
	jr   jr_092_60c4                                 ; $6142: $18 $80

	nop                                              ; $6144: $00
	ld   bc, $00ff                                   ; $6145: $01 $ff $00
	sbc  e                                           ; $6148: $9b
	rst  $38                                         ; $6149: $ff
	inc  bc                                          ; $614a: $03
	ld   a, a                                        ; $614b: $7f
	nop                                              ; $614c: $00
	ei                                               ; $614d: $fb
	ld   a, e                                        ; $614e: $7b
	add  b                                           ; $614f: $80
	ld   h, [hl]                                     ; $6150: $66
	ld   [$4d4c], sp                                 ; $6151: $08 $4c $4d
	ld   e, c                                        ; $6154: $59
	ld   e, e                                        ; $6155: $5b
	inc  sp                                          ; $6156: $33
	scf                                              ; $6157: $37
	ld   h, a                                        ; $6158: $67
	ld   l, a                                        ; $6159: $6f
	ld   c, a                                        ; $615a: $4f
	adc  d                                           ; $615b: $8a
	ld   e, a                                        ; $615c: $5f
	nop                                              ; $615d: $00
	ld   b, b                                        ; $615e: $40
	add  b                                           ; $615f: $80
	ld   a, a                                        ; $6160: $7f
	inc  bc                                          ; $6161: $03
	add  b                                           ; $6162: $80
	nop                                              ; $6163: $00
	add  b                                           ; $6164: $80
	nop                                              ; $6165: $00
	add  b                                           ; $6166: $80
	rst  $38                                         ; $6167: $ff
	add  c                                           ; $6168: $81
	nop                                              ; $6169: $00
	sub  a                                           ; $616a: $97
	rst  $38                                         ; $616b: $ff
	inc  bc                                          ; $616c: $03
	ld   a, a                                        ; $616d: $7f
	nop                                              ; $616e: $00
	ei                                               ; $616f: $fb
	ld   a, e                                        ; $6170: $7b
	add  b                                           ; $6171: $80
	ld   h, [hl]                                     ; $6172: $66
	ld   [$4d4c], sp                                 ; $6173: $08 $4c $4d
	ld   e, c                                        ; $6176: $59
	ld   e, e                                        ; $6177: $5b
	inc  sp                                          ; $6178: $33
	scf                                              ; $6179: $37
	ld   h, a                                        ; $617a: $67
	ld   l, [hl]                                     ; $617b: $6e
	ld   c, [hl]                                     ; $617c: $4e
	add  b                                           ; $617d: $80
	ld   e, a                                        ; $617e: $5f
	add  b                                           ; $617f: $80
	ld   e, [hl]                                     ; $6180: $5e
	add  h                                           ; $6181: $84
	ld   e, a                                        ; $6182: $5f
	add  d                                           ; $6183: $82
	ld   e, [hl]                                     ; $6184: $5e
	add  c                                           ; $6185: $81
	ld   e, a                                        ; $6186: $5f
	ld   bc, $001f                                   ; $6187: $01 $1f $00
	add  b                                           ; $618a: $80
	rst  $38                                         ; $618b: $ff
	add  c                                           ; $618c: $81
	nop                                              ; $618d: $00
	add  d                                           ; $618e: $82
	rst  $38                                         ; $618f: $ff
	add  b                                           ; $6190: $80
	rst  $28                                         ; $6191: $ef
	add  b                                           ; $6192: $80
	ld   b, e                                        ; $6193: $43
	add  b                                           ; $6194: $80
	db   $eb                                         ; $6195: $eb
	add  b                                           ; $6196: $80
	ld   l, e                                        ; $6197: $6b
	add  b                                           ; $6198: $80
	add  c                                           ; $6199: $81
	add  b                                           ; $619a: $80
	rst  $28                                         ; $619b: $ef
	add  b                                           ; $619c: $80
	ld   l, a                                        ; $619d: $6f
	add  b                                           ; $619e: $80
	rst  $10                                         ; $619f: $d7
	add  b                                           ; $61a0: $80
	cp   c                                           ; $61a1: $b9
	add  d                                           ; $61a2: $82
	rst  $38                                         ; $61a3: $ff
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	add  b                                           ; $61a6: $80
	ld   a, a                                        ; $61a7: $7f
	add  c                                           ; $61a8: $81
	nop                                              ; $61a9: $00
	add  d                                           ; $61aa: $82
	rst  $38                                         ; $61ab: $ff
	add  b                                           ; $61ac: $80
	rst  $30                                         ; $61ad: $f7
	add  b                                           ; $61ae: $80
	add  b                                           ; $61af: $80
	add  b                                           ; $61b0: $80
	cp   [hl]                                        ; $61b1: $be
	add  b                                           ; $61b2: $80
	and  d                                           ; $61b3: $a2
	add  b                                           ; $61b4: $80
	rst  $30                                         ; $61b5: $f7
	add  b                                           ; $61b6: $80
	di                                               ; $61b7: $f3
	add  b                                           ; $61b8: $80
	rst  $10                                         ; $61b9: $d7
	add  b                                           ; $61ba: $80
	rst  ToBoot                                         ; $61bb: $c7
	add  b                                           ; $61bc: $80
	cp   b                                           ; $61bd: $b8
	add  d                                           ; $61be: $82
	rst  $38                                         ; $61bf: $ff
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	add  b                                           ; $61c2: $80
	rst  $38                                         ; $61c3: $ff
	add  c                                           ; $61c4: $81
	nop                                              ; $61c5: $00
	add  h                                           ; $61c6: $84
	rst  $38                                         ; $61c7: $ff
	adc  b                                           ; $61c8: $88
	rst  JumpTable                                         ; $61c9: $df
	add  d                                           ; $61ca: $82
	db   $dd                                         ; $61cb: $dd
	add  b                                           ; $61cc: $80
	db   $e3                                         ; $61cd: $e3
	add  d                                           ; $61ce: $82
	rst  $38                                         ; $61cf: $ff
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	add  b                                           ; $61d2: $80
	rst  $38                                         ; $61d3: $ff
	add  c                                           ; $61d4: $81
	nop                                              ; $61d5: $00
	add  d                                           ; $61d6: $82
	rst  $38                                         ; $61d7: $ff
	add  b                                           ; $61d8: $80
	rst  $28                                         ; $61d9: $ef
	add  b                                           ; $61da: $80
	inc  bc                                          ; $61db: $03
	add  b                                           ; $61dc: $80
	rst  $28                                         ; $61dd: $ef
	add  b                                           ; $61de: $80
	add  e                                           ; $61df: $83
	add  d                                           ; $61e0: $82
	rst  $28                                         ; $61e1: $ef
	add  b                                           ; $61e2: $80
	add  a                                           ; $61e3: $87
	add  b                                           ; $61e4: $80
	ld   l, e                                        ; $61e5: $6b
	add  b                                           ; $61e6: $80
	adc  l                                           ; $61e7: $8d
	add  d                                           ; $61e8: $82
	rst  $38                                         ; $61e9: $ff
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	add  b                                           ; $61ec: $80
	rst  $38                                         ; $61ed: $ff
	add  c                                           ; $61ee: $81
	nop                                              ; $61ef: $00
	add  d                                           ; $61f0: $82
	rst  $38                                         ; $61f1: $ff
	add  d                                           ; $61f2: $82
	xor  $80                                         ; $61f3: $ee $80
	inc  b                                           ; $61f5: $04
	add  b                                           ; $61f6: $80
	xor  $80                                         ; $61f7: $ee $80
	adc  [hl]                                        ; $61f9: $8e
	add  b                                           ; $61fa: $80
	ld   l, [hl]                                     ; $61fb: $6e
	add  b                                           ; $61fc: $80
	adc  [hl]                                        ; $61fd: $8e
	add  b                                           ; $61fe: $80
	db   $ed                                         ; $61ff: $ed
	add  b                                           ; $6200: $80
	sbc  a                                           ; $6201: $9f
	add  d                                           ; $6202: $82
	rst  $38                                         ; $6203: $ff
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	add  b                                           ; $6206: $80
	rst  $38                                         ; $6207: $ff
	add  c                                           ; $6208: $81
	nop                                              ; $6209: $00
	add  d                                           ; $620a: $82
	rst  $38                                         ; $620b: $ff
	add  b                                           ; $620c: $80
	cp   $80                                         ; $620d: $fe $80
	db   $dd                                         ; $620f: $dd
	add  b                                           ; $6210: $80
	ld   l, e                                        ; $6211: $6b
	add  b                                           ; $6212: $80
	xor  e                                           ; $6213: $ab
	add  d                                           ; $6214: $82
	xor  a                                           ; $6215: $af
	add  d                                           ; $6216: $82
	cp   a                                           ; $6217: $bf
	add  b                                           ; $6218: $80
	ld   a, a                                        ; $6219: $7f
	add  c                                           ; $621a: $81
	rst  $38                                         ; $621b: $ff
	inc  bc                                          ; $621c: $03
	cp   $00                                         ; $621d: $fe $00
	rst  $38                                         ; $621f: $ff
	cp   $81                                         ; $6220: $fe $81
	ld   [bc], a                                     ; $6222: $02
	add  d                                           ; $6223: $82
	ld   a, [$3a80]                                  ; $6224: $fa $80 $3a
	add  b                                           ; $6227: $80
	jp   c, $ea82                                    ; $6228: $da $82 $ea

	add  b                                           ; $622b: $80
	sbc  d                                           ; $622c: $9a
	add  d                                           ; $622d: $82
	ld   a, d                                        ; $622e: $7a
	add  b                                           ; $622f: $80
	ld   a, [$7a80]                                  ; $6230: $fa $80 $7a
	add  c                                           ; $6233: $81
	ld   a, [$f800]                                  ; $6234: $fa $00 $f8
	add  d                                           ; $6237: $82
	rst  $38                                         ; $6238: $ff
	add  d                                           ; $6239: $82
	cp   l                                           ; $623a: $bd
	add  b                                           ; $623b: $80
	and  b                                           ; $623c: $a0
	add  d                                           ; $623d: $82
	cp   l                                           ; $623e: $bd
	add  b                                           ; $623f: $80
	or   c                                           ; $6240: $b1
	add  b                                           ; $6241: $80
	xor  h                                           ; $6242: $ac
	add  b                                           ; $6243: $80
	pop  de                                          ; $6244: $d1
	add  h                                           ; $6245: $84
	rst  $38                                         ; $6246: $ff
	nop                                              ; $6247: $00
	nop                                              ; $6248: $00
	add  b                                           ; $6249: $80
	rst  $38                                         ; $624a: $ff
	add  c                                           ; $624b: $81
	nop                                              ; $624c: $00
	add  h                                           ; $624d: $84
	rst  $38                                         ; $624e: $ff
	add  b                                           ; $624f: $80
	cp   a                                           ; $6250: $bf
	add  b                                           ; $6251: $80
	cp   e                                           ; $6252: $bb
	add  h                                           ; $6253: $84
	cp   l                                           ; $6254: $bd
	add  b                                           ; $6255: $80
	xor  l                                           ; $6256: $ad
	add  b                                           ; $6257: $80
	rst  JumpTable                                         ; $6258: $df
	add  h                                           ; $6259: $84
	rst  $38                                         ; $625a: $ff
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	add  b                                           ; $625d: $80
	rst  $38                                         ; $625e: $ff
	add  c                                           ; $625f: $81
	nop                                              ; $6260: $00
	add  h                                           ; $6261: $84
	rst  $38                                         ; $6262: $ff
	add  b                                           ; $6263: $80
	cp   a                                           ; $6264: $bf
	add  b                                           ; $6265: $80
	cp   e                                           ; $6266: $bb
	add  h                                           ; $6267: $84
	cp   l                                           ; $6268: $bd
	add  b                                           ; $6269: $80
	xor  l                                           ; $626a: $ad
	add  b                                           ; $626b: $80
	rst  JumpTable                                         ; $626c: $df
	add  h                                           ; $626d: $84
	rst  $38                                         ; $626e: $ff
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	add  b                                           ; $6271: $80
	cp   $81                                         ; $6272: $fe $81
	nop                                              ; $6274: $00
	add  d                                           ; $6275: $82
	rst  $38                                         ; $6276: $ff
	add  b                                           ; $6277: $80
	rst  ToBoot                                         ; $6278: $c7
	add  b                                           ; $6279: $80
	rst  $38                                         ; $627a: $ff
	add  b                                           ; $627b: $80
	add  e                                           ; $627c: $83
	add  b                                           ; $627d: $80

Jump_092_627e:
	rst  $30                                         ; $627e: $f7
	add  b                                           ; $627f: $80
	rst  $28                                         ; $6280: $ef
	add  b                                           ; $6281: $80
	rst  $10                                         ; $6282: $d7
	add  b                                           ; $6283: $80
	or   a                                           ; $6284: $b7
	add  b                                           ; $6285: $80
	cp   c                                           ; $6286: $b9
	add  h                                           ; $6287: $84
	rst  $38                                         ; $6288: $ff
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	add  b                                           ; $628b: $80
	rst  $38                                         ; $628c: $ff
	add  b                                           ; $628d: $80
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	ld   [bc], a                                     ; $6290: $02
	adc  a                                           ; $6291: $8f
	ld   a, [$fe09]                                  ; $6292: $fa $09 $fe
	or   $fc                                         ; $6295: $f6 $fc
	db   $ec                                         ; $6297: $ec
	ld   a, [$f2da]                                  ; $6298: $fa $da $f2
	or   d                                           ; $629b: $b2
	and  $66                                         ; $629c: $e6 $66
	add  b                                           ; $629e: $80
	sbc  $02                                         ; $629f: $de $02
	ld   bc, $4100                                   ; $62a1: $01 $00 $41
	add  [hl]                                        ; $62a4: $86
	ld   e, a                                        ; $62a5: $5f
	add  b                                           ; $62a6: $80
	ld   e, e                                        ; $62a7: $5b
	add  b                                           ; $62a8: $80
	ld   e, c                                        ; $62a9: $59
	add  b                                           ; $62aa: $80
	ld   e, b                                        ; $62ab: $58
	add  b                                           ; $62ac: $80
	ld   e, c                                        ; $62ad: $59
	add  b                                           ; $62ae: $80
	ld   e, e                                        ; $62af: $5b
	add  [hl]                                        ; $62b0: $86
	ld   e, a                                        ; $62b1: $5f
	nop                                              ; $62b2: $00
	ld   b, b                                        ; $62b3: $40
	add  b                                           ; $62b4: $80
	ld   a, a                                        ; $62b5: $7f
	ld   [bc], a                                     ; $62b6: $02
	add  b                                           ; $62b7: $80
	nop                                              ; $62b8: $00
	add  b                                           ; $62b9: $80

jr_092_62ba:
	add  [hl]                                        ; $62ba: $86
	rst  $38                                         ; $62bb: $ff
	add  b                                           ; $62bc: $80
	ei                                               ; $62bd: $fb
	add  b                                           ; $62be: $80
	ld   sp, hl                                      ; $62bf: $f9
	add  b                                           ; $62c0: $80
	ld   hl, sp-$80                                  ; $62c1: $f8 $80
	ld   sp, hl                                      ; $62c3: $f9
	add  b                                           ; $62c4: $80
	ei                                               ; $62c5: $fb
	add  [hl]                                        ; $62c6: $86
	rst  $38                                         ; $62c7: $ff
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	add  b                                           ; $62ca: $80
	rst  $38                                         ; $62cb: $ff
	add  b                                           ; $62cc: $80
	nop                                              ; $62cd: $00
	inc  bc                                          ; $62ce: $03
	add  b                                           ; $62cf: $80
	nop                                              ; $62d0: $00
	rst  $38                                         ; $62d1: $ff
	ld   a, a                                        ; $62d2: $7f
	add  c                                           ; $62d3: $81
	ld   b, b                                        ; $62d4: $40
	sub  a                                           ; $62d5: $97
	ld   e, a                                        ; $62d6: $5f
	inc  bc                                          ; $62d7: $03
	sbc  a                                           ; $62d8: $9f
	nop                                              ; $62d9: $00
	ei                                               ; $62da: $fb
	ld   a, e                                        ; $62db: $7b
	add  b                                           ; $62dc: $80
	ld   h, [hl]                                     ; $62dd: $66
	ld   [$4d4c], sp                                 ; $62de: $08 $4c $4d
	ld   e, c                                        ; $62e1: $59
	ld   e, e                                        ; $62e2: $5b
	inc  sp                                          ; $62e3: $33
	scf                                              ; $62e4: $37
	ld   h, a                                        ; $62e5: $67
	ld   l, a                                        ; $62e6: $6f
	ld   c, a                                        ; $62e7: $4f
	adc  a                                           ; $62e8: $8f
	ld   e, a                                        ; $62e9: $5f
	ld   bc, $00e0                                   ; $62ea: $01 $e0 $00
	add  b                                           ; $62ed: $80
	ret  nz                                          ; $62ee: $c0

	sbc  d                                           ; $62ef: $9a
	ld   b, b                                        ; $62f0: $40
	add  b                                           ; $62f1: $80
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	ld   a, a                                        ; $62f4: $7f
	add  c                                           ; $62f5: $81
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	ccf                                              ; $62f8: $3f
	add  b                                           ; $62f9: $80
	nop                                              ; $62fa: $00
	add  d                                           ; $62fb: $82
	rra                                              ; $62fc: $1f
	add  b                                           ; $62fd: $80

Jump_092_62fe:
	ld   [de], a                                     ; $62fe: $12
	add  b                                           ; $62ff: $80
	rra                                              ; $6300: $1f
	add  b                                           ; $6301: $80
	inc  de                                          ; $6302: $13
	add  b                                           ; $6303: $80
	inc  e                                           ; $6304: $1c
	add  b                                           ; $6305: $80
	rra                                              ; $6306: $1f
	add  d                                           ; $6307: $82
	ld   a, [de]                                     ; $6308: $1a
	add  b                                           ; $6309: $80
	dec  d                                           ; $630a: $15
	add  c                                           ; $630b: $81
	rra                                              ; $630c: $1f
	ld   [bc], a                                     ; $630d: $02
	ld   e, a                                        ; $630e: $5f
	nop                                              ; $630f: $00
	rst  $38                                         ; $6310: $ff
	add  c                                           ; $6311: $81
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	cp   $80                                         ; $6314: $fe $80
	nop                                              ; $6316: $00
	add  b                                           ; $6317: $80
	db   $fc                                         ; $6318: $fc
	add  b                                           ; $6319: $80
	ld   a, h                                        ; $631a: $7c
	add  b                                           ; $631b: $80
	inc  c                                           ; $631c: $0c
	add  d                                           ; $631d: $82
	ld   l, h                                        ; $631e: $6c
	add  b                                           ; $631f: $80
	inc  b                                           ; $6320: $04
	add  b                                           ; $6321: $80
	inc  a                                           ; $6322: $3c
	add  d                                           ; $6323: $82
	call c, $e480                                    ; $6324: $dc $80 $e4
	add  c                                           ; $6327: $81
	db   $fc                                         ; $6328: $fc
	nop                                              ; $6329: $00
	cp   l                                           ; $632a: $bd
	add  d                                           ; $632b: $82
	rra                                              ; $632c: $1f
	add  b                                           ; $632d: $80
	db   $10                                         ; $632e: $10
	add  b                                           ; $632f: $80
	rla                                              ; $6330: $17
	add  b                                           ; $6331: $80
	inc  d                                           ; $6332: $14
	add  d                                           ; $6333: $82
	rra                                              ; $6334: $1f
	add  b                                           ; $6335: $80
	dec  de                                          ; $6336: $1b
	add  b                                           ; $6337: $80
	jr   jr_092_62ba                                 ; $6338: $18 $80

	rla                                              ; $633a: $17
	add  d                                           ; $633b: $82
	rra                                              ; $633c: $1f
	ld   bc, $3f00                                   ; $633d: $01 $00 $3f
	add  c                                           ; $6340: $81
	nop                                              ; $6341: $00
	ld   [bc], a                                     ; $6342: $02
	ld   a, a                                        ; $6343: $7f
	nop                                              ; $6344: $00
	ld   bc, $fc80                                   ; $6345: $01 $80 $fc
	add  b                                           ; $6348: $80
	ld   a, h                                        ; $6349: $7c
	add  b                                           ; $634a: $80
	inc  b                                           ; $634b: $04
	add  b                                           ; $634c: $80
	db   $f4                                         ; $634d: $f4
	add  b                                           ; $634e: $80
	inc  d                                           ; $634f: $14
	add  b                                           ; $6350: $80
	ld   a, h                                        ; $6351: $7c
	add  b                                           ; $6352: $80
	inc  a                                           ; $6353: $3c
	add  d                                           ; $6354: $82
	ld   a, h                                        ; $6355: $7c
	add  b                                           ; $6356: $80
	inc  b                                           ; $6357: $04
	add  d                                           ; $6358: $82
	db   $fc                                         ; $6359: $fc
	ld   bc, $fe00                                   ; $635a: $01 $00 $fe
	add  c                                           ; $635d: $81
	nop                                              ; $635e: $00
	ld   bc, $00ff                                   ; $635f: $01 $ff $00
	add  b                                           ; $6362: $80
	ld   b, b                                        ; $6363: $40
	add  b                                           ; $6364: $80
	ld   a, a                                        ; $6365: $7f
	sbc  d                                           ; $6366: $9a
	nop                                              ; $6367: $00
	add  b                                           ; $6368: $80
	ld   b, b                                        ; $6369: $40
	add  b                                           ; $636a: $80
	ret  nz                                          ; $636b: $c0

	sbc  [hl]                                        ; $636c: $9e
	nop                                              ; $636d: $00
	ld   a, [de]                                     ; $636e: $1a
	inc  c                                           ; $636f: $0c
	nop                                              ; $6370: $00
	ld   [de], a                                     ; $6371: $12
	nop                                              ; $6372: $00
	jr   nz, jr_092_6375                             ; $6373: $20 $00

jr_092_6375:
	ld   b, d                                        ; $6375: $42
	nop                                              ; $6376: $00
	add  h                                           ; $6377: $84
	nop                                              ; $6378: $00
	ld   [$1000], sp                                 ; $6379: $08 $00 $10
	nop                                              ; $637c: $00
	stop                                             ; $637d: $10 $00
	ld   [$8400], sp                                 ; $637f: $08 $00 $84
	nop                                              ; $6382: $00
	ld   b, d                                        ; $6383: $42
	nop                                              ; $6384: $00
	jr   nz, jr_092_6387                             ; $6385: $20 $00

jr_092_6387:
	ld   [de], a                                     ; $6387: $12
	nop                                              ; $6388: $00
	inc  c                                           ; $6389: $0c
	add  c                                           ; $638a: $81
	nop                                              ; $638b: $00
	inc  c                                           ; $638c: $0c
	ld   a, [hl]                                     ; $638d: $7e
	nop                                              ; $638e: $00
	inc  b                                           ; $638f: $04
	inc  a                                           ; $6390: $3c
	ld   a, [hl+]                                    ; $6391: $2a
	jr   nc, @+$2e                                   ; $6392: $30 $2c

	jr   nz, jr_092_6396                             ; $6394: $20 $00

jr_092_6396:
	jr   nz, jr_092_63a8                             ; $6396: $20 $10

	nop                                              ; $6398: $00
	ld   h, b                                        ; $6399: $60
	rst  $38                                         ; $639a: $ff
	nop                                              ; $639b: $00
	rst  $38                                         ; $639c: $ff
	nop                                              ; $639d: $00
	rst  $38                                         ; $639e: $ff
	nop                                              ; $639f: $00
	rst  $38                                         ; $63a0: $ff
	nop                                              ; $63a1: $00
	rst  $38                                         ; $63a2: $ff
	nop                                              ; $63a3: $00
	rst  $38                                         ; $63a4: $ff
	nop                                              ; $63a5: $00
	rst  $38                                         ; $63a6: $ff
	nop                                              ; $63a7: $00

jr_092_63a8:
	rst  $38                                         ; $63a8: $ff
	nop                                              ; $63a9: $00
	adc  e                                           ; $63aa: $8b
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	ret  nz                                          ; $63ad: $c0

	add  l                                           ; $63ae: $85
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	ret  nz                                          ; $63b1: $c0

	sub  [hl]                                        ; $63b2: $96
	nop                                              ; $63b3: $00
	add  [hl]                                        ; $63b4: $86
	ret  nz                                          ; $63b5: $c0

	sub  l                                           ; $63b6: $95
	nop                                              ; $63b7: $00
	add  [hl]                                        ; $63b8: $86
	ret  nz                                          ; $63b9: $c0

	rst  $38                                         ; $63ba: $ff
	nop                                              ; $63bb: $00
	sub  e                                           ; $63bc: $93
	nop                                              ; $63bd: $00
	ld   bc, $00ff                                   ; $63be: $01 $ff $00
	add  [hl]                                        ; $63c1: $86
	db   $db                                         ; $63c2: $db
	add  b                                           ; $63c3: $80
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	rst  $38                                         ; $63c6: $ff
	add  c                                           ; $63c7: $81
	nop                                              ; $63c8: $00
	ld   bc, $00ff                                   ; $63c9: $01 $ff $00
	add  [hl]                                        ; $63cc: $86
	ld   l, l                                        ; $63cd: $6d
	add  b                                           ; $63ce: $80
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	rst  $38                                         ; $63d1: $ff
	add  c                                           ; $63d2: $81
	nop                                              ; $63d3: $00
	ld   bc, $00ff                                   ; $63d4: $01 $ff $00
	add  [hl]                                        ; $63d7: $86
	or   [hl]                                        ; $63d8: $b6
	add  b                                           ; $63d9: $80
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	rst  $38                                         ; $63dc: $ff
	add  c                                           ; $63dd: $81
	nop                                              ; $63de: $00
	ld   [bc], a                                     ; $63df: $02
	rst  $38                                         ; $63e0: $ff
	nop                                              ; $63e1: $00
	dec  de                                          ; $63e2: $1b
	add  l                                           ; $63e3: $85
	db   $db                                         ; $63e4: $db
	ld   [bc], a                                     ; $63e5: $02
	ret  nz                                          ; $63e6: $c0

	nop                                              ; $63e7: $00
	rst  $38                                         ; $63e8: $ff
	add  c                                           ; $63e9: $81
	nop                                              ; $63ea: $00
	ld   [bc], a                                     ; $63eb: $02
	rst  $38                                         ; $63ec: $ff
	nop                                              ; $63ed: $00
	inc  bc                                          ; $63ee: $03
	add  l                                           ; $63ef: $85
	db   $db                                         ; $63f0: $db
	ld   [bc], a                                     ; $63f1: $02
	ret  c                                           ; $63f2: $d8

	nop                                              ; $63f3: $00
	rst  $38                                         ; $63f4: $ff
	add  c                                           ; $63f5: $81
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	rst  $38                                         ; $63f8: $ff
	add  b                                           ; $63f9: $80
	nop                                              ; $63fa: $00
	add  [hl]                                        ; $63fb: $86
	db   $db                                         ; $63fc: $db
	ld   bc, $ff00                                   ; $63fd: $01 $00 $ff
	add  c                                           ; $6400: $81
	nop                                              ; $6401: $00
	ld   [bc], a                                     ; $6402: $02
	rst  $38                                         ; $6403: $ff
	nop                                              ; $6404: $00
	dec  c                                           ; $6405: $0d
	add  l                                           ; $6406: $85
	ld   l, l                                        ; $6407: $6d
	ld   [bc], a                                     ; $6408: $02
	ld   h, b                                        ; $6409: $60
	nop                                              ; $640a: $00
	rst  $38                                         ; $640b: $ff
	add  c                                           ; $640c: $81
	nop                                              ; $640d: $00
	ld   [bc], a                                     ; $640e: $02
	rst  $38                                         ; $640f: $ff
	nop                                              ; $6410: $00
	ld   bc, $6d85                                   ; $6411: $01 $85 $6d
	ld   [bc], a                                     ; $6414: $02
	ld   l, h                                        ; $6415: $6c
	nop                                              ; $6416: $00
	rst  $38                                         ; $6417: $ff
	add  c                                           ; $6418: $81
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	rst  $38                                         ; $641b: $ff
	add  b                                           ; $641c: $80
	nop                                              ; $641d: $00
	add  [hl]                                        ; $641e: $86
	ld   l, l                                        ; $641f: $6d
	ld   bc, $ff00                                   ; $6420: $01 $00 $ff
	add  c                                           ; $6423: $81
	nop                                              ; $6424: $00
	ld   [bc], a                                     ; $6425: $02
	rst  $38                                         ; $6426: $ff
	nop                                              ; $6427: $00
	ld   [hl], $85                                   ; $6428: $36 $85
	or   [hl]                                        ; $642a: $b6
	ld   [bc], a                                     ; $642b: $02
	add  b                                           ; $642c: $80
	nop                                              ; $642d: $00
	rst  $38                                         ; $642e: $ff
	add  c                                           ; $642f: $81
	nop                                              ; $6430: $00
	ld   [bc], a                                     ; $6431: $02
	rst  $38                                         ; $6432: $ff
	nop                                              ; $6433: $00
	ld   b, $85                                      ; $6434: $06 $85
	or   [hl]                                        ; $6436: $b6

jr_092_6437:
	ld   [bc], a                                     ; $6437: $02
	or   b                                           ; $6438: $b0
	nop                                              ; $6439: $00
	rst  $38                                         ; $643a: $ff
	add  c                                           ; $643b: $81
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	rst  $38                                         ; $643e: $ff
	add  b                                           ; $643f: $80
	nop                                              ; $6440: $00
	add  [hl]                                        ; $6441: $86
	or   [hl]                                        ; $6442: $b6
	ld   bc, $ff00                                   ; $6443: $01 $00 $ff
	ret  nz                                          ; $6446: $c0

	nop                                              ; $6447: $00
	dec  b                                           ; $6448: $05
	rst  $38                                         ; $6449: $ff
	ret  nc                                          ; $644a: $d0

	adc  [hl]                                        ; $644b: $8e
	cp   $90                                         ; $644c: $fe $90
	or   b                                           ; $644e: $b0
	add  d                                           ; $644f: $82
	and  b                                           ; $6450: $a0
	add  c                                           ; $6451: $81
	ret  nz                                          ; $6452: $c0

	nop                                              ; $6453: $00
	jp   nz, $8281                                   ; $6454: $c2 $81 $82

	add  b                                           ; $6457: $80
	add  c                                           ; $6458: $81
	db   $10                                         ; $6459: $10
	adc  l                                           ; $645a: $8d
	add  c                                           ; $645b: $81
	and  l                                           ; $645c: $a5
	and  c                                           ; $645d: $a1
	and  a                                           ; $645e: $a7
	xor  a                                           ; $645f: $af
	rst  ToBoot                                         ; $6460: $c7
	add  a                                           ; $6461: $87
	adc  b                                           ; $6462: $88
	add  b                                           ; $6463: $80
	add  a                                           ; $6464: $87
	add  b                                           ; $6465: $80
	or   b                                           ; $6466: $b0
	rst  $38                                         ; $6467: $ff
	ld   hl, $bd9c                                   ; $6468: $21 $9c $bd
	add  b                                           ; $646b: $80
	ld   b, $82                                      ; $646c: $06 $82
	ld   [bc], a                                     ; $646e: $02
	nop                                              ; $646f: $00
	ld   bc, $8180                                   ; $6470: $01 $80 $81
	nop                                              ; $6473: $00
	and  c                                           ; $6474: $a1
	add  c                                           ; $6475: $81
	and  b                                           ; $6476: $a0
	add  b                                           ; $6477: $80
	ret  nz                                          ; $6478: $c0

	inc  de                                          ; $6479: $13
	add  sp, -$40                                    ; $647a: $e8 $c0

jr_092_647c:
	ldh  [c], a                                      ; $647c: $e2
	jp   nz, $faf2                                   ; $647d: $c2 $f2 $fa

	pop  af                                          ; $6480: $f1
	ldh  a, [$08]                                    ; $6481: $f0 $08
	nop                                              ; $6483: $00
	ldh  a, [rP1]                                    ; $6484: $f0 $00
	ld   b, $ff                                      ; $6486: $06 $ff
	ld   hl, sp-$80                                  ; $6488: $f8 $80
	sbc  b                                           ; $648a: $98
	add  e                                           ; $648b: $83
	and  b                                           ; $648c: $a0
	sbc  h                                           ; $648d: $9c
	add  b                                           ; $648e: $80
	sbc  b                                           ; $648f: $98
	ld   [bc], a                                     ; $6490: $02
	db   $db                                         ; $6491: $db
	cp   e                                           ; $6492: $bb
	cp   a                                           ; $6493: $bf
	add  b                                           ; $6494: $80
	xor  a                                           ; $6495: $af
	jr   jr_092_6437                                 ; $6496: $18 $9f

	sbc  e                                           ; $6498: $9b
	sbc  a                                           ; $6499: $9f
	sbc  [hl]                                        ; $649a: $9e
	sbc  a                                           ; $649b: $9f
	sbc  e                                           ; $649c: $9b
	and  c                                           ; $649d: $a1
	xor  c                                           ; $649e: $a9
	and  c                                           ; $649f: $a1
	and  a                                           ; $64a0: $a7
	xor  a                                           ; $64a1: $af
	and  a                                           ; $64a2: $a7
	or   a                                           ; $64a3: $b7
	ldh  a, [$90]                                    ; $64a4: $f0 $90
	or   a                                           ; $64a6: $b7
	add  b                                           ; $64a7: $80
	sbc  b                                           ; $64a8: $98
	rst  $38                                         ; $64a9: $ff
	rrca                                             ; $64aa: $0f
	nop                                              ; $64ab: $00
	inc  c                                           ; $64ac: $0c
	ldh  [rSC], a                                    ; $64ad: $e0 $02
	inc  e                                           ; $64af: $1c
	add  b                                           ; $64b0: $80
	inc  c                                           ; $64b1: $0c
	ld   b, $ed                                      ; $64b2: $06 $ed
	xor  $fe                                         ; $64b4: $ee $fe
	ld   a, [$fc7a]                                  ; $64b6: $fa $7a $fc
	db   $ec                                         ; $64b9: $ec
	add  c                                           ; $64ba: $81
	db   $fc                                         ; $64bb: $fc
	ld   [de], a                                     ; $64bc: $12
	xor  h                                           ; $64bd: $ac
	jp   nz, $c2ca                                   ; $64be: $c2 $ca $c2

	ldh  a, [c]                                      ; $64c1: $f2
	ld   a, [$f6f2]                                  ; $64c2: $fa $f2 $f6
	rlca                                             ; $64c5: $07
	inc  b                                           ; $64c6: $04
	or   $00                                         ; $64c7: $f6 $00
	inc  c                                           ; $64c9: $0c
	rst  $38                                         ; $64ca: $ff
	db   $fc                                         ; $64cb: $fc
	add  b                                           ; $64cc: $80
	sbc  h                                           ; $64cd: $9c
	add  e                                           ; $64ce: $83
	and  e                                           ; $64cf: $a3
	add  b                                           ; $64d0: $80
	sbc  l                                           ; $64d1: $9d
	ld   [bc], a                                     ; $64d2: $02
	sbc  e                                           ; $64d3: $9b
	res  5, b                                        ; $64d4: $cb $a8
	add  b                                           ; $64d6: $80
	adc  c                                           ; $64d7: $89
	add  b                                           ; $64d8: $80
	adc  e                                           ; $64d9: $8b
	nop                                              ; $64da: $00
	cp   a                                           ; $64db: $bf
	add  c                                           ; $64dc: $81
	rst  $10                                         ; $64dd: $d7
	ld   a, [bc]                                     ; $64de: $0a
	pop  de                                          ; $64df: $d1
	pop  hl                                          ; $64e0: $e1
	jp   hl                                          ; $64e1: $e9


	and  c                                           ; $64e2: $a1
	and  a                                           ; $64e3: $a7
	adc  a                                           ; $64e4: $8f
	rst  $20                                         ; $64e5: $e7
	add  a                                           ; $64e6: $87
	sbc  b                                           ; $64e7: $98
	add  b                                           ; $64e8: $80
	add  a                                           ; $64e9: $87
	add  b                                           ; $64ea: $80
	add  b                                           ; $64eb: $80
	dec  b                                           ; $64ec: $05
	rst  $38                                         ; $64ed: $ff
	rra                                              ; $64ee: $1f
	nop                                              ; $64ef: $00
	inc  e                                           ; $64f0: $1c
	ldh  [$e2], a                                    ; $64f1: $e0 $e2
	add  b                                           ; $64f3: $80
	cp   h                                           ; $64f4: $bc
	inc  b                                           ; $64f5: $04
	call c, $8289                                    ; $64f6: $dc $89 $82
	sbc  h                                           ; $64f9: $9c
	jr   nz, jr_092_647c                             ; $64fa: $20 $80

	ld   b, b                                        ; $64fc: $40
	nop                                              ; $64fd: $00
	ld   [$ad82], a                                  ; $64fe: $ea $82 $ad
	add  hl, bc                                      ; $6501: $09
	xor  h                                           ; $6502: $ac
	xor  [hl]                                        ; $6503: $ae
	sbc  d                                           ; $6504: $9a
	ld   a, [hl-]                                    ; $6505: $3a
	ld   [hl+], a                                    ; $6506: $22
	ld   sp, hl                                      ; $6507: $f9
	ld   hl, sp+$06                                  ; $6508: $f8 $06
	nop                                              ; $650a: $00
	ld   hl, sp-$80                                  ; $650b: $f8 $80
	nop                                              ; $650d: $00
	add  hl, bc                                      ; $650e: $09
	rst  $38                                         ; $650f: $ff
	sbc  $8e                                         ; $6510: $de $8e
	add  sp, -$68                                    ; $6512: $e8 $98
	add  b                                           ; $6514: $80
	and  a                                           ; $6515: $a7
	rst  ToBoot                                         ; $6516: $c7
	sub  e                                           ; $6517: $93
	db   $d3                                         ; $6518: $d3
	add  b                                           ; $6519: $80
	xor  l                                           ; $651a: $ad
	add  b                                           ; $651b: $80
	xor  a                                           ; $651c: $af
	rlca                                             ; $651d: $07
	sbc  [hl]                                        ; $651e: $9e
	sbc  a                                           ; $651f: $9f
	xor  e                                           ; $6520: $ab
	xor  d                                           ; $6521: $aa
	sbc  b                                           ; $6522: $98
	sbc  d                                           ; $6523: $9a
	or   b                                           ; $6524: $b0
	or   [hl]                                        ; $6525: $b6
	add  b                                           ; $6526: $80
	ret  nz                                          ; $6527: $c0

	dec  b                                           ; $6528: $05
	ret  nc                                          ; $6529: $d0

	db   $d3                                         ; $652a: $d3
	rst  $10                                         ; $652b: $d7
	ret  nc                                          ; $652c: $d0

	xor  b                                           ; $652d: $a8
	rst  $10                                         ; $652e: $d7
	add  b                                           ; $652f: $80
	add  b                                           ; $6530: $80
	add  hl, bc                                      ; $6531: $09
	rst  $38                                         ; $6532: $ff
	cp   l                                           ; $6533: $bd
	adc  h                                           ; $6534: $8c
	ccf                                              ; $6535: $3f
	ld   c, $02                                      ; $6536: $0e $02
	ld   [hl], d                                     ; $6538: $72
	ld   [hl], c                                     ; $6539: $71
	db   $e4                                         ; $653a: $e4
	push hl                                          ; $653b: $e5
	add  b                                           ; $653c: $80
	jp   c, Jump_092_7a80                            ; $653d: $da $80 $7a

	rlca                                             ; $6540: $07
	inc  a                                           ; $6541: $3c
	db   $fc                                         ; $6542: $fc
	ld   [$8caa], a                                  ; $6543: $ea $aa $8c
	call z, $d686                                    ; $6546: $cc $86 $d6
	add  b                                           ; $6549: $80
	add  c                                           ; $654a: $81
	dec  b                                           ; $654b: $05
	add  l                                           ; $654c: $85
	push hl                                          ; $654d: $e5
	push af                                          ; $654e: $f5
	dec  b                                           ; $654f: $05
	ld   a, [bc]                                     ; $6550: $0a
	push af                                          ; $6551: $f5
	add  b                                           ; $6552: $80
	nop                                              ; $6553: $00
	rlca                                             ; $6554: $07
	rst  $38                                         ; $6555: $ff
	pop  hl                                          ; $6556: $e1
	add  b                                           ; $6557: $80
	sub  c                                           ; $6558: $91
	add  [hl]                                        ; $6559: $86
	sub  [hl]                                        ; $655a: $96
	add  e                                           ; $655b: $83
	and  e                                           ; $655c: $a3
	add  b                                           ; $655d: $80
	adc  a                                           ; $655e: $8f
	ld   [bc], a                                     ; $655f: $02
	sbc  l                                           ; $6560: $9d
	rst  JumpTable                                         ; $6561: $df
	xor  d                                           ; $6562: $aa
	add  b                                           ; $6563: $80
	xor  b                                           ; $6564: $a8
	db   $10                                         ; $6565: $10
	xor  [hl]                                        ; $6566: $ae
	add  b                                           ; $6567: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6568: $cf
	add  b                                           ; $6569: $80
	db   $e4                                         ; $656a: $e4
	and  b                                           ; $656b: $a0
	and  h                                           ; $656c: $a4
	and  b                                           ; $656d: $a0
	ret                                              ; $656e: $c9


	add  b                                           ; $656f: $80
	rst  ToBoot                                         ; $6570: $c7
	add  a                                           ; $6571: $87
	add  b                                           ; $6572: $80
	and  b                                           ; $6573: $a0
	cp   a                                           ; $6574: $bf
	add  b                                           ; $6575: $80
	ldh  [$80], a                                    ; $6576: $e0 $80
	rst  $38                                         ; $6578: $ff
	dec  b                                           ; $6579: $05
	nop                                              ; $657a: $00
	ldh  a, [rP1]                                    ; $657b: $f0 $00
	inc  c                                           ; $657d: $0c
	ld   [hl], b                                     ; $657e: $70
	ld   [hl], d                                     ; $657f: $72

Jump_092_6580:
jr_092_6580:
	add  b                                           ; $6580: $80
	db   $ec                                         ; $6581: $ec
	ld   bc, $b5b4                                   ; $6582: $01 $b4 $b5
	add  b                                           ; $6585: $80
	sub  d                                           ; $6586: $92
	add  hl, de                                      ; $6587: $19
	jp   nz, Jump_092_40d2                           ; $6588: $c2 $d2 $40

	ld   e, b                                        ; $658b: $58
	nop                                              ; $658c: $00
	ld   h, d                                        ; $658d: $62
	ld   [bc], a                                     ; $658e: $02
	ld   [hl+], a                                    ; $658f: $22
	ld   [bc], a                                     ; $6590: $02
	ret                                              ; $6591: $c9


	add  b                                           ; $6592: $80
	pop  af                                          ; $6593: $f1
	ldh  a, [rP1]                                    ; $6594: $f0 $00
	ld   [bc], a                                     ; $6596: $02
	cp   $00                                         ; $6597: $fe $00
	inc  bc                                          ; $6599: $03
	rst  $38                                         ; $659a: $ff
	cp   $80                                         ; $659b: $fe $80
	adc  [hl]                                        ; $659d: $8e
	add  c                                           ; $659e: $81
	sub  c                                           ; $659f: $91
	adc  l                                           ; $65a0: $8d
	xor  l                                           ; $65a1: $ad
	add  c                                           ; $65a2: $81
	sbc  a                                           ; $65a3: $9f
	ld   [de], a                                     ; $65a4: $12
	rst  JumpTable                                         ; $65a5: $df
	or   [hl]                                        ; $65a6: $b6
	or   a                                           ; $65a7: $b7
	xor  h                                           ; $65a8: $ac
	xor  l                                           ; $65a9: $ad
	xor  h                                           ; $65aa: $ac
	xor  [hl]                                        ; $65ab: $ae
	sbc  d                                           ; $65ac: $9a
	sbc  c                                           ; $65ad: $99
	sub  c                                           ; $65ae: $91
	sbc  c                                           ; $65af: $99
	and  c                                           ; $65b0: $a1
	rst  $20                                         ; $65b1: $e7
	adc  a                                           ; $65b2: $8f
	add  a                                           ; $65b3: $87
	sub  a                                           ; $65b4: $97
	xor  b                                           ; $65b5: $a8
	add  b                                           ; $65b6: $80
	add  a                                           ; $65b7: $87
	add  b                                           ; $65b8: $80
	add  b                                           ; $65b9: $80
	dec  b                                           ; $65ba: $05
	rst  $38                                         ; $65bb: $ff
	ccf                                              ; $65bc: $3f
	nop                                              ; $65bd: $00
	jr   c, jr_092_6580                              ; $65be: $38 $c0

	call nz, $d880                                   ; $65c0: $c4 $80 $d8
	dec  d                                           ; $65c3: $15
	cp   b                                           ; $65c4: $b8
	cp   d                                           ; $65c5: $ba
	inc  d                                           ; $65c6: $14
	sub  h                                           ; $65c7: $94
	inc  d                                           ; $65c8: $14
	push af                                          ; $65c9: $f5
	ld   a, [bc]                                     ; $65ca: $0a
	ld   l, d                                        ; $65cb: $6a
	ld   a, [bc]                                     ; $65cc: $0a
	ld   [$c2e2], a                                  ; $65cd: $ea $e2 $c2
	ret  nz                                          ; $65d0: $c0

	jp   z, $f1c2                                    ; $65d1: $ca $c2 $f1

	ld   hl, sp-$10                                  ; $65d4: $f8 $f0
	ldh  a, [c]                                      ; $65d6: $f2
	inc  c                                           ; $65d7: $0c
	nop                                              ; $65d8: $00
	ldh  a, [$80]                                    ; $65d9: $f0 $80
	nop                                              ; $65db: $00
	add  b                                           ; $65dc: $80
	rst  $38                                         ; $65dd: $ff
	add  h                                           ; $65de: $84
	add  b                                           ; $65df: $80
	inc  bc                                          ; $65e0: $03
	add  e                                           ; $65e1: $83
	add  d                                           ; $65e2: $82
	add  a                                           ; $65e3: $87
	add  [hl]                                        ; $65e4: $86
	add  b                                           ; $65e5: $80
	add  a                                           ; $65e6: $87
	add  e                                           ; $65e7: $83
	adc  a                                           ; $65e8: $8f
	dec  b                                           ; $65e9: $05

jr_092_65ea:
	adc  [hl]                                        ; $65ea: $8e
	adc  a                                           ; $65eb: $8f
	adc  h                                           ; $65ec: $8c
	add  [hl]                                        ; $65ed: $86
	add  b                                           ; $65ee: $80
	add  h                                           ; $65ef: $84
	add  l                                           ; $65f0: $85
	add  b                                           ; $65f1: $80
	add  b                                           ; $65f2: $80
	rst  $38                                         ; $65f3: $ff
	add  d                                           ; $65f4: $82
	nop                                              ; $65f5: $00
	inc  de                                          ; $65f6: $13
	and  b                                           ; $65f7: $a0
	jr   nc, jr_092_65ea                             ; $65f8: $30 $f0

	ld   [hl], b                                     ; $65fa: $70
	ldh  a, [$d0]                                    ; $65fb: $f0 $d0
	ldh  a, [$e0]                                    ; $65fd: $f0 $e0
	ldh  a, [$90]                                    ; $65ff: $f0 $90
	ldh  [rAUD4LEN], a                               ; $6601: $e0 $20
	ret  nz                                          ; $6603: $c0

	ld   b, b                                        ; $6604: $40
	nop                                              ; $6605: $00
	db   $10                                         ; $6606: $10
	ld   [hl], b                                     ; $6607: $70
	ld   b, b                                        ; $6608: $40
	ld   h, b                                        ; $6609: $60
	ld   b, b                                        ; $660a: $40
	rst  $38                                         ; $660b: $ff
	nop                                              ; $660c: $00
	rst  $38                                         ; $660d: $ff
	nop                                              ; $660e: $00
	rst  $38                                         ; $660f: $ff
	nop                                              ; $6610: $00
	rst  $38                                         ; $6611: $ff
	nop                                              ; $6612: $00
	rst  $38                                         ; $6613: $ff
	nop                                              ; $6614: $00
	rst  $38                                         ; $6615: $ff
	nop                                              ; $6616: $00
	rst  $38                                         ; $6617: $ff
	nop                                              ; $6618: $00
	rst  $38                                         ; $6619: $ff
	nop                                              ; $661a: $00
	cp   l                                           ; $661b: $bd
	nop                                              ; $661c: $00
	ld   c, $44                                      ; $661d: $0e $44
	nop                                              ; $661f: $00
	dec  sp                                          ; $6620: $3b
	nop                                              ; $6621: $00
	or   c                                           ; $6622: $b1
	nop                                              ; $6623: $00
	sbc  e                                           ; $6624: $9b
	nop                                              ; $6625: $00
	ld   sp, $0a00                                   ; $6626: $31 $00 $0a
	nop                                              ; $6629: $00
	ld   a, [hl+]                                    ; $662a: $2a
	nop                                              ; $662b: $00
	ld   b, h                                        ; $662c: $44
	add  c                                           ; $662d: $81
	nop                                              ; $662e: $00
	ld   [bc], a                                     ; $662f: $02
	add  b                                           ; $6630: $80
	nop                                              ; $6631: $00
	add  b                                           ; $6632: $80
	add  c                                           ; $6633: $81
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	add  b                                           ; $6636: $80
	add  c                                           ; $6637: $81
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	add  b                                           ; $663a: $80
	add  c                                           ; $663b: $81
	nop                                              ; $663c: $00
	inc  b                                           ; $663d: $04
	ld   bc, $0e00                                   ; $663e: $01 $00 $0e
	nop                                              ; $6641: $00
	ld   c, $81                                      ; $6642: $0e $81
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	inc  bc                                          ; $6646: $03
	add  c                                           ; $6647: $81
	nop                                              ; $6648: $00
	ld   [$000e], sp                                 ; $6649: $08 $0e $00
	inc  c                                           ; $664c: $0c
	nop                                              ; $664d: $00
	ld   bc, $f000                                   ; $664e: $01 $00 $f0
	nop                                              ; $6651: $00
	ldh  [$85], a                                    ; $6652: $e0 $85
	nop                                              ; $6654: $00
	inc  c                                           ; $6655: $0c
	ld   [hl], c                                     ; $6656: $71
	nop                                              ; $6657: $00
	ld   h, b                                        ; $6658: $60
	nop                                              ; $6659: $00
	ld   b, b                                        ; $665a: $40
	nop                                              ; $665b: $00
	scf                                              ; $665c: $37
	nop                                              ; $665d: $00
	db   $d3                                         ; $665e: $d3
	nop                                              ; $665f: $00
	ld   e, b                                        ; $6660: $58
	nop                                              ; $6661: $00
	ret  c                                           ; $6662: $d8

	add  c                                           ; $6663: $81
	nop                                              ; $6664: $00
	ld   [bc], a                                     ; $6665: $02
	di                                               ; $6666: $f3
	nop                                              ; $6667: $00
	rst  $10                                         ; $6668: $d7
	add  c                                           ; $6669: $81
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	add  b                                           ; $666c: $80
	adc  c                                           ; $666d: $89
	nop                                              ; $666e: $00
	db   $10                                         ; $666f: $10
	add  b                                           ; $6670: $80
	nop                                              ; $6671: $00
	ld   a, $00                                      ; $6672: $3e $00
	pop  bc                                          ; $6674: $c1
	nop                                              ; $6675: $00
	ld   d, l                                        ; $6676: $55
	nop                                              ; $6677: $00
	sub  h                                           ; $6678: $94
	nop                                              ; $6679: $00
	pop  bc                                          ; $667a: $c1
	nop                                              ; $667b: $00
	xor  d                                           ; $667c: $aa
	nop                                              ; $667d: $00
	xor  d                                           ; $667e: $aa
	nop                                              ; $667f: $00
	rst  $38                                         ; $6680: $ff
	add  c                                           ; $6681: $81
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	add  b                                           ; $6684: $80
	add  c                                           ; $6685: $81
	nop                                              ; $6686: $00
	ld   a, [hl+]                                    ; $6687: $2a
	add  b                                           ; $6688: $80
	nop                                              ; $6689: $00
	add  b                                           ; $668a: $80
	nop                                              ; $668b: $00
	add  b                                           ; $668c: $80
	nop                                              ; $668d: $00
	add  b                                           ; $668e: $80
	nop                                              ; $668f: $00
	add  b                                           ; $6690: $80
	nop                                              ; $6691: $00
	ld   a, a                                        ; $6692: $7f
	nop                                              ; $6693: $00
	ld   hl, $de00                                   ; $6694: $21 $00 $de
	nop                                              ; $6697: $00
	rst  $38                                         ; $6698: $ff
	nop                                              ; $6699: $00
	ld   d, l                                        ; $669a: $55
	nop                                              ; $669b: $00
	jr   c, jr_092_669e                              ; $669c: $38 $00

jr_092_669e:
	ld   a, a                                        ; $669e: $7f
	nop                                              ; $669f: $00
	ld   l, l                                        ; $66a0: $6d
	nop                                              ; $66a1: $00
	ld   [bc], a                                     ; $66a2: $02
	nop                                              ; $66a3: $00
	rlca                                             ; $66a4: $07
	nop                                              ; $66a5: $00
	ld   a, [bc]                                     ; $66a6: $0a
	nop                                              ; $66a7: $00
	ccf                                              ; $66a8: $3f
	nop                                              ; $66a9: $00
	ccf                                              ; $66aa: $3f
	nop                                              ; $66ab: $00
	add  a                                           ; $66ac: $87
	nop                                              ; $66ad: $00
	rlca                                             ; $66ae: $07
	nop                                              ; $66af: $00
	adc  a                                           ; $66b0: $8f
	nop                                              ; $66b1: $00
	inc  b                                           ; $66b2: $04
	add  c                                           ; $66b3: $81
	nop                                              ; $66b4: $00
	db   $10                                         ; $66b5: $10
	add  b                                           ; $66b6: $80
	nop                                              ; $66b7: $00
	ldh  [rP1], a                                    ; $66b8: $e0 $00
	ldh  [rP1], a                                    ; $66ba: $e0 $00
	ld   bc, $0300                                   ; $66bc: $01 $00 $03
	nop                                              ; $66bf: $00
	add  [hl]                                        ; $66c0: $86
	nop                                              ; $66c1: $00
	ld   bc, $2000                                   ; $66c2: $01 $00 $20
	nop                                              ; $66c5: $00
	jr   nc, @-$7b                                   ; $66c6: $30 $83

	nop                                              ; $66c8: $00
	ld   [bc], a                                     ; $66c9: $02
	stop                                             ; $66ca: $10 $00
	ld   bc, $0081                                   ; $66cc: $01 $81 $00
	ld   a, [de]                                     ; $66cf: $1a
	ld   a, $00                                      ; $66d0: $3e $00
	ld   [hl+], a                                    ; $66d2: $22
	nop                                              ; $66d3: $00
	db   $e3                                         ; $66d4: $e3
	nop                                              ; $66d5: $00
	db   $eb                                         ; $66d6: $eb
	nop                                              ; $66d7: $00
	dec  hl                                          ; $66d8: $2b
	nop                                              ; $66d9: $00
	ld   h, e                                        ; $66da: $63
	nop                                              ; $66db: $00
	dec  d                                           ; $66dc: $15
	nop                                              ; $66dd: $00
	ld   c, c                                        ; $66de: $49
	nop                                              ; $66df: $00
	rra                                              ; $66e0: $1f
	nop                                              ; $66e1: $00
	rrca                                             ; $66e2: $0f
	nop                                              ; $66e3: $00
	adc  a                                           ; $66e4: $8f
	nop                                              ; $66e5: $00

Jump_092_66e6:
	sbc  l                                           ; $66e6: $9d
	nop                                              ; $66e7: $00
	dec  a                                           ; $66e8: $3d
	nop                                              ; $66e9: $00
	dec  a                                           ; $66ea: $3d
	add  c                                           ; $66eb: $81
	nop                                              ; $66ec: $00
	jr   z, jr_092_66f1                              ; $66ed: $28 $02

	nop                                              ; $66ef: $00
	ret  nz                                          ; $66f0: $c0

jr_092_66f1:
	nop                                              ; $66f1: $00
	add  a                                           ; $66f2: $87
	nop                                              ; $66f3: $00
	add  a                                           ; $66f4: $87
	nop                                              ; $66f5: $00
	ret  nz                                          ; $66f6: $c0

	nop                                              ; $66f7: $00
	db   $e4                                         ; $66f8: $e4
	nop                                              ; $66f9: $00
	ldh  [rP1], a                                    ; $66fa: $e0 $00
	rlca                                             ; $66fc: $07
	nop                                              ; $66fd: $00
	inc  bc                                          ; $66fe: $03
	nop                                              ; $66ff: $00
	add  c                                           ; $6700: $81
	nop                                              ; $6701: $00
	ld   [hl], b                                     ; $6702: $70
	nop                                              ; $6703: $00
	or   b                                           ; $6704: $b0
	nop                                              ; $6705: $00
	ld   h, b                                        ; $6706: $60
	nop                                              ; $6707: $00
	ld   b, b                                        ; $6708: $40
	nop                                              ; $6709: $00
	ld   h, b                                        ; $670a: $60
	nop                                              ; $670b: $00
	pop  bc                                          ; $670c: $c1
	nop                                              ; $670d: $00
	ret  nz                                          ; $670e: $c0

	nop                                              ; $670f: $00
	jr   jr_092_6712                                 ; $6710: $18 $00

jr_092_6712:
	ld   a, $00                                      ; $6712: $3e $00
	reti                                             ; $6714: $d9


	nop                                              ; $6715: $00
	xor  d                                           ; $6716: $aa
	add  c                                           ; $6717: $81
	nop                                              ; $6718: $00
	db   $10                                         ; $6719: $10
	ld   [hl+], a                                    ; $671a: $22
	nop                                              ; $671b: $00
	ld   [hl], e                                     ; $671c: $73
	nop                                              ; $671d: $00
	inc  b                                           ; $671e: $04
	nop                                              ; $671f: $00
	ld   [bc], a                                     ; $6720: $02
	nop                                              ; $6721: $00
	dec  e                                           ; $6722: $1d
	nop                                              ; $6723: $00
	adc  l                                           ; $6724: $8d
	nop                                              ; $6725: $00
	add  b                                           ; $6726: $80
	nop                                              ; $6727: $00
	dec  c                                           ; $6728: $0d
	nop                                              ; $6729: $00
	dec  e                                           ; $672a: $1d
	add  c                                           ; $672b: $81
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	ld   [bc], a                                     ; $672e: $02
	add  c                                           ; $672f: $81
	nop                                              ; $6730: $00
	ld   a, [bc]                                     ; $6731: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6732: $cf
	nop                                              ; $6733: $00
	adc  d                                           ; $6734: $8a
	nop                                              ; $6735: $00
	ld   b, $00                                      ; $6736: $06 $00
	add  a                                           ; $6738: $87
	nop                                              ; $6739: $00
	rlc  b                                           ; $673a: $cb $00
	rrca                                             ; $673c: $0f
	add  c                                           ; $673d: $81
	nop                                              ; $673e: $00
	ld   c, $81                                      ; $673f: $0e $81
	nop                                              ; $6741: $00
	ld   a, b                                        ; $6742: $78
	nop                                              ; $6743: $00
	ld   l, b                                        ; $6744: $68
	nop                                              ; $6745: $00
	ld   [hl], b                                     ; $6746: $70
	nop                                              ; $6747: $00
	jr   nc, jr_092_674a                             ; $6748: $30 $00

jr_092_674a:
	jr   z, jr_092_674c                              ; $674a: $28 $00

jr_092_674c:
	ld   a, c                                        ; $674c: $79
	nop                                              ; $674d: $00
	ld   a, a                                        ; $674e: $7f
	adc  l                                           ; $674f: $8d
	rst  $38                                         ; $6750: $ff
	nop                                              ; $6751: $00
	add  b                                           ; $6752: $80
	adc  l                                           ; $6753: $8d
	nop                                              ; $6754: $00
	ld   bc, $ff80                                   ; $6755: $01 $80 $ff
	sub  b                                           ; $6758: $90
	nop                                              ; $6759: $00
	add  b                                           ; $675a: $80
	inc  e                                           ; $675b: $1c
	add  b                                           ; $675c: $80
	db   $fc                                         ; $675d: $fc
	ld   b, $7c                                      ; $675e: $06 $7c

jr_092_6760:
	inc  c                                           ; $6760: $0c
	adc  h                                           ; $6761: $8c
	db   $fc                                         ; $6762: $fc
	ld   hl, sp+$00                                  ; $6763: $f8 $00
	ld   hl, sp-$80                                  ; $6765: $f8 $80
	nop                                              ; $6767: $00
	inc  b                                           ; $6768: $04
	ld   a, a                                        ; $6769: $7f
	rst  $38                                         ; $676a: $ff
	nop                                              ; $676b: $00
	ld   a, a                                        ; $676c: $7f
	nop                                              ; $676d: $00
	add  b                                           ; $676e: $80
	rst  $38                                         ; $676f: $ff
	add  d                                           ; $6770: $82
	add  b                                           ; $6771: $80
	add  b                                           ; $6772: $80
	add  a                                           ; $6773: $87
	ld   [bc], a                                     ; $6774: $02
	add  h                                           ; $6775: $84
	add  a                                           ; $6776: $87
	db   $fc                                         ; $6777: $fc
	add  b                                           ; $6778: $80
	rst  $38                                         ; $6779: $ff
	ld   [bc], a                                     ; $677a: $02
	nop                                              ; $677b: $00
	rst  $38                                         ; $677c: $ff
	nop                                              ; $677d: $00
	add  b                                           ; $677e: $80
	rst  $38                                         ; $677f: $ff
	add  d                                           ; $6780: $82
	nop                                              ; $6781: $00
	add  b                                           ; $6782: $80
	rst  $38                                         ; $6783: $ff
	ld   [bc], a                                     ; $6784: $02
	nop                                              ; $6785: $00
	rst  $38                                         ; $6786: $ff
	nop                                              ; $6787: $00
	add  b                                           ; $6788: $80
	rst  $38                                         ; $6789: $ff
	ld   [bc], a                                     ; $678a: $02
	nop                                              ; $678b: $00
	rst  $38                                         ; $678c: $ff
	nop                                              ; $678d: $00
	add  b                                           ; $678e: $80
	rst  $38                                         ; $678f: $ff
	add  d                                           ; $6790: $82
	nop                                              ; $6791: $00
	add  b                                           ; $6792: $80
	ret  nz                                          ; $6793: $c0

	ld   [bc], a                                     ; $6794: $02
	ld   b, b                                        ; $6795: $40
	ret  nz                                          ; $6796: $c0

	inc  b                                           ; $6797: $04
	adc  l                                           ; $6798: $8d
	add  [hl]                                        ; $6799: $86
	nop                                              ; $679a: $00
	ld   [bc], a                                     ; $679b: $02
	adc  [hl]                                        ; $679c: $8e
	nop                                              ; $679d: $00
	dec  c                                           ; $679e: $0d
	add  b                                           ; $679f: $80
	add  e                                           ; $67a0: $83
	add  b                                           ; $67a1: $80
	add  c                                           ; $67a2: $81
	add  b                                           ; $67a3: $80
	add  c                                           ; $67a4: $81
	add  b                                           ; $67a5: $80
	add  c                                           ; $67a6: $81
	add  b                                           ; $67a7: $80
	add  c                                           ; $67a8: $81
	add  b                                           ; $67a9: $80
	add  a                                           ; $67aa: $87
	add  b                                           ; $67ab: $80
	add  h                                           ; $67ac: $84
	add  b                                           ; $67ad: $80
	add  b                                           ; $67ae: $80
	dec  c                                           ; $67af: $0d
	nop                                              ; $67b0: $00
	ldh  a, [rP1]                                    ; $67b1: $f0 $00
	ldh  [rP1], a                                    ; $67b3: $e0 $00
	ldh  [rP1], a                                    ; $67b5: $e0 $00
	ldh  [rP1], a                                    ; $67b7: $e0 $00
	ldh  [rP1], a                                    ; $67b9: $e0 $00
	ldh  [rP1], a                                    ; $67bb: $e0 $00
	db   $10                                         ; $67bd: $10
	add  b                                           ; $67be: $80
	nop                                              ; $67bf: $00
	add  c                                           ; $67c0: $81
	add  b                                           ; $67c1: $80
	ld   a, [bc]                                     ; $67c2: $0a
	add  h                                           ; $67c3: $84
	add  b                                           ; $67c4: $80
	add  [hl]                                        ; $67c5: $86
	add  b                                           ; $67c6: $80
	add  d                                           ; $67c7: $82
	add  b                                           ; $67c8: $80
	add  c                                           ; $67c9: $81
	add  b                                           ; $67ca: $80
	add  a                                           ; $67cb: $87
	add  b                                           ; $67cc: $80
	add  [hl]                                        ; $67cd: $86
	add  b                                           ; $67ce: $80
	add  b                                           ; $67cf: $80
	dec  c                                           ; $67d0: $0d
	nop                                              ; $67d1: $00
	add  b                                           ; $67d2: $80
	nop                                              ; $67d3: $00
	stop                                             ; $67d4: $10 $00
	jr   nc, jr_092_67d8                             ; $67d6: $30 $00

jr_092_67d8:
	jr   nz, jr_092_67da                             ; $67d8: $20 $00

jr_092_67da:
	ret  nz                                          ; $67da: $c0

	nop                                              ; $67db: $00
	ld   [hl], b                                     ; $67dc: $70
	nop                                              ; $67dd: $00
	jr   nc, jr_092_6760                             ; $67de: $30 $80

	nop                                              ; $67e0: $00
	add  e                                           ; $67e1: $83
	add  b                                           ; $67e2: $80
	ld   b, $87                                      ; $67e3: $06 $87
	add  b                                           ; $67e5: $80
	add  [hl]                                        ; $67e6: $86
	add  b                                           ; $67e7: $80
	add  a                                           ; $67e8: $87
	add  b                                           ; $67e9: $80
	add  [hl]                                        ; $67ea: $86
	add  d                                           ; $67eb: $82
	add  b                                           ; $67ec: $80
	dec  b                                           ; $67ed: $05
	nop                                              ; $67ee: $00
	add  b                                           ; $67ef: $80
	nop                                              ; $67f0: $00
	jr   nc, jr_092_67f3                             ; $67f1: $30 $00

jr_092_67f3:
	ld   [hl], b                                     ; $67f3: $70
	add  c                                           ; $67f4: $81
	nop                                              ; $67f5: $00
	inc  b                                           ; $67f6: $04
	ld   [hl], b                                     ; $67f7: $70
	nop                                              ; $67f8: $00
	jr   nc, jr_092_67fb                             ; $67f9: $30 $00

jr_092_67fb:
	add  b                                           ; $67fb: $80
	add  b                                           ; $67fc: $80
	nop                                              ; $67fd: $00
	add  c                                           ; $67fe: $81
	add  b                                           ; $67ff: $80
	ld   [$8087], sp                                 ; $6800: $08 $87 $80
	add  [hl]                                        ; $6803: $86
	add  b                                           ; $6804: $80
	add  e                                           ; $6805: $83
	add  b                                           ; $6806: $80
	add  [hl]                                        ; $6807: $86
	add  b                                           ; $6808: $80
	add  h                                           ; $6809: $84
	add  d                                           ; $680a: $82
	add  b                                           ; $680b: $80
	dec  c                                           ; $680c: $0d
	nop                                              ; $680d: $00
	add  b                                           ; $680e: $80
	nop                                              ; $680f: $00
	ld   [hl], b                                     ; $6810: $70
	nop                                              ; $6811: $00
	jr   nc, jr_092_6814                             ; $6812: $30 $00

jr_092_6814:
	ld   h, b                                        ; $6814: $60
	nop                                              ; $6815: $00
	jr   nc, jr_092_6818                             ; $6816: $30 $00

jr_092_6818:
	stop                                             ; $6818: $10 $00
	add  b                                           ; $681a: $80
	add  b                                           ; $681b: $80
	nop                                              ; $681c: $00
	add  c                                           ; $681d: $81
	add  b                                           ; $681e: $80
	ld   a, [bc]                                     ; $681f: $0a
	add  e                                           ; $6820: $83
	add  b                                           ; $6821: $80
	add  [hl]                                        ; $6822: $86
	add  b                                           ; $6823: $80
	add  h                                           ; $6824: $84
	add  b                                           ; $6825: $80
	add  e                                           ; $6826: $83
	add  b                                           ; $6827: $80
	add  l                                           ; $6828: $85
	add  b                                           ; $6829: $80
	add  a                                           ; $682a: $87
	add  b                                           ; $682b: $80
	add  b                                           ; $682c: $80
	rrca                                             ; $682d: $0f
	nop                                              ; $682e: $00
	add  b                                           ; $682f: $80
	nop                                              ; $6830: $00
	ldh  [rP1], a                                    ; $6831: $e0 $00
	or   b                                           ; $6833: $b0
	nop                                              ; $6834: $00
	stop                                             ; $6835: $10 $00
	ld   h, b                                        ; $6837: $60
	nop                                              ; $6838: $00
	ld   d, b                                        ; $6839: $50
	nop                                              ; $683a: $00
	ldh  a, [rP1]                                    ; $683b: $f0 $00
	ld   a, a                                        ; $683d: $7f
	add  h                                           ; $683e: $84
	rst  $38                                         ; $683f: $ff
	add  b                                           ; $6840: $80
	db   $fc                                         ; $6841: $fc
	add  d                                           ; $6842: $82
	rst  $38                                         ; $6843: $ff
	add  b                                           ; $6844: $80
	ld   hl, sp+$01                                  ; $6845: $f8 $01
	rst  $38                                         ; $6847: $ff
	ld   a, a                                        ; $6848: $7f
	add  b                                           ; $6849: $80
	rst  $38                                         ; $684a: $ff
	add  d                                           ; $684b: $82
	ld   a, a                                        ; $684c: $7f
	add  b                                           ; $684d: $80
	rra                                              ; $684e: $1f
	add  d                                           ; $684f: $82
	ld   a, a                                        ; $6850: $7f
	add  b                                           ; $6851: $80
	rrca                                             ; $6852: $0f
	ld   bc, $40ff                                   ; $6853: $01 $ff $40
	adc  l                                           ; $6856: $8d
	ret  nz                                          ; $6857: $c0

	nop                                              ; $6858: $00
	inc  b                                           ; $6859: $04
	add  b                                           ; $685a: $80
	add  a                                           ; $685b: $87
	adc  e                                           ; $685c: $8b
	add  [hl]                                        ; $685d: $86
	nop                                              ; $685e: $00
	ld   [bc], a                                     ; $685f: $02
	add  b                                           ; $6860: $80
	rst  $38                                         ; $6861: $ff
	add  e                                           ; $6862: $83
	nop                                              ; $6863: $00
	ld   [de], a                                     ; $6864: $12
	ld   c, [hl]                                     ; $6865: $4e
	nop                                              ; $6866: $00
	and  h                                           ; $6867: $a4
	nop                                              ; $6868: $00
	and  b                                           ; $6869: $a0
	nop                                              ; $686a: $00
	and  h                                           ; $686b: $a4
	nop                                              ; $686c: $00
	ld   b, h                                        ; $686d: $44
	nop                                              ; $686e: $00
	ld   b, h                                        ; $686f: $44
	nop                                              ; $6870: $00
	and  h                                           ; $6871: $a4
	nop                                              ; $6872: $00
	and  b                                           ; $6873: $a0
	nop                                              ; $6874: $00
	and  b                                           ; $6875: $a0

jr_092_6876:
	nop                                              ; $6876: $00
	ld   c, d                                        ; $6877: $4a
	add  h                                           ; $6878: $84
	nop                                              ; $6879: $00
	add  b                                           ; $687a: $80
	rst  $38                                         ; $687b: $ff
	add  e                                           ; $687c: $83
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	db   $fc                                         ; $687f: $fc
	add  c                                           ; $6880: $81
	nop                                              ; $6881: $00
	ld   b, $78                                      ; $6882: $06 $78
	nop                                              ; $6884: $00
	ld   a, b                                        ; $6885: $78
	nop                                              ; $6886: $00
	ld   a, b                                        ; $6887: $78
	add  [hl]                                        ; $6888: $86
	add  a                                           ; $6889: $87
	add  c                                           ; $688a: $81
	add  [hl]                                        ; $688b: $86
	nop                                              ; $688c: $00
	add  a                                           ; $688d: $87
	add  a                                           ; $688e: $87
	add  [hl]                                        ; $688f: $86
	ld   a, [bc]                                     ; $6890: $0a
	ret  z                                           ; $6891: $c8

	nop                                              ; $6892: $00
	add  b                                           ; $6893: $80
	nop                                              ; $6894: $00
	jr   nc, jr_092_6897                             ; $6895: $30 $00

jr_092_6897:
	ld   a, d                                        ; $6897: $7a
	nop                                              ; $6898: $00
	db   $fc                                         ; $6899: $fc
	nop                                              ; $689a: $00
	db   $fc                                         ; $689b: $fc
	add  h                                           ; $689c: $84
	nop                                              ; $689d: $00
	rrca                                             ; $689e: $0f
	rst  $38                                         ; $689f: $ff
	rst  JumpTable                                         ; $68a0: $df
	add  b                                           ; $68a1: $80
	ret  nc                                          ; $68a2: $d0

	and  b                                           ; $68a3: $a0
	xor  h                                           ; $68a4: $ac
	add  b                                           ; $68a5: $80
	sbc  e                                           ; $68a6: $9b
	db   $e4                                         ; $68a7: $e4
	ldh  a, [$f2]                                    ; $68a8: $f0 $f2
	or   $f7                                         ; $68aa: $f6 $f7
	rst  $20                                         ; $68ac: $e7
	pop  hl                                          ; $68ad: $e1
	add  [hl]                                        ; $68ae: $86
	add  b                                           ; $68af: $80
	rst  $38                                         ; $68b0: $ff
	add  e                                           ; $68b1: $83
	nop                                              ; $68b2: $00
	ld   a, [bc]                                     ; $68b3: $0a
	or   b                                           ; $68b4: $b0
	nop                                              ; $68b5: $00
	ld   e, b                                        ; $68b6: $58
	and  b                                           ; $68b7: $a0
	or   b                                           ; $68b8: $b0
	nop                                              ; $68b9: $00
	inc  c                                           ; $68ba: $0c
	jr   nc, jr_092_6876                             ; $68bb: $30 $b9

	add  h                                           ; $68bd: $84
	add  [hl]                                        ; $68be: $86
	add  b                                           ; $68bf: $80
	add  c                                           ; $68c0: $81
	add  b                                           ; $68c1: $80
	cp   a                                           ; $68c2: $bf
	add  b                                           ; $68c3: $80
	ret  nz                                          ; $68c4: $c0

	add  b                                           ; $68c5: $80
	add  c                                           ; $68c6: $81
	add  b                                           ; $68c7: $80
	add  a                                           ; $68c8: $87
	add  c                                           ; $68c9: $81
	ld   sp, hl                                      ; $68ca: $f9
	ld   b, $7a                                      ; $68cb: $06 $7a
	add  b                                           ; $68cd: $80
	or   b                                           ; $68ce: $b0
	add  b                                           ; $68cf: $80
	cp   [hl]                                        ; $68d0: $be
	jr   nc, jr_092_690f                             ; $68d1: $30 $3c

	add  b                                           ; $68d3: $80
	cp   h                                           ; $68d4: $bc
	add  c                                           ; $68d5: $81
	add  b                                           ; $68d6: $80
	rlca                                             ; $68d7: $07
	sub  [hl]                                        ; $68d8: $96
	and  b                                           ; $68d9: $a0
	cp   h                                           ; $68da: $bc
	or   b                                           ; $68db: $b0
	ret  nz                                          ; $68dc: $c0

	add  a                                           ; $68dd: $87
	add  h                                           ; $68de: $84
	add  a                                           ; $68df: $87
	adc  d                                           ; $68e0: $8a
	add  b                                           ; $68e1: $80
	inc  bc                                          ; $68e2: $03
	nop                                              ; $68e3: $00
	rst  $38                                         ; $68e4: $ff
	nop                                              ; $68e5: $00
	rst  $38                                         ; $68e6: $ff
	adc  b                                           ; $68e7: $88
	nop                                              ; $68e8: $00
	add  b                                           ; $68e9: $80
	ld   bc, $0003                                   ; $68ea: $01 $03 $00
	rst  $38                                         ; $68ed: $ff
	nop                                              ; $68ee: $00
	rst  $38                                         ; $68ef: $ff
	adc  b                                           ; $68f0: $88
	nop                                              ; $68f1: $00
	add  b                                           ; $68f2: $80
	rst  $38                                         ; $68f3: $ff
	inc  bc                                          ; $68f4: $03
	ld   b, b                                        ; $68f5: $40
	ret  nz                                          ; $68f6: $c0

	ld   b, b                                        ; $68f7: $40
	ret  nz                                          ; $68f8: $c0

	adc  b                                           ; $68f9: $88

jr_092_68fa:
	nop                                              ; $68fa: $00
	add  b                                           ; $68fb: $80
	rst  $38                                         ; $68fc: $ff
	adc  h                                           ; $68fd: $8c
	add  b                                           ; $68fe: $80
	add  b                                           ; $68ff: $80
	rst  $38                                         ; $6900: $ff
	adc  h                                           ; $6901: $8c
	nop                                              ; $6902: $00
	add  b                                           ; $6903: $80
	rst  $38                                         ; $6904: $ff
	add  d                                           ; $6905: $82
	ld   bc, $0088                                   ; $6906: $01 $88 $00
	add  b                                           ; $6909: $80
	rst  $38                                         ; $690a: $ff
	inc  bc                                          ; $690b: $03
	nop                                              ; $690c: $00
	rst  $38                                         ; $690d: $ff
	nop                                              ; $690e: $00

jr_092_690f:
	rst  $38                                         ; $690f: $ff
	adc  d                                           ; $6910: $8a
	nop                                              ; $6911: $00
	adc  a                                           ; $6912: $8f
	rra                                              ; $6913: $1f
	rlca                                             ; $6914: $07
	rst  $38                                         ; $6915: $ff
	and  a                                           ; $6916: $a7
	ccf                                              ; $6917: $3f
	dec  sp                                          ; $6918: $3b
	daa                                              ; $6919: $27
	dec  h                                           ; $691a: $25
	daa                                              ; $691b: $27
	ld   h, $85                                      ; $691c: $26 $85
	dec  h                                           ; $691e: $25
	nop                                              ; $691f: $00
	sbc  d                                           ; $6920: $9a
	add  b                                           ; $6921: $80
	rst  $38                                         ; $6922: $ff
	ld   [bc], a                                     ; $6923: $02
	nop                                              ; $6924: $00
	rst  $38                                         ; $6925: $ff
	nop                                              ; $6926: $00
	add  b                                           ; $6927: $80
	rst  $38                                         ; $6928: $ff
	add  [hl]                                        ; $6929: $86
	nop                                              ; $692a: $00
	dec  b                                           ; $692b: $05
	rst  $38                                         ; $692c: $ff
	cp   $ff                                         ; $692d: $fe $ff
	nop                                              ; $692f: $00
	cp   $00                                         ; $6930: $fe $00
	add  b                                           ; $6932: $80
	rst  $38                                         ; $6933: $ff
	add  [hl]                                        ; $6934: $86
	ld   bc, $4002                                   ; $6935: $01 $02 $40
	dec  h                                           ; $6938: $25
	and  l                                           ; $6939: $a5
	adc  e                                           ; $693a: $8b
	dec  h                                           ; $693b: $25
	ld   bc, $ff1a                                   ; $693c: $01 $1a $ff
	add  d                                           ; $693f: $82
	add  b                                           ; $6940: $80
	ld   [bc], a                                     ; $6941: $02
	cp   a                                           ; $6942: $bf
	add  b                                           ; $6943: $80
	sbc  a                                           ; $6944: $9f
	add  c                                           ; $6945: $81
	add  b                                           ; $6946: $80
	dec  b                                           ; $6947: $05
	adc  l                                           ; $6948: $8d
	add  b                                           ; $6949: $80
	adc  l                                           ; $694a: $8d
	add  b                                           ; $694b: $80
	rst  JumpTable                                         ; $694c: $df
	rst  $38                                         ; $694d: $ff
	add  d                                           ; $694e: $82
	nop                                              ; $694f: $00
	db   $10                                         ; $6950: $10
	cp   $00                                         ; $6951: $fe $00
	db   $fc                                         ; $6953: $fc
	nop                                              ; $6954: $00
	add  b                                           ; $6955: $80
	nop                                              ; $6956: $00
	ld   [hl], b                                     ; $6957: $70
	nop                                              ; $6958: $00
	ld   h, b                                        ; $6959: $60
	nop                                              ; $695a: $00
	ld   a, $80                                      ; $695b: $3e $80
	adc  a                                           ; $695d: $8f
	add  b                                           ; $695e: $80
	add  e                                           ; $695f: $83
	add  b                                           ; $6960: $80
	add  l                                           ; $6961: $85
	add  c                                           ; $6962: $81
	add  b                                           ; $6963: $80
	ld   [bc], a                                     ; $6964: $02
	adc  a                                           ; $6965: $8f
	add  b                                           ; $6966: $80
	adc  d                                           ; $6967: $8a
	add  c                                           ; $6968: $81

jr_092_6969:
	add  b                                           ; $6969: $80
	ld   b, $b2                                      ; $696a: $06 $b2
	nop                                              ; $696c: $00

jr_092_696d:
	ld   l, b                                        ; $696d: $68
	nop                                              ; $696e: $00
	jr   c, jr_092_6971                              ; $696f: $38 $00

jr_092_6971:
	ldh  [$81], a                                    ; $6971: $e0 $81
	nop                                              ; $6973: $00
	ld   [bc], a                                     ; $6974: $02
	jr   c, jr_092_6977                              ; $6975: $38 $00

jr_092_6977:
	jr   jr_092_68fa                                 ; $6977: $18 $81

	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	and  d                                           ; $697b: $a2
	add  c                                           ; $697c: $81
	add  b                                           ; $697d: $80
	ld   b, $8f                                      ; $697e: $06 $8f
	add  b                                           ; $6980: $80
	add  a                                           ; $6981: $87
	add  b                                           ; $6982: $80

jr_092_6983:
	add  e                                           ; $6983: $83
	add  b                                           ; $6984: $80
	adc  e                                           ; $6985: $8b
	add  c                                           ; $6986: $81
	add  b                                           ; $6987: $80
	ld   d, $84                                      ; $6988: $16 $84
	add  b                                           ; $698a: $80
	ld   h, $00                                      ; $698b: $26 $00
	add  b                                           ; $698d: $80
	nop                                              ; $698e: $00
	ld   a, b                                        ; $698f: $78
	nop                                              ; $6990: $00
	ldh  a, [rP1]                                    ; $6991: $f0 $00
	ldh  [rP1], a                                    ; $6993: $e0 $00
	ld   l, b                                        ; $6995: $68
	nop                                              ; $6996: $00
	ld   b, b                                        ; $6997: $40
	nop                                              ; $6998: $00
	ld   b, b                                        ; $6999: $40
	nop                                              ; $699a: $00
	dec  h                                           ; $699b: $25
	add  b                                           ; $699c: $80
	adc  a                                           ; $699d: $8f
	add  b                                           ; $699e: $80
	adc  b                                           ; $699f: $88
	add  c                                           ; $69a0: $81

jr_092_69a1:
	add  b                                           ; $69a1: $80
	ld   [bc], a                                     ; $69a2: $02
	sbc  a                                           ; $69a3: $9f
	add  b                                           ; $69a4: $80
	cp   a                                           ; $69a5: $bf
	add  c                                           ; $69a6: $81
	add  b                                           ; $69a7: $80
	add  b                                           ; $69a8: $80
	rst  $38                                         ; $69a9: $ff
	inc  b                                           ; $69aa: $04
	add  d                                           ; $69ab: $82
	nop                                              ; $69ac: $00
	ld   a, b                                        ; $69ad: $78
	nop                                              ; $69ae: $00
	ld   hl, sp-$7f                                  ; $69af: $f8 $81
	nop                                              ; $69b1: $00
	ld   [bc], a                                     ; $69b2: $02
	db   $fc                                         ; $69b3: $fc
	nop                                              ; $69b4: $00
	cp   $81                                         ; $69b5: $fe $81
	nop                                              ; $69b7: $00
	add  b                                           ; $69b8: $80
	rst  $38                                         ; $69b9: $ff
	adc  [hl]                                        ; $69ba: $8e
	nop                                              ; $69bb: $00
	inc  bc                                          ; $69bc: $03
	ld   b, b                                        ; $69bd: $40
	ret  nz                                          ; $69be: $c0

	ld   b, b                                        ; $69bf: $40
	ret  nz                                          ; $69c0: $c0

	adc  b                                           ; $69c1: $88
	nop                                              ; $69c2: $00
	add  b                                           ; $69c3: $80
	rst  $38                                         ; $69c4: $ff

jr_092_69c5:
	nop                                              ; $69c5: $00
	ret  nz                                          ; $69c6: $c0

	adc  l                                           ; $69c7: $8d
	dec  h                                           ; $69c8: $25
	nop                                              ; $69c9: $00
	ld   h, h                                        ; $69ca: $64
	adc  l                                           ; $69cb: $8d
	add  c                                           ; $69cc: $81
	adc  h                                           ; $69cd: $8c
	nop                                              ; $69ce: $00
	add  b                                           ; $69cf: $80
	ret  nz                                          ; $69d0: $c0

	adc  [hl]                                        ; $69d1: $8e
	ld   bc, $0090                                   ; $69d2: $01 $90 $00
	ld   [bc], a                                     ; $69d5: $02
	inc  a                                           ; $69d6: $3c
	nop                                              ; $69d7: $00
	db   $10                                         ; $69d8: $10
	add  l                                           ; $69d9: $85
	nop                                              ; $69da: $00
	ld   [bc], a                                     ; $69db: $02
	stop                                             ; $69dc: $10 $00
	inc  a                                           ; $69de: $3c
	add  c                                           ; $69df: $81
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	jr   jr_092_696d                                 ; $69e2: $18 $89

	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	jr   jr_092_6969                                 ; $69e6: $18 $81

	nop                                              ; $69e8: $00
	ld   b, $3c                                      ; $69e9: $06 $3c
	nop                                              ; $69eb: $00
	jr   nc, jr_092_69ee                             ; $69ec: $30 $00

jr_092_69ee:
	jr   nc, jr_092_69f0                             ; $69ee: $30 $00

jr_092_69f0:
	inc  c                                           ; $69f0: $0c
	add  c                                           ; $69f1: $81
	nop                                              ; $69f2: $00
	ld   [bc], a                                     ; $69f3: $02
	inc  c                                           ; $69f4: $0c
	nop                                              ; $69f5: $00
	inc  a                                           ; $69f6: $3c
	add  c                                           ; $69f7: $81
	nop                                              ; $69f8: $00
	ld   b, $3c                                      ; $69f9: $06 $3c
	nop                                              ; $69fb: $00
	jr   nc, jr_092_69fe                             ; $69fc: $30 $00

jr_092_69fe:
	jr   nc, jr_092_6a00                             ; $69fe: $30 $00

jr_092_6a00:
	jr   nc, jr_092_6983                             ; $6a00: $30 $81

	nop                                              ; $6a02: $00
	ld   [bc], a                                     ; $6a03: $02
	jr   nc, jr_092_6a06                             ; $6a04: $30 $00

jr_092_6a06:
	inc  a                                           ; $6a06: $3c
	add  c                                           ; $6a07: $81
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	inc  l                                           ; $6a0a: $2c
	add  e                                           ; $6a0b: $83
	nop                                              ; $6a0c: $00
	ld   [bc], a                                     ; $6a0d: $02
	ld   [de], a                                     ; $6a0e: $12
	nop                                              ; $6a0f: $00
	ld   [hl-], a                                    ; $6a10: $32
	add  c                                           ; $6a11: $81
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	inc  c                                           ; $6a14: $0c
	add  c                                           ; $6a15: $81
	nop                                              ; $6a16: $00
	ld   b, $3c                                      ; $6a17: $06 $3c
	nop                                              ; $6a19: $00
	inc  c                                           ; $6a1a: $0c
	nop                                              ; $6a1b: $00
	inc  c                                           ; $6a1c: $0c
	nop                                              ; $6a1d: $00
	jr   nc, jr_092_69a1                             ; $6a1e: $30 $81

	nop                                              ; $6a20: $00
	ld   [bc], a                                     ; $6a21: $02
	jr   nc, jr_092_6a24                             ; $6a22: $30 $00

jr_092_6a24:
	inc  a                                           ; $6a24: $3c
	add  c                                           ; $6a25: $81
	nop                                              ; $6a26: $00
	ld   b, $3c                                      ; $6a27: $06 $3c
	nop                                              ; $6a29: $00
	inc  c                                           ; $6a2a: $0c
	nop                                              ; $6a2b: $00
	inc  c                                           ; $6a2c: $0c
	nop                                              ; $6a2d: $00
	db   $10                                         ; $6a2e: $10
	add  c                                           ; $6a2f: $81
	nop                                              ; $6a30: $00
	ld   [bc], a                                     ; $6a31: $02
	stop                                             ; $6a32: $10 $00
	inc  a                                           ; $6a34: $3c
	add  c                                           ; $6a35: $81
	nop                                              ; $6a36: $00
	ld   b, $7c                                      ; $6a37: $06 $7c
	nop                                              ; $6a39: $00
	stop                                             ; $6a3a: $10 $00
	ld   h, b                                        ; $6a3c: $60
	nop                                              ; $6a3d: $00
	inc  d                                           ; $6a3e: $14
	add  e                                           ; $6a3f: $83
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	jr   jr_092_69c5                                 ; $6a42: $18 $81

	nop                                              ; $6a44: $00
	ld   b, $3c                                      ; $6a45: $06 $3c
	nop                                              ; $6a47: $00
	stop                                             ; $6a48: $10 $00
	stop                                             ; $6a4a: $10 $00
	db   $10                                         ; $6a4c: $10
	add  c                                           ; $6a4d: $81
	nop                                              ; $6a4e: $00
	ld   [bc], a                                     ; $6a4f: $02
	stop                                             ; $6a50: $10 $00
	inc  a                                           ; $6a52: $3c
	add  c                                           ; $6a53: $81
	nop                                              ; $6a54: $00
	ld   b, $7c                                      ; $6a55: $06 $7c
	nop                                              ; $6a57: $00
	stop                                             ; $6a58: $10 $00
	stop                                             ; $6a5a: $10 $00
	ld   [hl], b                                     ; $6a5c: $70
	add  c                                           ; $6a5d: $81
	nop                                              ; $6a5e: $00
	ld   [bc], a                                     ; $6a5f: $02
	ld   [hl], b                                     ; $6a60: $70
	nop                                              ; $6a61: $00
	ld   a, h                                        ; $6a62: $7c
	add  c                                           ; $6a63: $81
	nop                                              ; $6a64: $00
	ld   [bc], a                                     ; $6a65: $02
	ld   c, [hl]                                     ; $6a66: $4e
	nop                                              ; $6a67: $00
	inc  b                                           ; $6a68: $04
	add  l                                           ; $6a69: $85
	nop                                              ; $6a6a: $00
	ld   [bc], a                                     ; $6a6b: $02
	inc  b                                           ; $6a6c: $04
	nop                                              ; $6a6d: $00
	ld   c, [hl]                                     ; $6a6e: $4e
	add  c                                           ; $6a6f: $81
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	ld   b, h                                        ; $6a72: $44
	adc  c                                           ; $6a73: $89
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	ld   b, h                                        ; $6a76: $44
	add  c                                           ; $6a77: $81
	nop                                              ; $6a78: $00
	ld   b, $4e                                      ; $6a79: $06 $4e
	nop                                              ; $6a7b: $00
	inc  c                                           ; $6a7c: $0c
	nop                                              ; $6a7d: $00
	inc  c                                           ; $6a7e: $0c
	nop                                              ; $6a7f: $00
	ld   b, $81                                      ; $6a80: $06 $81
	nop                                              ; $6a82: $00
	ld   [bc], a                                     ; $6a83: $02
	ld   b, $00                                      ; $6a84: $06 $00
	ld   c, [hl]                                     ; $6a86: $4e
	add  c                                           ; $6a87: $81
	nop                                              ; $6a88: $00
	ld   b, $4e                                      ; $6a89: $06 $4e
	nop                                              ; $6a8b: $00
	inc  c                                           ; $6a8c: $0c
	nop                                              ; $6a8d: $00
	inc  c                                           ; $6a8e: $0c
	nop                                              ; $6a8f: $00
	inc  c                                           ; $6a90: $0c
	add  c                                           ; $6a91: $81
	nop                                              ; $6a92: $00
	ld   [bc], a                                     ; $6a93: $02
	inc  c                                           ; $6a94: $0c
	nop                                              ; $6a95: $00
	ld   c, [hl]                                     ; $6a96: $4e
	add  c                                           ; $6a97: $81
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	ld   d, h                                        ; $6a9a: $54
	add  e                                           ; $6a9b: $83
	nop                                              ; $6a9c: $00
	ld   [bc], a                                     ; $6a9d: $02
	ld   a, [bc]                                     ; $6a9e: $0a
	nop                                              ; $6a9f: $00
	ld   a, [de]                                     ; $6aa0: $1a
	add  c                                           ; $6aa1: $81
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	ld   b, h                                        ; $6aa4: $44
	add  c                                           ; $6aa5: $81
	nop                                              ; $6aa6: $00
	ld   b, $4e                                      ; $6aa7: $06 $4e
	nop                                              ; $6aa9: $00
	ld   b, $00                                      ; $6aaa: $06 $00
	ld   b, $00                                      ; $6aac: $06 $00
	inc  c                                           ; $6aae: $0c
	add  c                                           ; $6aaf: $81
	nop                                              ; $6ab0: $00
	ld   [bc], a                                     ; $6ab1: $02
	inc  c                                           ; $6ab2: $0c
	nop                                              ; $6ab3: $00
	ld   c, [hl]                                     ; $6ab4: $4e
	add  c                                           ; $6ab5: $81
	nop                                              ; $6ab6: $00
	ld   b, $4e                                      ; $6ab7: $06 $4e
	nop                                              ; $6ab9: $00
	ld   b, $00                                      ; $6aba: $06 $00
	ld   b, $00                                      ; $6abc: $06 $00
	inc  b                                           ; $6abe: $04
	add  c                                           ; $6abf: $81
	nop                                              ; $6ac0: $00
	ld   [bc], a                                     ; $6ac1: $02
	inc  b                                           ; $6ac2: $04
	nop                                              ; $6ac3: $00
	ld   c, [hl]                                     ; $6ac4: $4e
	add  c                                           ; $6ac5: $81
	nop                                              ; $6ac6: $00
	ld   b, $4e                                      ; $6ac7: $06 $4e
	nop                                              ; $6ac9: $00
	inc  b                                           ; $6aca: $04
	nop                                              ; $6acb: $00
	ld   [$0600], sp                                 ; $6acc: $08 $00 $06
	add  e                                           ; $6acf: $83
	nop                                              ; $6ad0: $00
	ld   bc, $0044                                   ; $6ad1: $01 $44 $00
	add  c                                           ; $6ad4: $81
	rst  $38                                         ; $6ad5: $ff
	add  b                                           ; $6ad6: $80
	jp   $d386                                       ; $6ad7: $c3 $86 $d3


	add  b                                           ; $6ada: $80
	jp   $ff82                                       ; $6adb: $c3 $82 $ff


	adc  d                                           ; $6ade: $8a
	rst  $20                                         ; $6adf: $e7
	add  d                                           ; $6ae0: $82
	rst  $38                                         ; $6ae1: $ff
	add  b                                           ; $6ae2: $80
	jp   $f380                                       ; $6ae3: $c3 $80 $f3


	add  b                                           ; $6ae6: $80
	jp   $cf82                                       ; $6ae7: $c3 $82 $cf


	add  b                                           ; $6aea: $80
	jp   $ff82                                       ; $6aeb: $c3 $82 $ff


	add  b                                           ; $6aee: $80
	jp   $f380                                       ; $6aef: $c3 $80 $f3


	add  b                                           ; $6af2: $80
	jp   $f382                                       ; $6af3: $c3 $82 $f3


	add  b                                           ; $6af6: $80
	jp   $ff82                                       ; $6af7: $c3 $82 $ff


	add  h                                           ; $6afa: $84
	db   $d3                                         ; $6afb: $d3
	add  b                                           ; $6afc: $80
	pop  bc                                          ; $6afd: $c1
	add  d                                           ; $6afe: $82
	di                                               ; $6aff: $f3
	add  d                                           ; $6b00: $82
	rst  $38                                         ; $6b01: $ff
	add  b                                           ; $6b02: $80
	jp   $cf80                                       ; $6b03: $c3 $80 $cf


	add  b                                           ; $6b06: $80
	jp   $f382                                       ; $6b07: $c3 $82 $f3


	add  b                                           ; $6b0a: $80
	jp   $ff82                                       ; $6b0b: $c3 $82 $ff


	add  b                                           ; $6b0e: $80
	jp   $cf80                                       ; $6b0f: $c3 $80 $cf


	add  b                                           ; $6b12: $80
	jp   $d382                                       ; $6b13: $c3 $82 $d3


	add  b                                           ; $6b16: $80
	jp   $ff82                                       ; $6b17: $c3 $82 $ff


	add  b                                           ; $6b1a: $80
	add  e                                           ; $6b1b: $83
	add  b                                           ; $6b1c: $80
	sub  e                                           ; $6b1d: $93
	add  b                                           ; $6b1e: $80
	di                                               ; $6b1f: $f3
	add  h                                           ; $6b20: $84
	rst  $20                                         ; $6b21: $e7
	add  d                                           ; $6b22: $82
	rst  $38                                         ; $6b23: $ff
	add  b                                           ; $6b24: $80
	jp   $d380                                       ; $6b25: $c3 $80 $d3


	add  b                                           ; $6b28: $80
	jp   $d382                                       ; $6b29: $c3 $82 $d3


	add  b                                           ; $6b2c: $80
	jp   $ff82                                       ; $6b2d: $c3 $82 $ff


	add  b                                           ; $6b30: $80
	add  e                                           ; $6b31: $83
	add  b                                           ; $6b32: $80
	sub  e                                           ; $6b33: $93
	add  b                                           ; $6b34: $80
	add  e                                           ; $6b35: $83
	add  d                                           ; $6b36: $82
	di                                               ; $6b37: $f3
	add  b                                           ; $6b38: $80
	add  e                                           ; $6b39: $83
	add  d                                           ; $6b3a: $82
	rst  $38                                         ; $6b3b: $ff
	add  b                                           ; $6b3c: $80
	or   c                                           ; $6b3d: $b1
	add  [hl]                                        ; $6b3e: $86
	or   l                                           ; $6b3f: $b5
	add  b                                           ; $6b40: $80
	or   c                                           ; $6b41: $b1
	add  d                                           ; $6b42: $82
	rst  $38                                         ; $6b43: $ff
	adc  d                                           ; $6b44: $8a
	cp   e                                           ; $6b45: $bb
	add  d                                           ; $6b46: $82
	rst  $38                                         ; $6b47: $ff
	add  b                                           ; $6b48: $80
	or   c                                           ; $6b49: $b1
	add  b                                           ; $6b4a: $80
	cp   l                                           ; $6b4b: $bd
	add  b                                           ; $6b4c: $80
	or   c                                           ; $6b4d: $b1
	add  d                                           ; $6b4e: $82
	or   a                                           ; $6b4f: $b7
	add  b                                           ; $6b50: $80
	or   c                                           ; $6b51: $b1
	add  d                                           ; $6b52: $82
	rst  $38                                         ; $6b53: $ff
	add  b                                           ; $6b54: $80
	or   c                                           ; $6b55: $b1
	add  b                                           ; $6b56: $80
	cp   l                                           ; $6b57: $bd
	add  b                                           ; $6b58: $80
	or   c                                           ; $6b59: $b1
	add  d                                           ; $6b5a: $82
	cp   l                                           ; $6b5b: $bd
	add  b                                           ; $6b5c: $80
	or   c                                           ; $6b5d: $b1
	add  d                                           ; $6b5e: $82
	rst  $38                                         ; $6b5f: $ff
	add  h                                           ; $6b60: $84
	xor  e                                           ; $6b61: $ab
	add  b                                           ; $6b62: $80
	and  c                                           ; $6b63: $a1
	add  d                                           ; $6b64: $82
	cp   e                                           ; $6b65: $bb
	add  d                                           ; $6b66: $82
	rst  $38                                         ; $6b67: $ff
	add  b                                           ; $6b68: $80
	or   c                                           ; $6b69: $b1
	add  b                                           ; $6b6a: $80
	or   a                                           ; $6b6b: $b7
	add  b                                           ; $6b6c: $80
	or   c                                           ; $6b6d: $b1
	add  d                                           ; $6b6e: $82
	cp   l                                           ; $6b6f: $bd
	add  b                                           ; $6b70: $80
	or   c                                           ; $6b71: $b1
	add  d                                           ; $6b72: $82
	rst  $38                                         ; $6b73: $ff
	add  b                                           ; $6b74: $80
	or   c                                           ; $6b75: $b1
	add  b                                           ; $6b76: $80
	or   a                                           ; $6b77: $b7
	add  b                                           ; $6b78: $80
	or   c                                           ; $6b79: $b1
	add  d                                           ; $6b7a: $82
	or   l                                           ; $6b7b: $b5
	add  b                                           ; $6b7c: $80
	or   c                                           ; $6b7d: $b1
	add  d                                           ; $6b7e: $82
	rst  $38                                         ; $6b7f: $ff
	add  b                                           ; $6b80: $80
	or   c                                           ; $6b81: $b1
	add  b                                           ; $6b82: $80
	or   l                                           ; $6b83: $b5
	add  b                                           ; $6b84: $80
	cp   l                                           ; $6b85: $bd
	add  h                                           ; $6b86: $84
	cp   e                                           ; $6b87: $bb
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	cp   [hl]                                        ; $6b8a: $be
	rst  $38                                         ; $6b8b: $ff
	ld   b, l                                        ; $6b8c: $45
	rst  $38                                         ; $6b8d: $ff
	ld   b, l                                        ; $6b8e: $45
	rst  $38                                         ; $6b8f: $ff
	cpl                                              ; $6b90: $2f
	rst  $38                                         ; $6b91: $ff
	and  a                                           ; $6b92: $a7
	db   $fc                                         ; $6b93: $fc
	rst  JumpTable                                         ; $6b94: $df

jr_092_6b95:
	ei                                               ; $6b95: $fb
	cp   $f6                                         ; $6b96: $fe $f6
	db   $fd                                         ; $6b98: $fd
	or   l                                           ; $6b99: $b5
	ld   sp, hl                                      ; $6b9a: $f9
	or   c                                           ; $6b9b: $b1
	ld   sp, hl                                      ; $6b9c: $f9
	or   c                                           ; $6b9d: $b1
	db   $fd                                         ; $6b9e: $fd
	or   l                                           ; $6b9f: $b5
	rst  $28                                         ; $6ba0: $ef
	cp   e                                           ; $6ba1: $bb
	ld   l, h                                        ; $6ba2: $6c
	ld   a, b                                        ; $6ba3: $78
	inc  l                                           ; $6ba4: $2c
	jr   c, jr_092_6bd3                              ; $6ba5: $38 $2c

	jr   c, jr_092_6bd5                              ; $6ba7: $38 $2c

	jr   c, jr_092_6bcf                              ; $6ba9: $38 $24

	inc  a                                           ; $6bab: $3c
	rst  $20                                         ; $6bac: $e7
	ld   b, e                                        ; $6bad: $43
	and  $43                                         ; $6bae: $e6 $43
	db   $e3                                         ; $6bb0: $e3
	pop  bc                                          ; $6bb1: $c1
	pop  hl                                          ; $6bb2: $e1
	jr   nz, jr_092_6b95                             ; $6bb3: $20 $e0

	add  b                                           ; $6bb5: $80
	ret  nz                                          ; $6bb6: $c0

	ret  nz                                          ; $6bb7: $c0

	ret  nz                                          ; $6bb8: $c0

	ldh  [$e0], a                                    ; $6bb9: $e0 $e0
	ret  nz                                          ; $6bbb: $c0

	ret  nz                                          ; $6bbc: $c0

	ld   b, b                                        ; $6bbd: $40
	ret  nz                                          ; $6bbe: $c0

	ld   b, b                                        ; $6bbf: $40
	ret  nz                                          ; $6bc0: $c0

	ret  nz                                          ; $6bc1: $c0

	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	inc  b                                           ; $6bc6: $04
	nop                                              ; $6bc7: $00
	ld   b, $08                                      ; $6bc8: $06 $08
	ld   c, $08                                      ; $6bca: $0e $08
	nop                                              ; $6bcc: $00
	ldh  a, [rP1]                                    ; $6bcd: $f0 $00

jr_092_6bcf:
	ldh  a, [rAUD4LEN]                               ; $6bcf: $f0 $20
	ld   sp, hl                                      ; $6bd1: $f9
	and  b                                           ; $6bd2: $a0

jr_092_6bd3:
	db   $fc                                         ; $6bd3: $fc
	sub  b                                           ; $6bd4: $90

jr_092_6bd5:
	cp   $d0                                         ; $6bd5: $fe $d0
	rst  $38                                         ; $6bd7: $ff
	jp   nc, $e9ff                                   ; $6bd8: $d2 $ff $e9

	ld   a, a                                        ; $6bdb: $7f
	db   $ed                                         ; $6bdc: $ed
	ccf                                              ; $6bdd: $3f
	or   $9f                                         ; $6bde: $f6 $9f
	rst  $38                                         ; $6be0: $ff
	cp   a                                           ; $6be1: $bf
	rst  $38                                         ; $6be2: $ff
	add  $3f                                         ; $6be3: $c6 $3f

jr_092_6be5:
	rrca                                             ; $6be5: $0f
	ld   [hl], e                                     ; $6be6: $73
	dec  de                                          ; $6be7: $1b
	ld   h, a                                        ; $6be8: $67
	daa                                              ; $6be9: $27
	rlca                                             ; $6bea: $07
	rlca                                             ; $6beb: $07
	sbc  d                                           ; $6bec: $9a
	rst  $38                                         ; $6bed: $ff
	jp   z, $ffff                                    ; $6bee: $ca $ff $ff

	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	ld   l, a                                        ; $6bf3: $6f
	rst  $38                                         ; $6bf4: $ff
	sbc  a                                           ; $6bf5: $9f
	rst  $38                                         ; $6bf6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bf7: $cf
	cp   e                                           ; $6bf8: $bb
	rst  $28                                         ; $6bf9: $ef
	cp   e                                           ; $6bfa: $bb
	adc  a                                           ; $6bfb: $8f
	cp   e                                           ; $6bfc: $bb
	adc  a                                           ; $6bfd: $8f
	ei                                               ; $6bfe: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bff: $cf
	ei                                               ; $6c00: $fb
	adc  a                                           ; $6c01: $8f
	dec  sp                                          ; $6c02: $3b
	rrca                                             ; $6c03: $0f
	add  hl, sp                                      ; $6c04: $39
	rrca                                             ; $6c05: $0f
	add  hl, sp                                      ; $6c06: $39
	rrca                                             ; $6c07: $0f
	add  hl, sp                                      ; $6c08: $39
	rrca                                             ; $6c09: $0f
	ld   l, c                                        ; $6c0a: $69
	dec  de                                          ; $6c0b: $1b
	rlca                                             ; $6c0c: $07
	ld   b, $07                                      ; $6c0d: $06 $07
	inc  b                                           ; $6c0f: $04
	rlca                                             ; $6c10: $07
	rrca                                             ; $6c11: $0f
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	ld   bc, $0300                                   ; $6c22: $01 $00 $03
	ld   bc, $060f                                   ; $6c25: $01 $0f $06
	ccf                                              ; $6c28: $3f
	jr   @+$01                                       ; $6c29: $18 $ff

	ld   h, b                                        ; $6c2b: $60
	ld   b, l                                        ; $6c2c: $45
	rst  $38                                         ; $6c2d: $ff
	ld   b, l                                        ; $6c2e: $45
	rst  $38                                         ; $6c2f: $ff
	cpl                                              ; $6c30: $2f
	rst  $38                                         ; $6c31: $ff
	and  a                                           ; $6c32: $a7
	db   $fc                                         ; $6c33: $fc
	rst  JumpTable                                         ; $6c34: $df
	ld   hl, sp-$01                                  ; $6c35: $f8 $ff
	pop  af                                          ; $6c37: $f1
	rst  $38                                         ; $6c38: $ff
	or   a                                           ; $6c39: $b7
	ld   sp, hl                                      ; $6c3a: $f9
	or   c                                           ; $6c3b: $b1
	rst  $20                                         ; $6c3c: $e7
	ld   b, e                                        ; $6c3d: $43
	and  $43                                         ; $6c3e: $e6 $43
	db   $e3                                         ; $6c40: $e3
	pop  bc                                          ; $6c41: $c1
	pop  hl                                          ; $6c42: $e1
	jr   nz, jr_092_6be5                             ; $6c43: $20 $a0

	nop                                              ; $6c45: $00
	ld   b, b                                        ; $6c46: $40
	add  b                                           ; $6c47: $80
	ret  nz                                          ; $6c48: $c0

	ret  nz                                          ; $6c49: $c0

	ret  nz                                          ; $6c4a: $c0

	ldh  [$e0], a                                    ; $6c4b: $e0 $e0
	ret  nz                                          ; $6c4d: $c0

	ret  nz                                          ; $6c4e: $c0

	ld   b, b                                        ; $6c4f: $40
	ret  nz                                          ; $6c50: $c0

	ret  nz                                          ; $6c51: $c0

	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	inc  b                                           ; $6c56: $04
	nop                                              ; $6c57: $00
	ld   b, $08                                      ; $6c58: $06 $08
	ld   c, $08                                      ; $6c5a: $0e $08
	db   $ed                                         ; $6c5c: $ed
	ccf                                              ; $6c5d: $3f
	or   $9f                                         ; $6c5e: $f6 $9f
	rst  $38                                         ; $6c60: $ff
	cp   a                                           ; $6c61: $bf
	rst  $38                                         ; $6c62: $ff
	add  $1f                                         ; $6c63: $c6 $1f
	ld   [bc], a                                     ; $6c65: $02
	ld   a, [de]                                     ; $6c66: $1a
	rlca                                             ; $6c67: $07
	cpl                                              ; $6c68: $2f
	rra                                              ; $6c69: $1f
	scf                                              ; $6c6a: $37
	daa                                              ; $6c6b: $27
	sbc  d                                           ; $6c6c: $9a
	rst  $38                                         ; $6c6d: $ff
	jp   z, $ffff                                    ; $6c6e: $ca $ff $ff

	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	ld   l, a                                        ; $6c73: $6f
	rst  $38                                         ; $6c74: $ff
	rra                                              ; $6c75: $1f
	rst  $38                                         ; $6c76: $ff
	rrca                                             ; $6c77: $0f
	cp   e                                           ; $6c78: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c79: $cf
	cp   e                                           ; $6c7a: $bb
	adc  a                                           ; $6c7b: $8f
	ld   b, l                                        ; $6c7c: $45
	rst  $38                                         ; $6c7d: $ff
	ld   b, l                                        ; $6c7e: $45
	rst  $38                                         ; $6c7f: $ff
	cpl                                              ; $6c80: $2f
	rst  $38                                         ; $6c81: $ff
	and  a                                           ; $6c82: $a7
	db   $fc                                         ; $6c83: $fc
	sbc  $f8                                         ; $6c84: $de $f8
	db   $fc                                         ; $6c86: $fc
	ldh  a, [$fc]                                    ; $6c87: $f0 $fc
	or   b                                           ; $6c89: $b0
	db   $fc                                         ; $6c8a: $fc
	or   b                                           ; $6c8b: $b0
	ld   a, [$ffb4]                                  ; $6c8c: $fa $b4 $ff
	or   a                                           ; $6c8f: $b7
	rst  $28                                         ; $6c90: $ef
	cp   e                                           ; $6c91: $bb
	ld   l, h                                        ; $6c92: $6c
	ld   a, b                                        ; $6c93: $78
	inc  l                                           ; $6c94: $2c
	jr   c, jr_092_6cc3                              ; $6c95: $38 $2c

	jr   c, jr_092_6cc5                              ; $6c97: $38 $2c

	jr   c, @+$26                                    ; $6c99: $38 $24

	inc  a                                           ; $6c9b: $3c
	rst  $20                                         ; $6c9c: $e7
	ld   b, e                                        ; $6c9d: $43
	and  $43                                         ; $6c9e: $e6 $43
	db   $e3                                         ; $6ca0: $e3
	pop  bc                                          ; $6ca1: $c1
	pop  hl                                          ; $6ca2: $e1
	jr   nz, jr_092_6d05                             ; $6ca3: $20 $60

	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	ret  nz                                          ; $6cae: $c0

	ldh  [$80], a                                    ; $6caf: $e0 $80
	ret  nz                                          ; $6cb1: $c0

	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	inc  b                                           ; $6cb6: $04
	nop                                              ; $6cb7: $00
	ld   b, $08                                      ; $6cb8: $06 $08
	ld   c, $08                                      ; $6cba: $0e $08
	db   $ed                                         ; $6cbc: $ed
	ccf                                              ; $6cbd: $3f
	or   $9f                                         ; $6cbe: $f6 $9f
	rst  $38                                         ; $6cc0: $ff
	cp   a                                           ; $6cc1: $bf
	rst  $38                                         ; $6cc2: $ff

jr_092_6cc3:
	add  $72                                         ; $6cc3: $c6 $72

jr_092_6cc5:
	ld   [bc], a                                     ; $6cc5: $02
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	sbc  d                                           ; $6ccc: $9a
	rst  $38                                         ; $6ccd: $ff
	jp   z, $ffff                                    ; $6cce: $ca $ff $ff

	rst  $38                                         ; $6cd1: $ff
	rst  $38                                         ; $6cd2: $ff
	ld   l, a                                        ; $6cd3: $6f
	rst  $38                                         ; $6cd4: $ff
	rra                                              ; $6cd5: $1f
	rst  $38                                         ; $6cd6: $ff
	rrca                                             ; $6cd7: $0f
	ld   a, e                                        ; $6cd8: $7b
	rrca                                             ; $6cd9: $0f
	ei                                               ; $6cda: $fb
	rrca                                             ; $6cdb: $0f
	cp   e                                           ; $6cdc: $bb
	ld   c, a                                        ; $6cdd: $4f
	ei                                               ; $6cde: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cdf: $cf
	ei                                               ; $6ce0: $fb
	adc  a                                           ; $6ce1: $8f
	dec  sp                                          ; $6ce2: $3b
	rrca                                             ; $6ce3: $0f
	add  hl, sp                                      ; $6ce4: $39
	rrca                                             ; $6ce5: $0f
	add  hl, sp                                      ; $6ce6: $39
	rrca                                             ; $6ce7: $0f
	add  hl, sp                                      ; $6ce8: $39
	rrca                                             ; $6ce9: $0f
	ld   l, c                                        ; $6cea: $69
	dec  de                                          ; $6ceb: $1b
	inc  bc                                          ; $6cec: $03
	nop                                              ; $6ced: $00
	rrca                                             ; $6cee: $0f
	rra                                              ; $6cef: $1f
	rlca                                             ; $6cf0: $07
	rrca                                             ; $6cf1: $0f
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	ld   e, h                                        ; $6cfe: $5c
	ld   c, b                                        ; $6cff: $48
	jr   jr_092_6d02                                 ; $6d00: $18 $00

jr_092_6d02:
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00

jr_092_6d05:
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	ld   hl, sp+$70                                  ; $6d1e: $f8 $70
	ld   e, b                                        ; $6d20: $58
	ld   c, b                                        ; $6d21: $48
	jr   nc, @+$32                                   ; $6d22: $30 $30

	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	ld   b, l                                        ; $6d2c: $45
	rst  $38                                         ; $6d2d: $ff
	ld   b, l                                        ; $6d2e: $45
	rst  $38                                         ; $6d2f: $ff
	cpl                                              ; $6d30: $2f
	rst  $38                                         ; $6d31: $ff
	and  a                                           ; $6d32: $a7
	db   $fc                                         ; $6d33: $fc
	sbc  $f8                                         ; $6d34: $de $f8
	db   $fc                                         ; $6d36: $fc
	ldh  a, [$fc]                                    ; $6d37: $f0 $fc
	or   b                                           ; $6d39: $b0
	rst  $38                                         ; $6d3a: $ff
	or   c                                           ; $6d3b: $b1
	rst  $38                                         ; $6d3c: $ff
	or   e                                           ; $6d3d: $b3
	cp   $b6                                         ; $6d3e: $fe $b6
	db   $ec                                         ; $6d40: $ec
	cp   b                                           ; $6d41: $b8
	ld   l, h                                        ; $6d42: $6c
	ld   a, b                                        ; $6d43: $78
	inc  l                                           ; $6d44: $2c
	jr   c, jr_092_6d73                              ; $6d45: $38 $2c

	jr   c, jr_092_6d75                              ; $6d47: $38 $2c

	jr   c, @+$26                                    ; $6d49: $38 $24

	inc  a                                           ; $6d4b: $3c
	rst  $20                                         ; $6d4c: $e7
	ld   b, e                                        ; $6d4d: $43
	and  $43                                         ; $6d4e: $e6 $43
	db   $e3                                         ; $6d50: $e3
	pop  bc                                          ; $6d51: $c1
	pop  hl                                          ; $6d52: $e1
	jr   nz, jr_092_6db5                             ; $6d53: $20 $60

	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	add  b                                           ; $6d5a: $80
	add  b                                           ; $6d5b: $80
	ret  nz                                          ; $6d5c: $c0

	ret  nz                                          ; $6d5d: $c0

	jr   nz, @+$22                                   ; $6d5e: $20 $20

	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	inc  b                                           ; $6d66: $04
	nop                                              ; $6d67: $00
	ld   b, $08                                      ; $6d68: $06 $08
	ld   c, $08                                      ; $6d6a: $0e $08
	db   $ed                                         ; $6d6c: $ed
	ccf                                              ; $6d6d: $3f
	or   $9f                                         ; $6d6e: $f6 $9f
	rst  $38                                         ; $6d70: $ff
	cp   a                                           ; $6d71: $bf
	rst  $38                                         ; $6d72: $ff

jr_092_6d73:
	add  $72                                         ; $6d73: $c6 $72

jr_092_6d75:
	ld   [bc], a                                     ; $6d75: $02
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	rlca                                             ; $6d7a: $07
	rlca                                             ; $6d7b: $07
	sbc  d                                           ; $6d7c: $9a
	rst  $38                                         ; $6d7d: $ff
	jp   z, $ffff                                    ; $6d7e: $ca $ff $ff

	rst  $38                                         ; $6d81: $ff
	rst  $38                                         ; $6d82: $ff
	ld   l, a                                        ; $6d83: $6f
	ld   a, a                                        ; $6d84: $7f
	rra                                              ; $6d85: $1f
	ccf                                              ; $6d86: $3f
	rrca                                             ; $6d87: $0f
	dec  de                                          ; $6d88: $1b
	rrca                                             ; $6d89: $0f
	cp   e                                           ; $6d8a: $bb
	rrca                                             ; $6d8b: $0f
	ei                                               ; $6d8c: $fb
	adc  a                                           ; $6d8d: $8f
	ei                                               ; $6d8e: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d8f: $cf
	ld   a, e                                        ; $6d90: $7b
	rrca                                             ; $6d91: $0f
	dec  sp                                          ; $6d92: $3b
	rrca                                             ; $6d93: $0f
	add  hl, sp                                      ; $6d94: $39
	rrca                                             ; $6d95: $0f
	add  hl, sp                                      ; $6d96: $39
	rrca                                             ; $6d97: $0f
	add  hl, sp                                      ; $6d98: $39
	rrca                                             ; $6d99: $0f
	ld   l, c                                        ; $6d9a: $69
	dec  de                                          ; $6d9b: $1b
	rra                                              ; $6d9c: $1f
	rra                                              ; $6d9d: $1f
	jr   nz, jr_092_6dc0                             ; $6d9e: $20 $20

	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	ld   e, h                                        ; $6dae: $5c
	ld   c, b                                        ; $6daf: $48
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00

jr_092_6db5:
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	ld   a, h                                        ; $6dbe: $7c
	ld   c, b                                        ; $6dbf: $48

jr_092_6dc0:
	ld   b, h                                        ; $6dc0: $44
	inc  b                                           ; $6dc1: $04
	inc  h                                           ; $6dc2: $24
	nop                                              ; $6dc3: $00
	jr   jr_092_6dde                                 ; $6dc4: $18 $18

	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	rst  $20                                         ; $6dcc: $e7
	ld   b, e                                        ; $6dcd: $43
	and  $43                                         ; $6dce: $e6 $43
	db   $e3                                         ; $6dd0: $e3
	ld   b, c                                        ; $6dd1: $41
	pop  hl                                          ; $6dd2: $e1
	ret  nz                                          ; $6dd3: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $6dd4: $e0 $a0
	ldh  a, [$c0]                                    ; $6dd6: $f0 $c0
	ret  nc                                          ; $6dd8: $d0

	ldh  [$e0], a                                    ; $6dd9: $e0 $e0
	ret  nz                                          ; $6ddb: $c0

	db   $ed                                         ; $6ddc: $ed
	ccf                                              ; $6ddd: $3f

jr_092_6dde:
	or   $9f                                         ; $6dde: $f6 $9f
	rst  $38                                         ; $6de0: $ff
	adc  a                                           ; $6de1: $8f
	rst  $38                                         ; $6de2: $ff
	sub  [hl]                                        ; $6de3: $96
	ld   a, a                                        ; $6de4: $7f
	ld   l, a                                        ; $6de5: $6f
	ld   [hl], e                                     ; $6de6: $73
	dec  de                                          ; $6de7: $1b
	ld   h, a                                        ; $6de8: $67
	daa                                              ; $6de9: $27
	rlca                                             ; $6dea: $07
	rlca                                             ; $6deb: $07
	sbc  d                                           ; $6dec: $9a
	rst  $38                                         ; $6ded: $ff
	jp   z, $ffff                                    ; $6dee: $ca $ff $ff

	rst  $38                                         ; $6df1: $ff
	rst  $38                                         ; $6df2: $ff
	ld   c, a                                        ; $6df3: $4f
	rst  $38                                         ; $6df4: $ff
	adc  a                                           ; $6df5: $8f
	rst  $38                                         ; $6df6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6df7: $cf
	cp   e                                           ; $6df8: $bb
	rst  $28                                         ; $6df9: $ef
	cp   e                                           ; $6dfa: $bb
	adc  a                                           ; $6dfb: $8f
	ld   b, l                                        ; $6dfc: $45
	rst  $38                                         ; $6dfd: $ff
	ld   b, l                                        ; $6dfe: $45
	rst  $38                                         ; $6dff: $ff
	cpl                                              ; $6e00: $2f
	rst  $38                                         ; $6e01: $ff
	and  a                                           ; $6e02: $a7
	db   $fc                                         ; $6e03: $fc
	call c, $f8f8                                    ; $6e04: $dc $f8 $f8
	ldh  a, [rIE]                                    ; $6e07: $f0 $ff
	or   e                                           ; $6e09: $b3
	rst  $38                                         ; $6e0a: $ff
	or   a                                           ; $6e0b: $b7
	rst  $20                                         ; $6e0c: $e7
	ld   b, e                                        ; $6e0d: $43
	and  $43                                         ; $6e0e: $e6 $43
	db   $e3                                         ; $6e10: $e3
	ld   b, c                                        ; $6e11: $41
	pop  hl                                          ; $6e12: $e1
	ret  nz                                          ; $6e13: $c0

	ld   h, b                                        ; $6e14: $60
	jr   nz, jr_092_6e47                             ; $6e15: $20 $30

	nop                                              ; $6e17: $00
	sub  b                                           ; $6e18: $90
	add  b                                           ; $6e19: $80
	ldh  [$e0], a                                    ; $6e1a: $e0 $e0
	db   $ed                                         ; $6e1c: $ed
	ccf                                              ; $6e1d: $3f
	or   $9f                                         ; $6e1e: $f6 $9f
	rst  $38                                         ; $6e20: $ff
	adc  a                                           ; $6e21: $8f
	rst  $38                                         ; $6e22: $ff
	sub  [hl]                                        ; $6e23: $96
	ld   [hl], d                                     ; $6e24: $72
	ld   h, d                                        ; $6e25: $62
	ld   h, b                                        ; $6e26: $60
	nop                                              ; $6e27: $00
	ld   c, a                                        ; $6e28: $4f
	rlca                                             ; $6e29: $07
	rrca                                             ; $6e2a: $0f
	rra                                              ; $6e2b: $1f
	sbc  d                                           ; $6e2c: $9a
	rst  $38                                         ; $6e2d: $ff
	jp   z, $ffff                                    ; $6e2e: $ca $ff $ff

	rst  $38                                         ; $6e31: $ff
	rst  $38                                         ; $6e32: $ff
	ld   c, a                                        ; $6e33: $4f
	ld   a, a                                        ; $6e34: $7f
	rrca                                             ; $6e35: $0f
	ccf                                              ; $6e36: $3f
	rrca                                             ; $6e37: $0f
	cp   e                                           ; $6e38: $bb
	adc  a                                           ; $6e39: $8f
	cp   e                                           ; $6e3a: $bb
	rst  $28                                         ; $6e3b: $ef
	ld   b, l                                        ; $6e3c: $45
	rst  $38                                         ; $6e3d: $ff
	ld   b, l                                        ; $6e3e: $45
	rst  $38                                         ; $6e3f: $ff
	cpl                                              ; $6e40: $2f
	rst  $38                                         ; $6e41: $ff
	and  a                                           ; $6e42: $a7
	db   $fc                                         ; $6e43: $fc
	call c, $f8f8                                    ; $6e44: $dc $f8 $f8

jr_092_6e47:
	ldh  a, [$f8]                                    ; $6e47: $f0 $f8
	or   b                                           ; $6e49: $b0
	ld   hl, sp-$50                                  ; $6e4a: $f8 $b0
	rst  $20                                         ; $6e4c: $e7
	ld   b, e                                        ; $6e4d: $43
	and  $43                                         ; $6e4e: $e6 $43
	db   $e3                                         ; $6e50: $e3
	ld   b, c                                        ; $6e51: $41
	pop  hl                                          ; $6e52: $e1
	ret  nz                                          ; $6e53: $c0

	ld   h, b                                        ; $6e54: $60
	jr   nz, jr_092_6e87                             ; $6e55: $20 $30

	nop                                              ; $6e57: $00
	stop                                             ; $6e58: $10 $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	db   $ed                                         ; $6e5c: $ed
	ccf                                              ; $6e5d: $3f
	or   $9f                                         ; $6e5e: $f6 $9f
	rst  $38                                         ; $6e60: $ff
	adc  a                                           ; $6e61: $8f
	rst  $38                                         ; $6e62: $ff
	sub  [hl]                                        ; $6e63: $96
	ld   [hl], b                                     ; $6e64: $70
	ld   h, b                                        ; $6e65: $60
	ld   h, b                                        ; $6e66: $60
	nop                                              ; $6e67: $00
	ld   b, b                                        ; $6e68: $40
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	sbc  d                                           ; $6e6c: $9a
	rst  $38                                         ; $6e6d: $ff
	jp   z, $ffff                                    ; $6e6e: $ca $ff $ff

	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	ld   c, a                                        ; $6e73: $4f
	ld   a, a                                        ; $6e74: $7f
	rrca                                             ; $6e75: $0f
	ccf                                              ; $6e76: $3f
	rrca                                             ; $6e77: $0f
	dec  sp                                          ; $6e78: $3b
	rrca                                             ; $6e79: $0f
	ei                                               ; $6e7a: $fb
	rrca                                             ; $6e7b: $0f
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	db   $fc                                         ; $6e7e: $fc
	ld   c, b                                        ; $6e7f: $48
	inc  c                                           ; $6e80: $0c
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00

jr_092_6e87:
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	ld   hl, sp+$60                                  ; $6e8e: $f8 $60
	ret  c                                           ; $6e90: $d8

	ld   c, b                                        ; $6e91: $48
	ld   c, b                                        ; $6e92: $48
	ld   [$3038], sp                                 ; $6e93: $08 $38 $30
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	ld   b, l                                        ; $6e9c: $45
	rst  $38                                         ; $6e9d: $ff
	ld   b, l                                        ; $6e9e: $45
	rst  $38                                         ; $6e9f: $ff
	cpl                                              ; $6ea0: $2f
	rst  $38                                         ; $6ea1: $ff
	and  a                                           ; $6ea2: $a7
	db   $fc                                         ; $6ea3: $fc
	rst  JumpTable                                         ; $6ea4: $df
	ei                                               ; $6ea5: $fb
	cp   $f6                                         ; $6ea6: $fe $f6
	db   $fc                                         ; $6ea8: $fc
	or   h                                           ; $6ea9: $b4
	ld   hl, sp-$50                                  ; $6eaa: $f8 $b0
	ld   hl, sp-$50                                  ; $6eac: $f8 $b0
	ld   hl, sp-$50                                  ; $6eae: $f8 $b0
	db   $ec                                         ; $6eb0: $ec
	cp   h                                           ; $6eb1: $bc
	ld   l, a                                        ; $6eb2: $6f
	ld   a, e                                        ; $6eb3: $7b
	inc  l                                           ; $6eb4: $2c
	jr   c, jr_092_6ee3                              ; $6eb5: $38 $2c

	jr   c, jr_092_6ee5                              ; $6eb7: $38 $2c

	jr   c, @+$26                                    ; $6eb9: $38 $24

	inc  a                                           ; $6ebb: $3c
	rst  $20                                         ; $6ebc: $e7
	ld   b, e                                        ; $6ebd: $43
	and  $c3                                         ; $6ebe: $e6 $c3
	db   $e3                                         ; $6ec0: $e3
	ld   h, c                                        ; $6ec1: $61
	pop  hl                                          ; $6ec2: $e1
	nop                                              ; $6ec3: $00
	and  b                                           ; $6ec4: $a0
	ret  nz                                          ; $6ec5: $c0

	ld   b, b                                        ; $6ec6: $40
	ld   h, b                                        ; $6ec7: $60
	ldh  [$e0], a                                    ; $6ec8: $e0 $e0
	ld   b, b                                        ; $6eca: $40
	ld   b, b                                        ; $6ecb: $40
	ret  nz                                          ; $6ecc: $c0

	ret  nz                                          ; $6ecd: $c0

	ret  nz                                          ; $6ece: $c0

	ret  nz                                          ; $6ecf: $c0

	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	ret  nz                                          ; $6ed2: $c0

	add  b                                           ; $6ed3: $80
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	inc  b                                           ; $6ed6: $04
	nop                                              ; $6ed7: $00
	ld   b, $08                                      ; $6ed8: $06 $08
	ld   c, $08                                      ; $6eda: $0e $08
	db   $ed                                         ; $6edc: $ed
	ccf                                              ; $6edd: $3f
	or   $bf                                         ; $6ede: $f6 $bf
	rst  $38                                         ; $6ee0: $ff
	rst  JumpTable                                         ; $6ee1: $df
	rst  $38                                         ; $6ee2: $ff

jr_092_6ee3:
	add  [hl]                                        ; $6ee3: $86
	ccf                                              ; $6ee4: $3f

jr_092_6ee5:
	rra                                              ; $6ee5: $1f
	ld   [hl], c                                     ; $6ee6: $71
	jr   nc, jr_092_6f4f                             ; $6ee7: $30 $66

	ld   h, $02                                      ; $6ee9: $26 $02
	ld   [bc], a                                     ; $6eeb: $02
	sbc  d                                           ; $6eec: $9a
	rst  $38                                         ; $6eed: $ff
	jp   z, $ffff                                    ; $6eee: $ca $ff $ff

	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	ld   c, a                                        ; $6ef3: $4f
	rst  $38                                         ; $6ef4: $ff
	adc  a                                           ; $6ef5: $8f
	rst  $38                                         ; $6ef6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ef7: $cf
	ei                                               ; $6ef8: $fb
	ld   l, a                                        ; $6ef9: $6f
	ld   a, e                                        ; $6efa: $7b
	cpl                                              ; $6efb: $2f
	dec  sp                                          ; $6efc: $3b
	rrca                                             ; $6efd: $0f
	dec  sp                                          ; $6efe: $3b
	rrca                                             ; $6eff: $0f
	ld   a, e                                        ; $6f00: $7b
	ld   c, a                                        ; $6f01: $4f
	ei                                               ; $6f02: $fb
	adc  a                                           ; $6f03: $8f
	add  hl, sp                                      ; $6f04: $39
	rrca                                             ; $6f05: $0f
	add  hl, sp                                      ; $6f06: $39
	rrca                                             ; $6f07: $0f
	add  hl, sp                                      ; $6f08: $39
	rrca                                             ; $6f09: $0f
	ld   l, c                                        ; $6f0a: $69
	dec  de                                          ; $6f0b: $1b
	ld   b, $06                                      ; $6f0c: $06 $06
	ld   b, $06                                      ; $6f0e: $06 $06
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	rrca                                             ; $6f12: $0f
	rlca                                             ; $6f13: $07
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	ld   b, l                                        ; $6f1c: $45
	rst  $38                                         ; $6f1d: $ff
	ld   b, l                                        ; $6f1e: $45
	rst  $38                                         ; $6f1f: $ff
	cpl                                              ; $6f20: $2f
	rst  $38                                         ; $6f21: $ff
	and  a                                           ; $6f22: $a7
	db   $fc                                         ; $6f23: $fc
	call c, $f8f8                                    ; $6f24: $dc $f8 $f8
	ldh  a, [rIE]                                    ; $6f27: $f0 $ff
	or   e                                           ; $6f29: $b3
	cp   $b6                                         ; $6f2a: $fe $b6
	db   $fc                                         ; $6f2c: $fc
	or   h                                           ; $6f2d: $b4
	ld   hl, sp-$50                                  ; $6f2e: $f8 $b0
	db   $ec                                         ; $6f30: $ec
	cp   h                                           ; $6f31: $bc
	ld   l, a                                        ; $6f32: $6f
	ld   a, e                                        ; $6f33: $7b
	inc  l                                           ; $6f34: $2c
	jr   c, jr_092_6f63                              ; $6f35: $38 $2c

	jr   c, @+$2e                                    ; $6f37: $38 $2c

	jr   c, @+$26                                    ; $6f39: $38 $24

	inc  a                                           ; $6f3b: $3c
	rst  $20                                         ; $6f3c: $e7
	ld   b, e                                        ; $6f3d: $43
	and  $c3                                         ; $6f3e: $e6 $c3
	db   $e3                                         ; $6f40: $e3
	ld   h, c                                        ; $6f41: $61
	pop  hl                                          ; $6f42: $e1
	nop                                              ; $6f43: $00
	jr   nz, jr_092_6f46                             ; $6f44: $20 $00

jr_092_6f46:
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	ret  nz                                          ; $6f48: $c0

	ret  nz                                          ; $6f49: $c0

	ldh  [$e0], a                                    ; $6f4a: $e0 $e0
	ld   h, b                                        ; $6f4c: $60
	ld   b, b                                        ; $6f4d: $40
	ret  nz                                          ; $6f4e: $c0

jr_092_6f4f:
	ret  nz                                          ; $6f4f: $c0

	ret  nz                                          ; $6f50: $c0

	ret  nz                                          ; $6f51: $c0

	ret  nz                                          ; $6f52: $c0

	add  b                                           ; $6f53: $80
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	inc  b                                           ; $6f56: $04
	nop                                              ; $6f57: $00
	ld   b, $08                                      ; $6f58: $06 $08
	ld   c, $08                                      ; $6f5a: $0e $08
	db   $ed                                         ; $6f5c: $ed
	ccf                                              ; $6f5d: $3f
	or   $bf                                         ; $6f5e: $f6 $bf
	rst  $38                                         ; $6f60: $ff
	rst  JumpTable                                         ; $6f61: $df
	rst  $38                                         ; $6f62: $ff

jr_092_6f63:
	add  [hl]                                        ; $6f63: $86
	ld   c, $02                                      ; $6f64: $0e $02
	inc  b                                           ; $6f66: $04
	nop                                              ; $6f67: $00
	rra                                              ; $6f68: $1f
	rra                                              ; $6f69: $1f
	ld   [hl], $36                                   ; $6f6a: $36 $36
	sbc  d                                           ; $6f6c: $9a
	rst  $38                                         ; $6f6d: $ff
	jp   z, $ffff                                    ; $6f6e: $ca $ff $ff

	rst  $38                                         ; $6f71: $ff
	rst  $38                                         ; $6f72: $ff
	ld   c, a                                        ; $6f73: $4f
	rst  $38                                         ; $6f74: $ff
	rrca                                             ; $6f75: $0f
	ld   a, a                                        ; $6f76: $7f
	rrca                                             ; $6f77: $0f
	ei                                               ; $6f78: $fb
	adc  a                                           ; $6f79: $8f
	ei                                               ; $6f7a: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f7b: $cf
	ld   a, e                                        ; $6f7c: $7b
	ld   c, a                                        ; $6f7d: $4f
	dec  sp                                          ; $6f7e: $3b
	rrca                                             ; $6f7f: $0f
	ld   a, e                                        ; $6f80: $7b
	ld   c, a                                        ; $6f81: $4f
	ei                                               ; $6f82: $fb
	adc  a                                           ; $6f83: $8f
	add  hl, sp                                      ; $6f84: $39
	rrca                                             ; $6f85: $0f
	add  hl, sp                                      ; $6f86: $39
	rrca                                             ; $6f87: $0f
	add  hl, sp                                      ; $6f88: $39
	rrca                                             ; $6f89: $0f
	ld   l, c                                        ; $6f8a: $69
	dec  de                                          ; $6f8b: $1b
	ld   [hl-], a                                    ; $6f8c: $32
	ld   [hl+], a                                    ; $6f8d: $22
	ld   b, $06                                      ; $6f8e: $06 $06
	ld   b, $06                                      ; $6f90: $06 $06
	rrca                                             ; $6f92: $0f
	rlca                                             ; $6f93: $07
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	ld   hl, sp-$50                                  ; $6f9c: $f8 $b0
	cp   $b4                                         ; $6f9e: $fe $b4
	rst  $28                                         ; $6fa0: $ef
	cp   a                                           ; $6fa1: $bf
	ld   l, a                                        ; $6fa2: $6f
	ld   a, e                                        ; $6fa3: $7b
	inc  l                                           ; $6fa4: $2c
	jr   c, jr_092_6fd3                              ; $6fa5: $38 $2c

	jr   c, @+$2e                                    ; $6fa7: $38 $2c

	jr   c, @+$26                                    ; $6fa9: $38 $24

	inc  a                                           ; $6fab: $3c
	rst  $20                                         ; $6fac: $e7
	ld   b, e                                        ; $6fad: $43
	and  $c3                                         ; $6fae: $e6 $c3
	db   $e3                                         ; $6fb0: $e3
	ld   h, c                                        ; $6fb1: $61
	pop  hl                                          ; $6fb2: $e1
	nop                                              ; $6fb3: $00
	jr   nz, jr_092_6fb6                             ; $6fb4: $20 $00

jr_092_6fb6:
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	ldh  [$e0], a                                    ; $6fc0: $e0 $e0
	ret  nz                                          ; $6fc2: $c0

	add  b                                           ; $6fc3: $80
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	inc  b                                           ; $6fc6: $04
	nop                                              ; $6fc7: $00
	ld   b, $08                                      ; $6fc8: $06 $08
	ld   c, $08                                      ; $6fca: $0e $08
	db   $ed                                         ; $6fcc: $ed
	ccf                                              ; $6fcd: $3f
	or   $bf                                         ; $6fce: $f6 $bf
	rst  $38                                         ; $6fd0: $ff
	rst  JumpTable                                         ; $6fd1: $df
	rst  $38                                         ; $6fd2: $ff

jr_092_6fd3:
	add  [hl]                                        ; $6fd3: $86
	ld   c, $02                                      ; $6fd4: $0e $02
	inc  b                                           ; $6fd6: $04
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	sbc  d                                           ; $6fdc: $9a
	rst  $38                                         ; $6fdd: $ff
	jp   z, $ffff                                    ; $6fde: $ca $ff $ff

	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	ld   c, a                                        ; $6fe3: $4f
	rst  $38                                         ; $6fe4: $ff
	rrca                                             ; $6fe5: $0f
	ld   a, a                                        ; $6fe6: $7f
	rrca                                             ; $6fe7: $0f
	dec  sp                                          ; $6fe8: $3b
	rrca                                             ; $6fe9: $0f
	dec  sp                                          ; $6fea: $3b
	rrca                                             ; $6feb: $0f
	ld   a, e                                        ; $6fec: $7b
	rrca                                             ; $6fed: $0f
	cp   e                                           ; $6fee: $bb
	ld   c, a                                        ; $6fef: $4f
	ei                                               ; $6ff0: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ff1: $cf
	ei                                               ; $6ff2: $fb
	adc  a                                           ; $6ff3: $8f
	add  hl, sp                                      ; $6ff4: $39
	rrca                                             ; $6ff5: $0f
	add  hl, sp                                      ; $6ff6: $39
	rrca                                             ; $6ff7: $0f
	add  hl, sp                                      ; $6ff8: $39
	rrca                                             ; $6ff9: $0f
	ld   l, c                                        ; $6ffa: $69
	dec  de                                          ; $6ffb: $1b
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	rra                                              ; $7000: $1f
	rra                                              ; $7001: $1f
	rrca                                             ; $7002: $0f
	rlca                                             ; $7003: $07
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	ld   a, b                                        ; $700e: $78
	ld   d, b                                        ; $700f: $50
	ld   c, b                                        ; $7010: $48
	ld   c, b                                        ; $7011: $48
	ld   c, b                                        ; $7012: $48
	ld   [$3038], sp                                 ; $7013: $08 $38 $30
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	ld   b, l                                        ; $701c: $45
	rst  $38                                         ; $701d: $ff
	ld   b, l                                        ; $701e: $45
	rst  $38                                         ; $701f: $ff
	cpl                                              ; $7020: $2f
	rst  $38                                         ; $7021: $ff
	and  a                                           ; $7022: $a7
	rst  $38                                         ; $7023: $ff
	rst  JumpTable                                         ; $7024: $df
	db   $fc                                         ; $7025: $fc
	rst  $38                                         ; $7026: $ff
	di                                               ; $7027: $f3
	cp   $b6                                         ; $7028: $fe $b6
	db   $fd                                         ; $702a: $fd
	or   l                                           ; $702b: $b5
	rst  $20                                         ; $702c: $e7
	ld   b, e                                        ; $702d: $43
	and  $63                                         ; $702e: $e6 $63
	db   $e3                                         ; $7030: $e3
	pop  bc                                          ; $7031: $c1
	pop  hl                                          ; $7032: $e1
	nop                                              ; $7033: $00
	ldh  [rP1], a                                    ; $7034: $e0 $00
	add  b                                           ; $7036: $80
	ret  nz                                          ; $7037: $c0

	ret  nz                                          ; $7038: $c0

	ldh  [$c0], a                                    ; $7039: $e0 $c0
	ldh  [$ed], a                                    ; $703b: $e0 $ed
	ccf                                              ; $703d: $3f
	or   $df                                         ; $703e: $f6 $df
	rst  $38                                         ; $7040: $ff
	cp   a                                           ; $7041: $bf
	rst  $38                                         ; $7042: $ff
	add  a                                           ; $7043: $87
	ccf                                              ; $7044: $3f
	ld   [bc], a                                     ; $7045: $02
	ld   a, a                                        ; $7046: $7f
	rra                                              ; $7047: $1f
	ld   [hl], e                                     ; $7048: $73
	inc  sp                                          ; $7049: $33
	rlca                                             ; $704a: $07
	daa                                              ; $704b: $27
	sbc  d                                           ; $704c: $9a
	rst  $38                                         ; $704d: $ff
	jp   z, $ffff                                    ; $704e: $ca $ff $ff

	rst  $38                                         ; $7051: $ff
	rst  $38                                         ; $7052: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7053: $cf
	rst  $38                                         ; $7054: $ff
	ccf                                              ; $7055: $3f
	rst  $38                                         ; $7056: $ff
	adc  a                                           ; $7057: $8f
	cp   e                                           ; $7058: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7059: $cf
	ei                                               ; $705a: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705b: $cf
	rlca                                             ; $705c: $07
	ld   b, $07                                      ; $705d: $06 $07
	inc  b                                           ; $705f: $04
	rrca                                             ; $7060: $0f
	rrca                                             ; $7061: $0f
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	ld   b, l                                        ; $706c: $45
	rst  $38                                         ; $706d: $ff
	ld   b, l                                        ; $706e: $45
	rst  $38                                         ; $706f: $ff
	cpl                                              ; $7070: $2f
	rst  $38                                         ; $7071: $ff
	and  a                                           ; $7072: $a7
	rst  $38                                         ; $7073: $ff
	rst  JumpTable                                         ; $7074: $df
	db   $fc                                         ; $7075: $fc
	db   $fc                                         ; $7076: $fc
	ldh  a, [$fb]                                    ; $7077: $f0 $fb
	or   e                                           ; $7079: $b3
	rst  $38                                         ; $707a: $ff
	or   a                                           ; $707b: $b7
	rst  $20                                         ; $707c: $e7
	ld   b, e                                        ; $707d: $43
	and  $63                                         ; $707e: $e6 $63
	db   $e3                                         ; $7080: $e3
	pop  bc                                          ; $7081: $c1
	pop  bc                                          ; $7082: $c1
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	ret  nz                                          ; $7088: $c0

	ret  nz                                          ; $7089: $c0

	ret  nz                                          ; $708a: $c0

	ldh  [$c0], a                                    ; $708b: $e0 $c0
	ret  nz                                          ; $708d: $c0

	ret  nz                                          ; $708e: $c0

	ld   b, b                                        ; $708f: $40
	ret  nz                                          ; $7090: $c0

	ret  nz                                          ; $7091: $c0

	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	inc  b                                           ; $7096: $04
	nop                                              ; $7097: $00
	ld   b, $08                                      ; $7098: $06 $08
	ld   c, $08                                      ; $709a: $0e $08
	db   $ed                                         ; $709c: $ed
	ccf                                              ; $709d: $3f
	or   $df                                         ; $709e: $f6 $df
	rst  $38                                         ; $70a0: $ff
	cp   a                                           ; $70a1: $bf
	rst  $38                                         ; $70a2: $ff
	add  a                                           ; $70a3: $87
	rrca                                             ; $70a4: $0f
	ld   [bc], a                                     ; $70a5: $02
	inc  bc                                          ; $70a6: $03
	nop                                              ; $70a7: $00
	rra                                              ; $70a8: $1f
	rra                                              ; $70a9: $1f
	rra                                              ; $70aa: $1f
	ccf                                              ; $70ab: $3f
	sbc  d                                           ; $70ac: $9a
	rst  $38                                         ; $70ad: $ff
	jp   z, $ffff                                    ; $70ae: $ca $ff $ff

	rst  $38                                         ; $70b1: $ff
	rst  $38                                         ; $70b2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70b3: $cf
	rst  $38                                         ; $70b4: $ff
	ccf                                              ; $70b5: $3f
	rst  $38                                         ; $70b6: $ff
	rrca                                             ; $70b7: $0f
	ei                                               ; $70b8: $fb
	adc  a                                           ; $70b9: $8f
	ei                                               ; $70ba: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70bb: $cf
	rlca                                             ; $70bc: $07
	ld   h, $07                                      ; $70bd: $26 $07
	inc  b                                           ; $70bf: $04
	rrca                                             ; $70c0: $0f
	rrca                                             ; $70c1: $0f
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	ld   b, l                                        ; $70cc: $45
	rst  $38                                         ; $70cd: $ff
	ld   b, l                                        ; $70ce: $45
	rst  $38                                         ; $70cf: $ff
	cpl                                              ; $70d0: $2f
	rst  $38                                         ; $70d1: $ff
	and  a                                           ; $70d2: $a7
	rst  $38                                         ; $70d3: $ff
	rst  JumpTable                                         ; $70d4: $df
	db   $fc                                         ; $70d5: $fc
	db   $fc                                         ; $70d6: $fc
	ldh  a, [$f8]                                    ; $70d7: $f0 $f8
	or   b                                           ; $70d9: $b0
	ld   hl, sp-$50                                  ; $70da: $f8 $b0
	rst  $20                                         ; $70dc: $e7
	ld   b, e                                        ; $70dd: $43
	and  $63                                         ; $70de: $e6 $63
	db   $e3                                         ; $70e0: $e3
	pop  bc                                          ; $70e1: $c1
	pop  bc                                          ; $70e2: $c1
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	db   $ed                                         ; $70ec: $ed
	ccf                                              ; $70ed: $3f
	or   $df                                         ; $70ee: $f6 $df
	rst  $38                                         ; $70f0: $ff
	cp   a                                           ; $70f1: $bf
	rst  $38                                         ; $70f2: $ff
	add  a                                           ; $70f3: $87
	rrca                                             ; $70f4: $0f
	ld   [bc], a                                     ; $70f5: $02
	inc  bc                                          ; $70f6: $03
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	sbc  d                                           ; $70fc: $9a
	rst  $38                                         ; $70fd: $ff
	jp   z, $ffff                                    ; $70fe: $ca $ff $ff

	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7103: $cf
	rst  $38                                         ; $7104: $ff
	ccf                                              ; $7105: $3f
	rst  $38                                         ; $7106: $ff
	rrca                                             ; $7107: $0f
	ld   a, e                                        ; $7108: $7b
	rrca                                             ; $7109: $0f
	dec  sp                                          ; $710a: $3b
	rrca                                             ; $710b: $0f
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	ld   [hl], b                                     ; $710e: $70
	ld   h, b                                        ; $710f: $60
	jr   nc, jr_092_7112                             ; $7110: $30 $00

jr_092_7112:
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	ld   [hl], b                                     ; $711e: $70
	ld   [hl], b                                     ; $711f: $70
	ld   c, b                                        ; $7120: $48
	ld   c, b                                        ; $7121: $48
	jr   c, jr_092_7134                              ; $7122: $38 $10

	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	ld   sp, hl                                      ; $712c: $f9
	or   c                                           ; $712d: $b1
	db   $fd                                         ; $712e: $fd
	or   l                                           ; $712f: $b5
	rst  $28                                         ; $7130: $ef
	cp   e                                           ; $7131: $bb
	ld   l, h                                        ; $7132: $6c
	ld   a, b                                        ; $7133: $78

jr_092_7134:
	dec  l                                           ; $7134: $2d
	jr   c, jr_092_7165                              ; $7135: $38 $2e

	jr   c, jr_092_7165                              ; $7137: $38 $2c

	jr   c, jr_092_715f                              ; $7139: $38 $24

	inc  a                                           ; $713b: $3c
	ret  nz                                          ; $713c: $c0

	ld   b, b                                        ; $713d: $40
	ret  nz                                          ; $713e: $c0

	ld   b, b                                        ; $713f: $40
	ret  nz                                          ; $7140: $c0

	ret  nz                                          ; $7141: $c0

	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	ld   b, b                                        ; $7144: $40
	nop                                              ; $7145: $00
	add  h                                           ; $7146: $84
	nop                                              ; $7147: $00
	ld   b, $08                                      ; $7148: $06 $08
	ld   c, $08                                      ; $714a: $0e $08
	cp   e                                           ; $714c: $bb
	adc  a                                           ; $714d: $8f
	ei                                               ; $714e: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $714f: $cf
	ei                                               ; $7150: $fb
	adc  a                                           ; $7151: $8f
	dec  sp                                          ; $7152: $3b
	rrca                                             ; $7153: $0f
	ld   a, c                                        ; $7154: $79
	rrca                                             ; $7155: $0f
	cp   c                                           ; $7156: $b9
	rrca                                             ; $7157: $0f
	add  hl, sp                                      ; $7158: $39
	rrca                                             ; $7159: $0f
	ld   l, c                                        ; $715a: $69
	dec  de                                          ; $715b: $1b
	rlca                                             ; $715c: $07
	ld   b, $07                                      ; $715d: $06 $07

jr_092_715f:
	inc  b                                           ; $715f: $04
	rrca                                             ; $7160: $0f
	rrca                                             ; $7161: $0f
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	dec  d                                           ; $7164: $15

jr_092_7165:
	nop                                              ; $7165: $00
	ld   a, [bc]                                     ; $7166: $0a
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	rst  $20                                         ; $716c: $e7
	ld   b, e                                        ; $716d: $43
	and  $63                                         ; $716e: $e6 $63
	db   $e3                                         ; $7170: $e3
	pop  bc                                          ; $7171: $c1
	pop  hl                                          ; $7172: $e1
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	ret  nz                                          ; $7178: $c0

	ret  nz                                          ; $7179: $c0

	ret  nz                                          ; $717a: $c0

	ldh  [$c0], a                                    ; $717b: $e0 $c0
	ret  nz                                          ; $717d: $c0

	ret  nz                                          ; $717e: $c0

	ld   b, b                                        ; $717f: $40
	ret  nz                                          ; $7180: $c0

	ret  nz                                          ; $7181: $c0

	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	ld   b, b                                        ; $7184: $40
	nop                                              ; $7185: $00
	add  h                                           ; $7186: $84
	nop                                              ; $7187: $00
	ld   b, $08                                      ; $7188: $06 $08
	ld   c, $08                                      ; $718a: $0e $08
	rlca                                             ; $718c: $07
	ld   h, $07                                      ; $718d: $26 $07
	inc  b                                           ; $718f: $04
	rrca                                             ; $7190: $0f
	rrca                                             ; $7191: $0f
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	dec  d                                           ; $7194: $15
	nop                                              ; $7195: $00
	ld   a, [bc]                                     ; $7196: $0a
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	ld   a, [$ffb4]                                  ; $719c: $fa $b4 $ff
	or   a                                           ; $719f: $b7
	rst  $28                                         ; $71a0: $ef
	cp   e                                           ; $71a1: $bb
	ld   l, h                                        ; $71a2: $6c
	ld   a, b                                        ; $71a3: $78
	dec  l                                           ; $71a4: $2d
	jr   c, jr_092_71d5                              ; $71a5: $38 $2e

	jr   c, jr_092_71d5                              ; $71a7: $38 $2c

	jr   c, jr_092_71cf                              ; $71a9: $38 $24

	inc  a                                           ; $71ab: $3c
	rst  $20                                         ; $71ac: $e7
	ld   b, e                                        ; $71ad: $43
	and  $63                                         ; $71ae: $e6 $63
	db   $e3                                         ; $71b0: $e3
	pop  bc                                          ; $71b1: $c1
	pop  hl                                          ; $71b2: $e1
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	ret  nz                                          ; $71be: $c0

	ldh  [$80], a                                    ; $71bf: $e0 $80
	ret  nz                                          ; $71c1: $c0

	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	ld   b, b                                        ; $71c4: $40
	nop                                              ; $71c5: $00
	add  h                                           ; $71c6: $84
	nop                                              ; $71c7: $00
	ld   b, $08                                      ; $71c8: $06 $08
	ld   c, $08                                      ; $71ca: $0e $08
	cp   e                                           ; $71cc: $bb
	ld   c, a                                        ; $71cd: $4f
	ei                                               ; $71ce: $fb

jr_092_71cf:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71cf: $cf
	ei                                               ; $71d0: $fb
	adc  a                                           ; $71d1: $8f
	dec  sp                                          ; $71d2: $3b
	rrca                                             ; $71d3: $0f
	ld   a, c                                        ; $71d4: $79

jr_092_71d5:
	rrca                                             ; $71d5: $0f
	cp   c                                           ; $71d6: $b9
	rrca                                             ; $71d7: $0f
	add  hl, sp                                      ; $71d8: $39
	rrca                                             ; $71d9: $0f
	ld   l, c                                        ; $71da: $69
	dec  de                                          ; $71db: $1b
	inc  bc                                          ; $71dc: $03
	nop                                              ; $71dd: $00
	rrca                                             ; $71de: $0f
	rra                                              ; $71df: $1f
	rlca                                             ; $71e0: $07
	rrca                                             ; $71e1: $0f
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	dec  d                                           ; $71e4: $15
	nop                                              ; $71e5: $00
	ld   a, [bc]                                     ; $71e6: $0a
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	ld   a, b                                        ; $71ee: $78
	ld   c, b                                        ; $71ef: $48
	jr   z, jr_092_71fa                              ; $71f0: $28 $08

	jr   jr_092_7204                                 ; $71f2: $18 $10

	nop                                              ; $71f4: $00

jr_092_71f5:
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00

jr_092_71fa:
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	ld   b, l                                        ; $71fc: $45
	rst  $38                                         ; $71fd: $ff
	ld   b, l                                        ; $71fe: $45
	rst  $38                                         ; $71ff: $ff
	cpl                                              ; $7200: $2f
	cp   $a7                                         ; $7201: $fe $a7
	rst  $38                                         ; $7203: $ff

jr_092_7204:
	rst  JumpTable                                         ; $7204: $df
	ld   hl, sp-$01                                  ; $7205: $f8 $ff
	di                                               ; $7207: $f3
	rst  $38                                         ; $7208: $ff
	or   a                                           ; $7209: $b7
	db   $fd                                         ; $720a: $fd
	or   l                                           ; $720b: $b5
	rst  $20                                         ; $720c: $e7
	ld   b, e                                        ; $720d: $43
	and  $43                                         ; $720e: $e6 $43
	db   $e3                                         ; $7210: $e3
	pop  bc                                          ; $7211: $c1
	pop  hl                                          ; $7212: $e1
	jr   nz, jr_092_71f5                             ; $7213: $20 $e0

	nop                                              ; $7215: $00
	ret  nz                                          ; $7216: $c0

	add  b                                           ; $7217: $80
	ldh  [$c0], a                                    ; $7218: $e0 $c0
	and  b                                           ; $721a: $a0
	and  b                                           ; $721b: $a0
	db   $ed                                         ; $721c: $ed
	ccf                                              ; $721d: $3f
	or   $9f                                         ; $721e: $f6 $9f
	rst  $38                                         ; $7220: $ff
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	rst  JumpTable                                         ; $7223: $df
	ccf                                              ; $7224: $3f
	ld   b, $7f                                      ; $7225: $06 $7f
	rra                                              ; $7227: $1f
	ld   a, a                                        ; $7228: $7f
	scf                                              ; $7229: $37
	rlca                                             ; $722a: $07
	rlca                                             ; $722b: $07
	sbc  d                                           ; $722c: $9a
	rst  $38                                         ; $722d: $ff
	jp   z, $ffff                                    ; $722e: $ca $ff $ff

	rst  $38                                         ; $7231: $ff
	rst  $38                                         ; $7232: $ff
	rst  $28                                         ; $7233: $ef
	rst  $38                                         ; $7234: $ff
	rra                                              ; $7235: $1f
	rst  $38                                         ; $7236: $ff
	adc  a                                           ; $7237: $8f
	cp   e                                           ; $7238: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7239: $cf
	ld   a, e                                        ; $723a: $7b
	ld   l, a                                        ; $723b: $6f
	rlca                                             ; $723c: $07
	dec  b                                           ; $723d: $05
	rlca                                             ; $723e: $07
	inc  b                                           ; $723f: $04
	rlca                                             ; $7240: $07
	rrca                                             ; $7241: $0f
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	ld   b, l                                        ; $724c: $45
	rst  $38                                         ; $724d: $ff
	ld   b, l                                        ; $724e: $45
	rst  $38                                         ; $724f: $ff
	cpl                                              ; $7250: $2f
	cp   $a7                                         ; $7251: $fe $a7
	rst  $38                                         ; $7253: $ff
	sbc  $f8                                         ; $7254: $de $f8
	db   $fc                                         ; $7256: $fc
	ldh  a, [rIE]                                    ; $7257: $f0 $ff
	or   e                                           ; $7259: $b3
	rst  $38                                         ; $725a: $ff
	or   a                                           ; $725b: $b7
	rst  $20                                         ; $725c: $e7
	ld   b, e                                        ; $725d: $43
	and  $43                                         ; $725e: $e6 $43
	db   $e3                                         ; $7260: $e3
	pop  bc                                          ; $7261: $c1
	pop  hl                                          ; $7262: $e1
	jr   nz, jr_092_7265                             ; $7263: $20 $00

jr_092_7265:
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	ret  nz                                          ; $7268: $c0

	add  b                                           ; $7269: $80
	ldh  [$c0], a                                    ; $726a: $e0 $c0
	ldh  [$e0], a                                    ; $726c: $e0 $e0
	ret  nz                                          ; $726e: $c0

	ld   b, b                                        ; $726f: $40
	ret  nz                                          ; $7270: $c0

	ret  nz                                          ; $7271: $c0

	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	inc  b                                           ; $7276: $04
	nop                                              ; $7277: $00
	ld   b, $08                                      ; $7278: $06 $08
	ld   c, $08                                      ; $727a: $0e $08
	db   $ed                                         ; $727c: $ed
	ccf                                              ; $727d: $3f
	or   $9f                                         ; $727e: $f6 $9f
	rst  $38                                         ; $7280: $ff
	rst  $38                                         ; $7281: $ff
	rst  $38                                         ; $7282: $ff
	rst  JumpTable                                         ; $7283: $df
	rrca                                             ; $7284: $0f
	ld   b, $0f                                      ; $7285: $06 $0f
	ld   [bc], a                                     ; $7287: $02
	rra                                              ; $7288: $1f
	rrca                                             ; $7289: $0f
	ccf                                              ; $728a: $3f
	rra                                              ; $728b: $1f
	sbc  d                                           ; $728c: $9a
	rst  $38                                         ; $728d: $ff
	jp   z, $ffff                                    ; $728e: $ca $ff $ff

	rst  $38                                         ; $7291: $ff
	rst  $38                                         ; $7292: $ff
	rst  $28                                         ; $7293: $ef
	rst  $38                                         ; $7294: $ff
	rra                                              ; $7295: $1f
	rst  $38                                         ; $7296: $ff
	rrca                                             ; $7297: $0f
	ei                                               ; $7298: $fb
	adc  a                                           ; $7299: $8f
	ei                                               ; $729a: $fb
	rst  $28                                         ; $729b: $ef
	daa                                              ; $729c: $27
	dec  h                                           ; $729d: $25
	rlca                                             ; $729e: $07
	inc  b                                           ; $729f: $04
	rlca                                             ; $72a0: $07
	rrca                                             ; $72a1: $0f
	nop                                              ; $72a2: $00
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	ld   b, l                                        ; $72ac: $45
	rst  $38                                         ; $72ad: $ff
	ld   b, l                                        ; $72ae: $45
	rst  $38                                         ; $72af: $ff
	cpl                                              ; $72b0: $2f
	cp   $a7                                         ; $72b1: $fe $a7
	rst  $38                                         ; $72b3: $ff
	rst  JumpTable                                         ; $72b4: $df
	ld   hl, sp-$04                                  ; $72b5: $f8 $fc
	ldh  a, [$f8]                                    ; $72b7: $f0 $f8
	or   b                                           ; $72b9: $b0
	ld   hl, sp-$50                                  ; $72ba: $f8 $b0
	rst  $20                                         ; $72bc: $e7
	ld   b, e                                        ; $72bd: $43
	and  $43                                         ; $72be: $e6 $43
	db   $e3                                         ; $72c0: $e3
	pop  bc                                          ; $72c1: $c1
	pop  hl                                          ; $72c2: $e1
	jr   nz, jr_092_72c5                             ; $72c3: $20 $00

jr_092_72c5:
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	db   $ed                                         ; $72cc: $ed
	ccf                                              ; $72cd: $3f
	or   $9f                                         ; $72ce: $f6 $9f
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	rst  $38                                         ; $72d2: $ff
	rst  JumpTable                                         ; $72d3: $df
	rrca                                             ; $72d4: $0f
	ld   b, $07                                      ; $72d5: $06 $07
	ld   [bc], a                                     ; $72d7: $02
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	sbc  d                                           ; $72dc: $9a
	rst  $38                                         ; $72dd: $ff
	jp   z, $ffff                                    ; $72de: $ca $ff $ff

	rst  $38                                         ; $72e1: $ff
	rst  $38                                         ; $72e2: $ff
	rst  $28                                         ; $72e3: $ef
	rst  $38                                         ; $72e4: $ff
	rra                                              ; $72e5: $1f
	rst  $38                                         ; $72e6: $ff
	rrca                                             ; $72e7: $0f
	ld   a, e                                        ; $72e8: $7b
	rrca                                             ; $72e9: $0f
	dec  sp                                          ; $72ea: $3b
	rrca                                             ; $72eb: $0f
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	ld   e, h                                        ; $72ee: $5c
	ld   c, b                                        ; $72ef: $48
	inc  c                                           ; $72f0: $0c
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	ld   a, b                                        ; $72fe: $78
	ld   h, b                                        ; $72ff: $60
	ld   c, b                                        ; $7300: $48
	ld   [$3038], sp                                 ; $7301: $08 $38 $30
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	ld   b, l                                        ; $730c: $45
	rst  $38                                         ; $730d: $ff
	ld   b, l                                        ; $730e: $45
	rst  $38                                         ; $730f: $ff
	cpl                                              ; $7310: $2f
	rst  $38                                         ; $7311: $ff
	and  a                                           ; $7312: $a7
	rst  $38                                         ; $7313: $ff
	call c, $fff8                                    ; $7314: $dc $f8 $ff
	rst  $30                                         ; $7317: $f7
	ld   hl, sp-$50                                  ; $7318: $f8 $b0
	ld   hl, sp-$50                                  ; $731a: $f8 $b0
	ld   hl, sp-$50                                  ; $731c: $f8 $b0
	db   $fc                                         ; $731e: $fc
	or   h                                           ; $731f: $b4
	rst  $28                                         ; $7320: $ef
	cp   e                                           ; $7321: $bb
	ld   l, l                                        ; $7322: $6d
	ld   a, b                                        ; $7323: $78
	ld   l, $38                                      ; $7324: $2e $38
	inc  l                                           ; $7326: $2c
	jr   c, jr_092_7355                              ; $7327: $38 $2c

	jr   c, @+$26                                    ; $7329: $38 $24

	inc  a                                           ; $732b: $3c
	rst  $20                                         ; $732c: $e7
	ld   b, e                                        ; $732d: $43
	and  $43                                         ; $732e: $e6 $43
	db   $e3                                         ; $7330: $e3
	ld   b, c                                        ; $7331: $41
	pop  hl                                          ; $7332: $e1
	add  b                                           ; $7333: $80
	ld   h, b                                        ; $7334: $60
	ld   h, b                                        ; $7335: $60
	ret  nz                                          ; $7336: $c0

	ret  nz                                          ; $7337: $c0

	ret  nz                                          ; $7338: $c0

	ldh  [$c0], a                                    ; $7339: $e0 $c0
	add  b                                           ; $733b: $80
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	ld   b, b                                        ; $733e: $40
	ld   b, b                                        ; $733f: $40
	add  b                                           ; $7340: $80
	add  b                                           ; $7341: $80
	jr   nz, jr_092_7344                             ; $7342: $20 $00

jr_092_7344:
	ld   b, b                                        ; $7344: $40
	nop                                              ; $7345: $00
	inc  b                                           ; $7346: $04
	nop                                              ; $7347: $00
	ld   b, $08                                      ; $7348: $06 $08
	ld   c, $08                                      ; $734a: $0e $08
	db   $ed                                         ; $734c: $ed
	ccf                                              ; $734d: $3f
	or   $9f                                         ; $734e: $f6 $9f
	rst  $38                                         ; $7350: $ff
	adc  a                                           ; $7351: $8f
	rst  $38                                         ; $7352: $ff
	sbc  a                                           ; $7353: $9f
	ccf                                              ; $7354: $3f

jr_092_7355:
	ld   [hl+], a                                    ; $7355: $22
	rst  $30                                         ; $7356: $f7
	rst  JumpTable                                         ; $7357: $df
	ld   h, e                                        ; $7358: $63
	inc  hl                                          ; $7359: $23
	inc  bc                                          ; $735a: $03
	ld   [bc], a                                     ; $735b: $02
	sbc  d                                           ; $735c: $9a
	rst  $38                                         ; $735d: $ff
	jp   z, $ffff                                    ; $735e: $ca $ff $ff

	rst  $38                                         ; $7361: $ff
	rst  $38                                         ; $7362: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7363: $cf
	rst  $38                                         ; $7364: $ff
	cpl                                              ; $7365: $2f
	rst  $38                                         ; $7366: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7367: $cf
	dec  sp                                          ; $7368: $3b
	cpl                                              ; $7369: $2f
	dec  sp                                          ; $736a: $3b
	rrca                                             ; $736b: $0f
	dec  sp                                          ; $736c: $3b
	rrca                                             ; $736d: $0f
	ld   a, e                                        ; $736e: $7b
	ld   c, a                                        ; $736f: $4f
	ei                                               ; $7370: $fb
	adc  a                                           ; $7371: $8f
	dec  sp                                          ; $7372: $3b
	rrca                                             ; $7373: $0f
	add  hl, sp                                      ; $7374: $39
	rrca                                             ; $7375: $0f
	add  hl, sp                                      ; $7376: $39
	rrca                                             ; $7377: $0f
	add  hl, sp                                      ; $7378: $39
	rrca                                             ; $7379: $0f
	ld   l, c                                        ; $737a: $69
	dec  de                                          ; $737b: $1b
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	db   $10                                         ; $737e: $10
	db   $10                                         ; $737f: $10
	rrca                                             ; $7380: $0f
	rrca                                             ; $7381: $0f
	ld   [de], a                                     ; $7382: $12
	nop                                              ; $7383: $00
	inc  h                                           ; $7384: $24
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	ld   b, l                                        ; $738c: $45
	rst  $38                                         ; $738d: $ff
	ld   b, l                                        ; $738e: $45
	rst  $38                                         ; $738f: $ff
	cpl                                              ; $7390: $2f
	rst  $38                                         ; $7391: $ff
	and  a                                           ; $7392: $a7
	rst  $38                                         ; $7393: $ff
	call c, $f8f8                                    ; $7394: $dc $f8 $f8
	ldh  a, [$f8]                                    ; $7397: $f0 $f8
	or   b                                           ; $7399: $b0
	rst  $38                                         ; $739a: $ff
	or   a                                           ; $739b: $b7
	ld   sp, hl                                      ; $739c: $f9
	or   c                                           ; $739d: $b1
	db   $fc                                         ; $739e: $fc
	or   h                                           ; $739f: $b4
	rst  $28                                         ; $73a0: $ef
	cp   e                                           ; $73a1: $bb
	ld   l, l                                        ; $73a2: $6d
	ld   a, b                                        ; $73a3: $78
	ld   l, $38                                      ; $73a4: $2e $38
	inc  l                                           ; $73a6: $2c
	jr   c, jr_092_73d5                              ; $73a7: $38 $2c

	jr   c, @+$26                                    ; $73a9: $38 $24

	inc  a                                           ; $73ab: $3c
	rst  $20                                         ; $73ac: $e7
	ld   b, e                                        ; $73ad: $43
	and  $43                                         ; $73ae: $e6 $43
	db   $e3                                         ; $73b0: $e3
	ld   b, c                                        ; $73b1: $41
	pop  hl                                          ; $73b2: $e1
	add  b                                           ; $73b3: $80
	ld   h, b                                        ; $73b4: $60
	ld   h, b                                        ; $73b5: $60
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	ret  nz                                          ; $73ba: $c0

	ret  nz                                          ; $73bb: $c0

	add  b                                           ; $73bc: $80
	add  b                                           ; $73bd: $80
	ld   b, b                                        ; $73be: $40
	ld   b, b                                        ; $73bf: $40
	add  b                                           ; $73c0: $80
	add  b                                           ; $73c1: $80
	jr   nz, jr_092_73c4                             ; $73c2: $20 $00

jr_092_73c4:
	ld   b, b                                        ; $73c4: $40
	nop                                              ; $73c5: $00
	inc  b                                           ; $73c6: $04
	nop                                              ; $73c7: $00
	ld   b, $08                                      ; $73c8: $06 $08
	ld   c, $08                                      ; $73ca: $0e $08
	db   $ed                                         ; $73cc: $ed
	ccf                                              ; $73cd: $3f
	or   $9f                                         ; $73ce: $f6 $9f
	rst  $38                                         ; $73d0: $ff
	adc  a                                           ; $73d1: $8f
	rst  $38                                         ; $73d2: $ff
	sbc  a                                           ; $73d3: $9f
	ccf                                              ; $73d4: $3f

jr_092_73d5:
	ld   [hl+], a                                    ; $73d5: $22
	ldh  [$c0], a                                    ; $73d6: $e0 $c0
	ld   b, b                                        ; $73d8: $40
	nop                                              ; $73d9: $00
	ccf                                              ; $73da: $3f
	ccf                                              ; $73db: $3f
	sbc  d                                           ; $73dc: $9a
	rst  $38                                         ; $73dd: $ff
	jp   z, $ffff                                    ; $73de: $ca $ff $ff

	rst  $38                                         ; $73e1: $ff
	rst  $38                                         ; $73e2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73e3: $cf
	rst  $38                                         ; $73e4: $ff
	rrca                                             ; $73e5: $0f
	ld   a, a                                        ; $73e6: $7f
	rrca                                             ; $73e7: $0f
	dec  sp                                          ; $73e8: $3b
	rrca                                             ; $73e9: $0f
	ei                                               ; $73ea: $fb
	rst  $28                                         ; $73eb: $ef
	inc  bc                                          ; $73ec: $03
	inc  bc                                          ; $73ed: $03
	db   $10                                         ; $73ee: $10
	db   $10                                         ; $73ef: $10
	rrca                                             ; $73f0: $0f
	rrca                                             ; $73f1: $0f
	ld   [de], a                                     ; $73f2: $12
	nop                                              ; $73f3: $00
	inc  h                                           ; $73f4: $24
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	ld   b, l                                        ; $73fc: $45
	rst  $38                                         ; $73fd: $ff
	ld   b, l                                        ; $73fe: $45
	rst  $38                                         ; $73ff: $ff
	cpl                                              ; $7400: $2f
	rst  $38                                         ; $7401: $ff
	and  a                                           ; $7402: $a7
	rst  $38                                         ; $7403: $ff
	rst  JumpTable                                         ; $7404: $df
	ld   hl, sp-$04                                  ; $7405: $f8 $fc
	ldh  a, [$f8]                                    ; $7407: $f0 $f8
	or   b                                           ; $7409: $b0
	ld   hl, sp-$50                                  ; $740a: $f8 $b0
	ld   a, [$ffb4]                                  ; $740c: $fa $b4 $ff
	or   a                                           ; $740f: $b7
	rst  $28                                         ; $7410: $ef
	cp   e                                           ; $7411: $bb
	ld   l, l                                        ; $7412: $6d
	ld   a, b                                        ; $7413: $78
	ld   l, $38                                      ; $7414: $2e $38
	inc  l                                           ; $7416: $2c
	jr   c, jr_092_7445                              ; $7417: $38 $2c

	jr   c, @+$26                                    ; $7419: $38 $24

	inc  a                                           ; $741b: $3c
	rst  $20                                         ; $741c: $e7
	ld   b, e                                        ; $741d: $43
	and  $43                                         ; $741e: $e6 $43
	db   $e3                                         ; $7420: $e3
	ld   b, c                                        ; $7421: $41
	pop  hl                                          ; $7422: $e1
	add  b                                           ; $7423: $80
	ldh  [$60], a                                    ; $7424: $e0 $60
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	ret  nz                                          ; $742e: $c0

	ldh  [$80], a                                    ; $742f: $e0 $80
	ret  nz                                          ; $7431: $c0

	jr   nz, jr_092_7434                             ; $7432: $20 $00

jr_092_7434:
	ld   b, b                                        ; $7434: $40
	nop                                              ; $7435: $00
	inc  b                                           ; $7436: $04
	nop                                              ; $7437: $00
	ld   b, $08                                      ; $7438: $06 $08
	ld   c, $08                                      ; $743a: $0e $08
	db   $ed                                         ; $743c: $ed
	ccf                                              ; $743d: $3f
	or   $9f                                         ; $743e: $f6 $9f
	rst  $38                                         ; $7440: $ff
	adc  a                                           ; $7441: $8f
	rst  $38                                         ; $7442: $ff
	sbc  a                                           ; $7443: $9f
	ccf                                              ; $7444: $3f

jr_092_7445:
	ld   [hl+], a                                    ; $7445: $22
	ldh  [$c0], a                                    ; $7446: $e0 $c0
	ld   b, b                                        ; $7448: $40
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	sbc  d                                           ; $744c: $9a
	rst  $38                                         ; $744d: $ff
	jp   z, $ffff                                    ; $744e: $ca $ff $ff

	rst  $38                                         ; $7451: $ff
	rst  $38                                         ; $7452: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7453: $cf
	rst  $38                                         ; $7454: $ff
	rrca                                             ; $7455: $0f
	ld   a, a                                        ; $7456: $7f
	rrca                                             ; $7457: $0f
	dec  sp                                          ; $7458: $3b
	rrca                                             ; $7459: $0f
	dec  sp                                          ; $745a: $3b
	rrca                                             ; $745b: $0f
	inc  bc                                          ; $745c: $03
	nop                                              ; $745d: $00
	rrca                                             ; $745e: $0f
	rra                                              ; $745f: $1f
	rlca                                             ; $7460: $07
	rrca                                             ; $7461: $0f
	ld   [de], a                                     ; $7462: $12
	nop                                              ; $7463: $00
	inc  h                                           ; $7464: $24
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	ld   a, b                                        ; $746e: $78
	ld   h, b                                        ; $746f: $60
	ld   c, b                                        ; $7470: $48
	ld   c, b                                        ; $7471: $48
	ld   c, b                                        ; $7472: $48
	ld   [$3030], sp                                 ; $7473: $08 $30 $30
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	ld   b, l                                        ; $747c: $45
	rst  $38                                         ; $747d: $ff
	ld   b, l                                        ; $747e: $45
	rst  $38                                         ; $747f: $ff
	cpl                                              ; $7480: $2f
	rst  $38                                         ; $7481: $ff
	and  a                                           ; $7482: $a7
	db   $fd                                         ; $7483: $fd
	rst  JumpTable                                         ; $7484: $df
	ld   hl, sp-$01                                  ; $7485: $f8 $ff
	ldh  a, [$fe]                                    ; $7487: $f0 $fe
	or   b                                           ; $7489: $b0
	rst  $38                                         ; $748a: $ff
	or   e                                           ; $748b: $b3
	rst  $38                                         ; $748c: $ff
	or   a                                           ; $748d: $b7
	cp   $b0                                         ; $748e: $fe $b0
	db   $ec                                         ; $7490: $ec
	cp   b                                           ; $7491: $b8
	ld   l, h                                        ; $7492: $6c
	ld   a, b                                        ; $7493: $78
	inc  l                                           ; $7494: $2c
	jr   c, jr_092_74c3                              ; $7495: $38 $2c

	jr   c, jr_092_74c5                              ; $7497: $38 $2c

	jr   c, @+$26                                    ; $7499: $38 $24

	inc  a                                           ; $749b: $3c
	rst  $20                                         ; $749c: $e7
	ld   b, e                                        ; $749d: $43
	add  $43                                         ; $749e: $c6 $43
	db   $e3                                         ; $74a0: $e3
	ld   hl, $c0e1                                   ; $74a1: $21 $e1 $c0
	ret  nz                                          ; $74a4: $c0

	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	add  b                                           ; $74aa: $80
	add  b                                           ; $74ab: $80
	ldh  [$c0], a                                    ; $74ac: $e0 $c0
	ldh  [$60], a                                    ; $74ae: $e0 $60
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	inc  b                                           ; $74b6: $04
	nop                                              ; $74b7: $00
	ld   b, $08                                      ; $74b8: $06 $08
	ld   c, $08                                      ; $74ba: $0e $08
	db   $ed                                         ; $74bc: $ed
	ccf                                              ; $74bd: $3f
	or   $9f                                         ; $74be: $f6 $9f
	rst  $38                                         ; $74c0: $ff
	adc  a                                           ; $74c1: $8f
	rst  $38                                         ; $74c2: $ff

jr_092_74c3:
	and  $3f                                         ; $74c3: $e6 $3f

jr_092_74c5:
	rra                                              ; $74c5: $1f
	rrca                                             ; $74c6: $0f
	nop                                              ; $74c7: $00
	rra                                              ; $74c8: $1f
	rrca                                             ; $74c9: $0f
	inc  sp                                          ; $74ca: $33
	inc  de                                          ; $74cb: $13
	sbc  d                                           ; $74cc: $9a
	rst  $38                                         ; $74cd: $ff
	jp   z, $ffff                                    ; $74ce: $ca $ff $ff

	rst  $38                                         ; $74d1: $ff
	rst  $28                                         ; $74d2: $ef
	rst  $38                                         ; $74d3: $ff
	rst  $38                                         ; $74d4: $ff
	rra                                              ; $74d5: $1f
	rst  $38                                         ; $74d6: $ff
	rrca                                             ; $74d7: $0f
	ei                                               ; $74d8: $fb
	adc  a                                           ; $74d9: $8f
	ei                                               ; $74da: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74db: $cf
	cp   e                                           ; $74dc: $bb
	rst  $28                                         ; $74dd: $ef
	cp   e                                           ; $74de: $bb
	adc  a                                           ; $74df: $8f
	ei                                               ; $74e0: $fb
	ld   c, a                                        ; $74e1: $4f
	dec  sp                                          ; $74e2: $3b
	rrca                                             ; $74e3: $0f
	add  hl, sp                                      ; $74e4: $39
	rrca                                             ; $74e5: $0f
	add  hl, sp                                      ; $74e6: $39
	rrca                                             ; $74e7: $0f
	add  hl, sp                                      ; $74e8: $39
	rrca                                             ; $74e9: $0f
	ld   l, c                                        ; $74ea: $69
	dec  de                                          ; $74eb: $1b
	daa                                              ; $74ec: $27
	daa                                              ; $74ed: $27
	rlca                                             ; $74ee: $07
	ld   b, $0f                                      ; $74ef: $06 $0f
	rrca                                             ; $74f1: $0f
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	ld   bc, $0300                                   ; $7502: $01 $00 $03
	ld   bc, $060f                                   ; $7505: $01 $0f $06
	ccf                                              ; $7508: $3f
	jr   jr_092_758a                                 ; $7509: $18 $7f

	ld   h, b                                        ; $750b: $60
	ld   c, $1e                                      ; $750c: $0e $1e
	ld   h, e                                        ; $750e: $63
	pop  bc                                          ; $750f: $c1
	add  e                                           ; $7510: $83
	ld   b, c                                        ; $7511: $41
	ld   e, [hl]                                     ; $7512: $5e
	ld   a, $00                                      ; $7513: $3e $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	ld   [$a41c], sp                                 ; $751c: $08 $1c $a4
	jp   nz, $0000                                  ; $751f: $c2 $00 $00

	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	db   $fc                                         ; $752c: $fc
	ld   [bc], a                                     ; $752d: $02
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	add  b                                           ; $7530: $80
	rst  $38                                         ; $7531: $ff
	inc  b                                           ; $7532: $04
	adc  b                                           ; $7533: $88
	cp   a                                           ; $7534: $bf
	adc  b                                           ; $7535: $88
	sub  b                                           ; $7536: $90
	sbc  a                                           ; $7537: $9f
	add  b                                           ; $7538: $80
	sbc  [hl]                                        ; $7539: $9e
	add  b                                           ; $753a: $80
	sbc  l                                           ; $753b: $9d
	add  b                                           ; $753c: $80
	sbc  [hl]                                        ; $753d: $9e
	add  b                                           ; $753e: $80
	sbc  h                                           ; $753f: $9c
	add  [hl]                                        ; $7540: $86
	sbc  [hl]                                        ; $7541: $9e
	ld   bc, $9f90                                   ; $7542: $01 $90 $9f
	add  b                                           ; $7545: $80
	add  b                                           ; $7546: $80
	ld   [bc], a                                     ; $7547: $02
	ret  nz                                          ; $7548: $c0

	rst  $38                                         ; $7549: $ff
	add  b                                           ; $754a: $80
	add  d                                           ; $754b: $82
	rst  $38                                         ; $754c: $ff
	inc  b                                           ; $754d: $04
	nop                                              ; $754e: $00
	rst  $38                                         ; $754f: $ff
	nop                                              ; $7550: $00
	sbc  h                                           ; $7551: $9c
	ld   h, e                                        ; $7552: $63
	add  b                                           ; $7553: $80
	rst  $38                                         ; $7554: $ff
	add  b                                           ; $7555: $80
	ld   b, c                                        ; $7556: $41
	adc  b                                           ; $7557: $88
	ei                                               ; $7558: $fb
	add  b                                           ; $7559: $80
	rst  $30                                         ; $755a: $f7
	ld   bc, $ff00                                   ; $755b: $01 $00 $ff
	add  c                                           ; $755e: $81
	nop                                              ; $755f: $00
	ld   bc, $00ff                                   ; $7560: $01 $ff $00
	add  d                                           ; $7563: $82
	rst  $38                                         ; $7564: $ff
	inc  b                                           ; $7565: $04
	nop                                              ; $7566: $00
	rst  $38                                         ; $7567: $ff
	nop                                              ; $7568: $00
	add  hl, sp                                      ; $7569: $39
	add  $80                                         ; $756a: $c6 $80
	xor  $80                                         ; $756c: $ee $80
	add  b                                           ; $756e: $80
	add  h                                           ; $756f: $84
	add  $80                                         ; $7570: $c6 $80
	xor  $80                                         ; $7572: $ee $80
	push bc                                          ; $7574: $c5
	add  b                                           ; $7575: $80
	add  e                                           ; $7576: $83
	ld   bc, $ff00                                   ; $7577: $01 $00 $ff
	add  c                                           ; $757a: $81
	nop                                              ; $757b: $00
	ld   bc, $00ff                                   ; $757c: $01 $ff $00
	add  d                                           ; $757f: $82
	rst  $38                                         ; $7580: $ff
	inc  bc                                          ; $7581: $03
	ld   de, $13ff                                   ; $7582: $11 $ff $13
	dec  bc                                          ; $7585: $0b
	add  c                                           ; $7586: $81
	ei                                               ; $7587: $fb
	add  b                                           ; $7588: $80
	dec  sp                                          ; $7589: $3b

jr_092_758a:
	adc  b                                           ; $758a: $88
	cp   e                                           ; $758b: $bb
	add  b                                           ; $758c: $80
	ld   a, e                                        ; $758d: $7b
	ld   bc, $fb0b                                   ; $758e: $01 $0b $fb
	add  c                                           ; $7591: $81
	inc  bc                                          ; $7592: $03
	ld   bc, $01ff                                   ; $7593: $01 $ff $01
	add  d                                           ; $7596: $82
	rst  $38                                         ; $7597: $ff
	inc  bc                                          ; $7598: $03
	adc  b                                           ; $7599: $88
	cp   a                                           ; $759a: $bf
	adc  b                                           ; $759b: $88
	sub  b                                           ; $759c: $90
	add  e                                           ; $759d: $83
	sbc  a                                           ; $759e: $9f
	add  b                                           ; $759f: $80
	sbc  [hl]                                        ; $75a0: $9e
	add  b                                           ; $75a1: $80
	sbc  h                                           ; $75a2: $9c
	add  [hl]                                        ; $75a3: $86
	sbc  [hl]                                        ; $75a4: $9e
	ld   bc, $9f90                                   ; $75a5: $01 $90 $9f
	add  b                                           ; $75a8: $80
	add  b                                           ; $75a9: $80
	ld   [bc], a                                     ; $75aa: $02
	ret  nz                                          ; $75ab: $c0

	rst  $38                                         ; $75ac: $ff
	add  b                                           ; $75ad: $80
	add  d                                           ; $75ae: $82
	rst  $38                                         ; $75af: $ff
	inc  bc                                          ; $75b0: $03
	nop                                              ; $75b1: $00
	rst  $38                                         ; $75b2: $ff
	nop                                              ; $75b3: $00
	adc  b                                           ; $75b4: $88
	add  c                                           ; $75b5: $81
	ld   [hl], a                                     ; $75b6: $77
	add  b                                           ; $75b7: $80
	ld   b, c                                        ; $75b8: $41
	add  b                                           ; $75b9: $80
	rst  $30                                         ; $75ba: $f7
	add  d                                           ; $75bb: $82
	db   $e3                                         ; $75bc: $e3
	add  d                                           ; $75bd: $82
	push de                                          ; $75be: $d5
	add  b                                           ; $75bf: $80
	rst  $30                                         ; $75c0: $f7
	ld   bc, $ff00                                   ; $75c1: $01 $00 $ff
	add  c                                           ; $75c4: $81
	nop                                              ; $75c5: $00
	ld   bc, $00ff                                   ; $75c6: $01 $ff $00
	add  d                                           ; $75c9: $82
	rst  $38                                         ; $75ca: $ff
	inc  b                                           ; $75cb: $04
	nop                                              ; $75cc: $00
	rst  $38                                         ; $75cd: $ff
	nop                                              ; $75ce: $00
	inc  b                                           ; $75cf: $04
	ei                                               ; $75d0: $fb
	add  b                                           ; $75d1: $80
	ldh  [$80], a                                    ; $75d2: $e0 $80
	xor  $80                                         ; $75d4: $ee $80
	ldh  [$80], a                                    ; $75d6: $e0 $80
	xor  $80                                         ; $75d8: $ee $80
	ldh  [$80], a                                    ; $75da: $e0 $80
	xor  e                                           ; $75dc: $ab
	add  b                                           ; $75dd: $80
	xor  l                                           ; $75de: $ad
	add  b                                           ; $75df: $80
	or   b                                           ; $75e0: $b0
	ld   bc, $ff00                                   ; $75e1: $01 $00 $ff
	add  c                                           ; $75e4: $81
	nop                                              ; $75e5: $00
	ld   bc, $00ff                                   ; $75e6: $01 $ff $00
	add  d                                           ; $75e9: $82
	rst  $38                                         ; $75ea: $ff
	inc  bc                                          ; $75eb: $03
	ld   de, $13ff                                   ; $75ec: $11 $ff $13
	dec  bc                                          ; $75ef: $0b
	adc  c                                           ; $75f0: $89
	ei                                               ; $75f1: $fb
	add  b                                           ; $75f2: $80
	ld   a, e                                        ; $75f3: $7b
	add  b                                           ; $75f4: $80
	cp   e                                           ; $75f5: $bb
	add  b                                           ; $75f6: $80
	ld   a, e                                        ; $75f7: $7b
	ld   bc, $fb0b                                   ; $75f8: $01 $0b $fb
	add  c                                           ; $75fb: $81
	inc  bc                                          ; $75fc: $03
	ld   bc, $01ff                                   ; $75fd: $01 $ff $01
	add  c                                           ; $7600: $81
	rst  $38                                         ; $7601: $ff
	add  b                                           ; $7602: $80
	adc  b                                           ; $7603: $88
	inc  b                                           ; $7604: $04
	adc  a                                           ; $7605: $8f
	cp   b                                           ; $7606: $b8
	add  a                                           ; $7607: $87
	cp   a                                           ; $7608: $bf
	xor  a                                           ; $7609: $af
	add  b                                           ; $760a: $80
	cp   a                                           ; $760b: $bf
	add  b                                           ; $760c: $80
	and  c                                           ; $760d: $a1
	add  d                                           ; $760e: $82
	cp   l                                           ; $760f: $bd
	add  d                                           ; $7610: $82
	cp   e                                           ; $7611: $bb
	add  b                                           ; $7612: $80
	or   l                                           ; $7613: $b5
	add  b                                           ; $7614: $80
	xor  [hl]                                        ; $7615: $ae
	dec  b                                           ; $7616: $05
	cp   a                                           ; $7617: $bf
	and  b                                           ; $7618: $a0
	cp   a                                           ; $7619: $bf
	add  b                                           ; $761a: $80
	cp   a                                           ; $761b: $bf
	ret  nz                                          ; $761c: $c0

	add  c                                           ; $761d: $81
	rst  $38                                         ; $761e: $ff
	add  b                                           ; $761f: $80
	nop                                              ; $7620: $00
	ld   bc, $00ff                                   ; $7621: $01 $ff $00
	add  c                                           ; $7624: $81
	rst  $38                                         ; $7625: $ff
	add  b                                           ; $7626: $80
	ld   a, a                                        ; $7627: $7f
	add  b                                           ; $7628: $80
	ld   a, c                                        ; $7629: $79
	add  b                                           ; $762a: $80
	rrca                                             ; $762b: $0f
	add  b                                           ; $762c: $80
	ld   e, c                                        ; $762d: $59
	add  d                                           ; $762e: $82
	rst  JumpTable                                         ; $762f: $df
	add  b                                           ; $7630: $80
	sbc  $80                                         ; $7631: $de $80
	cp   c                                           ; $7633: $b9
	dec  b                                           ; $7634: $05
	rst  $38                                         ; $7635: $ff
	nop                                              ; $7636: $00
	rst  $38                                         ; $7637: $ff
	nop                                              ; $7638: $00
	rst  $38                                         ; $7639: $ff
	nop                                              ; $763a: $00
	add  c                                           ; $763b: $81
	rst  $38                                         ; $763c: $ff
	add  b                                           ; $763d: $80
	nop                                              ; $763e: $00
	ld   [bc], a                                     ; $763f: $02

jr_092_7640:
	rst  $38                                         ; $7640: $ff
	nop                                              ; $7641: $00
	rst  $38                                         ; $7642: $ff
	add  b                                           ; $7643: $80
	ld   e, a                                        ; $7644: $5f
	add  b                                           ; $7645: $80
	xor  a                                           ; $7646: $af
	add  d                                           ; $7647: $82
	ld   a, a                                        ; $7648: $7f
	add  b                                           ; $7649: $80
	ld   [hl], c                                     ; $764a: $71
	add  b                                           ; $764b: $80
	ld   a, a                                        ; $764c: $7f
	add  b                                           ; $764d: $80
	ld   c, a                                        ; $764e: $4f
	add  b                                           ; $764f: $80
	rst  $28                                         ; $7650: $ef
	add  b                                           ; $7651: $80
	add  [hl]                                        ; $7652: $86
	dec  b                                           ; $7653: $05
	rst  $38                                         ; $7654: $ff
	nop                                              ; $7655: $00
	rst  $38                                         ; $7656: $ff
	nop                                              ; $7657: $00
	rst  $38                                         ; $7658: $ff
	nop                                              ; $7659: $00
	add  c                                           ; $765a: $81
	rst  $38                                         ; $765b: $ff
	add  b                                           ; $765c: $80
	ld   de, $f102                                   ; $765d: $11 $02 $f1
	rra                                              ; $7660: $1f
	db   $eb                                         ; $7661: $eb
	add  d                                           ; $7662: $82
	rst  $38                                         ; $7663: $ff
	add  [hl]                                        ; $7664: $86
	ld   e, a                                        ; $7665: $5f
	add  d                                           ; $7666: $82
	ld   d, a                                        ; $7667: $57
	add  b                                           ; $7668: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7669: $cf
	dec  b                                           ; $766a: $05
	rst  $38                                         ; $766b: $ff
	rlca                                             ; $766c: $07
	rst  $38                                         ; $766d: $ff
	inc  bc                                          ; $766e: $03
	rst  $38                                         ; $766f: $ff
	ld   bc, $ff82                                   ; $7670: $01 $82 $ff
	inc  bc                                          ; $7673: $03
	adc  b                                           ; $7674: $88
	cp   a                                           ; $7675: $bf
	adc  b                                           ; $7676: $88
	sub  h                                           ; $7677: $94
	add  c                                           ; $7678: $81
	sbc  e                                           ; $7679: $9b
	add  b                                           ; $767a: $80
	sub  c                                           ; $767b: $91
	add  b                                           ; $767c: $80
	sbc  d                                           ; $767d: $9a
	add  b                                           ; $767e: $80
	sub  c                                           ; $767f: $91
	add  b                                           ; $7680: $80
	sbc  d                                           ; $7681: $9a
	add  h                                           ; $7682: $84
	sbc  e                                           ; $7683: $9b
	ld   bc, $9f90                                   ; $7684: $01 $90 $9f
	add  b                                           ; $7687: $80
	add  b                                           ; $7688: $80
	ld   [bc], a                                     ; $7689: $02
	ret  nz                                          ; $768a: $c0

	rst  $38                                         ; $768b: $ff
	add  b                                           ; $768c: $80
	add  d                                           ; $768d: $82
	rst  $38                                         ; $768e: $ff
	inc  b                                           ; $768f: $04
	nop                                              ; $7690: $00
	rst  $38                                         ; $7691: $ff
	nop                                              ; $7692: $00
	ld   b, b                                        ; $7693: $40
	cp   a                                           ; $7694: $bf
	add  b                                           ; $7695: $80
	rra                                              ; $7696: $1f
	add  b                                           ; $7697: $80
	cp   b                                           ; $7698: $b8
	add  b                                           ; $7699: $80
	ld   c, $80                                      ; $769a: $0e $80
	db   $dd                                         ; $769c: $dd
	add  b                                           ; $769d: $80
	inc  c                                           ; $769e: $0c
	add  b                                           ; $769f: $80
	ld   e, e                                        ; $76a0: $5b
	add  b                                           ; $76a1: $80
	ld   e, a                                        ; $76a2: $5f
	add  b                                           ; $76a3: $80
	cp   [hl]                                        ; $76a4: $be
	ld   bc, $ff00                                   ; $76a5: $01 $00 $ff
	add  c                                           ; $76a8: $81
	nop                                              ; $76a9: $00
	ld   bc, $00ff                                   ; $76aa: $01 $ff $00
	add  d                                           ; $76ad: $82
	rst  $38                                         ; $76ae: $ff
	inc  b                                           ; $76af: $04
	nop                                              ; $76b0: $00
	rst  $38                                         ; $76b1: $ff
	nop                                              ; $76b2: $00
	dec  b                                           ; $76b3: $05
	ld   a, [$7280]                                  ; $76b4: $fa $80 $72
	add  b                                           ; $76b7: $80
	db   $10                                         ; $76b8: $10
	add  b                                           ; $76b9: $80
	di                                               ; $76ba: $f3
	add  b                                           ; $76bb: $80
	ei                                               ; $76bc: $fb
	add  b                                           ; $76bd: $80
	jr   c, jr_092_7640                              ; $76be: $38 $80

	jp   nc, $db80                                   ; $76c0: $d2 $80 $db

	add  b                                           ; $76c3: $80
	dec  sp                                          ; $76c4: $3b
	ld   bc, $ff00                                   ; $76c5: $01 $00 $ff
	add  c                                           ; $76c8: $81
	nop                                              ; $76c9: $00
	ld   bc, $00ff                                   ; $76ca: $01 $ff $00
	add  d                                           ; $76cd: $82
	rst  $38                                         ; $76ce: $ff
	inc  bc                                          ; $76cf: $03
	ld   de, $13ff                                   ; $76d0: $11 $ff $13
	dec  bc                                          ; $76d3: $0b
	add  c                                           ; $76d4: $81
	ei                                               ; $76d5: $fb

jr_092_76d6:
	add  b                                           ; $76d6: $80
	dec  bc                                          ; $76d7: $0b
	add  d                                           ; $76d8: $82
	ld   c, e                                        ; $76d9: $4b
	add  d                                           ; $76da: $82
	xor  e                                           ; $76db: $ab
	add  b                                           ; $76dc: $80
	ld   l, e                                        ; $76dd: $6b
	add  b                                           ; $76de: $80
	dec  de                                          ; $76df: $1b
	ld   bc, $fb0b                                   ; $76e0: $01 $0b $fb
	add  c                                           ; $76e3: $81
	inc  bc                                          ; $76e4: $03
	ld   bc, $01ff                                   ; $76e5: $01 $ff $01
	add  d                                           ; $76e8: $82
	rst  $38                                         ; $76e9: $ff
	inc  b                                           ; $76ea: $04
	adc  b                                           ; $76eb: $88
	cp   a                                           ; $76ec: $bf
	adc  b                                           ; $76ed: $88
	sub  c                                           ; $76ee: $91
	sbc  [hl]                                        ; $76ef: $9e
	add  b                                           ; $76f0: $80
	sbc  h                                           ; $76f1: $9c
	add  b                                           ; $76f2: $80
	sbc  a                                           ; $76f3: $9f
	add  d                                           ; $76f4: $82
	sbc  h                                           ; $76f5: $9c
	add  b                                           ; $76f6: $80
	sbc  a                                           ; $76f7: $9f
	add  b                                           ; $76f8: $80
	sbc  h                                           ; $76f9: $9c
	add  b                                           ; $76fa: $80
	sbc  l                                           ; $76fb: $9d
	add  b                                           ; $76fc: $80
	sbc  h                                           ; $76fd: $9c
	ld   bc, $9f90                                   ; $76fe: $01 $90 $9f
	add  b                                           ; $7701: $80
	add  b                                           ; $7702: $80
	ld   [bc], a                                     ; $7703: $02
	ret  nz                                          ; $7704: $c0

	rst  $38                                         ; $7705: $ff
	add  b                                           ; $7706: $80
	add  d                                           ; $7707: $82
	rst  $38                                         ; $7708: $ff
	inc  b                                           ; $7709: $04
	nop                                              ; $770a: $00
	rst  $38                                         ; $770b: $ff
	nop                                              ; $770c: $00
	jr   c, jr_092_76d6                              ; $770d: $38 $c7

	add  b                                           ; $770f: $80
	ld   e, e                                        ; $7710: $5b
	add  b                                           ; $7711: $80
	db   $db                                         ; $7712: $db
	add  b                                           ; $7713: $80
	dec  a                                           ; $7714: $3d
	add  b                                           ; $7715: $80
	ld   b, e                                        ; $7716: $43
	add  b                                           ; $7717: $80
	db   $db                                         ; $7718: $db
	add  d                                           ; $7719: $82
	ld   h, a                                        ; $771a: $67
	add  b                                           ; $771b: $80
	ld   e, e                                        ; $771c: $5b
	ld   bc, $ff00                                   ; $771d: $01 $00 $ff
	add  c                                           ; $7720: $81
	nop                                              ; $7721: $00
	ld   bc, $00ff                                   ; $7722: $01 $ff $00
	add  d                                           ; $7725: $82
	rst  $38                                         ; $7726: $ff
	inc  b                                           ; $7727: $04
	nop                                              ; $7728: $00
	rst  $38                                         ; $7729: $ff
	nop                                              ; $772a: $00
	inc  b                                           ; $772b: $04
	ei                                               ; $772c: $fb
	add  b                                           ; $772d: $80
	add  b                                           ; $772e: $80
	add  b                                           ; $772f: $80
	cp   a                                           ; $7730: $bf
	add  b                                           ; $7731: $80
	ret  nz                                          ; $7732: $c0

	add  b                                           ; $7733: $80
	ei                                               ; $7734: $fb
	add  b                                           ; $7735: $80
	ld   hl, sp-$80                                  ; $7736: $f8 $80
	db   $db                                         ; $7738: $db
	add  b                                           ; $7739: $80
	jp   $b880                                       ; $773a: $c3 $80 $b8


	ld   bc, $ff00                                   ; $773d: $01 $00 $ff
	add  c                                           ; $7740: $81
	nop                                              ; $7741: $00
	ld   bc, $00ff                                   ; $7742: $01 $ff $00
	add  d                                           ; $7745: $82
	rst  $38                                         ; $7746: $ff
	inc  b                                           ; $7747: $04
	ld   de, $13ff                                   ; $7748: $11 $ff $13
	dec  bc                                          ; $774b: $0b
	ei                                               ; $774c: $fb
	add  b                                           ; $774d: $80
	dec  sp                                          ; $774e: $3b
	add  b                                           ; $774f: $80
	cp   e                                           ; $7750: $bb
	add  b                                           ; $7751: $80
	ld   a, e                                        ; $7752: $7b
	add  [hl]                                        ; $7753: $86
	ei                                               ; $7754: $fb
	add  b                                           ; $7755: $80
	dec  sp                                          ; $7756: $3b
	ld   bc, $fb0b                                   ; $7757: $01 $0b $fb
	add  c                                           ; $775a: $81
	inc  bc                                          ; $775b: $03
	ld   bc, $01ff                                   ; $775c: $01 $ff $01
	add  d                                           ; $775f: $82
	rst  $38                                         ; $7760: $ff
	inc  b                                           ; $7761: $04
	adc  b                                           ; $7762: $88
	cp   a                                           ; $7763: $bf
	adc  b                                           ; $7764: $88
	sub  c                                           ; $7765: $91
	sbc  [hl]                                        ; $7766: $9e
	add  b                                           ; $7767: $80
	sbc  h                                           ; $7768: $9c
	add  b                                           ; $7769: $80
	sbc  a                                           ; $776a: $9f
	add  d                                           ; $776b: $82
	sbc  h                                           ; $776c: $9c
	add  b                                           ; $776d: $80
	sbc  a                                           ; $776e: $9f
	add  b                                           ; $776f: $80
	sbc  h                                           ; $7770: $9c
	add  b                                           ; $7771: $80
	sbc  l                                           ; $7772: $9d
	add  b                                           ; $7773: $80
	sbc  h                                           ; $7774: $9c
	ld   bc, $9f90                                   ; $7775: $01 $90 $9f
	add  b                                           ; $7778: $80
	add  b                                           ; $7779: $80
	ld   [bc], a                                     ; $777a: $02
	ret  nz                                          ; $777b: $c0

	rst  $38                                         ; $777c: $ff
	add  b                                           ; $777d: $80
	add  d                                           ; $777e: $82
	rst  $38                                         ; $777f: $ff
	inc  b                                           ; $7780: $04
	nop                                              ; $7781: $00
	rst  $38                                         ; $7782: $ff
	nop                                              ; $7783: $00
	inc  b                                           ; $7784: $04
	ei                                               ; $7785: $fb
	add  b                                           ; $7786: $80
	ld   e, e                                        ; $7787: $5b
	add  b                                           ; $7788: $80
	db   $d3                                         ; $7789: $d3
	add  d                                           ; $778a: $82
	ld   d, e                                        ; $778b: $53
	add  b                                           ; $778c: $80
	db   $d3                                         ; $778d: $d3
	add  b                                           ; $778e: $80
	ld   d, e                                        ; $778f: $53
	add  b                                           ; $7790: $80
	ld   e, e                                        ; $7791: $5b
	add  b                                           ; $7792: $80
	ld   a, e                                        ; $7793: $7b
	ld   bc, $ff00                                   ; $7794: $01 $00 $ff
	add  c                                           ; $7797: $81
	nop                                              ; $7798: $00
	ld   bc, $00ff                                   ; $7799: $01 $ff $00
	add  d                                           ; $779c: $82
	rst  $38                                         ; $779d: $ff
	inc  b                                           ; $779e: $04
	nop                                              ; $779f: $00
	rst  $38                                         ; $77a0: $ff
	nop                                              ; $77a1: $00
	add  hl, de                                      ; $77a2: $19
	and  $80                                         ; $77a3: $e6 $80
	ret  c                                           ; $77a5: $d8

	add  b                                           ; $77a6: $80
	add  $80                                         ; $77a7: $c6 $80
	add  sp, -$80                                    ; $77a9: $e8 $80
	ret  c                                           ; $77ab: $d8

	add  b                                           ; $77ac: $80
	ret  nz                                          ; $77ad: $c0

	add  b                                           ; $77ae: $80
	xor  $80                                         ; $77af: $ee $80
	call nz, $ea80                                   ; $77b1: $c4 $80 $ea
	ld   bc, $ff00                                   ; $77b4: $01 $00 $ff
	add  c                                           ; $77b7: $81
	nop                                              ; $77b8: $00
	ld   bc, $00ff                                   ; $77b9: $01 $ff $00
	add  d                                           ; $77bc: $82
	rst  $38                                         ; $77bd: $ff
	inc  b                                           ; $77be: $04
	ld   de, $13ff                                   ; $77bf: $11 $ff $13
	dec  bc                                          ; $77c2: $0b
	ei                                               ; $77c3: $fb
	add  b                                           ; $77c4: $80
	dec  sp                                          ; $77c5: $3b
	add  b                                           ; $77c6: $80
	ei                                               ; $77c7: $fb
	add  h                                           ; $77c8: $84
	dec  sp                                          ; $77c9: $3b
	add  b                                           ; $77ca: $80
	ei                                               ; $77cb: $fb
	add  b                                           ; $77cc: $80
	ld   a, e                                        ; $77cd: $7b
	add  b                                           ; $77ce: $80
	cp   e                                           ; $77cf: $bb
	ld   bc, $fb0b                                   ; $77d0: $01 $0b $fb
	add  c                                           ; $77d3: $81
	inc  bc                                          ; $77d4: $03
	ld   bc, $01ff                                   ; $77d5: $01 $ff $01
	add  d                                           ; $77d8: $82
	rst  $38                                         ; $77d9: $ff
	inc  b                                           ; $77da: $04
	adc  b                                           ; $77db: $88
	cp   a                                           ; $77dc: $bf
	adc  b                                           ; $77dd: $88
	sub  e                                           ; $77de: $93
	sbc  h                                           ; $77df: $9c
	add  b                                           ; $77e0: $80
	sbc  l                                           ; $77e1: $9d
	add  b                                           ; $77e2: $80
	sbc  h                                           ; $77e3: $9c
	add  b                                           ; $77e4: $80
	sbc  l                                           ; $77e5: $9d
	add  b                                           ; $77e6: $80
	sbc  h                                           ; $77e7: $9c
	add  b                                           ; $77e8: $80
	sbc  l                                           ; $77e9: $9d
	add  b                                           ; $77ea: $80
	sbc  h                                           ; $77eb: $9c
	add  b                                           ; $77ec: $80
	sbc  [hl]                                        ; $77ed: $9e
	add  b                                           ; $77ee: $80
	sbc  l                                           ; $77ef: $9d
	ld   bc, $9f90                                   ; $77f0: $01 $90 $9f
	add  b                                           ; $77f3: $80
	add  b                                           ; $77f4: $80
	ld   [bc], a                                     ; $77f5: $02
	ret  nz                                          ; $77f6: $c0

	rst  $38                                         ; $77f7: $ff
	add  b                                           ; $77f8: $80
	add  d                                           ; $77f9: $82
	rst  $38                                         ; $77fa: $ff
	inc  b                                           ; $77fb: $04
	nop                                              ; $77fc: $00
	rst  $38                                         ; $77fd: $ff
	nop                                              ; $77fe: $00
	db   $e3                                         ; $77ff: $e3
	inc  e                                           ; $7800: $1c
	add  b                                           ; $7801: $80
	db   $dd                                         ; $7802: $dd
	add  b                                           ; $7803: $80
	dec  e                                           ; $7804: $1d
	add  b                                           ; $7805: $80
	db   $dd                                         ; $7806: $dd
	add  b                                           ; $7807: $80
	dec  e                                           ; $7808: $1d
	add  b                                           ; $7809: $80
	db   $dd                                         ; $780a: $dd
	add  b                                           ; $780b: $80
	dec  e                                           ; $780c: $1d
	add  b                                           ; $780d: $80
	xor  l                                           ; $780e: $ad
	add  b                                           ; $780f: $80
	adc  h                                           ; $7810: $8c
	ld   bc, $ff00                                   ; $7811: $01 $00 $ff
	add  c                                           ; $7814: $81
	nop                                              ; $7815: $00
	ld   bc, $00ff                                   ; $7816: $01 $ff $00
	add  d                                           ; $7819: $82
	rst  $38                                         ; $781a: $ff
	inc  b                                           ; $781b: $04
	nop                                              ; $781c: $00
	rst  $38                                         ; $781d: $ff
	nop                                              ; $781e: $00
	ldh  a, [rIF]                                    ; $781f: $f0 $0f
	add  d                                           ; $7821: $82
	db   $ed                                         ; $7822: $ed
	add  h                                           ; $7823: $84
	dec  l                                           ; $7824: $2d
	add  d                                           ; $7825: $82
	rst  $28                                         ; $7826: $ef
	add  b                                           ; $7827: $80
	ld   c, $01                                      ; $7828: $0e $01
	nop                                              ; $782a: $00
	rst  $38                                         ; $782b: $ff
	add  c                                           ; $782c: $81
	nop                                              ; $782d: $00
	ld   bc, $00ff                                   ; $782e: $01 $ff $00
	add  d                                           ; $7831: $82
	rst  $38                                         ; $7832: $ff
	inc  b                                           ; $7833: $04
	ld   de, $13ff                                   ; $7834: $11 $ff $13
	dec  bc                                          ; $7837: $0b
	ei                                               ; $7838: $fb
	adc  d                                           ; $7839: $8a
	cp   e                                           ; $783a: $bb
	add  b                                           ; $783b: $80
	ld   a, e                                        ; $783c: $7b
	add  b                                           ; $783d: $80
	ei                                               ; $783e: $fb
	ld   bc, $fb0b                                   ; $783f: $01 $0b $fb
	add  c                                           ; $7842: $81
	inc  bc                                          ; $7843: $03
	ld   bc, $01ff                                   ; $7844: $01 $ff $01
	add  d                                           ; $7847: $82
	rst  $38                                         ; $7848: $ff
	inc  b                                           ; $7849: $04
	adc  b                                           ; $784a: $88
	cp   a                                           ; $784b: $bf
	adc  b                                           ; $784c: $88
	sub  b                                           ; $784d: $90
	sbc  a                                           ; $784e: $9f
	adc  [hl]                                        ; $784f: $8e
	sbc  [hl]                                        ; $7850: $9e
	ld   bc, $9f90                                   ; $7851: $01 $90 $9f
	add  b                                           ; $7854: $80
	add  b                                           ; $7855: $80
	ld   [bc], a                                     ; $7856: $02
	ret  nz                                          ; $7857: $c0

	rst  $38                                         ; $7858: $ff
	add  b                                           ; $7859: $80
	add  d                                           ; $785a: $82
	rst  $38                                         ; $785b: $ff
	ld   bc, $ff00                                   ; $785c: $01 $00 $ff
	add  b                                           ; $785f: $80
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	rst  $38                                         ; $7862: $ff
	add  b                                           ; $7863: $80
	rlca                                             ; $7864: $07
	add  d                                           ; $7865: $82
	rst  $30                                         ; $7866: $f7
	add  b                                           ; $7867: $80
	rlca                                             ; $7868: $07
	add  h                                           ; $7869: $84
	rst  $30                                         ; $786a: $f7
	add  b                                           ; $786b: $80
	rlca                                             ; $786c: $07
	ld   bc, $ff00                                   ; $786d: $01 $00 $ff
	add  c                                           ; $7870: $81
	nop                                              ; $7871: $00
	ld   bc, $00ff                                   ; $7872: $01 $ff $00
	add  d                                           ; $7875: $82
	rst  $38                                         ; $7876: $ff
	inc  b                                           ; $7877: $04
	nop                                              ; $7878: $00
	rst  $38                                         ; $7879: $ff
	nop                                              ; $787a: $00
	ld   b, b                                        ; $787b: $40
	cp   a                                           ; $787c: $bf
	add  b                                           ; $787d: $80
	db   $10                                         ; $787e: $10
	add  b                                           ; $787f: $80
	cp   $80                                         ; $7880: $fe $80
	ld   e, $80                                      ; $7882: $1e $80
	db   $10                                         ; $7884: $10
	add  b                                           ; $7885: $80
	rst  $30                                         ; $7886: $f7
	add  b                                           ; $7887: $80
	rla                                              ; $7888: $17
	add  b                                           ; $7889: $80
	ld   d, a                                        ; $788a: $57
	add  b                                           ; $788b: $80
	jr   jr_092_788f                                 ; $788c: $18 $01

	nop                                              ; $788e: $00

jr_092_788f:
	rst  $38                                         ; $788f: $ff
	add  c                                           ; $7890: $81
	nop                                              ; $7891: $00
	ld   bc, $00ff                                   ; $7892: $01 $ff $00
	add  d                                           ; $7895: $82

Call_092_7896:
	rst  $38                                         ; $7896: $ff
	inc  bc                                          ; $7897: $03
	ld   de, $13ff                                   ; $7898: $11 $ff $13
	dec  bc                                          ; $789b: $0b
	adc  e                                           ; $789c: $8b
	ei                                               ; $789d: $fb
	add  d                                           ; $789e: $82
	ld   a, e                                        ; $789f: $7b
	ld   bc, $fb0b                                   ; $78a0: $01 $0b $fb
	add  c                                           ; $78a3: $81
	inc  bc                                          ; $78a4: $03
	ld   bc, $01ff                                   ; $78a5: $01 $ff $01

jr_092_78a8:
	add  d                                           ; $78a8: $82
	rst  $38                                         ; $78a9: $ff
	inc  b                                           ; $78aa: $04
	adc  b                                           ; $78ab: $88
	cp   a                                           ; $78ac: $bf
	adc  b                                           ; $78ad: $88
	sub  b                                           ; $78ae: $90
	sbc  a                                           ; $78af: $9f
	add  b                                           ; $78b0: $80
	sbc  [hl]                                        ; $78b1: $9e
	add  b                                           ; $78b2: $80
	sbc  a                                           ; $78b3: $9f
	add  b                                           ; $78b4: $80
	sbc  [hl]                                        ; $78b5: $9e
	adc  b                                           ; $78b6: $88
	sbc  a                                           ; $78b7: $9f
	ld   bc, $9f90                                   ; $78b8: $01 $90 $9f
	add  b                                           ; $78bb: $80
	add  b                                           ; $78bc: $80
	ld   [bc], a                                     ; $78bd: $02
	ret  nz                                          ; $78be: $c0

	rst  $38                                         ; $78bf: $ff
	add  b                                           ; $78c0: $80
	add  d                                           ; $78c1: $82
	rst  $38                                         ; $78c2: $ff
	inc  b                                           ; $78c3: $04
	nop                                              ; $78c4: $00
	rst  $38                                         ; $78c5: $ff
	nop                                              ; $78c6: $00
	jr   nz, jr_092_78a8                             ; $78c7: $20 $df

	add  b                                           ; $78c9: $80
	ld   bc, $7b80                                   ; $78ca: $01 $80 $7b
	add  b                                           ; $78cd: $80
	ld   bc, $ff80                                   ; $78ce: $01 $80 $ff
	add  h                                           ; $78d1: $84
	inc  bc                                          ; $78d2: $03
	add  b                                           ; $78d3: $80
	ld   a, e                                        ; $78d4: $7b
	ld   bc, $ff00                                   ; $78d5: $01 $00 $ff
	add  c                                           ; $78d8: $81
	nop                                              ; $78d9: $00
	ld   bc, $00ff                                   ; $78da: $01 $ff $00
	add  d                                           ; $78dd: $82
	rst  $38                                         ; $78de: $ff
	inc  b                                           ; $78df: $04
	nop                                              ; $78e0: $00
	rst  $38                                         ; $78e1: $ff
	nop                                              ; $78e2: $00
	ld   bc, $80fe                                   ; $78e3: $01 $fe $80
	db   $fd                                         ; $78e6: $fd
	add  b                                           ; $78e7: $80
	ret  nz                                          ; $78e8: $c0

	add  b                                           ; $78e9: $80
	db   $dd                                         ; $78ea: $dd
	add  b                                           ; $78eb: $80
	push bc                                          ; $78ec: $c5
	add  d                                           ; $78ed: $82
	push de                                          ; $78ee: $d5
	add  b                                           ; $78ef: $80
	sub  $80                                         ; $78f0: $d6 $80
	or   l                                           ; $78f2: $b5
	ld   bc, $ff00                                   ; $78f3: $01 $00 $ff
	add  c                                           ; $78f6: $81
	nop                                              ; $78f7: $00
	ld   bc, $00ff                                   ; $78f8: $01 $ff $00
	add  d                                           ; $78fb: $82
	rst  $38                                         ; $78fc: $ff
	inc  b                                           ; $78fd: $04
	ld   de, $13ff                                   ; $78fe: $11 $ff $13
	dec  bc                                          ; $7901: $0b
	ei                                               ; $7902: $fb
	add  b                                           ; $7903: $80
	ld   a, e                                        ; $7904: $7b
	add  h                                           ; $7905: $84
	ei                                               ; $7906: $fb
	add  d                                           ; $7907: $82
	ld   a, e                                        ; $7908: $7b
	add  b                                           ; $7909: $80
	ei                                               ; $790a: $fb
	add  b                                           ; $790b: $80
	ld   a, e                                        ; $790c: $7b
	ld   bc, $fb0b                                   ; $790d: $01 $0b $fb
	add  c                                           ; $7910: $81
	inc  bc                                          ; $7911: $03
	ld   bc, $01ff                                   ; $7912: $01 $ff $01
	add  d                                           ; $7915: $82
	rst  $38                                         ; $7916: $ff
	inc  b                                           ; $7917: $04
	adc  b                                           ; $7918: $88
	cp   a                                           ; $7919: $bf
	adc  b                                           ; $791a: $88
	sub  c                                           ; $791b: $91
	sbc  [hl]                                        ; $791c: $9e
	add  b                                           ; $791d: $80
	sbc  h                                           ; $791e: $9c
	add  b                                           ; $791f: $80
	sbc  a                                           ; $7920: $9f
	add  d                                           ; $7921: $82
	sbc  h                                           ; $7922: $9c
	add  b                                           ; $7923: $80
	sbc  a                                           ; $7924: $9f
	add  b                                           ; $7925: $80
	sbc  h                                           ; $7926: $9c
	add  b                                           ; $7927: $80
	sbc  l                                           ; $7928: $9d
	add  b                                           ; $7929: $80
	sbc  h                                           ; $792a: $9c
	ld   bc, $9f90                                   ; $792b: $01 $90 $9f
	add  b                                           ; $792e: $80
	add  b                                           ; $792f: $80
	ld   [bc], a                                     ; $7930: $02
	ret  nz                                          ; $7931: $c0

	rst  $38                                         ; $7932: $ff
	add  b                                           ; $7933: $80
	add  d                                           ; $7934: $82
	rst  $38                                         ; $7935: $ff
	inc  b                                           ; $7936: $04
	nop                                              ; $7937: $00
	rst  $38                                         ; $7938: $ff
	nop                                              ; $7939: $00
	ld   [$80f7], sp                                 ; $793a: $08 $f7 $80
	ld   [hl], l                                     ; $793d: $75
	add  b                                           ; $793e: $80
	add  e                                           ; $793f: $83
	add  b                                           ; $7940: $80
	ld   [hl], a                                     ; $7941: $77
	add  b                                           ; $7942: $80
	rlca                                             ; $7943: $07
	add  b                                           ; $7944: $80
	rst  $10                                         ; $7945: $d7
	add  b                                           ; $7946: $80
	inc  bc                                          ; $7947: $03
	add  d                                           ; $7948: $82
	ld   a, e                                        ; $7949: $7b
	ld   bc, $ff00                                   ; $794a: $01 $00 $ff
	add  c                                           ; $794d: $81
	nop                                              ; $794e: $00
	ld   bc, $00ff                                   ; $794f: $01 $ff $00
	add  d                                           ; $7952: $82
	rst  $38                                         ; $7953: $ff
	inc  b                                           ; $7954: $04
	nop                                              ; $7955: $00
	rst  $38                                         ; $7956: $ff
	nop                                              ; $7957: $00
	ld   a, c                                        ; $7958: $79
	add  [hl]                                        ; $7959: $86
	add  b                                           ; $795a: $80
	xor  l                                           ; $795b: $ad
	add  b                                           ; $795c: $80
	add  b                                           ; $795d: $80
	add  b                                           ; $795e: $80
	add  [hl]                                        ; $795f: $86
	add  b                                           ; $7960: $80
	xor  b                                           ; $7961: $a8
	add  b                                           ; $7962: $80
	add  b                                           ; $7963: $80
	add  b                                           ; $7964: $80
	or   $80                                         ; $7965: $f6 $80
	inc  d                                           ; $7967: $14
	add  b                                           ; $7968: $80
	db   $e3                                         ; $7969: $e3
	ld   bc, $ff00                                   ; $796a: $01 $00 $ff
	add  c                                           ; $796d: $81
	nop                                              ; $796e: $00
	ld   bc, $00ff                                   ; $796f: $01 $ff $00
	add  d                                           ; $7972: $82
	rst  $38                                         ; $7973: $ff
	inc  b                                           ; $7974: $04
	ld   de, $13ff                                   ; $7975: $11 $ff $13
	dec  bc                                          ; $7978: $0b
	ei                                               ; $7979: $fb
	add  b                                           ; $797a: $80
	ld   a, e                                        ; $797b: $7b
	add  b                                           ; $797c: $80
	dec  sp                                          ; $797d: $3b
	add  b                                           ; $797e: $80
	ei                                               ; $797f: $fb
	add  d                                           ; $7980: $82
	dec  sp                                          ; $7981: $3b
	add  b                                           ; $7982: $80
	ei                                               ; $7983: $fb
	add  b                                           ; $7984: $80
	ld   a, e                                        ; $7985: $7b
	add  b                                           ; $7986: $80
	cp   e                                           ; $7987: $bb
	ld   bc, $fb0b                                   ; $7988: $01 $0b $fb
	add  c                                           ; $798b: $81
	inc  bc                                          ; $798c: $03
	ld   bc, $01ff                                   ; $798d: $01 $ff $01
	add  d                                           ; $7990: $82
	rst  $38                                         ; $7991: $ff
	inc  b                                           ; $7992: $04
	adc  b                                           ; $7993: $88

jr_092_7994:
	cp   a                                           ; $7994: $bf
	adc  b                                           ; $7995: $88
	sub  b                                           ; $7996: $90
	sbc  a                                           ; $7997: $9f
	add  d                                           ; $7998: $82
	sbc  [hl]                                        ; $7999: $9e
	add  b                                           ; $799a: $80
	sbc  a                                           ; $799b: $9f
	add  b                                           ; $799c: $80
	sbc  [hl]                                        ; $799d: $9e
	add  b                                           ; $799e: $80
	sbc  a                                           ; $799f: $9f
	add  b                                           ; $79a0: $80
	sbc  [hl]                                        ; $79a1: $9e
	add  d                                           ; $79a2: $82
	sbc  a                                           ; $79a3: $9f
	ld   bc, $9f90                                   ; $79a4: $01 $90 $9f
	add  b                                           ; $79a7: $80
	add  b                                           ; $79a8: $80
	ld   [bc], a                                     ; $79a9: $02
	ret  nz                                          ; $79aa: $c0

	rst  $38                                         ; $79ab: $ff
	add  b                                           ; $79ac: $80
	add  d                                           ; $79ad: $82
	rst  $38                                         ; $79ae: $ff
	inc  b                                           ; $79af: $04
	nop                                              ; $79b0: $00
	rst  $38                                         ; $79b1: $ff
	nop                                              ; $79b2: $00
	jr   nz, jr_092_7994                             ; $79b3: $20 $df

	add  b                                           ; $79b5: $80
	ld   bc, $6180                                   ; $79b6: $01 $80 $61
	add  b                                           ; $79b9: $80
	ld   h, e                                        ; $79ba: $63
	add  b                                           ; $79bb: $80
	ld   b, c                                        ; $79bc: $41
	add  b                                           ; $79bd: $80
	ld   e, l                                        ; $79be: $5d
	add  b                                           ; $79bf: $80
	ld   h, e                                        ; $79c0: $63
	add  b                                           ; $79c1: $80
	ld   [hl], e                                     ; $79c2: $73
	add  b                                           ; $79c3: $80
	ld   c, l                                        ; $79c4: $4d
	ld   bc, $ff00                                   ; $79c5: $01 $00 $ff
	add  c                                           ; $79c8: $81
	nop                                              ; $79c9: $00
	ld   bc, $00ff                                   ; $79ca: $01 $ff $00
	add  d                                           ; $79cd: $82
	rst  $38                                         ; $79ce: $ff
	ld   bc, $ff00                                   ; $79cf: $01 $00 $ff
	add  b                                           ; $79d2: $80
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	rst  $38                                         ; $79d5: $ff
	add  b                                           ; $79d6: $80
	ldh  [$80], a                                    ; $79d7: $e0 $80
	db   $fd                                         ; $79d9: $fd
	add  b                                           ; $79da: $80
	ei                                               ; $79db: $fb
	add  b                                           ; $79dc: $80
	ldh  a, [$80]                                    ; $79dd: $f0 $80
	rst  $28                                         ; $79df: $ef
	add  b                                           ; $79e0: $80
	di                                               ; $79e1: $f3
	add  b                                           ; $79e2: $80
	db   $ed                                         ; $79e3: $ed
	add  b                                           ; $79e4: $80
	ldh  a, [rSB]                                    ; $79e5: $f0 $01
	nop                                              ; $79e7: $00
	rst  $38                                         ; $79e8: $ff
	add  c                                           ; $79e9: $81
	nop                                              ; $79ea: $00
	ld   bc, $00ff                                   ; $79eb: $01 $ff $00
	add  d                                           ; $79ee: $82
	rst  $38                                         ; $79ef: $ff
	inc  bc                                          ; $79f0: $03
	ld   de, $13ff                                   ; $79f1: $11 $ff $13
	dec  bc                                          ; $79f4: $0b
	add  a                                           ; $79f5: $87
	ei                                               ; $79f6: $fb
	add  h                                           ; $79f7: $84
	ld   a, e                                        ; $79f8: $7b
	add  b                                           ; $79f9: $80
	ei                                               ; $79fa: $fb
	ld   bc, $fb0b                                   ; $79fb: $01 $0b $fb
	add  c                                           ; $79fe: $81
	inc  bc                                          ; $79ff: $03
	ld   bc, $01ff                                   ; $7a00: $01 $ff $01
	add  b                                           ; $7a03: $80
	rst  $38                                         ; $7a04: $ff
	rst  $38                                         ; $7a05: $ff
	nop                                              ; $7a06: $00
	rst  $38                                         ; $7a07: $ff
	nop                                              ; $7a08: $00
	rst  $38                                         ; $7a09: $ff
	nop                                              ; $7a0a: $00
	rst  $38                                         ; $7a0b: $ff
	nop                                              ; $7a0c: $00
	ld   sp, hl                                      ; $7a0d: $f9
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	rst  $38                                         ; $7a10: $ff
	add  c                                           ; $7a11: $81
	nop                                              ; $7a12: $00
	add  b                                           ; $7a13: $80
	inc  e                                           ; $7a14: $1c
	add  b                                           ; $7a15: $80
	db   $fc                                         ; $7a16: $fc
	ld   [$7c0c], sp                                 ; $7a17: $08 $0c $7c
	adc  h                                           ; $7a1a: $8c
	db   $fc                                         ; $7a1b: $fc
	ld   hl, sp+$00                                  ; $7a1c: $f8 $00
	ld   hl, sp+$00                                  ; $7a1e: $f8 $00
	ccf                                              ; $7a20: $3f
	adc  l                                           ; $7a21: $8d
	dec  h                                           ; $7a22: $25
	nop                                              ; $7a23: $00
	push hl                                          ; $7a24: $e5
	sbc  a                                           ; $7a25: $9f
	nop                                              ; $7a26: $00
	inc  d                                           ; $7a27: $14
	ld   e, [hl]                                     ; $7a28: $5e
	nop                                              ; $7a29: $00
	xor  h                                           ; $7a2a: $ac
	nop                                              ; $7a2b: $00
	and  b                                           ; $7a2c: $a0
	nop                                              ; $7a2d: $00
	xor  h                                           ; $7a2e: $ac
	nop                                              ; $7a2f: $00
	ld   c, h                                        ; $7a30: $4c
	nop                                              ; $7a31: $00
	ld   b, b                                        ; $7a32: $40
	nop                                              ; $7a33: $00
	ld   c, h                                        ; $7a34: $4c
	nop                                              ; $7a35: $00
	ld   c, h                                        ; $7a36: $4c
	nop                                              ; $7a37: $00
	and  b                                           ; $7a38: $a0
	nop                                              ; $7a39: $00
	and  b                                           ; $7a3a: $a0
	nop                                              ; $7a3b: $00
	and  b                                           ; $7a3c: $a0
	add  c                                           ; $7a3d: $81
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	ld   d, d                                        ; $7a40: $52

jr_092_7a41:
	add  l                                           ; $7a41: $85
	nop                                              ; $7a42: $00
	ld   b, $10                                      ; $7a43: $06 $10
	nop                                              ; $7a45: $00
	jr   nc, jr_092_7a48                             ; $7a46: $30 $00

jr_092_7a48:
	sbc  $00                                         ; $7a48: $de $00
	ld   a, h                                        ; $7a4a: $7c
	add  c                                           ; $7a4b: $81
	nop                                              ; $7a4c: $00
	ld   [bc], a                                     ; $7a4d: $02
	ld   a, h                                        ; $7a4e: $7c
	nop                                              ; $7a4f: $00
	ld   a, h                                        ; $7a50: $7c
	add  c                                           ; $7a51: $81
	nop                                              ; $7a52: $00
	ld   [bc], a                                     ; $7a53: $02
	ld   a, h                                        ; $7a54: $7c
	nop                                              ; $7a55: $00
	ld   a, h                                        ; $7a56: $7c
	add  c                                           ; $7a57: $81
	nop                                              ; $7a58: $00
	ld   [bc], a                                     ; $7a59: $02
	ld   a, h                                        ; $7a5a: $7c
	nop                                              ; $7a5b: $00
	cp   $85                                         ; $7a5c: $fe $85
	nop                                              ; $7a5e: $00
	jr   jr_092_7ac1                                 ; $7a5f: $18 $60

	nop                                              ; $7a61: $00
	ld   h, d                                        ; $7a62: $62
	nop                                              ; $7a63: $00
	db   $f4                                         ; $7a64: $f4
	nop                                              ; $7a65: $00
	ldh  [rP1], a                                    ; $7a66: $e0 $00
	ldh  [rP1], a                                    ; $7a68: $e0 $00
	ldh  [rP1], a                                    ; $7a6a: $e0 $00
	ldh  [rP1], a                                    ; $7a6c: $e0 $00
	db   $e4                                         ; $7a6e: $e4
	nop                                              ; $7a6f: $00
	ldh  [rP1], a                                    ; $7a70: $e0 $00
	ld   b, b                                        ; $7a72: $40
	nop                                              ; $7a73: $00
	stop                                             ; $7a74: $10 $00

jr_092_7a76:
	ld   b, b                                        ; $7a76: $40
	nop                                              ; $7a77: $00
	ldh  [c], a                                      ; $7a78: $e2
	add  a                                           ; $7a79: $87
	nop                                              ; $7a7a: $00
	ld   d, $7c                                      ; $7a7b: $16 $7c
	nop                                              ; $7a7d: $00
	jr   c, jr_092_7a80                              ; $7a7e: $38 $00

Jump_092_7a80:
jr_092_7a80:
	jr   c, jr_092_7a82                              ; $7a80: $38 $00

jr_092_7a82:
	jr   c, jr_092_7a84                              ; $7a82: $38 $00

jr_092_7a84:
	jr   c, jr_092_7a86                              ; $7a84: $38 $00

jr_092_7a86:
	sub  $00                                         ; $7a86: $d6 $00
	stop                                             ; $7a88: $10 $00
	stop                                             ; $7a8a: $10 $00
	stop                                             ; $7a8c: $10 $00
	cp   d                                           ; $7a8e: $ba
	nop                                              ; $7a8f: $00
	cp   $00                                         ; $7a90: $fe $00
	cp   $87                                         ; $7a92: $fe $87
	nop                                              ; $7a94: $00
	ld   a, [bc]                                     ; $7a95: $0a

jr_092_7a96:
	ld   a, [hl]                                     ; $7a96: $7e
	nop                                              ; $7a97: $00
	inc  a                                           ; $7a98: $3c
	nop                                              ; $7a99: $00
	inc  a                                           ; $7a9a: $3c
	nop                                              ; $7a9b: $00
	inc  a                                           ; $7a9c: $3c
	nop                                              ; $7a9d: $00
	inc  a                                           ; $7a9e: $3c
	nop                                              ; $7a9f: $00
	inc  a                                           ; $7aa0: $3c
	add  c                                           ; $7aa1: $81
	nop                                              ; $7aa2: $00
	ld   [$003c], sp                                 ; $7aa3: $08 $3c $00
	ld   h, [hl]                                     ; $7aa6: $66
	nop                                              ; $7aa7: $00
	ld   [hl-], a                                    ; $7aa8: $32
	nop                                              ; $7aa9: $00
	ld   l, h                                        ; $7aaa: $6c
	nop                                              ; $7aab: $00
	ld   b, [hl]                                     ; $7aac: $46
	add  a                                           ; $7aad: $87
	nop                                              ; $7aae: $00
	ld   [bc], a                                     ; $7aaf: $02
	cp   $00                                         ; $7ab0: $fe $00
	ld   a, h                                        ; $7ab2: $7c
	add  c                                           ; $7ab3: $81
	nop                                              ; $7ab4: $00
	ld   [bc], a                                     ; $7ab5: $02
	jr   c, jr_092_7ab8                              ; $7ab6: $38 $00

jr_092_7ab8:
	db   $10                                         ; $7ab8: $10
	add  e                                           ; $7ab9: $83
	nop                                              ; $7aba: $00
	ld   [bc], a                                     ; $7abb: $02
	stop                                             ; $7abc: $10 $00
	jr   c, jr_092_7a41                              ; $7abe: $38 $81

	nop                                              ; $7ac0: $00

jr_092_7ac1:
	ld   [bc], a                                     ; $7ac1: $02
	ld   a, h                                        ; $7ac2: $7c
	nop                                              ; $7ac3: $00
	cp   $ff                                         ; $7ac4: $fe $ff
	nop                                              ; $7ac6: $00
	db   $d3                                         ; $7ac7: $d3
	nop                                              ; $7ac8: $00
	add  a                                           ; $7ac9: $87
	add  b                                           ; $7aca: $80
	add  b                                           ; $7acb: $80
	adc  b                                           ; $7acc: $88
	add  b                                           ; $7acd: $80
	cp   h                                           ; $7ace: $bc
	add  d                                           ; $7acf: $82
	cp   [hl]                                        ; $7ad0: $be
	add  b                                           ; $7ad1: $80
	cp   h                                           ; $7ad2: $bc
	add  b                                           ; $7ad3: $80
	adc  b                                           ; $7ad4: $88
	adc  c                                           ; $7ad5: $89
	add  b                                           ; $7ad6: $80
	add  b                                           ; $7ad7: $80
	rst  $38                                         ; $7ad8: $ff
	adc  h                                           ; $7ad9: $8c
	nop                                              ; $7ada: $00
	add  b                                           ; $7adb: $80
	rst  $38                                         ; $7adc: $ff
	ld   bc, $8480                                   ; $7add: $01 $80 $84
	add  c                                           ; $7ae0: $81
	add  b                                           ; $7ae1: $80
	ld   [$809b], sp                                 ; $7ae2: $08 $9b $80
	sbc  e                                           ; $7ae5: $9b
	add  b                                           ; $7ae6: $80
	sbc  e                                           ; $7ae7: $9b
	add  b                                           ; $7ae8: $80
	adc  [hl]                                        ; $7ae9: $8e
	add  b                                           ; $7aea: $80
	sub  c                                           ; $7aeb: $91
	add  b                                           ; $7aec: $80
	rst  $38                                         ; $7aed: $ff
	add  c                                           ; $7aee: $81
	nop                                              ; $7aef: $00
	ld   [bc], a                                     ; $7af0: $02
	ld   a, h                                        ; $7af1: $7c
	nop                                              ; $7af2: $00
	jr   c, jr_092_7a76                              ; $7af3: $38 $81

	nop                                              ; $7af5: $00
	ld   c, $38                                      ; $7af6: $0e $38
	nop                                              ; $7af8: $00
	jr   c, jr_092_7afb                              ; $7af9: $38 $00

jr_092_7afb:
	ld   e, e                                        ; $7afb: $5b
	add  b                                           ; $7afc: $80
	adc  [hl]                                        ; $7afd: $8e
	add  b                                           ; $7afe: $80
	adc  [hl]                                        ; $7aff: $8e
	add  b                                           ; $7b00: $80
	sbc  e                                           ; $7b01: $9b
	add  b                                           ; $7b02: $80
	sbc  e                                           ; $7b03: $9b
	add  b                                           ; $7b04: $80
	sbc  e                                           ; $7b05: $9b
	add  c                                           ; $7b06: $81
	add  b                                           ; $7b07: $80
	ld   [bc], a                                     ; $7b08: $02
	add  h                                           ; $7b09: $84
	add  b                                           ; $7b0a: $80
	call nz, $0081                                   ; $7b0b: $c4 $81 $00
	ld   [bc], a                                     ; $7b0e: $02
	jr   c, jr_092_7b11                              ; $7b0f: $38 $00

jr_092_7b11:
	jr   c, jr_092_7a96                              ; $7b11: $38 $83

	nop                                              ; $7b13: $00
	ld   [bc], a                                     ; $7b14: $02
	ld   [$4c00], sp                                 ; $7b15: $08 $00 $4c
	add  b                                           ; $7b18: $80
	nop                                              ; $7b19: $00
	add  b                                           ; $7b1a: $80
	rst  $38                                         ; $7b1b: $ff
	inc  bc                                          ; $7b1c: $03

jr_092_7b1d:
	add  b                                           ; $7b1d: $80
	adc  a                                           ; $7b1e: $8f
	add  b                                           ; $7b1f: $80
	add  a                                           ; $7b20: $87
	add  c                                           ; $7b21: $81
	add  b                                           ; $7b22: $80
	ld   b, $87                                      ; $7b23: $06 $87
	add  b                                           ; $7b25: $80
	add  a                                           ; $7b26: $87
	add  b                                           ; $7b27: $80
	add  e                                           ; $7b28: $83
	add  b                                           ; $7b29: $80
	adc  e                                           ; $7b2a: $8b
	add  b                                           ; $7b2b: $80
	rst  $38                                         ; $7b2c: $ff
	inc  bc                                          ; $7b2d: $03
	nop                                              ; $7b2e: $00
	ld   hl, sp+$00                                  ; $7b2f: $f8 $00
	ldh  a, [$81]                                    ; $7b31: $f0 $81
	nop                                              ; $7b33: $00
	ld   [de], a                                     ; $7b34: $12
	ldh  a, [rP1]                                    ; $7b35: $f0 $00
	ldh  a, [rP1]                                    ; $7b37: $f0 $00
	ldh  [rP1], a                                    ; $7b39: $e0 $00
	ld   a, [$8180]                                  ; $7b3b: $fa $80 $81
	add  b                                           ; $7b3e: $80
	add  c                                           ; $7b3f: $81
	add  b                                           ; $7b40: $80
	add  c                                           ; $7b41: $81
	add  b                                           ; $7b42: $80
	sub  e                                           ; $7b43: $93
	add  b                                           ; $7b44: $80
	adc  a                                           ; $7b45: $8f
	add  b                                           ; $7b46: $80
	adc  a                                           ; $7b47: $8f
	add  c                                           ; $7b48: $81
	add  b                                           ; $7b49: $80
	inc  c                                           ; $7b4a: $0c
	and  h                                           ; $7b4b: $a4
	nop                                              ; $7b4c: $00
	ret  nz                                          ; $7b4d: $c0

	nop                                              ; $7b4e: $00
	ret  nz                                          ; $7b4f: $c0

	nop                                              ; $7b50: $00
	ret  nz                                          ; $7b51: $c0

	nop                                              ; $7b52: $00
	db   $e4                                         ; $7b53: $e4
	nop                                              ; $7b54: $00
	ld   hl, sp+$00                                  ; $7b55: $f8 $00
	ld   hl, sp-$7f                                  ; $7b57: $f8 $81
	nop                                              ; $7b59: $00
	ld   a, [de]                                     ; $7b5a: $1a
	inc  bc                                          ; $7b5b: $03
	add  b                                           ; $7b5c: $80
	add  c                                           ; $7b5d: $81

jr_092_7b5e:
	add  b                                           ; $7b5e: $80
	add  c                                           ; $7b5f: $81
	add  b                                           ; $7b60: $80
	add  c                                           ; $7b61: $81
	add  b                                           ; $7b62: $80
	add  c                                           ; $7b63: $81
	add  b                                           ; $7b64: $80
	add  c                                           ; $7b65: $81
	add  b                                           ; $7b66: $80
	add  [hl]                                        ; $7b67: $86
	add  b                                           ; $7b68: $80
	add  h                                           ; $7b69: $84
	add  b                                           ; $7b6a: $80
	ld   [hl], b                                     ; $7b6b: $70
	nop                                              ; $7b6c: $00
	ldh  [rP1], a                                    ; $7b6d: $e0 $00
	ldh  [rP1], a                                    ; $7b6f: $e0 $00
	ldh  [rP1], a                                    ; $7b71: $e0 $00
	ldh  [rP1], a                                    ; $7b73: $e0 $00
	ldh  [$81], a                                    ; $7b75: $e0 $81
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	db   $10                                         ; $7b79: $10
	add  b                                           ; $7b7a: $80
	nop                                              ; $7b7b: $00
	dec  b                                           ; $7b7c: $05
	add  b                                           ; $7b7d: $80
	add  h                                           ; $7b7e: $84
	add  b                                           ; $7b7f: $80
	add  [hl]                                        ; $7b80: $86
	add  b                                           ; $7b81: $80
	add  d                                           ; $7b82: $82
	add  c                                           ; $7b83: $81
	add  b                                           ; $7b84: $80
	dec  b                                           ; $7b85: $05
	add  c                                           ; $7b86: $81
	add  b                                           ; $7b87: $80
	add  a                                           ; $7b88: $87
	add  b                                           ; $7b89: $80
	add  [hl]                                        ; $7b8a: $86
	add  b                                           ; $7b8b: $80
	add  b                                           ; $7b8c: $80
	nop                                              ; $7b8d: $00
	inc  b                                           ; $7b8e: $04
	stop                                             ; $7b8f: $10 $00
	jr   nc, jr_092_7b93                             ; $7b91: $30 $00

jr_092_7b93:
	jr   nz, @-$7d                                   ; $7b93: $20 $81

	nop                                              ; $7b95: $00
	inc  b                                           ; $7b96: $04
	ret  nz                                          ; $7b97: $c0

	nop                                              ; $7b98: $00
	ld   [hl], b                                     ; $7b99: $70
	nop                                              ; $7b9a: $00
	jr   nc, jr_092_7b1d                             ; $7b9b: $30 $80

	nop                                              ; $7b9d: $00
	inc  bc                                          ; $7b9e: $03
	add  b                                           ; $7b9f: $80
	add  [hl]                                        ; $7ba0: $86
	add  b                                           ; $7ba1: $80
	add  a                                           ; $7ba2: $87
	add  c                                           ; $7ba3: $81
	add  b                                           ; $7ba4: $80
	rlca                                             ; $7ba5: $07
	add  a                                           ; $7ba6: $87
	add  b                                           ; $7ba7: $80
	add  [hl]                                        ; $7ba8: $86
	add  b                                           ; $7ba9: $80
	add  c                                           ; $7baa: $81
	add  b                                           ; $7bab: $80
	add  c                                           ; $7bac: $81
	add  b                                           ; $7bad: $80
	add  b                                           ; $7bae: $80
	nop                                              ; $7baf: $00
	inc  b                                           ; $7bb0: $04
	jr   nc, jr_092_7bb3                             ; $7bb1: $30 $00

jr_092_7bb3:
	ld   [hl], b                                     ; $7bb3: $70
	nop                                              ; $7bb4: $00
	ld   h, b                                        ; $7bb5: $60
	add  c                                           ; $7bb6: $81
	nop                                              ; $7bb7: $00
	inc  b                                           ; $7bb8: $04
	jr   nc, jr_092_7bbb                             ; $7bb9: $30 $00

jr_092_7bbb:
	stop                                             ; $7bbb: $10 $00
	add  b                                           ; $7bbd: $80
	add  b                                           ; $7bbe: $80
	nop                                              ; $7bbf: $00
	dec  b                                           ; $7bc0: $05
	add  b                                           ; $7bc1: $80
	add  a                                           ; $7bc2: $87
	add  b                                           ; $7bc3: $80
	add  [hl]                                        ; $7bc4: $86
	add  b                                           ; $7bc5: $80
	add  e                                           ; $7bc6: $83
	add  c                                           ; $7bc7: $81
	add  b                                           ; $7bc8: $80
	nop                                              ; $7bc9: $00
	add  [hl]                                        ; $7bca: $86
	add  c                                           ; $7bcb: $81
	add  b                                           ; $7bcc: $80
	ld   bc, $8084                                   ; $7bcd: $01 $84 $80
	add  b                                           ; $7bd0: $80
	nop                                              ; $7bd1: $00
	inc  b                                           ; $7bd2: $04
	ld   [hl], b                                     ; $7bd3: $70
	nop                                              ; $7bd4: $00
	jr   nc, jr_092_7bd7                             ; $7bd5: $30 $00

jr_092_7bd7:
	ld   h, b                                        ; $7bd7: $60
	add  c                                           ; $7bd8: $81
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	jr   nc, jr_092_7b5e                             ; $7bdb: $30 $81

	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	sub  b                                           ; $7bdf: $90
	add  b                                           ; $7be0: $80
	nop                                              ; $7be1: $00
	ld   c, $80                                      ; $7be2: $0e $80
	add  c                                           ; $7be4: $81
	add  b                                           ; $7be5: $80
	add  d                                           ; $7be6: $82
	add  b                                           ; $7be7: $80
	add  a                                           ; $7be8: $87
	add  b                                           ; $7be9: $80
	add  l                                           ; $7bea: $85
	add  b                                           ; $7beb: $80
	add  e                                           ; $7bec: $83
	add  b                                           ; $7bed: $80
	add  l                                           ; $7bee: $85
	add  b                                           ; $7bef: $80
	add  a                                           ; $7bf0: $87
	add  b                                           ; $7bf1: $80
	add  b                                           ; $7bf2: $80
	nop                                              ; $7bf3: $00
	inc  c                                           ; $7bf4: $0c
	ret  nz                                          ; $7bf5: $c0

	nop                                              ; $7bf6: $00
	and  b                                           ; $7bf7: $a0
	nop                                              ; $7bf8: $00
	ld   [hl], b                                     ; $7bf9: $70
	nop                                              ; $7bfa: $00
	ld   d, b                                        ; $7bfb: $50
	nop                                              ; $7bfc: $00
	ld   h, b                                        ; $7bfd: $60
	nop                                              ; $7bfe: $00
	ld   d, b                                        ; $7bff: $50
	nop                                              ; $7c00: $00
	ldh  a, [$80]                                    ; $7c01: $f0 $80
	nop                                              ; $7c03: $00
	add  c                                           ; $7c04: $81
	add  b                                           ; $7c05: $80
	ld   [bc], a                                     ; $7c06: $02
	add  e                                           ; $7c07: $83
	add  b                                           ; $7c08: $80
	add  e                                           ; $7c09: $83
	add  e                                           ; $7c0a: $83
	add  b                                           ; $7c0b: $80
	inc  bc                                          ; $7c0c: $03
	add  a                                           ; $7c0d: $87
	add  b                                           ; $7c0e: $80
	add  a                                           ; $7c0f: $87
	add  b                                           ; $7c10: $80
	add  d                                           ; $7c11: $82
	nop                                              ; $7c12: $00
	ld   [bc], a                                     ; $7c13: $02
	ld   h, b                                        ; $7c14: $60
	nop                                              ; $7c15: $00
	ld   h, b                                        ; $7c16: $60
	add  e                                           ; $7c17: $83
	nop                                              ; $7c18: $00
	ld   [bc], a                                     ; $7c19: $02
	ld   [hl], b                                     ; $7c1a: $70
	nop                                              ; $7c1b: $00
	ldh  a, [$80]                                    ; $7c1c: $f0 $80
	nop                                              ; $7c1e: $00
	sub  b                                           ; $7c1f: $90
	add  b                                           ; $7c20: $80
	adc  h                                           ; $7c21: $8c
	nop                                              ; $7c22: $00
	dec  b                                           ; $7c23: $05
	rst  $38                                         ; $7c24: $ff
	pop  hl                                          ; $7c25: $e1
	add  b                                           ; $7c26: $80
	add  c                                           ; $7c27: $81
	adc  [hl]                                        ; $7c28: $8e
	xor  [hl]                                        ; $7c29: $ae
	add  b                                           ; $7c2a: $80
	sbc  b                                           ; $7c2b: $98
	add  e                                           ; $7c2c: $83
	add  b                                           ; $7c2d: $80
	ld   bc, $82c2                                   ; $7c2e: $01 $c2 $82
	add  b                                           ; $7c31: $80
	rst  $38                                         ; $7c32: $ff
	inc  b                                           ; $7c33: $04
	jp   $c000                                       ; $7c34: $c3 $00 $c0


	jr   c, jr_092_7c73                              ; $7c37: $38 $3a

	add  b                                           ; $7c39: $80
	adc  h                                           ; $7c3a: $8c
	add  c                                           ; $7c3b: $81
	nop                                              ; $7c3c: $00
	add  b                                           ; $7c3d: $80
	add  b                                           ; $7c3e: $80
	ld   bc, $a0a1                                   ; $7c3f: $01 $a1 $a0
	add  b                                           ; $7c42: $80
	add  [hl]                                        ; $7c43: $86
	add  b                                           ; $7c44: $80
	add  c                                           ; $7c45: $81
	dec  b                                           ; $7c46: $05
	adc  l                                           ; $7c47: $8d
	add  c                                           ; $7c48: $81
	add  l                                           ; $7c49: $85
	pop  bc                                          ; $7c4a: $c1
	rst  ToBoot                                         ; $7c4b: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c4c: $cf
	add  b                                           ; $7c4d: $80
	rst  ToBoot                                         ; $7c4e: $c7
	dec  b                                           ; $7c4f: $05
	ret  z                                           ; $7c50: $c8

	add  b                                           ; $7c51: $80
	rst  $30                                         ; $7c52: $f7
	add  b                                           ; $7c53: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c54: $cf
	or   b                                           ; $7c55: $b0
	add  b                                           ; $7c56: $80
	ret  nz                                          ; $7c57: $c0

	dec  b                                           ; $7c58: $05
	add  sp, -$40                                    ; $7c59: $e8 $c0
	ldh  [$c1], a                                    ; $7c5b: $e0 $c1
	pop  af                                          ; $7c5d: $f1
	ld   sp, hl                                      ; $7c5e: $f9
	add  b                                           ; $7c5f: $80
	pop  af                                          ; $7c60: $f1
	ld   [bc], a                                     ; $7c61: $02
	add  hl, bc                                      ; $7c62: $09
	nop                                              ; $7c63: $00
	rst  $30                                         ; $7c64: $f7
	add  b                                           ; $7c65: $80
	nop                                              ; $7c66: $00
	add  b                                           ; $7c67: $80
	rst  $38                                         ; $7c68: $ff
	ld   b, $80                                      ; $7c69: $06 $80
	add  a                                           ; $7c6b: $87
	add  b                                           ; $7c6c: $80
	sbc  b                                           ; $7c6d: $98
	add  a                                           ; $7c6e: $87
	and  h                                           ; $7c6f: $a4
	sbc  h                                           ; $7c70: $9c
	add  b                                           ; $7c71: $80
	sbc  e                                           ; $7c72: $9b

jr_092_7c73:
	nop                                              ; $7c73: $00
	rst  JumpTable                                         ; $7c74: $df
	add  b                                           ; $7c75: $80
	xor  a                                           ; $7c76: $af
	ld   bc, $e09f                                   ; $7c77: $01 $9f $e0
	add  b                                           ; $7c7a: $80
	rst  $38                                         ; $7c7b: $ff
	ld   b, $00                                      ; $7c7c: $06 $00
	ldh  a, [rP1]                                    ; $7c7e: $f0 $00
	inc  c                                           ; $7c80: $0c
	ldh  a, [rAUD1ENV]                               ; $7c81: $f0 $12
	inc  e                                           ; $7c83: $1c
	add  b                                           ; $7c84: $80
	db   $ec                                         ; $7c85: $ec
	nop                                              ; $7c86: $00
	db   $fd                                         ; $7c87: $fd
	add  b                                           ; $7c88: $80
	ld   a, [$fc01]                                  ; $7c89: $fa $01 $fc
	ld   a, b                                        ; $7c8c: $78
	add  c                                           ; $7c8d: $81
	sbc  a                                           ; $7c8e: $9f
	dec  b                                           ; $7c8f: $05
	sbc  d                                           ; $7c90: $9a
	and  c                                           ; $7c91: $a1
	xor  c                                           ; $7c92: $a9
	and  c                                           ; $7c93: $a1
	and  a                                           ; $7c94: $a7
	xor  a                                           ; $7c95: $af
	add  b                                           ; $7c96: $80
	and  a                                           ; $7c97: $a7
	inc  b                                           ; $7c98: $04
	add  sp, -$80                                    ; $7c99: $e8 $80
	or   a                                           ; $7c9b: $b7
	add  b                                           ; $7c9c: $80
	rst  $28                                         ; $7c9d: $ef
	add  c                                           ; $7c9e: $81
	db   $fc                                         ; $7c9f: $fc
	dec  b                                           ; $7ca0: $05
	xor  h                                           ; $7ca1: $ac
	jp   nz, $c2ca                                   ; $7ca2: $c2 $ca $c2

	ldh  a, [c]                                      ; $7ca5: $f2
	ld   a, [$f280]                                  ; $7ca6: $fa $80 $f2
	ld   [bc], a                                     ; $7ca9: $02
	dec  bc                                          ; $7caa: $0b
	nop                                              ; $7cab: $00
	or   $80                                         ; $7cac: $f6 $80
	nop                                              ; $7cae: $00
	add  b                                           ; $7caf: $80
	rst  $38                                         ; $7cb0: $ff
	dec  b                                           ; $7cb1: $05
	add  b                                           ; $7cb2: $80
	add  a                                           ; $7cb3: $87
	add  b                                           ; $7cb4: $80
	sbc  b                                           ; $7cb5: $98
	add  l                                           ; $7cb6: $85
	and  l                                           ; $7cb7: $a5
	add  b                                           ; $7cb8: $80
	sbc  a                                           ; $7cb9: $9f
	ld   [bc], a                                     ; $7cba: $02
	sbc  c                                           ; $7cbb: $99
	reti                                             ; $7cbc: $d9


	cp   b                                           ; $7cbd: $b8
	add  b                                           ; $7cbe: $80
	adc  d                                           ; $7cbf: $8a
	nop                                              ; $7cc0: $00
	rst  ToBoot                                         ; $7cc1: $c7
	add  b                                           ; $7cc2: $80
	rst  $38                                         ; $7cc3: $ff
	dec  b                                           ; $7cc4: $05
	nop                                              ; $7cc5: $00
	ldh  a, [rP1]                                    ; $7cc6: $f0 $00
	inc  c                                           ; $7cc8: $0c
	sub  b                                           ; $7cc9: $90
	sub  d                                           ; $7cca: $92
	add  b                                           ; $7ccb: $80
	db   $ec                                         ; $7ccc: $ec
	ld   b, $f4                                      ; $7ccd: $06 $f4
	or   l                                           ; $7ccf: $b5
	cp   [hl]                                        ; $7cd0: $be
	sbc  d                                           ; $7cd1: $9a
	ld   [de], a                                     ; $7cd2: $12
	pop  de                                          ; $7cd3: $d1
	sub  a                                           ; $7cd4: $97
	add  b                                           ; $7cd5: $80
	or   a                                           ; $7cd6: $b7
	dec  c                                           ; $7cd7: $0d
	or   c                                           ; $7cd8: $b1
	and  c                                           ; $7cd9: $a1
	jp   hl                                          ; $7cda: $e9


	add  c                                           ; $7cdb: $81
	and  a                                           ; $7cdc: $a7
	adc  a                                           ; $7cdd: $8f
	sub  a                                           ; $7cde: $97
	add  a                                           ; $7cdf: $87
	adc  b                                           ; $7ce0: $88
	add  b                                           ; $7ce1: $80
	add  a                                           ; $7ce2: $87
	add  b                                           ; $7ce3: $80
	ld   c, c                                        ; $7ce4: $49
	ld   b, b                                        ; $7ce5: $40
	add  b                                           ; $7ce6: $80
	ld   d, d                                        ; $7ce7: $52
	add  b                                           ; $7ce8: $80
	halt                                             ; $7ce9: $76
	ld   [$6477], sp                                 ; $7cea: $08 $77 $64
	halt                                             ; $7ced: $76
	db   $10                                         ; $7cee: $10
	db   $f4                                         ; $7cef: $f4
	ldh  a, [$08]                                    ; $7cf0: $f0 $08
	nop                                              ; $7cf2: $00
	ldh  a, [$80]                                    ; $7cf3: $f0 $80
	nop                                              ; $7cf5: $00
	add  hl, bc                                      ; $7cf6: $09
	rst  $38                                         ; $7cf7: $ff
	pop  hl                                          ; $7cf8: $e1
	add  b                                           ; $7cf9: $80
	cp   a                                           ; $7cfa: $bf
	sbc  [hl]                                        ; $7cfb: $9e
	xor  b                                           ; $7cfc: $a8
	adc  b                                           ; $7cfd: $88
	or   b                                           ; $7cfe: $b0
	sub  a                                           ; $7cff: $97
	add  a                                           ; $7d00: $87
	add  b                                           ; $7d01: $80
	adc  a                                           ; $7d02: $8f
	add  b                                           ; $7d03: $80
	sub  a                                           ; $7d04: $97
	dec  bc                                          ; $7d05: $0b
	adc  [hl]                                        ; $7d06: $8e
	or   c                                           ; $7d07: $b1
	rst  $38                                         ; $7d08: $ff
	jp   $fe00                                       ; $7d09: $c3 $00 $fe


	inc  a                                           ; $7d0c: $3c
	adc  d                                           ; $7d0d: $8a
	adc  b                                           ; $7d0e: $88
	ld   b, $74                                      ; $7d0f: $06 $74

jr_092_7d11:
	ld   [hl], b                                     ; $7d11: $70
	add  b                                           ; $7d12: $80
	ld   hl, sp-$80                                  ; $7d13: $f8 $80
	ld   [hl], h                                     ; $7d15: $74
	rra                                              ; $7d16: $1f
	jr   c, jr_092_7d11                              ; $7d17: $38 $f8

	sbc  e                                           ; $7d19: $9b
	sbc  a                                           ; $7d1a: $9f
	sub  a                                           ; $7d1b: $97
	jp   nc, $b6b0                                   ; $7d1c: $d2 $b0 $b6

	and  b                                           ; $7d1f: $a0
	or   d                                           ; $7d20: $b2
	or   b                                           ; $7d21: $b0
	and  e                                           ; $7d22: $a3
	and  a                                           ; $7d23: $a7
	add  sp, -$80                                    ; $7d24: $e8 $80
	or   a                                           ; $7d26: $b7
	add  b                                           ; $7d27: $80
	cp   [hl]                                        ; $7d28: $be
	db   $ec                                         ; $7d29: $ec
	db   $fc                                         ; $7d2a: $fc
	db   $f4                                         ; $7d2b: $f4
	and  l                                           ; $7d2c: $a5
	add  [hl]                                        ; $7d2d: $86
	sub  $82                                         ; $7d2e: $d6 $82
	add  $86                                         ; $7d30: $c6 $86
	ldh  [c], a                                      ; $7d32: $e2
	ldh  a, [c]                                      ; $7d33: $f2
	dec  bc                                          ; $7d34: $0b
	nop                                              ; $7d35: $00
	or   $80                                         ; $7d36: $f6 $80
	nop                                              ; $7d38: $00
	add  b                                           ; $7d39: $80
	rst  $38                                         ; $7d3a: $ff
	dec  b                                           ; $7d3b: $05
	add  b                                           ; $7d3c: $80
	add  a                                           ; $7d3d: $87
	add  b                                           ; $7d3e: $80
	sbc  b                                           ; $7d3f: $98
	add  a                                           ; $7d40: $87
	and  a                                           ; $7d41: $a7
	add  b                                           ; $7d42: $80
	sbc  l                                           ; $7d43: $9d
	ld   bc, $db9b                                   ; $7d44: $01 $9b $db
	add  c                                           ; $7d47: $81
	cp   e                                           ; $7d48: $bb
	nop                                              ; $7d49: $00
	call nz, $ff80                                   ; $7d4a: $c4 $80 $ff
	dec  b                                           ; $7d4d: $05
	nop                                              ; $7d4e: $00
	ldh  a, [rP1]                                    ; $7d4f: $f0 $00
	inc  c                                           ; $7d51: $0c
	ld   [hl], b                                     ; $7d52: $70
	ld   [hl], d                                     ; $7d53: $72
	add  b                                           ; $7d54: $80
	db   $fc                                         ; $7d55: $fc
	ld   [bc], a                                     ; $7d56: $02
	call c, $aefd                                    ; $7d57: $dc $fd $ae
	add  b                                           ; $7d5a: $80
	adc  [hl]                                        ; $7d5b: $8e
	add  hl, bc                                      ; $7d5c: $09
	ld   a, [bc]                                     ; $7d5d: $0a
	sub  c                                           ; $7d5e: $91
	sbc  e                                           ; $7d5f: $9b
	and  b                                           ; $7d60: $a0
	and  c                                           ; $7d61: $a1
	and  b                                           ; $7d62: $a0
	ldh  [$80], a                                    ; $7d63: $e0 $80
	rst  JumpTable                                         ; $7d65: $df
	or   b                                           ; $7d66: $b0
	add  b                                           ; $7d67: $80
	and  a                                           ; $7d68: $a7
	dec  c                                           ; $7d69: $0d
	cp   b                                           ; $7d6a: $b8
	add  b                                           ; $7d6b: $80
	rst  $20                                         ; $7d6c: $e7
	add  b                                           ; $7d6d: $80
	ld   e, a                                        ; $7d6e: $5f
	adc  h                                           ; $7d6f: $8c
	call c, $0a02                                    ; $7d70: $dc $02 $0a
	ld   [bc], a                                     ; $7d73: $02
	inc  bc                                          ; $7d74: $03
	nop                                              ; $7d75: $00
	db   $fd                                         ; $7d76: $fd
	add  [hl]                                        ; $7d77: $86
	add  b                                           ; $7d78: $80
	ldh  a, [c]                                      ; $7d79: $f2
	ld   [bc], a                                     ; $7d7a: $02
	ld   c, $00                                      ; $7d7b: $0e $00
	di                                               ; $7d7d: $f3
	add  b                                           ; $7d7e: $80
	nop                                              ; $7d7f: $00
	add  b                                           ; $7d80: $80
	rst  $38                                         ; $7d81: $ff
	dec  b                                           ; $7d82: $05
	add  b                                           ; $7d83: $80
	adc  a                                           ; $7d84: $8f
	add  b                                           ; $7d85: $80
	sub  b                                           ; $7d86: $90
	adc  [hl]                                        ; $7d87: $8e
	xor  [hl]                                        ; $7d88: $ae
	add  b                                           ; $7d89: $80
	sbc  l                                           ; $7d8a: $9d
	ld   bc, $d595                                   ; $7d8b: $01 $95 $d5
	add  b                                           ; $7d8e: $80
	xor  l                                           ; $7d8f: $ad
	ld   bc, $e699                                   ; $7d90: $01 $99 $e6
	add  b                                           ; $7d93: $80
	rst  $38                                         ; $7d94: $ff
	dec  b                                           ; $7d95: $05
	nop                                              ; $7d96: $00
	ret  c                                           ; $7d97: $d8

	nop                                              ; $7d98: $00
	inc  h                                           ; $7d99: $24
	ret  c                                           ; $7d9a: $d8

	jp   c, $fc80                                    ; $7d9b: $da $80 $fc

	ld   bc, $dddc                                   ; $7d9e: $01 $dc $dd
	add  c                                           ; $7da1: $81
	adc  [hl]                                        ; $7da2: $8e
	ld   e, $0e                                      ; $7da3: $1e $0e
	sbc  b                                           ; $7da5: $98
	sbc  a                                           ; $7da6: $9f
	add  a                                           ; $7da7: $87
	add  c                                           ; $7da8: $81
	and  c                                           ; $7da9: $a1
	jp   hl                                          ; $7daa: $e9


	add  c                                           ; $7dab: $81
	add  a                                           ; $7dac: $87
	adc  a                                           ; $7dad: $8f
	sub  a                                           ; $7dae: $97
	add  a                                           ; $7daf: $87
	xor  b                                           ; $7db0: $a8
	add  b                                           ; $7db1: $80
	add  a                                           ; $7db2: $87
	add  b                                           ; $7db3: $80
	ld   a, a                                        ; $7db4: $7f
	add  [hl]                                        ; $7db5: $86
	cp   [hl]                                        ; $7db6: $be
	cp   d                                           ; $7db7: $ba
	ld   b, d                                        ; $7db8: $42
	jp   nz, $c0cb                                   ; $7db9: $c2 $cb $c0

	ldh  a, [$f8]                                    ; $7dbc: $f0 $f8
	db   $f4                                         ; $7dbe: $f4
	ldh  a, [$0a]                                    ; $7dbf: $f0 $0a
	nop                                              ; $7dc1: $00
	ldh  a, [$80]                                    ; $7dc2: $f0 $80
	nop                                              ; $7dc4: $00
	add  b                                           ; $7dc5: $80
	rst  $38                                         ; $7dc6: $ff
	add  d                                           ; $7dc7: $82
	add  b                                           ; $7dc8: $80
	inc  bc                                          ; $7dc9: $03
	adc  a                                           ; $7dca: $8f
	add  e                                           ; $7dcb: $83
	cp   h                                           ; $7dcc: $bc
	add  h                                           ; $7dcd: $84
	add  b                                           ; $7dce: $80
	or   h                                           ; $7dcf: $b4
	add  c                                           ; $7dd0: $81
	sub  h                                           ; $7dd1: $94
	nop                                              ; $7dd2: $00
	and  b                                           ; $7dd3: $a0
	add  b                                           ; $7dd4: $80
	rst  $38                                         ; $7dd5: $ff
	add  d                                           ; $7dd6: $82

jr_092_7dd7:
	nop                                              ; $7dd7: $00
	inc  bc                                          ; $7dd8: $03
	ld   hl, sp-$20                                  ; $7dd9: $f8 $e0
	ld   e, $10                                      ; $7ddb: $1e $10
	add  b                                           ; $7ddd: $80
	ld   d, $81                                      ; $7dde: $16 $81
	inc  d                                           ; $7de0: $14
	nop                                              ; $7de1: $00
	ld   [hl], $82                                   ; $7de2: $36 $82
	sub  h                                           ; $7de4: $94
	dec  b                                           ; $7de5: $05
	sbc  l                                           ; $7de6: $9d
	sub  h                                           ; $7de7: $94
	adc  e                                           ; $7de8: $8b
	xor  c                                           ; $7de9: $a9
	and  b                                           ; $7dea: $a0
	cp   a                                           ; $7deb: $bf
	add  b                                           ; $7dec: $80
	sbc  a                                           ; $7ded: $9f
	add  c                                           ; $7dee: $81
	add  b                                           ; $7def: $80
	nop                                              ; $7df0: $00
	sub  [hl]                                        ; $7df1: $96
	add  d                                           ; $7df2: $82
	inc  d                                           ; $7df3: $14
	dec  b                                           ; $7df4: $05
	ld   e, h                                        ; $7df5: $5c
	inc  d                                           ; $7df6: $14
	add  sp, $4a                                     ; $7df7: $e8 $4a
	ld   [bc], a                                     ; $7df9: $02
	cp   $80                                         ; $7dfa: $fe $80
	db   $fc                                         ; $7dfc: $fc
	add  d                                           ; $7dfd: $82
	nop                                              ; $7dfe: $00
	rrca                                             ; $7dff: $0f
	rst  $38                                         ; $7e00: $ff
	rst  JumpTable                                         ; $7e01: $df
	add  b                                           ; $7e02: $80
	ret  nc                                          ; $7e03: $d0

	and  b                                           ; $7e04: $a0
	xor  h                                           ; $7e05: $ac
	add  b                                           ; $7e06: $80
	sbc  e                                           ; $7e07: $9b
	db   $e4                                         ; $7e08: $e4
	ldh  a, [$f2]                                    ; $7e09: $f0 $f2
	or   $f7                                         ; $7e0b: $f6 $f7
	rst  $20                                         ; $7e0d: $e7
	pop  hl                                          ; $7e0e: $e1
	add  [hl]                                        ; $7e0f: $86
	add  b                                           ; $7e10: $80
	rst  $38                                         ; $7e11: $ff
	add  e                                           ; $7e12: $83
	nop                                              ; $7e13: $00
	ld   a, [bc]                                     ; $7e14: $0a
	or   b                                           ; $7e15: $b0
	nop                                              ; $7e16: $00
	ld   e, b                                        ; $7e17: $58
	and  b                                           ; $7e18: $a0
	or   b                                           ; $7e19: $b0
	nop                                              ; $7e1a: $00
	inc  c                                           ; $7e1b: $0c
	jr   nc, jr_092_7dd7                             ; $7e1c: $30 $b9

	add  h                                           ; $7e1e: $84
	add  [hl]                                        ; $7e1f: $86
	add  b                                           ; $7e20: $80
	add  c                                           ; $7e21: $81
	add  b                                           ; $7e22: $80
	cp   a                                           ; $7e23: $bf
	add  b                                           ; $7e24: $80
	ret  nz                                          ; $7e25: $c0

	add  b                                           ; $7e26: $80
	add  c                                           ; $7e27: $81
	add  b                                           ; $7e28: $80
	add  a                                           ; $7e29: $87
	add  c                                           ; $7e2a: $81
	ld   sp, hl                                      ; $7e2b: $f9
	ld   b, $7a                                      ; $7e2c: $06 $7a
	add  b                                           ; $7e2e: $80
	or   b                                           ; $7e2f: $b0
	add  b                                           ; $7e30: $80
	cp   [hl]                                        ; $7e31: $be
	jr   nc, jr_092_7e70                             ; $7e32: $30 $3c

	add  b                                           ; $7e34: $80
	cp   h                                           ; $7e35: $bc
	add  c                                           ; $7e36: $81
	add  b                                           ; $7e37: $80
	inc  b                                           ; $7e38: $04
	sub  [hl]                                        ; $7e39: $96
	and  b                                           ; $7e3a: $a0
	cp   h                                           ; $7e3b: $bc
	or   b                                           ; $7e3c: $b0
	ld   b, h                                        ; $7e3d: $44
	add  b                                           ; $7e3e: $80
	rst  $38                                         ; $7e3f: $ff
	add  c                                           ; $7e40: $81
	add  b                                           ; $7e41: $80
	inc  b                                           ; $7e42: $04
	add  c                                           ; $7e43: $81
	add  e                                           ; $7e44: $83
	add  c                                           ; $7e45: $81
	add  a                                           ; $7e46: $87
	add  e                                           ; $7e47: $83
	add  b                                           ; $7e48: $80
	add  a                                           ; $7e49: $87
	inc  bc                                          ; $7e4a: $03
	adc  a                                           ; $7e4b: $8f
	add  a                                           ; $7e4c: $87
	adc  a                                           ; $7e4d: $8f
	add  b                                           ; $7e4e: $80
	add  b                                           ; $7e4f: $80
	rst  $38                                         ; $7e50: $ff
	add  d                                           ; $7e51: $82
	nop                                              ; $7e52: $00
	inc  bc                                          ; $7e53: $03
	jr   nz, jr_092_7e56                             ; $7e54: $20 $00

jr_092_7e56:
	ld   [hl], b                                     ; $7e56: $70
	and  b                                           ; $7e57: $a0
	add  c                                           ; $7e58: $81
	ldh  a, [$0a]                                    ; $7e59: $f0 $0a
	ldh  [$f0], a                                    ; $7e5b: $e0 $f0
	rra                                              ; $7e5d: $1f
	adc  a                                           ; $7e5e: $8f
	add  a                                           ; $7e5f: $87
	adc  a                                           ; $7e60: $8f
	adc  [hl]                                        ; $7e61: $8e
	adc  a                                           ; $7e62: $8f
	adc  l                                           ; $7e63: $8d
	add  [hl]                                        ; $7e64: $86
	add  d                                           ; $7e65: $82
	add  b                                           ; $7e66: $80
	add  h                                           ; $7e67: $84
	add  e                                           ; $7e68: $83
	add  b                                           ; $7e69: $80
	ld   [bc], a                                     ; $7e6a: $02
	nop                                              ; $7e6b: $00
	ldh  [$60], a                                    ; $7e6c: $e0 $60
	add  b                                           ; $7e6e: $80
	ret  nz                                          ; $7e6f: $c0

jr_092_7e70:
	add  b                                           ; $7e70: $80
	nop                                              ; $7e71: $00
	add  b                                           ; $7e72: $80
	ld   [hl], b                                     ; $7e73: $70
	add  b                                           ; $7e74: $80
	ld   h, b                                        ; $7e75: $60
	rst  $38                                         ; $7e76: $ff
	nop                                              ; $7e77: $00
	rst  $38                                         ; $7e78: $ff
	nop                                              ; $7e79: $00
	rst  $38                                         ; $7e7a: $ff
	nop                                              ; $7e7b: $00
	rst  $38                                         ; $7e7c: $ff
	nop                                              ; $7e7d: $00

Jump_092_7e7e:
	rst  JumpTable                                         ; $7e7e: $df
	nop                                              ; $7e7f: $00
	ld   b, d                                        ; $7e80: $42
	rst  $38                                         ; $7e81: $ff
	adc  h                                           ; $7e82: $8c
	rst  $38                                         ; $7e83: $ff
	add  hl, de                                      ; $7e84: $19
	rst  $38                                         ; $7e85: $ff
	dec  sp                                          ; $7e86: $3b
	cp   $73                                         ; $7e87: $fe $73
	cp   $f7                                         ; $7e89: $fe $f7
	call c, $f89f                                    ; $7e8b: $dc $9f $f8
	ei                                               ; $7e8e: $fb
	inc  e                                           ; $7e8f: $1c
	rst  $38                                         ; $7e90: $ff
	inc  a                                           ; $7e91: $3c
	rst  $20                                         ; $7e92: $e7
	ld   h, [hl]                                     ; $7e93: $66
	jp   $83c2                                       ; $7e94: $c3 $c2 $83


	add  c                                           ; $7e97: $81
	adc  h                                           ; $7e98: $8c
	inc  c                                           ; $7e99: $0c
	nop                                              ; $7e9a: $00
	inc  c                                           ; $7e9b: $0c
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	add  c                                           ; $7e9e: $81
	add  c                                           ; $7e9f: $81
	cp   a                                           ; $7ea0: $bf
	pop  hl                                          ; $7ea1: $e1
	rst  $38                                         ; $7ea2: $ff
	ld   c, a                                        ; $7ea3: $4f
	rst  $30                                         ; $7ea4: $f7
	ld   a, e                                        ; $7ea5: $7b
	db   $fc                                         ; $7ea6: $fc
	ld   b, h                                        ; $7ea7: $44
	ld   hl, sp+$48                                  ; $7ea8: $f8 $48
	ld   a, l                                        ; $7eaa: $7d
	ld   a, a                                        ; $7eab: $7f
	add  e                                           ; $7eac: $83
	add  e                                           ; $7ead: $83
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	add  [hl]                                        ; $7eb2: $86
	ld   b, $e7                                      ; $7eb3: $06 $e7
	ld   hl, $50f1                                   ; $7eb5: $21 $f1 $50
	dec  b                                           ; $7eb8: $05
	dec  b                                           ; $7eb9: $05
	ld   a, [bc]                                     ; $7eba: $0a
	ld   a, [bc]                                     ; $7ebb: $0a
	add  c                                           ; $7ebc: $81
	jp   Jump_092_7e7e                               ; $7ebd: $c3 $7e $7e


	ld   sp, hl                                      ; $7ec0: $f9
	ld   l, a                                        ; $7ec1: $6f
	push hl                                          ; $7ec2: $e5
	rst  $38                                         ; $7ec3: $ff
	cp   $e7                                         ; $7ec4: $fe $e7
	ccf                                              ; $7ec6: $3f
	dec  sp                                          ; $7ec7: $3b
	rrca                                             ; $7ec8: $0f
	rrca                                             ; $7ec9: $0f
	add  a                                           ; $7eca: $87
	add  [hl]                                        ; $7ecb: $86
	inc  bc                                          ; $7ecc: $03
	add  e                                           ; $7ecd: $83
	add  c                                           ; $7ece: $81
	add  c                                           ; $7ecf: $81
	ld   b, c                                        ; $7ed0: $41
	ld   b, b                                        ; $7ed1: $40
	ld   b, e                                        ; $7ed2: $43
	ld   b, b                                        ; $7ed3: $40
	rst  $38                                         ; $7ed4: $ff
	rst  $38                                         ; $7ed5: $ff
	rst  $20                                         ; $7ed6: $e7
	ld   h, c                                        ; $7ed7: $61
	rst  $38                                         ; $7ed8: $ff
	ld   e, c                                        ; $7ed9: $59
	sbc  a                                           ; $7eda: $9f
	add  c                                           ; $7edb: $81
	ld   e, a                                        ; $7edc: $5f
	ld   d, b                                        ; $7edd: $50
	ld   l, a                                        ; $7ede: $6f
	ld   h, b                                        ; $7edf: $60
	ld   a, [$777a]                                  ; $7ee0: $fa $7a $77
	ld   [hl+], a                                    ; $7ee3: $22
	dec  de                                          ; $7ee4: $1b
	ld   d, $1e                                      ; $7ee5: $16 $1e
	ld   a, [de]                                     ; $7ee7: $1a
	ld   d, d                                        ; $7ee8: $52
	ld   d, d                                        ; $7ee9: $52
	sub  c                                           ; $7eea: $91
	sub  c                                           ; $7eeb: $91
	ld   d, b                                        ; $7eec: $50
	ld   d, b                                        ; $7eed: $50
	jr   nz, jr_092_7f10                             ; $7eee: $20 $20

	ret  nz                                          ; $7ef0: $c0

	ret  nz                                          ; $7ef1: $c0

	ld   b, b                                        ; $7ef2: $40
	ldh  [$f0], a                                    ; $7ef3: $e0 $f0
	ldh  a, [$c8]                                    ; $7ef5: $f0 $c8
	db   $fc                                         ; $7ef7: $fc
	ld   b, [hl]                                     ; $7ef8: $46
	rst  $38                                         ; $7ef9: $ff
	ld   c, a                                        ; $7efa: $4f
	rst  $38                                         ; $7efb: $ff
	ldh  a, [rIE]                                    ; $7efc: $f0 $ff
	ldh  [rIE], a                                    ; $7efe: $e0 $ff
	adc  e                                           ; $7f00: $8b
	ld   [$0081], sp                                 ; $7f01: $08 $81 $00
	ld   bc, $3e00                                   ; $7f04: $01 $00 $3e
	inc  a                                           ; $7f07: $3c
	rst  $20                                         ; $7f08: $e7
	and  $8d                                         ; $7f09: $e6 $8d
	adc  l                                           ; $7f0b: $8d
	nop                                              ; $7f0c: $00
	inc  c                                           ; $7f0d: $0c
	add  c                                           ; $7f0e: $81
	add  c                                           ; $7f0f: $81

jr_092_7f10:
	cp   a                                           ; $7f10: $bf
	pop  hl                                          ; $7f11: $e1
	rst  $38                                         ; $7f12: $ff
	ld   c, a                                        ; $7f13: $4f
	or   $78                                         ; $7f14: $f6 $78
	ld   hl, sp+$40                                  ; $7f16: $f8 $40
	rst  $30                                         ; $7f18: $f7
	ld   b, e                                        ; $7f19: $43
	db   $fd                                         ; $7f1a: $fd
	ld   a, a                                        ; $7f1b: $7f
	adc  e                                           ; $7f1c: $8b
	adc  e                                           ; $7f1d: $8b
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	ld   sp, hl                                      ; $7f20: $f9
	ld   l, a                                        ; $7f21: $6f
	push hl                                          ; $7f22: $e5
	rst  $38                                         ; $7f23: $ff
	ld   c, $07                                      ; $7f24: $0e $07
	rlca                                             ; $7f26: $07
	inc  bc                                          ; $7f27: $03
	di                                               ; $7f28: $f3
	di                                               ; $7f29: $f3
	sbc  c                                           ; $7f2a: $99
	sbc  b                                           ; $7f2b: $98
	inc  c                                           ; $7f2c: $0c
	adc  h                                           ; $7f2d: $8c
	add  a                                           ; $7f2e: $87
	add  [hl]                                        ; $7f2f: $86
	ld   b, e                                        ; $7f30: $43
	ld   b, e                                        ; $7f31: $43
	ld   b, e                                        ; $7f32: $43
	ld   b, c                                        ; $7f33: $41
	rst  $38                                         ; $7f34: $ff
	rst  $38                                         ; $7f35: $ff
	rst  $20                                         ; $7f36: $e7
	ld   h, c                                        ; $7f37: $61
	rst  $38                                         ; $7f38: $ff
	ld   e, c                                        ; $7f39: $59
	sbc  a                                           ; $7f3a: $9f
	add  c                                           ; $7f3b: $81
	ld   e, a                                        ; $7f3c: $5f
	ld   d, b                                        ; $7f3d: $50
	ld   l, a                                        ; $7f3e: $6f
	ld   h, b                                        ; $7f3f: $60
	adc  e                                           ; $7f40: $8b
	ld   [$0081], sp                                 ; $7f41: $08 $81 $00
	ld   bc, $0000                                   ; $7f44: $01 $00 $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	ret  nz                                          ; $7f4c: $c0

	add  b                                           ; $7f4d: $80
	db   $fd                                         ; $7f4e: $fd
	db   $fd                                         ; $7f4f: $fd
	cp   a                                           ; $7f50: $bf
	pop  hl                                          ; $7f51: $e1
	rst  $38                                         ; $7f52: $ff
	ld   c, a                                        ; $7f53: $4f
	or   $78                                         ; $7f54: $f6 $78
	ld   hl, sp+$40                                  ; $7f56: $f8 $40
	ldh  a, [rLCDC]                                  ; $7f58: $f0 $40
	ld   a, h                                        ; $7f5a: $7c
	ld   a, [hl]                                     ; $7f5b: $7e
	add  e                                           ; $7f5c: $83
	add  e                                           ; $7f5d: $83
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	ld   c, $06                                      ; $7f60: $0e $06
	add  a                                           ; $7f62: $87
	rlca                                             ; $7f63: $07
	rst  $20                                         ; $7f64: $e7
	ld   hl, $50f1                                   ; $7f65: $21 $f1 $50
	dec  b                                           ; $7f68: $05
	dec  b                                           ; $7f69: $05
	ld   a, [bc]                                     ; $7f6a: $0a
	ld   a, [bc]                                     ; $7f6b: $0a
	add  c                                           ; $7f6c: $81
	jp   Jump_092_7e7e                               ; $7f6d: $c3 $7e $7e


	ld   sp, hl                                      ; $7f70: $f9
	ld   l, a                                        ; $7f71: $6f
	push hl                                          ; $7f72: $e5
	rst  $38                                         ; $7f73: $ff
	ld   c, $07                                      ; $7f74: $0e $07
	rlca                                             ; $7f76: $07
	inc  bc                                          ; $7f77: $03
	inc  bc                                          ; $7f78: $03
	inc  bc                                          ; $7f79: $03
	ld   bc, $0000                                   ; $7f7a: $01 $00 $00
	add  b                                           ; $7f7d: $80
	add  c                                           ; $7f7e: $81
	add  b                                           ; $7f7f: $80
	ld   b, c                                        ; $7f80: $41
	ld   b, c                                        ; $7f81: $41
	rst  ToBoot                                         ; $7f82: $c7
	pop  bc                                          ; $7f83: $c1
	rst  $38                                         ; $7f84: $ff
	rst  $38                                         ; $7f85: $ff
	rst  $38                                         ; $7f86: $ff
	ld   a, l                                        ; $7f87: $7d
	rst  $38                                         ; $7f88: $ff
	ld   e, c                                        ; $7f89: $59
	sbc  a                                           ; $7f8a: $9f
	add  c                                           ; $7f8b: $81
	ld   e, a                                        ; $7f8c: $5f
	ld   d, b                                        ; $7f8d: $50
	ld   l, a                                        ; $7f8e: $6f
	ld   h, b                                        ; $7f8f: $60
	call z, Call_092_44cf                            ; $7f90: $cc $cf $44
	ldh  [c], a                                      ; $7f93: $e2
	pop  af                                          ; $7f94: $f1
	pop  af                                          ; $7f95: $f1
	ret  z                                           ; $7f96: $c8

	db   $fc                                         ; $7f97: $fc
	ld   b, [hl]                                     ; $7f98: $46
	rst  $38                                         ; $7f99: $ff
	ld   c, a                                        ; $7f9a: $4f
	rst  $38                                         ; $7f9b: $ff
	ldh  a, [rIE]                                    ; $7f9c: $f0 $ff
	ldh  [rIE], a                                    ; $7f9e: $e0 $ff
	ccf                                              ; $7fa0: $3f
	rst  $38                                         ; $7fa1: $ff
	ld   a, a                                        ; $7fa2: $7f
	rst  $38                                         ; $7fa3: $ff
	ldh  [$e0], a                                    ; $7fa4: $e0 $e0
	add  b                                           ; $7fa6: $80
	add  b                                           ; $7fa7: $80
	inc  bc                                          ; $7fa8: $03
	inc  bc                                          ; $7fa9: $03
	ld   c, $0e                                      ; $7faa: $0e $0e
	jr   @+$1a                                       ; $7fac: $18 $18

	db   $10                                         ; $7fae: $10
	db   $10                                         ; $7faf: $10
	ld   h, b                                        ; $7fb0: $60
	ret  nz                                          ; $7fb1: $c0

	ld   b, b                                        ; $7fb2: $40
	ld   b, b                                        ; $7fb3: $40
	ret  nz                                          ; $7fb4: $c0

	add  b                                           ; $7fb5: $80
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	adc  a                                           ; $7fb8: $8f
	inc  bc                                          ; $7fb9: $03
	rst  $38                                         ; $7fba: $ff
	db   $fc                                         ; $7fbb: $fc
	rst  $38                                         ; $7fbc: $ff
	ld   hl, sp-$01                                  ; $7fbd: $f8 $ff
	db   $ec                                         ; $7fbf: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc0: $cf
	call z, $9e9f                                    ; $7fc1: $cc $9f $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc4: $cf
	adc  $f7                                         ; $7fc5: $ce $f7
	rst  $30                                         ; $7fc7: $f7
	sub  a                                           ; $7fc8: $97
	sub  a                                           ; $7fc9: $97
	rla                                              ; $7fca: $17
	rla                                              ; $7fcb: $17
	rra                                              ; $7fcc: $1f
	rra                                              ; $7fcd: $1f
	inc  b                                           ; $7fce: $04
	inc  b                                           ; $7fcf: $04
	ret  nz                                          ; $7fd0: $c0

	ret  nz                                          ; $7fd1: $c0

	ld   c, h                                        ; $7fd2: $4c
	rst  $28                                         ; $7fd3: $ef
	ldh  a, [$f0]                                    ; $7fd4: $f0 $f0
	ret  z                                           ; $7fd6: $c8

	db   $fc                                         ; $7fd7: $fc
	ld   b, [hl]                                     ; $7fd8: $46
	rst  $38                                         ; $7fd9: $ff
	ld   c, a                                        ; $7fda: $4f
	rst  $38                                         ; $7fdb: $ff
	ldh  a, [rIE]                                    ; $7fdc: $f0 $ff
	ldh  [rIE], a                                    ; $7fde: $e0 $ff
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	ret  nz                                          ; $7fe2: $c0

	ret  nz                                          ; $7fe3: $c0

	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	adc  a                                           ; $7fe8: $8f
	inc  bc                                          ; $7fe9: $03
	rst  $38                                         ; $7fea: $ff
	db   $fc                                         ; $7feb: $fc
	rst  $38                                         ; $7fec: $ff
	ld   hl, sp-$01                                  ; $7fed: $f8 $ff
	db   $ec                                         ; $7fef: $ec
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
