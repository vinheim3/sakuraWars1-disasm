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
	jp   nc, Jump_00d_67ff                           ; $4699: $d2 $ff $67

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

	M_FarCall Func_01_4055
	
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


Data_0d_5c1f:
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
	jp   Jump_00d_7d79                               ; $62df: $c3 $79 $7d


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


	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00

Jump_00d_67ff:
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
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
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
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
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
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
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
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
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
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
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
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
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
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
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
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
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
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
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
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
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
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
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
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
	nop                                              ; $714d: $00
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
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
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
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
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
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
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
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
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
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
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
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
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
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
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
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
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
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
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
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
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
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
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
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
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
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
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
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
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
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
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
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
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
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
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
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
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
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
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
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
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
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
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
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
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
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
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
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
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
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
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
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
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
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
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
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
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
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
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
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
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
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
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
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
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
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
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
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
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
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
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
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
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
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
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

Jump_00d_7d79:
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
