; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	ld   bc, $0101                                   ; $4006: $01 $01 $01
	ld   bc, $0101                                   ; $4009: $01 $01 $01
	inc  bc                                          ; $400c: $03
	ld   [bc], a                                     ; $400d: $02
	inc  bc                                          ; $400e: $03
	ld   [bc], a                                     ; $400f: $02
	inc  bc                                          ; $4010: $03
	ld   [bc], a                                     ; $4011: $02
	inc  bc                                          ; $4012: $03
	ld   [bc], a                                     ; $4013: $02
	inc  bc                                          ; $4014: $03
	ld   [bc], a                                     ; $4015: $02
	inc  bc                                          ; $4016: $03
	ld   [bc], a                                     ; $4017: $02
	inc  bc                                          ; $4018: $03
	ld   [bc], a                                     ; $4019: $02
	inc  bc                                          ; $401a: $03
	ld   [bc], a                                     ; $401b: $02
	ld   bc, $0001                                   ; $401c: $01 $01 $00
	nop                                              ; $401f: $00
	ld   e, $1e                                      ; $4020: $1e $1e
	ld   a, a                                        ; $4022: $7f
	ld   h, c                                        ; $4023: $61
	rst  $38                                         ; $4024: $ff
	add  b                                           ; $4025: $80
	rst  $38                                         ; $4026: $ff
	nop                                              ; $4027: $00
	rst  $38                                         ; $4028: $ff
	nop                                              ; $4029: $00
	rst  $38                                         ; $402a: $ff
	nop                                              ; $402b: $00
	rst  $38                                         ; $402c: $ff
	nop                                              ; $402d: $00
	rst  $38                                         ; $402e: $ff
	nop                                              ; $402f: $00
	rst  $38                                         ; $4030: $ff
	nop                                              ; $4031: $00
	rst  $38                                         ; $4032: $ff
	nop                                              ; $4033: $00
	rst  $38                                         ; $4034: $ff
	nop                                              ; $4035: $00
	rst  $38                                         ; $4036: $ff
	jr   nz, @+$01                                   ; $4037: $20 $ff

	jr   nc, @+$01                                   ; $4039: $30 $ff

	ld   a, b                                        ; $403b: $78
	and  a                                           ; $403c: $a7
	cp   [hl]                                        ; $403d: $be
	rst  ToBoot                                         ; $403e: $c7
	rst  $38                                         ; $403f: $ff
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	ret  nz                                          ; $4042: $c0

	ret  nz                                          ; $4043: $c0

	ldh  a, [$30]                                    ; $4044: $f0 $30
	ldh  a, [rAUD1SWEEP]                             ; $4046: $f0 $10
	ld   hl, sp+$08                                  ; $4048: $f8 $08
	ld   hl, sp+$08                                  ; $404a: $f8 $08
	ld   hl, sp+$08                                  ; $404c: $f8 $08
	ld   hl, sp+$38                                  ; $404e: $f8 $38
	ldh  a, [rSVBK]                                  ; $4050: $f0 $70
	ret  nc                                          ; $4052: $d0

	ld   [hl], b                                     ; $4053: $70
	ret  nc                                          ; $4054: $d0

	ld   [hl], b                                     ; $4055: $70
	ret  nc                                          ; $4056: $d0

	ld   [hl], b                                     ; $4057: $70
	ret  nc                                          ; $4058: $d0

	ld   [hl], b                                     ; $4059: $70
	ret  nc                                          ; $405a: $d0

	ld   [hl], b                                     ; $405b: $70
	ldh  [$60], a                                    ; $405c: $e0 $60
	ret  nz                                          ; $405e: $c0

	ret  nz                                          ; $405f: $c0

	ld   bc, $0701                                   ; $4060: $01 $01 $07
	rlca                                             ; $4063: $07
	ld   b, $07                                      ; $4064: $06 $07
	rlca                                             ; $4066: $07
	rlca                                             ; $4067: $07
	rrca                                             ; $4068: $0f
	ld   [$e8ef], sp                                 ; $4069: $08 $ef $e8
	rst  $38                                         ; $406c: $ff
	sbc  b                                           ; $406d: $98
	ld   a, a                                        ; $406e: $7f
	ld   h, [hl]                                     ; $406f: $66
	rra                                              ; $4070: $1f
	add  hl, de                                      ; $4071: $19
	rlca                                             ; $4072: $07
	ld   b, $07                                      ; $4073: $06 $07
	rlca                                             ; $4075: $07
	ld   [bc], a                                     ; $4076: $02
	inc  bc                                          ; $4077: $03
	inc  b                                           ; $4078: $04
	rlca                                             ; $4079: $07
	inc  b                                           ; $407a: $04
	rlca                                             ; $407b: $07
	rlca                                             ; $407c: $07
	inc  b                                           ; $407d: $04
	inc  b                                           ; $407e: $04
	rlca                                             ; $407f: $07
	rst  $38                                         ; $4080: $ff
	add  b                                           ; $4081: $80
	rst  $38                                         ; $4082: $ff
	db   $fc                                         ; $4083: $fc
	rlca                                             ; $4084: $07
	rst  $38                                         ; $4085: $ff
	cp   a                                           ; $4086: $bf
	ld   hl, sp-$01                                  ; $4087: $f8 $ff
	ld   d, b                                        ; $4089: $50
	rst  $38                                         ; $408a: $ff
	ld   d, b                                        ; $408b: $50
	rst  $38                                         ; $408c: $ff
	ld   [hl], b                                     ; $408d: $70
	rst  $38                                         ; $408e: $ff
	ld   [hl], b                                     ; $408f: $70
	rst  $28                                         ; $4090: $ef
	ld   sp, hl                                      ; $4091: $f9
	rst  $38                                         ; $4092: $ff
	add  hl, sp                                      ; $4093: $39
	rst  $38                                         ; $4094: $ff
	adc  a                                           ; $4095: $8f
	rst  $38                                         ; $4096: $ff
	di                                               ; $4097: $f3
	ld   a, a                                        ; $4098: $7f
	db   $fc                                         ; $4099: $fc
	ld   h, e                                        ; $409a: $63
	rst  $38                                         ; $409b: $ff
	ld   b, d                                        ; $409c: $42
	rst  $38                                         ; $409d: $ff
	ld   b, d                                        ; $409e: $42
	rst  $38                                         ; $409f: $ff
	ret  nz                                          ; $40a0: $c0

	ret  nz                                          ; $40a1: $c0

	ret  nz                                          ; $40a2: $c0

	ld   b, b                                        ; $40a3: $40
	ldh  a, [$b0]                                    ; $40a4: $f0 $b0
	ldh  a, [$f0]                                    ; $40a6: $f0 $f0
	sub  b                                           ; $40a8: $90
	ldh  a, [$90]                                    ; $40a9: $f0 $90
	ldh  a, [$90]                                    ; $40ab: $f0 $90
	ldh  a, [$90]                                    ; $40ad: $f0 $90
	ldh  a, [rAUD1SWEEP]                             ; $40af: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $40b1: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $40b3: $f0 $10
	ldh  a, [$b0]                                    ; $40b5: $f0 $b0
	ldh  a, [$f8]                                    ; $40b7: $f0 $f8
	ld   c, b                                        ; $40b9: $48
	db   $fc                                         ; $40ba: $fc
	adc  h                                           ; $40bb: $8c
	rst  $38                                         ; $40bc: $ff
	adc  a                                           ; $40bd: $8f
	ld   a, a                                        ; $40be: $7f
	ld   hl, sp+$0f                                  ; $40bf: $f8 $0f
	ld   [$0b0c], sp                                 ; $40c1: $08 $0c $0b
	rlca                                             ; $40c4: $07
	rlca                                             ; $40c5: $07
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	ld   bc, $0301                                   ; $40ca: $01 $01 $03
	ld   [bc], a                                     ; $40cd: $02
	inc  bc                                          ; $40ce: $03
	inc  bc                                          ; $40cf: $03
	nop                                              ; $40d0: $00
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	ld   b, d                                        ; $40e0: $42
	rst  $38                                         ; $40e1: $ff
	jp   nz, Jump_028_56ff                           ; $40e2: $c2 $ff $56

	db   $eb                                         ; $40e5: $eb
	or   a                                           ; $40e6: $b7
	ret                                              ; $40e7: $c9


	adc  b                                           ; $40e8: $88
	rst  $30                                         ; $40e9: $f7
	or   l                                           ; $40ea: $b5
	set  7, a                                        ; $40eb: $cb $ff
	ld   a, a                                        ; $40ed: $7f
	ldh  [$e0], a                                    ; $40ee: $e0 $e0
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	nop                                              ; $40f2: $00
	nop                                              ; $40f3: $00
	nop                                              ; $40f4: $00
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	nop                                              ; $40f9: $00
	nop                                              ; $40fa: $00
	nop                                              ; $40fb: $00
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	and  a                                           ; $4100: $a7
	ld   h, a                                        ; $4101: $67
	ldh  [$60], a                                    ; $4102: $e0 $60
	ld   h, b                                        ; $4104: $60
	ldh  [$e0], a                                    ; $4105: $e0 $e0
	ldh  [$e0], a                                    ; $4107: $e0 $e0
	ldh  [$e0], a                                    ; $4109: $e0 $e0
	ldh  [$f0], a                                    ; $410b: $e0 $f0
	ldh  a, [$f8]                                    ; $410d: $f0 $f8
	ld   hl, sp+$00                                  ; $410f: $f8 $00
	nop                                              ; $4111: $00
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	nop                                              ; $4124: $00
	nop                                              ; $4125: $00
	nop                                              ; $4126: $00
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	nop                                              ; $4129: $00
	nop                                              ; $412a: $00
	nop                                              ; $412b: $00
	nop                                              ; $412c: $00
	nop                                              ; $412d: $00
	ret  nz                                          ; $412e: $c0

	ret  nz                                          ; $412f: $c0

	ldh  a, [$30]                                    ; $4130: $f0 $30
	rst  $38                                         ; $4132: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4133: $cf
	ccf                                              ; $4134: $3f
	jr   c, jr_028_413e                              ; $4135: $38 $07

	inc  b                                           ; $4137: $04
	inc  bc                                          ; $4138: $03
	inc  bc                                          ; $4139: $03
	nop                                              ; $413a: $00
	nop                                              ; $413b: $00
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00

jr_028_413e:
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	nop                                              ; $4144: $00
	nop                                              ; $4145: $00
	nop                                              ; $4146: $00
	nop                                              ; $4147: $00
	nop                                              ; $4148: $00
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	nop                                              ; $414b: $00
	nop                                              ; $414c: $00
	nop                                              ; $414d: $00
	nop                                              ; $414e: $00
	nop                                              ; $414f: $00
	nop                                              ; $4150: $00
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	ld   hl, sp-$08                                  ; $4154: $f8 $f8
	ldh  a, [$30]                                    ; $4156: $f0 $30
	ret  nz                                          ; $4158: $c0

	ret  nz                                          ; $4159: $c0

	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	ld   bc, $0301                                   ; $4162: $01 $01 $03
	ld   [bc], a                                     ; $4165: $02
	rlca                                             ; $4166: $07
	inc  b                                           ; $4167: $04
	rlca                                             ; $4168: $07
	inc  b                                           ; $4169: $04
	rlca                                             ; $416a: $07
	inc  b                                           ; $416b: $04
	rrca                                             ; $416c: $0f
	ld   [$080f], sp                                 ; $416d: $08 $0f $08
	rrca                                             ; $4170: $0f
	ld   [$080f], sp                                 ; $4171: $08 $0f $08
	rrca                                             ; $4174: $0f
	ld   [$0407], sp                                 ; $4175: $08 $07 $04
	rlca                                             ; $4178: $07
	inc  b                                           ; $4179: $04
	inc  bc                                          ; $417a: $03
	inc  bc                                          ; $417b: $03
	ld   bc, $0201                                   ; $417c: $01 $01 $02
	inc  bc                                          ; $417f: $03
	ld   a, b                                        ; $4180: $78
	ld   a, b                                        ; $4181: $78
	rst  $38                                         ; $4182: $ff
	add  a                                           ; $4183: $87
	rst  $38                                         ; $4184: $ff
	nop                                              ; $4185: $00
	ldh  [$1f], a                                    ; $4186: $e0 $1f
	ret  nz                                          ; $4188: $c0

	ccf                                              ; $4189: $3f
	sbc  a                                           ; $418a: $9f
	ld   h, b                                        ; $418b: $60
	cp   a                                           ; $418c: $bf
	ld   b, b                                        ; $418d: $40
	db   $fd                                         ; $418e: $fd
	ld   c, [hl]                                     ; $418f: $4e
	cp   $5f                                         ; $4190: $fe $5f
	db   $f4                                         ; $4192: $f4
	ccf                                              ; $4193: $3f
	db   $ec                                         ; $4194: $ec
	cp   a                                           ; $4195: $bf
	ldh  a, [$9f]                                    ; $4196: $f0 $9f
	ld   hl, sp-$31                                  ; $4198: $f8 $cf
	ld   a, h                                        ; $419a: $7c
	rst  ToBoot                                         ; $419b: $c7
	ld   a, $f1                                      ; $419c: $3e $f1
	rrca                                             ; $419e: $0f
	rst  $38                                         ; $419f: $ff
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	ret  nz                                          ; $41a4: $c0

	ret  nz                                          ; $41a5: $c0

	ld   h, b                                        ; $41a6: $60
	ldh  [rSVBK], a                                  ; $41a7: $e0 $70
	sub  b                                           ; $41a9: $90
	ld   hl, sp-$38                                  ; $41aa: $f8 $c8
	ld   hl, sp+$28                                  ; $41ac: $f8 $28
	db   $f4                                         ; $41ae: $f4
	inc  d                                           ; $41af: $14
	db   $f4                                         ; $41b0: $f4
	call nc, $b0b0                                   ; $41b1: $d4 $b0 $b0
	sub  b                                           ; $41b4: $90
	sub  b                                           ; $41b5: $90
	ld   b, b                                        ; $41b6: $40
	ret  nz                                          ; $41b7: $c0

	ld   b, c                                        ; $41b8: $41
	pop  bc                                          ; $41b9: $c1
	ld   b, d                                        ; $41ba: $42
	jp   $8785                                       ; $41bb: $c3 $85 $87


	ld   a, [bc]                                     ; $41be: $0a
	ld   c, $07                                      ; $41bf: $0e $07
	rlca                                             ; $41c1: $07
	inc  b                                           ; $41c2: $04
	rlca                                             ; $41c3: $07
	rlca                                             ; $41c4: $07
	rlca                                             ; $41c5: $07
	rrca                                             ; $41c6: $0f
	ld   [$080f], sp                                 ; $41c7: $08 $0f $08
	rra                                              ; $41ca: $1f
	jr   jr_028_41dc                                 ; $41cb: $18 $0f

	inc  c                                           ; $41cd: $0c
	rlca                                             ; $41ce: $07
	dec  b                                           ; $41cf: $05
	rlca                                             ; $41d0: $07
	rlca                                             ; $41d1: $07
	rlca                                             ; $41d2: $07
	ld   b, $03                                      ; $41d3: $06 $03
	ld   [bc], a                                     ; $41d5: $02
	inc  bc                                          ; $41d6: $03
	inc  bc                                          ; $41d7: $03
	inc  b                                           ; $41d8: $04
	rlca                                             ; $41d9: $07
	ld   b, $05                                      ; $41da: $06 $05

jr_028_41dc:
	ld   b, $05                                      ; $41dc: $06 $05
	dec  b                                           ; $41de: $05
	rlca                                             ; $41df: $07
	rst  $38                                         ; $41e0: $ff
	ldh  a, [rIF]                                    ; $41e1: $f0 $0f
	rst  $38                                         ; $41e3: $ff
	push bc                                          ; $41e4: $c5
	rst  $38                                         ; $41e5: $ff
	jp   hl                                          ; $41e6: $e9


	ccf                                              ; $41e7: $3f
	db   $fd                                         ; $41e8: $fd
	ld   a, a                                        ; $41e9: $7f
	rst  $38                                         ; $41ea: $ff
	ld   b, [hl]                                     ; $41eb: $46
	rst  $38                                         ; $41ec: $ff
	push bc                                          ; $41ed: $c5
	rst  $38                                         ; $41ee: $ff
	db   $fd                                         ; $41ef: $fd
	xor  $bb                                         ; $41f0: $ee $bb

jr_028_41f2:
	db   $fc                                         ; $41f2: $fc
	rst  $30                                         ; $41f3: $f7

jr_028_41f4:
	db   $fc                                         ; $41f4: $fc
	rst  $28                                         ; $41f5: $ef
	ldh  a, [c]                                      ; $41f6: $f2
	rst  JumpTable                                         ; $41f7: $df
	pop  hl                                          ; $41f8: $e1
	rst  $38                                         ; $41f9: $ff
	pop  hl                                          ; $41fa: $e1
	rst  $38                                         ; $41fb: $ff
	db   $e3                                         ; $41fc: $e3
	rst  $38                                         ; $41fd: $ff
	db   $f4                                         ; $41fe: $f4
	rst  $38                                         ; $41ff: $ff
	db   $fc                                         ; $4200: $fc
	db   $fc                                         ; $4201: $fc
	db   $fc                                         ; $4202: $fc
	adc  h                                           ; $4203: $8c
	ld   hl, sp+$08                                  ; $4204: $f8 $08
	ld   hl, sp-$78                                  ; $4206: $f8 $88
	ldh  a, [$50]                                    ; $4208: $f0 $50
	ldh  [$e0], a                                    ; $420a: $e0 $e0
	ret  nz                                          ; $420c: $c0

	ret  nz                                          ; $420d: $c0

	ld   b, b                                        ; $420e: $40
	ret  nz                                          ; $420f: $c0

	jr   nz, jr_028_41f2                             ; $4210: $20 $e0

	jr   nz, jr_028_41f4                             ; $4212: $20 $e0

	ld   [hl], b                                     ; $4214: $70
	sub  b                                           ; $4215: $90
	ld   e, h                                        ; $4216: $5c
	xor  h                                           ; $4217: $ac
	ld   [hl-], a                                    ; $4218: $32
	adc  $c3                                         ; $4219: $ce $c3
	rst  $38                                         ; $421b: $ff
	cp   $fe                                         ; $421c: $fe $fe
	ld   b, b                                        ; $421e: $40
	ret  nz                                          ; $421f: $c0

	add  hl, bc                                      ; $4220: $09
	rrca                                             ; $4221: $0f
	ld   [$070f], sp                                 ; $4222: $08 $0f $07
	rlca                                             ; $4225: $07
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	nop                                              ; $4228: $00
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	nop                                              ; $422b: $00
	nop                                              ; $422c: $00
	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	nop                                              ; $422f: $00
	nop                                              ; $4230: $00
	nop                                              ; $4231: $00
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	nop                                              ; $4236: $00
	nop                                              ; $4237: $00
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	ld   d, [hl]                                     ; $4240: $56
	db   $dd                                         ; $4241: $dd

jr_028_4242:
	sbc  h                                           ; $4242: $9c
	sbc  e                                           ; $4243: $9b
	ld   e, $11                                      ; $4244: $1e $11
	jr   nz, jr_028_4287                             ; $4246: $20 $3f

	inc  a                                           ; $4248: $3c
	ccf                                              ; $4249: $3f
	ccf                                              ; $424a: $3f
	inc  hl                                          ; $424b: $23
	rra                                              ; $424c: $1f
	inc  e                                           ; $424d: $1c
	rlca                                             ; $424e: $07
	rlca                                             ; $424f: $07
	nop                                              ; $4250: $00
	nop                                              ; $4251: $00
	nop                                              ; $4252: $00
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	jr   nz, jr_028_4242                             ; $4260: $20 $e0

	db   $10                                         ; $4262: $10
	ldh  a, [rOBP0]                                  ; $4263: $f0 $48
	ld   hl, sp-$78                                  ; $4265: $f8 $88
	ld   hl, sp-$08                                  ; $4267: $f8 $f8
	ld   hl, sp-$40                                  ; $4269: $f8 $c0
	ret  nz                                          ; $426b: $c0

	ret  nz                                          ; $426c: $c0

	ld   b, b                                        ; $426d: $40
	ret  nz                                          ; $426e: $c0

	ret  nz                                          ; $426f: $c0

	nop                                              ; $4270: $00
	nop                                              ; $4271: $00
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	nop                                              ; $4274: $00
	nop                                              ; $4275: $00
	nop                                              ; $4276: $00
	nop                                              ; $4277: $00
	nop                                              ; $4278: $00
	nop                                              ; $4279: $00
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	nop                                              ; $4285: $00
	nop                                              ; $4286: $00

jr_028_4287:
	nop                                              ; $4287: $00
	ld   bc, $0301                                   ; $4288: $01 $01 $03
	ld   [bc], a                                     ; $428b: $02
	rlca                                             ; $428c: $07
	inc  b                                           ; $428d: $04
	rrca                                             ; $428e: $0f
	ld   [$101f], sp                                 ; $428f: $08 $1f $10
	ccf                                              ; $4292: $3f
	inc  l                                           ; $4293: $2c
	ld   [hl], c                                     ; $4294: $71
	ld   d, b                                        ; $4295: $50
	pop  hl                                          ; $4296: $e1
	and  b                                           ; $4297: $a0
	ret  nz                                          ; $4298: $c0

	ld   b, b                                        ; $4299: $40
	add  b                                           ; $429a: $80
	add  b                                           ; $429b: $80
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	db   $10                                         ; $42a0: $10
	db   $10                                         ; $42a1: $10
	jr   nc, jr_028_42d4                             ; $42a2: $30 $30

	ld   [hl], b                                     ; $42a4: $70
	ld   b, b                                        ; $42a5: $40
	ldh  a, [$80]                                    ; $42a6: $f0 $80
	ldh  a, [rP1]                                    ; $42a8: $f0 $00
	ldh  a, [rP1]                                    ; $42aa: $f0 $00
	ldh  a, [rP1]                                    ; $42ac: $f0 $00
	ldh  a, [rP1]                                    ; $42ae: $f0 $00
	ldh  a, [rP1]                                    ; $42b0: $f0 $00
	ldh  [rP1], a                                    ; $42b2: $e0 $00
	ldh  [rP1], a                                    ; $42b4: $e0 $00
	ldh  [rP1], a                                    ; $42b6: $e0 $00
	ldh  [rP1], a                                    ; $42b8: $e0 $00
	ret  nz                                          ; $42ba: $c0

	nop                                              ; $42bb: $00
	ret  nz                                          ; $42bc: $c0

	nop                                              ; $42bd: $00
	ret  nz                                          ; $42be: $c0

	nop                                              ; $42bf: $00
	ld   bc, $0100                                   ; $42c0: $01 $00 $01
	nop                                              ; $42c3: $00
	ld   bc, $0100                                   ; $42c4: $01 $00 $01
	nop                                              ; $42c7: $00
	inc  bc                                          ; $42c8: $03
	nop                                              ; $42c9: $00
	ld   [bc], a                                     ; $42ca: $02
	nop                                              ; $42cb: $00
	ld   [bc], a                                     ; $42cc: $02
	nop                                              ; $42cd: $00
	inc  b                                           ; $42ce: $04
	nop                                              ; $42cf: $00
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	nop                                              ; $42d3: $00

jr_028_42d4:
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	ret  nz                                          ; $42e0: $c0

	nop                                              ; $42e1: $00
	add  b                                           ; $42e2: $80
	nop                                              ; $42e3: $00
	add  b                                           ; $42e4: $80
	nop                                              ; $42e5: $00
	add  b                                           ; $42e6: $80
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	nop                                              ; $42f3: $00
	nop                                              ; $42f4: $00
	nop                                              ; $42f5: $00
	nop                                              ; $42f6: $00
	nop                                              ; $42f7: $00
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	nop                                              ; $4306: $00
	nop                                              ; $4307: $00
	ld   bc, $0301                                   ; $4308: $01 $01 $03
	nop                                              ; $430b: $00
	rlca                                             ; $430c: $07
	inc  b                                           ; $430d: $04
	rrca                                             ; $430e: $0f
	ld   [$131f], sp                                 ; $430f: $08 $1f $13
	inc  a                                           ; $4312: $3c
	inc  l                                           ; $4313: $2c
	ld   [hl], b                                     ; $4314: $70
	ld   d, b                                        ; $4315: $50
	ldh  [hScriptOpcodeParams], a                                    ; $4316: $e0 $a0
	ret  nz                                          ; $4318: $c0

	ld   b, b                                        ; $4319: $40
	add  b                                           ; $431a: $80
	add  b                                           ; $431b: $80
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	db   $10                                         ; $4320: $10
	db   $10                                         ; $4321: $10
	jr   nc, jr_028_4354                             ; $4322: $30 $30

	ld   [hl], b                                     ; $4324: $70
	ld   d, b                                        ; $4325: $50
	ldh  a, [$90]                                    ; $4326: $f0 $90
	ldh  [rAUD4LEN], a                               ; $4328: $e0 $20
	ldh  [rAUD4LEN], a                               ; $432a: $e0 $20
	ret  nz                                          ; $432c: $c0

	nop                                              ; $432d: $00
	ret  nz                                          ; $432e: $c0

	ld   b, b                                        ; $432f: $40
	add  b                                           ; $4330: $80
	add  b                                           ; $4331: $80
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	nop                                              ; $4338: $00
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	inc  bc                                          ; $4344: $03
	inc  bc                                          ; $4345: $03
	rlca                                             ; $4346: $07
	inc  b                                           ; $4347: $04
	rrca                                             ; $4348: $0f
	ld   [$101f], sp                                 ; $4349: $08 $1f $10
	ccf                                              ; $434c: $3f
	inc  h                                           ; $434d: $24
	scf                                              ; $434e: $37
	jr   nz, jr_028_43c0                             ; $434f: $20 $6f

	ld   c, b                                        ; $4351: $48
	ld   l, a                                        ; $4352: $6f
	ld   c, b                                        ; $4353: $48

jr_028_4354:
	ld   c, a                                        ; $4354: $4f
	ld   c, c                                        ; $4355: $49
	rrca                                             ; $4356: $0f
	add  hl, bc                                      ; $4357: $09
	rrca                                             ; $4358: $0f
	dec  bc                                          ; $4359: $0b
	rrca                                             ; $435a: $0f
	dec  bc                                          ; $435b: $0b
	rra                                              ; $435c: $1f
	inc  de                                          ; $435d: $13
	inc  e                                           ; $435e: $1c
	inc  d                                           ; $435f: $14
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
	ld   a, [hl]                                     ; $4362: $7e
	ld   a, [hl]                                     ; $4363: $7e
	rst  $38                                         ; $4364: $ff
	add  c                                           ; $4365: $81
	rst  $38                                         ; $4366: $ff
	nop                                              ; $4367: $00
	ldh  [$1f], a                                    ; $4368: $e0 $1f
	ret  nz                                          ; $436a: $c0

	ccf                                              ; $436b: $3f
	sbc  a                                           ; $436c: $9f
	ld   h, b                                        ; $436d: $60
	cp   a                                           ; $436e: $bf
	ld   b, b                                        ; $436f: $40
	rst  $38                                         ; $4370: $ff
	add  b                                           ; $4371: $80
	ei                                               ; $4372: $fb
	add  a                                           ; $4373: $87
	push bc                                          ; $4374: $c5
	ld   a, a                                        ; $4375: $7f
	db   $e3                                         ; $4376: $e3
	rst  $38                                         ; $4377: $ff
	ldh  [rIE], a                                    ; $4378: $e0 $ff
	pop  bc                                          ; $437a: $c1
	rst  $38                                         ; $437b: $ff
	rst  ToBoot                                         ; $437c: $c7
	db   $fc                                         ; $437d: $fc
	jr   nz, jr_028_43bf                             ; $437e: $20 $3f

	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	ret  nz                                          ; $4384: $c0

	ret  nz                                          ; $4385: $c0

	ldh  [rAUD4LEN], a                               ; $4386: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $4388: $f0 $10
	ld   [hl], b                                     ; $438a: $70
	sub  b                                           ; $438b: $90
	ld   hl, sp+$48                                  ; $438c: $f8 $48
	ld   hl, sp+$48                                  ; $438e: $f8 $48
	ld   hl, sp-$38                                  ; $4390: $f8 $c8
	ld   a, b                                        ; $4392: $78
	ret  z                                           ; $4393: $c8

	ld   a, b                                        ; $4394: $78
	ret  z                                           ; $4395: $c8

	ld   a, b                                        ; $4396: $78
	ret  z                                           ; $4397: $c8

	ld   hl, sp-$78                                  ; $4398: $f8 $88
	ldh  a, [rAUD1SWEEP]                             ; $439a: $f0 $10
	ldh  a, [$50]                                    ; $439c: $f0 $50
	ld   [hl], b                                     ; $439e: $70
	ret  nc                                          ; $439f: $d0

	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	db   $fc                                         ; $43a2: $fc
	ld   h, a                                        ; $43a3: $67
	rst  $38                                         ; $43a4: $ff
	cp   a                                           ; $43a5: $bf
	rst  $38                                         ; $43a6: $ff
	jr   nz, @+$01                                   ; $43a7: $20 $ff

	ccf                                              ; $43a9: $3f
	ret  z                                           ; $43aa: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ab: $cf
	db   $10                                         ; $43ac: $10
	rra                                              ; $43ad: $1f
	ld   a, b                                        ; $43ae: $78
	ld   h, a                                        ; $43af: $67
	and  b                                           ; $43b0: $a0
	rst  JumpTable                                         ; $43b1: $df
	ret  c                                           ; $43b2: $d8

	and  a                                           ; $43b3: $a7
	pop  de                                          ; $43b4: $d1
	xor  a                                           ; $43b5: $af
	add  d                                           ; $43b6: $82
	cp   $86                                         ; $43b7: $fe $86
	cp   $99                                         ; $43b9: $fe $99
	ld   sp, hl                                      ; $43bb: $f9
	ld   h, d                                        ; $43bc: $62
	ld   h, e                                        ; $43bd: $63
	inc  b                                           ; $43be: $04

jr_028_43bf:
	rlca                                             ; $43bf: $07

jr_028_43c0:
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	ld   a, a                                        ; $43c2: $7f
	xor  $ff                                         ; $43c3: $ee $ff
	ld   sp, hl                                      ; $43c5: $f9
	rst  $38                                         ; $43c6: $ff
	jr   c, @+$01                                    ; $43c7: $38 $ff

	db   $fc                                         ; $43c9: $fc
	rst  $30                                         ; $43ca: $f7
	rst  $38                                         ; $43cb: $ff
	ccf                                              ; $43cc: $3f
	db   $fc                                         ; $43cd: $fc
	ccf                                              ; $43ce: $3f
	ldh  [$7f], a                                    ; $43cf: $e0 $7f
	ldh  [$bf], a                                    ; $43d1: $e0 $bf
	xor  a                                           ; $43d3: $af
	ld   [hl-], a                                    ; $43d4: $32
	ccf                                              ; $43d5: $3f
	ld   l, a                                        ; $43d6: $6f
	ld   a, a                                        ; $43d7: $7f
	call nz, $0cff                                   ; $43d8: $c4 $ff $0c
	rst  $38                                         ; $43db: $ff
	inc  e                                           ; $43dc: $1c
	rst  $38                                         ; $43dd: $ff
	inc  a                                           ; $43de: $3c
	rst  $38                                         ; $43df: $ff
	sub  b                                           ; $43e0: $90
	ldh  a, [$e0]                                    ; $43e1: $f0 $e0
	ld   h, b                                        ; $43e3: $60
	and  b                                           ; $43e4: $a0
	ldh  [$fe], a                                    ; $43e5: $e0 $fe
	cp   $fe                                         ; $43e7: $fe $fe
	add  d                                           ; $43e9: $82
	cp   $fe                                         ; $43ea: $fe $fe
	db   $f4                                         ; $43ec: $f4
	ld   a, h                                        ; $43ed: $7c
	db   $f4                                         ; $43ee: $f4
	inc  a                                           ; $43ef: $3c
	ldh  [c], a                                      ; $43f0: $e2
	ld   a, $e2                                      ; $43f1: $3e $e2
	cp   $12                                         ; $43f3: $fe $12
	cp   $f2                                         ; $43f5: $fe $f2
	cp   $19                                         ; $43f7: $fe $19
	rst  $38                                         ; $43f9: $ff
	add  hl, de                                      ; $43fa: $19
	rst  $38                                         ; $43fb: $ff
	dec  d                                           ; $43fc: $15
	rst  $30                                         ; $43fd: $f7
	dec  h                                           ; $43fe: $25
	rst  $20                                         ; $43ff: $e7

Call_028_4400:
	ld   [$100f], sp                                 ; $4400: $08 $0f $10
	rra                                              ; $4403: $1f
	inc  de                                          ; $4404: $13
	rra                                              ; $4405: $1f
	rra                                              ; $4406: $1f
	inc  e                                           ; $4407: $1c
	rrca                                             ; $4408: $0f
	ld   [$0f0f], sp                                 ; $4409: $08 $0f $0f
	rra                                              ; $440c: $1f
	dec  d                                           ; $440d: $15
	rra                                              ; $440e: $1f
	rra                                              ; $440f: $1f
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	nop                                              ; $4419: $00
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	ld   a, [hl]                                     ; $4420: $7e
	db   $dd                                         ; $4421: $dd
	ld   sp, hl                                      ; $4422: $f9
	sbc  [hl]                                        ; $4423: $9e

jr_028_4424:
	cp   $39                                         ; $4424: $fe $39
	ld   a, [$fc7d]                                  ; $4426: $fa $7d $fc
	rst  $38                                         ; $4429: $ff
	ld   a, a                                        ; $442a: $7f
	ld   a, a                                        ; $442b: $7f
	inc  bc                                          ; $442c: $03
	ld   [bc], a                                     ; $442d: $02
	inc  bc                                          ; $442e: $03
	inc  bc                                          ; $442f: $03
	nop                                              ; $4430: $00
	nop                                              ; $4431: $00
	nop                                              ; $4432: $00
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	nop                                              ; $4435: $00
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	db   $e3                                         ; $4440: $e3
	inc  hl                                          ; $4441: $23
	jr   nz, jr_028_4424                             ; $4442: $20 $e0

	ret  nz                                          ; $4444: $c0

	ld   b, b                                        ; $4445: $40
	ret  nz                                          ; $4446: $c0

	ld   b, b                                        ; $4447: $40
	add  b                                           ; $4448: $80
	add  b                                           ; $4449: $80
	add  b                                           ; $444a: $80
	add  b                                           ; $444b: $80
	ret  nz                                          ; $444c: $c0

	ld   b, b                                        ; $444d: $40
	ldh  [$e0], a                                    ; $444e: $e0 $e0
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	nop                                              ; $4458: $00
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	ld   bc, $0700                                   ; $4468: $01 $00 $07
	nop                                              ; $446b: $00
	rrca                                             ; $446c: $0f
	nop                                              ; $446d: $00
	rra                                              ; $446e: $1f
	nop                                              ; $446f: $00
	ccf                                              ; $4470: $3f
	nop                                              ; $4471: $00
	rrca                                             ; $4472: $0f
	dec  c                                           ; $4473: $0d
	inc  bc                                          ; $4474: $03
	ld   [bc], a                                     ; $4475: $02
	ld   bc, $0001                                   ; $4476: $01 $01 $00
	nop                                              ; $4479: $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	rrca                                             ; $4484: $0f
	nop                                              ; $4485: $00
	ld   a, a                                        ; $4486: $7f
	nop                                              ; $4487: $00
	rst  $38                                         ; $4488: $ff
	nop                                              ; $4489: $00
	cp   $00                                         ; $448a: $fe $00
	db   $fc                                         ; $448c: $fc
	nop                                              ; $448d: $00
	cp   $00                                         ; $448e: $fe $00
	db   $fc                                         ; $4490: $fc
	nop                                              ; $4491: $00
	rst  $38                                         ; $4492: $ff
	db   $e3                                         ; $4493: $e3
	rst  $38                                         ; $4494: $ff
	inc  e                                           ; $4495: $1c
	rst  $20                                         ; $4496: $e7
	rst  $20                                         ; $4497: $e7
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	rrca                                             ; $44a0: $0f
	nop                                              ; $44a1: $00
	rst  $38                                         ; $44a2: $ff
	nop                                              ; $44a3: $00
	cp   $00                                         ; $44a4: $fe $00
	ldh  a, [rP1]                                    ; $44a6: $f0 $00
	add  b                                           ; $44a8: $80
	nop                                              ; $44a9: $00
	nop                                              ; $44aa: $00
	nop                                              ; $44ab: $00
	nop                                              ; $44ac: $00
	nop                                              ; $44ad: $00
	nop                                              ; $44ae: $00
	nop                                              ; $44af: $00
	inc  bc                                          ; $44b0: $03
	inc  bc                                          ; $44b1: $03
	rst  $38                                         ; $44b2: $ff
	cp   $ff                                         ; $44b3: $fe $ff
	inc  bc                                          ; $44b5: $03
	rst  $38                                         ; $44b6: $ff
	cp   $07                                         ; $44b7: $fe $07
	inc  b                                           ; $44b9: $04
	inc  bc                                          ; $44ba: $03
	inc  bc                                          ; $44bb: $03
	nop                                              ; $44bc: $00
	nop                                              ; $44bd: $00
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	nop                                              ; $44c6: $00
	nop                                              ; $44c7: $00
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	inc  bc                                          ; $44d0: $03
	inc  bc                                          ; $44d1: $03
	rst  $38                                         ; $44d2: $ff
	cp   $ff                                         ; $44d3: $fe $ff
	inc  bc                                          ; $44d5: $03
	rst  $38                                         ; $44d6: $ff
	cp   $07                                         ; $44d7: $fe $07
	inc  b                                           ; $44d9: $04
	inc  bc                                          ; $44da: $03
	inc  bc                                          ; $44db: $03
	nop                                              ; $44dc: $00
	nop                                              ; $44dd: $00
	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	ld   bc, $0301                                   ; $44e6: $01 $01 $03
	ld   [bc], a                                     ; $44e9: $02
	rlca                                             ; $44ea: $07
	inc  b                                           ; $44eb: $04
	rlca                                             ; $44ec: $07
	inc  b                                           ; $44ed: $04
	rrca                                             ; $44ee: $0f
	inc  c                                           ; $44ef: $0c
	ccf                                              ; $44f0: $3f
	jr   c, jr_028_44fa                              ; $44f1: $38 $07

	nop                                              ; $44f3: $00
	rlca                                             ; $44f4: $07
	inc  b                                           ; $44f5: $04
	rlca                                             ; $44f6: $07
	inc  b                                           ; $44f7: $04
	rlca                                             ; $44f8: $07
	inc  b                                           ; $44f9: $04

jr_028_44fa:
	rlca                                             ; $44fa: $07
	inc  b                                           ; $44fb: $04
	rlca                                             ; $44fc: $07
	dec  b                                           ; $44fd: $05
	rrca                                             ; $44fe: $0f
	add  hl, bc                                      ; $44ff: $09
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
	ccf                                              ; $4502: $3f
	dec  a                                           ; $4503: $3d
	rst  $38                                         ; $4504: $ff
	ret  nz                                          ; $4505: $c0

	rst  $38                                         ; $4506: $ff
	nop                                              ; $4507: $00
	ldh  [$1f], a                                    ; $4508: $e0 $1f
	ret  nz                                          ; $450a: $c0

	ccf                                              ; $450b: $3f
	sbc  [hl]                                        ; $450c: $9e
	ld   h, c                                        ; $450d: $61
	cp   a                                           ; $450e: $bf
	ld   b, b                                        ; $450f: $40
	rst  $38                                         ; $4510: $ff
	add  c                                           ; $4511: $81
	ei                                               ; $4512: $fb
	add  a                                           ; $4513: $87
	push bc                                          ; $4514: $c5
	rst  $38                                         ; $4515: $ff
	db   $e3                                         ; $4516: $e3
	rst  $38                                         ; $4517: $ff
	ldh  [$7f], a                                    ; $4518: $e0 $7f
	ret  nz                                          ; $451a: $c0

	ld   a, a                                        ; $451b: $7f
	ret  nz                                          ; $451c: $c0

	ld   a, a                                        ; $451d: $7f
	pop  hl                                          ; $451e: $e1
	ld   a, a                                        ; $451f: $7f
	nop                                              ; $4520: $00
	nop                                              ; $4521: $00
	ret  nz                                          ; $4522: $c0

	ret  nz                                          ; $4523: $c0

	ldh  [rAUD4LEN], a                               ; $4524: $e0 $20
	ldh  [rAUD4LEN], a                               ; $4526: $e0 $20
	ld   [hl], b                                     ; $4528: $70
	sub  b                                           ; $4529: $90
	ld   [hl], b                                     ; $452a: $70
	ret  nc                                          ; $452b: $d0

	ld   a, b                                        ; $452c: $78
	ret  z                                           ; $452d: $c8

	ld   hl, sp+$48                                  ; $452e: $f8 $48
	ld   hl, sp+$48                                  ; $4530: $f8 $48
	ld   hl, sp-$38                                  ; $4532: $f8 $c8
	ld   a, b                                        ; $4534: $78
	ret  z                                           ; $4535: $c8

	ld   a, b                                        ; $4536: $78
	ret  z                                           ; $4537: $c8

	ld   a, b                                        ; $4538: $78
	ret  z                                           ; $4539: $c8

	ld   a, b                                        ; $453a: $78
	ret  z                                           ; $453b: $c8

	ld   hl, sp-$58                                  ; $453c: $f8 $a8
	ld   hl, sp-$58                                  ; $453e: $f8 $a8
	rst  $38                                         ; $4540: $ff
	rst  $38                                         ; $4541: $ff
	db   $fc                                         ; $4542: $fc
	ld   h, a                                        ; $4543: $67
	rst  $38                                         ; $4544: $ff
	cp   a                                           ; $4545: $bf
	rst  $38                                         ; $4546: $ff
	jr   nz, @+$01                                   ; $4547: $20 $ff

	ccf                                              ; $4549: $3f
	jp   nz, $04c3                                   ; $454a: $c2 $c3 $04

	rlca                                             ; $454d: $07
	inc  b                                           ; $454e: $04
	rlca                                             ; $454f: $07
	inc  b                                           ; $4550: $04
	rlca                                             ; $4551: $07
	inc  c                                           ; $4552: $0c
	dec  bc                                          ; $4553: $0b
	jr   c, jr_028_458d                              ; $4554: $38 $37

	or   $c9                                         ; $4556: $f6 $c9
	add  h                                           ; $4558: $84
	ei                                               ; $4559: $fb
	add  c                                           ; $455a: $81
	rst  $38                                         ; $455b: $ff
	adc  [hl]                                        ; $455c: $8e
	rst  $38                                         ; $455d: $ff
	db   $f4                                         ; $455e: $f4
	rst  $30                                         ; $455f: $f7
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	ld   a, a                                        ; $4562: $7f
	ldh  [rIE], a                                    ; $4563: $e0 $ff
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	ld   [bc], a                                     ; $4567: $02
	rst  $38                                         ; $4568: $ff
	cp   $e3                                         ; $4569: $fe $e3
	rst  $38                                         ; $456b: $ff
	rst  $38                                         ; $456c: $ff
	db   $fc                                         ; $456d: $fc
	rst  $38                                         ; $456e: $ff
	ldh  [$7f], a                                    ; $456f: $e0 $7f
	ldh  [$7f], a                                    ; $4571: $e0 $7f
	rst  $28                                         ; $4573: $ef
	ld   [hl-], a                                    ; $4574: $32
	rst  $38                                         ; $4575: $ff
	ld   l, a                                        ; $4576: $6f
	rst  $38                                         ; $4577: $ff
	call nz, $0cff                                   ; $4578: $c4 $ff $0c
	rst  $38                                         ; $457b: $ff
	inc  e                                           ; $457c: $1c
	rst  $38                                         ; $457d: $ff
	inc  a                                           ; $457e: $3c
	rst  $38                                         ; $457f: $ff
	sub  h                                           ; $4580: $94
	db   $f4                                         ; $4581: $f4
	ldh  a, [$f0]                                    ; $4582: $f0 $f0
	ldh  a, [rAUD1SWEEP]                             ; $4584: $f0 $10
	cp   $3e                                         ; $4586: $fe $3e
	cp   $22                                         ; $4588: $fe $22
	cp   $fe                                         ; $458a: $fe $fe
	db   $f4                                         ; $458c: $f4

jr_028_458d:
	ld   a, h                                        ; $458d: $7c
	db   $f4                                         ; $458e: $f4
	inc  a                                           ; $458f: $3c
	db   $e4                                         ; $4590: $e4
	inc  a                                           ; $4591: $3c
	db   $e4                                         ; $4592: $e4
	db   $fc                                         ; $4593: $fc
	inc  d                                           ; $4594: $14
	db   $fc                                         ; $4595: $fc
	db   $f4                                         ; $4596: $f4
	db   $fc                                         ; $4597: $fc
	ld   [de], a                                     ; $4598: $12
	cp   $13                                         ; $4599: $fe $13
	db   $fd                                         ; $459b: $fd
	inc  de                                          ; $459c: $13
	db   $fd                                         ; $459d: $fd
	add  hl, hl                                      ; $459e: $29
	rst  $28                                         ; $459f: $ef
	ld   [$100f], sp                                 ; $45a0: $08 $0f $10
	rra                                              ; $45a3: $1f
	inc  de                                          ; $45a4: $13
	rra                                              ; $45a5: $1f
	rra                                              ; $45a6: $1f
	inc  e                                           ; $45a7: $1c
	rrca                                             ; $45a8: $0f
	ld   [$0f0f], sp                                 ; $45a9: $08 $0f $0f
	rra                                              ; $45ac: $1f
	dec  d                                           ; $45ad: $15
	rra                                              ; $45ae: $1f
	rra                                              ; $45af: $1f
	nop                                              ; $45b0: $00
	nop                                              ; $45b1: $00
	nop                                              ; $45b2: $00
	nop                                              ; $45b3: $00
	nop                                              ; $45b4: $00
	nop                                              ; $45b5: $00
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	ld   a, [hl]                                     ; $45c0: $7e
	db   $dd                                         ; $45c1: $dd
	ld   sp, hl                                      ; $45c2: $f9
	sbc  [hl]                                        ; $45c3: $9e
	cp   $39                                         ; $45c4: $fe $39
	ld   a, [$fc7d]                                  ; $45c6: $fa $7d $fc
	rst  $38                                         ; $45c9: $ff
	ld   a, a                                        ; $45ca: $7f
	ld   a, a                                        ; $45cb: $7f
	inc  bc                                          ; $45cc: $03
	ld   [bc], a                                     ; $45cd: $02
	inc  bc                                          ; $45ce: $03
	inc  bc                                          ; $45cf: $03
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	nop                                              ; $45d2: $00
	nop                                              ; $45d3: $00
	nop                                              ; $45d4: $00
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	nop                                              ; $45d8: $00
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	nop                                              ; $45db: $00
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	jp   hl                                          ; $45e0: $e9


	cpl                                              ; $45e1: $2f
	dec  h                                           ; $45e2: $25
	rst  $20                                         ; $45e3: $e7
	jp   $c043                                       ; $45e4: $c3 $43 $c0


	ld   b, b                                        ; $45e7: $40
	add  b                                           ; $45e8: $80
	add  b                                           ; $45e9: $80
	add  b                                           ; $45ea: $80
	add  b                                           ; $45eb: $80
	ret  nz                                          ; $45ec: $c0

	ld   b, b                                        ; $45ed: $40
	ldh  [$e0], a                                    ; $45ee: $e0 $e0
	nop                                              ; $45f0: $00
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	nop                                              ; $45f4: $00
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	nop                                              ; $45fc: $00
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	rra                                              ; $4610: $1f
	rra                                              ; $4611: $1f
	rrca                                             ; $4612: $0f
	dec  c                                           ; $4613: $0d
	inc  bc                                          ; $4614: $03
	ld   [bc], a                                     ; $4615: $02
	ld   bc, $0001                                   ; $4616: $01 $01 $00
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	db   $fc                                         ; $4630: $fc
	db   $fc                                         ; $4631: $fc
	rst  $38                                         ; $4632: $ff
	db   $e3                                         ; $4633: $e3
	rst  $38                                         ; $4634: $ff
	inc  e                                           ; $4635: $1c
	rst  $20                                         ; $4636: $e7
	rst  $20                                         ; $4637: $e7
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	inc  bc                                          ; $4650: $03
	inc  bc                                          ; $4651: $03
	rst  $38                                         ; $4652: $ff
	cp   $ff                                         ; $4653: $fe $ff
	inc  bc                                          ; $4655: $03
	rst  $38                                         ; $4656: $ff
	cp   $07                                         ; $4657: $fe $07
	inc  b                                           ; $4659: $04
	inc  bc                                          ; $465a: $03
	inc  bc                                          ; $465b: $03
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	inc  bc                                          ; $4664: $03
	inc  bc                                          ; $4665: $03
	rlca                                             ; $4666: $07
	inc  b                                           ; $4667: $04
	rlca                                             ; $4668: $07
	inc  b                                           ; $4669: $04
	rrca                                             ; $466a: $0f
	ld   [$080f], sp                                 ; $466b: $08 $0f $08
	ld   c, $09                                      ; $466e: $0e $09
	rrca                                             ; $4670: $0f
	dec  bc                                          ; $4671: $0b
	rrca                                             ; $4672: $0f
	dec  bc                                          ; $4673: $0b
	rrca                                             ; $4674: $0f
	ld   a, [bc]                                     ; $4675: $0a
	rrca                                             ; $4676: $0f
	dec  bc                                          ; $4677: $0b
	rrca                                             ; $4678: $0f
	dec  bc                                          ; $4679: $0b
	rra                                              ; $467a: $1f
	inc  de                                          ; $467b: $13
	rra                                              ; $467c: $1f
	inc  de                                          ; $467d: $13
	rrca                                             ; $467e: $0f
	add  hl, bc                                      ; $467f: $09
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	db   $fc                                         ; $4682: $fc
	db   $fc                                         ; $4683: $fc
	rst  $38                                         ; $4684: $ff
	inc  bc                                          ; $4685: $03
	rst  $38                                         ; $4686: $ff
	nop                                              ; $4687: $00
	rst  $38                                         ; $4688: $ff
	nop                                              ; $4689: $00
	add  c                                           ; $468a: $81
	ld   a, [hl]                                     ; $468b: $7e
	nop                                              ; $468c: $00
	rst  $38                                         ; $468d: $ff
	rst  $38                                         ; $468e: $ff
	nop                                              ; $468f: $00
	rst  $38                                         ; $4690: $ff
	nop                                              ; $4691: $00
	push hl                                          ; $4692: $e5
	ld   e, $8f                                      ; $4693: $1e $8f
	rst  $38                                         ; $4695: $ff
	dec  d                                           ; $4696: $15
	rst  $38                                         ; $4697: $ff
	adc  h                                           ; $4698: $8c
	rst  $38                                         ; $4699: $ff
	nop                                              ; $469a: $00
	rst  $38                                         ; $469b: $ff
	nop                                              ; $469c: $00
	rst  $38                                         ; $469d: $ff
	add  c                                           ; $469e: $81
	rst  $38                                         ; $469f: $ff
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	ret  nz                                          ; $46a4: $c0

	ret  nz                                          ; $46a5: $c0

	ldh  [$60], a                                    ; $46a6: $e0 $60
	ldh  [rAUD4LEN], a                               ; $46a8: $e0 $20
	ldh  [rAUD4LEN], a                               ; $46aa: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $46ac: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46ae: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46b0: $f0 $10
	ldh  a, [$90]                                    ; $46b2: $f0 $90
	ld   hl, sp-$48                                  ; $46b4: $f8 $b8
	call nz, $c4fc                                   ; $46b6: $c4 $fc $c4
	ld   a, h                                        ; $46b9: $7c
	call nz, $e47c                                   ; $46ba: $c4 $7c $e4
	cp   h                                           ; $46bd: $bc
	db   $fc                                         ; $46be: $fc
	sbc  h                                           ; $46bf: $9c
	rrca                                             ; $46c0: $0f
	rrca                                             ; $46c1: $0f
	ldh  a, [rIE]                                    ; $46c2: $f0 $ff
	ld   hl, sp+$0f                                  ; $46c4: $f8 $0f
	ld   hl, sp+$0f                                  ; $46c6: $f8 $0f
	ld   hl, sp-$01                                  ; $46c8: $f8 $ff
	ld   [$080f], sp                                 ; $46ca: $08 $0f $08
	rrca                                             ; $46cd: $0f
	ld   [$100f], sp                                 ; $46ce: $08 $0f $10
	rra                                              ; $46d1: $1f
	jr   @+$19                                       ; $46d2: $18 $17

	inc  e                                           ; $46d4: $1c
	inc  de                                          ; $46d5: $13
	db   $10                                         ; $46d6: $10
	rra                                              ; $46d7: $1f
	inc  e                                           ; $46d8: $1c
	inc  de                                          ; $46d9: $13
	jr   jr_028_46f3                                 ; $46da: $18 $17

	add  hl, bc                                      ; $46dc: $09
	rrca                                             ; $46dd: $0f
	dec  b                                           ; $46de: $05
	rlca                                             ; $46df: $07
	rst  $38                                         ; $46e0: $ff
	cp   $ff                                         ; $46e1: $fe $ff
	ret  nz                                          ; $46e3: $c0

	ld   a, a                                        ; $46e4: $7f
	ldh  [$1f], a                                    ; $46e5: $e0 $1f
	di                                               ; $46e7: $f3
	inc  c                                           ; $46e8: $0c
	rst  $38                                         ; $46e9: $ff
	jr   @+$01                                       ; $46ea: $18 $ff

	ccf                                              ; $46ec: $3f
	rst  $38                                         ; $46ed: $ff
	ld   a, a                                        ; $46ee: $7f
	ret  nz                                          ; $46ef: $c0

	ld   a, a                                        ; $46f0: $7f
	ret  nz                                          ; $46f1: $c0

	ld   a, a                                        ; $46f2: $7f

jr_028_46f3:
	jp   $ff7c                                       ; $46f3: $c3 $7c $ff


	rst  ToBoot                                         ; $46f6: $c7
	rst  $38                                         ; $46f7: $ff
	cp   b                                           ; $46f8: $b8
	rst  $38                                         ; $46f9: $ff
	sbc  b                                           ; $46fa: $98
	rst  $38                                         ; $46fb: $ff
	inc  e                                           ; $46fc: $1c
	rst  $38                                         ; $46fd: $ff
	ld   a, $fd                                      ; $46fe: $3e $fd
	inc  h                                           ; $4700: $24
	db   $fc                                         ; $4701: $fc
	call nz, $c4fc                                   ; $4702: $c4 $fc $c4
	db   $fc                                         ; $4705: $fc
	inc  h                                           ; $4706: $24
	db   $fc                                         ; $4707: $fc
	inc  h                                           ; $4708: $24
	db   $fc                                         ; $4709: $fc
	inc  h                                           ; $470a: $24
	db   $fc                                         ; $470b: $fc
	and  h                                           ; $470c: $a4
	db   $fc                                         ; $470d: $fc
	call nz, $ce7c                                   ; $470e: $c4 $7c $ce
	ld   [hl], d                                     ; $4711: $72
	jp   nz, $26fe                                   ; $4712: $c2 $fe $26

	ld   a, [$fee2]                                  ; $4715: $fa $e2 $fe
	ld   [hl-], a                                    ; $4718: $32
	cp   $2a                                         ; $4719: $fe $2a
	xor  $2a                                         ; $471b: $ee $2a
	xor  $ac                                         ; $471d: $ee $ac
	ld   l, h                                        ; $471f: $6c
	ld   [bc], a                                     ; $4720: $02
	inc  bc                                          ; $4721: $03
	ld   [bc], a                                     ; $4722: $02
	inc  bc                                          ; $4723: $03
	inc  b                                           ; $4724: $04
	rlca                                             ; $4725: $07
	ld   [$110f], sp                                 ; $4726: $08 $0f $11
	rra                                              ; $4729: $1f
	rrca                                             ; $472a: $0f
	rrca                                             ; $472b: $0f
	rrca                                             ; $472c: $0f
	ld   a, [bc]                                     ; $472d: $0a
	rrca                                             ; $472e: $0f
	rrca                                             ; $472f: $0f
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	nop                                              ; $4732: $00
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	nop                                              ; $4736: $00
	nop                                              ; $4737: $00
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	ld   a, $fd                                      ; $4740: $3e $fd
	ld   a, l                                        ; $4742: $7d
	sbc  $fe                                         ; $4743: $de $fe
	cp   l                                           ; $4745: $bd
	cp   $bd                                         ; $4746: $fe $bd
	db   $fc                                         ; $4748: $fc
	ld   a, a                                        ; $4749: $7f
	rst  $38                                         ; $474a: $ff
	rst  $38                                         ; $474b: $ff
	add  e                                           ; $474c: $83
	add  d                                           ; $474d: $82
	inc  bc                                          ; $474e: $03
	inc  bc                                          ; $474f: $03
	nop                                              ; $4750: $00
	nop                                              ; $4751: $00
	nop                                              ; $4752: $00
	nop                                              ; $4753: $00
	nop                                              ; $4754: $00
	nop                                              ; $4755: $00
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	nop                                              ; $475a: $00
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	nop                                              ; $475d: $00
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	ldh  [rAUD4LEN], a                               ; $4760: $e0 $20
	jr   nz, @-$1e                                   ; $4762: $20 $e0

	ret  nz                                          ; $4764: $c0

	ld   b, b                                        ; $4765: $40
	ret  nz                                          ; $4766: $c0

	ld   b, b                                        ; $4767: $40
	add  b                                           ; $4768: $80
	add  b                                           ; $4769: $80
	add  b                                           ; $476a: $80
	add  b                                           ; $476b: $80
	ret  nz                                          ; $476c: $c0

	ld   b, b                                        ; $476d: $40
	ldh  [$e0], a                                    ; $476e: $e0 $e0
	nop                                              ; $4770: $00
	nop                                              ; $4771: $00
	nop                                              ; $4772: $00
	nop                                              ; $4773: $00
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	nop                                              ; $4776: $00
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	rlca                                             ; $4782: $07
	rlca                                             ; $4783: $07
	rrca                                             ; $4784: $0f
	ld   [$080f], sp                                 ; $4785: $08 $0f $08
	rrca                                             ; $4788: $0f
	ld   [$0707], sp                                 ; $4789: $08 $07 $07
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	ret  nz                                          ; $47a4: $c0

	ret  nz                                          ; $47a5: $c0

	ldh  [$60], a                                    ; $47a6: $e0 $60
	ldh  [rAUD4LEN], a                               ; $47a8: $e0 $20
	ldh  [rAUD4LEN], a                               ; $47aa: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $47ac: $f0 $10
	cp   $1e                                         ; $47ae: $fe $1e
	pop  af                                          ; $47b0: $f1
	rra                                              ; $47b1: $1f
	pop  af                                          ; $47b2: $f1
	sbc  a                                           ; $47b3: $9f
	pop  af                                          ; $47b4: $f1
	rra                                              ; $47b5: $1f
	ldh  a, [c]                                      ; $47b6: $f2
	sbc  [hl]                                        ; $47b7: $9e
	db   $e4                                         ; $47b8: $e4
	cp   h                                           ; $47b9: $bc
	db   $e4                                         ; $47ba: $e4
	cp   h                                           ; $47bb: $bc
	db   $e4                                         ; $47bc: $e4
	inc  a                                           ; $47bd: $3c
	db   $fc                                         ; $47be: $fc
	ld   a, h                                        ; $47bf: $7c
	rlca                                             ; $47c0: $07
	rlca                                             ; $47c1: $07
	rrca                                             ; $47c2: $0f

jr_028_47c3:
	ld   [$080f], sp                                 ; $47c3: $08 $0f $08
	rrca                                             ; $47c6: $0f

jr_028_47c7:
	ld   [$0707], sp                                 ; $47c7: $08 $07 $07
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	nop                                              ; $47d0: $00

jr_028_47d1:
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	ld   bc, $0101                                   ; $47ea: $01 $01 $01
	ld   bc, $0101                                   ; $47ed: $01 $01 $01
	ld   bc, $0101                                   ; $47f0: $01 $01 $01
	ld   bc, $0000                                   ; $47f3: $01 $00 $00
	nop                                              ; $47f6: $00
	nop                                              ; $47f7: $00
	ld   [bc], a                                     ; $47f8: $02
	ld   [bc], a                                     ; $47f9: $02
	ld   [bc], a                                     ; $47fa: $02
	ld   [bc], a                                     ; $47fb: $02
	ld   [bc], a                                     ; $47fc: $02
	ld   [bc], a                                     ; $47fd: $02
	ld   [bc], a                                     ; $47fe: $02
	ld   [bc], a                                     ; $47ff: $02
	inc  e                                           ; $4800: $1c
	inc  d                                           ; $4801: $14
	ld   a, [hl]                                     ; $4802: $7e
	ld   h, d                                        ; $4803: $62
	ld   a, [hl]                                     ; $4804: $7e
	ld   b, d                                        ; $4805: $42
	ld   a, [$fa80]                                  ; $4806: $fa $80 $fa
	and  d                                           ; $4809: $a2
	pop  af                                          ; $480a: $f1
	ld   hl, $21f1                                   ; $480b: $21 $f1 $21
	reti                                             ; $480e: $d9


	ld   de, $51d1                                   ; $480f: $11 $d1 $51
	pop  af                                          ; $4812: $f1
	ld   d, c                                        ; $4813: $51
	ldh  a, [$50]                                    ; $4814: $f0 $50
	cp   b                                           ; $4816: $b8
	jr   z, jr_028_47d1                              ; $4817: $28 $b8

	jr   z, jr_028_47c3                              ; $4819: $28 $a8

	jr   z, @-$56                                    ; $481b: $28 $a8

	jr   z, jr_028_47c7                              ; $481d: $28 $a8

	ld   [rRAMG], sp                                 ; $481f: $08 $00 $00
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	nop                                              ; $4828: $00
	nop                                              ; $4829: $00
	ld   bc, $0101                                   ; $482a: $01 $01 $01
	ld   bc, $0101                                   ; $482d: $01 $01 $01
	ld   bc, $0101                                   ; $4830: $01 $01 $01
	ld   bc, $0203                                   ; $4833: $01 $03 $02
	inc  bc                                          ; $4836: $03
	ld   [bc], a                                     ; $4837: $02
	inc  bc                                          ; $4838: $03
	ld   [bc], a                                     ; $4839: $02
	inc  bc                                          ; $483a: $03
	ld   [bc], a                                     ; $483b: $02
	inc  bc                                          ; $483c: $03
	ld   [bc], a                                     ; $483d: $02
	ld   [bc], a                                     ; $483e: $02
	ld   [bc], a                                     ; $483f: $02
	inc  e                                           ; $4840: $1c
	inc  e                                           ; $4841: $1c
	ld   a, $22                                      ; $4842: $3e $22
	ld   a, [hl]                                     ; $4844: $7e
	ld   b, d                                        ; $4845: $42
	rst  $38                                         ; $4846: $ff
	add  c                                           ; $4847: $81
	rst  $38                                         ; $4848: $ff
	add  c                                           ; $4849: $81
	db   $e3                                         ; $484a: $e3
	ld   bc, $00c3                                   ; $484b: $01 $c3 $00
	reti                                             ; $484e: $d9


	nop                                              ; $484f: $00
	push de                                          ; $4850: $d5
	nop                                              ; $4851: $00
	call nc, $a400                                   ; $4852: $d4 $00 $a4
	nop                                              ; $4855: $00
	and  b                                           ; $4856: $a0
	nop                                              ; $4857: $00
	and  b                                           ; $4858: $a0
	nop                                              ; $4859: $00
	and  b                                           ; $485a: $a0
	nop                                              ; $485b: $00
	add  b                                           ; $485c: $80
	nop                                              ; $485d: $00
	add  b                                           ; $485e: $80
	nop                                              ; $485f: $00
	and  b                                           ; $4860: $a0
	ldh  [hScriptOpcodeParams+3], a                                    ; $4861: $e0 $a3
	db   $e3                                         ; $4863: $e3
	and  a                                           ; $4864: $a7
	db   $e4                                         ; $4865: $e4
	and  a                                           ; $4866: $a7
	db   $e4                                         ; $4867: $e4
	and  a                                           ; $4868: $a7
	db   $e4                                         ; $4869: $e4
	xor  [hl]                                        ; $486a: $ae
	jp   hl                                          ; $486b: $e9


	xor  [hl]                                        ; $486c: $ae
	jp   hl                                          ; $486d: $e9


	xor  a                                           ; $486e: $af
	ld   [$ebaf], a                                  ; $486f: $ea $af $eb
	xor  a                                           ; $4872: $af
	db   $eb                                         ; $4873: $eb
	ld   e, a                                        ; $4874: $5f
	ld   a, e                                        ; $4875: $7b
	ld   e, a                                        ; $4876: $5f
	ld   a, e                                        ; $4877: $7b
	rst  $38                                         ; $4878: $ff
	ei                                               ; $4879: $fb
	adc  a                                           ; $487a: $8f
	db   $fd                                         ; $487b: $fd
	rst  $38                                         ; $487c: $ff
	db   $fd                                         ; $487d: $fd
	add  a                                           ; $487e: $87
	rst  $38                                         ; $487f: $ff
	ld   hl, sp-$08                                  ; $4880: $f8 $f8
	rst  $38                                         ; $4882: $ff
	rlca                                             ; $4883: $07
	rst  $38                                         ; $4884: $ff
	nop                                              ; $4885: $00
	add  e                                           ; $4886: $83
	ld   a, h                                        ; $4887: $7c
	ld   bc, $7ffe                                   ; $4888: $01 $fe $7f
	add  b                                           ; $488b: $80
	rst  $38                                         ; $488c: $ff
	ld   bc, $01ff                                   ; $488d: $01 $ff $01
	db   $dd                                         ; $4890: $dd
	inc  hl                                          ; $4891: $23
	sbc  a                                           ; $4892: $9f
	ld   l, a                                        ; $4893: $6f
	or   l                                           ; $4894: $b5
	rst  JumpTable                                         ; $4895: $df
	adc  l                                           ; $4896: $8d
	rst  $38                                         ; $4897: $ff
	ld   bc, $61ff                                   ; $4898: $01 $ff $61
	rst  $38                                         ; $489b: $ff
	ld   d, e                                        ; $489c: $53
	cp   $ff                                         ; $489d: $fe $ff
	db   $fc                                         ; $489f: $fc
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	ret  nz                                          ; $48a2: $c0

	ret  nz                                          ; $48a3: $c0

	ldh  [rAUD4LEN], a                               ; $48a4: $e0 $20
	ldh  [rAUD4LEN], a                               ; $48a6: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $48a8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $48aa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $48ac: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $48ae: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $48b0: $f0 $10
	ld   hl, sp+$48                                  ; $48b2: $f8 $48
	ld   hl, sp+$48                                  ; $48b4: $f8 $48
	ld   hl, sp+$48                                  ; $48b6: $f8 $48
	ld   hl, sp+$48                                  ; $48b8: $f8 $48
	ld   hl, sp+$48                                  ; $48ba: $f8 $48
	ldh  a, [$90]                                    ; $48bc: $f0 $90
	add  b                                           ; $48be: $80
	add  b                                           ; $48bf: $80
	rst  $38                                         ; $48c0: $ff
	add  c                                           ; $48c1: $81
	ld   a, a                                        ; $48c2: $7f
	ld   c, b                                        ; $48c3: $48
	ld   a, a                                        ; $48c4: $7f
	ld   a, a                                        ; $48c5: $7f
	add  hl, sp                                      ; $48c6: $39
	cpl                                              ; $48c7: $2f
	add  hl, sp                                      ; $48c8: $39
	cpl                                              ; $48c9: $2f
	add  hl, sp                                      ; $48ca: $39
	cpl                                              ; $48cb: $2f
	dec  a                                           ; $48cc: $3d
	cpl                                              ; $48cd: $2f
	inc  a                                           ; $48ce: $3c
	cpl                                              ; $48cf: $2f
	inc  a                                           ; $48d0: $3c
	cpl                                              ; $48d1: $2f
	ld   a, $2f                                      ; $48d2: $3e $2f
	ld   a, $2f                                      ; $48d4: $3e $2f
	rra                                              ; $48d6: $1f
	rla                                              ; $48d7: $17
	inc  e                                           ; $48d8: $1c
	rla                                              ; $48d9: $17
	inc  e                                           ; $48da: $1c
	rla                                              ; $48db: $17
	ld   e, $13                                      ; $48dc: $1e $13
	rra                                              ; $48de: $1f
	inc  de                                          ; $48df: $13
	rst  $38                                         ; $48e0: $ff
	rst  $38                                         ; $48e1: $ff
	ldh  a, [$1f]                                    ; $48e2: $f0 $1f
	ldh  a, [$1f]                                    ; $48e4: $f0 $1f
	add  sp, -$01                                    ; $48e6: $e8 $ff
	jr   z, @+$01                                    ; $48e8: $28 $ff

	jr   z, @+$01                                    ; $48ea: $28 $ff

	ld   a, b                                        ; $48ec: $78
	rst  $38                                         ; $48ed: $ff
	ld   hl, sp-$71                                  ; $48ee: $f8 $8f
	db   $fc                                         ; $48f0: $fc
	cp   a                                           ; $48f1: $bf
	add  $ff                                         ; $48f2: $c6 $ff
	cp   [hl]                                        ; $48f4: $be
	rst  $38                                         ; $48f5: $ff
	ld   h, c                                        ; $48f6: $61
	rst  $38                                         ; $48f7: $ff
	jr   nz, @+$01                                   ; $48f8: $20 $ff

	jr   nz, @+$01                                   ; $48fa: $20 $ff

	push hl                                          ; $48fc: $e5
	ld   a, [$72ed]                                  ; $48fd: $fa $ed $72
	ldh  a, [$f0]                                    ; $4900: $f0 $f0
	cp   $fe                                         ; $4902: $fe $fe
	ld   a, $e2                                      ; $4904: $3e $e2
	rra                                              ; $4906: $1f
	pop  af                                          ; $4907: $f1
	rrca                                             ; $4908: $0f
	ld   sp, hl                                      ; $4909: $f9
	rrca                                             ; $490a: $0f
	push af                                          ; $490b: $f5
	ld   e, a                                        ; $490c: $5f
	and  l                                           ; $490d: $a5
	daa                                              ; $490e: $27
	db   $dd                                         ; $490f: $dd
	ld   e, a                                        ; $4910: $5f
	and  l                                           ; $4911: $a5
	xor  a                                           ; $4912: $af
	ld   d, l                                        ; $4913: $55
	daa                                              ; $4914: $27
	rst  JumpTable                                         ; $4915: $df
	add  h                                           ; $4916: $84
	db   $fc                                         ; $4917: $fc
	ld   a, b                                        ; $4918: $78
	ld   hl, sp+$60                                  ; $4919: $f8 $60
	ldh  [rAUD4LEN], a                               ; $491b: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $491d: $e0 $a0
	ld   h, b                                        ; $491f: $60
	rra                                              ; $4920: $1f
	ld   [de], a                                     ; $4921: $12
	rra                                              ; $4922: $1f
	ld   [de], a                                     ; $4923: $12
	rra                                              ; $4924: $1f
	inc  d                                           ; $4925: $14
	rra                                              ; $4926: $1f
	inc  d                                           ; $4927: $14
	dec  de                                          ; $4928: $1b
	inc  e                                           ; $4929: $1c
	rla                                              ; $492a: $17
	rra                                              ; $492b: $1f
	ccf                                              ; $492c: $3f
	jr   z, jr_028_496e                              ; $492d: $28 $3f

	ccf                                              ; $492f: $3f
	nop                                              ; $4930: $00
	nop                                              ; $4931: $00
	nop                                              ; $4932: $00
	nop                                              ; $4933: $00
	nop                                              ; $4934: $00
	nop                                              ; $4935: $00
	nop                                              ; $4936: $00
	nop                                              ; $4937: $00
	nop                                              ; $4938: $00
	nop                                              ; $4939: $00
	nop                                              ; $493a: $00
	nop                                              ; $493b: $00
	nop                                              ; $493c: $00
	nop                                              ; $493d: $00
	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	ldh  a, [c]                                      ; $4940: $f2
	ld   a, l                                        ; $4941: $7d
	db   $fd                                         ; $4942: $fd
	ld   [hl], d                                     ; $4943: $72
	db   $fc                                         ; $4944: $fc
	ei                                               ; $4945: $fb
	ld   hl, sp-$01                                  ; $4946: $f8 $ff
	ld   hl, sp-$01                                  ; $4948: $f8 $ff
	add  a                                           ; $494a: $87
	add  a                                           ; $494b: $87
	add  b                                           ; $494c: $80
	add  b                                           ; $494d: $80
	add  b                                           ; $494e: $80
	add  b                                           ; $494f: $80
	nop                                              ; $4950: $00
	nop                                              ; $4951: $00
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	nop                                              ; $4954: $00
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	nop                                              ; $4957: $00
	nop                                              ; $4958: $00
	nop                                              ; $4959: $00
	nop                                              ; $495a: $00
	nop                                              ; $495b: $00
	nop                                              ; $495c: $00
	nop                                              ; $495d: $00
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	db   $10                                         ; $4960: $10
	ldh  a, [$b0]                                    ; $4961: $f0 $b0
	ld   d, b                                        ; $4963: $50
	sbc  b                                           ; $4964: $98
	ld   l, b                                        ; $4965: $68
	ld   [$08f8], sp                                 ; $4966: $08 $f8 $08
	ld   hl, sp-$04                                  ; $4969: $f8 $fc
	db   $fc                                         ; $496b: $fc
	ld   a, [hl]                                     ; $496c: $7e
	ld   l, d                                        ; $496d: $6a

jr_028_496e:
	ld   a, $3e                                      ; $496e: $3e $3e
	nop                                              ; $4970: $00
	nop                                              ; $4971: $00
	nop                                              ; $4972: $00
	nop                                              ; $4973: $00
	nop                                              ; $4974: $00
	nop                                              ; $4975: $00
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	nop                                              ; $4978: $00
	nop                                              ; $4979: $00
	nop                                              ; $497a: $00
	nop                                              ; $497b: $00
	nop                                              ; $497c: $00
	nop                                              ; $497d: $00
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	nop                                              ; $4983: $00
	nop                                              ; $4984: $00
	nop                                              ; $4985: $00
	nop                                              ; $4986: $00
	nop                                              ; $4987: $00
	nop                                              ; $4988: $00
	nop                                              ; $4989: $00
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	nop                                              ; $498c: $00
	nop                                              ; $498d: $00
	nop                                              ; $498e: $00
	nop                                              ; $498f: $00
	nop                                              ; $4990: $00
	nop                                              ; $4991: $00
	nop                                              ; $4992: $00
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	nop                                              ; $4995: $00
	ldh  [$e0], a                                    ; $4996: $e0 $e0
	ldh  [hScriptOpcodeParams], a                                    ; $4998: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $499a: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $499c: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $499e: $e0 $a0
	ldh  [$e0], a                                    ; $49a0: $e0 $e0
	and  b                                           ; $49a2: $a0
	ldh  [hScriptOpcodeParams+1], a                                    ; $49a3: $e0 $a1
	pop  hl                                          ; $49a5: $e1
	and  e                                           ; $49a6: $a3
	ldh  [c], a                                      ; $49a7: $e2
	ld   d, a                                        ; $49a8: $57
	ld   [hl], h                                     ; $49a9: $74
	ld   e, a                                        ; $49aa: $5f
	ld   a, b                                        ; $49ab: $78
	ld   e, a                                        ; $49ac: $5f
	ld   [hl], b                                     ; $49ad: $70
	ld   e, a                                        ; $49ae: $5f
	ld   [hl], b                                     ; $49af: $70
	ld   e, [hl]                                     ; $49b0: $5e
	ld   [hl], c                                     ; $49b1: $71
	ld   e, h                                        ; $49b2: $5c
	ld   [hl], e                                     ; $49b3: $73
	dec  l                                           ; $49b4: $2d
	ld   a, [hl-]                                    ; $49b5: $3a
	cpl                                              ; $49b6: $2f
	ld   a, [hl-]                                    ; $49b7: $3a
	cpl                                              ; $49b8: $2f
	ld   a, [hl-]                                    ; $49b9: $3a
	cpl                                              ; $49ba: $2f
	inc  a                                           ; $49bb: $3c
	cpl                                              ; $49bc: $2f
	ld   a, $3a                                      ; $49bd: $3e $3a
	ccf                                              ; $49bf: $3f
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	ret  nz                                          ; $49c4: $c0

	ret  nz                                          ; $49c5: $c0

	rst  $38                                         ; $49c6: $ff
	cpl                                              ; $49c7: $2f
	rst  $38                                         ; $49c8: $ff
	nop                                              ; $49c9: $00
	rst  $38                                         ; $49ca: $ff
	nop                                              ; $49cb: $00
	rst  $38                                         ; $49cc: $ff
	nop                                              ; $49cd: $00
	rst  $38                                         ; $49ce: $ff
	nop                                              ; $49cf: $00
	ld   bc, $01fe                                   ; $49d0: $01 $fe $01
	cp   $fc                                         ; $49d3: $fe $fc
	inc  bc                                          ; $49d5: $03
	cp   $01                                         ; $49d6: $fe $01
	rst  $38                                         ; $49d8: $ff
	ld   bc, $45bb                                   ; $49d9: $01 $bb $45
	inc  hl                                          ; $49dc: $23
	db   $dd                                         ; $49dd: $dd
	inc  bc                                          ; $49de: $03
	db   $fd                                         ; $49df: $fd
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	add  b                                           ; $49e6: $80
	add  b                                           ; $49e7: $80
	ret  nz                                          ; $49e8: $c0

	ld   b, b                                        ; $49e9: $40
	pop  af                                          ; $49ea: $f1
	ld   sp, $0efe                                   ; $49eb: $31 $fe $0e
	db   $fc                                         ; $49ee: $fc
	inc  a                                           ; $49ef: $3c
	ld   hl, sp+$08                                  ; $49f0: $f8 $08
	db   $fc                                         ; $49f2: $fc
	inc  b                                           ; $49f3: $04
	db   $fc                                         ; $49f4: $fc
	inc  b                                           ; $49f5: $04
	cp   $02                                         ; $49f6: $fe $02
	rst  $38                                         ; $49f8: $ff
	inc  b                                           ; $49f9: $04
	db   $fc                                         ; $49fa: $fc
	inc  d                                           ; $49fb: $14
	db   $fc                                         ; $49fc: $fc
	inc  d                                           ; $49fd: $14
	db   $fc                                         ; $49fe: $fc
	inc  d                                           ; $49ff: $14
	ccf                                              ; $4a00: $3f
	ld   [hl+], a                                    ; $4a01: $22
	ccf                                              ; $4a02: $3f
	ld   [hl+], a                                    ; $4a03: $22
	ccf                                              ; $4a04: $3f
	dec  h                                           ; $4a05: $25
	ccf                                              ; $4a06: $3f
	jr   c, jr_028_4a48                              ; $4a07: $38 $3f

	jr   nz, jr_028_4a4a                             ; $4a09: $20 $3f

	jr   nc, jr_028_4a2c                             ; $4a0b: $30 $1f

	ld   de, $0f0f                                   ; $4a0d: $11 $0f $0f
	ld   c, $0b                                      ; $4a10: $0e $0b
	ld   c, $0b                                      ; $4a12: $0e $0b
	ld   c, $0b                                      ; $4a14: $0e $0b
	rrca                                             ; $4a16: $0f
	dec  bc                                          ; $4a17: $0b
	ld   c, $0b                                      ; $4a18: $0e $0b
	ld   c, $0b                                      ; $4a1a: $0e $0b
	rla                                              ; $4a1c: $17
	dec  e                                           ; $4a1d: $1d
	rla                                              ; $4a1e: $17
	dec  e                                           ; $4a1f: $1d
	rst  $38                                         ; $4a20: $ff
	rra                                              ; $4a21: $1f
	db   $fc                                         ; $4a22: $fc
	ccf                                              ; $4a23: $3f
	cp   $e3                                         ; $4a24: $fe $e3
	cp   $03                                         ; $4a26: $fe $03
	rst  $38                                         ; $4a28: $ff
	rra                                              ; $4a29: $1f
	rst  $38                                         ; $4a2a: $ff
	rst  $20                                         ; $4a2b: $e7

jr_028_4a2c:
	add  hl, sp                                      ; $4a2c: $39
	rst  $28                                         ; $4a2d: $ef
	or   b                                           ; $4a2e: $b0
	rst  $38                                         ; $4a2f: $ff
	cp   $ff                                         ; $4a30: $fe $ff
	rst  $38                                         ; $4a32: $ff
	add  c                                           ; $4a33: $81
	rst  $38                                         ; $4a34: $ff
	jp   $fffe                                       ; $4a35: $c3 $fe $ff


	ld   h, c                                        ; $4a38: $61
	rst  $38                                         ; $4a39: $ff
	ld   a, $ff                                      ; $4a3a: $3e $ff
	ld   [hl+], a                                    ; $4a3c: $22
	db   $fd                                         ; $4a3d: $fd
	and  $f9                                         ; $4a3e: $e6 $f9
	db   $fc                                         ; $4a40: $fc
	db   $fc                                         ; $4a41: $fc
	ld   e, $fe                                      ; $4a42: $1e $fe
	ld   c, $fa                                      ; $4a44: $0e $fa
	rrca                                             ; $4a46: $0f
	ld   sp, hl                                      ; $4a47: $f9

jr_028_4a48:
	rrca                                             ; $4a48: $0f
	ld   sp, hl                                      ; $4a49: $f9

jr_028_4a4a:
	rlca                                             ; $4a4a: $07
	db   $fd                                         ; $4a4b: $fd
	rra                                              ; $4a4c: $1f
	rst  $38                                         ; $4a4d: $ff
	adc  a                                           ; $4a4e: $8f
	di                                               ; $4a4f: $f3
	add  l                                           ; $4a50: $85
	ei                                               ; $4a51: $fb
	db   $db                                         ; $4a52: $db
	push hl                                          ; $4a53: $e5
	ld   h, l                                        ; $4a54: $65
	ei                                               ; $4a55: $fb
	sub  d                                           ; $4a56: $92
	cp   $12                                         ; $4a57: $fe $12
	cp   $1c                                         ; $4a59: $fe $1c
	db   $fc                                         ; $4a5b: $fc
	sub  b                                           ; $4a5c: $90
	ld   [hl], b                                     ; $4a5d: $70
	ldh  a, [$30]                                    ; $4a5e: $f0 $30
	rla                                              ; $4a60: $17
	dec  e                                           ; $4a61: $1d
	rrca                                             ; $4a62: $0f
	dec  c                                           ; $4a63: $0d
	rrca                                             ; $4a64: $0f
	dec  c                                           ; $4a65: $0d
	rra                                              ; $4a66: $1f
	dec  d                                           ; $4a67: $15
	ccf                                              ; $4a68: $3f
	inc  h                                           ; $4a69: $24
	ld   a, a                                        ; $4a6a: $7f
	ld   a, h                                        ; $4a6b: $7c
	ld   a, a                                        ; $4a6c: $7f
	ld   d, h                                        ; $4a6d: $54
	ld   a, a                                        ; $4a6e: $7f
	ld   a, h                                        ; $4a6f: $7c
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	nop                                              ; $4a72: $00
	nop                                              ; $4a73: $00
	nop                                              ; $4a74: $00
	nop                                              ; $4a75: $00
	nop                                              ; $4a76: $00
	nop                                              ; $4a77: $00
	nop                                              ; $4a78: $00
	nop                                              ; $4a79: $00
	nop                                              ; $4a7a: $00
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	nop                                              ; $4a7d: $00
	nop                                              ; $4a7e: $00
	nop                                              ; $4a7f: $00
	pop  af                                          ; $4a80: $f1
	ld   a, $fe                                      ; $4a81: $3e $fe
	add  hl, sp                                      ; $4a83: $39
	cp   $7d                                         ; $4a84: $fe $7d
	db   $fc                                         ; $4a86: $fc
	rst  $38                                         ; $4a87: $ff
	db   $fc                                         ; $4a88: $fc
	rst  $38                                         ; $4a89: $ff
	add  a                                           ; $4a8a: $87
	add  a                                           ; $4a8b: $87
	add  b                                           ; $4a8c: $80
	add  b                                           ; $4a8d: $80
	add  b                                           ; $4a8e: $80
	add  b                                           ; $4a8f: $80

jr_028_4a90:
	nop                                              ; $4a90: $00
	nop                                              ; $4a91: $00
	nop                                              ; $4a92: $00
	nop                                              ; $4a93: $00
	nop                                              ; $4a94: $00
	nop                                              ; $4a95: $00
	nop                                              ; $4a96: $00
	nop                                              ; $4a97: $00
	nop                                              ; $4a98: $00
	nop                                              ; $4a99: $00
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	nop                                              ; $4a9c: $00
	nop                                              ; $4a9d: $00
	nop                                              ; $4a9e: $00
	nop                                              ; $4a9f: $00
	db   $10                                         ; $4aa0: $10
	ldh  a, [$d0]                                    ; $4aa1: $f0 $d0
	jr   nc, jr_028_4afd                             ; $4aa3: $30 $58

	xor  b                                           ; $4aa5: $a8
	jr   jr_028_4a90                                 ; $4aa6: $18 $e8

	ld   [$fcf8], sp                                 ; $4aa8: $08 $f8 $fc
	db   $fc                                         ; $4aab: $fc
	ld   a, [hl]                                     ; $4aac: $7e
	ld   l, d                                        ; $4aad: $6a
	ld   a, $3e                                      ; $4aae: $3e $3e
	nop                                              ; $4ab0: $00
	nop                                              ; $4ab1: $00
	nop                                              ; $4ab2: $00
	nop                                              ; $4ab3: $00
	nop                                              ; $4ab4: $00
	nop                                              ; $4ab5: $00
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	nop                                              ; $4ab8: $00
	nop                                              ; $4ab9: $00
	nop                                              ; $4aba: $00
	nop                                              ; $4abb: $00
	nop                                              ; $4abc: $00
	nop                                              ; $4abd: $00
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	ldh  [$e0], a                                    ; $4ac0: $e0 $e0
	and  b                                           ; $4ac2: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4ac3: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4ac5: $e0 $a0
	ldh  [$d3], a                                    ; $4ac7: $e0 $d3
	di                                               ; $4ac9: $f3
	ld   d, a                                        ; $4aca: $57
	ld   [hl], h                                     ; $4acb: $74
	ld   e, a                                        ; $4acc: $5f
	ld   a, b                                        ; $4acd: $78
	ld   e, a                                        ; $4ace: $5f
	ld   a, b                                        ; $4acf: $78
	ld   e, [hl]                                     ; $4ad0: $5e
	ld   a, c                                        ; $4ad1: $79
	ld   e, h                                        ; $4ad2: $5c
	ld   a, e                                        ; $4ad3: $7b
	dec  l                                           ; $4ad4: $2d
	ld   a, [hl-]                                    ; $4ad5: $3a
	cpl                                              ; $4ad6: $2f
	ld   a, [hl-]                                    ; $4ad7: $3a
	cpl                                              ; $4ad8: $2f
	ld   a, [hl-]                                    ; $4ad9: $3a
	cpl                                              ; $4ada: $2f
	inc  a                                           ; $4adb: $3c
	ld   l, $3f                                      ; $4adc: $2e $3f
	ld   a, [hl-]                                    ; $4ade: $3a
	ccf                                              ; $4adf: $3f
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	rst  $38                                         ; $4ae6: $ff
	rst  $28                                         ; $4ae7: $ef
	rst  $38                                         ; $4ae8: $ff
	nop                                              ; $4ae9: $00
	rst  $38                                         ; $4aea: $ff
	nop                                              ; $4aeb: $00
	rst  $38                                         ; $4aec: $ff
	nop                                              ; $4aed: $00
	rst  $38                                         ; $4aee: $ff
	nop                                              ; $4aef: $00
	ld   bc, $01fe                                   ; $4af0: $01 $fe $01
	cp   $fc                                         ; $4af3: $fe $fc
	inc  bc                                          ; $4af5: $03
	cp   $03                                         ; $4af6: $fe $03
	rst  $38                                         ; $4af8: $ff
	ld   bc, $45bb                                   ; $4af9: $01 $bb $45
	sbc  e                                           ; $4afc: $9b

jr_028_4afd:
	ld   h, l                                        ; $4afd: $65
	rlca                                             ; $4afe: $07
	ld   sp, hl                                      ; $4aff: $f9
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	nop                                              ; $4b04: $00
	nop                                              ; $4b05: $00
	nop                                              ; $4b06: $00
	nop                                              ; $4b07: $00
	add  b                                           ; $4b08: $80
	add  b                                           ; $4b09: $80
	ret  nz                                          ; $4b0a: $c0

	ld   b, b                                        ; $4b0b: $40
	ldh  [rAUD4LEN], a                               ; $4b0c: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $4b0e: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4b10: $f0 $10
	ld   hl, sp+$08                                  ; $4b12: $f8 $08
	ld   hl, sp+$08                                  ; $4b14: $f8 $08
	ldh  a, [rAUD1SWEEP]                             ; $4b16: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $4b18: $f0 $10
	ld   hl, sp+$48                                  ; $4b1a: $f8 $48
	ld   hl, sp+$48                                  ; $4b1c: $f8 $48
	ld   hl, sp-$68                                  ; $4b1e: $f8 $98
	ccf                                              ; $4b20: $3f
	ld   [hl+], a                                    ; $4b21: $22
	ccf                                              ; $4b22: $3f
	ld   [hl+], a                                    ; $4b23: $22
	ccf                                              ; $4b24: $3f
	dec  h                                           ; $4b25: $25
	ccf                                              ; $4b26: $3f
	jr   c, jr_028_4b68                              ; $4b27: $38 $3f

	jr   nz, jr_028_4b6a                             ; $4b29: $20 $3f

	jr   nc, jr_028_4b4c                             ; $4b2b: $30 $1f

	ld   de, $0f0f                                   ; $4b2d: $11 $0f $0f
	ld   c, $0b                                      ; $4b30: $0e $0b
	ld   c, $0b                                      ; $4b32: $0e $0b
	ld   c, $0b                                      ; $4b34: $0e $0b
	ld   c, $0b                                      ; $4b36: $0e $0b
	rra                                              ; $4b38: $1f
	dec  de                                          ; $4b39: $1b
	ld   l, $3b                                      ; $4b3a: $2e $3b
	daa                                              ; $4b3c: $27
	dec  a                                           ; $4b3d: $3d
	daa                                              ; $4b3e: $27
	dec  a                                           ; $4b3f: $3d
	rst  $38                                         ; $4b40: $ff
	rra                                              ; $4b41: $1f
	db   $fc                                         ; $4b42: $fc
	ccf                                              ; $4b43: $3f
	cp   $e3                                         ; $4b44: $fe $e3
	cp   $03                                         ; $4b46: $fe $03
	rst  $38                                         ; $4b48: $ff
	rra                                              ; $4b49: $1f
	rst  $38                                         ; $4b4a: $ff
	rst  $20                                         ; $4b4b: $e7

jr_028_4b4c:
	ld   a, [hl-]                                    ; $4b4c: $3a
	rst  $28                                         ; $4b4d: $ef
	ld   [hl-], a                                    ; $4b4e: $32
	rst  $38                                         ; $4b4f: $ff
	cp   $ff                                         ; $4b50: $fe $ff
	rst  $38                                         ; $4b52: $ff
	add  c                                           ; $4b53: $81
	cp   $83                                         ; $4b54: $fe $83
	cp   $ff                                         ; $4b56: $fe $ff
	ld   h, c                                        ; $4b58: $61
	rst  $38                                         ; $4b59: $ff
	ld   a, $ff                                      ; $4b5a: $3e $ff
	jr   nz, @+$01                                   ; $4b5c: $20 $ff

	ldh  [rIE], a                                    ; $4b5e: $e0 $ff
	db   $fc                                         ; $4b60: $fc
	db   $fc                                         ; $4b61: $fc
	ld   e, $fe                                      ; $4b62: $1e $fe
	ld   e, $f2                                      ; $4b64: $1e $f2
	rrca                                             ; $4b66: $0f
	ld   sp, hl                                      ; $4b67: $f9

jr_028_4b68:
	rrca                                             ; $4b68: $0f
	ld   sp, hl                                      ; $4b69: $f9

jr_028_4b6a:
	rrca                                             ; $4b6a: $0f
	ld   sp, hl                                      ; $4b6b: $f9
	adc  a                                           ; $4b6c: $8f
	ld   sp, hl                                      ; $4b6d: $f9
	adc  a                                           ; $4b6e: $8f
	ld   sp, hl                                      ; $4b6f: $f9
	adc  a                                           ; $4b70: $8f
	ld   sp, hl                                      ; $4b71: $f9
	or   a                                           ; $4b72: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b73: $cf
	and  a                                           ; $4b74: $a7
	rst  JumpTable                                         ; $4b75: $df
	call c, $aca4                                    ; $4b76: $dc $a4 $ac
	call nc, $dca4                                   ; $4b79: $d4 $a4 $dc
	add  h                                           ; $4b7c: $84
	db   $fc                                         ; $4b7d: $fc
	ld   hl, sp-$08                                  ; $4b7e: $f8 $f8
	rla                                              ; $4b80: $17
	dec  e                                           ; $4b81: $1d
	rrca                                             ; $4b82: $0f
	dec  c                                           ; $4b83: $0d
	rrca                                             ; $4b84: $0f
	dec  c                                           ; $4b85: $0d
	rra                                              ; $4b86: $1f
	dec  d                                           ; $4b87: $15
	ccf                                              ; $4b88: $3f
	inc  h                                           ; $4b89: $24
	ld   a, a                                        ; $4b8a: $7f
	ld   a, h                                        ; $4b8b: $7c
	ld   a, a                                        ; $4b8c: $7f
	ld   d, h                                        ; $4b8d: $54
	ld   a, a                                        ; $4b8e: $7f
	ld   a, h                                        ; $4b8f: $7c
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	nop                                              ; $4b92: $00
	nop                                              ; $4b93: $00
	nop                                              ; $4b94: $00
	nop                                              ; $4b95: $00
	nop                                              ; $4b96: $00
	nop                                              ; $4b97: $00
	nop                                              ; $4b98: $00
	nop                                              ; $4b99: $00
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	push af                                          ; $4ba0: $f5
	ld   a, [hl-]                                    ; $4ba1: $3a
	db   $fd                                         ; $4ba2: $fd
	ld   [hl-], a                                    ; $4ba3: $32
	ld   a, [$fd7d]                                  ; $4ba4: $fa $7d $fd
	cp   $9c                                         ; $4ba7: $fe $9c
	sbc  a                                           ; $4ba9: $9f
	add  a                                           ; $4baa: $87
	add  a                                           ; $4bab: $87
	add  b                                           ; $4bac: $80
	add  b                                           ; $4bad: $80

jr_028_4bae:
	add  b                                           ; $4bae: $80
	add  b                                           ; $4baf: $80
	nop                                              ; $4bb0: $00
	nop                                              ; $4bb1: $00
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	nop                                              ; $4bb4: $00
	nop                                              ; $4bb5: $00
	nop                                              ; $4bb6: $00
	nop                                              ; $4bb7: $00
	nop                                              ; $4bb8: $00
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	db   $10                                         ; $4bc0: $10
	ldh  a, [$90]                                    ; $4bc1: $f0 $90
	ld   [hl], b                                     ; $4bc3: $70
	jr   jr_028_4bae                                 ; $4bc4: $18 $e8

	sbc  b                                           ; $4bc6: $98
	ld   l, b                                        ; $4bc7: $68
	adc  b                                           ; $4bc8: $88
	ld   a, b                                        ; $4bc9: $78
	db   $fc                                         ; $4bca: $fc
	db   $fc                                         ; $4bcb: $fc
	ld   a, [hl]                                     ; $4bcc: $7e
	ld   l, d                                        ; $4bcd: $6a
	ld   a, $3e                                      ; $4bce: $3e $3e
	nop                                              ; $4bd0: $00
	nop                                              ; $4bd1: $00
	nop                                              ; $4bd2: $00
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
	add  b                                           ; $4be8: $80
	add  b                                           ; $4be9: $80
	ldh  [$60], a                                    ; $4bea: $e0 $60
	ldh  a, [rAUD1SWEEP]                             ; $4bec: $f0 $10
	rst  $38                                         ; $4bee: $ff
	rrca                                             ; $4bef: $0f
	db   $fc                                         ; $4bf0: $fc
	ld   [$04fc], sp                                 ; $4bf1: $08 $fc $04
	db   $fc                                         ; $4bf4: $fc
	inc  b                                           ; $4bf5: $04
	cp   $0a                                         ; $4bf6: $fe $0a
	rst  $38                                         ; $4bf8: $ff
	dec  hl                                          ; $4bf9: $2b
	db   $fd                                         ; $4bfa: $fd
	add  hl, hl                                      ; $4bfb: $29
	db   $fd                                         ; $4bfc: $fd
	dec  h                                           ; $4bfd: $25
	db   $fc                                         ; $4bfe: $fc
	inc  h                                           ; $4bff: $24
	db   $fc                                         ; $4c00: $fc
	db   $fc                                         ; $4c01: $fc
	ld   e, $fe                                      ; $4c02: $1e $fe
	ld   e, $f2                                      ; $4c04: $1e $f2
	rrca                                             ; $4c06: $0f
	ld   sp, hl                                      ; $4c07: $f9
	rrca                                             ; $4c08: $0f
	ld   sp, hl                                      ; $4c09: $f9
	rrca                                             ; $4c0a: $0f
	ld   sp, hl                                      ; $4c0b: $f9
	adc  a                                           ; $4c0c: $8f
	ld   sp, hl                                      ; $4c0d: $f9

jr_028_4c0e:
	adc  a                                           ; $4c0e: $8f
	ld   sp, hl                                      ; $4c0f: $f9
	adc  a                                           ; $4c10: $8f
	db   $fd                                         ; $4c11: $fd
	sbc  e                                           ; $4c12: $9b
	rst  $28                                         ; $4c13: $ef
	ld   e, e                                        ; $4c14: $5b
	rst  $28                                         ; $4c15: $ef
	xor  $d2                                         ; $4c16: $ee $d2
	ld   [hl], d                                     ; $4c18: $72
	adc  $52                                         ; $4c19: $ce $52
	xor  $22                                         ; $4c1b: $ee $22
	cp   $3c                                         ; $4c1d: $fe $3c
	db   $fc                                         ; $4c1f: $fc
	db   $10                                         ; $4c20: $10
	ldh  a, [$90]                                    ; $4c21: $f0 $90
	ld   [hl], b                                     ; $4c23: $70
	jr   jr_028_4c0e                                 ; $4c24: $18 $e8

	sbc  b                                           ; $4c26: $98
	ld   l, b                                        ; $4c27: $68
	adc  b                                           ; $4c28: $88
	ld   a, b                                        ; $4c29: $78
	db   $fc                                         ; $4c2a: $fc
	db   $fc                                         ; $4c2b: $fc
	ld   a, [hl]                                     ; $4c2c: $7e
	ld   l, d                                        ; $4c2d: $6a
	ld   a, $3e                                      ; $4c2e: $3e $3e
	nop                                              ; $4c30: $00
	nop                                              ; $4c31: $00
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	nop                                              ; $4c35: $00
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	nop                                              ; $4c49: $00
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rst  $38                                         ; $4c50: $ff
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	nop                                              ; $4c68: $00
	nop                                              ; $4c69: $00
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	nop                                              ; $4c76: $00
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	rst  $38                                         ; $4c7b: $ff
	nop                                              ; $4c7c: $00
	rra                                              ; $4c7d: $1f
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	nop                                              ; $4c88: $00
	nop                                              ; $4c89: $00
	nop                                              ; $4c8a: $00
	nop                                              ; $4c8b: $00
	nop                                              ; $4c8c: $00
	nop                                              ; $4c8d: $00
	nop                                              ; $4c8e: $00
	nop                                              ; $4c8f: $00
	nop                                              ; $4c90: $00
	nop                                              ; $4c91: $00
	nop                                              ; $4c92: $00
	nop                                              ; $4c93: $00
	nop                                              ; $4c94: $00
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	ld   a, [hl]                                     ; $4c9f: $7e
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	nop                                              ; $4ca8: $00
	nop                                              ; $4ca9: $00
	nop                                              ; $4caa: $00
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00
	nop                                              ; $4cb2: $00
	nop                                              ; $4cb3: $00
	nop                                              ; $4cb4: $00
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	ld   [$33f3], sp                                 ; $4cba: $08 $f3 $33
	ld   b, b                                        ; $4cbd: $40
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	nop                                              ; $4cc4: $00
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	nop                                              ; $4cc9: $00
	nop                                              ; $4cca: $00
	nop                                              ; $4ccb: $00
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	nop                                              ; $4cce: $00
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	cp   $fc                                         ; $4cdb: $fe $fc
	ld   bc, $0000                                   ; $4cdd: $01 $00 $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	nop                                              ; $4cf2: $00
	ld   bc, $0300                                   ; $4cf3: $01 $00 $03
	nop                                              ; $4cf6: $00
	ld   h, $00                                      ; $4cf7: $26 $00
	ld   [hl], $02                                   ; $4cf9: $36 $02
	dec  a                                           ; $4cfb: $3d
	ld   bc, $003e                                   ; $4cfc: $01 $3e $00
	rlca                                             ; $4cff: $07
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	nop                                              ; $4d05: $00
	nop                                              ; $4d06: $00
	nop                                              ; $4d07: $00
	nop                                              ; $4d08: $00
	nop                                              ; $4d09: $00
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	nop                                              ; $4d0d: $00
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	nop                                              ; $4d15: $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	nop                                              ; $4d1a: $00
	inc  bc                                          ; $4d1b: $03
	ld   bc, $008e                                   ; $4d1c: $01 $8e $00
	pop  bc                                          ; $4d1f: $c1
	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	nop                                              ; $4d26: $00
	nop                                              ; $4d27: $00
	nop                                              ; $4d28: $00
	nop                                              ; $4d29: $00
	nop                                              ; $4d2a: $00
	nop                                              ; $4d2b: $00
	nop                                              ; $4d2c: $00
	nop                                              ; $4d2d: $00
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	nop                                              ; $4d30: $00
	nop                                              ; $4d31: $00
	nop                                              ; $4d32: $00
	nop                                              ; $4d33: $00
	nop                                              ; $4d34: $00
	nop                                              ; $4d35: $00
	nop                                              ; $4d36: $00
	ld   e, $00                                      ; $4d37: $1e $00
	ld   [hl], b                                     ; $4d39: $70
	nop                                              ; $4d3a: $00
	db   $e3                                         ; $4d3b: $e3
	add  b                                           ; $4d3c: $80

jr_028_4d3d:
	ld   a, a                                        ; $4d3d: $7f
	ld   bc, $00fe                                   ; $4d3e: $01 $fe $00
	nop                                              ; $4d41: $00
	nop                                              ; $4d42: $00
	nop                                              ; $4d43: $00
	nop                                              ; $4d44: $00
	nop                                              ; $4d45: $00
	nop                                              ; $4d46: $00
	nop                                              ; $4d47: $00
	nop                                              ; $4d48: $00
	nop                                              ; $4d49: $00
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	nop                                              ; $4d4c: $00
	ld   bc, $0300                                   ; $4d4d: $01 $00 $03
	nop                                              ; $4d50: $00
	inc  bc                                          ; $4d51: $03
	ld   bc, $0e06                                   ; $4d52: $01 $06 $0e
	jr   nc, jr_028_4d57                             ; $4d55: $30 $00

jr_028_4d57:
	ld   h, b                                        ; $4d57: $60
	nop                                              ; $4d58: $00
	ldh  [rP1], a                                    ; $4d59: $e0 $00
	pop  hl                                          ; $4d5b: $e1
	jr   nz, jr_028_4d3d                             ; $4d5c: $20 $df

	add  b                                           ; $4d5e: $80
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	ld   [bc], a                                     ; $4d65: $02
	nop                                              ; $4d66: $00
	ld   b, $00                                      ; $4d67: $06 $00
	inc  b                                           ; $4d69: $04
	nop                                              ; $4d6a: $00
	ld   h, b                                        ; $4d6b: $60
	nop                                              ; $4d6c: $00
	jr   nz, jr_028_4d6f                             ; $4d6d: $20 $00

jr_028_4d6f:
	ld   sp, $3100                                   ; $4d6f: $31 $00 $31
	nop                                              ; $4d72: $00
	ld   a, e                                        ; $4d73: $7b
	nop                                              ; $4d74: $00
	ld   a, a                                        ; $4d75: $7f
	ld   a, [bc]                                     ; $4d76: $0a
	dec  [hl]                                        ; $4d77: $35
	ld   b, $99                                      ; $4d78: $06 $99
	ld   bc, $01fe                                   ; $4d7a: $01 $fe $01
	ld   [hl+], a                                    ; $4d7d: $22
	nop                                              ; $4d7e: $00
	ld   bc, $0000                                   ; $4d7f: $01 $00 $00
	nop                                              ; $4d82: $00
	nop                                              ; $4d83: $00
	nop                                              ; $4d84: $00
	nop                                              ; $4d85: $00
	nop                                              ; $4d86: $00
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	ld   e, $03                                      ; $4d89: $1e $03
	jr   nc, jr_028_4d8d                             ; $4d8b: $30 $00

jr_028_4d8d:
	ld   h, b                                        ; $4d8d: $60
	nop                                              ; $4d8e: $00
	ret  nz                                          ; $4d8f: $c0

	nop                                              ; $4d90: $00
	add  b                                           ; $4d91: $80
	nop                                              ; $4d92: $00
	add  b                                           ; $4d93: $80
	nop                                              ; $4d94: $00
	add  b                                           ; $4d95: $80
	nop                                              ; $4d96: $00
	add  e                                           ; $4d97: $83
	nop                                              ; $4d98: $00
	add  a                                           ; $4d99: $87
	ld   [bc], a                                     ; $4d9a: $02
	cp   l                                           ; $4d9b: $bd
	sbc  h                                           ; $4d9c: $9c
	ld   h, e                                        ; $4d9d: $63
	nop                                              ; $4d9e: $00
	cp   $00                                         ; $4d9f: $fe $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	nop                                              ; $4da4: $00
	ld   bc, $0100                                   ; $4da5: $01 $00 $01
	nop                                              ; $4da8: $00
	ld   bc, $0300                                   ; $4da9: $01 $00 $03
	nop                                              ; $4dac: $00
	nop                                              ; $4dad: $00
	nop                                              ; $4dae: $00
	inc  b                                           ; $4daf: $04
	nop                                              ; $4db0: $00
	inc  c                                           ; $4db1: $0c
	nop                                              ; $4db2: $00
	inc  e                                           ; $4db3: $1c
	nop                                              ; $4db4: $00
	ld   hl, sp+$00                                  ; $4db5: $f8 $00
	ldh  a, [rP1]                                    ; $4db7: $f0 $00
	rst  $20                                         ; $4db9: $e7
	nop                                              ; $4dba: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dbb: $cf
	nop                                              ; $4dbc: $00
	ld   a, $00                                      ; $4dbd: $3e $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	inc  c                                           ; $4dc1: $0c
	nop                                              ; $4dc2: $00
	ld   b, $00                                      ; $4dc3: $06 $00
	add  d                                           ; $4dc5: $82
	add  b                                           ; $4dc6: $80
	ld   bc, $0380                                   ; $4dc7: $01 $80 $03
	nop                                              ; $4dca: $00
	inc  bc                                          ; $4dcb: $03
	nop                                              ; $4dcc: $00
	rlca                                             ; $4dcd: $07
	nop                                              ; $4dce: $00
	rlca                                             ; $4dcf: $07
	nop                                              ; $4dd0: $00
	ld   c, $04                                      ; $4dd1: $0e $04
	ld   a, [de]                                     ; $4dd3: $1a
	ld   [$1834], sp                                 ; $4dd4: $08 $34 $18
	db   $e4                                         ; $4dd7: $e4
	jr   nc, @-$70                                   ; $4dd8: $30 $8e

	nop                                              ; $4dda: $00
	db   $fc                                         ; $4ddb: $fc
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	nop                                              ; $4dea: $00
	nop                                              ; $4deb: $00
	nop                                              ; $4dec: $00
	ld   bc, $0100                                   ; $4ded: $01 $00 $01
	nop                                              ; $4df0: $00
	inc  bc                                          ; $4df1: $03
	nop                                              ; $4df2: $00
	ld   [bc], a                                     ; $4df3: $02
	nop                                              ; $4df4: $00
	rlca                                             ; $4df5: $07
	nop                                              ; $4df6: $00
	inc  b                                           ; $4df7: $04
	nop                                              ; $4df8: $00
	inc  b                                           ; $4df9: $04
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	ld   [rRAMG], sp                                 ; $4dff: $08 $00 $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	inc  b                                           ; $4e07: $04
	nop                                              ; $4e08: $00
	jr   c, jr_028_4e0b                              ; $4e09: $38 $00

jr_028_4e0b:
	ld   a, b                                        ; $4e0b: $78
	nop                                              ; $4e0c: $00
	ldh  a, [rP1]                                    ; $4e0d: $f0 $00
	ldh  [rP1], a                                    ; $4e0f: $e0 $00
	ret  nz                                          ; $4e11: $c0

	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	nop                                              ; $4e16: $00
	nop                                              ; $4e17: $00
	nop                                              ; $4e18: $00
	nop                                              ; $4e19: $00
	nop                                              ; $4e1a: $00
	nop                                              ; $4e1b: $00
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	ld   [$1800], sp                                 ; $4e21: $08 $00 $18
	nop                                              ; $4e24: $00
	stop                                             ; $4e25: $10 $00
	stop                                             ; $4e27: $10 $00
	stop                                             ; $4e29: $10 $00
	jr   jr_028_4e2d                                 ; $4e2b: $18 $00

jr_028_4e2d:
	inc  c                                           ; $4e2d: $0c
	nop                                              ; $4e2e: $00
	ld   e, $00                                      ; $4e2f: $1e $00

jr_028_4e31:
	rrca                                             ; $4e31: $0f
	nop                                              ; $4e32: $00
	rlca                                             ; $4e33: $07
	nop                                              ; $4e34: $00

jr_028_4e35:
	rla                                              ; $4e35: $17
	nop                                              ; $4e36: $00
	rrca                                             ; $4e37: $0f
	nop                                              ; $4e38: $00
	rlca                                             ; $4e39: $07
	nop                                              ; $4e3a: $00
	ld   bc, $0000                                   ; $4e3b: $01 $00 $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	nop                                              ; $4e46: $00
	nop                                              ; $4e47: $00
	nop                                              ; $4e48: $00
	ld   bc, $0700                                   ; $4e49: $01 $00 $07
	nop                                              ; $4e4c: $00
	rlca                                             ; $4e4d: $07
	nop                                              ; $4e4e: $00
	rrca                                             ; $4e4f: $0f
	inc  bc                                          ; $4e50: $03
	cp   h                                           ; $4e51: $bc
	rlca                                             ; $4e52: $07

jr_028_4e53:
	ld   hl, sp+$3f                                  ; $4e53: $f8 $3f
	ret  nz                                          ; $4e55: $c0

	ld   a, a                                        ; $4e56: $7f
	add  b                                           ; $4e57: $80
	rra                                              ; $4e58: $1f
	ldh  [rAUD3HIGH], a                              ; $4e59: $e0 $1e
	ldh  [rP1], a                                    ; $4e5b: $e0 $00
	cp   a                                           ; $4e5d: $bf
	nop                                              ; $4e5e: $00
	ld   bc, $0200                                   ; $4e5f: $01 $00 $02
	nop                                              ; $4e62: $00
	rlca                                             ; $4e63: $07
	nop                                              ; $4e64: $00
	rra                                              ; $4e65: $1f
	nop                                              ; $4e66: $00
	ld   a, $00                                      ; $4e67: $3e $00
	db   $f4                                         ; $4e69: $f4
	nop                                              ; $4e6a: $00
	ldh  [rP1], a                                    ; $4e6b: $e0 $00
	ldh  [$c0], a                                    ; $4e6d: $e0 $c0
	jr   nc, jr_028_4e31                             ; $4e6f: $30 $c0

	jr   nc, jr_028_4e53                             ; $4e71: $30 $e0

	jr   jr_028_4e35                                 ; $4e73: $18 $c0

	ccf                                              ; $4e75: $3f
	cp   $01                                         ; $4e76: $fe $01
	rst  $20                                         ; $4e78: $e7
	jr   jr_028_4e7b                                 ; $4e79: $18 $00

jr_028_4e7b:
	rst  $38                                         ; $4e7b: $ff
	ld   bc, $0022                                   ; $4e7c: $01 $22 $00
	ld   bc, $0000                                   ; $4e7f: $01 $00 $00
	nop                                              ; $4e82: $00
	ld   hl, sp+$00                                  ; $4e83: $f8 $00
	nop                                              ; $4e85: $00
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	nop                                              ; $4e88: $00
	nop                                              ; $4e89: $00
	nop                                              ; $4e8a: $00
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00

jr_028_4e8f:
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	inc  bc                                          ; $4e91: $03
	nop                                              ; $4e92: $00
	adc  [hl]                                        ; $4e93: $8e
	nop                                              ; $4e94: $00
	cp   b                                           ; $4e95: $b8
	nop                                              ; $4e96: $00
	ldh  a, [rP1]                                    ; $4e97: $f0 $00
	rst  $20                                         ; $4e99: $e7
	ld   [bc], a                                     ; $4e9a: $02
	db   $fd                                         ; $4e9b: $fd
	sbc  h                                           ; $4e9c: $9c
	ld   h, e                                        ; $4e9d: $63
	nop                                              ; $4e9e: $00
	cp   $00                                         ; $4e9f: $fe $00
	nop                                              ; $4ea1: $00
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	nop                                              ; $4ea4: $00
	nop                                              ; $4ea5: $00
	nop                                              ; $4ea6: $00
	nop                                              ; $4ea7: $00
	nop                                              ; $4ea8: $00
	nop                                              ; $4ea9: $00
	nop                                              ; $4eaa: $00
	nop                                              ; $4eab: $00
	nop                                              ; $4eac: $00
	nop                                              ; $4ead: $00
	nop                                              ; $4eae: $00
	ret  nz                                          ; $4eaf: $c0

	nop                                              ; $4eb0: $00
	ld   bc, $0700                                   ; $4eb1: $01 $00 $07
	nop                                              ; $4eb4: $00
	inc  e                                           ; $4eb5: $1c
	nop                                              ; $4eb6: $00
	ld   [hl], b                                     ; $4eb7: $70
	nop                                              ; $4eb8: $00
	rst  $20                                         ; $4eb9: $e7
	nop                                              ; $4eba: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ebb: $cf
	nop                                              ; $4ebc: $00
	ld   a, $00                                      ; $4ebd: $3e $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	inc  b                                           ; $4ec1: $04
	nop                                              ; $4ec2: $00
	ld   b, $00                                      ; $4ec3: $06 $00
	ld   [bc], a                                     ; $4ec5: $02
	nop                                              ; $4ec6: $00
	ld   bc, $0300                                   ; $4ec7: $01 $00 $03
	nop                                              ; $4eca: $00
	inc  bc                                          ; $4ecb: $03
	nop                                              ; $4ecc: $00
	rla                                              ; $4ecd: $17
	nop                                              ; $4ece: $00
	ld   h, a                                        ; $4ecf: $67
	ld   bc, $038e                                   ; $4ed0: $01 $8e $03
	inc  e                                           ; $4ed3: $1c
	ld   b, $39                                      ; $4ed4: $06 $39
	inc  e                                           ; $4ed6: $1c
	db   $e3                                         ; $4ed7: $e3
	jr   c, @-$78                                    ; $4ed8: $38 $86

	nop                                              ; $4eda: $00
	db   $fc                                         ; $4edb: $fc
	nop                                              ; $4edc: $00
	nop                                              ; $4edd: $00
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	nop                                              ; $4eea: $00
	ld   b, b                                        ; $4eeb: $40
	nop                                              ; $4eec: $00
	jr   nz, jr_028_4eef                             ; $4eed: $20 $00

jr_028_4eef:
	jr   c, jr_028_4ef1                              ; $4eef: $38 $00

jr_028_4ef1:
	jr   jr_028_4ef3                                 ; $4ef1: $18 $00

jr_028_4ef3:
	jr   jr_028_4ef5                                 ; $4ef3: $18 $00

jr_028_4ef5:
	inc  e                                           ; $4ef5: $1c
	nop                                              ; $4ef6: $00
	inc  e                                           ; $4ef7: $1c
	nop                                              ; $4ef8: $00
	ld   e, $00                                      ; $4ef9: $1e $00
	ld   a, $00                                      ; $4efb: $3e $00
	ld   a, h                                        ; $4efd: $7c
	nop                                              ; $4efe: $00
	ld   e, h                                        ; $4eff: $5c
	nop                                              ; $4f00: $00
	ld   e, h                                        ; $4f01: $5c
	nop                                              ; $4f02: $00
	cp   h                                           ; $4f03: $bc
	nop                                              ; $4f04: $00
	jr   c, jr_028_4f07                              ; $4f05: $38 $00

jr_028_4f07:
	ld   a, b                                        ; $4f07: $78
	nop                                              ; $4f08: $00
	ld   a, b                                        ; $4f09: $78
	nop                                              ; $4f0a: $00
	ld   [hl], b                                     ; $4f0b: $70
	ret  nz                                          ; $4f0c: $c0

	jr   nc, jr_028_4e8f                             ; $4f0d: $30 $80

	ld   h, b                                        ; $4f0f: $60
	add  b                                           ; $4f10: $80
	ld   h, b                                        ; $4f11: $60
	nop                                              ; $4f12: $00
	ret  nz                                          ; $4f13: $c0

	nop                                              ; $4f14: $00
	add  b                                           ; $4f15: $80
	nop                                              ; $4f16: $00
	nop                                              ; $4f17: $00
	nop                                              ; $4f18: $00
	nop                                              ; $4f19: $00
	nop                                              ; $4f1a: $00
	nop                                              ; $4f1b: $00
	nop                                              ; $4f1c: $00
	nop                                              ; $4f1d: $00
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	nop                                              ; $4f25: $00
	nop                                              ; $4f26: $00
	nop                                              ; $4f27: $00
	nop                                              ; $4f28: $00
	ld   [bc], a                                     ; $4f29: $02
	nop                                              ; $4f2a: $00
	rrca                                             ; $4f2b: $0f
	nop                                              ; $4f2c: $00
	inc  c                                           ; $4f2d: $0c
	nop                                              ; $4f2e: $00
	stop                                             ; $4f2f: $10 $00
	nop                                              ; $4f31: $00
	nop                                              ; $4f32: $00
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00
	nop                                              ; $4f36: $00
	nop                                              ; $4f37: $00
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	nop                                              ; $4f3c: $00
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	dec  bc                                          ; $4f3f: $0b
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	nop                                              ; $4f48: $00
	add  b                                           ; $4f49: $80
	nop                                              ; $4f4a: $00
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	ld   bc, $0601                                   ; $4f4d: $01 $01 $06
	ld   b, $09                                      ; $4f50: $06 $09
	inc  c                                           ; $4f52: $0c
	inc  de                                          ; $4f53: $13
	db   $10                                         ; $4f54: $10
	ld   l, h                                        ; $4f55: $6c
	nop                                              ; $4f56: $00
	ld   a, b                                        ; $4f57: $78
	nop                                              ; $4f58: $00
	ret  nz                                          ; $4f59: $c0

	nop                                              ; $4f5a: $00
	nop                                              ; $4f5b: $00
	nop                                              ; $4f5c: $00
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	nop                                              ; $4f5f: $00
	nop                                              ; $4f60: $00
	nop                                              ; $4f61: $00
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	nop                                              ; $4f65: $00
	nop                                              ; $4f66: $00
	rrca                                             ; $4f67: $0f
	nop                                              ; $4f68: $00
	ld   a, b                                        ; $4f69: $78
	nop                                              ; $4f6a: $00
	ld   [bc], a                                     ; $4f6b: $02
	nop                                              ; $4f6c: $00
	ld   hl, sp-$80                                  ; $4f6d: $f8 $80
	ld   h, b                                        ; $4f6f: $60
	nop                                              ; $4f70: $00
	add  b                                           ; $4f71: $80
	nop                                              ; $4f72: $00
	nop                                              ; $4f73: $00
	nop                                              ; $4f74: $00
	nop                                              ; $4f75: $00
	nop                                              ; $4f76: $00
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	nop                                              ; $4f79: $00
	nop                                              ; $4f7a: $00
	nop                                              ; $4f7b: $00
	nop                                              ; $4f7c: $00
	nop                                              ; $4f7d: $00
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	ld   c, $00                                      ; $4f81: $0e $00
	ld   e, $00                                      ; $4f83: $1e $00
	jr   jr_028_4f87                                 ; $4f85: $18 $00

jr_028_4f87:
	jr   nc, jr_028_4f89                             ; $4f87: $30 $00

jr_028_4f89:
	ld   a, b                                        ; $4f89: $78
	nop                                              ; $4f8a: $00
	ld   a, b                                        ; $4f8b: $78
	nop                                              ; $4f8c: $00
	ld   a, h                                        ; $4f8d: $7c
	inc  c                                           ; $4f8e: $0c
	ld   [hl], d                                     ; $4f8f: $72
	ld   b, $39                                      ; $4f90: $06 $39
	inc  bc                                          ; $4f92: $03
	inc  c                                           ; $4f93: $0c
	nop                                              ; $4f94: $00
	add  a                                           ; $4f95: $87
	nop                                              ; $4f96: $00
	ld   a, a                                        ; $4f97: $7f
	nop                                              ; $4f98: $00
	rra                                              ; $4f99: $1f
	nop                                              ; $4f9a: $00
	rlca                                             ; $4f9b: $07
	nop                                              ; $4f9c: $00
	nop                                              ; $4f9d: $00
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	ld   bc, $0700                                   ; $4fa9: $01 $00 $07
	nop                                              ; $4fac: $00
	rra                                              ; $4fad: $1f
	nop                                              ; $4fae: $00
	rst  $38                                         ; $4faf: $ff
	nop                                              ; $4fb0: $00
	rst  $38                                         ; $4fb1: $ff
	add  b                                           ; $4fb2: $80
	ld   a, a                                        ; $4fb3: $7f
	ld   bc, $0ffe                                   ; $4fb4: $01 $fe $0f
	ldh  a, [$7f]                                    ; $4fb7: $f0 $7f
	add  b                                           ; $4fb9: $80
	ld   e, $e0                                      ; $4fba: $1e $e0
	nop                                              ; $4fbc: $00
	cp   a                                           ; $4fbd: $bf
	nop                                              ; $4fbe: $00
	ld   bc, $0000                                   ; $4fbf: $01 $00 $00
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	nop                                              ; $4fc6: $00
	ld   h, b                                        ; $4fc7: $60
	nop                                              ; $4fc8: $00
	ldh  [rP1], a                                    ; $4fc9: $e0 $00
	pop  bc                                          ; $4fcb: $c1
	nop                                              ; $4fcc: $00
	add  e                                           ; $4fcd: $83
	nop                                              ; $4fce: $00
	rst  $38                                         ; $4fcf: $ff
	ld   [bc], a                                     ; $4fd0: $02
	db   $fd                                         ; $4fd1: $fd
	inc  a                                           ; $4fd2: $3c
	jp   $3fc0                                       ; $4fd3: $c3 $c0 $3f


	cp   $01                                         ; $4fd6: $fe $01
	rst  $20                                         ; $4fd8: $e7
	jr   jr_028_4fdb                                 ; $4fd9: $18 $00

jr_028_4fdb:
	rst  $38                                         ; $4fdb: $ff
	ld   bc, $0022                                   ; $4fdc: $01 $22 $00
	ld   bc, $0000                                   ; $4fdf: $01 $00 $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	inc  bc                                          ; $4fe7: $03
	nop                                              ; $4fe8: $00
	rra                                              ; $4fe9: $1f
	nop                                              ; $4fea: $00
	cp   $00                                         ; $4feb: $fe $00
	ld   hl, sp+$00                                  ; $4fed: $f8 $00
	add  b                                           ; $4fef: $80
	nop                                              ; $4ff0: $00
	inc  bc                                          ; $4ff1: $03
	nop                                              ; $4ff2: $00
	rst  $38                                         ; $4ff3: $ff
	nop                                              ; $4ff4: $00
	db   $fc                                         ; $4ff5: $fc
	nop                                              ; $4ff6: $00
	ldh  a, [rP1]                                    ; $4ff7: $f0 $00
	ldh  [rSC], a                                    ; $4ff9: $e0 $02
	db   $fd                                         ; $4ffb: $fd
	sbc  h                                           ; $4ffc: $9c
	ld   h, e                                        ; $4ffd: $63
	nop                                              ; $4ffe: $00
	cp   $00                                         ; $4fff: $fe $00
	ld   b, $00                                      ; $5001: $06 $00
	inc  c                                           ; $5003: $0c
	nop                                              ; $5004: $00
	ld   a, b                                        ; $5005: $78
	nop                                              ; $5006: $00
	db   $e4                                         ; $5007: $e4
	nop                                              ; $5008: $00
	sbc  b                                           ; $5009: $98
	nop                                              ; $500a: $00
	jr   nc, jr_028_500d                             ; $500b: $30 $00

jr_028_500d:
	ld   b, b                                        ; $500d: $40
	nop                                              ; $500e: $00
	ret  nz                                          ; $500f: $c0

	nop                                              ; $5010: $00
	add  b                                           ; $5011: $80
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	ld   bc, $0e00                                   ; $5015: $01 $00 $0e
	nop                                              ; $5018: $00
	ccf                                              ; $5019: $3f
	nop                                              ; $501a: $00
	rst  $38                                         ; $501b: $ff
	nop                                              ; $501c: $00
	cp   $00                                         ; $501d: $fe $00
	add  b                                           ; $501f: $80
	nop                                              ; $5020: $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	nop                                              ; $502c: $00
	nop                                              ; $502d: $00
	nop                                              ; $502e: $00
	nop                                              ; $502f: $00
	nop                                              ; $5030: $00
	nop                                              ; $5031: $00
	nop                                              ; $5032: $00
	jr   nc, jr_028_5035                             ; $5033: $30 $00

jr_028_5035:
	jr   jr_028_5037                                 ; $5035: $18 $00

jr_028_5037:
	inc  c                                           ; $5037: $0c
	nop                                              ; $5038: $00
	ld   b, $00                                      ; $5039: $06 $00
	inc  bc                                          ; $503b: $03
	nop                                              ; $503c: $00
	inc  bc                                          ; $503d: $03
	nop                                              ; $503e: $00
	ld   bc, $0000                                   ; $503f: $01 $00 $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	ld   h, b                                        ; $5047: $60
	nop                                              ; $5048: $00
	jr   c, jr_028_504b                              ; $5049: $38 $00

jr_028_504b:
	inc  c                                           ; $504b: $0c
	nop                                              ; $504c: $00
	ld   [bc], a                                     ; $504d: $02
	nop                                              ; $504e: $00
	dec  de                                          ; $504f: $1b
	nop                                              ; $5050: $00

jr_028_5051:
	add  hl, de                                      ; $5051: $19
	nop                                              ; $5052: $00
	add  hl, bc                                      ; $5053: $09
	nop                                              ; $5054: $00
	inc  c                                           ; $5055: $0c
	nop                                              ; $5056: $00
	inc  c                                           ; $5057: $0c
	nop                                              ; $5058: $00
	ld   c, $00                                      ; $5059: $0e $00
	ld   c, $02                                      ; $505b: $0e $02
	adc  l                                           ; $505d: $8d
	ld   [bc], a                                     ; $505e: $02
	add  l                                           ; $505f: $85
	nop                                              ; $5060: $00
	ld   bc, $0100                                   ; $5061: $01 $00 $01
	nop                                              ; $5064: $00
	ld   bc, $0100                                   ; $5065: $01 $00 $01
	nop                                              ; $5068: $00
	ld   bc, $0100                                   ; $5069: $01 $00 $01
	nop                                              ; $506c: $00
	inc  bc                                          ; $506d: $03
	nop                                              ; $506e: $00
	ld   [bc], a                                     ; $506f: $02
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	ld   sp, $7300                                   ; $5075: $31 $00 $73
	nop                                              ; $5078: $00
	rst  $20                                         ; $5079: $e7
	nop                                              ; $507a: $00
	jr   jr_028_507d                                 ; $507b: $18 $00

jr_028_507d:
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	ld   [bc], a                                     ; $5080: $02
	call nz, wTitleScreenAnimationStep                                   ; $5081: $c4 $02 $cc
	ld   [bc], a                                     ; $5084: $02
	ret  z                                           ; $5085: $c8

	inc  b                                           ; $5086: $04
	jp   z, $9804                                    ; $5087: $ca $04 $98

	inc  c                                           ; $508a: $0c
	sub  b                                           ; $508b: $90
	ld   [$1834], sp                                 ; $508c: $08 $34 $18
	inc  h                                           ; $508f: $24
	jr   nc, jr_028_50da                             ; $5090: $30 $48

	ld   h, b                                        ; $5092: $60
	sbc  b                                           ; $5093: $98
	ret  nz                                          ; $5094: $c0

	jr   nz, jr_028_5097                             ; $5095: $20 $00

jr_028_5097:
	ldh  [rP1], a                                    ; $5097: $e0 $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	nop                                              ; $50a8: $00
	inc  c                                           ; $50a9: $0c
	nop                                              ; $50aa: $00
	jr   jr_028_50ad                                 ; $50ab: $18 $00

jr_028_50ad:
	ld   h, b                                        ; $50ad: $60
	nop                                              ; $50ae: $00
	ret  c                                           ; $50af: $d8

	nop                                              ; $50b0: $00
	or   b                                           ; $50b1: $b0
	nop                                              ; $50b2: $00
	jr   nz, jr_028_50b5                             ; $50b3: $20 $00

jr_028_50b5:
	ld   b, b                                        ; $50b5: $40
	nop                                              ; $50b6: $00
	call nz, $cc00                                   ; $50b7: $c4 $00 $cc
	nop                                              ; $50ba: $00
	call z, $dc00                                    ; $50bb: $cc $00 $dc
	nop                                              ; $50be: $00
	call c, $ce00                                    ; $50bf: $dc $00 $ce
	nop                                              ; $50c2: $00
	adc  $00                                         ; $50c3: $ce $00
	ld   a, a                                        ; $50c5: $7f
	nop                                              ; $50c6: $00
	rra                                              ; $50c7: $1f
	jr   nc, jr_028_5051                             ; $50c8: $30 $87

	rrca                                             ; $50ca: $0f
	add  b                                           ; $50cb: $80
	inc  bc                                          ; $50cc: $03
	ret  nz                                          ; $50cd: $c0

	inc  c                                           ; $50ce: $0c
	ld   [hl], d                                     ; $50cf: $72
	ld   b, $39                                      ; $50d0: $06 $39
	inc  bc                                          ; $50d2: $03
	inc  a                                           ; $50d3: $3c
	nop                                              ; $50d4: $00
	rrca                                             ; $50d5: $0f
	nop                                              ; $50d6: $00
	add  b                                           ; $50d7: $80
	nop                                              ; $50d8: $00
	ld   a, [hl]                                     ; $50d9: $7e

jr_028_50da:
	nop                                              ; $50da: $00
	rlca                                             ; $50db: $07
	nop                                              ; $50dc: $00
	nop                                              ; $50dd: $00
	nop                                              ; $50de: $00
	nop                                              ; $50df: $00
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	ld   bc, $0700                                   ; $50e4: $01 $00 $07
	ld   hl, sp+$1c                                  ; $50e7: $f8 $1c
	pop  hl                                          ; $50e9: $e1
	ldh  [rTAC], a                                   ; $50ea: $e0 $07
	nop                                              ; $50ec: $00
	rra                                              ; $50ed: $1f
	nop                                              ; $50ee: $00
	rst  $38                                         ; $50ef: $ff
	ld   bc, $87fe                                   ; $50f0: $01 $fe $87
	ld   a, b                                        ; $50f3: $78
	rra                                              ; $50f4: $1f
	ldh  [$08], a                                    ; $50f5: $e0 $08
	rst  $30                                         ; $50f7: $f7
	ld   bc, $001e                                   ; $50f8: $01 $1e $00
	rst  $38                                         ; $50fb: $ff
	nop                                              ; $50fc: $00
	cp   a                                           ; $50fd: $bf
	nop                                              ; $50fe: $00
	ld   bc, $0000                                   ; $50ff: $01 $00 $00
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	nop                                              ; $5104: $00
	nop                                              ; $5105: $00

jr_028_5106:
	nop                                              ; $5106: $00
	rra                                              ; $5107: $1f
	nop                                              ; $5108: $00
	ld   [hl], b                                     ; $5109: $70
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	nop                                              ; $510d: $00
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	nop                                              ; $5110: $00
	nop                                              ; $5111: $00
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	nop                                              ; $5114: $00
	inc  bc                                          ; $5115: $03
	inc  bc                                          ; $5116: $03
	inc  a                                           ; $5117: $3c
	ld   a, $c1                                      ; $5118: $3e $c1
	ldh  [rP1], a                                    ; $511a: $e0 $00
	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00
	nop                                              ; $5121: $00
	ret  nz                                          ; $5122: $c0

	inc  bc                                          ; $5123: $03
	add  b                                           ; $5124: $80
	inc  e                                           ; $5125: $1c
	nop                                              ; $5126: $00
	ld   h, b                                        ; $5127: $60
	nop                                              ; $5128: $00
	ret  nz                                          ; $5129: $c0

	nop                                              ; $512a: $00
	add  b                                           ; $512b: $80
	nop                                              ; $512c: $00
	ld   bc, $ff00                                   ; $512d: $01 $00 $ff
	ldh  a, [rIF]                                    ; $5130: $f0 $0f
	add  d                                           ; $5132: $82
	ld   a, l                                        ; $5133: $7d
	adc  h                                           ; $5134: $8c
	ld   [hl], e                                     ; $5135: $73
	jr   nc, jr_028_5106                             ; $5136: $30 $ce

	add  b                                           ; $5138: $80
	ld   a, h                                        ; $5139: $7c
	nop                                              ; $513a: $00
	cp   $00                                         ; $513b: $fe $00
	inc  hl                                          ; $513d: $23
	nop                                              ; $513e: $00
	ld   bc, $0000                                   ; $513f: $01 $00 $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	nop                                              ; $5146: $00
	nop                                              ; $5147: $00
	nop                                              ; $5148: $00
	nop                                              ; $5149: $00
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	nop                                              ; $514c: $00
	ld   bc, $0300                                   ; $514d: $01 $00 $03
	nop                                              ; $5150: $00
	rrca                                             ; $5151: $0f
	nop                                              ; $5152: $00
	ld   a, [hl]                                     ; $5153: $7e
	ld   h, b                                        ; $5154: $60
	sbc  h                                           ; $5155: $9c
	add  b                                           ; $5156: $80
	ld   [hl], b                                     ; $5157: $70
	nop                                              ; $5158: $00
	add  b                                           ; $5159: $80
	nop                                              ; $515a: $00
	nop                                              ; $515b: $00
	nop                                              ; $515c: $00
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	nop                                              ; $5161: $00
	nop                                              ; $5162: $00
	nop                                              ; $5163: $00
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	nop                                              ; $5166: $00
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	ld   bc, $0f00                                   ; $5169: $01 $00 $0f
	nop                                              ; $516c: $00
	db   $fc                                         ; $516d: $fc
	nop                                              ; $516e: $00
	ldh  a, [rP1]                                    ; $516f: $f0 $00
	nop                                              ; $5171: $00
	nop                                              ; $5172: $00
	ldh  [rP1], a                                    ; $5173: $e0 $00
	nop                                              ; $5175: $00
	nop                                              ; $5176: $00
	ld   bc, $0601                                   ; $5177: $01 $01 $06
	ld   [bc], a                                     ; $517a: $02
	dec  e                                           ; $517b: $1d
	inc  e                                           ; $517c: $1c
	db   $e3                                         ; $517d: $e3
	nop                                              ; $517e: $00
	cp   $00                                         ; $517f: $fe $00
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	nop                                              ; $5184: $00
	nop                                              ; $5185: $00
	nop                                              ; $5186: $00
	ld   b, b                                        ; $5187: $40
	nop                                              ; $5188: $00
	add  c                                           ; $5189: $81
	nop                                              ; $518a: $00
	add  c                                           ; $518b: $81
	ld   bc, $0302                                   ; $518c: $01 $02 $03
	inc  b                                           ; $518f: $04
	rlca                                             ; $5190: $07
	ld   [$100f], sp                                 ; $5191: $08 $0f $10
	inc  e                                           ; $5194: $1c
	ld   h, e                                        ; $5195: $63
	ld   [hl], b                                     ; $5196: $70
	adc  [hl]                                        ; $5197: $8e
	add  b                                           ; $5198: $80
	ld   a, a                                        ; $5199: $7f
	nop                                              ; $519a: $00
	rst  $38                                         ; $519b: $ff
	nop                                              ; $519c: $00
	rst  $38                                         ; $519d: $ff
	nop                                              ; $519e: $00
	add  b                                           ; $519f: $80
	nop                                              ; $51a0: $00
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	inc  a                                           ; $51a5: $3c
	nop                                              ; $51a6: $00
	ld   [bc], a                                     ; $51a7: $02
	nop                                              ; $51a8: $00
	nop                                              ; $51a9: $00
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	nop                                              ; $51ae: $00
	nop                                              ; $51af: $00
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	nop                                              ; $51b4: $00
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00
	nop                                              ; $51b7: $00
	nop                                              ; $51b8: $00
	ld   b, b                                        ; $51b9: $40
	nop                                              ; $51ba: $00
	jr   nc, jr_028_51bd                             ; $51bb: $30 $00

jr_028_51bd:
	stop                                             ; $51bd: $10 $00
	jr   c, jr_028_51c1                              ; $51bf: $38 $00

jr_028_51c1:
	jr   c, jr_028_51c3                              ; $51c1: $38 $00

jr_028_51c3:
	inc  a                                           ; $51c3: $3c
	nop                                              ; $51c4: $00
	inc  a                                           ; $51c5: $3c
	nop                                              ; $51c6: $00
	ld   a, h                                        ; $51c7: $7c
	nop                                              ; $51c8: $00
	ld   hl, sp-$80                                  ; $51c9: $f8 $80
	ld   a, b                                        ; $51cb: $78
	nop                                              ; $51cc: $00
	ld   hl, sp+$00                                  ; $51cd: $f8 $00
	ldh  a, [rP1]                                    ; $51cf: $f0 $00
	ldh  [rP1], a                                    ; $51d1: $e0 $00
	ldh  [rP1], a                                    ; $51d3: $e0 $00
	rst  $38                                         ; $51d5: $ff
	nop                                              ; $51d6: $00
	ld   a, h                                        ; $51d7: $7c
	nop                                              ; $51d8: $00
	rst  $38                                         ; $51d9: $ff
	nop                                              ; $51da: $00
	rst  $38                                         ; $51db: $ff
	nop                                              ; $51dc: $00
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	nop                                              ; $51e5: $00
	nop                                              ; $51e6: $00
	nop                                              ; $51e7: $00
	nop                                              ; $51e8: $00
	nop                                              ; $51e9: $00
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	nop                                              ; $51ec: $00
	ret  nz                                          ; $51ed: $c0

	nop                                              ; $51ee: $00
	ld   [hl], b                                     ; $51ef: $70
	nop                                              ; $51f0: $00
	jr   jr_028_51f3                                 ; $51f1: $18 $00

jr_028_51f3:
	inc  b                                           ; $51f3: $04
	nop                                              ; $51f4: $00
	ld   [bc], a                                     ; $51f5: $02
	nop                                              ; $51f6: $00
	ld   de, $0900                                   ; $51f7: $11 $00 $09
	nop                                              ; $51fa: $00
	inc  b                                           ; $51fb: $04
	nop                                              ; $51fc: $00
	ld   b, $04                                      ; $51fd: $06 $04
	ld   [bc], a                                     ; $51ff: $02
	ld   b, $01                                      ; $5200: $06 $01
	ld   [bc], a                                     ; $5202: $02
	ld   bc, $0102                                   ; $5203: $01 $02 $01
	ld   b, $01                                      ; $5206: $06 $01
	ld   b, $01                                      ; $5208: $06 $01
	ld   b, $01                                      ; $520a: $06 $01
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	nop                                              ; $520e: $00
	ld   bc, $0608                                   ; $520f: $01 $08 $06
	nop                                              ; $5212: $00
	ld   a, h                                        ; $5213: $7c
	nop                                              ; $5214: $00
	ret  nz                                          ; $5215: $c0

	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	nop                                              ; $5218: $00
	cp   $00                                         ; $5219: $fe $00
	ret  nz                                          ; $521b: $c0

	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	inc  bc                                          ; $5223: $03
	ld   bc, $060e                                   ; $5224: $01 $0e $06
	add  hl, sp                                      ; $5227: $39
	jr   jr_028_5290                                 ; $5228: $18 $66

	nop                                              ; $522a: $00
	db   $fc                                         ; $522b: $fc
	nop                                              ; $522c: $00
	ld   [hl], b                                     ; $522d: $70
	nop                                              ; $522e: $00
	ret  c                                           ; $522f: $d8

	ld   bc, $01b0                                   ; $5230: $01 $b0 $01
	jr   nz, jr_028_5238                             ; $5233: $20 $03

	ld   b, b                                        ; $5235: $40
	ld   [bc], a                                     ; $5236: $02
	push bc                                          ; $5237: $c5

jr_028_5238:
	ld   b, $c9                                      ; $5238: $06 $c9
	ld   b, $c9                                      ; $523a: $06 $c9
	ld   b, $d9                                      ; $523c: $06 $d9
	ld   b, $d9                                      ; $523e: $06 $d9
	ld   b, $c9                                      ; $5240: $06 $c9
	ld   [bc], a                                     ; $5242: $02
	call $7c03                                       ; $5243: $cd $03 $7c
	ld   bc, $003e                                   ; $5246: $01 $3e $00
	ccf                                              ; $5249: $3f
	nop                                              ; $524a: $00
	rra                                              ; $524b: $1f
	nop                                              ; $524c: $00
	sbc  a                                           ; $524d: $9f
	rlca                                             ; $524e: $07
	ld   h, b                                        ; $524f: $60
	nop                                              ; $5250: $00
	ld   [hl], b                                     ; $5251: $70
	nop                                              ; $5252: $00
	ccf                                              ; $5253: $3f
	nop                                              ; $5254: $00
	rrca                                             ; $5255: $0f
	nop                                              ; $5256: $00
	ld   h, e                                        ; $5257: $63
	ld   bc, $0e1e                                   ; $5258: $01 $1e $0e
	ld   bc, $0003                                   ; $525b: $01 $03 $00
	ld   [bc], a                                     ; $525e: $02
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	cp   $c0                                         ; $5263: $fe $c0
	jr   nc, jr_028_5267                             ; $5265: $30 $00

jr_028_5267:
	ret  nz                                          ; $5267: $c0

	nop                                              ; $5268: $00
	nop                                              ; $5269: $00
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	ldh  [rTMA], a                                   ; $526c: $e0 $06
	ret  nz                                          ; $526e: $c0

	inc  e                                           ; $526f: $1c
	add  b                                           ; $5270: $80
	jr   c, jr_028_5273                              ; $5271: $38 $00

jr_028_5273:
	ld   [hl], b                                     ; $5273: $70
	nop                                              ; $5274: $00
	ldh  [rP1], a                                    ; $5275: $e0 $00
	add  b                                           ; $5277: $80
	nop                                              ; $5278: $00
	add  b                                           ; $5279: $80
	nop                                              ; $527a: $00
	add  b                                           ; $527b: $80
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	add  b                                           ; $5283: $80
	nop                                              ; $5284: $00
	add  b                                           ; $5285: $80
	add  b                                           ; $5286: $80
	ld   [hl], c                                     ; $5287: $71
	ld   hl, $07de                                   ; $5288: $21 $de $07
	ld   hl, sp+$78                                  ; $528b: $f8 $78
	add  [hl]                                        ; $528d: $86
	add  b                                           ; $528e: $80
	ld   a, b                                        ; $528f: $78

jr_028_5290:
	nop                                              ; $5290: $00
	ld   h, b                                        ; $5291: $60
	nop                                              ; $5292: $00
	inc  de                                          ; $5293: $13
	ld   bc, $1cfe                                   ; $5294: $01 $fe $1c
	pop  hl                                          ; $5297: $e1
	ldh  [$1f], a                                    ; $5298: $e0 $1f
	inc  bc                                          ; $529a: $03
	ldh  a, [$fc]                                    ; $529b: $f0 $fc
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	nop                                              ; $52a4: $00
	jr   nc, jr_028_52bf                             ; $52a5: $30 $18

	ldh  [$e0], a                                    ; $52a7: $e0 $e0
	nop                                              ; $52a9: $00
	nop                                              ; $52aa: $00
	nop                                              ; $52ab: $00
	nop                                              ; $52ac: $00
	nop                                              ; $52ad: $00
	inc  bc                                          ; $52ae: $03
	nop                                              ; $52af: $00
	inc  b                                           ; $52b0: $04
	ld   hl, sp+$60                                  ; $52b1: $f8 $60
	add  b                                           ; $52b3: $80
	add  b                                           ; $52b4: $80
	inc  bc                                          ; $52b5: $03
	nop                                              ; $52b6: $00
	rst  $38                                         ; $52b7: $ff
	inc  bc                                          ; $52b8: $03
	ld   hl, sp-$04                                  ; $52b9: $f8 $fc
	nop                                              ; $52bb: $00
	nop                                              ; $52bc: $00
	rlca                                             ; $52bd: $07
	nop                                              ; $52be: $00

jr_028_52bf:
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	nop                                              ; $52c1: $00
	nop                                              ; $52c2: $00
	nop                                              ; $52c3: $00
	nop                                              ; $52c4: $00
	nop                                              ; $52c5: $00
	nop                                              ; $52c6: $00
	nop                                              ; $52c7: $00
	nop                                              ; $52c8: $00
	nop                                              ; $52c9: $00
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	jr   nz, jr_028_52ce                             ; $52cc: $20 $00

jr_028_52ce:
	ldh  [rP1], a                                    ; $52ce: $e0 $00
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	ldh  a, [rP1]                                    ; $52d3: $f0 $00
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	ret  nz                                          ; $52d7: $c0

	nop                                              ; $52d8: $00
	nop                                              ; $52d9: $00
	nop                                              ; $52da: $00
	inc  c                                           ; $52db: $0c
	nop                                              ; $52dc: $00
	cp   $00                                         ; $52dd: $fe $00
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	nop                                              ; $52e1: $00
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	nop                                              ; $52e4: $00
	nop                                              ; $52e5: $00
	nop                                              ; $52e6: $00
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	nop                                              ; $52e9: $00
	nop                                              ; $52ea: $00
	nop                                              ; $52eb: $00
	nop                                              ; $52ec: $00
	nop                                              ; $52ed: $00
	nop                                              ; $52ee: $00
	nop                                              ; $52ef: $00
	nop                                              ; $52f0: $00
	nop                                              ; $52f1: $00
	nop                                              ; $52f2: $00
	nop                                              ; $52f3: $00
	nop                                              ; $52f4: $00
	ld   bc, $0e01                                   ; $52f5: $01 $01 $0e
	cp   $00                                         ; $52f8: $fe $00
	add  b                                           ; $52fa: $80
	nop                                              ; $52fb: $00
	nop                                              ; $52fc: $00
	nop                                              ; $52fd: $00
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	nop                                              ; $5301: $00
	nop                                              ; $5302: $00
	nop                                              ; $5303: $00
	nop                                              ; $5304: $00
	nop                                              ; $5305: $00
	nop                                              ; $5306: $00
	nop                                              ; $5307: $00
	nop                                              ; $5308: $00
	nop                                              ; $5309: $00
	nop                                              ; $530a: $00
	nop                                              ; $530b: $00
	nop                                              ; $530c: $00
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	ld   bc, $0700                                   ; $530f: $01 $00 $07
	nop                                              ; $5312: $00
	inc  e                                           ; $5313: $1c
	nop                                              ; $5314: $00
	ldh  [$e0], a                                    ; $5315: $e0 $e0
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	nop                                              ; $5319: $00
	nop                                              ; $531a: $00
	nop                                              ; $531b: $00
	nop                                              ; $531c: $00
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	nop                                              ; $5320: $00
	nop                                              ; $5321: $00
	nop                                              ; $5322: $00
	nop                                              ; $5323: $00
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	nop                                              ; $5328: $00
	nop                                              ; $5329: $00
	nop                                              ; $532a: $00
	nop                                              ; $532b: $00
	nop                                              ; $532c: $00
	nop                                              ; $532d: $00
	nop                                              ; $532e: $00
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	nop                                              ; $5331: $00
	nop                                              ; $5332: $00
	inc  c                                           ; $5333: $0c
	nop                                              ; $5334: $00
	ld   a, a                                        ; $5335: $7f
	nop                                              ; $5336: $00
	rrca                                             ; $5337: $0f
	nop                                              ; $5338: $00
	ld   bc, $0000                                   ; $5339: $01 $00 $00
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	nop                                              ; $5341: $00
	nop                                              ; $5342: $00
	nop                                              ; $5343: $00
	nop                                              ; $5344: $00
	nop                                              ; $5345: $00
	nop                                              ; $5346: $00
	nop                                              ; $5347: $00
	nop                                              ; $5348: $00
	nop                                              ; $5349: $00
	nop                                              ; $534a: $00
	nop                                              ; $534b: $00
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	nop                                              ; $5350: $00
	nop                                              ; $5351: $00
	nop                                              ; $5352: $00
	nop                                              ; $5353: $00
	nop                                              ; $5354: $00
	nop                                              ; $5355: $00
	nop                                              ; $5356: $00
	nop                                              ; $5357: $00
	nop                                              ; $5358: $00
	nop                                              ; $5359: $00
	nop                                              ; $535a: $00
	ld   bc, $1f00                                   ; $535b: $01 $00 $1f
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	nop                                              ; $5360: $00
	nop                                              ; $5361: $00
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00
	nop                                              ; $5364: $00
	ld   e, $00                                      ; $5365: $1e $00
	inc  bc                                          ; $5367: $03
	nop                                              ; $5368: $00
	nop                                              ; $5369: $00
	nop                                              ; $536a: $00
	ld   a, d                                        ; $536b: $7a
	nop                                              ; $536c: $00
	rrca                                             ; $536d: $0f
	nop                                              ; $536e: $00
	ld   bc, $0000                                   ; $536f: $01 $00 $00
	nop                                              ; $5372: $00
	nop                                              ; $5373: $00
	nop                                              ; $5374: $00
	inc  bc                                          ; $5375: $03
	nop                                              ; $5376: $00
	pop  bc                                          ; $5377: $c1
	nop                                              ; $5378: $00
	ldh  a, [rP1]                                    ; $5379: $f0 $00
	jr   c, jr_028_537d                              ; $537b: $38 $00

jr_028_537d:
	ld   [$0400], sp                                 ; $537d: $08 $00 $04
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	nop                                              ; $5386: $00
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	nop                                              ; $538a: $00
	nop                                              ; $538b: $00
	nop                                              ; $538c: $00
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	ld   bc, $0100                                   ; $538f: $01 $00 $01
	nop                                              ; $5392: $00
	inc  bc                                          ; $5393: $03
	nop                                              ; $5394: $00
	inc  bc                                          ; $5395: $03
	ld   bc, $070e                                   ; $5396: $01 $0e $07
	jr   c, jr_028_539b                              ; $5399: $38 $00

jr_028_539b:
	rst  $38                                         ; $539b: $ff
	nop                                              ; $539c: $00
	cp   $00                                         ; $539d: $fe $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	nop                                              ; $53a1: $00
	nop                                              ; $53a2: $00
	nop                                              ; $53a3: $00
	nop                                              ; $53a4: $00
	add  b                                           ; $53a5: $80
	nop                                              ; $53a6: $00
	ld   a, h                                        ; $53a7: $7c
	nop                                              ; $53a8: $00
	ld   e, $00                                      ; $53a9: $1e $00
	rrca                                             ; $53ab: $0f
	nop                                              ; $53ac: $00
	ld   b, a                                        ; $53ad: $47
	nop                                              ; $53ae: $00
	ld   [hl], c                                     ; $53af: $71
	nop                                              ; $53b0: $00
	dec  a                                           ; $53b1: $3d
	nop                                              ; $53b2: $00
	rra                                              ; $53b3: $1f
	nop                                              ; $53b4: $00
	ld   c, $00                                      ; $53b5: $0e $00
	adc  a                                           ; $53b7: $8f
	nop                                              ; $53b8: $00
	ld   c, a                                        ; $53b9: $4f
	nop                                              ; $53ba: $00
	rlca                                             ; $53bb: $07
	nop                                              ; $53bc: $00
	daa                                              ; $53bd: $27
	nop                                              ; $53be: $00
	cpl                                              ; $53bf: $2f
	nop                                              ; $53c0: $00
	cpl                                              ; $53c1: $2f
	ld   [bc], a                                     ; $53c2: $02
	dec  l                                           ; $53c3: $2d
	nop                                              ; $53c4: $00
	ld   l, a                                        ; $53c5: $6f
	nop                                              ; $53c6: $00
	ld   a, [hl]                                     ; $53c7: $7e
	nop                                              ; $53c8: $00
	ld   a, h                                        ; $53c9: $7c
	ld   hl, $25dc                                   ; $53ca: $21 $dc $25
	ret  c                                           ; $53cd: $d8

	ld   l, c                                        ; $53ce: $69
	sub  b                                           ; $53cf: $90
	ld   d, d                                        ; $53d0: $52
	and  b                                           ; $53d1: $a0
	and  h                                           ; $53d2: $a4
	ld   b, b                                        ; $53d3: $40
	ret  c                                           ; $53d4: $d8

	nop                                              ; $53d5: $00
	or   b                                           ; $53d6: $b0
	ld   [$3fc0], sp                                 ; $53d7: $08 $c0 $3f
	nop                                              ; $53da: $00
	ldh  [rP1], a                                    ; $53db: $e0 $00
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	inc  bc                                          ; $53e3: $03
	ld   bc, $040e                                   ; $53e4: $01 $0e $04
	jr   jr_028_53f9                                 ; $53e7: $18 $10

	jr   nz, jr_028_53eb                             ; $53e9: $20 $00

jr_028_53eb:
	ld   [hl], e                                     ; $53eb: $73
	nop                                              ; $53ec: $00
	ld   l, [hl]                                     ; $53ed: $6e
	nop                                              ; $53ee: $00
	ret  c                                           ; $53ef: $d8

	nop                                              ; $53f0: $00
	and  b                                           ; $53f1: $a0
	nop                                              ; $53f2: $00
	ld   b, b                                        ; $53f3: $40
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00

jr_028_53f9:
	adc  b                                           ; $53f9: $88
	nop                                              ; $53fa: $00
	add  b                                           ; $53fb: $80
	nop                                              ; $53fc: $00
	sub  b                                           ; $53fd: $90
	nop                                              ; $53fe: $00
	ret  nc                                          ; $53ff: $d0

	nop                                              ; $5400: $00
	jr   c, jr_028_5403                              ; $5401: $38 $00

jr_028_5403:
	or   $00                                         ; $5403: $f6 $00
	nop                                              ; $5405: $00
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	ld   a, b                                        ; $5409: $78
	nop                                              ; $540a: $00
	ret  nz                                          ; $540b: $c0

	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	nop                                              ; $5418: $00
	nop                                              ; $5419: $00
	nop                                              ; $541a: $00
	nop                                              ; $541b: $00
	nop                                              ; $541c: $00
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	nop                                              ; $5420: $00
	ret  z                                           ; $5421: $c8

	nop                                              ; $5422: $00
	ldh  a, [rP1]                                    ; $5423: $f0 $00
	ld   [hl], b                                     ; $5425: $70
	nop                                              ; $5426: $00
	jr   c, jr_028_5439                              ; $5427: $38 $10

	inc  l                                           ; $5429: $2c
	ld   [$0017], sp                                 ; $542a: $08 $17 $00
	sbc  a                                           ; $542d: $9f
	rlca                                             ; $542e: $07
	ld   h, b                                        ; $542f: $60
	ld   bc, $017e                                   ; $5430: $01 $7e $01
	ld   a, $0c                                      ; $5433: $3e $0c
	inc  sp                                          ; $5435: $33
	ld   bc, $001e                                   ; $5436: $01 $1e $00

jr_028_5439:
	inc  bc                                          ; $5439: $03
	nop                                              ; $543a: $00
	ld   bc, $0000                                   ; $543b: $01 $00 $00
	nop                                              ; $543e: $00
	nop                                              ; $543f: $00
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	nop                                              ; $5448: $00
	nop                                              ; $5449: $00
	nop                                              ; $544a: $00

jr_028_544b:
	nop                                              ; $544b: $00
	nop                                              ; $544c: $00
	ldh  a, [rP1]                                    ; $544d: $f0 $00
	rst  $38                                         ; $544f: $ff
	ret  nz                                          ; $5450: $c0

	jr   nz, jr_028_544b                             ; $5451: $20 $f8

	rlca                                             ; $5453: $07
	ld   a, $c1                                      ; $5454: $3e $c1
	nop                                              ; $5456: $00
	rst  $38                                         ; $5457: $ff
	nop                                              ; $5458: $00
	add  b                                           ; $5459: $80
	nop                                              ; $545a: $00
	ldh  a, [rP1]                                    ; $545b: $f0 $00
	nop                                              ; $545d: $00
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	ld   bc, $0600                                   ; $5466: $01 $00 $06
	ld   bc, $0f10                                   ; $5469: $01 $10 $0f
	nop                                              ; $546c: $00
	ld   hl, sp+$00                                  ; $546d: $f8 $00
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	rst  $38                                         ; $5475: $ff
	nop                                              ; $5476: $00
	ld   hl, sp+$00                                  ; $5477: $f8 $00
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	nop                                              ; $547b: $00
	nop                                              ; $547c: $00
	rlca                                             ; $547d: $07
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	jr   c, jr_028_548c                              ; $5484: $38 $06

	ret  nz                                          ; $5486: $c0

	inc  a                                           ; $5487: $3c
	nop                                              ; $5488: $00
	ld   hl, sp+$00                                  ; $5489: $f8 $00
	add  b                                           ; $548b: $80

jr_028_548c:
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	nop                                              ; $548e: $00
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	rrca                                             ; $5491: $0f
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	add  b                                           ; $5495: $80
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	inc  c                                           ; $549b: $0c
	nop                                              ; $549c: $00
	cp   $00                                         ; $549d: $fe $00
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	ld   bc, $0f00                                   ; $54ad: $01 $00 $0f
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	cp   $00                                         ; $54c1: $fe $00
	ld   bc, $0000                                   ; $54c3: $01 $00 $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	ldh  [rP1], a                                    ; $54cd: $e0 $00
	ld   hl, sp+$00                                  ; $54cf: $f8 $00
	rlca                                             ; $54d1: $07
	nop                                              ; $54d2: $00
	ld   bc, $0000                                   ; $54d3: $01 $00 $00
	nop                                              ; $54d6: $00
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	nop                                              ; $54d9: $00
	nop                                              ; $54da: $00
	nop                                              ; $54db: $00
	nop                                              ; $54dc: $00
	nop                                              ; $54dd: $00
	nop                                              ; $54de: $00
	nop                                              ; $54df: $00
	nop                                              ; $54e0: $00
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	ldh  a, [rP1]                                    ; $54e3: $f0 $00
	inc  a                                           ; $54e5: $3c
	nop                                              ; $54e6: $00
	ld   e, $00                                      ; $54e7: $1e $00
	ld   b, $00                                      ; $54e9: $06 $00
	inc  bc                                          ; $54eb: $03
	nop                                              ; $54ec: $00
	inc  bc                                          ; $54ed: $03
	nop                                              ; $54ee: $00
	ld   [hl], c                                     ; $54ef: $71
	nop                                              ; $54f0: $00
	dec  e                                           ; $54f1: $1d
	nop                                              ; $54f2: $00
	dec  b                                           ; $54f3: $05
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	nop                                              ; $54f6: $00
	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	inc  c                                           ; $54fb: $0c
	nop                                              ; $54fc: $00
	inc  b                                           ; $54fd: $04
	nop                                              ; $54fe: $00
	ld   b, $00                                      ; $54ff: $06 $00
	nop                                              ; $5501: $00
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00

jr_028_550b:
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	nop                                              ; $5514: $00
	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	ld   a, a                                        ; $5519: $7f
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	rra                                              ; $551d: $1f
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	nop                                              ; $5527: $00
	nop                                              ; $5528: $00
	nop                                              ; $5529: $00
	nop                                              ; $552a: $00
	nop                                              ; $552b: $00
	nop                                              ; $552c: $00
	nop                                              ; $552d: $00
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	nop                                              ; $5530: $00
	rlca                                             ; $5531: $07
	nop                                              ; $5532: $00
	ld   hl, sp+$00                                  ; $5533: $f8 $00
	ld   bc, $3f00                                   ; $5535: $01 $00 $3f
	ccf                                              ; $5538: $3f
	ret  nz                                          ; $5539: $c0

	jr   nc, jr_028_550b                             ; $553a: $30 $cf

	nop                                              ; $553c: $00
	cp   $00                                         ; $553d: $fe $00
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	ld   [bc], a                                     ; $5541: $02
	nop                                              ; $5542: $00
	inc  hl                                          ; $5543: $23
	nop                                              ; $5544: $00
	inc  hl                                          ; $5545: $23
	nop                                              ; $5546: $00
	inc  hl                                          ; $5547: $23
	nop                                              ; $5548: $00
	daa                                              ; $5549: $27
	ld   hl, $0146                           ; $554a: $21 $46 $01
	ld   b, [hl]                                     ; $554d: $46
	ld   bc, $028c                                   ; $554e: $01 $8c $02
	dec  e                                           ; $5551: $1d
	ld   [HLequAddrOfAnimSpriteSpecDetails], sp                                 ; $5552: $08 $76 $30
	call z, $08f0                                    ; $5555: $cc $f0 $08
	nop                                              ; $5558: $00
	rst  $38                                         ; $5559: $ff
	nop                                              ; $555a: $00
	ldh  [rP1], a                                    ; $555b: $e0 $00
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	ld   hl, $6700                                   ; $5563: $21 $00 $67
	nop                                              ; $5566: $00
	ld   l, $00                                      ; $5567: $2e $00
	inc  a                                           ; $5569: $3c
	ld   [$0016], sp                                 ; $556a: $08 $16 $00
	sbc  a                                           ; $556d: $9f
	inc  bc                                          ; $556e: $03
	ld   l, h                                        ; $556f: $6c
	rlca                                             ; $5570: $07
	ld   a, b                                        ; $5571: $78
	add  hl, bc                                      ; $5572: $09
	ld   [hl], $0c                                   ; $5573: $36 $0c
	inc  sp                                          ; $5575: $33
	ld   bc, $001e                                   ; $5576: $01 $1e $00
	inc  bc                                          ; $5579: $03
	nop                                              ; $557a: $00
	ld   bc, $0000                                   ; $557b: $01 $00 $00
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	ld   bc, $fc00                                   ; $5581: $01 $00 $fc
	nop                                              ; $5584: $00
	ret  nz                                          ; $5585: $c0

	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	nop                                              ; $5589: $00
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	ret  nz                                          ; $558f: $c0

	add  b                                           ; $5590: $80
	ld   a, a                                        ; $5591: $7f
	rst  $38                                         ; $5592: $ff
	nop                                              ; $5593: $00
	ld   a, $c1                                      ; $5594: $3e $c1
	nop                                              ; $5596: $00
	rst  $38                                         ; $5597: $ff
	nop                                              ; $5598: $00
	add  b                                           ; $5599: $80
	nop                                              ; $559a: $00
	pop  af                                          ; $559b: $f1
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	ret  nz                                          ; $55a1: $c0

	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	nop                                              ; $55a5: $00
	nop                                              ; $55a6: $00
	nop                                              ; $55a7: $00
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
	nop                                              ; $55b0: $00
	rst  $38                                         ; $55b1: $ff
	ld   hl, sp+$07                                  ; $55b2: $f8 $07
	nop                                              ; $55b4: $00
	rst  $38                                         ; $55b5: $ff
	nop                                              ; $55b6: $00
	ld   hl, sp+$00                                  ; $55b7: $f8 $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	rst  $38                                         ; $55bb: $ff
	nop                                              ; $55bc: $00
	rlca                                             ; $55bd: $07
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
	nop                                              ; $55ca: $00
	ld   bc, $0e00                                   ; $55cb: $01 $00 $0e
	nop                                              ; $55ce: $00
	ld   hl, sp+$00                                  ; $55cf: $f8 $00
	rst  $28                                         ; $55d1: $ef
	nop                                              ; $55d2: $00
	add  b                                           ; $55d3: $80
	nop                                              ; $55d4: $00
	ld   hl, sp+$00                                  ; $55d5: $f8 $00
	rrca                                             ; $55d7: $0f
	nop                                              ; $55d8: $00
	nop                                              ; $55d9: $00
	nop                                              ; $55da: $00
	db   $fc                                         ; $55db: $fc
	nop                                              ; $55dc: $00
	ret  nz                                          ; $55dd: $c0

	nop                                              ; $55de: $00
	ld   a, a                                        ; $55df: $7f
	nop                                              ; $55e0: $00
	inc  bc                                          ; $55e1: $03
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	rrca                                             ; $55f3: $0f
	nop                                              ; $55f4: $00
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	rra                                              ; $55f9: $1f
	nop                                              ; $55fa: $00
	ld   bc, $fe00                                   ; $55fb: $01 $00 $fe
	nop                                              ; $55fe: $00
	nop                                              ; $55ff: $00
	nop                                              ; $5600: $00
	add  b                                           ; $5601: $80
	nop                                              ; $5602: $00
	ld   a, $00                                      ; $5603: $3e $00
	ld   bc, $0000                                   ; $5605: $01 $00 $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	nop                                              ; $560e: $00
	stop                                             ; $560f: $10 $00
	ldh  [c], a                                      ; $5611: $e2
	nop                                              ; $5612: $00
	ld   [$0700], sp                                 ; $5613: $08 $00 $07
	inc  bc                                          ; $5616: $03
	db   $fc                                         ; $5617: $fc
	ldh  [$1f], a                                    ; $5618: $e0 $1f
	nop                                              ; $561a: $00
	rst  $38                                         ; $561b: $ff
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	ld   b, b                                        ; $5621: $40
	nop                                              ; $5622: $00
	jr   nc, jr_028_5625                             ; $5623: $30 $00

jr_028_5625:
	ldh  a, [rP1]                                    ; $5625: $f0 $00
	jr   c, jr_028_5629                              ; $5627: $38 $00

jr_028_5629:
	inc  e                                           ; $5629: $1c
	ld   [$0c24], sp                                 ; $562a: $08 $24 $0c
	ld   [de], a                                     ; $562d: $12
	inc  h                                           ; $562e: $24
	ld   a, [de]                                     ; $562f: $1a
	ld   c, [hl]                                     ; $5630: $4e
	ld   sp, $c13e                                   ; $5631: $31 $3e $c1
	ld   a, h                                        ; $5634: $7c
	add  e                                           ; $5635: $83
	ld   hl, sp+$06                                  ; $5636: $f8 $06
	nop                                              ; $5638: $00
	ld   hl, sp+$00                                  ; $5639: $f8 $00
	add  b                                           ; $563b: $80
	nop                                              ; $563c: $00
	nop                                              ; $563d: $00
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	nop                                              ; $5646: $00
	inc  bc                                          ; $5647: $03
	nop                                              ; $5648: $00
	rra                                              ; $5649: $1f
	inc  c                                           ; $564a: $0c
	ld   [hl-], a                                    ; $564b: $32
	jr   jr_028_56b5                                 ; $564c: $18 $67

	inc  a                                           ; $564e: $3c
	ld   b, e                                        ; $564f: $43
	inc  a                                           ; $5650: $3c
	jp   $807f                                       ; $5651: $c3 $7f $80


	inc  a                                           ; $5654: $3c

jr_028_5655:
	jp   Jump_028_7e01                               ; $5655: $c3 $01 $7e


	nop                                              ; $5658: $00
	inc  bc                                          ; $5659: $03
	nop                                              ; $565a: $00
	nop                                              ; $565b: $00
	nop                                              ; $565c: $00
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	nop                                              ; $5664: $00
	rrca                                             ; $5665: $0f
	nop                                              ; $5666: $00
	db   $fc                                         ; $5667: $fc
	nop                                              ; $5668: $00
	add  b                                           ; $5669: $80
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	ret  nz                                          ; $566f: $c0

	nop                                              ; $5670: $00
	rst  $38                                         ; $5671: $ff
	cp   $01                                         ; $5672: $fe $01
	jr   nz, jr_028_5655                             ; $5674: $20 $df

	nop                                              ; $5676: $00
	rst  $38                                         ; $5677: $ff
	nop                                              ; $5678: $00
	add  b                                           ; $5679: $80
	nop                                              ; $567a: $00
	ld   sp, $0000                                   ; $567b: $31 $00 $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	inc  bc                                          ; $5683: $03
	nop                                              ; $5684: $00
	add  b                                           ; $5685: $80
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	rst  $38                                         ; $5691: $ff
	nop                                              ; $5692: $00
	rst  $38                                         ; $5693: $ff
	nop                                              ; $5694: $00
	rst  $38                                         ; $5695: $ff
	nop                                              ; $5696: $00
	ld   hl, sp+$00                                  ; $5697: $f8 $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	ccf                                              ; $569b: $3f
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	add  b                                           ; $56a3: $80
	nop                                              ; $56a4: $00
	nop                                              ; $56a5: $00
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	nop                                              ; $56a8: $00
	nop                                              ; $56a9: $00
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	nop                                              ; $56b0: $00
	rst  $28                                         ; $56b1: $ef
	nop                                              ; $56b2: $00
	add  b                                           ; $56b3: $80
	nop                                              ; $56b4: $00

jr_028_56b5:
	ld   hl, sp+$00                                  ; $56b5: $f8 $00
	nop                                              ; $56b7: $00
	nop                                              ; $56b8: $00
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	db   $fc                                         ; $56bb: $fc
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	nop                                              ; $56c4: $00
	nop                                              ; $56c5: $00
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	nop                                              ; $56c8: $00
	rrca                                             ; $56c9: $0f
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	db   $fc                                         ; $56d3: $fc
	nop                                              ; $56d4: $00
	nop                                              ; $56d5: $00
	nop                                              ; $56d6: $00
	nop                                              ; $56d7: $00
	ccf                                              ; $56d8: $3f
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	ld   bc, $fe00                                   ; $56db: $01 $00 $fe
	nop                                              ; $56de: $00
	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	add  b                                           ; $56e9: $80
	nop                                              ; $56ea: $00
	rra                                              ; $56eb: $1f
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	ld   [bc], a                                     ; $56f1: $02
	nop                                              ; $56f2: $00
	ld   [$0106], sp                                 ; $56f3: $08 $06 $01
	inc  bc                                          ; $56f6: $03
	inc  e                                           ; $56f7: $1c
	db   $fc                                         ; $56f8: $fc
	inc  bc                                          ; $56f9: $03
	nop                                              ; $56fa: $00
	rst  $38                                         ; $56fb: $ff
	nop                                              ; $56fc: $00
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00

Jump_028_56ff:
	nop                                              ; $56ff: $00
	nop                                              ; $5700: $00
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	jr   c, jr_028_570b                              ; $5709: $38 $00

jr_028_570b:
	ld   b, $00                                      ; $570b: $06 $00
	ldh  a, [rAUD1SWEEP]                             ; $570d: $f0 $10
	ld   c, $5c                                      ; $570f: $0e $5c
	ld   [hl+], a                                    ; $5711: $22
	sbc  [hl]                                        ; $5712: $9e
	ld   h, c                                        ; $5713: $61
	inc  a                                           ; $5714: $3c
	jp   $06f8                                       ; $5715: $c3 $f8 $06


	nop                                              ; $5718: $00
	ld   hl, sp+$00                                  ; $5719: $f8 $00
	add  b                                           ; $571b: $80
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	jr   c, jr_028_5723                              ; $5721: $38 $00

jr_028_5723:
	ld   l, b                                        ; $5723: $68
	nop                                              ; $5724: $00
	ld   l, b                                        ; $5725: $68
	nop                                              ; $5726: $00
	ret  z                                           ; $5727: $c8

	nop                                              ; $5728: $00
	ret  c                                           ; $5729: $d8

	nop                                              ; $572a: $00
	ret  c                                           ; $572b: $d8

	nop                                              ; $572c: $00
	ret  c                                           ; $572d: $d8

	nop                                              ; $572e: $00
	ret  c                                           ; $572f: $d8

	nop                                              ; $5730: $00
	ret  c                                           ; $5731: $d8

	nop                                              ; $5732: $00
	ret  c                                           ; $5733: $d8

	nop                                              ; $5734: $00
	ld   c, h                                        ; $5735: $4c
	nop                                              ; $5736: $00
	ld   l, h                                        ; $5737: $6c
	nop                                              ; $5738: $00
	ld   h, $00                                      ; $5739: $26 $00
	ld   bc, $0000                                   ; $573b: $01 $00 $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	ld   h, b                                        ; $5741: $60
	nop                                              ; $5742: $00
	ret  nz                                          ; $5743: $c0

	nop                                              ; $5744: $00
	ret  nz                                          ; $5745: $c0

	nop                                              ; $5746: $00
	ldh  [rP1], a                                    ; $5747: $e0 $00
	ld   [hl], b                                     ; $5749: $70
	nop                                              ; $574a: $00
	ld   a, b                                        ; $574b: $78
	nop                                              ; $574c: $00
	ld   l, [hl]                                     ; $574d: $6e
	nop                                              ; $574e: $00
	ld   h, e                                        ; $574f: $63
	nop                                              ; $5750: $00
	ld   sp, $1800                                   ; $5751: $31 $00 $18
	nop                                              ; $5754: $00
	ld   b, $00                                      ; $5755: $06 $00
	nop                                              ; $5757: $00
	nop                                              ; $5758: $00
	nop                                              ; $5759: $00
	nop                                              ; $575a: $00
	nop                                              ; $575b: $00
	nop                                              ; $575c: $00
	nop                                              ; $575d: $00
	nop                                              ; $575e: $00
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	inc  e                                           ; $5763: $1c
	nop                                              ; $5764: $00
	nop                                              ; $5765: $00
	nop                                              ; $5766: $00
	nop                                              ; $5767: $00
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	nop                                              ; $576c: $00
	nop                                              ; $576d: $00
	nop                                              ; $576e: $00
	nop                                              ; $576f: $00
	nop                                              ; $5770: $00
	nop                                              ; $5771: $00
	nop                                              ; $5772: $00
	nop                                              ; $5773: $00
	nop                                              ; $5774: $00
	nop                                              ; $5775: $00
	nop                                              ; $5776: $00
	nop                                              ; $5777: $00
	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	nop                                              ; $5780: $00
	nop                                              ; $5781: $00
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	nop                                              ; $5784: $00
	nop                                              ; $5785: $00
	nop                                              ; $5786: $00
	nop                                              ; $5787: $00
	nop                                              ; $5788: $00
	nop                                              ; $5789: $00
	nop                                              ; $578a: $00
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	nop                                              ; $578d: $00
	nop                                              ; $578e: $00
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	nop                                              ; $5799: $00
	nop                                              ; $579a: $00
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	nop                                              ; $57a2: $00
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	nop                                              ; $57a5: $00
	nop                                              ; $57a6: $00
	nop                                              ; $57a7: $00
	nop                                              ; $57a8: $00
	nop                                              ; $57a9: $00
	nop                                              ; $57aa: $00
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	nop                                              ; $57ad: $00
	nop                                              ; $57ae: $00
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	nop                                              ; $57b1: $00
	nop                                              ; $57b2: $00
	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	nop                                              ; $57b5: $00
	nop                                              ; $57b6: $00
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	nop                                              ; $57ba: $00
	nop                                              ; $57bb: $00
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	nop                                              ; $57c1: $00
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	nop                                              ; $57c4: $00
	nop                                              ; $57c5: $00
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	nop                                              ; $57c8: $00
	nop                                              ; $57c9: $00
	nop                                              ; $57ca: $00
	nop                                              ; $57cb: $00
	nop                                              ; $57cc: $00
	nop                                              ; $57cd: $00
	nop                                              ; $57ce: $00
	nop                                              ; $57cf: $00
	nop                                              ; $57d0: $00
	nop                                              ; $57d1: $00
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	nop                                              ; $57d6: $00
	nop                                              ; $57d7: $00
	nop                                              ; $57d8: $00
	nop                                              ; $57d9: $00
	nop                                              ; $57da: $00
	nop                                              ; $57db: $00
	nop                                              ; $57dc: $00
	nop                                              ; $57dd: $00
	nop                                              ; $57de: $00
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	nop                                              ; $57e1: $00
	nop                                              ; $57e2: $00
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	nop                                              ; $57e5: $00
	nop                                              ; $57e6: $00
	nop                                              ; $57e7: $00
	nop                                              ; $57e8: $00
	nop                                              ; $57e9: $00
	nop                                              ; $57ea: $00
	nop                                              ; $57eb: $00
	nop                                              ; $57ec: $00
	nop                                              ; $57ed: $00
	nop                                              ; $57ee: $00
	nop                                              ; $57ef: $00
	nop                                              ; $57f0: $00
	nop                                              ; $57f1: $00
	nop                                              ; $57f2: $00
	nop                                              ; $57f3: $00
	nop                                              ; $57f4: $00
	nop                                              ; $57f5: $00
	nop                                              ; $57f6: $00
	nop                                              ; $57f7: $00
	nop                                              ; $57f8: $00
	nop                                              ; $57f9: $00
	nop                                              ; $57fa: $00
	nop                                              ; $57fb: $00
	nop                                              ; $57fc: $00
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	inc  bc                                          ; $5802: $03
	inc  bc                                          ; $5803: $03
	ld   c, $0f                                      ; $5804: $0e $0f
	inc  bc                                          ; $5806: $03
	ld   [bc], a                                     ; $5807: $02
	inc  c                                           ; $5808: $0c
	rrca                                             ; $5809: $0f
	jr   @+$21                                       ; $580a: $18 $1f

	inc  d                                           ; $580c: $14
	rra                                              ; $580d: $1f
	add  hl, bc                                      ; $580e: $09
	rrca                                             ; $580f: $0f
	add  hl, bc                                      ; $5810: $09
	rrca                                             ; $5811: $0f
	ld   a, [bc]                                     ; $5812: $0a
	rrca                                             ; $5813: $0f
	ld   c, $0f                                      ; $5814: $0e $0f
	ld   a, [bc]                                     ; $5816: $0a
	dec  bc                                          ; $5817: $0b
	inc  bc                                          ; $5818: $03
	inc  bc                                          ; $5819: $03
	dec  b                                           ; $581a: $05
	ld   b, $05                                      ; $581b: $06 $05
	rlca                                             ; $581d: $07
	inc  b                                           ; $581e: $04
	rlca                                             ; $581f: $07
	ccf                                              ; $5820: $3f
	ccf                                              ; $5821: $3f
	ret  nz                                          ; $5822: $c0

	rst  $38                                         ; $5823: $ff
	ldh  [$1f], a                                    ; $5824: $e0 $1f

jr_028_5826:
	pop  bc                                          ; $5826: $c1
	ld   a, $35                                      ; $5827: $3e $35
	jp   z, $ff40                                    ; $5829: $ca $40 $ff

	sub  b                                           ; $582c: $90
	rst  $38                                         ; $582d: $ff
	inc  de                                          ; $582e: $13
	rst  $38                                         ; $582f: $ff
	ld   e, c                                        ; $5830: $59
	rst  $38                                         ; $5831: $ff
	ld   e, h                                        ; $5832: $5c
	rst  $30                                         ; $5833: $f7
	sbc  $ff                                         ; $5834: $de $ff
	rst  $38                                         ; $5836: $ff
	ld   [hl], a                                     ; $5837: $77
	rst  $38                                         ; $5838: $ff
	call $edff                                       ; $5839: $cd $ff $ed
	rst  $38                                         ; $583c: $ff
	sbc  $ff                                         ; $583d: $de $ff
	add  c                                           ; $583f: $81
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	ldh  a, [$f0]                                    ; $5842: $f0 $f0
	adc  b                                           ; $5844: $88
	ld   hl, sp-$48                                  ; $5845: $f8 $b8
	ld   a, b                                        ; $5847: $78
	call nc, $4834                                   ; $5848: $d4 $34 $48
	cp   b                                           ; $584b: $b8
	jr   z, jr_028_5826                              ; $584c: $28 $d8

	ld   [$88f8], sp                                 ; $584e: $08 $f8 $88
	ld   hl, sp-$70                                  ; $5851: $f8 $90
	ldh  a, [$90]                                    ; $5853: $f0 $90
	ldh  a, [$b0]                                    ; $5855: $f0 $b0
	ldh  a, [$e8]                                    ; $5857: $f0 $e8
	ld   hl, sp-$38                                  ; $5859: $f8 $c8
	ld   hl, sp-$58                                  ; $585b: $f8 $a8
	cp   b                                           ; $585d: $b8
	inc  h                                           ; $585e: $24
	inc  a                                           ; $585f: $3c
	rlca                                             ; $5860: $07
	dec  b                                           ; $5861: $05
	rlca                                             ; $5862: $07
	rlca                                             ; $5863: $07
	dec  bc                                          ; $5864: $0b
	ld   c, $13                                      ; $5865: $0e $13
	ld   e, $27                                      ; $5867: $1e $27
	inc  a                                           ; $5869: $3c
	ld   c, a                                        ; $586a: $4f
	ld   a, h                                        ; $586b: $7c
	ld   b, a                                        ; $586c: $47
	ld   a, h                                        ; $586d: $7c
	inc  hl                                          ; $586e: $23
	ld   a, $33                                      ; $586f: $3e $33
	inc  a                                           ; $5871: $3c
	daa                                              ; $5872: $27
	inc  a                                           ; $5873: $3c
	rra                                              ; $5874: $1f
	inc  e                                           ; $5875: $1c
	rrca                                             ; $5876: $0f
	ld   [$080f], sp                                 ; $5877: $08 $0f $08
	rrca                                             ; $587a: $0f
	ld   [$080f], sp                                 ; $587b: $08 $0f $08
	rrca                                             ; $587e: $0f
	ld   [$7e7e], sp                                 ; $587f: $08 $7e $7e
	rst  $20                                         ; $5882: $e7
	cp   c                                           ; $5883: $b9
	cp   [hl]                                        ; $5884: $be
	ld   h, c                                        ; $5885: $61
	db   $fd                                         ; $5886: $fd
	inc  bc                                          ; $5887: $03
	cp   $03                                         ; $5888: $fe $03
	cp   $03                                         ; $588a: $fe $03
	cp   $03                                         ; $588c: $fe $03
	cp   $07                                         ; $588e: $fe $07
	ld   a, [$ea1b]                                  ; $5890: $fa $1b $ea
	dec  de                                          ; $5893: $1b
	sub  $3f                                         ; $5894: $d6 $3f
	push de                                          ; $5896: $d5
	dec  a                                           ; $5897: $3d
	push de                                          ; $5898: $d5
	dec  a                                           ; $5899: $3d
	call nc, $a43c                                   ; $589a: $d4 $3c $a4
	ld   a, h                                        ; $589d: $7c
	and  h                                           ; $589e: $a4
	ld   a, h                                        ; $589f: $7c
	inc  d                                           ; $58a0: $14
	inc  e                                           ; $58a1: $1c
	rra                                              ; $58a2: $1f
	inc  de                                          ; $58a3: $13
	adc  c                                           ; $58a4: $89
	adc  a                                           ; $58a5: $8f
	pop  de                                          ; $58a6: $d1
	ld   e, a                                        ; $58a7: $5f
	sub  $5e                                         ; $58a8: $d6 $5e
	jp   z, $c04a                                    ; $58aa: $ca $4a $c0

	ld   b, b                                        ; $58ad: $40
	ret  nz                                          ; $58ae: $c0

	ld   b, b                                        ; $58af: $40
	ret  nz                                          ; $58b0: $c0

	ld   b, b                                        ; $58b1: $40
	ldh  [rAUD4LEN], a                               ; $58b2: $e0 $20
	ldh  [rAUD4LEN], a                               ; $58b4: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $58b6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $58b8: $f0 $10
	ldh  a, [$d0]                                    ; $58ba: $f0 $d0
	jr   nz, jr_028_58de                             ; $58bc: $20 $20

	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	rlca                                             ; $58c0: $07
	inc  b                                           ; $58c1: $04
	rlca                                             ; $58c2: $07
	inc  b                                           ; $58c3: $04
	ld   b, $05                                      ; $58c4: $06 $05
	ld   b, $05                                      ; $58c6: $06 $05
	rlca                                             ; $58c8: $07
	rlca                                             ; $58c9: $07
	inc  c                                           ; $58ca: $0c
	rrca                                             ; $58cb: $0f
	rra                                              ; $58cc: $1f
	rra                                              ; $58cd: $1f
	rra                                              ; $58ce: $1f
	rra                                              ; $58cf: $1f
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	nop                                              ; $58d3: $00
	nop                                              ; $58d4: $00
	nop                                              ; $58d5: $00
	nop                                              ; $58d6: $00
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	nop                                              ; $58d9: $00
	nop                                              ; $58da: $00
	nop                                              ; $58db: $00
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00

jr_028_58de:
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	ld   b, d                                        ; $58e0: $42
	cp   $62                                         ; $58e1: $fe $62
	cp   $f1                                         ; $58e3: $fe $f1
	rst  $38                                         ; $58e5: $ff
	ld   sp, hl                                      ; $58e6: $f9
	rst  $38                                         ; $58e7: $ff
	ld   a, b                                        ; $58e8: $78
	rst  $38                                         ; $58e9: $ff
	ld   a, h                                        ; $58ea: $7c
	rst  $38                                         ; $58eb: $ff
	adc  a                                           ; $58ec: $8f
	adc  a                                           ; $58ed: $8f
	add  e                                           ; $58ee: $83
	add  e                                           ; $58ef: $83
	nop                                              ; $58f0: $00
	nop                                              ; $58f1: $00
	nop                                              ; $58f2: $00
	nop                                              ; $58f3: $00
	nop                                              ; $58f4: $00
	nop                                              ; $58f5: $00
	nop                                              ; $58f6: $00
	nop                                              ; $58f7: $00
	nop                                              ; $58f8: $00
	nop                                              ; $58f9: $00
	nop                                              ; $58fa: $00
	nop                                              ; $58fb: $00
	nop                                              ; $58fc: $00
	nop                                              ; $58fd: $00
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	add  b                                           ; $5908: $80
	add  b                                           ; $5909: $80
	ld   b, b                                        ; $590a: $40
	ret  nz                                          ; $590b: $c0

	ldh  [$e0], a                                    ; $590c: $e0 $e0
	ldh  [$e0], a                                    ; $590e: $e0 $e0
	nop                                              ; $5910: $00
	nop                                              ; $5911: $00
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	nop                                              ; $591c: $00
	nop                                              ; $591d: $00
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	rrca                                             ; $5922: $0f
	rrca                                             ; $5923: $0f
	inc  sp                                          ; $5924: $33
	inc  a                                           ; $5925: $3c
	rrca                                             ; $5926: $0f
	ld   [$3f30], sp                                 ; $5927: $08 $30 $3f
	ld   h, c                                        ; $592a: $61
	ld   a, a                                        ; $592b: $7f
	ld   d, d                                        ; $592c: $52
	ld   a, a                                        ; $592d: $7f
	inc  h                                           ; $592e: $24
	ccf                                              ; $592f: $3f
	dec  h                                           ; $5930: $25
	ccf                                              ; $5931: $3f
	add  hl, hl                                      ; $5932: $29
	ccf                                              ; $5933: $3f
	dec  a                                           ; $5934: $3d
	ccf                                              ; $5935: $3f
	cpl                                              ; $5936: $2f
	dec  hl                                          ; $5937: $2b
	rrca                                             ; $5938: $0f
	ld   a, [bc]                                     ; $5939: $0a
	rla                                              ; $593a: $17
	dec  de                                          ; $593b: $1b
	rla                                              ; $593c: $17
	ld   e, $13                                      ; $593d: $1e $13
	ld   e, $fc                                      ; $593f: $1e $fc
	db   $fc                                         ; $5941: $fc
	inc  bc                                          ; $5942: $03
	rst  $38                                         ; $5943: $ff
	add  d                                           ; $5944: $82
	ld   a, a                                        ; $5945: $7f

jr_028_5946:
	ld   b, $f9                                      ; $5946: $06 $f9
	db   $eb                                         ; $5948: $eb
	inc  d                                           ; $5949: $14
	ld   bc, $40fe                                   ; $594a: $01 $fe $40
	rst  $38                                         ; $594d: $ff
	ld   c, h                                        ; $594e: $4c
	rst  $38                                         ; $594f: $ff

jr_028_5950:
	ld   h, [hl]                                     ; $5950: $66
	rst  $38                                         ; $5951: $ff

jr_028_5952:
	ld   [hl], d                                     ; $5952: $72
	rst  JumpTable                                         ; $5953: $df
	ld   a, d                                        ; $5954: $7a
	rst  $38                                         ; $5955: $ff
	cp   $af                                         ; $5956: $fe $af
	rst  $38                                         ; $5958: $ff
	ld   h, a                                        ; $5959: $67
	rst  $38                                         ; $595a: $ff
	ld   l, a                                        ; $595b: $6f
	cp   $f2                                         ; $595c: $fe $f2
	db   $fc                                         ; $595e: $fc
	inc  b                                           ; $595f: $04
	nop                                              ; $5960: $00
	nop                                              ; $5961: $00
	ret  nz                                          ; $5962: $c0

	ret  nz                                          ; $5963: $c0

	jr   nz, jr_028_5946                             ; $5964: $20 $e0

	ldh  a, [$f0]                                    ; $5966: $f0 $f0
	ld   b, b                                        ; $5968: $40
	ret  nz                                          ; $5969: $c0

	jr   nz, @-$1e                                   ; $596a: $20 $e0

	and  b                                           ; $596c: $a0
	ld   h, b                                        ; $596d: $60
	jr   nz, jr_028_5950                             ; $596e: $20 $e0

	jr   nz, jr_028_5952                             ; $5970: $20 $e0

	ld   b, b                                        ; $5972: $40
	ret  nz                                          ; $5973: $c0

	ld   b, b                                        ; $5974: $40
	ret  nz                                          ; $5975: $c0

	ret  nz                                          ; $5976: $c0

	ret  nz                                          ; $5977: $c0

	and  b                                           ; $5978: $a0
	ldh  [rAUD1SWEEP], a                             ; $5979: $e0 $10
	ldh  a, [$88]                                    ; $597b: $f0 $88
	ld   hl, sp-$3c                                  ; $597d: $f8 $c4
	db   $fc                                         ; $597f: $fc
	dec  d                                           ; $5980: $15
	dec  e                                           ; $5981: $1d
	dec  h                                           ; $5982: $25
	dec  a                                           ; $5983: $3d
	dec  hl                                          ; $5984: $2b
	ld   a, [hl-]                                    ; $5985: $3a
	ld   a, e                                        ; $5986: $7b
	ld   c, d                                        ; $5987: $4a
	adc  c                                           ; $5988: $89
	ld   sp, hl                                      ; $5989: $f9
	ret                                              ; $598a: $c9


	ld   sp, hl                                      ; $598b: $f9
	cp   c                                           ; $598c: $b9
	cp   c                                           ; $598d: $b9
	nop                                              ; $598e: $00
	nop                                              ; $598f: $00
	ld   bc, $0201                                   ; $5990: $01 $01 $02
	inc  bc                                          ; $5993: $03
	ld   b, $07                                      ; $5994: $06 $07
	ld   [$090f], sp                                 ; $5996: $08 $0f $09
	rrca                                             ; $5999: $0f
	rlca                                             ; $599a: $07
	rlca                                             ; $599b: $07
	ld   bc, $0101                                   ; $599c: $01 $01 $01
	ld   bc, $ffff                                   ; $599f: $01 $ff $ff
	ld   h, a                                        ; $59a2: $67
	db   $fc                                         ; $59a3: $fc
	cp   [hl]                                        ; $59a4: $be
	db   $ed                                         ; $59a5: $ed
	rst  $38                                         ; $59a6: $ff
	add  c                                           ; $59a7: $81
	rst  $38                                         ; $59a8: $ff
	ld   bc, $01ff                                   ; $59a9: $01 $ff $01
	rst  $38                                         ; $59ac: $ff
	ld   bc, $80ff                                   ; $59ad: $01 $ff $80
	ld   a, a                                        ; $59b0: $7f
	ldh  [$7f], a                                    ; $59b1: $e0 $7f
	ret  nz                                          ; $59b3: $c0

	rst  $38                                         ; $59b4: $ff
	add  b                                           ; $59b5: $80
	db   $fd                                         ; $59b6: $fd
	add  e                                           ; $59b7: $83
	db   $fd                                         ; $59b8: $fd
	inc  bc                                          ; $59b9: $03
	ld   a, [$fa07]                                  ; $59ba: $fa $07 $fa
	rlca                                             ; $59bd: $07
	db   $f4                                         ; $59be: $f4
	rrca                                             ; $59bf: $0f
	cp   [hl]                                        ; $59c0: $be
	or   d                                           ; $59c1: $b2
	call $e94f                                       ; $59c2: $cd $4f $e9
	rst  $28                                         ; $59c5: $ef
	pop  af                                          ; $59c6: $f1
	ccf                                              ; $59c7: $3f
	or   $3e                                         ; $59c8: $f6 $3e
	ld   a, [$f03a]                                  ; $59ca: $fa $3a $f0
	db   $10                                         ; $59cd: $10
	ld   hl, sp-$78                                  ; $59ce: $f8 $88
	ld   hl, sp-$38                                  ; $59d0: $f8 $c8
	ld   hl, sp-$38                                  ; $59d2: $f8 $c8
	db   $fc                                         ; $59d4: $fc
	db   $e4                                         ; $59d5: $e4
	db   $fc                                         ; $59d6: $fc
	ld   b, h                                        ; $59d7: $44
	db   $fc                                         ; $59d8: $fc
	ld   b, h                                        ; $59d9: $44
	db   $fc                                         ; $59da: $fc
	ld   h, h                                        ; $59db: $64
	sbc  h                                           ; $59dc: $9c
	sbc  h                                           ; $59dd: $9c
	add  b                                           ; $59de: $80
	add  b                                           ; $59df: $80
	ld   bc, $0101                                   ; $59e0: $01 $01 $01
	ld   bc, $0203                                   ; $59e3: $01 $03 $02
	inc  bc                                          ; $59e6: $03
	ld   [bc], a                                     ; $59e7: $02
	rlca                                             ; $59e8: $07
	ld   b, $08                                      ; $59e9: $06 $08
	rrca                                             ; $59eb: $0f
	rra                                              ; $59ec: $1f
	rra                                              ; $59ed: $1f
	rra                                              ; $59ee: $1f
	rra                                              ; $59ef: $1f
	nop                                              ; $59f0: $00
	nop                                              ; $59f1: $00
	nop                                              ; $59f2: $00
	nop                                              ; $59f3: $00
	nop                                              ; $59f4: $00
	nop                                              ; $59f5: $00
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	db   $f4                                         ; $5a00: $f4
	rrca                                             ; $5a01: $0f
	add  sp, $1f                                     ; $5a02: $e8 $1f
	add  sp, $1f                                     ; $5a04: $e8 $1f
	call c, $de3f                                    ; $5a06: $dc $3f $de
	ccf                                              ; $5a09: $3f

jr_028_5a0a:
	db   $dd                                         ; $5a0a: $dd
	cp   l                                           ; $5a0b: $bd
	pop  hl                                          ; $5a0c: $e1
	pop  hl                                          ; $5a0d: $e1
	add  c                                           ; $5a0e: $81
	add  c                                           ; $5a0f: $81
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	nop                                              ; $5a19: $00
	nop                                              ; $5a1a: $00
	nop                                              ; $5a1b: $00
	nop                                              ; $5a1c: $00
	nop                                              ; $5a1d: $00
	nop                                              ; $5a1e: $00
	nop                                              ; $5a1f: $00
	add  b                                           ; $5a20: $80
	add  b                                           ; $5a21: $80
	add  b                                           ; $5a22: $80
	add  b                                           ; $5a23: $80
	ld   b, b                                        ; $5a24: $40
	ret  nz                                          ; $5a25: $c0

	jr   nz, @-$1e                                   ; $5a26: $20 $e0

	jr   nz, jr_028_5a0a                             ; $5a28: $20 $e0

	db   $10                                         ; $5a2a: $10
	ldh  a, [$f8]                                    ; $5a2b: $f0 $f8
	ld   hl, sp-$08                                  ; $5a2d: $f8 $f8
	ld   hl, sp+$00                                  ; $5a2f: $f8 $00
	nop                                              ; $5a31: $00
	nop                                              ; $5a32: $00
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	nop                                              ; $5a35: $00
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	nop                                              ; $5a38: $00
	nop                                              ; $5a39: $00
	nop                                              ; $5a3a: $00
	nop                                              ; $5a3b: $00
	nop                                              ; $5a3c: $00
	nop                                              ; $5a3d: $00
	nop                                              ; $5a3e: $00
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	rrca                                             ; $5a44: $0f
	rrca                                             ; $5a45: $0f
	di                                               ; $5a46: $f3
	db   $fc                                         ; $5a47: $fc
	ld   b, a                                        ; $5a48: $47
	ld   a, b                                        ; $5a49: $78
	jr   nc, jr_028_5a8b                             ; $5a4a: $30 $3f

	ld   h, c                                        ; $5a4c: $61
	ld   a, a                                        ; $5a4d: $7f
	ld   d, d                                        ; $5a4e: $52
	ld   a, a                                        ; $5a4f: $7f
	inc  h                                           ; $5a50: $24
	ccf                                              ; $5a51: $3f
	dec  h                                           ; $5a52: $25
	ccf                                              ; $5a53: $3f
	add  hl, hl                                      ; $5a54: $29
	ccf                                              ; $5a55: $3f
	dec  a                                           ; $5a56: $3d
	ccf                                              ; $5a57: $3f
	cpl                                              ; $5a58: $2f
	dec  hl                                          ; $5a59: $2b
	rrca                                             ; $5a5a: $0f
	ld   a, [bc]                                     ; $5a5b: $0a
	rla                                              ; $5a5c: $17
	dec  de                                          ; $5a5d: $1b
	rla                                              ; $5a5e: $17
	ld   e, $00                                      ; $5a5f: $1e $00
	nop                                              ; $5a61: $00
	db   $fc                                         ; $5a62: $fc
	db   $fc                                         ; $5a63: $fc
	inc  bc                                          ; $5a64: $03
	rst  $38                                         ; $5a65: $ff
	add  d                                           ; $5a66: $82
	ld   a, a                                        ; $5a67: $7f
	ld   b, $f9                                      ; $5a68: $06 $f9
	db   $eb                                         ; $5a6a: $eb
	inc  d                                           ; $5a6b: $14
	ld   bc, $40fe                                   ; $5a6c: $01 $fe $40
	rst  $38                                         ; $5a6f: $ff

jr_028_5a70:
	ld   c, h                                        ; $5a70: $4c
	rst  $38                                         ; $5a71: $ff

jr_028_5a72:
	ld   h, [hl]                                     ; $5a72: $66
	rst  $38                                         ; $5a73: $ff

jr_028_5a74:
	ld   [hl], d                                     ; $5a74: $72
	rst  JumpTable                                         ; $5a75: $df
	ld   a, d                                        ; $5a76: $7a
	rst  $38                                         ; $5a77: $ff
	cp   $af                                         ; $5a78: $fe $af
	rst  $38                                         ; $5a7a: $ff
	ld   h, a                                        ; $5a7b: $67
	rst  $38                                         ; $5a7c: $ff
	ld   l, a                                        ; $5a7d: $6f
	cp   $f2                                         ; $5a7e: $fe $f2
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	nop                                              ; $5a83: $00
	ret  nz                                          ; $5a84: $c0

	ret  nz                                          ; $5a85: $c0

	jr   z, jr_028_5a70                              ; $5a86: $28 $e8

	ldh  a, [$f0]                                    ; $5a88: $f0 $f0
	ld   b, b                                        ; $5a8a: $40

jr_028_5a8b:
	ret  nz                                          ; $5a8b: $c0

	jr   nz, @-$1e                                   ; $5a8c: $20 $e0

	and  b                                           ; $5a8e: $a0
	ld   h, b                                        ; $5a8f: $60
	jr   nz, jr_028_5a72                             ; $5a90: $20 $e0

	jr   nz, jr_028_5a74                             ; $5a92: $20 $e0

	ld   b, b                                        ; $5a94: $40
	ret  nz                                          ; $5a95: $c0

	ld   b, b                                        ; $5a96: $40
	ret  nz                                          ; $5a97: $c0

	ret  nz                                          ; $5a98: $c0

	ret  nz                                          ; $5a99: $c0

	and  b                                           ; $5a9a: $a0
	ldh  [rAUD1LOW], a                               ; $5a9b: $e0 $13
	di                                               ; $5a9d: $f3
	adc  h                                           ; $5a9e: $8c
	rst  $38                                         ; $5a9f: $ff
	ld   [hl], e                                     ; $5aa0: $73
	ld   a, [hl]                                     ; $5aa1: $7e
	sub  l                                           ; $5aa2: $95
	db   $ed                                         ; $5aa3: $ed
	adc  l                                           ; $5aa4: $8d
	db   $fd                                         ; $5aa5: $fd
	ld   c, e                                        ; $5aa6: $4b
	ld   a, d                                        ; $5aa7: $7a
	ld   e, e                                        ; $5aa8: $5b
	ld   e, d                                        ; $5aa9: $5a
	ld   bc, $0101                                   ; $5aaa: $01 $01 $01
	ld   bc, $0101                                   ; $5aad: $01 $01 $01
	nop                                              ; $5ab0: $00
	nop                                              ; $5ab1: $00
	ld   bc, $0601                                   ; $5ab2: $01 $01 $06
	rlca                                             ; $5ab5: $07
	ld   [$080f], sp                                 ; $5ab6: $08 $0f $08
	rrca                                             ; $5ab9: $0f
	rlca                                             ; $5aba: $07
	rlca                                             ; $5abb: $07
	ld   bc, $0101                                   ; $5abc: $01 $01 $01
	ld   bc, $fc04                                   ; $5abf: $01 $04 $fc
	rst  $38                                         ; $5ac2: $ff
	rst  $38                                         ; $5ac3: $ff
	ld   h, a                                        ; $5ac4: $67
	db   $fc                                         ; $5ac5: $fc
	cp   [hl]                                        ; $5ac6: $be
	db   $ed                                         ; $5ac7: $ed
	rst  $38                                         ; $5ac8: $ff
	add  c                                           ; $5ac9: $81
	rst  $38                                         ; $5aca: $ff
	nop                                              ; $5acb: $00
	rst  $38                                         ; $5acc: $ff
	nop                                              ; $5acd: $00
	rst  $38                                         ; $5ace: $ff
	nop                                              ; $5acf: $00
	rst  $38                                         ; $5ad0: $ff
	pop  bc                                          ; $5ad1: $c1
	ccf                                              ; $5ad2: $3f
	ld   sp, hl                                      ; $5ad3: $f9
	ld   a, a                                        ; $5ad4: $7f
	ret  nz                                          ; $5ad5: $c0

	rst  $38                                         ; $5ad6: $ff
	add  c                                           ; $5ad7: $81
	db   $fd                                         ; $5ad8: $fd
	add  e                                           ; $5ad9: $83
	ld   a, [$fa07]                                  ; $5ada: $fa $07 $fa
	rlca                                             ; $5add: $07
	db   $f4                                         ; $5ade: $f4
	rrca                                             ; $5adf: $0f
	db   $eb                                         ; $5ae0: $eb
	rst  $30                                         ; $5ae1: $f7
	sbc  b                                           ; $5ae2: $98
	sbc  [hl]                                        ; $5ae3: $9e
	ret  z                                           ; $5ae4: $c8

	ld   c, a                                        ; $5ae5: $4f
	rst  $30                                         ; $5ae6: $f7
	or   a                                           ; $5ae7: $b7
	ld   hl, sp+$08                                  ; $5ae8: $f8 $08
	db   $fc                                         ; $5aea: $fc
	add  h                                           ; $5aeb: $84
	db   $fc                                         ; $5aec: $fc
	db   $e4                                         ; $5aed: $e4
	cp   $92                                         ; $5aee: $fe $92
	cp   $1a                                         ; $5af0: $fe $1a
	cp   $02                                         ; $5af2: $fe $02
	db   $fc                                         ; $5af4: $fc
	adc  h                                           ; $5af5: $8c
	ldh  a, [rSVBK]                                  ; $5af6: $f0 $70
	ret  nz                                          ; $5af8: $c0

	ld   b, b                                        ; $5af9: $40
	ret  nz                                          ; $5afa: $c0

	ld   b, b                                        ; $5afb: $40
	ret  nz                                          ; $5afc: $c0

	ld   b, b                                        ; $5afd: $40
	ret  nz                                          ; $5afe: $c0

	ret  nz                                          ; $5aff: $c0

	ld   bc, $0101                                   ; $5b00: $01 $01 $01
	ld   bc, $0203                                   ; $5b03: $01 $03 $02
	inc  bc                                          ; $5b06: $03
	ld   [bc], a                                     ; $5b07: $02
	rlca                                             ; $5b08: $07
	inc  b                                           ; $5b09: $04
	add  hl, de                                      ; $5b0a: $19
	rra                                              ; $5b0b: $1f
	ccf                                              ; $5b0c: $3f
	ccf                                              ; $5b0d: $3f
	ccf                                              ; $5b0e: $3f
	ccf                                              ; $5b0f: $3f
	nop                                              ; $5b10: $00
	nop                                              ; $5b11: $00
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	nop                                              ; $5b1c: $00
	nop                                              ; $5b1d: $00
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	db   $f4                                         ; $5b20: $f4
	rrca                                             ; $5b21: $0f
	add  sp, $1f                                     ; $5b22: $e8 $1f
	add  sp, $1f                                     ; $5b24: $e8 $1f
	db   $ec                                         ; $5b26: $ec
	rra                                              ; $5b27: $1f

jr_028_5b28:
	xor  $1f                                         ; $5b28: $ee $1f

jr_028_5b2a:
	rst  $28                                         ; $5b2a: $ef
	sbc  a                                           ; $5b2b: $9f
	ld   a, c                                        ; $5b2c: $79
	ld   a, c                                        ; $5b2d: $79
	ld   bc, $0001                                   ; $5b2e: $01 $01 $00
	nop                                              ; $5b31: $00
	nop                                              ; $5b32: $00
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	ret  nz                                          ; $5b40: $c0

	ret  nz                                          ; $5b41: $c0

	ret  nz                                          ; $5b42: $c0

	ret  nz                                          ; $5b43: $c0

	ld   b, b                                        ; $5b44: $40
	ret  nz                                          ; $5b45: $c0

	jr   nz, jr_028_5b28                             ; $5b46: $20 $e0

	jr   nz, jr_028_5b2a                             ; $5b48: $20 $e0

	db   $10                                         ; $5b4a: $10
	ldh  a, [$f0]                                    ; $5b4b: $f0 $f0
	ldh  a, [$f0]                                    ; $5b4d: $f0 $f0
	ldh  a, [rP1]                                    ; $5b4f: $f0 $00
	nop                                              ; $5b51: $00
	nop                                              ; $5b52: $00
	nop                                              ; $5b53: $00
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	nop                                              ; $5b56: $00
	nop                                              ; $5b57: $00
	nop                                              ; $5b58: $00
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	nop                                              ; $5b5b: $00
	nop                                              ; $5b5c: $00
	nop                                              ; $5b5d: $00
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	ld   sp, $3e31                                   ; $5b60: $31 $31 $3e
	cpl                                              ; $5b63: $2f
	ld   sp, hl                                      ; $5b64: $f9
	xor  $fa                                         ; $5b65: $ee $fa
	adc  l                                           ; $5b67: $8d
	ld   sp, hl                                      ; $5b68: $f9
	adc  a                                           ; $5b69: $8f
	ldh  a, [c]                                      ; $5b6a: $f2
	sbc  a                                           ; $5b6b: $9f
	ld   [hl], h                                     ; $5b6c: $74
	ld   e, a                                        ; $5b6d: $5f
	ld   l, b                                        ; $5b6e: $68
	ld   a, a                                        ; $5b6f: $7f
	ld   d, c                                        ; $5b70: $51
	ld   a, a                                        ; $5b71: $7f
	ld   h, a                                        ; $5b72: $67
	ld   a, a                                        ; $5b73: $7f
	ld   l, a                                        ; $5b74: $6f
	ld   e, e                                        ; $5b75: $5b
	ld   a, a                                        ; $5b76: $7f
	ld   e, d                                        ; $5b77: $5a
	ld   a, a                                        ; $5b78: $7f
	ld   c, e                                        ; $5b79: $4b
	ld   a, a                                        ; $5b7a: $7f
	ld   c, [hl]                                     ; $5b7b: $4e
	ccf                                              ; $5b7c: $3f
	inc  l                                           ; $5b7d: $2c
	ccf                                              ; $5b7e: $3f
	daa                                              ; $5b7f: $27
	db   $fc                                         ; $5b80: $fc
	db   $fc                                         ; $5b81: $fc
	inc  bc                                          ; $5b82: $03
	rst  $38                                         ; $5b83: $ff
	add  b                                           ; $5b84: $80
	ld   a, a                                        ; $5b85: $7f
	ld   b, $f9                                      ; $5b86: $06 $f9
	dec  sp                                          ; $5b88: $3b
	call nz, $fe41                                   ; $5b89: $c4 $41 $fe
	ld   c, h                                        ; $5b8c: $4c
	rst  $38                                         ; $5b8d: $ff
	ld   h, [hl]                                     ; $5b8e: $66
	rst  $38                                         ; $5b8f: $ff
	ld   [hl], d                                     ; $5b90: $72
	rst  JumpTable                                         ; $5b91: $df
	ld   a, d                                        ; $5b92: $7a
	rst  $38                                         ; $5b93: $ff
	cp   $af                                         ; $5b94: $fe $af
	rst  $38                                         ; $5b96: $ff
	ld   h, a                                        ; $5b97: $67
	rst  $38                                         ; $5b98: $ff
	ld   l, a                                        ; $5b99: $6f
	cp   $fa                                         ; $5b9a: $fe $fa
	db   $fc                                         ; $5b9c: $fc

jr_028_5b9d:
	inc  b                                           ; $5b9d: $04
	ld   hl, sp-$08                                  ; $5b9e: $f8 $f8
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	add  b                                           ; $5ba2: $80
	add  b                                           ; $5ba3: $80
	ld   b, b                                        ; $5ba4: $40
	ret  nz                                          ; $5ba5: $c0

	and  b                                           ; $5ba6: $a0
	ldh  [$60], a                                    ; $5ba7: $e0 $60
	ldh  [$60], a                                    ; $5ba9: $e0 $60
	ldh  [rAUD4LEN], a                               ; $5bab: $e0 $20
	ldh  [rAUD4LEN], a                               ; $5bad: $e0 $20
	ldh  [rLCDC], a                                  ; $5baf: $e0 $40
	ret  nz                                          ; $5bb1: $c0

	ld   b, b                                        ; $5bb2: $40
	ret  nz                                          ; $5bb3: $c0

	ret  nz                                          ; $5bb4: $c0

	ret  nz                                          ; $5bb5: $c0

	and  b                                           ; $5bb6: $a0
	ldh  [rAUD4LEN], a                               ; $5bb7: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5bb9: $e0 $a0
	ldh  [$90], a                                    ; $5bbb: $e0 $90
	ldh  a, [$90]                                    ; $5bbd: $f0 $90
	ldh  a, [$2a]                                    ; $5bbf: $f0 $2a
	dec  a                                           ; $5bc1: $3d
	rla                                              ; $5bc2: $17
	add  hl, de                                      ; $5bc3: $19
	rra                                              ; $5bc4: $1f
	db   $10                                         ; $5bc5: $10
	rra                                              ; $5bc6: $1f
	db   $10                                         ; $5bc7: $10
	rra                                              ; $5bc8: $1f
	db   $10                                         ; $5bc9: $10
	rra                                              ; $5bca: $1f
	db   $10                                         ; $5bcb: $10
	rra                                              ; $5bcc: $1f
	db   $10                                         ; $5bcd: $10
	ccf                                              ; $5bce: $3f
	jr   nz, jr_028_5c10                             ; $5bcf: $20 $3f

	jr   nz, jr_028_5c12                             ; $5bd1: $20 $3f

	jr   nz, jr_028_5c14                             ; $5bd3: $20 $3f

	jr   nz, jr_028_5c16                             ; $5bd5: $20 $3f

	jr   nz, jr_028_5c18                             ; $5bd7: $20 $3f

	jr   nz, jr_028_5c1a                             ; $5bd9: $20 $3f

	jr   nz, jr_028_5c1c                             ; $5bdb: $20 $3f

	jr   nz, jr_028_5c1e                             ; $5bdd: $20 $3f

	jr   nz, jr_028_5b9d                             ; $5bdf: $20 $bc

	call z, Call_028_66fa                            ; $5be1: $cc $fa $66
	push af                                          ; $5be4: $f5
	rrca                                             ; $5be5: $0f
	ld   sp, hl                                      ; $5be6: $f9
	rrca                                             ; $5be7: $0f
	ld   sp, hl                                      ; $5be8: $f9
	rrca                                             ; $5be9: $0f
	ld   sp, hl                                      ; $5bea: $f9
	rra                                              ; $5beb: $1f
	xor  $6f                                         ; $5bec: $ee $6f
	add  sp, $2f                                     ; $5bee: $e8 $2f
	xor  b                                           ; $5bf0: $a8
	ld   l, a                                        ; $5bf1: $6f
	ld   d, a                                        ; $5bf2: $57
	rst  $30                                         ; $5bf3: $f7
	ld   d, b                                        ; $5bf4: $50
	ldh  a, [rOBP0]                                  ; $5bf5: $f0 $48
	ld   hl, sp+$48                                  ; $5bf7: $f8 $48
	ld   hl, sp+$48                                  ; $5bf9: $f8 $48
	ld   hl, sp+$44                                  ; $5bfb: $f8 $44
	db   $fc                                         ; $5bfd: $fc
	and  d                                           ; $5bfe: $a2
	ld   a, [hl]                                     ; $5bff: $7e
	ld   d, b                                        ; $5c00: $50
	ld   [hl], b                                     ; $5c01: $70
	ld   d, b                                        ; $5c02: $50
	ld   [hl], b                                     ; $5c03: $70
	jr   c, jr_028_5c2e                              ; $5c04: $38 $28

	ld   b, h                                        ; $5c06: $44
	ld   a, h                                        ; $5c07: $7c
	ld   d, h                                        ; $5c08: $54
	ld   a, h                                        ; $5c09: $7c
	call nc, $d0fc                                   ; $5c0a: $d4 $fc $d0
	ld   d, b                                        ; $5c0d: $50
	ret  nz                                          ; $5c0e: $c0

	ld   b, b                                        ; $5c0f: $40

jr_028_5c10:
	ret  nz                                          ; $5c10: $c0

	ld   b, b                                        ; $5c11: $40

jr_028_5c12:
	add  b                                           ; $5c12: $80
	add  b                                           ; $5c13: $80

jr_028_5c14:
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00

jr_028_5c16:
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00

jr_028_5c18:
	nop                                              ; $5c18: $00
	nop                                              ; $5c19: $00

jr_028_5c1a:
	nop                                              ; $5c1a: $00
	nop                                              ; $5c1b: $00

jr_028_5c1c:
	nop                                              ; $5c1c: $00
	nop                                              ; $5c1d: $00

jr_028_5c1e:
	nop                                              ; $5c1e: $00
	nop                                              ; $5c1f: $00
	rra                                              ; $5c20: $1f
	db   $10                                         ; $5c21: $10
	rra                                              ; $5c22: $1f
	db   $10                                         ; $5c23: $10
	rra                                              ; $5c24: $1f
	db   $10                                         ; $5c25: $10
	rrca                                             ; $5c26: $0f
	ld   [$0e0f], sp                                 ; $5c27: $08 $0f $0e
	ld   de, $3f1f                                   ; $5c2a: $11 $1f $3f
	ccf                                              ; $5c2d: $3f

jr_028_5c2e:
	ccf                                              ; $5c2e: $3f
	ccf                                              ; $5c2f: $3f
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	nop                                              ; $5c34: $00
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	nop                                              ; $5c37: $00
	nop                                              ; $5c38: $00
	nop                                              ; $5c39: $00
	nop                                              ; $5c3a: $00
	nop                                              ; $5c3b: $00
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	and  c                                           ; $5c40: $a1
	ld   a, a                                        ; $5c41: $7f
	or   c                                           ; $5c42: $b1
	ld   a, a                                        ; $5c43: $7f
	cp   b                                           ; $5c44: $b8
	ld   a, a                                        ; $5c45: $7f
	cp   h                                           ; $5c46: $bc
	ld   a, a                                        ; $5c47: $7f
	cp   [hl]                                        ; $5c48: $be
	ld   a, a                                        ; $5c49: $7f
	db   $e3                                         ; $5c4a: $e3
	db   $e3                                         ; $5c4b: $e3

jr_028_5c4c:
	inc  bc                                          ; $5c4c: $03
	inc  bc                                          ; $5c4d: $03
	ld   bc, $0001                                   ; $5c4e: $01 $01 $00
	nop                                              ; $5c51: $00
	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	nop                                              ; $5c55: $00
	nop                                              ; $5c56: $00
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	nop                                              ; $5c5b: $00
	nop                                              ; $5c5c: $00
	nop                                              ; $5c5d: $00
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	add  b                                           ; $5c64: $80
	add  b                                           ; $5c65: $80
	add  b                                           ; $5c66: $80
	add  b                                           ; $5c67: $80
	ld   b, b                                        ; $5c68: $40
	ret  nz                                          ; $5c69: $c0

	jr   nz, jr_028_5c4c                             ; $5c6a: $20 $e0

	ldh  a, [$f0]                                    ; $5c6c: $f0 $f0
	ldh  a, [$f0]                                    ; $5c6e: $f0 $f0
	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	ld   sp, $3e31                                   ; $5c82: $31 $31 $3e
	cpl                                              ; $5c85: $2f
	ld   sp, hl                                      ; $5c86: $f9
	xor  $fa                                         ; $5c87: $ee $fa
	adc  l                                           ; $5c89: $8d
	ld   sp, hl                                      ; $5c8a: $f9
	adc  a                                           ; $5c8b: $8f
	cp   $8f                                         ; $5c8c: $fe $8f
	ld   a, h                                        ; $5c8e: $7c
	ld   e, a                                        ; $5c8f: $5f
	ld   l, b                                        ; $5c90: $68
	ld   a, a                                        ; $5c91: $7f
	ld   d, c                                        ; $5c92: $51
	ld   a, a                                        ; $5c93: $7f
	ld   h, a                                        ; $5c94: $67
	ld   a, a                                        ; $5c95: $7f
	ld   l, a                                        ; $5c96: $6f
	ld   e, e                                        ; $5c97: $5b
	ld   a, a                                        ; $5c98: $7f
	ld   e, d                                        ; $5c99: $5a
	ld   a, a                                        ; $5c9a: $7f
	ld   c, e                                        ; $5c9b: $4b
	ld   a, a                                        ; $5c9c: $7f
	ld   b, [hl]                                     ; $5c9d: $46
	ccf                                              ; $5c9e: $3f
	inc  h                                           ; $5c9f: $24
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	db   $fc                                         ; $5ca2: $fc
	db   $fc                                         ; $5ca3: $fc
	inc  bc                                          ; $5ca4: $03
	rst  $38                                         ; $5ca5: $ff
	add  d                                           ; $5ca6: $82
	ld   a, a                                        ; $5ca7: $7f
	inc  c                                           ; $5ca8: $0c
	di                                               ; $5ca9: $f3
	dec  sp                                          ; $5caa: $3b
	call nz, $fe41                                   ; $5cab: $c4 $41 $fe
	ld   c, h                                        ; $5cae: $4c
	rst  $38                                         ; $5caf: $ff

jr_028_5cb0:
	ld   h, [hl]                                     ; $5cb0: $66
	rst  $38                                         ; $5cb1: $ff

jr_028_5cb2:
	ld   [hl], d                                     ; $5cb2: $72
	rst  JumpTable                                         ; $5cb3: $df
	ld   a, d                                        ; $5cb4: $7a
	rst  $38                                         ; $5cb5: $ff
	cp   $af                                         ; $5cb6: $fe $af
	rst  $38                                         ; $5cb8: $ff
	ld   h, a                                        ; $5cb9: $67
	rst  $38                                         ; $5cba: $ff
	ld   l, a                                        ; $5cbb: $6f
	cp   $f2                                         ; $5cbc: $fe $f2
	db   $fc                                         ; $5cbe: $fc
	inc  b                                           ; $5cbf: $04
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	add  b                                           ; $5cc4: $80
	add  b                                           ; $5cc5: $80
	ld   b, b                                        ; $5cc6: $40
	ret  nz                                          ; $5cc7: $c0

	and  b                                           ; $5cc8: $a0
	ldh  [$50], a                                    ; $5cc9: $e0 $50
	ldh  a, [rLCDC]                                  ; $5ccb: $f0 $40
	ret  nz                                          ; $5ccd: $c0

	jr   nz, jr_028_5cb0                             ; $5cce: $20 $e0

	jr   nz, jr_028_5cb2                             ; $5cd0: $20 $e0

	ld   b, b                                        ; $5cd2: $40
	ret  nz                                          ; $5cd3: $c0

	ld   b, b                                        ; $5cd4: $40
	ret  nz                                          ; $5cd5: $c0

	ret  nz                                          ; $5cd6: $c0

	ret  nz                                          ; $5cd7: $c0

	and  b                                           ; $5cd8: $a0
	ldh  [rAUD4LEN], a                               ; $5cd9: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5cdb: $e0 $a0
	ldh  [$90], a                                    ; $5cdd: $e0 $90
	ldh  a, [$27]                                    ; $5cdf: $f0 $27
	ccf                                              ; $5ce1: $3f
	ld   a, [hl+]                                    ; $5ce2: $2a
	dec  a                                           ; $5ce3: $3d
	rla                                              ; $5ce4: $17
	add  hl, de                                      ; $5ce5: $19
	rra                                              ; $5ce6: $1f
	db   $10                                         ; $5ce7: $10
	rra                                              ; $5ce8: $1f
	db   $10                                         ; $5ce9: $10
	rra                                              ; $5cea: $1f
	db   $10                                         ; $5ceb: $10
	rra                                              ; $5cec: $1f
	db   $10                                         ; $5ced: $10
	rra                                              ; $5cee: $1f
	db   $10                                         ; $5cef: $10
	ccf                                              ; $5cf0: $3f
	jr   nz, jr_028_5d32                             ; $5cf1: $20 $3f

	jr   nz, jr_028_5d34                             ; $5cf3: $20 $3f

	jr   nz, jr_028_5d36                             ; $5cf5: $20 $3f

	jr   nz, jr_028_5d38                             ; $5cf7: $20 $3f

	jr   nz, jr_028_5d3a                             ; $5cf9: $20 $3f

	jr   nz, jr_028_5d3c                             ; $5cfb: $20 $3f

	jr   nz, @+$21                                   ; $5cfd: $20 $1f

	db   $10                                         ; $5cff: $10
	ld   hl, sp-$08                                  ; $5d00: $f8 $f8
	cp   h                                           ; $5d02: $bc
	call z, Call_028_66fa                            ; $5d03: $cc $fa $66
	push af                                          ; $5d06: $f5
	rrca                                             ; $5d07: $0f
	ld   sp, hl                                      ; $5d08: $f9
	rrca                                             ; $5d09: $0f
	ld   sp, hl                                      ; $5d0a: $f9
	rrca                                             ; $5d0b: $0f
	ld   sp, hl                                      ; $5d0c: $f9
	rra                                              ; $5d0d: $1f
	xor  $6f                                         ; $5d0e: $ee $6f
	add  sp, -$11                                    ; $5d10: $e8 $ef
	cp   b                                           ; $5d12: $b8
	ld   a, a                                        ; $5d13: $7f
	ld   d, a                                        ; $5d14: $57
	rst  $30                                         ; $5d15: $f7
	ld   c, b                                        ; $5d16: $48
	ld   hl, sp+$48                                  ; $5d17: $f8 $48
	ld   hl, sp+$48                                  ; $5d19: $f8 $48
	ld   hl, sp+$48                                  ; $5d1b: $f8 $48
	ld   hl, sp+$4c                                  ; $5d1d: $f8 $4c
	db   $fc                                         ; $5d1f: $fc
	ld   c, b                                        ; $5d20: $48
	ld   a, b                                        ; $5d21: $78
	jr   z, jr_028_5d5c                              ; $5d22: $28 $38

	inc  d                                           ; $5d24: $14
	inc  e                                           ; $5d25: $1c
	inc  e                                           ; $5d26: $1c
	inc  d                                           ; $5d27: $14
	ld   [hl+], a                                    ; $5d28: $22
	ld   a, $2a                                      ; $5d29: $3e $2a
	ld   a, $aa                                      ; $5d2b: $3e $aa
	cp   [hl]                                        ; $5d2d: $be
	ret  nc                                          ; $5d2e: $d0

	ld   d, b                                        ; $5d2f: $50
	ret  nz                                          ; $5d30: $c0

	ld   b, b                                        ; $5d31: $40

jr_028_5d32:
	ret  nz                                          ; $5d32: $c0

	ld   b, b                                        ; $5d33: $40

jr_028_5d34:
	add  b                                           ; $5d34: $80
	add  b                                           ; $5d35: $80

jr_028_5d36:
	nop                                              ; $5d36: $00
	nop                                              ; $5d37: $00

jr_028_5d38:
	nop                                              ; $5d38: $00
	nop                                              ; $5d39: $00

jr_028_5d3a:
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00

jr_028_5d3c:
	nop                                              ; $5d3c: $00
	nop                                              ; $5d3d: $00
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	rra                                              ; $5d40: $1f
	db   $10                                         ; $5d41: $10
	rra                                              ; $5d42: $1f
	db   $10                                         ; $5d43: $10
	rra                                              ; $5d44: $1f
	db   $10                                         ; $5d45: $10
	rrca                                             ; $5d46: $0f
	ld   [$0e0f], sp                                 ; $5d47: $08 $0f $0e
	ld   de, $3f1f                                   ; $5d4a: $11 $1f $3f
	ccf                                              ; $5d4d: $3f
	ccf                                              ; $5d4e: $3f
	ccf                                              ; $5d4f: $3f
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	nop                                              ; $5d56: $00
	nop                                              ; $5d57: $00
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	nop                                              ; $5d5a: $00
	nop                                              ; $5d5b: $00

jr_028_5d5c:
	nop                                              ; $5d5c: $00
	nop                                              ; $5d5d: $00
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	and  d                                           ; $5d60: $a2
	ld   a, [hl]                                     ; $5d61: $7e
	and  c                                           ; $5d62: $a1
	ld   a, a                                        ; $5d63: $7f
	or   c                                           ; $5d64: $b1
	ld   a, a                                        ; $5d65: $7f
	cp   b                                           ; $5d66: $b8
	ld   a, a                                        ; $5d67: $7f
	cp   h                                           ; $5d68: $bc
	ld   a, a                                        ; $5d69: $7f
	and  $e7                                         ; $5d6a: $e6 $e7
	rlca                                             ; $5d6c: $07
	rlca                                             ; $5d6d: $07
	inc  bc                                          ; $5d6e: $03
	inc  bc                                          ; $5d6f: $03
	nop                                              ; $5d70: $00
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	nop                                              ; $5d73: $00
	nop                                              ; $5d74: $00
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	add  b                                           ; $5d86: $80
	add  b                                           ; $5d87: $80
	add  b                                           ; $5d88: $80
	add  b                                           ; $5d89: $80
	ld   b, b                                        ; $5d8a: $40
	ret  nz                                          ; $5d8b: $c0

	ldh  [$e0], a                                    ; $5d8c: $e0 $e0
	ldh  [$e0], a                                    ; $5d8e: $e0 $e0
	nop                                              ; $5d90: $00
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	nop                                              ; $5d93: $00
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	nop                                              ; $5d96: $00
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	nop                                              ; $5d99: $00
	nop                                              ; $5d9a: $00
	nop                                              ; $5d9b: $00
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	inc  sp                                          ; $5da2: $33
	inc  sp                                          ; $5da3: $33
	inc  a                                           ; $5da4: $3c
	cpl                                              ; $5da5: $2f
	ld   sp, hl                                      ; $5da6: $f9
	xor  $fa                                         ; $5da7: $ee $fa
	adc  l                                           ; $5da9: $8d
	ei                                               ; $5daa: $fb
	adc  a                                           ; $5dab: $8f
	db   $f4                                         ; $5dac: $f4
	sbc  a                                           ; $5dad: $9f
	ld   a, b                                        ; $5dae: $78
	ld   e, a                                        ; $5daf: $5f
	ld   h, d                                        ; $5db0: $62
	ld   a, a                                        ; $5db1: $7f
	ld   h, h                                        ; $5db2: $64
	ld   a, a                                        ; $5db3: $7f
	ld   l, h                                        ; $5db4: $6c
	ld   a, a                                        ; $5db5: $7f
	ld   l, l                                        ; $5db6: $6d
	ld   e, e                                        ; $5db7: $5b
	ld   a, a                                        ; $5db8: $7f
	ld   e, d                                        ; $5db9: $5a
	ld   a, a                                        ; $5dba: $7f
	ld   c, d                                        ; $5dbb: $4a
	ld   a, a                                        ; $5dbc: $7f
	ld   c, h                                        ; $5dbd: $4c
	ccf                                              ; $5dbe: $3f
	inc  h                                           ; $5dbf: $24
	nop                                              ; $5dc0: $00

jr_028_5dc1:
	nop                                              ; $5dc1: $00
	db   $fc                                         ; $5dc2: $fc
	db   $fc                                         ; $5dc3: $fc
	inc  bc                                          ; $5dc4: $03
	rst  $38                                         ; $5dc5: $ff
	add  b                                           ; $5dc6: $80
	ld   a, a                                        ; $5dc7: $7f
	rla                                              ; $5dc8: $17
	jp   hl                                          ; $5dc9: $e9


	ld   d, e                                        ; $5dca: $53
	xor  h                                           ; $5dcb: $ac
	ld   hl, $08de                                   ; $5dcc: $21 $de $08
	rst  $38                                         ; $5dcf: $ff
	ld   c, b                                        ; $5dd0: $48
	rst  $38                                         ; $5dd1: $ff
	ld   b, h                                        ; $5dd2: $44
	rst  $38                                         ; $5dd3: $ff
	ldh  [c], a                                      ; $5dd4: $e2
	rst  $38                                         ; $5dd5: $ff
	ldh  a, [c]                                      ; $5dd6: $f2
	ld   e, a                                        ; $5dd7: $5f
	ld   a, [$ffdf]                                  ; $5dd8: $fa $df $ff
	rst  JumpTable                                         ; $5ddb: $df
	cp   $e2                                         ; $5ddc: $fe $e2
	db   $fc                                         ; $5dde: $fc
	inc  b                                           ; $5ddf: $04
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	add  b                                           ; $5de4: $80
	add  b                                           ; $5de5: $80
	ld   b, b                                        ; $5de6: $40
	ret  nz                                          ; $5de7: $c0

	ld   b, b                                        ; $5de8: $40
	ret  nz                                          ; $5de9: $c0

	and  b                                           ; $5dea: $a0
	ldh  [$60], a                                    ; $5deb: $e0 $60
	ldh  [rAUD4LEN], a                               ; $5ded: $e0 $20
	ldh  [rAUD4LEN], a                               ; $5def: $e0 $20
	ldh  [rLCDC], a                                  ; $5df1: $e0 $40
	ret  nz                                          ; $5df3: $c0

	ld   b, b                                        ; $5df4: $40
	ret  nz                                          ; $5df5: $c0

	ld   b, b                                        ; $5df6: $40
	ret  nz                                          ; $5df7: $c0

	and  b                                           ; $5df8: $a0
	ldh  [rAUD1SWEEP], a                             ; $5df9: $e0 $10
	ldh  a, [$90]                                    ; $5dfb: $f0 $90
	ldh  a, [rOBP0]                                  ; $5dfd: $f0 $48
	ld   a, b                                        ; $5dff: $78
	inc  c                                           ; $5e00: $0c
	inc  c                                           ; $5e01: $0c
	ld   c, $0a                                      ; $5e02: $0e $0a
	rrca                                             ; $5e04: $0f
	dec  bc                                          ; $5e05: $0b
	rrca                                             ; $5e06: $0f
	ld   [$080f], sp                                 ; $5e07: $08 $0f $08
	rrca                                             ; $5e0a: $0f
	ld   [$0407], sp                                 ; $5e0b: $08 $07 $04
	rlca                                             ; $5e0e: $07
	ld   b, $05                                      ; $5e0f: $06 $05
	ld   b, $05                                      ; $5e11: $06 $05
	ld   b, $06                                      ; $5e13: $06 $06
	rlca                                             ; $5e15: $07
	dec  b                                           ; $5e16: $05
	dec  b                                           ; $5e17: $05
	ld   bc, $0101                                   ; $5e18: $01 $01 $01
	ld   bc, $0302                                   ; $5e1b: $01 $02 $03
	inc  bc                                          ; $5e1e: $03
	ld   [bc], a                                     ; $5e1f: $02
	rra                                              ; $5e20: $1f
	rra                                              ; $5e21: $1f
	ldh  [rIE], a                                    ; $5e22: $e0 $ff
	cp   b                                           ; $5e24: $b8
	rst  ToBoot                                         ; $5e25: $c7
	ret  z                                           ; $5e26: $c8

	ld   [hl], a                                     ; $5e27: $77
	add  $79                                         ; $5e28: $c6 $79
	db   $e4                                         ; $5e2a: $e4
	ld   a, a                                        ; $5e2b: $7f
	ret  z                                           ; $5e2c: $c8

	ld   a, a                                        ; $5e2d: $7f
	ret                                              ; $5e2e: $c9


	ld   a, a                                        ; $5e2f: $7f
	xor  h                                           ; $5e30: $ac
	ld   a, a                                        ; $5e31: $7f
	xor  $3b                                         ; $5e32: $ee $3b
	cp   $3f                                         ; $5e34: $fe $3f
	rst  $38                                         ; $5e36: $ff
	dec  [hl]                                        ; $5e37: $35
	rst  $38                                         ; $5e38: $ff
	dec  l                                           ; $5e39: $2d
	rst  $38                                         ; $5e3a: $ff
	dec  a                                           ; $5e3b: $3d
	rst  $38                                         ; $5e3c: $ff
	ld   l, $ff                                      ; $5e3d: $2e $ff
	jr   nz, jr_028_5dc1                             ; $5e3f: $20 $80

	add  b                                           ; $5e41: $80
	ld   a, b                                        ; $5e42: $78
	ld   hl, sp+$44                                  ; $5e43: $f8 $44
	db   $fc                                         ; $5e45: $fc
	ld   e, h                                        ; $5e46: $5c
	cp   h                                           ; $5e47: $bc
	ld   [$241a], a                                  ; $5e48: $ea $1a $24
	call c, $ec14                                    ; $5e4b: $dc $14 $ec
	inc  b                                           ; $5e4e: $04
	db   $fc                                         ; $5e4f: $fc
	add  h                                           ; $5e50: $84
	db   $fc                                         ; $5e51: $fc
	ld   c, b                                        ; $5e52: $48
	ld   hl, sp+$48                                  ; $5e53: $f8 $48
	ld   hl, sp+$58                                  ; $5e55: $f8 $58
	ld   hl, sp-$08                                  ; $5e57: $f8 $f8
	ld   hl, sp-$18                                  ; $5e59: $f8 $e8
	ld   hl, sp-$38                                  ; $5e5b: $f8 $c8
	ld   a, b                                        ; $5e5d: $78
	ret  z                                           ; $5e5e: $c8

	ld   hl, sp+$07                                  ; $5e5f: $f8 $07
	ld   b, $07                                      ; $5e61: $06 $07
	ld   b, $0f                                      ; $5e63: $06 $0f
	ld   c, $11                                      ; $5e65: $0e $11
	rra                                              ; $5e67: $1f
	ld   de, $1a1f                                   ; $5e68: $11 $1f $1a
	ld   e, $16                                      ; $5e6b: $1e $16
	ld   d, $02                                      ; $5e6d: $16 $02
	ld   [bc], a                                     ; $5e6f: $02
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	nop                                              ; $5e7a: $00
	nop                                              ; $5e7b: $00
	nop                                              ; $5e7c: $00
	nop                                              ; $5e7d: $00
	ld   bc, $3f01                                   ; $5e7e: $01 $01 $3f
	rst  $38                                         ; $5e81: $ff
	ld   [hl-], a                                    ; $5e82: $32
	rst  JumpTable                                         ; $5e83: $df
	ccf                                              ; $5e84: $3f
	ret  nc                                          ; $5e85: $d0

	cpl                                              ; $5e86: $2f
	ldh  a, [$df]                                    ; $5e87: $f0 $df
	ldh  [$bf], a                                    ; $5e89: $e0 $bf
	ret  nz                                          ; $5e8b: $c0

	ld   a, a                                        ; $5e8c: $7f
	ld   b, b                                        ; $5e8d: $40
	ccf                                              ; $5e8e: $3f
	jr   nz, jr_028_5eb0                             ; $5e8f: $20 $1f

	db   $10                                         ; $5e91: $10
	ccf                                              ; $5e92: $3f
	jr   nz, jr_028_5f14                             ; $5e93: $20 $7f

	ld   b, b                                        ; $5e95: $40
	ld   a, a                                        ; $5e96: $7f
	ld   b, b                                        ; $5e97: $40
	rst  $38                                         ; $5e98: $ff
	add  b                                           ; $5e99: $80
	rst  $38                                         ; $5e9a: $ff
	add  b                                           ; $5e9b: $80
	cp   $81                                         ; $5e9c: $fe $81
	cp   $01                                         ; $5e9e: $fe $01
	ldh  a, [$b0]                                    ; $5ea0: $f0 $b0
	ldh  [$e0], a                                    ; $5ea2: $e0 $e0
	ldh  [$60], a                                    ; $5ea4: $e0 $60
	ldh  [rAUD4LEN], a                               ; $5ea6: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $5ea8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5eaa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5eac: $f0 $10
	add  sp, $38                                     ; $5eae: $e8 $38

jr_028_5eb0:
	rst  $20                                         ; $5eb0: $e7
	ccf                                              ; $5eb1: $3f
	pop  hl                                          ; $5eb2: $e1
	ccf                                              ; $5eb3: $3f
	pop  de                                          ; $5eb4: $d1
	ld   a, a                                        ; $5eb5: $7f
	pop  de                                          ; $5eb6: $d1
	ld   a, a                                        ; $5eb7: $7f
	sbc  $7e                                         ; $5eb8: $de $7e
	ld   d, b                                        ; $5eba: $50
	ldh  a, [$90]                                    ; $5ebb: $f0 $90
	ldh  a, [$90]                                    ; $5ebd: $f0 $90
	ldh  a, [rSB]                                    ; $5ebf: $f0 $01
	ld   bc, $0203                                   ; $5ec1: $01 $03 $02
	rlca                                             ; $5ec4: $07
	inc  b                                           ; $5ec5: $04
	rlca                                             ; $5ec6: $07
	ld   b, $0b                                      ; $5ec7: $06 $0b
	rrca                                             ; $5ec9: $0f
	ld   sp, $7e3f                                   ; $5eca: $31 $3f $7e
	ld   a, [hl]                                     ; $5ecd: $7e
	ld   a, [hl]                                     ; $5ece: $7e
	ld   a, [hl]                                     ; $5ecf: $7e
	nop                                              ; $5ed0: $00
	nop                                              ; $5ed1: $00
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	nop                                              ; $5ed6: $00
	nop                                              ; $5ed7: $00
	nop                                              ; $5ed8: $00
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	db   $fd                                         ; $5ee0: $fd
	inc  bc                                          ; $5ee1: $03
	ld   a, [$f607]                                  ; $5ee2: $fa $07 $f6
	rrca                                             ; $5ee5: $0f
	adc  $3f                                         ; $5ee6: $ce $3f
	cp   [hl]                                        ; $5ee8: $be
	ld   a, a                                        ; $5ee9: $7f
	jp   nz, $03c3                                   ; $5eea: $c2 $c3 $03

	inc  bc                                          ; $5eed: $03
	inc  bc                                          ; $5eee: $03
	inc  bc                                          ; $5eef: $03
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	db   $10                                         ; $5f00: $10
	ldh  a, [rAUD4LEN]                               ; $5f01: $f0 $20
	ldh  [rAUD4LEN], a                               ; $5f03: $e0 $20
	ldh  [rLCDC], a                                  ; $5f05: $e0 $40
	ret  nz                                          ; $5f07: $c0

	ld   b, b                                        ; $5f08: $40
	ret  nz                                          ; $5f09: $c0

	ld   h, b                                        ; $5f0a: $60
	ldh  [$f0], a                                    ; $5f0b: $e0 $f0
	ldh  a, [$f0]                                    ; $5f0d: $f0 $f0
	ldh  a, [rP1]                                    ; $5f0f: $f0 $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00

jr_028_5f14:
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	inc  bc                                          ; $5f24: $03
	inc  bc                                          ; $5f25: $03
	inc  b                                           ; $5f26: $04
	rlca                                             ; $5f27: $07
	ld   [$0c0f], sp                                 ; $5f28: $08 $0f $0c
	rrca                                             ; $5f2b: $0f
	ld   a, [bc]                                     ; $5f2c: $0a
	rrca                                             ; $5f2d: $0f
	ld   b, $07                                      ; $5f2e: $06 $07
	rlca                                             ; $5f30: $07
	dec  b                                           ; $5f31: $05
	rlca                                             ; $5f32: $07
	inc  b                                           ; $5f33: $04
	rlca                                             ; $5f34: $07
	ld   b, $05                                      ; $5f35: $06 $05
	dec  b                                           ; $5f37: $05
	ld   bc, $0201                                   ; $5f38: $01 $01 $02
	inc  bc                                          ; $5f3b: $03
	ld   [bc], a                                     ; $5f3c: $02
	inc  bc                                          ; $5f3d: $03
	ld   [bc], a                                     ; $5f3e: $02
	inc  bc                                          ; $5f3f: $03
	rra                                              ; $5f40: $1f
	rra                                              ; $5f41: $1f
	ldh  [rIE], a                                    ; $5f42: $e0 $ff
	cp   b                                           ; $5f44: $b8
	rst  ToBoot                                         ; $5f45: $c7
	ld   c, b                                        ; $5f46: $48
	or   a                                           ; $5f47: $b7
	ld   b, $f9                                      ; $5f48: $06 $f9
	inc  h                                           ; $5f4a: $24
	rst  $38                                         ; $5f4b: $ff
	ld   c, b                                        ; $5f4c: $48
	rst  $38                                         ; $5f4d: $ff
	ret                                              ; $5f4e: $c9


	rst  $38                                         ; $5f4f: $ff
	call z, $eeff                                    ; $5f50: $cc $ff $ee
	ei                                               ; $5f53: $fb
	cp   $1f                                         ; $5f54: $fe $1f
	rst  $38                                         ; $5f56: $ff
	dec  d                                           ; $5f57: $15
	rst  $38                                         ; $5f58: $ff
	dec  e                                           ; $5f59: $1d
	rst  $38                                         ; $5f5a: $ff
	sbc  l                                           ; $5f5b: $9d
	ld   a, a                                        ; $5f5c: $7f
	adc  $7f                                         ; $5f5d: $ce $7f
	call nz, $8080                                   ; $5f5f: $c4 $80 $80
	ld   a, b                                        ; $5f62: $78
	ld   hl, sp+$44                                  ; $5f63: $f8 $44
	db   $fc                                         ; $5f65: $fc
	ld   e, h                                        ; $5f66: $5c
	cp   h                                           ; $5f67: $bc
	ld   [$241a], a                                  ; $5f68: $ea $1a $24
	call c, $ec14                                    ; $5f6b: $dc $14 $ec
	inc  b                                           ; $5f6e: $04
	db   $fc                                         ; $5f6f: $fc
	add  h                                           ; $5f70: $84
	db   $fc                                         ; $5f71: $fc
	ld   c, b                                        ; $5f72: $48
	ld   hl, sp+$48                                  ; $5f73: $f8 $48
	ld   hl, sp+$48                                  ; $5f75: $f8 $48
	ld   hl, sp-$28                                  ; $5f77: $f8 $d8
	ld   hl, sp-$1c                                  ; $5f79: $f8 $e4
	db   $fc                                         ; $5f7b: $fc
	db   $e4                                         ; $5f7c: $e4
	ld   a, h                                        ; $5f7d: $7c
	db   $e4                                         ; $5f7e: $e4
	db   $fc                                         ; $5f7f: $fc
	inc  b                                           ; $5f80: $04
	rlca                                             ; $5f81: $07
	dec  b                                           ; $5f82: $05
	rlca                                             ; $5f83: $07
	rrca                                             ; $5f84: $0f
	dec  c                                           ; $5f85: $0d
	ld   de, $111f                                   ; $5f86: $11 $1f $11
	rra                                              ; $5f89: $1f
	ld   a, [de]                                     ; $5f8a: $1a
	ld   e, $16                                      ; $5f8b: $1e $16
	ld   d, $02                                      ; $5f8d: $16 $02
	ld   [bc], a                                     ; $5f8f: $02
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	ld   bc, $8701                                   ; $5f9e: $01 $01 $87
	rst  $38                                         ; $5fa1: $ff
	ld   a, [bc]                                     ; $5fa2: $0a
	rst  $38                                         ; $5fa3: $ff
	dec  e                                           ; $5fa4: $1d
	ldh  a, [c]                                      ; $5fa5: $f2
	scf                                              ; $5fa6: $37
	ld   hl, sp-$21                                  ; $5fa7: $f8 $df
	ldh  [$bf], a                                    ; $5fa9: $e0 $bf
	ret  nz                                          ; $5fab: $c0

	ld   a, a                                        ; $5fac: $7f
	ld   b, b                                        ; $5fad: $40
	ccf                                              ; $5fae: $3f
	jr   nz, jr_028_5ff0                             ; $5faf: $20 $3f

	jr   nc, jr_028_5ff2                             ; $5fb1: $30 $3f

	jr   nz, jr_028_6034                             ; $5fb3: $20 $7f

	ld   b, b                                        ; $5fb5: $40
	ld   a, a                                        ; $5fb6: $7f
	ld   b, b                                        ; $5fb7: $40
	rst  $38                                         ; $5fb8: $ff
	add  b                                           ; $5fb9: $80
	rst  $38                                         ; $5fba: $ff
	add  b                                           ; $5fbb: $80
	cp   $81                                         ; $5fbc: $fe $81
	cp   $01                                         ; $5fbe: $fe $01
	cp   h                                           ; $5fc0: $bc
	xor  h                                           ; $5fc1: $ac
	ld   hl, sp-$18                                  ; $5fc2: $f8 $e8
	ld   hl, sp+$78                                  ; $5fc4: $f8 $78
	ld   hl, sp+$38                                  ; $5fc6: $f8 $38
	ldh  a, [rAUD1SWEEP]                             ; $5fc8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5fca: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $5fcc: $f0 $10
	add  sp, $38                                     ; $5fce: $e8 $38
	rst  $20                                         ; $5fd0: $e7
	ccf                                              ; $5fd1: $3f
	pop  hl                                          ; $5fd2: $e1
	ccf                                              ; $5fd3: $3f
	pop  de                                          ; $5fd4: $d1
	ccf                                              ; $5fd5: $3f
	pop  de                                          ; $5fd6: $d1
	ld   a, a                                        ; $5fd7: $7f
	sbc  $7e                                         ; $5fd8: $de $7e
	ld   d, b                                        ; $5fda: $50
	ldh  a, [$90]                                    ; $5fdb: $f0 $90
	ldh  a, [$90]                                    ; $5fdd: $f0 $90
	ldh  a, [rSB]                                    ; $5fdf: $f0 $01
	ld   bc, $0203                                   ; $5fe1: $01 $03 $02
	rlca                                             ; $5fe4: $07
	inc  b                                           ; $5fe5: $04
	rlca                                             ; $5fe6: $07
	inc  b                                           ; $5fe7: $04
	dec  bc                                          ; $5fe8: $0b
	rrca                                             ; $5fe9: $0f
	ld   sp, $7e3f                                   ; $5fea: $31 $3f $7e
	ld   a, [hl]                                     ; $5fed: $7e
	ld   a, [hl]                                     ; $5fee: $7e
	ld   a, [hl]                                     ; $5fef: $7e

jr_028_5ff0:
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00

jr_028_5ff2:
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	db   $fd                                         ; $6000: $fd
	inc  bc                                          ; $6001: $03
	ld   a, [$f607]                                  ; $6002: $fa $07 $f6
	rrca                                             ; $6005: $0f
	adc  $3f                                         ; $6006: $ce $3f
	cp   [hl]                                        ; $6008: $be
	ld   a, a                                        ; $6009: $7f
	jp   nz, $03c3                                   ; $600a: $c2 $c3 $03

	inc  bc                                          ; $600d: $03
	inc  bc                                          ; $600e: $03
	inc  bc                                          ; $600f: $03
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
	db   $10                                         ; $6020: $10
	ldh  a, [rAUD4LEN]                               ; $6021: $f0 $20
	ldh  [rAUD4LEN], a                               ; $6023: $e0 $20
	ldh  [rLCDC], a                                  ; $6025: $e0 $40
	ret  nz                                          ; $6027: $c0

	ld   b, b                                        ; $6028: $40
	ret  nz                                          ; $6029: $c0

	ld   h, b                                        ; $602a: $60
	ldh  [$f0], a                                    ; $602b: $e0 $f0
	ldh  a, [$f0]                                    ; $602d: $f0 $f0
	ldh  a, [rP1]                                    ; $602f: $f0 $00
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00

jr_028_6034:
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	ld   bc, $0601                                   ; $6042: $01 $01 $06
	rlca                                             ; $6045: $07
	dec  bc                                          ; $6046: $0b
	inc  c                                           ; $6047: $0c
	db   $10                                         ; $6048: $10
	rra                                              ; $6049: $1f
	dec  h                                           ; $604a: $25
	ccf                                              ; $604b: $3f
	ld   a, [hl+]                                    ; $604c: $2a
	cpl                                              ; $604d: $2f
	inc  c                                           ; $604e: $0c
	rrca                                             ; $604f: $0f
	ld   de, $121f                                   ; $6050: $11 $1f $12
	rra                                              ; $6053: $1f
	ld   d, $1f                                      ; $6054: $16 $1f
	ld   d, $1d                                      ; $6056: $16 $1d
	rrca                                             ; $6058: $0f
	dec  c                                           ; $6059: $0d
	rlca                                             ; $605a: $07
	dec  b                                           ; $605b: $05
	rlca                                             ; $605c: $07
	ld   b, $07                                      ; $605d: $06 $07
	inc  b                                           ; $605f: $04
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	rst  $38                                         ; $6062: $ff
	rst  $38                                         ; $6063: $ff
	pop  bc                                          ; $6064: $c1
	ccf                                              ; $6065: $3f
	jp   nz, $373d                                   ; $6066: $c2 $3d $37

	ret  z                                           ; $6069: $c8

	add  c                                           ; $606a: $81
	cp   $00                                         ; $606b: $fe $00
	rst  $38                                         ; $606d: $ff
	inc  b                                           ; $606e: $04
	rst  $38                                         ; $606f: $ff
	inc  h                                           ; $6070: $24
	rst  $38                                         ; $6071: $ff
	ld   [hl+], a                                    ; $6072: $22
	rst  $38                                         ; $6073: $ff
	ld   [hl], c                                     ; $6074: $71
	rst  $38                                         ; $6075: $ff
	ld   sp, hl                                      ; $6076: $f9
	xor  a                                           ; $6077: $af
	db   $fd                                         ; $6078: $fd
	ld   l, a                                        ; $6079: $6f
	rst  $38                                         ; $607a: $ff
	ld   l, a                                        ; $607b: $6f
	rst  $38                                         ; $607c: $ff
	ld   [hl], c                                     ; $607d: $71
	cp   $02                                         ; $607e: $fe $02
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	ret  nz                                          ; $6084: $c0

	ret  nz                                          ; $6085: $c0

	jr   nz, @-$1e                                   ; $6086: $20 $e0

	and  b                                           ; $6088: $a0
	ldh  [$50], a                                    ; $6089: $e0 $50
	ldh  a, [$b0]                                    ; $608b: $f0 $b0
	ld   [hl], b                                     ; $608d: $70
	db   $10                                         ; $608e: $10
	ldh  a, [rAUD1SWEEP]                             ; $608f: $f0 $10
	ldh  a, [rAUD4LEN]                               ; $6091: $f0 $20
	ldh  [rAUD4LEN], a                               ; $6093: $e0 $20
	ldh  [rAUD4LEN], a                               ; $6095: $e0 $20
	ldh  [$50], a                                    ; $6097: $e0 $50
	ldh  a, [$88]                                    ; $6099: $f0 $88
	ld   hl, sp+$48                                  ; $609b: $f8 $48
	ld   a, b                                        ; $609d: $78
	jr   z, @+$3a                                    ; $609e: $28 $38

	inc  bc                                          ; $60a0: $03
	inc  bc                                          ; $60a1: $03
	db   $fd                                         ; $60a2: $fd
	cp   $3f                                         ; $60a3: $fe $3f
	ret  nz                                          ; $60a5: $c0

	nop                                              ; $60a6: $00
	rst  $38                                         ; $60a7: $ff
	add  b                                           ; $60a8: $80
	adc  a                                           ; $60a9: $8f
	pop  af                                          ; $60aa: $f1
	ld   bc, $0101                                   ; $60ab: $01 $01 $01
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	ld   bc, $0101                                   ; $60b2: $01 $01 $01
	ld   bc, $0101                                   ; $60b5: $01 $01 $01
	ld   bc, $0301                                   ; $60b8: $01 $01 $03
	ld   [bc], a                                     ; $60bb: $02
	inc  bc                                          ; $60bc: $03
	ld   [bc], a                                     ; $60bd: $02
	rlca                                             ; $60be: $07
	inc  b                                           ; $60bf: $04
	db   $fc                                         ; $60c0: $fc
	db   $fc                                         ; $60c1: $fc
	and  a                                           ; $60c2: $a7
	rst  $38                                         ; $60c3: $ff
	rst  JumpTable                                         ; $60c4: $df
	ld   hl, $fd02                                   ; $60c5: $21 $02 $fd
	ccf                                              ; $60c8: $3f
	pop  bc                                          ; $60c9: $c1
	rst  $38                                         ; $60ca: $ff
	ld   bc, $01ff                                   ; $60cb: $01 $ff $01
	rst  $38                                         ; $60ce: $ff
	add  c                                           ; $60cf: $81
	rst  $38                                         ; $60d0: $ff
	add  e                                           ; $60d1: $83
	rst  $38                                         ; $60d2: $ff
	ld   b, e                                        ; $60d3: $43
	db   $fd                                         ; $60d4: $fd
	inc  bc                                          ; $60d5: $03
	ld   a, [$fa07]                                  ; $60d6: $fa $07 $fa
	rlca                                             ; $60d9: $07
	ld   a, [$fa07]                                  ; $60da: $fa $07 $fa
	rlca                                             ; $60dd: $07
	db   $f4                                         ; $60de: $f4
	rrca                                             ; $60df: $0f
	xor  b                                           ; $60e0: $a8
	cp   b                                           ; $60e1: $b8
	ld   l, b                                        ; $60e2: $68
	ld   hl, sp+$18                                  ; $60e3: $f8 $18
	add  sp, -$70                                    ; $60e5: $e8 $90
	ldh  a, [$e0]                                    ; $60e7: $f0 $e0
	ld   h, b                                        ; $60e9: $60
	ret  nz                                          ; $60ea: $c0

	ld   b, b                                        ; $60eb: $40
	ret  nz                                          ; $60ec: $c0

	ld   b, b                                        ; $60ed: $40
	ldh  a, [$30]                                    ; $60ee: $f0 $30
	db   $fc                                         ; $60f0: $fc
	inc  c                                           ; $60f1: $0c
	db   $fc                                         ; $60f2: $fc
	add  h                                           ; $60f3: $84
	ld   a, h                                        ; $60f4: $7c
	ld   b, h                                        ; $60f5: $44
	db   $fc                                         ; $60f6: $fc
	call nz, $b8b8                                   ; $60f7: $c4 $b8 $b8
	add  b                                           ; $60fa: $80
	add  b                                           ; $60fb: $80
	add  b                                           ; $60fc: $80
	add  b                                           ; $60fd: $80
	add  b                                           ; $60fe: $80
	add  b                                           ; $60ff: $80
	rlca                                             ; $6100: $07
	inc  b                                           ; $6101: $04
	rlca                                             ; $6102: $07
	inc  b                                           ; $6103: $04
	rrca                                             ; $6104: $0f
	ld   [$080f], sp                                 ; $6105: $08 $0f $08
	dec  bc                                          ; $6108: $0b
	rrca                                             ; $6109: $0f
	ld   sp, $7e3f                                   ; $610a: $31 $3f $7e
	ld   a, [hl]                                     ; $610d: $7e
	ld   a, [hl]                                     ; $610e: $7e
	ld   a, [hl]                                     ; $610f: $7e
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	nop                                              ; $6116: $00
	nop                                              ; $6117: $00
	nop                                              ; $6118: $00
	nop                                              ; $6119: $00
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	db   $f4                                         ; $6120: $f4
	rrca                                             ; $6121: $0f
	db   $f4                                         ; $6122: $f4
	rrca                                             ; $6123: $0f
	db   $ec                                         ; $6124: $ec
	rra                                              ; $6125: $1f
	xor  $1f                                         ; $6126: $ee $1f
	sbc  $3f                                         ; $6128: $de $3f

jr_028_612a:
	ldh  a, [c]                                      ; $612a: $f2
	di                                               ; $612b: $f3
	inc  bc                                          ; $612c: $03
	inc  bc                                          ; $612d: $03
	inc  bc                                          ; $612e: $03
	inc  bc                                          ; $612f: $03
	nop                                              ; $6130: $00
	nop                                              ; $6131: $00
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	nop                                              ; $6136: $00
	nop                                              ; $6137: $00
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	nop                                              ; $613e: $00
	nop                                              ; $613f: $00
	add  b                                           ; $6140: $80
	add  b                                           ; $6141: $80
	ld   b, b                                        ; $6142: $40
	ret  nz                                          ; $6143: $c0

	ld   b, b                                        ; $6144: $40
	ret  nz                                          ; $6145: $c0

	ld   b, b                                        ; $6146: $40
	ret  nz                                          ; $6147: $c0

	jr   nz, jr_028_612a                             ; $6148: $20 $e0

	db   $10                                         ; $614a: $10
	ldh  a, [$f0]                                    ; $614b: $f0 $f0
	ldh  a, [$f0]                                    ; $614d: $f0 $f0
	ldh  a, [rP1]                                    ; $614f: $f0 $00
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	ld   a, a                                        ; $6162: $7f
	inc  bc                                          ; $6163: $03
	nop                                              ; $6164: $00
	ccf                                              ; $6165: $3f
	ld   e, $01                                      ; $6166: $1e $01
	ld   bc, $070f                                   ; $6168: $01 $0f $07
	rlca                                             ; $616b: $07
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	inc  bc                                          ; $6180: $03
	inc  bc                                          ; $6181: $03
	db   $fd                                         ; $6182: $fd
	cp   $02                                         ; $6183: $fe $02
	rst  $38                                         ; $6185: $ff
	ld   [bc], a                                     ; $6186: $02
	rst  $38                                         ; $6187: $ff
	cp   $ff                                         ; $6188: $fe $ff
	inc  bc                                          ; $618a: $03
	ld   [bc], a                                     ; $618b: $02
	ld   bc, $0001                                   ; $618c: $01 $01 $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	ld   bc, $0101                                   ; $6192: $01 $01 $01
	ld   bc, $0101                                   ; $6195: $01 $01 $01
	ld   bc, $0301                                   ; $6198: $01 $01 $03
	ld   [bc], a                                     ; $619b: $02
	inc  bc                                          ; $619c: $03
	ld   [bc], a                                     ; $619d: $02
	rlca                                             ; $619e: $07
	inc  b                                           ; $619f: $04
	db   $fc                                         ; $61a0: $fc
	db   $fc                                         ; $61a1: $fc
	rst  $10                                         ; $61a2: $d7
	ccf                                              ; $61a3: $3f
	cp   $11                                         ; $61a4: $fe $11
	cp   a                                           ; $61a6: $bf
	ld   b, c                                        ; $61a7: $41
	rst  $38                                         ; $61a8: $ff
	ld   bc, $01ff                                   ; $61a9: $01 $ff $01
	rst  $38                                         ; $61ac: $ff
	ld   bc, $81ff                                   ; $61ad: $01 $ff $81
	rst  $38                                         ; $61b0: $ff
	add  e                                           ; $61b1: $83
	rst  $38                                         ; $61b2: $ff
	ld   b, e                                        ; $61b3: $43
	db   $fd                                         ; $61b4: $fd
	inc  bc                                          ; $61b5: $03
	ld   a, [$fa07]                                  ; $61b6: $fa $07 $fa
	rlca                                             ; $61b9: $07
	ld   a, [$fa07]                                  ; $61ba: $fa $07 $fa
	rlca                                             ; $61bd: $07
	db   $f4                                         ; $61be: $f4
	rrca                                             ; $61bf: $0f
	ld   h, $3e                                      ; $61c0: $26 $3e
	add  hl, de                                      ; $61c2: $19
	rla                                              ; $61c3: $17
	sub  c                                           ; $61c4: $91
	sbc  a                                           ; $61c5: $9f
	bit  1, a                                        ; $61c6: $cb $4f
	ret  z                                           ; $61c8: $c8

	ld   c, [hl]                                     ; $61c9: $4e
	add  $46                                         ; $61ca: $c6 $46
	ret  nz                                          ; $61cc: $c0

	ld   b, b                                        ; $61cd: $40
	ldh  a, [$30]                                    ; $61ce: $f0 $30
	db   $fc                                         ; $61d0: $fc
	inc  c                                           ; $61d1: $0c
	db   $fc                                         ; $61d2: $fc
	add  h                                           ; $61d3: $84
	ld   a, h                                        ; $61d4: $7c
	ld   b, h                                        ; $61d5: $44
	db   $fc                                         ; $61d6: $fc
	call nz, $b8b8                                   ; $61d7: $c4 $b8 $b8
	add  b                                           ; $61da: $80
	add  b                                           ; $61db: $80
	add  b                                           ; $61dc: $80
	add  b                                           ; $61dd: $80
	add  b                                           ; $61de: $80
	add  b                                           ; $61df: $80
	rlca                                             ; $61e0: $07
	inc  b                                           ; $61e1: $04
	rlca                                             ; $61e2: $07
	inc  b                                           ; $61e3: $04
	rrca                                             ; $61e4: $0f
	ld   [$080f], sp                                 ; $61e5: $08 $0f $08
	dec  bc                                          ; $61e8: $0b
	rrca                                             ; $61e9: $0f
	ld   sp, $7e3f                                   ; $61ea: $31 $3f $7e
	ld   a, [hl]                                     ; $61ed: $7e
	ld   a, [hl]                                     ; $61ee: $7e
	ld   a, [hl]                                     ; $61ef: $7e
	nop                                              ; $61f0: $00
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	nop                                              ; $61fc: $00
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00
	db   $f4                                         ; $6200: $f4
	rrca                                             ; $6201: $0f
	db   $f4                                         ; $6202: $f4
	rrca                                             ; $6203: $0f
	db   $ec                                         ; $6204: $ec
	rra                                              ; $6205: $1f
	xor  $1f                                         ; $6206: $ee $1f
	sbc  $3f                                         ; $6208: $de $3f

jr_028_620a:
	ldh  a, [c]                                      ; $620a: $f2
	di                                               ; $620b: $f3
	inc  bc                                          ; $620c: $03
	inc  bc                                          ; $620d: $03
	inc  bc                                          ; $620e: $03
	inc  bc                                          ; $620f: $03
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	add  b                                           ; $6220: $80
	add  b                                           ; $6221: $80
	ld   b, b                                        ; $6222: $40
	ret  nz                                          ; $6223: $c0

	ld   b, b                                        ; $6224: $40
	ret  nz                                          ; $6225: $c0

	ld   b, b                                        ; $6226: $40
	ret  nz                                          ; $6227: $c0

	jr   nz, jr_028_620a                             ; $6228: $20 $e0

	db   $10                                         ; $622a: $10
	ldh  a, [$f0]                                    ; $622b: $f0 $f0
	ldh  a, [$f0]                                    ; $622d: $f0 $f0
	ldh  a, [rP1]                                    ; $622f: $f0 $00
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	rst  $38                                         ; $6242: $ff
	rst  $38                                         ; $6243: $ff
	add  b                                           ; $6244: $80
	rst  $38                                         ; $6245: $ff
	ld   [hl], b                                     ; $6246: $70
	ld   a, a                                        ; $6247: $7f
	ld   de, $0e1f                                   ; $6248: $11 $1f $0e
	ld   c, $00                                      ; $624b: $0e $00
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	inc  bc                                          ; $6266: $03
	inc  bc                                          ; $6267: $03
	rlca                                             ; $6268: $07
	inc  b                                           ; $6269: $04
	dec  bc                                          ; $626a: $0b
	inc  c                                           ; $626b: $0c
	dec  bc                                          ; $626c: $0b
	inc  c                                           ; $626d: $0c
	dec  bc                                          ; $626e: $0b
	inc  c                                           ; $626f: $0c
	jr   jr_028_6291                                 ; $6270: $18 $1f

	jr   z, jr_028_62b3                              ; $6272: $28 $3f

	ld   d, h                                        ; $6274: $54

jr_028_6275:
	ld   [hl], a                                     ; $6275: $77
	rst  $20                                         ; $6276: $e7
	and  a                                           ; $6277: $a7
	push bc                                          ; $6278: $c5
	rst  ToBoot                                         ; $6279: $c7
	ld   c, $0a                                      ; $627a: $0e $0a
	inc  e                                           ; $627c: $1c
	inc  d                                           ; $627d: $14
	jr   jr_028_6298                                 ; $627e: $18 $18

	inc  c                                           ; $6280: $0c
	inc  c                                           ; $6281: $0c
	inc  e                                           ; $6282: $1c
	inc  d                                           ; $6283: $14
	jr   z, jr_028_62be                              ; $6284: $28 $38

	di                                               ; $6286: $f3
	di                                               ; $6287: $f3
	rst  $30                                         ; $6288: $f7
	dec  d                                           ; $6289: $15
	adc  $3a                                         ; $628a: $ce $3a
	xor  h                                           ; $628c: $ac
	ld   a, h                                        ; $628d: $7c
	cp   b                                           ; $628e: $b8
	add  sp, -$08                                    ; $628f: $e8 $f8

jr_028_6291:
	adc  b                                           ; $6291: $88
	ld   hl, sp+$08                                  ; $6292: $f8 $08
	ld   [hl], b                                     ; $6294: $70
	sub  b                                           ; $6295: $90
	ldh  [$e0], a                                    ; $6296: $e0 $e0

jr_028_6298:
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	nop                                              ; $62a3: $00
	nop                                              ; $62a4: $00
	nop                                              ; $62a5: $00
	inc  bc                                          ; $62a6: $03
	inc  bc                                          ; $62a7: $03
	rlca                                             ; $62a8: $07
	inc  b                                           ; $62a9: $04
	dec  bc                                          ; $62aa: $0b
	inc  c                                           ; $62ab: $0c
	dec  bc                                          ; $62ac: $0b
	inc  c                                           ; $62ad: $0c
	dec  bc                                          ; $62ae: $0b
	inc  c                                           ; $62af: $0c
	ld   [$080f], sp                                 ; $62b0: $08 $0f $08

jr_028_62b3:
	rrca                                             ; $62b3: $0f
	inc  d                                           ; $62b4: $14

jr_028_62b5:
	rra                                              ; $62b5: $1f
	dec  hl                                          ; $62b6: $2b
	dec  sp                                          ; $62b7: $3b
	ld   a, [hl+]                                    ; $62b8: $2a
	dec  sp                                          ; $62b9: $3b
	ld   [hl-], a                                    ; $62ba: $32
	inc  sp                                          ; $62bb: $33
	inc  bc                                          ; $62bc: $03
	inc  bc                                          ; $62bd: $03

jr_028_62be:
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	ret  nz                                          ; $62c0: $c0

	ret  nz                                          ; $62c1: $c0

	and  [hl]                                        ; $62c2: $a6
	and  $ae                                         ; $62c3: $e6 $ae
	ld   [$fafe], a                                  ; $62c5: $ea $fe $fa
	db   $fc                                         ; $62c8: $fc
	inc  d                                           ; $62c9: $14
	ret  z                                           ; $62ca: $c8

	jr   c, jr_028_6275                              ; $62cb: $38 $a8

	ld   a, b                                        ; $62cd: $78
	cp   b                                           ; $62ce: $b8
	add  sp, -$08                                    ; $62cf: $e8 $f8
	adc  b                                           ; $62d1: $88
	ld   hl, sp+$08                                  ; $62d2: $f8 $08
	ld   [hl], b                                     ; $62d4: $70
	sub  b                                           ; $62d5: $90
	ldh  [$e0], a                                    ; $62d6: $e0 $e0
	add  b                                           ; $62d8: $80
	add  b                                           ; $62d9: $80
	add  b                                           ; $62da: $80
	add  b                                           ; $62db: $80
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	jr   nc, jr_028_6312                             ; $62e0: $30 $30

	jr   c, @+$2a                                    ; $62e2: $38 $28

	inc  e                                           ; $62e4: $1c
	inc  d                                           ; $62e5: $14
	ld   l, e                                        ; $62e6: $6b
	ld   l, a                                        ; $62e7: $6f
	ld   [hl], a                                     ; $62e8: $77
	ld   d, h                                        ; $62e9: $54
	dec  hl                                          ; $62ea: $2b
	inc  a                                           ; $62eb: $3c
	dec  de                                          ; $62ec: $1b
	inc  e                                           ; $62ed: $1c
	dec  bc                                          ; $62ee: $0b
	inc  c                                           ; $62ef: $0c
	ld   [$080f], sp                                 ; $62f0: $08 $0f $08
	rrca                                             ; $62f3: $0f
	inc  b                                           ; $62f4: $04

jr_028_62f5:
	rlca                                             ; $62f5: $07
	inc  bc                                          ; $62f6: $03
	inc  bc                                          ; $62f7: $03
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	ldh  [$e0], a                                    ; $6306: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $6308: $f0 $10
	ret  z                                           ; $630a: $c8

	jr   c, jr_028_62b5                              ; $630b: $38 $a8

	ld   a, b                                        ; $630d: $78
	cp   b                                           ; $630e: $b8
	add  sp, -$04                                    ; $630f: $e8 $fc
	adc  h                                           ; $6311: $8c

jr_028_6312:
	cp   $0a                                         ; $6312: $fe $0a
	ld   [hl], a                                     ; $6314: $77
	sub  l                                           ; $6315: $95
	db   $eb                                         ; $6316: $eb
	ei                                               ; $6317: $fb
	inc  e                                           ; $6318: $1c
	inc  d                                           ; $6319: $14
	ld   c, $0a                                      ; $631a: $0e $0a
	ld   b, $06                                      ; $631c: $06 $06
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	jr   nc, jr_028_6354                             ; $6322: $30 $30

	ld   a, h                                        ; $6324: $7c
	ld   c, h                                        ; $6325: $4c
	inc  sp                                          ; $6326: $33
	ccf                                              ; $6327: $3f
	rrca                                             ; $6328: $0f
	inc  c                                           ; $6329: $0c
	ld   a, e                                        ; $632a: $7b
	ld   a, h                                        ; $632b: $7c
	res  7, h                                        ; $632c: $cb $bc
	ld   a, e                                        ; $632e: $7b
	ld   a, h                                        ; $632f: $7c
	ld   [$080f], sp                                 ; $6330: $08 $0f $08
	rrca                                             ; $6333: $0f
	inc  b                                           ; $6334: $04
	rlca                                             ; $6335: $07
	inc  bc                                          ; $6336: $03
	inc  bc                                          ; $6337: $03
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	ldh  [$e0], a                                    ; $6346: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $6348: $f0 $10
	ret  z                                           ; $634a: $c8

	jr   c, jr_028_62f5                              ; $634b: $38 $a8

	ld   a, b                                        ; $634d: $78
	cp   a                                           ; $634e: $bf
	rst  $28                                         ; $634f: $ef
	ld   sp, hl                                      ; $6350: $f9
	adc  a                                           ; $6351: $8f
	cp   $0e                                         ; $6352: $fe $0e

jr_028_6354:
	ld   a, b                                        ; $6354: $78
	sbc  b                                           ; $6355: $98
	and  $fe                                         ; $6356: $e6 $fe
	dec  e                                           ; $6358: $1d
	dec  de                                          ; $6359: $1b
	ld   b, $06                                      ; $635a: $06 $06
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	ld   b, b                                        ; $6365: $40
	nop                                              ; $6366: $00
	jr   nz, jr_028_6369                             ; $6367: $20 $00

jr_028_6369:
	jr   c, jr_028_636b                              ; $6369: $38 $00

jr_028_636b:
	ld   e, $00                                      ; $636b: $1e $00
	rra                                              ; $636d: $1f
	nop                                              ; $636e: $00
	rrca                                             ; $636f: $0f
	nop                                              ; $6370: $00
	rra                                              ; $6371: $1f
	nop                                              ; $6372: $00
	ld   h, a                                        ; $6373: $67
	nop                                              ; $6374: $00
	ld   c, $00                                      ; $6375: $0e $00
	inc  c                                           ; $6377: $0c
	nop                                              ; $6378: $00
	jr   jr_028_637b                                 ; $6379: $18 $00

jr_028_637b:
	stop                                             ; $637b: $10 $00
	jr   nz, jr_028_637f                             ; $637d: $20 $00

jr_028_637f:
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	inc  b                                           ; $6385: $04
	nop                                              ; $6386: $00
	ld   [$3800], sp                                 ; $6387: $08 $00 $38
	nop                                              ; $638a: $00
	ld   [hl], b                                     ; $638b: $70
	nop                                              ; $638c: $00
	ldh  [rP1], a                                    ; $638d: $e0 $00
	ldh  [rP1], a                                    ; $638f: $e0 $00
	ld   hl, sp+$00                                  ; $6391: $f8 $00
	db   $ec                                         ; $6393: $ec
	nop                                              ; $6394: $00
	ld   h, d                                        ; $6395: $62
	nop                                              ; $6396: $00
	jr   nc, jr_028_6399                             ; $6397: $30 $00

jr_028_6399:
	stop                                             ; $6399: $10 $00
	ld   [rRAMG], sp                                 ; $639b: $08 $00 $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	ret  nz                                          ; $63a2: $c0

	nop                                              ; $63a3: $00
	ld   h, b                                        ; $63a4: $60
	nop                                              ; $63a5: $00
	jr   nc, jr_028_63a8                             ; $63a6: $30 $00

jr_028_63a8:
	jr   jr_028_63ce                                 ; $63a8: $18 $24

	inc  c                                           ; $63aa: $0c
	ld   [hl], d                                     ; $63ab: $72
	ld   b, $79                                      ; $63ac: $06 $79
	ld   c, $f1                                      ; $63ae: $0e $f1
	ld   a, h                                        ; $63b0: $7c

jr_028_63b1:
	inc  bc                                          ; $63b1: $03
	pop  hl                                          ; $63b2: $e1
	ld   e, $c2                                      ; $63b3: $1e $c2
	dec  c                                           ; $63b5: $0d
	add  h                                           ; $63b6: $84
	add  hl, bc                                      ; $63b7: $09

jr_028_63b8:
	add  hl, bc                                      ; $63b8: $09
	ld   [de], a                                     ; $63b9: $12
	add  hl, bc                                      ; $63ba: $09
	ld   [de], a                                     ; $63bb: $12
	ld   de, $2120                                   ; $63bc: $11 $20 $21
	nop                                              ; $63bf: $00
	ld   b, $00                                      ; $63c0: $06 $00
	ld   b, $00                                      ; $63c2: $06 $00
	jr   jr_028_63c6                                 ; $63c4: $18 $00

jr_028_63c6:
	jr   nc, @+$0a                                   ; $63c6: $30 $08

	ld   [hl], b                                     ; $63c8: $70
	ld   [$3040], sp                                 ; $63c9: $08 $40 $30
	add  b                                           ; $63cc: $80
	ld   a, h                                        ; $63cd: $7c

jr_028_63ce:
	nop                                              ; $63ce: $00
	cp   $30                                         ; $63cf: $fe $30
	ret  z                                           ; $63d1: $c8

	jr   jr_028_63b8                                 ; $63d2: $18 $e4

	rlca                                             ; $63d4: $07
	ldh  [rTAC], a                                   ; $63d5: $e0 $07
	or   b                                           ; $63d7: $b0
	ld   bc, $0090                                   ; $63d8: $01 $90 $00
	jr   jr_028_63f9                                 ; $63db: $18 $1c

	nop                                              ; $63dd: $00
	inc  c                                           ; $63de: $0c
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	ld   [$0421], sp                                 ; $63e9: $08 $21 $04
	jr   nc, jr_028_63f4                             ; $63ec: $30 $06

	jr   c, @+$05                                    ; $63ee: $38 $03

	ld   a, [hl]                                     ; $63f0: $7e
	ld   bc, $00fe                                   ; $63f1: $01 $fe $00

jr_028_63f4:
	rst  $20                                         ; $63f4: $e7
	jr   jr_028_6438                                 ; $63f5: $18 $41

	ld   a, $00                                      ; $63f7: $3e $00

jr_028_63f9:
	ccf                                              ; $63f9: $3f
	nop                                              ; $63fa: $00
	ccf                                              ; $63fb: $3f
	inc  d                                           ; $63fc: $14
	dec  hl                                          ; $63fd: $2b
	jr   nz, jr_028_641f                             ; $63fe: $20 $1f

	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	ld   a, b                                        ; $6406: $78
	nop                                              ; $6407: $00
	cp   $00                                         ; $6408: $fe $00
	ld   a, [hl]                                     ; $640a: $7e
	nop                                              ; $640b: $00
	ld   b, a                                        ; $640c: $47
	jr   c, jr_028_6416                              ; $640d: $38 $07

	ld   hl, sp+$03                                  ; $640f: $f8 $03
	db   $fc                                         ; $6411: $fc
	dec  sp                                          ; $6412: $3b
	call nz, $b946                                   ; $6413: $c4 $46 $b9

jr_028_6416:
	add  b                                           ; $6416: $80
	ld   a, a                                        ; $6417: $7f
	inc  e                                           ; $6418: $1c
	db   $e3                                         ; $6419: $e3
	ccf                                              ; $641a: $3f
	ret  nz                                          ; $641b: $c0

	rlca                                             ; $641c: $07
	ld   hl, sp+$07                                  ; $641d: $f8 $07

jr_028_641f:
	ld   hl, sp+$00                                  ; $641f: $f8 $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	add  b                                           ; $642e: $80
	jr   nc, jr_028_63b1                             ; $642f: $30 $80

	ld   h, b                                        ; $6431: $60
	nop                                              ; $6432: $00
	ret  nz                                          ; $6433: $c0

	ld   [hl], b                                     ; $6434: $70
	add  b                                           ; $6435: $80
	ld   hl, sp+$00                                  ; $6436: $f8 $00

jr_028_6438:
	ld   hl, sp+$00                                  ; $6438: $f8 $00
	sbc  h                                           ; $643a: $9c
	ld   h, b                                        ; $643b: $60
	inc  c                                           ; $643c: $0c
	ldh  a, [$0c]                                    ; $643d: $f0 $0c
	ldh  a, [$60]                                    ; $643f: $f0 $60
	rra                                              ; $6441: $1f
	ld   b, c                                        ; $6442: $41
	ld   a, $42                                      ; $6443: $3e $42
	dec  a                                           ; $6445: $3d
	ld   b, [hl]                                     ; $6446: $46
	add  hl, sp                                      ; $6447: $39
	ld   l, h                                        ; $6448: $6c
	ld   [de], a                                     ; $6449: $12
	jr   c, jr_028_644c                              ; $644a: $38 $00

jr_028_644c:
	add  hl, de                                      ; $644c: $19
	nop                                              ; $644d: $00
	ld   sp, $2100                                   ; $644e: $31 $00 $21
	nop                                              ; $6451: $00
	ld   h, b                                        ; $6452: $60
	nop                                              ; $6453: $00
	ld   b, b                                        ; $6454: $40
	nop                                              ; $6455: $00

jr_028_6456:
	ld   b, b                                        ; $6456: $40
	nop                                              ; $6457: $00
	ld   b, b                                        ; $6458: $40
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	inc  bc                                          ; $6460: $03
	db   $fc                                         ; $6461: $fc
	ld   [bc], a                                     ; $6462: $02
	db   $fd                                         ; $6463: $fd
	ld   [bc], a                                     ; $6464: $02
	db   $fd                                         ; $6465: $fd
	add  h                                           ; $6466: $84
	ld   a, d                                        ; $6467: $7a
	and  b                                           ; $6468: $a0
	ld   e, [hl]                                     ; $6469: $5e
	cp   a                                           ; $646a: $bf
	ld   b, b                                        ; $646b: $40
	rst  $38                                         ; $646c: $ff
	nop                                              ; $646d: $00
	sbc  $00                                         ; $646e: $de $00
	ret  nz                                          ; $6470: $c0

	nop                                              ; $6471: $00
	ret  nz                                          ; $6472: $c0

	nop                                              ; $6473: $00

jr_028_6474:
	ret  nz                                          ; $6474: $c0

	nop                                              ; $6475: $00
	ret  nz                                          ; $6476: $c0

	nop                                              ; $6477: $00
	add  b                                           ; $6478: $80
	nop                                              ; $6479: $00
	add  b                                           ; $647a: $80
	nop                                              ; $647b: $00
	add  b                                           ; $647c: $80
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	inc  c                                           ; $6480: $0c
	ldh  a, [rAUD2LOW]                               ; $6481: $f0 $18
	ldh  [rAUD4LEN], a                               ; $6483: $e0 $20

jr_028_6485:
	ret  nz                                          ; $6485: $c0

	ld   h, b                                        ; $6486: $60
	nop                                              ; $6487: $00
	jr   nz, jr_028_648a                             ; $6488: $20 $00

jr_028_648a:
	jr   nz, jr_028_648c                             ; $648a: $20 $00

jr_028_648c:
	jr   nc, jr_028_648e                             ; $648c: $30 $00

jr_028_648e:
	stop                                             ; $648e: $10 $00
	stop                                             ; $6490: $10 $00
	jr   jr_028_6494                                 ; $6492: $18 $00

jr_028_6494:
	jr   jr_028_6496                                 ; $6494: $18 $00

jr_028_6496:
	ld   [rRAMG], sp                                 ; $6496: $08 $00 $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	ld   bc, $1300                                   ; $64a6: $01 $00 $13
	nop                                              ; $64a9: $00
	rrca                                             ; $64aa: $0f
	nop                                              ; $64ab: $00
	dec  bc                                          ; $64ac: $0b
	inc  b                                           ; $64ad: $04
	inc  e                                           ; $64ae: $1c
	inc  bc                                          ; $64af: $03
	ld   a, $01                                      ; $64b0: $3e $01
	ld   b, d                                        ; $64b2: $42
	dec  a                                           ; $64b3: $3d
	ld   b, c                                        ; $64b4: $41
	ld   a, $81                                      ; $64b5: $3e $81
	ld   [hl], d                                     ; $64b7: $72
	add  b                                           ; $64b8: $80
	ld   h, e                                        ; $64b9: $63
	ld   b, b                                        ; $64ba: $40
	daa                                              ; $64bb: $27
	ld   [hl], h                                     ; $64bc: $74
	dec  bc                                          ; $64bd: $0b
	jr   nz, jr_028_64df                             ; $64be: $20 $1f

	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	ld   a, b                                        ; $64c2: $78
	nop                                              ; $64c3: $00
	cp   $00                                         ; $64c4: $fe $00
	rlca                                             ; $64c6: $07

jr_028_64c7:
	ld   hl, sp+$03                                  ; $64c7: $f8 $03
	db   $fc                                         ; $64c9: $fc
	inc  bc                                          ; $64ca: $03
	call z, $8601                                    ; $64cb: $cc $01 $86
	dec  a                                           ; $64ce: $3d

jr_028_64cf:
	ld   [bc], a                                     ; $64cf: $02
	ld   h, a                                        ; $64d0: $67
	jr   jr_028_6456                                 ; $64d1: $18 $83

	ld   a, h                                        ; $64d3: $7c
	ld   [bc], a                                     ; $64d4: $02
	db   $fd                                         ; $64d5: $fd
	nop                                              ; $64d6: $00
	rst  $38                                         ; $64d7: $ff
	ld   e, $e1                                      ; $64d8: $1e $e1
	ld   hl, $00de                                   ; $64da: $21 $de $00
	rst  $38                                         ; $64dd: $ff
	nop                                              ; $64de: $00

jr_028_64df:
	rrca                                             ; $64df: $0f
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	add  b                                           ; $64ee: $80
	nop                                              ; $64ef: $00
	add  b                                           ; $64f0: $80
	nop                                              ; $64f1: $00
	jr   nc, jr_028_6474                             ; $64f2: $30 $80

	ld   a, b                                        ; $64f4: $78
	add  b                                           ; $64f5: $80
	adc  h                                           ; $64f6: $8c
	ld   [hl], b                                     ; $64f7: $70
	inc  b                                           ; $64f8: $04
	cp   b                                           ; $64f9: $b8
	ld   b, $b8                                      ; $64fa: $06 $b8
	add  [hl]                                        ; $64fc: $86
	jr   jr_028_6485                                 ; $64fd: $18 $86

	jr   jr_028_6561                                 ; $64ff: $18 $60

	ld   e, $40                                      ; $6501: $1e $40
	ld   a, $40                                      ; $6503: $3e $40
	inc  a                                           ; $6505: $3c
	ld   b, b                                        ; $6506: $40
	ccf                                              ; $6507: $3f
	ld   h, b                                        ; $6508: $60
	ld   e, $30                                      ; $6509: $1e $30
	ld   [$1001], sp                                 ; $650b: $08 $01 $10
	ld   bc, $2100                                   ; $650e: $01 $00 $21
	nop                                              ; $6511: $00
	ld   h, b                                        ; $6512: $60
	nop                                              ; $6513: $00
	ld   b, b                                        ; $6514: $40
	nop                                              ; $6515: $00
	ld   b, b                                        ; $6516: $40
	nop                                              ; $6517: $00
	ld   b, b                                        ; $6518: $40
	nop                                              ; $6519: $00
	add  b                                           ; $651a: $80
	nop                                              ; $651b: $00
	add  b                                           ; $651c: $80
	nop                                              ; $651d: $00
	add  b                                           ; $651e: $80
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	rlca                                             ; $6521: $07
	nop                                              ; $6522: $00
	ld   a, e                                        ; $6523: $7b
	ld   bc, $83fe                                   ; $6524: $01 $fe $83
	ld   a, h                                        ; $6527: $7c
	add  b                                           ; $6528: $80
	ld   a, a                                        ; $6529: $7f
	and  b                                           ; $652a: $a0
	ld   e, a                                        ; $652b: $5f
	and  b                                           ; $652c: $a0
	ld   e, a                                        ; $652d: $5f
	ld   de, $0f4e                                   ; $652e: $11 $4e $0f
	ld   b, b                                        ; $6531: $40
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	add  b                                           ; $6538: $80
	nop                                              ; $6539: $00
	add  b                                           ; $653a: $80
	nop                                              ; $653b: $00
	add  b                                           ; $653c: $80
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	add  [hl]                                        ; $6540: $86
	jr   jr_028_64c7                                 ; $6541: $18 $84

	jr   c, jr_028_657d                              ; $6543: $38 $38

	ret  nz                                          ; $6545: $c0

	ld   b, b                                        ; $6546: $40
	nop                                              ; $6547: $00
	add  b                                           ; $6548: $80
	nop                                              ; $6549: $00
	add  b                                           ; $654a: $80
	ld   b, b                                        ; $654b: $40
	add  b                                           ; $654c: $80
	jr   nz, jr_028_64cf                             ; $654d: $20 $80

	db   $10                                         ; $654f: $10
	stop                                             ; $6550: $10 $00
	jr   jr_028_6554                                 ; $6552: $18 $00

jr_028_6554:
	jr   jr_028_6556                                 ; $6554: $18 $00

jr_028_6556:
	ld   [$0800], sp                                 ; $6556: $08 $00 $08
	nop                                              ; $6559: $00
	ld   [rRAMG], sp                                 ; $655a: $08 $00 $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00

jr_028_6561:
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	ld   bc, $0200                                   ; $6566: $01 $00 $02
	ld   bc, $0102                                   ; $6569: $01 $02 $01
	ld   [bc], a                                     ; $656c: $02
	ld   bc, $021c                                   ; $656d: $01 $1c $02
	ld   [hl+], a                                    ; $6570: $22
	inc  e                                           ; $6571: $1c
	nop                                              ; $6572: $00
	ld   [hl], d                                     ; $6573: $72
	nop                                              ; $6574: $00
	ld   h, d                                        ; $6575: $62
	nop                                              ; $6576: $00
	add  $00                                         ; $6577: $c6 $00
	add  $00                                         ; $6579: $c6 $00
	ld   b, a                                        ; $657b: $47
	nop                                              ; $657c: $00

jr_028_657d:
	rrca                                             ; $657d: $0f
	jr   nz, jr_028_659e                             ; $657e: $20 $1e

	inc  c                                           ; $6580: $0c
	nop                                              ; $6581: $00
	inc  bc                                          ; $6582: $03
	ld   a, h                                        ; $6583: $7c
	nop                                              ; $6584: $00
	rst  $38                                         ; $6585: $ff
	nop                                              ; $6586: $00
	add  e                                           ; $6587: $83
	nop                                              ; $6588: $00
	ld   bc, $0100                                   ; $6589: $01 $00 $01
	nop                                              ; $658c: $00
	ld   bc, $0900                                   ; $658d: $01 $00 $09
	nop                                              ; $6590: $00
	inc  b                                           ; $6591: $04
	inc  bc                                          ; $6592: $03
	inc  h                                           ; $6593: $24
	ld   [bc], a                                     ; $6594: $02
	ld   a, l                                        ; $6595: $7d
	nop                                              ; $6596: $00
	rst  $38                                         ; $6597: $ff
	inc  bc                                          ; $6598: $03
	db   $fc                                         ; $6599: $fc
	nop                                              ; $659a: $00
	add  e                                           ; $659b: $83
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00

jr_028_659e:
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	ld   b, b                                        ; $65a6: $40
	add  b                                           ; $65a7: $80
	ld   b, b                                        ; $65a8: $40
	add  b                                           ; $65a9: $80
	ld   h, b                                        ; $65aa: $60
	add  b                                           ; $65ab: $80
	ld   h, b                                        ; $65ac: $60
	add  b                                           ; $65ad: $80
	ld   h, b                                        ; $65ae: $60
	add  b                                           ; $65af: $80
	ret  nz                                          ; $65b0: $c0

	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	or   b                                           ; $65b3: $b0
	nop                                              ; $65b4: $00
	ret  z                                           ; $65b5: $c8

	inc  b                                           ; $65b6: $04
	adc  b                                           ; $65b7: $88
	nop                                              ; $65b8: $00
	add  h                                           ; $65b9: $84
	add  d                                           ; $65ba: $82
	inc  b                                           ; $65bb: $04
	ld   b, b                                        ; $65bc: $40
	add  d                                           ; $65bd: $82
	ld   b, b                                        ; $65be: $40
	add  [hl]                                        ; $65bf: $86
	nop                                              ; $65c0: $00
	ld   [hl], d                                     ; $65c1: $72
	nop                                              ; $65c2: $00
	ld   h, b                                        ; $65c3: $60
	nop                                              ; $65c4: $00
	ld   b, e                                        ; $65c5: $43

jr_028_65c6:
	nop                                              ; $65c6: $00
	ld   b, b                                        ; $65c7: $40
	nop                                              ; $65c8: $00
	ld   h, [hl]                                     ; $65c9: $66
	nop                                              ; $65ca: $00
	jr   c, jr_028_65ce                              ; $65cb: $38 $01

	db   $10                                         ; $65cd: $10

jr_028_65ce:
	ld   bc, $0100                                   ; $65ce: $01 $00 $01
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	ld   b, b                                        ; $65d8: $40
	nop                                              ; $65d9: $00
	add  b                                           ; $65da: $80
	nop                                              ; $65db: $00
	add  b                                           ; $65dc: $80
	nop                                              ; $65dd: $00
	add  b                                           ; $65de: $80
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	ld   bc, $0700                                   ; $65e3: $01 $00 $07
	inc  b                                           ; $65e6: $04
	ld   [bc], a                                     ; $65e7: $02
	nop                                              ; $65e8: $00
	ld   e, $23                                      ; $65e9: $1e $23
	inc  e                                           ; $65eb: $1c
	ld   hl, $1e1e                                   ; $65ec: $21 $1e $1e
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	ld   b, b                                        ; $65f1: $40
	nop                                              ; $65f2: $00
	ld   b, b                                        ; $65f3: $40
	nop                                              ; $65f4: $00
	ld   b, b                                        ; $65f5: $40
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	add  b                                           ; $65f9: $80
	add  b                                           ; $65fa: $80
	nop                                              ; $65fb: $00
	add  b                                           ; $65fc: $80
	nop                                              ; $65fd: $00
	add  b                                           ; $65fe: $80
	nop                                              ; $65ff: $00
	ld   b, b                                        ; $6600: $40
	add  [hl]                                        ; $6601: $86
	nop                                              ; $6602: $00
	db   $ec                                         ; $6603: $ec
	jr   c, jr_028_65c6                              ; $6604: $38 $c0

	ld   b, b                                        ; $6606: $40
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	stop                                             ; $660f: $10 $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	ld   [$0800], sp                                 ; $6613: $08 $00 $08
	nop                                              ; $6616: $00
	ld   [$0008], sp                                 ; $6617: $08 $08 $00
	ld   [rRAMG], sp                                 ; $661a: $08 $00 $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	ld   bc, $1800                                   ; $6629: $01 $00 $18
	nop                                              ; $662c: $00
	ld   b, b                                        ; $662d: $40
	nop                                              ; $662e: $00
	add  d                                           ; $662f: $82
	nop                                              ; $6630: $00
	add  h                                           ; $6631: $84
	nop                                              ; $6632: $00
	ld   [bc], a                                     ; $6633: $02
	nop                                              ; $6634: $00
	ld   [bc], a                                     ; $6635: $02
	nop                                              ; $6636: $00
	ld   b, $00                                      ; $6637: $06 $00
	ld   b, $00                                      ; $6639: $06 $00
	rlca                                             ; $663b: $07
	nop                                              ; $663c: $00
	ld   a, e                                        ; $663d: $7b
	nop                                              ; $663e: $00
	ld   [bc], a                                     ; $663f: $02
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	ld   l, b                                        ; $6643: $68
	nop                                              ; $6644: $00
	add  b                                           ; $6645: $80
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	jr   nz, jr_028_6655                             ; $6653: $20 $00

jr_028_6655:
	ld   a, l                                        ; $6655: $7d
	nop                                              ; $6656: $00
	add  b                                           ; $6657: $80
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	add  b                                           ; $6665: $80
	nop                                              ; $6666: $00
	ret  nz                                          ; $6667: $c0

	nop                                              ; $6668: $00
	ld   b, b                                        ; $6669: $40
	nop                                              ; $666a: $00
	ld   b, b                                        ; $666b: $40
	nop                                              ; $666c: $00
	ld   b, b                                        ; $666d: $40
	nop                                              ; $666e: $00
	ld   b, b                                        ; $666f: $40
	nop                                              ; $6670: $00
	jr   nc, jr_028_6673                             ; $6671: $30 $00

jr_028_6673:
	adc  b                                           ; $6673: $88
	nop                                              ; $6674: $00
	call nz, Call_028_4400                           ; $6675: $c4 $00 $44
	nop                                              ; $6678: $00
	jr   nz, jr_028_667b                             ; $6679: $20 $00

jr_028_667b:
	jr   nz, jr_028_667d                             ; $667b: $20 $00

jr_028_667d:
	jr   nz, jr_028_667f                             ; $667d: $20 $00

jr_028_667f:
	ld   [bc], a                                     ; $667f: $02
	nop                                              ; $6680: $00
	ld   [bc], a                                     ; $6681: $02
	nop                                              ; $6682: $00
	add  b                                           ; $6683: $80
	nop                                              ; $6684: $00
	inc  bc                                          ; $6685: $03
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	ld   b, $00                                      ; $6689: $06 $00
	adc  b                                           ; $668b: $88
	nop                                              ; $668c: $00
	ld   [hl], b                                     ; $668d: $70
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	dec  b                                           ; $66a5: $05
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	ld   [bc], a                                     ; $66a9: $02
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	ld   bc, $0e00                                   ; $66ad: $01 $00 $0e
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	ld   [bc], a                                     ; $66c1: $02
	nop                                              ; $66c2: $00
	jr   z, jr_028_66c5                              ; $66c3: $28 $00

jr_028_66c5:
	jr   nz, jr_028_66c7                             ; $66c5: $20 $00

jr_028_66c7:
	ret  nz                                          ; $66c7: $c0

	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	stop                                             ; $66cf: $10 $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	ld   a, a                                        ; $66ef: $7f
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00

jr_028_66f3:
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00

Call_028_66fa:
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	rst  $38                                         ; $670e: $ff
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	cp   $00                                         ; $672f: $fe $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	ld   bc, $0100                                   ; $6743: $01 $00 $01
	ld   bc, $0102                                   ; $6746: $01 $02 $01
	ld   [bc], a                                     ; $6749: $02
	inc  bc                                          ; $674a: $03
	inc  b                                           ; $674b: $04
	rlca                                             ; $674c: $07
	jr   @+$21                                       ; $674d: $18 $1f

	ldh  [rTAC], a                                   ; $674f: $e0 $07
	jr   @+$05                                       ; $6751: $18 $03

	inc  b                                           ; $6753: $04
	ld   bc, $0102                                   ; $6754: $01 $02 $01
	ld   [bc], a                                     ; $6757: $02
	nop                                              ; $6758: $00
	ld   bc, $0100                                   ; $6759: $01 $00 $01
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00

jr_028_675f:
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	add  b                                           ; $6767: $80
	nop                                              ; $6768: $00
	add  b                                           ; $6769: $80
	add  b                                           ; $676a: $80
	ld   b, b                                        ; $676b: $40
	ret  nz                                          ; $676c: $c0

	jr   nc, jr_028_675f                             ; $676d: $30 $f0

	rrca                                             ; $676f: $0f
	ret  nz                                          ; $6770: $c0

	jr   nc, jr_028_66f3                             ; $6771: $30 $80

	ld   b, b                                        ; $6773: $40
	nop                                              ; $6774: $00
	add  b                                           ; $6775: $80
	nop                                              ; $6776: $00
	add  b                                           ; $6777: $80
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	stop                                             ; $6781: $10 $00
	stop                                             ; $6783: $10 $00
	db   $10                                         ; $6785: $10
	db   $10                                         ; $6786: $10
	jr   z, jr_028_6799                              ; $6787: $28 $10

	jr   z, jr_028_679b                              ; $6789: $28 $10

	jr   z, @+$3a                                    ; $678b: $28 $38

	ld   b, h                                        ; $678d: $44
	ld   a, h                                        ; $678e: $7c
	add  d                                           ; $678f: $82
	jr   c, @+$46                                    ; $6790: $38 $44

	jr   c, jr_028_67d8                              ; $6792: $38 $44

	db   $10                                         ; $6794: $10
	ld   l, h                                        ; $6795: $6c
	db   $10                                         ; $6796: $10
	jr   z, jr_028_67a9                              ; $6797: $28 $10

jr_028_6799:
	jr   z, jr_028_679b                              ; $6799: $28 $00

jr_028_679b:
	stop                                             ; $679b: $10 $00
	stop                                             ; $679d: $10 $00
	stop                                             ; $679f: $10 $00
	stop                                             ; $67a1: $10 $00
	stop                                             ; $67a3: $10 $00
	stop                                             ; $67a5: $10 $00
	stop                                             ; $67a7: $10 $00

jr_028_67a9:
	jr   c, jr_028_67ab                              ; $67a9: $38 $00

jr_028_67ab:
	jr   c, jr_028_67bd                              ; $67ab: $38 $10

	jr   z, @+$12                                    ; $67ad: $28 $10

	jr   z, @+$12                                    ; $67af: $28 $10

	ld   l, h                                        ; $67b1: $6c
	db   $10                                         ; $67b2: $10
	ld   l, h                                        ; $67b3: $6c
	jr   c, @+$46                                    ; $67b4: $38 $44

	jr   c, jr_028_67fc                              ; $67b6: $38 $44

	inc  a                                           ; $67b8: $3c
	ld   b, d                                        ; $67b9: $42
	inc  h                                           ; $67ba: $24
	sub  d                                           ; $67bb: $92
	inc  h                                           ; $67bc: $24

jr_028_67bd:
	sub  d                                           ; $67bd: $92
	jr   nz, jr_028_67d0                             ; $67be: $20 $10

	ld   [$0800], sp                                 ; $67c0: $08 $00 $08
	nop                                              ; $67c3: $00
	ld   [$0800], sp                                 ; $67c4: $08 $00 $08
	nop                                              ; $67c7: $00
	ld   [$0804], sp                                 ; $67c8: $08 $04 $08
	inc  b                                           ; $67cb: $04
	ld   [$0804], sp                                 ; $67cc: $08 $04 $08
	inc  b                                           ; $67cf: $04

jr_028_67d0:
	ld   [$0814], sp                                 ; $67d0: $08 $14 $08
	inc  d                                           ; $67d3: $14
	ld   [$0814], sp                                 ; $67d4: $08 $14 $08
	inc  d                                           ; $67d7: $14

jr_028_67d8:
	ld   [$0814], sp                                 ; $67d8: $08 $14 $08
	inc  d                                           ; $67db: $14
	ld   [$0814], sp                                 ; $67dc: $08 $14 $08
	inc  d                                           ; $67df: $14
	ld   [$0814], sp                                 ; $67e0: $08 $14 $08
	inc  d                                           ; $67e3: $14
	ld   [$0814], sp                                 ; $67e4: $08 $14 $08
	inc  d                                           ; $67e7: $14
	inc  d                                           ; $67e8: $14
	ld   [$0814], sp                                 ; $67e9: $08 $14 $08
	inc  d                                           ; $67ec: $14
	ld   [$0814], sp                                 ; $67ed: $08 $14 $08
	inc  d                                           ; $67f0: $14
	ld   [$0814], sp                                 ; $67f1: $08 $14 $08
	db   $10                                         ; $67f4: $10
	ld   [$0810], sp                                 ; $67f5: $08 $10 $08
	db   $10                                         ; $67f8: $10
	ld   [$0800], sp                                 ; $67f9: $08 $00 $08

jr_028_67fc:
	nop                                              ; $67fc: $00
	ld   [$0800], sp                                 ; $67fd: $08 $00 $08
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	stop                                             ; $6808: $10 $00
	stop                                             ; $680a: $10 $00
	stop                                             ; $680c: $10 $00
	stop                                             ; $680e: $10 $00
	stop                                             ; $6810: $10 $00
	nop                                              ; $6812: $00
	stop                                             ; $6813: $10 $00

jr_028_6815:
	stop                                             ; $6815: $10 $00
	stop                                             ; $6817: $10 $00
	stop                                             ; $6819: $10 $00
	stop                                             ; $681b: $10 $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00

jr_028_6820:
	jr   nz, @+$12                                   ; $6820: $20 $10

	jr   nz, @+$12                                   ; $6822: $20 $10

	jr   nz, @+$12                                   ; $6824: $20 $10

	jr   nz, @+$12                                   ; $6826: $20 $10

	jr   nz, jr_028_683a                             ; $6828: $20 $10

	jr   nz, jr_028_683c                             ; $682a: $20 $10

	jr   nz, jr_028_683e                             ; $682c: $20 $10

	nop                                              ; $682e: $00
	jr   nc, jr_028_6831                             ; $682f: $30 $00

jr_028_6831:
	jr   nz, jr_028_6833                             ; $6831: $20 $00

jr_028_6833:
	jr   nz, jr_028_6835                             ; $6833: $20 $00

jr_028_6835:
	jr   nz, jr_028_6837                             ; $6835: $20 $00

jr_028_6837:
	jr   nz, jr_028_6839                             ; $6837: $20 $00

jr_028_6839:
	nop                                              ; $6839: $00

jr_028_683a:
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00

jr_028_683c:
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00

jr_028_683e:
	nop                                              ; $683e: $00
	jr   nz, jr_028_6841                             ; $683f: $20 $00

jr_028_6841:
	ld   bc, $0100                                   ; $6841: $01 $00 $01
	nop                                              ; $6844: $00
	ld   [bc], a                                     ; $6845: $02
	nop                                              ; $6846: $00
	ld   b, $00                                      ; $6847: $06 $00
	inc  b                                           ; $6849: $04
	nop                                              ; $684a: $00
	inc  c                                           ; $684b: $0c
	ld   [bc], a                                     ; $684c: $02
	inc  c                                           ; $684d: $0c
	ld   [bc], a                                     ; $684e: $02
	jr   jr_028_6855                                 ; $684f: $18 $04

	jr   jr_028_6857                                 ; $6851: $18 $04

	jr   c, jr_028_685d                              ; $6853: $38 $08

jr_028_6855:
	jr   nc, @+$0a                                   ; $6855: $30 $08

jr_028_6857:
	ld   [hl], b                                     ; $6857: $70
	db   $10                                         ; $6858: $10
	ld   h, b                                        ; $6859: $60
	db   $10                                         ; $685a: $10
	ldh  [$90], a                                    ; $685b: $e0 $90

jr_028_685d:
	ld   h, b                                        ; $685d: $60
	jr   nz, jr_028_6820                             ; $685e: $20 $c0

	ld   bc, $0200                                   ; $6860: $01 $00 $02
	ld   bc, $0102                                   ; $6863: $01 $02 $01
	inc  b                                           ; $6866: $04
	ld   [bc], a                                     ; $6867: $02
	inc  b                                           ; $6868: $04
	inc  bc                                          ; $6869: $03
	ld   [$1105], sp                                 ; $686a: $08 $05 $11
	ld   c, $11                                      ; $686d: $0e $11
	ld   a, [bc]                                     ; $686f: $0a
	ld   a, [hl+]                                    ; $6870: $2a
	db   $10                                         ; $6871: $10
	ld   l, $10                                      ; $6872: $2e $10
	ld   e, [hl]                                     ; $6874: $5e
	jr   nz, jr_028_68cb                             ; $6875: $20 $54

	jr   nz, jr_028_6815                             ; $6877: $20 $9c

	ld   h, b                                        ; $6879: $60
	cp   b                                           ; $687a: $b8
	ld   b, b                                        ; $687b: $40
	ld   l, b                                        ; $687c: $68
	sub  b                                           ; $687d: $90
	nop                                              ; $687e: $00
	ret  nc                                          ; $687f: $d0

	jr   nz, jr_028_68c2                             ; $6880: $20 $40

	ld   b, b                                        ; $6882: $40
	add  b                                           ; $6883: $80
	ld   b, b                                        ; $6884: $40
	add  b                                           ; $6885: $80
	ld   b, b                                        ; $6886: $40
	add  b                                           ; $6887: $80
	add  b                                           ; $6888: $80
	nop                                              ; $6889: $00
	add  b                                           ; $688a: $80
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	inc  bc                                          ; $68a7: $03
	ld   bc, $0306                                   ; $68a8: $01 $06 $03
	inc  h                                           ; $68ab: $24
	rlca                                             ; $68ac: $07
	jr   z, jr_028_68bd                              ; $68ad: $28 $0e

	ld   [hl], c                                     ; $68af: $71
	dec  b                                           ; $68b0: $05
	ld   a, [hl-]                                    ; $68b1: $3a
	rrca                                             ; $68b2: $0f
	jr   nc, @+$11                                   ; $68b3: $30 $0f

	jr   nc, jr_028_68be                             ; $68b5: $30 $07

	jr   jr_028_68bc                                 ; $68b7: $18 $03

	inc  e                                           ; $68b9: $1c
	nop                                              ; $68ba: $00
	rrca                                             ; $68bb: $0f

jr_028_68bc:
	nop                                              ; $68bc: $00

jr_028_68bd:
	inc  bc                                          ; $68bd: $03

jr_028_68be:
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00

jr_028_68c2:
	nop                                              ; $68c2: $00
	jr   nz, jr_028_68c5                             ; $68c3: $20 $00

jr_028_68c5:
	ret  nz                                          ; $68c5: $c0

	nop                                              ; $68c6: $00
	ret  nz                                          ; $68c7: $c0

	nop                                              ; $68c8: $00
	sub  b                                           ; $68c9: $90
	nop                                              ; $68ca: $00

jr_028_68cb:
	ret  nc                                          ; $68cb: $d0

	nop                                              ; $68cc: $00
	ret  nc                                          ; $68cd: $d0

	nop                                              ; $68ce: $00
	ldh  a, [$80]                                    ; $68cf: $f0 $80
	ld   d, [hl]                                     ; $68d1: $56
	ret  nz                                          ; $68d2: $c0

	inc  [hl]                                        ; $68d3: $34
	ret  nz                                          ; $68d4: $c0

	inc  h                                           ; $68d5: $24
	ret  nz                                          ; $68d6: $c0

	ld   l, $80                                      ; $68d7: $2e $80
	ld   c, [hl]                                     ; $68d9: $4e
	nop                                              ; $68da: $00
	ld   a, h                                        ; $68db: $7c
	nop                                              ; $68dc: $00
	ldh  [rP1], a                                    ; $68dd: $e0 $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	rrca                                             ; $68e9: $0f
	nop                                              ; $68ea: $00
	inc  e                                           ; $68eb: $1c
	inc  bc                                          ; $68ec: $03
	jr   nc, jr_028_68f1                             ; $68ed: $30 $02

	ld   h, c                                        ; $68ef: $61
	inc  b                                           ; $68f0: $04

jr_028_68f1:
	ld   h, e                                        ; $68f1: $63
	rlca                                             ; $68f2: $07

jr_028_68f3:
	ld   h, b                                        ; $68f3: $60
	rlca                                             ; $68f4: $07

jr_028_68f5:
	ld   [hl], b                                     ; $68f5: $70
	ld   bc, $0038                                   ; $68f6: $01 $38 $00
	rra                                              ; $68f9: $1f
	nop                                              ; $68fa: $00
	rlca                                             ; $68fb: $07
	nop                                              ; $68fc: $00
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	ret  nz                                          ; $6909: $c0

	nop                                              ; $690a: $00
	ld   a, h                                        ; $690b: $7c
	add  b                                           ; $690c: $80
	ld   b, $00                                      ; $690d: $06 $00
	or   $c0                                         ; $690f: $f6 $c0
	jr   c, jr_028_68f3                              ; $6911: $38 $e0

	jr   jr_028_68f5                                 ; $6913: $18 $e0

	inc  e                                           ; $6915: $1c
	ret  nz                                          ; $6916: $c0

	jr   c, jr_028_6919                              ; $6917: $38 $00

jr_028_6919:
	ld   hl, sp+$00                                  ; $6919: $f8 $00
	ldh  a, [rP1]                                    ; $691b: $f0 $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	nop                                              ; $6ac5: $00
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	nop                                              ; $6bb9: $00
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	nop                                              ; $6bc6: $00
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
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
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	nop                                              ; $6c29: $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
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
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
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
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
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
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
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
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	rrca                                             ; $7006: $0f
	rrca                                             ; $7007: $0f
	rlca                                             ; $7008: $07
	rlca                                             ; $7009: $07
	rra                                              ; $700a: $1f
	rra                                              ; $700b: $1f
	ccf                                              ; $700c: $3f
	scf                                              ; $700d: $37
	ld   a, a                                        ; $700e: $7f
	ld   a, b                                        ; $700f: $78
	ccf                                              ; $7010: $3f
	ccf                                              ; $7011: $3f
	ld   a, l                                        ; $7012: $7d
	ld   a, a                                        ; $7013: $7f
	ld   a, l                                        ; $7014: $7d
	ld   a, a                                        ; $7015: $7f
	ld   l, a                                        ; $7016: $6f
	ld   a, a                                        ; $7017: $7f
	ld   l, a                                        ; $7018: $6f
	ld   a, l                                        ; $7019: $7d
	ld   l, $35                                      ; $701a: $2e $35
	ld   l, $3d                                      ; $701c: $2e $3d
	jr   nz, jr_028_705f                             ; $701e: $20 $3f

	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	ldh  a, [$f0]                                    ; $7028: $f0 $f0
	ld   hl, sp-$08                                  ; $702a: $f8 $f8
	db   $fc                                         ; $702c: $fc
	db   $fc                                         ; $702d: $fc
	cp   $f6                                         ; $702e: $fe $f6
	cp   $ce                                         ; $7030: $fe $ce
	rst  $38                                         ; $7032: $ff
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	ld   a, a                                        ; $7036: $7f
	rst  $38                                         ; $7037: $ff
	ld   a, a                                        ; $7038: $7f
	rst  $38                                         ; $7039: $ff
	ld   a, [hl]                                     ; $703a: $7e
	cp   $5e                                         ; $703b: $fe $5e
	cp   $1f                                         ; $703d: $fe $1f
	rst  $38                                         ; $703f: $ff
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	rrca                                             ; $7046: $0f
	rrca                                             ; $7047: $0f
	rlca                                             ; $7048: $07
	rlca                                             ; $7049: $07
	rra                                              ; $704a: $1f
	rra                                              ; $704b: $1f
	ccf                                              ; $704c: $3f
	scf                                              ; $704d: $37
	ld   a, a                                        ; $704e: $7f
	ld   a, b                                        ; $704f: $78
	ccf                                              ; $7050: $3f
	ccf                                              ; $7051: $3f
	ld   a, l                                        ; $7052: $7d
	ld   a, a                                        ; $7053: $7f
	ld   a, l                                        ; $7054: $7d
	ld   a, a                                        ; $7055: $7f
	ld   l, a                                        ; $7056: $6f
	ld   a, a                                        ; $7057: $7f
	ld   l, a                                        ; $7058: $6f
	ld   a, l                                        ; $7059: $7d
	ld   l, $35                                      ; $705a: $2e $35
	ld   l, $3d                                      ; $705c: $2e $3d
	ld   h, b                                        ; $705e: $60

jr_028_705f:
	ld   a, a                                        ; $705f: $7f
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	inc  bc                                          ; $7062: $03
	inc  bc                                          ; $7063: $03
	rlca                                             ; $7064: $07
	inc  b                                           ; $7065: $04
	rlca                                             ; $7066: $07
	rlca                                             ; $7067: $07
	rrca                                             ; $7068: $0f
	ld   [$101f], sp                                 ; $7069: $08 $1f $10
	db   $10                                         ; $706c: $10
	db   $10                                         ; $706d: $10
	ccf                                              ; $706e: $3f
	ccf                                              ; $706f: $3f
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	ld   de, $fa1f                                   ; $7080: $11 $1f $fa
	rst  $38                                         ; $7083: $ff
	cp   $07                                         ; $7084: $fe $07
	rst  $38                                         ; $7086: $ff
	rst  $38                                         ; $7087: $ff
	rst  $38                                         ; $7088: $ff
	ld   [bc], a                                     ; $7089: $02
	rst  $38                                         ; $708a: $ff
	ld   b, $07                                      ; $708b: $06 $07
	rlca                                             ; $708d: $07
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	rst  JumpTable                                         ; $70a0: $df
	di                                               ; $70a1: $f3
	ccf                                              ; $70a2: $3f
	pop  hl                                          ; $70a3: $e1
	rst  $38                                         ; $70a4: $ff
	pop  hl                                          ; $70a5: $e1
	rst  $38                                         ; $70a6: $ff
	inc  hl                                          ; $70a7: $23
	rst  $38                                         ; $70a8: $ff
	rlca                                             ; $70a9: $07
	cp   $0f                                         ; $70aa: $fe $0f
	rst  $38                                         ; $70ac: $ff
	rra                                              ; $70ad: $1f
	ldh  a, [$f0]                                    ; $70ae: $f0 $f0
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	inc  bc                                          ; $70c2: $03
	inc  bc                                          ; $70c3: $03
	rlca                                             ; $70c4: $07
	inc  b                                           ; $70c5: $04
	rlca                                             ; $70c6: $07
	rlca                                             ; $70c7: $07
	rrca                                             ; $70c8: $0f
	ld   [$1f1f], sp                                 ; $70c9: $08 $1f $1f
	db   $10                                         ; $70cc: $10
	db   $10                                         ; $70cd: $10
	ccf                                              ; $70ce: $3f
	ccf                                              ; $70cf: $3f
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	ld   de, $fa1f                                   ; $70e0: $11 $1f $fa
	rst  $38                                         ; $70e3: $ff
	cp   $0f                                         ; $70e4: $fe $0f
	ei                                               ; $70e6: $fb
	rst  $38                                         ; $70e7: $ff
	di                                               ; $70e8: $f3
	ld   e, $ff                                      ; $70e9: $1e $ff
	cp   $07                                         ; $70eb: $fe $07
	rlca                                             ; $70ed: $07
	rst  $38                                         ; $70ee: $ff
	rst  $38                                         ; $70ef: $ff
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	rlca                                             ; $7100: $07
	rlca                                             ; $7101: $07
	rlca                                             ; $7102: $07
	inc  b                                           ; $7103: $04
	rlca                                             ; $7104: $07
	inc  b                                           ; $7105: $04
	rlca                                             ; $7106: $07
	rlca                                             ; $7107: $07
	rrca                                             ; $7108: $0f
	ld   [$101f], sp                                 ; $7109: $08 $1f $10
	db   $10                                         ; $710c: $10
	db   $10                                         ; $710d: $10
	ccf                                              ; $710e: $3f
	ccf                                              ; $710f: $3f
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
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
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	sub  c                                           ; $7120: $91
	rst  $38                                         ; $7121: $ff
	ld   a, [$fe7f]                                  ; $7122: $fa $7f $fe
	rlca                                             ; $7125: $07
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	ld   [bc], a                                     ; $7129: $02
	rst  $38                                         ; $712a: $ff
	ld   b, $07                                      ; $712b: $06 $07
	rlca                                             ; $712d: $07
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	rrca                                             ; $714d: $0f
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	ld   hl, sp+$00                                  ; $716d: $f8 $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	add  b                                           ; $718e: $80
	add  b                                           ; $718f: $80
	ldh  a, [$f0]                                    ; $7190: $f0 $f0
	inc  c                                           ; $7192: $0c
	db   $fc                                         ; $7193: $fc
	rrca                                             ; $7194: $0f
	rst  $38                                         ; $7195: $ff
	rrca                                             ; $7196: $0f
	rst  $38                                         ; $7197: $ff
	rrca                                             ; $7198: $0f
	rst  $38                                         ; $7199: $ff
	rrca                                             ; $719a: $0f
	rst  $38                                         ; $719b: $ff
	rst  $38                                         ; $719c: $ff
	rst  $38                                         ; $719d: $ff
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	jr   jr_028_71c6                                 ; $71ac: $18 $18

	inc  a                                           ; $71ae: $3c
	inc  h                                           ; $71af: $24
	ld   a, [hl]                                     ; $71b0: $7e
	ld   [hl], d                                     ; $71b1: $72
	rst  $38                                         ; $71b2: $ff
	ld   sp, hl                                      ; $71b3: $f9
	rst  $38                                         ; $71b4: $ff
	db   $fc                                         ; $71b5: $fc
	rst  $38                                         ; $71b6: $ff
	rst  $38                                         ; $71b7: $ff
	rst  $38                                         ; $71b8: $ff
	cp   $ff                                         ; $71b9: $fe $ff
	cp   $ff                                         ; $71bb: $fe $ff
	rst  $38                                         ; $71bd: $ff
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00

jr_028_71c6:
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	add  b                                           ; $71d4: $80
	add  b                                           ; $71d5: $80
	add  b                                           ; $71d6: $80
	add  b                                           ; $71d7: $80
	ldh  [$60], a                                    ; $71d8: $e0 $60
	ldh  a, [rAUD1SWEEP]                             ; $71da: $f0 $10
	ld   hl, sp-$08                                  ; $71dc: $f8 $f8
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	jr   nc, jr_028_721c                             ; $71ea: $30 $30

	ld   a, h                                        ; $71ec: $7c
	ld   c, h                                        ; $71ed: $4c
	ld   a, [hl]                                     ; $71ee: $7e
	ld   h, d                                        ; $71ef: $62
	rst  $38                                         ; $71f0: $ff
	ld   sp, hl                                      ; $71f1: $f9
	cp   $fe                                         ; $71f2: $fe $fe
	db   $fc                                         ; $71f4: $fc
	db   $fc                                         ; $71f5: $fc
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	cp   $ff                                         ; $71f9: $fe $ff
	cp   $ff                                         ; $71fb: $fe $ff
	rst  $38                                         ; $71fd: $ff
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	add  b                                           ; $7216: $80
	add  b                                           ; $7217: $80
	ldh  [$60], a                                    ; $7218: $e0 $60
	ldh  a, [rAUD1SWEEP]                             ; $721a: $f0 $10

jr_028_721c:
	ld   hl, sp-$08                                  ; $721c: $f8 $f8
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	inc  bc                                          ; $7224: $03
	inc  bc                                          ; $7225: $03
	rrca                                             ; $7226: $0f
	rrca                                             ; $7227: $0f
	rra                                              ; $7228: $1f
	rra                                              ; $7229: $1f
	ccf                                              ; $722a: $3f
	scf                                              ; $722b: $37
	ccf                                              ; $722c: $3f
	add  hl, sp                                      ; $722d: $39
	ld   a, a                                        ; $722e: $7f
	ld   a, a                                        ; $722f: $7f
	ld   a, a                                        ; $7230: $7f
	ld   a, a                                        ; $7231: $7f
	ld   a, a                                        ; $7232: $7f
	ld   a, a                                        ; $7233: $7f
	ld   a, a                                        ; $7234: $7f
	ld   a, a                                        ; $7235: $7f
	ccf                                              ; $7236: $3f
	ccf                                              ; $7237: $3f
	dec  a                                           ; $7238: $3d
	ccf                                              ; $7239: $3f
	inc  e                                           ; $723a: $1c
	rra                                              ; $723b: $1f
	ld   c, $0f                                      ; $723c: $0e $0f
	ld   b, $07                                      ; $723e: $06 $07
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	cp   $fe                                         ; $7244: $fe $fe
	db   $fc                                         ; $7246: $fc
	db   $fc                                         ; $7247: $fc
	cp   $fe                                         ; $7248: $fe $fe
	rst  $38                                         ; $724a: $ff
	rst  $30                                         ; $724b: $f7
	cp   $8e                                         ; $724c: $fe $8e
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	rst  JumpTable                                         ; $7250: $df
	rst  $38                                         ; $7251: $ff
	ld   e, a                                        ; $7252: $5f
	rst  $38                                         ; $7253: $ff
	ld   a, e                                        ; $7254: $7b
	rst  $38                                         ; $7255: $ff
	ld   a, e                                        ; $7256: $7b
	rst  JumpTable                                         ; $7257: $df
	ld   a, [hl-]                                    ; $7258: $3a
	sub  $3a                                         ; $7259: $d6 $3a
	sbc  $04                                         ; $725b: $de $04
	db   $fc                                         ; $725d: $fc
	add  hl, bc                                      ; $725e: $09
	ld   sp, hl                                      ; $725f: $f9
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	add  b                                           ; $727e: $80
	add  b                                           ; $727f: $80
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	cp   $fe                                         ; $7284: $fe $fe
	db   $fc                                         ; $7286: $fc
	db   $fc                                         ; $7287: $fc
	cp   $fe                                         ; $7288: $fe $fe
	rst  $38                                         ; $728a: $ff
	rst  $30                                         ; $728b: $f7
	cp   $8e                                         ; $728c: $fe $8e
	rst  $38                                         ; $728e: $ff
	rst  $38                                         ; $728f: $ff
	rst  JumpTable                                         ; $7290: $df
	rst  $38                                         ; $7291: $ff
	ld   e, a                                        ; $7292: $5f
	rst  $38                                         ; $7293: $ff
	ld   a, e                                        ; $7294: $7b
	rst  $38                                         ; $7295: $ff
	ld   a, e                                        ; $7296: $7b
	rst  JumpTable                                         ; $7297: $df
	ld   a, [hl-]                                    ; $7298: $3a
	sub  $3a                                         ; $7299: $d6 $3a
	sbc  $05                                         ; $729b: $de $05
	db   $fd                                         ; $729d: $fd
	dec  bc                                          ; $729e: $0b
	ld   a, [rRAMG]                                  ; $729f: $fa $00 $00
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
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	ldh  [$e0], a                                    ; $72be: $e0 $e0
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	ld   bc, $0701                                   ; $72c6: $01 $01 $07
	rlca                                             ; $72c9: $07
	rrca                                             ; $72ca: $0f
	rrca                                             ; $72cb: $0f
	rra                                              ; $72cc: $1f
	dec  de                                          ; $72cd: $1b
	rra                                              ; $72ce: $1f
	inc  e                                           ; $72cf: $1c
	ccf                                              ; $72d0: $3f
	ccf                                              ; $72d1: $3f
	ccf                                              ; $72d2: $3f
	ccf                                              ; $72d3: $3f
	ccf                                              ; $72d4: $3f
	ccf                                              ; $72d5: $3f
	ccf                                              ; $72d6: $3f
	ccf                                              ; $72d7: $3f
	ld   e, $1f                                      ; $72d8: $1e $1f
	ld   e, $1f                                      ; $72da: $1e $1f
	rrca                                             ; $72dc: $0f
	rrca                                             ; $72dd: $0f
	rlca                                             ; $72de: $07
	rlca                                             ; $72df: $07
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	db   $fc                                         ; $72e6: $fc
	db   $fc                                         ; $72e7: $fc
	rst  $38                                         ; $72e8: $ff
	rst  $38                                         ; $72e9: $ff
	rst  $38                                         ; $72ea: $ff
	rst  $38                                         ; $72eb: $ff
	rst  $38                                         ; $72ec: $ff
	ei                                               ; $72ed: $fb
	rst  $38                                         ; $72ee: $ff
	rst  ToBoot                                         ; $72ef: $c7
	rst  $38                                         ; $72f0: $ff
	rst  $38                                         ; $72f1: $ff
	rst  $28                                         ; $72f2: $ef
	rst  $38                                         ; $72f3: $ff
	xor  a                                           ; $72f4: $af
	rst  $38                                         ; $72f5: $ff
	cp   l                                           ; $72f6: $bd
	rst  $38                                         ; $72f7: $ff
	cp   l                                           ; $72f8: $bd
	rst  $28                                         ; $72f9: $ef
	dec  e                                           ; $72fa: $1d
	db   $eb                                         ; $72fb: $eb
	dec  e                                           ; $72fc: $1d
	rst  $28                                         ; $72fd: $ef
	inc  bc                                          ; $72fe: $03
	rst  $38                                         ; $72ff: $ff
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	add  b                                           ; $730a: $80
	add  b                                           ; $730b: $80
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	add  b                                           ; $730e: $80
	add  b                                           ; $730f: $80
	ret  nz                                          ; $7310: $c0

	ret  nz                                          ; $7311: $c0

	add  b                                           ; $7312: $80
	add  b                                           ; $7313: $80
	add  b                                           ; $7314: $80
	add  b                                           ; $7315: $80
	add  b                                           ; $7316: $80
	add  b                                           ; $7317: $80
	add  b                                           ; $7318: $80
	add  b                                           ; $7319: $80
	ld   h, b                                        ; $731a: $60
	ld   h, b                                        ; $731b: $60
	ldh  a, [$b0]                                    ; $731c: $f0 $b0
	ret  z                                           ; $731e: $c8

	ld   c, b                                        ; $731f: $48
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	rrca                                             ; $7324: $0f
	rrca                                             ; $7325: $0f
	rra                                              ; $7326: $1f
	rra                                              ; $7327: $1f
	ccf                                              ; $7328: $3f
	ccf                                              ; $7329: $3f
	ld   a, a                                        ; $732a: $7f
	ld   l, a                                        ; $732b: $6f
	ld   a, a                                        ; $732c: $7f
	ld   [hl], e                                     ; $732d: $73
	rst  $38                                         ; $732e: $ff
	rst  $38                                         ; $732f: $ff
	rst  $38                                         ; $7330: $ff
	rst  $38                                         ; $7331: $ff
	cp   $ff                                         ; $7332: $fe $ff
	cp   $ff                                         ; $7334: $fe $ff
	cp   $ff                                         ; $7336: $fe $ff
	ld   a, d                                        ; $7338: $7a
	ld   a, a                                        ; $7339: $7f
	ld   a, b                                        ; $733a: $78
	ld   a, a                                        ; $733b: $7f
	inc  a                                           ; $733c: $3c
	ccf                                              ; $733d: $3f
	inc  e                                           ; $733e: $1c
	rra                                              ; $733f: $1f
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	ldh  a, [$f0]                                    ; $7342: $f0 $f0
	ldh  [$e0], a                                    ; $7344: $e0 $e0
	ld   hl, sp-$08                                  ; $7346: $f8 $f8
	db   $fc                                         ; $7348: $fc
	db   $ec                                         ; $7349: $ec
	cp   $1e                                         ; $734a: $fe $1e
	db   $fc                                         ; $734c: $fc
	db   $fc                                         ; $734d: $fc
	cp   [hl]                                        ; $734e: $be
	cp   $be                                         ; $734f: $fe $be
	cp   $b6                                         ; $7351: $fe $b6
	cp   $96                                         ; $7353: $fe $96
	cp   $e4                                         ; $7355: $fe $e4
	db   $fc                                         ; $7357: $fc
	inc  d                                           ; $7358: $14
	db   $fc                                         ; $7359: $fc
	inc  b                                           ; $735a: $04
	db   $fc                                         ; $735b: $fc
	add  hl, bc                                      ; $735c: $09
	ld   sp, hl                                      ; $735d: $f9
	ld   [de], a                                     ; $735e: $12
	ldh  a, [c]                                      ; $735f: $f2
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	ld   b, b                                        ; $7378: $40
	ld   b, b                                        ; $7379: $40
	and  b                                           ; $737a: $a0
	and  b                                           ; $737b: $a0
	db   $10                                         ; $737c: $10
	db   $10                                         ; $737d: $10
	ld   [$0708], sp                                 ; $737e: $08 $08 $07
	rlca                                             ; $7381: $07
	rlca                                             ; $7382: $07
	rlca                                             ; $7383: $07
	rrca                                             ; $7384: $0f
	ld   c, $0f                                      ; $7385: $0e $0f
	ld   c, $0b                                      ; $7387: $0e $0b
	rrca                                             ; $7389: $0f
	db   $10                                         ; $738a: $10
	rra                                              ; $738b: $1f
	db   $10                                         ; $738c: $10
	rra                                              ; $738d: $1f
	db   $10                                         ; $738e: $10
	rra                                              ; $738f: $1f
	db   $10                                         ; $7390: $10
	rra                                              ; $7391: $1f
	jr   jr_028_73b3                                 ; $7392: $18 $1f

	rrca                                             ; $7394: $0f
	rrca                                             ; $7395: $0f
	rlca                                             ; $7396: $07
	rlca                                             ; $7397: $07
	ccf                                              ; $7398: $3f
	ccf                                              ; $7399: $3f
	rrca                                             ; $739a: $0f
	rrca                                             ; $739b: $0f
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	di                                               ; $73a0: $f3
	ldh  a, [c]                                      ; $73a1: $f2
	rst  $30                                         ; $73a2: $f7
	dec  [hl]                                        ; $73a3: $35
	rst  $38                                         ; $73a4: $ff
	ld   a, [de]                                     ; $73a5: $1a
	rst  $38                                         ; $73a6: $ff
	rrca                                             ; $73a7: $0f
	cp   $03                                         ; $73a8: $fe $03
	cp   $c3                                         ; $73aa: $fe $c3
	ccf                                              ; $73ac: $3f
	rst  $38                                         ; $73ad: $ff
	rra                                              ; $73ae: $1f
	rst  $38                                         ; $73af: $ff
	ccf                                              ; $73b0: $3f
	rst  $38                                         ; $73b1: $ff
	ld   a, a                                        ; $73b2: $7f

jr_028_73b3:
	rst  $38                                         ; $73b3: $ff
	ei                                               ; $73b4: $fb
	ei                                               ; $73b5: $fb
	di                                               ; $73b6: $f3
	ldh  a, [c]                                      ; $73b7: $f2
	rst  $38                                         ; $73b8: $ff
	rst  $38                                         ; $73b9: $ff
	rst  $38                                         ; $73ba: $ff
	rst  $38                                         ; $73bb: $ff
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	ldh  [$e0], a                                    ; $73c0: $e0 $e0
	ldh  a, [$30]                                    ; $73c2: $f0 $30
	ret  z                                           ; $73c4: $c8

	ld   c, b                                        ; $73c5: $48
	sub  b                                           ; $73c6: $90
	sub  b                                           ; $73c7: $90
	ld   h, b                                        ; $73c8: $60
	ldh  [rLCDC], a                                  ; $73c9: $e0 $40
	ret  nz                                          ; $73cb: $c0

	add  b                                           ; $73cc: $80
	add  b                                           ; $73cd: $80
	add  b                                           ; $73ce: $80
	add  b                                           ; $73cf: $80
	ret  nz                                          ; $73d0: $c0

	ret  nz                                          ; $73d1: $c0

	ret  nz                                          ; $73d2: $c0

	ret  nz                                          ; $73d3: $c0

	ldh  [$e0], a                                    ; $73d4: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $73d6: $f0 $10
	ldh  a, [$f0]                                    ; $73d8: $f0 $f0
	ret  nz                                          ; $73da: $c0

	ret  nz                                          ; $73db: $c0

	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	rst  $30                                         ; $73e0: $f7
	db   $f4                                         ; $73e1: $f4
	rst  $38                                         ; $73e2: $ff
	add  hl, sp                                      ; $73e3: $39
	rst  $38                                         ; $73e4: $ff
	ld   e, $ff                                      ; $73e5: $1e $ff
	ld   a, [bc]                                     ; $73e7: $0a
	rst  $38                                         ; $73e8: $ff
	inc  bc                                          ; $73e9: $03
	cp   $c6                                         ; $73ea: $fe $c6
	ccf                                              ; $73ec: $3f
	rst  $38                                         ; $73ed: $ff
	rra                                              ; $73ee: $1f
	rst  $38                                         ; $73ef: $ff
	ccf                                              ; $73f0: $3f
	rst  $38                                         ; $73f1: $ff
	ld   a, a                                        ; $73f2: $7f
	rst  $38                                         ; $73f3: $ff
	ei                                               ; $73f4: $fb
	ei                                               ; $73f5: $fb
	di                                               ; $73f6: $f3
	ldh  a, [c]                                      ; $73f7: $f2
	rst  $38                                         ; $73f8: $ff
	rst  $38                                         ; $73f9: $ff
	rst  $38                                         ; $73fa: $ff
	rst  $38                                         ; $73fb: $ff
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	ldh  [$e0], a                                    ; $7400: $e0 $e0
	ldh  a, [$30]                                    ; $7402: $f0 $30
	ret  z                                           ; $7404: $c8

	ld   c, b                                        ; $7405: $48
	sub  b                                           ; $7406: $90
	sub  b                                           ; $7407: $90
	jr   nz, jr_028_742a                             ; $7408: $20 $20

	ld   b, b                                        ; $740a: $40
	ld   b, b                                        ; $740b: $40
	add  b                                           ; $740c: $80
	add  b                                           ; $740d: $80
	add  b                                           ; $740e: $80
	add  b                                           ; $740f: $80
	ret  nz                                          ; $7410: $c0

	ret  nz                                          ; $7411: $c0

	ret  nz                                          ; $7412: $c0

	ret  nz                                          ; $7413: $c0

	ldh  [$e0], a                                    ; $7414: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $7416: $f0 $10
	ldh  a, [$f0]                                    ; $7418: $f0 $f0
	ret  nz                                          ; $741a: $c0

	ret  nz                                          ; $741b: $c0

	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	di                                               ; $7420: $f3
	ldh  a, [c]                                      ; $7421: $f2
	rst  $38                                         ; $7422: $ff
	ccf                                              ; $7423: $3f
	db   $fd                                         ; $7424: $fd
	rra                                              ; $7425: $1f
	db   $fc                                         ; $7426: $fc
	rlca                                             ; $7427: $07
	db   $fc                                         ; $7428: $fc
	rlca                                             ; $7429: $07

jr_028_742a:
	rst  $38                                         ; $742a: $ff
	jp   $ff3f                                       ; $742b: $c3 $3f $ff


	rra                                              ; $742e: $1f
	rst  $38                                         ; $742f: $ff
	ccf                                              ; $7430: $3f
	rst  $38                                         ; $7431: $ff
	ld   a, a                                        ; $7432: $7f
	rst  $38                                         ; $7433: $ff
	ei                                               ; $7434: $fb
	ei                                               ; $7435: $fb
	di                                               ; $7436: $f3
	ldh  a, [c]                                      ; $7437: $f2
	rst  $38                                         ; $7438: $ff
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	rst  $38                                         ; $743b: $ff
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	ldh  [hScriptOpcodeParams], a                                    ; $7440: $e0 $a0
	ldh  a, [$30]                                    ; $7442: $f0 $30
	ret  z                                           ; $7444: $c8

	ld   c, b                                        ; $7445: $48
	sub  b                                           ; $7446: $90
	sub  b                                           ; $7447: $90
	and  b                                           ; $7448: $a0
	and  b                                           ; $7449: $a0
	ld   b, b                                        ; $744a: $40
	ld   b, b                                        ; $744b: $40
	add  b                                           ; $744c: $80
	add  b                                           ; $744d: $80
	add  b                                           ; $744e: $80
	add  b                                           ; $744f: $80
	ret  nz                                          ; $7450: $c0

	ret  nz                                          ; $7451: $c0

	ret  nz                                          ; $7452: $c0

	ret  nz                                          ; $7453: $c0

	ldh  [$e0], a                                    ; $7454: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $7456: $f0 $10
	ldh  a, [$f0]                                    ; $7458: $f0 $f0
	ret  nz                                          ; $745a: $c0

	ret  nz                                          ; $745b: $c0

	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	inc  bc                                          ; $7460: $03
	inc  bc                                          ; $7461: $03
	inc  bc                                          ; $7462: $03
	inc  bc                                          ; $7463: $03
	rlca                                             ; $7464: $07
	ld   b, $0f                                      ; $7465: $06 $0f
	ld   c, $09                                      ; $7467: $0e $09
	rrca                                             ; $7469: $0f
	db   $10                                         ; $746a: $10
	rra                                              ; $746b: $1f
	db   $10                                         ; $746c: $10
	rra                                              ; $746d: $1f
	db   $10                                         ; $746e: $10
	rra                                              ; $746f: $1f
	db   $10                                         ; $7470: $10
	rra                                              ; $7471: $1f
	jr   jr_028_7493                                 ; $7472: $18 $1f

	rrca                                             ; $7474: $0f
	rrca                                             ; $7475: $0f
	rlca                                             ; $7476: $07
	rlca                                             ; $7477: $07
	rra                                              ; $7478: $1f
	rra                                              ; $7479: $1f
	rlca                                             ; $747a: $07
	rlca                                             ; $747b: $07
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	rst  ToBoot                                         ; $7480: $c7
	rst  $38                                         ; $7481: $ff
	ld   sp, hl                                      ; $7482: $f9
	ccf                                              ; $7483: $3f
	ld   sp, hl                                      ; $7484: $f9
	ld   c, a                                        ; $7485: $4f
	rst  $38                                         ; $7486: $ff
	rlca                                             ; $7487: $07
	rst  $38                                         ; $7488: $ff
	rrca                                             ; $7489: $0f
	rst  $38                                         ; $748a: $ff
	sbc  a                                           ; $748b: $9f
	ld   a, a                                        ; $748c: $7f
	rst  $38                                         ; $748d: $ff
	rra                                              ; $748e: $1f
	rst  $38                                         ; $748f: $ff
	ccf                                              ; $7490: $3f
	rst  $38                                         ; $7491: $ff
	ld   a, a                                        ; $7492: $7f

jr_028_7493:
	rst  $38                                         ; $7493: $ff
	ei                                               ; $7494: $fb
	ei                                               ; $7495: $fb
	di                                               ; $7496: $f3
	ldh  a, [c]                                      ; $7497: $f2
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	rst  $38                                         ; $749b: $ff
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	sub  b                                           ; $74a0: $90
	sub  b                                           ; $74a1: $90
	jr   nz, jr_028_74c4                             ; $74a2: $20 $20

	ld   b, b                                        ; $74a4: $40
	ld   b, b                                        ; $74a5: $40
	add  b                                           ; $74a6: $80
	add  b                                           ; $74a7: $80
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	add  b                                           ; $74ac: $80
	add  b                                           ; $74ad: $80
	add  b                                           ; $74ae: $80
	add  b                                           ; $74af: $80
	ret  nz                                          ; $74b0: $c0

	ret  nz                                          ; $74b1: $c0

	ret  nz                                          ; $74b2: $c0

	ret  nz                                          ; $74b3: $c0

	ldh  [$e0], a                                    ; $74b4: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $74b6: $f0 $10
	ldh  a, [$f0]                                    ; $74b8: $f0 $f0
	ret  nz                                          ; $74ba: $c0

	ret  nz                                          ; $74bb: $c0

	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	rrca                                             ; $74c0: $0f
	rrca                                             ; $74c1: $0f
	rlca                                             ; $74c2: $07
	rlca                                             ; $74c3: $07

jr_028_74c4:
	rrca                                             ; $74c4: $0f
	ld   c, $0f                                      ; $74c5: $0e $0f
	ld   c, $0b                                      ; $74c7: $0e $0b
	rrca                                             ; $74c9: $0f
	db   $10                                         ; $74ca: $10
	rra                                              ; $74cb: $1f
	db   $10                                         ; $74cc: $10
	rra                                              ; $74cd: $1f
	db   $10                                         ; $74ce: $10
	rra                                              ; $74cf: $1f
	db   $10                                         ; $74d0: $10
	rra                                              ; $74d1: $1f
	jr   jr_028_74f3                                 ; $74d2: $18 $1f

	rrca                                             ; $74d4: $0f
	rrca                                             ; $74d5: $0f
	rlca                                             ; $74d6: $07
	rlca                                             ; $74d7: $07
	ld   a, a                                        ; $74d8: $7f
	ld   a, a                                        ; $74d9: $7f
	rra                                              ; $74da: $1f
	rra                                              ; $74db: $1f
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	push hl                                          ; $74e0: $e5
	push hl                                          ; $74e1: $e5
	cp   $3f                                         ; $74e2: $fe $3f
	rst  $38                                         ; $74e4: $ff
	add  hl, de                                      ; $74e5: $19
	rst  $38                                         ; $74e6: $ff
	nop                                              ; $74e7: $00
	rst  $38                                         ; $74e8: $ff
	ld   bc, $c3ff                                   ; $74e9: $01 $ff $c3
	ccf                                              ; $74ec: $3f
	rst  $38                                         ; $74ed: $ff
	ccf                                              ; $74ee: $3f
	rst  $38                                         ; $74ef: $ff
	ccf                                              ; $74f0: $3f
	rst  $38                                         ; $74f1: $ff
	ld   a, a                                        ; $74f2: $7f

jr_028_74f3:
	rst  $38                                         ; $74f3: $ff
	ei                                               ; $74f4: $fb
	ei                                               ; $74f5: $fb
	di                                               ; $74f6: $f3
	ldh  a, [c]                                      ; $74f7: $f2
	rst  $38                                         ; $74f8: $ff
	rst  $38                                         ; $74f9: $ff
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	adc  h                                           ; $7500: $8c
	adc  h                                           ; $7501: $8c
	ld   d, h                                        ; $7502: $54
	call nc, $e868                                   ; $7503: $d4 $68 $e8
	ret  nc                                          ; $7506: $d0

	ret  nc                                          ; $7507: $d0

	ldh  [$e0], a                                    ; $7508: $e0 $e0
	ret  nz                                          ; $750a: $c0

	ret  nz                                          ; $750b: $c0

	add  b                                           ; $750c: $80
	add  b                                           ; $750d: $80
	add  b                                           ; $750e: $80
	add  b                                           ; $750f: $80
	ret  nz                                          ; $7510: $c0

	ret  nz                                          ; $7511: $c0

	ret  nz                                          ; $7512: $c0

	ret  nz                                          ; $7513: $c0

	ldh  [$e0], a                                    ; $7514: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $7516: $f0 $10
	ldh  a, [$f0]                                    ; $7518: $f0 $f0
	ret  nz                                          ; $751a: $c0

	ret  nz                                          ; $751b: $c0

	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	jr   nc, jr_028_7556                             ; $7524: $30 $30

	ld   h, b                                        ; $7526: $60
	ld   h, b                                        ; $7527: $60
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	jr   jr_028_755e                                 ; $7544: $18 $18

	jr   nc, jr_028_7578                             ; $7546: $30 $30

	ld   h, b                                        ; $7548: $60
	ld   h, b                                        ; $7549: $60
	ret  nz                                          ; $754a: $c0

	ret  nz                                          ; $754b: $c0

	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00

jr_028_7556:
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00

jr_028_755e:
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	jr   nc, jr_028_7596                             ; $7564: $30 $30

	ld   h, b                                        ; $7566: $60
	ld   h, b                                        ; $7567: $60
	ld   b, b                                        ; $7568: $40
	ld   b, b                                        ; $7569: $40
	add  b                                           ; $756a: $80
	add  b                                           ; $756b: $80
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00

jr_028_7578:
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	jr   nc, jr_028_75c0                             ; $758e: $30 $30

	ld   h, b                                        ; $7590: $60
	ld   h, b                                        ; $7591: $60
	ret  nz                                          ; $7592: $c0

	ret  nz                                          ; $7593: $c0

	add  b                                           ; $7594: $80
	add  b                                           ; $7595: $80

jr_028_7596:
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	db   $10                                         ; $75aa: $10
	db   $10                                         ; $75ab: $10
	jr   c, jr_028_75e6                              ; $75ac: $38 $38

	ld   a, h                                        ; $75ae: $7c
	ld   a, h                                        ; $75af: $7c
	sbc  h                                           ; $75b0: $9c
	sbc  h                                           ; $75b1: $9c
	ld   a, [bc]                                     ; $75b2: $0a
	ld   a, [bc]                                     ; $75b3: $0a
	inc  b                                           ; $75b4: $04
	inc  b                                           ; $75b5: $04
	ld   [$0008], sp                                 ; $75b6: $08 $08 $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00

jr_028_75c0:
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00

jr_028_75e6:
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
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
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
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
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
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
	nop                                              ; $7803: $00
	ld   bc, $0301                                   ; $7804: $01 $01 $03
	inc  bc                                          ; $7807: $03
	rlca                                             ; $7808: $07
	ld   b, $07                                      ; $7809: $06 $07
	rlca                                             ; $780b: $07
	rrca                                             ; $780c: $0f
	rrca                                             ; $780d: $0f
	rrca                                             ; $780e: $0f
	rrca                                             ; $780f: $0f
	rrca                                             ; $7810: $0f
	rrca                                             ; $7811: $0f
	rrca                                             ; $7812: $0f
	rrca                                             ; $7813: $0f
	rlca                                             ; $7814: $07
	rlca                                             ; $7815: $07
	rlca                                             ; $7816: $07
	rlca                                             ; $7817: $07
	inc  bc                                          ; $7818: $03
	inc  bc                                          ; $7819: $03
	ld   bc, $0001                                   ; $781a: $01 $01 $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	rrca                                             ; $7820: $0f
	rrca                                             ; $7821: $0f
	cp   $fe                                         ; $7822: $fe $fe
	rst  $38                                         ; $7824: $ff
	rst  $38                                         ; $7825: $ff
	rst  $38                                         ; $7826: $ff
	cp   $ff                                         ; $7827: $fe $ff
	pop  af                                          ; $7829: $f1
	rst  $38                                         ; $782a: $ff
	ccf                                              ; $782b: $3f
	ei                                               ; $782c: $fb
	rst  $38                                         ; $782d: $ff
	ei                                               ; $782e: $fb
	rst  $38                                         ; $782f: $ff
	db   $eb                                         ; $7830: $eb
	rst  $38                                         ; $7831: $ff
	rst  $28                                         ; $7832: $ef
	rst  $38                                         ; $7833: $ff
	rst  $28                                         ; $7834: $ef
	ei                                               ; $7835: $fb
	and  a                                           ; $7836: $a7
	ld   a, [$fb87]                                  ; $7837: $fa $87 $fb
	ret  nz                                          ; $783a: $c0

	rst  $38                                         ; $783b: $ff
	pop  bc                                          ; $783c: $c1
	rst  $38                                         ; $783d: $ff
	ld   a, a                                        ; $783e: $7f
	ld   a, [hl]                                     ; $783f: $7e
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	add  b                                           ; $7844: $80
	add  b                                           ; $7845: $80
	ret  nz                                          ; $7846: $c0

	ret  nz                                          ; $7847: $c0

	ldh  [$e0], a                                    ; $7848: $e0 $e0
	ret  nz                                          ; $784a: $c0

	ret  nz                                          ; $784b: $c0

	ldh  [$e0], a                                    ; $784c: $e0 $e0
	ldh  [$e0], a                                    ; $784e: $e0 $e0
	ld   h, b                                        ; $7850: $60
	ldh  [$60], a                                    ; $7851: $e0 $60
	ldh  [rDMA], a                                   ; $7853: $e0 $46
	ret  nz                                          ; $7855: $c0

	ld   b, [hl]                                     ; $7856: $46
	add  $44                                         ; $7857: $c6 $44
	call nz, $9c9c                                   ; $7859: $c4 $9c $9c
	or   $fe                                         ; $785c: $f6 $fe
	rst  $20                                         ; $785e: $e7
	dec  a                                           ; $785f: $3d
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	add  b                                           ; $7864: $80
	add  b                                           ; $7865: $80
	ret  nz                                          ; $7866: $c0

	ret  nz                                          ; $7867: $c0

	ldh  [$e0], a                                    ; $7868: $e0 $e0
	ret  nz                                          ; $786a: $c0

	ret  nz                                          ; $786b: $c0

	ldh  [$e0], a                                    ; $786c: $e0 $e0
	ldh  [$e0], a                                    ; $786e: $e0 $e0
	ld   h, b                                        ; $7870: $60
	ldh  [$60], a                                    ; $7871: $e0 $60
	ldh  [rDMA], a                                   ; $7873: $e0 $46
	ret  nz                                          ; $7875: $c0

	ld   b, [hl]                                     ; $7876: $46
	add  $44                                         ; $7877: $c6 $44
	call nz, $8484                                   ; $7879: $c4 $84 $84
	cp   $fe                                         ; $787c: $fe $fe
	rst  $20                                         ; $787e: $e7
	dec  a                                           ; $787f: $3d
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	add  b                                           ; $7884: $80
	add  b                                           ; $7885: $80
	ret  nz                                          ; $7886: $c0

	ret  nz                                          ; $7887: $c0

	ldh  [$e0], a                                    ; $7888: $e0 $e0
	ret  nz                                          ; $788a: $c0

	ret  nz                                          ; $788b: $c0

	ldh  [$e0], a                                    ; $788c: $e0 $e0
	ldh  [$e0], a                                    ; $788e: $e0 $e0
	ld   h, b                                        ; $7890: $60
	ldh  [$60], a                                    ; $7891: $e0 $60
	ldh  [rLCDC], a                                  ; $7893: $e0 $40
	ret  nz                                          ; $7895: $c0

	ld   b, b                                        ; $7896: $40
	ret  nz                                          ; $7897: $c0

	ld   b, b                                        ; $7898: $40
	ret  nz                                          ; $7899: $c0

	add  b                                           ; $789a: $80
	add  b                                           ; $789b: $80
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	rrca                                             ; $78a0: $0f
	rrca                                             ; $78a1: $0f
	cp   $fe                                         ; $78a2: $fe $fe
	rst  $38                                         ; $78a4: $ff
	rst  $38                                         ; $78a5: $ff
	rst  $38                                         ; $78a6: $ff
	cp   $ff                                         ; $78a7: $fe $ff
	pop  af                                          ; $78a9: $f1
	rst  $38                                         ; $78aa: $ff
	ccf                                              ; $78ab: $3f
	ei                                               ; $78ac: $fb
	rst  $38                                         ; $78ad: $ff
	ei                                               ; $78ae: $fb
	rst  $38                                         ; $78af: $ff
	db   $eb                                         ; $78b0: $eb
	rst  $38                                         ; $78b1: $ff
	rst  $28                                         ; $78b2: $ef
	rst  $38                                         ; $78b3: $ff
	rst  $28                                         ; $78b4: $ef
	ei                                               ; $78b5: $fb
	and  a                                           ; $78b6: $a7
	ld   a, [$fb87]                                  ; $78b7: $fa $87 $fb
	ret  nz                                          ; $78ba: $c0

	rst  $38                                         ; $78bb: $ff
	pop  bc                                          ; $78bc: $c1
	rst  $38                                         ; $78bd: $ff
	rst  $38                                         ; $78be: $ff
	rst  $38                                         ; $78bf: $ff
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	add  b                                           ; $78c4: $80
	add  b                                           ; $78c5: $80
	ret  nz                                          ; $78c6: $c0

	ret  nz                                          ; $78c7: $c0

	ldh  [$e0], a                                    ; $78c8: $e0 $e0
	ret  nz                                          ; $78ca: $c0

	ret  nz                                          ; $78cb: $c0

	ldh  [$e0], a                                    ; $78cc: $e0 $e0
	ldh  [$e0], a                                    ; $78ce: $e0 $e0
	ld   h, b                                        ; $78d0: $60
	ldh  [$60], a                                    ; $78d1: $e0 $60
	ldh  [rLCDC], a                                  ; $78d3: $e0 $40
	ret  nz                                          ; $78d5: $c0

	ld   b, b                                        ; $78d6: $40
	ret  nz                                          ; $78d7: $c0

	ld   b, b                                        ; $78d8: $40
	ret  nz                                          ; $78d9: $c0

	add  b                                           ; $78da: $80
	add  b                                           ; $78db: $80
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	cp   $fe                                         ; $78de: $fe $fe
	rrca                                             ; $78e0: $0f
	rrca                                             ; $78e1: $0f
	cp   $fe                                         ; $78e2: $fe $fe
	rst  $38                                         ; $78e4: $ff
	rst  $38                                         ; $78e5: $ff
	rst  $38                                         ; $78e6: $ff
	cp   $ff                                         ; $78e7: $fe $ff
	pop  af                                          ; $78e9: $f1
	rst  $38                                         ; $78ea: $ff
	ccf                                              ; $78eb: $3f
	ei                                               ; $78ec: $fb
	rst  $38                                         ; $78ed: $ff
	ei                                               ; $78ee: $fb
	rst  $38                                         ; $78ef: $ff
	db   $eb                                         ; $78f0: $eb
	rst  $38                                         ; $78f1: $ff
	rst  $28                                         ; $78f2: $ef
	rst  $38                                         ; $78f3: $ff
	rst  $28                                         ; $78f4: $ef
	ei                                               ; $78f5: $fb
	and  a                                           ; $78f6: $a7
	ld   a, [$fb87]                                  ; $78f7: $fa $87 $fb
	ret  nz                                          ; $78fa: $c0

	rst  $38                                         ; $78fb: $ff
	jp   $ffff                                       ; $78fc: $c3 $ff $ff


	rst  $38                                         ; $78ff: $ff
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	ld   bc, $0101                                   ; $7904: $01 $01 $01
	ld   bc, $0302                                   ; $7907: $01 $02 $03
	ld   [bc], a                                     ; $790a: $02
	inc  bc                                          ; $790b: $03
	inc  b                                           ; $790c: $04
	rlca                                             ; $790d: $07
	inc  b                                           ; $790e: $04
	rlca                                             ; $790f: $07
	ld   b, $07                                      ; $7910: $06 $07
	rlca                                             ; $7912: $07
	rlca                                             ; $7913: $07
	rrca                                             ; $7914: $0f
	rrca                                             ; $7915: $0f
	rra                                              ; $7916: $1f
	rla                                              ; $7917: $17
	ccf                                              ; $7918: $3f
	inc  hl                                          ; $7919: $23
	ld   a, a                                        ; $791a: $7f
	ld   a, a                                        ; $791b: $7f
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	rst  $38                                         ; $7920: $ff
	ei                                               ; $7921: $fb
	rst  $38                                         ; $7922: $ff
	pop  af                                          ; $7923: $f1
	rst  $38                                         ; $7924: $ff
	pop  af                                          ; $7925: $f1
	rra                                              ; $7926: $1f
	pop  af                                          ; $7927: $f1
	rra                                              ; $7928: $1f
	pop  af                                          ; $7929: $f1
	rra                                              ; $792a: $1f
	ldh  a, [rIF]                                    ; $792b: $f0 $0f
	ld   hl, sp+$0f                                  ; $792d: $f8 $0f
	ld   hl, sp+$07                                  ; $792f: $f8 $07
	db   $fd                                         ; $7931: $fd
	rst  $38                                         ; $7932: $ff
	rst  $38                                         ; $7933: $ff

jr_028_7934:
	rst  $38                                         ; $7934: $ff
	rst  $38                                         ; $7935: $ff
	rst  $38                                         ; $7936: $ff
	rst  $38                                         ; $7937: $ff
	rst  $38                                         ; $7938: $ff
	rst  $38                                         ; $7939: $ff
	rst  $38                                         ; $793a: $ff
	rst  $38                                         ; $793b: $ff
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	rst  $38                                         ; $7940: $ff
	add  hl, de                                      ; $7941: $19
	rst  $38                                         ; $7942: $ff
	ld   sp, $51df                                   ; $7943: $31 $df $51
	sbc  a                                           ; $7946: $9f
	sbc  a                                           ; $7947: $9f
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	add  b                                           ; $794a: $80
	add  b                                           ; $794b: $80
	add  b                                           ; $794c: $80
	add  b                                           ; $794d: $80
	add  b                                           ; $794e: $80
	add  b                                           ; $794f: $80
	ret  nz                                          ; $7950: $c0

	ret  nz                                          ; $7951: $c0

	jr   nz, jr_028_7934                             ; $7952: $20 $e0

jr_028_7954:
	and  b                                           ; $7954: $a0
	ldh  [$c0], a                                    ; $7955: $e0 $c0
	ret  nz                                          ; $7957: $c0

	cp   $fe                                         ; $7958: $fe $fe
	add  b                                           ; $795a: $80
	add  b                                           ; $795b: $80
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	add  b                                           ; $796a: $80
	add  b                                           ; $796b: $80
	add  b                                           ; $796c: $80
	add  b                                           ; $796d: $80
	add  b                                           ; $796e: $80
	add  b                                           ; $796f: $80
	ret  nz                                          ; $7970: $c0

	ret  nz                                          ; $7971: $c0

	jr   nz, jr_028_7954                             ; $7972: $20 $e0

	and  b                                           ; $7974: $a0
	ldh  [$c0], a                                    ; $7975: $e0 $c0
	ret  nz                                          ; $7977: $c0

	ret  nz                                          ; $7978: $c0

	ret  nz                                          ; $7979: $c0

	ldh  [$e0], a                                    ; $797a: $e0 $e0
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	ld   bc, $0101                                   ; $7984: $01 $01 $01
	ld   bc, $0302                                   ; $7987: $01 $02 $03
	ld   [bc], a                                     ; $798a: $02
	inc  bc                                          ; $798b: $03
	inc  b                                           ; $798c: $04
	rlca                                             ; $798d: $07
	inc  b                                           ; $798e: $04
	rlca                                             ; $798f: $07
	ld   b, $07                                      ; $7990: $06 $07
	rlca                                             ; $7992: $07
	rlca                                             ; $7993: $07
	inc  bc                                          ; $7994: $03
	inc  bc                                          ; $7995: $03
	rra                                              ; $7996: $1f
	rra                                              ; $7997: $1f
	ccf                                              ; $7998: $3f
	cpl                                              ; $7999: $2f
	ld   a, a                                        ; $799a: $7f
	ld   b, a                                        ; $799b: $47
	rst  $38                                         ; $799c: $ff
	rst  $38                                         ; $799d: $ff
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	ld   a, a                                        ; $79a0: $7f
	ld   a, b                                        ; $79a1: $78
	rst  $38                                         ; $79a2: $ff
	ldh  a, [rIE]                                    ; $79a3: $f0 $ff
	ldh  a, [$1f]                                    ; $79a5: $f0 $1f
	rst  $38                                         ; $79a7: $ff
	ld   [bc], a                                     ; $79a8: $02
	cp   $02                                         ; $79a9: $fe $02
	cp   $02                                         ; $79ab: $fe $02
	cp   $02                                         ; $79ad: $fe $02
	cp   $02                                         ; $79af: $fe $02
	cp   $ff                                         ; $79b1: $fe $ff
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	rst  $38                                         ; $79b6: $ff
	rst  $38                                         ; $79b7: $ff
	rst  $38                                         ; $79b8: $ff
	rst  $38                                         ; $79b9: $ff
	rst  $38                                         ; $79ba: $ff
	rst  $38                                         ; $79bb: $ff
	rst  $38                                         ; $79bc: $ff
	rst  $38                                         ; $79bd: $ff
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	db   $fd                                         ; $79c0: $fd
	rlca                                             ; $79c1: $07
	db   $fd                                         ; $79c2: $fd
	rlca                                             ; $79c3: $07
	cp   $0e                                         ; $79c4: $fe $0e
	ldh  a, [$f0]                                    ; $79c6: $f0 $f0
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	add  b                                           ; $79d6: $80
	add  b                                           ; $79d7: $80
	add  b                                           ; $79d8: $80
	add  b                                           ; $79d9: $80
	ld   hl, sp-$08                                  ; $79da: $f8 $f8
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	ld   c, b                                        ; $79e0: $48
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	and  d                                           ; $79e4: $a2
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	inc  d                                           ; $79e8: $14
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	rlca                                             ; $7a02: $07
	nop                                              ; $7a03: $00
	rrca                                             ; $7a04: $0f
	nop                                              ; $7a05: $00
	ld   c, $01                                      ; $7a06: $0e $01
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	add  b                                           ; $7a23: $80
	nop                                              ; $7a24: $00
	ret  nz                                          ; $7a25: $c0

	nop                                              ; $7a26: $00
	ret  nz                                          ; $7a27: $c0

	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	rlca                                             ; $7a40: $07
	rlca                                             ; $7a41: $07
	ld   [$1008], sp                                 ; $7a42: $08 $08 $10
	db   $10                                         ; $7a45: $10
	jr   nc, jr_028_7a78                             ; $7a46: $30 $30

	ccf                                              ; $7a48: $3f
	cpl                                              ; $7a49: $2f
	ld   a, $21                                      ; $7a4a: $3e $21
	ccf                                              ; $7a4c: $3f
	ccf                                              ; $7a4d: $3f
	rra                                              ; $7a4e: $1f
	db   $10                                         ; $7a4f: $10
	rra                                              ; $7a50: $1f
	db   $10                                         ; $7a51: $10
	rrca                                             ; $7a52: $0f
	ld   [$1f1f], sp                                 ; $7a53: $08 $1f $1f
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	add  b                                           ; $7a60: $80
	add  b                                           ; $7a61: $80
	ld   b, b                                        ; $7a62: $40
	ld   b, b                                        ; $7a63: $40
	jr   nz, @+$22                                   ; $7a64: $20 $20

	jr   nc, jr_028_7a98                             ; $7a66: $30 $30

	ret  nc                                          ; $7a68: $d0

	ldh  a, [rAUD1SWEEP]                             ; $7a69: $f0 $10
	ldh  a, [$f0]                                    ; $7a6b: $f0 $f0
	ldh  a, [rAUD4LEN]                               ; $7a6d: $f0 $20
	ldh  [rAUD4LEN], a                               ; $7a6f: $e0 $20
	ldh  [rLCDC], a                                  ; $7a71: $e0 $40
	ret  nz                                          ; $7a73: $c0

	ldh  [$e0], a                                    ; $7a74: $e0 $e0
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00

jr_028_7a78:
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	rlca                                             ; $7a82: $07
	rlca                                             ; $7a83: $07
	ld   [$1008], sp                                 ; $7a84: $08 $08 $10
	db   $10                                         ; $7a87: $10
	jr   nc, jr_028_7aba                             ; $7a88: $30 $30

	ccf                                              ; $7a8a: $3f
	cpl                                              ; $7a8b: $2f
	ld   a, $21                                      ; $7a8c: $3e $21
	ccf                                              ; $7a8e: $3f
	ccf                                              ; $7a8f: $3f
	rra                                              ; $7a90: $1f
	db   $10                                         ; $7a91: $10
	rra                                              ; $7a92: $1f
	db   $10                                         ; $7a93: $10
	rrca                                             ; $7a94: $0f
	ld   [$1f1f], sp                                 ; $7a95: $08 $1f $1f

jr_028_7a98:
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	add  b                                           ; $7aa2: $80
	add  b                                           ; $7aa3: $80
	ld   b, b                                        ; $7aa4: $40
	ld   b, b                                        ; $7aa5: $40
	jr   nz, jr_028_7ac8                             ; $7aa6: $20 $20

	jr   nc, jr_028_7ada                             ; $7aa8: $30 $30

	ret  nc                                          ; $7aaa: $d0

	ldh  a, [rAUD1SWEEP]                             ; $7aab: $f0 $10
	ldh  a, [$f0]                                    ; $7aad: $f0 $f0
	ldh  a, [rAUD4LEN]                               ; $7aaf: $f0 $20
	ldh  [rAUD4LEN], a                               ; $7ab1: $e0 $20
	ldh  [rLCDC], a                                  ; $7ab3: $e0 $40
	ret  nz                                          ; $7ab5: $c0

	ldh  [$e0], a                                    ; $7ab6: $e0 $e0
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00

jr_028_7aba:
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	jr   c, jr_028_7afa                              ; $7ac0: $38 $38

	dec  e                                           ; $7ac2: $1d
	dec  e                                           ; $7ac3: $1d
	ccf                                              ; $7ac4: $3f
	ccf                                              ; $7ac5: $3f
	ld   a, a                                        ; $7ac6: $7f
	ld   a, a                                        ; $7ac7: $7f

jr_028_7ac8:
	ld   a, a                                        ; $7ac8: $7f
	ld   e, a                                        ; $7ac9: $5f
	rst  $38                                         ; $7aca: $ff
	xor  $ff                                         ; $7acb: $ee $ff
	rst  $38                                         ; $7acd: $ff
	ei                                               ; $7ace: $fb
	rst  $38                                         ; $7acf: $ff
	db   $db                                         ; $7ad0: $db
	rst  $38                                         ; $7ad1: $ff
	ei                                               ; $7ad2: $fb
	rst  $38                                         ; $7ad3: $ff
	ld   sp, hl                                      ; $7ad4: $f9
	rst  $28                                         ; $7ad5: $ef
	ld   e, c                                        ; $7ad6: $59
	ld   l, a                                        ; $7ad7: $6f
	ld   e, c                                        ; $7ad8: $59
	ld   l, a                                        ; $7ad9: $6f

jr_028_7ada:
	jr   nz, @+$41                                   ; $7ada: $20 $3f

	db   $10                                         ; $7adc: $10
	rra                                              ; $7add: $1f
	rrca                                             ; $7ade: $0f
	rrca                                             ; $7adf: $0f
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	ret  nz                                          ; $7ae2: $c0

	ret  nz                                          ; $7ae3: $c0

	ldh  a, [$f0]                                    ; $7ae4: $f0 $f0
	ld   hl, sp-$08                                  ; $7ae6: $f8 $f8
	ld   hl, sp-$18                                  ; $7ae8: $f8 $e8
	db   $fc                                         ; $7aea: $fc
	inc  e                                           ; $7aeb: $1c
	db   $fc                                         ; $7aec: $fc
	db   $fc                                         ; $7aed: $fc
	ld   a, h                                        ; $7aee: $7c
	db   $fc                                         ; $7aef: $fc
	inc  a                                           ; $7af0: $3c
	db   $fc                                         ; $7af1: $fc
	db   $fc                                         ; $7af2: $fc
	db   $fc                                         ; $7af3: $fc
	add  sp, -$44                                    ; $7af4: $e8 $bc
	ret  nz                                          ; $7af6: $c0

	inc  a                                           ; $7af7: $3c
	ret  z                                           ; $7af8: $c8

	cp   b                                           ; $7af9: $b8

jr_028_7afa:
	db   $10                                         ; $7afa: $10
	ldh  a, [rAUD4LEN]                               ; $7afb: $f0 $20
	ldh  [$e0], a                                    ; $7afd: $e0 $e0
	ldh  [rP1], a                                    ; $7aff: $e0 $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	ld   bc, $0301                                   ; $7b04: $01 $01 $03
	ld   [bc], a                                     ; $7b07: $02
	inc  bc                                          ; $7b08: $03
	inc  bc                                          ; $7b09: $03
	rlca                                             ; $7b0a: $07
	rlca                                             ; $7b0b: $07
	rlca                                             ; $7b0c: $07
	rlca                                             ; $7b0d: $07
	ld   b, $07                                      ; $7b0e: $06 $07
	ld   b, $07                                      ; $7b10: $06 $07
	ld   b, $07                                      ; $7b12: $06 $07
	ld   [bc], a                                     ; $7b14: $02
	inc  bc                                          ; $7b15: $03
	ld   [bc], a                                     ; $7b16: $02
	inc  bc                                          ; $7b17: $03
	ld   [bc], a                                     ; $7b18: $02
	inc  bc                                          ; $7b19: $03
	ld   bc, $0001                                   ; $7b1a: $01 $01 $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	ldh  [$e0], a                                    ; $7b20: $e0 $e0
	ld   a, [hl]                                     ; $7b22: $7e
	ld   a, [hl]                                     ; $7b23: $7e
	rst  $38                                         ; $7b24: $ff
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	rst  $38                                         ; $7b27: $ff
	rst  $38                                         ; $7b28: $ff
	ld   a, a                                        ; $7b29: $7f
	rst  $38                                         ; $7b2a: $ff
	ldh  a, [$df]                                    ; $7b2b: $f0 $df
	rst  $38                                         ; $7b2d: $ff
	db   $db                                         ; $7b2e: $db
	rst  $38                                         ; $7b2f: $ff
	reti                                             ; $7b30: $d9


	rst  $38                                         ; $7b31: $ff
	add  a                                           ; $7b32: $87
	rst  $38                                         ; $7b33: $ff
	ld   c, b                                        ; $7b34: $48
	rst  $38                                         ; $7b35: $ff
	nop                                              ; $7b36: $00
	rst  $38                                         ; $7b37: $ff
	jr   nc, @+$01                                   ; $7b38: $30 $ff

	jr   nc, @-$1f                                   ; $7b3a: $30 $df

	or   c                                           ; $7b3c: $b1
	rst  JumpTable                                         ; $7b3d: $df
	ld   a, a                                        ; $7b3e: $7f
	ld   a, a                                        ; $7b3f: $7f
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	add  b                                           ; $7b44: $80
	add  b                                           ; $7b45: $80
	ret  nz                                          ; $7b46: $c0

	ret  nz                                          ; $7b47: $c0

	ret  nz                                          ; $7b48: $c0

	ld   b, b                                        ; $7b49: $40
	ldh  [$e0], a                                    ; $7b4a: $e0 $e0
	ldh  [$e0], a                                    ; $7b4c: $e0 $e0
	ldh  [$e0], a                                    ; $7b4e: $e0 $e0
	ldh  [$e0], a                                    ; $7b50: $e0 $e0
	ldh  [$e0], a                                    ; $7b52: $e0 $e0
	ld   b, b                                        ; $7b54: $40
	ldh  [rP1], a                                    ; $7b55: $e0 $00
	ldh  [$c0], a                                    ; $7b57: $e0 $c0
	ret  nz                                          ; $7b59: $c0

	add  b                                           ; $7b5a: $80
	add  b                                           ; $7b5b: $80
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	jr   c, @+$3a                                    ; $7b60: $38 $38

	dec  e                                           ; $7b62: $1d
	dec  e                                           ; $7b63: $1d
	ccf                                              ; $7b64: $3f
	ccf                                              ; $7b65: $3f
	ld   a, a                                        ; $7b66: $7f
	ld   a, a                                        ; $7b67: $7f
	ld   a, a                                        ; $7b68: $7f
	ld   e, a                                        ; $7b69: $5f
	rst  $38                                         ; $7b6a: $ff
	xor  $ff                                         ; $7b6b: $ee $ff
	rst  $38                                         ; $7b6d: $ff
	ei                                               ; $7b6e: $fb
	rst  $38                                         ; $7b6f: $ff
	db   $db                                         ; $7b70: $db
	rst  $38                                         ; $7b71: $ff
	db   $db                                         ; $7b72: $db
	rst  $38                                         ; $7b73: $ff
	ret  z                                           ; $7b74: $c8

	rst  $38                                         ; $7b75: $ff
	ld   d, b                                        ; $7b76: $50
	ld   a, a                                        ; $7b77: $7f
	ld   c, c                                        ; $7b78: $49
	ld   a, a                                        ; $7b79: $7f
	jr   nz, jr_028_7bbb                             ; $7b7a: $20 $3f

	nop                                              ; $7b7c: $00
	rlca                                             ; $7b7d: $07
	inc  bc                                          ; $7b7e: $03
	inc  bc                                          ; $7b7f: $03
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	ret  nz                                          ; $7b82: $c0

	ret  nz                                          ; $7b83: $c0

	ldh  a, [$f0]                                    ; $7b84: $f0 $f0
	ld   hl, sp-$08                                  ; $7b86: $f8 $f8
	ld   hl, sp-$18                                  ; $7b88: $f8 $e8
	db   $fc                                         ; $7b8a: $fc
	inc  e                                           ; $7b8b: $1c
	db   $fc                                         ; $7b8c: $fc
	db   $fc                                         ; $7b8d: $fc
	ld   a, h                                        ; $7b8e: $7c
	db   $fc                                         ; $7b8f: $fc
	inc  a                                           ; $7b90: $3c
	db   $fc                                         ; $7b91: $fc
	inc  a                                           ; $7b92: $3c
	db   $fc                                         ; $7b93: $fc
	ld   [$e0fc], sp                                 ; $7b94: $08 $fc $e0
	db   $fc                                         ; $7b97: $fc
	ld   [$10f8], sp                                 ; $7b98: $08 $f8 $10
	ldh  a, [rAUD4LEN]                               ; $7b9b: $f0 $20
	ldh  [$e0], a                                    ; $7b9d: $e0 $e0
	ldh  [rIF], a                                    ; $7b9f: $e0 $0f
	dec  bc                                          ; $7ba1: $0b
	rra                                              ; $7ba2: $1f
	dec  e                                           ; $7ba3: $1d
	ccf                                              ; $7ba4: $3f
	dec  a                                           ; $7ba5: $3d
	ccf                                              ; $7ba6: $3f
	dec  l                                           ; $7ba7: $2d
	ccf                                              ; $7ba8: $3f
	dec  l                                           ; $7ba9: $2d
	ld   [hl], a                                     ; $7baa: $77
	ld   e, l                                        ; $7bab: $5d
	ld   [hl], a                                     ; $7bac: $77
	ld   e, l                                        ; $7bad: $5d
	ld   [hl], a                                     ; $7bae: $77
	ld   e, l                                        ; $7baf: $5d
	ld   [hl], a                                     ; $7bb0: $77
	ld   a, a                                        ; $7bb1: $7f
	ld   c, h                                        ; $7bb2: $4c
	ld   a, a                                        ; $7bb3: $7f
	call z, $ffff                                    ; $7bb4: $cc $ff $ff
	rst  $38                                         ; $7bb7: $ff
	rst  $38                                         ; $7bb8: $ff
	rst  $38                                         ; $7bb9: $ff
	ld   a, a                                        ; $7bba: $7f

jr_028_7bbb:
	ld   a, a                                        ; $7bbb: $7f
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	ldh  a, [$30]                                    ; $7bc0: $f0 $30
	ld   hl, sp-$38                                  ; $7bc2: $f8 $c8
	db   $fc                                         ; $7bc4: $fc
	call nz, $c4fc                                   ; $7bc5: $c4 $fc $c4
	db   $fc                                         ; $7bc8: $fc
	call nz, $c47c                                   ; $7bc9: $c4 $7c $c4
	ld   a, h                                        ; $7bcc: $7c
	call nz, $84fc                                   ; $7bcd: $c4 $fc $84
	ld   hl, sp-$78                                  ; $7bd0: $f8 $88
	ld   a, b                                        ; $7bd2: $78
	ret  c                                           ; $7bd3: $d8

	db   $fc                                         ; $7bd4: $fc
	db   $fc                                         ; $7bd5: $fc
	cp   $fa                                         ; $7bd6: $fe $fa
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	db   $fc                                         ; $7bda: $fc
	db   $fc                                         ; $7bdb: $fc
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	rrca                                             ; $7be0: $0f
	dec  bc                                          ; $7be1: $0b
	rra                                              ; $7be2: $1f
	dec  e                                           ; $7be3: $1d
	ccf                                              ; $7be4: $3f
	dec  a                                           ; $7be5: $3d
	ccf                                              ; $7be6: $3f
	dec  l                                           ; $7be7: $2d
	ccf                                              ; $7be8: $3f
	dec  l                                           ; $7be9: $2d
	ld   [hl], a                                     ; $7bea: $77
	ld   e, l                                        ; $7beb: $5d
	ld   [hl], a                                     ; $7bec: $77
	ld   e, l                                        ; $7bed: $5d
	ld   [hl], a                                     ; $7bee: $77
	ld   e, l                                        ; $7bef: $5d
	ld   [hl], a                                     ; $7bf0: $77
	ld   a, a                                        ; $7bf1: $7f
	ld   c, b                                        ; $7bf2: $48
	ld   a, a                                        ; $7bf3: $7f
	rst  $38                                         ; $7bf4: $ff
	rst  $38                                         ; $7bf5: $ff
	rst  $38                                         ; $7bf6: $ff
	rst  $38                                         ; $7bf7: $ff
	rst  $38                                         ; $7bf8: $ff
	rst  $38                                         ; $7bf9: $ff
	ld   a, a                                        ; $7bfa: $7f
	ld   a, a                                        ; $7bfb: $7f
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	ld   bc, $0101                                   ; $7c02: $01 $01 $01
	nop                                              ; $7c05: $00
	inc  bc                                          ; $7c06: $03
	nop                                              ; $7c07: $00
	ld   bc, $0000                                   ; $7c08: $01 $00 $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	ld   bc, $0001                                   ; $7c18: $01 $01 $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	rst  $38                                         ; $7c20: $ff
	db   $eb                                         ; $7c21: $eb
	rst  $38                                         ; $7c22: $ff
	halt                                             ; $7c23: $76
	rst  $38                                         ; $7c24: $ff
	ld   [hl], h                                     ; $7c25: $74
	rst  $38                                         ; $7c26: $ff
	ld   [hl], h                                     ; $7c27: $74
	rst  JumpTable                                         ; $7c28: $df
	ld   a, b                                        ; $7c29: $78
	rst  JumpTable                                         ; $7c2a: $df
	ld   a, b                                        ; $7c2b: $78
	ld   e, a                                        ; $7c2c: $5f
	ld   [hl], b                                     ; $7c2d: $70
	ld   a, a                                        ; $7c2e: $7f
	ld   [hl], c                                     ; $7c2f: $71
	ld   c, [hl]                                     ; $7c30: $4e
	ld   a, e                                        ; $7c31: $7b
	ld   h, h                                        ; $7c32: $64
	ld   a, a                                        ; $7c33: $7f
	db   $fc                                         ; $7c34: $fc
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	db   $e3                                         ; $7c3a: $e3
	db   $e3                                         ; $7c3b: $e3
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	add  b                                           ; $7c40: $80
	add  b                                           ; $7c41: $80
	ret  nz                                          ; $7c42: $c0

	ld   b, b                                        ; $7c43: $40
	ldh  [rAUD4LEN], a                               ; $7c44: $e0 $20
	ldh  [rAUD4LEN], a                               ; $7c46: $e0 $20
	ldh  [$60], a                                    ; $7c48: $e0 $60
	ldh  [$60], a                                    ; $7c4a: $e0 $60
	sub  b                                           ; $7c4c: $90
	ldh  a, [rAUD1SWEEP]                             ; $7c4d: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $7c4f: $f0 $10
	ldh  a, [$3c]                                    ; $7c51: $f0 $3c
	db   $fc                                         ; $7c53: $fc
	cp   $f2                                         ; $7c54: $fe $f2
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	db   $fc                                         ; $7c58: $fc
	db   $fc                                         ; $7c59: $fc
	ldh  [$e0], a                                    ; $7c5a: $e0 $e0
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	ld   bc, $0301                                   ; $7c60: $01 $01 $03
	ld   bc, $0101                                   ; $7c63: $01 $01 $01
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	ld   bc, $0201                                   ; $7c6c: $01 $01 $02
	inc  bc                                          ; $7c6f: $03
	ld   [bc], a                                     ; $7c70: $02
	inc  bc                                          ; $7c71: $03
	ld   bc, $8101                                   ; $7c72: $01 $01 $81
	add  c                                           ; $7c75: $81
	jp   $ffc3                                       ; $7c76: $c3 $c3 $ff


	rst  $38                                         ; $7c79: $ff
	ld   a, a                                        ; $7c7a: $7f
	ld   a, a                                        ; $7c7b: $7f
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	ldh  a, [$30]                                    ; $7c80: $f0 $30
	ld   hl, sp-$38                                  ; $7c82: $f8 $c8
	db   $fc                                         ; $7c84: $fc
	call nz, $c4fc                                   ; $7c85: $c4 $fc $c4
	ld   a, h                                        ; $7c88: $7c
	ld   b, h                                        ; $7c89: $44
	ld   a, h                                        ; $7c8a: $7c
	inc  b                                           ; $7c8b: $04
	db   $fc                                         ; $7c8c: $fc
	add  h                                           ; $7c8d: $84
	ld   a, h                                        ; $7c8e: $7c
	call nz, $c878                                   ; $7c8f: $c4 $78 $c8
	ld   hl, sp-$08                                  ; $7c92: $f8 $f8
	db   $fc                                         ; $7c94: $fc
	db   $fc                                         ; $7c95: $fc
	cp   $fa                                         ; $7c96: $fe $fa
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	db   $fc                                         ; $7c9a: $fc
	db   $fc                                         ; $7c9b: $fc
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	ld   bc, $0301                                   ; $7cac: $01 $01 $03
	inc  bc                                          ; $7caf: $03
	inc  bc                                          ; $7cb0: $03
	ld   [bc], a                                     ; $7cb1: $02
	inc  bc                                          ; $7cb2: $03
	ld   [bc], a                                     ; $7cb3: $02
	inc  bc                                          ; $7cb4: $03
	inc  bc                                          ; $7cb5: $03
	ld   bc, $0101                                   ; $7cb6: $01 $01 $01
	ld   bc, $0000                                   ; $7cb9: $01 $00 $00
	ld   bc, $0001                                   ; $7cbc: $01 $01 $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	ld   a, b                                        ; $7cc8: $78
	ld   a, b                                        ; $7cc9: $78
	add  h                                           ; $7cca: $84
	add  h                                           ; $7ccb: $84
	ld   [bc], a                                     ; $7ccc: $02
	ld   [bc], a                                     ; $7ccd: $02
	inc  bc                                          ; $7cce: $03
	inc  bc                                          ; $7ccf: $03
	db   $fd                                         ; $7cd0: $fd
	rst  $38                                         ; $7cd1: $ff
	pop  hl                                          ; $7cd2: $e1
	rra                                              ; $7cd3: $1f
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	ldh  a, [c]                                      ; $7cd6: $f2
	ld   c, $f2                                      ; $7cd7: $0e $f2
	ld   c, $f4                                      ; $7cd9: $0e $f4
	adc  h                                           ; $7cdb: $8c
	cp   $fe                                         ; $7cdc: $fe $fe
	ld   a, b                                        ; $7cde: $78
	ld   a, b                                        ; $7cdf: $78
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	jr   nc, jr_028_7d14                             ; $7ce2: $30 $30

	ld   c, b                                        ; $7ce4: $48
	ld   c, b                                        ; $7ce5: $48
	add  h                                           ; $7ce6: $84
	add  h                                           ; $7ce7: $84
	ld   c, b                                        ; $7ce8: $48
	ld   c, b                                        ; $7ce9: $48
	or   h                                           ; $7cea: $b4
	or   h                                           ; $7ceb: $b4
	ld   [bc], a                                     ; $7cec: $02
	ld   [bc], a                                     ; $7ced: $02
	inc  bc                                          ; $7cee: $03
	inc  bc                                          ; $7cef: $03
	db   $fd                                         ; $7cf0: $fd
	rst  $38                                         ; $7cf1: $ff
	pop  hl                                          ; $7cf2: $e1
	rra                                              ; $7cf3: $1f
	rst  $38                                         ; $7cf4: $ff
	rst  $38                                         ; $7cf5: $ff
	ldh  a, [c]                                      ; $7cf6: $f2
	ld   c, $f2                                      ; $7cf7: $0e $f2
	ld   c, $f4                                      ; $7cf9: $0e $f4
	adc  h                                           ; $7cfb: $8c
	cp   $fe                                         ; $7cfc: $fe $fe
	ld   a, b                                        ; $7cfe: $78
	ld   a, b                                        ; $7cff: $78
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	jr   nc, jr_028_7d36                             ; $7d04: $30 $30

	ld   a, b                                        ; $7d06: $78
	ld   a, b                                        ; $7d07: $78
	jr   nc, jr_028_7d3a                             ; $7d08: $30 $30

	ld   c, b                                        ; $7d0a: $48
	nop                                              ; $7d0b: $00
	ld   hl, sp+$04                                  ; $7d0c: $f8 $04
	ldh  [rAUD3HIGH], a                              ; $7d0e: $e0 $1e
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00

jr_028_7d14:
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	ld   bc, $0001                                   ; $7d26: $01 $01 $00
	nop                                              ; $7d29: $00
	ld   bc, $0201                                   ; $7d2a: $01 $01 $02
	ld   [bc], a                                     ; $7d2d: $02
	ld   b, $06                                      ; $7d2e: $06 $06
	rlca                                             ; $7d30: $07
	dec  b                                           ; $7d31: $05
	rlca                                             ; $7d32: $07
	inc  b                                           ; $7d33: $04
	inc  bc                                          ; $7d34: $03
	inc  bc                                          ; $7d35: $03

jr_028_7d36:
	inc  bc                                          ; $7d36: $03
	ld   [bc], a                                     ; $7d37: $02
	inc  bc                                          ; $7d38: $03
	ld   [bc], a                                     ; $7d39: $02

jr_028_7d3a:
	ld   bc, $0001                                   ; $7d3a: $01 $01 $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	ld   h, b                                        ; $7d42: $60
	ld   h, b                                        ; $7d43: $60
	sub  b                                           ; $7d44: $90

jr_028_7d45:
	sub  b                                           ; $7d45: $90
	ld   [$9008], sp                                 ; $7d46: $08 $08 $90
	sub  b                                           ; $7d49: $90
	ld   l, b                                        ; $7d4a: $68
	ld   l, b                                        ; $7d4b: $68
	inc  b                                           ; $7d4c: $04
	inc  b                                           ; $7d4d: $04
	ld   b, $06                                      ; $7d4e: $06 $06
	ld   a, [$c0fe]                                  ; $7d50: $fa $fe $c0
	jr   c, jr_028_7d45                              ; $7d53: $38 $f0

	ldh  a, [$e0]                                    ; $7d55: $f0 $e0
	db   $10                                         ; $7d57: $10
	ldh  [rAUD2LOW], a                               ; $7d58: $e0 $18
	add  sp, $18                                     ; $7d5a: $e8 $18
	ldh  a, [$f0]                                    ; $7d5c: $f0 $f0
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	jr   c, @+$06                                    ; $7d64: $38 $04

	ld   a, b                                        ; $7d66: $78
	ld   b, $70                                      ; $7d67: $06 $70
	ld   c, $00                                      ; $7d69: $0e $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00

Jump_028_7e01:
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
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
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
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
