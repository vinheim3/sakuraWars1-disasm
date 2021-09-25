; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	ccf                                              ; $4002: $3f
	ld   a, a                                        ; $4003: $7f
	ld   a, a                                        ; $4004: $7f
	ld   b, b                                        ; $4005: $40
	ld   a, a                                        ; $4006: $7f
	ld   e, a                                        ; $4007: $5f
	ld   [hl], b                                     ; $4008: $70
	ld   d, b                                        ; $4009: $50
	ld   [hl], a                                     ; $400a: $77
	ld   d, a                                        ; $400b: $57
	ld   [hl], a                                     ; $400c: $77
	ld   d, h                                        ; $400d: $54
	ld   [hl], a                                     ; $400e: $77
	ld   d, l                                        ; $400f: $55
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	nop                                              ; $4015: $00
	rst  $38                                         ; $4016: $ff
	rst  $38                                         ; $4017: $ff
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	rst  $38                                         ; $401a: $ff
	rst  $38                                         ; $401b: $ff
	rst  $38                                         ; $401c: $ff
	nop                                              ; $401d: $00
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	ldh  [$e0], a                                    ; $4022: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $4024: $f0 $10
	ld   hl, sp-$38                                  ; $4026: $f8 $c8
	inc  a                                           ; $4028: $3c
	inc  h                                           ; $4029: $24
	rst  $38                                         ; $402a: $ff
	di                                               ; $402b: $f3
	rst  $38                                         ; $402c: $ff
	ld   [$ffff], sp                                 ; $402d: $08 $ff $ff
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
	rra                                              ; $4032: $1f
	rra                                              ; $4033: $1f
	ccf                                              ; $4034: $3f
	jr   nz, jr_00d_40b6                             ; $4035: $20 $7f

	ld   c, a                                        ; $4037: $4f
	ldh  a, [$90]                                    ; $4038: $f0 $90
	rst  $38                                         ; $403a: $ff
	ccf                                              ; $403b: $3f
	rst  $38                                         ; $403c: $ff
	ld   b, b                                        ; $403d: $40
	rst  $38                                         ; $403e: $ff
	rst  $38                                         ; $403f: $ff
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	db   $fc                                         ; $4042: $fc
	db   $fc                                         ; $4043: $fc
	cp   $02                                         ; $4044: $fe $02
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	rst  $38                                         ; $404c: $ff
	nop                                              ; $404d: $00
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
	nop                                              ; $4052: $00
	nop                                              ; $4053: $00
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	nop                                              ; $4058: $00
	nop                                              ; $4059: $00
	rst  $38                                         ; $405a: $ff
	rst  $38                                         ; $405b: $ff
	rst  $38                                         ; $405c: $ff
	nop                                              ; $405d: $00
	rst  $38                                         ; $405e: $ff
	rst  $38                                         ; $405f: $ff
	ld   [hl], a                                     ; $4060: $77
	ld   d, l                                        ; $4061: $55
	ld   [hl], a                                     ; $4062: $77
	ld   d, l                                        ; $4063: $55
	ld   [hl], a                                     ; $4064: $77
	ld   d, l                                        ; $4065: $55
	ld   a, a                                        ; $4066: $7f
	ld   c, l                                        ; $4067: $4d
	ccf                                              ; $4068: $3f
	dec  h                                           ; $4069: $25
	rra                                              ; $406a: $1f
	inc  de                                          ; $406b: $13
	rrca                                             ; $406c: $0f
	add  hl, bc                                      ; $406d: $09
	rlca                                             ; $406e: $07
	dec  b                                           ; $406f: $05
	rrca                                             ; $4070: $0f
	dec  c                                           ; $4071: $0d
	rra                                              ; $4072: $1f
	dec  d                                           ; $4073: $15
	ccf                                              ; $4074: $3f
	dec  h                                           ; $4075: $25
	ld   a, a                                        ; $4076: $7f
	ld   c, l                                        ; $4077: $4d
	ld   [hl], a                                     ; $4078: $77
	ld   d, l                                        ; $4079: $55
	ld   [hl], a                                     ; $407a: $77
	ld   d, l                                        ; $407b: $55
	ld   [hl], a                                     ; $407c: $77
	ld   d, l                                        ; $407d: $55
	ld   [hl], a                                     ; $407e: $77
	ld   d, l                                        ; $407f: $55
	ld   [hl], a                                     ; $4080: $77
	ld   d, l                                        ; $4081: $55
	ld   [hl], a                                     ; $4082: $77
	ld   d, l                                        ; $4083: $55
	ld   [hl], a                                     ; $4084: $77
	ld   d, l                                        ; $4085: $55
	ld   h, a                                        ; $4086: $67
	ld   h, l                                        ; $4087: $65
	ld   b, a                                        ; $4088: $47
	ld   b, l                                        ; $4089: $45
	rlca                                             ; $408a: $07
	dec  b                                           ; $408b: $05
	rlca                                             ; $408c: $07
	dec  b                                           ; $408d: $05
	rlca                                             ; $408e: $07
	dec  b                                           ; $408f: $05
	rlca                                             ; $4090: $07
	dec  b                                           ; $4091: $05
	rlca                                             ; $4092: $07
	dec  b                                           ; $4093: $05
	rlca                                             ; $4094: $07
	dec  b                                           ; $4095: $05
	rlca                                             ; $4096: $07
	dec  b                                           ; $4097: $05
	rlca                                             ; $4098: $07
	dec  b                                           ; $4099: $05
	rlca                                             ; $409a: $07
	dec  b                                           ; $409b: $05
	rlca                                             ; $409c: $07
	dec  b                                           ; $409d: $05
	rlca                                             ; $409e: $07
	dec  b                                           ; $409f: $05
	ld   [hl], a                                     ; $40a0: $77
	ld   d, l                                        ; $40a1: $55
	ld   [hl], a                                     ; $40a2: $77
	ld   d, l                                        ; $40a3: $55
	ld   a, a                                        ; $40a4: $7f
	ld   c, l                                        ; $40a5: $4d
	ccf                                              ; $40a6: $3f
	dec  h                                           ; $40a7: $25
	rra                                              ; $40a8: $1f
	dec  d                                           ; $40a9: $15
	rrca                                             ; $40aa: $0f
	add  hl, bc                                      ; $40ab: $09
	rra                                              ; $40ac: $1f
	inc  de                                          ; $40ad: $13
	ccf                                              ; $40ae: $3f
	dec  h                                           ; $40af: $25
	ld   a, a                                        ; $40b0: $7f
	ld   c, l                                        ; $40b1: $4d
	ld   [hl], a                                     ; $40b2: $77
	ld   d, h                                        ; $40b3: $54
	ld   [hl], a                                     ; $40b4: $77
	ld   d, a                                        ; $40b5: $57

jr_00d_40b6:
	ld   [hl], b                                     ; $40b6: $70
	ld   d, b                                        ; $40b7: $50
	ld   a, a                                        ; $40b8: $7f
	ld   e, a                                        ; $40b9: $5f
	ld   a, a                                        ; $40ba: $7f
	ld   b, b                                        ; $40bb: $40
	ccf                                              ; $40bc: $3f
	ld   a, a                                        ; $40bd: $7f
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	rst  $38                                         ; $40c0: $ff
	rst  $38                                         ; $40c1: $ff
	rst  $38                                         ; $40c2: $ff
	nop                                              ; $40c3: $00
	rst  $38                                         ; $40c4: $ff
	rst  $38                                         ; $40c5: $ff
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	nop                                              ; $40cb: $00
	rst  $38                                         ; $40cc: $ff
	rst  $38                                         ; $40cd: $ff
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	ld   [bc], a                                     ; $40d3: $02
	rst  $38                                         ; $40d4: $ff
	db   $fc                                         ; $40d5: $fc
	rrca                                             ; $40d6: $0f
	add  hl, bc                                      ; $40d7: $09
	cp   $f2                                         ; $40d8: $fe $f2
	db   $fc                                         ; $40da: $fc
	inc  b                                           ; $40db: $04
	ld   hl, sp-$08                                  ; $40dc: $f8 $f8
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	rst  $38                                         ; $40e0: $ff
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	ld   b, b                                        ; $40e3: $40
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	nop                                              ; $40ec: $00
	nop                                              ; $40ed: $00
	nop                                              ; $40ee: $00
	nop                                              ; $40ef: $00
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
	ldh  a, [$f1]                                    ; $4100: $f0 $f1
	ldh  a, [c]                                      ; $4102: $f2
	di                                               ; $4103: $f3
	db   $f4                                         ; $4104: $f4
	push af                                          ; $4105: $f5
	push af                                          ; $4106: $f5
	push af                                          ; $4107: $f5
	push af                                          ; $4108: $f5
	push af                                          ; $4109: $f5
	push af                                          ; $410a: $f5
	push af                                          ; $410b: $f5
	push af                                          ; $410c: $f5
	push af                                          ; $410d: $f5
	push af                                          ; $410e: $f5
	db   $f4                                         ; $410f: $f4
	di                                               ; $4110: $f3
	ldh  a, [c]                                      ; $4111: $f2
	pop  af                                          ; $4112: $f1
	ldh  a, [rIE]                                    ; $4113: $f0 $ff
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	rst  $38                                         ; $4117: $ff
	rst  $38                                         ; $4118: $ff
	rst  $38                                         ; $4119: $ff
	rst  $38                                         ; $411a: $ff
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	rst  $38                                         ; $411e: $ff
	rst  $38                                         ; $411f: $ff
	or   $d4                                         ; $4120: $f6 $d4
	push de                                          ; $4122: $d5
	sub  $d7                                         ; $4123: $d6 $d7
	add  b                                           ; $4125: $80
	add  d                                           ; $4126: $82
	add  h                                           ; $4127: $84
	add  [hl]                                        ; $4128: $86
	adc  b                                           ; $4129: $88
	adc  d                                           ; $412a: $8a
	adc  h                                           ; $412b: $8c
	adc  [hl]                                        ; $412c: $8e
	sub  b                                           ; $412d: $90
	sub  d                                           ; $412e: $92
	sub  h                                           ; $412f: $94
	sub  [hl]                                        ; $4130: $96
	sbc  b                                           ; $4131: $98
	sbc  d                                           ; $4132: $9a
	or   $ff                                         ; $4133: $f6 $ff
	rst  $38                                         ; $4135: $ff
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $38                                         ; $413b: $ff
	rst  $38                                         ; $413c: $ff
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	rst  $30                                         ; $4140: $f7
	ret  c                                           ; $4141: $d8

	reti                                             ; $4142: $d9


	jp   c, $81db                                    ; $4143: $da $db $81

	add  e                                           ; $4146: $83
	add  l                                           ; $4147: $85
	add  a                                           ; $4148: $87
	adc  c                                           ; $4149: $89
	adc  e                                           ; $414a: $8b
	adc  l                                           ; $414b: $8d
	adc  a                                           ; $414c: $8f
	sub  c                                           ; $414d: $91
	sub  e                                           ; $414e: $93
	sub  l                                           ; $414f: $95
	sub  a                                           ; $4150: $97
	sbc  c                                           ; $4151: $99
	sbc  e                                           ; $4152: $9b
	rst  $30                                         ; $4153: $f7
	rst  $38                                         ; $4154: $ff
	rst  $38                                         ; $4155: $ff
	rst  $38                                         ; $4156: $ff
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	rst  $38                                         ; $415b: $ff
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	rst  $38                                         ; $415e: $ff
	rst  $38                                         ; $415f: $ff
	ld   hl, sp-$24                                  ; $4160: $f8 $dc
	db   $dd                                         ; $4162: $dd
	sbc  $df                                         ; $4163: $de $df
	sbc  h                                           ; $4165: $9c
	sbc  [hl]                                        ; $4166: $9e
	and  b                                           ; $4167: $a0
	and  d                                           ; $4168: $a2
	and  h                                           ; $4169: $a4
	and  [hl]                                        ; $416a: $a6
	xor  b                                           ; $416b: $a8
	xor  d                                           ; $416c: $aa
	xor  h                                           ; $416d: $ac
	xor  [hl]                                        ; $416e: $ae
	or   b                                           ; $416f: $b0
	or   d                                           ; $4170: $b2
	or   h                                           ; $4171: $b4
	or   [hl]                                        ; $4172: $b6
	ld   hl, sp-$01                                  ; $4173: $f8 $ff
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	rst  $38                                         ; $4177: $ff
	rst  $38                                         ; $4178: $ff
	rst  $38                                         ; $4179: $ff
	rst  $38                                         ; $417a: $ff
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	rst  $38                                         ; $417f: $ff
	ld   sp, hl                                      ; $4180: $f9
	ldh  [$e1], a                                    ; $4181: $e0 $e1
	ldh  [c], a                                      ; $4183: $e2
	db   $e3                                         ; $4184: $e3
	sbc  l                                           ; $4185: $9d
	sbc  a                                           ; $4186: $9f
	and  c                                           ; $4187: $a1
	and  e                                           ; $4188: $a3
	and  l                                           ; $4189: $a5
	and  a                                           ; $418a: $a7
	xor  c                                           ; $418b: $a9
	xor  e                                           ; $418c: $ab
	xor  l                                           ; $418d: $ad
	xor  a                                           ; $418e: $af
	or   c                                           ; $418f: $b1
	or   e                                           ; $4190: $b3
	or   l                                           ; $4191: $b5
	or   a                                           ; $4192: $b7
	ld   sp, hl                                      ; $4193: $f9
	rst  $38                                         ; $4194: $ff
	rst  $38                                         ; $4195: $ff
	rst  $38                                         ; $4196: $ff
	rst  $38                                         ; $4197: $ff
	rst  $38                                         ; $4198: $ff
	rst  $38                                         ; $4199: $ff
	rst  $38                                         ; $419a: $ff
	rst  $38                                         ; $419b: $ff
	rst  $38                                         ; $419c: $ff
	rst  $38                                         ; $419d: $ff
	rst  $38                                         ; $419e: $ff
	rst  $38                                         ; $419f: $ff
	ld   hl, sp-$1c                                  ; $41a0: $f8 $e4
	push hl                                          ; $41a2: $e5
	and  $e7                                         ; $41a3: $e6 $e7
	cp   b                                           ; $41a5: $b8
	cp   d                                           ; $41a6: $ba
	cp   h                                           ; $41a7: $bc
	cp   [hl]                                        ; $41a8: $be
	ret  nz                                          ; $41a9: $c0

	jp   nz, $c6c4                                   ; $41aa: $c2 $c4 $c6

	ret  z                                           ; $41ad: $c8

	jp   z, $cecc                                    ; $41ae: $ca $cc $ce

	ret  nc                                          ; $41b1: $d0

	jp   nc, $fff8                                   ; $41b2: $d2 $f8 $ff

	rst  $38                                         ; $41b5: $ff
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff
	rst  $38                                         ; $41b8: $ff
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	rst  $38                                         ; $41bb: $ff
	rst  $38                                         ; $41bc: $ff
	rst  $38                                         ; $41bd: $ff
	rst  $38                                         ; $41be: $ff
	rst  $38                                         ; $41bf: $ff
	ld   a, [$e9e8]                                  ; $41c0: $fa $e8 $e9
	ld   [$b9eb], a                                  ; $41c3: $ea $eb $b9
	cp   e                                           ; $41c6: $bb
	cp   l                                           ; $41c7: $bd
	cp   a                                           ; $41c8: $bf
	pop  bc                                          ; $41c9: $c1
	jp   $c7c5                                       ; $41ca: $c3 $c5 $c7


	ret                                              ; $41cd: $c9


	set  1, l                                        ; $41ce: $cb $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41d0: $cf
	pop  de                                          ; $41d1: $d1
	db   $d3                                         ; $41d2: $d3
	ld   a, [$ffff]                                  ; $41d3: $fa $ff $ff
	rst  $38                                         ; $41d6: $ff
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	rst  $38                                         ; $41d9: $ff
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	rst  $38                                         ; $41dd: $ff
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	ei                                               ; $41e0: $fb
	db   $fc                                         ; $41e1: $fc
	db   $fc                                         ; $41e2: $fc
	db   $fd                                         ; $41e3: $fd
	cp   $f5                                         ; $41e4: $fe $f5
	push af                                          ; $41e6: $f5
	push af                                          ; $41e7: $f5
	push af                                          ; $41e8: $f5
	push af                                          ; $41e9: $f5
	push af                                          ; $41ea: $f5
	push af                                          ; $41eb: $f5
	push af                                          ; $41ec: $f5
	push af                                          ; $41ed: $f5
	push af                                          ; $41ee: $f5
	cp   $fd                                         ; $41ef: $fe $fd
	db   $fc                                         ; $41f1: $fc
	db   $fc                                         ; $41f2: $fc
	ei                                               ; $41f3: $fb
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	rst  $38                                         ; $41f6: $ff
	rst  $38                                         ; $41f7: $ff
	rst  $38                                         ; $41f8: $ff
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	rst  $38                                         ; $41fc: $ff
	rst  $38                                         ; $41fd: $ff
	rst  $38                                         ; $41fe: $ff
	rst  $38                                         ; $41ff: $ff
	ld   [$0808], sp                                 ; $4200: $08 $08 $08
	ld   [$0808], sp                                 ; $4203: $08 $08 $08
	ld   [$0808], sp                                 ; $4206: $08 $08 $08
	ld   [$0808], sp                                 ; $4209: $08 $08 $08
	ld   [$2808], sp                                 ; $420c: $08 $08 $28
	jr   z, @+$2a                                    ; $420f: $28 $28

	jr   z, @+$2a                                    ; $4211: $28 $28

	jr   z, @+$0a                                    ; $4213: $28 $08

	ld   [$0808], sp                                 ; $4215: $08 $08 $08
	ld   [$0808], sp                                 ; $4218: $08 $08 $08
	ld   [$0808], sp                                 ; $421b: $08 $08 $08
	ld   [$0808], sp                                 ; $421e: $08 $08 $08
	ld   a, [bc]                                     ; $4221: $0a
	ld   a, [bc]                                     ; $4222: $0a
	ld   a, [bc]                                     ; $4223: $0a
	ld   a, [bc]                                     ; $4224: $0a
	ld   [$0808], sp                                 ; $4225: $08 $08 $08
	ld   [$0808], sp                                 ; $4228: $08 $08 $08
	ld   [$0808], sp                                 ; $422b: $08 $08 $08
	ld   [$0808], sp                                 ; $422e: $08 $08 $08
	ld   [$2808], sp                                 ; $4231: $08 $08 $28
	ld   [$0808], sp                                 ; $4234: $08 $08 $08
	ld   [$0808], sp                                 ; $4237: $08 $08 $08
	ld   [$0808], sp                                 ; $423a: $08 $08 $08
	ld   [$0808], sp                                 ; $423d: $08 $08 $08
	ld   [$0a0a], sp                                 ; $4240: $08 $0a $0a
	ld   a, [bc]                                     ; $4243: $0a
	ld   a, [bc]                                     ; $4244: $0a
	ld   [$0808], sp                                 ; $4245: $08 $08 $08
	ld   [$0808], sp                                 ; $4248: $08 $08 $08
	ld   [$0808], sp                                 ; $424b: $08 $08 $08
	ld   [$0808], sp                                 ; $424e: $08 $08 $08
	ld   [$2808], sp                                 ; $4251: $08 $08 $28
	ld   [$0808], sp                                 ; $4254: $08 $08 $08
	ld   [$0808], sp                                 ; $4257: $08 $08 $08
	ld   [$0808], sp                                 ; $425a: $08 $08 $08
	ld   [$0808], sp                                 ; $425d: $08 $08 $08
	ld   [$0a0a], sp                                 ; $4260: $08 $0a $0a
	ld   a, [bc]                                     ; $4263: $0a
	ld   a, [bc]                                     ; $4264: $0a
	ld   [$0808], sp                                 ; $4265: $08 $08 $08
	ld   [$0808], sp                                 ; $4268: $08 $08 $08
	ld   [$0808], sp                                 ; $426b: $08 $08 $08
	ld   [$0808], sp                                 ; $426e: $08 $08 $08
	ld   [$2808], sp                                 ; $4271: $08 $08 $28
	ld   [$0808], sp                                 ; $4274: $08 $08 $08
	ld   [$0808], sp                                 ; $4277: $08 $08 $08
	ld   [$0808], sp                                 ; $427a: $08 $08 $08
	ld   [$0808], sp                                 ; $427d: $08 $08 $08
	ld   [$0a0a], sp                                 ; $4280: $08 $0a $0a
	ld   a, [bc]                                     ; $4283: $0a
	ld   a, [bc]                                     ; $4284: $0a
	ld   [$0808], sp                                 ; $4285: $08 $08 $08
	ld   [$0808], sp                                 ; $4288: $08 $08 $08
	ld   [$0808], sp                                 ; $428b: $08 $08 $08
	ld   [$0808], sp                                 ; $428e: $08 $08 $08
	ld   [$2808], sp                                 ; $4291: $08 $08 $28
	ld   [$0808], sp                                 ; $4294: $08 $08 $08
	ld   [$0808], sp                                 ; $4297: $08 $08 $08
	ld   [$0808], sp                                 ; $429a: $08 $08 $08
	ld   [$0808], sp                                 ; $429d: $08 $08 $08
	ld   c, b                                        ; $42a0: $48
	ld   a, [bc]                                     ; $42a1: $0a
	ld   a, [bc]                                     ; $42a2: $0a
	ld   a, [bc]                                     ; $42a3: $0a
	ld   a, [bc]                                     ; $42a4: $0a
	ld   [$0808], sp                                 ; $42a5: $08 $08 $08
	ld   [$0808], sp                                 ; $42a8: $08 $08 $08
	ld   [$0808], sp                                 ; $42ab: $08 $08 $08
	ld   [$0808], sp                                 ; $42ae: $08 $08 $08
	ld   [$6808], sp                                 ; $42b1: $08 $08 $68
	ld   [$0808], sp                                 ; $42b4: $08 $08 $08
	ld   [$0808], sp                                 ; $42b7: $08 $08 $08
	ld   [$0808], sp                                 ; $42ba: $08 $08 $08
	ld   [$0808], sp                                 ; $42bd: $08 $08 $08
	ld   [$0a0a], sp                                 ; $42c0: $08 $0a $0a
	ld   a, [bc]                                     ; $42c3: $0a
	ld   a, [bc]                                     ; $42c4: $0a
	ld   [$0808], sp                                 ; $42c5: $08 $08 $08
	ld   [$0808], sp                                 ; $42c8: $08 $08 $08
	ld   [$0808], sp                                 ; $42cb: $08 $08 $08
	ld   [$0808], sp                                 ; $42ce: $08 $08 $08
	ld   [$2808], sp                                 ; $42d1: $08 $08 $28
	ld   [$0808], sp                                 ; $42d4: $08 $08 $08
	ld   [$0808], sp                                 ; $42d7: $08 $08 $08
	ld   [$0808], sp                                 ; $42da: $08 $08 $08
	ld   [$0808], sp                                 ; $42dd: $08 $08 $08
	ld   [$0808], sp                                 ; $42e0: $08 $08 $08
	ld   [$4808], sp                                 ; $42e3: $08 $08 $48
	ld   c, b                                        ; $42e6: $48
	ld   c, b                                        ; $42e7: $48
	ld   c, b                                        ; $42e8: $48
	ld   c, b                                        ; $42e9: $48
	ld   c, b                                        ; $42ea: $48
	ld   c, b                                        ; $42eb: $48
	ld   c, b                                        ; $42ec: $48
	ld   c, b                                        ; $42ed: $48
	ld   l, b                                        ; $42ee: $68
	jr   z, @+$2a                                    ; $42ef: $28 $28

	jr   z, jr_00d_431b                              ; $42f1: $28 $28

	jr   z, @+$0a                                    ; $42f3: $28 $08

	ld   [$0808], sp                                 ; $42f5: $08 $08 $08
	ld   [$0808], sp                                 ; $42f8: $08 $08 $08
	ld   [$0808], sp                                 ; $42fb: $08 $08 $08
	ld   [$ff08], sp                                 ; $42fe: $08 $08 $ff
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	add  b                                           ; $4303: $80
	rst  $38                                         ; $4304: $ff
	cp   a                                           ; $4305: $bf
	ldh  [hScriptOpcodeParams], a                                    ; $4306: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4308: $e0 $a0
	rst  $20                                         ; $430a: $e7
	and  a                                           ; $430b: $a7
	rst  $20                                         ; $430c: $e7
	and  h                                           ; $430d: $a4
	rst  $20                                         ; $430e: $e7
	cp   l                                           ; $430f: $bd
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	add  b                                           ; $4313: $80
	rst  $38                                         ; $4314: $ff
	cp   a                                           ; $4315: $bf
	ldh  [hScriptOpcodeParams], a                                    ; $4316: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4318: $e0 $a0
	rst  $20                                         ; $431a: $e7

jr_00d_431b:
	and  a                                           ; $431b: $a7
	rst  $20                                         ; $431c: $e7
	cp   h                                           ; $431d: $bc
	rst  $20                                         ; $431e: $e7
	cp   l                                           ; $431f: $bd
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	rst  $38                                         ; $4322: $ff
	add  b                                           ; $4323: $80
	rst  $38                                         ; $4324: $ff
	cp   a                                           ; $4325: $bf
	ldh  [hScriptOpcodeParams], a                                    ; $4326: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4328: $e0 $a0
	rst  $20                                         ; $432a: $e7
	cp   a                                           ; $432b: $bf
	rst  $20                                         ; $432c: $e7
	cp   h                                           ; $432d: $bc
	rst  $20                                         ; $432e: $e7
	cp   l                                           ; $432f: $bd
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	add  b                                           ; $4333: $80
	rst  $38                                         ; $4334: $ff
	cp   a                                           ; $4335: $bf
	ldh  [hScriptOpcodeParams], a                                    ; $4336: $e0 $a0
	ldh  [$b8], a                                    ; $4338: $e0 $b8
	rst  $20                                         ; $433a: $e7
	cp   a                                           ; $433b: $bf
	rst  $20                                         ; $433c: $e7
	cp   h                                           ; $433d: $bc
	rst  $20                                         ; $433e: $e7
	cp   l                                           ; $433f: $bd
	rst  $38                                         ; $4340: $ff
	rst  $38                                         ; $4341: $ff
	rst  $38                                         ; $4342: $ff
	add  b                                           ; $4343: $80
	rst  $38                                         ; $4344: $ff
	cp   a                                           ; $4345: $bf
	ldh  [$b8], a                                    ; $4346: $e0 $b8
	ldh  [$b8], a                                    ; $4348: $e0 $b8
	rst  $20                                         ; $434a: $e7
	cp   a                                           ; $434b: $bf
	rst  $20                                         ; $434c: $e7
	cp   h                                           ; $434d: $bc
	rst  $20                                         ; $434e: $e7
	cp   l                                           ; $434f: $bd
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	rst  $38                                         ; $4352: $ff
	add  b                                           ; $4353: $80
	rst  $38                                         ; $4354: $ff
	cp   a                                           ; $4355: $bf
	ldh  [$bc], a                                    ; $4356: $e0 $bc
	ldh  [$bc], a                                    ; $4358: $e0 $bc
	rst  $20                                         ; $435a: $e7
	cp   a                                           ; $435b: $bf
	rst  $20                                         ; $435c: $e7
	cp   h                                           ; $435d: $bc
	rst  $20                                         ; $435e: $e7
	cp   l                                           ; $435f: $bd
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	rst  $38                                         ; $4362: $ff
	add  b                                           ; $4363: $80
	rst  $38                                         ; $4364: $ff
	cp   a                                           ; $4365: $bf
	ldh  [$be], a                                    ; $4366: $e0 $be
	ldh  [$be], a                                    ; $4368: $e0 $be
	rst  $20                                         ; $436a: $e7
	cp   a                                           ; $436b: $bf
	rst  $20                                         ; $436c: $e7
	cp   h                                           ; $436d: $bc
	rst  $20                                         ; $436e: $e7
	cp   l                                           ; $436f: $bd
	rst  $38                                         ; $4370: $ff
	rst  $38                                         ; $4371: $ff
	rst  $38                                         ; $4372: $ff
	add  b                                           ; $4373: $80
	rst  $38                                         ; $4374: $ff
	cp   a                                           ; $4375: $bf
	ldh  [$bf], a                                    ; $4376: $e0 $bf
	ldh  [$bf], a                                    ; $4378: $e0 $bf
	rst  $20                                         ; $437a: $e7
	cp   a                                           ; $437b: $bf
	rst  $20                                         ; $437c: $e7
	cp   h                                           ; $437d: $bc
	rst  $20                                         ; $437e: $e7
	cp   l                                           ; $437f: $bd
	ldh  [$e0], a                                    ; $4380: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $4382: $f0 $10
	rst  $38                                         ; $4384: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4385: $cf
	inc  a                                           ; $4386: $3c
	and  h                                           ; $4387: $a4
	ld   e, $92                                      ; $4388: $1e $92
	rst  $38                                         ; $438a: $ff
	ld   sp, hl                                      ; $438b: $f9
	rst  $38                                         ; $438c: $ff
	inc  b                                           ; $438d: $04
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	ldh  [$e0], a                                    ; $4390: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $4392: $f0 $10
	rst  $38                                         ; $4394: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4395: $cf
	inc  a                                           ; $4396: $3c
	db   $e4                                         ; $4397: $e4
	ld   e, $d2                                      ; $4398: $1e $d2
	rst  $38                                         ; $439a: $ff
	ld   sp, hl                                      ; $439b: $f9
	rst  $38                                         ; $439c: $ff
	inc  b                                           ; $439d: $04
	rst  $38                                         ; $439e: $ff
	rst  $38                                         ; $439f: $ff
	ldh  [$e0], a                                    ; $43a0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43a2: $f0 $10
	rst  $38                                         ; $43a4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a5: $cf
	inc  a                                           ; $43a6: $3c
	db   $e4                                         ; $43a7: $e4
	ld   e, $f2                                      ; $43a8: $1e $f2
	rst  $38                                         ; $43aa: $ff
	ld   sp, hl                                      ; $43ab: $f9
	rst  $38                                         ; $43ac: $ff
	inc  b                                           ; $43ad: $04
	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	ldh  [$e0], a                                    ; $43b0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43b2: $f0 $10
	rst  $38                                         ; $43b4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43b5: $cf
	inc  a                                           ; $43b6: $3c
	db   $e4                                         ; $43b7: $e4
	ld   e, $f2                                      ; $43b8: $1e $f2
	rst  $38                                         ; $43ba: $ff
	ld   sp, hl                                      ; $43bb: $f9
	rst  $38                                         ; $43bc: $ff
	inc  b                                           ; $43bd: $04
	rst  $38                                         ; $43be: $ff
	rst  $38                                         ; $43bf: $ff
	ldh  [$e0], a                                    ; $43c0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43c2: $f0 $10
	rst  $38                                         ; $43c4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c5: $cf
	inc  a                                           ; $43c6: $3c
	db   $e4                                         ; $43c7: $e4
	ld   e, $f2                                      ; $43c8: $1e $f2
	rst  $38                                         ; $43ca: $ff
	ld   sp, hl                                      ; $43cb: $f9
	rst  $38                                         ; $43cc: $ff
	inc  b                                           ; $43cd: $04
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	ldh  [$e0], a                                    ; $43d0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43d2: $f0 $10
	rst  $38                                         ; $43d4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d5: $cf
	inc  a                                           ; $43d6: $3c
	db   $e4                                         ; $43d7: $e4
	ld   e, $f2                                      ; $43d8: $1e $f2
	rst  $38                                         ; $43da: $ff
	ld   sp, hl                                      ; $43db: $f9
	rst  $38                                         ; $43dc: $ff
	inc  b                                           ; $43dd: $04
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	ldh  [$e0], a                                    ; $43e0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43e2: $f0 $10
	rst  $38                                         ; $43e4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43e5: $cf
	inc  a                                           ; $43e6: $3c
	and  $1e                                         ; $43e7: $e6 $1e
	ldh  a, [c]                                      ; $43e9: $f2
	rst  $38                                         ; $43ea: $ff
	ld   sp, hl                                      ; $43eb: $f9
	rst  $38                                         ; $43ec: $ff
	inc  b                                           ; $43ed: $04
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	ldh  [$e0], a                                    ; $43f0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $43f2: $f0 $10
	rst  $38                                         ; $43f4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f5: $cf
	inc  a                                           ; $43f6: $3c
	rst  $20                                         ; $43f7: $e7
	ld   e, $f3                                      ; $43f8: $1e $f3
	rst  $38                                         ; $43fa: $ff
	ld   sp, hl                                      ; $43fb: $f9
	rst  $38                                         ; $43fc: $ff
	inc  b                                           ; $43fd: $04
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	rlca                                             ; $4400: $07
	rlca                                             ; $4401: $07
	rrca                                             ; $4402: $0f
	ld   [$f3ff], sp                                 ; $4403: $08 $ff $f3
	inc  a                                           ; $4406: $3c
	and  h                                           ; $4407: $a4
	ld   a, b                                        ; $4408: $78
	ret  z                                           ; $4409: $c8

	rst  $38                                         ; $440a: $ff
	sbc  a                                           ; $440b: $9f
	rst  $38                                         ; $440c: $ff
	jr   nz, @+$01                                   ; $440d: $20 $ff

	rst  $38                                         ; $440f: $ff
	rlca                                             ; $4410: $07
	rlca                                             ; $4411: $07
	rrca                                             ; $4412: $0f
	ld   [$f3ff], sp                                 ; $4413: $08 $ff $f3
	inc  a                                           ; $4416: $3c
	db   $e4                                         ; $4417: $e4
	ld   a, b                                        ; $4418: $78
	ret  z                                           ; $4419: $c8

	rst  $38                                         ; $441a: $ff
	sbc  a                                           ; $441b: $9f
	rst  $38                                         ; $441c: $ff
	jr   nz, @+$01                                   ; $441d: $20 $ff

	rst  $38                                         ; $441f: $ff
	rlca                                             ; $4420: $07
	rlca                                             ; $4421: $07
	rrca                                             ; $4422: $0f
	ld   [$f3ff], sp                                 ; $4423: $08 $ff $f3
	inc  a                                           ; $4426: $3c
	db   $e4                                         ; $4427: $e4
	ld   a, b                                        ; $4428: $78
	ret  z                                           ; $4429: $c8

	rst  $38                                         ; $442a: $ff
	sbc  a                                           ; $442b: $9f
	rst  $38                                         ; $442c: $ff
	jr   nz, @+$01                                   ; $442d: $20 $ff

	rst  $38                                         ; $442f: $ff
	rlca                                             ; $4430: $07
	rlca                                             ; $4431: $07
	rrca                                             ; $4432: $0f
	ld   [$f3ff], sp                                 ; $4433: $08 $ff $f3
	inc  a                                           ; $4436: $3c
	db   $e4                                         ; $4437: $e4
	ld   a, b                                        ; $4438: $78
	ret  z                                           ; $4439: $c8

	rst  $38                                         ; $443a: $ff
	sbc  a                                           ; $443b: $9f
	rst  $38                                         ; $443c: $ff
	jr   nz, @+$01                                   ; $443d: $20 $ff

	rst  $38                                         ; $443f: $ff
	rlca                                             ; $4440: $07
	rlca                                             ; $4441: $07
	rrca                                             ; $4442: $0f
	ld   [$f3ff], sp                                 ; $4443: $08 $ff $f3
	inc  a                                           ; $4446: $3c
	db   $e4                                         ; $4447: $e4
	ld   a, b                                        ; $4448: $78
	ret  z                                           ; $4449: $c8

	rst  $38                                         ; $444a: $ff
	sbc  a                                           ; $444b: $9f
	rst  $38                                         ; $444c: $ff
	jr   nz, @+$01                                   ; $444d: $20 $ff

	rst  $38                                         ; $444f: $ff
	rlca                                             ; $4450: $07
	rlca                                             ; $4451: $07
	rrca                                             ; $4452: $0f
	ld   [$f3ff], sp                                 ; $4453: $08 $ff $f3
	inc  a                                           ; $4456: $3c
	db   $e4                                         ; $4457: $e4
	ld   a, b                                        ; $4458: $78
	call z, $9fff                                    ; $4459: $cc $ff $9f
	rst  $38                                         ; $445c: $ff
	jr   nz, @+$01                                   ; $445d: $20 $ff

	rst  $38                                         ; $445f: $ff
	rlca                                             ; $4460: $07
	rlca                                             ; $4461: $07
	rrca                                             ; $4462: $0f
	ld   [$f3ff], sp                                 ; $4463: $08 $ff $f3
	inc  a                                           ; $4466: $3c
	and  $78                                         ; $4467: $e6 $78
	adc  $ff                                         ; $4469: $ce $ff
	sbc  a                                           ; $446b: $9f
	rst  $38                                         ; $446c: $ff
	jr   nz, @+$01                                   ; $446d: $20 $ff

	rst  $38                                         ; $446f: $ff
	rlca                                             ; $4470: $07
	rlca                                             ; $4471: $07
	rrca                                             ; $4472: $0f
	ld   [$f3ff], sp                                 ; $4473: $08 $ff $f3
	inc  a                                           ; $4476: $3c
	rst  $20                                         ; $4477: $e7
	ld   a, b                                        ; $4478: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4479: $cf
	rst  $38                                         ; $447a: $ff
	sbc  a                                           ; $447b: $9f
	rst  $38                                         ; $447c: $ff
	jr   nz, @+$01                                   ; $447d: $20 $ff

	rst  $38                                         ; $447f: $ff
	cp   $fe                                         ; $4480: $fe $fe
	rst  $38                                         ; $4482: $ff
	inc  bc                                          ; $4483: $03
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	nop                                              ; $4486: $00
	add  b                                           ; $4487: $80
	nop                                              ; $4488: $00
	add  b                                           ; $4489: $80
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	nop                                              ; $448d: $00
	rst  $38                                         ; $448e: $ff
	rst  $38                                         ; $448f: $ff
	cp   $fe                                         ; $4490: $fe $fe
	rst  $38                                         ; $4492: $ff
	inc  bc                                          ; $4493: $03
	rst  $38                                         ; $4494: $ff
	rst  $38                                         ; $4495: $ff
	nop                                              ; $4496: $00
	ret  nz                                          ; $4497: $c0

	nop                                              ; $4498: $00
	ret  nz                                          ; $4499: $c0

	rst  $38                                         ; $449a: $ff
	rst  $38                                         ; $449b: $ff
	rst  $38                                         ; $449c: $ff
	nop                                              ; $449d: $00
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	cp   $fe                                         ; $44a0: $fe $fe
	rst  $38                                         ; $44a2: $ff
	inc  bc                                          ; $44a3: $03
	rst  $38                                         ; $44a4: $ff
	rst  $38                                         ; $44a5: $ff
	nop                                              ; $44a6: $00
	ldh  [rP1], a                                    ; $44a7: $e0 $00
	ldh  [rIE], a                                    ; $44a9: $e0 $ff
	rst  $38                                         ; $44ab: $ff
	rst  $38                                         ; $44ac: $ff
	nop                                              ; $44ad: $00
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	cp   $fe                                         ; $44b0: $fe $fe
	rst  $38                                         ; $44b2: $ff
	inc  bc                                          ; $44b3: $03
	rst  $38                                         ; $44b4: $ff
	rst  $38                                         ; $44b5: $ff
	nop                                              ; $44b6: $00
	ldh  a, [rP1]                                    ; $44b7: $f0 $00
	ldh  a, [rIE]                                    ; $44b9: $f0 $ff
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	nop                                              ; $44bd: $00
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	cp   $fe                                         ; $44c0: $fe $fe
	rst  $38                                         ; $44c2: $ff
	inc  bc                                          ; $44c3: $03
	rst  $38                                         ; $44c4: $ff
	rst  $38                                         ; $44c5: $ff
	nop                                              ; $44c6: $00
	ld   hl, sp+$00                                  ; $44c7: $f8 $00
	ld   hl, sp-$01                                  ; $44c9: $f8 $ff
	rst  $38                                         ; $44cb: $ff
	rst  $38                                         ; $44cc: $ff
	nop                                              ; $44cd: $00
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	cp   $fe                                         ; $44d0: $fe $fe
	rst  $38                                         ; $44d2: $ff
	inc  bc                                          ; $44d3: $03
	rst  $38                                         ; $44d4: $ff
	rst  $38                                         ; $44d5: $ff
	nop                                              ; $44d6: $00
	db   $fc                                         ; $44d7: $fc
	nop                                              ; $44d8: $00
	db   $fc                                         ; $44d9: $fc
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	rst  $38                                         ; $44dc: $ff
	nop                                              ; $44dd: $00
	rst  $38                                         ; $44de: $ff
	rst  $38                                         ; $44df: $ff
	cp   $fe                                         ; $44e0: $fe $fe
	rst  $38                                         ; $44e2: $ff
	inc  bc                                          ; $44e3: $03
	rst  $38                                         ; $44e4: $ff
	rst  $38                                         ; $44e5: $ff
	nop                                              ; $44e6: $00
	cp   $00                                         ; $44e7: $fe $00
	cp   $ff                                         ; $44e9: $fe $ff
	rst  $38                                         ; $44eb: $ff
	rst  $38                                         ; $44ec: $ff
	nop                                              ; $44ed: $00
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	cp   $fe                                         ; $44f0: $fe $fe
	rst  $38                                         ; $44f2: $ff
	inc  bc                                          ; $44f3: $03
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	nop                                              ; $44f6: $00
	rst  $38                                         ; $44f7: $ff
	nop                                              ; $44f8: $00
	rst  $38                                         ; $44f9: $ff
	rst  $38                                         ; $44fa: $ff
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	nop                                              ; $44fd: $00
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	nop                                              ; $4506: $00
	add  b                                           ; $4507: $80
	nop                                              ; $4508: $00
	add  b                                           ; $4509: $80
	rst  $38                                         ; $450a: $ff
	rst  $38                                         ; $450b: $ff
	rst  $38                                         ; $450c: $ff
	nop                                              ; $450d: $00
	rst  $38                                         ; $450e: $ff
	rst  $38                                         ; $450f: $ff
	nop                                              ; $4510: $00
	nop                                              ; $4511: $00
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	nop                                              ; $4516: $00
	ret  nz                                          ; $4517: $c0

	nop                                              ; $4518: $00
	ret  nz                                          ; $4519: $c0

	rst  $38                                         ; $451a: $ff
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	nop                                              ; $451d: $00
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	nop                                              ; $4520: $00
	nop                                              ; $4521: $00
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	rst  $38                                         ; $4524: $ff
	rst  $38                                         ; $4525: $ff
	nop                                              ; $4526: $00
	ldh  [rP1], a                                    ; $4527: $e0 $00
	ldh  [rIE], a                                    ; $4529: $e0 $ff
	rst  $38                                         ; $452b: $ff
	rst  $38                                         ; $452c: $ff
	nop                                              ; $452d: $00
	rst  $38                                         ; $452e: $ff
	rst  $38                                         ; $452f: $ff
	nop                                              ; $4530: $00
	nop                                              ; $4531: $00
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	nop                                              ; $4536: $00
	ldh  a, [rP1]                                    ; $4537: $f0 $00
	ldh  a, [rIE]                                    ; $4539: $f0 $ff
	rst  $38                                         ; $453b: $ff
	rst  $38                                         ; $453c: $ff
	nop                                              ; $453d: $00
	rst  $38                                         ; $453e: $ff
	rst  $38                                         ; $453f: $ff
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	nop                                              ; $4546: $00
	ld   hl, sp+$00                                  ; $4547: $f8 $00
	ld   hl, sp-$01                                  ; $4549: $f8 $ff
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	nop                                              ; $454d: $00
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	nop                                              ; $4550: $00
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	rst  $38                                         ; $4554: $ff
	rst  $38                                         ; $4555: $ff
	nop                                              ; $4556: $00
	db   $fc                                         ; $4557: $fc
	nop                                              ; $4558: $00
	db   $fc                                         ; $4559: $fc
	rst  $38                                         ; $455a: $ff
	rst  $38                                         ; $455b: $ff
	rst  $38                                         ; $455c: $ff
	nop                                              ; $455d: $00
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	rst  $38                                         ; $4564: $ff
	rst  $38                                         ; $4565: $ff
	nop                                              ; $4566: $00
	cp   $00                                         ; $4567: $fe $00
	cp   $ff                                         ; $4569: $fe $ff
	rst  $38                                         ; $456b: $ff
	rst  $38                                         ; $456c: $ff
	nop                                              ; $456d: $00
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	nop                                              ; $4570: $00
	nop                                              ; $4571: $00
	nop                                              ; $4572: $00
	nop                                              ; $4573: $00
	rst  $38                                         ; $4574: $ff
	rst  $38                                         ; $4575: $ff
	nop                                              ; $4576: $00
	rst  $38                                         ; $4577: $ff
	nop                                              ; $4578: $00
	rst  $38                                         ; $4579: $ff
	rst  $38                                         ; $457a: $ff
	rst  $38                                         ; $457b: $ff
	rst  $38                                         ; $457c: $ff
	nop                                              ; $457d: $00
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	rra                                              ; $4580: $1f
	rra                                              ; $4581: $1f
	ccf                                              ; $4582: $3f
	jr   nc, @+$01                                   ; $4583: $30 $ff

	rst  $38                                         ; $4585: $ff
	nop                                              ; $4586: $00
	add  b                                           ; $4587: $80
	nop                                              ; $4588: $00
	add  b                                           ; $4589: $80
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	rst  $38                                         ; $458c: $ff
	nop                                              ; $458d: $00
	rst  $38                                         ; $458e: $ff
	rst  $38                                         ; $458f: $ff
	rra                                              ; $4590: $1f
	rra                                              ; $4591: $1f
	ccf                                              ; $4592: $3f
	jr   nc, @+$01                                   ; $4593: $30 $ff

	rst  $38                                         ; $4595: $ff
	nop                                              ; $4596: $00
	ret  nz                                          ; $4597: $c0

	nop                                              ; $4598: $00
	ret  nz                                          ; $4599: $c0

	rst  $38                                         ; $459a: $ff
	rst  $38                                         ; $459b: $ff
	rst  $38                                         ; $459c: $ff
	nop                                              ; $459d: $00
	rst  $38                                         ; $459e: $ff
	rst  $38                                         ; $459f: $ff
	rra                                              ; $45a0: $1f
	rra                                              ; $45a1: $1f
	ccf                                              ; $45a2: $3f
	jr   nc, @+$01                                   ; $45a3: $30 $ff

	rst  $38                                         ; $45a5: $ff
	nop                                              ; $45a6: $00
	ldh  [rP1], a                                    ; $45a7: $e0 $00
	ldh  [rIE], a                                    ; $45a9: $e0 $ff
	rst  $38                                         ; $45ab: $ff
	rst  $38                                         ; $45ac: $ff
	nop                                              ; $45ad: $00
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	rra                                              ; $45b0: $1f
	rra                                              ; $45b1: $1f
	ccf                                              ; $45b2: $3f
	jr   nc, @+$01                                   ; $45b3: $30 $ff

	rst  $38                                         ; $45b5: $ff
	nop                                              ; $45b6: $00
	ldh  a, [rP1]                                    ; $45b7: $f0 $00
	ldh  a, [rIE]                                    ; $45b9: $f0 $ff
	rst  $38                                         ; $45bb: $ff
	rst  $38                                         ; $45bc: $ff
	nop                                              ; $45bd: $00
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	rra                                              ; $45c0: $1f
	rra                                              ; $45c1: $1f
	ccf                                              ; $45c2: $3f
	jr   nc, @+$01                                   ; $45c3: $30 $ff

	rst  $38                                         ; $45c5: $ff
	nop                                              ; $45c6: $00
	ld   hl, sp+$00                                  ; $45c7: $f8 $00
	ld   hl, sp-$01                                  ; $45c9: $f8 $ff
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	nop                                              ; $45cd: $00
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	rra                                              ; $45d0: $1f
	rra                                              ; $45d1: $1f
	ccf                                              ; $45d2: $3f
	jr   nc, @+$01                                   ; $45d3: $30 $ff

	rst  $38                                         ; $45d5: $ff
	nop                                              ; $45d6: $00
	db   $fc                                         ; $45d7: $fc
	nop                                              ; $45d8: $00
	db   $fc                                         ; $45d9: $fc
	rst  $38                                         ; $45da: $ff
	rst  $38                                         ; $45db: $ff
	rst  $38                                         ; $45dc: $ff
	nop                                              ; $45dd: $00
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	rra                                              ; $45e0: $1f
	rra                                              ; $45e1: $1f
	ccf                                              ; $45e2: $3f
	jr   nc, @+$01                                   ; $45e3: $30 $ff

	rst  $38                                         ; $45e5: $ff
	nop                                              ; $45e6: $00
	cp   $00                                         ; $45e7: $fe $00
	cp   $ff                                         ; $45e9: $fe $ff
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	nop                                              ; $45ed: $00
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	rra                                              ; $45f0: $1f
	rra                                              ; $45f1: $1f
	ccf                                              ; $45f2: $3f
	jr   nc, @+$01                                   ; $45f3: $30 $ff

	rst  $38                                         ; $45f5: $ff
	nop                                              ; $45f6: $00
	rst  $38                                         ; $45f7: $ff
	nop                                              ; $45f8: $00
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	rst  $38                                         ; $45fb: $ff
	rst  $38                                         ; $45fc: $ff
	nop                                              ; $45fd: $00
	rst  $38                                         ; $45fe: $ff
	rst  $38                                         ; $45ff: $ff
	ld   hl, sp-$08                                  ; $4600: $f8 $f8
	db   $fc                                         ; $4602: $fc
	inc  b                                           ; $4603: $04
	rst  $38                                         ; $4604: $ff
	di                                               ; $4605: $f3
	rrca                                             ; $4606: $0f
	adc  c                                           ; $4607: $89
	rlca                                             ; $4608: $07
	add  h                                           ; $4609: $84
	rst  $38                                         ; $460a: $ff
	cp   $ff                                         ; $460b: $fe $ff
	ld   bc, $ffff                                   ; $460d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4610: $f8 $f8
	db   $fc                                         ; $4612: $fc
	inc  b                                           ; $4613: $04
	rst  $38                                         ; $4614: $ff
	di                                               ; $4615: $f3
	rrca                                             ; $4616: $0f
	ret                                              ; $4617: $c9


	rlca                                             ; $4618: $07
	call nz, $feff                                   ; $4619: $c4 $ff $fe
	rst  $38                                         ; $461c: $ff
	ld   bc, $ffff                                   ; $461d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4620: $f8 $f8
	db   $fc                                         ; $4622: $fc
	inc  b                                           ; $4623: $04
	rst  $38                                         ; $4624: $ff
	di                                               ; $4625: $f3
	rrca                                             ; $4626: $0f
	jp   hl                                          ; $4627: $e9


	rlca                                             ; $4628: $07
	db   $e4                                         ; $4629: $e4
	rst  $38                                         ; $462a: $ff
	cp   $ff                                         ; $462b: $fe $ff
	ld   bc, $ffff                                   ; $462d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4630: $f8 $f8
	db   $fc                                         ; $4632: $fc
	inc  b                                           ; $4633: $04
	rst  $38                                         ; $4634: $ff
	di                                               ; $4635: $f3
	rrca                                             ; $4636: $0f
	ld   sp, hl                                      ; $4637: $f9
	rlca                                             ; $4638: $07
	db   $f4                                         ; $4639: $f4
	rst  $38                                         ; $463a: $ff
	cp   $ff                                         ; $463b: $fe $ff
	ld   bc, $ffff                                   ; $463d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4640: $f8 $f8
	db   $fc                                         ; $4642: $fc
	inc  b                                           ; $4643: $04
	rst  $38                                         ; $4644: $ff
	di                                               ; $4645: $f3
	rrca                                             ; $4646: $0f
	ld   sp, hl                                      ; $4647: $f9
	rlca                                             ; $4648: $07
	db   $fc                                         ; $4649: $fc
	rst  $38                                         ; $464a: $ff
	cp   $ff                                         ; $464b: $fe $ff
	ld   bc, $ffff                                   ; $464d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4650: $f8 $f8
	db   $fc                                         ; $4652: $fc
	inc  b                                           ; $4653: $04
	rst  $38                                         ; $4654: $ff
	di                                               ; $4655: $f3
	rrca                                             ; $4656: $0f
	ld   sp, hl                                      ; $4657: $f9
	rlca                                             ; $4658: $07
	db   $fc                                         ; $4659: $fc
	rst  $38                                         ; $465a: $ff
	cp   $ff                                         ; $465b: $fe $ff
	ld   bc, $ffff                                   ; $465d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4660: $f8 $f8
	db   $fc                                         ; $4662: $fc
	inc  b                                           ; $4663: $04
	rst  $38                                         ; $4664: $ff
	di                                               ; $4665: $f3
	rrca                                             ; $4666: $0f
	ld   sp, hl                                      ; $4667: $f9
	rlca                                             ; $4668: $07
	db   $fc                                         ; $4669: $fc
	rst  $38                                         ; $466a: $ff
	cp   $ff                                         ; $466b: $fe $ff
	ld   bc, $ffff                                   ; $466d: $01 $ff $ff
	ld   hl, sp-$08                                  ; $4670: $f8 $f8
	db   $fc                                         ; $4672: $fc
	inc  b                                           ; $4673: $04
	rst  $38                                         ; $4674: $ff
	di                                               ; $4675: $f3
	rrca                                             ; $4676: $0f
	ld   sp, hl                                      ; $4677: $f9
	rlca                                             ; $4678: $07
	db   $fc                                         ; $4679: $fc
	rst  $38                                         ; $467a: $ff
	cp   $ff                                         ; $467b: $fe $ff
	ld   bc, $ffff                                   ; $467d: $01 $ff $ff
	ld   bc, $0301                                   ; $4680: $01 $01 $03
	ld   [bc], a                                     ; $4683: $02
	rst  $38                                         ; $4684: $ff
	db   $fc                                         ; $4685: $fc
	rrca                                             ; $4686: $0f
	adc  c                                           ; $4687: $89
	sbc  [hl]                                        ; $4688: $9e
	sub  d                                           ; $4689: $92
	rst  $38                                         ; $468a: $ff
	ld   h, a                                        ; $468b: $67
	rst  $38                                         ; $468c: $ff
	ld   [$ffff], sp                                 ; $468d: $08 $ff $ff
	ld   bc, $0301                                   ; $4690: $01 $01 $03
	ld   [bc], a                                     ; $4693: $02
	rst  $38                                         ; $4694: $ff
	db   $fc                                         ; $4695: $fc
	rrca                                             ; $4696: $0f
	ret                                              ; $4697: $c9


	sbc  [hl]                                        ; $4698: $9e
	jp   nc, $67ff                           ; $4699: $d2 $ff $67

	rst  $38                                         ; $469c: $ff
	ld   [$ffff], sp                                 ; $469d: $08 $ff $ff
	ld   bc, $0301                                   ; $46a0: $01 $01 $03
	ld   [bc], a                                     ; $46a3: $02
	rst  $38                                         ; $46a4: $ff
	db   $fc                                         ; $46a5: $fc
	rrca                                             ; $46a6: $0f
	jp   hl                                          ; $46a7: $e9


	sbc  [hl]                                        ; $46a8: $9e
	ldh  a, [c]                                      ; $46a9: $f2
	rst  $38                                         ; $46aa: $ff
	ld   h, a                                        ; $46ab: $67
	rst  $38                                         ; $46ac: $ff
	ld   [$ffff], sp                                 ; $46ad: $08 $ff $ff
	ld   bc, $0301                                   ; $46b0: $01 $01 $03
	ld   [bc], a                                     ; $46b3: $02
	rst  $38                                         ; $46b4: $ff
	db   $fc                                         ; $46b5: $fc
	rrca                                             ; $46b6: $0f
	ld   sp, hl                                      ; $46b7: $f9
	sbc  [hl]                                        ; $46b8: $9e
	ldh  a, [c]                                      ; $46b9: $f2
	rst  $38                                         ; $46ba: $ff
	ld   h, a                                        ; $46bb: $67
	rst  $38                                         ; $46bc: $ff
	ld   [$ffff], sp                                 ; $46bd: $08 $ff $ff
	ld   bc, $0301                                   ; $46c0: $01 $01 $03
	ld   [bc], a                                     ; $46c3: $02
	rst  $38                                         ; $46c4: $ff
	db   $fc                                         ; $46c5: $fc
	rrca                                             ; $46c6: $0f
	ld   sp, hl                                      ; $46c7: $f9
	sbc  [hl]                                        ; $46c8: $9e
	ldh  a, [c]                                      ; $46c9: $f2
	rst  $38                                         ; $46ca: $ff
	ld   h, a                                        ; $46cb: $67
	rst  $38                                         ; $46cc: $ff
	ld   [$ffff], sp                                 ; $46cd: $08 $ff $ff
	ld   bc, $0301                                   ; $46d0: $01 $01 $03
	ld   [bc], a                                     ; $46d3: $02
	rst  $38                                         ; $46d4: $ff
	db   $fc                                         ; $46d5: $fc
	rrca                                             ; $46d6: $0f
	ld   sp, hl                                      ; $46d7: $f9
	sbc  [hl]                                        ; $46d8: $9e
	ldh  a, [c]                                      ; $46d9: $f2
	rst  $38                                         ; $46da: $ff
	ld   h, a                                        ; $46db: $67
	rst  $38                                         ; $46dc: $ff
	ld   [$ffff], sp                                 ; $46dd: $08 $ff $ff
	ld   bc, $0301                                   ; $46e0: $01 $01 $03
	ld   [bc], a                                     ; $46e3: $02
	rst  $38                                         ; $46e4: $ff
	db   $fc                                         ; $46e5: $fc
	rrca                                             ; $46e6: $0f
	ld   sp, hl                                      ; $46e7: $f9
	sbc  [hl]                                        ; $46e8: $9e
	ldh  a, [c]                                      ; $46e9: $f2
	rst  $38                                         ; $46ea: $ff
	ld   h, a                                        ; $46eb: $67
	rst  $38                                         ; $46ec: $ff
	ld   [$ffff], sp                                 ; $46ed: $08 $ff $ff
	ld   bc, $0301                                   ; $46f0: $01 $01 $03
	ld   [bc], a                                     ; $46f3: $02
	rst  $38                                         ; $46f4: $ff
	db   $fc                                         ; $46f5: $fc
	rrca                                             ; $46f6: $0f
	ld   sp, hl                                      ; $46f7: $f9
	sbc  [hl]                                        ; $46f8: $9e
	di                                               ; $46f9: $f3
	rst  $38                                         ; $46fa: $ff
	ld   h, a                                        ; $46fb: $67
	rst  $38                                         ; $46fc: $ff
	ld   [$ffff], sp                                 ; $46fd: $08 $ff $ff
	rst  $38                                         ; $4700: $ff
	rst  $38                                         ; $4701: $ff
	rst  $38                                         ; $4702: $ff
	nop                                              ; $4703: $00
	rst  $38                                         ; $4704: $ff
	cp   $01                                         ; $4705: $fe $01
	add  c                                           ; $4707: $81
	nop                                              ; $4708: $00
	add  b                                           ; $4709: $80
	rst  $38                                         ; $470a: $ff
	rst  $38                                         ; $470b: $ff
	rst  $38                                         ; $470c: $ff
	nop                                              ; $470d: $00
	rst  $38                                         ; $470e: $ff
	rst  $38                                         ; $470f: $ff
	rst  $38                                         ; $4710: $ff
	rst  $38                                         ; $4711: $ff
	rst  $38                                         ; $4712: $ff
	nop                                              ; $4713: $00
	rst  $38                                         ; $4714: $ff
	cp   $01                                         ; $4715: $fe $01
	pop  bc                                          ; $4717: $c1
	nop                                              ; $4718: $00
	ret  nz                                          ; $4719: $c0

	rst  $38                                         ; $471a: $ff
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	nop                                              ; $471d: $00
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	rst  $38                                         ; $4722: $ff
	nop                                              ; $4723: $00
	rst  $38                                         ; $4724: $ff
	cp   $01                                         ; $4725: $fe $01
	pop  hl                                          ; $4727: $e1
	nop                                              ; $4728: $00
	ldh  [rIE], a                                    ; $4729: $e0 $ff
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	nop                                              ; $472d: $00
	rst  $38                                         ; $472e: $ff
	rst  $38                                         ; $472f: $ff
	rst  $38                                         ; $4730: $ff
	rst  $38                                         ; $4731: $ff
	rst  $38                                         ; $4732: $ff
	nop                                              ; $4733: $00
	rst  $38                                         ; $4734: $ff
	cp   $01                                         ; $4735: $fe $01
	pop  af                                          ; $4737: $f1
	nop                                              ; $4738: $00
	ldh  a, [rIE]                                    ; $4739: $f0 $ff
	rst  $38                                         ; $473b: $ff
	rst  $38                                         ; $473c: $ff
	nop                                              ; $473d: $00
	rst  $38                                         ; $473e: $ff
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	rst  $38                                         ; $4741: $ff
	rst  $38                                         ; $4742: $ff
	nop                                              ; $4743: $00
	rst  $38                                         ; $4744: $ff
	cp   $01                                         ; $4745: $fe $01
	ld   sp, hl                                      ; $4747: $f9
	nop                                              ; $4748: $00
	ld   hl, sp-$01                                  ; $4749: $f8 $ff
	rst  $38                                         ; $474b: $ff
	rst  $38                                         ; $474c: $ff
	nop                                              ; $474d: $00
	rst  $38                                         ; $474e: $ff
	rst  $38                                         ; $474f: $ff
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	rst  $38                                         ; $4752: $ff
	nop                                              ; $4753: $00
	rst  $38                                         ; $4754: $ff
	cp   $01                                         ; $4755: $fe $01
	db   $fd                                         ; $4757: $fd
	nop                                              ; $4758: $00
	db   $fc                                         ; $4759: $fc
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	nop                                              ; $475d: $00
	rst  $38                                         ; $475e: $ff
	rst  $38                                         ; $475f: $ff
	rst  $38                                         ; $4760: $ff
	rst  $38                                         ; $4761: $ff
	rst  $38                                         ; $4762: $ff
	nop                                              ; $4763: $00
	rst  $38                                         ; $4764: $ff
	cp   $01                                         ; $4765: $fe $01
	rst  $38                                         ; $4767: $ff
	nop                                              ; $4768: $00
	cp   $ff                                         ; $4769: $fe $ff
	rst  $38                                         ; $476b: $ff
	rst  $38                                         ; $476c: $ff
	nop                                              ; $476d: $00
	rst  $38                                         ; $476e: $ff
	rst  $38                                         ; $476f: $ff
	rst  $38                                         ; $4770: $ff
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	nop                                              ; $4773: $00
	rst  $38                                         ; $4774: $ff
	cp   $01                                         ; $4775: $fe $01
	rst  $38                                         ; $4777: $ff
	nop                                              ; $4778: $00
	rst  $38                                         ; $4779: $ff
	rst  $38                                         ; $477a: $ff
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	nop                                              ; $477d: $00
	rst  $38                                         ; $477e: $ff
	rst  $38                                         ; $477f: $ff
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	add  b                                           ; $4782: $80
	add  b                                           ; $4783: $80
	ld   hl, sp+$7c                                  ; $4784: $f8 $7c
	db   $e4                                         ; $4786: $e4
	inc  h                                           ; $4787: $24
	db   $f4                                         ; $4788: $f4
	sub  h                                           ; $4789: $94
	db   $fc                                         ; $478a: $fc
	call z, $24fc                                    ; $478b: $cc $fc $24
	cp   $b2                                         ; $478e: $fe $b2
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	add  b                                           ; $4792: $80
	add  b                                           ; $4793: $80
	ld   hl, sp+$7c                                  ; $4794: $f8 $7c
	db   $e4                                         ; $4796: $e4
	inc  h                                           ; $4797: $24
	db   $f4                                         ; $4798: $f4
	sub  h                                           ; $4799: $94
	db   $fc                                         ; $479a: $fc
	call z, $24fc                                    ; $479b: $cc $fc $24
	cp   $b2                                         ; $479e: $fe $b2
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	add  b                                           ; $47a2: $80
	add  b                                           ; $47a3: $80
	ld   hl, sp+$7c                                  ; $47a4: $f8 $7c
	db   $e4                                         ; $47a6: $e4
	inc  h                                           ; $47a7: $24
	db   $f4                                         ; $47a8: $f4
	sub  h                                           ; $47a9: $94
	db   $fc                                         ; $47aa: $fc
	call z, $24fc                                    ; $47ab: $cc $fc $24
	cp   $b2                                         ; $47ae: $fe $b2
	nop                                              ; $47b0: $00
	nop                                              ; $47b1: $00
	add  b                                           ; $47b2: $80
	add  b                                           ; $47b3: $80
	ld   hl, sp+$7c                                  ; $47b4: $f8 $7c
	db   $e4                                         ; $47b6: $e4
	inc  [hl]                                        ; $47b7: $34
	db   $f4                                         ; $47b8: $f4
	sub  h                                           ; $47b9: $94
	db   $fc                                         ; $47ba: $fc
	call z, $24fc                                    ; $47bb: $cc $fc $24
	cp   $b2                                         ; $47be: $fe $b2
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	add  b                                           ; $47c2: $80
	add  b                                           ; $47c3: $80
	ld   hl, sp+$7c                                  ; $47c4: $f8 $7c
	db   $e4                                         ; $47c6: $e4
	inc  a                                           ; $47c7: $3c
	db   $f4                                         ; $47c8: $f4
	sbc  h                                           ; $47c9: $9c
	db   $fc                                         ; $47ca: $fc
	call z, $24fc                                    ; $47cb: $cc $fc $24
	cp   $b2                                         ; $47ce: $fe $b2
	nop                                              ; $47d0: $00
	nop                                              ; $47d1: $00
	add  b                                           ; $47d2: $80
	add  b                                           ; $47d3: $80
	ld   hl, sp+$7c                                  ; $47d4: $f8 $7c
	db   $e4                                         ; $47d6: $e4
	inc  a                                           ; $47d7: $3c
	db   $f4                                         ; $47d8: $f4
	sbc  h                                           ; $47d9: $9c
	db   $fc                                         ; $47da: $fc
	call z, $24fc                                    ; $47db: $cc $fc $24
	cp   $b2                                         ; $47de: $fe $b2
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	add  b                                           ; $47e2: $80
	add  b                                           ; $47e3: $80
	ld   hl, sp+$7c                                  ; $47e4: $f8 $7c
	db   $e4                                         ; $47e6: $e4
	inc  a                                           ; $47e7: $3c
	db   $f4                                         ; $47e8: $f4
	sbc  h                                           ; $47e9: $9c
	db   $fc                                         ; $47ea: $fc
	call z, $24fc                                    ; $47eb: $cc $fc $24
	cp   $b2                                         ; $47ee: $fe $b2
	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	add  b                                           ; $47f2: $80
	add  b                                           ; $47f3: $80
	ld   hl, sp+$7c                                  ; $47f4: $f8 $7c
	db   $e4                                         ; $47f6: $e4
	inc  a                                           ; $47f7: $3c
	db   $f4                                         ; $47f8: $f4
	sbc  h                                           ; $47f9: $9c
	db   $fc                                         ; $47fa: $fc
	call z, $24fc                                    ; $47fb: $cc $fc $24
	cp   $b2                                         ; $47fe: $fe $b2
	rst  $28                                         ; $4800: $ef
	cp   c                                           ; $4801: $b9
	rst  $20                                         ; $4802: $e7
	and  l                                           ; $4803: $a5
	rst  $20                                         ; $4804: $e7
	and  l                                           ; $4805: $a5
	rst  $20                                         ; $4806: $e7
	and  l                                           ; $4807: $a5
	rst  $20                                         ; $4808: $e7
	and  l                                           ; $4809: $a5
	rst  $20                                         ; $480a: $e7
	and  l                                           ; $480b: $a5
	rst  $20                                         ; $480c: $e7
	and  l                                           ; $480d: $a5
	rst  $20                                         ; $480e: $e7
	and  l                                           ; $480f: $a5
	rst  $28                                         ; $4810: $ef
	cp   c                                           ; $4811: $b9
	rst  $20                                         ; $4812: $e7
	cp   l                                           ; $4813: $bd
	rst  $20                                         ; $4814: $e7
	and  l                                           ; $4815: $a5
	rst  $20                                         ; $4816: $e7
	and  l                                           ; $4817: $a5
	rst  $20                                         ; $4818: $e7
	and  l                                           ; $4819: $a5
	rst  $20                                         ; $481a: $e7
	and  l                                           ; $481b: $a5
	rst  $20                                         ; $481c: $e7
	and  l                                           ; $481d: $a5
	rst  $20                                         ; $481e: $e7
	and  l                                           ; $481f: $a5
	rst  $28                                         ; $4820: $ef
	cp   c                                           ; $4821: $b9
	rst  $20                                         ; $4822: $e7
	cp   l                                           ; $4823: $bd
	rst  $20                                         ; $4824: $e7
	cp   l                                           ; $4825: $bd
	rst  $20                                         ; $4826: $e7
	and  l                                           ; $4827: $a5
	rst  $20                                         ; $4828: $e7
	and  l                                           ; $4829: $a5
	rst  $20                                         ; $482a: $e7
	and  l                                           ; $482b: $a5
	rst  $20                                         ; $482c: $e7
	and  l                                           ; $482d: $a5
	rst  $20                                         ; $482e: $e7
	and  l                                           ; $482f: $a5
	rst  $28                                         ; $4830: $ef
	cp   c                                           ; $4831: $b9
	rst  $20                                         ; $4832: $e7
	cp   l                                           ; $4833: $bd
	rst  $20                                         ; $4834: $e7
	cp   l                                           ; $4835: $bd
	rst  $20                                         ; $4836: $e7
	cp   l                                           ; $4837: $bd
	rst  $20                                         ; $4838: $e7
	and  l                                           ; $4839: $a5
	rst  $20                                         ; $483a: $e7
	and  l                                           ; $483b: $a5
	rst  $20                                         ; $483c: $e7
	and  l                                           ; $483d: $a5
	rst  $20                                         ; $483e: $e7
	and  l                                           ; $483f: $a5
	rst  $28                                         ; $4840: $ef
	cp   c                                           ; $4841: $b9
	rst  $20                                         ; $4842: $e7
	cp   l                                           ; $4843: $bd
	rst  $20                                         ; $4844: $e7
	cp   l                                           ; $4845: $bd
	rst  $20                                         ; $4846: $e7
	cp   l                                           ; $4847: $bd
	rst  $20                                         ; $4848: $e7
	cp   l                                           ; $4849: $bd
	rst  $20                                         ; $484a: $e7
	and  l                                           ; $484b: $a5
	rst  $20                                         ; $484c: $e7
	and  l                                           ; $484d: $a5
	rst  $20                                         ; $484e: $e7
	and  l                                           ; $484f: $a5
	rst  $28                                         ; $4850: $ef
	cp   c                                           ; $4851: $b9
	rst  $20                                         ; $4852: $e7
	cp   l                                           ; $4853: $bd
	rst  $20                                         ; $4854: $e7
	cp   l                                           ; $4855: $bd
	rst  $20                                         ; $4856: $e7
	cp   l                                           ; $4857: $bd
	rst  $20                                         ; $4858: $e7
	cp   l                                           ; $4859: $bd
	rst  $20                                         ; $485a: $e7
	cp   l                                           ; $485b: $bd
	rst  $20                                         ; $485c: $e7
	and  l                                           ; $485d: $a5
	rst  $20                                         ; $485e: $e7
	and  l                                           ; $485f: $a5
	rst  $28                                         ; $4860: $ef
	cp   c                                           ; $4861: $b9
	rst  $20                                         ; $4862: $e7
	cp   l                                           ; $4863: $bd
	rst  $20                                         ; $4864: $e7
	cp   l                                           ; $4865: $bd
	rst  $20                                         ; $4866: $e7
	cp   l                                           ; $4867: $bd
	rst  $20                                         ; $4868: $e7
	cp   l                                           ; $4869: $bd
	rst  $20                                         ; $486a: $e7
	cp   l                                           ; $486b: $bd
	rst  $20                                         ; $486c: $e7
	cp   l                                           ; $486d: $bd
	rst  $20                                         ; $486e: $e7
	and  l                                           ; $486f: $a5
	rst  $28                                         ; $4870: $ef
	cp   c                                           ; $4871: $b9
	rst  $20                                         ; $4872: $e7
	cp   l                                           ; $4873: $bd
	rst  $20                                         ; $4874: $e7
	cp   l                                           ; $4875: $bd
	rst  $20                                         ; $4876: $e7
	cp   l                                           ; $4877: $bd
	rst  $20                                         ; $4878: $e7
	cp   l                                           ; $4879: $bd
	rst  $20                                         ; $487a: $e7
	cp   l                                           ; $487b: $bd
	rst  $20                                         ; $487c: $e7
	cp   l                                           ; $487d: $bd
	rst  $20                                         ; $487e: $e7
	cp   l                                           ; $487f: $bd
	rst  $20                                         ; $4880: $e7
	cp   l                                           ; $4881: $bd
	rst  $20                                         ; $4882: $e7
	and  l                                           ; $4883: $a5
	rst  $20                                         ; $4884: $e7
	and  l                                           ; $4885: $a5
	rst  $20                                         ; $4886: $e7
	and  l                                           ; $4887: $a5
	rst  $20                                         ; $4888: $e7
	and  l                                           ; $4889: $a5
	rst  $20                                         ; $488a: $e7
	and  l                                           ; $488b: $a5
	rst  $20                                         ; $488c: $e7
	and  l                                           ; $488d: $a5
	rst  $20                                         ; $488e: $e7
	and  l                                           ; $488f: $a5
	rst  $20                                         ; $4890: $e7
	cp   l                                           ; $4891: $bd
	rst  $20                                         ; $4892: $e7
	cp   l                                           ; $4893: $bd
	rst  $20                                         ; $4894: $e7
	and  l                                           ; $4895: $a5
	rst  $20                                         ; $4896: $e7
	and  l                                           ; $4897: $a5
	rst  $20                                         ; $4898: $e7
	and  l                                           ; $4899: $a5
	rst  $20                                         ; $489a: $e7
	and  l                                           ; $489b: $a5
	rst  $20                                         ; $489c: $e7
	and  l                                           ; $489d: $a5
	rst  $20                                         ; $489e: $e7
	and  l                                           ; $489f: $a5
	rst  $20                                         ; $48a0: $e7
	cp   l                                           ; $48a1: $bd
	rst  $20                                         ; $48a2: $e7
	cp   l                                           ; $48a3: $bd
	rst  $20                                         ; $48a4: $e7
	cp   l                                           ; $48a5: $bd
	rst  $20                                         ; $48a6: $e7
	and  l                                           ; $48a7: $a5
	rst  $20                                         ; $48a8: $e7
	and  l                                           ; $48a9: $a5
	rst  $20                                         ; $48aa: $e7
	and  l                                           ; $48ab: $a5
	rst  $20                                         ; $48ac: $e7
	and  l                                           ; $48ad: $a5
	rst  $20                                         ; $48ae: $e7
	and  l                                           ; $48af: $a5
	rst  $20                                         ; $48b0: $e7
	cp   l                                           ; $48b1: $bd
	rst  $20                                         ; $48b2: $e7
	cp   l                                           ; $48b3: $bd
	rst  $20                                         ; $48b4: $e7
	cp   l                                           ; $48b5: $bd
	rst  $20                                         ; $48b6: $e7
	cp   l                                           ; $48b7: $bd
	rst  $20                                         ; $48b8: $e7
	and  l                                           ; $48b9: $a5
	rst  $20                                         ; $48ba: $e7
	and  l                                           ; $48bb: $a5
	rst  $20                                         ; $48bc: $e7
	and  l                                           ; $48bd: $a5
	rst  $20                                         ; $48be: $e7
	and  l                                           ; $48bf: $a5
	rst  $20                                         ; $48c0: $e7
	cp   l                                           ; $48c1: $bd
	rst  $20                                         ; $48c2: $e7
	cp   l                                           ; $48c3: $bd
	rst  $20                                         ; $48c4: $e7
	cp   l                                           ; $48c5: $bd
	rst  $20                                         ; $48c6: $e7
	cp   l                                           ; $48c7: $bd
	rst  $20                                         ; $48c8: $e7
	cp   l                                           ; $48c9: $bd
	rst  $20                                         ; $48ca: $e7
	and  l                                           ; $48cb: $a5
	rst  $20                                         ; $48cc: $e7
	and  l                                           ; $48cd: $a5
	rst  $20                                         ; $48ce: $e7
	and  l                                           ; $48cf: $a5
	rst  $20                                         ; $48d0: $e7
	cp   l                                           ; $48d1: $bd
	rst  $20                                         ; $48d2: $e7
	cp   l                                           ; $48d3: $bd
	rst  $20                                         ; $48d4: $e7
	cp   l                                           ; $48d5: $bd
	rst  $20                                         ; $48d6: $e7
	cp   l                                           ; $48d7: $bd
	rst  $20                                         ; $48d8: $e7
	cp   l                                           ; $48d9: $bd
	rst  $20                                         ; $48da: $e7
	cp   l                                           ; $48db: $bd
	rst  $20                                         ; $48dc: $e7
	and  l                                           ; $48dd: $a5
	rst  $20                                         ; $48de: $e7
	and  l                                           ; $48df: $a5
	rst  $20                                         ; $48e0: $e7
	cp   l                                           ; $48e1: $bd
	rst  $20                                         ; $48e2: $e7
	cp   l                                           ; $48e3: $bd
	rst  $20                                         ; $48e4: $e7
	cp   l                                           ; $48e5: $bd
	rst  $20                                         ; $48e6: $e7
	cp   l                                           ; $48e7: $bd
	rst  $20                                         ; $48e8: $e7
	cp   l                                           ; $48e9: $bd
	rst  $20                                         ; $48ea: $e7
	cp   l                                           ; $48eb: $bd
	rst  $20                                         ; $48ec: $e7
	cp   l                                           ; $48ed: $bd
	rst  $20                                         ; $48ee: $e7
	and  l                                           ; $48ef: $a5
	rst  $20                                         ; $48f0: $e7
	cp   l                                           ; $48f1: $bd
	rst  $20                                         ; $48f2: $e7
	cp   l                                           ; $48f3: $bd
	rst  $20                                         ; $48f4: $e7
	cp   l                                           ; $48f5: $bd
	rst  $20                                         ; $48f6: $e7
	cp   l                                           ; $48f7: $bd
	rst  $20                                         ; $48f8: $e7
	cp   l                                           ; $48f9: $bd
	rst  $20                                         ; $48fa: $e7
	cp   l                                           ; $48fb: $bd
	rst  $20                                         ; $48fc: $e7
	cp   l                                           ; $48fd: $bd
	rst  $20                                         ; $48fe: $e7
	cp   l                                           ; $48ff: $bd
	rst  $20                                         ; $4900: $e7
	cp   l                                           ; $4901: $bd
	rst  $20                                         ; $4902: $e7
	and  l                                           ; $4903: $a5
	rst  $20                                         ; $4904: $e7
	and  l                                           ; $4905: $a5
	rst  $20                                         ; $4906: $e7
	and  l                                           ; $4907: $a5
	rst  $20                                         ; $4908: $e7
	and  l                                           ; $4909: $a5
	rst  $20                                         ; $490a: $e7
	and  l                                           ; $490b: $a5
	rst  $20                                         ; $490c: $e7
	and  l                                           ; $490d: $a5
	rst  $28                                         ; $490e: $ef
	xor  c                                           ; $490f: $a9
	rst  $20                                         ; $4910: $e7
	cp   l                                           ; $4911: $bd
	rst  $20                                         ; $4912: $e7
	cp   l                                           ; $4913: $bd
	rst  $20                                         ; $4914: $e7
	and  l                                           ; $4915: $a5
	rst  $20                                         ; $4916: $e7
	and  l                                           ; $4917: $a5
	rst  $20                                         ; $4918: $e7
	and  l                                           ; $4919: $a5
	rst  $20                                         ; $491a: $e7
	and  l                                           ; $491b: $a5
	rst  $20                                         ; $491c: $e7
	and  l                                           ; $491d: $a5
	rst  $28                                         ; $491e: $ef
	xor  c                                           ; $491f: $a9
	rst  $20                                         ; $4920: $e7
	cp   l                                           ; $4921: $bd
	rst  $20                                         ; $4922: $e7
	cp   l                                           ; $4923: $bd
	rst  $20                                         ; $4924: $e7
	cp   l                                           ; $4925: $bd
	rst  $20                                         ; $4926: $e7
	and  l                                           ; $4927: $a5
	rst  $20                                         ; $4928: $e7
	and  l                                           ; $4929: $a5
	rst  $20                                         ; $492a: $e7
	and  l                                           ; $492b: $a5
	rst  $20                                         ; $492c: $e7
	and  l                                           ; $492d: $a5
	rst  $28                                         ; $492e: $ef
	xor  c                                           ; $492f: $a9
	rst  $20                                         ; $4930: $e7
	cp   l                                           ; $4931: $bd
	rst  $20                                         ; $4932: $e7
	cp   l                                           ; $4933: $bd
	rst  $20                                         ; $4934: $e7
	cp   l                                           ; $4935: $bd
	rst  $20                                         ; $4936: $e7
	cp   l                                           ; $4937: $bd
	rst  $20                                         ; $4938: $e7
	and  l                                           ; $4939: $a5
	rst  $20                                         ; $493a: $e7
	and  l                                           ; $493b: $a5
	rst  $20                                         ; $493c: $e7
	and  l                                           ; $493d: $a5
	rst  $28                                         ; $493e: $ef
	xor  c                                           ; $493f: $a9
	rst  $20                                         ; $4940: $e7
	cp   l                                           ; $4941: $bd
	rst  $20                                         ; $4942: $e7
	cp   l                                           ; $4943: $bd
	rst  $20                                         ; $4944: $e7
	cp   l                                           ; $4945: $bd
	rst  $20                                         ; $4946: $e7
	cp   l                                           ; $4947: $bd
	rst  $20                                         ; $4948: $e7
	cp   l                                           ; $4949: $bd
	rst  $20                                         ; $494a: $e7
	and  l                                           ; $494b: $a5
	rst  $20                                         ; $494c: $e7
	and  l                                           ; $494d: $a5
	rst  $28                                         ; $494e: $ef
	xor  c                                           ; $494f: $a9
	rst  $20                                         ; $4950: $e7
	cp   l                                           ; $4951: $bd
	rst  $20                                         ; $4952: $e7
	cp   l                                           ; $4953: $bd
	rst  $20                                         ; $4954: $e7
	cp   l                                           ; $4955: $bd
	rst  $20                                         ; $4956: $e7
	cp   l                                           ; $4957: $bd
	rst  $20                                         ; $4958: $e7
	cp   l                                           ; $4959: $bd
	rst  $20                                         ; $495a: $e7
	cp   l                                           ; $495b: $bd
	rst  $20                                         ; $495c: $e7
	and  l                                           ; $495d: $a5
	rst  $28                                         ; $495e: $ef
	xor  c                                           ; $495f: $a9
	rst  $20                                         ; $4960: $e7
	cp   l                                           ; $4961: $bd
	rst  $20                                         ; $4962: $e7
	cp   l                                           ; $4963: $bd
	rst  $20                                         ; $4964: $e7
	cp   l                                           ; $4965: $bd
	rst  $20                                         ; $4966: $e7
	cp   l                                           ; $4967: $bd
	rst  $20                                         ; $4968: $e7
	cp   l                                           ; $4969: $bd
	rst  $20                                         ; $496a: $e7
	cp   l                                           ; $496b: $bd
	rst  $20                                         ; $496c: $e7
	cp   l                                           ; $496d: $bd
	rst  $28                                         ; $496e: $ef
	xor  c                                           ; $496f: $a9
	rst  $20                                         ; $4970: $e7
	cp   l                                           ; $4971: $bd
	rst  $20                                         ; $4972: $e7
	cp   l                                           ; $4973: $bd
	rst  $20                                         ; $4974: $e7
	cp   l                                           ; $4975: $bd
	rst  $20                                         ; $4976: $e7
	cp   l                                           ; $4977: $bd
	rst  $20                                         ; $4978: $e7
	cp   l                                           ; $4979: $bd
	rst  $20                                         ; $497a: $e7
	cp   l                                           ; $497b: $bd
	rst  $20                                         ; $497c: $e7
	cp   l                                           ; $497d: $bd
	rst  $28                                         ; $497e: $ef
	cp   c                                           ; $497f: $b9
	cp   $b2                                         ; $4980: $fe $b2
	db   $fc                                         ; $4982: $fc
	inc  h                                           ; $4983: $24
	db   $fc                                         ; $4984: $fc
	call z, $94f4                                    ; $4985: $cc $f4 $94
	db   $e4                                         ; $4988: $e4
	inc  h                                           ; $4989: $24
	ld   hl, sp+$7c                                  ; $498a: $f8 $7c
	add  b                                           ; $498c: $80
	add  b                                           ; $498d: $80
	nop                                              ; $498e: $00
	nop                                              ; $498f: $00
	cp   $b2                                         ; $4990: $fe $b2
	db   $fc                                         ; $4992: $fc
	inc  h                                           ; $4993: $24
	db   $fc                                         ; $4994: $fc
	call z, $94f4                                    ; $4995: $cc $f4 $94
	db   $e4                                         ; $4998: $e4
	inc  h                                           ; $4999: $24
	ld   hl, sp+$7c                                  ; $499a: $f8 $7c
	add  b                                           ; $499c: $80
	add  b                                           ; $499d: $80
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	cp   $b2                                         ; $49a0: $fe $b2
	db   $fc                                         ; $49a2: $fc
	inc  h                                           ; $49a3: $24
	db   $fc                                         ; $49a4: $fc
	call z, $94f4                                    ; $49a5: $cc $f4 $94
	db   $e4                                         ; $49a8: $e4
	inc  h                                           ; $49a9: $24
	ld   hl, sp+$7c                                  ; $49aa: $f8 $7c
	add  b                                           ; $49ac: $80
	add  b                                           ; $49ad: $80
	nop                                              ; $49ae: $00
	nop                                              ; $49af: $00
	cp   $b2                                         ; $49b0: $fe $b2
	db   $fc                                         ; $49b2: $fc
	inc  h                                           ; $49b3: $24
	db   $fc                                         ; $49b4: $fc
	call z, $9cf4                                    ; $49b5: $cc $f4 $9c
	db   $e4                                         ; $49b8: $e4
	inc  h                                           ; $49b9: $24
	ld   hl, sp+$7c                                  ; $49ba: $f8 $7c
	add  b                                           ; $49bc: $80
	add  b                                           ; $49bd: $80
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	cp   $b2                                         ; $49c0: $fe $b2
	db   $fc                                         ; $49c2: $fc
	inc  h                                           ; $49c3: $24
	db   $fc                                         ; $49c4: $fc
	call z, $9cf4                                    ; $49c5: $cc $f4 $9c
	db   $e4                                         ; $49c8: $e4
	inc  a                                           ; $49c9: $3c
	ld   hl, sp+$7c                                  ; $49ca: $f8 $7c
	add  b                                           ; $49cc: $80
	add  b                                           ; $49cd: $80
	nop                                              ; $49ce: $00
	nop                                              ; $49cf: $00
	cp   $b2                                         ; $49d0: $fe $b2
	db   $fc                                         ; $49d2: $fc
	inc  h                                           ; $49d3: $24
	db   $fc                                         ; $49d4: $fc
	call z, $9cf4                                    ; $49d5: $cc $f4 $9c
	db   $e4                                         ; $49d8: $e4
	inc  a                                           ; $49d9: $3c
	ld   hl, sp+$7c                                  ; $49da: $f8 $7c
	add  b                                           ; $49dc: $80
	add  b                                           ; $49dd: $80
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	cp   $b2                                         ; $49e0: $fe $b2
	db   $fc                                         ; $49e2: $fc
	inc  h                                           ; $49e3: $24
	db   $fc                                         ; $49e4: $fc
	call z, $9cf4                                    ; $49e5: $cc $f4 $9c
	db   $e4                                         ; $49e8: $e4
	inc  a                                           ; $49e9: $3c
	ld   hl, sp+$7c                                  ; $49ea: $f8 $7c
	add  b                                           ; $49ec: $80
	add  b                                           ; $49ed: $80
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00
	cp   $b2                                         ; $49f0: $fe $b2
	db   $fc                                         ; $49f2: $fc
	inc  h                                           ; $49f3: $24
	db   $fc                                         ; $49f4: $fc
	call z, $9cf4                                    ; $49f5: $cc $f4 $9c
	db   $e4                                         ; $49f8: $e4
	inc  a                                           ; $49f9: $3c
	ld   hl, sp+$7c                                  ; $49fa: $f8 $7c
	add  b                                           ; $49fc: $80
	add  b                                           ; $49fd: $80
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	rst  $38                                         ; $4a00: $ff
	rst  $38                                         ; $4a01: $ff
	rst  $38                                         ; $4a02: $ff
	nop                                              ; $4a03: $00
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	nop                                              ; $4a06: $00
	ld   bc, $0101                                   ; $4a07: $01 $01 $01
	rst  $38                                         ; $4a0a: $ff
	cp   $ff                                         ; $4a0b: $fe $ff
	nop                                              ; $4a0d: $00
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	nop                                              ; $4a13: $00
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	nop                                              ; $4a16: $00
	inc  bc                                          ; $4a17: $03
	ld   bc, $ff03                                   ; $4a18: $01 $03 $ff
	cp   $ff                                         ; $4a1b: $fe $ff
	nop                                              ; $4a1d: $00
	rst  $38                                         ; $4a1e: $ff
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	rst  $38                                         ; $4a21: $ff
	rst  $38                                         ; $4a22: $ff
	nop                                              ; $4a23: $00
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	nop                                              ; $4a26: $00
	rlca                                             ; $4a27: $07
	ld   bc, $ff07                                   ; $4a28: $01 $07 $ff
	cp   $ff                                         ; $4a2b: $fe $ff
	nop                                              ; $4a2d: $00
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	nop                                              ; $4a33: $00
	rst  $38                                         ; $4a34: $ff
	rst  $38                                         ; $4a35: $ff
	nop                                              ; $4a36: $00
	rrca                                             ; $4a37: $0f
	ld   bc, $ff0f                                   ; $4a38: $01 $0f $ff
	cp   $ff                                         ; $4a3b: $fe $ff
	nop                                              ; $4a3d: $00
	rst  $38                                         ; $4a3e: $ff
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	rst  $38                                         ; $4a42: $ff
	nop                                              ; $4a43: $00
	rst  $38                                         ; $4a44: $ff
	rst  $38                                         ; $4a45: $ff
	nop                                              ; $4a46: $00
	rra                                              ; $4a47: $1f
	ld   bc, $ff1f                                   ; $4a48: $01 $1f $ff
	cp   $ff                                         ; $4a4b: $fe $ff
	nop                                              ; $4a4d: $00
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	rst  $38                                         ; $4a52: $ff
	nop                                              ; $4a53: $00
	rst  $38                                         ; $4a54: $ff
	rst  $38                                         ; $4a55: $ff
	nop                                              ; $4a56: $00
	ccf                                              ; $4a57: $3f
	ld   bc, $ff3f                                   ; $4a58: $01 $3f $ff
	cp   $ff                                         ; $4a5b: $fe $ff
	nop                                              ; $4a5d: $00
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	rst  $38                                         ; $4a62: $ff
	nop                                              ; $4a63: $00
	rst  $38                                         ; $4a64: $ff
	rst  $38                                         ; $4a65: $ff
	nop                                              ; $4a66: $00
	ld   a, a                                        ; $4a67: $7f
	ld   bc, $ff7f                                   ; $4a68: $01 $7f $ff
	cp   $ff                                         ; $4a6b: $fe $ff
	nop                                              ; $4a6d: $00
	rst  $38                                         ; $4a6e: $ff
	rst  $38                                         ; $4a6f: $ff
	rst  $38                                         ; $4a70: $ff
	rst  $38                                         ; $4a71: $ff
	rst  $38                                         ; $4a72: $ff
	nop                                              ; $4a73: $00
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	nop                                              ; $4a76: $00
	rst  $38                                         ; $4a77: $ff
	ld   bc, $ffff                                   ; $4a78: $01 $ff $ff
	cp   $ff                                         ; $4a7b: $fe $ff
	nop                                              ; $4a7d: $00
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	rst  $38                                         ; $4a80: $ff
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	nop                                              ; $4a83: $00
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	nop                                              ; $4a86: $00
	ld   bc, $0100                                   ; $4a87: $01 $00 $01
	rst  $38                                         ; $4a8a: $ff
	rst  $38                                         ; $4a8b: $ff
	rst  $38                                         ; $4a8c: $ff
	nop                                              ; $4a8d: $00
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	rst  $38                                         ; $4a90: $ff
	rst  $38                                         ; $4a91: $ff
	rst  $38                                         ; $4a92: $ff
	nop                                              ; $4a93: $00
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	nop                                              ; $4a96: $00
	inc  bc                                          ; $4a97: $03
	nop                                              ; $4a98: $00
	inc  bc                                          ; $4a99: $03
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	nop                                              ; $4a9d: $00
	rst  $38                                         ; $4a9e: $ff
	rst  $38                                         ; $4a9f: $ff
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	rst  $38                                         ; $4aa2: $ff
	nop                                              ; $4aa3: $00
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	nop                                              ; $4aa6: $00
	rlca                                             ; $4aa7: $07
	nop                                              ; $4aa8: $00
	rlca                                             ; $4aa9: $07
	rst  $38                                         ; $4aaa: $ff
	rst  $38                                         ; $4aab: $ff
	rst  $38                                         ; $4aac: $ff
	nop                                              ; $4aad: $00
	rst  $38                                         ; $4aae: $ff
	rst  $38                                         ; $4aaf: $ff
	rst  $38                                         ; $4ab0: $ff
	rst  $38                                         ; $4ab1: $ff
	rst  $38                                         ; $4ab2: $ff
	nop                                              ; $4ab3: $00
	rst  $38                                         ; $4ab4: $ff
	rst  $38                                         ; $4ab5: $ff
	nop                                              ; $4ab6: $00
	rrca                                             ; $4ab7: $0f
	nop                                              ; $4ab8: $00
	rrca                                             ; $4ab9: $0f
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	nop                                              ; $4abd: $00
	rst  $38                                         ; $4abe: $ff
	rst  $38                                         ; $4abf: $ff
	rst  $38                                         ; $4ac0: $ff
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	nop                                              ; $4ac3: $00
	rst  $38                                         ; $4ac4: $ff
	rst  $38                                         ; $4ac5: $ff
	nop                                              ; $4ac6: $00
	rra                                              ; $4ac7: $1f
	nop                                              ; $4ac8: $00
	rra                                              ; $4ac9: $1f
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	rst  $38                                         ; $4acc: $ff
	nop                                              ; $4acd: $00
	rst  $38                                         ; $4ace: $ff
	rst  $38                                         ; $4acf: $ff
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	rst  $38                                         ; $4ad2: $ff
	nop                                              ; $4ad3: $00
	rst  $38                                         ; $4ad4: $ff
	rst  $38                                         ; $4ad5: $ff
	nop                                              ; $4ad6: $00
	ccf                                              ; $4ad7: $3f
	nop                                              ; $4ad8: $00
	ccf                                              ; $4ad9: $3f
	rst  $38                                         ; $4ada: $ff
	rst  $38                                         ; $4adb: $ff
	rst  $38                                         ; $4adc: $ff
	nop                                              ; $4add: $00
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	rst  $38                                         ; $4ae2: $ff
	nop                                              ; $4ae3: $00
	rst  $38                                         ; $4ae4: $ff
	rst  $38                                         ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	ld   a, a                                        ; $4ae7: $7f
	nop                                              ; $4ae8: $00
	ld   a, a                                        ; $4ae9: $7f
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	rst  $38                                         ; $4aec: $ff
	nop                                              ; $4aed: $00
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	rst  $38                                         ; $4af0: $ff
	rst  $38                                         ; $4af1: $ff
	rst  $38                                         ; $4af2: $ff
	nop                                              ; $4af3: $00
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	nop                                              ; $4af6: $00
	rst  $38                                         ; $4af7: $ff
	nop                                              ; $4af8: $00
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	nop                                              ; $4afd: $00
	rst  $38                                         ; $4afe: $ff
	rst  $38                                         ; $4aff: $ff
	rst  $38                                         ; $4b00: $ff
	rst  $38                                         ; $4b01: $ff
	rst  $38                                         ; $4b02: $ff
	ld   b, b                                        ; $4b03: $40
	rst  $38                                         ; $4b04: $ff
	ccf                                              ; $4b05: $3f
	ldh  a, [$91]                                    ; $4b06: $f0 $91
	ld   a, b                                        ; $4b08: $78
	ld   c, c                                        ; $4b09: $49
	rst  $38                                         ; $4b0a: $ff
	rst  $20                                         ; $4b0b: $e7
	rra                                              ; $4b0c: $1f
	db   $10                                         ; $4b0d: $10
	rrca                                             ; $4b0e: $0f
	rrca                                             ; $4b0f: $0f
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	ld   b, b                                        ; $4b13: $40
	rst  $38                                         ; $4b14: $ff
	ccf                                              ; $4b15: $3f
	ldh  a, [$93]                                    ; $4b16: $f0 $93
	ld   a, b                                        ; $4b18: $78
	ld   c, e                                        ; $4b19: $4b
	rst  $38                                         ; $4b1a: $ff
	rst  $20                                         ; $4b1b: $e7
	rra                                              ; $4b1c: $1f
	db   $10                                         ; $4b1d: $10
	rrca                                             ; $4b1e: $0f
	rrca                                             ; $4b1f: $0f
	rst  $38                                         ; $4b20: $ff
	rst  $38                                         ; $4b21: $ff
	rst  $38                                         ; $4b22: $ff
	ld   b, b                                        ; $4b23: $40
	rst  $38                                         ; $4b24: $ff
	ccf                                              ; $4b25: $3f
	ldh  a, [$97]                                    ; $4b26: $f0 $97
	ld   a, b                                        ; $4b28: $78
	ld   c, a                                        ; $4b29: $4f
	rst  $38                                         ; $4b2a: $ff
	rst  $20                                         ; $4b2b: $e7
	rra                                              ; $4b2c: $1f
	db   $10                                         ; $4b2d: $10
	rrca                                             ; $4b2e: $0f
	rrca                                             ; $4b2f: $0f
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	rst  $38                                         ; $4b32: $ff
	ld   b, b                                        ; $4b33: $40
	rst  $38                                         ; $4b34: $ff
	ccf                                              ; $4b35: $3f
	ldh  a, [$9f]                                    ; $4b36: $f0 $9f
	ld   a, b                                        ; $4b38: $78
	ld   c, a                                        ; $4b39: $4f
	rst  $38                                         ; $4b3a: $ff
	rst  $20                                         ; $4b3b: $e7
	rra                                              ; $4b3c: $1f
	db   $10                                         ; $4b3d: $10
	rrca                                             ; $4b3e: $0f
	rrca                                             ; $4b3f: $0f
	rst  $38                                         ; $4b40: $ff
	rst  $38                                         ; $4b41: $ff
	rst  $38                                         ; $4b42: $ff
	ld   b, b                                        ; $4b43: $40
	rst  $38                                         ; $4b44: $ff
	ccf                                              ; $4b45: $3f
	ldh  a, [$9f]                                    ; $4b46: $f0 $9f
	ld   a, b                                        ; $4b48: $78
	ld   c, a                                        ; $4b49: $4f
	rst  $38                                         ; $4b4a: $ff
	rst  $20                                         ; $4b4b: $e7
	rra                                              ; $4b4c: $1f
	db   $10                                         ; $4b4d: $10
	rrca                                             ; $4b4e: $0f
	rrca                                             ; $4b4f: $0f
	rst  $38                                         ; $4b50: $ff
	rst  $38                                         ; $4b51: $ff
	rst  $38                                         ; $4b52: $ff
	ld   b, b                                        ; $4b53: $40
	rst  $38                                         ; $4b54: $ff
	ccf                                              ; $4b55: $3f
	ldh  a, [$9f]                                    ; $4b56: $f0 $9f
	ld   a, b                                        ; $4b58: $78
	ld   c, a                                        ; $4b59: $4f
	rst  $38                                         ; $4b5a: $ff
	rst  $20                                         ; $4b5b: $e7
	rra                                              ; $4b5c: $1f
	db   $10                                         ; $4b5d: $10
	rrca                                             ; $4b5e: $0f
	rrca                                             ; $4b5f: $0f
	rst  $38                                         ; $4b60: $ff
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	ld   b, b                                        ; $4b63: $40
	rst  $38                                         ; $4b64: $ff
	ccf                                              ; $4b65: $3f
	ldh  a, [$9f]                                    ; $4b66: $f0 $9f
	ld   a, b                                        ; $4b68: $78
	ld   c, a                                        ; $4b69: $4f
	rst  $38                                         ; $4b6a: $ff
	rst  $20                                         ; $4b6b: $e7
	rra                                              ; $4b6c: $1f
	db   $10                                         ; $4b6d: $10
	rrca                                             ; $4b6e: $0f
	rrca                                             ; $4b6f: $0f
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	ld   b, b                                        ; $4b73: $40
	rst  $38                                         ; $4b74: $ff
	ccf                                              ; $4b75: $3f
	ldh  a, [$9f]                                    ; $4b76: $f0 $9f
	ld   a, b                                        ; $4b78: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b79: $cf
	rst  $38                                         ; $4b7a: $ff
	rst  $20                                         ; $4b7b: $e7
	rra                                              ; $4b7c: $1f
	db   $10                                         ; $4b7d: $10
	rrca                                             ; $4b7e: $0f
	rrca                                             ; $4b7f: $0f
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	rst  $38                                         ; $4b82: $ff
	ld   [bc], a                                     ; $4b83: $02
	rst  $38                                         ; $4b84: $ff
	rst  $38                                         ; $4b85: $ff
	nop                                              ; $4b86: $00
	ld   bc, $0100                                   ; $4b87: $01 $00 $01
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	rst  $38                                         ; $4b92: $ff
	ld   [bc], a                                     ; $4b93: $02
	rst  $38                                         ; $4b94: $ff
	rst  $38                                         ; $4b95: $ff
	nop                                              ; $4b96: $00
	inc  bc                                          ; $4b97: $03
	nop                                              ; $4b98: $00
	inc  bc                                          ; $4b99: $03
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	rst  $38                                         ; $4ba2: $ff
	ld   [bc], a                                     ; $4ba3: $02
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	nop                                              ; $4ba6: $00
	rlca                                             ; $4ba7: $07
	nop                                              ; $4ba8: $00
	rlca                                             ; $4ba9: $07
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	nop                                              ; $4bae: $00
	nop                                              ; $4baf: $00
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	rst  $38                                         ; $4bb2: $ff
	ld   [bc], a                                     ; $4bb3: $02
	rst  $38                                         ; $4bb4: $ff
	rst  $38                                         ; $4bb5: $ff
	nop                                              ; $4bb6: $00
	rrca                                             ; $4bb7: $0f
	nop                                              ; $4bb8: $00
	rrca                                             ; $4bb9: $0f
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	rst  $38                                         ; $4bc0: $ff
	rst  $38                                         ; $4bc1: $ff
	rst  $38                                         ; $4bc2: $ff
	ld   [bc], a                                     ; $4bc3: $02
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	nop                                              ; $4bc6: $00
	rra                                              ; $4bc7: $1f
	nop                                              ; $4bc8: $00
	rra                                              ; $4bc9: $1f
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	nop                                              ; $4bcc: $00
	nop                                              ; $4bcd: $00
	nop                                              ; $4bce: $00
	nop                                              ; $4bcf: $00
	rst  $38                                         ; $4bd0: $ff
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	ld   [bc], a                                     ; $4bd3: $02
	rst  $38                                         ; $4bd4: $ff
	rst  $38                                         ; $4bd5: $ff
	nop                                              ; $4bd6: $00
	ccf                                              ; $4bd7: $3f
	nop                                              ; $4bd8: $00
	ccf                                              ; $4bd9: $3f
	rst  $38                                         ; $4bda: $ff
	rst  $38                                         ; $4bdb: $ff
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	rst  $38                                         ; $4be0: $ff
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	ld   [bc], a                                     ; $4be3: $02
	rst  $38                                         ; $4be4: $ff
	rst  $38                                         ; $4be5: $ff
	nop                                              ; $4be6: $00
	ld   a, a                                        ; $4be7: $7f
	nop                                              ; $4be8: $00
	ld   a, a                                        ; $4be9: $7f
	rst  $38                                         ; $4bea: $ff
	rst  $38                                         ; $4beb: $ff
	nop                                              ; $4bec: $00
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	nop                                              ; $4bef: $00
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	ld   [bc], a                                     ; $4bf3: $02
	rst  $38                                         ; $4bf4: $ff
	rst  $38                                         ; $4bf5: $ff
	nop                                              ; $4bf6: $00
	rst  $38                                         ; $4bf7: $ff
	nop                                              ; $4bf8: $00
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	rst  $38                                         ; $4c02: $ff
	ld   b, b                                        ; $4c03: $40
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	nop                                              ; $4c06: $00
	ld   bc, $0100                                   ; $4c07: $01 $00 $01
	rst  $38                                         ; $4c0a: $ff
	rst  $38                                         ; $4c0b: $ff
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	ld   b, b                                        ; $4c13: $40
	rst  $38                                         ; $4c14: $ff
	rst  $38                                         ; $4c15: $ff
	nop                                              ; $4c16: $00
	inc  bc                                          ; $4c17: $03
	nop                                              ; $4c18: $00
	inc  bc                                          ; $4c19: $03
	rst  $38                                         ; $4c1a: $ff
	rst  $38                                         ; $4c1b: $ff
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	rst  $38                                         ; $4c22: $ff
	ld   b, b                                        ; $4c23: $40
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	nop                                              ; $4c26: $00
	rlca                                             ; $4c27: $07
	nop                                              ; $4c28: $00
	rlca                                             ; $4c29: $07
	rst  $38                                         ; $4c2a: $ff
	rst  $38                                         ; $4c2b: $ff
	nop                                              ; $4c2c: $00
	nop                                              ; $4c2d: $00
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	rst  $38                                         ; $4c32: $ff
	ld   b, b                                        ; $4c33: $40
	rst  $38                                         ; $4c34: $ff
	rst  $38                                         ; $4c35: $ff
	nop                                              ; $4c36: $00
	rrca                                             ; $4c37: $0f
	nop                                              ; $4c38: $00
	rrca                                             ; $4c39: $0f
	rst  $38                                         ; $4c3a: $ff
	rst  $38                                         ; $4c3b: $ff
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	rst  $38                                         ; $4c42: $ff
	ld   b, b                                        ; $4c43: $40
	rst  $38                                         ; $4c44: $ff
	rst  $38                                         ; $4c45: $ff
	nop                                              ; $4c46: $00
	rra                                              ; $4c47: $1f
	nop                                              ; $4c48: $00
	rra                                              ; $4c49: $1f
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rst  $38                                         ; $4c50: $ff
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	ld   b, b                                        ; $4c53: $40
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	nop                                              ; $4c56: $00
	ccf                                              ; $4c57: $3f
	nop                                              ; $4c58: $00
	ccf                                              ; $4c59: $3f
	rst  $38                                         ; $4c5a: $ff
	rst  $38                                         ; $4c5b: $ff
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	ld   b, b                                        ; $4c63: $40
	rst  $38                                         ; $4c64: $ff
	rst  $38                                         ; $4c65: $ff
	nop                                              ; $4c66: $00
	ld   a, a                                        ; $4c67: $7f
	nop                                              ; $4c68: $00
	ld   a, a                                        ; $4c69: $7f
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	ld   b, b                                        ; $4c73: $40
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	nop                                              ; $4c76: $00
	rst  $38                                         ; $4c77: $ff
	nop                                              ; $4c78: $00
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	rst  $38                                         ; $4c80: $ff
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	ld   [bc], a                                     ; $4c83: $02
	rst  $38                                         ; $4c84: $ff
	db   $fc                                         ; $4c85: $fc
	rrca                                             ; $4c86: $0f
	add  hl, bc                                      ; $4c87: $09
	ld   e, $13                                      ; $4c88: $1e $13
	rst  $38                                         ; $4c8a: $ff
	rst  $20                                         ; $4c8b: $e7
	ld   hl, sp+$08                                  ; $4c8c: $f8 $08
	ldh  a, [$f0]                                    ; $4c8e: $f0 $f0
	rst  $38                                         ; $4c90: $ff
	rst  $38                                         ; $4c91: $ff
	rst  $38                                         ; $4c92: $ff
	ld   [bc], a                                     ; $4c93: $02
	rst  $38                                         ; $4c94: $ff
	db   $fc                                         ; $4c95: $fc
	rrca                                             ; $4c96: $0f
	add  hl, bc                                      ; $4c97: $09
	ld   e, $13                                      ; $4c98: $1e $13
	rst  $38                                         ; $4c9a: $ff
	rst  $20                                         ; $4c9b: $e7
	ld   hl, sp+$08                                  ; $4c9c: $f8 $08
	ldh  a, [$f0]                                    ; $4c9e: $f0 $f0
	rst  $38                                         ; $4ca0: $ff
	rst  $38                                         ; $4ca1: $ff
	rst  $38                                         ; $4ca2: $ff
	ld   [bc], a                                     ; $4ca3: $02
	rst  $38                                         ; $4ca4: $ff
	db   $fc                                         ; $4ca5: $fc
	rrca                                             ; $4ca6: $0f
	add  hl, bc                                      ; $4ca7: $09
	ld   e, $13                                      ; $4ca8: $1e $13
	rst  $38                                         ; $4caa: $ff
	rst  $20                                         ; $4cab: $e7
	ld   hl, sp+$08                                  ; $4cac: $f8 $08
	ldh  a, [$f0]                                    ; $4cae: $f0 $f0
	rst  $38                                         ; $4cb0: $ff
	rst  $38                                         ; $4cb1: $ff
	rst  $38                                         ; $4cb2: $ff
	ld   [bc], a                                     ; $4cb3: $02
	rst  $38                                         ; $4cb4: $ff
	db   $fc                                         ; $4cb5: $fc
	rrca                                             ; $4cb6: $0f
	add  hl, bc                                      ; $4cb7: $09
	ld   e, $13                                      ; $4cb8: $1e $13
	rst  $38                                         ; $4cba: $ff
	rst  $20                                         ; $4cbb: $e7
	ld   hl, sp+$08                                  ; $4cbc: $f8 $08
	ldh  a, [$f0]                                    ; $4cbe: $f0 $f0
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	ld   [bc], a                                     ; $4cc3: $02
	rst  $38                                         ; $4cc4: $ff
	db   $fc                                         ; $4cc5: $fc
	rrca                                             ; $4cc6: $0f
	add  hl, de                                      ; $4cc7: $19
	ld   e, $13                                      ; $4cc8: $1e $13
	rst  $38                                         ; $4cca: $ff
	rst  $20                                         ; $4ccb: $e7
	ld   hl, sp+$08                                  ; $4ccc: $f8 $08
	ldh  a, [$f0]                                    ; $4cce: $f0 $f0
	rst  $38                                         ; $4cd0: $ff
	rst  $38                                         ; $4cd1: $ff
	rst  $38                                         ; $4cd2: $ff
	ld   [bc], a                                     ; $4cd3: $02
	rst  $38                                         ; $4cd4: $ff
	db   $fc                                         ; $4cd5: $fc
	rrca                                             ; $4cd6: $0f
	add  hl, sp                                      ; $4cd7: $39
	ld   e, $33                                      ; $4cd8: $1e $33
	rst  $38                                         ; $4cda: $ff
	rst  $20                                         ; $4cdb: $e7
	ld   hl, sp+$08                                  ; $4cdc: $f8 $08
	ldh  a, [$f0]                                    ; $4cde: $f0 $f0
	rst  $38                                         ; $4ce0: $ff
	rst  $38                                         ; $4ce1: $ff
	rst  $38                                         ; $4ce2: $ff
	ld   [bc], a                                     ; $4ce3: $02
	rst  $38                                         ; $4ce4: $ff
	db   $fc                                         ; $4ce5: $fc
	rrca                                             ; $4ce6: $0f
	ld   a, c                                        ; $4ce7: $79
	ld   e, $73                                      ; $4ce8: $1e $73
	rst  $38                                         ; $4cea: $ff
	rst  $20                                         ; $4ceb: $e7
	ld   hl, sp+$08                                  ; $4cec: $f8 $08
	ldh  a, [$f0]                                    ; $4cee: $f0 $f0
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	ld   [bc], a                                     ; $4cf3: $02
	rst  $38                                         ; $4cf4: $ff
	db   $fc                                         ; $4cf5: $fc
	rrca                                             ; $4cf6: $0f
	ld   sp, hl                                      ; $4cf7: $f9
	ld   e, $f3                                      ; $4cf8: $1e $f3
	rst  $38                                         ; $4cfa: $ff
	rst  $20                                         ; $4cfb: $e7
	ld   hl, sp+$08                                  ; $4cfc: $f8 $08
	ldh  a, [$f0]                                    ; $4cfe: $f0 $f0
	daa                                              ; $4d00: $27
	dec  h                                           ; $4d01: $25
	daa                                              ; $4d02: $27
	inc  h                                           ; $4d03: $24
	daa                                              ; $4d04: $27
	daa                                              ; $4d05: $27
	jr   nz, @+$23                                   ; $4d06: $20 $21

	jr   nz, jr_00d_4d2b                             ; $4d08: $20 $21

	rst  $38                                         ; $4d0a: $ff
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	nop                                              ; $4d0d: $00
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	daa                                              ; $4d10: $27
	dec  h                                           ; $4d11: $25
	daa                                              ; $4d12: $27
	inc  h                                           ; $4d13: $24
	daa                                              ; $4d14: $27
	daa                                              ; $4d15: $27
	jr   nz, jr_00d_4d3b                             ; $4d16: $20 $23

	jr   nz, jr_00d_4d3d                             ; $4d18: $20 $23

	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	nop                                              ; $4d1d: $00
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	daa                                              ; $4d20: $27
	dec  h                                           ; $4d21: $25
	daa                                              ; $4d22: $27
	inc  h                                           ; $4d23: $24
	daa                                              ; $4d24: $27
	daa                                              ; $4d25: $27
	jr   nz, jr_00d_4d4f                             ; $4d26: $20 $27

	jr   nz, jr_00d_4d51                             ; $4d28: $20 $27

	rst  $38                                         ; $4d2a: $ff

jr_00d_4d2b:
	rst  $38                                         ; $4d2b: $ff
	rst  $38                                         ; $4d2c: $ff
	nop                                              ; $4d2d: $00
	rst  $38                                         ; $4d2e: $ff
	rst  $38                                         ; $4d2f: $ff
	daa                                              ; $4d30: $27
	dec  h                                           ; $4d31: $25
	daa                                              ; $4d32: $27
	inc  h                                           ; $4d33: $24
	daa                                              ; $4d34: $27
	daa                                              ; $4d35: $27
	jr   nz, @+$31                                   ; $4d36: $20 $2f

	jr   nz, @+$31                                   ; $4d38: $20 $2f

	rst  $38                                         ; $4d3a: $ff

jr_00d_4d3b:
	rst  $38                                         ; $4d3b: $ff
	rst  $38                                         ; $4d3c: $ff

jr_00d_4d3d:
	nop                                              ; $4d3d: $00
	rst  $38                                         ; $4d3e: $ff
	rst  $38                                         ; $4d3f: $ff
	daa                                              ; $4d40: $27
	dec  h                                           ; $4d41: $25
	daa                                              ; $4d42: $27
	inc  h                                           ; $4d43: $24
	daa                                              ; $4d44: $27
	daa                                              ; $4d45: $27
	jr   nz, jr_00d_4d87                             ; $4d46: $20 $3f

	jr   nz, jr_00d_4d89                             ; $4d48: $20 $3f

	rst  $38                                         ; $4d4a: $ff
	rst  $38                                         ; $4d4b: $ff
	rst  $38                                         ; $4d4c: $ff
	nop                                              ; $4d4d: $00
	rst  $38                                         ; $4d4e: $ff

jr_00d_4d4f:
	rst  $38                                         ; $4d4f: $ff
	daa                                              ; $4d50: $27

jr_00d_4d51:
	dec  h                                           ; $4d51: $25
	daa                                              ; $4d52: $27
	inc  h                                           ; $4d53: $24
	daa                                              ; $4d54: $27
	ccf                                              ; $4d55: $3f
	jr   nz, jr_00d_4d97                             ; $4d56: $20 $3f

	jr   nz, jr_00d_4d99                             ; $4d58: $20 $3f

	rst  $38                                         ; $4d5a: $ff
	rst  $38                                         ; $4d5b: $ff
	rst  $38                                         ; $4d5c: $ff
	nop                                              ; $4d5d: $00
	rst  $38                                         ; $4d5e: $ff
	rst  $38                                         ; $4d5f: $ff
	daa                                              ; $4d60: $27
	dec  h                                           ; $4d61: $25
	daa                                              ; $4d62: $27
	inc  a                                           ; $4d63: $3c
	daa                                              ; $4d64: $27
	ccf                                              ; $4d65: $3f
	jr   nz, jr_00d_4da7                             ; $4d66: $20 $3f

	jr   nz, jr_00d_4da9                             ; $4d68: $20 $3f

	rst  $38                                         ; $4d6a: $ff
	rst  $38                                         ; $4d6b: $ff
	rst  $38                                         ; $4d6c: $ff
	nop                                              ; $4d6d: $00
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	daa                                              ; $4d70: $27
	dec  a                                           ; $4d71: $3d
	daa                                              ; $4d72: $27
	inc  a                                           ; $4d73: $3c
	daa                                              ; $4d74: $27
	ccf                                              ; $4d75: $3f
	jr   nz, jr_00d_4db7                             ; $4d76: $20 $3f

	jr   nz, jr_00d_4db9                             ; $4d78: $20 $3f

	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	rst  $38                                         ; $4d7c: $ff
	nop                                              ; $4d7d: $00
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	rst  $38                                         ; $4d80: $ff
	ld   b, b                                        ; $4d81: $40
	ld   b, c                                        ; $4d82: $41
	ld   b, d                                        ; $4d83: $42
	ld   b, e                                        ; $4d84: $43
	ld   b, h                                        ; $4d85: $44
	ld   b, l                                        ; $4d86: $45

jr_00d_4d87:
	ld   b, [hl]                                     ; $4d87: $46
	ld   b, a                                        ; $4d88: $47

jr_00d_4d89:
	ld   c, b                                        ; $4d89: $48
	ld   c, c                                        ; $4d8a: $49
	ld   c, d                                        ; $4d8b: $4a
	ld   c, e                                        ; $4d8c: $4b
	ld   c, h                                        ; $4d8d: $4c
	ld   c, l                                        ; $4d8e: $4d
	ld   c, [hl]                                     ; $4d8f: $4e
	ld   c, a                                        ; $4d90: $4f
	ld   d, b                                        ; $4d91: $50
	ld   d, c                                        ; $4d92: $51
	ld   d, d                                        ; $4d93: $52
	rst  $38                                         ; $4d94: $ff
	rst  $38                                         ; $4d95: $ff
	rst  $38                                         ; $4d96: $ff

jr_00d_4d97:
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff

jr_00d_4d99:
	rst  $38                                         ; $4d99: $ff
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	rst  $38                                         ; $4d9e: $ff
	rst  $38                                         ; $4d9f: $ff
	ld   l, l                                        ; $4da0: $6d
	ld   l, [hl]                                     ; $4da1: $6e
	ld   l, a                                        ; $4da2: $6f
	add  b                                           ; $4da3: $80
	add  d                                           ; $4da4: $82
	add  h                                           ; $4da5: $84
	add  [hl]                                        ; $4da6: $86

jr_00d_4da7:
	adc  b                                           ; $4da7: $88
	adc  d                                           ; $4da8: $8a

jr_00d_4da9:
	adc  h                                           ; $4da9: $8c
	adc  [hl]                                        ; $4daa: $8e
	sub  b                                           ; $4dab: $90
	sub  d                                           ; $4dac: $92
	sub  h                                           ; $4dad: $94
	sub  [hl]                                        ; $4dae: $96
	sbc  b                                           ; $4daf: $98
	sbc  d                                           ; $4db0: $9a
	sbc  h                                           ; $4db1: $9c
	sbc  [hl]                                        ; $4db2: $9e
	ld   d, e                                        ; $4db3: $53
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff

jr_00d_4db7:
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff

jr_00d_4db9:
	rst  $38                                         ; $4db9: $ff
	rst  $38                                         ; $4dba: $ff
	rst  $38                                         ; $4dbb: $ff
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	ld   [hl], b                                     ; $4dc0: $70
	ld   [hl], c                                     ; $4dc1: $71
	ld   [hl], d                                     ; $4dc2: $72
	add  c                                           ; $4dc3: $81
	add  e                                           ; $4dc4: $83
	add  l                                           ; $4dc5: $85
	add  a                                           ; $4dc6: $87
	adc  c                                           ; $4dc7: $89
	adc  e                                           ; $4dc8: $8b
	adc  l                                           ; $4dc9: $8d
	adc  a                                           ; $4dca: $8f
	sub  c                                           ; $4dcb: $91
	sub  e                                           ; $4dcc: $93
	sub  l                                           ; $4dcd: $95
	sub  a                                           ; $4dce: $97
	sbc  c                                           ; $4dcf: $99
	sbc  e                                           ; $4dd0: $9b
	sbc  l                                           ; $4dd1: $9d
	sbc  a                                           ; $4dd2: $9f
	ld   d, h                                        ; $4dd3: $54
	rst  $38                                         ; $4dd4: $ff
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	rst  $38                                         ; $4dd8: $ff
	rst  $38                                         ; $4dd9: $ff
	rst  $38                                         ; $4dda: $ff
	rst  $38                                         ; $4ddb: $ff
	rst  $38                                         ; $4ddc: $ff
	rst  $38                                         ; $4ddd: $ff
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	ld   [hl], e                                     ; $4de0: $73
	ld   [hl], h                                     ; $4de1: $74
	ld   [hl], l                                     ; $4de2: $75
	and  b                                           ; $4de3: $a0
	and  d                                           ; $4de4: $a2
	and  h                                           ; $4de5: $a4
	and  [hl]                                        ; $4de6: $a6
	xor  b                                           ; $4de7: $a8
	xor  d                                           ; $4de8: $aa
	xor  h                                           ; $4de9: $ac
	xor  [hl]                                        ; $4dea: $ae
	or   b                                           ; $4deb: $b0
	or   d                                           ; $4dec: $b2
	or   h                                           ; $4ded: $b4
	or   [hl]                                        ; $4dee: $b6
	cp   b                                           ; $4def: $b8
	cp   d                                           ; $4df0: $ba
	cp   h                                           ; $4df1: $bc
	cp   [hl]                                        ; $4df2: $be
	ld   d, l                                        ; $4df3: $55
	rst  $38                                         ; $4df4: $ff
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	rst  $38                                         ; $4df8: $ff
	rst  $38                                         ; $4df9: $ff
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	halt                                             ; $4e00: $76
	ld   [hl], a                                     ; $4e01: $77
	ld   a, b                                        ; $4e02: $78
	and  c                                           ; $4e03: $a1
	and  e                                           ; $4e04: $a3
	and  l                                           ; $4e05: $a5
	and  a                                           ; $4e06: $a7
	xor  c                                           ; $4e07: $a9
	xor  e                                           ; $4e08: $ab
	xor  l                                           ; $4e09: $ad
	xor  a                                           ; $4e0a: $af
	or   c                                           ; $4e0b: $b1
	or   e                                           ; $4e0c: $b3
	or   l                                           ; $4e0d: $b5
	or   a                                           ; $4e0e: $b7
	cp   c                                           ; $4e0f: $b9
	cp   e                                           ; $4e10: $bb
	cp   l                                           ; $4e11: $bd
	cp   a                                           ; $4e12: $bf
	ld   d, [hl]                                     ; $4e13: $56
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	rst  $38                                         ; $4e1a: $ff
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	rst  $38                                         ; $4e1f: $ff
	ld   a, c                                        ; $4e20: $79
	ld   a, d                                        ; $4e21: $7a
	ld   a, e                                        ; $4e22: $7b
	ret  nz                                          ; $4e23: $c0

	jp   nz, $c6c4                                   ; $4e24: $c2 $c4 $c6

	ret  z                                           ; $4e27: $c8

	jp   z, $cecc                                    ; $4e28: $ca $cc $ce

	ret  nc                                          ; $4e2b: $d0

	jp   nc, $d6d4                                   ; $4e2c: $d2 $d4 $d6

	ret  c                                           ; $4e2f: $d8

	jp   c, $dedc                                    ; $4e30: $da $dc $de

	ld   d, a                                        ; $4e33: $57
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	rst  $38                                         ; $4e37: $ff
	rst  $38                                         ; $4e38: $ff
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	rst  $38                                         ; $4e3e: $ff
	rst  $38                                         ; $4e3f: $ff
	ld   a, h                                        ; $4e40: $7c
	ld   a, l                                        ; $4e41: $7d
	ld   a, [hl]                                     ; $4e42: $7e
	pop  bc                                          ; $4e43: $c1
	jp   $c7c5                                       ; $4e44: $c3 $c5 $c7


	ret                                              ; $4e47: $c9


	set  1, l                                        ; $4e48: $cb $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e4a: $cf
	pop  de                                          ; $4e4b: $d1
	db   $d3                                         ; $4e4c: $d3
	push de                                          ; $4e4d: $d5
	rst  $10                                         ; $4e4e: $d7
	reti                                             ; $4e4f: $d9


	db   $db                                         ; $4e50: $db
	db   $dd                                         ; $4e51: $dd
	rst  JumpTable                                         ; $4e52: $df
	ld   e, b                                        ; $4e53: $58
	rst  $38                                         ; $4e54: $ff
	rst  $38                                         ; $4e55: $ff
	rst  $38                                         ; $4e56: $ff
	rst  $38                                         ; $4e57: $ff
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	rst  $38                                         ; $4e5c: $ff
	rst  $38                                         ; $4e5d: $ff
	rst  $38                                         ; $4e5e: $ff
	rst  $38                                         ; $4e5f: $ff
	ld   l, h                                        ; $4e60: $6c
	ld   l, e                                        ; $4e61: $6b
	ld   l, d                                        ; $4e62: $6a
	ld   l, c                                        ; $4e63: $69
	ld   l, b                                        ; $4e64: $68
	ld   h, a                                        ; $4e65: $67
	ld   h, [hl]                                     ; $4e66: $66
	ld   h, l                                        ; $4e67: $65
	ld   h, h                                        ; $4e68: $64
	ld   h, e                                        ; $4e69: $63
	ld   h, d                                        ; $4e6a: $62
	ld   h, c                                        ; $4e6b: $61
	ld   h, b                                        ; $4e6c: $60
	ld   e, a                                        ; $4e6d: $5f
	ld   e, [hl]                                     ; $4e6e: $5e
	ld   e, l                                        ; $4e6f: $5d
	ld   e, h                                        ; $4e70: $5c
	ld   e, e                                        ; $4e71: $5b
	ld   e, d                                        ; $4e72: $5a
	ld   e, c                                        ; $4e73: $59
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	rst  $38                                         ; $4e77: $ff
	rst  $38                                         ; $4e78: $ff
	rst  $38                                         ; $4e79: $ff
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	rst  $38                                         ; $4e7d: $ff
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	ld   [$0808], sp                                 ; $4e80: $08 $08 $08
	ld   [$0808], sp                                 ; $4e83: $08 $08 $08
	ld   [$0808], sp                                 ; $4e86: $08 $08 $08
	ld   [$0808], sp                                 ; $4e89: $08 $08 $08
	ld   [$0808], sp                                 ; $4e8c: $08 $08 $08
	ld   [$0808], sp                                 ; $4e8f: $08 $08 $08
	ld   [$0808], sp                                 ; $4e92: $08 $08 $08
	ld   [$0808], sp                                 ; $4e95: $08 $08 $08
	ld   [$0808], sp                                 ; $4e98: $08 $08 $08
	ld   [$0808], sp                                 ; $4e9b: $08 $08 $08
	ld   [$0808], sp                                 ; $4e9e: $08 $08 $08
	ld   [$0808], sp                                 ; $4ea1: $08 $08 $08
	ld   [$0808], sp                                 ; $4ea4: $08 $08 $08
	ld   [$0808], sp                                 ; $4ea7: $08 $08 $08
	ld   [$0808], sp                                 ; $4eaa: $08 $08 $08
	ld   [$0808], sp                                 ; $4ead: $08 $08 $08
	ld   [$0808], sp                                 ; $4eb0: $08 $08 $08
	ld   [$0808], sp                                 ; $4eb3: $08 $08 $08
	ld   [$0808], sp                                 ; $4eb6: $08 $08 $08
	ld   [$0808], sp                                 ; $4eb9: $08 $08 $08
	ld   [$0808], sp                                 ; $4ebc: $08 $08 $08
	ld   [$0808], sp                                 ; $4ebf: $08 $08 $08
	ld   [$0808], sp                                 ; $4ec2: $08 $08 $08
	ld   [$0808], sp                                 ; $4ec5: $08 $08 $08
	ld   [$0808], sp                                 ; $4ec8: $08 $08 $08
	ld   [$0808], sp                                 ; $4ecb: $08 $08 $08
	ld   [$0808], sp                                 ; $4ece: $08 $08 $08
	ld   [$0808], sp                                 ; $4ed1: $08 $08 $08
	ld   [$0808], sp                                 ; $4ed4: $08 $08 $08
	ld   [$0808], sp                                 ; $4ed7: $08 $08 $08
	ld   [$0808], sp                                 ; $4eda: $08 $08 $08
	ld   [$0808], sp                                 ; $4edd: $08 $08 $08
	ld   [$0808], sp                                 ; $4ee0: $08 $08 $08
	ld   [$0808], sp                                 ; $4ee3: $08 $08 $08
	ld   [$0808], sp                                 ; $4ee6: $08 $08 $08
	ld   [$0808], sp                                 ; $4ee9: $08 $08 $08
	ld   [$0808], sp                                 ; $4eec: $08 $08 $08
	ld   [$0808], sp                                 ; $4eef: $08 $08 $08
	ld   [$0808], sp                                 ; $4ef2: $08 $08 $08
	ld   [$0808], sp                                 ; $4ef5: $08 $08 $08
	ld   [$0808], sp                                 ; $4ef8: $08 $08 $08
	ld   [$0808], sp                                 ; $4efb: $08 $08 $08
	ld   [$0808], sp                                 ; $4efe: $08 $08 $08
	ld   [$0808], sp                                 ; $4f01: $08 $08 $08
	ld   [$0808], sp                                 ; $4f04: $08 $08 $08
	ld   [$0808], sp                                 ; $4f07: $08 $08 $08
	ld   [$0808], sp                                 ; $4f0a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f0d: $08 $08 $08
	ld   [$0808], sp                                 ; $4f10: $08 $08 $08
	ld   [$0808], sp                                 ; $4f13: $08 $08 $08
	ld   [$0808], sp                                 ; $4f16: $08 $08 $08
	ld   [$0808], sp                                 ; $4f19: $08 $08 $08
	ld   [$0808], sp                                 ; $4f1c: $08 $08 $08
	ld   [$0808], sp                                 ; $4f1f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f22: $08 $08 $08
	ld   [$0808], sp                                 ; $4f25: $08 $08 $08
	ld   [$0808], sp                                 ; $4f28: $08 $08 $08
	ld   [$0808], sp                                 ; $4f2b: $08 $08 $08
	ld   [$0808], sp                                 ; $4f2e: $08 $08 $08
	ld   [$0808], sp                                 ; $4f31: $08 $08 $08
	ld   [$0808], sp                                 ; $4f34: $08 $08 $08
	ld   [$0808], sp                                 ; $4f37: $08 $08 $08
	ld   [$0808], sp                                 ; $4f3a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f3d: $08 $08 $08
	ld   [$0808], sp                                 ; $4f40: $08 $08 $08
	ld   [$0808], sp                                 ; $4f43: $08 $08 $08
	ld   [$0808], sp                                 ; $4f46: $08 $08 $08
	ld   [$0808], sp                                 ; $4f49: $08 $08 $08
	ld   [$0808], sp                                 ; $4f4c: $08 $08 $08
	ld   [$0808], sp                                 ; $4f4f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f52: $08 $08 $08
	ld   [$0808], sp                                 ; $4f55: $08 $08 $08
	ld   [$0808], sp                                 ; $4f58: $08 $08 $08
	ld   [$0808], sp                                 ; $4f5b: $08 $08 $08
	ld   [$0808], sp                                 ; $4f5e: $08 $08 $08
	ld   [$0808], sp                                 ; $4f61: $08 $08 $08
	ld   [$6868], sp                                 ; $4f64: $08 $68 $68
	ld   l, b                                        ; $4f67: $68
	ld   l, b                                        ; $4f68: $68
	ld   l, b                                        ; $4f69: $68
	ld   l, b                                        ; $4f6a: $68
	ld   l, b                                        ; $4f6b: $68
	ld   l, b                                        ; $4f6c: $68
	ld   l, b                                        ; $4f6d: $68
	ld   l, b                                        ; $4f6e: $68
	ld   [$0808], sp                                 ; $4f6f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f72: $08 $08 $08
	ld   [$0808], sp                                 ; $4f75: $08 $08 $08
	ld   [$0808], sp                                 ; $4f78: $08 $08 $08
	ld   [$0808], sp                                 ; $4f7b: $08 $08 $08
	ld   [$e008], sp                                 ; $4f7e: $08 $08 $e0
	inc  bc                                          ; $4f81: $03
	rst  $38                                         ; $4f82: $ff
	ld   a, a                                        ; $4f83: $7f
	db   $ec                                         ; $4f84: $ec
	ld   h, c                                        ; $4f85: $61
	nop                                              ; $4f86: $00
	nop                                              ; $4f87: $00
	nop                                              ; $4f88: $00
	nop                                              ; $4f89: $00
	nop                                              ; $4f8a: $00
	nop                                              ; $4f8b: $00
	nop                                              ; $4f8c: $00
	nop                                              ; $4f8d: $00
	nop                                              ; $4f8e: $00
	nop                                              ; $4f8f: $00


GameState3a_Items::
	ld   a, [wGameSubstate]                                  ; $4f90: $fa $a1 $c2
	or   a                                           ; $4f93: $b7
	jp   nz, Jump_00d_525c                           ; $4f94: $c2 $5c $52

	call ClearDisplayRegsAllowVBlankInt                                       ; $4f97: $cd $59 $0b
	ld   a, [wLCDC]                                  ; $4f9a: $fa $03 $c2
	and  $e0                                         ; $4f9d: $e6 $e0
	or   $f7                                         ; $4f9f: $f6 $f7
	ld   [wLCDC], a                                  ; $4fa1: $ea $03 $c2
	ldh  [rLCDC], a                                  ; $4fa4: $e0 $40
	ld   a, $07                                      ; $4fa6: $3e $07
	ld   [wWX], a                                  ; $4fa8: $ea $09 $c2
	ld   a, $50                                      ; $4fab: $3e $50
	ld   [wWY], a                                  ; $4fad: $ea $0a $c2
	ld   a, $01                                      ; $4fb0: $3e $01
	ld   hl, $7000                                   ; $4fb2: $21 $00 $70
	ld   de, wBGPalettes                                   ; $4fb5: $11 $de $c2
	ld   bc, $0080                                   ; $4fb8: $01 $80 $00
	call FarMemCopy                                       ; $4fbb: $cd $b2 $09
	ld   bc, $003f                                   ; $4fbe: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $4fc1: $cd $aa $04
	ld   a, $ff                                      ; $4fc4: $3e $ff
	ld   [wInGameInputsEnabled], a                                  ; $4fc6: $ea $0e $c2
	call ClearOam                                       ; $4fc9: $cd $d7 $0d
	call ClearBaseAnimSpriteSpecDetails                                       ; $4fcc: $cd $c9 $2e
	ld   a, $00                                      ; $4fcf: $3e $00
	ld   hl, $0000                                   ; $4fd1: $21 $00 $00
	ld   d, h                                        ; $4fd4: $54
	ld   e, l                                        ; $4fd5: $5d
	call ReserveBaseAnimSpriteSpecAndInstance                                       ; $4fd6: $cd $4b $2f
	ld   [$cb49], a                                  ; $4fd9: $ea $49 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $4fdc: $cd $76 $30
	ld   bc, $3008                                   ; $4fdf: $01 $08 $30
	ld   d, $09                                      ; $4fe2: $16 $09
	ld   a, $04                                      ; $4fe4: $3e $04
	ld   e, a                                        ; $4fe6: $5f

	M_FarCall LoadType0NewAnimatedSpriteSpecDetails
	
	call Call_00d_5014                               ; $4ffb: $cd $14 $50
	ld   [$cb4d], a                                  ; $4ffe: $ea $4d $cb
	xor  a                                           ; $5001: $af
	ld   [$cb4b], a                                  ; $5002: $ea $4b $cb
	ld   [$cb4c], a                                  ; $5005: $ea $4c $cb
	xor  a                                           ; $5008: $af
	ld   [$cb44], a                                  ; $5009: $ea $44 $cb
	ld   [$cb45], a                                  ; $500c: $ea $45 $cb
	ld   hl, wGameSubstate                                   ; $500f: $21 $a1 $c2
	inc  [hl]                                        ; $5012: $34
	ret                                              ; $5013: $c9


Call_00d_5014:
	ld   a, [wWramBank]                                  ; $5014: $fa $93 $c2
	push af                                          ; $5017: $f5
	ld   a, $02                                      ; $5018: $3e $02
	ld   [wWramBank], a                                  ; $501a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $501d: $e0 $70
	ld   hl, $0380                                   ; $501f: $21 $80 $03
	ld   de, $da80                                   ; $5022: $11 $80 $da
	ld   b, $00                                      ; $5025: $06 $00
	ld   c, b                                        ; $5027: $48

jr_00d_5028:

	M_FarCall CheckIfFlagSet1
	
	or   a                                           ; $503c: $b7
	jr   z, jr_00d_5043                              ; $503d: $28 $04

	ld   a, b                                        ; $503f: $78
	ld   [de], a                                     ; $5040: $12
	inc  de                                          ; $5041: $13
	inc  c                                           ; $5042: $0c

jr_00d_5043:
	inc  hl                                          ; $5043: $23
	inc  b                                           ; $5044: $04
	bit  7, b                                        ; $5045: $cb $78
	jr   z, jr_00d_5028                              ; $5047: $28 $df

	pop  af                                          ; $5049: $f1
	ld   [wWramBank], a                                  ; $504a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $504d: $e0 $70
	ld   a, c                                        ; $504f: $79
	ret                                              ; $5050: $c9


Call_00d_5051:
	push af                                          ; $5051: $f5
	and  $fc                                         ; $5052: $e6 $fc
	ld   b, a                                        ; $5054: $47
	ld   c, $00                                      ; $5055: $0e $00
	push bc                                          ; $5057: $c5
	ld   hl, $d340                                   ; $5058: $21 $40 $d3
	ld   bc, $0200                                   ; $505b: $01 $00 $02
	ld   de, $0000                                   ; $505e: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5061: $cd $9f $09
	call InitWideTextBoxDimensions                                       ; $5064: $cd $ec $0f
	ld   bc, $0804                                   ; $5067: $01 $04 $08
	call SetKanjiTextBoxDimensions                                       ; $506a: $cd $24 $14
	pop  bc                                          ; $506d: $c1
	ld   a, [$cb4d]                                  ; $506e: $fa $4d $cb
	dec  a                                           ; $5071: $3d
	cp   b                                           ; $5072: $b8
	jr   c, jr_00d_50af                              ; $5073: $38 $3a

jr_00d_5075:
	push bc                                          ; $5075: $c5
	ld   b, $00                                      ; $5076: $06 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5078: $cd $34 $14
	pop  bc                                          ; $507b: $c1
	push bc                                          ; $507c: $c5
	ld   h, $00                                      ; $507d: $26 $00
	ld   l, b                                        ; $507f: $68
	ld   bc, $da80                                   ; $5080: $01 $80 $da
	add  hl, bc                                      ; $5083: $09
	ld   l, [hl]                                     ; $5084: $6e
	ld   h, $00                                      ; $5085: $26 $00
	add  hl, hl                                      ; $5087: $29
	add  hl, hl                                      ; $5088: $29
	add  hl, hl                                      ; $5089: $29
	add  hl, hl                                      ; $508a: $29
	ld   bc, Data_0d_5c1f                                   ; $508b: $01 $1f $5c
	add  hl, bc                                      ; $508e: $09
	ld   a, [hl+]                                    ; $508f: $2a
	ld   h, [hl]                                     ; $5090: $66
	ld   l, a                                        ; $5091: $6f
	ld   bc, Data_0d_618f                                   ; $5092: $01 $8f $61
	add  hl, bc                                      ; $5095: $09
	ld   d, h                                        ; $5096: $54
	ld   e, l                                        ; $5097: $5d
	ld   a, $0d                                      ; $5098: $3e $0d
	ld   hl, $d340                                   ; $509a: $21 $40 $d3
	call LoadInstantText                                       ; $509d: $cd $06 $13
	pop  bc                                          ; $50a0: $c1
	inc  c                                           ; $50a1: $0c
	ld   a, c                                        ; $50a2: $79
	cp   $04                                         ; $50a3: $fe $04
	jr   nc, jr_00d_50af                             ; $50a5: $30 $08

	inc  b                                           ; $50a7: $04
	ld   a, [$cb4d]                                  ; $50a8: $fa $4d $cb
	dec  a                                           ; $50ab: $3d
	cp   b                                           ; $50ac: $b8
	jr   nc, jr_00d_5075                             ; $50ad: $30 $c6

jr_00d_50af:
	pop  af                                          ; $50af: $f1
	ld   d, a                                        ; $50b0: $57
	and  $08                                         ; $50b1: $e6 $08
	sla  a                                           ; $50b3: $cb $27
	swap a                                           ; $50b5: $cb $37
	set  7, a                                        ; $50b7: $cb $ff
	ld   c, a                                        ; $50b9: $4f
	ld   a, d                                        ; $50ba: $7a
	and  $04                                         ; $50bb: $e6 $04
	ld   d, a                                        ; $50bd: $57
	ld   e, $00                                      ; $50be: $1e $00
	set  7, d                                        ; $50c0: $cb $fa
	ld   a, $02                                      ; $50c2: $3e $02
	ld   hl, $d340                                   ; $50c4: $21 $40 $d3
	ld   b, $40                                      ; $50c7: $06 $40
	call EnqueueHDMATransfer                                       ; $50c9: $cd $7c $02
	ret                                              ; $50cc: $c9


Call_00d_50cd:
	ld   a, [$cb50]                                  ; $50cd: $fa $50 $cb
	dec  a                                           ; $50d0: $3d
	ld   hl, $0020                                   ; $50d1: $21 $20 $00
	ld   de, $0003                                   ; $50d4: $11 $03 $00
	ld   bc, $0504                                   ; $50d7: $01 $04 $05
	call Call_00d_5173                               ; $50da: $cd $73 $51
	ld   hl, $0025                                   ; $50dd: $21 $25 $00
	call Call_00d_51c4                               ; $50e0: $cd $c4 $51
	ld   a, [$cb50]                                  ; $50e3: $fa $50 $cb
	ld   hl, $0026                                   ; $50e6: $21 $26 $00
	ld   de, $0000                                   ; $50e9: $11 $00 $00
	ld   bc, $0804                                   ; $50ec: $01 $04 $08
	call Call_00d_5173                               ; $50ef: $cd $73 $51
	ld   hl, $002e                                   ; $50f2: $21 $2e $00
	call Call_00d_51c4                               ; $50f5: $cd $c4 $51
	ld   a, [$cb50]                                  ; $50f8: $fa $50 $cb
	inc  a                                           ; $50fb: $3c
	ld   hl, $002f                                   ; $50fc: $21 $2f $00
	ld   de, $0000                                   ; $50ff: $11 $00 $00
	ld   bc, $0804                                   ; $5102: $01 $04 $08
	call Call_00d_5173                               ; $5105: $cd $73 $51
	ld   hl, $0037                                   ; $5108: $21 $37 $00
	call Call_00d_51c4                               ; $510b: $cd $c4 $51
	ld   a, [$cb50]                                  ; $510e: $fa $50 $cb
	inc  a                                           ; $5111: $3c
	inc  a                                           ; $5112: $3c
	ld   hl, $0038                                   ; $5113: $21 $38 $00
	ld   de, $0000                                   ; $5116: $11 $00 $00
	ld   bc, $0804                                   ; $5119: $01 $04 $08
	call Call_00d_5173                               ; $511c: $cd $73 $51
	ret                                              ; $511f: $c9


Call_00d_5120:
	ld   a, [$cb50]                                  ; $5120: $fa $50 $cb
	dec  a                                           ; $5123: $3d
	dec  a                                           ; $5124: $3d
	ld   hl, $0020                                   ; $5125: $21 $20 $00
	ld   de, $0000                                   ; $5128: $11 $00 $00
	ld   bc, $0804                                   ; $512b: $01 $04 $08
	call Call_00d_5173                               ; $512e: $cd $73 $51
	ld   hl, $0028                                   ; $5131: $21 $28 $00
	call Call_00d_51c4                               ; $5134: $cd $c4 $51
	ld   a, [$cb50]                                  ; $5137: $fa $50 $cb
	dec  a                                           ; $513a: $3d
	ld   hl, $0029                                   ; $513b: $21 $29 $00
	ld   de, $0000                                   ; $513e: $11 $00 $00
	ld   bc, $0804                                   ; $5141: $01 $04 $08
	call Call_00d_5173                               ; $5144: $cd $73 $51
	ld   hl, $0031                                   ; $5147: $21 $31 $00
	call Call_00d_51c4                               ; $514a: $cd $c4 $51
	ld   a, [$cb50]                                  ; $514d: $fa $50 $cb
	ld   hl, $0032                                   ; $5150: $21 $32 $00
	ld   de, $0000                                   ; $5153: $11 $00 $00
	ld   bc, $0804                                   ; $5156: $01 $04 $08
	call Call_00d_5173                               ; $5159: $cd $73 $51
	ld   hl, $003a                                   ; $515c: $21 $3a $00
	call Call_00d_51c4                               ; $515f: $cd $c4 $51
	ld   a, [$cb50]                                  ; $5162: $fa $50 $cb
	inc  a                                           ; $5165: $3c
	ld   hl, $003b                                   ; $5166: $21 $3b $00
	ld   de, $0000                                   ; $5169: $11 $00 $00
	ld   bc, $0504                                   ; $516c: $01 $04 $05
	call Call_00d_5173                               ; $516f: $cd $73 $51
	ret                                              ; $5172: $c9


Call_00d_5173:
	push af                                          ; $5173: $f5
	push bc                                          ; $5174: $c5
	push hl                                          ; $5175: $e5
	and  $01                                         ; $5176: $e6 $01
	rrca                                             ; $5178: $0f
	rrca                                             ; $5179: $0f
	add  e                                           ; $517a: $83
	add  e                                           ; $517b: $83
	ld   de, $d140                                   ; $517c: $11 $40 $d1
	add  hl, de                                      ; $517f: $19
	ld   de, $0020                                   ; $5180: $11 $20 $00

jr_00d_5183:
	push bc                                          ; $5183: $c5
	push hl                                          ; $5184: $e5
	push af                                          ; $5185: $f5

jr_00d_5186:
	push hl                                          ; $5186: $e5
	ld   [hl], a                                     ; $5187: $77
	inc  a                                           ; $5188: $3c
	add  hl, de                                      ; $5189: $19
	ld   [hl], a                                     ; $518a: $77
	inc  a                                           ; $518b: $3c
	pop  hl                                          ; $518c: $e1
	inc  hl                                          ; $518d: $23
	dec  b                                           ; $518e: $05
	jr   nz, jr_00d_5186                             ; $518f: $20 $f5

	pop  af                                          ; $5191: $f1
	add  $10                                         ; $5192: $c6 $10
	pop  hl                                          ; $5194: $e1
	add  hl, de                                      ; $5195: $19
	add  hl, de                                      ; $5196: $19
	pop  bc                                          ; $5197: $c1
	dec  c                                           ; $5198: $0d
	jr   nz, jr_00d_5183                             ; $5199: $20 $e8

	pop  hl                                          ; $519b: $e1
	pop  bc                                          ; $519c: $c1
	pop  af                                          ; $519d: $f1
	and  $02                                         ; $519e: $e6 $02
	sla  a                                           ; $51a0: $cb $27
	sla  a                                           ; $51a2: $cb $27
	or   $04                                         ; $51a4: $f6 $04
	ld   de, $d000                                   ; $51a6: $11 $00 $d0
	add  hl, de                                      ; $51a9: $19
	ld   de, $0020                                   ; $51aa: $11 $20 $00

jr_00d_51ad:
	push hl                                          ; $51ad: $e5
	ld   [hl], a                                     ; $51ae: $77
	add  hl, de                                      ; $51af: $19
	ld   [hl], a                                     ; $51b0: $77
	add  hl, de                                      ; $51b1: $19
	ld   [hl], a                                     ; $51b2: $77
	add  hl, de                                      ; $51b3: $19
	ld   [hl], a                                     ; $51b4: $77
	add  hl, de                                      ; $51b5: $19
	ld   [hl], a                                     ; $51b6: $77
	add  hl, de                                      ; $51b7: $19
	ld   [hl], a                                     ; $51b8: $77
	add  hl, de                                      ; $51b9: $19
	ld   [hl], a                                     ; $51ba: $77
	add  hl, de                                      ; $51bb: $19
	ld   [hl], a                                     ; $51bc: $77
	add  hl, de                                      ; $51bd: $19
	pop  hl                                          ; $51be: $e1
	inc  hl                                          ; $51bf: $23
	dec  b                                           ; $51c0: $05
	jr   nz, jr_00d_51ad                             ; $51c1: $20 $ea

	ret                                              ; $51c3: $c9


Call_00d_51c4:
	push hl                                          ; $51c4: $e5
	ld   bc, $d140                                   ; $51c5: $01 $40 $d1
	add  hl, bc                                      ; $51c8: $09
	ld   bc, $0020                                   ; $51c9: $01 $20 $00
	ld   a, $80                                      ; $51cc: $3e $80
	ld   [hl], a                                     ; $51ce: $77
	add  hl, bc                                      ; $51cf: $09
	ld   [hl], a                                     ; $51d0: $77
	add  hl, bc                                      ; $51d1: $09
	ld   [hl], a                                     ; $51d2: $77
	add  hl, bc                                      ; $51d3: $09
	ld   [hl], a                                     ; $51d4: $77
	add  hl, bc                                      ; $51d5: $09
	ld   [hl], a                                     ; $51d6: $77
	add  hl, bc                                      ; $51d7: $09
	ld   [hl], a                                     ; $51d8: $77
	add  hl, bc                                      ; $51d9: $09
	ld   [hl], a                                     ; $51da: $77
	add  hl, bc                                      ; $51db: $09
	ld   [hl], a                                     ; $51dc: $77
	pop  hl                                          ; $51dd: $e1
	ld   bc, $d000                                   ; $51de: $01 $00 $d0
	add  hl, bc                                      ; $51e1: $09
	ld   bc, $0020                                   ; $51e2: $01 $20 $00
	swap a                                           ; $51e5: $cb $37
	ld   [hl], a                                     ; $51e7: $77
	add  hl, bc                                      ; $51e8: $09
	ld   [hl], a                                     ; $51e9: $77
	add  hl, bc                                      ; $51ea: $09
	ld   [hl], a                                     ; $51eb: $77
	add  hl, bc                                      ; $51ec: $09
	ld   [hl], a                                     ; $51ed: $77
	add  hl, bc                                      ; $51ee: $09
	ld   [hl], a                                     ; $51ef: $77
	add  hl, bc                                      ; $51f0: $09
	ld   [hl], a                                     ; $51f1: $77
	add  hl, bc                                      ; $51f2: $09
	ld   [hl], a                                     ; $51f3: $77
	add  hl, bc                                      ; $51f4: $09
	ld   [hl], a                                     ; $51f5: $77
	ret                                              ; $51f6: $c9


Call_00d_51f7:
	ld   c, $81                                      ; $51f7: $0e $81
	ld   de, $9820                                   ; $51f9: $11 $20 $98
	ld   a, $02                                      ; $51fc: $3e $02
	ld   hl, $d020                                   ; $51fe: $21 $20 $d0
	ld   b, $10                                      ; $5201: $06 $10
	call EnqueueHDMATransfer                                       ; $5203: $cd $7c $02
	ld   c, $80                                      ; $5206: $0e $80
	ld   de, $9820                                   ; $5208: $11 $20 $98
	ld   a, $02                                      ; $520b: $3e $02
	ld   hl, $d160                                   ; $520d: $21 $60 $d1
	ld   b, $10                                      ; $5210: $06 $10
	call EnqueueHDMATransfer                                       ; $5212: $cd $7c $02
	ret                                              ; $5215: $c9


Call_00d_5216:
	and  $03                                         ; $5216: $e6 $03
	rrca                                             ; $5218: $0f
	rrca                                             ; $5219: $0f
	ld   h, $00                                      ; $521a: $26 $00
	ld   l, a                                        ; $521c: $6f
	ld   bc, $d026                                   ; $521d: $01 $26 $d0
	add  hl, bc                                      ; $5220: $09
	ld   a, [hl]                                     ; $5221: $7e
	set  0, a                                        ; $5222: $cb $c7
	ld   [hl+], a                                    ; $5224: $22
	ld   [hl+], a                                    ; $5225: $22
	ld   [hl+], a                                    ; $5226: $22
	ld   [hl+], a                                    ; $5227: $22
	ld   [hl+], a                                    ; $5228: $22
	ld   [hl+], a                                    ; $5229: $22
	ld   [hl+], a                                    ; $522a: $22
	ld   [hl+], a                                    ; $522b: $22
	ld   bc, $0018                                   ; $522c: $01 $18 $00
	add  hl, bc                                      ; $522f: $09
	ld   [hl+], a                                    ; $5230: $22
	ld   [hl+], a                                    ; $5231: $22
	ld   [hl+], a                                    ; $5232: $22
	ld   [hl+], a                                    ; $5233: $22
	ld   [hl+], a                                    ; $5234: $22
	ld   [hl+], a                                    ; $5235: $22
	ld   [hl+], a                                    ; $5236: $22
	ld   [hl+], a                                    ; $5237: $22
	ret                                              ; $5238: $c9


Call_00d_5239:
	and  $03                                         ; $5239: $e6 $03
	rrca                                             ; $523b: $0f
	rrca                                             ; $523c: $0f
	ld   h, $00                                      ; $523d: $26 $00
	ld   l, a                                        ; $523f: $6f
	ld   bc, $d026                                   ; $5240: $01 $26 $d0
	add  hl, bc                                      ; $5243: $09
	ld   a, [hl]                                     ; $5244: $7e
	res  0, a                                        ; $5245: $cb $87
	ld   [hl+], a                                    ; $5247: $22
	ld   [hl+], a                                    ; $5248: $22
	ld   [hl+], a                                    ; $5249: $22
	ld   [hl+], a                                    ; $524a: $22
	ld   [hl+], a                                    ; $524b: $22
	ld   [hl+], a                                    ; $524c: $22
	ld   [hl+], a                                    ; $524d: $22
	ld   [hl+], a                                    ; $524e: $22
	ld   bc, $0018                                   ; $524f: $01 $18 $00
	add  hl, bc                                      ; $5252: $09
	ld   [hl+], a                                    ; $5253: $22
	ld   [hl+], a                                    ; $5254: $22
	ld   [hl+], a                                    ; $5255: $22
	ld   [hl+], a                                    ; $5256: $22
	ld   [hl+], a                                    ; $5257: $22
	ld   [hl+], a                                    ; $5258: $22
	ld   [hl+], a                                    ; $5259: $22
	ld   [hl+], a                                    ; $525a: $22
	ret                                              ; $525b: $c9


Jump_00d_525c:
	ld   a, [wWramBank]                                  ; $525c: $fa $93 $c2
	push af                                          ; $525f: $f5
	ld   a, $02                                      ; $5260: $3e $02
	ld   [wWramBank], a                                  ; $5262: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5265: $e0 $70
	call ClearOam                                       ; $5267: $cd $d7 $0d
	ld   bc, $527e                                   ; $526a: $01 $7e $52
	push bc                                          ; $526d: $c5
	ld   a, [$cb44]                                  ; $526e: $fa $44 $cb
	sla  a                                           ; $5271: $cb $27
	ld   c, a                                        ; $5273: $4f
	ld   b, $00                                      ; $5274: $06 $00
	ld   hl, $528b                                   ; $5276: $21 $8b $52
	add  hl, bc                                      ; $5279: $09
	ld   a, [hl+]                                    ; $527a: $2a
	ld   h, [hl]                                     ; $527b: $66
	ld   l, a                                        ; $527c: $6f
	jp   hl                                          ; $527d: $e9


	call $5674                                       ; $527e: $cd $74 $56
	call AnimateAllAnimatedSpriteSpecs                                       ; $5281: $cd $d3 $2e
	pop  af                                          ; $5284: $f1
	ld   [wWramBank], a                                  ; $5285: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5288: $e0 $70
	ret                                              ; $528a: $c9


	sub  e                                           ; $528b: $93
	ld   d, d                                        ; $528c: $52
	rst  $20                                         ; $528d: $e7
	ld   d, [hl]                                     ; $528e: $56
	ld   d, c                                        ; $528f: $51
	ld   d, a                                        ; $5290: $57
	inc  de                                          ; $5291: $13
	ld   e, d                                        ; $5292: $5a
	ld   hl, $cb45                                   ; $5293: $21 $45 $cb
	ld   a, [hl]                                     ; $5296: $7e
	inc  [hl]                                        ; $5297: $34
	sla  a                                           ; $5298: $cb $27
	ld   h, $00                                      ; $529a: $26 $00
	ld   l, a                                        ; $529c: $6f
	ld   bc, $52a5                                   ; $529d: $01 $a5 $52
	add  hl, bc                                      ; $52a0: $09
	ld   a, [hl+]                                    ; $52a1: $2a
	ld   h, [hl]                                     ; $52a2: $66
	ld   l, a                                        ; $52a3: $6f
	jp   hl                                          ; $52a4: $e9


	cp   a                                           ; $52a5: $bf
	ld   d, d                                        ; $52a6: $52
	db   $ec                                         ; $52a7: $ec
	ld   d, d                                        ; $52a8: $52
	dec  bc                                          ; $52a9: $0b
	ld   d, e                                        ; $52aa: $53
	ld   a, [hl+]                                    ; $52ab: $2a
	ld   d, e                                        ; $52ac: $53
	ld   d, [hl]                                     ; $52ad: $56
	ld   d, e                                        ; $52ae: $53
	nop                                              ; $52af: $00
	ld   d, h                                        ; $52b0: $54
	dec  b                                           ; $52b1: $05
	ld   d, h                                        ; $52b2: $54
	dec  bc                                          ; $52b3: $0b
	ld   d, h                                        ; $52b4: $54
	ld   de, $2d54                                   ; $52b5: $11 $54 $2d
	ld   d, h                                        ; $52b8: $54
	ld   b, a                                        ; $52b9: $47
	ld   d, h                                        ; $52ba: $54
	ld   c, h                                        ; $52bb: $4c
	ld   d, h                                        ; $52bc: $54
	ld   d, b                                        ; $52bd: $50
	ld   d, h                                        ; $52be: $54
	ld   a, [wWramBank]                                  ; $52bf: $fa $93 $c2
	push af                                          ; $52c2: $f5
	ld   a, $07                                      ; $52c3: $3e $07
	ld   [wWramBank], a                                  ; $52c5: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $52c8: $e0 $70
	ld   hl, $d000                                   ; $52ca: $21 $00 $d0
	ld   bc, $0400                                   ; $52cd: $01 $00 $04
	ld   de, $0000                                   ; $52d0: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $52d3: $cd $9f $09
	ld   c, $80                                      ; $52d6: $0e $80
	ld   de, $8000                                   ; $52d8: $11 $00 $80
	ld   a, $07                                      ; $52db: $3e $07
	ld   hl, $d000                                   ; $52dd: $21 $00 $d0
	ld   b, $60                                      ; $52e0: $06 $60
	call EnqueueHDMATransfer                                       ; $52e2: $cd $7c $02
	pop  af                                          ; $52e5: $f1
	ld   [wWramBank], a                                  ; $52e6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $52e9: $e0 $70
	ret                                              ; $52eb: $c9


	ld   c, $80                                      ; $52ec: $0e $80
	ld   de, $8600                                   ; $52ee: $11 $00 $86
	ld   a, $07                                      ; $52f1: $3e $07
	ld   hl, $d000                                   ; $52f3: $21 $00 $d0
	ld   b, $20                                      ; $52f6: $06 $20
	call EnqueueHDMATransfer                                       ; $52f8: $cd $7c $02
	ld   c, $81                                      ; $52fb: $0e $81
	ld   de, $8000                                   ; $52fd: $11 $00 $80
	ld   a, $07                                      ; $5300: $3e $07
	ld   hl, $d000                                   ; $5302: $21 $00 $d0
	ld   b, $40                                      ; $5305: $06 $40
	call EnqueueHDMATransfer                                       ; $5307: $cd $7c $02
	ret                                              ; $530a: $c9


	ld   c, $81                                      ; $530b: $0e $81
	ld   de, $8400                                   ; $530d: $11 $00 $84
	ld   a, $07                                      ; $5310: $3e $07
	ld   hl, $d000                                   ; $5312: $21 $00 $d0
	ld   b, $40                                      ; $5315: $06 $40
	call EnqueueHDMATransfer                                       ; $5317: $cd $7c $02
	ld   c, $01                                      ; $531a: $0e $01
	ld   de, $9700                                   ; $531c: $11 $00 $97
	ld   a, $0d                                      ; $531f: $3e $0d
	ld   hl, $4000                                   ; $5321: $21 $00 $40
	ld   b, $10                                      ; $5324: $06 $10
	call EnqueueHDMATransfer                                       ; $5326: $cd $7c $02
	ret                                              ; $5329: $c9


	ld   a, [wWramBank]                                  ; $532a: $fa $93 $c2
	push af                                          ; $532d: $f5
	ld   a, $07                                      ; $532e: $3e $07
	ld   [wWramBank], a                                  ; $5330: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5333: $e0 $70
	ld   a, $a4                                      ; $5335: $3e $a4
	ld   hl, $d000                                   ; $5337: $21 $00 $d0
	ld   de, $450f                                   ; $533a: $11 $0f $45
	call RLEXorCopy                                       ; $533d: $cd $d2 $09
	ld   c, $81                                      ; $5340: $0e $81
	ld   de, $8800                                   ; $5342: $11 $00 $88
	ld   a, $07                                      ; $5345: $3e $07
	ld   hl, $d000                                   ; $5347: $21 $00 $d0
	ld   b, $60                                      ; $534a: $06 $60
	call EnqueueHDMATransfer                                       ; $534c: $cd $7c $02
	pop  af                                          ; $534f: $f1
	ld   [wWramBank], a                                  ; $5350: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5353: $e0 $70
	ret                                              ; $5355: $c9


	ld   a, [wWramBank]                                  ; $5356: $fa $93 $c2
	push af                                          ; $5359: $f5
	ld   a, $07                                      ; $535a: $3e $07
	ld   [wWramBank], a                                  ; $535c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $535f: $e0 $70
	ld   hl, $d000                                   ; $5361: $21 $00 $d0
	ld   a, $a1                                      ; $5364: $3e $a1
	ld   de, $550e                                   ; $5366: $11 $0e $55
	ld   bc, $200a                                   ; $5369: $01 $0a $20
	call FarCopyLayout                                       ; $536c: $cd $2c $0b
	ld   hl, $d400                                   ; $536f: $21 $00 $d4
	call FarCopyLayout                                       ; $5372: $cd $2c $0b
	ld   c, $81                                      ; $5375: $0e $81
	ld   de, $9800                                   ; $5377: $11 $00 $98
	ld   a, $07                                      ; $537a: $3e $07
	ld   hl, $d000                                   ; $537c: $21 $00 $d0
	ld   b, $14                                      ; $537f: $06 $14
	call EnqueueHDMATransfer                                       ; $5381: $cd $7c $02
	ld   c, $80                                      ; $5384: $0e $80
	ld   de, $9800                                   ; $5386: $11 $00 $98
	ld   a, $07                                      ; $5389: $3e $07
	ld   hl, $d400                                   ; $538b: $21 $00 $d4
	ld   b, $14                                      ; $538e: $06 $14
	call EnqueueHDMATransfer                                       ; $5390: $cd $7c $02
	ld   de, $d800                                   ; $5393: $11 $00 $d8
	ld   hl, $5574                                   ; $5396: $21 $74 $55
	ld   bc, $0100                                   ; $5399: $01 $00 $01
	call MemCopy                                       ; $539c: $cd $a9 $09
	ld   de, $d900                                   ; $539f: $11 $00 $d9
	ld   hl, $5474                                   ; $53a2: $21 $74 $54
	ld   bc, $0100                                   ; $53a5: $01 $00 $01
	call MemCopy                                       ; $53a8: $cd $a9 $09
	ld   c, $81                                      ; $53ab: $0e $81
	ld   de, $9c00                                   ; $53ad: $11 $00 $9c
	ld   a, $07                                      ; $53b0: $3e $07
	ld   hl, $d800                                   ; $53b2: $21 $00 $d8
	ld   b, $10                                      ; $53b5: $06 $10
	call EnqueueHDMATransfer                                       ; $53b7: $cd $7c $02
	ld   c, $80                                      ; $53ba: $0e $80
	ld   de, $9c00                                   ; $53bc: $11 $00 $9c
	ld   a, $07                                      ; $53bf: $3e $07
	ld   hl, $d900                                   ; $53c1: $21 $00 $d9
	ld   b, $10                                      ; $53c4: $06 $10
	call EnqueueHDMATransfer                                       ; $53c6: $cd $7c $02
	pop  af                                          ; $53c9: $f1
	ld   [wWramBank], a                                  ; $53ca: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $53cd: $e0 $70
	ld   de, $d880                                   ; $53cf: $11 $80 $d8
	ld   hl, $5594                                   ; $53d2: $21 $94 $55
	ld   bc, $00c0                                   ; $53d5: $01 $c0 $00
	call MemCopy                                       ; $53d8: $cd $a9 $09
	ld   de, $d940                                   ; $53db: $11 $40 $d9
	ld   hl, $5494                                   ; $53de: $21 $94 $54
	ld   bc, $00c0                                   ; $53e1: $01 $c0 $00
	call MemCopy                                       ; $53e4: $cd $a9 $09
	ld   a, $a3                                      ; $53e7: $3e $a3
	ld   de, $da00                                   ; $53e9: $11 $00 $da
	ld   hl, $714c                                   ; $53ec: $21 $4c $71
	ld   bc, $0080                                   ; $53ef: $01 $80 $00
	call FarMemCopy                                       ; $53f2: $cd $b2 $09
	ld   a, $7f                                      ; $53f5: $3e $7f
	ld   [$da7c], a                                  ; $53f7: $ea $7c $da
	ld   a, $4e                                      ; $53fa: $3e $4e
	ld   [$da7d], a                                  ; $53fc: $ea $7d $da
	ret                                              ; $53ff: $c9


	xor  a                                           ; $5400: $af
	call Call_00d_5051                               ; $5401: $cd $51 $50
	ret                                              ; $5404: $c9


	ld   a, $04                                      ; $5405: $3e $04
	call Call_00d_5051                               ; $5407: $cd $51 $50
	ret                                              ; $540a: $c9


	ld   a, $08                                      ; $540b: $3e $08
	call Call_00d_5051                               ; $540d: $cd $51 $50
	ret                                              ; $5410: $c9


	ld   hl, $d340                                   ; $5411: $21 $40 $d3
	ld   bc, $0200                                   ; $5414: $01 $00 $02
	ld   de, $0000                                   ; $5417: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $541a: $cd $9f $09
	ld   c, $81                                      ; $541d: $0e $81
	ld   de, $8400                                   ; $541f: $11 $00 $84
	ld   a, $02                                      ; $5422: $3e $02
	ld   hl, $d340                                   ; $5424: $21 $40 $d3
	ld   b, $40                                      ; $5427: $06 $40
	call EnqueueHDMATransfer                                       ; $5429: $cd $7c $02
	ret                                              ; $542c: $c9


	xor  a                                           ; $542d: $af
	ld   [$cb4e], a                                  ; $542e: $ea $4e $cb
	ld   [$cb4f], a                                  ; $5431: $ea $4f $cb
	ld   [$cb50], a                                  ; $5434: $ea $50 $cb
	call Call_00d_50cd                               ; $5437: $cd $cd $50
	ld   a, [$cb50]                                  ; $543a: $fa $50 $cb
	call Call_00d_5216                               ; $543d: $cd $16 $52
	call Call_00d_51f7                               ; $5440: $cd $f7 $51
	call Call_00d_5a51                               ; $5443: $cd $51 $5a
	ret                                              ; $5446: $c9


	xor  a                                           ; $5447: $af
	call Call_00d_5ab2                               ; $5448: $cd $b2 $5a
	ret                                              ; $544b: $c9


	call Call_00d_5aec                               ; $544c: $cd $ec $5a
	ret                                              ; $544f: $c9


	call Call_00d_5b32                               ; $5450: $cd $32 $5b
	ld   de, $da30                                   ; $5453: $11 $30 $da
	ld   hl, $c30e                                   ; $5456: $21 $0e $c3
	ld   bc, $0038                                   ; $5459: $01 $38 $00
	call MemCopy                                       ; $545c: $cd $a9 $09
	ld   hl, wBGPalettes                                   ; $545f: $21 $de $c2
	ld   bc, $0040                                   ; $5462: $01 $40 $00
	ld   de, $7fff                                   ; $5465: $11 $ff $7f
	call CopyEthenDintoHL_BCtimes                                       ; $5468: $cd $9f $09
	ld   hl, $cb44                                   ; $546b: $21 $44 $cb
	inc  [hl]                                        ; $546e: $34
	xor  a                                           ; $546f: $af
	ld   [$cb45], a                                  ; $5470: $ea $45 $cb
	ret                                              ; $5473: $c9


	ld   [hl], b                                     ; $5474: $70
	ld   [hl], c                                     ; $5475: $71
	ld   [hl], d                                     ; $5476: $72
	ld   [hl], e                                     ; $5477: $73
	ld   [hl], h                                     ; $5478: $74
	ld   [hl], l                                     ; $5479: $75
	ld   [hl], l                                     ; $547a: $75
	ld   [hl], l                                     ; $547b: $75
	ld   [hl], l                                     ; $547c: $75
	ld   [hl], l                                     ; $547d: $75
	ld   [hl], l                                     ; $547e: $75
	ld   [hl], l                                     ; $547f: $75
	ld   [hl], l                                     ; $5480: $75
	ld   [hl], l                                     ; $5481: $75
	ld   [hl], l                                     ; $5482: $75
	ld   [hl], h                                     ; $5483: $74
	ld   [hl], e                                     ; $5484: $73
	ld   [hl], d                                     ; $5485: $72
	ld   [hl], c                                     ; $5486: $71
	ld   [hl], b                                     ; $5487: $70
	ld   a, a                                        ; $5488: $7f
	ld   a, a                                        ; $5489: $7f
	ld   a, a                                        ; $548a: $7f
	ld   a, a                                        ; $548b: $7f
	ld   a, a                                        ; $548c: $7f
	ld   a, a                                        ; $548d: $7f
	ld   a, a                                        ; $548e: $7f
	ld   a, a                                        ; $548f: $7f
	ld   a, a                                        ; $5490: $7f
	ld   a, a                                        ; $5491: $7f
	ld   a, a                                        ; $5492: $7f
	ld   a, a                                        ; $5493: $7f
	halt                                             ; $5494: $76
	add  b                                           ; $5495: $80
	add  b                                           ; $5496: $80
	add  b                                           ; $5497: $80
	add  b                                           ; $5498: $80
	add  b                                           ; $5499: $80
	add  b                                           ; $549a: $80
	nop                                              ; $549b: $00
	ld   [bc], a                                     ; $549c: $02
	inc  b                                           ; $549d: $04
	ld   b, $08                                      ; $549e: $06 $08
	ld   a, [bc]                                     ; $54a0: $0a
	inc  c                                           ; $54a1: $0c
	ld   c, $10                                      ; $54a2: $0e $10
	ld   [de], a                                     ; $54a4: $12
	inc  d                                           ; $54a5: $14
	ld   d, $76                                      ; $54a6: $16 $76
	ld   a, a                                        ; $54a8: $7f
	ld   a, a                                        ; $54a9: $7f
	ld   a, a                                        ; $54aa: $7f
	ld   a, a                                        ; $54ab: $7f
	ld   a, a                                        ; $54ac: $7f
	ld   a, a                                        ; $54ad: $7f
	ld   a, a                                        ; $54ae: $7f
	ld   a, a                                        ; $54af: $7f
	ld   a, a                                        ; $54b0: $7f
	ld   a, a                                        ; $54b1: $7f
	ld   a, a                                        ; $54b2: $7f
	ld   a, a                                        ; $54b3: $7f
	ld   [hl], a                                     ; $54b4: $77
	add  b                                           ; $54b5: $80
	add  b                                           ; $54b6: $80
	add  b                                           ; $54b7: $80
	add  b                                           ; $54b8: $80
	add  b                                           ; $54b9: $80
	add  b                                           ; $54ba: $80
	ld   bc, $0503                                   ; $54bb: $01 $03 $05
	rlca                                             ; $54be: $07
	add  hl, bc                                      ; $54bf: $09
	dec  bc                                          ; $54c0: $0b
	dec  c                                           ; $54c1: $0d
	rrca                                             ; $54c2: $0f
	ld   de, $1513                                   ; $54c3: $11 $13 $15
	rla                                              ; $54c6: $17
	ld   [hl], a                                     ; $54c7: $77
	ld   a, a                                        ; $54c8: $7f
	ld   a, a                                        ; $54c9: $7f
	ld   a, a                                        ; $54ca: $7f
	ld   a, a                                        ; $54cb: $7f
	ld   a, a                                        ; $54cc: $7f
	ld   a, a                                        ; $54cd: $7f
	ld   a, a                                        ; $54ce: $7f
	ld   a, a                                        ; $54cf: $7f
	ld   a, a                                        ; $54d0: $7f
	ld   a, a                                        ; $54d1: $7f
	ld   a, a                                        ; $54d2: $7f
	ld   a, a                                        ; $54d3: $7f
	ld   a, b                                        ; $54d4: $78
	add  b                                           ; $54d5: $80
	add  b                                           ; $54d6: $80
	add  b                                           ; $54d7: $80
	add  b                                           ; $54d8: $80
	add  b                                           ; $54d9: $80
	add  b                                           ; $54da: $80
	jr   jr_00d_54f7                                 ; $54db: $18 $1a

	inc  e                                           ; $54dd: $1c
	ld   e, $20                                      ; $54de: $1e $20
	ld   [hl+], a                                    ; $54e0: $22
	inc  h                                           ; $54e1: $24
	ld   h, $28                                      ; $54e2: $26 $28
	ld   a, [hl+]                                    ; $54e4: $2a
	inc  l                                           ; $54e5: $2c
	ld   l, $78                                      ; $54e6: $2e $78
	ld   a, a                                        ; $54e8: $7f
	ld   a, a                                        ; $54e9: $7f
	ld   a, a                                        ; $54ea: $7f
	ld   a, a                                        ; $54eb: $7f
	ld   a, a                                        ; $54ec: $7f
	ld   a, a                                        ; $54ed: $7f
	ld   a, a                                        ; $54ee: $7f
	ld   a, a                                        ; $54ef: $7f
	ld   a, a                                        ; $54f0: $7f
	ld   a, a                                        ; $54f1: $7f
	ld   a, a                                        ; $54f2: $7f
	ld   a, a                                        ; $54f3: $7f
	ld   a, c                                        ; $54f4: $79
	add  b                                           ; $54f5: $80
	add  b                                           ; $54f6: $80

jr_00d_54f7:
	add  b                                           ; $54f7: $80
	add  b                                           ; $54f8: $80
	add  b                                           ; $54f9: $80
	add  b                                           ; $54fa: $80
	add  hl, de                                      ; $54fb: $19
	dec  de                                          ; $54fc: $1b
	dec  e                                           ; $54fd: $1d
	rra                                              ; $54fe: $1f
	ld   hl, $2523                                   ; $54ff: $21 $23 $25
	daa                                              ; $5502: $27
	add  hl, hl                                      ; $5503: $29
	dec  hl                                          ; $5504: $2b
	dec  l                                           ; $5505: $2d
	cpl                                              ; $5506: $2f
	ld   a, c                                        ; $5507: $79
	ld   a, a                                        ; $5508: $7f
	ld   a, a                                        ; $5509: $7f
	ld   a, a                                        ; $550a: $7f
	ld   a, a                                        ; $550b: $7f
	ld   a, a                                        ; $550c: $7f
	ld   a, a                                        ; $550d: $7f
	ld   a, a                                        ; $550e: $7f
	ld   a, a                                        ; $550f: $7f
	ld   a, a                                        ; $5510: $7f
	ld   a, a                                        ; $5511: $7f
	ld   a, a                                        ; $5512: $7f
	ld   a, a                                        ; $5513: $7f
	ld   a, b                                        ; $5514: $78
	add  b                                           ; $5515: $80
	add  b                                           ; $5516: $80
	add  b                                           ; $5517: $80
	add  b                                           ; $5518: $80
	add  b                                           ; $5519: $80
	add  b                                           ; $551a: $80
	jr   nc, jr_00d_554f                             ; $551b: $30 $32

	inc  [hl]                                        ; $551d: $34
	ld   [hl], $38                                   ; $551e: $36 $38
	ld   a, [hl-]                                    ; $5520: $3a
	inc  a                                           ; $5521: $3c
	ld   a, $40                                      ; $5522: $3e $40
	ld   b, d                                        ; $5524: $42
	ld   b, h                                        ; $5525: $44
	ld   b, [hl]                                     ; $5526: $46
	ld   a, b                                        ; $5527: $78
	ld   a, a                                        ; $5528: $7f
	ld   a, a                                        ; $5529: $7f
	ld   a, a                                        ; $552a: $7f
	ld   a, a                                        ; $552b: $7f
	ld   a, a                                        ; $552c: $7f
	ld   a, a                                        ; $552d: $7f
	ld   a, a                                        ; $552e: $7f
	ld   a, a                                        ; $552f: $7f
	ld   a, a                                        ; $5530: $7f
	ld   a, a                                        ; $5531: $7f
	ld   a, a                                        ; $5532: $7f
	ld   a, a                                        ; $5533: $7f
	ld   a, d                                        ; $5534: $7a
	add  b                                           ; $5535: $80
	add  b                                           ; $5536: $80
	add  b                                           ; $5537: $80
	add  b                                           ; $5538: $80
	add  b                                           ; $5539: $80
	add  b                                           ; $553a: $80
	ld   sp, $3533                                   ; $553b: $31 $33 $35
	scf                                              ; $553e: $37
	add  hl, sp                                      ; $553f: $39
	dec  sp                                          ; $5540: $3b
	dec  a                                           ; $5541: $3d
	ccf                                              ; $5542: $3f
	ld   b, c                                        ; $5543: $41
	ld   b, e                                        ; $5544: $43
	ld   b, l                                        ; $5545: $45
	ld   b, l                                        ; $5546: $45
	ld   a, d                                        ; $5547: $7a
	ld   a, a                                        ; $5548: $7f
	ld   a, a                                        ; $5549: $7f
	ld   a, a                                        ; $554a: $7f
	ld   a, a                                        ; $554b: $7f
	ld   a, a                                        ; $554c: $7f
	ld   a, a                                        ; $554d: $7f
	ld   a, a                                        ; $554e: $7f

jr_00d_554f:
	ld   a, a                                        ; $554f: $7f
	ld   a, a                                        ; $5550: $7f
	ld   a, a                                        ; $5551: $7f
	ld   a, a                                        ; $5552: $7f
	ld   a, a                                        ; $5553: $7f
	ld   a, e                                        ; $5554: $7b
	ld   a, h                                        ; $5555: $7c
	ld   a, h                                        ; $5556: $7c
	ld   a, l                                        ; $5557: $7d
	ld   a, [hl]                                     ; $5558: $7e
	ld   [hl], l                                     ; $5559: $75
	ld   [hl], l                                     ; $555a: $75
	ld   [hl], l                                     ; $555b: $75
	ld   [hl], l                                     ; $555c: $75
	ld   [hl], l                                     ; $555d: $75
	ld   [hl], l                                     ; $555e: $75
	ld   [hl], l                                     ; $555f: $75
	ld   [hl], l                                     ; $5560: $75
	ld   [hl], l                                     ; $5561: $75
	ld   [hl], l                                     ; $5562: $75
	ld   a, [hl]                                     ; $5563: $7e
	ld   a, l                                        ; $5564: $7d
	ld   a, h                                        ; $5565: $7c
	ld   a, h                                        ; $5566: $7c
	ld   a, e                                        ; $5567: $7b
	ld   a, a                                        ; $5568: $7f
	ld   a, a                                        ; $5569: $7f
	ld   a, a                                        ; $556a: $7f
	ld   a, a                                        ; $556b: $7f
	ld   a, a                                        ; $556c: $7f
	ld   a, a                                        ; $556d: $7f
	ld   a, a                                        ; $556e: $7f
	ld   a, a                                        ; $556f: $7f
	ld   a, a                                        ; $5570: $7f
	ld   a, a                                        ; $5571: $7f
	ld   a, a                                        ; $5572: $7f
	ld   a, a                                        ; $5573: $7f
	ld   [$0808], sp                                 ; $5574: $08 $08 $08
	ld   [$0808], sp                                 ; $5577: $08 $08 $08
	ld   [$0808], sp                                 ; $557a: $08 $08 $08
	ld   [$0808], sp                                 ; $557d: $08 $08 $08
	ld   [$2808], sp                                 ; $5580: $08 $08 $28
	jr   z, @+$2a                                    ; $5583: $28 $28

	jr   z, jr_00d_55af                              ; $5585: $28 $28

	jr   z, @+$0a                                    ; $5587: $28 $08

	ld   [$0808], sp                                 ; $5589: $08 $08 $08
	ld   [$0808], sp                                 ; $558c: $08 $08 $08
	ld   [$0808], sp                                 ; $558f: $08 $08 $08
	ld   [$0808], sp                                 ; $5592: $08 $08 $08
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	ld   [$0808], sp                                 ; $559b: $08 $08 $08
	ld   [$0808], sp                                 ; $559e: $08 $08 $08
	ld   [$0808], sp                                 ; $55a1: $08 $08 $08
	ld   [$0808], sp                                 ; $55a4: $08 $08 $08
	jr   z, @+$0a                                    ; $55a7: $28 $08

	ld   [$0808], sp                                 ; $55a9: $08 $08 $08
	ld   [$0808], sp                                 ; $55ac: $08 $08 $08

jr_00d_55af:
	ld   [$0808], sp                                 ; $55af: $08 $08 $08
	ld   [$0808], sp                                 ; $55b2: $08 $08 $08
	nop                                              ; $55b5: $00
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	ld   [$0808], sp                                 ; $55bb: $08 $08 $08
	ld   [$0808], sp                                 ; $55be: $08 $08 $08
	ld   [$0808], sp                                 ; $55c1: $08 $08 $08
	ld   [$0808], sp                                 ; $55c4: $08 $08 $08
	jr   z, @+$0a                                    ; $55c7: $28 $08

	ld   [$0808], sp                                 ; $55c9: $08 $08 $08
	ld   [$0808], sp                                 ; $55cc: $08 $08 $08
	ld   [$0808], sp                                 ; $55cf: $08 $08 $08
	ld   [$0808], sp                                 ; $55d2: $08 $08 $08
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	nop                                              ; $55d8: $00
	nop                                              ; $55d9: $00
	nop                                              ; $55da: $00
	ld   [$0808], sp                                 ; $55db: $08 $08 $08
	ld   [$0808], sp                                 ; $55de: $08 $08 $08
	ld   [$0808], sp                                 ; $55e1: $08 $08 $08
	ld   [$0808], sp                                 ; $55e4: $08 $08 $08
	jr   z, @+$0a                                    ; $55e7: $28 $08

	ld   [$0808], sp                                 ; $55e9: $08 $08 $08
	ld   [$0808], sp                                 ; $55ec: $08 $08 $08
	ld   [$0808], sp                                 ; $55ef: $08 $08 $08
	ld   [$0808], sp                                 ; $55f2: $08 $08 $08
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	ld   [$0808], sp                                 ; $55fb: $08 $08 $08
	ld   [$0808], sp                                 ; $55fe: $08 $08 $08
	ld   [$0808], sp                                 ; $5601: $08 $08 $08
	ld   [$0808], sp                                 ; $5604: $08 $08 $08
	jr   z, @+$0a                                    ; $5607: $28 $08

	ld   [$0808], sp                                 ; $5609: $08 $08 $08
	ld   [$0808], sp                                 ; $560c: $08 $08 $08
	ld   [$0808], sp                                 ; $560f: $08 $08 $08
	ld   [$4808], sp                                 ; $5612: $08 $08 $48
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	ld   [$0808], sp                                 ; $561b: $08 $08 $08
	ld   [$0808], sp                                 ; $561e: $08 $08 $08
	ld   [$0808], sp                                 ; $5621: $08 $08 $08
	ld   [$0808], sp                                 ; $5624: $08 $08 $08
	ld   l, b                                        ; $5627: $68
	ld   [$0808], sp                                 ; $5628: $08 $08 $08
	ld   [$0808], sp                                 ; $562b: $08 $08 $08
	ld   [$0808], sp                                 ; $562e: $08 $08 $08
	ld   [$0808], sp                                 ; $5631: $08 $08 $08
	ld   [rRAMG], sp                                 ; $5634: $08 $00 $00
	nop                                              ; $5637: $00
	nop                                              ; $5638: $00
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	ld   [$0808], sp                                 ; $563b: $08 $08 $08
	ld   [$0808], sp                                 ; $563e: $08 $08 $08
	ld   [$0808], sp                                 ; $5641: $08 $08 $08
	ld   [$0808], sp                                 ; $5644: $08 $08 $08
	jr   z, @+$0a                                    ; $5647: $28 $08

	ld   [$0808], sp                                 ; $5649: $08 $08 $08
	ld   [$0808], sp                                 ; $564c: $08 $08 $08
	ld   [$0808], sp                                 ; $564f: $08 $08 $08
	ld   [$0808], sp                                 ; $5652: $08 $08 $08
	ld   [$0808], sp                                 ; $5655: $08 $08 $08
	ld   [$4848], sp                                 ; $5658: $08 $48 $48
	ld   c, b                                        ; $565b: $48
	ld   c, b                                        ; $565c: $48
	ld   c, b                                        ; $565d: $48
	ld   c, b                                        ; $565e: $48
	ld   c, b                                        ; $565f: $48
	ld   c, b                                        ; $5660: $48
	ld   c, b                                        ; $5661: $48
	ld   l, b                                        ; $5662: $68
	jr   z, jr_00d_568d                              ; $5663: $28 $28

	jr   z, @+$2a                                    ; $5665: $28 $28

	jr   z, @+$0a                                    ; $5667: $28 $08

	ld   [$0808], sp                                 ; $5669: $08 $08 $08
	ld   [$0808], sp                                 ; $566c: $08 $08 $08
	ld   [$0808], sp                                 ; $566f: $08 $08 $08
	ld   [$3e08], sp                                 ; $5672: $08 $08 $3e
	add  hl, bc                                      ; $5675: $09
	ld   [wSpriteGroup], a                                  ; $5676: $ea $1a $c2
	ld   a, [$cb4e]                                  ; $5679: $fa $4e $cb
	ld   h, $00                                      ; $567c: $26 $00
	ld   l, a                                        ; $567e: $6f
	ld   de, $da80                                   ; $567f: $11 $80 $da
	add  hl, de                                      ; $5682: $19
	ld   l, [hl]                                     ; $5683: $6e
	ld   h, $00                                      ; $5684: $26 $00
	add  hl, hl                                      ; $5686: $29
	add  hl, hl                                      ; $5687: $29
	add  hl, hl                                      ; $5688: $29
	add  hl, hl                                      ; $5689: $29
	ld   de, $5c2c                                   ; $568a: $11 $2c $5c

jr_00d_568d:
	add  hl, de                                      ; $568d: $19
	ld   a, $0d                                      ; $568e: $3e $0d
	call FarGetByte                                       ; $5690: $cd $cf $0a
	ld   bc, $0858                                   ; $5693: $01 $58 $08
	or   a                                           ; $5696: $b7

	M_FarCall "nz", Func_0f_4000

	ld   a, [$cb4e]                                  ; $56ab: $fa $4e $cb
	cp   $04                                         ; $56ae: $fe $04
	jr   nc, jr_00d_56bc                             ; $56b0: $30 $0a

	ld   bc, $0000                                   ; $56b2: $01 $00 $00
	ld   a, $05                                      ; $56b5: $3e $05
	call LoadSpriteFromMainTable                                       ; $56b7: $cd $16 $0e
	jr   jr_00d_56c6                                 ; $56ba: $18 $0a

jr_00d_56bc:
	ld   bc, $0000                                   ; $56bc: $01 $00 $00
	ld   a, $07                                      ; $56bf: $3e $07
	call LoadSpriteFromMainTable                                       ; $56c1: $cd $16 $0e
	jr   jr_00d_56c6                                 ; $56c4: $18 $00

jr_00d_56c6:
	ld   a, [$cb4e]                                  ; $56c6: $fa $4e $cb
	and  $fc                                         ; $56c9: $e6 $fc
	ld   b, a                                        ; $56cb: $47
	ld   a, [$cb4d]                                  ; $56cc: $fa $4d $cb
	dec  a                                           ; $56cf: $3d
	and  $fc                                         ; $56d0: $e6 $fc
	cp   b                                           ; $56d2: $b8
	jr   nz, jr_00d_56de                             ; $56d3: $20 $09

	ld   bc, $9800                                   ; $56d5: $01 $00 $98
	ld   a, $06                                      ; $56d8: $3e $06
	call LoadSpriteFromMainTable                                       ; $56da: $cd $16 $0e
	ret                                              ; $56dd: $c9


jr_00d_56de:
	ld   bc, $9800                                   ; $56de: $01 $00 $98
	ld   a, $08                                      ; $56e1: $3e $08
	call LoadSpriteFromMainTable                                       ; $56e3: $cd $16 $0e
	ret                                              ; $56e6: $c9


	ld   a, [$cb45]                                  ; $56e7: $fa $45 $cb
	or   a                                           ; $56ea: $b7
	jr   nz, jr_00d_5723                             ; $56eb: $20 $36

	ld   a, $7f                                      ; $56ed: $3e $7f
	ld   [$da28], a                                  ; $56ef: $ea $28 $da
	ld   a, $4e                                      ; $56f2: $3e $4e
	ld   [$da29], a                                  ; $56f4: $ea $29 $da
	xor  a                                           ; $56f7: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $56f8: $ea $62 $c3
	ld   a, $40                                      ; $56fb: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $56fd: $ea $63 $c3
	ld   a, $04                                      ; $5700: $3e $04
	ld   b, $00                                      ; $5702: $06 $00
	ld   hl, wBGPalettes                                   ; $5704: $21 $de $c2
	ld   c, $00                                      ; $5707: $0e $00
	ld   de, $da00                                   ; $5709: $11 $00 $da
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $570c: $cd $48 $07
	ld   a, $4f                                      ; $570f: $3e $4f
	ld   [$c20b], a                                  ; $5711: $ea $0b $c2
	ld   hl, $c20c                                   ; $5714: $21 $0c $c2
	set  6, [hl]                                     ; $5717: $cb $f6
	ld   hl, wIE                                   ; $5719: $21 $0d $c2
	set  1, [hl]                                     ; $571c: $cb $ce
	ld   a, $0c                                      ; $571e: $3e $0c
	ld   [wLCDCIntFuncIdx], a                                  ; $5720: $ea $8d $c2

jr_00d_5723:
	ld   bc, $0040                                   ; $5723: $01 $40 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $5726: $cd $32 $08
	ld   hl, $cb45                                   ; $5729: $21 $45 $cb
	ld   a, [hl]                                     ; $572c: $7e
	inc  [hl]                                        ; $572d: $34
	cp   $0f                                         ; $572e: $fe $0f
	ret  c                                           ; $5730: $d8

	ld   a, $00                                      ; $5731: $3e $00
	ld   hl, $da00                                   ; $5733: $21 $00 $da
	ld   de, wBGPalettes                                   ; $5736: $11 $de $c2
	ld   bc, $0080                                   ; $5739: $01 $80 $00
	call FarMemCopy                                       ; $573c: $cd $b2 $09
	ld   bc, $003f                                   ; $573f: $01 $3f $00
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5742: $cd $aa $04
	call Call_00d_5799                               ; $5745: $cd $99 $57
	ld   hl, $cb44                                   ; $5748: $21 $44 $cb
	inc  [hl]                                        ; $574b: $34
	xor  a                                           ; $574c: $af
	ld   [$cb45], a                                  ; $574d: $ea $45 $cb
	ret                                              ; $5750: $c9


	ld   bc, $5768                                   ; $5751: $01 $68 $57
	push bc                                          ; $5754: $c5
	call Call_00d_5799                               ; $5755: $cd $99 $57
	ld   a, [$cb45]                                  ; $5758: $fa $45 $cb
	sla  a                                           ; $575b: $cb $27
	ld   h, $00                                      ; $575d: $26 $00
	ld   l, a                                        ; $575f: $6f
	ld   bc, $578f                                   ; $5760: $01 $8f $57
	add  hl, bc                                      ; $5763: $09
	ld   a, [hl+]                                    ; $5764: $2a
	ld   h, [hl]                                     ; $5765: $66
	ld   l, a                                        ; $5766: $6f
	jp   hl                                          ; $5767: $e9


	ld   a, [$cb49]                                  ; $5768: $fa $49 $cb
	call HLequAddrOfAnimSpriteSpecDetails                                       ; $576b: $cd $76 $30
	ld   b, $30                                      ; $576e: $06 $30
	ld   a, [$cb4e]                                  ; $5770: $fa $4e $cb
	and  $03                                         ; $5773: $e6 $03
	swap a                                           ; $5775: $cb $37
	set  3, a                                        ; $5777: $cb $df
	ld   c, a                                        ; $5779: $4f

	M_FarCall SetType0XandY
	
	ret                                              ; $578e: $c9


	inc  b                                           ; $578f: $04
	ld   e, b                                        ; $5790: $58
	sbc  $58                                         ; $5791: $de $58
	dec  b                                           ; $5793: $05
	ld   e, c                                        ; $5794: $59
	inc  l                                           ; $5795: $2c
	ld   e, c                                        ; $5796: $59
	and  b                                           ; $5797: $a0
	ld   e, c                                        ; $5798: $59

Call_00d_5799:
	ld   hl, $cb4c                                   ; $5799: $21 $4c $cb
	ld   a, [hl]                                     ; $579c: $7e
	and  $3f                                         ; $579d: $e6 $3f
	srl  a                                           ; $579f: $cb $3f
	inc  [hl]                                        ; $57a1: $34
	ld   h, $00                                      ; $57a2: $26 $00
	ld   l, a                                        ; $57a4: $6f
	ld   bc, $57c4                                   ; $57a5: $01 $c4 $57
	add  hl, bc                                      ; $57a8: $09
	ld   a, [hl]                                     ; $57a9: $7e
	ld   h, $00                                      ; $57aa: $26 $00
	ld   l, a                                        ; $57ac: $6f
	add  hl, hl                                      ; $57ad: $29
	ld   bc, $57e4                                   ; $57ae: $01 $e4 $57
	add  hl, bc                                      ; $57b1: $09
	ld   a, $0d                                      ; $57b2: $3e $0d
	ld   de, $c306                                   ; $57b4: $11 $06 $c3
	ld   bc, $0002                                   ; $57b7: $01 $02 $00
	call FarMemCopy                                       ; $57ba: $cd $b2 $09
	ld   bc, $1414                                   ; $57bd: $01 $14 $14
	call SetBGandOBJPaletteRangesToUpdate                                       ; $57c0: $cd $aa $04
	ret                                              ; $57c3: $c9


	ld   b, $06                                      ; $57c4: $06 $06
	ld   b, $06                                      ; $57c6: $06 $06
	ld   b, $06                                      ; $57c8: $06 $06
	ld   b, $06                                      ; $57ca: $06 $06
	rlca                                             ; $57cc: $07
	ld   [$0a09], sp                                 ; $57cd: $08 $09 $0a
	dec  bc                                          ; $57d0: $0b
	inc  c                                           ; $57d1: $0c
	dec  c                                           ; $57d2: $0d
	ld   c, $0f                                      ; $57d3: $0e $0f
	rrca                                             ; $57d5: $0f
	rrca                                             ; $57d6: $0f
	rrca                                             ; $57d7: $0f
	rrca                                             ; $57d8: $0f
	rrca                                             ; $57d9: $0f
	rrca                                             ; $57da: $0f
	rrca                                             ; $57db: $0f
	ld   c, $0d                                      ; $57dc: $0e $0d
	inc  c                                           ; $57de: $0c
	dec  bc                                          ; $57df: $0b
	ld   a, [bc]                                     ; $57e0: $0a
	add  hl, bc                                      ; $57e1: $09
	ld   [$ff07], sp                                 ; $57e2: $08 $07 $ff
	ld   a, a                                        ; $57e5: $7f
	cp   a                                           ; $57e6: $bf
	ld   [hl], a                                     ; $57e7: $77
	ld   a, a                                        ; $57e8: $7f
	ld   l, a                                        ; $57e9: $6f
	ccf                                              ; $57ea: $3f
	ld   h, a                                        ; $57eb: $67
	rst  $38                                         ; $57ec: $ff
	ld   e, [hl]                                     ; $57ed: $5e
	cp   a                                           ; $57ee: $bf
	ld   d, [hl]                                     ; $57ef: $56
	ld   a, a                                        ; $57f0: $7f
	ld   c, [hl]                                     ; $57f1: $4e
	ccf                                              ; $57f2: $3f
	ld   b, [hl]                                     ; $57f3: $46
	rst  $38                                         ; $57f4: $ff
	dec  a                                           ; $57f5: $3d
	cp   a                                           ; $57f6: $bf
	dec  [hl]                                        ; $57f7: $35
	ld   a, a                                        ; $57f8: $7f
	dec  l                                           ; $57f9: $2d
	ccf                                              ; $57fa: $3f
	dec  h                                           ; $57fb: $25
	rst  $38                                         ; $57fc: $ff
	inc  e                                           ; $57fd: $1c
	cp   a                                           ; $57fe: $bf
	inc  d                                           ; $57ff: $14
	ld   a, a                                        ; $5800: $7f
	inc  c                                           ; $5801: $0c
	rra                                              ; $5802: $1f
	nop                                              ; $5803: $00
	ld   a, [wInGameButtonsPressed]                                  ; $5804: $fa $10 $c2
	bit  1, a                                        ; $5807: $cb $4f
	jr   z, jr_00d_5819                              ; $5809: $28 $0e

	ld   a, $22                                      ; $580b: $3e $22
	call PlaySoundEffect                                       ; $580d: $cd $df $1a
	ld   hl, $cb44                                   ; $5810: $21 $44 $cb
	inc  [hl]                                        ; $5813: $34
	xor  a                                           ; $5814: $af
	ld   [$cb45], a                                  ; $5815: $ea $45 $cb
	ret                                              ; $5818: $c9


jr_00d_5819:
	bit  6, a                                        ; $5819: $cb $77
	jr   z, jr_00d_5857                              ; $581b: $28 $3a

	ld   a, [$cb4e]                                  ; $581d: $fa $4e $cb
	call Call_00d_5239                               ; $5820: $cd $39 $52
	ld   hl, $cb4f                                   ; $5823: $21 $4f $cb
	ld   a, [$cb4e]                                  ; $5826: $fa $4e $cb
	and  $03                                         ; $5829: $e6 $03
	jr   nz, jr_00d_583b                             ; $582b: $20 $0e

	ld   a, [$cb4d]                                  ; $582d: $fa $4d $cb
	ld   b, a                                        ; $5830: $47
	ld   a, [$cb4e]                                  ; $5831: $fa $4e $cb
	add  $04                                         ; $5834: $c6 $04
	ld   [hl], a                                     ; $5836: $77
	cp   b                                           ; $5837: $b8
	jr   c, jr_00d_583b                              ; $5838: $38 $01

	ld   [hl], b                                     ; $583a: $70

jr_00d_583b:
	dec  [hl]                                        ; $583b: $35
	ld   a, [$cb4e]                                  ; $583c: $fa $4e $cb
	cp   [hl]                                        ; $583f: $be
	ret  z                                           ; $5840: $c8

	ld   a, [hl]                                     ; $5841: $7e
	call Call_00d_5216                               ; $5842: $cd $16 $52
	call Call_00d_51f7                               ; $5845: $cd $f7 $51
	ld   a, $20                                      ; $5848: $3e $20
	call PlaySoundEffect                                       ; $584a: $cd $df $1a
	ld   a, $01                                      ; $584d: $3e $01
	ld   [$cb45], a                                  ; $584f: $ea $45 $cb
	xor  a                                           ; $5852: $af
	ld   [$cb48], a                                  ; $5853: $ea $48 $cb
	ret                                              ; $5856: $c9


jr_00d_5857:
	bit  7, a                                        ; $5857: $cb $7f
	jr   z, jr_00d_5898                              ; $5859: $28 $3d

	ld   a, [$cb4e]                                  ; $585b: $fa $4e $cb
	call Call_00d_5239                               ; $585e: $cd $39 $52
	ld   hl, $cb4f                                   ; $5861: $21 $4f $cb
	ld   a, [$cb4d]                                  ; $5864: $fa $4d $cb
	dec  a                                           ; $5867: $3d
	ld   b, a                                        ; $5868: $47
	ld   a, [$cb4e]                                  ; $5869: $fa $4e $cb
	cp   b                                           ; $586c: $b8
	jr   nc, jr_00d_5875                             ; $586d: $30 $06

	and  $03                                         ; $586f: $e6 $03
	cp   $03                                         ; $5871: $fe $03
	jr   nz, jr_00d_587c                             ; $5873: $20 $07

jr_00d_5875:
	ld   a, [$cb4e]                                  ; $5875: $fa $4e $cb
	and  $fc                                         ; $5878: $e6 $fc
	dec  a                                           ; $587a: $3d
	ld   [hl], a                                     ; $587b: $77

jr_00d_587c:
	inc  [hl]                                        ; $587c: $34
	ld   a, [$cb4e]                                  ; $587d: $fa $4e $cb
	cp   [hl]                                        ; $5880: $be
	ret  z                                           ; $5881: $c8

	ld   a, [hl]                                     ; $5882: $7e
	call Call_00d_5216                               ; $5883: $cd $16 $52
	call Call_00d_51f7                               ; $5886: $cd $f7 $51
	ld   a, $20                                      ; $5889: $3e $20
	call PlaySoundEffect                                       ; $588b: $cd $df $1a
	ld   a, $02                                      ; $588e: $3e $02
	ld   [$cb45], a                                  ; $5890: $ea $45 $cb
	xor  a                                           ; $5893: $af
	ld   [$cb48], a                                  ; $5894: $ea $48 $cb
	ret                                              ; $5897: $c9


jr_00d_5898:
	ld   a, [wInGameButtonsHeld]                                  ; $5898: $fa $0f $c2
	and  $c0                                         ; $589b: $e6 $c0
	ret  nz                                          ; $589d: $c0

	ld   a, [wInGameButtonsHeld]                                  ; $589e: $fa $0f $c2
	bit  5, a                                        ; $58a1: $cb $6f
	jr   z, jr_00d_58bd                              ; $58a3: $28 $18

	ld   a, [$cb4e]                                  ; $58a5: $fa $4e $cb
	sub  $04                                         ; $58a8: $d6 $04
	ret  c                                           ; $58aa: $d8

	ld   [$cb4f], a                                  ; $58ab: $ea $4f $cb
	ld   a, $20                                      ; $58ae: $3e $20
	call PlaySoundEffect                                       ; $58b0: $cd $df $1a
	ld   a, $03                                      ; $58b3: $3e $03
	ld   [$cb45], a                                  ; $58b5: $ea $45 $cb
	xor  a                                           ; $58b8: $af
	ld   [$cb48], a                                  ; $58b9: $ea $48 $cb
	ret                                              ; $58bc: $c9


jr_00d_58bd:
	bit  4, a                                        ; $58bd: $cb $67
	ret  z                                           ; $58bf: $c8

	ld   a, [$cb4d]                                  ; $58c0: $fa $4d $cb
	ld   b, a                                        ; $58c3: $47
	ld   a, [$cb4e]                                  ; $58c4: $fa $4e $cb
	add  $04                                         ; $58c7: $c6 $04
	ret  c                                           ; $58c9: $d8

	cp   b                                           ; $58ca: $b8
	ret  nc                                          ; $58cb: $d0

	ld   [$cb4f], a                                  ; $58cc: $ea $4f $cb
	ld   a, $20                                      ; $58cf: $3e $20
	call PlaySoundEffect                                       ; $58d1: $cd $df $1a
	ld   a, $04                                      ; $58d4: $3e $04
	ld   [$cb45], a                                  ; $58d6: $ea $45 $cb
	xor  a                                           ; $58d9: $af
	ld   [$cb48], a                                  ; $58da: $ea $48 $cb
	ret                                              ; $58dd: $c9


	ld   hl, $cb48                                   ; $58de: $21 $48 $cb
	ld   a, [hl]                                     ; $58e1: $7e
	inc  [hl]                                        ; $58e2: $34
	sla  a                                           ; $58e3: $cb $27
	ld   b, $00                                      ; $58e5: $06 $00
	ld   c, a                                        ; $58e7: $4f
	ld   hl, $58f0                                   ; $58e8: $21 $f0 $58
	add  hl, bc                                      ; $58eb: $09
	ld   a, [hl+]                                    ; $58ec: $2a
	ld   h, [hl]                                     ; $58ed: $66
	ld   l, a                                        ; $58ee: $6f
	jp   hl                                          ; $58ef: $e9


	ld   d, c                                        ; $58f0: $51
	ld   e, d                                        ; $58f1: $5a
	or   d                                           ; $58f2: $b2
	ld   e, d                                        ; $58f3: $5a
	db   $ec                                         ; $58f4: $ec
	ld   e, d                                        ; $58f5: $5a
	ld   hl, sp+$58                                  ; $58f6: $f8 $58
	ld   a, [$cb4f]                                  ; $58f8: $fa $4f $cb
	ld   [$cb4e], a                                  ; $58fb: $ea $4e $cb
	xor  a                                           ; $58fe: $af
	ld   [$cb45], a                                  ; $58ff: $ea $45 $cb
	jp   Jump_00d_5b32                               ; $5902: $c3 $32 $5b


	ld   hl, $cb48                                   ; $5905: $21 $48 $cb
	ld   a, [hl]                                     ; $5908: $7e
	inc  [hl]                                        ; $5909: $34
	sla  a                                           ; $590a: $cb $27
	ld   b, $00                                      ; $590c: $06 $00
	ld   c, a                                        ; $590e: $4f
	ld   hl, $5917                                   ; $590f: $21 $17 $59
	add  hl, bc                                      ; $5912: $09
	ld   a, [hl+]                                    ; $5913: $2a
	ld   h, [hl]                                     ; $5914: $66
	ld   l, a                                        ; $5915: $6f
	jp   hl                                          ; $5916: $e9


	ld   d, c                                        ; $5917: $51
	ld   e, d                                        ; $5918: $5a
	or   d                                           ; $5919: $b2
	ld   e, d                                        ; $591a: $5a
	db   $ec                                         ; $591b: $ec
	ld   e, d                                        ; $591c: $5a
	rra                                              ; $591d: $1f
	ld   e, c                                        ; $591e: $59
	ld   a, [$cb4f]                                  ; $591f: $fa $4f $cb
	ld   [$cb4e], a                                  ; $5922: $ea $4e $cb
	xor  a                                           ; $5925: $af
	ld   [$cb45], a                                  ; $5926: $ea $45 $cb
	jp   Jump_00d_5b32                               ; $5929: $c3 $32 $5b


	ld   hl, $cb48                                   ; $592c: $21 $48 $cb
	ld   a, [hl]                                     ; $592f: $7e
	inc  [hl]                                        ; $5930: $34
	sla  a                                           ; $5931: $cb $27
	ld   b, $00                                      ; $5933: $06 $00
	ld   c, a                                        ; $5935: $4f
	ld   hl, $593e                                   ; $5936: $21 $3e $59
	add  hl, bc                                      ; $5939: $09
	ld   a, [hl+]                                    ; $593a: $2a
	ld   h, [hl]                                     ; $593b: $66
	ld   l, a                                        ; $593c: $6f
	jp   hl                                          ; $593d: $e9


	ld   d, b                                        ; $593e: $50
	ld   e, c                                        ; $593f: $59
	ld   e, h                                        ; $5940: $5c
	ld   e, c                                        ; $5941: $59
	ld   h, l                                        ; $5942: $65
	ld   e, c                                        ; $5943: $59
	ld   h, l                                        ; $5944: $65
	ld   e, c                                        ; $5945: $59
	ld   l, [hl]                                     ; $5946: $6e
	ld   e, c                                        ; $5947: $59
	ld   [hl], e                                     ; $5948: $73
	ld   e, c                                        ; $5949: $59
	ld   a, b                                        ; $594a: $78
	ld   e, c                                        ; $594b: $59
	ld   a, l                                        ; $594c: $7d
	ld   e, c                                        ; $594d: $59
	adc  b                                           ; $594e: $88
	ld   e, c                                        ; $594f: $59
	call Call_00d_5120                               ; $5950: $cd $20 $51
	call Call_00d_51f7                               ; $5953: $cd $f7 $51
	ld   a, $60                                      ; $5956: $3e $60
	ld   [wSCX], a                                  ; $5958: $ea $07 $c2
	ret                                              ; $595b: $c9


	ld   a, [$cb4e]                                  ; $595c: $fa $4e $cb
	sub  $08                                         ; $595f: $d6 $08
	call Call_00d_5051                               ; $5961: $cd $51 $50
	ret                                              ; $5964: $c9


jr_00d_5965:
	ld   a, [wSCX]                                  ; $5965: $fa $07 $c2
	sub  $08                                         ; $5968: $d6 $08
	ld   [wSCX], a                                  ; $596a: $ea $07 $c2
	ret                                              ; $596d: $c9


	call Call_00d_5a51                               ; $596e: $cd $51 $5a
	jr   jr_00d_5965                                 ; $5971: $18 $f2

	call Call_00d_5ab2                               ; $5973: $cd $b2 $5a
	jr   jr_00d_5965                                 ; $5976: $18 $ed

	call Call_00d_5aec                               ; $5978: $cd $ec $5a
	jr   jr_00d_5965                                 ; $597b: $18 $e8

	call Call_00d_5b32                               ; $597d: $cd $32 $5b
	ld   a, [$cb4f]                                  ; $5980: $fa $4f $cb
	ld   [$cb4e], a                                  ; $5983: $ea $4e $cb
	jr   jr_00d_5965                                 ; $5986: $18 $dd

	ld   hl, $cb50                                   ; $5988: $21 $50 $cb
	dec  [hl]                                        ; $598b: $35
	call Call_00d_50cd                               ; $598c: $cd $cd $50
	ld   a, [$cb4e]                                  ; $598f: $fa $4e $cb
	call Call_00d_5216                               ; $5992: $cd $16 $52
	call Call_00d_51f7                               ; $5995: $cd $f7 $51
	xor  a                                           ; $5998: $af
	ld   [wSCX], a                                  ; $5999: $ea $07 $c2
	ld   [$cb45], a                                  ; $599c: $ea $45 $cb
	ret                                              ; $599f: $c9


	ld   hl, $cb48                                   ; $59a0: $21 $48 $cb
	ld   a, [hl]                                     ; $59a3: $7e
	inc  [hl]                                        ; $59a4: $34
	sla  a                                           ; $59a5: $cb $27
	ld   b, $00                                      ; $59a7: $06 $00
	ld   c, a                                        ; $59a9: $4f
	ld   hl, $59b2                                   ; $59aa: $21 $b2 $59
	add  hl, bc                                      ; $59ad: $09
	ld   a, [hl+]                                    ; $59ae: $2a
	ld   h, [hl]                                     ; $59af: $66
	ld   l, a                                        ; $59b0: $6f
	jp   hl                                          ; $59b1: $e9


	call nz, $cf59                                   ; $59b2: $c4 $59 $cf
	ld   e, c                                        ; $59b5: $59
	ret  c                                           ; $59b6: $d8

	ld   e, c                                        ; $59b7: $59
	ret  c                                           ; $59b8: $d8

	ld   e, c                                        ; $59b9: $59
	pop  hl                                          ; $59ba: $e1
	ld   e, c                                        ; $59bb: $59
	and  $59                                         ; $59bc: $e6 $59
	db   $eb                                         ; $59be: $eb
	ld   e, c                                        ; $59bf: $59
	ldh  a, [$59]                                    ; $59c0: $f0 $59
	ei                                               ; $59c2: $fb
	ld   e, c                                        ; $59c3: $59
	call Call_00d_50cd                               ; $59c4: $cd $cd $50
	call Call_00d_51f7                               ; $59c7: $cd $f7 $51
	xor  a                                           ; $59ca: $af
	ld   [wSCX], a                                  ; $59cb: $ea $07 $c2
	ret                                              ; $59ce: $c9


	ld   a, [$cb4e]                                  ; $59cf: $fa $4e $cb
	add  $08                                         ; $59d2: $c6 $08
	call Call_00d_5051                               ; $59d4: $cd $51 $50
	ret                                              ; $59d7: $c9


jr_00d_59d8:
	ld   a, [wSCX]                                  ; $59d8: $fa $07 $c2
	add  $08                                         ; $59db: $c6 $08
	ld   [wSCX], a                                  ; $59dd: $ea $07 $c2
	ret                                              ; $59e0: $c9


	call Call_00d_5a51                               ; $59e1: $cd $51 $5a
	jr   jr_00d_59d8                                 ; $59e4: $18 $f2

	call Call_00d_5ab2                               ; $59e6: $cd $b2 $5a
	jr   jr_00d_59d8                                 ; $59e9: $18 $ed

	call Call_00d_5aec                               ; $59eb: $cd $ec $5a
	jr   jr_00d_59d8                                 ; $59ee: $18 $e8

	call Call_00d_5b32                               ; $59f0: $cd $32 $5b
	ld   a, [$cb4f]                                  ; $59f3: $fa $4f $cb
	ld   [$cb4e], a                                  ; $59f6: $ea $4e $cb
	jr   jr_00d_59d8                                 ; $59f9: $18 $dd

	ld   hl, $cb50                                   ; $59fb: $21 $50 $cb
	inc  [hl]                                        ; $59fe: $34
	call Call_00d_50cd                               ; $59ff: $cd $cd $50
	ld   a, [$cb4e]                                  ; $5a02: $fa $4e $cb
	call Call_00d_5216                               ; $5a05: $cd $16 $52
	call Call_00d_51f7                               ; $5a08: $cd $f7 $51
	xor  a                                           ; $5a0b: $af
	ld   [wSCX], a                                  ; $5a0c: $ea $07 $c2
	ld   [$cb45], a                                  ; $5a0f: $ea $45 $cb
	ret                                              ; $5a12: $c9


	ld   a, [$cb45]                                  ; $5a13: $fa $45 $cb
	or   a                                           ; $5a16: $b7
	jr   nz, jr_00d_5a31                             ; $5a17: $20 $18

	ld   b, $00                                      ; $5a19: $06 $00
	ld   hl, wBGPalettes                                   ; $5a1b: $21 $de $c2
	ld   c, $01                                      ; $5a1e: $0e $01
	ld   de, $7000                                   ; $5a20: $11 $00 $70
	xor  a                                           ; $5a23: $af
	ld   [wStartingColorIdxToLoadCompDataFor], a                                  ; $5a24: $ea $62 $c3
	ld   a, $40                                      ; $5a27: $3e $40
	ld   [wNumPaletteColorsToLoadCompDataFor], a                                  ; $5a29: $ea $63 $c3
	ld   a, $04                                      ; $5a2c: $3e $04
	call FarLoadPaletteValsFadeToValsAndSetFadeSpeed                                       ; $5a2e: $cd $48 $07

jr_00d_5a31:
	ld   bc, $0040                                   ; $5a31: $01 $40 $00
	call FadePalettesAndSetRangeToUpdate                                       ; $5a34: $cd $32 $08
	ld   hl, $cb45                                   ; $5a37: $21 $45 $cb
	ld   a, [hl]                                     ; $5a3a: $7e
	inc  [hl]                                        ; $5a3b: $34
	cp   $0f                                         ; $5a3c: $fe $0f
	ret  c                                           ; $5a3e: $d8

	ld   hl, wIE                                   ; $5a3f: $21 $0d $c2
	res  1, [hl]                                     ; $5a42: $cb $8e
	ld   a, [$cb46]                                  ; $5a44: $fa $46 $cb
	ld   [wGameState], a                                  ; $5a47: $ea $a0 $c2
	ld   a, [$cb47]                                  ; $5a4a: $fa $47 $cb
	ld   [wGameSubstate], a                                  ; $5a4d: $ea $a1 $c2
	ret                                              ; $5a50: $c9


Call_00d_5a51:
	ld   a, [wWramBank]                                  ; $5a51: $fa $93 $c2
	push af                                          ; $5a54: $f5
	ld   a, $02                                      ; $5a55: $3e $02
	ld   [wWramBank], a                                  ; $5a57: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a5a: $e0 $70
	ld   a, [$cb4f]                                  ; $5a5c: $fa $4f $cb
	ld   h, $00                                      ; $5a5f: $26 $00
	ld   l, a                                        ; $5a61: $6f
	ld   de, $da80                                   ; $5a62: $11 $80 $da
	add  hl, de                                      ; $5a65: $19
	ld   l, [hl]                                     ; $5a66: $6e
	ld   h, $00                                      ; $5a67: $26 $00
	pop  af                                          ; $5a69: $f1
	ld   [wWramBank], a                                  ; $5a6a: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a6d: $e0 $70
	ld   a, [wWramBank]                                  ; $5a6f: $fa $93 $c2
	push af                                          ; $5a72: $f5
	ld   a, $07                                      ; $5a73: $3e $07
	ld   [wWramBank], a                                  ; $5a75: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a78: $e0 $70
	add  hl, hl                                      ; $5a7a: $29
	add  hl, hl                                      ; $5a7b: $29
	add  hl, hl                                      ; $5a7c: $29
	add  hl, hl                                      ; $5a7d: $29
	ld   de, $5c23                                   ; $5a7e: $11 $23 $5c
	add  hl, de                                      ; $5a81: $19
	ld   a, $0d                                      ; $5a82: $3e $0d
	call FarGetAddrBank                                       ; $5a84: $cd $09 $0b
	ld   d, h                                        ; $5a87: $54
	ld   e, l                                        ; $5a88: $5d
	ld   hl, $d000                                   ; $5a89: $21 $00 $d0
	call RLEXorCopy                                       ; $5a8c: $cd $d2 $09
	pop  af                                          ; $5a8f: $f1
	ld   [wWramBank], a                                  ; $5a90: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5a93: $e0 $70
	ld   c, $80                                      ; $5a95: $0e $80
	ld   de, $9000                                   ; $5a97: $11 $00 $90
	ld   a, [$cb4b]                                  ; $5a9a: $fa $4b $cb
	xor  $40                                         ; $5a9d: $ee $40
	swap a                                           ; $5a9f: $cb $37
	ld   h, a                                        ; $5aa1: $67
	ld   l, $00                                      ; $5aa2: $2e $00
	add  hl, de                                      ; $5aa4: $19
	ld   d, h                                        ; $5aa5: $54
	ld   e, l                                        ; $5aa6: $5d
	ld   a, $07                                      ; $5aa7: $3e $07
	ld   hl, $d000                                   ; $5aa9: $21 $00 $d0
	ld   b, $24                                      ; $5aac: $06 $24
	call EnqueueHDMATransfer                                       ; $5aae: $cd $7c $02
	ret                                              ; $5ab1: $c9


Call_00d_5ab2:
	ld   c, $80                                      ; $5ab2: $0e $80
	ld   de, $8800                                   ; $5ab4: $11 $00 $88
	ld   a, [$cb4b]                                  ; $5ab7: $fa $4b $cb
	xor  $40                                         ; $5aba: $ee $40
	swap a                                           ; $5abc: $cb $37
	ld   h, a                                        ; $5abe: $67
	ld   l, $00                                      ; $5abf: $2e $00
	add  hl, de                                      ; $5ac1: $19
	ld   d, h                                        ; $5ac2: $54
	ld   e, l                                        ; $5ac3: $5d
	ld   a, $07                                      ; $5ac4: $3e $07
	ld   hl, $d240                                   ; $5ac6: $21 $40 $d2
	ld   b, $40                                      ; $5ac9: $06 $40
	call EnqueueHDMATransfer                                       ; $5acb: $cd $7c $02
	ld   a, [wWramBank]                                  ; $5ace: $fa $93 $c2
	push af                                          ; $5ad1: $f5
	ld   a, $02                                      ; $5ad2: $3e $02
	ld   [wWramBank], a                                  ; $5ad4: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ad7: $e0 $70
	ld   hl, $d340                                   ; $5ad9: $21 $40 $d3
	ld   bc, $0240                                   ; $5adc: $01 $40 $02
	ld   de, $0000                                   ; $5adf: $11 $00 $00
	call CopyEthenDintoHL_BCtimes                                       ; $5ae2: $cd $9f $09
	pop  af                                          ; $5ae5: $f1
	ld   [wWramBank], a                                  ; $5ae6: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5ae9: $e0 $70
	ret                                              ; $5aeb: $c9


Call_00d_5aec:
	ld   bc, $0c03                                   ; $5aec: $01 $03 $0c
	call SetKanjiTextBoxDimensions                                       ; $5aef: $cd $24 $14
	ld   bc, $0000                                   ; $5af2: $01 $00 $00
	call SetCurrKanjiColAndRowToDrawOn                                       ; $5af5: $cd $34 $14
	ld   a, [wWramBank]                                  ; $5af8: $fa $93 $c2
	push af                                          ; $5afb: $f5
	ld   a, $02                                      ; $5afc: $3e $02
	ld   [wWramBank], a                                  ; $5afe: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b01: $e0 $70
	ld   a, [$cb4f]                                  ; $5b03: $fa $4f $cb
	ld   l, a                                        ; $5b06: $6f
	ld   h, $00                                      ; $5b07: $26 $00
	ld   de, $da80                                   ; $5b09: $11 $80 $da
	add  hl, de                                      ; $5b0c: $19
	ld   l, [hl]                                     ; $5b0d: $6e
	ld   h, $00                                      ; $5b0e: $26 $00
	add  hl, hl                                      ; $5b10: $29
	add  hl, hl                                      ; $5b11: $29
	add  hl, hl                                      ; $5b12: $29
	add  hl, hl                                      ; $5b13: $29
	ld   de, Data_0d_5c1f+2                                   ; $5b14: $11 $21 $5c
	add  hl, de                                      ; $5b17: $19
	ld   a, $0d                                      ; $5b18: $3e $0d
	call FarGetHLinHL                                       ; $5b1a: $cd $ee $0a
	ld   de, Data_0d_618f                                   ; $5b1d: $11 $8f $61
	add  hl, de                                      ; $5b20: $19
	ld   d, h                                        ; $5b21: $54
	ld   e, l                                        ; $5b22: $5d
	ld   a, $0d                                      ; $5b23: $3e $0d
	ld   hl, $d340                                   ; $5b25: $21 $40 $d3
	call LoadInstantText                                       ; $5b28: $cd $06 $13
	pop  af                                          ; $5b2b: $f1
	ld   [wWramBank], a                                  ; $5b2c: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b2f: $e0 $70
	ret                                              ; $5b31: $c9


Call_00d_5b32:
Jump_00d_5b32:
	ld   c, $81                                      ; $5b32: $0e $81
	ld   de, $9000                                   ; $5b34: $11 $00 $90
	ld   a, $02                                      ; $5b37: $3e $02
	ld   hl, $d340                                   ; $5b39: $21 $40 $d3
	ld   b, $48                                      ; $5b3c: $06 $48
	call EnqueueHDMATransfer                                       ; $5b3e: $cd $7c $02
	ld   a, [wWramBank]                                  ; $5b41: $fa $93 $c2
	push af                                          ; $5b44: $f5
	ld   a, $02                                      ; $5b45: $3e $02
	ld   [wWramBank], a                                  ; $5b47: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5b4a: $e0 $70
	ld   a, [$cb4f]                                  ; $5b4c: $fa $4f $cb
	ld   l, a                                        ; $5b4f: $6f
	ld   h, $00                                      ; $5b50: $26 $00
	ld   de, $da80                                   ; $5b52: $11 $80 $da
	add  hl, de                                      ; $5b55: $19
	ld   l, [hl]                                     ; $5b56: $6e
	ld   h, $00                                      ; $5b57: $26 $00
	add  hl, hl                                      ; $5b59: $29
	add  hl, hl                                      ; $5b5a: $29
	add  hl, hl                                      ; $5b5b: $29
	add  hl, hl                                      ; $5b5c: $29
	ld   de, $5c29                                   ; $5b5d: $11 $29 $5c
	add  hl, de                                      ; $5b60: $19
	ld   a, $0d                                      ; $5b61: $3e $0d
	call FarGetAddrBank                                       ; $5b63: $cd $09 $0b
	ld   d, h                                        ; $5b66: $54
	ld   e, l                                        ; $5b67: $5d
	ld   hl, $d881                                   ; $5b68: $21 $81 $d8
	ld   bc, $0606                                   ; $5b6b: $01 $06 $06
	call FarCopyLayout                                       ; $5b6e: $cd $2c $0b
	ld   hl, $d941                                   ; $5b71: $21 $41 $d9
	call FarCopyLayout                                       ; $5b74: $cd $2c $0b
	ld   hl, $d941                                   ; $5b77: $21 $41 $d9
	call Call_00d_5bf1                               ; $5b7a: $cd $f1 $5b
	ld   hl, $d961                                   ; $5b7d: $21 $61 $d9
	call Call_00d_5bf1                               ; $5b80: $cd $f1 $5b
	ld   hl, $d981                                   ; $5b83: $21 $81 $d9
	call Call_00d_5bf1                               ; $5b86: $cd $f1 $5b
	ld   hl, $d9a1                                   ; $5b89: $21 $a1 $d9
	call Call_00d_5bf1                               ; $5b8c: $cd $f1 $5b
	ld   hl, $d9c1                                   ; $5b8f: $21 $c1 $d9
	call Call_00d_5bf1                               ; $5b92: $cd $f1 $5b
	ld   hl, $d9e1                                   ; $5b95: $21 $e1 $d9
	call Call_00d_5bf1                               ; $5b98: $cd $f1 $5b
	ld   c, $80                                      ; $5b9b: $0e $80
	ld   de, $9c20                                   ; $5b9d: $11 $20 $9c
	ld   a, $02                                      ; $5ba0: $3e $02
	ld   hl, $d940                                   ; $5ba2: $21 $40 $d9
	ld   b, $0c                                      ; $5ba5: $06 $0c
	call EnqueueHDMATransfer                                       ; $5ba7: $cd $7c $02
	ld   c, $81                                      ; $5baa: $0e $81
	ld   de, $9c20                                   ; $5bac: $11 $20 $9c
	ld   a, $02                                      ; $5baf: $3e $02
	ld   hl, $d880                                   ; $5bb1: $21 $80 $d8
	ld   b, $0c                                      ; $5bb4: $06 $0c
	call EnqueueHDMATransfer                                       ; $5bb6: $cd $7c $02
	ld   a, [$cb4f]                                  ; $5bb9: $fa $4f $cb
	ld   l, a                                        ; $5bbc: $6f
	ld   h, $00                                      ; $5bbd: $26 $00
	ld   de, $da80                                   ; $5bbf: $11 $80 $da
	add  hl, de                                      ; $5bc2: $19
	ld   l, [hl]                                     ; $5bc3: $6e
	ld   h, $00                                      ; $5bc4: $26 $00
	add  hl, hl                                      ; $5bc6: $29
	add  hl, hl                                      ; $5bc7: $29
	add  hl, hl                                      ; $5bc8: $29
	add  hl, hl                                      ; $5bc9: $29
	ld   de, $5c26                                   ; $5bca: $11 $26 $5c
	add  hl, de                                      ; $5bcd: $19
	ld   a, $0d                                      ; $5bce: $3e $0d
	call FarGetAddrBank                                       ; $5bd0: $cd $09 $0b
	ld   de, $c30e                                   ; $5bd3: $11 $0e $c3
	ld   bc, $0038                                   ; $5bd6: $01 $38 $00
	call FarMemCopy                                       ; $5bd9: $cd $b2 $09
	ld   bc, $1833                                   ; $5bdc: $01 $33 $18
	call SetBGandOBJPaletteRangesToUpdate                                       ; $5bdf: $cd $aa $04
	ld   a, [$cb4b]                                  ; $5be2: $fa $4b $cb
	xor  $40                                         ; $5be5: $ee $40
	ld   [$cb4b], a                                  ; $5be7: $ea $4b $cb
	pop  af                                          ; $5bea: $f1
	ld   [wWramBank], a                                  ; $5beb: $ea $93 $c2
	ldh  [rSVBK], a                                  ; $5bee: $e0 $70
	ret                                              ; $5bf0: $c9


Call_00d_5bf1:
	ld   b, $06                                      ; $5bf1: $06 $06
	ld   a, [$cb4b]                                  ; $5bf3: $fa $4b $cb
	xor  $40                                         ; $5bf6: $ee $40
	ld   c, a                                        ; $5bf8: $4f

jr_00d_5bf9:
	ld   a, [hl]                                     ; $5bf9: $7e
	sub  $90                                         ; $5bfa: $d6 $90
	or   c                                           ; $5bfc: $b1
	ld   [hl+], a                                    ; $5bfd: $22
	dec  b                                           ; $5bfe: $05
	jr   nz, jr_00d_5bf9                             ; $5bff: $20 $f8

	ret                                              ; $5c01: $c9


LCDCFunc0c::
	ld   hl, $c20b                                   ; $5c02: $21 $0b $c2
	ldh  a, [rLY]                                    ; $5c05: $f0 $44
	cp   [hl]                                        ; $5c07: $be
	jp   nz, LCDCInterruptHandler.return                                   ; $5c08: $c2 $4a $04

jr_00d_5c0b:
	ldh  a, [rSTAT]                                  ; $5c0b: $f0 $41
	and  $03                                         ; $5c0d: $e6 $03
	jr   z, jr_00d_5c0b                              ; $5c0f: $28 $fa

jr_00d_5c11:
	ldh  a, [rSTAT]                                  ; $5c11: $f0 $41
	and  $03                                         ; $5c13: $e6 $03
	jr   nz, jr_00d_5c11                             ; $5c15: $20 $fa

	ld   hl, $ff40                                   ; $5c17: $21 $40 $ff
	res  4, [hl]                                     ; $5c1a: $cb $a6
	jp   LCDCInterruptHandler.return                                       ; $5c1c: $c3 $4a $04


macro ItemIndexEntry
	dw \1, \2
rept 12
	db \3
	shift
endr
endm

Data_0d_5c1f:
if def(VWF)
	ItemIndexEntry Data_0d_618fentry00-Data_0d_618f, Data_0d_618fentry01-Data_0d_618f, $81, $6c, $89, $8b, $75, $8a, $43, $75, $8a, $31, $00, $00
	ItemIndexEntry Data_0d_618fentry02-Data_0d_618f, Data_0d_618fentry03-Data_0d_618f, $4a, $5d, $89, $8b, $75, $8a, $43, $75, $8a, $33, $00, $00
	ItemIndexEntry Data_0d_618fentry04-Data_0d_618f, Data_0d_618fentry05-Data_0d_618f, $f0, $63, $89, $c3, $75, $8a, $43, $75, $8a, $34, $00, $00
	ItemIndexEntry Data_0d_618fentry06-Data_0d_618f, Data_0d_618fentry07-Data_0d_618f, $29, $45, $89, $fb, $75, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry08-Data_0d_618f, Data_0d_618fentry09-Data_0d_618f, $d7, $72, $8a, $33, $76, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry0a-Data_0d_618f, Data_0d_618fentry0b-Data_0d_618f, $53, $4f, $89, $6b, $76, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry0c-Data_0d_618f, Data_0d_618fentry0d-Data_0d_618f, $8d, $6a, $8a, $a3, $76, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry0e-Data_0d_618f, Data_0d_618fentry0f-Data_0d_618f, $aa, $5a, $8a, $db, $76, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry10-Data_0d_618f, Data_0d_618fentry11-Data_0d_618f, $00, $40, $89, $13, $77, $8a, $43, $75, $8a, $35, $00, $00
	ItemIndexEntry Data_0d_618fentry12-Data_0d_618f, Data_0d_618fentry13-Data_0d_618f, $c4, $58, $89, $4b, $77, $8a, $43, $75, $8a, $36, $00, $00
	ItemIndexEntry Data_0d_618fentry14-Data_0d_618f, Data_0d_618fentry15-Data_0d_618f, $89, $5f, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry16-Data_0d_618f, Data_0d_618fentry17-Data_0d_618f, $c7, $51, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry18-Data_0d_618f, Data_0d_618fentry19-Data_0d_618f, $e0, $72, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry1a-Data_0d_618f, Data_0d_618fentry1b-Data_0d_618f, $f9, $5f, $88, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry1c-Data_0d_618f, Data_0d_618fentry1d-Data_0d_618f, $c6, $61, $89, $bb, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry1e-Data_0d_618f, Data_0d_618fentry1f-Data_0d_618f, $1b, $64, $8a, $f3, $77, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry20-Data_0d_618f, Data_0d_618fentry21-Data_0d_618f, $5b, $69, $8a, $2b, $78, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry22-Data_0d_618f, Data_0d_618fentry23-Data_0d_618f, $03, $42, $8a, $63, $78, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry24-Data_0d_618f, Data_0d_618fentry25-Data_0d_618f, $e9, $58, $8a, $9b, $78, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry26-Data_0d_618f, Data_0d_618fentry27-Data_0d_618f, $0b, $5a, $88, $d3, $78, $8a, $43, $75, $8a, $37, $00, $00
	ItemIndexEntry Data_0d_618fentry28-Data_0d_618f, Data_0d_618fentry29-Data_0d_618f, $4c, $7b, $89, $0b, $79, $8a, $43, $75, $8a, $38, $00, $00
	ItemIndexEntry Data_0d_618fentry2a-Data_0d_618f, Data_0d_618fentry2b-Data_0d_618f, $98, $42, $89, $43, $79, $8a, $43, $75, $8a, $39, $00, $00
	ItemIndexEntry Data_0d_618fentry2c-Data_0d_618f, Data_0d_618fentry2d-Data_0d_618f, $e2, $6f, $8a, $7b, $79, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry2e-Data_0d_618f, Data_0d_618fentry2f-Data_0d_618f, $47, $79, $88, $b3, $79, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry30-Data_0d_618f, Data_0d_618fentry31-Data_0d_618f, $7e, $56, $89, $eb, $79, $8a, $43, $75, $8a, $3a, $00, $00
	ItemIndexEntry Data_0d_618fentry32-Data_0d_618f, Data_0d_618fentry33-Data_0d_618f, $b8, $47, $89, $b3, $79, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry34-Data_0d_618f, Data_0d_618fentry35-Data_0d_618f, $3d, $68, $89, $23, $7a, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry36-Data_0d_618f, Data_0d_618fentry37-Data_0d_618f, $44, $4a, $89, $5b, $7a, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry38-Data_0d_618f, Data_0d_618fentry39-Data_0d_618f, $b6, $4f, $8a, $93, $7a, $8a, $43, $75, $8a, $3c, $00, $00
	ItemIndexEntry Data_0d_618fentry3a-Data_0d_618f, Data_0d_618fentry3b-Data_0d_618f, $e7, $70, $8a, $cb, $7a, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry3c-Data_0d_618f, Data_0d_618fentry3d-Data_0d_618f, $c2, $70, $89, $03, $7b, $8a, $43, $75, $8a, $3e, $00, $00
	ItemIndexEntry Data_0d_618fentry3e-Data_0d_618f, Data_0d_618fentry3f-Data_0d_618f, $d0, $4c, $89, $3b, $7b, $8a, $43, $75, $8a, $43, $00, $00
	ItemIndexEntry Data_0d_618fentry40-Data_0d_618f, Data_0d_618fentry41-Data_0d_618f, $12, $61, $8a, $73, $7b, $8a, $43, $75, $8a, $44, $00, $00
	ItemIndexEntry Data_0d_618fentry42-Data_0d_618f, Data_0d_618fentry43-Data_0d_618f, $83, $53, $8a, $ab, $7b, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry44-Data_0d_618f, Data_0d_618fentry45-Data_0d_618f, $fd, $74, $89, $e3, $7b, $8a, $43, $75, $8a, $40, $00, $00
	ItemIndexEntry Data_0d_618fentry46-Data_0d_618f, Data_0d_618fentry47-Data_0d_618f, $41, $6e, $88, $1b, $7c, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry48-Data_0d_618f, Data_0d_618fentry49-Data_0d_618f, $25, $54, $89, $53, $7c, $8a, $43, $75, $8a, $42, $00, $00
	ItemIndexEntry Data_0d_618fentry4a-Data_0d_618f, Data_0d_618fentry4b-Data_0d_618f, $1a, $77, $89, $8b, $7c, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry4c-Data_0d_618f, Data_0d_618fentry4d-Data_0d_618f, $e0, $4b, $8a, $c3, $7c, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry4e-Data_0d_618f, Data_0d_618fentry4f-Data_0d_618f, $02, $44, $8a, $fb, $7c, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry50-Data_0d_618f, Data_0d_618fentry51-Data_0d_618f, $00, $40, $88, $33, $7d, $8a, $43, $75, $8a, $45, $00, $00
	ItemIndexEntry Data_0d_618fentry52-Data_0d_618f, Data_0d_618fentry53-Data_0d_618f, $35, $79, $89, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry54-Data_0d_618f, Data_0d_618fentry55-Data_0d_618f, $d9, $73, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry56-Data_0d_618f, Data_0d_618fentry57-Data_0d_618f, $96, $68, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry58-Data_0d_618f, Data_0d_618fentry59-Data_0d_618f, $03, $57, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry5a-Data_0d_618f, Data_0d_618fentry5b-Data_0d_618f, $dc, $62, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry5c-Data_0d_618f, Data_0d_618fentry5d-Data_0d_618f, $9f, $51, $8a, $a3, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry5e-Data_0d_618f, Data_0d_618fentry5f-Data_0d_618f, $9d, $4d, $88, $db, $7d, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry60-Data_0d_618f, Data_0d_618fentry61-Data_0d_618f, $08, $5b, $89, $13, $7e, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry62-Data_0d_618f, Data_0d_618fentry63-Data_0d_618f, $11, $71, $88, $4b, $7e, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry64-Data_0d_618f, Data_0d_618fentry65-Data_0d_618f, $27, $57, $8a, $83, $7e, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry66-Data_0d_618f, Data_0d_618fentry67-Data_0d_618f, $50, $5c, $8a, $bb, $7e, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry68-Data_0d_618f, Data_0d_618fentry69-Data_0d_618f, $f1, $5d, $8a, $bb, $7e, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry6a-Data_0d_618f, Data_0d_618fentry6b-Data_0d_618f, $b4, $73, $8a, $f3, $7e, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry6c-Data_0d_618f, Data_0d_618fentry6d-Data_0d_618f, $98, $62, $8a, $2b, $7f, $8a, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry6e-Data_0d_618f, Data_0d_618fentry6f-Data_0d_618f, $86, $74, $8a, $63, $7f, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry70-Data_0d_618f, Data_0d_618fentry71-Data_0d_618f, $e3, $71, $8a, $9b, $7f, $8a, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry72-Data_0d_618f, Data_0d_618fentry73-Data_0d_618f, $da, $6e, $8a, $00, $40, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry74-Data_0d_618f, Data_0d_618fentry75-Data_0d_618f, $dc, $66, $8a, $38, $40, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry76-Data_0d_618f, Data_0d_618fentry77-Data_0d_618f, $21, $68, $8a, $70, $40, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry78-Data_0d_618f, Data_0d_618fentry79-Data_0d_618f, $d1, $6d, $8a, $a8, $40, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry7a-Data_0d_618f, Data_0d_618fentry7b-Data_0d_618f, $cb, $4d, $8a, $e0, $40, $8b, $43, $75, $8a, $46, $00, $00
	ItemIndexEntry Data_0d_618fentry7c-Data_0d_618f, Data_0d_618fentry7d-Data_0d_618f, $5f, $6a, $89, $18, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry7e-Data_0d_618f, Data_0d_618fentry7f-Data_0d_618f, $84, $5f, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry80-Data_0d_618f, Data_0d_618fentry81-Data_0d_618f, $f1, $49, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry82-Data_0d_618f, Data_0d_618fentry83-Data_0d_618f, $00, $46, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry84-Data_0d_618f, Data_0d_618fentry85-Data_0d_618f, $e3, $7b, $88, $88, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry86-Data_0d_618f, Data_0d_618fentry87-Data_0d_618f, $5c, $7f, $89, $c0, $41, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry88-Data_0d_618f, Data_0d_618fentry89-Data_0d_618f, $7e, $7e, $88, $f8, $41, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry8a-Data_0d_618f, Data_0d_618fentry8b-Data_0d_618f, $17, $66, $89, $30, $42, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry8c-Data_0d_618f, Data_0d_618fentry8d-Data_0d_618f, $be, $6c, $8a, $68, $42, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentry8e-Data_0d_618f, Data_0d_618fentry8f-Data_0d_618f, $f9, $47, $8a, $a0, $42, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry90-Data_0d_618f, Data_0d_618fentry91-Data_0d_618f, $a8, $6b, $8a, $d8, $42, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry92-Data_0d_618f, Data_0d_618fentry93-Data_0d_618f, $00, $40, $8a, $10, $43, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry94-Data_0d_618f, Data_0d_618fentry95-Data_0d_618f, $ec, $53, $88, $48, $43, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry96-Data_0d_618f, Data_0d_618fentry97-Data_0d_618f, $90, $76, $88, $80, $43, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry98-Data_0d_618f, Data_0d_618fentry99-Data_0d_618f, $70, $6b, $88, $80, $43, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry9a-Data_0d_618f, Data_0d_618fentry9b-Data_0d_618f, $57, $7d, $89, $b8, $43, $8b, $43, $75, $8a, $32, $00, $00
	ItemIndexEntry Data_0d_618fentry9c-Data_0d_618f, Data_0d_618fentry9d-Data_0d_618f, $cf, $50, $88, $f0, $43, $8b, $43, $75, $8a, $47, $00, $00
	ItemIndexEntry Data_0d_618fentry9e-Data_0d_618f, Data_0d_618fentry9f-Data_0d_618f, $fc, $46, $88, $28, $44, $8b, $43, $75, $8a, $49, $00, $00
	ItemIndexEntry Data_0d_618fentrya0-Data_0d_618f, Data_0d_618fentrya1-Data_0d_618f, $ba, $65, $88, $60, $44, $8b, $43, $75, $8a, $4b, $00, $00
	ItemIndexEntry Data_0d_618fentrya2-Data_0d_618f, Data_0d_618fentrya3-Data_0d_618f, $05, $5d, $88, $98, $44, $8b, $43, $75, $8a, $4c, $00, $00
	ItemIndexEntry Data_0d_618fentrya4-Data_0d_618f, Data_0d_618fentrya5-Data_0d_618f, $80, $43, $88, $d0, $44, $8b, $43, $75, $8a, $4d, $00, $00
	ItemIndexEntry Data_0d_618fentrya6-Data_0d_618f, Data_0d_618fentrya7-Data_0d_618f, $4f, $4a, $88, $08, $45, $8b, $43, $75, $8a, $4e, $00, $00
	ItemIndexEntry Data_0d_618fentrya8-Data_0d_618f, Data_0d_618fentrya9-Data_0d_618f, $a2, $6e, $89, $40, $45, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentryaa-Data_0d_618f, Data_0d_618fentryab-Data_0d_618f, $60, $55, $8a, $40, $45, $8b, $43, $75, $8a, $00, $00, $00
	ItemIndexEntry Data_0d_618fentryac-Data_0d_618f, Data_0d_618fentryad-Data_0d_618f, $8d, $65, $8a, $78, $45, $8b, $43, $75, $8a, $32, $00, $00

else
	db $00, $00, $05, $00, $81, $6c, $89, $8b, $75, $8a, $43, $75, $8a, $31, $00, $00
	db $17, $00, $1c, $00, $4a, $5d, $89, $8b, $75, $8a, $43, $75, $8a, $33, $00, $00
	db $28, $00, $2d, $00, $f0, $63, $89, $c3, $75, $8a, $43, $75, $8a, $34, $00, $00
	db $3c, $00, $41, $00, $29, $45, $89, $fb, $75, $8a, $43, $75, $8a, $32, $00, $00
	db $4d, $00, $52, $00, $d7, $72, $8a, $33, $76, $8a, $43, $75, $8a, $32, $00, $00
	db $5c, $00, $65, $00, $53, $4f, $89, $6b, $76, $8a, $43, $75, $8a, $32, $00, $00
	db $73, $00, $78, $00, $8d, $6a, $8a, $a3, $76, $8a, $43, $75, $8a, $00, $00, $00
	db $81, $00, $8a, $00, $aa, $5a, $8a, $db, $76, $8a, $43, $75, $8a, $32, $00, $00
	db $96, $00, $9b, $00, $00, $40, $89, $13, $77, $8a, $43, $75, $8a, $35, $00, $00
	db $aa, $00, $b1, $00, $c4, $58, $89, $4b, $77, $8a, $43, $75, $8a, $36, $00, $00
	db $b8, $00, $bc, $00, $89, $5f, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $c7, $00, $cb, $00, $c7, $51, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $db, $00, $df, $00, $e0, $72, $89, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $ed, $00, $f1, $00, $f9, $5f, $88, $83, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $fe, $00, $03, $01, $c6, $61, $89, $bb, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $11, $01, $17, $01, $1b, $64, $8a, $f3, $77, $8a, $43, $75, $8a, $32, $00, $00
	db $1d, $01, $23, $01, $5b, $69, $8a, $2b, $78, $8a, $43, $75, $8a, $00, $00, $00
	db $2d, $01, $37, $01, $03, $42, $8a, $63, $78, $8a, $43, $75, $8a, $32, $00, $00
	db $43, $01, $4a, $01, $e9, $58, $8a, $9b, $78, $8a, $43, $75, $8a, $32, $00, $00
	db $58, $01, $5d, $01, $0b, $5a, $88, $d3, $78, $8a, $43, $75, $8a, $37, $00, $00
	db $66, $01, $6d, $01, $4c, $7b, $89, $0b, $79, $8a, $43, $75, $8a, $38, $00, $00
	db $76, $01, $80, $01, $98, $42, $89, $43, $79, $8a, $43, $75, $8a, $39, $00, $00
	db $89, $01, $90, $01, $e2, $6f, $8a, $7b, $79, $8a, $43, $75, $8a, $00, $00, $00
	db $98, $01, $9b, $01, $47, $79, $88, $b3, $79, $8a, $43, $75, $8a, $32, $00, $00
	db $ab, $01, $ae, $01, $7e, $56, $89, $eb, $79, $8a, $43, $75, $8a, $3a, $00, $00
	db $ba, $01, $bd, $01, $b8, $47, $89, $b3, $79, $8a, $43, $75, $8a, $32, $00, $00
	db $c6, $01, $ca, $01, $3d, $68, $89, $23, $7a, $8a, $43, $75, $8a, $32, $00, $00
	db $d9, $01, $de, $01, $44, $4a, $89, $5b, $7a, $8a, $43, $75, $8a, $32, $00, $00
	db $e8, $01, $f1, $01, $b6, $4f, $8a, $93, $7a, $8a, $43, $75, $8a, $3c, $00, $00
	db $fd, $01, $02, $02, $e7, $70, $8a, $cb, $7a, $8a, $43, $75, $8a, $00, $00, $00
	db $0b, $02, $10, $02, $c2, $70, $89, $03, $7b, $8a, $43, $75, $8a, $3e, $00, $00
	db $1d, $02, $25, $02, $d0, $4c, $89, $3b, $7b, $8a, $43, $75, $8a, $43, $00, $00
	db $2d, $02, $33, $02, $12, $61, $8a, $73, $7b, $8a, $43, $75, $8a, $44, $00, $00
	db $3c, $02, $40, $02, $83, $53, $8a, $ab, $7b, $8a, $43, $75, $8a, $32, $00, $00
	db $47, $02, $4f, $02, $fd, $74, $89, $e3, $7b, $8a, $43, $75, $8a, $40, $00, $00
	db $5c, $02, $65, $02, $41, $6e, $88, $1b, $7c, $8a, $43, $75, $8a, $32, $00, $00
	db $70, $02, $77, $02, $25, $54, $89, $53, $7c, $8a, $43, $75, $8a, $42, $00, $00
	db $84, $02, $8e, $02, $1a, $77, $89, $8b, $7c, $8a, $43, $75, $8a, $32, $00, $00
	db $95, $02, $9c, $02, $e0, $4b, $8a, $c3, $7c, $8a, $43, $75, $8a, $32, $00, $00
	db $a9, $02, $ae, $02, $02, $44, $8a, $fb, $7c, $8a, $43, $75, $8a, $32, $00, $00
	db $bd, $02, $c3, $02, $00, $40, $88, $33, $7d, $8a, $43, $75, $8a, $45, $00, $00
	db $ce, $02, $d6, $02, $35, $79, $89, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $e0, $02, $e8, $02, $d9, $73, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $f7, $02, $ff, $02, $96, $68, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $0a, $03, $12, $03, $03, $57, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $1f, $03, $27, $03, $dc, $62, $88, $6b, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $2e, $03, $36, $03, $9f, $51, $8a, $a3, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $45, $03, $4f, $03, $9d, $4d, $88, $db, $7d, $8a, $43, $75, $8a, $32, $00, $00
	db $5c, $03, $62, $03, $08, $5b, $89, $13, $7e, $8a, $43, $75, $8a, $32, $00, $00
	db $70, $03, $77, $03, $11, $71, $88, $4b, $7e, $8a, $43, $75, $8a, $32, $00, $00
	db $82, $03, $87, $03, $27, $57, $8a, $83, $7e, $8a, $43, $75, $8a, $32, $00, $00
	db $8c, $03, $90, $03, $50, $5c, $8a, $bb, $7e, $8a, $43, $75, $8a, $00, $00, $00
	db $98, $03, $9c, $03, $f1, $5d, $8a, $bb, $7e, $8a, $43, $75, $8a, $00, $00, $00
	db $a4, $03, $a8, $03, $b4, $73, $8a, $f3, $7e, $8a, $43, $75, $8a, $00, $00, $00
	db $b3, $03, $b8, $03, $98, $62, $8a, $2b, $7f, $8a, $43, $75, $8a, $32, $00, $00
	db $c0, $03, $c7, $03, $86, $74, $8a, $63, $7f, $8a, $43, $75, $8a, $00, $00, $00
	db $d0, $03, $d8, $03, $e3, $71, $8a, $9b, $7f, $8a, $43, $75, $8a, $00, $00, $00
	db $e2, $03, $e9, $03, $da, $6e, $8a, $00, $40, $8b, $43, $75, $8a, $00, $00, $00
	db $f6, $03, $fa, $03, $dc, $66, $8a, $38, $40, $8b, $43, $75, $8a, $00, $00, $00
	db $00, $04, $0a, $04, $21, $68, $8a, $70, $40, $8b, $43, $75, $8a, $00, $00, $00
	db $16, $04, $1c, $04, $d1, $6d, $8a, $a8, $40, $8b, $43, $75, $8a, $32, $00, $00
	db $26, $04, $2e, $04, $cb, $4d, $8a, $e0, $40, $8b, $43, $75, $8a, $46, $00, $00
	db $3c, $04, $42, $04, $5f, $6a, $89, $18, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $4b, $04, $52, $04, $84, $5f, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $60, $04, $67, $04, $f1, $49, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $74, $04, $7b, $04, $00, $46, $8a, $50, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $86, $04, $8b, $04, $e3, $7b, $88, $88, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $96, $04, $9b, $04, $5c, $7f, $89, $c0, $41, $8b, $43, $75, $8a, $32, $00, $00
	db $a4, $04, $a8, $04, $7e, $7e, $88, $f8, $41, $8b, $43, $75, $8a, $00, $00, $00
	db $b6, $04, $bb, $04, $17, $66, $89, $30, $42, $8b, $43, $75, $8a, $32, $00, $00
	db $c2, $04, $c7, $04, $be, $6c, $8a, $68, $42, $8b, $43, $75, $8a, $00, $00, $00
	db $d2, $04, $d8, $04, $f9, $47, $8a, $a0, $42, $8b, $43, $75, $8a, $32, $00, $00
	db $e5, $04, $ea, $04, $a8, $6b, $8a, $d8, $42, $8b, $43, $75, $8a, $32, $00, $00
	db $f0, $04, $f5, $04, $00, $40, $8a, $10, $43, $8b, $43, $75, $8a, $32, $00, $00
	db $fe, $04, $03, $05, $ec, $53, $88, $48, $43, $8b, $43, $75, $8a, $32, $00, $00
	db $10, $05, $15, $05, $90, $76, $88, $80, $43, $8b, $43, $75, $8a, $32, $00, $00
	db $1a, $05, $22, $05, $70, $6b, $88, $80, $43, $8b, $43, $75, $8a, $32, $00, $00
	db $2a, $05, $30, $05, $57, $7d, $89, $b8, $43, $8b, $43, $75, $8a, $32, $00, $00
	db $39, $05, $40, $05, $cf, $50, $88, $f0, $43, $8b, $43, $75, $8a, $47, $00, $00
	db $4a, $05, $51, $05, $fc, $46, $88, $28, $44, $8b, $43, $75, $8a, $49, $00, $00
	db $5b, $05, $62, $05, $ba, $65, $88, $60, $44, $8b, $43, $75, $8a, $4b, $00, $00
	db $6c, $05, $73, $05, $05, $5d, $88, $98, $44, $8b, $43, $75, $8a, $4c, $00, $00
	db $7e, $05, $85, $05, $80, $43, $88, $d0, $44, $8b, $43, $75, $8a, $4d, $00, $00
	db $90, $05, $97, $05, $4f, $4a, $88, $08, $45, $8b, $43, $75, $8a, $4e, $00, $00
	db $a1, $05, $a8, $05, $a2, $6e, $89, $40, $45, $8b, $43, $75, $8a, $00, $00, $00
	db $b9, $05, $c0, $05, $60, $55, $8a, $40, $45, $8b, $43, $75, $8a, $00, $00, $00
	db $d7, $05, $e0, $05, $8d, $65, $8a, $78, $45, $8b, $43, $75, $8a, $32, $00, $00
endc


Data_0d_618f:
	or   [hl]                                        ; $618f: $b6
	db   $dd                                         ; $6190: $dd
	rst  ToBoot                                         ; $6191: $c7
	push af                                          ; $6192: $f5
	nop                                              ; $6193: $00

	inc  bc                                          ; $6194: $03
	add  d                                           ; $6195: $82
	ld   a, h                                        ; $6196: $7c
	ld   [bc], a                                     ; $6197: $02
	sbc  l                                           ; $6198: $9d
	inc  b                                           ; $6199: $04
	sub  c                                           ; $619a: $91
	and  b                                           ; $619b: $a0
	dec  b                                           ; $619c: $05
	ld   de, $b402                                   ; $619d: $11 $02 $b4
	ld   h, a                                        ; $61a0: $67
	sbc  c                                           ; $61a1: $99
	sub  a                                           ; $61a2: $97
	ld   h, l                                        ; $61a3: $65
	ld   d, d                                        ; $61a4: $52
	nop                                              ; $61a5: $00
	
	or   [hl]                                        ; $61a6: $b6
	db   $dd                                         ; $61a7: $dd
	rst  ToBoot                                         ; $61a8: $c7
	push af                                          ; $61a9: $f5
	nop                                              ; $61aa: $00
	sbc  b                                           ; $61ab: $98
	ld   [hl], c                                     ; $61ac: $71
	ld   a, a                                        ; $61ad: $7f
	ld   a, b                                        ; $61ae: $78
	ld   [bc], a                                     ; $61af: $02
	sbc  b                                           ; $61b0: $98
	ld   e, d                                        ; $61b1: $5a
	inc  bc                                          ; $61b2: $03
	ld   h, a                                        ; $61b3: $67
	ld   d, d                                        ; $61b4: $52
	ld   l, l                                        ; $61b5: $6d
	nop                                              ; $61b6: $00
	or   [hl]                                        ; $61b7: $b6
	db   $dd                                         ; $61b8: $dd
	rst  ToBoot                                         ; $61b9: $c7
	push af                                          ; $61ba: $f5
	nop                                              ; $61bb: $00
	inc  bc                                          ; $61bc: $03
	ld   e, c                                        ; $61bd: $59
	and  b                                           ; $61be: $a0
	ld   [bc], a                                     ; $61bf: $02
	pop  de                                          ; $61c0: $d1
	sbc  b                                           ; $61c1: $98
	ld   h, a                                        ; $61c2: $67
	ld   e, h                                        ; $61c3: $5c
	sbc  c                                           ; $61c4: $99
	halt                                             ; $61c5: $76
	ld   [bc], a                                     ; $61c6: $02
	jp   hl                                          ; $61c7: $e9


	sbc  d                                           ; $61c8: $9a
	sbc  c                                           ; $61c9: $99
	nop                                              ; $61ca: $00
	sub  [hl]                                        ; $61cb: $96
	ld   d, h                                        ; $61cc: $54
	ld   e, c                                        ; $61cd: $59
	and  c                                           ; $61ce: $a1
	nop                                              ; $61cf: $00
	ld   [bc], a                                     ; $61d0: $02
	db   $e4                                         ; $61d1: $e4
	inc  b                                           ; $61d2: $04
	inc  de                                          ; $61d3: $13
	ld   a, h                                        ; $61d4: $7c
	dec  b                                           ; $61d5: $05
	ld   hl, $9306                                   ; $61d6: $21 $06 $93
	inc  bc                                          ; $61d9: $03
	add  [hl]                                        ; $61da: $86
	nop                                              ; $61db: $00
	inc  b                                           ; $61dc: $04
	push de                                          ; $61dd: $d5
	inc  b                                           ; $61de: $04
	inc  l                                           ; $61df: $2c
	nop                                              ; $61e0: $00
	inc  b                                           ; $61e1: $04
	push de                                          ; $61e2: $d5
	ld   [hl], l                                     ; $61e3: $75
	inc  bc                                          ; $61e4: $03
	xor  h                                           ; $61e5: $ac
	ld   [hl], c                                     ; $61e6: $71
	ld   l, l                                        ; $61e7: $6d
	inc  b                                           ; $61e8: $04
	inc  l                                           ; $61e9: $2c
	nop                                              ; $61ea: $00
	inc  b                                           ; $61eb: $04
	push de                                          ; $61ec: $d5
	inc  b                                           ; $61ed: $04
	and  a                                           ; $61ee: $a7
	sbc  b                                           ; $61ef: $98
	ld   a, h                                        ; $61f0: $7c
	or   b                                           ; $61f1: $b0
	rst  JumpTable                                         ; $61f2: $df
	nop                                              ; $61f3: $00
	inc  b                                           ; $61f4: $04
	sbc  d                                           ; $61f5: $9a
	ld   [bc], a                                     ; $61f6: $02
	add  l                                           ; $61f7: $85
	inc  b                                           ; $61f8: $04
	ld   d, $7c                                      ; $61f9: $16 $7c
	inc  b                                           ; $61fb: $04
	sbc  $02                                         ; $61fc: $de $02
	ld   c, l                                        ; $61fe: $4d
	inc  b                                           ; $61ff: $04
	ld   h, c                                        ; $6200: $61
	nop                                              ; $6201: $00
	ld   e, b                                        ; $6202: $58
	ld   a, c                                        ; $6203: $79
	ld   e, h                                        ; $6204: $5c
	sbc  b                                           ; $6205: $98
	nop                                              ; $6206: $00
	ld   b, $20                                      ; $6207: $06 $20
	ld   [bc], a                                     ; $6209: $02
	ld   b, [hl]                                     ; $620a: $46
	halt                                             ; $620b: $76
	ld   e, b                                        ; $620c: $58
	ld   e, c                                        ; $620d: $59
	ld   e, c                                        ; $620e: $59
	nop                                              ; $620f: $00
	add  c                                           ; $6210: $81
	ld   [hl], c                                     ; $6211: $71
	ld   e, l                                        ; $6212: $5d
	sbc  b                                           ; $6213: $98
	inc  bc                                          ; $6214: $03
	ld   [hl], e                                     ; $6215: $73
	inc  bc                                          ; $6216: $03
	ld   [hl], h                                     ; $6217: $74
	nop                                              ; $6218: $00
	ld   [hl], a                                     ; $6219: $77
	and  c                                           ; $621a: $a1
	ld   a, b                                        ; $621b: $78
	sub  [hl]                                        ; $621c: $96
	ld   h, d                                        ; $621d: $62
	sbc  d                                           ; $621e: $9a
	sub  b                                           ; $621f: $90
	dec  b                                           ; $6220: $05
	ld   [de], a                                     ; $6221: $12
	halt                                             ; $6222: $76
	ld   h, a                                        ; $6223: $67
	nop                                              ; $6224: $00
	ld   e, b                                        ; $6225: $58
	inc  bc                                          ; $6226: $03
	sub  e                                           ; $6227: $93
	sbc  b                                           ; $6228: $98
	nop                                              ; $6229: $00
	ld   e, c                                        ; $622a: $59
	ld   h, a                                        ; $622b: $67
	adc  l                                           ; $622c: $8d
	ld   e, c                                        ; $622d: $59
	sub  a                                           ; $622e: $97
	inc  b                                           ; $622f: $04
	push hl                                          ; $6230: $e5
	ld   e, c                                        ; $6231: $59
	ld   [hl], c                                     ; $6232: $71
	ld   l, l                                        ; $6233: $6d
	ld   e, b                                        ; $6234: $58
	inc  bc                                          ; $6235: $03
	sub  e                                           ; $6236: $93
	sbc  b                                           ; $6237: $98
	nop                                              ; $6238: $00
	ret  nc                                          ; $6239: $d0

	ei                                               ; $623a: $fb
	rst  $10                                         ; $623b: $d7
	ld   a, h                                        ; $623c: $7c
	ld   l, l                                        ; $623d: $6d
	ld   a, e                                        ; $623e: $7b
	nop                                              ; $623f: $00
	inc  bc                                          ; $6240: $03
	xor  a                                           ; $6241: $af
	ld   h, e                                        ; $6242: $63
	ld   d, d                                        ; $6243: $52
	ld   [hl], d                                     ; $6244: $72
	add  h                                           ; $6245: $84
	nop                                              ; $6246: $00
	ret  nc                                          ; $6247: $d0

	ei                                               ; $6248: $fb
	rst  $10                                         ; $6249: $d7
	nop                                              ; $624a: $00
	ld   b, $94                                      ; $624b: $06 $94
	ld   e, d                                        ; $624d: $5a
	ld   l, l                                        ; $624e: $6d
	ld   e, l                                        ; $624f: $5d
	ld   h, e                                        ; $6250: $63
	and  c                                           ; $6251: $a1

jr_00d_6252:
	inc  bc                                          ; $6252: $03
	add  b                                           ; $6253: $80
	ld   l, l                                        ; $6254: $6d
	nop                                              ; $6255: $00
	ret  nc                                          ; $6256: $d0

	ei                                               ; $6257: $fb
	rst  $10                                         ; $6258: $d7
	nop                                              ; $6259: $00
	ld   l, e                                        ; $625a: $6b
	sbc  e                                           ; $625b: $9b
	ld   l, e                                        ; $625c: $6b
	sbc  e                                           ; $625d: $9b
	ld   b, $95                                      ; $625e: $06 $95
	ld   d, [hl]                                     ; $6260: $56
	dec  b                                           ; $6261: $05
	scf                                              ; $6262: $37
	ld   d, [hl]                                     ; $6263: $56
	ld   a, h                                        ; $6264: $7c
	inc  bc                                          ; $6265: $03
	ld   l, a                                        ; $6266: $6f
	ld   [bc], a                                     ; $6267: $02
	pop  bc                                          ; $6268: $c1
	nop                                              ; $6269: $00
	ret  nc                                          ; $626a: $d0

	ei                                               ; $626b: $fb
	rst  $10                                         ; $626c: $d7
	nop                                              ; $626d: $00
	sub  b                                           ; $626e: $90
	ld   d, h                                        ; $626f: $54
	ld   h, a                                        ; $6270: $67
	ld   e, [hl]                                     ; $6271: $5e
	dec  b                                           ; $6272: $05
	rlc  [hl]                                        ; $6273: $cb $06
	sub  [hl]                                        ; $6275: $96
	ld   a, h                                        ; $6276: $7c
	inc  bc                                          ; $6277: $03
	ld   l, a                                        ; $6278: $6f
	ld   [bc], a                                     ; $6279: $02
	pop  bc                                          ; $627a: $c1
	nop                                              ; $627b: $00
	ret  nc                                          ; $627c: $d0

	ei                                               ; $627d: $fb
	rst  $10                                         ; $627e: $d7
	nop                                              ; $627f: $00
	ld   e, b                                        ; $6280: $58
	inc  bc                                          ; $6281: $03
	jp   $059e                                       ; $6282: $c3 $9e $05


	ld   [bc], a                                     ; $6285: $02
	dec  b                                           ; $6286: $05
	ld   de, $0379                                   ; $6287: $11 $79 $03
	xor  [hl]                                        ; $628a: $ae
	ld   d, h                                        ; $628b: $54
	nop                                              ; $628c: $00
	ld   [bc], a                                     ; $628d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $628e: $cf
	inc  bc                                          ; $628f: $03
	jp   $b500                                       ; $6290: $c3 $00 $b5


	ei                                               ; $6293: $fb
	db   $ed                                         ; $6294: $ed
	ret  z                                           ; $6295: $c8

	push af                                          ; $6296: $f5
	db   $ed                                         ; $6297: $ed
	ei                                               ; $6298: $fb
	db   $ed                                         ; $6299: $ed
	ld   e, d                                        ; $629a: $5a
	dec  b                                           ; $629b: $05
	xor  c                                           ; $629c: $a9
	inc  b                                           ; $629d: $04
	adc  a                                           ; $629e: $8f
	nop                                              ; $629f: $00
	inc  b                                           ; $62a0: $04
	or   c                                           ; $62a1: $b1
	ld   e, e                                        ; $62a2: $5b
	dec  b                                           ; $62a3: $05
	inc  e                                           ; $62a4: $1c
	nop                                              ; $62a5: $00
	inc  b                                           ; $62a6: $04
	or   c                                           ; $62a7: $b1
	ld   e, e                                        ; $62a8: $5b
	ld   b, $01                                      ; $62a9: $06 $01
	nop                                              ; $62ab: $00
	inc  b                                           ; $62ac: $04
	jr   c, jr_00d_6252                              ; $62ad: $38 $a3

	xor  $a5                                         ; $62af: $ee $a5
	nop                                              ; $62b1: $00
	ld   [bc], a                                     ; $62b2: $02
	ld   l, e                                        ; $62b3: $6b
	inc  b                                           ; $62b4: $04
	ccf                                              ; $62b5: $3f
	and  b                                           ; $62b6: $a0
	inc  bc                                          ; $62b7: $03
	db   $ec                                         ; $62b8: $ec
	ld   d, [hl]                                     ; $62b9: $56
	sbc  c                                           ; $62ba: $99
	nop                                              ; $62bb: $00
	sub  $a2                                         ; $62bc: $d6 $a2
	push af                                          ; $62be: $f5
	xor  $c0                                         ; $62bf: $ee $c0
	ei                                               ; $62c1: $fb
	ld   a, h                                        ; $62c2: $7c
	inc  bc                                          ; $62c3: $03
	ld   e, b                                        ; $62c4: $58
	nop                                              ; $62c5: $00
	inc  bc                                          ; $62c6: $03
	add  d                                           ; $62c7: $82
	ld   [bc], a                                     ; $62c8: $02
	and  c                                           ; $62c9: $a1
	ld   a, h                                        ; $62ca: $7c
	pop  de                                          ; $62cb: $d1
	rst  $28                                         ; $62cc: $ef
	db   $e3                                         ; $62cd: $e3
	ei                                               ; $62ce: $fb
	ret  nz                                          ; $62cf: $c0

	ei                                               ; $62d0: $fb
	nop                                              ; $62d1: $00
	rst  ToBoot                                         ; $62d2: $c7
	and  h                                           ; $62d3: $a4
	ei                                               ; $62d4: $fb
	xor  h                                           ; $62d5: $ac
	call nz, $00d8                                   ; $62d6: $c4 $d8 $00
	ld   e, b                                        ; $62d9: $58
	ld   d, d                                        ; $62da: $52
	ld   h, l                                        ; $62db: $65
	ld   d, d                                        ; $62dc: $52
	ld   e, b                                        ; $62dd: $58
	inc  bc                                          ; $62de: $03
	jp   $7d79                               ; $62df: $c3 $79 $7d


	ld   d, d                                        ; $62e2: $52
	ld   d, d                                        ; $62e3: $52
	ld   [bc], a                                     ; $62e4: $02
	ld   d, a                                        ; $62e5: $57
	nop                                              ; $62e6: $00
	ld   e, c                                        ; $62e7: $59
	ld   e, a                                        ; $62e8: $5f
	ld   l, e                                        ; $62e9: $6b
	ld   a, [hl]                                     ; $62ea: $7e
	nop                                              ; $62eb: $00
	ld   [bc], a                                     ; $62ec: $02
	xor  b                                           ; $62ed: $a8
	inc  b                                           ; $62ee: $04
	sub  $65                                         ; $62ef: $d6 $65
	ld   a, h                                        ; $62f1: $7c
	ld   l, e                                        ; $62f2: $6b
	ld   a, [hl]                                     ; $62f3: $7e
	nop                                              ; $62f4: $00
	ret  nc                                          ; $62f5: $d0

	and  $b8                                         ; $62f6: $e6 $b8
	db   $eb                                         ; $62f8: $eb
	and  l                                           ; $62f9: $a5
	cp   d                                           ; $62fa: $ba
	nop                                              ; $62fb: $00
	ld   [bc], a                                     ; $62fc: $02
	xor  h                                           ; $62fd: $ac
	dec  b                                           ; $62fe: $05
	jp   nc, $eb04                                   ; $62ff: $d2 $04 $eb

	inc  bc                                          ; $6302: $03
	ld   l, d                                        ; $6303: $6a
	nop                                              ; $6304: $00
	inc  b                                           ; $6305: $04
	ld   [$9202], sp                                 ; $6306: $08 $02 $92
	ld   a, h                                        ; $6309: $7c
	inc  b                                           ; $630a: $04
	adc  b                                           ; $630b: $88
	inc  b                                           ; $630c: $04
	jr   jr_00d_630f                                 ; $630d: $18 $00

jr_00d_630f:
	dec  b                                           ; $630f: $05
	and  e                                           ; $6310: $a3
	ld   [bc], a                                     ; $6311: $02
	sub  b                                           ; $6312: $90
	db   $e3                                         ; $6313: $e3
	call z, $fbe7                                    ; $6314: $cc $e7 $fb
	nop                                              ; $6317: $00
	sub  $a2                                         ; $6318: $d6 $a2
	push af                                          ; $631a: $f5
	xor  $c0                                         ; $631b: $ee $c0
	ei                                               ; $631d: $fb
	nop                                              ; $631e: $00
	cp   d                                           ; $631f: $ba
	ret  nz                                          ; $6320: $c0

	ei                                               ; $6321: $fb
	ld   a, h                                        ; $6322: $7c
	ld   h, l                                        ; $6323: $65
	sbc  c                                           ; $6324: $99
	ld   h, l                                        ; $6325: $65
	nop                                              ; $6326: $00
	inc  b                                           ; $6327: $04
	adc  a                                           ; $6328: $8f
	nop                                              ; $6329: $00
	inc  b                                           ; $632a: $04
	dec  d                                           ; $632b: $15
	inc  b                                           ; $632c: $04
	rst  ToBoot                                         ; $632d: $c7
	ld   a, l                                        ; $632e: $7d
	db   $fd                                         ; $632f: $fd
	inc  bc                                          ; $6330: $03
	ld   e, a                                        ; $6331: $5f
	inc  b                                           ; $6332: $04
	dec  b                                           ; $6333: $05
	ld   [bc], a                                     ; $6334: $02
	jr   nc, jr_00d_633d                             ; $6335: $30 $06

	dec  h                                           ; $6337: $25
	cp   $00                                         ; $6338: $fe $00
	inc  b                                           ; $633a: $04
	adc  a                                           ; $633b: $8f
	nop                                              ; $633c: $00

jr_00d_633d:
	inc  bc                                          ; $633d: $03
	ld   e, b                                        ; $633e: $58
	inc  b                                           ; $633f: $04
	ld   a, d                                        ; $6340: $7a
	and  b                                           ; $6341: $a0
	adc  [hl]                                        ; $6342: $8e
	ld   e, c                                        ; $6343: $59
	ld   d, [hl]                                     ; $6344: $56
	ld   [hl], h                                     ; $6345: $74
	ld   d, d                                        ; $6346: $52
	sbc  c                                           ; $6347: $99
	nop                                              ; $6348: $00
	inc  b                                           ; $6349: $04
	adc  a                                           ; $634a: $8f
	nop                                              ; $634b: $00
	inc  b                                           ; $634c: $04
	ld   de, $038d                                   ; $634d: $11 $8d $03
	ld   a, [hl]                                     ; $6350: $7e
	sbc  l                                           ; $6351: $9d
	ld   [hl], c                                     ; $6352: $71
	ld   l, l                                        ; $6353: $6d
	nop                                              ; $6354: $00
	db   $e4                                         ; $6355: $e4
	res  5, h                                        ; $6356: $cb $ac
	nop                                              ; $6358: $00
	ld   b, $1c                                      ; $6359: $06 $1c
	ld   a, l                                        ; $635b: $7d
	ld   a, a                                        ; $635c: $7f
	sbc  b                                           ; $635d: $98
	ld   a, a                                        ; $635e: $7f
	sbc  b                                           ; $635f: $98
	inc  b                                           ; $6360: $04
	dec  bc                                          ; $6361: $0b
	ld   a, l                                        ; $6362: $7d
	sub  b                                           ; $6363: $90
	ld   [hl], c                                     ; $6364: $71
	ld   l, a                                        ; $6365: $6f
	sbc  b                                           ; $6366: $98
	nop                                              ; $6367: $00
	call z, $b9f5                                    ; $6368: $cc $f5 $b9
	push af                                          ; $636b: $f5
	nop                                              ; $636c: $00
	db   $dd                                         ; $636d: $dd
	db   $ed                                         ; $636e: $ed
	cp   b                                           ; $636f: $b8
	jp   nz, $037c                                   ; $6370: $c2 $7c $03

	jr   nc, jr_00d_637a                             ; $6373: $30 $05

	ld   [bc], a                                     ; $6375: $02
	nop                                              ; $6376: $00
	inc  b                                           ; $6377: $04
	ld   h, l                                        ; $6378: $65
	inc  b                                           ; $6379: $04

jr_00d_637a:
	rrca                                             ; $637a: $0f
	inc  bc                                          ; $637b: $03
	add  d                                           ; $637c: $82
	ld   [bc], a                                     ; $637d: $02
	ld   a, $00                                      ; $637e: $3e $00
	inc  b                                           ; $6380: $04
	ld   h, l                                        ; $6381: $65
	inc  b                                           ; $6382: $04
	rrca                                             ; $6383: $0f
	ld   a, h                                        ; $6384: $7c
	inc  b                                           ; $6385: $04
	sbc  $02                                         ; $6386: $de $02
	ld   c, l                                        ; $6388: $4d
	inc  b                                           ; $6389: $04
	ld   h, c                                        ; $638a: $61
	nop                                              ; $638b: $00
	rst  $28                                         ; $638c: $ef
	or   d                                           ; $638d: $b2
	call nz, $00c9                                   ; $638e: $c4 $c9 $00
	add  b                                           ; $6391: $80
	sbc  e                                           ; $6392: $9b
	ld   [hl], c                                     ; $6393: $71
	ld   l, l                                        ; $6394: $6d
	rst  $28                                         ; $6395: $ef
	or   d                                           ; $6396: $b2
	call nz, $00c9                                   ; $6397: $c4 $c9 $00
	db   $dd                                         ; $639a: $dd
	db   $ed                                         ; $639b: $ed
	cp   b                                           ; $639c: $b8
	jp   nz, $ef00                                   ; $639d: $c2 $00 $ef

	cp   b                                           ; $63a0: $b8
	and  e                                           ; $63a1: $a3
	ld   a, h                                        ; $63a2: $7c
	inc  b                                           ; $63a3: $04
	rst  ToBoot                                         ; $63a4: $c7
	inc  b                                           ; $63a5: $04
	sub  d                                           ; $63a6: $92
	dec  b                                           ; $63a7: $05
	ld   [bc], a                                     ; $63a8: $02
	dec  b                                           ; $63a9: $05
	ld   de, $c000                                   ; $63aa: $11 $00 $c0
	rst  $28                                         ; $63ad: $ef
	call nz, $acc9                                   ; $63ae: $c4 $c9 $ac
	ei                                               ; $63b1: $fb
	jp   z, $0500                                    ; $63b2: $ca $00 $05

	sub  $52                                         ; $63b5: $d6 $52
	ld   a, c                                        ; $63b7: $79
	inc  bc                                          ; $63b8: $03
	xor  [hl]                                        ; $63b9: $ae
	ld   d, h                                        ; $63ba: $54
	nop                                              ; $63bb: $00
	ret  c                                           ; $63bc: $d8

	xor  $bd                                         ; $63bd: $ee $bd
	push af                                          ; $63bf: $f5
	ret                                              ; $63c0: $c9


	nop                                              ; $63c1: $00
	sub  $a2                                         ; $63c2: $d6 $a2
	push af                                          ; $63c4: $f5
	ld   e, c                                        ; $63c5: $59
	sub  a                                           ; $63c6: $97
	ld   a, h                                        ; $63c7: $7c
	sub  b                                           ; $63c8: $90
	ld   a, h                                        ; $63c9: $7c
	nop                                              ; $63ca: $00
	rst  JumpTable                                         ; $63cb: $df
	db   $ec                                         ; $63cc: $ec
	ei                                               ; $63cd: $fb
	nop                                              ; $63ce: $00
	and  l                                           ; $63cf: $a5
	call $df7c                                       ; $63d0: $cd $7c $df
	db   $ec                                         ; $63d3: $ec
	ei                                               ; $63d4: $fb
	nop                                              ; $63d5: $00
	ret  nc                                          ; $63d6: $d0

	call z, $d0fb                                    ; $63d7: $cc $fb $d0
	jp   nz, $c5e0                                   ; $63da: $c2 $e0 $c5

	nop                                              ; $63dd: $00
	dec  b                                           ; $63de: $05
	and  c                                           ; $63df: $a1
	ld   e, l                                        ; $63e0: $5d
	ld   [hl], h                                     ; $63e1: $74
	ld   [bc], a                                     ; $63e2: $02
	inc  b                                           ; $63e3: $04
	inc  b                                           ; $63e4: $04
	push af                                          ; $63e5: $f5
	inc  b                                           ; $63e6: $04
	ret  nz                                          ; $63e7: $c0

	inc  bc                                          ; $63e8: $03
	db   $ed                                         ; $63e9: $ed
	nop                                              ; $63ea: $00
	inc  b                                           ; $63eb: $04
	add  h                                           ; $63ec: $84
	ld   [bc], a                                     ; $63ed: $02
	add  h                                           ; $63ee: $84
	ld   [bc], a                                     ; $63ef: $02
	jp   $0004                                       ; $63f0: $c3 $04 $00


	nop                                              ; $63f3: $00
	inc  b                                           ; $63f4: $04
	ld   c, c                                        ; $63f5: $49
	ld   [hl], l                                     ; $63f6: $75
	sub  b                                           ; $63f7: $90
	ld   b, $97                                      ; $63f8: $06 $97
	ld   [hl], c                                     ; $63fa: $71
	ld   [hl], h                                     ; $63fb: $74
	ld   d, d                                        ; $63fc: $52
	sbc  c                                           ; $63fd: $99
	nop                                              ; $63fe: $00
	inc  bc                                          ; $63ff: $03
	ld   e, b                                        ; $6400: $58
	inc  bc                                          ; $6401: $03
	ld   e, c                                        ; $6402: $59
	ld   [bc], a                                     ; $6403: $02
	cp   c                                           ; $6404: $b9
	nop                                              ; $6405: $00
	inc  bc                                          ; $6406: $03
	sub  h                                           ; $6407: $94
	inc  bc                                          ; $6408: $03
	sbc  c                                           ; $6409: $99
	ld   a, h                                        ; $640a: $7c
	ld   [bc], a                                     ; $640b: $02
	ld   h, c                                        ; $640c: $61
	inc  bc                                          ; $640d: $03
	dec  bc                                          ; $640e: $0b
	ld   a, h                                        ; $640f: $7c
	ld   [bc], a                                     ; $6410: $02
	ld   e, [hl]                                     ; $6411: $5e
	nop                                              ; $6412: $00
	and  e                                           ; $6413: $a3
	and  l                                           ; $6414: $a5
	db   $ec                                         ; $6415: $ec
	cp   d                                           ; $6416: $ba
	ld   a, h                                        ; $6417: $7c
	inc  b                                           ; $6418: $04
	xor  d                                           ; $6419: $aa
	ld   [bc], a                                     ; $641a: $02
	sub  a                                           ; $641b: $97
	nop                                              ; $641c: $00
	ld   [bc], a                                     ; $641d: $02
	ld   e, [hl]                                     ; $641e: $5e
	inc  b                                           ; $641f: $04
	xor  d                                           ; $6420: $aa
	ld   [bc], a                                     ; $6421: $02
	sub  a                                           ; $6422: $97
	nop                                              ; $6423: $00
	cp   c                                           ; $6424: $b9
	push hl                                          ; $6425: $e5
	push af                                          ; $6426: $f5
	sbc  $fb                                         ; $6427: $de $fb
	db   $ed                                         ; $6429: $ed
	nop                                              ; $642a: $00
	ld   d, d                                        ; $642b: $52
	ld   [hl], d                                     ; $642c: $72
	sub  b                                           ; $642d: $90
	and  e                                           ; $642e: $a3
	and  l                                           ; $642f: $a5
	db   $ec                                         ; $6430: $ec
	cp   d                                           ; $6431: $ba
	halt                                             ; $6432: $76
	ld   [bc], a                                     ; $6433: $02
	jr   nz, jr_00d_6439                             ; $6434: $20 $03

	sbc  d                                           ; $6436: $9a
	nop                                              ; $6437: $00
	ld   [bc], a                                     ; $6438: $02

jr_00d_6439:
	ld   e, [hl]                                     ; $6439: $5e
	inc  b                                           ; $643a: $04
	ld   d, [hl]                                     ; $643b: $56
	nop                                              ; $643c: $00
	ld   [bc], a                                     ; $643d: $02
	add  b                                           ; $643e: $80
	ld   d, d                                        ; $643f: $52
	ld   [bc], a                                     ; $6440: $02
	jp   $03a0                                       ; $6441: $c3 $a0 $03


	ld   d, l                                        ; $6444: $55
	ld   d, d                                        ; $6445: $52
	ld   [hl], h                                     ; $6446: $74
	ld   b, $98                                      ; $6447: $06 $98
	inc  b                                           ; $6449: $04
	dec  a                                           ; $644a: $3d
	nop                                              ; $644b: $00
	ld   a, d                                        ; $644c: $7a
	ld   d, d                                        ; $644d: $52
	ld   e, [hl]                                     ; $644e: $5e
	sbc  c                                           ; $644f: $99
	adc  l                                           ; $6450: $8d
	nop                                              ; $6451: $00
	and  e                                           ; $6452: $a3
	and  l                                           ; $6453: $a5
	db   $ec                                         ; $6454: $ec
	cp   d                                           ; $6455: $ba
	ld   a, h                                        ; $6456: $7c
	ld   e, b                                        ; $6457: $58
	inc  b                                           ; $6458: $04
	ld   [$f703], a                                  ; $6459: $ea $03 $f7
	nop                                              ; $645c: $00
	cp   c                                           ; $645d: $b9
	or   c                                           ; $645e: $b1
	cp   [hl]                                        ; $645f: $be
	ei                                               ; $6460: $fb
	jp   nc, $edbb                                   ; $6461: $d2 $bb $ed

	nop                                              ; $6464: $00
	ld   a, [hl]                                     ; $6465: $7e
	sub  a                                           ; $6466: $97
	ld   a, [hl]                                     ; $6467: $7e
	sub  a                                           ; $6468: $97
	ld   a, h                                        ; $6469: $7c
	dec  b                                           ; $646a: $05
	pop  hl                                          ; $646b: $e1
	inc  b                                           ; $646c: $04
	dec  [hl]                                        ; $646d: $35
	nop                                              ; $646e: $00
	cp   c                                           ; $646f: $b9
	or   c                                           ; $6470: $b1
	cp   [hl]                                        ; $6471: $be
	ei                                               ; $6472: $fb
	jp   nc, $edbb                                   ; $6473: $d2 $bb $ed

	nop                                              ; $6476: $00
	inc  b                                           ; $6477: $04
	sbc  e                                           ; $6478: $9b
	ld   e, c                                        ; $6479: $59
	sub  a                                           ; $647a: $97
	dec  b                                           ; $647b: $05
	adc  c                                           ; $647c: $89
	adc  a                                           ; $647d: $8f
	ld   [hl], h                                     ; $647e: $74
	ld   d, d                                        ; $647f: $52
	ld   e, l                                        ; $6480: $5d
	ld   a, h                                        ; $6481: $7c
	ld   e, d                                        ; $6482: $5a
	or   h                                           ; $6483: $b4
	push bc                                          ; $6484: $c5
	nop                                              ; $6485: $00
	cp   c                                           ; $6486: $b9
	or   c                                           ; $6487: $b1
	cp   [hl]                                        ; $6488: $be
	ei                                               ; $6489: $fb
	jp   nc, $edbb                                   ; $648a: $d2 $bb $ed

	nop                                              ; $648d: $00
	inc  b                                           ; $648e: $04
	ld   [hl], d                                     ; $648f: $72
	inc  b                                           ; $6490: $04
	sbc  [hl]                                        ; $6491: $9e
	ld   a, l                                        ; $6492: $7d
	ld   [hl], l                                     ; $6493: $75
	ld   e, e                                        ; $6494: $5b
	ld   [hl], h                                     ; $6495: $74
	ld   d, d                                        ; $6496: $52
	sbc  c                                           ; $6497: $99
	nop                                              ; $6498: $00
	cp   c                                           ; $6499: $b9
	or   c                                           ; $649a: $b1
	cp   [hl]                                        ; $649b: $be
	ei                                               ; $649c: $fb
	jp   nc, $edbb                                   ; $649d: $d2 $bb $ed

	nop                                              ; $64a0: $00
	ld   d, b                                        ; $64a1: $50
	halt                                             ; $64a2: $76
	sub  b                                           ; $64a3: $90
	ld   d, h                                        ; $64a4: $54
	inc  bc                                          ; $64a5: $03
	ld   l, h                                        ; $64a6: $6c
	ld   h, l                                        ; $64a7: $65
	ld   [hl], l                                     ; $64a8: $75
	dec  b                                           ; $64a9: $05
	and  b                                           ; $64aa: $a0
	inc  bc                                          ; $64ab: $03
	ld   [de], a                                     ; $64ac: $12
	nop                                              ; $64ad: $00
	cp   c                                           ; $64ae: $b9
	or   c                                           ; $64af: $b1
	cp   [hl]                                        ; $64b0: $be
	ei                                               ; $64b1: $fb
	jp   nc, $edbb                                   ; $64b2: $d2 $bb $ed

	nop                                              ; $64b5: $00
	dec  b                                           ; $64b6: $05
	and  b                                           ; $64b7: $a0
	inc  bc                                          ; $64b8: $03
	ld   [de], a                                     ; $64b9: $12
	inc  b                                           ; $64ba: $04
	ld   h, c                                        ; $64bb: $61
	nop                                              ; $64bc: $00
	ld   [bc], a                                     ; $64bd: $02
	ld   c, a                                        ; $64be: $4f
	ld   [bc], a                                     ; $64bf: $02
	xor  b                                           ; $64c0: $a8
	cp   h                                           ; $64c1: $bc
	call nz, $00c9                                   ; $64c2: $c4 $c9 $00
	ld   [bc], a                                     ; $64c5: $02
	jr   nz, jr_00d_64ca                             ; $64c6: $20 $02

	and  [hl]                                        ; $64c8: $a6
	ld   a, c                                        ; $64c9: $79

jr_00d_64ca:
	ld   [de], a                                     ; $64ca: $12
	ld   [hl], d                                     ; $64cb: $72
	ld   d, b                                        ; $64cc: $50
	sbc  c                                           ; $64cd: $99
	halt                                             ; $64ce: $76
	ld   b, $14                                      ; $64cf: $06 $14
	dec  b                                           ; $64d1: $05
	ld   b, $00                                      ; $64d2: $06 $00
	ld   [bc], a                                     ; $64d4: $02
	cp   [hl]                                        ; $64d5: $be
	ld   [bc], a                                     ; $64d6: $02
	ld   b, a                                        ; $64d7: $47
	or   [hl]                                        ; $64d8: $b6
	db   $eb                                         ; $64d9: $eb
	cp   h                                           ; $64da: $bc
	call nz, $00c9                                   ; $64db: $c4 $c9 $00
	or   [hl]                                        ; $64de: $b6
	db   $eb                                         ; $64df: $eb
	ld   [bc], a                                     ; $64e0: $02
	sub  e                                           ; $64e1: $93
	ld   h, l                                        ; $64e2: $65
	ld   a, c                                        ; $64e3: $79
	ld   a, l                                        ; $64e4: $7d
	inc  b                                           ; $64e5: $04
	and  b                                           ; $64e6: $a0
	ld   [bc], a                                     ; $64e7: $02
	jp   nc, $005b                                   ; $64e8: $d2 $5b $00

	ld   e, e                                        ; $64eb: $5b
	sbc  b                                           ; $64ec: $98
	ld   l, l                                        ; $64ed: $6d
	and  c                                           ; $64ee: $a1
	adc  e                                           ; $64ef: $8b
	nop                                              ; $64f0: $00
	ld   [bc], a                                     ; $64f1: $02
	ld   d, $04                                      ; $64f2: $16 $04
	ld   hl, $057c                                   ; $64f4: $21 $7c $05
	or   b                                           ; $64f7: $b0
	inc  b                                           ; $64f8: $04
	jr   nc, jr_00d_6500                             ; $64f9: $30 $05

	ld   [bc], a                                     ; $64fb: $02
	dec  b                                           ; $64fc: $05
	ld   de, $0200                                   ; $64fd: $11 $00 $02

jr_00d_6500:
	dec  hl                                          ; $6500: $2b
	and  e                                           ; $6501: $a3
	and  l                                           ; $6502: $a5
	ld   e, l                                        ; $6503: $5d
	and  c                                           ; $6504: $a1
	nop                                              ; $6505: $00
	ld   [bc], a                                     ; $6506: $02
	ld   a, [de]                                     ; $6507: $1a
	ld   [bc], a                                     ; $6508: $02
	db   $fc                                         ; $6509: $fc
	ld   [bc], a                                     ; $650a: $02
	or   $04                                         ; $650b: $f6 $04
	inc  h                                           ; $650d: $24
	db   $e3                                         ; $650e: $e3
	xor  h                                           ; $650f: $ac
	nop                                              ; $6510: $00
	pop  af                                          ; $6511: $f1
	and  l                                           ; $6512: $a5
	and  $fb                                         ; $6513: $e6 $fb
	nop                                              ; $6515: $00
	inc  bc                                          ; $6516: $03
	ld   [$3b02], sp                                 ; $6517: $08 $02 $3b
	nop                                              ; $651a: $00
	db   $dd                                         ; $651b: $dd
	db   $ed                                         ; $651c: $ed
	ret                                              ; $651d: $c9


	nop                                              ; $651e: $00
	set  0, h                                        ; $651f: $cb $c4
	ret                                              ; $6521: $c9


	halt                                             ; $6522: $76
	inc  bc                                          ; $6523: $03
	xor  [hl]                                        ; $6524: $ae
	ld   d, h                                        ; $6525: $54
	nop                                              ; $6526: $00
	set  0, h                                        ; $6527: $cb $c4
	ret                                              ; $6529: $c9


	nop                                              ; $652a: $00
	db   $dd                                         ; $652b: $dd
	db   $ed                                         ; $652c: $ed
	ret                                              ; $652d: $c9


	halt                                             ; $652e: $76
	inc  bc                                          ; $652f: $03
	xor  [hl]                                        ; $6530: $ae
	ld   d, h                                        ; $6531: $54
	nop                                              ; $6532: $00
	db   $e4                                         ; $6533: $e4
	call nz, $00d8                                   ; $6534: $c4 $d8 $00
	inc  bc                                          ; $6537: $03
	ld   [hl], $03                                   ; $6538: $36 $03
	add  a                                           ; $653a: $87
	inc  bc                                          ; $653b: $03
	adc  b                                           ; $653c: $88
	ld   a, c                                        ; $653d: $79
	inc  bc                                          ; $653e: $03
	xor  [hl]                                        ; $653f: $ae
	ld   d, h                                        ; $6540: $54
	nop                                              ; $6541: $00
	sbc  l                                           ; $6542: $9d
	sbc  b                                           ; $6543: $98
	ld   a, [hl]                                     ; $6544: $7e
	ld   h, l                                        ; $6545: $65
	nop                                              ; $6546: $00
	ld   [bc], a                                     ; $6547: $02
	halt                                             ; $6548: $76
	ld   [hl], c                                     ; $6549: $71
	ld   [hl], h                                     ; $654a: $74
	inc  bc                                          ; $654b: $03
	xor  [hl]                                        ; $654c: $ae
	ld   d, h                                        ; $654d: $54
	nop                                              ; $654e: $00
	sub  b                                           ; $654f: $90
	ld   a, h                                        ; $6550: $7c
	adc  c                                           ; $6551: $89
	ld   h, l                                        ; $6552: $65
	ld   h, h                                        ; $6553: $64
	ld   e, b                                        ; $6554: $58
	nop                                              ; $6555: $00
	dec  b                                           ; $6556: $05
	rst  $30                                         ; $6557: $f7
	ld   [hl], l                                     ; $6558: $75
	ld   [hl], l                                     ; $6559: $75
	ld   e, e                                        ; $655a: $5b
	ld   [hl], h                                     ; $655b: $74
	ld   d, d                                        ; $655c: $52
	sbc  c                                           ; $655d: $99
	nop                                              ; $655e: $00
	inc  de                                          ; $655f: $13
	ld   [bc], a                                     ; $6560: $02
	ld   a, e                                        ; $6561: $7b
	halt                                             ; $6562: $76
	ld   [hl], c                                     ; $6563: $71
	ld   e, l                                        ; $6564: $5d
	sbc  b                                           ; $6565: $98
	nop                                              ; $6566: $00
	inc  de                                          ; $6567: $13
	ld   [bc], a                                     ; $6568: $02
	ld   a, e                                        ; $6569: $7b
	ld   a, l                                        ; $656a: $7d
	inc  d                                           ; $656b: $14
	rla                                              ; $656c: $17
	ld   de, $1d1d                                   ; $656d: $11 $1d $1d
	nop                                              ; $6570: $00
	ld   h, l                                        ; $6571: $65
	sub  l                                           ; $6572: $95
	ld   d, h                                        ; $6573: $54
	sub  h                                           ; $6574: $94
	ld   h, e                                        ; $6575: $63
	ld   h, l                                        ; $6576: $65
	nop                                              ; $6577: $00
	ld   l, a                                        ; $6578: $6f
	sub  l                                           ; $6579: $95
	ld   d, h                                        ; $657a: $54
	ld   [hl], a                                     ; $657b: $77
	ld   d, d                                        ; $657c: $52
	ld   d, d                                        ; $657d: $52
	dec  b                                           ; $657e: $05
	ld   h, [hl]                                     ; $657f: $66
	ld   e, d                                        ; $6580: $5a
	inc  bc                                          ; $6581: $03
	add  b                                           ; $6582: $80
	sbc  c                                           ; $6583: $99
	nop                                              ; $6584: $00
	sub  d                                           ; $6585: $92
	ld   e, c                                        ; $6586: $59
	and  c                                           ; $6587: $a1
	nop                                              ; $6588: $00
	inc  b                                           ; $6589: $04
	db   $ed                                         ; $658a: $ed
	sbc  l                                           ; $658b: $9d
	ld   e, c                                        ; $658c: $59
	ld   h, l                                        ; $658d: $65
	nop                                              ; $658e: $00
	inc  b                                           ; $658f: $04
	ld   c, $04                                      ; $6590: $0e $04
	ld   d, $02                                      ; $6592: $16 $02
	xor  b                                           ; $6594: $a8
	ld   a, h                                        ; $6595: $7c
	inc  bc                                          ; $6596: $03
	cp   a                                           ; $6597: $bf
	nop                                              ; $6598: $00
	ld   [bc], a                                     ; $6599: $02
	sub  l                                           ; $659a: $95
	ld   l, l                                        ; $659b: $6d
	inc  b                                           ; $659c: $04
	call nc, $9896                                   ; $659d: $d4 $96 $98
	sub  b                                           ; $65a0: $90
	ld   [bc], a                                     ; $65a1: $02
	ld   [hl], $52                                   ; $65a2: $36 $52
	nop                                              ; $65a4: $00
	ld   e, c                                        ; $65a5: $59
	ld   e, d                                        ; $65a6: $5a
	adc  l                                           ; $65a7: $8d
	sub  b                                           ; $65a8: $90
	ld   l, a                                        ; $65a9: $6f
	nop                                              ; $65aa: $00
	inc  bc                                          ; $65ab: $03
	ld   c, d                                        ; $65ac: $4a
	ld   [bc], a                                     ; $65ad: $02
	sbc  e                                           ; $65ae: $9b
	ld   a, h                                        ; $65af: $7c
	ld   e, b                                        ; $65b0: $58
	ld   l, e                                        ; $65b1: $6b
	ld   a, b                                        ; $65b2: $78
	ld   d, [hl]                                     ; $65b3: $56
	nop                                              ; $65b4: $00
	ld   b, $5a                                      ; $65b5: $06 $5a
	inc  bc                                          ; $65b7: $03
	xor  h                                           ; $65b8: $ac
	jp   nc, $edce                                   ; $65b9: $d2 $ce $ed

	nop                                              ; $65bc: $00
	inc  bc                                          ; $65bd: $03
	inc  h                                           ; $65be: $24
	inc  bc                                          ; $65bf: $03
	xor  h                                           ; $65c0: $ac
	xor  c                                           ; $65c1: $a9
	push af                                          ; $65c2: $f5
	cp   c                                           ; $65c3: $b9
	push af                                          ; $65c4: $f5
	ld   a, h                                        ; $65c5: $7c
	ld   b, $5a                                      ; $65c6: $06 $5a
	inc  bc                                          ; $65c8: $03
	xor  h                                           ; $65c9: $ac
	nop                                              ; $65ca: $00
	adc  h                                           ; $65cb: $8c
	ld   h, c                                        ; $65cc: $61
	halt                                             ; $65cd: $76
	ld   e, l                                        ; $65ce: $5d
	and  c                                           ; $65cf: $a1
	nop                                              ; $65d0: $00
	and  a                                           ; $65d1: $a7
	cp   [hl]                                        ; $65d2: $be
	inc  b                                           ; $65d3: $04
	ld   e, [hl]                                     ; $65d4: $5e
	ld   [bc], a                                     ; $65d5: $02
	sub  l                                           ; $65d6: $95
	ld   [bc], a                                     ; $65d7: $02
	ld   d, a                                        ; $65d8: $57
	nop                                              ; $65d9: $00
	inc  bc                                          ; $65da: $03
	inc  h                                           ; $65db: $24
	ld   [bc], a                                     ; $65dc: $02
	halt                                             ; $65dd: $76
	inc  b                                           ; $65de: $04
	ld   [hl], h                                     ; $65df: $74
	nop                                              ; $65e0: $00
	ld   [bc], a                                     ; $65e1: $02
	or   [hl]                                        ; $65e2: $b6
	inc  bc                                          ; $65e3: $03
	ld   l, e                                        ; $65e4: $6b
	ld   a, h                                        ; $65e5: $7c
	inc  bc                                          ; $65e6: $03
	ld   a, e                                        ; $65e7: $7b
	ld   [bc], a                                     ; $65e8: $02
	ld   a, a                                        ; $65e9: $7f
	ld   a, c                                        ; $65ea: $79
	inc  bc                                          ; $65eb: $03
	xor  [hl]                                        ; $65ec: $ae
	ld   d, h                                        ; $65ed: $54
	nop                                              ; $65ee: $00
	inc  bc                                          ; $65ef: $03
	inc  h                                           ; $65f0: $24
	ld   [bc], a                                     ; $65f1: $02
	halt                                             ; $65f2: $76
	inc  b                                           ; $65f3: $04
	ld   [hl], h                                     ; $65f4: $74
	nop                                              ; $65f5: $00
	add  b                                           ; $65f6: $80
	add  c                                           ; $65f7: $81
	ld   e, d                                        ; $65f8: $5a
	inc  b                                           ; $65f9: $04
	ld   b, l                                        ; $65fa: $45
	sbc  c                                           ; $65fb: $99
	adc  c                                           ; $65fc: $89
	ld   [hl], a                                     ; $65fd: $77
	inc  bc                                          ; $65fe: $03
	ld   h, l                                        ; $65ff: $65
	inc  bc                                          ; $6600: $03
	rst  $30                                         ; $6601: $f7
	nop                                              ; $6602: $00
	inc  bc                                          ; $6603: $03
	inc  h                                           ; $6604: $24
	ld   [bc], a                                     ; $6605: $02
	halt                                             ; $6606: $76
	inc  b                                           ; $6607: $04
	ld   [hl], h                                     ; $6608: $74
	nop                                              ; $6609: $00
	ld   [bc], a                                     ; $660a: $02
	halt                                             ; $660b: $76
	sbc  d                                           ; $660c: $9a
	sbc  c                                           ; $660d: $99
	sub  [hl]                                        ; $660e: $96
	ld   d, h                                        ; $660f: $54
	ld   a, c                                        ; $6610: $79
	ld   a, b                                        ; $6611: $78
	ld   [hl], c                                     ; $6612: $71
	ld   l, l                                        ; $6613: $6d
	nop                                              ; $6614: $00
	ld   [bc], a                                     ; $6615: $02
	ld   b, [hl]                                     ; $6616: $46
	inc  b                                           ; $6617: $04
	sub  d                                           ; $6618: $92
	nop                                              ; $6619: $00
	ld   [bc], a                                     ; $661a: $02
	ld   b, [hl]                                     ; $661b: $46
	ld   h, l                                        ; $661c: $65
	ld   l, l                                        ; $661d: $6d
	dec  b                                           ; $661e: $05
	dec  [hl]                                        ; $661f: $35
	dec  b                                           ; $6620: $05
	ld   [hl-], a                                    ; $6621: $32
	dec  b                                           ; $6622: $05
	ld   h, d                                        ; $6623: $62
	nop                                              ; $6624: $00
	ld   e, c                                        ; $6625: $59
	and  c                                           ; $6626: $a1
	ld   h, h                                        ; $6627: $64
	ld   h, l                                        ; $6628: $65
	nop                                              ; $6629: $00
	inc  b                                           ; $662a: $04
	ld   l, d                                        ; $662b: $6a
	ld   a, c                                        ; $662c: $79
	ld   h, e                                        ; $662d: $63
	ld   h, a                                        ; $662e: $67
	ld   b, $99                                      ; $662f: $06 $99
	sbc  b                                           ; $6631: $98
	nop                                              ; $6632: $00
	ld   e, c                                        ; $6633: $59
	sbc  l                                           ; $6634: $9d
	sub  a                                           ; $6635: $97
	nop                                              ; $6636: $00
	ld   [bc], a                                     ; $6637: $02
	ld   hl, $5d02                                   ; $6638: $21 $02 $5d
	ld   [bc], a                                     ; $663b: $02
	dec  bc                                          ; $663c: $0b
	ld   [bc], a                                     ; $663d: $02
	bit  7, c                                        ; $663e: $cb $79
	sub  b                                           ; $6640: $90
	inc  bc                                          ; $6641: $03
	xor  [hl]                                        ; $6642: $ae
	ld   d, h                                        ; $6643: $54
	nop                                              ; $6644: $00
	cp   d                                           ; $6645: $ba
	rst  ToBoot                                         ; $6646: $c7
	ei                                               ; $6647: $fb
	xor  [hl]                                        ; $6648: $ae
	nop                                              ; $6649: $00
	inc  b                                           ; $664a: $04
	ccf                                              ; $664b: $3f
	dec  b                                           ; $664c: $05
	ld   [bc], a                                     ; $664d: $02
	dec  b                                           ; $664e: $05
	ld   de, $7700                                   ; $664f: $11 $00 $77
	and  c                                           ; $6652: $a1
	add  h                                           ; $6653: $84
	sbc  b                                           ; $6654: $98
	nop                                              ; $6655: $00
	xor  h                                           ; $6656: $ac
	push af                                          ; $6657: $f5
	bit  7, h                                        ; $6658: $cb $7c
	ld   [bc], a                                     ; $665a: $02
	dec  hl                                          ; $665b: $2b
	inc  b                                           ; $665c: $04
	di                                               ; $665d: $f3
	inc  b                                           ; $665e: $04
	ld   h, c                                        ; $665f: $61
	nop                                              ; $6660: $00
	jp   nz, $fbe5                                   ; $6661: $c2 $e5 $fb

	ret  nc                                          ; $6664: $d0

	push af                                          ; $6665: $f5
	nop                                              ; $6666: $00
	ld   e, b                                        ; $6667: $58
	inc  b                                           ; $6668: $04
	rst  $10                                         ; $6669: $d7
	ld   a, l                                        ; $666a: $7d
	ld   a, a                                        ; $666b: $7f
	sub  a                                           ; $666c: $97
	ld   [hl], c                                     ; $666d: $71
	halt                                             ; $666e: $76
	ld   h, l                                        ; $666f: $65
	ld   [hl], h                                     ; $6670: $74
	ld   d, d                                        ; $6671: $52
	sbc  c                                           ; $6672: $99
	nop                                              ; $6673: $00
	ld   e, b                                        ; $6674: $58
	ld   h, l                                        ; $6675: $65
	and  c                                           ; $6676: $a1
	ld   h, c                                        ; $6677: $61
	nop                                              ; $6678: $00
	ld   e, b                                        ; $6679: $58
	ld   b, $9a                                      ; $667a: $06 $9a
	inc  b                                           ; $667c: $04
	sub  d                                           ; $667d: $92
	nop                                              ; $667e: $00
	or   b                                           ; $667f: $b0
	call nz, $fbae                                   ; $6680: $c4 $ae $fb
	nop                                              ; $6683: $00
	dec  b                                           ; $6684: $05
	and  c                                           ; $6685: $a1
	ld   e, l                                        ; $6686: $5d
	ld   [hl], h                                     ; $6687: $74
	or   [hl]                                        ; $6688: $b6
	or   b                                           ; $6689: $b0
	or   [hl]                                        ; $668a: $b6
	or   b                                           ; $668b: $b0
	nop                                              ; $668c: $00
	ld   l, c                                        ; $668d: $69
	and  c                                           ; $668e: $a1
	add  a                                           ; $668f: $87
	ld   d, d                                        ; $6690: $52
	nop                                              ; $6691: $00
	ld   h, l                                        ; $6692: $65
	sub  l                                           ; $6693: $95
	ld   d, h                                        ; $6694: $54
	sub  h                                           ; $6695: $94
	inc  b                                           ; $6696: $04
	jp   nc, $597c                                   ; $6697: $d2 $7c $59

	ld   l, l                                        ; $669a: $6d
	inc  bc                                          ; $669b: $03
	ld   c, $5b                                      ; $669c: $0e $5b
	nop                                              ; $669e: $00
	inc  bc                                          ; $669f: $03
	ld   d, l                                        ; $66a0: $55
	dec  b                                           ; $66a1: $05
	ld   h, d                                        ; $66a2: $62
	nop                                              ; $66a3: $00
	inc  b                                           ; $66a4: $04
	ld   [de], a                                     ; $66a5: $12
	ld   b, $9b                                      ; $66a6: $06 $9b
	nop                                              ; $66a8: $00
	inc  bc                                          ; $66a9: $03
	ld   d, l                                        ; $66aa: $55
	dec  b                                           ; $66ab: $05
	ld   h, d                                        ; $66ac: $62
	ld   a, h                                        ; $66ad: $7c
	inc  bc                                          ; $66ae: $03
	dec  hl                                          ; $66af: $2b
	nop                                              ; $66b0: $00
	inc  b                                           ; $66b1: $04
	ld   [de], a                                     ; $66b2: $12
	ld   b, $9b                                      ; $66b3: $06 $9b
	ld   a, h                                        ; $66b5: $7c
	inc  bc                                          ; $66b6: $03
	ld   e, b                                        ; $66b7: $58
	nop                                              ; $66b8: $00
	adc  h                                           ; $66b9: $8c
	and  c                                           ; $66ba: $a1
	ld   h, [hl]                                     ; $66bb: $66
	sub  e                                           ; $66bc: $93
	ld   d, h                                        ; $66bd: $54
	nop                                              ; $66be: $00
	inc  b                                           ; $66bf: $04
	dec  bc                                          ; $66c0: $0b
	inc  b                                           ; $66c1: $04
	pop  de                                          ; $66c2: $d1
	ld   a, l                                        ; $66c3: $7d
	ld   d, b                                        ; $66c4: $50
	and  c                                           ; $66c5: $a1
	ld   h, c                                        ; $66c6: $61
	nop                                              ; $66c7: $00
	rst  $10                                         ; $66c8: $d7
	rst  $28                                         ; $66c9: $ef
	rst  JumpTable                                         ; $66ca: $df
	and  l                                           ; $66cb: $a5
	jp   z, $0012                                    ; $66cc: $ca $12 $00

	ld   h, e                                        ; $66cf: $63
	ld   e, l                                        ; $66d0: $5d
	sub  a                                           ; $66d1: $97
	ld   a, h                                        ; $66d2: $7c
	rst  $10                                         ; $66d3: $d7
	rst  $28                                         ; $66d4: $ef
	rst  JumpTable                                         ; $66d5: $df
	and  l                                           ; $66d6: $a5
	jp   z, $d700                                    ; $66d7: $ca $00 $d7

	rst  $28                                         ; $66da: $ef
	rst  JumpTable                                         ; $66db: $df
	and  l                                           ; $66dc: $a5
	jp   z, $0013                                    ; $66dd: $ca $13 $00

	ld   h, a                                        ; $66e0: $67
	adc  l                                           ; $66e1: $8d
	sbc  d                                           ; $66e2: $9a
	ld   a, h                                        ; $66e3: $7c
	rst  $10                                         ; $66e4: $d7
	rst  $28                                         ; $66e5: $ef
	rst  JumpTable                                         ; $66e6: $df
	and  l                                           ; $66e7: $a5
	jp   z, $d700                                    ; $66e8: $ca $00 $d7

	rst  $28                                         ; $66eb: $ef
	rst  JumpTable                                         ; $66ec: $df
	and  l                                           ; $66ed: $a5
	jp   z, $0014                                    ; $66ee: $ca $14 $00

	rst  JumpTable                                         ; $66f1: $df
	db   $ec                                         ; $66f2: $ec
	and  e                                           ; $66f3: $a3
	ld   a, h                                        ; $66f4: $7c
	rst  $10                                         ; $66f5: $d7
	rst  $28                                         ; $66f6: $ef
	rst  JumpTable                                         ; $66f7: $df
	and  l                                           ; $66f8: $a5
	jp   z, $d700                                    ; $66f9: $ca $00 $d7

	rst  $28                                         ; $66fc: $ef
	rst  JumpTable                                         ; $66fd: $df
	and  l                                           ; $66fe: $a5
	jp   z, $0015                                    ; $66ff: $ca $15 $00

	and  e                                           ; $6702: $a3
	and  l                                           ; $6703: $a5
	db   $ec                                         ; $6704: $ec
	cp   d                                           ; $6705: $ba
	ld   a, h                                        ; $6706: $7c
	rst  $10                                         ; $6707: $d7
	rst  $28                                         ; $6708: $ef
	rst  JumpTable                                         ; $6709: $df
	and  l                                           ; $670a: $a5
	jp   z, $d700                                    ; $670b: $ca $00 $d7

	rst  $28                                         ; $670e: $ef
	rst  JumpTable                                         ; $670f: $df
	and  l                                           ; $6710: $a5
	jp   z, $0016                                    ; $6711: $ca $16 $00

	ld   [bc], a                                     ; $6714: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6715: $cf
	dec  b                                           ; $6716: $05
	ld   a, [de]                                     ; $6717: $1a
	ld   a, h                                        ; $6718: $7c
	rst  $10                                         ; $6719: $d7
	rst  $28                                         ; $671a: $ef
	rst  JumpTable                                         ; $671b: $df
	and  l                                           ; $671c: $a5
	jp   z, $d700                                    ; $671d: $ca $00 $d7

	rst  $28                                         ; $6720: $ef
	rst  JumpTable                                         ; $6721: $df
	and  l                                           ; $6722: $a5
	jp   z, $0017                                    ; $6723: $ca $17 $00

	xor  h                                           ; $6726: $ac
	push af                                          ; $6727: $f5
	bit  7, h                                        ; $6728: $cb $7c
	rst  $10                                         ; $672a: $d7
	rst  $28                                         ; $672b: $ef
	rst  JumpTable                                         ; $672c: $df
	and  l                                           ; $672d: $a5
	jp   z, $d700                                    ; $672e: $ca $00 $d7

	rst  $28                                         ; $6731: $ef
	rst  JumpTable                                         ; $6732: $df
	and  l                                           ; $6733: $a5
	jp   z, JumpTable                                   ; $6734: $ca $18 $00

	ld   d, b                                        ; $6737: $50
	sub  d                                           ; $6738: $92
	adc  a                                           ; $6739: $8f
	ld   a, h                                        ; $673a: $7c
	rst  $10                                         ; $673b: $d7
	rst  $28                                         ; $673c: $ef
	rst  JumpTable                                         ; $673d: $df
	and  l                                           ; $673e: $a5
	jp   z, $010d                                    ; $673f: $ca $0d $01

	inc  bc                                          ; $6742: $03
	db   $dd                                         ; $6743: $dd
	push bc                                          ; $6744: $c5
	ld   bc, $0004                                   ; $6745: $01 $04 $00
	rst  $10                                         ; $6748: $d7
	rst  $28                                         ; $6749: $ef
	rst  JumpTable                                         ; $674a: $df
	and  l                                           ; $674b: $a5
	jp   z, $0019                                    ; $674c: $ca $19 $00

	inc  b                                           ; $674f: $04
	ld   [$9202], sp                                 ; $6750: $08 $02 $92
	inc  d                                           ; $6753: $14
	inc  bc                                          ; $6754: $03
	add  d                                           ; $6755: $82
	ld   [bc], a                                     ; $6756: $02
	cp   b                                           ; $6757: $b8
	ld   a, h                                        ; $6758: $7c
	rst  $10                                         ; $6759: $d7
	rst  $28                                         ; $675a: $ef
	rst  JumpTable                                         ; $675b: $df
	and  l                                           ; $675c: $a5
	jp   z, $010d                                    ; $675d: $ca $0d $01

	inc  bc                                          ; $6760: $03
	db   $dd                                         ; $6761: $dd
	push bc                                          ; $6762: $c5
	ld   bc, $0004                                   ; $6763: $01 $04 $00
	cp   d                                           ; $6766: $ba
	or   d                                           ; $6767: $b2
	cp   c                                           ; $6768: $b9
	rst  $20                                         ; $6769: $e7
	ei                                               ; $676a: $fb
	db   $ed                                         ; $676b: $ed
	ld   b, $91                                      ; $676c: $06 $91
	nop                                              ; $676e: $00
	inc  b                                           ; $676f: $04
	dec  c                                           ; $6770: $0d
	ld   [bc], a                                     ; $6771: $02
	sub  [hl]                                        ; $6772: $96
	inc  b                                           ; $6773: $04
	ld   b, l                                        ; $6774: $45
	inc  b                                           ; $6775: $04
	ld   a, [bc]                                     ; $6776: $0a
	inc  b                                           ; $6777: $04
	dec  bc                                          ; $6778: $0b
	ld   a, h                                        ; $6779: $7c
	dec  b                                           ; $677a: $05
	ld   e, a                                        ; $677b: $5f
	inc  bc                                          ; $677c: $03
	call nc, $0d5a                                   ; $677d: $d4 $5a $0d
	inc  bc                                          ; $6780: $03
	ld   d, l                                        ; $6781: $55
	ld   d, d                                        ; $6782: $52
	ld   [hl], h                                     ; $6783: $74
	ld   d, b                                        ; $6784: $50
	sbc  c                                           ; $6785: $99
	nop                                              ; $6786: $00


; H - return state
; L - return substate
SetItemsState::
	ld   a, h                                        ; $6787: $7c
	ld   [$cb46], a                                  ; $6788: $ea $46 $cb
	ld   a, l                                        ; $678b: $7d
	ld   [$cb47], a                                  ; $678c: $ea $47 $cb
	ld   a, GS_ITEMS                                      ; $678f: $3e $3a
	ld   [wGameState], a                                  ; $6791: $ea $a0 $c2
	xor  a                                           ; $6794: $af
	ld   [wGameSubstate], a                                  ; $6795: $ea $a1 $c2
	ret                                              ; $6798: $c9


	call Call_00d_5014                               ; $6799: $cd $14 $50
	or   a                                           ; $679c: $b7
	jr   nz, jr_00d_67a1                             ; $679d: $20 $02

	cpl                                              ; $679f: $2f
	ret                                              ; $67a0: $c9

jr_00d_67a1:
	xor  a                                           ; $67a1: $af
	ret                                              ; $67a2: $c9


if def(VWF)

Data_0d_618fentry00::
	db $1d, $35, $37, $48, $49, $47, $00
Data_0d_618fentry01::
	db $23, $48, $10, $47, $39, $39, $41, $47, $10, $48, $43, $0d, $49, $42, $38, $39, $46, $47, $48, $35, $42, $38, $10, $3c, $49, $41, $35, $42, $0d, $47, $44, $39, $39, $37, $3c, $00
Data_0d_618fentry02::
	db $1d, $35, $37, $48, $49, $47, $00
Data_0d_618fentry03::
	db $2d, $44, $43, $46, $48, $47, $10, $35, $10, $47, $44, $40, $39, $42, $38, $3d, $38, $0d, $3a, $40, $43, $4b, $39, $46, $00
Data_0d_618fentry04::
	db $1d, $35, $37, $48, $49, $47, $00
Data_0d_618fentry05::
	db $1e, $43, $42, $01, $01, $48, $10, $4b, $35, $48, $39, $46, $10, $3d, $48, $10, $48, $43, $43, $0d, $41, $49, $37, $3c, $00
Data_0d_618fentry06::
	db $33, $43, $3f, $35, $42, $00
Data_0d_618fentry07::
	db $1b, $10, $37, $43, $40, $38, $10, $4b, $39, $35, $48, $3c, $39, $46, $10, $48, $46, $39, $35, $48, $00
Data_0d_618fentry08::
	db $31, $43, $43, $38, $39, $42, $10, $47, $4b, $43, $46, $38, $00
Data_0d_618fentry09::
	db $1b, $10, $47, $4b, $43, $46, $38, $10, $41, $35, $38, $39, $10, $43, $3a, $10, $4b, $43, $43, $38, $00
Data_0d_618fentry0a::
	db $31, $43, $43, $38, $39, $42, $10, $1c, $39, $35, $46, $00
Data_0d_618fentry0b::
	db $20, $43, $40, $3f, $10, $35, $46, $48, $10, $3a, $46, $43, $41, $0d, $22, $43, $3f, $3f, $35, $3d, $38, $43, $00
Data_0d_618fentry0c::
	db $2c, $3d, $37, $39, $10, $36, $35, $40, $40, $00
Data_0d_618fentry0d::
	db $27, $35, $38, $39, $10, $4b, $3d, $48, $3c, $10, $44, $3d, $37, $3f, $40, $39, $38, $10, $44, $40, $49, $41, $0d, $35, $42, $38, $10, $36, $43, $42, $3d, $48, $43, $10, $3a, $40, $35, $3f, $39, $47, $00
Data_0d_618fentry0e::
	db $2d, $49, $46, $44, $46, $3d, $47, $39, $0d, $38, $39, $48, $39, $46, $3b, $39, $42, $48, $00
Data_0d_618fentry0f::
	db $31, $35, $47, $3c, $39, $47, $10, $43, $49, $48, $10, $35, $42, $4d, $10, $47, $48, $35, $3d, $42, $00
Data_0d_618fentry10::
	db $1d, $3c, $35, $46, $41, $00
Data_0d_618fentry11::
	db $1b, $10, $37, $3c, $35, $46, $41, $10, $46, $39, $37, $39, $3d, $4a, $39, $38, $0d, $3a, $46, $43, $41, $10, $25, $35, $47, $49, $41, $3d, $00
Data_0d_618fentry12::
	db $22, $39, $46, $36, $10, $2d, $39, $39, $38, $47, $00
Data_0d_618fentry13::
	db $2e, $3d, $42, $4d, $10, $3b, $46, $35, $3d, $42, $47, $00
Data_0d_618fentry14::
	db $22, $39, $46, $36, $00
Data_0d_618fentry15::
	db $23, $48, $01, $01, $47, $10, $36, $49, $38, $38, $3d, $42, $3b, $10, $49, $44, $00
Data_0d_618fentry16::
	db $22, $39, $46, $36, $00
Data_0d_618fentry17::
	db $23, $48, $01, $01, $47, $10, $35, $36, $43, $49, $48, $10, $48, $3d, $41, $39, $10, $3a, $43, $46, $0d, $48, $46, $35, $42, $47, $44, $40, $35, $42, $48, $3d, $42, $3b, $00
Data_0d_618fentry18::
	db $22, $39, $46, $36, $00
Data_0d_618fentry19::
	db $23, $48, $01, $01, $47, $10, $35, $40, $41, $43, $47, $48, $10, $48, $3d, $41, $39, $10, $3a, $43, $46, $0d, $3c, $35, $46, $4a, $39, $47, $48, $3d, $42, $3b, $00
Data_0d_618fentry1a::
	db $22, $39, $46, $36, $00
Data_0d_618fentry1b::
	db $2f, $47, $39, $38, $10, $3d, $42, $10, $3a, $43, $43, $38, $10, $35, $42, $38, $10, $48, $39, $35, $00
Data_0d_618fentry1c::
	db $1c, $40, $35, $37, $3f, $10, $2e, $39, $35, $00
Data_0d_618fentry1d::
	db $2c, $39, $41, $39, $41, $36, $39, $46, $10, $48, $3c, $39, $10, $21, $43, $40, $38, $39, $42, $0d, $2c, $49, $40, $39, $00
Data_0d_618fentry1e::
	db $2a, $43, $43, $40, $10, $2c, $3d, $42, $3b, $00
Data_0d_618fentry1f::
	db $23, $42, $3a, $40, $35, $48, $35, $36, $40, $39, $10, $4b, $39, $35, $46, $00
Data_0d_618fentry20::
	db $1e, $49, $41, $36, $36, $39, $40, $40, $00
Data_0d_618fentry21::
	db $2e, $46, $35, $3d, $42, $47, $10, $4d, $43, $49, $46, $10, $41, $49, $47, $37, $40, $39, $47, $00
Data_0d_618fentry22::
	db $20, $35, $42, $10, $27, $35, $3d, $40, $00
Data_0d_618fentry23::
	db $1b, $10, $36, $35, $46, $43, $41, $39, $48, $39, $46, $10, $43, $3a, $0d, $44, $43, $44, $49, $40, $35, $46, $3d, $48, $4d, $00
Data_0d_618fentry24::
	db $2e, $39, $35, $37, $49, $44, $00
Data_0d_618fentry25::
	db $23, $38, $39, $35, $40, $10, $3a, $43, $46, $10, $38, $39, $40, $3d, $37, $3d, $43, $49, $47, $10, $48, $39, $35, $00
Data_0d_618fentry26::
	db $2a, $40, $35, $3d, $42, $10, $2d, $43, $36, $35, $00
Data_0d_618fentry27::
	db $2d, $43, $36, $35, $10, $4b, $3d, $48, $3c, $10, $42, $43, $48, $3c, $3d, $42, $3b, $0d, $35, $38, $38, $39, $38, $00
Data_0d_618fentry28::
	db $22, $35, $4d, $35, $47, $3c, $3d, $10, $2c, $3d, $37, $39, $00
Data_0d_618fentry29::
	db $1b, $10, $44, $3d, $43, $42, $39, $39, $46, $10, $43, $3a, $10, $3a, $49, $47, $3d, $43, $42, $0d, $37, $49, $3d, $47, $3d, $42, $39, $00
Data_0d_618fentry2a::
	db $2e, $3c, $39, $35, $48, $39, $46, $10, $1c, $39, $42, $48, $43, $00
Data_0d_618fentry2b::
	db $2a, $35, $46, $48, $10, $43, $3a, $10, $35, $42, $0d, $39, $4c, $48, $46, $35, $4a, $35, $3b, $35, $42, $48, $10, $41, $39, $42, $49, $00
Data_0d_618fentry2c::
	db $20, $35, $42, $10, $26, $39, $48, $48, $39, $46, $00
Data_0d_618fentry2d::
	db $2e, $3c, $39, $10, $41, $35, $46, $3f, $10, $43, $3a, $10, $35, $10, $47, $48, $35, $46, $00
Data_0d_618fentry2e::
	db $1c, $43, $43, $3f, $00
Data_0d_618fentry2f::
	db $23, $48, $01, $01, $47, $10, $48, $3d, $48, $40, $39, $38, $10, $01, $02, $1b, $36, $47, $43, $40, $49, $48, $39, $0d, $20, $35, $48, $39, $01, $02, $00
Data_0d_618fentry30::
	db $1c, $43, $43, $3f, $00
Data_0d_618fentry31::
	db $23, $01, $01, $41, $10, $35, $48, $10, $48, $3c, $39, $10, $3b, $43, $43, $38, $10, $44, $35, $46, $48, $00
Data_0d_618fentry32::
	db $1c, $43, $43, $3f, $00
Data_0d_618fentry33::
	db $23, $10, $3a, $3d, $42, $3d, $47, $3c, $39, $38, $10, $46, $39, $35, $38, $3d, $42, $3b, $10, $3d, $48, $00
Data_0d_618fentry34::
	db $27, $43, $42, $35, $3f, $35, $00
Data_0d_618fentry35::
	db $1d, $46, $49, $42, $37, $3c, $4d, $10, $43, $42, $10, $48, $3c, $39, $0d, $43, $49, $48, $47, $3d, $38, $39, $e1, $10, $37, $3c, $39, $4b, $4d, $10, $43, $42, $10, $48, $3c, $39, $0d, $3d, $42, $47, $3d, $38, $39, $00
Data_0d_618fentry36::
	db $1d, $35, $46, $46, $43, $48, $00
Data_0d_618fentry37::
	db $1b, $42, $10, $3d, $42, $3b, $46, $39, $38, $3d, $39, $42, $48, $10, $3d, $42, $0d, $36, $43, $46, $47, $37, $3c, $48, $00
Data_0d_618fentry38::
	db $22, $35, $3f, $35, $48, $35, $10, $1e, $43, $40, $40, $00
Data_0d_618fentry39::
	db $20, $43, $40, $3f, $10, $35, $46, $48, $10, $3a, $46, $43, $41, $10, $22, $35, $3f, $35, $48, $35, $00
Data_0d_618fentry3a::
	db $26, $43, $37, $3f, $39, $48, $00
Data_0d_618fentry3b::
	db $1b, $10, $40, $43, $37, $3f, $39, $48, $10, $23, $10, $3a, $43, $49, $42, $38, $00
Data_0d_618fentry3c::
	db $1c, $43, $46, $47, $37, $3c, $48, $00
Data_0d_618fentry3d::
	db $1b, $10, $3a, $35, $41, $43, $49, $47, $10, $2c, $49, $47, $47, $3d, $35, $42, $10, $38, $3d, $47, $3c, $00
Data_0d_618fentry3e::
	db $2e, $35, $46, $43, $48, $10, $1d, $35, $46, $38, $47, $00
Data_0d_618fentry3f::
	db $2f, $47, $39, $38, $10, $3d, $42, $10, $3a, $43, $46, $48, $49, $42, $39, $10, $48, $39, $40, $40, $3d, $42, $3b, $00
Data_0d_618fentry40::
	db $2a, $46, $39, $47, $39, $42, $48, $00
Data_0d_618fentry41::
	db $20, $46, $43, $41, $10, $35, $10, $3a, $35, $42, $00
Data_0d_618fentry42::
	db $27, $35, $46, $3d, $39, $00
Data_0d_618fentry43::
	db $27, $35, $46, $3d, $39, $10, $48, $3c, $39, $10, $38, $43, $3b, $00
Data_0d_618fentry44::
	db $22, $43, $42, $39, $4d, $00
Data_0d_618fentry45::
	db $2d, $4b, $39, $39, $48, $10, $35, $42, $38, $10, $42, $49, $48, $46, $3d, $48, $3d, $43, $49, $47, $00
Data_0d_618fentry46::
	db $1f, $42, $37, $4d, $37, $40, $43, $44, $39, $38, $3d, $35, $00
Data_0d_618fentry47::
	db $1d, $43, $42, $48, $35, $3d, $42, $47, $10, $39, $4a, $39, $46, $4d, $48, $3c, $3d, $42, $3b, $0d, $35, $36, $43, $49, $48, $10, $35, $42, $4d, $48, $3c, $3d, $42, $3b, $00
Data_0d_618fentry48::
	db $26, $35, $42, $38, $47, $37, $35, $44, $39, $00
Data_0d_618fentry49::
	db $1b, $10, $44, $3d, $37, $48, $49, $46, $39, $10, $43, $3a, $10, $42, $35, $48, $49, $46, $35, $40, $0d, $47, $37, $39, $42, $39, $46, $4d, $00
Data_0d_618fentry4a::
	db $23, $46, $3d, $47, $01, $01, $10, $1e, $3d, $35, $46, $4d, $00
Data_0d_618fentry4b::
	db $1b, $10, $44, $3d, $37, $48, $49, $46, $39, $10, $38, $3d, $35, $46, $4d, $00
Data_0d_618fentry4c::
	db $24, $39, $35, $42, $01, $0a, $2a, $35, $49, $40, $00
Data_0d_618fentry4d::
	db $1b, $40, $4b, $35, $4d, $47, $10, $4b, $3d, $48, $3c, $10, $23, $46, $3d, $47, $00
Data_0d_618fentry4e::
	db $1f, $41, $35, $00
Data_0d_618fentry4f::
	db $31, $46, $3d, $48, $39, $10, $4d, $43, $49, $46, $10, $4b, $3d, $47, $3c, $10, $43, $42, $10, $3d, $48, $00
Data_0d_618fentry50::
	db $2d, $48, $49, $3a, $3a, $39, $38, $10, $1b, $42, $3d, $41, $35, $40, $00
Data_0d_618fentry51::
	db $23, $46, $3d, $47, $01, $01, $10, $3a, $46, $3d, $39, $42, $38, $00
Data_0d_618fentry52::
	db $24, $3d, $3b, $47, $35, $4b, $10, $2a, $49, $4e, $4e, $40, $39, $00
Data_0d_618fentry53::
	db $23, $48, $01, $01, $47, $10, $3d, $42, $10, $44, $3d, $39, $37, $39, $47, $00
Data_0d_618fentry54::
	db $24, $3d, $3b, $47, $35, $4b, $10, $2a, $49, $4e, $4e, $40, $39, $00
Data_0d_618fentry55::
	db $2e, $3c, $39, $10, $3f, $39, $4d, $10, $3d, $47, $10, $48, $43, $10, $47, $48, $35, $46, $48, $0d, $3a, $46, $43, $41, $10, $48, $3c, $39, $10, $39, $38, $3b, $39, $47, $00
Data_0d_618fentry56::
	db $24, $3d, $3b, $47, $35, $4b, $10, $2a, $49, $4e, $4e, $40, $39, $00
Data_0d_618fentry57::
	db $23, $01, $01, $41, $10, $3c, $35, $40, $3a, $4b, $35, $4d, $10, $38, $43, $42, $39, $00
Data_0d_618fentry58::
	db $24, $3d, $3b, $47, $35, $4b, $10, $2a, $49, $4e, $4e, $40, $39, $00
Data_0d_618fentry59::
	db $1b, $40, $41, $43, $47, $48, $10, $3a, $3d, $42, $3d, $47, $3c, $39, $38, $f2, $f2, $f2, $00
Data_0d_618fentry5a::
	db $24, $3d, $3b, $47, $35, $4b, $10, $2a, $49, $4e, $4e, $40, $39, $00
Data_0d_618fentry5b::
	db $1d, $43, $41, $44, $40, $39, $48, $39, $38, $00
Data_0d_618fentry5c::
	db $2e, $43, $43, $40, $36, $43, $4c, $00
Data_0d_618fentry5d::
	db $1d, $43, $42, $4a, $39, $42, $3d, $39, $42, $48, $10, $48, $43, $10, $3c, $35, $4a, $39, $10, $3d, $42, $0d, $35, $42, $4d, $10, $3c, $43, $41, $39, $00
Data_0d_618fentry5e::
	db $20, $3d, $42, $39, $10, $1d, $3c, $3d, $42, $35, $10, $2d, $39, $48, $00
Data_0d_618fentry5f::
	db $28, $43, $48, $10, $41, $35, $38, $39, $10, $3a, $43, $46, $10, $44, $40, $35, $48, $39, $0d, $47, $44, $3d, $42, $42, $3d, $42, $3b, $00
Data_0d_618fentry60::
	db $25, $3d, $46, $3d, $48, $35, $42, $44, $43, $00
Data_0d_618fentry61::
	db $1b, $10, $38, $3d, $47, $3c, $10, $42, $35, $48, $3d, $4a, $39, $10, $48, $43, $10, $1b, $3f, $3d, $48, $35, $00
Data_0d_618fentry62::
	db $27, $46, $f2, $10, $2c, $43, $41, $35, $42, $37, $39, $00
Data_0d_618fentry63::
	db $1b, $10, $37, $43, $41, $44, $35, $48, $3d, $36, $3d, $40, $3d, $48, $4d, $10, $48, $39, $47, $48, $0d, $41, $35, $37, $3c, $3d, $42, $39, $00
Data_0d_618fentry64::
	db $31, $3d, $46, $39, $00
Data_0d_618fentry65::
	db $1b, $10, $48, $3c, $3d, $42, $10, $44, $3d, $39, $37, $39, $10, $43, $3a, $10, $4b, $3d, $46, $39, $00
Data_0d_618fentry66::
	db $1c, $43, $40, $48, $00
Data_0d_618fentry67::
	db $2f, $47, $39, $10, $4b, $3d, $48, $3c, $10, $42, $49, $48, $47, $00
Data_0d_618fentry68::
	db $28, $49, $48, $00
Data_0d_618fentry69::
	db $2f, $47, $39, $10, $4b, $3d, $48, $3c, $10, $36, $43, $40, $48, $47, $00
Data_0d_618fentry6a::
	db $27, $43, $44, $00
Data_0d_618fentry6b::
	db $27, $35, $38, $39, $10, $3a, $43, $46, $10, $37, $40, $39, $35, $42, $3d, $42, $3b, $0d, $3a, $40, $43, $43, $46, $47, $00
Data_0d_618fentry6c::
	db $1d, $3c, $43, $44, $47, $48, $3d, $37, $3f, $47, $00
Data_0d_618fentry6d::
	db $1c, $46, $39, $35, $3f, $10, $48, $3c, $39, $41, $10, $35, $42, $38, $10, $49, $47, $39, $0d, $48, $3c, $39, $41, $00
Data_0d_618fentry6e::
	db $26, $35, $49, $42, $38, $46, $4d, $10, $2a, $43, $40, $39, $00
Data_0d_618fentry6f::
	db $27, $35, $38, $39, $10, $3a, $46, $43, $41, $10, $36, $35, $41, $36, $43, $43, $00
Data_0d_618fentry70::
	db $2d, $35, $3f, $39, $10, $1c, $43, $48, $48, $40, $39, $00
Data_0d_618fentry71::
	db $22, $43, $40, $38, $47, $10, $14, $17, $11, $41, $26, $10, $43, $3a, $10, $36, $43, $43, $4e, $39, $00
Data_0d_618fentry72::
	db $2d, $43, $4d, $2d, $35, $49, $37, $39, $1c, $43, $48, $48, $40, $39, $00
Data_0d_618fentry73::
	db $2a, $43, $49, $46, $47, $10, $35, $10, $40, $43, $48, $10, $35, $48, $10, $35, $10, $48, $3d, $41, $39, $00
Data_0d_618fentry74::
	db $25, $39, $48, $48, $40, $39, $00
Data_0d_618fentry75::
	db $1b, $10, $48, $39, $35, $10, $3f, $39, $48, $48, $40, $39, $e1, $10, $48, $43, $10, $36, $39, $0d, $44, $46, $39, $37, $3d, $47, $39, $00
Data_0d_618fentry76::
	db $2a, $46, $43, $44, $10, $1c, $43, $49, $40, $38, $39, $46, $00
Data_0d_618fentry77::
	db $26, $3d, $3b, $3c, $48, $39, $46, $10, $48, $3c, $35, $42, $10, $3d, $48, $10, $40, $43, $43, $3f, $47, $00
Data_0d_618fentry78::
	db $25, $35, $3b, $35, $41, $3d, $10, $27, $43, $37, $3c, $3d, $00
Data_0d_618fentry79::
	db $1b, $10, $24, $35, $44, $35, $42, $39, $47, $39, $10, $28, $39, $4b, $0d, $33, $39, $35, $46, $01, $01, $47, $10, $43, $3a, $3a, $39, $46, $3d, $42, $3b, $00
Data_0d_618fentry7a::
	db $1d, $43, $42, $48, $46, $43, $40, $10, $2a, $35, $42, $39, $40, $00
Data_0d_618fentry7b::
	db $1d, $43, $42, $48, $46, $43, $40, $47, $10, $3a, $43, $46, $10, $35, $42, $0d, $39, $4c, $44, $39, $46, $3d, $41, $39, $42, $48, $35, $40, $10, $39, $42, $3b, $3d, $42, $39, $00
Data_0d_618fentry7c::
	db $27, $46, $f2, $10, $2e, $46, $49, $48, $3c, $39, $46, $00
Data_0d_618fentry7d::
	db $1b, $10, $40, $3d, $39, $10, $38, $39, $48, $39, $37, $48, $43, $46, $00
Data_0d_618fentry7e::
	db $1c, $46, $39, $35, $3f, $3d, $42, $3b, $10, $1c, $43, $35, $46, $38, $00
Data_0d_618fentry7f::
	db $2f, $47, $39, $38, $10, $3a, $43, $46, $10, $3f, $35, $46, $35, $48, $39, $0d, $48, $46, $35, $3d, $42, $3d, $42, $3b, $00
Data_0d_618fentry80::
	db $1c, $46, $39, $35, $3f, $3d, $42, $3b, $10, $1c, $43, $35, $46, $38, $00
Data_0d_618fentry81::
	db $23, $10, $37, $35, $42, $10, $44, $49, $48, $10, $47, $43, $41, $39, $10, $37, $46, $35, $37, $3f, $47, $0d, $3d, $42, $10, $3d, $48, $10, $42, $43, $4b, $00
Data_0d_618fentry82::
	db $1c, $46, $39, $35, $3f, $3d, $42, $3b, $10, $1c, $43, $35, $46, $38, $00
Data_0d_618fentry83::
	db $23, $01, $01, $41, $10, $3a, $3d, $42, $35, $40, $40, $4d, $10, $35, $36, $40, $39, $10, $48, $43, $0d, $36, $46, $39, $35, $3f, $10, $3d, $48, $00
Data_0d_618fentry84::
	db $1e, $46, $3d, $39, $38, $10, $20, $3d, $47, $3c, $00
Data_0d_618fentry85::
	db $1e, $39, $3c, $4d, $38, $46, $35, $48, $39, $38, $10, $47, $39, $35, $0d, $37, $46, $39, $35, $48, $49, $46, $39, $47, $00
Data_0d_618fentry86::
	db $22, $35, $3d, $46, $10, $44, $3d, $42, $00
Data_0d_618fentry87::
	db $1e, $39, $37, $43, $46, $35, $48, $3d, $43, $42, $10, $3a, $43, $46, $10, $4d, $43, $49, $46, $0d, $3c, $35, $3d, $46, $00
Data_0d_618fentry88::
	db $2e, $3d, $40, $39, $47, $00
Data_0d_618fentry89::
	db $28, $43, $48, $10, $3e, $49, $47, $48, $10, $3a, $43, $46, $10, $46, $43, $43, $3a, $3d, $42, $3b, $00
Data_0d_618fentry8a::
	db $2d, $48, $39, $35, $3f, $00
Data_0d_618fentry8b::
	db $1b, $10, $41, $39, $35, $48, $10, $38, $3d, $47, $3c, $00
Data_0d_618fentry8c::
	db $1e, $43, $42, $36, $49, $46, $3d, $00
Data_0d_618fentry8d::
	db $25, $35, $42, $42, $35, $01, $01, $47, $10, $36, $39, $40, $43, $4a, $39, $38, $10, $36, $43, $4b, $40, $00
Data_0d_618fentry8e::
	db $20, $46, $3d, $39, $38, $10, $2c, $3d, $37, $39, $00
Data_0d_618fentry8f::
	db $2e, $3c, $39, $10, $46, $3d, $37, $39, $10, $3d, $47, $10, $40, $3d, $3b, $3c, $48, $10, $35, $42, $38, $0d, $3a, $40, $49, $3a, $3a, $4d, $00
Data_0d_618fentry90::
	db $2a, $3d, $37, $3f, $40, $39, $38, $10, $30, $39, $3b, $3b, $3d, $39, $47, $00
Data_0d_618fentry91::
	db $1b, $40, $47, $43, $10, $3f, $42, $43, $4b, $42, $10, $35, $47, $0d, $01, $02, $48, $47, $49, $3f, $39, $41, $43, $42, $43, $01, $02, $00
Data_0d_618fentry92::
	db $1d, $43, $43, $3f, $3d, $39, $00
Data_0d_618fentry93::
	db $1d, $46, $49, $42, $37, $3c, $4d, $10, $35, $42, $38, $10, $47, $4b, $39, $39, $48, $00
Data_0d_618fentry94::
	db $2d, $39, $42, $36, $39, $3d, $10, $1d, $46, $35, $37, $3f, $39, $46, $00
Data_0d_618fentry95::
	db $2d, $43, $4d, $01, $0a, $3a, $40, $35, $4a, $43, $46, $39, $38, $10, $36, $35, $3f, $39, $38, $0d, $3b, $43, $43, $38, $00
Data_0d_618fentry96::
	db $1e, $43, $37, $49, $41, $39, $42, $48, $47, $00
Data_0d_618fentry97::
	db $2c, $39, $37, $39, $3d, $44, $48, $47, $00
Data_0d_618fentry98::
	db $1e, $43, $37, $49, $41, $39, $42, $48, $10, $2a, $3d, $40, $39, $00
Data_0d_618fentry99::
	db $1b, $10, $47, $48, $35, $37, $3f, $10, $43, $3a, $10, $46, $39, $37, $39, $3d, $44, $48, $47, $00
Data_0d_618fentry9a::
	db $27, $35, $42, $3e, $49, $00
Data_0d_618fentry9b::
	db $20, $3d, $40, $40, $39, $38, $10, $4b, $3d, $48, $3c, $10, $46, $39, $38, $10, $36, $39, $35, $42, $0d, $44, $35, $47, $48, $39, $00
Data_0d_618fentry9c::
	db $2a, $3c, $43, $48, $43, $10, $12, $00
Data_0d_618fentry9d::
	db $2d, $35, $3f, $49, $46, $35, $01, $01, $47, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentry9e::
	db $2a, $3c, $43, $48, $43, $10, $13, $00
Data_0d_618fentry9f::
	db $2d, $49, $41, $3d, $46, $39, $01, $01, $47, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentrya0::
	db $2a, $3c, $43, $48, $43, $10, $14, $00
Data_0d_618fentrya1::
	db $27, $35, $46, $3d, $35, $01, $01, $47, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentrya2::
	db $2a, $3c, $43, $48, $43, $10, $15, $00
Data_0d_618fentrya3::
	db $23, $46, $3d, $47, $01, $01, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentrya4::
	db $2a, $3c, $43, $48, $43, $10, $16, $00
Data_0d_618fentrya5::
	db $25, $43, $3c, $46, $35, $42, $01, $01, $47, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentrya6::
	db $2a, $3c, $43, $48, $43, $10, $17, $00
Data_0d_618fentrya7::
	db $25, $35, $42, $42, $35, $01, $01, $47, $10, $2a, $3c, $43, $48, $43, $00
Data_0d_618fentrya8::
	db $2a, $3c, $43, $48, $43, $10, $18, $00
Data_0d_618fentrya9::
	db $1b, $4d, $35, $41, $39, $01, $01, $47, $10, $44, $3c, $43, $48, $43, $10, $01, $03, $42, $49, $40, $40, $01, $04, $00
Data_0d_618fentryaa::
	db $2a, $3c, $43, $48, $43, $10, $19, $00
Data_0d_618fentryab::
	db $2a, $3c, $43, $48, $43, $10, $43, $3a, $10, $48, $3c, $39, $10, $48, $3c, $39, $35, $48, $39, $46, $0d, $3b, $3d, $46, $40, $47, $10, $01, $03, $42, $49, $40, $40, $01, $04, $00
Data_0d_618fentryac::
	db $2a, $40, $35, $42, $42, $39, $46, $00
Data_0d_618fentryad::
	db $1d, $43, $42, $48, $35, $3d, $42, $47, $10, $35, $10, $47, $37, $3c, $39, $38, $49, $40, $39, $0d, $3a, $43, $46, $10, $48, $3c, $39, $10, $48, $46, $3d, $35, $40, $0d, $39, $42, $40, $3d, $47, $48, $41, $39, $42, $48, $10, $44, $39, $46, $3d, $43, $38, $00

endc