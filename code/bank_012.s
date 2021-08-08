; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	inc  bc                                          ; $400c: $03
	inc  bc                                          ; $400d: $03
	ld   bc, $0201                                   ; $400e: $01 $01 $02
	inc  bc                                          ; $4011: $03
	inc  b                                           ; $4012: $04
	dec  b                                           ; $4013: $05
	ld   [$110b], sp                                 ; $4014: $08 $0b $11
	dec  de                                          ; $4017: $1b
	ld   de, $2219                                   ; $4018: $11 $19 $22
	ld   a, $22                                      ; $401b: $3e $22
	ld   a, $2a                                      ; $401d: $3e $2a
	ccf                                              ; $401f: $3f
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	ld   bc, $0001                                   ; $4024: $01 $01 $00
	nop                                              ; $4027: $00
	ld   a, $3e                                      ; $4028: $3e $3e
	pop  bc                                          ; $402a: $c1
	rst  $38                                         ; $402b: $ff
	nop                                              ; $402c: $00
	rst  $38                                         ; $402d: $ff
	ret  nz                                          ; $402e: $c0

	rst  $38                                         ; $402f: $ff

jr_012_4030:
	nop                                              ; $4030: $00
	rst  $38                                         ; $4031: $ff
	nop                                              ; $4032: $00
	rst  $38                                         ; $4033: $ff
	add  d                                           ; $4034: $82
	rst  $38                                         ; $4035: $ff
	inc  b                                           ; $4036: $04
	rst  $38                                         ; $4037: $ff
	inc  h                                           ; $4038: $24
	cp   l                                           ; $4039: $bd
	ld   c, b                                        ; $403a: $48
	ld   e, c                                        ; $403b: $59
	ld   c, b                                        ; $403c: $48
	ret                                              ; $403d: $c9


	ld   c, b                                        ; $403e: $48
	db   $fc                                         ; $403f: $fc
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	ret  nz                                          ; $4046: $c0

	ret  nz                                          ; $4047: $c0

	and  b                                           ; $4048: $a0
	ldh  [$9e], a                                    ; $4049: $e0 $9e
	cp   $91                                         ; $404b: $fe $91
	rst  $38                                         ; $404d: $ff
	inc  bc                                          ; $404e: $03
	rst  $38                                         ; $404f: $ff
	nop                                              ; $4050: $00
	rst  $38                                         ; $4051: $ff
	nop                                              ; $4052: $00
	rst  $38                                         ; $4053: $ff

jr_012_4054:
	nop                                              ; $4054: $00
	rst  $38                                         ; $4055: $ff
	nop                                              ; $4056: $00
	rst  $38                                         ; $4057: $ff
	inc  b                                           ; $4058: $04
	rst  $38                                         ; $4059: $ff
	inc  h                                           ; $405a: $24
	db   $f4                                         ; $405b: $f4
	ld   h, h                                        ; $405c: $64
	ld   l, [hl]                                     ; $405d: $6e
	xor  $bb                                         ; $405e: $ee $bb
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	add  b                                           ; $406c: $80
	add  b                                           ; $406d: $80
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	ret  nz                                          ; $4070: $c0

	ret  nz                                          ; $4071: $c0

	jr   nz, jr_012_4054                             ; $4072: $20 $e0

	ld   d, b                                        ; $4074: $50
	ld   [hl], b                                     ; $4075: $70

jr_012_4076:
	jr   c, jr_012_4030                              ; $4076: $38 $b8

	db   $10                                         ; $4078: $10
	sub  b                                           ; $4079: $90
	db   $10                                         ; $407a: $10
	ld   [hl], b                                     ; $407b: $70
	ld   [$4878], sp                                 ; $407c: $08 $78 $48
	ld   hl, sp+$3a                                  ; $407f: $f8 $3a
	ccf                                              ; $4081: $3f
	dec  hl                                          ; $4082: $2b
	cpl                                              ; $4083: $2f
	add  hl, bc                                      ; $4084: $09
	rrca                                             ; $4085: $0f
	dec  b                                           ; $4086: $05
	rlca                                             ; $4087: $07
	dec  c                                           ; $4088: $0d
	rrca                                             ; $4089: $0f
	rrca                                             ; $408a: $0f
	dec  bc                                          ; $408b: $0b
	rrca                                             ; $408c: $0f
	add  hl, bc                                      ; $408d: $09
	rrca                                             ; $408e: $0f
	add  hl, bc                                      ; $408f: $09
	rlca                                             ; $4090: $07
	dec  b                                           ; $4091: $05
	inc  bc                                          ; $4092: $03
	inc  bc                                          ; $4093: $03
	nop                                              ; $4094: $00
	nop                                              ; $4095: $00
	nop                                              ; $4096: $00
	nop                                              ; $4097: $00
	nop                                              ; $4098: $00
	nop                                              ; $4099: $00
	nop                                              ; $409a: $00
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	add  sp, -$43                                    ; $40a0: $e8 $bd
	db   $fd                                         ; $40a2: $fd
	rla                                              ; $40a3: $17
	db   $fd                                         ; $40a4: $fd
	ld   [hl], a                                     ; $40a5: $77
	rst  $38                                         ; $40a6: $ff
	sbc  a                                           ; $40a7: $9f
	rst  $38                                         ; $40a8: $ff
	ld   a, l                                        ; $40a9: $7d
	sbc  a                                           ; $40aa: $9f
	sbc  h                                           ; $40ab: $9c
	sub  e                                           ; $40ac: $93
	jr   c, jr_012_4076                              ; $40ad: $38 $c7

	nop                                              ; $40af: $00
	ld   a, [hl]                                     ; $40b0: $7e
	add  c                                           ; $40b1: $81
	rst  $38                                         ; $40b2: $ff
	add  b                                           ; $40b3: $80
	cp   l                                           ; $40b4: $bd
	jp   Jump_012_427f                               ; $40b5: $c3 $7f $42


	cpl                                              ; $40b8: $2f
	jr   nc, jr_012_40d6                             ; $40b9: $30 $1b

	inc  e                                           ; $40bb: $1c
	ld   a, a                                        ; $40bc: $7f
	ld   h, a                                        ; $40bd: $67
	db   $e4                                         ; $40be: $e4
	and  a                                           ; $40bf: $a7
	xor  $bb                                         ; $40c0: $ee $bb
	rst  $38                                         ; $40c2: $ff
	ld   sp, $2eff                                   ; $40c3: $31 $ff $2e
	rst  $38                                         ; $40c6: $ff
	add  hl, sp                                      ; $40c7: $39
	rst  $38                                         ; $40c8: $ff
	ld   a, $ed                                      ; $40c9: $3e $ed
	dec  l                                           ; $40cb: $2d
	ret                                              ; $40cc: $c9


	inc  e                                           ; $40cd: $1c
	db   $e3                                         ; $40ce: $e3
	nop                                              ; $40cf: $00
	ld   a, [hl]                                     ; $40d0: $7e
	add  c                                           ; $40d1: $81
	rst  $38                                         ; $40d2: $ff
	ld   bc, $c3bd                                   ; $40d3: $01 $bd $c3

jr_012_40d6:
	cp   $42                                         ; $40d6: $fe $42
	db   $f4                                         ; $40d8: $f4
	inc  c                                           ; $40d9: $0c
	ret  c                                           ; $40da: $d8

jr_012_40db:
	jr   c, jr_012_40db                              ; $40db: $38 $fe

	and  $27                                         ; $40dd: $e6 $27
	push hl                                          ; $40df: $e5
	ld   c, b                                        ; $40e0: $48
	ld   hl, sp+$50                                  ; $40e1: $f8 $50
	ldh  a, [$d0]                                    ; $40e3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $40e5: $f0 $a0
	ldh  [$b0], a                                    ; $40e7: $e0 $b0
	ldh  a, [$f0]                                    ; $40e9: $f0 $f0
	ret  nc                                          ; $40eb: $d0

	ldh  a, [$90]                                    ; $40ec: $f0 $90
	ldh  a, [$90]                                    ; $40ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $40f0: $e0 $a0
	ret  nz                                          ; $40f2: $c0

	ret  nz                                          ; $40f3: $c0

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
	ld   bc, $0201                                   ; $4100: $01 $01 $02
	ld   [bc], a                                     ; $4103: $02
	ld   b, $04                                      ; $4104: $06 $04
	dec  b                                           ; $4106: $05

jr_012_4107:
	dec  b                                           ; $4107: $05
	dec  bc                                          ; $4108: $0b
	dec  bc                                          ; $4109: $0b
	add  hl, bc                                      ; $410a: $09
	add  hl, bc                                      ; $410b: $09
	inc  de                                          ; $410c: $13
	inc  de                                          ; $410d: $13
	rla                                              ; $410e: $17
	ld   d, $1f                                      ; $410f: $16 $1f
	dec  e                                           ; $4111: $1d
	rra                                              ; $4112: $1f
	inc  d                                           ; $4113: $14
	dec  d                                           ; $4114: $15
	ld   e, $0a                                      ; $4115: $1e $0a
	rrca                                             ; $4117: $0f
	rlca                                             ; $4118: $07
	rlca                                             ; $4119: $07
	ld   bc, $0101                                   ; $411a: $01 $01 $01
	ld   bc, $0202                                   ; $411d: $01 $02 $02
	dec  h                                           ; $4120: $25
	ld   h, $25                                      ; $4121: $26 $25
	ld   h, $25                                      ; $4123: $26 $25
	ld   h, $36                                      ; $4125: $26 $36
	inc  hl                                          ; $4127: $23
	ld   [hl-], a                                    ; $4128: $32
	inc  de                                          ; $4129: $13
	add  hl, de                                      ; $412a: $19
	ld   de, $8989                                   ; $412b: $11 $89 $89
	and  $e6                                         ; $412e: $e6 $e6
	call nc, $e834                                   ; $4130: $d4 $34 $e8
	jr   @-$0f                                       ; $4133: $18 $ef

	rra                                              ; $4135: $1f
	dec  e                                           ; $4136: $1d
	push af                                          ; $4137: $f5
	db   $fd                                         ; $4138: $fd
	ld   sp, hl                                      ; $4139: $f9
	add  hl, bc                                      ; $413a: $09
	add  hl, de                                      ; $413b: $19
	add  hl, bc                                      ; $413c: $09
	xor  c                                           ; $413d: $a9
	rrca                                             ; $413e: $0f
	ld   c, a                                        ; $413f: $4f
	and  h                                           ; $4140: $a4
	ld   h, h                                        ; $4141: $64
	and  h                                           ; $4142: $a4
	ld   h, h                                        ; $4143: $64
	and  h                                           ; $4144: $a4
	ld   h, h                                        ; $4145: $64
	ld   l, h                                        ; $4146: $6c
	call nz, $cc48                                   ; $4147: $c4 $48 $cc
	sbc  b                                           ; $414a: $98
	adc  b                                           ; $414b: $88
	ld   de, $2711                                   ; $414c: $11 $11 $27
	daa                                              ; $414f: $27
	ld   c, e                                        ; $4150: $4b
	ld   c, h                                        ; $4151: $4c
	sub  a                                           ; $4152: $97
	sbc  b                                           ; $4153: $98
	rst  $30                                         ; $4154: $f7
	ld   hl, sp+$68                                  ; $4155: $f8 $68
	ld   c, a                                        ; $4157: $4f
	ld   a, a                                        ; $4158: $7f
	ld   a, a                                        ; $4159: $7f
	ld   h, b                                        ; $415a: $60
	ld   c, b                                        ; $415b: $48
	ld   h, b                                        ; $415c: $60
	dec  [hl]                                        ; $415d: $35
	jr   nz, jr_012_4182                             ; $415e: $20 $22

	add  b                                           ; $4160: $80
	add  b                                           ; $4161: $80
	ld   b, b                                        ; $4162: $40
	ld   b, b                                        ; $4163: $40
	ld   h, b                                        ; $4164: $60
	jr   nz, jr_012_4107                             ; $4165: $20 $a0

	and  b                                           ; $4167: $a0
	ret  nc                                          ; $4168: $d0

	ret  nc                                          ; $4169: $d0

	sub  b                                           ; $416a: $90
	sub  b                                           ; $416b: $90
	ret  z                                           ; $416c: $c8

	ret  z                                           ; $416d: $c8

	add  sp, $68                                     ; $416e: $e8 $68
	ld   hl, sp-$48                                  ; $4170: $f8 $b8
	ld   hl, sp+$28                                  ; $4172: $f8 $28
	xor  b                                           ; $4174: $a8
	ld   a, b                                        ; $4175: $78
	ld   d, b                                        ; $4176: $50
	ldh  a, [$e0]                                    ; $4177: $f0 $e0
	ldh  [$80], a                                    ; $4179: $e0 $80
	add  b                                           ; $417b: $80
	add  b                                           ; $417c: $80
	add  b                                           ; $417d: $80
	ld   b, b                                        ; $417e: $40
	ld   b, b                                        ; $417f: $40
	ld   [bc], a                                     ; $4180: $02
	ld   [bc], a                                     ; $4181: $02

jr_012_4182:
	inc  bc                                          ; $4182: $03
	inc  bc                                          ; $4183: $03
	ld   b, $04                                      ; $4184: $06 $04
	inc  b                                           ; $4186: $04
	inc  b                                           ; $4187: $04
	inc  c                                           ; $4188: $0c
	ld   [$0808], sp                                 ; $4189: $08 $08 $08
	jr   jr_012_419e                                 ; $418c: $18 $10

	db   $10                                         ; $418e: $10
	db   $10                                         ; $418f: $10
	ccf                                              ; $4190: $3f
	ccf                                              ; $4191: $3f
	cpl                                              ; $4192: $2f
	jr   nc, jr_012_41f3                             ; $4193: $30 $5e

	ld   h, a                                        ; $4195: $67
	ld   b, a                                        ; $4196: $47
	ld   a, h                                        ; $4197: $7c
	ccf                                              ; $4198: $3f
	ccf                                              ; $4199: $3f
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	nop                                              ; $419c: $00
	nop                                              ; $419d: $00

jr_012_419e:
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	ld   bc, $ffab                                   ; $41a0: $01 $ab $ff
	rst  $38                                         ; $41a3: $ff
	ld   b, $02                                      ; $41a4: $06 $02
	inc  b                                           ; $41a6: $04
	inc  b                                           ; $41a7: $04
	inc  c                                           ; $41a8: $0c
	inc  b                                           ; $41a9: $04
	ld   [$0808], sp                                 ; $41aa: $08 $08 $08
	ld   [$0818], sp                                 ; $41ad: $08 $18 $08
	sub  b                                           ; $41b0: $90
	sub  b                                           ; $41b1: $90
	ld   d, b                                        ; $41b2: $50
	ret  nc                                          ; $41b3: $d0

	ld   d, b                                        ; $41b4: $50
	ret  nc                                          ; $41b5: $d0

	ldh  a, [rSVBK]                                  ; $41b6: $f0 $70
	add  b                                           ; $41b8: $80
	add  b                                           ; $41b9: $80
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	jr   nz, jr_012_41f7                             ; $41c0: $20 $35

	rst  $38                                         ; $41c2: $ff
	rst  $38                                         ; $41c3: $ff
	ld   h, b                                        ; $41c4: $60
	ld   b, b                                        ; $41c5: $40
	jr   nz, @+$22                                   ; $41c6: $20 $20

	jr   nc, jr_012_41ea                             ; $41c8: $30 $20

	db   $10                                         ; $41ca: $10
	db   $10                                         ; $41cb: $10
	db   $10                                         ; $41cc: $10
	db   $10                                         ; $41cd: $10
	jr   jr_012_41e0                                 ; $41ce: $18 $10

	add  hl, bc                                      ; $41d0: $09
	add  hl, bc                                      ; $41d1: $09
	ld   a, [bc]                                     ; $41d2: $0a
	dec  bc                                          ; $41d3: $0b
	ld   a, [bc]                                     ; $41d4: $0a
	dec  bc                                          ; $41d5: $0b
	rrca                                             ; $41d6: $0f
	ld   c, $01                                      ; $41d7: $0e $01
	ld   bc, $0000                                   ; $41d9: $01 $00 $00
	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00

jr_012_41e0:
	ld   b, b                                        ; $41e0: $40
	ld   b, b                                        ; $41e1: $40
	ret  nz                                          ; $41e2: $c0

	ret  nz                                          ; $41e3: $c0

	ld   h, b                                        ; $41e4: $60
	jr   nz, jr_012_4207                             ; $41e5: $20 $20

	jr   nz, @+$32                                   ; $41e7: $20 $30

	db   $10                                         ; $41e9: $10

jr_012_41ea:
	db   $10                                         ; $41ea: $10
	db   $10                                         ; $41eb: $10
	jr   @+$0a                                       ; $41ec: $18 $08

	ld   [$fc08], sp                                 ; $41ee: $08 $08 $fc
	db   $fc                                         ; $41f1: $fc
	db   $f4                                         ; $41f2: $f4

jr_012_41f3:
	inc  c                                           ; $41f3: $0c
	ld   a, d                                        ; $41f4: $7a
	and  $e2                                         ; $41f5: $e6 $e2

jr_012_41f7:
	ld   a, $fc                                      ; $41f7: $3e $fc
	db   $fc                                         ; $41f9: $fc
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	nop                                              ; $4201: $00
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00

jr_012_4207:
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	inc  bc                                          ; $420c: $03
	inc  bc                                          ; $420d: $03
	ld   bc, $0201                                   ; $420e: $01 $01 $02
	inc  bc                                          ; $4211: $03
	inc  b                                           ; $4212: $04
	dec  b                                           ; $4213: $05
	ld   [$110b], sp                                 ; $4214: $08 $0b $11
	dec  de                                          ; $4217: $1b
	ld   de, $2219                                   ; $4218: $11 $19 $22
	ld   a, $22                                      ; $421b: $3e $22
	ld   a, $2a                                      ; $421d: $3e $2a
	ccf                                              ; $421f: $3f
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	ld   bc, $0001                                   ; $4224: $01 $01 $00
	nop                                              ; $4227: $00
	ld   a, $3e                                      ; $4228: $3e $3e
	pop  bc                                          ; $422a: $c1
	rst  $38                                         ; $422b: $ff
	nop                                              ; $422c: $00
	rst  $38                                         ; $422d: $ff
	ret  nz                                          ; $422e: $c0

	rst  $38                                         ; $422f: $ff

jr_012_4230:
	nop                                              ; $4230: $00
	rst  $38                                         ; $4231: $ff
	nop                                              ; $4232: $00
	rst  $38                                         ; $4233: $ff
	add  d                                           ; $4234: $82
	rst  $38                                         ; $4235: $ff
	inc  b                                           ; $4236: $04
	rst  $38                                         ; $4237: $ff
	inc  h                                           ; $4238: $24
	cp   l                                           ; $4239: $bd
	ld   c, b                                        ; $423a: $48
	ld   e, c                                        ; $423b: $59
	ld   c, b                                        ; $423c: $48
	ret                                              ; $423d: $c9


	ld   c, b                                        ; $423e: $48
	db   $fc                                         ; $423f: $fc
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	ret  nz                                          ; $4246: $c0

	ret  nz                                          ; $4247: $c0

	and  b                                           ; $4248: $a0
	ldh  [$9e], a                                    ; $4249: $e0 $9e
	cp   $91                                         ; $424b: $fe $91
	rst  $38                                         ; $424d: $ff
	inc  bc                                          ; $424e: $03
	rst  $38                                         ; $424f: $ff
	nop                                              ; $4250: $00
	rst  $38                                         ; $4251: $ff
	nop                                              ; $4252: $00
	rst  $38                                         ; $4253: $ff

jr_012_4254:
	nop                                              ; $4254: $00
	rst  $38                                         ; $4255: $ff
	nop                                              ; $4256: $00
	rst  $38                                         ; $4257: $ff
	inc  b                                           ; $4258: $04
	rst  $38                                         ; $4259: $ff
	inc  h                                           ; $425a: $24
	db   $f4                                         ; $425b: $f4
	ld   h, h                                        ; $425c: $64
	ld   l, [hl]                                     ; $425d: $6e
	xor  $bb                                         ; $425e: $ee $bb
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	add  b                                           ; $426c: $80
	add  b                                           ; $426d: $80
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	ret  nz                                          ; $4270: $c0

	ret  nz                                          ; $4271: $c0

	jr   nz, jr_012_4254                             ; $4272: $20 $e0

	ld   d, b                                        ; $4274: $50
	ld   [hl], b                                     ; $4275: $70

jr_012_4276:
	jr   c, jr_012_4230                              ; $4276: $38 $b8

	db   $10                                         ; $4278: $10
	sub  b                                           ; $4279: $90
	db   $10                                         ; $427a: $10
	ld   [hl], b                                     ; $427b: $70
	ld   [$4878], sp                                 ; $427c: $08 $78 $48

Jump_012_427f:
	ld   hl, sp+$3a                                  ; $427f: $f8 $3a
	ccf                                              ; $4281: $3f
	dec  hl                                          ; $4282: $2b
	cpl                                              ; $4283: $2f
	add  hl, bc                                      ; $4284: $09
	rrca                                             ; $4285: $0f
	dec  b                                           ; $4286: $05
	rlca                                             ; $4287: $07
	dec  c                                           ; $4288: $0d
	rrca                                             ; $4289: $0f
	rrca                                             ; $428a: $0f
	dec  bc                                          ; $428b: $0b
	rrca                                             ; $428c: $0f
	add  hl, bc                                      ; $428d: $09
	rrca                                             ; $428e: $0f
	add  hl, bc                                      ; $428f: $09
	rlca                                             ; $4290: $07
	dec  b                                           ; $4291: $05
	inc  bc                                          ; $4292: $03
	inc  bc                                          ; $4293: $03
	nop                                              ; $4294: $00
	nop                                              ; $4295: $00
	nop                                              ; $4296: $00
	nop                                              ; $4297: $00
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	add  sp, -$43                                    ; $42a0: $e8 $bd
	db   $fd                                         ; $42a2: $fd
	rla                                              ; $42a3: $17
	db   $fd                                         ; $42a4: $fd
	ld   [hl], a                                     ; $42a5: $77
	rst  $38                                         ; $42a6: $ff
	sbc  a                                           ; $42a7: $9f
	rst  $38                                         ; $42a8: $ff
	ld   a, l                                        ; $42a9: $7d
	sbc  a                                           ; $42aa: $9f
	sbc  h                                           ; $42ab: $9c
	sub  e                                           ; $42ac: $93
	jr   c, jr_012_4276                              ; $42ad: $38 $c7

	nop                                              ; $42af: $00
	ld   a, [hl]                                     ; $42b0: $7e
	add  c                                           ; $42b1: $81
	rst  $38                                         ; $42b2: $ff
	add  b                                           ; $42b3: $80
	cp   a                                           ; $42b4: $bf
	jp   $427e                                       ; $42b5: $c3 $7e $42


	dec  l                                           ; $42b8: $2d
	inc  sp                                          ; $42b9: $33
	dec  de                                          ; $42ba: $1b
	inc  e                                           ; $42bb: $1c
	ccf                                              ; $42bc: $3f
	cpl                                              ; $42bd: $2f
	ld   l, b                                        ; $42be: $68
	ld   l, a                                        ; $42bf: $6f
	xor  $bb                                         ; $42c0: $ee $bb
	rst  $38                                         ; $42c2: $ff
	ld   sp, $2eff                                   ; $42c3: $31 $ff $2e
	rst  $38                                         ; $42c6: $ff
	add  hl, sp                                      ; $42c7: $39
	rst  $38                                         ; $42c8: $ff
	ld   a, $ed                                      ; $42c9: $3e $ed
	dec  l                                           ; $42cb: $2d
	ret                                              ; $42cc: $c9


	inc  e                                           ; $42cd: $1c
	db   $e3                                         ; $42ce: $e3
	nop                                              ; $42cf: $00
	ld   a, [hl]                                     ; $42d0: $7e
	add  c                                           ; $42d1: $81
	rst  $38                                         ; $42d2: $ff
	ld   bc, $c3fd                                   ; $42d3: $01 $fd $c3
	ld   a, [hl]                                     ; $42d6: $7e
	ld   b, d                                        ; $42d7: $42
	or   h                                           ; $42d8: $b4
	call z, $38d8                                    ; $42d9: $cc $d8 $38
	add  sp, -$19                                    ; $42dc: $e8 $e7
	daa                                              ; $42de: $27
	add  sp, $48                                     ; $42df: $e8 $48
	ld   hl, sp+$50                                  ; $42e1: $f8 $50
	ldh  a, [$d0]                                    ; $42e3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $42e5: $f0 $a0
	ldh  [$b0], a                                    ; $42e7: $e0 $b0
	ldh  a, [$f0]                                    ; $42e9: $f0 $f0
	ret  nc                                          ; $42eb: $d0

	ldh  a, [$90]                                    ; $42ec: $f0 $90
	ldh  a, [$90]                                    ; $42ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $42f0: $e0 $a0
	ret  nz                                          ; $42f2: $c0

	ret  nz                                          ; $42f3: $c0

	nop                                              ; $42f4: $00
	nop                                              ; $42f5: $00
	nop                                              ; $42f6: $00
	nop                                              ; $42f7: $00
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	ldh  [$e0], a                                    ; $42fd: $e0 $e0
	stop                                             ; $42ff: $10 $00
	nop                                              ; $4301: $00
	ld   bc, $0301                                   ; $4302: $01 $01 $03
	ld   [bc], a                                     ; $4305: $02
	ld   [bc], a                                     ; $4306: $02
	ld   [bc], a                                     ; $4307: $02
	inc  b                                           ; $4308: $04
	inc  b                                           ; $4309: $04
	dec  b                                           ; $430a: $05
	dec  b                                           ; $430b: $05
	ld   [$0908], sp                                 ; $430c: $08 $08 $09
	add  hl, bc                                      ; $430f: $09
	rrca                                             ; $4310: $0f
	ld   c, $0f                                      ; $4311: $0e $0f
	ld   a, [bc]                                     ; $4313: $0a
	ld   a, [bc]                                     ; $4314: $0a
	rrca                                             ; $4315: $0f
	dec  b                                           ; $4316: $05
	rlca                                             ; $4317: $07
	inc  bc                                          ; $4318: $03
	inc  bc                                          ; $4319: $03
	ld   bc, $0101                                   ; $431a: $01 $01 $01
	ld   bc, $0202                                   ; $431d: $01 $02 $02
	xor  e                                           ; $4320: $ab
	xor  h                                           ; $4321: $ac
	dec  hl                                          ; $4322: $2b
	inc  l                                           ; $4323: $2c
	dec  hl                                          ; $4324: $2b
	inc  l                                           ; $4325: $2c
	dec  hl                                          ; $4326: $2b
	inc  l                                           ; $4327: $2c
	cpl                                              ; $4328: $2f
	inc  h                                           ; $4329: $24
	sub  [hl]                                        ; $432a: $96
	or   l                                           ; $432b: $b5
	sub  a                                           ; $432c: $97
	sub  e                                           ; $432d: $93
	ld   [$f47e], a                                  ; $432e: $ea $7e $f4
	sub  h                                           ; $4331: $94
	db   $eb                                         ; $4332: $eb
	add  hl, de                                      ; $4333: $19
	rst  $28                                         ; $4334: $ef
	rra                                              ; $4335: $1f
	dec  de                                          ; $4336: $1b
	ei                                               ; $4337: $fb
	ld   a, [$12f2]                                  ; $4338: $fa $f2 $12
	ld   [hl-], a                                    ; $433b: $32
	ld   [de], a                                     ; $433c: $12
	ld   d, d                                        ; $433d: $52
	ld   e, $9e                                      ; $433e: $1e $9e
	scf                                              ; $4340: $37
	ld   hl, sp+$63                                  ; $4341: $f8 $63
	call c, $d24d                                    ; $4343: $dc $4d $d2
	add  [hl]                                        ; $4346: $86
	reti                                             ; $4347: $d9


	cp   b                                           ; $4348: $b8
	or   a                                           ; $4349: $b7
	xor  a                                           ; $434a: $af
	xor  b                                           ; $434b: $a8
	ld   c, a                                        ; $434c: $4f
	ld   c, a                                        ; $434d: $4f
	ld   b, c                                        ; $434e: $41
	ld   b, c                                        ; $434f: $41
	add  c                                           ; $4350: $81
	add  c                                           ; $4351: $81
	inc  bc                                          ; $4352: $03
	ld   bc, $fefe                                   ; $4353: $01 $fe $fe
	add  c                                           ; $4356: $81
	ld   bc, $ffff                                   ; $4357: $01 $ff $ff
	ret  nz                                          ; $435a: $c0

	sub  c                                           ; $435b: $91
	ret  nz                                          ; $435c: $c0

	ld   l, d                                        ; $435d: $6a
	ld   b, b                                        ; $435e: $40
	ld   b, h                                        ; $435f: $44
	ldh  a, [$08]                                    ; $4360: $f0 $08
	ldh  a, [$08]                                    ; $4362: $f0 $08
	ldh  a, [$08]                                    ; $4364: $f0 $08
	jr   nc, @-$36                                   ; $4366: $30 $c8

	nop                                              ; $4368: $00
	ldh  a, [$c0]                                    ; $4369: $f0 $c0
	ld   b, b                                        ; $436b: $40
	add  b                                           ; $436c: $80
	add  b                                           ; $436d: $80
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	nop                                              ; $4370: $00
	nop                                              ; $4371: $00
	nop                                              ; $4372: $00
	nop                                              ; $4373: $00
	nop                                              ; $4374: $00
	nop                                              ; $4375: $00
	nop                                              ; $4376: $00
	nop                                              ; $4377: $00
	nop                                              ; $4378: $00
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	add  b                                           ; $437b: $80
	add  b                                           ; $437c: $80
	add  b                                           ; $437d: $80
	ld   b, b                                        ; $437e: $40
	ld   b, b                                        ; $437f: $40
	ld   [bc], a                                     ; $4380: $02
	inc  bc                                          ; $4381: $03
	inc  bc                                          ; $4382: $03
	inc  bc                                          ; $4383: $03
	ld   b, $04                                      ; $4384: $06 $04
	inc  b                                           ; $4386: $04
	inc  b                                           ; $4387: $04
	inc  c                                           ; $4388: $0c
	ld   [$0808], sp                                 ; $4389: $08 $08 $08
	jr   jr_012_439e                                 ; $438c: $18 $10

	db   $10                                         ; $438e: $10
	db   $10                                         ; $438f: $10
	ccf                                              ; $4390: $3f
	ccf                                              ; $4391: $3f
	cpl                                              ; $4392: $2f
	jr   nc, jr_012_43f3                             ; $4393: $30 $5e

	ld   h, a                                        ; $4395: $67
	ld   b, a                                        ; $4396: $47
	ld   a, h                                        ; $4397: $7c
	ccf                                              ; $4398: $3f
	ccf                                              ; $4399: $3f
	nop                                              ; $439a: $00
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	nop                                              ; $439d: $00

jr_012_439e:
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	ld   [bc], a                                     ; $43a0: $02
	ld   d, [hl]                                     ; $43a1: $56
	rst  $38                                         ; $43a2: $ff
	rst  $38                                         ; $43a3: $ff
	ld   b, $02                                      ; $43a4: $06 $02
	inc  b                                           ; $43a6: $04
	inc  b                                           ; $43a7: $04
	inc  c                                           ; $43a8: $0c
	inc  b                                           ; $43a9: $04
	ld   [$0808], sp                                 ; $43aa: $08 $08 $08
	ld   [$0818], sp                                 ; $43ad: $08 $18 $08
	sub  b                                           ; $43b0: $90
	sub  b                                           ; $43b1: $90
	ld   d, b                                        ; $43b2: $50
	ret  nc                                          ; $43b3: $d0

	ld   d, b                                        ; $43b4: $50
	ret  nc                                          ; $43b5: $d0

	ldh  a, [rSVBK]                                  ; $43b6: $f0 $70
	add  b                                           ; $43b8: $80
	add  b                                           ; $43b9: $80
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	ld   b, b                                        ; $43c0: $40
	ld   l, d                                        ; $43c1: $6a
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	ld   h, b                                        ; $43c4: $60
	ld   b, b                                        ; $43c5: $40
	jr   nz, @+$22                                   ; $43c6: $20 $20

	jr   nc, jr_012_43ea                             ; $43c8: $30 $20

	db   $10                                         ; $43ca: $10
	db   $10                                         ; $43cb: $10
	db   $10                                         ; $43cc: $10
	db   $10                                         ; $43cd: $10
	jr   jr_012_43e0                                 ; $43ce: $18 $10

	add  hl, bc                                      ; $43d0: $09
	add  hl, bc                                      ; $43d1: $09
	ld   a, [bc]                                     ; $43d2: $0a
	dec  bc                                          ; $43d3: $0b
	ld   a, [bc]                                     ; $43d4: $0a
	dec  bc                                          ; $43d5: $0b
	rrca                                             ; $43d6: $0f
	ld   c, $01                                      ; $43d7: $0e $01
	ld   bc, $0000                                   ; $43d9: $01 $00 $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00

jr_012_43e0:
	ld   b, b                                        ; $43e0: $40
	ret  nz                                          ; $43e1: $c0

	ret  nz                                          ; $43e2: $c0

	ret  nz                                          ; $43e3: $c0

	ld   h, b                                        ; $43e4: $60
	jr   nz, jr_012_4407                             ; $43e5: $20 $20

	jr   nz, @+$32                                   ; $43e7: $20 $30

	db   $10                                         ; $43e9: $10

jr_012_43ea:
	db   $10                                         ; $43ea: $10
	db   $10                                         ; $43eb: $10
	jr   @+$0a                                       ; $43ec: $18 $08

	ld   [$fc08], sp                                 ; $43ee: $08 $08 $fc
	db   $fc                                         ; $43f1: $fc
	db   $f4                                         ; $43f2: $f4

jr_012_43f3:
	inc  c                                           ; $43f3: $0c
	ld   a, d                                        ; $43f4: $7a
	and  $e2                                         ; $43f5: $e6 $e2
	ld   a, $fc                                      ; $43f7: $3e $fc
	db   $fc                                         ; $43f9: $fc
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00

jr_012_4407:
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	inc  bc                                          ; $440c: $03
	inc  bc                                          ; $440d: $03
	ld   bc, $0201                                   ; $440e: $01 $01 $02
	inc  bc                                          ; $4411: $03
	inc  b                                           ; $4412: $04
	dec  b                                           ; $4413: $05
	ld   [$110b], sp                                 ; $4414: $08 $0b $11
	dec  de                                          ; $4417: $1b
	ld   de, $2219                                   ; $4418: $11 $19 $22
	ld   a, $22                                      ; $441b: $3e $22
	ld   a, $2a                                      ; $441d: $3e $2a
	ccf                                              ; $441f: $3f
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	ld   bc, $0001                                   ; $4424: $01 $01 $00
	nop                                              ; $4427: $00
	ld   a, $3e                                      ; $4428: $3e $3e
	pop  bc                                          ; $442a: $c1
	rst  $38                                         ; $442b: $ff
	nop                                              ; $442c: $00
	rst  $38                                         ; $442d: $ff
	ret  nz                                          ; $442e: $c0

	rst  $38                                         ; $442f: $ff

jr_012_4430:
	nop                                              ; $4430: $00
	rst  $38                                         ; $4431: $ff
	nop                                              ; $4432: $00
	rst  $38                                         ; $4433: $ff
	add  d                                           ; $4434: $82
	rst  $38                                         ; $4435: $ff
	inc  b                                           ; $4436: $04
	rst  $38                                         ; $4437: $ff
	inc  h                                           ; $4438: $24
	cp   l                                           ; $4439: $bd
	ld   c, b                                        ; $443a: $48
	ld   e, c                                        ; $443b: $59
	ld   c, b                                        ; $443c: $48
	ret                                              ; $443d: $c9


	ld   c, b                                        ; $443e: $48
	db   $fc                                         ; $443f: $fc
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	ret  nz                                          ; $4446: $c0

	ret  nz                                          ; $4447: $c0

	and  b                                           ; $4448: $a0
	ldh  [$9e], a                                    ; $4449: $e0 $9e
	cp   $91                                         ; $444b: $fe $91
	rst  $38                                         ; $444d: $ff
	inc  bc                                          ; $444e: $03
	rst  $38                                         ; $444f: $ff
	nop                                              ; $4450: $00
	rst  $38                                         ; $4451: $ff
	nop                                              ; $4452: $00
	rst  $38                                         ; $4453: $ff

jr_012_4454:
	nop                                              ; $4454: $00
	rst  $38                                         ; $4455: $ff
	nop                                              ; $4456: $00
	rst  $38                                         ; $4457: $ff
	inc  b                                           ; $4458: $04
	rst  $38                                         ; $4459: $ff
	inc  h                                           ; $445a: $24
	db   $f4                                         ; $445b: $f4
	ld   h, h                                        ; $445c: $64
	ld   l, [hl]                                     ; $445d: $6e
	xor  $bb                                         ; $445e: $ee $bb
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	nop                                              ; $4468: $00
	nop                                              ; $4469: $00
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	add  b                                           ; $446c: $80
	add  b                                           ; $446d: $80
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	ret  nz                                          ; $4470: $c0

	ret  nz                                          ; $4471: $c0

	jr   nz, jr_012_4454                             ; $4472: $20 $e0

	ld   d, b                                        ; $4474: $50
	ld   [hl], b                                     ; $4475: $70

jr_012_4476:
	jr   c, jr_012_4430                              ; $4476: $38 $b8

	db   $10                                         ; $4478: $10
	sub  b                                           ; $4479: $90
	db   $10                                         ; $447a: $10
	ld   [hl], b                                     ; $447b: $70
	ld   [$4878], sp                                 ; $447c: $08 $78 $48
	ld   hl, sp+$3a                                  ; $447f: $f8 $3a
	ccf                                              ; $4481: $3f
	dec  hl                                          ; $4482: $2b
	cpl                                              ; $4483: $2f
	add  hl, bc                                      ; $4484: $09
	rrca                                             ; $4485: $0f
	dec  b                                           ; $4486: $05
	rlca                                             ; $4487: $07
	dec  c                                           ; $4488: $0d
	rrca                                             ; $4489: $0f
	rrca                                             ; $448a: $0f
	dec  bc                                          ; $448b: $0b
	rrca                                             ; $448c: $0f
	add  hl, bc                                      ; $448d: $09
	rrca                                             ; $448e: $0f
	add  hl, bc                                      ; $448f: $09
	rlca                                             ; $4490: $07
	dec  b                                           ; $4491: $05
	inc  bc                                          ; $4492: $03
	inc  bc                                          ; $4493: $03
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	rlca                                             ; $449d: $07
	rlca                                             ; $449e: $07
	ld   [$bde8], sp                                 ; $449f: $08 $e8 $bd
	db   $fd                                         ; $44a2: $fd
	rla                                              ; $44a3: $17
	db   $fd                                         ; $44a4: $fd
	ld   [hl], a                                     ; $44a5: $77
	rst  $38                                         ; $44a6: $ff
	sbc  a                                           ; $44a7: $9f
	rst  $38                                         ; $44a8: $ff
	ld   a, l                                        ; $44a9: $7d
	sbc  a                                           ; $44aa: $9f
	sbc  h                                           ; $44ab: $9c
	sub  e                                           ; $44ac: $93
	jr   c, jr_012_4476                              ; $44ad: $38 $c7

	nop                                              ; $44af: $00
	ld   a, [hl]                                     ; $44b0: $7e
	add  c                                           ; $44b1: $81
	rst  $38                                         ; $44b2: $ff
	add  b                                           ; $44b3: $80
	cp   a                                           ; $44b4: $bf
	jp   $427e                                       ; $44b5: $c3 $7e $42


	dec  l                                           ; $44b8: $2d
	inc  sp                                          ; $44b9: $33
	dec  de                                          ; $44ba: $1b
	inc  e                                           ; $44bb: $1c
	rla                                              ; $44bc: $17
	rst  $20                                         ; $44bd: $e7
	db   $e4                                         ; $44be: $e4
	rla                                              ; $44bf: $17
	xor  $bb                                         ; $44c0: $ee $bb
	rst  $38                                         ; $44c2: $ff
	ld   sp, $2eff                                   ; $44c3: $31 $ff $2e
	rst  $38                                         ; $44c6: $ff
	add  hl, sp                                      ; $44c7: $39
	rst  $38                                         ; $44c8: $ff
	ld   a, $ed                                      ; $44c9: $3e $ed
	dec  l                                           ; $44cb: $2d
	ret                                              ; $44cc: $c9


	inc  e                                           ; $44cd: $1c
	db   $e3                                         ; $44ce: $e3
	nop                                              ; $44cf: $00
	ld   a, [hl]                                     ; $44d0: $7e
	add  c                                           ; $44d1: $81
	rst  $38                                         ; $44d2: $ff
	ld   bc, $c3fd                                   ; $44d3: $01 $fd $c3
	ld   a, [hl]                                     ; $44d6: $7e
	ld   b, d                                        ; $44d7: $42
	or   h                                           ; $44d8: $b4
	call z, $38d8                                    ; $44d9: $cc $d8 $38
	db   $fc                                         ; $44dc: $fc
	db   $f4                                         ; $44dd: $f4
	ld   d, $f6                                      ; $44de: $16 $f6
	ld   c, b                                        ; $44e0: $48
	ld   hl, sp+$50                                  ; $44e1: $f8 $50
	ldh  a, [$d0]                                    ; $44e3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $44e5: $f0 $a0
	ldh  [$b0], a                                    ; $44e7: $e0 $b0
	ldh  a, [$f0]                                    ; $44e9: $f0 $f0
	ret  nc                                          ; $44eb: $d0

	ldh  a, [$90]                                    ; $44ec: $f0 $90
	ldh  a, [$90]                                    ; $44ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $44f0: $e0 $a0
	ret  nz                                          ; $44f2: $c0

	ret  nz                                          ; $44f3: $c0

	nop                                              ; $44f4: $00
	nop                                              ; $44f5: $00
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	nop                                              ; $44f8: $00
	nop                                              ; $44f9: $00
	nop                                              ; $44fa: $00
	nop                                              ; $44fb: $00
	nop                                              ; $44fc: $00
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	rrca                                             ; $4500: $0f
	db   $10                                         ; $4501: $10
	rrca                                             ; $4502: $0f
	db   $10                                         ; $4503: $10
	rrca                                             ; $4504: $0f
	db   $10                                         ; $4505: $10
	inc  c                                           ; $4506: $0c
	inc  de                                          ; $4507: $13
	nop                                              ; $4508: $00
	rrca                                             ; $4509: $0f
	inc  bc                                          ; $450a: $03
	ld   [bc], a                                     ; $450b: $02
	ld   bc, $0001                                   ; $450c: $01 $01 $00
	nop                                              ; $450f: $00
	nop                                              ; $4510: $00
	nop                                              ; $4511: $00
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	nop                                              ; $4516: $00
	nop                                              ; $4517: $00
	nop                                              ; $4518: $00
	nop                                              ; $4519: $00
	ld   bc, $0101                                   ; $451a: $01 $01 $01
	ld   bc, $0202                                   ; $451d: $01 $02 $02
	db   $ec                                         ; $4520: $ec
	rra                                              ; $4521: $1f
	add  $3b                                         ; $4522: $c6 $3b
	or   d                                           ; $4524: $b2
	ld   c, e                                        ; $4525: $4b
	ld   h, c                                        ; $4526: $61
	sbc  e                                           ; $4527: $9b
	add  hl, de                                      ; $4528: $19
	jp   hl                                          ; $4529: $e9


	push af                                          ; $452a: $f5
	dec  d                                           ; $452b: $15
	db   $f4                                         ; $452c: $f4
	db   $f4                                         ; $452d: $f4
	add  d                                           ; $452e: $82
	add  [hl]                                        ; $452f: $86
	add  e                                           ; $4530: $83
	add  e                                           ; $4531: $83
	call nz, Call_012_7f86                           ; $4532: $c4 $86 $7f
	ld   a, a                                        ; $4535: $7f
	add  [hl]                                        ; $4536: $86
	add  d                                           ; $4537: $82
	cp   $fc                                         ; $4538: $fe $fc
	inc  b                                           ; $453a: $04
	adc  h                                           ; $453b: $8c
	inc  b                                           ; $453c: $04
	ld   d, h                                        ; $453d: $54
	rlca                                             ; $453e: $07
	daa                                              ; $453f: $27
	push de                                          ; $4540: $d5
	dec  [hl]                                        ; $4541: $35
	call nc, $d434                                   ; $4542: $d4 $34 $d4
	inc  [hl]                                        ; $4545: $34
	call nc, $f434                                   ; $4546: $d4 $34 $f4
	inc  h                                           ; $4549: $24
	ld   l, c                                        ; $454a: $69
	xor  c                                           ; $454b: $a9

jr_012_454c:
	ret                                              ; $454c: $c9


	ret                                              ; $454d: $c9


	sbc  a                                           ; $454e: $9f
	sub  [hl]                                        ; $454f: $96
	ccf                                              ; $4550: $3f
	add  hl, hl                                      ; $4551: $29
	ld   d, a                                        ; $4552: $57
	jr   c, jr_012_454c                              ; $4553: $38 $f7

	ld   hl, sp-$18                                  ; $4555: $f8 $e8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4557: $cf
	cp   a                                           ; $4558: $bf
	cp   a                                           ; $4559: $bf
	or   b                                           ; $455a: $b0
	and  l                                           ; $455b: $a5
	or   b                                           ; $455c: $b0
	sbc  d                                           ; $455d: $9a
	sub  b                                           ; $455e: $90
	sub  c                                           ; $455f: $91
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	add  b                                           ; $4562: $80
	add  b                                           ; $4563: $80
	ret  nz                                          ; $4564: $c0

	ld   b, b                                        ; $4565: $40
	ld   b, b                                        ; $4566: $40
	ld   b, b                                        ; $4567: $40
	jr   nz, @+$22                                   ; $4568: $20 $20

	and  b                                           ; $456a: $a0
	and  b                                           ; $456b: $a0
	db   $10                                         ; $456c: $10
	db   $10                                         ; $456d: $10
	sub  b                                           ; $456e: $90
	sub  b                                           ; $456f: $90
	ldh  a, [rSVBK]                                  ; $4570: $f0 $70
	ldh  a, [$50]                                    ; $4572: $f0 $50
	ld   d, b                                        ; $4574: $50
	ldh  a, [hScriptOpcodeParams]                                    ; $4575: $f0 $a0
	ldh  [$c0], a                                    ; $4577: $e0 $c0
	ret  nz                                          ; $4579: $c0

	add  b                                           ; $457a: $80
	add  b                                           ; $457b: $80
	add  b                                           ; $457c: $80
	add  b                                           ; $457d: $80
	ld   b, b                                        ; $457e: $40
	ld   b, b                                        ; $457f: $40
	ld   [bc], a                                     ; $4580: $02
	inc  bc                                          ; $4581: $03
	inc  bc                                          ; $4582: $03
	inc  bc                                          ; $4583: $03
	ld   b, $04                                      ; $4584: $06 $04
	inc  b                                           ; $4586: $04
	inc  b                                           ; $4587: $04
	inc  c                                           ; $4588: $0c
	ld   [$0808], sp                                 ; $4589: $08 $08 $08
	jr   jr_012_459e                                 ; $458c: $18 $10

	db   $10                                         ; $458e: $10
	db   $10                                         ; $458f: $10
	ccf                                              ; $4590: $3f
	ccf                                              ; $4591: $3f
	cpl                                              ; $4592: $2f
	jr   nc, jr_012_45f3                             ; $4593: $30 $5e

	ld   h, a                                        ; $4595: $67
	ld   b, a                                        ; $4596: $47
	ld   a, h                                        ; $4597: $7c
	ccf                                              ; $4598: $3f
	ccf                                              ; $4599: $3f
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00

jr_012_459e:
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	ld   d, l                                        ; $45a1: $55
	rst  $38                                         ; $45a2: $ff
	rst  $38                                         ; $45a3: $ff
	ld   b, $02                                      ; $45a4: $06 $02
	inc  b                                           ; $45a6: $04
	inc  b                                           ; $45a7: $04
	inc  c                                           ; $45a8: $0c
	inc  b                                           ; $45a9: $04
	ld   [$0808], sp                                 ; $45aa: $08 $08 $08
	ld   [$0818], sp                                 ; $45ad: $08 $18 $08
	sub  b                                           ; $45b0: $90
	sub  b                                           ; $45b1: $90
	ld   d, b                                        ; $45b2: $50
	ret  nc                                          ; $45b3: $d0

	ld   d, b                                        ; $45b4: $50
	ret  nc                                          ; $45b5: $d0

	ldh  a, [rSVBK]                                  ; $45b6: $f0 $70
	add  b                                           ; $45b8: $80
	add  b                                           ; $45b9: $80
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	sub  b                                           ; $45c0: $90
	sbc  d                                           ; $45c1: $9a
	rst  $38                                         ; $45c2: $ff
	rst  $38                                         ; $45c3: $ff
	ld   h, b                                        ; $45c4: $60
	ld   b, b                                        ; $45c5: $40
	jr   nz, @+$22                                   ; $45c6: $20 $20

	jr   nc, jr_012_45ea                             ; $45c8: $30 $20

	db   $10                                         ; $45ca: $10
	db   $10                                         ; $45cb: $10
	db   $10                                         ; $45cc: $10
	db   $10                                         ; $45cd: $10
	jr   jr_012_45e0                                 ; $45ce: $18 $10

	add  hl, bc                                      ; $45d0: $09
	add  hl, bc                                      ; $45d1: $09
	ld   a, [bc]                                     ; $45d2: $0a
	dec  bc                                          ; $45d3: $0b
	ld   a, [bc]                                     ; $45d4: $0a
	dec  bc                                          ; $45d5: $0b
	rrca                                             ; $45d6: $0f
	ld   c, $01                                      ; $45d7: $0e $01
	ld   bc, $0000                                   ; $45d9: $01 $00 $00
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00

jr_012_45e0:
	ld   b, b                                        ; $45e0: $40
	ret  nz                                          ; $45e1: $c0

	ret  nz                                          ; $45e2: $c0

	ret  nz                                          ; $45e3: $c0

	ld   h, b                                        ; $45e4: $60
	jr   nz, jr_012_4607                             ; $45e5: $20 $20

	jr   nz, @+$32                                   ; $45e7: $20 $30

	db   $10                                         ; $45e9: $10

jr_012_45ea:
	db   $10                                         ; $45ea: $10
	db   $10                                         ; $45eb: $10
	jr   @+$0a                                       ; $45ec: $18 $08

	ld   [$fc08], sp                                 ; $45ee: $08 $08 $fc
	db   $fc                                         ; $45f1: $fc
	db   $f4                                         ; $45f2: $f4

jr_012_45f3:
	inc  c                                           ; $45f3: $0c
	ld   a, d                                        ; $45f4: $7a
	and  $e2                                         ; $45f5: $e6 $e2
	ld   a, $fc                                      ; $45f7: $3e $fc
	db   $fc                                         ; $45f9: $fc
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

jr_012_4607:
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	ld   bc, $0001                                   ; $460c: $01 $01 $00
	nop                                              ; $460f: $00
	inc  bc                                          ; $4610: $03
	inc  bc                                          ; $4611: $03
	inc  b                                           ; $4612: $04
	rlca                                             ; $4613: $07

jr_012_4614:
	ld   a, [bc]                                     ; $4614: $0a
	ld   c, $1c                                      ; $4615: $0e $1c
	dec  e                                           ; $4617: $1d
	ld   [$0809], sp                                 ; $4618: $08 $09 $08
	ld   c, $10                                      ; $461b: $0e $10
	ld   e, $12                                      ; $461d: $1e $12
	rra                                              ; $461f: $1f
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	inc  bc                                          ; $4626: $03
	inc  bc                                          ; $4627: $03
	dec  b                                           ; $4628: $05
	rlca                                             ; $4629: $07
	ld   a, c                                        ; $462a: $79
	ld   a, a                                        ; $462b: $7f
	adc  c                                           ; $462c: $89
	rst  $38                                         ; $462d: $ff
	ret  nz                                          ; $462e: $c0

	rst  $38                                         ; $462f: $ff
	nop                                              ; $4630: $00
	rst  $38                                         ; $4631: $ff
	nop                                              ; $4632: $00
	rst  $38                                         ; $4633: $ff
	nop                                              ; $4634: $00
	rst  $38                                         ; $4635: $ff
	nop                                              ; $4636: $00
	rst  $38                                         ; $4637: $ff
	jr   nz, @+$01                                   ; $4638: $20 $ff

	inc  h                                           ; $463a: $24
	cpl                                              ; $463b: $2f
	ld   h, $76                                      ; $463c: $26 $76
	ld   [hl], a                                     ; $463e: $77
	db   $dd                                         ; $463f: $dd
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00

Call_012_4642:
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	add  b                                           ; $4644: $80
	add  b                                           ; $4645: $80
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	ld   a, h                                        ; $4648: $7c
	ld   a, h                                        ; $4649: $7c
	add  e                                           ; $464a: $83
	rst  $38                                         ; $464b: $ff
	nop                                              ; $464c: $00
	rst  $38                                         ; $464d: $ff
	inc  bc                                          ; $464e: $03
	rst  $38                                         ; $464f: $ff
	nop                                              ; $4650: $00
	rst  $38                                         ; $4651: $ff
	nop                                              ; $4652: $00
	rst  $38                                         ; $4653: $ff
	ld   b, c                                        ; $4654: $41
	rst  $38                                         ; $4655: $ff
	jr   nz, @+$01                                   ; $4656: $20 $ff

	inc  h                                           ; $4658: $24
	cp   l                                           ; $4659: $bd
	ld   [de], a                                     ; $465a: $12
	sbc  d                                           ; $465b: $9a
	ld   [de], a                                     ; $465c: $12
	sub  e                                           ; $465d: $93
	ld   [de], a                                     ; $465e: $12
	ccf                                              ; $465f: $3f
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	ret  nz                                          ; $466c: $c0

	ret  nz                                          ; $466d: $c0

	add  b                                           ; $466e: $80
	add  b                                           ; $466f: $80
	ld   b, b                                        ; $4670: $40
	ret  nz                                          ; $4671: $c0

	jr   nz, jr_012_4614                             ; $4672: $20 $a0

	db   $10                                         ; $4674: $10
	ret  nc                                          ; $4675: $d0

jr_012_4676:
	adc  b                                           ; $4676: $88
	ret  c                                           ; $4677: $d8

	adc  b                                           ; $4678: $88
	sbc  b                                           ; $4679: $98
	ld   b, h                                        ; $467a: $44
	ld   a, h                                        ; $467b: $7c
	ld   b, h                                        ; $467c: $44
	ld   a, h                                        ; $467d: $7c
	ld   d, h                                        ; $467e: $54
	db   $fc                                         ; $467f: $fc
	ld   [de], a                                     ; $4680: $12
	rra                                              ; $4681: $1f
	ld   a, [bc]                                     ; $4682: $0a
	rrca                                             ; $4683: $0f
	dec  bc                                          ; $4684: $0b
	rrca                                             ; $4685: $0f
	dec  b                                           ; $4686: $05
	rlca                                             ; $4687: $07
	dec  c                                           ; $4688: $0d
	rrca                                             ; $4689: $0f
	rrca                                             ; $468a: $0f
	dec  bc                                          ; $468b: $0b
	rrca                                             ; $468c: $0f
	add  hl, bc                                      ; $468d: $09
	rrca                                             ; $468e: $0f
	add  hl, bc                                      ; $468f: $09
	rlca                                             ; $4690: $07
	dec  b                                           ; $4691: $05
	inc  bc                                          ; $4692: $03
	inc  bc                                          ; $4693: $03
	nop                                              ; $4694: $00
	nop                                              ; $4695: $00
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	ld   [hl], a                                     ; $46a0: $77
	db   $dd                                         ; $46a1: $dd
	rst  $38                                         ; $46a2: $ff
	adc  h                                           ; $46a3: $8c
	rst  $38                                         ; $46a4: $ff
	ld   [hl], h                                     ; $46a5: $74
	rst  $38                                         ; $46a6: $ff
	sbc  h                                           ; $46a7: $9c
	rst  $38                                         ; $46a8: $ff
	ld   a, h                                        ; $46a9: $7c
	or   a                                           ; $46aa: $b7
	or   h                                           ; $46ab: $b4
	sub  e                                           ; $46ac: $93
	jr   c, jr_012_4676                              ; $46ad: $38 $c7

	nop                                              ; $46af: $00
	ld   a, [hl]                                     ; $46b0: $7e
	add  c                                           ; $46b1: $81
	rst  $38                                         ; $46b2: $ff
	add  b                                           ; $46b3: $80
	cp   a                                           ; $46b4: $bf
	jp   $427e                                       ; $46b5: $c3 $7e $42


	dec  l                                           ; $46b8: $2d
	inc  sp                                          ; $46b9: $33
	dec  de                                          ; $46ba: $1b
	inc  e                                           ; $46bb: $1c
	ld   a, a                                        ; $46bc: $7f
	ld   h, a                                        ; $46bd: $67
	db   $e4                                         ; $46be: $e4
	and  a                                           ; $46bf: $a7
	rla                                              ; $46c0: $17
	cp   l                                           ; $46c1: $bd
	cp   a                                           ; $46c2: $bf
	add  sp, -$41                                    ; $46c3: $e8 $bf
	xor  $ff                                         ; $46c5: $ee $ff
	ld   sp, hl                                      ; $46c7: $f9
	rst  $38                                         ; $46c8: $ff
	cp   [hl]                                        ; $46c9: $be
	ld   sp, hl                                      ; $46ca: $f9
	add  hl, sp                                      ; $46cb: $39
	ret                                              ; $46cc: $c9


	inc  e                                           ; $46cd: $1c
	db   $e3                                         ; $46ce: $e3
	nop                                              ; $46cf: $00
	ld   a, [hl]                                     ; $46d0: $7e
	add  c                                           ; $46d1: $81
	rst  $38                                         ; $46d2: $ff
	ld   bc, $c3fd                                   ; $46d3: $01 $fd $c3
	ld   a, [hl]                                     ; $46d6: $7e
	ld   b, d                                        ; $46d7: $42
	or   h                                           ; $46d8: $b4
	call z, $38d8                                    ; $46d9: $cc $d8 $38
	cp   $e6                                         ; $46dc: $fe $e6
	daa                                              ; $46de: $27
	push hl                                          ; $46df: $e5
	ld   e, h                                        ; $46e0: $5c
	db   $fc                                         ; $46e1: $fc
	call nc, $90f4                                   ; $46e2: $d4 $f4 $90
	ldh  a, [hScriptOpcodeParams]                                    ; $46e5: $f0 $a0
	ldh  [$b0], a                                    ; $46e7: $e0 $b0
	ldh  a, [$f0]                                    ; $46e9: $f0 $f0
	ret  nc                                          ; $46eb: $d0

	ldh  a, [$90]                                    ; $46ec: $f0 $90
	ldh  a, [$90]                                    ; $46ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $46f0: $e0 $a0
	ret  nz                                          ; $46f2: $c0

	ret  nz                                          ; $46f3: $c0

	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	nop                                              ; $46f6: $00
	nop                                              ; $46f7: $00
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	add  b                                           ; $46fe: $80
	add  b                                           ; $46ff: $80
	ld   bc, $0201                                   ; $4700: $01 $01 $02
	ld   [bc], a                                     ; $4703: $02
	ld   b, $04                                      ; $4704: $06 $04
	dec  b                                           ; $4706: $05
	dec  b                                           ; $4707: $05
	dec  bc                                          ; $4708: $0b
	dec  bc                                          ; $4709: $0b
	add  hl, bc                                      ; $470a: $09
	add  hl, bc                                      ; $470b: $09
	inc  de                                          ; $470c: $13
	inc  de                                          ; $470d: $13
	rla                                              ; $470e: $17
	ld   d, $1f                                      ; $470f: $16 $1f
	dec  e                                           ; $4711: $1d
	rra                                              ; $4712: $1f
	inc  d                                           ; $4713: $14
	dec  d                                           ; $4714: $15
	ld   e, $0a                                      ; $4715: $1e $0a
	rrca                                             ; $4717: $0f
	rlca                                             ; $4718: $07
	rlca                                             ; $4719: $07
	ld   bc, $0101                                   ; $471a: $01 $01 $01
	ld   bc, $0202                                   ; $471d: $01 $02 $02
	dec  h                                           ; $4720: $25
	ld   h, $25                                      ; $4721: $26 $25
	ld   h, $25                                      ; $4723: $26 $25
	ld   h, $36                                      ; $4725: $26 $36
	inc  hl                                          ; $4727: $23
	ld   [de], a                                     ; $4728: $12
	inc  sp                                          ; $4729: $33
	add  hl, de                                      ; $472a: $19
	ld   de, $8989                                   ; $472b: $11 $89 $89
	rst  $20                                         ; $472e: $e7
	and  $d7                                         ; $472f: $e6 $d7
	inc  [hl]                                        ; $4731: $34
	rst  $28                                         ; $4732: $ef
	inc  e                                           ; $4733: $1c
	rst  $28                                         ; $4734: $ef
	inc  e                                           ; $4735: $1c
	rra                                              ; $4736: $1f
	db   $f4                                         ; $4737: $f4
	cp   $ff                                         ; $4738: $fe $ff
	rlca                                             ; $473a: $07
	inc  de                                          ; $473b: $13
	ld   b, $ac                                      ; $473c: $06 $ac
	inc  b                                           ; $473e: $04
	ld   b, h                                        ; $473f: $44
	and  h                                           ; $4740: $a4
	ld   h, h                                        ; $4741: $64
	and  h                                           ; $4742: $a4
	ld   h, h                                        ; $4743: $64
	and  h                                           ; $4744: $a4
	ld   h, h                                        ; $4745: $64
	ld   l, h                                        ; $4746: $6c
	call nz, $c84c                                   ; $4747: $c4 $4c $c8
	sbc  e                                           ; $474a: $9b
	adc  e                                           ; $474b: $8b
	db   $fc                                         ; $474c: $fc
	db   $fc                                         ; $474d: $fc
	cp   $02                                         ; $474e: $fe $02
	or   $0b                                         ; $4750: $f6 $0b
	jp   hl                                          ; $4752: $e9


	rra                                              ; $4753: $1f
	rrca                                             ; $4754: $0f
	rst  $38                                         ; $4755: $ff
	rst  $38                                         ; $4756: $ff
	ld   [hl], c                                     ; $4757: $71
	ccf                                              ; $4758: $3f
	rst  $38                                         ; $4759: $ff
	db   $d3                                         ; $475a: $d3
	reti                                             ; $475b: $d9


	sub  b                                           ; $475c: $90
	sub  l                                           ; $475d: $95
	ldh  a, [$f2]                                    ; $475e: $f0 $f2
	ld   b, b                                        ; $4760: $40
	ret  nz                                          ; $4761: $c0

	jr   nz, jr_012_4784                             ; $4762: $20 $20

	sub  b                                           ; $4764: $90
	or   b                                           ; $4765: $b0
	sub  b                                           ; $4766: $90
	sub  b                                           ; $4767: $90
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	ret  z                                           ; $476a: $c8

jr_012_476b:
	ret  z                                           ; $476b: $c8

	inc  h                                           ; $476c: $24
	inc  h                                           ; $476d: $24
	inc  b                                           ; $476e: $04
	inc  b                                           ; $476f: $04
	inc  b                                           ; $4770: $04
	inc  b                                           ; $4771: $04
	inc  b                                           ; $4772: $04
	inc  b                                           ; $4773: $04
	inc  b                                           ; $4774: $04
	inc  b                                           ; $4775: $04
	ld   [$e808], sp                                 ; $4776: $08 $08 $e8
	jr   jr_012_476b                                 ; $4779: $18 $f0

	ldh  a, [$80]                                    ; $477b: $f0 $80
	add  b                                           ; $477d: $80
	ld   b, b                                        ; $477e: $40
	ld   b, b                                        ; $477f: $40
	ld   [bc], a                                     ; $4780: $02
	ld   [bc], a                                     ; $4781: $02
	inc  bc                                          ; $4782: $03
	inc  bc                                          ; $4783: $03

jr_012_4784:
	ld   b, $04                                      ; $4784: $06 $04
	inc  b                                           ; $4786: $04
	inc  b                                           ; $4787: $04
	inc  c                                           ; $4788: $0c
	ld   [$0808], sp                                 ; $4789: $08 $08 $08
	jr   jr_012_479e                                 ; $478c: $18 $10

	db   $10                                         ; $478e: $10
	db   $10                                         ; $478f: $10
	ccf                                              ; $4790: $3f
	ccf                                              ; $4791: $3f
	cpl                                              ; $4792: $2f
	jr   nc, jr_012_47f3                             ; $4793: $30 $5e

	ld   h, a                                        ; $4795: $67
	ld   b, a                                        ; $4796: $47
	ld   a, h                                        ; $4797: $7c
	ccf                                              ; $4798: $3f
	ccf                                              ; $4799: $3f
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00

jr_012_479e:
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	inc  b                                           ; $47a0: $04
	xor  h                                           ; $47a1: $ac
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	ld   b, $02                                      ; $47a4: $06 $02
	inc  b                                           ; $47a6: $04
	inc  b                                           ; $47a7: $04
	inc  c                                           ; $47a8: $0c
	inc  b                                           ; $47a9: $04
	ld   [$0808], sp                                 ; $47aa: $08 $08 $08
	ld   [$0818], sp                                 ; $47ad: $08 $18 $08
	sub  b                                           ; $47b0: $90
	sub  b                                           ; $47b1: $90
	ld   d, b                                        ; $47b2: $50
	ret  nc                                          ; $47b3: $d0

	ld   d, b                                        ; $47b4: $50
	ret  nc                                          ; $47b5: $d0

	ldh  a, [rSVBK]                                  ; $47b6: $f0 $70
	add  b                                           ; $47b8: $80
	add  b                                           ; $47b9: $80
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	add  b                                           ; $47c0: $80
	push de                                          ; $47c1: $d5
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	ld   h, b                                        ; $47c4: $60
	ld   b, b                                        ; $47c5: $40
	jr   nz, @+$22                                   ; $47c6: $20 $20

	jr   nc, jr_012_47ea                             ; $47c8: $30 $20

	db   $10                                         ; $47ca: $10
	db   $10                                         ; $47cb: $10
	db   $10                                         ; $47cc: $10
	db   $10                                         ; $47cd: $10
	jr   jr_012_47e0                                 ; $47ce: $18 $10

	add  hl, bc                                      ; $47d0: $09
	add  hl, bc                                      ; $47d1: $09
	ld   a, [bc]                                     ; $47d2: $0a
	dec  bc                                          ; $47d3: $0b
	ld   a, [bc]                                     ; $47d4: $0a
	dec  bc                                          ; $47d5: $0b
	rrca                                             ; $47d6: $0f
	ld   c, $01                                      ; $47d7: $0e $01
	ld   bc, $0000                                   ; $47d9: $01 $00 $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00

jr_012_47e0:
	ld   b, b                                        ; $47e0: $40
	ld   b, b                                        ; $47e1: $40
	ret  nz                                          ; $47e2: $c0

	ret  nz                                          ; $47e3: $c0

	ld   h, b                                        ; $47e4: $60
	jr   nz, jr_012_4807                             ; $47e5: $20 $20

	jr   nz, @+$32                                   ; $47e7: $20 $30

	db   $10                                         ; $47e9: $10

jr_012_47ea:
	db   $10                                         ; $47ea: $10
	db   $10                                         ; $47eb: $10
	jr   @+$0a                                       ; $47ec: $18 $08

	ld   [$fc08], sp                                 ; $47ee: $08 $08 $fc
	db   $fc                                         ; $47f1: $fc
	db   $f4                                         ; $47f2: $f4

jr_012_47f3:
	inc  c                                           ; $47f3: $0c
	ld   a, d                                        ; $47f4: $7a
	and  $e2                                         ; $47f5: $e6 $e2
	ld   a, $fc                                      ; $47f7: $3e $fc
	db   $fc                                         ; $47f9: $fc
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00

jr_012_4807:
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	inc  bc                                          ; $480c: $03
	inc  bc                                          ; $480d: $03
	rrca                                             ; $480e: $0f
	rrca                                             ; $480f: $0f
	inc  d                                           ; $4810: $14
	rra                                              ; $4811: $1f
	jr   nz, jr_012_483f                             ; $4812: $20 $2b

	jr   nz, jr_012_4841                             ; $4814: $20 $2b

	ld   h, b                                        ; $4816: $60
	ld   l, c                                        ; $4817: $69
	jr   nz, @+$3a                                   ; $4818: $20 $38

	jr   nz, jr_012_484c                             ; $481a: $20 $30

	ld   b, c                                        ; $481c: $41
	ld   [hl], l                                     ; $481d: $75
	ld   b, c                                        ; $481e: $41
	ld   a, a                                        ; $481f: $7f
	nop                                              ; $4820: $00
	nop                                              ; $4821: $00
	ld   [$1008], sp                                 ; $4822: $08 $08 $10
	db   $10                                         ; $4825: $10
	daa                                              ; $4826: $27
	scf                                              ; $4827: $37
	ld   e, b                                        ; $4828: $58
	ld   a, a                                        ; $4829: $7f
	ld   d, b                                        ; $482a: $50
	ld   a, a                                        ; $482b: $7f
	add  b                                           ; $482c: $80
	rst  $38                                         ; $482d: $ff
	nop                                              ; $482e: $00
	rst  $38                                         ; $482f: $ff
	nop                                              ; $4830: $00
	rst  $38                                         ; $4831: $ff
	nop                                              ; $4832: $00
	rst  $38                                         ; $4833: $ff
	nop                                              ; $4834: $00
	rst  $38                                         ; $4835: $ff
	ld   c, b                                        ; $4836: $48
	rst  $38                                         ; $4837: $ff
	adc  b                                           ; $4838: $88
	rst  $38                                         ; $4839: $ff
	adc  b                                           ; $483a: $88
	ei                                               ; $483b: $fb
	ld   [$3abc], sp                                 ; $483c: $08 $bc $3a

jr_012_483f:
	ccf                                              ; $483f: $3f
	nop                                              ; $4840: $00

jr_012_4841:
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	ldh  [$e0], a                                    ; $4846: $e0 $e0
	db   $10                                         ; $4848: $10
	ldh  a, [$0c]                                    ; $4849: $f0 $0c
	db   $fc                                         ; $484b: $fc

jr_012_484c:
	inc  bc                                          ; $484c: $03
	rst  $38                                         ; $484d: $ff
	ld   c, $fe                                      ; $484e: $0e $fe
	ld   bc, $00ff                                   ; $4850: $01 $ff $00
	cp   $04                                         ; $4853: $fe $04
	rst  $38                                         ; $4855: $ff
	add  d                                           ; $4856: $82
	rst  $38                                         ; $4857: $ff
	ld   d, d                                        ; $4858: $52
	ld   d, [hl]                                     ; $4859: $56
	add  hl, hl                                      ; $485a: $29
	add  hl, hl                                      ; $485b: $29
	add  hl, hl                                      ; $485c: $29
	dec  l                                           ; $485d: $2d
	add  hl, bc                                      ; $485e: $09
	cp   a                                           ; $485f: $bf
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00
	nop                                              ; $4871: $00
	add  b                                           ; $4872: $80
	add  b                                           ; $4873: $80
	ld   b, b                                        ; $4874: $40
	ld   b, b                                        ; $4875: $40
	jr   nz, jr_012_48d8                             ; $4876: $20 $60

	jr   nz, @+$62                                   ; $4878: $20 $60

	db   $10                                         ; $487a: $10
	ldh  a, [rAUD1SWEEP]                             ; $487b: $f0 $10
	ldh  a, [$50]                                    ; $487d: $f0 $50
	ldh  a, [rSCY]                                   ; $487f: $f0 $42
	ld   a, a                                        ; $4881: $7f

jr_012_4882:
	ld   [hl+], a                                    ; $4882: $22
	ccf                                              ; $4883: $3f
	inc  hl                                          ; $4884: $23
	ccf                                              ; $4885: $3f
	inc  de                                          ; $4886: $13
	rra                                              ; $4887: $1f
	rra                                              ; $4888: $1f
	ld   e, $1f                                      ; $4889: $1e $1f
	ld   [de], a                                     ; $488b: $12
	rra                                              ; $488c: $1f
	ld   [de], a                                     ; $488d: $12
	rra                                              ; $488e: $1f
	db   $10                                         ; $488f: $10
	rrca                                             ; $4890: $0f
	ld   [$0707], sp                                 ; $4891: $08 $07 $07
	inc  bc                                          ; $4894: $03
	inc  bc                                          ; $4895: $03
	ld   bc, $0101                                   ; $4896: $01 $01 $01
	ld   bc, $0000                                   ; $4899: $01 $00 $00
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	ld   bc, $3b01                                   ; $489e: $01 $01 $3b
	ld   l, l                                        ; $48a1: $6d
	rst  $38                                         ; $48a2: $ff
	call $e9ff                                       ; $48a3: $cd $ff $e9
	rst  $38                                         ; $48a6: $ff
	add  hl, de                                      ; $48a7: $19
	rst  $38                                         ; $48a8: $ff
	ld   sp, hl                                      ; $48a9: $f9
	ld   l, a                                        ; $48aa: $6f
	ld   l, h                                        ; $48ab: $6c
	daa                                              ; $48ac: $27
	ld   [hl], b                                     ; $48ad: $70
	adc  a                                           ; $48ae: $8f
	nop                                              ; $48af: $00
	rst  $38                                         ; $48b0: $ff
	nop                                              ; $48b1: $00
	rst  $38                                         ; $48b2: $ff
	nop                                              ; $48b3: $00
	ld   a, a                                        ; $48b4: $7f
	add  e                                           ; $48b5: $83
	db   $fc                                         ; $48b6: $fc
	add  h                                           ; $48b7: $84
	ld   e, e                                        ; $48b8: $5b
	ld   h, a                                        ; $48b9: $67
	cpl                                              ; $48ba: $2f
	jr   nc, jr_012_493c                             ; $48bb: $30 $7f

	ld   e, a                                        ; $48bd: $5f
	ldh  [$bf], a                                    ; $48be: $e0 $bf
	dec  a                                           ; $48c0: $3d
	rst  $30                                         ; $48c1: $f7
	cp   a                                           ; $48c2: $bf
	db   $e3                                         ; $48c3: $e3
	cp   [hl]                                        ; $48c4: $be
	ei                                               ; $48c5: $fb
	rst  $38                                         ; $48c6: $ff
	ld   h, [hl]                                     ; $48c7: $66
	rst  $38                                         ; $48c8: $ff
	ld   a, e                                        ; $48c9: $7b
	and  $67                                         ; $48ca: $e6 $67
	and  a                                           ; $48cc: $a7
	ld   [hl-], a                                    ; $48cd: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ce: $cf
	ld   [bc], a                                     ; $48cf: $02
	ld   a, d                                        ; $48d0: $7a
	add  a                                           ; $48d1: $87
	rst  $38                                         ; $48d2: $ff
	rlca                                             ; $48d3: $07
	db   $f4                                         ; $48d4: $f4
	adc  h                                           ; $48d5: $8c
	ld   hl, sp-$78                                  ; $48d6: $f8 $88

jr_012_48d8:
	ret  nc                                          ; $48d8: $d0

	jr   nc, jr_012_4882                             ; $48d9: $30 $a7

	ld   h, a                                        ; $48db: $67
	reti                                             ; $48dc: $d9


	ret  c                                           ; $48dd: $d8

	sbc  c                                           ; $48de: $99
	sub  b                                           ; $48df: $90
	ld   [hl], b                                     ; $48e0: $70
	ldh  a, [$50]                                    ; $48e1: $f0 $50
	ret  nc                                          ; $48e3: $d0

	ld   b, b                                        ; $48e4: $40
	ret  nz                                          ; $48e5: $c0

	ldh  a, [$f0]                                    ; $48e6: $f0 $f0
	ld   l, b                                        ; $48e8: $68
	sbc  b                                           ; $48e9: $98
	ld   hl, sp+$08                                  ; $48ea: $f8 $08
	db   $f4                                         ; $48ec: $f4
	inc  c                                           ; $48ed: $0c
	cp   h                                           ; $48ee: $bc
	call nz, $84fc                                   ; $48ef: $c4 $fc $84
	db   $fc                                         ; $48f2: $fc
	add  h                                           ; $48f3: $84
	cp   h                                           ; $48f4: $bc
	call nz, $f4ec                                   ; $48f5: $c4 $ec $f4
	db   $fc                                         ; $48f8: $fc
	call nz, $c4fc                                   ; $48f9: $c4 $fc $c4
	db   $fc                                         ; $48fc: $fc
	ld   b, h                                        ; $48fd: $44
	cp   h                                           ; $48fe: $bc
	call nz, $0707                                   ; $48ff: $c4 $07 $07
	add  hl, bc                                      ; $4902: $09
	add  hl, bc                                      ; $4903: $09
	ld   de, $1011                                   ; $4904: $11 $11 $10
	db   $10                                         ; $4907: $10
	jr   z, @+$2a                                    ; $4908: $28 $28

	inc  h                                           ; $490a: $24
	inc  h                                           ; $490b: $24
	ld   l, $2e                                      ; $490c: $2e $2e
	cpl                                              ; $490e: $2f
	dec  hl                                          ; $490f: $2b
	cpl                                              ; $4910: $2f
	inc  h                                           ; $4911: $24
	ccf                                              ; $4912: $3f
	jr   nc, @+$19                                   ; $4913: $30 $17

	jr   jr_012_491f                                 ; $4915: $18 $08

	rrca                                             ; $4917: $0f
	rrca                                             ; $4918: $0f
	rrca                                             ; $4919: $0f
	ld   [bc], a                                     ; $491a: $02
	inc  bc                                          ; $491b: $03
	inc  b                                           ; $491c: $04
	inc  b                                           ; $491d: $04
	inc  b                                           ; $491e: $04

jr_012_491f:
	inc  b                                           ; $491f: $04
	ld   l, $31                                      ; $4920: $2e $31
	ld   l, $31                                      ; $4922: $2e $31
	xor  a                                           ; $4924: $af
	ld   sp, $9b95                                   ; $4925: $31 $95 $9b
	sub  e                                           ; $4928: $93
	sbc  [hl]                                        ; $4929: $9e
	jp   z, Jump_012_6c8e                            ; $492a: $ca $8e $6c

	ld   c, h                                        ; $492d: $4c
	xor  c                                           ; $492e: $a9
	xor  c                                           ; $492f: $a9
	ld   d, d                                        ; $4930: $52
	jp   nc, Jump_012_64a4                           ; $4931: $d2 $a4 $64

	cp   a                                           ; $4934: $bf
	ld   a, a                                        ; $4935: $7f
	ld   [hl], l                                     ; $4936: $75
	push de                                          ; $4937: $d5
	push af                                          ; $4938: $f5
	db   $f4                                         ; $4939: $f4
	inc  [hl]                                        ; $493a: $34
	ld   d, h                                        ; $493b: $54

jr_012_493c:
	inc  [hl]                                        ; $493c: $34
	and  h                                           ; $493d: $a4
	inc  h                                           ; $493e: $24
	ld   h, h                                        ; $493f: $64
	sub  c                                           ; $4940: $91
	sub  b                                           ; $4941: $90
	and  c                                           ; $4942: $a1
	and  b                                           ; $4943: $a0
	and  l                                           ; $4944: $a5
	inc  h                                           ; $4945: $24
	inc  h                                           ; $4946: $24
	inc  h                                           ; $4947: $24
	ld   b, h                                        ; $4948: $44
	ld   b, h                                        ; $4949: $44
	ld   b, d                                        ; $494a: $42
	ld   b, d                                        ; $494b: $42
	add  e                                           ; $494c: $83
	add  e                                           ; $494d: $83
	ld   [bc], a                                     ; $494e: $02
	ld   [bc], a                                     ; $494f: $02
	ld   [bc], a                                     ; $4950: $02
	ld   [bc], a                                     ; $4951: $02
	ld   b, $02                                      ; $4952: $06 $02
	db   $fc                                         ; $4954: $fc
	db   $fc                                         ; $4955: $fc
	add  d                                           ; $4956: $82
	ld   [bc], a                                     ; $4957: $02
	cp   $fe                                         ; $4958: $fe $fe
	add  c                                           ; $495a: $81
	push bc                                          ; $495b: $c5
	add  c                                           ; $495c: $81
	xor  e                                           ; $495d: $ab
	add  c                                           ; $495e: $81
	sub  c                                           ; $495f: $91
	or   h                                           ; $4960: $b4
	call z, $f888                                    ; $4961: $cc $88 $f8
	ldh  a, [$f0]                                    ; $4964: $f0 $f0
	ldh  a, [$90]                                    ; $4966: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $4968: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $496a: $e0 $a0
	ret  nz                                          ; $496c: $c0

	ret  nz                                          ; $496d: $c0

	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
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
	rlca                                             ; $4980: $07
	rlca                                             ; $4981: $07
	rrca                                             ; $4982: $0f
	inc  c                                           ; $4983: $0c
	ld   [$1008], sp                                 ; $4984: $08 $08 $10
	jr   jr_012_4999                                 ; $4987: $18 $10

	db   $10                                         ; $4989: $10
	jr   nz, jr_012_49bc                             ; $498a: $20 $30

	jr   nz, jr_012_49ae                             ; $498c: $20 $20

	jr   nz, jr_012_49b0                             ; $498e: $20 $20

	ld   a, a                                        ; $4990: $7f
	ld   a, a                                        ; $4991: $7f
	ld   e, [hl]                                     ; $4992: $5e
	ld   h, c                                        ; $4993: $61
	cp   h                                           ; $4994: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4995: $cf
	adc  a                                           ; $4996: $8f
	ld   hl, sp+$7f                                  ; $4997: $f8 $7f

jr_012_4999:
	ld   a, a                                        ; $4999: $7f
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	nop                                              ; $499c: $00
	nop                                              ; $499d: $00
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	daa                                              ; $49a0: $27
	and  a                                           ; $49a1: $a7
	rst  $38                                         ; $49a2: $ff
	db   $fc                                         ; $49a3: $fc
	dec  sp                                          ; $49a4: $3b
	ld   a, [bc]                                     ; $49a5: $0a
	ld   de, $3111                                   ; $49a6: $11 $11 $31
	ld   de, $2020                                   ; $49a9: $11 $20 $20
	jr   nz, jr_012_49ce                             ; $49ac: $20 $20

jr_012_49ae:
	jr   nz, jr_012_49d0                             ; $49ae: $20 $20

jr_012_49b0:
	jr   nz, jr_012_49d2                             ; $49b0: $20 $20

	and  b                                           ; $49b2: $a0
	and  b                                           ; $49b3: $a0
	and  b                                           ; $49b4: $a0
	and  b                                           ; $49b5: $a0
	ldh  [$e0], a                                    ; $49b6: $e0 $e0
	nop                                              ; $49b8: $00
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00

jr_012_49bc:
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	pop  bc                                          ; $49c2: $c1
	ld   bc, $0101                                   ; $49c3: $01 $01 $01
	ld   bc, $0000                                   ; $49c6: $01 $00 $00
	nop                                              ; $49c9: $00
	add  b                                           ; $49ca: $80
	add  b                                           ; $49cb: $80
	add  b                                           ; $49cc: $80
	add  b                                           ; $49cd: $80

jr_012_49ce:
	ld   b, b                                        ; $49ce: $40
	ld   b, b                                        ; $49cf: $40

jr_012_49d0:
	inc  hl                                          ; $49d0: $23
	inc  hl                                          ; $49d1: $23

jr_012_49d2:
	dec  d                                           ; $49d2: $15
	ld   d, $1c                                      ; $49d3: $16 $1c
	rla                                              ; $49d5: $17
	rra                                              ; $49d6: $1f
	inc  e                                           ; $49d7: $1c
	inc  bc                                          ; $49d8: $03
	inc  bc                                          ; $49d9: $03
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	add  b                                           ; $49e6: $80
	add  b                                           ; $49e7: $80
	add  b                                           ; $49e8: $80
	add  b                                           ; $49e9: $80
	ret  nz                                          ; $49ea: $c0

	ld   b, b                                        ; $49eb: $40
	jr   nz, @+$22                                   ; $49ec: $20 $20

	db   $10                                         ; $49ee: $10
	db   $10                                         ; $49ef: $10
	ld   hl, sp-$08                                  ; $49f0: $f8 $f8
	add  sp, $18                                     ; $49f2: $e8 $18
	db   $f4                                         ; $49f4: $f4
	call z, $7cc4                                    ; $49f5: $cc $c4 $7c
	ld   hl, sp-$08                                  ; $49f8: $f8 $f8
	nop                                              ; $49fa: $00
	nop                                              ; $49fb: $00
	nop                                              ; $49fc: $00
	nop                                              ; $49fd: $00
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	nop                                              ; $4a06: $00
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	nop                                              ; $4a0b: $00
	ld   bc, $0001                                   ; $4a0c: $01 $01 $00
	nop                                              ; $4a0f: $00
	inc  bc                                          ; $4a10: $03
	inc  bc                                          ; $4a11: $03
	inc  b                                           ; $4a12: $04
	rlca                                             ; $4a13: $07

jr_012_4a14:
	ld   a, [bc]                                     ; $4a14: $0a
	ld   c, $1c                                      ; $4a15: $0e $1c
	dec  e                                           ; $4a17: $1d
	ld   [$0809], sp                                 ; $4a18: $08 $09 $08
	ld   c, $10                                      ; $4a1b: $0e $10
	ld   e, $12                                      ; $4a1d: $1e $12
	rra                                              ; $4a1f: $1f
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	nop                                              ; $4a25: $00
	inc  bc                                          ; $4a26: $03
	inc  bc                                          ; $4a27: $03
	dec  b                                           ; $4a28: $05
	rlca                                             ; $4a29: $07
	ld   a, c                                        ; $4a2a: $79
	ld   a, a                                        ; $4a2b: $7f
	adc  c                                           ; $4a2c: $89
	rst  $38                                         ; $4a2d: $ff
	ret  nz                                          ; $4a2e: $c0

	rst  $38                                         ; $4a2f: $ff
	nop                                              ; $4a30: $00
	rst  $38                                         ; $4a31: $ff
	nop                                              ; $4a32: $00
	rst  $38                                         ; $4a33: $ff
	nop                                              ; $4a34: $00
	rst  $38                                         ; $4a35: $ff
	nop                                              ; $4a36: $00
	rst  $38                                         ; $4a37: $ff
	jr   nz, @+$01                                   ; $4a38: $20 $ff

	inc  h                                           ; $4a3a: $24
	cpl                                              ; $4a3b: $2f
	ld   h, $76                                      ; $4a3c: $26 $76
	ld   [hl], a                                     ; $4a3e: $77
	db   $dd                                         ; $4a3f: $dd
	nop                                              ; $4a40: $00
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	add  b                                           ; $4a44: $80
	add  b                                           ; $4a45: $80
	nop                                              ; $4a46: $00
	nop                                              ; $4a47: $00
	ld   a, h                                        ; $4a48: $7c
	ld   a, h                                        ; $4a49: $7c
	add  e                                           ; $4a4a: $83
	rst  $38                                         ; $4a4b: $ff
	nop                                              ; $4a4c: $00
	rst  $38                                         ; $4a4d: $ff
	inc  bc                                          ; $4a4e: $03
	rst  $38                                         ; $4a4f: $ff
	nop                                              ; $4a50: $00
	rst  $38                                         ; $4a51: $ff
	nop                                              ; $4a52: $00
	rst  $38                                         ; $4a53: $ff
	ld   b, c                                        ; $4a54: $41
	rst  $38                                         ; $4a55: $ff
	jr   nz, @+$01                                   ; $4a56: $20 $ff

	inc  h                                           ; $4a58: $24
	cp   l                                           ; $4a59: $bd
	ld   [de], a                                     ; $4a5a: $12
	sbc  d                                           ; $4a5b: $9a
	ld   [de], a                                     ; $4a5c: $12
	sub  e                                           ; $4a5d: $93
	ld   [de], a                                     ; $4a5e: $12
	ccf                                              ; $4a5f: $3f
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	nop                                              ; $4a67: $00
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	ret  nz                                          ; $4a6c: $c0

	ret  nz                                          ; $4a6d: $c0

	add  b                                           ; $4a6e: $80
	add  b                                           ; $4a6f: $80
	ld   b, b                                        ; $4a70: $40
	ret  nz                                          ; $4a71: $c0

	jr   nz, jr_012_4a14                             ; $4a72: $20 $a0

	db   $10                                         ; $4a74: $10
	ret  nc                                          ; $4a75: $d0

jr_012_4a76:
	adc  b                                           ; $4a76: $88
	ret  c                                           ; $4a77: $d8

	adc  b                                           ; $4a78: $88
	sbc  b                                           ; $4a79: $98
	ld   b, h                                        ; $4a7a: $44
	ld   a, h                                        ; $4a7b: $7c
	ld   b, h                                        ; $4a7c: $44
	ld   a, h                                        ; $4a7d: $7c
	ld   d, h                                        ; $4a7e: $54
	db   $fc                                         ; $4a7f: $fc
	ld   [de], a                                     ; $4a80: $12
	rra                                              ; $4a81: $1f
	ld   a, [bc]                                     ; $4a82: $0a
	rrca                                             ; $4a83: $0f
	dec  bc                                          ; $4a84: $0b
	rrca                                             ; $4a85: $0f
	dec  b                                           ; $4a86: $05
	rlca                                             ; $4a87: $07
	dec  c                                           ; $4a88: $0d
	rrca                                             ; $4a89: $0f
	rrca                                             ; $4a8a: $0f
	dec  bc                                          ; $4a8b: $0b
	rrca                                             ; $4a8c: $0f
	add  hl, bc                                      ; $4a8d: $09
	rrca                                             ; $4a8e: $0f
	add  hl, bc                                      ; $4a8f: $09
	rlca                                             ; $4a90: $07
	dec  b                                           ; $4a91: $05
	inc  bc                                          ; $4a92: $03
	inc  bc                                          ; $4a93: $03
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
	ld   [hl], a                                     ; $4aa0: $77
	db   $dd                                         ; $4aa1: $dd
	rst  $38                                         ; $4aa2: $ff
	adc  h                                           ; $4aa3: $8c
	rst  $38                                         ; $4aa4: $ff
	ld   [hl], h                                     ; $4aa5: $74
	rst  $38                                         ; $4aa6: $ff
	sbc  h                                           ; $4aa7: $9c
	rst  $38                                         ; $4aa8: $ff
	ld   a, h                                        ; $4aa9: $7c
	or   a                                           ; $4aaa: $b7
	or   h                                           ; $4aab: $b4
	sub  e                                           ; $4aac: $93
	jr   c, jr_012_4a76                              ; $4aad: $38 $c7

	nop                                              ; $4aaf: $00
	ld   a, [hl]                                     ; $4ab0: $7e
	add  c                                           ; $4ab1: $81
	rst  $38                                         ; $4ab2: $ff
	add  b                                           ; $4ab3: $80
	cp   a                                           ; $4ab4: $bf
	jp   $427e                                       ; $4ab5: $c3 $7e $42


	dec  l                                           ; $4ab8: $2d
	inc  sp                                          ; $4ab9: $33
	dec  de                                          ; $4aba: $1b
	inc  e                                           ; $4abb: $1c
	ld   a, a                                        ; $4abc: $7f
	ld   h, a                                        ; $4abd: $67
	db   $e4                                         ; $4abe: $e4
	and  a                                           ; $4abf: $a7
	rla                                              ; $4ac0: $17
	cp   l                                           ; $4ac1: $bd
	cp   a                                           ; $4ac2: $bf
	add  sp, -$41                                    ; $4ac3: $e8 $bf
	xor  $ff                                         ; $4ac5: $ee $ff
	ld   sp, hl                                      ; $4ac7: $f9
	rst  $38                                         ; $4ac8: $ff
	cp   [hl]                                        ; $4ac9: $be
	ld   sp, hl                                      ; $4aca: $f9
	add  hl, sp                                      ; $4acb: $39
	ret                                              ; $4acc: $c9


	inc  e                                           ; $4acd: $1c
	db   $e3                                         ; $4ace: $e3
	nop                                              ; $4acf: $00
	ld   a, [hl]                                     ; $4ad0: $7e
	add  c                                           ; $4ad1: $81
	rst  $38                                         ; $4ad2: $ff
	ld   bc, $c3fd                                   ; $4ad3: $01 $fd $c3
	ld   a, [hl]                                     ; $4ad6: $7e
	ld   b, d                                        ; $4ad7: $42
	or   h                                           ; $4ad8: $b4
	call z, $38d8                                    ; $4ad9: $cc $d8 $38
	cp   $e6                                         ; $4adc: $fe $e6
	daa                                              ; $4ade: $27
	push hl                                          ; $4adf: $e5
	ld   e, h                                        ; $4ae0: $5c
	db   $fc                                         ; $4ae1: $fc
	call nc, $90f4                                   ; $4ae2: $d4 $f4 $90
	ldh  a, [hScriptOpcodeParams]                                    ; $4ae5: $f0 $a0
	ldh  [$b0], a                                    ; $4ae7: $e0 $b0
	ldh  a, [$f0]                                    ; $4ae9: $f0 $f0
	ret  nc                                          ; $4aeb: $d0

	ldh  a, [$90]                                    ; $4aec: $f0 $90
	ldh  a, [$90]                                    ; $4aee: $f0 $90
	db   $fc                                         ; $4af0: $fc
	cp   h                                           ; $4af1: $bc
	jp   c, $bee6                                    ; $4af2: $da $e6 $be

	jp   nz, $83fd                                   ; $4af5: $c2 $fd $83

	rst  $28                                         ; $4af8: $ef
	or   c                                           ; $4af9: $b1
	cp   a                                           ; $4afa: $bf
	pop  hl                                          ; $4afb: $e1
	ld   a, a                                        ; $4afc: $7f
	ld   h, c                                        ; $4afd: $61
	xor  a                                           ; $4afe: $af
	or   c                                           ; $4aff: $b1
	ld   bc, $0201                                   ; $4b00: $01 $01 $02
	ld   [bc], a                                     ; $4b03: $02
	ld   b, $04                                      ; $4b04: $06 $04
	dec  b                                           ; $4b06: $05
	dec  b                                           ; $4b07: $05
	dec  bc                                          ; $4b08: $0b
	dec  bc                                          ; $4b09: $0b
	add  hl, bc                                      ; $4b0a: $09
	add  hl, bc                                      ; $4b0b: $09
	inc  de                                          ; $4b0c: $13
	inc  de                                          ; $4b0d: $13
	rla                                              ; $4b0e: $17
	ld   d, $1f                                      ; $4b0f: $16 $1f
	dec  e                                           ; $4b11: $1d
	rra                                              ; $4b12: $1f
	inc  d                                           ; $4b13: $14
	dec  d                                           ; $4b14: $15
	ld   e, $0a                                      ; $4b15: $1e $0a
	rrca                                             ; $4b17: $0f
	rlca                                             ; $4b18: $07
	rlca                                             ; $4b19: $07
	ld   bc, $0101                                   ; $4b1a: $01 $01 $01
	ld   bc, $0202                                   ; $4b1d: $01 $02 $02
	dec  h                                           ; $4b20: $25
	ld   h, $25                                      ; $4b21: $26 $25
	ld   h, $25                                      ; $4b23: $26 $25
	ld   h, $36                                      ; $4b25: $26 $36
	inc  hl                                          ; $4b27: $23
	ld   [de], a                                     ; $4b28: $12
	inc  sp                                          ; $4b29: $33
	add  hl, de                                      ; $4b2a: $19
	ld   de, $8888                                   ; $4b2b: $11 $88 $88
	and  $e6                                         ; $4b2e: $e6 $e6
	call nc, $e834                                   ; $4b30: $d4 $34 $e8
	jr   @-$0f                                       ; $4b33: $18 $ef

	rra                                              ; $4b35: $1f
	dec  d                                           ; $4b36: $15
	push af                                          ; $4b37: $f5
	db   $fd                                         ; $4b38: $fd
	ld   sp, hl                                      ; $4b39: $f9
	add  hl, bc                                      ; $4b3a: $09
	add  hl, de                                      ; $4b3b: $19
	add  hl, bc                                      ; $4b3c: $09
	xor  c                                           ; $4b3d: $a9
	rrca                                             ; $4b3e: $0f
	ld   c, a                                        ; $4b3f: $4f
	and  h                                           ; $4b40: $a4
	ld   h, h                                        ; $4b41: $64
	and  h                                           ; $4b42: $a4
	ld   h, h                                        ; $4b43: $64
	and  h                                           ; $4b44: $a4
	ld   h, h                                        ; $4b45: $64
	ld   l, h                                        ; $4b46: $6c
	call nz, $c84c                                   ; $4b47: $c4 $4c $c8
	sbc  b                                           ; $4b4a: $98
	adc  b                                           ; $4b4b: $88
	sub  b                                           ; $4b4c: $90
	sub  b                                           ; $4b4d: $90
	jr   nz, jr_012_4b70                             ; $4b4e: $20 $20

	ld   b, b                                        ; $4b50: $40
	ld   b, b                                        ; $4b51: $40
	add  c                                           ; $4b52: $81
	add  b                                           ; $4b53: $80
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	ld   [hl], b                                     ; $4b56: $70
	ld   b, b                                        ; $4b57: $40
	ld   a, a                                        ; $4b58: $7f
	ld   a, a                                        ; $4b59: $7f
	ld   [hl], b                                     ; $4b5a: $70
	ld   e, b                                        ; $4b5b: $58
	ld   [hl], b                                     ; $4b5c: $70
	dec  [hl]                                        ; $4b5d: $35
	jr   nc, jr_012_4b92                             ; $4b5e: $30 $32

	ei                                               ; $4b60: $fb
	ld   a, l                                        ; $4b61: $7d
	rra                                              ; $4b62: $1f
	ld   de, $113f                                   ; $4b63: $11 $3f $11
	rst  $38                                         ; $4b66: $ff
	sub  c                                           ; $4b67: $91
	rst  $28                                         ; $4b68: $ef
	or   c                                           ; $4b69: $b1
	db   $ed                                         ; $4b6a: $ed
	or   e                                           ; $4b6b: $b3
	ldh  [c], a                                      ; $4b6c: $e2
	cp   [hl]                                        ; $4b6d: $be
	db   $fc                                         ; $4b6e: $fc
	cp   h                                           ; $4b6f: $bc

jr_012_4b70:
	ldh  a, [$f0]                                    ; $4b70: $f0 $f0
	add  b                                           ; $4b72: $80
	add  b                                           ; $4b73: $80
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	add  b                                           ; $4b76: $80
	add  b                                           ; $4b77: $80
	add  b                                           ; $4b78: $80
	add  b                                           ; $4b79: $80
	add  b                                           ; $4b7a: $80
	add  b                                           ; $4b7b: $80
	add  b                                           ; $4b7c: $80
	add  b                                           ; $4b7d: $80
	ld   b, b                                        ; $4b7e: $40
	ld   b, b                                        ; $4b7f: $40
	ld   [bc], a                                     ; $4b80: $02
	ld   [bc], a                                     ; $4b81: $02
	rlca                                             ; $4b82: $07
	rlca                                             ; $4b83: $07
	inc  b                                           ; $4b84: $04
	inc  b                                           ; $4b85: $04
	ld   [$1008], sp                                 ; $4b86: $08 $08 $10
	jr   jr_012_4b9b                                 ; $4b89: $18 $10

	db   $10                                         ; $4b8b: $10
	jr   nz, jr_012_4bbe                             ; $4b8c: $20 $30

	jr   nz, jr_012_4bb0                             ; $4b8e: $20 $20

	ld   a, a                                        ; $4b90: $7f
	ld   a, a                                        ; $4b91: $7f

jr_012_4b92:
	ld   e, [hl]                                     ; $4b92: $5e
	ld   h, c                                        ; $4b93: $61
	cp   h                                           ; $4b94: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b95: $cf
	adc  a                                           ; $4b96: $8f
	ld   hl, sp+$7f                                  ; $4b97: $f8 $7f
	ld   a, a                                        ; $4b99: $7f
	nop                                              ; $4b9a: $00

jr_012_4b9b:
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	ld   bc, $ffab                                   ; $4ba0: $01 $ab $ff
	rst  $38                                         ; $4ba3: $ff
	ld   [bc], a                                     ; $4ba4: $02
	ld   [bc], a                                     ; $4ba5: $02
	inc  b                                           ; $4ba6: $04
	inc  b                                           ; $4ba7: $04
	inc  b                                           ; $4ba8: $04
	inc  b                                           ; $4ba9: $04
	ld   [$0808], sp                                 ; $4baa: $08 $08 $08
	ld   [$1010], sp                                 ; $4bad: $08 $10 $10

jr_012_4bb0:
	db   $10                                         ; $4bb0: $10
	db   $10                                         ; $4bb1: $10
	and  b                                           ; $4bb2: $a0
	and  b                                           ; $4bb3: $a0
	and  b                                           ; $4bb4: $a0
	and  b                                           ; $4bb5: $a0
	ldh  [$e0], a                                    ; $4bb6: $e0 $e0
	nop                                              ; $4bb8: $00
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00

jr_012_4bbe:
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	jr   nz, @+$37                                   ; $4bc0: $20 $35

	rst  $38                                         ; $4bc2: $ff
	rst  $38                                         ; $4bc3: $ff
	ld   b, b                                        ; $4bc4: $40
	ld   b, b                                        ; $4bc5: $40
	ld   h, b                                        ; $4bc6: $60
	ld   b, b                                        ; $4bc7: $40
	jr   nz, @+$22                                   ; $4bc8: $20 $20

	jr   nz, @+$22                                   ; $4bca: $20 $20

	jr   nz, jr_012_4bee                             ; $4bcc: $20 $20

	jr   nz, jr_012_4c00                             ; $4bce: $20 $30

	inc  de                                          ; $4bd0: $13
	inc  de                                          ; $4bd1: $13
	dec  d                                           ; $4bd2: $15
	ld   d, $14                                      ; $4bd3: $16 $14
	rla                                              ; $4bd5: $17
	rra                                              ; $4bd6: $1f
	inc  e                                           ; $4bd7: $1c
	inc  bc                                          ; $4bd8: $03
	inc  bc                                          ; $4bd9: $03
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	ld   b, b                                        ; $4be0: $40
	ld   b, b                                        ; $4be1: $40
	ret  nz                                          ; $4be2: $c0

	ret  nz                                          ; $4be3: $c0

	ret  nz                                          ; $4be4: $c0

	ld   b, b                                        ; $4be5: $40
	ld   b, b                                        ; $4be6: $40
	ld   b, b                                        ; $4be7: $40
	ld   h, b                                        ; $4be8: $60
	jr   nz, jr_012_4c0b                             ; $4be9: $20 $20

	jr   nz, jr_012_4c1d                             ; $4beb: $20 $30

	db   $10                                         ; $4bed: $10

jr_012_4bee:
	db   $10                                         ; $4bee: $10
	db   $10                                         ; $4bef: $10
	ld   hl, sp-$08                                  ; $4bf0: $f8 $f8
	add  sp, $18                                     ; $4bf2: $e8 $18
	db   $f4                                         ; $4bf4: $f4
	call z, $7cc4                                    ; $4bf5: $cc $c4 $7c
	ld   hl, sp-$08                                  ; $4bf8: $f8 $f8
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00

jr_012_4c00:
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00

jr_012_4c0b:
	nop                                              ; $4c0b: $00
	inc  bc                                          ; $4c0c: $03
	inc  bc                                          ; $4c0d: $03
	ld   bc, $0201                                   ; $4c0e: $01 $01 $02
	inc  bc                                          ; $4c11: $03
	inc  b                                           ; $4c12: $04
	dec  b                                           ; $4c13: $05
	ld   [$110b], sp                                 ; $4c14: $08 $0b $11
	dec  de                                          ; $4c17: $1b
	ld   de, $2219                                   ; $4c18: $11 $19 $22
	ld   a, $22                                      ; $4c1b: $3e $22

jr_012_4c1d:
	ld   a, $2a                                      ; $4c1d: $3e $2a
	ccf                                              ; $4c1f: $3f
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	ld   bc, $0001                                   ; $4c24: $01 $01 $00
	nop                                              ; $4c27: $00
	ld   a, $3e                                      ; $4c28: $3e $3e
	pop  bc                                          ; $4c2a: $c1
	rst  $38                                         ; $4c2b: $ff
	nop                                              ; $4c2c: $00
	rst  $38                                         ; $4c2d: $ff
	ret  nz                                          ; $4c2e: $c0

	rst  $38                                         ; $4c2f: $ff

jr_012_4c30:
	nop                                              ; $4c30: $00
	rst  $38                                         ; $4c31: $ff
	nop                                              ; $4c32: $00
	rst  $38                                         ; $4c33: $ff
	add  d                                           ; $4c34: $82
	rst  $38                                         ; $4c35: $ff
	inc  b                                           ; $4c36: $04
	rst  $38                                         ; $4c37: $ff
	inc  h                                           ; $4c38: $24
	cp   l                                           ; $4c39: $bd
	ld   c, b                                        ; $4c3a: $48
	ld   e, c                                        ; $4c3b: $59
	ld   c, b                                        ; $4c3c: $48
	ret                                              ; $4c3d: $c9


	ld   c, b                                        ; $4c3e: $48
	db   $fc                                         ; $4c3f: $fc
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	ret  nz                                          ; $4c46: $c0

	ret  nz                                          ; $4c47: $c0

	and  b                                           ; $4c48: $a0
	ldh  [$9e], a                                    ; $4c49: $e0 $9e
	cp   $91                                         ; $4c4b: $fe $91
	rst  $38                                         ; $4c4d: $ff
	inc  bc                                          ; $4c4e: $03
	rst  $38                                         ; $4c4f: $ff
	nop                                              ; $4c50: $00
	rst  $38                                         ; $4c51: $ff
	nop                                              ; $4c52: $00
	rst  $38                                         ; $4c53: $ff

jr_012_4c54:
	nop                                              ; $4c54: $00
	rst  $38                                         ; $4c55: $ff
	nop                                              ; $4c56: $00
	rst  $38                                         ; $4c57: $ff
	inc  b                                           ; $4c58: $04
	rst  $38                                         ; $4c59: $ff
	inc  h                                           ; $4c5a: $24
	db   $f4                                         ; $4c5b: $f4
	ld   h, h                                        ; $4c5c: $64
	ld   l, [hl]                                     ; $4c5d: $6e
	xor  $bb                                         ; $4c5e: $ee $bb
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
	add  b                                           ; $4c6c: $80
	add  b                                           ; $4c6d: $80
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	ret  nz                                          ; $4c70: $c0

	ret  nz                                          ; $4c71: $c0

	jr   nz, jr_012_4c54                             ; $4c72: $20 $e0

	ld   d, b                                        ; $4c74: $50
	ld   [hl], b                                     ; $4c75: $70

jr_012_4c76:
	jr   c, jr_012_4c30                              ; $4c76: $38 $b8

	db   $10                                         ; $4c78: $10
	sub  b                                           ; $4c79: $90
	db   $10                                         ; $4c7a: $10
	ld   [hl], b                                     ; $4c7b: $70
	ld   [$4878], sp                                 ; $4c7c: $08 $78 $48
	ld   hl, sp+$3a                                  ; $4c7f: $f8 $3a
	ccf                                              ; $4c81: $3f
	dec  hl                                          ; $4c82: $2b
	cpl                                              ; $4c83: $2f
	add  hl, bc                                      ; $4c84: $09
	rrca                                             ; $4c85: $0f
	dec  b                                           ; $4c86: $05
	rlca                                             ; $4c87: $07
	dec  c                                           ; $4c88: $0d
	rrca                                             ; $4c89: $0f
	rrca                                             ; $4c8a: $0f
	dec  bc                                          ; $4c8b: $0b
	rrca                                             ; $4c8c: $0f
	add  hl, bc                                      ; $4c8d: $09
	rrca                                             ; $4c8e: $0f
	add  hl, bc                                      ; $4c8f: $09
	rlca                                             ; $4c90: $07
	dec  b                                           ; $4c91: $05
	inc  bc                                          ; $4c92: $03
	inc  bc                                          ; $4c93: $03
	nop                                              ; $4c94: $00
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	add  sp, -$43                                    ; $4ca0: $e8 $bd
	db   $fd                                         ; $4ca2: $fd
	rla                                              ; $4ca3: $17
	db   $fd                                         ; $4ca4: $fd
	ld   [hl], a                                     ; $4ca5: $77
	rst  $38                                         ; $4ca6: $ff
	sbc  a                                           ; $4ca7: $9f
	rst  $38                                         ; $4ca8: $ff
	ld   a, l                                        ; $4ca9: $7d
	sbc  a                                           ; $4caa: $9f
	sbc  h                                           ; $4cab: $9c
	sub  e                                           ; $4cac: $93
	jr   c, jr_012_4c76                              ; $4cad: $38 $c7

	nop                                              ; $4caf: $00
	ld   a, [hl]                                     ; $4cb0: $7e
	add  c                                           ; $4cb1: $81
	rst  $38                                         ; $4cb2: $ff
	add  b                                           ; $4cb3: $80
	cp   l                                           ; $4cb4: $bd
	jp   $427e                                       ; $4cb5: $c3 $7e $42


	ld   l, $32                                      ; $4cb8: $2e $32
	add  hl, de                                      ; $4cba: $19
	rra                                              ; $4cbb: $1f
	ld   a, a                                        ; $4cbc: $7f
	ld   h, a                                        ; $4cbd: $67
	and  h                                           ; $4cbe: $a4
	and  a                                           ; $4cbf: $a7
	xor  $bb                                         ; $4cc0: $ee $bb
	rst  $38                                         ; $4cc2: $ff
	ld   sp, $2eff                                   ; $4cc3: $31 $ff $2e
	rst  $38                                         ; $4cc6: $ff
	add  hl, sp                                      ; $4cc7: $39
	rst  $38                                         ; $4cc8: $ff
	ld   a, $ed                                      ; $4cc9: $3e $ed
	dec  l                                           ; $4ccb: $2d
	ret                                              ; $4ccc: $c9


	inc  e                                           ; $4ccd: $1c
	db   $e3                                         ; $4cce: $e3
	nop                                              ; $4ccf: $00
	ld   a, [hl]                                     ; $4cd0: $7e
	add  c                                           ; $4cd1: $81
	rst  $38                                         ; $4cd2: $ff
	ld   bc, $c3bd                                   ; $4cd3: $01 $bd $c3
	ld   a, [hl]                                     ; $4cd6: $7e
	ld   b, d                                        ; $4cd7: $42
	ld   [hl], h                                     ; $4cd8: $74
	ld   c, h                                        ; $4cd9: $4c
	sbc  b                                           ; $4cda: $98
	ld   hl, sp-$02                                  ; $4cdb: $f8 $fe
	and  $25                                         ; $4cdd: $e6 $25
	push hl                                          ; $4cdf: $e5
	ld   c, b                                        ; $4ce0: $48
	ld   hl, sp+$50                                  ; $4ce1: $f8 $50
	ldh  a, [$d0]                                    ; $4ce3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $4ce5: $f0 $a0
	ldh  [$b0], a                                    ; $4ce7: $e0 $b0
	ldh  a, [$f0]                                    ; $4ce9: $f0 $f0
	ret  nc                                          ; $4ceb: $d0

	ldh  a, [$90]                                    ; $4cec: $f0 $90
	ldh  a, [$90]                                    ; $4cee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $4cf0: $e0 $a0
	ret  nz                                          ; $4cf2: $c0

	ret  nz                                          ; $4cf3: $c0

	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	nop                                              ; $4cf9: $00
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	ld   bc, $0301                                   ; $4d00: $01 $01 $03

Jump_012_4d03:
	ld   [bc], a                                     ; $4d03: $02
	ld   [bc], a                                     ; $4d04: $02
	ld   [bc], a                                     ; $4d05: $02
	inc  bc                                          ; $4d06: $03
	inc  bc                                          ; $4d07: $03
	inc  bc                                          ; $4d08: $03
	inc  bc                                          ; $4d09: $03
	inc  bc                                          ; $4d0a: $03
	inc  bc                                          ; $4d0b: $03
	inc  bc                                          ; $4d0c: $03
	inc  bc                                          ; $4d0d: $03
	ld   [bc], a                                     ; $4d0e: $02
	ld   [bc], a                                     ; $4d0f: $02
	ld   bc, $0101                                   ; $4d10: $01 $01 $01
	ld   bc, $0000                                   ; $4d13: $01 $00 $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	ld   bc, $0101                                   ; $4d1a: $01 $01 $01
	ld   bc, $0202                                   ; $4d1d: $01 $02 $02
	dec  h                                           ; $4d20: $25
	ld   h, $75                                      ; $4d21: $26 $75
	halt                                             ; $4d23: $76
	db   $fd                                         ; $4d24: $fd
	adc  [hl]                                        ; $4d25: $8e
	cp   $0b                                         ; $4d26: $fe $0b
	cp   $03                                         ; $4d28: $fe $03
	ld   [hl], a                                     ; $4d2a: $77
	adc  a                                           ; $4d2b: $8f
	dec  e                                           ; $4d2c: $1d
	ld   sp, hl                                      ; $4d2d: $f9
	pop  hl                                          ; $4d2e: $e1
	pop  af                                          ; $4d2f: $f1
	ld   bc, $8001                                   ; $4d30: $01 $01 $80
	add  c                                           ; $4d33: $81
	ret  nz                                          ; $4d34: $c0

	ldh  [$bf], a                                    ; $4d35: $e0 $bf
	cp   a                                           ; $4d37: $bf
	db   $fd                                         ; $4d38: $fd
	ld   sp, hl                                      ; $4d39: $f9
	add  hl, bc                                      ; $4d3a: $09
	ld   e, c                                        ; $4d3b: $59
	add  hl, bc                                      ; $4d3c: $09
	xor  c                                           ; $4d3d: $a9
	rrca                                             ; $4d3e: $0f
	ld   c, a                                        ; $4d3f: $4f
	and  h                                           ; $4d40: $a4
	ld   h, h                                        ; $4d41: $64
	xor  [hl]                                        ; $4d42: $ae
	ld   l, [hl]                                     ; $4d43: $6e
	cp   a                                           ; $4d44: $bf
	ld   [hl], c                                     ; $4d45: $71
	ld   a, a                                        ; $4d46: $7f
	ret  nc                                          ; $4d47: $d0

	ld   a, a                                        ; $4d48: $7f
	ret  nz                                          ; $4d49: $c0

	cp   $c1                                         ; $4d4a: $fe $c1
	ld   [hl], b                                     ; $4d4c: $70
	adc  a                                           ; $4d4d: $8f
	ld   l, a                                        ; $4d4e: $6f
	sbc  a                                           ; $4d4f: $9f
	ld   a, $f0                                      ; $4d50: $3e $f0
	ld   sp, hl                                      ; $4d52: $f9
	pop  bc                                          ; $4d53: $c1
	db   $e3                                         ; $4d54: $e3
	add  a                                           ; $4d55: $87
	db   $fd                                         ; $4d56: $fd
	db   $fd                                         ; $4d57: $fd
	ld   a, a                                        ; $4d58: $7f
	ld   a, a                                        ; $4d59: $7f
	ld   h, b                                        ; $4d5a: $60
	ld   c, d                                        ; $4d5b: $4a
	ld   h, b                                        ; $4d5c: $60
	dec  [hl]                                        ; $4d5d: $35
	jr   nz, jr_012_4d82                             ; $4d5e: $20 $22

	add  b                                           ; $4d60: $80
	add  b                                           ; $4d61: $80
	add  b                                           ; $4d62: $80
	add  b                                           ; $4d63: $80
	ld   b, b                                        ; $4d64: $40
	ld   b, b                                        ; $4d65: $40
	ret  nz                                          ; $4d66: $c0

	ret  nz                                          ; $4d67: $c0

	ret  nz                                          ; $4d68: $c0

	ret  nz                                          ; $4d69: $c0

	ret  nz                                          ; $4d6a: $c0

	ret  nz                                          ; $4d6b: $c0

	ret  nz                                          ; $4d6c: $c0

	ret  nz                                          ; $4d6d: $c0

	ld   b, b                                        ; $4d6e: $40
	ld   b, b                                        ; $4d6f: $40
	add  b                                           ; $4d70: $80
	add  b                                           ; $4d71: $80
	add  b                                           ; $4d72: $80
	add  b                                           ; $4d73: $80
	nop                                              ; $4d74: $00
	nop                                              ; $4d75: $00
	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	add  b                                           ; $4d7b: $80
	add  b                                           ; $4d7c: $80
	add  b                                           ; $4d7d: $80
	ld   b, b                                        ; $4d7e: $40
	ld   b, b                                        ; $4d7f: $40
	ld   [bc], a                                     ; $4d80: $02
	ld   [bc], a                                     ; $4d81: $02

jr_012_4d82:
	inc  bc                                          ; $4d82: $03
	inc  bc                                          ; $4d83: $03
	ld   b, $04                                      ; $4d84: $06 $04
	inc  b                                           ; $4d86: $04
	inc  b                                           ; $4d87: $04
	inc  c                                           ; $4d88: $0c
	ld   [$0808], sp                                 ; $4d89: $08 $08 $08
	jr   jr_012_4d9e                                 ; $4d8c: $18 $10

	db   $10                                         ; $4d8e: $10
	db   $10                                         ; $4d8f: $10
	ccf                                              ; $4d90: $3f
	ccf                                              ; $4d91: $3f
	cpl                                              ; $4d92: $2f
	jr   nc, jr_012_4df3                             ; $4d93: $30 $5e

	ld   h, a                                        ; $4d95: $67
	ld   b, a                                        ; $4d96: $47
	ld   a, h                                        ; $4d97: $7c
	ccf                                              ; $4d98: $3f
	ccf                                              ; $4d99: $3f
	nop                                              ; $4d9a: $00
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	nop                                              ; $4d9d: $00

jr_012_4d9e:
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	ld   bc, $ffab                                   ; $4da0: $01 $ab $ff
	rst  $38                                         ; $4da3: $ff
	ld   b, $02                                      ; $4da4: $06 $02
	inc  b                                           ; $4da6: $04
	inc  b                                           ; $4da7: $04
	inc  c                                           ; $4da8: $0c
	inc  b                                           ; $4da9: $04
	ld   [$0808], sp                                 ; $4daa: $08 $08 $08
	ld   [$0818], sp                                 ; $4dad: $08 $18 $08
	sub  b                                           ; $4db0: $90
	sub  b                                           ; $4db1: $90
	ld   d, b                                        ; $4db2: $50
	ret  nc                                          ; $4db3: $d0

	ld   d, b                                        ; $4db4: $50
	ret  nc                                          ; $4db5: $d0

	ldh  a, [rSVBK]                                  ; $4db6: $f0 $70
	add  b                                           ; $4db8: $80
	add  b                                           ; $4db9: $80
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	nop                                              ; $4dbd: $00
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	jr   nz, jr_012_4df7                             ; $4dc0: $20 $35

	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	ld   h, b                                        ; $4dc4: $60
	ld   b, b                                        ; $4dc5: $40
	jr   nz, @+$22                                   ; $4dc6: $20 $20

	jr   nc, jr_012_4dea                             ; $4dc8: $30 $20

	db   $10                                         ; $4dca: $10
	db   $10                                         ; $4dcb: $10
	db   $10                                         ; $4dcc: $10
	db   $10                                         ; $4dcd: $10
	jr   jr_012_4de0                                 ; $4dce: $18 $10

	add  hl, bc                                      ; $4dd0: $09
	add  hl, bc                                      ; $4dd1: $09
	ld   a, [bc]                                     ; $4dd2: $0a
	dec  bc                                          ; $4dd3: $0b
	ld   a, [bc]                                     ; $4dd4: $0a
	dec  bc                                          ; $4dd5: $0b
	rrca                                             ; $4dd6: $0f
	ld   c, $01                                      ; $4dd7: $0e $01
	ld   bc, $0000                                   ; $4dd9: $01 $00 $00
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00

jr_012_4de0:
	ld   b, b                                        ; $4de0: $40
	ld   b, b                                        ; $4de1: $40
	ret  nz                                          ; $4de2: $c0

	ret  nz                                          ; $4de3: $c0

	ld   h, b                                        ; $4de4: $60
	jr   nz, jr_012_4e07                             ; $4de5: $20 $20

	jr   nz, @+$32                                   ; $4de7: $20 $30

	db   $10                                         ; $4de9: $10

jr_012_4dea:
	db   $10                                         ; $4dea: $10
	db   $10                                         ; $4deb: $10
	jr   @+$0a                                       ; $4dec: $18 $08

	ld   [$fc08], sp                                 ; $4dee: $08 $08 $fc
	db   $fc                                         ; $4df1: $fc
	db   $f4                                         ; $4df2: $f4

jr_012_4df3:
	inc  c                                           ; $4df3: $0c
	ld   a, d                                        ; $4df4: $7a
	and  $e2                                         ; $4df5: $e6 $e2

jr_012_4df7:
	ld   a, $fc                                      ; $4df7: $3e $fc
	db   $fc                                         ; $4df9: $fc
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00

jr_012_4e07:
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	inc  bc                                          ; $4e16: $03
	inc  bc                                          ; $4e17: $03
	ld   bc, $0301                                   ; $4e18: $01 $01 $03
	inc  bc                                          ; $4e1b: $03
	inc  b                                           ; $4e1c: $04
	ld   b, $08                                      ; $4e1d: $06 $08
	ld   c, $00                                      ; $4e1f: $0e $00
	nop                                              ; $4e21: $00
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	nop                                              ; $4e2d: $00
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	inc  bc                                          ; $4e30: $03
	inc  bc                                          ; $4e31: $03
	ccf                                              ; $4e32: $3f
	ccf                                              ; $4e33: $3f

jr_012_4e34:
	ret  nz                                          ; $4e34: $c0

	rst  $38                                         ; $4e35: $ff
	nop                                              ; $4e36: $00
	rst  $38                                         ; $4e37: $ff
	ret  nz                                          ; $4e38: $c0

	rst  $38                                         ; $4e39: $ff
	nop                                              ; $4e3a: $00
	ld   a, a                                        ; $4e3b: $7f
	nop                                              ; $4e3c: $00
	ccf                                              ; $4e3d: $3f
	ld   c, $ff                                      ; $4e3e: $0e $ff
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	nop                                              ; $4e46: $00
	nop                                              ; $4e47: $00
	nop                                              ; $4e48: $00
	nop                                              ; $4e49: $00
	nop                                              ; $4e4a: $00
	nop                                              ; $4e4b: $00
	nop                                              ; $4e4c: $00
	nop                                              ; $4e4d: $00
	nop                                              ; $4e4e: $00
	nop                                              ; $4e4f: $00
	ret  nz                                          ; $4e50: $c0

	ret  nz                                          ; $4e51: $c0

	jr   nz, jr_012_4e34                             ; $4e52: $20 $e0

	sbc  [hl]                                        ; $4e54: $9e
	cp   $11                                         ; $4e55: $fe $11
	rst  $38                                         ; $4e57: $ff
	inc  bc                                          ; $4e58: $03
	rst  $38                                         ; $4e59: $ff
	nop                                              ; $4e5a: $00
	rst  $38                                         ; $4e5b: $ff
	nop                                              ; $4e5c: $00
	rst  $38                                         ; $4e5d: $ff
	nop                                              ; $4e5e: $00
	rst  $38                                         ; $4e5f: $ff
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	nop                                              ; $4e68: $00
	nop                                              ; $4e69: $00
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	nop                                              ; $4e6e: $00
	nop                                              ; $4e6f: $00
	nop                                              ; $4e70: $00

jr_012_4e71:
	nop                                              ; $4e71: $00
	nop                                              ; $4e72: $00
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	nop                                              ; $4e75: $00
	add  b                                           ; $4e76: $80
	add  b                                           ; $4e77: $80
	nop                                              ; $4e78: $00
	nop                                              ; $4e79: $00
	add  b                                           ; $4e7a: $80
	add  b                                           ; $4e7b: $80
	ld   b, b                                        ; $4e7c: $40
	ld   b, b                                        ; $4e7d: $40
	jr   nz, @-$5e                                   ; $4e7e: $20 $a0

	db   $10                                         ; $4e80: $10
	ld   e, $10                                      ; $4e81: $1e $10
	dec  e                                           ; $4e83: $1d
	inc  h                                           ; $4e84: $24
	inc  a                                           ; $4e85: $3c
	add  hl, hl                                      ; $4e86: $29
	ccf                                              ; $4e87: $3f
	ld   a, [hl-]                                    ; $4e88: $3a
	ld   a, $2a                                      ; $4e89: $3e $2a
	ld   l, $0c                                      ; $4e8b: $2e $0c
	ld   c, $0c                                      ; $4e8d: $0e $0c
	rrca                                             ; $4e8f: $0f
	inc  b                                           ; $4e90: $04
	rlca                                             ; $4e91: $07
	inc  c                                           ; $4e92: $0c
	rrca                                             ; $4e93: $0f
	ld   c, $0b                                      ; $4e94: $0e $0b
	rrca                                             ; $4e96: $0f
	add  hl, bc                                      ; $4e97: $09
	rrca                                             ; $4e98: $0f
	add  hl, bc                                      ; $4e99: $09
	rlca                                             ; $4e9a: $07
	dec  b                                           ; $4e9b: $05
	inc  bc                                          ; $4e9c: $03
	inc  bc                                          ; $4e9d: $03
	ld   bc, $3001                                   ; $4e9e: $01 $01 $30
	rst  $38                                         ; $4ea1: $ff
	ld   b, b                                        ; $4ea2: $40
	rst  $38                                         ; $4ea3: $ff
	nop                                              ; $4ea4: $00
	ccf                                              ; $4ea5: $3f
	ld   bc, $127f                                   ; $4ea6: $01 $7f $12
	rst  $38                                         ; $4ea9: $ff
	ld   [de], a                                     ; $4eaa: $12
	rra                                              ; $4eab: $1f
	inc  h                                           ; $4eac: $24
	ld   h, l                                        ; $4ead: $65
	inc  h                                           ; $4eae: $24
	or   $64                                         ; $4eaf: $f6 $64
	rst  $38                                         ; $4eb1: $ff
	ld   h, h                                        ; $4eb2: $64
	rst  $38                                         ; $4eb3: $ff
	and  $bf                                         ; $4eb4: $e6 $bf
	or   $9f                                         ; $4eb6: $f6 $9f
	rst  $30                                         ; $4eb8: $f7
	dec  e                                           ; $4eb9: $1d
	rst  JumpTable                                         ; $4eba: $df
	ld   l, h                                        ; $4ebb: $6c
	ld   a, a                                        ; $4ebc: $7f
	cp   h                                           ; $4ebd: $bc
	rst  $38                                         ; $4ebe: $ff
	add  b                                           ; $4ebf: $80
	nop                                              ; $4ec0: $00
	rst  $38                                         ; $4ec1: $ff
	nop                                              ; $4ec2: $00
	rst  $38                                         ; $4ec3: $ff
	nop                                              ; $4ec4: $00
	rst  $38                                         ; $4ec5: $ff
	nop                                              ; $4ec6: $00
	ld   hl, sp+$00                                  ; $4ec7: $f8 $00
	ei                                               ; $4ec9: $fb
	nop                                              ; $4eca: $00
	ei                                               ; $4ecb: $fb
	db   $10                                         ; $4ecc: $10
	ei                                               ; $4ecd: $fb
	ld   [de], a                                     ; $4ece: $12
	inc  de                                          ; $4ecf: $13
	ld   [hl-], a                                    ; $4ed0: $32
	ccf                                              ; $4ed1: $3f
	dec  sp                                          ; $4ed2: $3b
	rst  $28                                         ; $4ed3: $ef
	dec  sp                                          ; $4ed4: $3b
	xor  $7f                                         ; $4ed5: $ee $7f
	add  $7f                                         ; $4ed7: $c6 $7f
	jp   nz, $f6eb                                   ; $4ed9: $c2 $eb $f6

	cp   $5d                                         ; $4edc: $fe $5d
	rst  $38                                         ; $4ede: $ff
	ld   bc, $1010                                   ; $4edf: $01 $10 $10
	db   $10                                         ; $4ee2: $10
	sub  b                                           ; $4ee3: $90
	ld   [$08b8], sp                                 ; $4ee4: $08 $b8 $08
	jr   c, jr_012_4e71                              ; $4ee7: $38 $88

	ld   hl, sp+$48                                  ; $4ee9: $f8 $48
	ld   hl, sp+$50                                  ; $4eeb: $f8 $50
	ldh  a, [$30]                                    ; $4eed: $f0 $30
	ldh  a, [rAUD4LEN]                               ; $4eef: $f0 $20
	ldh  [$30], a                                    ; $4ef1: $e0 $30
	ldh  a, [$f0]                                    ; $4ef3: $f0 $f0
	ret  nc                                          ; $4ef5: $d0

	ldh  a, [$d0]                                    ; $4ef6: $f0 $d0
	ldh  a, [$90]                                    ; $4ef8: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $4efa: $e0 $a0

Call_012_4efc:
	ret  nz                                          ; $4efc: $c0

	ret  nz                                          ; $4efd: $c0

	add  b                                           ; $4efe: $80
	add  b                                           ; $4eff: $80
	inc  bc                                          ; $4f00: $03
	ld   [bc], a                                     ; $4f01: $02
	rlca                                             ; $4f02: $07
	inc  b                                           ; $4f03: $04
	inc  b                                           ; $4f04: $04
	inc  b                                           ; $4f05: $04
	inc  c                                           ; $4f06: $0c
	ld   [$0808], sp                                 ; $4f07: $08 $08 $08
	ld   [$0b08], sp                                 ; $4f0a: $08 $08 $0b
	dec  bc                                          ; $4f0d: $0b
	dec  bc                                          ; $4f0e: $0b
	add  hl, bc                                      ; $4f0f: $09
	dec  de                                          ; $4f10: $1b
	ld   de, $171f                                   ; $4f11: $11 $1f $17
	rra                                              ; $4f14: $1f
	add  hl, de                                      ; $4f15: $19
	rra                                              ; $4f16: $1f
	ld   [de], a                                     ; $4f17: $12
	rra                                              ; $4f18: $1f
	db   $10                                         ; $4f19: $10
	rla                                              ; $4f1a: $17
	jr   jr_012_4f25                                 ; $4f1b: $18 $08

	rrca                                             ; $4f1d: $0f
	rlca                                             ; $4f1e: $07
	rlca                                             ; $4f1f: $07
	cp   [hl]                                        ; $4f20: $be
	pop  bc                                          ; $4f21: $c1
	rst  $38                                         ; $4f22: $ff
	ld   h, b                                        ; $4f23: $60
	ld   a, e                                        ; $4f24: $7b

jr_012_4f25:
	ld   e, l                                        ; $4f25: $5d
	ld   b, a                                        ; $4f26: $47
	ld   c, a                                        ; $4f27: $4f
	ld   h, h                                        ; $4f28: $64
	daa                                              ; $4f29: $27
	dec  h                                           ; $4f2a: $25
	ld   h, $33                                      ; $4f2b: $26 $33
	ld   [de], a                                     ; $4f2d: $12
	add  hl, de                                      ; $4f2e: $19
	ld   de, $0b0f                                   ; $4f2f: $11 $0f $0b
	inc  b                                           ; $4f32: $04
	add  h                                           ; $4f33: $84
	rst  $38                                         ; $4f34: $ff
	rst  $38                                         ; $4f35: $ff
	ld   c, l                                        ; $4f36: $4d
	push bc                                          ; $4f37: $c5
	cp   l                                           ; $4f38: $bd
	ld   a, c                                        ; $4f39: $79
	xor  c                                           ; $4f3a: $a9
	ld   a, c                                        ; $4f3b: $79
	ld   c, c                                        ; $4f3c: $49
	jp   hl                                          ; $4f3d: $e9


	adc  a                                           ; $4f3e: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f3f: $cf
	ld   a, l                                        ; $4f40: $7d
	add  e                                           ; $4f41: $83
	rst  $38                                         ; $4f42: $ff
	ld   b, $de                                      ; $4f43: $06 $de
	cp   d                                           ; $4f45: $ba
	ldh  [c], a                                      ; $4f46: $e2
	ldh  a, [c]                                      ; $4f47: $f2
	ld   h, $e4                                      ; $4f48: $26 $e4
	and  h                                           ; $4f4a: $a4
	ld   h, h                                        ; $4f4b: $64
	call z, $9848                                    ; $4f4c: $cc $48 $98
	adc  b                                           ; $4f4f: $88
	jr   nc, jr_012_4f62                             ; $4f50: $30 $10

	ld   h, b                                        ; $4f52: $60
	ld   h, c                                        ; $4f53: $61
	rst  $38                                         ; $4f54: $ff
	rst  $38                                         ; $4f55: $ff
	ld   h, d                                        ; $4f56: $62
	ld   b, e                                        ; $4f57: $43
	ld   a, l                                        ; $4f58: $7d
	ld   a, [hl]                                     ; $4f59: $7e
	ld   h, l                                        ; $4f5a: $65
	ld   c, [hl]                                     ; $4f5b: $4e
	ld   h, d                                        ; $4f5c: $62
	scf                                              ; $4f5d: $37
	ld   hl, $c023                                   ; $4f5e: $21 $23 $c0
	ld   b, b                                        ; $4f61: $40

jr_012_4f62:
	ldh  [rAUD4LEN], a                               ; $4f62: $e0 $20
	jr   nz, jr_012_4f86                             ; $4f64: $20 $20

	jr   nc, jr_012_4f78                             ; $4f66: $30 $10

	db   $10                                         ; $4f68: $10
	db   $10                                         ; $4f69: $10
	db   $10                                         ; $4f6a: $10
	db   $10                                         ; $4f6b: $10
	ret  nc                                          ; $4f6c: $d0

	ret  nc                                          ; $4f6d: $d0

	ret  nc                                          ; $4f6e: $d0

	sub  b                                           ; $4f6f: $90
	ret  c                                           ; $4f70: $d8

	adc  b                                           ; $4f71: $88
	ld   hl, sp-$18                                  ; $4f72: $f8 $e8
	ld   hl, sp-$68                                  ; $4f74: $f8 $98
	ld   hl, sp+$48                                  ; $4f76: $f8 $48

jr_012_4f78:
	ld   hl, sp+$08                                  ; $4f78: $f8 $08
	add  sp, $18                                     ; $4f7a: $e8 $18
	db   $10                                         ; $4f7c: $10
	ldh  a, [$e0]                                    ; $4f7d: $f0 $e0
	ldh  [rSC], a                                    ; $4f7f: $e0 $02
	ld   [bc], a                                     ; $4f81: $02
	inc  bc                                          ; $4f82: $03
	inc  bc                                          ; $4f83: $03
	ld   b, $04                                      ; $4f84: $06 $04

jr_012_4f86:
	inc  b                                           ; $4f86: $04
	inc  b                                           ; $4f87: $04
	inc  c                                           ; $4f88: $0c
	ld   [$0808], sp                                 ; $4f89: $08 $08 $08
	jr   jr_012_4f9e                                 ; $4f8c: $18 $10

	db   $10                                         ; $4f8e: $10
	db   $10                                         ; $4f8f: $10
	ccf                                              ; $4f90: $3f
	ccf                                              ; $4f91: $3f
	cpl                                              ; $4f92: $2f
	jr   nc, jr_012_4ff3                             ; $4f93: $30 $5e

	ld   h, a                                        ; $4f95: $67
	ld   b, a                                        ; $4f96: $47
	ld   a, h                                        ; $4f97: $7c
	ccf                                              ; $4f98: $3f
	ccf                                              ; $4f99: $3f
	nop                                              ; $4f9a: $00
	nop                                              ; $4f9b: $00
	nop                                              ; $4f9c: $00
	nop                                              ; $4f9d: $00

jr_012_4f9e:
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	ld   bc, $ffab                                   ; $4fa0: $01 $ab $ff
	rst  $38                                         ; $4fa3: $ff
	ld   b, $02                                      ; $4fa4: $06 $02
	inc  b                                           ; $4fa6: $04
	inc  b                                           ; $4fa7: $04
	inc  c                                           ; $4fa8: $0c
	inc  b                                           ; $4fa9: $04
	ld   [$0808], sp                                 ; $4faa: $08 $08 $08
	ld   [$0818], sp                                 ; $4fad: $08 $18 $08
	sub  b                                           ; $4fb0: $90
	sub  b                                           ; $4fb1: $90
	ld   d, b                                        ; $4fb2: $50
	ret  nc                                          ; $4fb3: $d0

	ld   d, b                                        ; $4fb4: $50
	ret  nc                                          ; $4fb5: $d0

	ldh  a, [rSVBK]                                  ; $4fb6: $f0 $70
	add  b                                           ; $4fb8: $80
	add  b                                           ; $4fb9: $80
	nop                                              ; $4fba: $00
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	jr   nz, jr_012_4ff7                             ; $4fc0: $20 $35

	rst  $38                                         ; $4fc2: $ff
	rst  $38                                         ; $4fc3: $ff
	ld   h, b                                        ; $4fc4: $60
	ld   b, b                                        ; $4fc5: $40
	jr   nz, @+$22                                   ; $4fc6: $20 $20

	jr   nc, jr_012_4fea                             ; $4fc8: $30 $20

	db   $10                                         ; $4fca: $10
	db   $10                                         ; $4fcb: $10
	db   $10                                         ; $4fcc: $10
	db   $10                                         ; $4fcd: $10
	jr   jr_012_4fe0                                 ; $4fce: $18 $10

	add  hl, bc                                      ; $4fd0: $09
	add  hl, bc                                      ; $4fd1: $09
	ld   a, [bc]                                     ; $4fd2: $0a
	dec  bc                                          ; $4fd3: $0b
	ld   a, [bc]                                     ; $4fd4: $0a
	dec  bc                                          ; $4fd5: $0b
	rrca                                             ; $4fd6: $0f
	ld   c, $01                                      ; $4fd7: $0e $01
	ld   bc, $0000                                   ; $4fd9: $01 $00 $00
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00

jr_012_4fe0:
	ld   b, b                                        ; $4fe0: $40
	ld   b, b                                        ; $4fe1: $40
	ret  nz                                          ; $4fe2: $c0

	ret  nz                                          ; $4fe3: $c0

	ld   h, b                                        ; $4fe4: $60
	jr   nz, jr_012_5007                             ; $4fe5: $20 $20

	jr   nz, jr_012_5019                             ; $4fe7: $20 $30

	db   $10                                         ; $4fe9: $10

jr_012_4fea:
	db   $10                                         ; $4fea: $10
	db   $10                                         ; $4feb: $10
	jr   @+$0a                                       ; $4fec: $18 $08

	ld   [$fc08], sp                                 ; $4fee: $08 $08 $fc
	db   $fc                                         ; $4ff1: $fc
	db   $f4                                         ; $4ff2: $f4

jr_012_4ff3:
	inc  c                                           ; $4ff3: $0c
	ld   a, d                                        ; $4ff4: $7a
	and  $e2                                         ; $4ff5: $e6 $e2

jr_012_4ff7:
	ld   a, $fc                                      ; $4ff7: $3e $fc
	db   $fc                                         ; $4ff9: $fc
	nop                                              ; $4ffa: $00
	nop                                              ; $4ffb: $00
	nop                                              ; $4ffc: $00
	nop                                              ; $4ffd: $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	nop                                              ; $5006: $00

jr_012_5007:
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	nop                                              ; $5010: $00
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00

jr_012_5019:
	nop                                              ; $5019: $00
	nop                                              ; $501a: $00
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
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
	nop                                              ; $5033: $00
	ld   b, b                                        ; $5034: $40
	nop                                              ; $5035: $00
	ld   b, b                                        ; $5036: $40
	nop                                              ; $5037: $00
	ld   b, c                                        ; $5038: $41
	ld   bc, $0343                                   ; $5039: $01 $43 $03
	ld   b, a                                        ; $503c: $47
	rlca                                             ; $503d: $07
	ld   e, b                                        ; $503e: $58
	rrca                                             ; $503f: $0f
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00

jr_012_5047:
	nop                                              ; $5047: $00
	nop                                              ; $5048: $00
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	add  b                                           ; $5056: $80
	add  b                                           ; $5057: $80
	nop                                              ; $5058: $00
	nop                                              ; $5059: $00
	cp   [hl]                                        ; $505a: $be
	cp   [hl]                                        ; $505b: $be
	pop  bc                                          ; $505c: $c1
	rst  $38                                         ; $505d: $ff
	nop                                              ; $505e: $00
	ld   sp, hl                                      ; $505f: $f9
	nop                                              ; $5060: $00
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	nop                                              ; $506b: $00
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	nop                                              ; $506f: $00
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	add  b                                           ; $507c: $80
	add  b                                           ; $507d: $80
	ldh  [$e0], a                                    ; $507e: $e0 $e0
	ld   bc, $0001                                   ; $5080: $01 $01 $00
	nop                                              ; $5083: $00
	ld   bc, $0301                                   ; $5084: $01 $01 $03
	inc  bc                                          ; $5087: $03
	ld   [bc], a                                     ; $5088: $02
	ld   [bc], a                                     ; $5089: $02
	ld   [bc], a                                     ; $508a: $02
	ld   [bc], a                                     ; $508b: $02
	inc  b                                           ; $508c: $04
	ld   b, $04                                      ; $508d: $06 $04
	rlca                                             ; $508f: $07
	inc  b                                           ; $5090: $04
	rlca                                             ; $5091: $07
	inc  b                                           ; $5092: $04
	rlca                                             ; $5093: $07
	inc  b                                           ; $5094: $04
	rlca                                             ; $5095: $07
	dec  b                                           ; $5096: $05
	rlca                                             ; $5097: $07
	dec  b                                           ; $5098: $05
	rlca                                             ; $5099: $07
	inc  bc                                          ; $509a: $03
	inc  bc                                          ; $509b: $03
	inc  bc                                          ; $509c: $03
	inc  bc                                          ; $509d: $03
	inc  bc                                          ; $509e: $03
	inc  bc                                          ; $509f: $03
	ret  c                                           ; $50a0: $d8

	adc  a                                           ; $50a1: $8f
	ret  nc                                          ; $50a2: $d0

	adc  c                                           ; $50a3: $89
	ld   d, b                                        ; $50a4: $50
	dec  bc                                          ; $50a5: $0b
	ret  nc                                          ; $50a6: $d0

	adc  a                                           ; $50a7: $8f
	ret  nc                                          ; $50a8: $d0

	adc  a                                           ; $50a9: $8f
	ld   d, b                                        ; $50aa: $50
	adc  a                                           ; $50ab: $8f
	ld   e, b                                        ; $50ac: $58
	adc  h                                           ; $50ad: $8c
	ld   e, b                                        ; $50ae: $58
	adc  c                                           ; $50af: $89
	ld   e, b                                        ; $50b0: $58
	adc  e                                           ; $50b1: $8b
	ld   e, b                                        ; $50b2: $58
	adc  e                                           ; $50b3: $8b
	ld   e, b                                        ; $50b4: $58
	adc  e                                           ; $50b5: $8b
	jr   jr_012_5047                                 ; $50b6: $18 $8f

	ld   a, [de]                                     ; $50b8: $1a
	adc  a                                           ; $50b9: $8f
	ld   a, [de]                                     ; $50ba: $1a
	adc  a                                           ; $50bb: $8f
	ld   a, [de]                                     ; $50bc: $1a
	adc  a                                           ; $50bd: $8f
	inc  e                                           ; $50be: $1c
	adc  a                                           ; $50bf: $8f
	nop                                              ; $50c0: $00
	cp   $00                                         ; $50c1: $fe $00
	rst  $38                                         ; $50c3: $ff
	nop                                              ; $50c4: $00
	rst  $38                                         ; $50c5: $ff
	nop                                              ; $50c6: $00
	rst  $38                                         ; $50c7: $ff
	nop                                              ; $50c8: $00
	rst  $38                                         ; $50c9: $ff
	nop                                              ; $50ca: $00
	rst  $38                                         ; $50cb: $ff
	nop                                              ; $50cc: $00
	rst  $38                                         ; $50cd: $ff
	inc  e                                           ; $50ce: $1c
	cp   $02                                         ; $50cf: $fe $02
	add  a                                           ; $50d1: $87
	ld   bc, $0183                                   ; $50d2: $01 $83 $01
	db   $ed                                         ; $50d5: $ed
	ld   bc, $21ff                                   ; $50d6: $01 $ff $21
	rst  $38                                         ; $50d9: $ff

jr_012_50da:
	ld   hl, $62ff                                   ; $50da: $21 $ff $62
	rst  $38                                         ; $50dd: $ff
	ld   h, h                                        ; $50de: $64
	rst  $38                                         ; $50df: $ff
	jr   jr_012_50da                                 ; $50e0: $18 $f8

	cp   $fe                                         ; $50e2: $fe $fe
	ld   h, b                                        ; $50e4: $60
	ld   h, b                                        ; $50e5: $60
	db   $10                                         ; $50e6: $10
	or   b                                           ; $50e7: $b0
	ld   [$0488], sp                                 ; $50e8: $08 $88 $04
	adc  h                                           ; $50eb: $8c
	add  h                                           ; $50ec: $84
	sbc  h                                           ; $50ed: $9c
	ld   b, h                                        ; $50ee: $44
	db   $fc                                         ; $50ef: $fc
	ld   b, h                                        ; $50f0: $44
	ld   a, h                                        ; $50f1: $7c

jr_012_50f2:
	inc  h                                           ; $50f2: $24
	ld   a, h                                        ; $50f3: $7c
	inc  h                                           ; $50f4: $24
	ld   a, h                                        ; $50f5: $7c
	inc  h                                           ; $50f6: $24
	db   $fc                                         ; $50f7: $fc
	jr   z, jr_012_50f2                              ; $50f8: $28 $f8

	ld   e, b                                        ; $50fa: $58
	ld   hl, sp-$08                                  ; $50fb: $f8 $f8
	add  sp, -$48                                    ; $50fd: $e8 $b8
	xor  b                                           ; $50ff: $a8
	ld   bc, $0101                                   ; $5100: $01 $01 $01
	ld   bc, $0101                                   ; $5103: $01 $01 $01
	ld   bc, $0001                                   ; $5106: $01 $01 $00
	nop                                              ; $5109: $00
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
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	nop                                              ; $5118: $00
	nop                                              ; $5119: $00
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	rra                                              ; $5120: $1f
	adc  a                                           ; $5121: $8f
	rra                                              ; $5122: $1f
	add  a                                           ; $5123: $87
	rra                                              ; $5124: $1f
	add  d                                           ; $5125: $82
	rra                                              ; $5126: $1f
	add  a                                           ; $5127: $87
	dec  e                                           ; $5128: $1d
	add  e                                           ; $5129: $83
	ld   e, l                                        ; $512a: $5d
	add  c                                           ; $512b: $81
	ld   e, a                                        ; $512c: $5f
	add  d                                           ; $512d: $82
	ld   e, e                                        ; $512e: $5b
	add  c                                           ; $512f: $81
	ld   d, b                                        ; $5130: $50
	adc  d                                           ; $5131: $8a
	ld   d, d                                        ; $5132: $52
	adc  d                                           ; $5133: $8a
	ld   d, d                                        ; $5134: $52
	adc  d                                           ; $5135: $8a
	ld   d, e                                        ; $5136: $53
	adc  d                                           ; $5137: $8a
	ld   d, e                                        ; $5138: $53
	adc  e                                           ; $5139: $8b
	ld   d, a                                        ; $513a: $57
	adc  a                                           ; $513b: $8f
	ld   d, h                                        ; $513c: $54
	adc  h                                           ; $513d: $8c
	ld   d, h                                        ; $513e: $54
	adc  l                                           ; $513f: $8d
	rst  $38                                         ; $5140: $ff
	cp   c                                           ; $5141: $b9
	rst  $38                                         ; $5142: $ff
	ld   sp, $43ff                                   ; $5143: $31 $ff $43
	rst  $38                                         ; $5146: $ff
	rlca                                             ; $5147: $07
	cp   $86                                         ; $5148: $fe $86
	ld   a, [hl]                                     ; $514a: $7e
	add  c                                           ; $514b: $81
	db   $db                                         ; $514c: $db
	daa                                              ; $514d: $27
	db   $fd                                         ; $514e: $fd
	db   $fd                                         ; $514f: $fd
	add  e                                           ; $5150: $83
	rst  $38                                         ; $5151: $ff
	db   $dd                                         ; $5152: $dd
	push hl                                          ; $5153: $e5
	ld   e, h                                        ; $5154: $5c
	db   $e4                                         ; $5155: $e4
	ld   d, l                                        ; $5156: $55
	ld   l, l                                        ; $5157: $6d
	cpl                                              ; $5158: $2f
	ccf                                              ; $5159: $3f
	ld   hl, sp-$08                                  ; $515a: $f8 $f8
	ld   d, h                                        ; $515c: $54
	ld   d, l                                        ; $515d: $55
	ld   d, d                                        ; $515e: $52
	ld   d, d                                        ; $515f: $52
	ld   hl, sp-$48                                  ; $5160: $f8 $b8
	db   $ec                                         ; $5162: $ec
	db   $fc                                         ; $5163: $fc
	ld   [hl], $76                                   ; $5164: $36 $76
	ld   [hl+], a                                    ; $5166: $22
	ld   h, d                                        ; $5167: $62
	ld   h, d                                        ; $5168: $62
	jp   nz, $eafa                                   ; $5169: $c2 $fa $ea

	cp   $1e                                         ; $516c: $fe $1e
	db   $fc                                         ; $516e: $fc
	inc  b                                           ; $516f: $04
	db   $fc                                         ; $5170: $fc
	inc  b                                           ; $5171: $04

jr_012_5172:
	ld   [hl], h                                     ; $5172: $74
	adc  h                                           ; $5173: $8c

jr_012_5174:
	adc  h                                           ; $5174: $8c
	db   $fc                                         ; $5175: $fc

jr_012_5176:
	ldh  a, [$f0]                                    ; $5176: $f0 $f0
	ret  nz                                          ; $5178: $c0

	ret  nz                                          ; $5179: $c0

	ld   h, b                                        ; $517a: $60
	ldh  [rAUD1SWEEP], a                             ; $517b: $e0 $10
	ld   [hl], b                                     ; $517d: $70
	db   $10                                         ; $517e: $10
	sub  b                                           ; $517f: $90
	ld   bc, $0301                                   ; $5180: $01 $01 $03
	inc  bc                                          ; $5183: $03
	inc  b                                           ; $5184: $04
	inc  b                                           ; $5185: $04
	ld   [$0808], sp                                 ; $5186: $08 $08 $08
	ld   [$1818], sp                                 ; $5189: $08 $18 $18
	db   $10                                         ; $518c: $10
	db   $10                                         ; $518d: $10
	jr   nz, jr_012_51b0                             ; $518e: $20 $20

	ld   a, h                                        ; $5190: $7c
	ld   a, h                                        ; $5191: $7c
	ld   e, a                                        ; $5192: $5f
	ld   h, e                                        ; $5193: $63
	or   c                                           ; $5194: $b1
	rst  $38                                         ; $5195: $ff
	xor  a                                           ; $5196: $af
	pop  af                                          ; $5197: $f1
	rst  $38                                         ; $5198: $ff
	rst  $38                                         ; $5199: $ff
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	nop                                              ; $519c: $00
	nop                                              ; $519d: $00
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	ld   e, $ce                                      ; $51a0: $1e $ce
	ld   e, $cf                                      ; $51a2: $1e $cf
	ld   a, [de]                                     ; $51a4: $1a
	adc  $1f                                         ; $51a5: $ce $1f
	srl  [hl]                                        ; $51a7: $cb $3e
	jp   z, $c83c                                    ; $51a9: $ca $3c $c8

	jr   c, jr_012_5172                              ; $51ac: $38 $c4

	jr   c, jr_012_5174                              ; $51ae: $38 $c4

jr_012_51b0:
	jr   c, jr_012_5176                              ; $51b0: $38 $c4

	jr   c, jr_012_51f4                              ; $51b2: $38 $40

	jr   nz, jr_012_51d6                             ; $51b4: $20 $20

	ret  nz                                          ; $51b6: $c0

	ret  nz                                          ; $51b7: $c0

	nop                                              ; $51b8: $00
	nop                                              ; $51b9: $00
	nop                                              ; $51ba: $00
	nop                                              ; $51bb: $00
	nop                                              ; $51bc: $00
	nop                                              ; $51bd: $00
	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	ld   e, d                                        ; $51c0: $5a
	bit  1, e                                        ; $51c1: $cb $4b
	ld   c, c                                        ; $51c3: $49
	ld   c, c                                        ; $51c4: $49
	ret                                              ; $51c5: $c9


	ld   sp, hl                                      ; $51c6: $f9
	ld   sp, hl                                      ; $51c7: $f9
	add  hl, bc                                      ; $51c8: $09
	add  hl, bc                                      ; $51c9: $09
	rrca                                             ; $51ca: $0f
	rrca                                             ; $51cb: $0f
	ld   bc, $0201                                   ; $51cc: $01 $01 $02
	ld   [bc], a                                     ; $51cf: $02
	ld   [bc], a                                     ; $51d0: $02
	ld   [bc], a                                     ; $51d1: $02
	ld   [bc], a                                     ; $51d2: $02
	ld   [bc], a                                     ; $51d3: $02
	inc  bc                                          ; $51d4: $03
	inc  bc                                          ; $51d5: $03

jr_012_51d6:
	ld   bc, $0001                                   ; $51d6: $01 $01 $00
	nop                                              ; $51d9: $00
	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	nop                                              ; $51dc: $00
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	ld   a, b                                        ; $51e0: $78
	ld   a, b                                        ; $51e1: $78
	add  h                                           ; $51e2: $84
	add  h                                           ; $51e3: $84
	inc  b                                           ; $51e4: $04
	inc  b                                           ; $51e5: $04
	inc  b                                           ; $51e6: $04
	inc  b                                           ; $51e7: $04
	inc  b                                           ; $51e8: $04
	inc  b                                           ; $51e9: $04
	inc  b                                           ; $51ea: $04
	inc  b                                           ; $51eb: $04
	ld   [bc], a                                     ; $51ec: $02
	ld   [bc], a                                     ; $51ed: $02
	ld   [bc], a                                     ; $51ee: $02
	ld   [bc], a                                     ; $51ef: $02
	ld   a, [hl]                                     ; $51f0: $7e
	ld   a, [hl]                                     ; $51f1: $7e
	ei                                               ; $51f2: $fb
	add  a                                           ; $51f3: $87

jr_012_51f4:
	dec  a                                           ; $51f4: $3d
	di                                               ; $51f5: $f3
	pop  af                                          ; $51f6: $f1
	rra                                              ; $51f7: $1f
	rst  $38                                         ; $51f8: $ff
	rst  $38                                         ; $51f9: $ff
	nop                                              ; $51fa: $00
	nop                                              ; $51fb: $00
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	nop                                              ; $51fe: $00
	nop                                              ; $51ff: $00
	nop                                              ; $5200: $00
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	nop                                              ; $5204: $00
	nop                                              ; $5205: $00
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	nop                                              ; $520e: $00
	nop                                              ; $520f: $00
	nop                                              ; $5210: $00
	nop                                              ; $5211: $00
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	nop                                              ; $5214: $00
	nop                                              ; $5215: $00
	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	nop                                              ; $5218: $00
	nop                                              ; $5219: $00
	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	ld   bc, $0001                                   ; $521c: $01 $01 $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	nop                                              ; $5226: $00
	nop                                              ; $5227: $00
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	nop                                              ; $522c: $00
	nop                                              ; $522d: $00
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	nop                                              ; $5233: $00
	inc  bc                                          ; $5234: $03
	inc  bc                                          ; $5235: $03
	inc  b                                           ; $5236: $04
	rlca                                             ; $5237: $07
	ld   [$780f], sp                                 ; $5238: $08 $0f $78
	ld   a, a                                        ; $523b: $7f
	add  b                                           ; $523c: $80
	rst  $38                                         ; $523d: $ff
	ret  nz                                          ; $523e: $c0

	rst  $38                                         ; $523f: $ff
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00
	nop                                              ; $5246: $00
	nop                                              ; $5247: $00
	nop                                              ; $5248: $00
	nop                                              ; $5249: $00
	nop                                              ; $524a: $00
	nop                                              ; $524b: $00
	nop                                              ; $524c: $00
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	nop                                              ; $5250: $00
	nop                                              ; $5251: $00
	ldh  [$e0], a                                    ; $5252: $e0 $e0
	ld   b, b                                        ; $5254: $40
	ret  nz                                          ; $5255: $c0

	ld   a, b                                        ; $5256: $78
	ld   hl, sp-$79                                  ; $5257: $f8 $87
	rst  $38                                         ; $5259: $ff
	nop                                              ; $525a: $00
	rst  $38                                         ; $525b: $ff
	nop                                              ; $525c: $00
	rst  $38                                         ; $525d: $ff

jr_012_525e:
	nop                                              ; $525e: $00
	rst  $38                                         ; $525f: $ff
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	nop                                              ; $5267: $00
	nop                                              ; $5268: $00
	nop                                              ; $5269: $00
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	nop                                              ; $5272: $00
	nop                                              ; $5273: $00
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	nop                                              ; $5276: $00
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	nop                                              ; $5279: $00
	ret  nz                                          ; $527a: $c0

	ret  nz                                          ; $527b: $c0

	jr   nz, jr_012_525e                             ; $527c: $20 $e0

	db   $10                                         ; $527e: $10
	ldh  a, [rSB]                                    ; $527f: $f0 $01
	ld   bc, $0202                                   ; $5281: $01 $02 $02
	inc  b                                           ; $5284: $04
	ld   b, $04                                      ; $5285: $06 $04
	ld   b, $08                                      ; $5287: $06 $08
	rrca                                             ; $5289: $0f
	add  hl, bc                                      ; $528a: $09
	rrca                                             ; $528b: $0f
	ld   a, [bc]                                     ; $528c: $0a
	rrca                                             ; $528d: $0f
	ld   a, [bc]                                     ; $528e: $0a
	rrca                                             ; $528f: $0f
	inc  c                                           ; $5290: $0c
	rrca                                             ; $5291: $0f
	inc  c                                           ; $5292: $0c
	rrca                                             ; $5293: $0f
	dec  b                                           ; $5294: $05
	rlca                                             ; $5295: $07
	inc  b                                           ; $5296: $04
	rlca                                             ; $5297: $07
	rlca                                             ; $5298: $07
	rlca                                             ; $5299: $07
	inc  bc                                          ; $529a: $03
	ld   [bc], a                                     ; $529b: $02
	inc  bc                                          ; $529c: $03
	ld   [bc], a                                     ; $529d: $02
	inc  bc                                          ; $529e: $03
	ld   [bc], a                                     ; $529f: $02
	nop                                              ; $52a0: $00
	ccf                                              ; $52a1: $3f
	nop                                              ; $52a2: $00
	ld   a, a                                        ; $52a3: $7f
	nop                                              ; $52a4: $00
	rst  $38                                         ; $52a5: $ff
	nop                                              ; $52a6: $00
	rst  $38                                         ; $52a7: $ff
	nop                                              ; $52a8: $00
	rra                                              ; $52a9: $1f
	inc  b                                           ; $52aa: $04
	rra                                              ; $52ab: $1f
	inc  b                                           ; $52ac: $04
	rst  $10                                         ; $52ad: $d7
	ld   c, h                                        ; $52ae: $4c
	adc  $4c                                         ; $52af: $ce $4c
	db   $fd                                         ; $52b1: $fd
	sbc  h                                           ; $52b2: $9c
	rst  $30                                         ; $52b3: $f7
	db   $fd                                         ; $52b4: $fd
	rst  $20                                         ; $52b5: $e7
	ld   a, a                                        ; $52b6: $7f
	adc  $7d                                         ; $52b7: $ce $7d
	db   $d3                                         ; $52b9: $d3
	rst  $38                                         ; $52ba: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52bb: $cf
	or   $17                                         ; $52bc: $f6 $17
	db   $f4                                         ; $52be: $f4
	ld   c, $00                                      ; $52bf: $0e $00
	rst  $38                                         ; $52c1: $ff
	nop                                              ; $52c2: $00
	rst  $38                                         ; $52c3: $ff
	nop                                              ; $52c4: $00
	rst  $38                                         ; $52c5: $ff
	db   $10                                         ; $52c6: $10
	rst  $38                                         ; $52c7: $ff
	ld   [$08ff], sp                                 ; $52c8: $08 $ff $08
	ld   a, a                                        ; $52cb: $7f
	inc  b                                           ; $52cc: $04
	ld   [hl], l                                     ; $52cd: $75
	add  [hl]                                        ; $52ce: $86
	add  [hl]                                        ; $52cf: $86
	add  [hl]                                        ; $52d0: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d1: $cf
	add  a                                           ; $52d2: $87
	db   $fd                                         ; $52d3: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d4: $cf
	ld   a, c                                        ; $52d5: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52d6: $cf
	ld   a, e                                        ; $52d7: $7b
	rst  JumpTable                                         ; $52d8: $df
	rst  $30                                         ; $52d9: $f7
	ei                                               ; $52da: $fb
	db   $e3                                         ; $52db: $e3
	ld   a, [$7cc7]                                  ; $52dc: $fa $c7 $7c
	nop                                              ; $52df: $00
	ld   c, b                                        ; $52e0: $48
	ld   hl, sp+$38                                  ; $52e1: $f8 $38
	ld   hl, sp+$14                                  ; $52e3: $f8 $14
	call nc, $e808                                   ; $52e5: $d4 $08 $e8
	ld   [$44e8], sp                                 ; $52e8: $08 $e8 $44
	call z, $bc24                                    ; $52eb: $cc $24 $bc
	inc  h                                           ; $52ee: $24
	inc  a                                           ; $52ef: $3c
	inc  h                                           ; $52f0: $24
	inc  a                                           ; $52f1: $3c
	inc  h                                           ; $52f2: $24
	db   $fc                                         ; $52f3: $fc
	ld   l, b                                        ; $52f4: $68
	ld   hl, sp+$68                                  ; $52f5: $f8 $68

jr_012_52f7:
	ld   hl, sp-$08                                  ; $52f7: $f8 $f8
	cp   b                                           ; $52f9: $b8
	ld   a, b                                        ; $52fa: $78
	ld   l, b                                        ; $52fb: $68
	ld   a, b                                        ; $52fc: $78
	jr   z, jr_012_52f7                              ; $52fd: $28 $f8

	jr   z, @+$03                                    ; $52ff: $28 $01

	ld   bc, $0000                                   ; $5301: $01 $00 $00
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
	nop                                              ; $530f: $00
	nop                                              ; $5310: $00
	nop                                              ; $5311: $00
	ld   bc, $0101                                   ; $5312: $01 $01 $01
	ld   bc, $0101                                   ; $5315: $01 $01 $01
	ld   bc, $0101                                   ; $5318: $01 $01 $01
	ld   bc, $0101                                   ; $531b: $01 $01 $01
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	ld   a, b                                        ; $5320: $78
	and  b                                           ; $5321: $a0
	rst  $28                                         ; $5322: $ef
	ldh  a, [$3f]                                    ; $5323: $f0 $3f
	jr   nc, jr_012_53a2                             ; $5325: $30 $7b

	ld   c, h                                        ; $5327: $4c
	ld   c, [hl]                                     ; $5328: $4e
	ld   b, a                                        ; $5329: $47
	jp   $8081                                       ; $532a: $c3 $81 $80


	add  d                                           ; $532d: $82
	add  d                                           ; $532e: $82
	add  d                                           ; $532f: $82
	add  d                                           ; $5330: $82
	add  d                                           ; $5331: $82
	add  d                                           ; $5332: $82
	ld   [bc], a                                     ; $5333: $02
	inc  bc                                          ; $5334: $03
	inc  bc                                          ; $5335: $03
	inc  bc                                          ; $5336: $03
	inc  bc                                          ; $5337: $03
	ccf                                              ; $5338: $3f
	rra                                              ; $5339: $1f
	ld   h, [hl]                                     ; $533a: $66
	ld   a, h                                        ; $533b: $7c
	rst  JumpTable                                         ; $533c: $df
	rst  $20                                         ; $533d: $e7
	ld   a, [hl]                                     ; $533e: $7e
	ld   b, l                                        ; $533f: $45
	rst  $38                                         ; $5340: $ff
	nop                                              ; $5341: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5342: $cf
	jr   nc, @+$01                                   ; $5343: $30 $ff

	nop                                              ; $5345: $00
	cp   $31                                         ; $5346: $fe $31
	ei                                               ; $5348: $fb
	rlca                                             ; $5349: $07
	cp   $fe                                         ; $534a: $fe $fe
	add  d                                           ; $534c: $82
	cp   $9b                                         ; $534d: $fe $9b
	rst  $20                                         ; $534f: $e7
	ld   e, a                                        ; $5350: $5f
	db   $e4                                         ; $5351: $e4
	ld   c, a                                        ; $5352: $4f
	ld   [hl], h                                     ; $5353: $74
	dec  [hl]                                        ; $5354: $35
	ld   a, $0e                                      ; $5355: $3e $0e
	adc  a                                           ; $5357: $8f
	rst  $30                                         ; $5358: $f7
	rst  $30                                         ; $5359: $f7
	call nc, $d756                                   ; $535a: $d4 $56 $d7
	sub  l                                           ; $535d: $95
	sub  a                                           ; $535e: $97
	sub  [hl]                                        ; $535f: $96
	or   b                                           ; $5360: $b0
	ld   [hl], b                                     ; $5361: $70
	ldh  a, [rSVBK]                                  ; $5362: $f0 $70
	ld   c, b                                        ; $5364: $48
	ret  z                                           ; $5365: $c8

	ret  z                                           ; $5366: $c8

	ret  z                                           ; $5367: $c8

	ld   b, h                                        ; $5368: $44
	ld   b, h                                        ; $5369: $44
	ld   b, h                                        ; $536a: $44
	ld   b, h                                        ; $536b: $44
	db   $e4                                         ; $536c: $e4
	db   $e4                                         ; $536d: $e4
	db   $f4                                         ; $536e: $f4
	or   h                                           ; $536f: $b4
	db   $fc                                         ; $5370: $fc
	ld   e, h                                        ; $5371: $5c
	db   $fc                                         ; $5372: $fc
	inc  d                                           ; $5373: $14
	call nc, $283c                                   ; $5374: $d4 $3c $28
	ld   hl, sp-$10                                  ; $5377: $f8 $f0
	ldh  a, [rAUD4LEN]                               ; $5379: $f0 $20
	and  b                                           ; $537b: $a0
	ldh  [$e0], a                                    ; $537c: $e0 $e0
	ldh  [rAUD4LEN], a                               ; $537e: $e0 $20
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	ld   bc, $0101                                   ; $5386: $01 $01 $01
	ld   bc, $0101                                   ; $5389: $01 $01 $01
	ld   bc, $0201                                   ; $538c: $01 $01 $02
	ld   [bc], a                                     ; $538f: $02
	rrca                                             ; $5390: $0f
	rrca                                             ; $5391: $0f
	dec  bc                                          ; $5392: $0b
	inc  c                                           ; $5393: $0c
	rla                                              ; $5394: $17
	add  hl, de                                      ; $5395: $19
	ld   de, $0f1f                                   ; $5396: $11 $1f $0f
	rrca                                             ; $5399: $0f
	nop                                              ; $539a: $00
	nop                                              ; $539b: $00
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	ld   a, l                                        ; $53a0: $7d
	ld   b, [hl]                                     ; $53a1: $46

jr_012_53a2:
	ld   a, [hl]                                     ; $53a2: $7e
	ld   b, l                                        ; $53a3: $45
	ei                                               ; $53a4: $fb
	add  a                                           ; $53a5: $87
	ld   a, a                                        ; $53a6: $7f
	add  d                                           ; $53a7: $82
	cp   $02                                         ; $53a8: $fe $02
	cp   $02                                         ; $53aa: $fe $02
	ld   a, [$7d86]                                  ; $53ac: $fa $86 $7d
	ld   a, h                                        ; $53af: $7c
	pop  hl                                          ; $53b0: $e1
	pop  hl                                          ; $53b1: $e1
	jp   nc, $9232                                   ; $53b2: $d2 $32 $92

	ldh  a, [c]                                      ; $53b5: $f2
	cp   $1e                                         ; $53b6: $fe $1e
	ldh  a, [$f0]                                    ; $53b8: $f0 $f0
	nop                                              ; $53ba: $00
	nop                                              ; $53bb: $00
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	sub  [hl]                                        ; $53c0: $96
	sub  d                                           ; $53c1: $92
	ldh  a, [c]                                      ; $53c2: $f2
	ldh  a, [c]                                      ; $53c3: $f2
	jp   nc, $ded2                                   ; $53c4: $d2 $d2 $de

	ld   e, [hl]                                     ; $53c7: $5e
	ld   c, h                                        ; $53c8: $4c
	ld   c, b                                        ; $53c9: $48
	call z, $8c48                                    ; $53ca: $cc $48 $8c
	adc  b                                           ; $53cd: $88
	adc  h                                           ; $53ce: $8c
	adc  b                                           ; $53cf: $88
	rrca                                             ; $53d0: $0f
	dec  bc                                          ; $53d1: $0b
	dec  c                                           ; $53d2: $0d
	ld   c, $0c                                      ; $53d3: $0e $0c
	rrca                                             ; $53d5: $0f
	rlca                                             ; $53d6: $07
	inc  b                                           ; $53d7: $04
	inc  bc                                          ; $53d8: $03
	inc  bc                                          ; $53d9: $03
	nop                                              ; $53da: $00
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	jr   nc, jr_012_53f2                             ; $53e0: $30 $10

	db   $10                                         ; $53e2: $10
	db   $10                                         ; $53e3: $10
	db   $10                                         ; $53e4: $10
	db   $10                                         ; $53e5: $10
	db   $10                                         ; $53e6: $10
	db   $10                                         ; $53e7: $10
	db   $10                                         ; $53e8: $10
	db   $10                                         ; $53e9: $10
	jr   jr_012_53f4                                 ; $53ea: $18 $08

	ld   [$0808], sp                                 ; $53ec: $08 $08 $08
	ld   [$f8f8], sp                                 ; $53ef: $08 $f8 $f8

jr_012_53f2:
	add  sp, $18                                     ; $53f2: $e8 $18

jr_012_53f4:
	db   $f4                                         ; $53f4: $f4
	call z, $7cc4                                    ; $53f5: $cc $c4 $7c
	ld   hl, sp-$08                                  ; $53f8: $f8 $f8
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	nop                                              ; $5404: $00
	nop                                              ; $5405: $00
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	ld   bc, $0001                                   ; $540e: $01 $01 $00
	nop                                              ; $5411: $00
	ld   bc, $0201                                   ; $5412: $01 $01 $02
	inc  bc                                          ; $5415: $03
	inc  b                                           ; $5416: $04
	dec  b                                           ; $5417: $05
	ld   [$080b], sp                                 ; $5418: $08 $0b $08
	ld   [$1e12], sp                                 ; $541b: $08 $12 $1e
	inc  d                                           ; $541e: $14
	ld   e, $00                                      ; $541f: $1e $00
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	inc  bc                                          ; $5428: $03
	inc  bc                                          ; $5429: $03
	dec  b                                           ; $542a: $05
	rlca                                             ; $542b: $07
	ld   a, c                                        ; $542c: $79
	ld   a, a                                        ; $542d: $7f
	adc  c                                           ; $542e: $89
	rst  $38                                         ; $542f: $ff
	ldh  [rIE], a                                    ; $5430: $e0 $ff
	nop                                              ; $5432: $00
	rst  $38                                         ; $5433: $ff
	nop                                              ; $5434: $00
	rst  $38                                         ; $5435: $ff
	nop                                              ; $5436: $00
	rst  $38                                         ; $5437: $ff
	nop                                              ; $5438: $00
	rst  $38                                         ; $5439: $ff
	ld   [bc], a                                     ; $543a: $02
	rst  $38                                         ; $543b: $ff
	ld   [hl+], a                                    ; $543c: $22
	cp   $26                                         ; $543d: $fe $26
	ld   a, $00                                      ; $543f: $3e $00
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	add  b                                           ; $5446: $80
	add  b                                           ; $5447: $80
	nop                                              ; $5448: $00
	nop                                              ; $5449: $00
	ld   a, h                                        ; $544a: $7c
	ld   a, h                                        ; $544b: $7c
	add  e                                           ; $544c: $83
	rst  $38                                         ; $544d: $ff
	nop                                              ; $544e: $00
	rst  $38                                         ; $544f: $ff
	ld   bc, $00ff                                   ; $5450: $01 $ff $00
	rst  $38                                         ; $5453: $ff
	nop                                              ; $5454: $00
	rst  $38                                         ; $5455: $ff
	inc  b                                           ; $5456: $04
	rst  $38                                         ; $5457: $ff
	inc  b                                           ; $5458: $04
	db   $fd                                         ; $5459: $fd
	ld   [bc], a                                     ; $545a: $02
	ld   a, [$7a42]                                  ; $545b: $fa $42 $7a
	ld   b, e                                        ; $545e: $43
	ld   b, a                                        ; $545f: $47
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
	nop                                              ; $546a: $00
	nop                                              ; $546b: $00
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	ret  nz                                          ; $546e: $c0

	ret  nz                                          ; $546f: $c0

	add  b                                           ; $5470: $80
	add  b                                           ; $5471: $80
	ld   h, b                                        ; $5472: $60
	ldh  [rAUD1SWEEP], a                             ; $5473: $e0 $10
	ldh  a, [$08]                                    ; $5475: $f0 $08
	ld   hl, sp+$08                                  ; $5477: $f8 $08
	add  sp, $04                                     ; $5479: $e8 $04
	db   $f4                                         ; $547b: $f4
	inc  d                                           ; $547c: $14
	inc  d                                           ; $547d: $14
	ld   [de], a                                     ; $547e: $12
	ld   e, $14                                      ; $547f: $1e $14
	rra                                              ; $5481: $1f
	inc  d                                           ; $5482: $14
	rra                                              ; $5483: $1f
	inc  c                                           ; $5484: $0c
	rrca                                             ; $5485: $0f
	dec  c                                           ; $5486: $0d
	rrca                                             ; $5487: $0f
	dec  b                                           ; $5488: $05
	rlca                                             ; $5489: $07
	rlca                                             ; $548a: $07
	ld   b, $03                                      ; $548b: $06 $03
	ld   [bc], a                                     ; $548d: $02
	inc  bc                                          ; $548e: $03
	ld   [bc], a                                     ; $548f: $02
	inc  bc                                          ; $5490: $03
	ld   [bc], a                                     ; $5491: $02
	inc  bc                                          ; $5492: $03
	inc  bc                                          ; $5493: $03
	ld   bc, $0101                                   ; $5494: $01 $01 $01
	ld   bc, $0101                                   ; $5497: $01 $01 $01
	ld   bc, $0701                                   ; $549a: $01 $01 $07
	rlca                                             ; $549d: $07
	inc  c                                           ; $549e: $0c
	inc  c                                           ; $549f: $0c
	ld   b, [hl]                                     ; $54a0: $46
	sub  $4e                                         ; $54a1: $d6 $4e
	res  3, a                                        ; $54a3: $cb $9f
	di                                               ; $54a5: $f3
	rst  $38                                         ; $54a6: $ff
	xor  $7d                                         ; $54a7: $ee $7d
	db   $d3                                         ; $54a9: $d3
	rst  $38                                         ; $54aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ab: $cf
	or   $57                                         ; $54ac: $f6 $57
	db   $f4                                         ; $54ae: $f4
	ld   c, [hl]                                     ; $54af: $4e
	ld   hl, sp+$00                                  ; $54b0: $f8 $00
	rst  $38                                         ; $54b2: $ff
	nop                                              ; $54b3: $00
	rst  $38                                         ; $54b4: $ff
	ret  nz                                          ; $54b5: $c0

	rst  JumpTable                                         ; $54b6: $df
	ldh  [rIE], a                                    ; $54b7: $e0 $ff
	db   $fc                                         ; $54b9: $fc
	add  d                                           ; $54ba: $82
	add  e                                           ; $54bb: $83
	inc  bc                                          ; $54bc: $03
	inc  bc                                          ; $54bd: $03
	call z, Call_012_63cf                            ; $54be: $cc $cf $63
	rst  $20                                         ; $54c1: $e7
	rst  $20                                         ; $54c2: $e7
	cp   l                                           ; $54c3: $bd
	rst  $20                                         ; $54c4: $e7
	dec  a                                           ; $54c5: $3d
	rst  $28                                         ; $54c6: $ef
	add  hl, sp                                      ; $54c7: $39
	rst  $38                                         ; $54c8: $ff
	or   e                                           ; $54c9: $b3
	rst  $38                                         ; $54ca: $ff
	rst  $20                                         ; $54cb: $e7
	ei                                               ; $54cc: $fb
	add  e                                           ; $54cd: $83
	ld   a, d                                        ; $54ce: $7a
	rlca                                             ; $54cf: $07
	db   $fc                                         ; $54d0: $fc
	nop                                              ; $54d1: $00
	rst  $20                                         ; $54d2: $e7
	jr   @+$01                                       ; $54d3: $18 $ff

	nop                                              ; $54d5: $00
	rst  $38                                         ; $54d6: $ff
	inc  a                                           ; $54d7: $3c
	and  $25                                         ; $54d8: $e6 $25
	call c, $c038                                    ; $54da: $dc $38 $c0
	ret  nz                                          ; $54dd: $c0

	inc  e                                           ; $54de: $1c
	nop                                              ; $54df: $00
	ld   [de], a                                     ; $54e0: $12
	cp   $2a                                         ; $54e1: $fe $2a

jr_012_54e3:
	cp   $6e                                         ; $54e3: $fe $6e
	cp   $ea                                         ; $54e5: $fe $ea
	cp   d                                           ; $54e7: $ba
	ldh  a, [rSVBK]                                  ; $54e8: $f0 $70
	ld   hl, sp-$48                                  ; $54ea: $f8 $b8
	ld   a, b                                        ; $54ec: $78
	ld   l, b                                        ; $54ed: $68
	ld   a, b                                        ; $54ee: $78
	jr   z, @-$06                                    ; $54ef: $28 $f8

	jr   z, jr_012_54e3                              ; $54f1: $28 $f0

	ld   d, b                                        ; $54f3: $50
	ldh  [$60], a                                    ; $54f4: $e0 $60
	ld   b, b                                        ; $54f6: $40
	ret  nz                                          ; $54f7: $c0

	add  b                                           ; $54f8: $80
	add  b                                           ; $54f9: $80
	db   $10                                         ; $54fa: $10
	db   $10                                         ; $54fb: $10
	ld   e, b                                        ; $54fc: $58
	ld   a, b                                        ; $54fd: $78
	db   $e4                                         ; $54fe: $e4
	sbc  h                                           ; $54ff: $9c
	ld   [$1808], sp                                 ; $5500: $08 $08 $18
	jr   jr_012_551f                                 ; $5503: $18 $1a

	ld   d, $6d                                      ; $5505: $16 $6d
	ld   [hl], e                                     ; $5507: $73
	cp   a                                           ; $5508: $bf
	rst  ToBoot                                         ; $5509: $c7
	rst  $38                                         ; $550a: $ff
	add  a                                           ; $550b: $87
	ei                                               ; $550c: $fb
	adc  e                                           ; $550d: $8b
	db   $eb                                         ; $550e: $eb
	sbc  e                                           ; $550f: $9b
	xor  a                                           ; $5510: $af
	sbc  $77                                         ; $5511: $de $77
	ld   [hl], h                                     ; $5513: $74
	inc  b                                           ; $5514: $04
	inc  bc                                          ; $5515: $03
	ld   b, $02                                      ; $5516: $06 $02
	dec  bc                                          ; $5518: $0b
	inc  bc                                          ; $5519: $03
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00

jr_012_551f:
	nop                                              ; $551f: $00
	ld   a, $38                                      ; $5520: $3e $38
	inc  a                                           ; $5522: $3c
	ld   hl, $c7b8                                   ; $5523: $21 $b8 $c7
	di                                               ; $5526: $f3
	adc  h                                           ; $5527: $8c
	ld   l, a                                        ; $5528: $6f
	sub  b                                           ; $5529: $90
	rst  JumpTable                                         ; $552a: $df
	jr   nz, @+$01                                   ; $552b: $20 $ff

	nop                                              ; $552d: $00
	ld   hl, sp+$00                                  ; $552e: $f8 $00
	add  c                                           ; $5530: $81
	ld   h, c                                        ; $5531: $61
	ld   bc, $0181                                   ; $5532: $01 $81 $01
	ld   bc, $0303                                   ; $5535: $01 $03 $03
	ld   bc, $f101                                   ; $5538: $01 $01 $f1
	pop  af                                          ; $553b: $f1
	ld   [$0408], sp                                 ; $553c: $08 $08 $04
	inc  b                                           ; $553f: $04
	inc  sp                                          ; $5540: $33
	ld   b, e                                        ; $5541: $43
	ld   h, a                                        ; $5542: $67
	adc  a                                           ; $5543: $8f
	adc  $37                                         ; $5544: $ce $37
	or   a                                           ; $5546: $b7
	ld   c, a                                        ; $5547: $4f
	ld   [$e21a], a                                  ; $5548: $ea $1a $e2
	ld   h, d                                        ; $554b: $62
	add  $82                                         ; $554c: $c6 $82
	rst  $30                                         ; $554e: $f7
	rst  $30                                         ; $554f: $f7
	adc  l                                           ; $5550: $8d
	adc  l                                           ; $5551: $8d
	rst  $20                                         ; $5552: $e7
	ld   h, a                                        ; $5553: $67
	ld   a, h                                        ; $5554: $7c
	inc  a                                           ; $5555: $3c
	and  h                                           ; $5556: $a4
	and  h                                           ; $5557: $a4
	and  h                                           ; $5558: $a4
	and  h                                           ; $5559: $a4
	and  h                                           ; $555a: $a4
	and  h                                           ; $555b: $a4
	db   $e4                                         ; $555c: $e4
	db   $e4                                         ; $555d: $e4
	add  h                                           ; $555e: $84
	add  h                                           ; $555f: $84
	db   $f4                                         ; $5560: $f4
	inc  c                                           ; $5561: $0c
	db   $f4                                         ; $5562: $f4
	inc  c                                           ; $5563: $0c
	db   $fc                                         ; $5564: $fc
	inc  c                                           ; $5565: $0c
	ld   [hl], d                                     ; $5566: $72
	sbc  [hl]                                        ; $5567: $9e
	and  $fa                                         ; $5568: $e6 $fa
	adc  $f2                                         ; $556a: $ce $f2
	jp   c, $dee6                                    ; $556c: $da $e6 $de

	and  $a4                                         ; $556f: $e6 $a4
	cp   h                                           ; $5571: $bc
	jr   jr_012_558c                                 ; $5572: $18 $18

	nop                                              ; $5574: $00
	nop                                              ; $5575: $00
	nop                                              ; $5576: $00
	nop                                              ; $5577: $00
	nop                                              ; $5578: $00
	nop                                              ; $5579: $00
	nop                                              ; $557a: $00
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	nop                                              ; $5589: $00
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00

jr_012_558c:
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	nop                                              ; $558f: $00
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	inc  b                                           ; $55a0: $04
	inc  b                                           ; $55a1: $04
	inc  b                                           ; $55a2: $04
	inc  b                                           ; $55a3: $04

jr_012_55a4:
	inc  b                                           ; $55a4: $04
	inc  b                                           ; $55a5: $04
	inc  b                                           ; $55a6: $04
	inc  b                                           ; $55a7: $04
	inc  c                                           ; $55a8: $0c
	ld   [$080c], sp                                 ; $55a9: $08 $0c $08
	jr   jr_012_55be                                 ; $55ac: $18 $10

	db   $10                                         ; $55ae: $10
	db   $10                                         ; $55af: $10
	jr   nz, jr_012_55d2                             ; $55b0: $20 $20

	cpl                                              ; $55b2: $2f
	cpl                                              ; $55b3: $2f
	add  hl, sp                                      ; $55b4: $39
	ld   l, $37                                      ; $55b5: $2e $37
	jr   c, jr_012_55c8                              ; $55b7: $38 $0f

	rrca                                             ; $55b9: $0f
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00

jr_012_55be:
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	ld   a, h                                        ; $55c0: $7c
	ld   a, h                                        ; $55c1: $7c
	db   $10                                         ; $55c2: $10
	db   $10                                         ; $55c3: $10
	db   $10                                         ; $55c4: $10
	db   $10                                         ; $55c5: $10
	jr   nc, jr_012_55d8                             ; $55c6: $30 $10

jr_012_55c8:
	jr   nz, jr_012_55ea                             ; $55c8: $20 $20

	jr   nz, jr_012_55ec                             ; $55ca: $20 $20

	jr   nz, jr_012_55ee                             ; $55cc: $20 $20

	jr   nz, jr_012_55f0                             ; $55ce: $20 $20

	ldh  [$e0], a                                    ; $55d0: $e0 $e0

jr_012_55d2:
	jr   nc, jr_012_55a4                             ; $55d2: $30 $d0

	ld   hl, sp+$68                                  ; $55d4: $f8 $68
	add  sp, $38                                     ; $55d6: $e8 $38

jr_012_55d8:
	ld   hl, sp-$08                                  ; $55d8: $f8 $f8
	nop                                              ; $55da: $00
	nop                                              ; $55db: $00
	nop                                              ; $55dc: $00
	nop                                              ; $55dd: $00
	nop                                              ; $55de: $00
	nop                                              ; $55df: $00
	nop                                              ; $55e0: $00
	nop                                              ; $55e1: $00
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00

jr_012_55ea:
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00

jr_012_55ec:
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00

jr_012_55ee:
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00

jr_012_55f0:
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	nop                                              ; $55f3: $00
	nop                                              ; $55f4: $00
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	nop                                              ; $55fc: $00
	nop                                              ; $55fd: $00
	nop                                              ; $55fe: $00
	nop                                              ; $55ff: $00
	nop                                              ; $5600: $00
	nop                                              ; $5601: $00
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00
	nop                                              ; $5610: $00
	nop                                              ; $5611: $00
	nop                                              ; $5612: $00
	nop                                              ; $5613: $00
	ld   bc, $0201                                   ; $5614: $01 $01 $02
	ld   [bc], a                                     ; $5617: $02
	inc  b                                           ; $5618: $04
	ld   b, $04                                      ; $5619: $06 $04
	ld   b, $08                                      ; $561b: $06 $08
	rrca                                             ; $561d: $0f
	ld   [$000f], sp                                 ; $561e: $08 $0f $00
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
	rrca                                             ; $562a: $0f
	rrca                                             ; $562b: $0f
	jr   nc, jr_012_566d                             ; $562c: $30 $3f

	ret  nz                                          ; $562e: $c0

	rst  $38                                         ; $562f: $ff
	ld   [hl], b                                     ; $5630: $70
	ld   a, a                                        ; $5631: $7f
	add  b                                           ; $5632: $80
	rst  $38                                         ; $5633: $ff
	nop                                              ; $5634: $00
	ld   a, a                                        ; $5635: $7f
	jr   nz, @+$01                                   ; $5636: $20 $ff

	ld   b, c                                        ; $5638: $41
	rst  $38                                         ; $5639: $ff
	ld   c, c                                        ; $563a: $49
	ld   l, a                                        ; $563b: $6f
	sub  d                                           ; $563c: $92
	sub  [hl]                                        ; $563d: $96
	sub  d                                           ; $563e: $92
	or   d                                           ; $563f: $b2
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	ld   b, b                                        ; $5646: $40
	ld   b, b                                        ; $5647: $40
	jr   nc, jr_012_567a                             ; $5648: $30 $30

	xor  b                                           ; $564a: $a8
	cp   b                                           ; $564b: $b8
	ld   h, a                                        ; $564c: $67
	rst  $38                                         ; $564d: $ff
	inc  h                                           ; $564e: $24
	rst  $38                                         ; $564f: $ff
	nop                                              ; $5650: $00
	rst  $38                                         ; $5651: $ff
	nop                                              ; $5652: $00
	rst  $38                                         ; $5653: $ff
	nop                                              ; $5654: $00
	rst  $38                                         ; $5655: $ff
	add  b                                           ; $5656: $80
	rst  $38                                         ; $5657: $ff
	nop                                              ; $5658: $00
	rst  $38                                         ; $5659: $ff
	ld   bc, $097f                                   ; $565a: $01 $7f $09
	ld   a, l                                        ; $565d: $7d
	add  hl, de                                      ; $565e: $19
	ld   e, e                                        ; $565f: $5b
	nop                                              ; $5660: $00
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00

jr_012_5664:
	nop                                              ; $5664: $00
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	add  b                                           ; $566c: $80

jr_012_566d:
	add  b                                           ; $566d: $80
	ld   h, b                                        ; $566e: $60
	ldh  [$c0], a                                    ; $566f: $e0 $c0
	ret  nz                                          ; $5671: $c0

	jr   nc, jr_012_5664                             ; $5672: $30 $f0

	ld   [$14f8], sp                                 ; $5674: $08 $f8 $14
	call c, $ee0e                                    ; $5677: $dc $0e $ee

jr_012_567a:
	inc  b                                           ; $567a: $04
	db   $e4                                         ; $567b: $e4
	inc  b                                           ; $567c: $04
	inc  e                                           ; $567d: $1c
	ld   [bc], a                                     ; $567e: $02
	sbc  [hl]                                        ; $567f: $9e
	ld   a, [bc]                                     ; $5680: $0a
	rrca                                             ; $5681: $0f
	ld   c, $0f                                      ; $5682: $0e $0f
	ld   a, [bc]                                     ; $5684: $0a
	dec  bc                                          ; $5685: $0b
	ld   [bc], a                                     ; $5686: $02
	inc  bc                                          ; $5687: $03
	ld   bc, $0301                                   ; $5688: $01 $01 $03
	inc  bc                                          ; $568b: $03
	inc  bc                                          ; $568c: $03
	ld   [bc], a                                     ; $568d: $02
	inc  bc                                          ; $568e: $03
	ld   [bc], a                                     ; $568f: $02
	ld   bc, $0001                                   ; $5690: $01 $01 $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	inc  bc                                          ; $5698: $03
	inc  bc                                          ; $5699: $03
	dec  c                                           ; $569a: $0d
	dec  c                                           ; $569b: $0d
	dec  de                                          ; $569c: $1b
	dec  de                                          ; $569d: $1b
	dec  l                                           ; $569e: $2d
	ld   l, $92                                      ; $569f: $2e $92
	rst  $38                                         ; $56a1: $ff
	cp   d                                           ; $56a2: $ba
	rst  $28                                         ; $56a3: $ef
	rst  $38                                         ; $56a4: $ff
	push bc                                          ; $56a5: $c5
	ld   a, a                                        ; $56a6: $7f
	db   $dd                                         ; $56a7: $dd
	ld   a, a                                        ; $56a8: $7f
	rst  $20                                         ; $56a9: $e7
	ld   a, a                                        ; $56aa: $7f
	rst  JumpTable                                         ; $56ab: $df
	rst  $20                                         ; $56ac: $e7
	rst  $20                                         ; $56ad: $e7
	db   $e4                                         ; $56ae: $e4
	ld   c, [hl]                                     ; $56af: $4e
	pop  af                                          ; $56b0: $f1
	ld   b, b                                        ; $56b1: $40
	rst  JumpTable                                         ; $56b2: $df
	ldh  [$7f], a                                    ; $56b3: $e0 $7f
	ld   h, b                                        ; $56b5: $60
	cpl                                              ; $56b6: $2f
	jr   nc, @+$01                                   ; $56b7: $30 $ff

	ldh  a, [$5b]                                    ; $56b9: $f0 $5b
	ld   e, h                                        ; $56bb: $5c
	sub  [hl]                                        ; $56bc: $96
	sub  a                                           ; $56bd: $97
	bit  1, a                                        ; $56be: $cb $4f
	dec  sp                                          ; $56c0: $3b
	ld   l, $3b                                      ; $56c1: $2e $3b
	ld   l, [hl]                                     ; $56c3: $6e
	ld   a, a                                        ; $56c4: $7f
	call z, $cb7f                                    ; $56c5: $cc $7f $cb
	rst  $38                                         ; $56c8: $ff
	adc  $ff                                         ; $56c9: $ce $ff
	ld   c, a                                        ; $56cb: $4f
	ei                                               ; $56cc: $fb
	dec  bc                                          ; $56cd: $0b
	ldh  a, [c]                                      ; $56ce: $f2
	rlca                                             ; $56cf: $07
	ld   hl, sp+$00                                  ; $56d0: $f8 $00
	sbc  a                                           ; $56d2: $9f
	ld   h, b                                        ; $56d3: $60
	rst  $38                                         ; $56d4: $ff
	nop                                              ; $56d5: $00
	rst  $38                                         ; $56d6: $ff
	ldh  a, [$9f]                                    ; $56d7: $f0 $9f
	sub  b                                           ; $56d9: $90
	ld   l, l                                        ; $56da: $6d
	di                                               ; $56db: $f3
	or   $0e                                         ; $56dc: $f6 $0e
	ld   hl, sp-$08                                  ; $56de: $f8 $f8
	sub  d                                           ; $56e0: $92
	cp   $92                                         ; $56e1: $fe $92
	cp   $d4                                         ; $56e3: $fe $d4
	ld   a, h                                        ; $56e5: $7c
	db   $f4                                         ; $56e6: $f4
	cp   h                                           ; $56e7: $bc
	add  sp, $78                                     ; $56e8: $e8 $78
	db   $ec                                         ; $56ea: $ec
	cp   h                                           ; $56eb: $bc
	ld   a, h                                        ; $56ec: $7c
	ld   [hl], h                                     ; $56ed: $74
	ld   a, h                                        ; $56ee: $7c
	inc  h                                           ; $56ef: $24
	db   $fc                                         ; $56f0: $fc
	inc  h                                           ; $56f1: $24
	cp   b                                           ; $56f2: $b8
	ld   l, b                                        ; $56f3: $68
	ldh  a, [rSVBK]                                  ; $56f4: $f0 $70
	ld   b, b                                        ; $56f6: $40
	ret  nz                                          ; $56f7: $c0

	add  b                                           ; $56f8: $80
	add  b                                           ; $56f9: $80
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	ld   c, e                                        ; $5700: $4b
	ld   c, h                                        ; $5701: $4c
	ld   e, a                                        ; $5702: $5f
	ld   d, b                                        ; $5703: $50
	ld   e, a                                        ; $5704: $5f
	ld   d, b                                        ; $5705: $50
	ld   e, a                                        ; $5706: $5f
	ld   e, b                                        ; $5707: $58
	ld   c, a                                        ; $5708: $4f
	ld   c, c                                        ; $5709: $49
	ccf                                              ; $570a: $3f
	ccf                                              ; $570b: $3f
	ld   bc, $0201                                   ; $570c: $01 $01 $02
	ld   [bc], a                                     ; $570f: $02
	ld   [bc], a                                     ; $5710: $02
	ld   [bc], a                                     ; $5711: $02
	inc  b                                           ; $5712: $04
	dec  b                                           ; $5713: $05
	ld   b, $06                                      ; $5714: $06 $06
	inc  c                                           ; $5716: $0c
	inc  c                                           ; $5717: $0c
	db   $10                                         ; $5718: $10
	db   $10                                         ; $5719: $10
	jr   nc, jr_012_574c                             ; $571a: $30 $30

	jr   nc, jr_012_574e                             ; $571c: $30 $30

	jr   c, jr_012_5748                              ; $571e: $38 $28

	ld   [$ea2b], a                                  ; $5720: $ea $2b $ea
	dec  hl                                          ; $5723: $2b
	ld   [$ca2b], a                                  ; $5724: $ea $2b $ca
	ld   c, e                                        ; $5727: $4b
	adc  c                                           ; $5728: $89
	adc  c                                           ; $5729: $89
	adc  l                                           ; $572a: $8d
	add  hl, bc                                      ; $572b: $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572c: $cf
	add  a                                           ; $572d: $87
	ld   a, h                                        ; $572e: $7c
	ld   a, h                                        ; $572f: $7c
	add  e                                           ; $5730: $83
	add  e                                           ; $5731: $83
	ld   bc, $0101                                   ; $5732: $01 $01 $01
	ld   bc, $0101                                   ; $5735: $01 $01 $01
	ld   bc, $0201                                   ; $5738: $01 $01 $02
	ld   [bc], a                                     ; $573b: $02
	rrca                                             ; $573c: $0f
	rlca                                             ; $573d: $07
	inc  de                                          ; $573e: $13
	ld   [de], a                                     ; $573f: $12
	ld   e, $fe                                      ; $5740: $1e $fe
	cp   $1a                                         ; $5742: $fe $1a
	db   $eb                                         ; $5744: $eb
	add  hl, de                                      ; $5745: $19
	db   $eb                                         ; $5746: $eb
	ld   a, [de]                                     ; $5747: $1a

jr_012_5748:
	push de                                          ; $5748: $d5
	ld   [hl], $e7                                   ; $5749: $36 $e7
	db   $e4                                         ; $574b: $e4

jr_012_574c:
	dec  bc                                          ; $574c: $0b
	inc  c                                           ; $574d: $0c

jr_012_574e:
	ld   a, a                                        ; $574e: $7f
	ld   a, h                                        ; $574f: $7c
	sub  a                                           ; $5750: $97
	sub  e                                           ; $5751: $93
	ei                                               ; $5752: $fb
	ld   a, [$4fce]                                  ; $5753: $fa $ce $4f
	ld   h, l                                        ; $5756: $65
	dec  h                                           ; $5757: $25
	and  h                                           ; $5758: $a4
	and  h                                           ; $5759: $a4
	and  d                                           ; $575a: $a2
	and  d                                           ; $575b: $a2
	or   d                                           ; $575c: $b2
	or   d                                           ; $575d: $b2
	cp   $ee                                         ; $575e: $fe $ee
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	nop                                              ; $5763: $00
	ret  nz                                          ; $5764: $c0

	ret  nz                                          ; $5765: $c0

	and  b                                           ; $5766: $a0
	ld   h, b                                        ; $5767: $60
	ldh  [rAUD4LEN], a                               ; $5768: $e0 $20
	ldh  [rAUD4LEN], a                               ; $576a: $e0 $20
	ldh  [rAUD4LEN], a                               ; $576c: $e0 $20
	ldh  a, [$50]                                    ; $576e: $f0 $50
	ldh  a, [$90]                                    ; $5770: $f0 $90
	ret  nc                                          ; $5772: $d0

	jr   nc, @-$5e                                   ; $5773: $30 $a0

	ld   h, b                                        ; $5775: $60
	ret  nz                                          ; $5776: $c0

	ret  nz                                          ; $5777: $c0

	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	ld   a, [hl]                                     ; $5780: $7e
	ld   b, [hl]                                     ; $5781: $46
	ld   a, a                                        ; $5782: $7f
	ld   b, c                                        ; $5783: $41
	ld   a, a                                        ; $5784: $7f
	ld   b, c                                        ; $5785: $41
	ld   a, a                                        ; $5786: $7f
	ld   d, e                                        ; $5787: $53
	inc  a                                           ; $5788: $3c
	inc  h                                           ; $5789: $24
	inc  e                                           ; $578a: $1c
	inc  e                                           ; $578b: $1c
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
	inc  hl                                          ; $57a0: $23
	ld   [hl+], a                                    ; $57a1: $22
	pop  hl                                          ; $57a2: $e1
	pop  hl                                          ; $57a3: $e1
	add  c                                           ; $57a4: $81
	add  c                                           ; $57a5: $81
	ld   bc, $0301                                   ; $57a6: $01 $01 $03
	ld   [bc], a                                     ; $57a9: $02
	ld   [bc], a                                     ; $57aa: $02
	ld   [bc], a                                     ; $57ab: $02
	ld   b, $04                                      ; $57ac: $06 $04
	inc  b                                           ; $57ae: $04
	inc  b                                           ; $57af: $04
	inc  b                                           ; $57b0: $04
	inc  b                                           ; $57b1: $04
	add  hl, bc                                      ; $57b2: $09
	add  hl, bc                                      ; $57b3: $09
	ld   c, $0b                                      ; $57b4: $0e $0b
	dec  c                                           ; $57b6: $0d
	ld   c, $03                                      ; $57b7: $0e $03
	inc  bc                                          ; $57b9: $03
	nop                                              ; $57ba: $00
	nop                                              ; $57bb: $00
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	add  h                                           ; $57c0: $84
	inc  b                                           ; $57c1: $04
	add  h                                           ; $57c2: $84
	inc  b                                           ; $57c3: $04
	inc  b                                           ; $57c4: $04
	inc  b                                           ; $57c5: $04
	inc  b                                           ; $57c6: $04
	inc  b                                           ; $57c7: $04
	ld   [$0808], sp                                 ; $57c8: $08 $08 $08
	ld   [$0808], sp                                 ; $57cb: $08 $08 $08
	db   $10                                         ; $57ce: $10
	db   $10                                         ; $57cf: $10
	jr   c, jr_012_580a                              ; $57d0: $38 $38

	call z, Call_012_7ef4                            ; $57d2: $cc $f4 $7e
	sbc  d                                           ; $57d5: $9a
	ld   a, [$fe0e]                                  ; $57d6: $fa $0e $fe
	cp   $00                                         ; $57d9: $fe $00
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
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	nop                                              ; $5807: $00
	nop                                              ; $5808: $00
	nop                                              ; $5809: $00

jr_012_580a:
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	nop                                              ; $580c: $00
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	nop                                              ; $5815: $00
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	ld   bc, $0101                                   ; $5818: $01 $01 $01
	ld   bc, $0302                                   ; $581b: $01 $02 $03
	ld   [bc], a                                     ; $581e: $02
	inc  bc                                          ; $581f: $03
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	inc  bc                                          ; $5828: $03
	inc  bc                                          ; $5829: $03
	dec  b                                           ; $582a: $05
	rlca                                             ; $582b: $07
	add  hl, bc                                      ; $582c: $09
	rrca                                             ; $582d: $0f
	add  hl, sp                                      ; $582e: $39
	ccf                                              ; $582f: $3f
	ld   b, b                                        ; $5830: $40
	ld   a, a                                        ; $5831: $7f
	ldh  a, [rIE]                                    ; $5832: $f0 $ff
	ld   b, b                                        ; $5834: $40
	ld   a, a                                        ; $5835: $7f
	add  c                                           ; $5836: $81
	cp   l                                           ; $5837: $bd
	ld   [bc], a                                     ; $5838: $02
	ld   [hl], e                                     ; $5839: $73
	ld   [bc], a                                     ; $583a: $02
	ld   [bc], a                                     ; $583b: $02
	inc  b                                           ; $583c: $04
	ld   e, $05                                      ; $583d: $1e $05
	rst  $38                                         ; $583f: $ff
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	add  b                                           ; $5846: $80
	add  b                                           ; $5847: $80
	nop                                              ; $5848: $00
	nop                                              ; $5849: $00
	ld   a, a                                        ; $584a: $7f
	ld   a, a                                        ; $584b: $7f
	add  b                                           ; $584c: $80
	rst  $38                                         ; $584d: $ff
	nop                                              ; $584e: $00
	rst  $38                                         ; $584f: $ff
	nop                                              ; $5850: $00
	rst  $38                                         ; $5851: $ff
	nop                                              ; $5852: $00
	rst  $38                                         ; $5853: $ff
	nop                                              ; $5854: $00
	rst  $38                                         ; $5855: $ff
	nop                                              ; $5856: $00
	rst  $38                                         ; $5857: $ff
	nop                                              ; $5858: $00
	ld   a, a                                        ; $5859: $7f
	ld   de, $217f                                   ; $585a: $11 $7f $21
	dec  l                                           ; $585d: $2d
	jp   $00cb                                       ; $585e: $c3 $cb $00


	nop                                              ; $5861: $00
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	nop                                              ; $5864: $00
	nop                                              ; $5865: $00
	nop                                              ; $5866: $00
	nop                                              ; $5867: $00
	nop                                              ; $5868: $00
	nop                                              ; $5869: $00
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	ret  nz                                          ; $586c: $c0

	ret  nz                                          ; $586d: $c0

	jr   nc, @-$0e                                   ; $586e: $30 $f0

	ld   [$3cf8], sp                                 ; $5870: $08 $f8 $3c
	db   $fc                                         ; $5873: $fc
	ld   [$04f8], sp                                 ; $5874: $08 $f8 $04
	db   $fc                                         ; $5877: $fc
	inc  b                                           ; $5878: $04
	db   $fc                                         ; $5879: $fc
	ld   [bc], a                                     ; $587a: $02
	cp   $22                                         ; $587b: $fe $22
	ld   a, [$ea22]                                  ; $587d: $fa $22 $ea
	ld   [bc], a                                     ; $5880: $02
	inc  bc                                          ; $5881: $03
	ld   [bc], a                                     ; $5882: $02
	inc  bc                                          ; $5883: $03
	ld   [bc], a                                     ; $5884: $02
	inc  bc                                          ; $5885: $03
	ld   [bc], a                                     ; $5886: $02
	inc  bc                                          ; $5887: $03
	inc  bc                                          ; $5888: $03
	inc  bc                                          ; $5889: $03
	ld   [bc], a                                     ; $588a: $02
	ld   [bc], a                                     ; $588b: $02
	nop                                              ; $588c: $00
	nop                                              ; $588d: $00
	nop                                              ; $588e: $00
	nop                                              ; $588f: $00
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	nop                                              ; $5892: $00
	nop                                              ; $5893: $00
	nop                                              ; $5894: $00
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	nop                                              ; $589b: $00
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	nop                                              ; $589e: $00
	nop                                              ; $589f: $00
	ld   b, $ff                                      ; $58a0: $06 $ff
	inc  b                                           ; $58a2: $04
	rst  $38                                         ; $58a3: $ff
	ld   b, c                                        ; $58a4: $41
	rst  $38                                         ; $58a5: $ff
	add  b                                           ; $58a6: $80
	rst  $38                                         ; $58a7: $ff
	add  c                                           ; $58a8: $81
	rst  $38                                         ; $58a9: $ff
	add  e                                           ; $58aa: $83
	cp   $83                                         ; $58ab: $fe $83
	cp   $83                                         ; $58ad: $fe $83
	cp   $45                                         ; $58af: $fe $45
	ld   a, a                                        ; $58b1: $7f
	ld   b, h                                        ; $58b2: $44
	ld   a, a                                        ; $58b3: $7f
	jr   z, jr_012_58f5                              ; $58b4: $28 $3f

	jr   jr_012_58d7                                 ; $58b6: $18 $1f

	dec  b                                           ; $58b8: $05
	rlca                                             ; $58b9: $07
	rlca                                             ; $58ba: $07
	rlca                                             ; $58bb: $07
	ld   b, $04                                      ; $58bc: $06 $04
	inc  b                                           ; $58be: $04
	inc  b                                           ; $58bf: $04
	ld   b, a                                        ; $58c0: $47
	push bc                                          ; $58c1: $c5
	sbc  l                                           ; $58c2: $9d
	ei                                               ; $58c3: $fb
	rst  $38                                         ; $58c4: $ff
	ldh  a, [c]                                      ; $58c5: $f2
	rra                                              ; $58c6: $1f
	pop  af                                          ; $58c7: $f1
	sbc  [hl]                                        ; $58c8: $9e
	ldh  a, [c]                                      ; $58c9: $f2
	sbc  $70                                         ; $58ca: $de $70
	rst  $38                                         ; $58cc: $ff
	jr   nc, @+$01                                   ; $58cd: $30 $ff

	nop                                              ; $58cf: $00
	rst  $38                                         ; $58d0: $ff
	nop                                              ; $58d1: $00
	rst  $38                                         ; $58d2: $ff
	ldh  [$bf], a                                    ; $58d3: $e0 $bf
	ldh  [$7e], a                                    ; $58d5: $e0 $7e

jr_012_58d7:
	pop  hl                                          ; $58d7: $e1
	ld   hl, sp-$02                                  ; $58d8: $f8 $fe
	nop                                              ; $58da: $00
	nop                                              ; $58db: $00

Call_012_58dc:
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	ld   [hl], d                                     ; $58e0: $72
	jp   nc, $9ef2                                   ; $58e1: $d2 $f2 $9e

	db   $f4                                         ; $58e4: $f4
	ld   e, h                                        ; $58e5: $5c
	db   $f4                                         ; $58e6: $f4
	db   $fc                                         ; $58e7: $fc
	ld   e, b                                        ; $58e8: $58
	ld   a, b                                        ; $58e9: $78
	ld   [hl], b                                     ; $58ea: $70
	ret  nc                                          ; $58eb: $d0

	or   b                                           ; $58ec: $b0
	db   $10                                         ; $58ed: $10
	ld   hl, sp+$08                                  ; $58ee: $f8 $08
	add  sp, $18                                     ; $58f0: $e8 $18
	add  sp, $18                                     ; $58f2: $e8 $18
	or   b                                           ; $58f4: $b0

jr_012_58f5:
	ld   [hl], b                                     ; $58f5: $70
	ld   [hl], b                                     ; $58f6: $70
	ldh  a, [$0c]                                    ; $58f7: $f0 $0c
	rrca                                             ; $58f9: $0f
	rlca                                             ; $58fa: $07
	ld   a, b                                        ; $58fb: $78
	rst  $38                                         ; $58fc: $ff
	nop                                              ; $58fd: $00
	cpl                                              ; $58fe: $2f
	jr   nc, jr_012_5901                             ; $58ff: $30 $00

jr_012_5901:
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	nop                                              ; $590b: $00
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
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
	ld   bc, $0101                                   ; $591a: $01 $01 $01
	ld   bc, $0303                                   ; $591d: $01 $03 $03
	inc  c                                           ; $5920: $0c
	ld   [$0808], sp                                 ; $5921: $08 $08 $08
	add  hl, de                                      ; $5924: $19
	ld   de, $1111                                   ; $5925: $11 $11 $11
	jr   nc, jr_012_594a                             ; $5928: $30 $20

	jr   nz, jr_012_594c                             ; $592a: $20 $20

	jr   nz, jr_012_594e                             ; $592c: $20 $20

	ld   b, b                                        ; $592e: $40
	ld   b, b                                        ; $592f: $40
	ld   b, b                                        ; $5930: $40
	ld   b, b                                        ; $5931: $40
	ld   b, b                                        ; $5932: $40
	ld   b, b                                        ; $5933: $40
	ld   a, a                                        ; $5934: $7f
	ld   a, a                                        ; $5935: $7f
	ld   h, b                                        ; $5936: $60
	ld   h, b                                        ; $5937: $60
	cp   a                                           ; $5938: $bf
	cp   a                                           ; $5939: $bf
	ld   bc, $0111                                   ; $593a: $01 $11 $01
	xor  e                                           ; $593d: $ab
	nop                                              ; $593e: $00
	ld   b, h                                        ; $593f: $44
	nop                                              ; $5940: $00
	inc  bc                                          ; $5941: $03
	ccf                                              ; $5942: $3f
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	add  b                                           ; $5946: $80
	add  b                                           ; $5947: $80
	ld   a, b                                        ; $5948: $78
	ld   l, b                                        ; $5949: $68

jr_012_594a:
	rra                                              ; $594a: $1f
	rra                                              ; $594b: $1f

jr_012_594c:
	rra                                              ; $594c: $1f
	inc  de                                          ; $594d: $13

jr_012_594e:
	ld   [de], a                                     ; $594e: $12
	ld   [de], a                                     ; $594f: $12
	inc  l                                           ; $5950: $2c
	inc  h                                           ; $5951: $24
	ret  z                                           ; $5952: $c8

	ret  c                                           ; $5953: $d8

	cp   a                                           ; $5954: $bf
	cp   a                                           ; $5955: $bf
	xor  c                                           ; $5956: $a9
	xor  c                                           ; $5957: $a9
	ld   l, a                                        ; $5958: $6f
	cpl                                              ; $5959: $2f
	ld   c, c                                        ; $595a: $49
	ld   c, e                                        ; $595b: $4b
	ret  nc                                          ; $595c: $d0

	ld   d, l                                        ; $595d: $55
	ret  nc                                          ; $595e: $d0

	sbc  b                                           ; $595f: $98
	inc  bc                                          ; $5960: $03
	rst  $38                                         ; $5961: $ff
	ld   hl, sp+$08                                  ; $5962: $f8 $08
	ld   a, b                                        ; $5964: $78
	ld   c, b                                        ; $5965: $48
	ld   [hl], b                                     ; $5966: $70
	ld   d, b                                        ; $5967: $50
	ld   [hl], b                                     ; $5968: $70
	ld   d, b                                        ; $5969: $50
	ldh  a, [$f0]                                    ; $596a: $f0 $f0
	ld   h, b                                        ; $596c: $60
	ld   h, b                                        ; $596d: $60
	ld   [hl], b                                     ; $596e: $70
	ld   d, b                                        ; $596f: $50
	ld   a, b                                        ; $5970: $78
	ld   l, b                                        ; $5971: $68
	ld   hl, sp+$48                                  ; $5972: $f8 $48
	cp   b                                           ; $5974: $b8
	ret  z                                           ; $5975: $c8

	ret  z                                           ; $5976: $c8

	ld   hl, sp+$70                                  ; $5977: $f8 $70
	ld   [hl], b                                     ; $5979: $70
	ret  nz                                          ; $597a: $c0

	ret  nz                                          ; $597b: $c0

	jr   nz, jr_012_599e                             ; $597c: $20 $20

	ldh  a, [$f0]                                    ; $597e: $f0 $f0
	inc  bc                                          ; $5980: $03
	inc  bc                                          ; $5981: $03
	inc  bc                                          ; $5982: $03
	inc  bc                                          ; $5983: $03
	ld   [bc], a                                     ; $5984: $02
	ld   [bc], a                                     ; $5985: $02
	inc  b                                           ; $5986: $04
	inc  b                                           ; $5987: $04
	inc  c                                           ; $5988: $0c
	inc  c                                           ; $5989: $0c
	db   $10                                         ; $598a: $10
	db   $10                                         ; $598b: $10
	jr   nz, jr_012_59ae                             ; $598c: $20 $20

	ld   h, b                                        ; $598e: $60
	ld   b, b                                        ; $598f: $40
	ld   a, h                                        ; $5990: $7c
	ld   a, h                                        ; $5991: $7c
	ld   e, a                                        ; $5992: $5f
	ld   h, e                                        ; $5993: $63
	cp   b                                           ; $5994: $b8
	rst  $38                                         ; $5995: $ff
	cp   [hl]                                        ; $5996: $be
	pop  hl                                          ; $5997: $e1
	rst  $38                                         ; $5998: $ff
	rst  $38                                         ; $5999: $ff
	nop                                              ; $599a: $00
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	nop                                              ; $599d: $00

jr_012_599e:
	nop                                              ; $599e: $00
	nop                                              ; $599f: $00
	ldh  [$ea], a                                    ; $59a0: $e0 $ea
	ld   a, a                                        ; $59a2: $7f
	rra                                              ; $59a3: $1f
	rra                                              ; $59a4: $1f
	ld   bc, $0107                                   ; $59a5: $01 $07 $01
	rlca                                             ; $59a8: $07
	ld   bc, $0206                                   ; $59a9: $01 $06 $02
	ld   c, $02                                      ; $59ac: $0e $02

jr_012_59ae:
	ld   c, $06                                      ; $59ae: $0e $06
	jr   jr_012_59ca                                 ; $59b0: $18 $18

	jr   nz, jr_012_59d4                             ; $59b2: $20 $20

	ldh  [$e0], a                                    ; $59b4: $e0 $e0
	ret  nz                                          ; $59b6: $c0

	ret  nz                                          ; $59b7: $c0

	add  b                                           ; $59b8: $80
	add  b                                           ; $59b9: $80
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00
	nop                                              ; $59bf: $00
	rst  JumpTable                                         ; $59c0: $df
	sbc  a                                           ; $59c1: $9f
	rst  $38                                         ; $59c2: $ff
	ldh  a, [$9c]                                    ; $59c3: $f0 $9c
	sbc  b                                           ; $59c5: $98
	ld   b, $04                                      ; $59c6: $06 $04
	ld   [bc], a                                     ; $59c8: $02
	ld   [bc], a                                     ; $59c9: $02

jr_012_59ca:
	ld   [bc], a                                     ; $59ca: $02
	ld   [bc], a                                     ; $59cb: $02
	ld   [bc], a                                     ; $59cc: $02
	ld   [bc], a                                     ; $59cd: $02
	ld   b, $04                                      ; $59ce: $06 $04
	inc  b                                           ; $59d0: $04
	inc  b                                           ; $59d1: $04
	inc  b                                           ; $59d2: $04
	inc  b                                           ; $59d3: $04

jr_012_59d4:
	dec  b                                           ; $59d4: $05
	dec  b                                           ; $59d5: $05
	ld   b, $07                                      ; $59d6: $06 $07
	ld   bc, $0001                                   ; $59d8: $01 $01 $00
	nop                                              ; $59db: $00
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	ret  z                                           ; $59e0: $c8

	adc  b                                           ; $59e1: $88
	add  h                                           ; $59e2: $84
	inc  b                                           ; $59e3: $04
	ld   [bc], a                                     ; $59e4: $02
	ld   [bc], a                                     ; $59e5: $02
	ld   [bc], a                                     ; $59e6: $02
	ld   [bc], a                                     ; $59e7: $02
	ld   [bc], a                                     ; $59e8: $02
	ld   [bc], a                                     ; $59e9: $02
	inc  b                                           ; $59ea: $04
	inc  b                                           ; $59eb: $04
	inc  b                                           ; $59ec: $04
	inc  b                                           ; $59ed: $04
	inc  b                                           ; $59ee: $04
	inc  b                                           ; $59ef: $04
	ld   a, $3e                                      ; $59f0: $3e $3e
	sbc  $e2                                         ; $59f2: $de $e2
	dec  e                                           ; $59f4: $1d
	ei                                               ; $59f5: $fb
	ld   a, c                                        ; $59f6: $79
	adc  a                                           ; $59f7: $8f
	rst  $38                                         ; $59f8: $ff
	rst  $38                                         ; $59f9: $ff
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	nop                                              ; $5a0c: $00
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	ld   bc, $0001                                   ; $5a12: $01 $01 $00
	nop                                              ; $5a15: $00
	ld   bc, $0201                                   ; $5a16: $01 $01 $02
	ld   [bc], a                                     ; $5a19: $02
	ld   [bc], a                                     ; $5a1a: $02
	ld   [bc], a                                     ; $5a1b: $02
	inc  b                                           ; $5a1c: $04
	ld   b, $04                                      ; $5a1d: $06 $04
	rlca                                             ; $5a1f: $07
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	ld   bc, $0601                                   ; $5a26: $01 $01 $06
	ld   b, $0a                                      ; $5a29: $06 $0a
	ld   c, $13                                      ; $5a2b: $0e $13
	rra                                              ; $5a2d: $1f
	ld   [hl], d                                     ; $5a2e: $72
	ld   a, a                                        ; $5a2f: $7f
	add  b                                           ; $5a30: $80
	rst  $38                                         ; $5a31: $ff
	ldh  [rIE], a                                    ; $5a32: $e0 $ff
	add  b                                           ; $5a34: $80
	rst  $38                                         ; $5a35: $ff
	ld   [bc], a                                     ; $5a36: $02
	ld   a, e                                        ; $5a37: $7b
	inc  b                                           ; $5a38: $04
	and  $04                                         ; $5a39: $e6 $04
	inc  b                                           ; $5a3b: $04
	ld   [$0b3c], sp                                 ; $5a3c: $08 $3c $0b
	rst  $38                                         ; $5a3f: $ff
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	nop                                              ; $5a45: $00
	nop                                              ; $5a46: $00
	nop                                              ; $5a47: $00
	nop                                              ; $5a48: $00
	nop                                              ; $5a49: $00
	cp   $fe                                         ; $5a4a: $fe $fe
	ld   bc, $00ff                                   ; $5a4c: $01 $ff $00
	rst  $38                                         ; $5a4f: $ff
	nop                                              ; $5a50: $00
	rst  $38                                         ; $5a51: $ff
	nop                                              ; $5a52: $00
	rst  $38                                         ; $5a53: $ff
	nop                                              ; $5a54: $00
	rst  $38                                         ; $5a55: $ff
	nop                                              ; $5a56: $00
	rst  $38                                         ; $5a57: $ff
	nop                                              ; $5a58: $00
	rst  $38                                         ; $5a59: $ff
	ld   [hl+], a                                    ; $5a5a: $22
	rst  $38                                         ; $5a5b: $ff
	ld   b, d                                        ; $5a5c: $42
	ld   e, e                                        ; $5a5d: $5b
	add  [hl]                                        ; $5a5e: $86
	sub  a                                           ; $5a5f: $97
	nop                                              ; $5a60: $00
	nop                                              ; $5a61: $00
	nop                                              ; $5a62: $00
	nop                                              ; $5a63: $00
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	nop                                              ; $5a66: $00
	nop                                              ; $5a67: $00
	nop                                              ; $5a68: $00
	nop                                              ; $5a69: $00
	nop                                              ; $5a6a: $00
	nop                                              ; $5a6b: $00
	add  b                                           ; $5a6c: $80
	add  b                                           ; $5a6d: $80
	ld   h, b                                        ; $5a6e: $60
	ldh  [rAUD1SWEEP], a                             ; $5a6f: $e0 $10
	ldh  a, [$78]                                    ; $5a71: $f0 $78
	ld   hl, sp+$10                                  ; $5a73: $f8 $10
	ldh  a, [$08]                                    ; $5a75: $f0 $08
	ld   hl, sp+$08                                  ; $5a77: $f8 $08
	ld   hl, sp+$04                                  ; $5a79: $f8 $04
	db   $fc                                         ; $5a7b: $fc
	ld   b, h                                        ; $5a7c: $44
	db   $f4                                         ; $5a7d: $f4
	ld   b, h                                        ; $5a7e: $44
	call nc, $0704                                   ; $5a7f: $d4 $04 $07
	inc  b                                           ; $5a82: $04
	rlca                                             ; $5a83: $07
	inc  b                                           ; $5a84: $04
	rlca                                             ; $5a85: $07
	dec  b                                           ; $5a86: $05
	rlca                                             ; $5a87: $07
	rlca                                             ; $5a88: $07
	rlca                                             ; $5a89: $07
	dec  b                                           ; $5a8a: $05
	dec  b                                           ; $5a8b: $05
	ld   bc, $0101                                   ; $5a8c: $01 $01 $01
	ld   bc, $0000                                   ; $5a8f: $01 $00 $00
	nop                                              ; $5a92: $00
	nop                                              ; $5a93: $00
	nop                                              ; $5a94: $00
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	nop                                              ; $5a99: $00
	nop                                              ; $5a9a: $00
	nop                                              ; $5a9b: $00
	nop                                              ; $5a9c: $00
	nop                                              ; $5a9d: $00
	nop                                              ; $5a9e: $00
	nop                                              ; $5a9f: $00
	inc  c                                           ; $5aa0: $0c
	rst  $38                                         ; $5aa1: $ff
	add  hl, bc                                      ; $5aa2: $09
	rst  $38                                         ; $5aa3: $ff
	add  e                                           ; $5aa4: $83
	rst  $38                                         ; $5aa5: $ff
	nop                                              ; $5aa6: $00
	rst  $38                                         ; $5aa7: $ff
	inc  bc                                          ; $5aa8: $03
	rst  $38                                         ; $5aa9: $ff
	rlca                                             ; $5aaa: $07
	db   $fc                                         ; $5aab: $fc
	rlca                                             ; $5aac: $07
	db   $fc                                         ; $5aad: $fc
	rlca                                             ; $5aae: $07
	db   $fc                                         ; $5aaf: $fc
	add  e                                           ; $5ab0: $83
	cp   $81                                         ; $5ab1: $fe $81
	rst  $38                                         ; $5ab3: $ff
	ld   b, b                                        ; $5ab4: $40
	ld   a, a                                        ; $5ab5: $7f
	jr   nz, jr_012_5af7                             ; $5ab6: $20 $3f

	add  hl, de                                      ; $5ab8: $19
	rra                                              ; $5ab9: $1f
	rrca                                             ; $5aba: $0f
	rrca                                             ; $5abb: $0f
	inc  c                                           ; $5abc: $0c
	ld   [$1119], sp                                 ; $5abd: $08 $19 $11
	adc  [hl]                                        ; $5ac0: $8e
	adc  e                                           ; $5ac1: $8b
	dec  sp                                          ; $5ac2: $3b

jr_012_5ac3:
	rst  $30                                         ; $5ac3: $f7
	rst  $38                                         ; $5ac4: $ff
	db   $e4                                         ; $5ac5: $e4
	ccf                                              ; $5ac6: $3f
	db   $e3                                         ; $5ac7: $e3
	inc  a                                           ; $5ac8: $3c
	db   $e4                                         ; $5ac9: $e4
	cp   h                                           ; $5aca: $bc
	pop  hl                                          ; $5acb: $e1
	rst  $38                                         ; $5acc: $ff
	ld   h, b                                        ; $5acd: $60
	rst  $38                                         ; $5ace: $ff
	nop                                              ; $5acf: $00
	ld   a, a                                        ; $5ad0: $7f
	ret  nz                                          ; $5ad1: $c0

	ld   a, a                                        ; $5ad2: $7f
	ret  nz                                          ; $5ad3: $c0

	ld   a, a                                        ; $5ad4: $7f
	ldh  [$ef], a                                    ; $5ad5: $e0 $ef
	ldh  a, [rAUD3LEN]                               ; $5ad7: $f0 $1b
	inc  e                                           ; $5ad9: $1c
	rst  $20                                         ; $5ada: $e7
	rst  $20                                         ; $5adb: $e7
	sbc  [hl]                                        ; $5adc: $9e
	sbc  [hl]                                        ; $5add: $9e
	ld   bc, $e401                                   ; $5ade: $01 $01 $e4
	and  h                                           ; $5ae1: $a4
	db   $e4                                         ; $5ae2: $e4
	inc  a                                           ; $5ae3: $3c
	add  sp, -$48                                    ; $5ae4: $e8 $b8
	add  sp, -$08                                    ; $5ae6: $e8 $f8
	or   b                                           ; $5ae8: $b0
	ldh  a, [$e0]                                    ; $5ae9: $f0 $e0
	and  b                                           ; $5aeb: $a0
	ld   h, b                                        ; $5aec: $60
	jr   nz, @-$0e                                   ; $5aed: $20 $f0

	db   $10                                         ; $5aef: $10
	ret  nc                                          ; $5af0: $d0

	jr   nc, jr_012_5ac3                             ; $5af1: $30 $d0

	jr   nc, jr_012_5b55                             ; $5af3: $30 $60

	ldh  [hScriptOpcodeParams], a                                    ; $5af5: $e0 $a0

jr_012_5af7:
	ld   h, b                                        ; $5af7: $60
	ld   b, b                                        ; $5af8: $40
	ret  nz                                          ; $5af9: $c0

	add  b                                           ; $5afa: $80
	add  b                                           ; $5afb: $80
	rlca                                             ; $5afc: $07
	rlca                                             ; $5afd: $07
	adc  e                                           ; $5afe: $8b
	adc  h                                           ; $5aff: $8c
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	nop                                              ; $5b0c: $00
	nop                                              ; $5b0d: $00
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	nop                                              ; $5b11: $00
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	ld   bc, $0201                                   ; $5b18: $01 $01 $02
	inc  bc                                          ; $5b1b: $03
	ld   [bc], a                                     ; $5b1c: $02
	ld   [bc], a                                     ; $5b1d: $02
	ld   [bc], a                                     ; $5b1e: $02
	inc  bc                                          ; $5b1f: $03
	db   $10                                         ; $5b20: $10
	db   $10                                         ; $5b21: $10
	jr   nc, @+$22                                   ; $5b22: $30 $20

	ld   [hl+], a                                    ; $5b24: $22
	ld   [hl+], a                                    ; $5b25: $22
	ld   [hl+], a                                    ; $5b26: $22
	ld   [hl+], a                                    ; $5b27: $22
	ld   h, c                                        ; $5b28: $61
	ld   b, c                                        ; $5b29: $41
	ld   b, b                                        ; $5b2a: $40
	ld   b, b                                        ; $5b2b: $40
	ld   b, b                                        ; $5b2c: $40
	ld   b, b                                        ; $5b2d: $40
	ret  nz                                          ; $5b2e: $c0

	add  b                                           ; $5b2f: $80
	add  b                                           ; $5b30: $80
	add  b                                           ; $5b31: $80
	add  b                                           ; $5b32: $80
	add  b                                           ; $5b33: $80
	rst  $38                                         ; $5b34: $ff
	rst  $38                                         ; $5b35: $ff
	ret  nz                                          ; $5b36: $c0

	ret  nz                                          ; $5b37: $c0

	cp   a                                           ; $5b38: $bf
	cp   a                                           ; $5b39: $bf
	ld   bc, $0111                                   ; $5b3a: $01 $11 $01
	xor  e                                           ; $5b3d: $ab
	nop                                              ; $5b3e: $00
	ld   b, h                                        ; $5b3f: $44
	ld   bc, $4301                                   ; $5b40: $01 $01 $43
	ld   bc, $03c2                                   ; $5b43: $01 $c2 $03
	jp   nz, $c343                                   ; $5b46: $c2 $43 $c3

	ld   b, e                                        ; $5b49: $43
	jp   $3ee3                                       ; $5b4a: $c3 $e3 $3e


	ld   a, $24                                      ; $5b4d: $3e $24
	inc  h                                           ; $5b4f: $24
	inc  l                                           ; $5b50: $2c
	inc  h                                           ; $5b51: $24
	ret  z                                           ; $5b52: $c8

	ret  c                                           ; $5b53: $d8

	cp   a                                           ; $5b54: $bf

jr_012_5b55:
	cp   a                                           ; $5b55: $bf
	xor  c                                           ; $5b56: $a9
	xor  c                                           ; $5b57: $a9
	ld   l, a                                        ; $5b58: $6f
	cpl                                              ; $5b59: $2f
	ld   c, c                                        ; $5b5a: $49
	ld   c, e                                        ; $5b5b: $4b
	ret  nc                                          ; $5b5c: $d0

	ld   d, l                                        ; $5b5d: $55
	ret  nc                                          ; $5b5e: $d0

	sbc  b                                           ; $5b5f: $98
	rst  $30                                         ; $5b60: $f7
	ld   hl, sp+$7f                                  ; $5b61: $f8 $7f
	add  b                                           ; $5b63: $80
	rst  $38                                         ; $5b64: $ff
	nop                                              ; $5b65: $00
	rst  $30                                         ; $5b66: $f7
	ld   [$fcfb], sp                                 ; $5b67: $08 $fb $fc
	add  a                                           ; $5b6a: $87
	add  a                                           ; $5b6b: $87
	ret  nz                                          ; $5b6c: $c0

	ret  nz                                          ; $5b6d: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $5b6e: $e0 $a0
	ld   a, b                                        ; $5b70: $78
	ld   l, b                                        ; $5b71: $68
	ld   hl, sp+$48                                  ; $5b72: $f8 $48
	cp   b                                           ; $5b74: $b8
	ret  z                                           ; $5b75: $c8

	ret  z                                           ; $5b76: $c8

	ld   hl, sp+$70                                  ; $5b77: $f8 $70
	ld   [hl], b                                     ; $5b79: $70
	ret  nz                                          ; $5b7a: $c0

	ret  nz                                          ; $5b7b: $c0

	jr   nz, jr_012_5b9e                             ; $5b7c: $20 $20

	ldh  a, [$f0]                                    ; $5b7e: $f0 $f0
	ld   [bc], a                                     ; $5b80: $02
	ld   [bc], a                                     ; $5b81: $02
	inc  bc                                          ; $5b82: $03
	inc  bc                                          ; $5b83: $03
	inc  b                                           ; $5b84: $04
	inc  b                                           ; $5b85: $04
	ld   [$1008], sp                                 ; $5b86: $08 $08 $10
	db   $10                                         ; $5b89: $10
	jr   nz, jr_012_5bac                             ; $5b8a: $20 $20

	jr   nz, jr_012_5bae                             ; $5b8c: $20 $20

	ld   h, b                                        ; $5b8e: $60
	ld   b, b                                        ; $5b8f: $40
	ld   a, h                                        ; $5b90: $7c
	ld   a, h                                        ; $5b91: $7c
	ld   a, a                                        ; $5b92: $7f
	ld   b, e                                        ; $5b93: $43
	cp   b                                           ; $5b94: $b8
	rst  JumpTable                                         ; $5b95: $df
	sbc  [hl]                                        ; $5b96: $9e
	pop  af                                          ; $5b97: $f1
	rst  $38                                         ; $5b98: $ff
	rst  $38                                         ; $5b99: $ff
	nop                                              ; $5b9a: $00
	nop                                              ; $5b9b: $00
	nop                                              ; $5b9c: $00
	nop                                              ; $5b9d: $00

jr_012_5b9e:
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	ret  nz                                          ; $5ba0: $c0

	jp   z, $3f7f                                    ; $5ba1: $ca $7f $3f

	rra                                              ; $5ba4: $1f
	ld   bc, $0107                                   ; $5ba5: $01 $07 $01
	rlca                                             ; $5ba8: $07
	ld   bc, $0206                                   ; $5ba9: $01 $06 $02

jr_012_5bac:
	ld   c, $06                                      ; $5bac: $0e $06

jr_012_5bae:
	inc  c                                           ; $5bae: $0c
	inc  c                                           ; $5baf: $0c
	db   $10                                         ; $5bb0: $10
	db   $10                                         ; $5bb1: $10
	jr   nz, jr_012_5bd4                             ; $5bb2: $20 $20

	ldh  [$e0], a                                    ; $5bb4: $e0 $e0
	ret  nz                                          ; $5bb6: $c0

	ret  nz                                          ; $5bb7: $c0

	add  b                                           ; $5bb8: $80
	add  b                                           ; $5bb9: $80
	nop                                              ; $5bba: $00
	nop                                              ; $5bbb: $00
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	rst  JumpTable                                         ; $5bc0: $df
	sbc  a                                           ; $5bc1: $9f
	rst  $38                                         ; $5bc2: $ff
	ldh  a, [$9c]                                    ; $5bc3: $f0 $9c
	sbc  b                                           ; $5bc5: $98
	ld   b, $04                                      ; $5bc6: $06 $04
	ld   [bc], a                                     ; $5bc8: $02
	ld   [bc], a                                     ; $5bc9: $02
	ld   [bc], a                                     ; $5bca: $02
	ld   [bc], a                                     ; $5bcb: $02
	ld   [bc], a                                     ; $5bcc: $02
	ld   [bc], a                                     ; $5bcd: $02
	ld   b, $04                                      ; $5bce: $06 $04
	inc  b                                           ; $5bd0: $04
	inc  b                                           ; $5bd1: $04
	inc  b                                           ; $5bd2: $04
	inc  b                                           ; $5bd3: $04

jr_012_5bd4:
	dec  b                                           ; $5bd4: $05
	dec  b                                           ; $5bd5: $05
	ld   b, $07                                      ; $5bd6: $06 $07
	ld   bc, $0001                                   ; $5bd8: $01 $01 $00
	nop                                              ; $5bdb: $00
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	nop                                              ; $5bdf: $00
	ret  z                                           ; $5be0: $c8

	adc  b                                           ; $5be1: $88
	adc  b                                           ; $5be2: $88
	ld   [$040c], sp                                 ; $5be3: $08 $0c $04
	inc  b                                           ; $5be6: $04
	inc  b                                           ; $5be7: $04
	inc  b                                           ; $5be8: $04
	inc  b                                           ; $5be9: $04
	inc  b                                           ; $5bea: $04
	inc  b                                           ; $5beb: $04
	inc  b                                           ; $5bec: $04
	inc  b                                           ; $5bed: $04
	inc  b                                           ; $5bee: $04
	inc  b                                           ; $5bef: $04
	ld   a, $3e                                      ; $5bf0: $3e $3e
	sbc  $e2                                         ; $5bf2: $de $e2
	dec  e                                           ; $5bf4: $1d
	ei                                               ; $5bf5: $fb
	ld   a, c                                        ; $5bf6: $79
	adc  a                                           ; $5bf7: $8f
	rst  $38                                         ; $5bf8: $ff
	rst  $38                                         ; $5bf9: $ff
	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00

Call_012_5c05:
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	nop                                              ; $5c0e: $00
	nop                                              ; $5c0f: $00
	rlca                                             ; $5c10: $07

jr_012_5c11:
	rlca                                             ; $5c11: $07
	ld   bc, $0601                                   ; $5c12: $01 $01 $06
	rlca                                             ; $5c15: $07
	ld   [$180e], sp                                 ; $5c16: $08 $0e $18
	rra                                              ; $5c19: $1f
	add  hl, bc                                      ; $5c1a: $09
	rrca                                             ; $5c1b: $0f
	ld   d, $1f                                      ; $5c1c: $16 $1f
	jr   @+$21                                       ; $5c1e: $18 $1f

	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	inc  bc                                          ; $5c28: $03
	inc  bc                                          ; $5c29: $03
	inc  a                                           ; $5c2a: $3c
	ccf                                              ; $5c2b: $3f
	ld   b, b                                        ; $5c2c: $40
	ld   a, a                                        ; $5c2d: $7f
	add  b                                           ; $5c2e: $80
	db   $e3                                         ; $5c2f: $e3
	add  b                                           ; $5c30: $80
	rst  $38                                         ; $5c31: $ff
	nop                                              ; $5c32: $00
	rst  ToBoot                                         ; $5c33: $c7
	nop                                              ; $5c34: $00
	rrca                                             ; $5c35: $0f
	nop                                              ; $5c36: $00
	ccf                                              ; $5c37: $3f
	ret  nz                                          ; $5c38: $c0

	rst  $30                                         ; $5c39: $f7
	nop                                              ; $5c3a: $00
	call $d900                                       ; $5c3b: $cd $00 $d9
	ld   [$00b8], sp                                 ; $5c3e: $08 $b8 $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	db   $10                                         ; $5c46: $10
	jr   nc, jr_012_5c11                             ; $5c47: $30 $c8

	ret  c                                           ; $5c49: $d8

	inc  h                                           ; $5c4a: $24
	db   $fc                                         ; $5c4b: $fc
	inc  b                                           ; $5c4c: $04
	db   $fc                                         ; $5c4d: $fc
	ld   b, $fe                                      ; $5c4e: $06 $fe
	inc  b                                           ; $5c50: $04
	rst  $38                                         ; $5c51: $ff
	nop                                              ; $5c52: $00
	rst  $38                                         ; $5c53: $ff

jr_012_5c54:
	nop                                              ; $5c54: $00
	cp   $00                                         ; $5c55: $fe $00
	rst  $38                                         ; $5c57: $ff
	nop                                              ; $5c58: $00
	rst  $38                                         ; $5c59: $ff
	nop                                              ; $5c5a: $00
	cp   a                                           ; $5c5b: $bf
	inc  b                                           ; $5c5c: $04
	ld   [hl], l                                     ; $5c5d: $75
	ld   [hl+], a                                    ; $5c5e: $22
	ld   a, d                                        ; $5c5f: $7a
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	ret  nz                                          ; $5c70: $c0

	ret  nz                                          ; $5c71: $c0

	jr   nz, jr_012_5c54                             ; $5c72: $20 $e0

	db   $10                                         ; $5c74: $10
	ldh  a, [rAUD1SWEEP]                             ; $5c75: $f0 $10
	ld   [hl], b                                     ; $5c77: $70
	ld   [$28b8], sp                                 ; $5c78: $08 $b8 $28
	cp   b                                           ; $5c7b: $b8
	ld   [$04d8], sp                                 ; $5c7c: $08 $d8 $04
	ld   e, h                                        ; $5c7f: $5c
	ld   [$110f], sp                                 ; $5c80: $08 $0f $11
	rra                                              ; $5c83: $1f
	ld   d, $1f                                      ; $5c84: $16 $1f
	jr   jr_012_5ca7                                 ; $5c86: $18 $1f

	inc  de                                          ; $5c88: $13
	rla                                              ; $5c89: $17
	inc  b                                           ; $5c8a: $04
	dec  b                                           ; $5c8b: $05
	inc  b                                           ; $5c8c: $04
	dec  b                                           ; $5c8d: $05
	nop                                              ; $5c8e: $00
	ld   bc, $0101                                   ; $5c8f: $01 $01 $01
	ld   bc, $0101                                   ; $5c92: $01 $01 $01

jr_012_5c95:
	ld   bc, $0000                                   ; $5c95: $01 $00 $00
	nop                                              ; $5c98: $00
	nop                                              ; $5c99: $00
	ld   bc, $0301                                   ; $5c9a: $01 $01 $03
	ld   [bc], a                                     ; $5c9d: $02
	rlca                                             ; $5c9e: $07

jr_012_5c9f:
	inc  b                                           ; $5c9f: $04
	jr   @-$05                                       ; $5ca0: $18 $f9

	jr   z, jr_012_5c9f                              ; $5ca2: $28 $fb

	jr   c, jr_012_5c95                              ; $5ca4: $38 $ef

	ld   sp, hl                                      ; $5ca6: $f9

jr_012_5ca7:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ca7: $cf
	db   $fd                                         ; $5ca8: $fd
	rst  $30                                         ; $5ca9: $f7
	rst  $28                                         ; $5caa: $ef
	or   e                                           ; $5cab: $b3
	rst  $38                                         ; $5cac: $ff
	ld   sp, hl                                      ; $5cad: $f9
	xor  a                                           ; $5cae: $af
	cp   h                                           ; $5caf: $bc
	and  a                                           ; $5cb0: $a7
	ld   [hl], b                                     ; $5cb1: $70
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb2: $cf
	nop                                              ; $5cb3: $00
	ld   a, a                                        ; $5cb4: $7f
	add  b                                           ; $5cb5: $80
	db   $fc                                         ; $5cb6: $fc
	add  e                                           ; $5cb7: $83
	ld   a, a                                        ; $5cb8: $7f
	ld   b, b                                        ; $5cb9: $40
	rst  $38                                         ; $5cba: $ff
	db   $e3                                         ; $5cbb: $e3
	rst  $38                                         ; $5cbc: $ff
	jr   @+$01                                       ; $5cbd: $18 $ff

	rrca                                             ; $5cbf: $0f
	pop  bc                                          ; $5cc0: $c1
	ei                                               ; $5cc1: $fb
	sub  b                                           ; $5cc2: $90
	rst  $38                                         ; $5cc3: $ff
	sub  d                                           ; $5cc4: $92
	rst  $38                                         ; $5cc5: $ff
	jp   nc, $c97f                                   ; $5cc6: $d2 $7f $c9

	ld   a, a                                        ; $5cc9: $7f
	cp   $3f                                         ; $5cca: $fe $3f
	xor  $73                                         ; $5ccc: $ee $73
	rst  $38                                         ; $5cce: $ff
	db   $fd                                         ; $5ccf: $fd
	and  a                                           ; $5cd0: $a7
	scf                                              ; $5cd1: $37
	and  e                                           ; $5cd2: $a3
	ld   [hl], l                                     ; $5cd3: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cd4: $cf
	ld   bc, $03fd                                   ; $5cd5: $01 $fd $03
	cp   $03                                         ; $5cd8: $fe $03
	db   $f4                                         ; $5cda: $f4
	dec  c                                           ; $5cdb: $0d
	db   $fd                                         ; $5cdc: $fd
	dec  e                                           ; $5cdd: $1d
	cp   $fe                                         ; $5cde: $fe $fe
	inc  b                                           ; $5ce0: $04
	inc  a                                           ; $5ce1: $3c
	add  h                                           ; $5ce2: $84
	db   $fc                                         ; $5ce3: $fc
	ld   b, h                                        ; $5ce4: $44
	db   $fc                                         ; $5ce5: $fc
	ld   b, h                                        ; $5ce6: $44
	db   $fc                                         ; $5ce7: $fc
	inc  l                                           ; $5ce8: $2c
	db   $fc                                         ; $5ce9: $fc
	ld   [hl], h                                     ; $5cea: $74
	db   $f4                                         ; $5ceb: $f4
	ldh  a, [$b0]                                    ; $5cec: $f0 $b0
	ldh  [$30], a                                    ; $5cee: $e0 $30
	ldh  a, [$30]                                    ; $5cf0: $f0 $30
	ldh  [rAUD4LEN], a                               ; $5cf2: $e0 $20
	ret  nz                                          ; $5cf4: $c0

	ret  nz                                          ; $5cf5: $c0

	nop                                              ; $5cf6: $00
	nop                                              ; $5cf7: $00
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	nop                                              ; $5cfd: $00
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00

jr_012_5d00:
	rlca                                             ; $5d00: $07
	inc  b                                           ; $5d01: $04
	dec  c                                           ; $5d02: $0d
	ld   c, $1e                                      ; $5d03: $0e $1e
	inc  de                                          ; $5d05: $13
	rra                                              ; $5d06: $1f
	inc  de                                          ; $5d07: $13
	dec  e                                           ; $5d08: $1d
	inc  de                                          ; $5d09: $13
	rra                                              ; $5d0a: $1f
	rra                                              ; $5d0b: $1f
	jr   c, jr_012_5d3e                              ; $5d0c: $38 $30

	ldh  [$c0], a                                    ; $5d0e: $e0 $c0
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	adc  a                                           ; $5d1a: $8f
	add  a                                           ; $5d1b: $87
	sbc  b                                           ; $5d1c: $98
	adc  b                                           ; $5d1d: $88
	ld   [hl], b                                     ; $5d1e: $70
	ld   [hl], b                                     ; $5d1f: $70
	ldh  a, [c]                                      ; $5d20: $f2
	inc  de                                          ; $5d21: $13
	reti                                             ; $5d22: $d9


	add  hl, sp                                      ; $5d23: $39
	inc  h                                           ; $5d24: $24
	db   $e4                                         ; $5d25: $e4
	jp   nz, $81c2                                   ; $5d26: $c2 $c2 $81

	ld   bc, $c1e1                                   ; $5d29: $01 $e1 $c1
	add  hl, sp                                      ; $5d2c: $39
	ld   sp, $1f1f                                   ; $5d2d: $31 $1f $1f
	ld   [de], a                                     ; $5d30: $12
	ld   [de], a                                     ; $5d31: $12
	ld   e, $1e                                      ; $5d32: $1e $1e
	ld   a, [de]                                     ; $5d34: $1a
	ld   a, [de]                                     ; $5d35: $1a
	ld   a, [de]                                     ; $5d36: $1a
	ld   e, $7a                                      ; $5d37: $1e $7a
	ld   a, [hl+]                                    ; $5d39: $2a
	ei                                               ; $5d3a: $fb
	bit  7, h                                        ; $5d3b: $cb $7c
	ld   b, l                                        ; $5d3d: $45

jr_012_5d3e:
	ld   h, $22                                      ; $5d3e: $26 $22
	dec  de                                          ; $5d40: $1b
	ei                                               ; $5d41: $fb
	db   $eb                                         ; $5d42: $eb
	dec  de                                          ; $5d43: $1b
	ld   [$959a], a                                  ; $5d44: $ea $9a $95
	push af                                          ; $5d47: $f5
	ld   l, d                                        ; $5d48: $6a
	ld   l, d                                        ; $5d49: $6a
	sub  [hl]                                        ; $5d4a: $96
	sub  d                                           ; $5d4b: $92
	inc  h                                           ; $5d4c: $24
	inc  h                                           ; $5d4d: $24
	call nz, $ccc4                                   ; $5d4e: $c4 $c4 $cc
	call nz, $a9b9                                   ; $5d51: $c4 $b9 $a9
	cp   $ff                                         ; $5d54: $fe $ff
	or   e                                           ; $5d56: $b3
	cp   [hl]                                        ; $5d57: $be
	cp   e                                           ; $5d58: $bb
	db   $fc                                         ; $5d59: $fc
	and  a                                           ; $5d5a: $a7
	and  h                                           ; $5d5b: $a4
	inc  hl                                          ; $5d5c: $23
	ld   h, e                                        ; $5d5d: $63
	jr   nz, jr_012_5d00                             ; $5d5e: $20 $a0

	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	add  b                                           ; $5d62: $80
	add  b                                           ; $5d63: $80
	ret  nz                                          ; $5d64: $c0

	ret  nz                                          ; $5d65: $c0

	ld   b, b                                        ; $5d66: $40
	ld   b, b                                        ; $5d67: $40
	ld   b, b                                        ; $5d68: $40
	ld   b, b                                        ; $5d69: $40
	ld   b, b                                        ; $5d6a: $40
	ld   b, b                                        ; $5d6b: $40
	ld   b, b                                        ; $5d6c: $40

jr_012_5d6d:
	ld   b, b                                        ; $5d6d: $40
	ld   b, b                                        ; $5d6e: $40
	ld   b, b                                        ; $5d6f: $40
	ldh  [$e0], a                                    ; $5d70: $e0 $e0
	ret  nc                                          ; $5d72: $d0

	jr   nc, jr_012_5d6d                             ; $5d73: $30 $f8

	ld   [$08f8], sp                                 ; $5d75: $08 $f8 $08
	ld   hl, sp+$18                                  ; $5d78: $f8 $18
	or   b                                           ; $5d7a: $b0
	ld   [hl], b                                     ; $5d7b: $70
	ldh  [$e0], a                                    ; $5d7c: $e0 $e0
	nop                                              ; $5d7e: $00
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	nop                                              ; $5d86: $00
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	nop                                              ; $5d89: $00
	nop                                              ; $5d8a: $00
	nop                                              ; $5d8b: $00
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	nop                                              ; $5d8f: $00
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
	inc  de                                          ; $5da0: $13
	inc  de                                          ; $5da1: $13
	ld   de, $2010                                   ; $5da2: $11 $10 $20
	jr   nz, jr_012_5dc7                             ; $5da5: $20 $20

	jr   nz, jr_012_5dc9                             ; $5da7: $20 $20

	jr   nz, jr_012_5dcb                             ; $5da9: $20 $20

	jr   nz, jr_012_5ded                             ; $5dab: $20 $40

	ld   b, b                                        ; $5dad: $40
	ld   b, b                                        ; $5dae: $40
	ld   b, b                                        ; $5daf: $40
	add  a                                           ; $5db0: $87
	add  a                                           ; $5db1: $87
	sbc  a                                           ; $5db2: $9f
	sbc  b                                           ; $5db3: $98
	rst  $20                                         ; $5db4: $e7
	ei                                               ; $5db5: $fb
	ld   e, a                                        ; $5db6: $5f
	ld   h, c                                        ; $5db7: $61
	ld   a, a                                        ; $5db8: $7f
	ld   a, a                                        ; $5db9: $7f
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	ldh  [$e0], a                                    ; $5dc0: $e0 $e0
	ret  nz                                          ; $5dc2: $c0

	ld   b, b                                        ; $5dc3: $40
	ret  nz                                          ; $5dc4: $c0

	ld   b, b                                        ; $5dc5: $40
	ld   b, b                                        ; $5dc6: $40

jr_012_5dc7:
	ld   b, b                                        ; $5dc7: $40
	ld   b, b                                        ; $5dc8: $40

jr_012_5dc9:
	ld   b, b                                        ; $5dc9: $40
	ld   b, b                                        ; $5dca: $40

jr_012_5dcb:
	ld   b, b                                        ; $5dcb: $40
	add  b                                           ; $5dcc: $80
	add  b                                           ; $5dcd: $80
	ld   b, b                                        ; $5dce: $40
	ld   b, b                                        ; $5dcf: $40
	ret  nz                                          ; $5dd0: $c0

	ret  nz                                          ; $5dd1: $c0

	add  b                                           ; $5dd2: $80
	add  b                                           ; $5dd3: $80
	ld   b, b                                        ; $5dd4: $40
	ret  nz                                          ; $5dd5: $c0

	ld   b, b                                        ; $5dd6: $40
	ret  nz                                          ; $5dd7: $c0

	ret  nz                                          ; $5dd8: $c0

	ret  nz                                          ; $5dd9: $c0

	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	nop                                              ; $5de5: $00
	nop                                              ; $5de6: $00
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00

jr_012_5ded:
	nop                                              ; $5ded: $00
	nop                                              ; $5dee: $00
	nop                                              ; $5def: $00
	nop                                              ; $5df0: $00
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	nop                                              ; $5df6: $00
	nop                                              ; $5df7: $00
	nop                                              ; $5df8: $00
	nop                                              ; $5df9: $00
	nop                                              ; $5dfa: $00
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	ld   bc, $0201                                   ; $5e18: $01 $01 $02
	inc  bc                                          ; $5e1b: $03
	ld   [bc], a                                     ; $5e1c: $02
	inc  bc                                          ; $5e1d: $03
	ld   b, $07                                      ; $5e1e: $06 $07
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	ld   bc, $0003                                   ; $5e30: $01 $03 $00
	nop                                              ; $5e33: $00
	ccf                                              ; $5e34: $3f
	ccf                                              ; $5e35: $3f
	ld   b, b                                        ; $5e36: $40
	ld   h, c                                        ; $5e37: $61
	add  b                                           ; $5e38: $80
	adc  a                                           ; $5e39: $8f
	nop                                              ; $5e3a: $00
	sbc  a                                           ; $5e3b: $9f
	nop                                              ; $5e3c: $00
	di                                               ; $5e3d: $f3
	ld   bc, $00ef                                   ; $5e3e: $01 $ef $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	ret  nz                                          ; $5e50: $c0

	ret  nz                                          ; $5e51: $c0

	or   d                                           ; $5e52: $b2
	ldh  a, [c]                                      ; $5e53: $f2
	ld   a, [bc]                                     ; $5e54: $0a
	ld   a, [$fb0b]                                  ; $5e55: $fa $0b $fb
	dec  b                                           ; $5e58: $05
	rst  $38                                         ; $5e59: $ff
	ld   bc, $01ff                                   ; $5e5a: $01 $ff $01
	rst  $38                                         ; $5e5d: $ff
	add  b                                           ; $5e5e: $80
	rst  $38                                         ; $5e5f: $ff
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
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
	ldh  a, [$f0]                                    ; $5e7c: $f0 $f0
	ld   e, b                                        ; $5e7e: $58
	ret  c                                           ; $5e7f: $d8

	ld   [$0b0f], sp                                 ; $5e80: $08 $0f $0b
	rrca                                             ; $5e83: $0f
	dec  e                                           ; $5e84: $1d
	dec  e                                           ; $5e85: $1d
	ld   de, $0111                                   ; $5e86: $11 $11 $01
	ld   bc, $0101                                   ; $5e89: $01 $01 $01
	inc  bc                                          ; $5e8c: $03
	inc  bc                                          ; $5e8d: $03
	inc  bc                                          ; $5e8e: $03
	ld   [bc], a                                     ; $5e8f: $02
	inc  bc                                          ; $5e90: $03
	ld   [bc], a                                     ; $5e91: $02
	inc  bc                                          ; $5e92: $03
	ld   [bc], a                                     ; $5e93: $02
	ld   bc, $0101                                   ; $5e94: $01 $01 $01
	ld   bc, $0707                                   ; $5e97: $01 $07 $07
	dec  e                                           ; $5e9a: $1d
	jr   jr_012_5eae                                 ; $5e9b: $18 $11

	add  hl, de                                      ; $5e9d: $19

jr_012_5e9e:
	pop  af                                          ; $5e9e: $f1
	pop  af                                          ; $5e9f: $f1
	ld   b, $fe                                      ; $5ea0: $06 $fe
	sbc  b                                           ; $5ea2: $98
	db   $fc                                         ; $5ea3: $fc
	db   $10                                         ; $5ea4: $10
	ei                                               ; $5ea5: $fb
	ld   [hl], b                                     ; $5ea6: $70
	rst  $38                                         ; $5ea7: $ff
	di                                               ; $5ea8: $f3
	sbc  a                                           ; $5ea9: $9f
	or   $ff                                         ; $5eaa: $f6 $ff
	ld   a, $7b                                      ; $5eac: $3e $7b

jr_012_5eae:
	sbc  a                                           ; $5eae: $9f
	rst  $10                                         ; $5eaf: $d7
	sbc  a                                           ; $5eb0: $9f
	push de                                          ; $5eb1: $d5
	rst  $38                                         ; $5eb2: $ff
	ld   bc, $02fe                                   ; $5eb3: $01 $fe $02
	rst  JumpTable                                         ; $5eb6: $df
	ld   hl, $807f                                   ; $5eb7: $21 $7f $80
	rst  $38                                         ; $5eba: $ff
	ldh  a, [$9f]                                    ; $5ebb: $f0 $9f
	adc  b                                           ; $5ebd: $88
	cp   a                                           ; $5ebe: $bf
	jr   c, jr_012_5ec1                              ; $5ebf: $38 $00

jr_012_5ec1:
	sbc  a                                           ; $5ec1: $9f
	nop                                              ; $5ec2: $00
	ccf                                              ; $5ec3: $3f
	nop                                              ; $5ec4: $00
	sbc  a                                           ; $5ec5: $9f
	ret  nz                                          ; $5ec6: $c0

	rst  ToBoot                                         ; $5ec7: $c7
	nop                                              ; $5ec8: $00
	ldh  [c], a                                      ; $5ec9: $e2
	nop                                              ; $5eca: $00
	cp   $60                                         ; $5ecb: $fe $60
	cp   $fc                                         ; $5ecd: $fe $fc
	sbc  a                                           ; $5ecf: $9f
	db   $fc                                         ; $5ed0: $fc
	rst  $20                                         ; $5ed1: $e7
	db   $db                                         ; $5ed2: $db
	rst  $20                                         ; $5ed3: $e7
	sbc  a                                           ; $5ed4: $9f
	call nc, $849f                                   ; $5ed5: $d4 $9f $84
	rst  $38                                         ; $5ed8: $ff
	ld   [$01ff], sp                                 ; $5ed9: $08 $ff $01
	rst  $38                                         ; $5edc: $ff
	rrca                                             ; $5edd: $0f
	ld   a, [$203e]                                  ; $5ede: $fa $3e $20
	ldh  [rAUD1SWEEP], a                             ; $5ee1: $e0 $10
	ldh  a, [$08]                                    ; $5ee3: $f0 $08
	ld   hl, sp+$08                                  ; $5ee5: $f8 $08
	ld   e, b                                        ; $5ee7: $58
	ld   [$0058], sp                                 ; $5ee8: $08 $58 $00
	ld   c, b                                        ; $5eeb: $48
	inc  b                                           ; $5eec: $04
	ld   c, h                                        ; $5eed: $4c
	nop                                              ; $5eee: $00
	db   $ec                                         ; $5eef: $ec
	inc  c                                           ; $5ef0: $0c
	db   $ec                                         ; $5ef1: $ec
	adc  h                                           ; $5ef2: $8c
	db   $fc                                         ; $5ef3: $fc
	ret  z                                           ; $5ef4: $c8

	ld   a, b                                        ; $5ef5: $78
	ret  z                                           ; $5ef6: $c8

	ld   a, b                                        ; $5ef7: $78
	sbc  b                                           ; $5ef8: $98
	ld   hl, sp-$70                                  ; $5ef9: $f8 $90
	ret  nc                                          ; $5efb: $d0

	jr   nz, jr_012_5e9e                             ; $5efc: $20 $a0

	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	xor  d                                           ; $5f00: $aa
	ld   [$aaaa], a                                  ; $5f01: $ea $aa $aa
	xor  e                                           ; $5f04: $ab
	jp   hl                                          ; $5f05: $e9


	xor  c                                           ; $5f06: $a9
	jp   hl                                          ; $5f07: $e9


	sbc  c                                           ; $5f08: $99
	sbc  c                                           ; $5f09: $99
	sbc  l                                           ; $5f0a: $9d
	db   $dd                                         ; $5f0b: $dd
	adc  a                                           ; $5f0c: $8f
	xor  a                                           ; $5f0d: $af
	adc  a                                           ; $5f0e: $8f
	rst  JumpTable                                         ; $5f0f: $df
	rst  $10                                         ; $5f10: $d7
	rst  $10                                         ; $5f11: $d7
	push hl                                          ; $5f12: $e5
	push hl                                          ; $5f13: $e5
	adc  l                                           ; $5f14: $8d
	adc  l                                           ; $5f15: $8d
	cp   l                                           ; $5f16: $bd
	sub  l                                           ; $5f17: $95
	ld   sp, hl                                      ; $5f18: $f9
	xor  c                                           ; $5f19: $a9
	ld   [hl], c                                     ; $5f1a: $71
	ld   [hl], c                                     ; $5f1b: $71
	dec  de                                          ; $5f1c: $1b
	ld   a, [de]                                     ; $5f1d: $1a
	rrca                                             ; $5f1e: $0f
	inc  c                                           ; $5f1f: $0c
	rrca                                             ; $5f20: $0f
	rlca                                             ; $5f21: $07
	inc  bc                                          ; $5f22: $03
	ld   bc, $0101                                   ; $5f23: $01 $01 $01
	rrca                                             ; $5f26: $0f
	rrca                                             ; $5f27: $0f
	ld   [hl], a                                     ; $5f28: $77
	ld   a, e                                        ; $5f29: $7b
	rst  $28                                         ; $5f2a: $ef
	or   b                                           ; $5f2b: $b0
	rst  $38                                         ; $5f2c: $ff
	db   $10                                         ; $5f2d: $10
	rst  $38                                         ; $5f2e: $ff
	ld   hl, sp+$3c                                  ; $5f2f: $f8 $3c
	ccf                                              ; $5f31: $3f
	di                                               ; $5f32: $f3
	rst  $38                                         ; $5f33: $ff
	rla                                              ; $5f34: $17
	jr   jr_012_5f4e                                 ; $5f35: $18 $17

	cp   b                                           ; $5f37: $b8
	rrca                                             ; $5f38: $0f
	ld   c, h                                        ; $5f39: $4c
	dec  c                                           ; $5f3a: $0d
	xor  [hl]                                        ; $5f3b: $ae
	ei                                               ; $5f3c: $fb
	ei                                               ; $5f3d: $fb
	ret  nc                                          ; $5f3e: $d0

	db   $10                                         ; $5f3f: $10
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	xor  $9e                                         ; $5f42: $ee $9e
	db   $f4                                         ; $5f44: $f4
	ld   c, $78                                      ; $5f45: $0e $78
	add  h                                           ; $5f47: $84
	db   $fc                                         ; $5f48: $fc
	add  h                                           ; $5f49: $84
	db   $f4                                         ; $5f4a: $f4
	inc  c                                           ; $5f4b: $0c
	ld   hl, sp+$38                                  ; $5f4c: $f8 $38

jr_012_5f4e:
	ldh  [$60], a                                    ; $5f4e: $e0 $60
	add  b                                           ; $5f50: $80
	add  b                                           ; $5f51: $80
	ret  nz                                          ; $5f52: $c0

	ret  nz                                          ; $5f53: $c0

	and  b                                           ; $5f54: $a0
	ld   h, b                                        ; $5f55: $60
	ldh  [rAUD4LEN], a                               ; $5f56: $e0 $20
	ldh  a, [$90]                                    ; $5f58: $f0 $90
	ldh  a, [$50]                                    ; $5f5a: $f0 $50
	ldh  a, [$d0]                                    ; $5f5c: $f0 $d0
	ld   h, b                                        ; $5f5e: $60
	ld   h, b                                        ; $5f5f: $60
	nop                                              ; $5f60: $00
	nop                                              ; $5f61: $00
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	nop                                              ; $5f74: $00
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	nop                                              ; $5f79: $00
	nop                                              ; $5f7a: $00
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	ld   c, $0a                                      ; $5f80: $0e $0a
	ld   c, $0a                                      ; $5f82: $0e $0a
	add  hl, bc                                      ; $5f84: $09
	add  hl, bc                                      ; $5f85: $09
	inc  b                                           ; $5f86: $04
	inc  b                                           ; $5f87: $04
	inc  b                                           ; $5f88: $04
	inc  b                                           ; $5f89: $04
	inc  b                                           ; $5f8a: $04
	inc  b                                           ; $5f8b: $04
	inc  c                                           ; $5f8c: $0c
	ld   [$0808], sp                                 ; $5f8d: $08 $08 $08
	ld   [$0908], sp                                 ; $5f90: $08 $08 $09
	ld   [$0b0f], sp                                 ; $5f93: $08 $0f $0b
	ld   c, $0f                                      ; $5f96: $0e $0f
	inc  bc                                          ; $5f98: $03
	inc  bc                                          ; $5f99: $03
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	db   $10                                         ; $5fa0: $10
	db   $10                                         ; $5fa1: $10
	db   $10                                         ; $5fa2: $10
	db   $10                                         ; $5fa3: $10
	db   $10                                         ; $5fa4: $10
	db   $10                                         ; $5fa5: $10
	db   $10                                         ; $5fa6: $10
	db   $10                                         ; $5fa7: $10
	jr   jr_012_5fb2                                 ; $5fa8: $18 $08

	ld   [$0808], sp                                 ; $5faa: $08 $08 $08
	ld   [$1818], sp                                 ; $5fad: $08 $18 $18
	inc  a                                           ; $5fb0: $3c
	inc  a                                           ; $5fb1: $3c

jr_012_5fb2:
	cp   $c2                                         ; $5fb2: $fe $c2
	ld   a, d                                        ; $5fb4: $7a
	sbc  [hl]                                        ; $5fb5: $9e
	ld   a, [hl-]                                    ; $5fb6: $3a
	adc  $fe                                         ; $5fb7: $ce $fe
	cp   $00                                         ; $5fb9: $fe $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	nop                                              ; $5fc7: $00
	nop                                              ; $5fc8: $00
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	nop                                              ; $5fcb: $00
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	nop                                              ; $5fcf: $00
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	nop                                              ; $5fdb: $00
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
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
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	nop                                              ; $600a: $00
	nop                                              ; $600b: $00
	ld   bc, $0601                                   ; $600c: $01 $01 $06
	rlca                                             ; $600f: $07
	ld   [$1e0f], sp                                 ; $6010: $08 $0f $1e
	rra                                              ; $6013: $1f
	ld   [$100d], sp                                 ; $6014: $08 $0d $10
	dec  de                                          ; $6017: $1b
	db   $10                                         ; $6018: $10
	ld   d, $20                                      ; $6019: $16 $20
	ld   [hl], $22                                   ; $601b: $36 $22
	ccf                                              ; $601d: $3f
	ld   [hl+], a                                    ; $601e: $22
	ccf                                              ; $601f: $3f
	nop                                              ; $6020: $00
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	ld   a, a                                        ; $602a: $7f
	ld   a, a                                        ; $602b: $7f
	add  b                                           ; $602c: $80
	rst  $38                                         ; $602d: $ff
	nop                                              ; $602e: $00
	rst  $38                                         ; $602f: $ff
	nop                                              ; $6030: $00
	rst  $38                                         ; $6031: $ff
	nop                                              ; $6032: $00
	rst  $38                                         ; $6033: $ff
	nop                                              ; $6034: $00
	rst  $38                                         ; $6035: $ff
	nop                                              ; $6036: $00
	ld   a, a                                        ; $6037: $7f
	nop                                              ; $6038: $00
	ld   a, a                                        ; $6039: $7f
	ld   b, h                                        ; $603a: $44
	ld   a, a                                        ; $603b: $7f
	ld   b, d                                        ; $603c: $42
	ld   e, d                                        ; $603d: $5a
	ld   h, c                                        ; $603e: $61
	jp   hl                                          ; $603f: $e9


	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	add  b                                           ; $6046: $80
	add  b                                           ; $6047: $80
	ld   h, b                                        ; $6048: $60
	ld   h, b                                        ; $6049: $60
	ld   d, b                                        ; $604a: $50
	ld   [hl], b                                     ; $604b: $70
	ret  z                                           ; $604c: $c8

	ld   hl, sp+$4e                                  ; $604d: $f8 $4e
	cp   $01                                         ; $604f: $fe $01
	rst  $38                                         ; $6051: $ff
	rlca                                             ; $6052: $07
	rst  $38                                         ; $6053: $ff
	ld   bc, $40ff                                   ; $6054: $01 $ff $40
	sbc  $20                                         ; $6057: $de $20
	ld   h, a                                        ; $6059: $67
	jr   nz, jr_012_607c                             ; $605a: $20 $20

	db   $10                                         ; $605c: $10
	inc  a                                           ; $605d: $3c
	ret  nc                                          ; $605e: $d0

	rst  $38                                         ; $605f: $ff

jr_012_6060:
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	add  b                                           ; $6072: $80
	add  b                                           ; $6073: $80
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	add  b                                           ; $6076: $80
	add  b                                           ; $6077: $80
	ld   b, b                                        ; $6078: $40
	ld   b, b                                        ; $6079: $40
	ld   b, b                                        ; $607a: $40
	ld   b, b                                        ; $607b: $40

jr_012_607c:
	jr   nz, jr_012_60de                             ; $607c: $20 $60

	jr   nz, jr_012_6060                             ; $607e: $20 $e0

	daa                                              ; $6080: $27
	dec  a                                           ; $6081: $3d
	daa                                              ; $6082: $27
	inc  a                                           ; $6083: $3c
	rla                                              ; $6084: $17
	dec  e                                           ; $6085: $1d
	rla                                              ; $6086: $17
	rra                                              ; $6087: $1f
	dec  c                                           ; $6088: $0d
	rrca                                             ; $6089: $0f
	add  a                                           ; $608a: $87
	dec  b                                           ; $608b: $05
	ld   b, $04                                      ; $608c: $06 $04
	rrca                                             ; $608e: $0f
	ld   [$fcfb], sp                                 ; $608f: $08 $fb $fc
	rlca                                             ; $6092: $07
	inc  b                                           ; $6093: $04
	rlca                                             ; $6094: $07
	inc  bc                                          ; $6095: $03
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	jr   jr_012_60a2                                 ; $6098: $18 $08

	db   $10                                         ; $609a: $10
	db   $10                                         ; $609b: $10
	jr   nc, @+$12                                   ; $609c: $30 $10

	jr   nz, jr_012_60c0                             ; $609e: $20 $20

	ld   [hl], c                                     ; $60a0: $71
	pop  de                                          ; $60a1: $d1

jr_012_60a2:
	ret  c                                           ; $60a2: $d8

	rst  $28                                         ; $60a3: $ef
	ei                                               ; $60a4: $fb
	cpl                                              ; $60a5: $2f
	db   $fc                                         ; $60a6: $fc
	rst  ToBoot                                         ; $60a7: $c7
	ccf                                              ; $60a8: $3f
	ld   h, $3f                                      ; $60a9: $26 $3f
	add  h                                           ; $60ab: $84
	rst  $38                                         ; $60ac: $ff
	ld   [$00ff], sp                                 ; $60ad: $08 $ff $00
	rst  $38                                         ; $60b0: $ff
	rlca                                             ; $60b1: $07
	db   $fc                                         ; $60b2: $fc
	inc  bc                                          ; $60b3: $03
	db   $db                                         ; $60b4: $db
	push hl                                          ; $60b5: $e5
	ld   a, d                                        ; $60b6: $7a
	dec  a                                           ; $60b7: $3d
	ld   c, $07                                      ; $60b8: $0e $07
	ld   bc, $0101                                   ; $60ba: $01 $01 $01
	ld   bc, $021a                                   ; $60bd: $01 $1a $02

jr_012_60c0:
	jr   nc, @+$01                                   ; $60c0: $30 $ff

jr_012_60c2:
	sub  b                                           ; $60c2: $90
	rst  $38                                         ; $60c3: $ff

jr_012_60c4:
	pop  bc                                          ; $60c4: $c1
	rst  $38                                         ; $60c5: $ff

jr_012_60c6:
	add  b                                           ; $60c6: $80
	rst  $38                                         ; $60c7: $ff
	add  b                                           ; $60c8: $80

jr_012_60c9:
	rst  $38                                         ; $60c9: $ff
	ret  nz                                          ; $60ca: $c0

	ld   a, a                                        ; $60cb: $7f
	ret  nz                                          ; $60cc: $c0

	ld   a, a                                        ; $60cd: $7f
	add  b                                           ; $60ce: $80
	rst  $38                                         ; $60cf: $ff
	call nz, $26ff                                   ; $60d0: $c4 $ff $26
	rst  $38                                         ; $60d3: $ff
	or   l                                           ; $60d4: $b5
	db   $fd                                         ; $60d5: $fd
	db   $ec                                         ; $60d6: $ec
	db   $ec                                         ; $60d7: $ec
	inc  h                                           ; $60d8: $24
	inc  h                                           ; $60d9: $24
	db   $fc                                         ; $60da: $fc
	db   $fc                                         ; $60db: $fc
	ld   b, $06                                      ; $60dc: $06 $06

jr_012_60de:
	inc  bc                                          ; $60de: $03
	inc  bc                                          ; $60df: $03
	jr   nz, jr_012_60c2                             ; $60e0: $20 $e0

	jr   nz, jr_012_60c4                             ; $60e2: $20 $e0

	jr   nz, jr_012_60c6                             ; $60e4: $20 $e0

	and  b                                           ; $60e6: $a0
	ldh  [$e0], a                                    ; $60e7: $e0 $e0
	ldh  [hScriptOpcodeParams], a                                    ; $60e9: $e0 $a0
	and  b                                           ; $60eb: $a0
	add  b                                           ; $60ec: $80
	add  b                                           ; $60ed: $80
	add  b                                           ; $60ee: $80
	add  b                                           ; $60ef: $80
	add  b                                           ; $60f0: $80
	add  b                                           ; $60f1: $80
	add  b                                           ; $60f2: $80
	add  b                                           ; $60f3: $80
	add  b                                           ; $60f4: $80
	add  b                                           ; $60f5: $80
	add  b                                           ; $60f6: $80
	add  b                                           ; $60f7: $80
	ld   b, b                                        ; $60f8: $40
	ld   b, b                                        ; $60f9: $40
	ld   e, $1e                                      ; $60fa: $1e $1e
	ccf                                              ; $60fc: $3f
	ld   hl, $213f                                   ; $60fd: $21 $3f $21
	ld   h, b                                        ; $6100: $60
	jr   nz, @+$42                                   ; $6101: $20 $40

	ld   b, b                                        ; $6103: $40
	ret  nz                                          ; $6104: $c0

	ret  nz                                          ; $6105: $c0

	ld   b, b                                        ; $6106: $40
	ld   b, b                                        ; $6107: $40
	ld   b, b                                        ; $6108: $40
	ld   b, b                                        ; $6109: $40
	ld   b, b                                        ; $610a: $40
	ld   b, b                                        ; $610b: $40
	ld   b, c                                        ; $610c: $41
	ld   b, b                                        ; $610d: $40
	ld   a, a                                        ; $610e: $7f
	ld   e, a                                        ; $610f: $5f
	ld   h, b                                        ; $6110: $60
	ld   h, b                                        ; $6111: $60
	ccf                                              ; $6112: $3f
	cpl                                              ; $6113: $2f
	ld   [hl], b                                     ; $6114: $70
	ld   [hl], b                                     ; $6115: $70
	ld   b, b                                        ; $6116: $40
	ld   h, d                                        ; $6117: $62
	ld   b, b                                        ; $6118: $40
	ld   e, c                                        ; $6119: $59
	ld   b, b                                        ; $611a: $40
	ld   h, [hl]                                     ; $611b: $66
	ld   c, a                                        ; $611c: $4f
	ld   c, a                                        ; $611d: $4f
	ld   a, a                                        ; $611e: $7f
	ld   [hl], b                                     ; $611f: $70
	rlca                                             ; $6120: $07
	nop                                              ; $6121: $00
	ld   [bc], a                                     ; $6122: $02
	ld   [bc], a                                     ; $6123: $02
	ld   [bc], a                                     ; $6124: $02
	ld   [bc], a                                     ; $6125: $02
	ld   de, $0c11                                   ; $6126: $11 $11 $0c
	inc  c                                           ; $6129: $0c
	inc  bc                                          ; $612a: $03
	inc  bc                                          ; $612b: $03
	cp   $fe                                         ; $612c: $fe $fe
	rrca                                             ; $612e: $0f
	inc  bc                                          ; $612f: $03
	cp   $7e                                         ; $6130: $fe $7e
	add  l                                           ; $6132: $85
	add  l                                           ; $6133: $85
	inc  b                                           ; $6134: $04
	ld   b, h                                        ; $6135: $44
	inc  b                                           ; $6136: $04
	xor  h                                           ; $6137: $ac
	inc  b                                           ; $6138: $04
	inc  d                                           ; $6139: $14
	rlca                                             ; $613a: $07
	xor  a                                           ; $613b: $af
	db   $fc                                         ; $613c: $fc
	db   $fc                                         ; $613d: $fc
	nop                                              ; $613e: $00
	nop                                              ; $613f: $00
	pop  bc                                          ; $6140: $c1
	ld   bc, $00ff                                   ; $6141: $01 $ff $00
	rra                                              ; $6144: $1f
	ld   h, b                                        ; $6145: $60
	rlca                                             ; $6146: $07
	jr   jr_012_60c9                                 ; $6147: $18 $80

	add  a                                           ; $6149: $87
	ld   b, c                                        ; $614a: $41
	pop  bc                                          ; $614b: $c1
	inc  sp                                          ; $614c: $33
	inc  sp                                          ; $614d: $33
	ld   l, $2e                                      ; $614e: $2e $2e
	ret  nz                                          ; $6150: $c0

	ret  nz                                          ; $6151: $c0

	ld   [hl], b                                     ; $6152: $70
	ld   [hl], b                                     ; $6153: $70
	adc  h                                           ; $6154: $8c
	xor  h                                           ; $6155: $ac
	add  d                                           ; $6156: $82
	sub  $fe                                         ; $6157: $d6 $fe
	cp   $81                                         ; $6159: $fe $81
	add  c                                           ; $615b: $81

jr_012_615c:
	ld   bc, $0101                                   ; $615c: $01 $01 $01
	ld   bc, $f1ef                                   ; $615f: $01 $ef $f1
	rst  $38                                         ; $6162: $ff
	ld   [hl], c                                     ; $6163: $71
	rst  $38                                         ; $6164: $ff
	ld   bc, $0df3                                   ; $6165: $01 $f3 $0d
	ld   c, $fe                                      ; $6168: $0e $fe
	jr   nc, jr_012_615c                             ; $616a: $30 $f0

	ret  nz                                          ; $616c: $c0

	ret  nz                                          ; $616d: $c0

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
	jr   jr_012_6192                                 ; $6180: $18 $10

	jr   jr_012_6194                                 ; $6182: $18 $10

	ld   [$1808], sp                                 ; $6184: $08 $08 $18
	db   $10                                         ; $6187: $10
	db   $10                                         ; $6188: $10
	db   $10                                         ; $6189: $10
	jr   nc, jr_012_61ac                             ; $618a: $30 $20

	jr   nz, jr_012_61ae                             ; $618c: $20 $20

	ld   h, b                                        ; $618e: $60
	ld   b, b                                        ; $618f: $40
	ld   a, [hl]                                     ; $6190: $7e
	ld   a, [hl]                                     ; $6191: $7e

jr_012_6192:
	ld   b, a                                        ; $6192: $47
	ld   a, e                                        ; $6193: $7b

jr_012_6194:
	rst  $38                                         ; $6194: $ff
	add  b                                           ; $6195: $80
	cp   a                                           ; $6196: $bf
	pop  bc                                          ; $6197: $c1
	rst  $38                                         ; $6198: $ff
	rst  $38                                         ; $6199: $ff
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	ld   bc, $0701                                   ; $61a0: $01 $01 $07
	ld   b, $09                                      ; $61a3: $06 $09
	add  hl, bc                                      ; $61a5: $09
	ld   [$0808], sp                                 ; $61a6: $08 $08 $08
	ld   [$0818], sp                                 ; $61a9: $08 $18 $08

jr_012_61ac:
	jr   nc, jr_012_61be                             ; $61ac: $30 $10

jr_012_61ae:
	jr   nz, jr_012_61d0                             ; $61ae: $20 $20

	jr   nz, jr_012_61d2                             ; $61b0: $20 $20

	and  b                                           ; $61b2: $a0
	and  b                                           ; $61b3: $a0
	ld   h, b                                        ; $61b4: $60
	ldh  [$c0], a                                    ; $61b5: $e0 $c0
	ld   b, b                                        ; $61b7: $40
	ret  nz                                          ; $61b8: $c0

	ret  nz                                          ; $61b9: $c0

	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00

jr_012_61be:
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	add  hl, de                                      ; $61c0: $19
	ld   de, $6171                                   ; $61c1: $11 $71 $61
	add  b                                           ; $61c4: $80
	add  b                                           ; $61c5: $80
	add  b                                           ; $61c6: $80
	add  b                                           ; $61c7: $80
	add  c                                           ; $61c8: $81
	add  c                                           ; $61c9: $81
	add  d                                           ; $61ca: $82
	add  e                                           ; $61cb: $83
	db   $fd                                         ; $61cc: $fd
	cp   $20                                         ; $61cd: $fe $20
	ccf                                              ; $61cf: $3f

jr_012_61d0:
	ld   e, $1f                                      ; $61d0: $1e $1f

jr_012_61d2:
	ld   bc, $0001                                   ; $61d2: $01 $01 $00
	nop                                              ; $61d5: $00
	nop                                              ; $61d6: $00
	nop                                              ; $61d7: $00
	nop                                              ; $61d8: $00
	nop                                              ; $61d9: $00
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	add  b                                           ; $61e2: $80
	add  b                                           ; $61e3: $80
	add  b                                           ; $61e4: $80
	add  b                                           ; $61e5: $80
	ld   b, b                                        ; $61e6: $40
	ld   b, b                                        ; $61e7: $40
	ret  nz                                          ; $61e8: $c0

	ret  nz                                          ; $61e9: $c0

	ldh  [rAUD4LEN], a                               ; $61ea: $e0 $20
	ldh  a, [rAUD1SWEEP]                             ; $61ec: $f0 $10
	ldh  a, [rSVBK]                                  ; $61ee: $f0 $70
	ldh  a, [rAUD1SWEEP]                             ; $61f0: $f0 $10
	ldh  a, [$f0]                                    ; $61f2: $f0 $f0
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
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	ld   bc, $0601                                   ; $6212: $01 $01 $06
	rlca                                             ; $6215: $07
	dec  c                                           ; $6216: $0d
	rrca                                             ; $6217: $0f
	ld   [bc], a                                     ; $6218: $02
	inc  bc                                          ; $6219: $03
	inc  b                                           ; $621a: $04
	rlca                                             ; $621b: $07
	inc  b                                           ; $621c: $04
	rlca                                             ; $621d: $07
	ld   [$000f], sp                                 ; $621e: $08 $0f $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	rra                                              ; $6230: $1f
	rra                                              ; $6231: $1f
	ldh  [$ef], a                                    ; $6232: $e0 $ef
	nop                                              ; $6234: $00
	add  a                                           ; $6235: $87
	nop                                              ; $6236: $00
	cp   a                                           ; $6237: $bf
	nop                                              ; $6238: $00
	ld   l, a                                        ; $6239: $6f
	nop                                              ; $623a: $00
	jp   $b700                                       ; $623b: $c3 $00 $b7


	inc  b                                           ; $623e: $04
	rst  $28                                         ; $623f: $ef
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00

jr_012_6244:
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	nop                                              ; $624c: $00
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	ret  nz                                          ; $6250: $c0

	ret  nz                                          ; $6251: $c0

	jr   nc, jr_012_6244                             ; $6252: $30 $f0

	rla                                              ; $6254: $17
	rst  $30                                         ; $6255: $f7
	add  hl, bc                                      ; $6256: $09
	rst  $38                                         ; $6257: $ff
	ld   [de], a                                     ; $6258: $12
	cp   $03                                         ; $6259: $fe $03
	rst  $38                                         ; $625b: $ff
	nop                                              ; $625c: $00
	di                                               ; $625d: $f3
	nop                                              ; $625e: $00
	ld   sp, hl                                      ; $625f: $f9
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	add  b                                           ; $6274: $80
	add  b                                           ; $6275: $80
	ret  nz                                          ; $6276: $c0

	ret  nz                                          ; $6277: $c0

	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	add  b                                           ; $627a: $80
	add  b                                           ; $627b: $80
	ld   b, b                                        ; $627c: $40

jr_012_627d:
	ret  nz                                          ; $627d: $c0

	ld   b, b                                        ; $627e: $40
	ret  nz                                          ; $627f: $c0

	ret  z                                           ; $6280: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6281: $cf

Jump_012_6282:
	jp   hl                                          ; $6282: $e9


	cpl                                              ; $6283: $2f
	jp   hl                                          ; $6284: $e9


	rst  $28                                         ; $6285: $ef
	push af                                          ; $6286: $f5
	sub  a                                           ; $6287: $97
	ld   [hl], l                                     ; $6288: $75
	rst  $30                                         ; $6289: $f7
	ld   d, e                                        ; $628a: $53
	or   e                                           ; $628b: $b3
	ei                                               ; $628c: $fb
	adc  d                                           ; $628d: $8a
	rst  $38                                         ; $628e: $ff
	ld   l, [hl]                                     ; $628f: $6e
	rst  $38                                         ; $6290: $ff
	rra                                              ; $6291: $1f
	ld   a, [hl]                                     ; $6292: $7e
	add  [hl]                                        ; $6293: $86
	ld   a, a                                        ; $6294: $7f
	pop  bc                                          ; $6295: $c1
	rst  $38                                         ; $6296: $ff
	pop  bc                                          ; $6297: $c1
	ccf                                              ; $6298: $3f
	ld   hl, $111f                                   ; $6299: $21 $1f $11
	rrca                                             ; $629c: $0f
	rrca                                             ; $629d: $0f
	rst  $38                                         ; $629e: $ff
	di                                               ; $629f: $f3
	ret  z                                           ; $62a0: $c8

	ei                                               ; $62a1: $fb
	ld   [$18fd], sp                                 ; $62a2: $08 $fd $18
	cp   $7c                                         ; $62a5: $fe $7c
	rst  $30                                         ; $62a7: $f7
	db   $fd                                         ; $62a8: $fd
	cp   a                                           ; $62a9: $bf
	cp   $77                                         ; $62aa: $fe $77
	adc  $cb                                         ; $62ac: $ce $cb
	adc  $63                                         ; $62ae: $ce $63
	adc  a                                           ; $62b0: $8f
	pop  bc                                          ; $62b1: $c1
	ld   a, a                                        ; $62b2: $7f
	ld   b, d                                        ; $62b3: $42
	ccf                                              ; $62b4: $3f
	jr   nz, @+$21                                   ; $62b5: $20 $1f

	ld   de, $181f                                   ; $62b7: $11 $1f $18
	ld   b, $07                                      ; $62ba: $06 $07
	ld   b, l                                        ; $62bc: $45
	ld   b, l                                        ; $62bd: $45
	ret  z                                           ; $62be: $c8

	adc  b                                           ; $62bf: $88
	nop                                              ; $62c0: $00
	ldh  a, [rP1]                                    ; $62c1: $f0 $00
	and  d                                           ; $62c3: $a2

jr_012_62c4:
	jr   nz, jr_012_627d                             ; $62c4: $20 $b7

	db   $10                                         ; $62c6: $10
	rst  JumpTable                                         ; $62c7: $df
	db   $10                                         ; $62c8: $10
	rst  $38                                         ; $62c9: $ff

jr_012_62ca:
	sub  b                                           ; $62ca: $90
	rst  $38                                         ; $62cb: $ff

jr_012_62cc:
	adc  b                                           ; $62cc: $88
	rst  $38                                         ; $62cd: $ff

jr_012_62ce:
	ret  z                                           ; $62ce: $c8

	ld   a, a                                        ; $62cf: $7f
	add  sp, $3f                                     ; $62d0: $e8 $3f
	add  sp, $3f                                     ; $62d2: $e8 $3f
	jp   nz, $d27f                                   ; $62d4: $c2 $7f $d2

	rst  $38                                         ; $62d7: $ff
	dec  [hl]                                        ; $62d8: $35
	db   $fd                                         ; $62d9: $fd
	call nc, Call_012_58dc                           ; $62da: $d4 $dc $58
	ret  c                                           ; $62dd: $d8

	ld   c, b                                        ; $62de: $48
	ld   c, b                                        ; $62df: $48
	jr   nz, @-$1e                                   ; $62e0: $20 $e0

	jr   nz, jr_012_62c4                             ; $62e2: $20 $e0

	jr   nz, jr_012_6346                             ; $62e4: $20 $60

	jr   nz, jr_012_6348                             ; $62e6: $20 $60

	jr   nz, jr_012_62ca                             ; $62e8: $20 $e0

	jr   nz, jr_012_62cc                             ; $62ea: $20 $e0

jr_012_62ec:
	jr   nz, jr_012_62ce                             ; $62ec: $20 $e0

	ld   b, b                                        ; $62ee: $40
	ret  nz                                          ; $62ef: $c0

	ld   b, b                                        ; $62f0: $40
	ret  nz                                          ; $62f1: $c0

	ld   b, b                                        ; $62f2: $40
	ret  nz                                          ; $62f3: $c0

	ld   b, b                                        ; $62f4: $40
	ret  nz                                          ; $62f5: $c0

	ld   b, b                                        ; $62f6: $40
	ret  nz                                          ; $62f7: $c0

	ld   b, b                                        ; $62f8: $40
	ret  nz                                          ; $62f9: $c0

	ret  nz                                          ; $62fa: $c0

	ret  nz                                          ; $62fb: $c0

	ld   b, b                                        ; $62fc: $40
	ld   b, b                                        ; $62fd: $40
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	adc  $4a                                         ; $6300: $ce $4a
	ld   c, a                                        ; $6302: $4f
	ld   c, a                                        ; $6303: $4f
	ld   h, $26                                      ; $6304: $26 $26
	inc  de                                          ; $6306: $13
	inc  de                                          ; $6307: $13
	inc  de                                          ; $6308: $13
	inc  de                                          ; $6309: $13
	ld   a, [bc]                                     ; $630a: $0a
	ld   a, [bc]                                     ; $630b: $0a
	dec  b                                           ; $630c: $05
	dec  b                                           ; $630d: $05
	add  h                                           ; $630e: $84
	inc  b                                           ; $630f: $04
	jp   nz, Jump_012_6282                           ; $6310: $c2 $82 $62

	ld   b, d                                        ; $6313: $42
	ld   [hl+], a                                    ; $6314: $22
	inc  hl                                          ; $6315: $23
	ld   [de], a                                     ; $6316: $12
	ld   [bc], a                                     ; $6317: $02
	ld   [de], a                                     ; $6318: $12
	ld   [de], a                                     ; $6319: $12
	ld   de, $1811                                   ; $631a: $11 $11 $18
	db   $10                                         ; $631d: $10
	ld   [$3008], sp                                 ; $631e: $08 $08 $30
	jr   nc, @-$3e                                   ; $6321: $30 $c0

	ret  nz                                          ; $6323: $c0

	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	ld   bc, $8100                                   ; $6328: $01 $00 $81
	add  c                                           ; $632b: $81
	ld   b, d                                        ; $632c: $42
	ld   b, d                                        ; $632d: $42
	and  d                                           ; $632e: $a2
	and  d                                           ; $632f: $a2
	ld   e, h                                        ; $6330: $5c
	ld   d, h                                        ; $6331: $54
	jr   c, jr_012_62ec                              ; $6332: $38 $b8

	db   $10                                         ; $6334: $10
	db   $10                                         ; $6335: $10
	db   $10                                         ; $6336: $10
	or   b                                           ; $6337: $b0
	db   $10                                         ; $6338: $10
	ld   d, b                                        ; $6339: $50
	ldh  [$e0], a                                    ; $633a: $e0 $e0
	ld   h, b                                        ; $633c: $60
	jr   nz, jr_012_635f                             ; $633d: $20 $20

	jr   nz, @+$42                                   ; $633f: $20 $40

	ld   b, b                                        ; $6341: $40
	add  b                                           ; $6342: $80
	add  b                                           ; $6343: $80
	add  b                                           ; $6344: $80
	add  b                                           ; $6345: $80

jr_012_6346:
	add  b                                           ; $6346: $80
	add  b                                           ; $6347: $80

jr_012_6348:
	add  b                                           ; $6348: $80
	add  b                                           ; $6349: $80
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00

jr_012_635f:
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	ld   [$0808], sp                                 ; $6380: $08 $08 $08
	ld   [$0808], sp                                 ; $6383: $08 $08 $08
	ld   [$0808], sp                                 ; $6386: $08 $08 $08
	ld   [$1018], sp                                 ; $6389: $08 $18 $10
	db   $10                                         ; $638c: $10
	db   $10                                         ; $638d: $10
	db   $10                                         ; $638e: $10
	db   $10                                         ; $638f: $10
	db   $10                                         ; $6390: $10
	db   $10                                         ; $6391: $10
	inc  de                                          ; $6392: $13
	inc  de                                          ; $6393: $13
	inc  d                                           ; $6394: $14
	rla                                              ; $6395: $17
	dec  d                                           ; $6396: $15
	ld   d, $0f                                      ; $6397: $16 $0f
	rrca                                             ; $6399: $0f
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	jr   nz, jr_012_63c2                             ; $63a0: $20 $20

	jr   nz, jr_012_63c4                             ; $63a2: $20 $20

	jr   nz, jr_012_63c6                             ; $63a4: $20 $20

	jr   nz, jr_012_63c8                             ; $63a6: $20 $20

	jr   nc, jr_012_63ba                             ; $63a8: $30 $10

	db   $10                                         ; $63aa: $10
	db   $10                                         ; $63ab: $10
	db   $10                                         ; $63ac: $10
	db   $10                                         ; $63ad: $10
	db   $10                                         ; $63ae: $10
	db   $10                                         ; $63af: $10
	ld   hl, sp-$08                                  ; $63b0: $f8 $f8
	ld   l, b                                        ; $63b2: $68
	sbc  b                                           ; $63b3: $98
	db   $f4                                         ; $63b4: $f4
	inc  c                                           ; $63b5: $0c
	db   $f4                                         ; $63b6: $f4
	inc  c                                           ; $63b7: $0c
	db   $fc                                         ; $63b8: $fc
	db   $fc                                         ; $63b9: $fc

jr_012_63ba:
	nop                                              ; $63ba: $00
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00

jr_012_63c2:
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00

jr_012_63c4:
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00

jr_012_63c6:
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00

jr_012_63c8:
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00

Call_012_63cf:
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
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
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	inc  bc                                          ; $6412: $03
	inc  bc                                          ; $6413: $03
	inc  b                                           ; $6414: $04
	rlca                                             ; $6415: $07
	rra                                              ; $6416: $1f
	rra                                              ; $6417: $1f
	ld   [bc], a                                     ; $6418: $02
	inc  bc                                          ; $6419: $03
	inc  b                                           ; $641a: $04
	rlca                                             ; $641b: $07
	inc  e                                           ; $641c: $1c
	rra                                              ; $641d: $1f
	ld   [$000f], sp                                 ; $641e: $08 $0f $00
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
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	ld   a, a                                        ; $6430: $7f
	ld   a, a                                        ; $6431: $7f
	add  b                                           ; $6432: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6433: $cf
	nop                                              ; $6434: $00
	add  a                                           ; $6435: $87
	add  b                                           ; $6436: $80
	cp   a                                           ; $6437: $bf
	nop                                              ; $6438: $00
	ld   l, a                                        ; $6439: $6f
	nop                                              ; $643a: $00
	jp   $b700                                       ; $643b: $c3 $00 $b7


	nop                                              ; $643e: $00
	rst  $28                                         ; $643f: $ef
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	add  b                                           ; $6450: $80
	add  b                                           ; $6451: $80
	ld   h, b                                        ; $6452: $60
	ldh  [$2f], a                                    ; $6453: $e0 $2f
	rst  $28                                         ; $6455: $ef
	add  hl, de                                      ; $6456: $19
	rst  $38                                         ; $6457: $ff
	ld   [de], a                                     ; $6458: $12
	cp   $03                                         ; $6459: $fe $03
	rst  $38                                         ; $645b: $ff
	ld   bc, $00f3                                   ; $645c: $01 $f3 $00
	ld   sp, hl                                      ; $645f: $f9
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	add  b                                           ; $6477: $80
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	add  b                                           ; $647c: $80

jr_012_647d:
	add  b                                           ; $647d: $80
	add  b                                           ; $647e: $80
	add  b                                           ; $647f: $80
	inc  c                                           ; $6480: $0c
	rrca                                             ; $6481: $0f
	inc  d                                           ; $6482: $14
	rla                                              ; $6483: $17
	dec  b                                           ; $6484: $05
	rlca                                             ; $6485: $07
	rst  $20                                         ; $6486: $e7
	rst  $20                                         ; $6487: $e7
	db   $e3                                         ; $6488: $e3
	inc  hl                                          ; $6489: $23
	di                                               ; $648a: $f3
	di                                               ; $648b: $f3
	ei                                               ; $648c: $fb
	sbc  d                                           ; $648d: $9a
	ld   a, a                                        ; $648e: $7f
	db   $ec                                         ; $648f: $ec
	ld   a, a                                        ; $6490: $7f
	add  h                                           ; $6491: $84
	rst  $38                                         ; $6492: $ff
	rst  ToBoot                                         ; $6493: $c7
	ld   a, $2e                                      ; $6494: $3e $2e
	ld   hl, sp-$08                                  ; $6496: $f8 $f8
	rst  $38                                         ; $6498: $ff
	rlca                                             ; $6499: $07
	rst  $38                                         ; $649a: $ff
	nop                                              ; $649b: $00
	rlca                                             ; $649c: $07
	ld   hl, sp-$19                                  ; $649d: $f8 $e7
	db   $fc                                         ; $649f: $fc
	ld   b, b                                        ; $64a0: $40
	db   $fd                                         ; $64a1: $fd
	add  b                                           ; $64a2: $80
	db   $fc                                         ; $64a3: $fc

Jump_012_64a4:
	inc  c                                           ; $64a4: $0c
	db   $fc                                         ; $64a5: $fc
	ld   a, h                                        ; $64a6: $7c
	or   $fc                                         ; $64a7: $f6 $fc
	cp   a                                           ; $64a9: $bf
	db   $fc                                         ; $64aa: $fc
	ld   [hl], a                                     ; $64ab: $77
	adc  $cb                                         ; $64ac: $ce $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ae: $cf
	ld   h, e                                        ; $64af: $63
	adc  a                                           ; $64b0: $8f
	ld   b, c                                        ; $64b1: $41
	rst  $38                                         ; $64b2: $ff
	add  d                                           ; $64b3: $82
	ld   a, a                                        ; $64b4: $7f
	ld   h, b                                        ; $64b5: $60
	rra                                              ; $64b6: $1f
	inc  de                                          ; $64b7: $13
	sbc  a                                           ; $64b8: $9f
	adc  l                                           ; $64b9: $8d
	adc  $47                                         ; $64ba: $ce $47
	push hl                                          ; $64bc: $e5
	dec  h                                           ; $64bd: $25
	push hl                                          ; $64be: $e5
	dec  h                                           ; $64bf: $25
	nop                                              ; $64c0: $00
	ldh  a, [rP1]                                    ; $64c1: $f0 $00
	and  d                                           ; $64c3: $a2
	jr   nz, jr_012_647d                             ; $64c4: $20 $b7

	sub  b                                           ; $64c6: $90
	rst  JumpTable                                         ; $64c7: $df
	sub  b                                           ; $64c8: $90
	rst  $38                                         ; $64c9: $ff
	sub  b                                           ; $64ca: $90
	rst  $38                                         ; $64cb: $ff
	adc  b                                           ; $64cc: $88
	rst  $38                                         ; $64cd: $ff
	ret  z                                           ; $64ce: $c8

	ld   a, a                                        ; $64cf: $7f
	ld   hl, sp+$3f                                  ; $64d0: $f8 $3f
	add  sp, $3f                                     ; $64d2: $e8 $3f
	jp   nz, $127f                                   ; $64d4: $c2 $7f $12

	rst  $38                                         ; $64d7: $ff
	dec  [hl]                                        ; $64d8: $35
	db   $fd                                         ; $64d9: $fd
	push de                                          ; $64da: $d5
	db   $dd                                         ; $64db: $dd
	ld   c, b                                        ; $64dc: $48
	ret  z                                           ; $64dd: $c8

	ld   c, b                                        ; $64de: $48
	ld   c, b                                        ; $64df: $48
	ld   b, b                                        ; $64e0: $40
	ret  nz                                          ; $64e1: $c0

	ld   b, b                                        ; $64e2: $40
	ret  nz                                          ; $64e3: $c0

	ld   b, b                                        ; $64e4: $40
	ld   b, b                                        ; $64e5: $40
	ld   b, b                                        ; $64e6: $40
	ld   b, b                                        ; $64e7: $40
	ld   b, b                                        ; $64e8: $40
	ret  nz                                          ; $64e9: $c0

	ld   b, b                                        ; $64ea: $40
	ret  nz                                          ; $64eb: $c0

	ld   b, b                                        ; $64ec: $40
	ret  nz                                          ; $64ed: $c0

	add  b                                           ; $64ee: $80
	add  b                                           ; $64ef: $80
	add  b                                           ; $64f0: $80
	add  b                                           ; $64f1: $80
	add  b                                           ; $64f2: $80
	add  b                                           ; $64f3: $80
	add  b                                           ; $64f4: $80
	add  b                                           ; $64f5: $80
	add  b                                           ; $64f6: $80
	add  b                                           ; $64f7: $80
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	rst  $28                                         ; $6500: $ef
	call c, $f3f3                                    ; $6501: $dc $f3 $f3
	ld   h, $26                                      ; $6504: $26 $26
	inc  de                                          ; $6506: $13
	inc  de                                          ; $6507: $13
	dec  bc                                          ; $6508: $0b
	dec  bc                                          ; $6509: $0b
	dec  bc                                          ; $650a: $0b
	dec  bc                                          ; $650b: $0b
	add  hl, bc                                      ; $650c: $09
	add  hl, bc                                      ; $650d: $09
	ld   [$8808], sp                                 ; $650e: $08 $08 $88
	add  hl, bc                                      ; $6511: $09
	add  h                                           ; $6512: $84
	add  [hl]                                        ; $6513: $86
	ld   h, h                                        ; $6514: $64
	ld   b, l                                        ; $6515: $45
	inc  h                                           ; $6516: $24
	inc  h                                           ; $6517: $24
	ld   [hl], $23                                   ; $6518: $36 $23
	ld   [de], a                                     ; $651a: $12
	ld   [de], a                                     ; $651b: $12
	dec  de                                          ; $651c: $1b
	ld   de, $0809                                   ; $651d: $11 $09 $08
	db   $fd                                         ; $6520: $fd
	dec  a                                           ; $6521: $3d
	pop  hl                                          ; $6522: $e1
	pop  hl                                          ; $6523: $e1
	ld   bc, $0101                                   ; $6524: $01 $01 $01
	ld   bc, $0103                                   ; $6527: $01 $03 $01
	add  d                                           ; $652a: $82
	add  d                                           ; $652b: $82
	ld   b, d                                        ; $652c: $42
	ld   b, d                                        ; $652d: $42
	and  [hl]                                        ; $652e: $a6
	and  d                                           ; $652f: $a2
	ld   d, h                                        ; $6530: $54
	ld   d, h                                        ; $6531: $54
	jr   z, jr_012_655c                              ; $6532: $28 $28

	db   $10                                         ; $6534: $10
	ld   d, b                                        ; $6535: $50
	db   $10                                         ; $6536: $10
	or   b                                           ; $6537: $b0
	db   $10                                         ; $6538: $10
	db   $10                                         ; $6539: $10
	db   $10                                         ; $653a: $10
	or   b                                           ; $653b: $b0
	sub  b                                           ; $653c: $90
	ret  nc                                          ; $653d: $d0

	ret  nc                                          ; $653e: $d0

	ld   d, b                                        ; $653f: $50
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00

jr_012_655c:
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	ld   [$0808], sp                                 ; $6580: $08 $08 $08
	ld   [$0808], sp                                 ; $6583: $08 $08 $08
	ld   [$0808], sp                                 ; $6586: $08 $08 $08
	ld   [$1018], sp                                 ; $6589: $08 $18 $10
	db   $10                                         ; $658c: $10
	db   $10                                         ; $658d: $10
	db   $10                                         ; $658e: $10
	db   $10                                         ; $658f: $10
	jr   nc, @+$22                                   ; $6590: $30 $20

	jr   nz, jr_012_65b4                             ; $6592: $20 $20

	ccf                                              ; $6594: $3f
	ccf                                              ; $6595: $3f
	inc  de                                          ; $6596: $13
	inc  e                                           ; $6597: $1c
	rra                                              ; $6598: $1f

jr_012_6599:
	rra                                              ; $6599: $1f
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	ld   [hl], b                                     ; $65a0: $70
	jr   nc, jr_012_65c3                             ; $65a1: $30 $20

	jr   nz, jr_012_65c5                             ; $65a3: $20 $20

	jr   nz, jr_012_65c7                             ; $65a5: $20 $20

	jr   nz, jr_012_65c9                             ; $65a7: $20 $20

	jr   nz, jr_012_65cb                             ; $65a9: $20 $20

	jr   nz, jr_012_65cd                             ; $65ab: $20 $20

	jr   nz, jr_012_65cf                             ; $65ad: $20 $20

	jr   nz, jr_012_6611                             ; $65af: $20 $60

	jr   nz, jr_012_6613                             ; $65b1: $20 $60

	ld   h, b                                        ; $65b3: $60

jr_012_65b4:
	sub  b                                           ; $65b4: $90
	ldh  a, [$d0]                                    ; $65b5: $f0 $d0
	jr   nc, jr_012_6599                             ; $65b7: $30 $e0

	ldh  [rP1], a                                    ; $65b9: $e0 $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00

jr_012_65c3:
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00

jr_012_65c5:
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00

jr_012_65c7:
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00

jr_012_65c9:
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00

jr_012_65cb:
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00

jr_012_65cd:
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00

jr_012_65cf:
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	inc  bc                                          ; $660c: $03
	inc  bc                                          ; $660d: $03
	ld   bc, $0201                                   ; $660e: $01 $01 $02

jr_012_6611:
	inc  bc                                          ; $6611: $03
	inc  b                                           ; $6612: $04

jr_012_6613:
	dec  b                                           ; $6613: $05
	ld   [$110b], sp                                 ; $6614: $08 $0b $11
	dec  de                                          ; $6617: $1b
	ld   de, $2219                                   ; $6618: $11 $19 $22
	ld   a, $22                                      ; $661b: $3e $22
	ld   a, $2a                                      ; $661d: $3e $2a
	ccf                                              ; $661f: $3f
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	ld   bc, $0001                                   ; $6624: $01 $01 $00
	nop                                              ; $6627: $00
	ld   a, $3e                                      ; $6628: $3e $3e
	pop  bc                                          ; $662a: $c1
	rst  $38                                         ; $662b: $ff
	nop                                              ; $662c: $00
	rst  $38                                         ; $662d: $ff
	ret  nz                                          ; $662e: $c0

	rst  $38                                         ; $662f: $ff

jr_012_6630:
	nop                                              ; $6630: $00
	rst  $38                                         ; $6631: $ff
	nop                                              ; $6632: $00
	rst  $38                                         ; $6633: $ff
	add  d                                           ; $6634: $82
	rst  $38                                         ; $6635: $ff
	inc  b                                           ; $6636: $04
	rst  $38                                         ; $6637: $ff
	inc  h                                           ; $6638: $24
	cp   l                                           ; $6639: $bd
	ld   c, b                                        ; $663a: $48
	ld   e, c                                        ; $663b: $59
	ld   c, b                                        ; $663c: $48
	ret                                              ; $663d: $c9


	ld   c, b                                        ; $663e: $48
	db   $fc                                         ; $663f: $fc
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	ret  nz                                          ; $6646: $c0

	ret  nz                                          ; $6647: $c0

	and  b                                           ; $6648: $a0
	ldh  [$9e], a                                    ; $6649: $e0 $9e
	cp   $91                                         ; $664b: $fe $91
	rst  $38                                         ; $664d: $ff
	inc  bc                                          ; $664e: $03
	rst  $38                                         ; $664f: $ff
	nop                                              ; $6650: $00
	rst  $38                                         ; $6651: $ff
	nop                                              ; $6652: $00
	rst  $38                                         ; $6653: $ff

jr_012_6654:
	nop                                              ; $6654: $00
	rst  $38                                         ; $6655: $ff
	nop                                              ; $6656: $00
	rst  $38                                         ; $6657: $ff
	inc  b                                           ; $6658: $04
	rst  $38                                         ; $6659: $ff
	inc  h                                           ; $665a: $24
	db   $f4                                         ; $665b: $f4
	ld   h, h                                        ; $665c: $64
	ld   l, [hl]                                     ; $665d: $6e
	xor  $bb                                         ; $665e: $ee $bb
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	add  b                                           ; $666c: $80
	add  b                                           ; $666d: $80
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	ret  nz                                          ; $6670: $c0

	ret  nz                                          ; $6671: $c0

	jr   nz, jr_012_6654                             ; $6672: $20 $e0

	ld   d, b                                        ; $6674: $50
	ld   [hl], b                                     ; $6675: $70

jr_012_6676:
	jr   c, jr_012_6630                              ; $6676: $38 $b8

	db   $10                                         ; $6678: $10
	sub  b                                           ; $6679: $90
	db   $10                                         ; $667a: $10
	ld   [hl], b                                     ; $667b: $70
	ld   [$4878], sp                                 ; $667c: $08 $78 $48
	ld   hl, sp+$3a                                  ; $667f: $f8 $3a
	ccf                                              ; $6681: $3f
	dec  hl                                          ; $6682: $2b
	cpl                                              ; $6683: $2f
	add  hl, bc                                      ; $6684: $09
	rrca                                             ; $6685: $0f
	dec  b                                           ; $6686: $05
	rlca                                             ; $6687: $07
	dec  c                                           ; $6688: $0d
	rrca                                             ; $6689: $0f
	rrca                                             ; $668a: $0f
	dec  bc                                          ; $668b: $0b
	rrca                                             ; $668c: $0f
	add  hl, bc                                      ; $668d: $09
	rrca                                             ; $668e: $0f
	add  hl, bc                                      ; $668f: $09
	rlca                                             ; $6690: $07
	dec  b                                           ; $6691: $05
	inc  bc                                          ; $6692: $03
	inc  bc                                          ; $6693: $03
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
	add  sp, -$43                                    ; $66a0: $e8 $bd
	db   $fd                                         ; $66a2: $fd
	rla                                              ; $66a3: $17
	db   $fd                                         ; $66a4: $fd
	ld   [hl], a                                     ; $66a5: $77
	rst  $38                                         ; $66a6: $ff
	sbc  a                                           ; $66a7: $9f
	rst  $38                                         ; $66a8: $ff
	ld   a, l                                        ; $66a9: $7d
	sbc  a                                           ; $66aa: $9f
	sbc  h                                           ; $66ab: $9c
	sub  e                                           ; $66ac: $93
	jr   c, jr_012_6676                              ; $66ad: $38 $c7

	nop                                              ; $66af: $00
	ld   a, [hl]                                     ; $66b0: $7e
	add  c                                           ; $66b1: $81
	rst  $38                                         ; $66b2: $ff
	add  b                                           ; $66b3: $80
	cp   a                                           ; $66b4: $bf
	jp   $427e                                       ; $66b5: $c3 $7e $42


	dec  l                                           ; $66b8: $2d
	inc  sp                                          ; $66b9: $33
	dec  de                                          ; $66ba: $1b
	inc  e                                           ; $66bb: $1c
	ccf                                              ; $66bc: $3f
	cpl                                              ; $66bd: $2f
	ld   l, b                                        ; $66be: $68
	ld   l, a                                        ; $66bf: $6f
	xor  $bb                                         ; $66c0: $ee $bb
	rst  $38                                         ; $66c2: $ff
	ld   sp, $2eff                                   ; $66c3: $31 $ff $2e
	rst  $38                                         ; $66c6: $ff
	add  hl, sp                                      ; $66c7: $39
	rst  $38                                         ; $66c8: $ff
	ld   a, $ed                                      ; $66c9: $3e $ed
	dec  l                                           ; $66cb: $2d
	ret                                              ; $66cc: $c9


	inc  e                                           ; $66cd: $1c
	db   $e3                                         ; $66ce: $e3
	nop                                              ; $66cf: $00
	ld   a, [hl]                                     ; $66d0: $7e
	add  c                                           ; $66d1: $81
	rst  $38                                         ; $66d2: $ff
	ld   bc, $c3fd                                   ; $66d3: $01 $fd $c3
	ld   a, [hl]                                     ; $66d6: $7e
	ld   b, d                                        ; $66d7: $42
	or   h                                           ; $66d8: $b4
	call z, $38d8                                    ; $66d9: $cc $d8 $38
	rst  $38                                         ; $66dc: $ff
	rst  $20                                         ; $66dd: $e7
	inc  l                                           ; $66de: $2c
	db   $e4                                         ; $66df: $e4
	ld   c, b                                        ; $66e0: $48
	ld   hl, sp+$50                                  ; $66e1: $f8 $50
	ldh  a, [$d0]                                    ; $66e3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $66e5: $f0 $a0
	ldh  [$b0], a                                    ; $66e7: $e0 $b0
	ldh  a, [$f0]                                    ; $66e9: $f0 $f0
	ret  nc                                          ; $66eb: $d0

	ldh  a, [$90]                                    ; $66ec: $f0 $90
	ldh  a, [$90]                                    ; $66ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $66f0: $e0 $a0
	ret  nz                                          ; $66f2: $c0

	ret  nz                                          ; $66f3: $c0

	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	ret  nz                                          ; $66fe: $c0

	ret  nz                                          ; $66ff: $c0

	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	ld   bc, $0301                                   ; $6702: $01 $01 $03
	ld   [bc], a                                     ; $6705: $02
	ld   [bc], a                                     ; $6706: $02
	ld   [bc], a                                     ; $6707: $02
	inc  b                                           ; $6708: $04
	inc  b                                           ; $6709: $04
	dec  b                                           ; $670a: $05
	dec  b                                           ; $670b: $05
	ld   [$0908], sp                                 ; $670c: $08 $08 $09
	add  hl, bc                                      ; $670f: $09
	rrca                                             ; $6710: $0f
	ld   c, $0f                                      ; $6711: $0e $0f
	ld   a, [bc]                                     ; $6713: $0a
	ld   a, [bc]                                     ; $6714: $0a
	rrca                                             ; $6715: $0f
	dec  b                                           ; $6716: $05
	rlca                                             ; $6717: $07
	inc  bc                                          ; $6718: $03
	inc  bc                                          ; $6719: $03
	ld   bc, $0101                                   ; $671a: $01 $01 $01
	ld   bc, $0202                                   ; $671d: $01 $02 $02
	xor  e                                           ; $6720: $ab
	xor  h                                           ; $6721: $ac
	dec  hl                                          ; $6722: $2b
	inc  l                                           ; $6723: $2c

jr_012_6724:
	cpl                                              ; $6724: $2f
	inc  h                                           ; $6725: $24
	daa                                              ; $6726: $27
	inc  h                                           ; $6727: $24
	daa                                              ; $6728: $27
	ld   [hl-], a                                    ; $6729: $32
	sub  d                                           ; $672a: $92
	sub  e                                           ; $672b: $93
	sub  c                                           ; $672c: $91
	sbc  c                                           ; $672d: $99
	ld   [$f46a], a                                  ; $672e: $ea $6a $f4
	sub  h                                           ; $6731: $94
	jp   hl                                          ; $6732: $e9


	jr   jr_012_6724                                 ; $6733: $18 $ef

	rra                                              ; $6735: $1f
	dec  de                                          ; $6736: $1b
	ei                                               ; $6737: $fb
	ld   a, [$12f2]                                  ; $6738: $fa $f2 $12

jr_012_673b:
	ld   [hl-], a                                    ; $673b: $32
	ld   [de], a                                     ; $673c: $12
	ld   d, d                                        ; $673d: $52
	ld   e, $9e                                      ; $673e: $1e $9e
	inc  l                                           ; $6740: $2c
	add  sp, $28                                     ; $6741: $e8 $28
	add  sp, $69                                     ; $6743: $e8 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6745: $cf
	ld   e, a                                        ; $6746: $5f
	ret  c                                           ; $6747: $d8

	rst  $10                                         ; $6748: $d7
	sbc  b                                           ; $6749: $98
	sub  a                                           ; $674a: $97
	sbc  b                                           ; $674b: $98
	jr   c, @+$41                                    ; $674c: $38 $3f

	daa                                              ; $674e: $27
	daa                                              ; $674f: $27
	ld   b, c                                        ; $6750: $41
	ld   b, c                                        ; $6751: $41
	add  e                                           ; $6752: $83
	add  c                                           ; $6753: $81
	cp   $fe                                         ; $6754: $fe $fe
	add  c                                           ; $6756: $81
	ld   bc, $ffff                                   ; $6757: $01 $ff $ff
	ret  nz                                          ; $675a: $c0

	sub  c                                           ; $675b: $91
	ret  nz                                          ; $675c: $c0

	ld   l, d                                        ; $675d: $6a
	ld   b, b                                        ; $675e: $40
	ld   b, h                                        ; $675f: $44
	jr   nz, jr_012_6782                             ; $6760: $20 $20

	jr   nz, jr_012_6784                             ; $6762: $20 $20

	ret  nz                                          ; $6764: $c0

	ldh  [$b0], a                                    ; $6765: $e0 $b0
	ld   [hl], b                                     ; $6767: $70
	ret  nc                                          ; $6768: $d0

	jr   nc, jr_012_673b                             ; $6769: $30 $d0

	jr   nc, @+$22                                   ; $676b: $30 $20

	ldh  [$e0], a                                    ; $676d: $e0 $e0
	ldh  [rP1], a                                    ; $676f: $e0 $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	add  b                                           ; $677a: $80
	add  b                                           ; $677b: $80
	add  b                                           ; $677c: $80
	add  b                                           ; $677d: $80
	ld   b, b                                        ; $677e: $40
	ld   b, b                                        ; $677f: $40
	ld   [bc], a                                     ; $6780: $02
	inc  bc                                          ; $6781: $03

jr_012_6782:
	inc  bc                                          ; $6782: $03
	inc  bc                                          ; $6783: $03

jr_012_6784:
	ld   b, $04                                      ; $6784: $06 $04
	inc  b                                           ; $6786: $04
	inc  b                                           ; $6787: $04
	inc  c                                           ; $6788: $0c
	ld   [$0808], sp                                 ; $6789: $08 $08 $08
	jr   jr_012_679e                                 ; $678c: $18 $10

	db   $10                                         ; $678e: $10
	db   $10                                         ; $678f: $10
	ccf                                              ; $6790: $3f
	ccf                                              ; $6791: $3f
	cpl                                              ; $6792: $2f
	jr   nc, jr_012_67f3                             ; $6793: $30 $5e

	ld   h, a                                        ; $6795: $67
	ld   b, a                                        ; $6796: $47
	ld   a, h                                        ; $6797: $7c
	ccf                                              ; $6798: $3f
	ccf                                              ; $6799: $3f
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00

jr_012_679e:
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	ld   [bc], a                                     ; $67a0: $02
	ld   d, [hl]                                     ; $67a1: $56
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	ld   b, $02                                      ; $67a4: $06 $02
	inc  b                                           ; $67a6: $04
	inc  b                                           ; $67a7: $04
	inc  c                                           ; $67a8: $0c
	inc  b                                           ; $67a9: $04
	ld   [$0808], sp                                 ; $67aa: $08 $08 $08
	ld   [$0818], sp                                 ; $67ad: $08 $18 $08
	sub  b                                           ; $67b0: $90
	sub  b                                           ; $67b1: $90
	ld   d, b                                        ; $67b2: $50
	ret  nc                                          ; $67b3: $d0

	ld   d, b                                        ; $67b4: $50
	ret  nc                                          ; $67b5: $d0

	ldh  a, [rSVBK]                                  ; $67b6: $f0 $70
	add  b                                           ; $67b8: $80
	add  b                                           ; $67b9: $80
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	nop                                              ; $67bf: $00
	ld   b, b                                        ; $67c0: $40
	ld   l, d                                        ; $67c1: $6a
	rst  $38                                         ; $67c2: $ff
	rst  $38                                         ; $67c3: $ff
	ld   h, b                                        ; $67c4: $60
	ld   b, b                                        ; $67c5: $40
	jr   nz, @+$22                                   ; $67c6: $20 $20

	jr   nc, jr_012_67ea                             ; $67c8: $30 $20

	db   $10                                         ; $67ca: $10
	db   $10                                         ; $67cb: $10
	db   $10                                         ; $67cc: $10
	db   $10                                         ; $67cd: $10
	jr   jr_012_67e0                                 ; $67ce: $18 $10

	add  hl, bc                                      ; $67d0: $09
	add  hl, bc                                      ; $67d1: $09
	ld   a, [bc]                                     ; $67d2: $0a
	dec  bc                                          ; $67d3: $0b
	ld   a, [bc]                                     ; $67d4: $0a
	dec  bc                                          ; $67d5: $0b
	rrca                                             ; $67d6: $0f
	ld   c, $01                                      ; $67d7: $0e $01
	ld   bc, $0000                                   ; $67d9: $01 $00 $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00

jr_012_67e0:
	ld   b, b                                        ; $67e0: $40
	ret  nz                                          ; $67e1: $c0

	ret  nz                                          ; $67e2: $c0

	ret  nz                                          ; $67e3: $c0

	ld   h, b                                        ; $67e4: $60
	jr   nz, jr_012_6807                             ; $67e5: $20 $20

	jr   nz, @+$32                                   ; $67e7: $20 $30

	db   $10                                         ; $67e9: $10

jr_012_67ea:
	db   $10                                         ; $67ea: $10
	db   $10                                         ; $67eb: $10
	jr   @+$0a                                       ; $67ec: $18 $08

	ld   [$fc08], sp                                 ; $67ee: $08 $08 $fc
	db   $fc                                         ; $67f1: $fc
	db   $f4                                         ; $67f2: $f4

jr_012_67f3:
	inc  c                                           ; $67f3: $0c
	ld   a, d                                        ; $67f4: $7a
	and  $e2                                         ; $67f5: $e6 $e2
	ld   a, $fc                                      ; $67f7: $3e $fc
	db   $fc                                         ; $67f9: $fc
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00

jr_012_6807:
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	inc  bc                                          ; $680c: $03
	inc  bc                                          ; $680d: $03
	ld   bc, $0201                                   ; $680e: $01 $01 $02
	inc  bc                                          ; $6811: $03
	inc  b                                           ; $6812: $04
	dec  b                                           ; $6813: $05
	ld   [$110b], sp                                 ; $6814: $08 $0b $11
	dec  de                                          ; $6817: $1b
	ld   de, $2219                                   ; $6818: $11 $19 $22
	ld   a, $22                                      ; $681b: $3e $22
	ld   a, $2a                                      ; $681d: $3e $2a
	ccf                                              ; $681f: $3f
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	ld   bc, $0001                                   ; $6824: $01 $01 $00
	nop                                              ; $6827: $00
	ld   a, $3e                                      ; $6828: $3e $3e
	pop  bc                                          ; $682a: $c1
	rst  $38                                         ; $682b: $ff
	nop                                              ; $682c: $00
	rst  $38                                         ; $682d: $ff
	ret  nz                                          ; $682e: $c0

	rst  $38                                         ; $682f: $ff

jr_012_6830:
	nop                                              ; $6830: $00
	rst  $38                                         ; $6831: $ff
	nop                                              ; $6832: $00
	rst  $38                                         ; $6833: $ff
	add  d                                           ; $6834: $82
	rst  $38                                         ; $6835: $ff
	inc  b                                           ; $6836: $04
	rst  $38                                         ; $6837: $ff
	inc  h                                           ; $6838: $24
	cp   l                                           ; $6839: $bd
	ld   c, b                                        ; $683a: $48
	ld   e, c                                        ; $683b: $59
	ld   c, b                                        ; $683c: $48
	ret                                              ; $683d: $c9


	ld   c, b                                        ; $683e: $48
	db   $fc                                         ; $683f: $fc
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	ret  nz                                          ; $6846: $c0

	ret  nz                                          ; $6847: $c0

	and  b                                           ; $6848: $a0
	ldh  [$9e], a                                    ; $6849: $e0 $9e
	cp   $91                                         ; $684b: $fe $91
	rst  $38                                         ; $684d: $ff
	inc  bc                                          ; $684e: $03
	rst  $38                                         ; $684f: $ff
	nop                                              ; $6850: $00
	rst  $38                                         ; $6851: $ff
	nop                                              ; $6852: $00
	rst  $38                                         ; $6853: $ff

jr_012_6854:
	nop                                              ; $6854: $00
	rst  $38                                         ; $6855: $ff
	nop                                              ; $6856: $00
	rst  $38                                         ; $6857: $ff
	inc  b                                           ; $6858: $04
	rst  $38                                         ; $6859: $ff
	inc  h                                           ; $685a: $24
	db   $f4                                         ; $685b: $f4
	ld   h, h                                        ; $685c: $64
	ld   l, [hl]                                     ; $685d: $6e
	xor  $bb                                         ; $685e: $ee $bb
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
	add  b                                           ; $686c: $80
	add  b                                           ; $686d: $80
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	ret  nz                                          ; $6870: $c0

	ret  nz                                          ; $6871: $c0

	jr   nz, jr_012_6854                             ; $6872: $20 $e0

	ld   d, b                                        ; $6874: $50
	ld   [hl], b                                     ; $6875: $70

jr_012_6876:
	jr   c, jr_012_6830                              ; $6876: $38 $b8

	db   $10                                         ; $6878: $10
	sub  b                                           ; $6879: $90
	db   $10                                         ; $687a: $10
	ld   [hl], b                                     ; $687b: $70
	ld   [$4878], sp                                 ; $687c: $08 $78 $48
	ld   hl, sp+$3a                                  ; $687f: $f8 $3a
	ccf                                              ; $6881: $3f
	dec  hl                                          ; $6882: $2b
	cpl                                              ; $6883: $2f
	add  hl, bc                                      ; $6884: $09
	rrca                                             ; $6885: $0f
	dec  b                                           ; $6886: $05
	rlca                                             ; $6887: $07
	dec  c                                           ; $6888: $0d
	rrca                                             ; $6889: $0f
	rrca                                             ; $688a: $0f
	dec  bc                                          ; $688b: $0b
	rrca                                             ; $688c: $0f
	add  hl, bc                                      ; $688d: $09
	rrca                                             ; $688e: $0f
	add  hl, bc                                      ; $688f: $09
	rlca                                             ; $6890: $07
	dec  b                                           ; $6891: $05
	inc  bc                                          ; $6892: $03
	inc  bc                                          ; $6893: $03
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
	inc  bc                                          ; $689e: $03
	inc  bc                                          ; $689f: $03
	add  sp, -$43                                    ; $68a0: $e8 $bd
	db   $fd                                         ; $68a2: $fd
	rla                                              ; $68a3: $17
	db   $fd                                         ; $68a4: $fd
	ld   [hl], a                                     ; $68a5: $77
	rst  $38                                         ; $68a6: $ff
	sbc  a                                           ; $68a7: $9f
	rst  $38                                         ; $68a8: $ff
	ld   a, l                                        ; $68a9: $7d
	sbc  a                                           ; $68aa: $9f
	sbc  h                                           ; $68ab: $9c
	sub  e                                           ; $68ac: $93
	jr   c, jr_012_6876                              ; $68ad: $38 $c7

	nop                                              ; $68af: $00
	ld   a, [hl]                                     ; $68b0: $7e
	add  c                                           ; $68b1: $81
	rst  $38                                         ; $68b2: $ff
	add  b                                           ; $68b3: $80
	cp   a                                           ; $68b4: $bf
	jp   $427e                                       ; $68b5: $c3 $7e $42


	dec  l                                           ; $68b8: $2d
	inc  sp                                          ; $68b9: $33
	dec  de                                          ; $68ba: $1b
	inc  e                                           ; $68bb: $1c
	rst  $38                                         ; $68bc: $ff
	rst  $20                                         ; $68bd: $e7
	inc  [hl]                                        ; $68be: $34
	daa                                              ; $68bf: $27
	xor  $bb                                         ; $68c0: $ee $bb
	rst  $38                                         ; $68c2: $ff
	ld   sp, $2eff                                   ; $68c3: $31 $ff $2e
	rst  $38                                         ; $68c6: $ff
	add  hl, sp                                      ; $68c7: $39
	rst  $38                                         ; $68c8: $ff
	ld   a, $ed                                      ; $68c9: $3e $ed
	dec  l                                           ; $68cb: $2d
	ret                                              ; $68cc: $c9


	inc  e                                           ; $68cd: $1c
	db   $e3                                         ; $68ce: $e3
	nop                                              ; $68cf: $00
	ld   a, [hl]                                     ; $68d0: $7e
	add  c                                           ; $68d1: $81
	rst  $38                                         ; $68d2: $ff
	ld   bc, $c3fd                                   ; $68d3: $01 $fd $c3
	ld   a, [hl]                                     ; $68d6: $7e
	ld   b, d                                        ; $68d7: $42
	or   h                                           ; $68d8: $b4
	call z, $38d8                                    ; $68d9: $cc $d8 $38
	db   $fc                                         ; $68dc: $fc
	db   $f4                                         ; $68dd: $f4
	ld   d, $f6                                      ; $68de: $16 $f6
	ld   c, b                                        ; $68e0: $48
	ld   hl, sp+$50                                  ; $68e1: $f8 $50
	ldh  a, [$d0]                                    ; $68e3: $f0 $d0
	ldh  a, [hScriptOpcodeParams]                                    ; $68e5: $f0 $a0
	ldh  [$b0], a                                    ; $68e7: $e0 $b0
	ldh  a, [$f0]                                    ; $68e9: $f0 $f0
	ret  nc                                          ; $68eb: $d0

	ldh  a, [$90]                                    ; $68ec: $f0 $90
	ldh  a, [$90]                                    ; $68ee: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $68f0: $e0 $a0
	ret  nz                                          ; $68f2: $c0

	ret  nz                                          ; $68f3: $c0

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
	inc  b                                           ; $6900: $04
	inc  b                                           ; $6901: $04
	inc  b                                           ; $6902: $04
	inc  b                                           ; $6903: $04
	inc  bc                                          ; $6904: $03
	rlca                                             ; $6905: $07
	dec  c                                           ; $6906: $0d
	ld   c, $0b                                      ; $6907: $0e $0b
	inc  c                                           ; $6909: $0c
	dec  bc                                          ; $690a: $0b
	inc  c                                           ; $690b: $0c
	inc  b                                           ; $690c: $04
	rlca                                             ; $690d: $07
	rlca                                             ; $690e: $07
	rlca                                             ; $690f: $07
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
	ld   bc, $0101                                   ; $691a: $01 $01 $01
	ld   bc, $0202                                   ; $691d: $01 $02 $02
	inc  [hl]                                        ; $6920: $34
	rla                                              ; $6921: $17
	inc  d                                           ; $6922: $14
	rla                                              ; $6923: $17
	sub  [hl]                                        ; $6924: $96
	di                                               ; $6925: $f3
	ldh  a, [c]                                      ; $6926: $f2
	inc  de                                          ; $6927: $13
	db   $eb                                         ; $6928: $eb
	add  hl, de                                      ; $6929: $19
	jp   hl                                          ; $692a: $e9


	add  hl, de                                      ; $692b: $19
	inc  d                                           ; $692c: $14
	db   $f4                                         ; $692d: $f4
	push hl                                          ; $692e: $e5
	push hl                                          ; $692f: $e5
	add  d                                           ; $6930: $82
	add  d                                           ; $6931: $82
	call z, Call_012_7f8c                            ; $6932: $cc $8c $7f
	ld   a, a                                        ; $6935: $7f
	add  [hl]                                        ; $6936: $86
	add  d                                           ; $6937: $82
	cp   $fc                                         ; $6938: $fe $fc
	inc  b                                           ; $693a: $04
	adc  h                                           ; $693b: $8c
	inc  b                                           ; $693c: $04
	ld   d, h                                        ; $693d: $54
	rlca                                             ; $693e: $07
	daa                                              ; $693f: $27
	push de                                          ; $6940: $d5
	dec  [hl]                                        ; $6941: $35
	call nc, $f434                                   ; $6942: $d4 $34 $f4
	inc  h                                           ; $6945: $24
	db   $e4                                         ; $6946: $e4
	inc  h                                           ; $6947: $24
	db   $e4                                         ; $6948: $e4
	ld   c, h                                        ; $6949: $4c
	ld   c, c                                        ; $694a: $49
	ret                                              ; $694b: $c9


	adc  c                                           ; $694c: $89
	sbc  c                                           ; $694d: $99
	rla                                              ; $694e: $17
	ld   d, $2f                                      ; $694f: $16 $2f
	add  hl, hl                                      ; $6951: $29
	rst  $10                                         ; $6952: $d7
	ld   e, b                                        ; $6953: $58
	rst  $30                                         ; $6954: $f7
	ld   hl, sp-$18                                  ; $6955: $f8 $e8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6957: $cf
	cp   a                                           ; $6958: $bf
	cp   a                                           ; $6959: $bf
	or   b                                           ; $695a: $b0
	and  l                                           ; $695b: $a5
	or   b                                           ; $695c: $b0
	sbc  d                                           ; $695d: $9a
	sub  b                                           ; $695e: $90
	sub  c                                           ; $695f: $91
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	add  b                                           ; $6962: $80
	add  b                                           ; $6963: $80
	ret  nz                                          ; $6964: $c0

	ld   b, b                                        ; $6965: $40
	ld   b, b                                        ; $6966: $40
	ld   b, b                                        ; $6967: $40
	jr   nz, @+$22                                   ; $6968: $20 $20

	and  b                                           ; $696a: $a0
	and  b                                           ; $696b: $a0
	db   $10                                         ; $696c: $10
	db   $10                                         ; $696d: $10
	sub  b                                           ; $696e: $90
	sub  b                                           ; $696f: $90
	ldh  a, [rSVBK]                                  ; $6970: $f0 $70
	ldh  a, [$50]                                    ; $6972: $f0 $50
	ld   d, b                                        ; $6974: $50
	ldh  a, [hScriptOpcodeParams]                                    ; $6975: $f0 $a0
	ldh  [$c0], a                                    ; $6977: $e0 $c0
	ret  nz                                          ; $6979: $c0

	add  b                                           ; $697a: $80
	add  b                                           ; $697b: $80
	add  b                                           ; $697c: $80
	add  b                                           ; $697d: $80
	ld   b, b                                        ; $697e: $40
	ld   b, b                                        ; $697f: $40
	ld   [bc], a                                     ; $6980: $02
	inc  bc                                          ; $6981: $03
	inc  bc                                          ; $6982: $03
	inc  bc                                          ; $6983: $03
	ld   b, $04                                      ; $6984: $06 $04
	inc  b                                           ; $6986: $04
	inc  b                                           ; $6987: $04
	inc  c                                           ; $6988: $0c
	ld   [$0808], sp                                 ; $6989: $08 $08 $08
	jr   jr_012_699e                                 ; $698c: $18 $10

	db   $10                                         ; $698e: $10
	db   $10                                         ; $698f: $10
	ccf                                              ; $6990: $3f
	ccf                                              ; $6991: $3f
	cpl                                              ; $6992: $2f
	jr   nc, jr_012_69f3                             ; $6993: $30 $5e

	ld   h, a                                        ; $6995: $67
	ld   b, a                                        ; $6996: $47
	ld   a, h                                        ; $6997: $7c
	ccf                                              ; $6998: $3f
	ccf                                              ; $6999: $3f
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00

jr_012_699e:
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	ld   [bc], a                                     ; $69a0: $02
	ld   d, [hl]                                     ; $69a1: $56
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	ld   b, $02                                      ; $69a4: $06 $02
	inc  b                                           ; $69a6: $04
	inc  b                                           ; $69a7: $04
	inc  c                                           ; $69a8: $0c
	inc  b                                           ; $69a9: $04
	ld   [$0808], sp                                 ; $69aa: $08 $08 $08
	ld   [$0818], sp                                 ; $69ad: $08 $18 $08
	sub  b                                           ; $69b0: $90
	sub  b                                           ; $69b1: $90
	ld   d, b                                        ; $69b2: $50
	ret  nc                                          ; $69b3: $d0

	ld   d, b                                        ; $69b4: $50
	ret  nc                                          ; $69b5: $d0

	ldh  a, [rSVBK]                                  ; $69b6: $f0 $70
	add  b                                           ; $69b8: $80
	add  b                                           ; $69b9: $80
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	ld   b, b                                        ; $69c0: $40
	ld   l, d                                        ; $69c1: $6a
	rst  $38                                         ; $69c2: $ff
	rst  $38                                         ; $69c3: $ff
	ld   h, b                                        ; $69c4: $60
	ld   b, b                                        ; $69c5: $40
	jr   nz, @+$22                                   ; $69c6: $20 $20

	jr   nc, jr_012_69ea                             ; $69c8: $30 $20

	db   $10                                         ; $69ca: $10
	db   $10                                         ; $69cb: $10
	db   $10                                         ; $69cc: $10
	db   $10                                         ; $69cd: $10
	jr   jr_012_69e0                                 ; $69ce: $18 $10

	add  hl, bc                                      ; $69d0: $09
	add  hl, bc                                      ; $69d1: $09
	ld   a, [bc]                                     ; $69d2: $0a
	dec  bc                                          ; $69d3: $0b
	ld   a, [bc]                                     ; $69d4: $0a
	dec  bc                                          ; $69d5: $0b
	rrca                                             ; $69d6: $0f
	ld   c, $01                                      ; $69d7: $0e $01
	ld   bc, $0000                                   ; $69d9: $01 $00 $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00

jr_012_69e0:
	ld   b, b                                        ; $69e0: $40
	ret  nz                                          ; $69e1: $c0

	ret  nz                                          ; $69e2: $c0

	ret  nz                                          ; $69e3: $c0

	ld   h, b                                        ; $69e4: $60
	jr   nz, jr_012_6a07                             ; $69e5: $20 $20

	jr   nz, jr_012_6a19                             ; $69e7: $20 $30

	db   $10                                         ; $69e9: $10

jr_012_69ea:
	db   $10                                         ; $69ea: $10
	db   $10                                         ; $69eb: $10
	jr   @+$0a                                       ; $69ec: $18 $08

	ld   [$fc08], sp                                 ; $69ee: $08 $08 $fc
	db   $fc                                         ; $69f1: $fc
	db   $f4                                         ; $69f2: $f4

jr_012_69f3:
	inc  c                                           ; $69f3: $0c
	ld   a, d                                        ; $69f4: $7a
	and  $e2                                         ; $69f5: $e6 $e2
	ld   a, $fc                                      ; $69f7: $3e $fc
	db   $fc                                         ; $69f9: $fc
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	db   $ed                                         ; $6a00: $ed
	inc  b                                           ; $6a01: $04
	add  d                                           ; $6a02: $82
	nop                                              ; $6a03: $00
	dec  b                                           ; $6a04: $05
	inc  bc                                          ; $6a05: $03
	nop                                              ; $6a06: $00

jr_012_6a07:
	rrca                                             ; $6a07: $0f
	inc  bc                                          ; $6a08: $03
	inc  de                                          ; $6a09: $13
	inc  bc                                          ; $6a0a: $03
	add  b                                           ; $6a0b: $80
	ld   bc, $2004                                   ; $6a0c: $01 $04 $20
	nop                                              ; $6a0f: $00
	ldh  a, [$30]                                    ; $6a10: $f0 $30
	rst  $38                                         ; $6a12: $ff
	add  c                                           ; $6a13: $81
	nop                                              ; $6a14: $00
	inc  bc                                          ; $6a15: $03
	ld   a, e                                        ; $6a16: $7b
	nop                                              ; $6a17: $00
	add  a                                           ; $6a18: $87

jr_012_6a19:
	inc  bc                                          ; $6a19: $03
	add  b                                           ; $6a1a: $80
	push bc                                          ; $6a1b: $c5
	add  b                                           ; $6a1c: $80
	add  b                                           ; $6a1d: $80
	add  b                                           ; $6a1e: $80
	nop                                              ; $6a1f: $00
	ld   [bc], a                                     ; $6a20: $02
	ld   b, b                                        ; $6a21: $40
	nop                                              ; $6a22: $00
	cp   a                                           ; $6a23: $bf
	add  e                                           ; $6a24: $83
	nop                                              ; $6a25: $00
	nop                                              ; $6a26: $00
	add  b                                           ; $6a27: $80
	add  c                                           ; $6a28: $81
	nop                                              ; $6a29: $00
	ld   b, $40                                      ; $6a2a: $06 $40
	nop                                              ; $6a2c: $00
	jr   nc, jr_012_6a2f                             ; $6a2d: $30 $00

jr_012_6a2f:
	ld   [$f700], sp                                 ; $6a2f: $08 $00 $f7
	add  b                                           ; $6a32: $80
	inc  bc                                          ; $6a33: $03
	add  c                                           ; $6a34: $81
	rlca                                             ; $6a35: $07
	rlca                                             ; $6a36: $07
	rra                                              ; $6a37: $1f
	dec  bc                                          ; $6a38: $0b
	ccf                                              ; $6a39: $3f
	inc  e                                           ; $6a3a: $1c
	ld   a, b                                        ; $6a3b: $78
	jr   c, @-$0e                                    ; $6a3c: $38 $f0

	ld   [hl], b                                     ; $6a3e: $70
	add  b                                           ; $6a3f: $80
	ld   h, b                                        ; $6a40: $60
	add  b                                           ; $6a41: $80
	ld   b, b                                        ; $6a42: $40
	ld   [de], a                                     ; $6a43: $12
	nop                                              ; $6a44: $00
	add  b                                           ; $6a45: $80
	sub  b                                           ; $6a46: $90
	add  b                                           ; $6a47: $80
	sub  b                                           ; $6a48: $90
	call nz, $c4d4                                   ; $6a49: $c4 $d4 $c4
	call z, Call_012_4642                            ; $6a4c: $cc $42 $46
	nop                                              ; $6a4f: $00
	ld   [bc], a                                     ; $6a50: $02
	nop                                              ; $6a51: $00
	sbc  $02                                         ; $6a52: $de $02
	ld   a, [$3b03]                                  ; $6a54: $fa $03 $3b
	add  b                                           ; $6a57: $80
	rlca                                             ; $6a58: $07
	inc  bc                                          ; $6a59: $03
	ld   b, a                                        ; $6a5a: $47
	ld   c, a                                        ; $6a5b: $4f
	ld   [hl+], a                                    ; $6a5c: $22
	ld   a, [hl+]                                    ; $6a5d: $2a
	add  d                                           ; $6a5e: $82
	ld   h, a                                        ; $6a5f: $67
	inc  bc                                          ; $6a60: $03
	ccf                                              ; $6a61: $3f
	ld   h, b                                        ; $6a62: $60
	nop                                              ; $6a63: $00
	ld   b, b                                        ; $6a64: $40
	add  c                                           ; $6a65: $81
	nop                                              ; $6a66: $00
	ld   [bc], a                                     ; $6a67: $02
	jr   nz, jr_012_6a6a                             ; $6a68: $20 $00

jr_012_6a6a:
	ld   b, b                                        ; $6a6a: $40
	add  l                                           ; $6a6b: $85
	nop                                              ; $6a6c: $00
	db   $10                                         ; $6a6d: $10
	cp   $00                                         ; $6a6e: $fe $00
	ld   b, b                                        ; $6a70: $40
	nop                                              ; $6a71: $00
	ld   h, d                                        ; $6a72: $62
	nop                                              ; $6a73: $00
	jr   c, jr_012_6a76                              ; $6a74: $38 $00

jr_012_6a76:
	jr   jr_012_6a78                                 ; $6a76: $18 $00

jr_012_6a78:
	ld   h, b                                        ; $6a78: $60
	nop                                              ; $6a79: $00
	ld   a, [de]                                     ; $6a7a: $1a
	nop                                              ; $6a7b: $00
	ld   b, $00                                      ; $6a7c: $06 $00
	ret  nz                                          ; $6a7e: $c0

	add  c                                           ; $6a7f: $81
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	add  b                                           ; $6a82: $80
	add  b                                           ; $6a83: $80
	ld   [hl-], a                                    ; $6a84: $32
	inc  bc                                          ; $6a85: $03
	inc  hl                                          ; $6a86: $23
	ld   [hl+], a                                    ; $6a87: $22
	ld   [$80c8], sp                                 ; $6a88: $08 $c8 $80
	ld   e, b                                        ; $6a8b: $58
	rrca                                             ; $6a8c: $0f
	nop                                              ; $6a8d: $00
	ld   [bc], a                                     ; $6a8e: $02
	jr   nc, jr_012_6add                             ; $6a8f: $30 $4c

	ld   [hl-], a                                    ; $6a91: $32
	inc  sp                                          ; $6a92: $33
	nop                                              ; $6a93: $00
	inc  hl                                          ; $6a94: $23
	ld   [$003c], sp                                 ; $6a95: $08 $3c $00
	dec  sp                                          ; $6a98: $3b
	nop                                              ; $6a99: $00
	add  $00                                         ; $6a9a: $c6 $00
	db   $eb                                         ; $6a9c: $eb
	add  c                                           ; $6a9d: $81
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	rst  $38                                         ; $6aa0: $ff
	add  e                                           ; $6aa1: $83
	nop                                              ; $6aa2: $00
	ld   de, $0080                                   ; $6aa3: $11 $80 $00
	ld   b, b                                        ; $6aa6: $40
	nop                                              ; $6aa7: $00
	ld   h, b                                        ; $6aa8: $60
	nop                                              ; $6aa9: $00
	add  b                                           ; $6aaa: $80
	nop                                              ; $6aab: $00
	jr   nc, jr_012_6aae                             ; $6aac: $30 $00

jr_012_6aae:
	sub  e                                           ; $6aae: $93
	db   $10                                         ; $6aaf: $10
	ldh  a, [rP1]                                    ; $6ab0: $f0 $00
	ld   a, l                                        ; $6ab2: $7d
	ld   bc, $031b                                   ; $6ab3: $01 $1b $03
	add  b                                           ; $6ab6: $80
	ld   [bc], a                                     ; $6ab7: $02
	ld   [bc], a                                     ; $6ab8: $02
	ld   c, $06                                      ; $6ab9: $0e $06
	dec  e                                           ; $6abb: $1d
	add  c                                           ; $6abc: $81
	dec  c                                           ; $6abd: $0d
	ld   bc, $fe1e                                   ; $6abe: $01 $1e $fe
	add  b                                           ; $6ac1: $80
	nop                                              ; $6ac2: $00
	add  b                                           ; $6ac3: $80
	ld   bc, $5a80                                   ; $6ac4: $01 $80 $5a
	add  b                                           ; $6ac7: $80
	jp   c, $db82                                    ; $6ac8: $da $82 $db

	add  b                                           ; $6acb: $80
	cp   e                                           ; $6acc: $bb
	add  hl, bc                                      ; $6acd: $09
	sub  a                                           ; $6ace: $97
	nop                                              ; $6acf: $00
	sbc  h                                           ; $6ad0: $9c
	ld   h, b                                        ; $6ad1: $60
	ld   l, b                                        ; $6ad2: $68
	ld   [hl], b                                     ; $6ad3: $70
	ldh  a, [$b0]                                    ; $6ad4: $f0 $b0
	or   $c0                                         ; $6ad6: $f6 $c0
	add  b                                           ; $6ad8: $80
	ld   h, b                                        ; $6ad9: $60
	inc  b                                           ; $6ada: $04
	ld   l, b                                        ; $6adb: $68
	ld   h, h                                        ; $6adc: $64

jr_012_6add:
	ld   a, h                                        ; $6add: $7c
	ld   [hl], b                                     ; $6ade: $70
	add  sp, -$7f                                    ; $6adf: $e8 $81
	dec  c                                           ; $6ae1: $0d
	ld   bc, $1b3b                                   ; $6ae2: $01 $3b $1b
	add  b                                           ; $6ae5: $80
	ld   bc, $1a09                                   ; $6ae6: $01 $09 $1a
	nop                                              ; $6ae9: $00
	ld   l, c                                        ; $6aea: $69
	nop                                              ; $6aeb: $00
	or   h                                           ; $6aec: $b4
	nop                                              ; $6aed: $00
	ld   [$d200], sp                                 ; $6aee: $08 $00 $d2
	db   $dd                                         ; $6af1: $dd
	add  b                                           ; $6af2: $80
	db   $db                                         ; $6af3: $db
	add  d                                           ; $6af4: $82

jr_012_6af5:
	cp   e                                           ; $6af5: $bb
	ld   [bc], a                                     ; $6af6: $02
	ld   b, h                                        ; $6af7: $44
	nop                                              ; $6af8: $00
	cp   e                                           ; $6af9: $bb
	add  e                                           ; $6afa: $83
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	ld   b, l                                        ; $6afd: $45
	add  b                                           ; $6afe: $80
	cp   b                                           ; $6aff: $b8
	dec  c                                           ; $6b00: $0d
	cp   d                                           ; $6b01: $ba
	or   d                                           ; $6b02: $b2
	or   b                                           ; $6b03: $b0
	add  a                                           ; $6b04: $87
	add  b                                           ; $6b05: $80
	ld   [hl-], a                                    ; $6b06: $32
	nop                                              ; $6b07: $00
	ld   l, $00                                      ; $6b08: $2e $00
	add  hl, de                                      ; $6b0a: $19
	nop                                              ; $6b0b: $00
	ldh  [rP1], a                                    ; $6b0c: $e0 $00
	rra                                              ; $6b0e: $1f
	add  c                                           ; $6b0f: $81
	nop                                              ; $6b10: $00
	inc  c                                           ; $6b11: $0c
	ld   bc, $0700                                   ; $6b12: $01 $00 $07
	ld   bc, $0109                                   ; $6b15: $01 $09 $01
	stop                                             ; $6b18: $10 $00
	ld   h, b                                        ; $6b1a: $60
	nop                                              ; $6b1b: $00
	add  b                                           ; $6b1c: $80
	nop                                              ; $6b1d: $00
	rst  $38                                         ; $6b1e: $ff
	add  c                                           ; $6b1f: $81
	nop                                              ; $6b20: $00
	inc  bc                                          ; $6b21: $03
	ei                                               ; $6b22: $fb
	nop                                              ; $6b23: $00
	add  a                                           ; $6b24: $87
	add  e                                           ; $6b25: $83
	add  b                                           ; $6b26: $80
	pop  hl                                          ; $6b27: $e1
	add  b                                           ; $6b28: $80
	ret  nz                                          ; $6b29: $c0

	add  b                                           ; $6b2a: $80
	nop                                              ; $6b2b: $00
	ld   [bc], a                                     ; $6b2c: $02
	stop                                             ; $6b2d: $10 $00
	rst  $28                                         ; $6b2f: $ef
	add  e                                           ; $6b30: $83
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	add  b                                           ; $6b33: $80
	add  c                                           ; $6b34: $81
	nop                                              ; $6b35: $00
	ld   a, [bc]                                     ; $6b36: $0a
	ld   h, b                                        ; $6b37: $60
	nop                                              ; $6b38: $00
	jr   jr_012_6b3b                                 ; $6b39: $18 $00

jr_012_6b3b:
	inc  b                                           ; $6b3b: $04
	nop                                              ; $6b3c: $00
	ei                                               ; $6b3d: $fb
	nop                                              ; $6b3e: $00
	ld   [$1000], sp                                 ; $6b3f: $08 $00 $10
	add  c                                           ; $6b42: $81
	nop                                              ; $6b43: $00
	inc  b                                           ; $6b44: $04
	jr   nc, jr_012_6b47                             ; $6b45: $30 $00

jr_012_6b47:
	inc  e                                           ; $6b47: $1c
	nop                                              ; $6b48: $00
	inc  c                                           ; $6b49: $0c
	add  c                                           ; $6b4a: $81
	nop                                              ; $6b4b: $00

jr_012_6b4c:
	ld   bc, $30f0                                   ; $6b4c: $01 $f0 $30
	add  b                                           ; $6b4f: $80
	db   $10                                         ; $6b50: $10
	inc  b                                           ; $6b51: $04
	nop                                              ; $6b52: $00
	ldh  [$e2], a                                    ; $6b53: $e0 $e2
	ld   hl, sp-$07                                  ; $6b55: $f8 $f9
	add  b                                           ; $6b57: $80
	ld   hl, sp+$09                                  ; $6b58: $f8 $09
	ld   l, b                                        ; $6b5a: $68
	add  sp, -$80                                    ; $6b5b: $e8 $80
	call z, $3fc0                                    ; $6b5d: $cc $c0 $3f
	nop                                              ; $6b60: $00
	ld   a, $00                                      ; $6b61: $3e $00
	ld   c, $80                                      ; $6b63: $0e $80
	ld   bc, $1103                                   ; $6b65: $01 $03 $11
	sub  e                                           ; $6b68: $93
	ld   [$814a], sp                                 ; $6b69: $08 $4a $81
	add  hl, de                                      ; $6b6c: $19
	inc  b                                           ; $6b6d: $04
	add  hl, sp                                      ; $6b6e: $39
	rrca                                             ; $6b6f: $0f
	ret  nz                                          ; $6b70: $c0

	nop                                              ; $6b71: $00
	jr   nz, jr_012_6af5                             ; $6b72: $20 $81

	add  b                                           ; $6b74: $80
	ld   [bc], a                                     ; $6b75: $02
	sub  b                                           ; $6b76: $90
	add  b                                           ; $6b77: $80
	and  b                                           ; $6b78: $a0
	add  l                                           ; $6b79: $85
	add  b                                           ; $6b7a: $80
	ld   [bc], a                                     ; $6b7b: $02
	ld   a, d                                        ; $6b7c: $7a
	ld   bc, $8121                                   ; $6b7d: $01 $21 $81
	ld   bc, $1204                                   ; $6b80: $01 $04 $12
	nop                                              ; $6b83: $00
	ld   bc, $0800                                   ; $6b84: $01 $00 $08
	add  e                                           ; $6b87: $83
	nop                                              ; $6b88: $00
	ld   [bc], a                                     ; $6b89: $02
	jr   nc, jr_012_6b4c                             ; $6b8a: $30 $c0

	sub  b                                           ; $6b8c: $90
	add  b                                           ; $6b8d: $80
	sbc  c                                           ; $6b8e: $99
	rlca                                             ; $6b8f: $07
	sub  c                                           ; $6b90: $91
	ld   sp, $8404                                   ; $6b91: $31 $04 $84
	inc  l                                           ; $6b94: $2c

jr_012_6b95:
	db   $ec                                         ; $6b95: $ec
	nop                                              ; $6b96: $00
	ld   bc, $1080                                   ; $6b97: $01 $80 $10
	ld   bc, $ae30                                   ; $6b9a: $01 $30 $ae
	add  b                                           ; $6b9d: $80
	inc  c                                           ; $6b9e: $0c
	add  hl, bc                                      ; $6b9f: $09
	nop                                              ; $6ba0: $00
	dec  b                                           ; $6ba1: $05
	add  b                                           ; $6ba2: $80
	and  e                                           ; $6ba3: $a3
	nop                                              ; $6ba4: $00
	ld   h, e                                        ; $6ba5: $63
	nop                                              ; $6ba6: $00
	reti                                             ; $6ba7: $d9


	nop                                              ; $6ba8: $00
	ld   a, h                                        ; $6ba9: $7c
	add  c                                           ; $6baa: $81
	nop                                              ; $6bab: $00
	add  hl, de                                      ; $6bac: $19
	ld   a, a                                        ; $6bad: $7f
	nop                                              ; $6bae: $00
	add  b                                           ; $6baf: $80
	nop                                              ; $6bb0: $00
	add  b                                           ; $6bb1: $80
	nop                                              ; $6bb2: $00
	ret  nz                                          ; $6bb3: $c0

	nop                                              ; $6bb4: $00
	add  b                                           ; $6bb5: $80
	nop                                              ; $6bb6: $00
	add  b                                           ; $6bb7: $80
	nop                                              ; $6bb8: $00
	and  b                                           ; $6bb9: $a0
	nop                                              ; $6bba: $00
	db   $10                                         ; $6bbb: $10
	ld   h, b                                        ; $6bbc: $60
	db   $d3                                         ; $6bbd: $d3
	nop                                              ; $6bbe: $00
	ld   [hl], b                                     ; $6bbf: $70
	nop                                              ; $6bc0: $00
	inc  a                                           ; $6bc1: $3c
	nop                                              ; $6bc2: $00
	dec  c                                           ; $6bc3: $0d
	ld   bc, $0307                                   ; $6bc4: $01 $07 $03
	add  b                                           ; $6bc7: $80
	ld   [bc], a                                     ; $6bc8: $02
	dec  b                                           ; $6bc9: $05
	ld   c, $06                                      ; $6bca: $0e $06
	dec  e                                           ; $6bcc: $1d
	dec  c                                           ; $6bcd: $0d
	sbc  a                                           ; $6bce: $9f
	ld   a, a                                        ; $6bcf: $7f
	add  b                                           ; $6bd0: $80
	nop                                              ; $6bd1: $00
	add  b                                           ; $6bd2: $80
	add  b                                           ; $6bd3: $80
	add  b                                           ; $6bd4: $80
	xor  l                                           ; $6bd5: $ad
	add  b                                           ; $6bd6: $80
	ld   l, l                                        ; $6bd7: $6d
	add  b                                           ; $6bd8: $80
	db   $ed                                         ; $6bd9: $ed
	add  b                                           ; $6bda: $80
	db   $db                                         ; $6bdb: $db
	add  b                                           ; $6bdc: $80
	cp   e                                           ; $6bdd: $bb
	nop                                              ; $6bde: $00
	rlca                                             ; $6bdf: $07
	add  b                                           ; $6be0: $80
	ld   [hl], b                                     ; $6be1: $70
	inc  b                                           ; $6be2: $04
	jr   nc, jr_012_6b95                             ; $6be3: $30 $b0

	add  b                                           ; $6be5: $80
	ld   c, h                                        ; $6be6: $4c
	ld   b, b                                        ; $6be7: $40
	add  b                                           ; $6be8: $80
	ld   h, b                                        ; $6be9: $60
	nop                                              ; $6bea: $00
	cp   [hl]                                        ; $6beb: $be
	add  b                                           ; $6bec: $80
	or   h                                           ; $6bed: $b4
	add  c                                           ; $6bee: $81
	or   b                                           ; $6bef: $b0
	nop                                              ; $6bf0: $00
	ld   a, [$0087]                                  ; $6bf1: $fa $87 $00
	nop                                              ; $6bf4: $00
	ld   bc, $0083                                   ; $6bf5: $01 $83 $00
	dec  b                                           ; $6bf8: $05
	dec  d                                           ; $6bf9: $15
	dec  bc                                          ; $6bfa: $0b
	dec  sp                                          ; $6bfb: $3b
	dec  de                                          ; $6bfc: $1b
	ld   [hl], a                                     ; $6bfd: $77
	scf                                              ; $6bfe: $37
	add  b                                           ; $6bff: $80
	inc  bc                                          ; $6c00: $03
	inc  b                                           ; $6c01: $04
	db   $f4                                         ; $6c02: $f4
	nop                                              ; $6c03: $00
	sbc  e                                           ; $6c04: $9b
	nop                                              ; $6c05: $00
	ldh  a, [$81]                                    ; $6c06: $f0 $81
	nop                                              ; $6c08: $00
	ld   bc, $bba4                                   ; $6c09: $01 $a4 $bb
	add  b                                           ; $6c0c: $80
	or   a                                           ; $6c0d: $b7
	add  b                                           ; $6c0e: $80
	ld   [hl], a                                     ; $6c0f: $77
	add  b                                           ; $6c10: $80
	ld   [hl], e                                     ; $6c11: $73
	ld   [bc], a                                     ; $6c12: $02
	add  h                                           ; $6c13: $84
	nop                                              ; $6c14: $00
	ld   a, e                                        ; $6c15: $7b
	add  e                                           ; $6c16: $83
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	adc  d                                           ; $6c19: $8a
	add  b                                           ; $6c1a: $80
	ld   [hl], h                                     ; $6c1b: $74
	dec  c                                           ; $6c1c: $0d
	ld   [hl], b                                     ; $6c1d: $70
	halt                                             ; $6c1e: $76
	ld   [hl], b                                     ; $6c1f: $70
	ld   b, h                                        ; $6c20: $44
	ld   b, b                                        ; $6c21: $40
	jr   nc, jr_012_6c24                             ; $6c22: $30 $00

jr_012_6c24:
	ld   l, $00                                      ; $6c24: $2e $00
	add  hl, de                                      ; $6c26: $19
	nop                                              ; $6c27: $00
	ldh  [rP1], a                                    ; $6c28: $e0 $00
	rra                                              ; $6c2a: $1f
	add  a                                           ; $6c2b: $87
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	ld   bc, $0081                                   ; $6c2e: $01 $81 $00
	ld   [bc], a                                     ; $6c31: $02
	ld   a, $00                                      ; $6c32: $3e $00
	ccf                                              ; $6c34: $3f
	add  a                                           ; $6c35: $87
	nop                                              ; $6c36: $00
	ld   b, $9c                                      ; $6c37: $06 $9c
	nop                                              ; $6c39: $00
	ld   hl, sp-$68                                  ; $6c3a: $f8 $98
	cp   e                                           ; $6c3c: $bb
	cp   b                                           ; $6c3d: $b8
	rst  $38                                         ; $6c3e: $ff
	add  c                                           ; $6c3f: $81
	nop                                              ; $6c40: $00
	ld   c, $01                                      ; $6c41: $0e $01
	nop                                              ; $6c43: $00
	ld   [bc], a                                     ; $6c44: $02
	nop                                              ; $6c45: $00
	inc  b                                           ; $6c46: $04
	nop                                              ; $6c47: $00
	inc  c                                           ; $6c48: $0c

jr_012_6c49:
	nop                                              ; $6c49: $00
	ld   b, $00                                      ; $6c4a: $06 $00
	inc  de                                          ; $6c4c: $13
	nop                                              ; $6c4d: $00
	ld   hl, $e000                                   ; $6c4e: $21 $00 $e0
	add  c                                           ; $6c51: $81
	nop                                              ; $6c52: $00
	dec  bc                                          ; $6c53: $0b
	jr   nc, jr_012_6c56                             ; $6c54: $30 $00

jr_012_6c56:
	inc  de                                          ; $6c56: $13
	nop                                              ; $6c57: $00
	inc  e                                           ; $6c58: $1c
	nop                                              ; $6c59: $00
	ld   h, b                                        ; $6c5a: $60
	nop                                              ; $6c5b: $00
	add  b                                           ; $6c5c: $80
	nop                                              ; $6c5d: $00
	ld   sp, hl                                      ; $6c5e: $f9
	ld   b, $80                                      ; $6c5f: $06 $80
	ld   [bc], a                                     ; $6c61: $02
	add  b                                           ; $6c62: $80
	nop                                              ; $6c63: $00
	ld   d, $40                                      ; $6c64: $16 $40
	nop                                              ; $6c66: $00
	ld   [hl], b                                     ; $6c67: $70
	nop                                              ; $6c68: $00
	jr   c, jr_012_6c6b                              ; $6c69: $38 $00

jr_012_6c6b:
	ld   [$8101], sp                                 ; $6c6b: $08 $01 $81
	nop                                              ; $6c6e: $00
	sbc  a                                           ; $6c6f: $9f
	nop                                              ; $6c70: $00
	stop                                             ; $6c71: $10 $00
	ld   [$1000], sp                                 ; $6c73: $08 $00 $10
	nop                                              ; $6c76: $00
	jr   nc, jr_012_6c79                             ; $6c77: $30 $00

jr_012_6c79:
	jr   nz, jr_012_6c7b                             ; $6c79: $20 $00

jr_012_6c7b:
	ld   [$0080], sp                                 ; $6c7b: $08 $80 $00
	dec  b                                           ; $6c7e: $05
	jr   nz, jr_012_6c49                             ; $6c7f: $20 $c8

	nop                                              ; $6c81: $00
	ld   [$1000], sp                                 ; $6c82: $08 $00 $10
	adc  c                                           ; $6c85: $89
	nop                                              ; $6c86: $00
	jr   jr_012_6c8c                                 ; $6c87: $18 $03

	nop                                              ; $6c89: $00
	inc  c                                           ; $6c8a: $0c
	nop                                              ; $6c8b: $00

jr_012_6c8c:
	inc  e                                           ; $6c8c: $1c
	nop                                              ; $6c8d: $00

Jump_012_6c8e:
	scf                                              ; $6c8e: $37
	db   $10                                         ; $6c8f: $10
	ld   [de], a                                     ; $6c90: $12
	add  hl, bc                                      ; $6c91: $09
	ld   a, [bc]                                     ; $6c92: $0a
	db   $10                                         ; $6c93: $10
	ld   [hl+], a                                    ; $6c94: $22
	nop                                              ; $6c95: $00
	jr   z, jr_012_6c98                              ; $6c96: $28 $00

jr_012_6c98:
	ret  nz                                          ; $6c98: $c0

	nop                                              ; $6c99: $00
	ld   hl, sp+$00                                  ; $6c9a: $f8 $00
	rst  $30                                         ; $6c9c: $f7
	nop                                              ; $6c9d: $00
	cp   $20                                         ; $6c9e: $fe $20
	ld   l, $80                                      ; $6ca0: $2e $80
	adc  h                                           ; $6ca2: $8c
	dec  b                                           ; $6ca3: $05
	inc  h                                           ; $6ca4: $24
	and  l                                           ; $6ca5: $a5
	nop                                              ; $6ca6: $00
	ld   a, c                                        ; $6ca7: $79
	nop                                              ; $6ca8: $00
	ld   [$6080], sp                                 ; $6ca9: $08 $80 $60
	db   $10                                         ; $6cac: $10
	ldh  [$f0], a                                    ; $6cad: $e0 $f0
	ld   b, b                                        ; $6caf: $40
	ret  nz                                          ; $6cb0: $c0

	nop                                              ; $6cb1: $00
	ld   b, b                                        ; $6cb2: $40
	nop                                              ; $6cb3: $00
	jr   c, jr_012_6cb6                              ; $6cb4: $38 $00

jr_012_6cb6:
	sbc  $00                                         ; $6cb6: $de $00
	ld   sp, hl                                      ; $6cb8: $f9
	nop                                              ; $6cb9: $00
	jr   nz, jr_012_6cbc                             ; $6cba: $20 $00

jr_012_6cbc:
	ld   hl, $8001                                   ; $6cbc: $21 $01 $80
	nop                                              ; $6cbf: $00
	add  b                                           ; $6cc0: $80
	ld   bc, $3107                                   ; $6cc1: $01 $07 $31
	ld   bc, $0616                                   ; $6cc4: $01 $16 $06
	dec  l                                           ; $6cc7: $2d
	dec  c                                           ; $6cc8: $0d
	db   $dd                                         ; $6cc9: $dd
	dec  e                                           ; $6cca: $1d
	add  b                                           ; $6ccb: $80
	add  b                                           ; $6ccc: $80
	add  b                                           ; $6ccd: $80
	rrca                                             ; $6cce: $0f
	add  d                                           ; $6ccf: $82
	nop                                              ; $6cd0: $00
	add  d                                           ; $6cd1: $82
	dec  c                                           ; $6cd2: $0d
	add  d                                           ; $6cd3: $82
	db   $dd                                         ; $6cd4: $dd
	dec  c                                           ; $6cd5: $0d
	ld   b, $00                                      ; $6cd6: $06 $00
	sbc  a                                           ; $6cd8: $9f
	add  b                                           ; $6cd9: $80
	daa                                              ; $6cda: $27
	nop                                              ; $6cdb: $00
	ld   bc, $6000                                   ; $6cdc: $01 $00 $60
	ld   b, b                                        ; $6cdf: $40
	or   b                                           ; $6ce0: $b0
	and  b                                           ; $6ce1: $a0
	cp   b                                           ; $6ce2: $b8
	or   b                                           ; $6ce3: $b0
	add  b                                           ; $6ce4: $80
	ret  nc                                          ; $6ce5: $d0

	ld   [bc], a                                     ; $6ce6: $02
	inc  b                                           ; $6ce7: $04
	ldh  a, [$f3]                                    ; $6ce8: $f0 $f3
	add  b                                           ; $6cea: $80
	inc  a                                           ; $6ceb: $3c
	inc  bc                                          ; $6cec: $03
	ld   c, $ff                                      ; $6ced: $0e $ff
	nop                                              ; $6cef: $00
	ld   c, $85                                      ; $6cf0: $0e $85
	nop                                              ; $6cf2: $00
	dec  b                                           ; $6cf3: $05
	inc  d                                           ; $6cf4: $14
	dec  bc                                          ; $6cf5: $0b
	scf                                              ; $6cf6: $37
	rla                                              ; $6cf7: $17
	ld   l, [hl]                                     ; $6cf8: $6e
	ld   l, $80                                      ; $6cf9: $2e $80
	dec  b                                           ; $6cfb: $05
	add  hl, bc                                      ; $6cfc: $09
	or   b                                           ; $6cfd: $b0
	nop                                              ; $6cfe: $00
	ld   e, a                                        ; $6cff: $5f
	nop                                              ; $6d00: $00
	ld   h, b                                        ; $6d01: $60

jr_012_6d02:
	nop                                              ; $6d02: $00
	stop                                             ; $6d03: $10 $00
	and  h                                           ; $6d05: $a4
	cp   e                                           ; $6d06: $bb
	add  b                                           ; $6d07: $80
	ld   a, e                                        ; $6d08: $7b
	add  b                                           ; $6d09: $80
	rst  $30                                         ; $6d0a: $f7
	add  b                                           ; $6d0b: $80
	rst  $28                                         ; $6d0c: $ef
	inc  b                                           ; $6d0d: $04
	db   $d3                                         ; $6d0e: $d3
	jp   $002c                                       ; $6d0f: $c3 $2c $00


	jp   $0081                                       ; $6d12: $c3 $81 $00


	ld   bc, $bd42                                   ; $6d15: $01 $42 $bd
	add  d                                           ; $6d18: $82
	cp   e                                           ; $6d19: $bb
	add  b                                           ; $6d1a: $80
	ld   a, d                                        ; $6d1b: $7a
	inc  b                                           ; $6d1c: $04
	add  hl, de                                      ; $6d1d: $19
	jr   jr_012_6d02                                 ; $6d1e: $18 $e2

	nop                                              ; $6d20: $00
	dec  de                                          ; $6d21: $1b
	add  c                                           ; $6d22: $81
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	ld   b, a                                        ; $6d25: $47
	add  e                                           ; $6d26: $83
	add  b                                           ; $6d27: $80
	add  b                                           ; $6d28: $80
	nop                                              ; $6d29: $00
	inc  b                                           ; $6d2a: $04
	ld   b, b                                        ; $6d2b: $40
	nop                                              ; $6d2c: $00
	ldh  a, [rP1]                                    ; $6d2d: $f0 $00
	adc  b                                           ; $6d2f: $88
	add  c                                           ; $6d30: $81
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	ld   hl, sp-$79                                  ; $6d33: $f8 $87
	nop                                              ; $6d35: $00
	ld   b, $0c                                      ; $6d36: $06 $0c
	nop                                              ; $6d38: $00
	scf                                              ; $6d39: $37
	inc  b                                           ; $6d3a: $04
	ret  nz                                          ; $6d3b: $c0

	nop                                              ; $6d3c: $00
	rst  $38                                         ; $6d3d: $ff
	add  a                                           ; $6d3e: $87
	nop                                              ; $6d3f: $00
	ld   b, $70                                      ; $6d40: $06 $70
	nop                                              ; $6d42: $00
	ldh  [$60], a                                    ; $6d43: $e0 $60
	add  sp, -$20                                    ; $6d45: $e8 $e0
	rst  $30                                         ; $6d47: $f7
	add  c                                           ; $6d48: $81
	nop                                              ; $6d49: $00
	ld   b, $10                                      ; $6d4a: $06 $10
	nop                                              ; $6d4c: $00
	ld   [$0f00], sp                                 ; $6d4d: $08 $00 $0f
	nop                                              ; $6d50: $00
	rlca                                             ; $6d51: $07
	add  c                                           ; $6d52: $81
	nop                                              ; $6d53: $00
	inc  bc                                          ; $6d54: $03
	stop                                             ; $6d55: $10 $00
	di                                               ; $6d57: $f3
	inc  bc                                          ; $6d58: $03
	add  b                                           ; $6d59: $80
	ld   bc, $0082                                   ; $6d5a: $01 $82 $00

jr_012_6d5d:
	inc  b                                           ; $6d5d: $04
	stop                                             ; $6d5e: $10 $00
	inc  e                                           ; $6d60: $1c
	nop                                              ; $6d61: $00
	inc  c                                           ; $6d62: $0c
	add  c                                           ; $6d63: $81
	ld   bc, $0e04                                   ; $6d64: $01 $04 $0e
	nop                                              ; $6d67: $00
	ld   [$0c00], sp                                 ; $6d68: $08 $00 $0c
	add  c                                           ; $6d6b: $81
	nop                                              ; $6d6c: $00
	jr   jr_012_6d87                                 ; $6d6d: $18 $18

	nop                                              ; $6d6f: $00
	stop                                             ; $6d70: $10 $00
	inc  b                                           ; $6d72: $04
	jr   nz, jr_012_6d9d                             ; $6d73: $20 $28

	jr   nz, @-$27                                   ; $6d75: $20 $d7

	nop                                              ; $6d77: $00
	inc  b                                           ; $6d78: $04
	nop                                              ; $6d79: $00
	inc  c                                           ; $6d7a: $0c
	nop                                              ; $6d7b: $00
	jr   c, jr_012_6d7e                              ; $6d7c: $38 $00

jr_012_6d7e:
	ld   [hl], d                                     ; $6d7e: $72
	nop                                              ; $6d7f: $00
	inc  c                                           ; $6d80: $0c
	db   $10                                         ; $6d81: $10
	pop  de                                          ; $6d82: $d1
	ld   b, b                                        ; $6d83: $40
	ld   d, a                                        ; $6d84: $57
	jr   nz, jr_012_6dc7                             ; $6d85: $20 $40

jr_012_6d87:
	add  c                                           ; $6d87: $81
	nop                                              ; $6d88: $00
	dec  b                                           ; $6d89: $05
	ld   e, $00                                      ; $6d8a: $1e $00
	ccf                                              ; $6d8c: $3f
	jr   nz, jr_012_6d5d                             ; $6d8d: $20 $ce

	ret  nz                                          ; $6d8f: $c0

	add  b                                           ; $6d90: $80
	nop                                              ; $6d91: $00
	inc  b                                           ; $6d92: $04
	ld   [$0700], sp                                 ; $6d93: $08 $00 $07
	nop                                              ; $6d96: $00
	rlca                                             ; $6d97: $07
	add  c                                           ; $6d98: $81
	db   $10                                         ; $6d99: $10
	inc  c                                           ; $6d9a: $0c
	jr   jr_012_6d9d                                 ; $6d9b: $18 $00

jr_012_6d9d:
	ret  nz                                          ; $6d9d: $c0

	nop                                              ; $6d9e: $00
	ld   h, b                                        ; $6d9f: $60
	nop                                              ; $6da0: $00
	ret  c                                           ; $6da1: $d8

	nop                                              ; $6da2: $00
	inc  c                                           ; $6da3: $0c
	nop                                              ; $6da4: $00
	add  [hl]                                        ; $6da5: $86
	nop                                              ; $6da6: $00
	ld   [bc], a                                     ; $6da7: $02
	adc  c                                           ; $6da8: $89
	nop                                              ; $6da9: $00
	dec  b                                           ; $6daa: $05
	ld   bc, $0700                                   ; $6dab: $01 $00 $07
	ld   bc, $2199                                   ; $6dae: $01 $99 $21
	add  b                                           ; $6db1: $80
	ld   [bc], a                                     ; $6db2: $02
	inc  bc                                          ; $6db3: $03
	ld   b, c                                        ; $6db4: $41
	ld   bc, $0080                                   ; $6db5: $01 $80 $00
	add  b                                           ; $6db8: $80
	ld   [bc], a                                     ; $6db9: $02
	ld   bc, $36b6                                   ; $6dba: $01 $b6 $36
	add  d                                           ; $6dbd: $82
	ld   [hl], a                                     ; $6dbe: $77
	add  b                                           ; $6dbf: $80
	nop                                              ; $6dc0: $00
	add  b                                           ; $6dc1: $80
	ld   e, $82                                      ; $6dc2: $1e $82
	nop                                              ; $6dc4: $00
	add  b                                           ; $6dc5: $80
	ld   a, [bc]                                     ; $6dc6: $0a

jr_012_6dc7:
	add  b                                           ; $6dc7: $80
	dec  c                                           ; $6dc8: $0d
	add  b                                           ; $6dc9: $80
	ld   l, l                                        ; $6dca: $6d
	add  b                                           ; $6dcb: $80
	ld   l, [hl]                                     ; $6dcc: $6e
	ld   [bc], a                                     ; $6dcd: $02
	db   $fd                                         ; $6dce: $fd
	nop                                              ; $6dcf: $00
	add  b                                           ; $6dd0: $80
	add  b                                           ; $6dd1: $80
	nop                                              ; $6dd2: $00
	ld   bc, $cf0c                                   ; $6dd3: $01 $0c $cf
	add  b                                           ; $6dd6: $80
	inc  b                                           ; $6dd7: $04
	inc  bc                                          ; $6dd8: $03
	ld   [bc], a                                     ; $6dd9: $02
	add  d                                           ; $6dda: $82
	jr   @-$46                                       ; $6ddb: $18 $b8

	add  b                                           ; $6ddd: $80
	sub  d                                           ; $6dde: $92
	ld   b, $86                                      ; $6ddf: $06 $86
	xor  $06                                         ; $6de1: $ee $06
	dec  e                                           ; $6de3: $1d
	dec  c                                           ; $6de4: $0d
	dec  sp                                          ; $6de5: $3b
	dec  de                                          ; $6de6: $1b
	add  b                                           ; $6de7: $80
	inc  bc                                          ; $6de8: $03
	add  hl, bc                                      ; $6de9: $09
	ld   e, c                                        ; $6dea: $59
	ld   bc, $002e                                   ; $6deb: $01 $2e $00
	ld   sp, $0800                                   ; $6dee: $31 $00 $08
	nop                                              ; $6df1: $00
	ld   h, c                                        ; $6df2: $61
	xor  $82                                         ; $6df3: $ee $82
	sbc  $80                                         ; $6df5: $de $80
	cp   l                                           ; $6df7: $bd
	add  b                                           ; $6df8: $80
	adc  h                                           ; $6df9: $8c
	ld   [bc], a                                     ; $6dfa: $02
	ld   [hl], c                                     ; $6dfb: $71
	nop                                              ; $6dfc: $00
	adc  [hl]                                        ; $6dfd: $8e
	add  c                                           ; $6dfe: $81
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	ld   de, $ee85                                   ; $6e01: $11 $85 $ee
	add  b                                           ; $6e04: $80
	ld   h, b                                        ; $6e05: $60
	ld   [bc], a                                     ; $6e06: $02
	adc  l                                           ; $6e07: $8d
	nop                                              ; $6e08: $00
	ld   [hl], c                                     ; $6e09: $71
	add  c                                           ; $6e0a: $81
	nop                                              ; $6e0b: $00
	inc  c                                           ; $6e0c: $0c
	ld   [hl+], a                                    ; $6e0d: $22
	ret  nz                                          ; $6e0e: $c0

	ret  nc                                          ; $6e0f: $d0

	ret  nz                                          ; $6e10: $c0

	rst  JumpTable                                         ; $6e11: $df
	ret  nz                                          ; $6e12: $c0

	ld   c, $00                                      ; $6e13: $0e $00
	and  b                                           ; $6e15: $a0
	nop                                              ; $6e16: $00
	ld   a, b                                        ; $6e17: $78
	nop                                              ; $6e18: $00
	call nz, $0081                                   ; $6e19: $c4 $81 $00

jr_012_6e1c:
	db   $10                                         ; $6e1c: $10
	ei                                               ; $6e1d: $fb
	nop                                              ; $6e1e: $00
	ld   a, [bc]                                     ; $6e1f: $0a
	ld   [bc], a                                     ; $6e20: $02
	jr   jr_012_6e2b                                 ; $6e21: $18 $08

	dec  a                                           ; $6e23: $3d
	inc  e                                           ; $6e24: $1c
	ld   a, d                                        ; $6e25: $7a
	jr   c, jr_012_6e1c                              ; $6e26: $38 $f4

	ld   [hl], b                                     ; $6e28: $70
	ld   l, b                                        ; $6e29: $68
	ld   h, b                                        ; $6e2a: $60

jr_012_6e2b:
	sub  b                                           ; $6e2b: $90

jr_012_6e2c:
	nop                                              ; $6e2c: $00
	ld   h, b                                        ; $6e2d: $60
	add  l                                           ; $6e2e: $85
	nop                                              ; $6e2f: $00
	ld   [$0003], sp                                 ; $6e30: $08 $03 $00
	inc  c                                           ; $6e33: $0c
	nop                                              ; $6e34: $00
	jr   nc, jr_012_6e37                             ; $6e35: $30 $00

jr_012_6e37:
	ret  nc                                          ; $6e37: $d0

	nop                                              ; $6e38: $00
	rst  $28                                         ; $6e39: $ef
	add  l                                           ; $6e3a: $85
	nop                                              ; $6e3b: $00
	ld   a, [bc]                                     ; $6e3c: $0a
	ldh  [rP1], a                                    ; $6e3d: $e0 $00
	inc  e                                           ; $6e3f: $1c
	nop                                              ; $6e40: $00
	ld   [bc], a                                     ; $6e41: $02
	nop                                              ; $6e42: $00
	inc  bc                                          ; $6e43: $03
	nop                                              ; $6e44: $00
	db   $fd                                         ; $6e45: $fd
	nop                                              ; $6e46: $00
	ld   bc, $0085                                   ; $6e47: $01 $85 $00
	nop                                              ; $6e4a: $00
	ld   bc, $0083                                   ; $6e4b: $01 $83 $00
	inc  b                                           ; $6e4e: $04
	and  a                                           ; $6e4f: $a7
	nop                                              ; $6e50: $00
	ld   e, l                                        ; $6e51: $5d
	nop                                              ; $6e52: $00
	dec  b                                           ; $6e53: $05
	add  b                                           ; $6e54: $80
	nop                                              ; $6e55: $00
	add  b                                           ; $6e56: $80
	ld   [$4980], sp                                 ; $6e57: $08 $80 $49
	dec  c                                           ; $6e5a: $0d
	inc  d                                           ; $6e5b: $14
	ld   [hl], $08                                   ; $6e5c: $36 $08
	xor  d                                           ; $6e5e: $aa
	inc  e                                           ; $6e5f: $1c
	sub  l                                           ; $6e60: $95
	nop                                              ; $6e61: $00
	ld   l, c                                        ; $6e62: $69
	nop                                              ; $6e63: $00
	ldh  [rP1], a                                    ; $6e64: $e0 $00
	add  b                                           ; $6e66: $80
	nop                                              ; $6e67: $00
	ld   bc, $0080                                   ; $6e68: $01 $80 $00
	ld   bc, $c040                                   ; $6e6b: $01 $40 $c0
	add  b                                           ; $6e6e: $80
	inc  h                                           ; $6e6f: $24
	ld   bc, $6d6c                                   ; $6e70: $01 $6c $6d
	add  b                                           ; $6e73: $80
	inc  e                                           ; $6e74: $1c
	ld   [$7f3f], sp                                 ; $6e75: $08 $3f $7f
	ld   de, $0031                                   ; $6e78: $11 $31 $00
	dec  sp                                          ; $6e7b: $3b
	ld   [$006b], sp                                 ; $6e7c: $08 $6b $00
	add  b                                           ; $6e7f: $80
	inc  bc                                          ; $6e80: $03
	add  b                                           ; $6e81: $80
	nop                                              ; $6e82: $00
	inc  c                                           ; $6e83: $0c
	dec  sp                                          ; $6e84: $3b
	ld   a, b                                        ; $6e85: $78
	db   $fc                                         ; $6e86: $fc
	ldh  [$ec], a                                    ; $6e87: $e0 $ec
	ret  nz                                          ; $6e89: $c0

	ldh  [rP1], a                                    ; $6e8a: $e0 $00
	cp   [hl]                                        ; $6e8c: $be
	db   $10                                         ; $6e8d: $10
	ret  nc                                          ; $6e8e: $d0

	db   $10                                         ; $6e8f: $10
	rla                                              ; $6e90: $17
	add  b                                           ; $6e91: $80
	db   $10                                         ; $6e92: $10
	ld   a, [bc]                                     ; $6e93: $0a
	jr   jr_012_6e2c                                 ; $6e94: $18 $96

	nop                                              ; $6e96: $00
	ld   bc, $0200                                   ; $6e97: $01 $00 $02
	nop                                              ; $6e9a: $00
	jr   nc, jr_012_6e9d                             ; $6e9b: $30 $00

jr_012_6e9d:
	rrca                                             ; $6e9d: $0f
	nop                                              ; $6e9e: $00

jr_012_6e9f:
	add  b                                           ; $6e9f: $80
	rrca                                             ; $6ea0: $0f
	ld   b, $3f                                      ; $6ea1: $06 $3f
	rra                                              ; $6ea3: $1f
	ld   a, [hl]                                     ; $6ea4: $7e
	ld   a, $80                                      ; $6ea5: $3e $80
	nop                                              ; $6ea7: $00
	ret  nz                                          ; $6ea8: $c0

	add  c                                           ; $6ea9: $81
	ld   a, [de]                                     ; $6eaa: $1a
	inc  bc                                          ; $6eab: $03
	ld   e, d                                        ; $6eac: $5a
	ld   [$008b], sp                                 ; $6ead: $08 $8b $00
	add  b                                           ; $6eb0: $80
	ld   hl, sp+$01                                  ; $6eb1: $f8 $01
	cp   $fc                                         ; $6eb3: $fe $fc
	add  b                                           ; $6eb5: $80
	ld   a, h                                        ; $6eb6: $7c
	ld   b, $8e                                      ; $6eb7: $06 $8e
	nop                                              ; $6eb9: $00
	add  b                                           ; $6eba: $80
	nop                                              ; $6ebb: $00
	jr   nc, jr_012_6ebe                             ; $6ebc: $30 $00

jr_012_6ebe:
	ret  nz                                          ; $6ebe: $c0

	add  a                                           ; $6ebf: $87
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	db   $10                                         ; $6ec2: $10
	add  e                                           ; $6ec3: $83
	rrca                                             ; $6ec4: $0f
	ld   bc, $1e3e                                   ; $6ec5: $01 $3e $1e
	add  b                                           ; $6ec8: $80
	ld   b, $0e                                      ; $6ec9: $06 $0e
	ld   a, d                                        ; $6ecb: $7a
	ld   [bc], a                                     ; $6ecc: $02
	call nz, Call_012_7c00                           ; $6ecd: $c4 $00 $7c
	nop                                              ; $6ed0: $00
	sub  a                                           ; $6ed1: $97
	add  a                                           ; $6ed2: $87
	ld   h, $06                                      ; $6ed3: $26 $06
	ld   c, b                                        ; $6ed5: $48
	nop                                              ; $6ed6: $00
	inc  b                                           ; $6ed7: $04
	nop                                              ; $6ed8: $00
	add  e                                           ; $6ed9: $83
	add  l                                           ; $6eda: $85
	nop                                              ; $6edb: $00
	db   $10                                         ; $6edc: $10
	jr   nz, jr_012_6e9f                             ; $6edd: $20 $c0

	jr   nc, jr_012_6f01                             ; $6edf: $30 $20

	jr   jr_012_6ef3                                 ; $6ee1: $18 $10

	inc  c                                           ; $6ee3: $0c
	ld   [$0406], sp                                 ; $6ee4: $08 $06 $04
	jr   c, jr_012_6ee9                              ; $6ee7: $38 $00

jr_012_6ee9:
	ld   b, h                                        ; $6ee9: $44
	nop                                              ; $6eea: $00
	ld   a, h                                        ; $6eeb: $7c
	nop                                              ; $6eec: $00
	cp   $87                                         ; $6eed: $fe $87
	nop                                              ; $6eef: $00
	ld   b, $07                                      ; $6ef0: $06 $07
	nop                                              ; $6ef2: $00

jr_012_6ef3:
	jr   jr_012_6ef5                                 ; $6ef3: $18 $00

jr_012_6ef5:
	ld   h, b                                        ; $6ef5: $60
	nop                                              ; $6ef6: $00
	ld   a, a                                        ; $6ef7: $7f
	add  a                                           ; $6ef8: $87
	nop                                              ; $6ef9: $00
	ld   a, [bc]                                     ; $6efa: $0a
	ret  nz                                          ; $6efb: $c0

	nop                                              ; $6efc: $00
	jr   c, jr_012_6eff                              ; $6efd: $38 $00

jr_012_6eff:
	inc  b                                           ; $6eff: $04
	nop                                              ; $6f00: $00

jr_012_6f01:
	db   $fd                                         ; $6f01: $fd
	nop                                              ; $6f02: $00
	ld   bc, $0100                                   ; $6f03: $01 $00 $01
	add  l                                           ; $6f06: $85
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	ld   bc, $0081                                   ; $6f09: $01 $81 $00
	ld   b, $df                                      ; $6f0c: $06 $df
	nop                                              ; $6f0e: $00
	ld   a, b                                        ; $6f0f: $78
	nop                                              ; $6f10: $00
	ld   e, l                                        ; $6f11: $5d
	nop                                              ; $6f12: $00
	dec  b                                           ; $6f13: $05
	add  b                                           ; $6f14: $80
	nop                                              ; $6f15: $00
	add  b                                           ; $6f16: $80
	ld   [$4980], sp                                 ; $6f17: $08 $80 $49
	dec  c                                           ; $6f1a: $0d
	inc  b                                           ; $6f1b: $04
	ld   h, $08                                      ; $6f1c: $26 $08
	cpl                                              ; $6f1e: $2f
	nop                                              ; $6f1f: $00
	inc  c                                           ; $6f20: $0c
	nop                                              ; $6f21: $00
	ld   l, c                                        ; $6f22: $69
	nop                                              ; $6f23: $00
	ldh  [rP1], a                                    ; $6f24: $e0 $00
	add  b                                           ; $6f26: $80
	nop                                              ; $6f27: $00
	ld   bc, $0080                                   ; $6f28: $01 $80 $00
	inc  bc                                          ; $6f2b: $03
	ld   b, b                                        ; $6f2c: $40
	ret  nz                                          ; $6f2d: $c0

	inc  h                                           ; $6f2e: $24
	dec  h                                           ; $6f2f: $25
	add  d                                           ; $6f30: $82
	inc  e                                           ; $6f31: $1c
	ld   [$7f3f], sp                                 ; $6f32: $08 $3f $7f
	ld   de, $0031                                   ; $6f35: $11 $31 $00
	dec  sp                                          ; $6f38: $3b
	ld   [$006b], sp                                 ; $6f39: $08 $6b $00
	add  b                                           ; $6f3c: $80
	inc  bc                                          ; $6f3d: $03
	ld   de, $6c39                                   ; $6f3e: $11 $39 $6c
	ld   l, [hl]                                     ; $6f41: $6e
	ld   a, b                                        ; $6f42: $78
	db   $fc                                         ; $6f43: $fc
	ldh  [$ec], a                                    ; $6f44: $e0 $ec
	ret  nz                                          ; $6f46: $c0

	ldh  [rP1], a                                    ; $6f47: $e0 $00
	cp   [hl]                                        ; $6f49: $be
	db   $10                                         ; $6f4a: $10
	ret  nc                                          ; $6f4b: $d0

	db   $10                                         ; $6f4c: $10
	rla                                              ; $6f4d: $17
	db   $10                                         ; $6f4e: $10
	ld   sp, hl                                      ; $6f4f: $f9
	inc  bc                                          ; $6f50: $03
	add  b                                           ; $6f51: $80
	nop                                              ; $6f52: $00
	db   $10                                         ; $6f53: $10
	inc  bc                                          ; $6f54: $03
	nop                                              ; $6f55: $00
	inc  b                                           ; $6f56: $04
	nop                                              ; $6f57: $00
	ld   h, b                                        ; $6f58: $60
	nop                                              ; $6f59: $00
	rra                                              ; $6f5a: $1f
	nop                                              ; $6f5b: $00
	ld   a, a                                        ; $6f5c: $7f
	ccf                                              ; $6f5d: $3f
	cp   $7e                                         ; $6f5e: $fe $7e
	ld   d, d                                        ; $6f60: $52
	jr   jr_012_6fab                                 ; $6f61: $18 $48

	nop                                              ; $6f63: $00
	add  d                                           ; $6f64: $82
	add  b                                           ; $6f65: $80
	jr   nc, @+$03                                   ; $6f66: $30 $01

	ld   [hl], $b6                                   ; $6f68: $36 $b6
	add  b                                           ; $6f6a: $80
	ld   [de], a                                     ; $6f6b: $12
	dec  b                                           ; $6f6c: $05
	nop                                              ; $6f6d: $00
	ei                                               ; $6f6e: $fb
	ld   hl, sp+$7e                                  ; $6f6f: $f8 $7e
	ld   a, h                                        ; $6f71: $7c
	cp   $83                                         ; $6f72: $fe $83
	nop                                              ; $6f74: $00
	ld   b, $38                                      ; $6f75: $06 $38
	nop                                              ; $6f77: $00
	ret  nz                                          ; $6f78: $c0

	nop                                              ; $6f79: $00
	jr   jr_012_6f7c                                 ; $6f7a: $18 $00

jr_012_6f7c:
	ldh  [$81], a                                    ; $6f7c: $e0 $81
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	db   $10                                         ; $6f80: $10
	add  l                                           ; $6f81: $85
	rrca                                             ; $6f82: $0f
	add  b                                           ; $6f83: $80
	inc  bc                                          ; $6f84: $03
	ld   c, $3d                                      ; $6f85: $0e $3d
	ld   bc, $0062                                   ; $6f87: $01 $62 $00
	ld   a, $00                                      ; $6f8a: $3e $00
	ld   b, a                                        ; $6f8c: $47
	rst  ToBoot                                         ; $6f8d: $c7
	sbc  e                                           ; $6f8e: $9b
	add  e                                           ; $6f8f: $83
	ld   [hl+], a                                    ; $6f90: $22
	ld   [bc], a                                     ; $6f91: $02
	ld   b, h                                        ; $6f92: $44
	nop                                              ; $6f93: $00
	inc  bc                                          ; $6f94: $03
	add  l                                           ; $6f95: $85
	nop                                              ; $6f96: $00
	db   $10                                         ; $6f97: $10
	and  b                                           ; $6f98: $a0
	ret  nz                                          ; $6f99: $c0

	ldh  a, [$e0]                                    ; $6f9a: $f0 $e0
	inc  e                                           ; $6f9c: $1c
	db   $10                                         ; $6f9d: $10
	ld   c, $0c                                      ; $6f9e: $0e $0c
	inc  bc                                          ; $6fa0: $03
	ld   [bc], a                                     ; $6fa1: $02
	sbc  h                                           ; $6fa2: $9c
	nop                                              ; $6fa3: $00
	ld   [hl+], a                                    ; $6fa4: $22
	nop                                              ; $6fa5: $00
	ld   a, $00                                      ; $6fa6: $3e $00
	ld   a, a                                        ; $6fa8: $7f
	add  c                                           ; $6fa9: $81
	nop                                              ; $6faa: $00

jr_012_6fab:
	jr   z, jr_012_6fae                              ; $6fab: $28 $01

	nop                                              ; $6fad: $00

jr_012_6fae:
	rlca                                             ; $6fae: $07
	ld   bc, $070a                                   ; $6faf: $01 $0a $07
	db   $10                                         ; $6fb2: $10
	rrca                                             ; $6fb3: $0f
	jr   nz, jr_012_6fd5                             ; $6fb4: $20 $1f

	ld   b, c                                        ; $6fb6: $41
	ld   a, $55                                      ; $6fb7: $3e $55
	nop                                              ; $6fb9: $00
	ld   b, b                                        ; $6fba: $40
	nop                                              ; $6fbb: $00
	ret  nz                                          ; $6fbc: $c0

	ld   [hl], b                                     ; $6fbd: $70
	ret  nc                                          ; $6fbe: $d0

	db   $fc                                         ; $6fbf: $fc
	jp   $1fe0                                       ; $6fc0: $c3 $e0 $1f


	add  b                                           ; $6fc3: $80
	ldh  [rP1], a                                    ; $6fc4: $e0 $00
	add  b                                           ; $6fc6: $80
	nop                                              ; $6fc7: $00
	ld   c, e                                        ; $6fc8: $4b
	ld   a, $10                                      ; $6fc9: $3e $10
	ccf                                              ; $6fcb: $3f
	ld   l, b                                        ; $6fcc: $68
	rra                                              ; $6fcd: $1f
	add  hl, sp                                      ; $6fce: $39
	rrca                                             ; $6fcf: $0f
	dec  d                                           ; $6fd0: $15
	inc  bc                                          ; $6fd1: $03
	ld   c, $00                                      ; $6fd2: $0e $00
	inc  bc                                          ; $6fd4: $03

jr_012_6fd5:
	add  e                                           ; $6fd5: $83
	nop                                              ; $6fd6: $00
	ld   c, $80                                      ; $6fd7: $0e $80
	nop                                              ; $6fd9: $00
	ld   b, b                                        ; $6fda: $40
	nop                                              ; $6fdb: $00

jr_012_6fdc:
	cp   b                                           ; $6fdc: $b8
	ret  nz                                          ; $6fdd: $c0

	ccf                                              ; $6fde: $3f
	ld   hl, sp-$01                                  ; $6fdf: $f8 $ff
	ld   a, a                                        ; $6fe1: $7f
	add  a                                           ; $6fe2: $87
	rlca                                             ; $6fe3: $07
	ld   a, b                                        ; $6fe4: $78
	nop                                              ; $6fe5: $00
	rlca                                             ; $6fe6: $07
	add  a                                           ; $6fe7: $87

jr_012_6fe8:
	nop                                              ; $6fe8: $00
	ld   b, $e0                                      ; $6fe9: $06 $e0
	nop                                              ; $6feb: $00
	ldh  [$f0], a                                    ; $6fec: $e0 $f0
	db   $10                                         ; $6fee: $10
	ld   e, $fe                                      ; $6fef: $1e $fe
	add  e                                           ; $6ff1: $83
	nop                                              ; $6ff2: $00
	ld   a, [bc]                                     ; $6ff3: $0a
	inc  bc                                          ; $6ff4: $03
	nop                                              ; $6ff5: $00
	inc  c                                           ; $6ff6: $0c
	nop                                              ; $6ff7: $00
	jr   nc, jr_012_6ffa                             ; $6ff8: $30 $00

jr_012_6ffa:
	ret  nc                                          ; $6ffa: $d0

	nop                                              ; $6ffb: $00
	cp   h                                           ; $6ffc: $bc
	nop                                              ; $6ffd: $00
	ld   d, e                                        ; $6ffe: $53
	add  e                                           ; $6fff: $83
	nop                                              ; $7000: $00
	ld   a, [bc]                                     ; $7001: $0a
	ldh  [rP1], a                                    ; $7002: $e0 $00
	inc  e                                           ; $7004: $1c
	nop                                              ; $7005: $00
	ld   [bc], a                                     ; $7006: $02
	nop                                              ; $7007: $00
	inc  bc                                          ; $7008: $03
	nop                                              ; $7009: $00
	ld   b, $00                                      ; $700a: $06 $00
	ld   a, [$0083]                                  ; $700c: $fa $83 $00
	inc  c                                           ; $700f: $0c
	ld   bc, $3e00                                   ; $7010: $01 $00 $3e
	nop                                              ; $7013: $00
	ld   c, a                                        ; $7014: $4f
	nop                                              ; $7015: $00
	ld   a, l                                        ; $7016: $7d
	nop                                              ; $7017: $00
	rrca                                             ; $7018: $0f
	nop                                              ; $7019: $00
	ld   sp, hl                                      ; $701a: $f9
	nop                                              ; $701b: $00
	dec  b                                           ; $701c: $05
	add  b                                           ; $701d: $80
	nop                                              ; $701e: $00
	add  b                                           ; $701f: $80
	db   $10                                         ; $7020: $10

jr_012_7021:
	add  b                                           ; $7021: $80
	ld   [de], a                                     ; $7022: $12
	inc  bc                                          ; $7023: $03
	jr   z, jr_012_7053                              ; $7024: $28 $2d

	jr   nc, jr_012_6fdc                             ; $7026: $30 $b4

	add  c                                           ; $7028: $81
	jr   c, jr_012_702f                              ; $7029: $38 $04

	reti                                             ; $702b: $d9


	nop                                              ; $702c: $00
	ldh  [rP1], a                                    ; $702d: $e0 $00

jr_012_702f:
	add  b                                           ; $702f: $80
	add  c                                           ; $7030: $81
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	ld   bc, $8080                                   ; $7033: $01 $80 $80
	add  b                                           ; $7036: $80
	ld   h, h                                        ; $7037: $64
	add  hl, bc                                      ; $7038: $09
	db   $ec                                         ; $7039: $ec
	xor  $f8                                         ; $703a: $ee $f8
	dec  sp                                          ; $703c: $3b
	rrca                                             ; $703d: $0f
	ccf                                              ; $703e: $3f
	inc  b                                           ; $703f: $04
	inc  c                                           ; $7040: $0c
	nop                                              ; $7041: $00
	dec  b                                           ; $7042: $05
	add  c                                           ; $7043: $81
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	inc  b                                           ; $7046: $04
	add  e                                           ; $7047: $83
	nop                                              ; $7048: $00
	add  b                                           ; $7049: $80
	ld   hl, sp+$07                                  ; $704a: $f8 $07
	ld   a, [$7b70]                                  ; $704c: $fa $70 $7b
	nop                                              ; $704f: $00
	ld   a, e                                        ; $7050: $7b
	nop                                              ; $7051: $00
	ld   [hl], h                                     ; $7052: $74

jr_012_7053:
	nop                                              ; $7053: $00
	add  b                                           ; $7054: $80
	ld   [hl], b                                     ; $7055: $70
	inc  b                                           ; $7056: $04
	ld   [hl], h                                     ; $7057: $74
	ld   a, b                                        ; $7058: $78
	cp   e                                           ; $7059: $bb
	inc  a                                           ; $705a: $3c
	ld   [hl], e                                     ; $705b: $73
	add  e                                           ; $705c: $83
	nop                                              ; $705d: $00
	ld   b, $80                                      ; $705e: $06 $80
	nop                                              ; $7060: $00
	ret  nz                                          ; $7061: $c0

	nop                                              ; $7062: $00
	ld   h, b                                        ; $7063: $60
	nop                                              ; $7064: $00
	jr   nc, jr_012_6fe8                             ; $7065: $30 $81

	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	ld   d, $81                                      ; $7069: $16 $81
	nop                                              ; $706b: $00
	ld   bc, $0005                                   ; $706c: $01 $05 $00
	add  b                                           ; $706f: $80
	ld   bc, $0702                                   ; $7070: $01 $02 $07
	inc  bc                                          ; $7073: $03
	rrca                                             ; $7074: $0f
	add  c                                           ; $7075: $81

jr_012_7076:
	rlca                                             ; $7076: $07
	dec  bc                                          ; $7077: $0b
	rra                                              ; $7078: $1f
	rrca                                             ; $7079: $0f
	ld   h, c                                        ; $707a: $61

jr_012_707b:
	jr   nc, jr_012_70af                             ; $707b: $30 $32

	jr   nz, jr_012_7021                             ; $707d: $20 $a2

	inc  l                                           ; $707f: $2c
	xor  l                                           ; $7080: $ad
	adc  [hl]                                        ; $7081: $8e
	cp   $f0                                         ; $7082: $fe $f0
	add  d                                           ; $7084: $82
	rst  $38                                         ; $7085: $ff
	add  b                                           ; $7086: $80
	sbc  a                                           ; $7087: $9f
	inc  c                                           ; $7088: $0c
	rst  $28                                         ; $7089: $ef
	nop                                              ; $708a: $00
	jr   nc, jr_012_708d                             ; $708b: $30 $00

jr_012_708d:
	ld   h, b                                        ; $708d: $60
	nop                                              ; $708e: $00
	or   b                                           ; $708f: $b0
	nop                                              ; $7090: $00
	rrca                                             ; $7091: $0f
	nop                                              ; $7092: $00
	ld   h, b                                        ; $7093: $60
	nop                                              ; $7094: $00
	rst  JumpTable                                         ; $7095: $df
	add  c                                           ; $7096: $81
	add  b                                           ; $7097: $80
	inc  bc                                          ; $7098: $03
	ret  nc                                          ; $7099: $d0

	rrca                                             ; $709a: $0f
	ccf                                              ; $709b: $3f
	rra                                              ; $709c: $1f
	add  d                                           ; $709d: $82
	ld   e, $80                                      ; $709e: $1e $80
	ld   b, $0e                                      ; $70a0: $06 $0e
	ld   a, d                                        ; $70a2: $7a
	ld   [bc], a                                     ; $70a3: $02
	call nz, Call_012_7c00                           ; $70a4: $c4 $00 $7c
	nop                                              ; $70a7: $00
	cpl                                              ; $70a8: $2f
	rrca                                             ; $70a9: $0f
	ld   d, [hl]                                     ; $70aa: $56
	ld   b, $08                                      ; $70ab: $06 $08
	nop                                              ; $70ad: $00
	add  h                                           ; $70ae: $84

jr_012_70af:
	nop                                              ; $70af: $00
	inc  bc                                          ; $70b0: $03
	add  l                                           ; $70b1: $85
	nop                                              ; $70b2: $00
	db   $10                                         ; $70b3: $10
	jr   nz, jr_012_7076                             ; $70b4: $20 $c0

	jr   nc, @+$22                                   ; $70b6: $30 $20

	jr   jr_012_70ca                                 ; $70b8: $18 $10

	inc  c                                           ; $70ba: $0c
	ld   [$0406], sp                                 ; $70bb: $08 $06 $04
	jr   c, jr_012_70c0                              ; $70be: $38 $00

jr_012_70c0:
	ld   b, h                                        ; $70c0: $44
	nop                                              ; $70c1: $00
	ld   a, h                                        ; $70c2: $7c
	nop                                              ; $70c3: $00
	rst  $38                                         ; $70c4: $ff
	add  c                                           ; $70c5: $81
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	ld   [bc], a                                     ; $70c8: $02
	add  c                                           ; $70c9: $81

jr_012_70ca:
	nop                                              ; $70ca: $00
	ld   [$0001], sp                                 ; $70cb: $08 $01 $00
	inc  c                                           ; $70ce: $0c
	nop                                              ; $70cf: $00
	ld   [hl-], a                                    ; $70d0: $32
	nop                                              ; $70d1: $00
	inc  l                                           ; $70d2: $2c
	nop                                              ; $70d3: $00
	db   $10                                         ; $70d4: $10
	add  c                                           ; $70d5: $81
	nop                                              ; $70d6: $00
	ld   [$0010], sp                                 ; $70d7: $08 $10 $00
	jr   nz, jr_012_70dc                             ; $70da: $20 $00

jr_012_70dc:
	ldh  [rP1], a                                    ; $70dc: $e0 $00
	ld   b, b                                        ; $70de: $40
	nop                                              ; $70df: $00
	or   b                                           ; $70e0: $b0
	add  c                                           ; $70e1: $81
	nop                                              ; $70e2: $00
	ld   a, [bc]                                     ; $70e3: $0a
	jr   z, jr_012_70e6                              ; $70e4: $28 $00

jr_012_70e6:
	inc  b                                           ; $70e6: $04
	nop                                              ; $70e7: $00
	inc  b                                           ; $70e8: $04
	nop                                              ; $70e9: $00
	jr   jr_012_70ec                                 ; $70ea: $18 $00

jr_012_70ec:
	cpl                                              ; $70ec: $2f
	nop                                              ; $70ed: $00
	ccf                                              ; $70ee: $3f

jr_012_70ef:
	add  e                                           ; $70ef: $83
	nop                                              ; $70f0: $00
	ld   b, $10                                      ; $70f1: $06 $10
	nop                                              ; $70f3: $00
	inc  e                                           ; $70f4: $1c
	nop                                              ; $70f5: $00
	inc  [hl]                                        ; $70f6: $34
	nop                                              ; $70f7: $00
	jr   z, jr_012_707b                              ; $70f8: $28 $81

	nop                                              ; $70fa: $00
	ld   b, $c0                                      ; $70fb: $06 $c0
	nop                                              ; $70fd: $00
	ldh  [rP1], a                                    ; $70fe: $e0 $00
	jr   nz, jr_012_7102                             ; $7100: $20 $00

jr_012_7102:
	db   $10                                         ; $7102: $10
	add  l                                           ; $7103: $85
	nop                                              ; $7104: $00
	ld   [$0007], sp                                 ; $7105: $08 $07 $00
	sbc  b                                           ; $7108: $98
	nop                                              ; $7109: $00
	add  sp, $00                                     ; $710a: $e8 $00
	ld   c, [hl]                                     ; $710c: $4e
	nop                                              ; $710d: $00
	add  hl, sp                                      ; $710e: $39
	add  l                                           ; $710f: $85
	nop                                              ; $7110: $00
	ld   a, [bc]                                     ; $7111: $0a
	ret  nz                                          ; $7112: $c0

	nop                                              ; $7113: $00
	jr   c, jr_012_7116                              ; $7114: $38 $00

jr_012_7116:
	inc  b                                           ; $7116: $04

jr_012_7117:
	nop                                              ; $7117: $00
	ld   [bc], a                                     ; $7118: $02
	nop                                              ; $7119: $00
	add  c                                           ; $711a: $81
	nop                                              ; $711b: $00
	add  b                                           ; $711c: $80
	add  b                                           ; $711d: $80
	ld   [bc], a                                     ; $711e: $02
	add  b                                           ; $711f: $80
	inc  de                                          ; $7120: $13
	ld   bc, $9616                                   ; $7121: $01 $16 $96
	add  b                                           ; $7124: $80
	ld   l, $80                                      ; $7125: $2e $80
	scf                                              ; $7127: $37
	add  b                                           ; $7128: $80
	ld   a, $07                                      ; $7129: $3e $07
	inc  sp                                          ; $712b: $33
	or   d                                           ; $712c: $b2
	nop                                              ; $712d: $00
	inc  bc                                          ; $712e: $03
	nop                                              ; $712f: $00
	ld   c, $00                                      ; $7130: $0e $00
	inc  c                                           ; $7132: $0c
	add  b                                           ; $7133: $80
	nop                                              ; $7134: $00
	add  c                                           ; $7135: $81
	add  b                                           ; $7136: $80
	nop                                              ; $7137: $00
	add  c                                           ; $7138: $81
	add  b                                           ; $7139: $80
	jr   nc, jr_012_7147                             ; $713a: $30 $0b

	ldh  [rAUD3HIGH], a                              ; $713c: $e0 $1e
	nop                                              ; $713e: $00
	ld   a, $00                                      ; $713f: $3e $00
	ld   a, a                                        ; $7141: $7f
	nop                                              ; $7142: $00
	or   e                                           ; $7143: $b3
	ld   bc, $6105                                   ; $7144: $01 $05 $61

jr_012_7147:
	ld   l, b                                        ; $7147: $68
	add  b                                           ; $7148: $80
	ld   h, d                                        ; $7149: $62
	inc  bc                                          ; $714a: $03
	ld   [bc], a                                     ; $714b: $02
	di                                               ; $714c: $f3
	inc  b                                           ; $714d: $04
	db   $ed                                         ; $714e: $ed
	add  b                                           ; $714f: $80
	ld   b, e                                        ; $7150: $43
	ld   [$5b03], sp                                 ; $7151: $08 $03 $5b
	rlca                                             ; $7154: $07
	ld   l, a                                        ; $7155: $6f
	nop                                              ; $7156: $00
	cp   $90                                         ; $7157: $fe $90
	cp   $38                                         ; $7159: $fe $38
	add  b                                           ; $715b: $80
	ld   a, $0e                                      ; $715c: $3e $0e

jr_012_715e:
	adc  [hl]                                        ; $715e: $8e
	ld   a, [hl]                                     ; $715f: $7e
	ld   [hl], a                                     ; $7160: $77
	ret  nc                                          ; $7161: $d0

	ret  c                                           ; $7162: $d8

	ldh  [$f0], a                                    ; $7163: $e0 $f0
	add  b                                           ; $7165: $80
	ldh  [rP1], a                                    ; $7166: $e0 $00
	ld   b, b                                        ; $7168: $40
	nop                                              ; $7169: $00
	ldh  [rP1], a                                    ; $716a: $e0 $00
	jr   nc, jr_012_70ef                             ; $716c: $30 $81

	nop                                              ; $716e: $00
	dec  b                                           ; $716f: $05
	rla                                              ; $7170: $17
	ld   [bc], a                                     ; $7171: $02
	dec  bc                                          ; $7172: $0b
	inc  b                                           ; $7173: $04
	ld   b, $03                                      ; $7174: $06 $03
	add  b                                           ; $7176: $80
	rlca                                             ; $7177: $07
	ld   a, [bc]                                     ; $7178: $0a
	rra                                              ; $7179: $1f
	rrca                                             ; $717a: $0f
	ccf                                              ; $717b: $3f
	rra                                              ; $717c: $1f
	ld   a, a                                        ; $717d: $7f
	ccf                                              ; $717e: $3f
	db   $fc                                         ; $717f: $fc
	ld   a, h                                        ; $7180: $7c
	add  b                                           ; $7181: $80
	ccf                                              ; $7182: $3f
	cp   a                                           ; $7183: $bf
	add  b                                           ; $7184: $80
	ld   [hl], e                                     ; $7185: $73
	ld   b, $70                                      ; $7186: $06 $70
	ldh  a, [$99]                                    ; $7188: $f0 $99
	ld   sp, hl                                      ; $718a: $f9
	pop  hl                                          ; $718b: $e1
	db   $fd                                         ; $718c: $fd
	db   $fc                                         ; $718d: $fc
	add  b                                           ; $718e: $80
	ld   a, [hl]                                     ; $718f: $7e
	inc  d                                           ; $7190: $14
	ld   a, l                                        ; $7191: $7d
	ld   a, h                                        ; $7192: $7c
	ld   a, [hl-]                                    ; $7193: $3a
	nop                                              ; $7194: $00
	jr   nz, jr_012_7117                             ; $7195: $20 $80

	and  b                                           ; $7197: $a0
	nop                                              ; $7198: $00
	inc  c                                           ; $7199: $0c
	add  b                                           ; $719a: $80
	cp   b                                           ; $719b: $b8
	add  b                                           ; $719c: $80
	sub  b                                           ; $719d: $90
	nop                                              ; $719e: $00
	sbc  b                                           ; $719f: $98
	nop                                              ; $71a0: $00
	ld   h, [hl]                                     ; $71a1: $66
	nop                                              ; $71a2: $00
	ld   a, [de]                                     ; $71a3: $1a
	inc  bc                                          ; $71a4: $03
	rrca                                             ; $71a5: $0f
	add  c                                           ; $71a6: $81
	rlca                                             ; $71a7: $07
	nop                                              ; $71a8: $00
	rra                                              ; $71a9: $1f
	add  c                                           ; $71aa: $81
	rrca                                             ; $71ab: $0f
	ld   a, [bc]                                     ; $71ac: $0a
	dec  a                                           ; $71ad: $3d
	ld   bc, $0062                                   ; $71ae: $01 $62 $00
	ld   a, $00                                      ; $71b1: $3e $00
	ld   c, l                                        ; $71b3: $4d
	pop  bc                                          ; $71b4: $c1
	ret  nc                                          ; $71b5: $d0

	ret  nz                                          ; $71b6: $c0

	and  d                                           ; $71b7: $a2
	add  c                                           ; $71b8: $81
	add  b                                           ; $71b9: $80

jr_012_71ba:
	nop                                              ; $71ba: $00
	ld   b, c                                        ; $71bb: $41
	add  l                                           ; $71bc: $85
	nop                                              ; $71bd: $00
	ld   [de], a                                     ; $71be: $12
	sub  b                                           ; $71bf: $90
	ldh  [$c8], a                                    ; $71c0: $e0 $c8
	ret  nz                                          ; $71c2: $c0

	inc  b                                           ; $71c3: $04
	nop                                              ; $71c4: $00
	ld   [bc], a                                     ; $71c5: $02
	nop                                              ; $71c6: $00

jr_012_71c7:
	ld   bc, $9c00                                   ; $71c7: $01 $00 $9c
	nop                                              ; $71ca: $00
	ld   [hl+], a                                    ; $71cb: $22
	nop                                              ; $71cc: $00
	ld   a, $00                                      ; $71cd: $3e $00
	ld   c, a                                        ; $71cf: $4f
	nop                                              ; $71d0: $00
	jr   nc, jr_012_715e                             ; $71d1: $30 $8b

	nop                                              ; $71d3: $00
	inc  h                                           ; $71d4: $24
	add  e                                           ; $71d5: $83
	nop                                              ; $71d6: $00
	call $3000                                       ; $71d7: $cd $00 $30
	ld   [$380a], sp                                 ; $71da: $08 $0a $38
	cp   b                                           ; $71dd: $b8
	jr   jr_012_71ba                                 ; $71de: $18 $da

	db   $10                                         ; $71e0: $10
	ld   e, b                                        ; $71e1: $58
	nop                                              ; $71e2: $00
	rst  $30                                         ; $71e3: $f7
	nop                                              ; $71e4: $00
	ld   a, [hl+]                                    ; $71e5: $2a
	nop                                              ; $71e6: $00
	ld   d, c                                        ; $71e7: $51
	nop                                              ; $71e8: $00
	ld   a, [bc]                                     ; $71e9: $0a
	nop                                              ; $71ea: $00
	jr   nc, jr_012_71ed                             ; $71eb: $30 $00

jr_012_71ed:
	jr   nz, jr_012_722f                             ; $71ed: $20 $40

	ld   d, b                                        ; $71ef: $50
	nop                                              ; $71f0: $00
	stop                                             ; $71f1: $10 $00
	and  b                                           ; $71f3: $a0
	nop                                              ; $71f4: $00
	ld   [hl], $00                                   ; $71f5: $36 $00
	add  hl, hl                                      ; $71f7: $29
	nop                                              ; $71f8: $00
	and  b                                           ; $71f9: $a0
	add  c                                           ; $71fa: $81
	nop                                              ; $71fb: $00
	inc  de                                          ; $71fc: $13
	add  c                                           ; $71fd: $81
	nop                                              ; $71fe: $00
	ld   b, b                                        ; $71ff: $40
	nop                                              ; $7200: $00

jr_012_7201:
	ret  nz                                          ; $7201: $c0

	inc  b                                           ; $7202: $04
	add  h                                           ; $7203: $84
	inc  l                                           ; $7204: $2c
	xor  [hl]                                        ; $7205: $ae
	nop                                              ; $7206: $00
	add  e                                           ; $7207: $83
	inc  a                                           ; $7208: $3c
	ld   a, h                                        ; $7209: $7c
	ld   de, $0031                                   ; $720a: $11 $31 $00
	dec  sp                                          ; $720d: $3b
	ld   [$006b], sp                                 ; $720e: $08 $6b $00
	add  b                                           ; $7211: $80
	inc  bc                                          ; $7212: $03
	add  b                                           ; $7213: $80
	nop                                              ; $7214: $00
	inc  c                                           ; $7215: $0c
	dec  sp                                          ; $7216: $3b
	jr   c, jr_012_7255                              ; $7217: $38 $3c

	jr   nz, jr_012_71c7                             ; $7219: $20 $ac

	nop                                              ; $721b: $00
	jr   nz, jr_012_721e                             ; $721c: $20 $00

jr_012_721e:
	cp   [hl]                                        ; $721e: $be
	db   $10                                         ; $721f: $10
	ret  nc                                          ; $7220: $d0

	db   $10                                         ; $7221: $10
	rla                                              ; $7222: $17
	add  b                                           ; $7223: $80
	db   $10                                         ; $7224: $10
	ld   bc, $b518                                   ; $7225: $01 $18 $b5
	add  c                                           ; $7228: $81
	nop                                              ; $7229: $00
	add  b                                           ; $722a: $80
	ld   bc, $ff88                                   ; $722b: $01 $88 $ff
	add  b                                           ; $722e: $80

jr_012_722f:
	nop                                              ; $722f: $00
	adc  h                                           ; $7230: $8c
	rst  $38                                         ; $7231: $ff
	add  b                                           ; $7232: $80
	nop                                              ; $7233: $00
	add  b                                           ; $7234: $80
	ldh  [$8a], a                                    ; $7235: $e0 $8a
	rst  $38                                         ; $7237: $ff
	add  d                                           ; $7238: $82
	nop                                              ; $7239: $00
	add  b                                           ; $723a: $80
	ret  nz                                          ; $723b: $c0

	add  b                                           ; $723c: $80
	cp   $80                                         ; $723d: $fe $80
	nop                                              ; $723f: $00
	add  b                                           ; $7240: $80
	ret  nz                                          ; $7241: $c0

	add  d                                           ; $7242: $82
	rst  $38                                         ; $7243: $ff
	adc  d                                           ; $7244: $8a
	nop                                              ; $7245: $00
	add  b                                           ; $7246: $80
	db   $fc                                         ; $7247: $fc
	add  b                                           ; $7248: $80
	rst  $38                                         ; $7249: $ff
	adc  h                                           ; $724a: $8c
	nop                                              ; $724b: $00
	add  b                                           ; $724c: $80
	ret  nz                                          ; $724d: $c0

	adc  h                                           ; $724e: $8c
	rst  $38                                         ; $724f: $ff
	ld   [bc], a                                     ; $7250: $02
	rra                                              ; $7251: $1f
	rst  $38                                         ; $7252: $ff
	dec  e                                           ; $7253: $1d
	add  c                                           ; $7254: $81

jr_012_7255:
	db   $fd                                         ; $7255: $fd
	add  d                                           ; $7256: $82
	ld   sp, hl                                      ; $7257: $f9
	add  d                                           ; $7258: $82
	push af                                          ; $7259: $f5
	add  b                                           ; $725a: $80
	db   $fd                                         ; $725b: $fd
	add  b                                           ; $725c: $80
	rst  $38                                         ; $725d: $ff
	add  b                                           ; $725e: $80
	nop                                              ; $725f: $00
	add  b                                           ; $7260: $80
	ld   [bc], a                                     ; $7261: $02
	add  b                                           ; $7262: $80
	ldh  a, [$80]                                    ; $7263: $f0 $80
	cp   $86                                         ; $7265: $fe $86
	rst  $38                                         ; $7267: $ff
	add  b                                           ; $7268: $80
	ld   d, l                                        ; $7269: $55
	add  b                                           ; $726a: $80
	xor  d                                           ; $726b: $aa
	add  b                                           ; $726c: $80
	dec  b                                           ; $726d: $05
	add  b                                           ; $726e: $80
	nop                                              ; $726f: $00
	add  b                                           ; $7270: $80
	jp   hl                                          ; $7271: $e9


	add  b                                           ; $7272: $80
	db   $ec                                         ; $7273: $ec
	add  b                                           ; $7274: $80
	rst  $20                                         ; $7275: $e7
	add  b                                           ; $7276: $80
	rst  $10                                         ; $7277: $d7
	add  b                                           ; $7278: $80
	ld   d, l                                        ; $7279: $55
	add  b                                           ; $727a: $80
	xor  d                                           ; $727b: $aa
	add  b                                           ; $727c: $80
	ld   d, h                                        ; $727d: $54
	add  b                                           ; $727e: $80
	jr   nz, jr_012_7201                             ; $727f: $20 $80

	ld   d, l                                        ; $7281: $55
	add  b                                           ; $7282: $80
	ld   a, [bc]                                     ; $7283: $0a
	add  b                                           ; $7284: $80
	add  b                                           ; $7285: $80
	add  b                                           ; $7286: $80
	ld   hl, sp-$80                                  ; $7287: $f8 $80
	ld   d, l                                        ; $7289: $55
	add  b                                           ; $728a: $80
	xor  d                                           ; $728b: $aa
	add  h                                           ; $728c: $84
	nop                                              ; $728d: $00
	add  b                                           ; $728e: $80
	and  b                                           ; $728f: $a0
	add  d                                           ; $7290: $82
	nop                                              ; $7291: $00
	add  b                                           ; $7292: $80
	ld   d, l                                        ; $7293: $55
	add  b                                           ; $7294: $80
	xor  d                                           ; $7295: $aa
	adc  b                                           ; $7296: $88
	nop                                              ; $7297: $00
	inc  bc                                          ; $7298: $03
	ld   [$471f], sp                                 ; $7299: $08 $1f $47
	ld   d, b                                        ; $729c: $50
	add  a                                           ; $729d: $87
	nop                                              ; $729e: $00
	ld   bc, $0003                                   ; $729f: $01 $03 $00
	add  b                                           ; $72a2: $80
	ccf                                              ; $72a3: $3f
	ld   bc, $fcff                                   ; $72a4: $01 $ff $fc
	add  [hl]                                        ; $72a7: $86
	nop                                              ; $72a8: $00
	add  b                                           ; $72a9: $80
	rlca                                             ; $72aa: $07
	add  c                                           ; $72ab: $81
	rst  $38                                         ; $72ac: $ff
	ld   [bc], a                                     ; $72ad: $02
	ld   a, [hl]                                     ; $72ae: $7e
	rst  $38                                         ; $72af: $ff
	ld   a, [hl]                                     ; $72b0: $7e
	add  l                                           ; $72b1: $85
	nop                                              ; $72b2: $00
	ld   [$fc04], sp                                 ; $72b3: $08 $04 $fc
	cp   a                                           ; $72b6: $bf
	rst  $38                                         ; $72b7: $ff
	ld   a, e                                        ; $72b8: $7b
	rst  $38                                         ; $72b9: $ff
	rra                                              ; $72ba: $1f
	rst  $38                                         ; $72bb: $ff
	call c, $0089                                    ; $72bc: $dc $89 $00
	add  b                                           ; $72bf: $80
	pop  bc                                          ; $72c0: $c1
	ld   [bc], a                                     ; $72c1: $02
	ret  nc                                          ; $72c2: $d0

	ldh  a, [rAUD4LEN]                               ; $72c3: $f0 $20
	adc  c                                           ; $72c5: $89
	nop                                              ; $72c6: $00
	add  b                                           ; $72c7: $80
	ld   d, l                                        ; $72c8: $55
	add  b                                           ; $72c9: $80
	ld   [bc], a                                     ; $72ca: $02
	adc  b                                           ; $72cb: $88
	nop                                              ; $72cc: $00
	add  b                                           ; $72cd: $80
	ld   a, [bc]                                     ; $72ce: $0a
	add  b                                           ; $72cf: $80
	ld   d, l                                        ; $72d0: $55
	add  b                                           ; $72d1: $80
	xor  d                                           ; $72d2: $aa
	adc  b                                           ; $72d3: $88
	nop                                              ; $72d4: $00
	add  b                                           ; $72d5: $80
	ld   [bc], a                                     ; $72d6: $02
	add  b                                           ; $72d7: $80
	ld   d, h                                        ; $72d8: $54
	add  b                                           ; $72d9: $80
	and  b                                           ; $72da: $a0
	add  b                                           ; $72db: $80
	nop                                              ; $72dc: $00
	add  b                                           ; $72dd: $80
	jr   z, @-$7a                                    ; $72de: $28 $84

	nop                                              ; $72e0: $00
	add  b                                           ; $72e1: $80
	add  b                                           ; $72e2: $80
	add  d                                           ; $72e3: $82
	nop                                              ; $72e4: $00
	add  b                                           ; $72e5: $80
	ld   d, l                                        ; $72e6: $55
	add  b                                           ; $72e7: $80
	xor  d                                           ; $72e8: $aa
	add  d                                           ; $72e9: $82
	nop                                              ; $72ea: $00
	add  b                                           ; $72eb: $80
	ld   bc, $0084                                   ; $72ec: $01 $84 $00
	nop                                              ; $72ef: $00
	db   $10                                         ; $72f0: $10
	adc  l                                           ; $72f1: $8d
	jr   nc, jr_012_72f6                             ; $72f2: $30 $02

	ccf                                              ; $72f4: $3f
	rst  $38                                         ; $72f5: $ff

jr_012_72f6:
	ldh  [$80], a                                    ; $72f6: $e0 $80
	rra                                              ; $72f8: $1f
	add  e                                           ; $72f9: $83
	nop                                              ; $72fa: $00
	ld   b, $30                                      ; $72fb: $06 $30
	jr   c, jr_012_733b                              ; $72fd: $38 $3c

	ld   a, $0e                                      ; $72ff: $3e $0e
	ld   a, $c5                                      ; $7301: $3e $c5
	add  c                                           ; $7303: $81
	rst  $38                                         ; $7304: $ff
	ld   [bc], a                                     ; $7305: $02
	rra                                              ; $7306: $1f
	rst  $38                                         ; $7307: $ff
	ldh  a, [$80]                                    ; $7308: $f0 $80
	ld   sp, $3085                                   ; $730a: $31 $85 $30
	ld   bc, $d7f7                                   ; $730d: $01 $f7 $d7
	add  b                                           ; $7310: $80
	rst  $30                                         ; $7311: $f7
	add  b                                           ; $7312: $80
	rst  $38                                         ; $7313: $ff
	inc  b                                           ; $7314: $04
	rrca                                             ; $7315: $0f
	rst  $38                                         ; $7316: $ff
	ldh  a, [rIF]                                    ; $7317: $f0 $0f
	inc  c                                           ; $7319: $0c
	add  c                                           ; $731a: $81
	inc  bc                                          ; $731b: $03
	ld   b, $43                                      ; $731c: $06 $43
	ld   h, e                                        ; $731e: $63
	rst  JumpTable                                         ; $731f: $df
	rst  $38                                         ; $7320: $ff
	cp   $ff                                         ; $7321: $fe $ff
	cp   $83                                         ; $7323: $fe $83
	rst  $38                                         ; $7325: $ff
	jr   jr_012_7329                                 ; $7326: $18 $01

	ccf                                              ; $7328: $3f

jr_012_7329:
	ld   a, $03                                      ; $7329: $3e $03
	ld   [bc], a                                     ; $732b: $02
	ld   bc, $0100                                   ; $732c: $01 $00 $01
	and  c                                           ; $732f: $a1
	rst  $38                                         ; $7330: $ff
	rra                                              ; $7331: $1f
	rst  $38                                         ; $7332: $ff
	rra                                              ; $7333: $1f
	rst  $38                                         ; $7334: $ff

jr_012_7335:
	rra                                              ; $7335: $1f
	rst  $38                                         ; $7336: $ff
	ccf                                              ; $7337: $3f
	rst  $38                                         ; $7338: $ff
	ld   a, a                                        ; $7339: $7f
	rst  $38                                         ; $733a: $ff

jr_012_733b:
	ld   b, b                                        ; $733b: $40
	rst  $38                                         ; $733c: $ff
	ld   e, b                                        ; $733d: $58
	rst  $38                                         ; $733e: $ff
	jp   $ff83                                       ; $733f: $c3 $83 $ff


	nop                                              ; $7342: $00
	db   $db                                         ; $7343: $db
	add  c                                           ; $7344: $81
	rst  $38                                         ; $7345: $ff
	inc  b                                           ; $7346: $04
	ldh  [rIE], a                                    ; $7347: $e0 $ff
	ld   e, a                                        ; $7349: $5f
	rst  $38                                         ; $734a: $ff
	ld   b, h                                        ; $734b: $44
	add  e                                           ; $734c: $83
	rst  $38                                         ; $734d: $ff
	nop                                              ; $734e: $00
	ei                                               ; $734f: $fb
	add  c                                           ; $7350: $81
	rst  $38                                         ; $7351: $ff
	ld   [bc], a                                     ; $7352: $02
	cp   $ff                                         ; $7353: $fe $ff
	ld   de, $ff81                                   ; $7355: $11 $81 $ff
	nop                                              ; $7358: $00
	sub  c                                           ; $7359: $91
	add  c                                           ; $735a: $81
	rst  $38                                         ; $735b: $ff
	ld   [bc], a                                     ; $735c: $02
	cp   $ff                                         ; $735d: $fe $ff
	ld   a, a                                        ; $735f: $7f
	add  c                                           ; $7360: $81
	rst  $38                                         ; $7361: $ff
	ld   [bc], a                                     ; $7362: $02
	inc  bc                                          ; $7363: $03
	rst  $38                                         ; $7364: $ff
	cp   $81                                         ; $7365: $fe $81
	rst  $38                                         ; $7367: $ff
	inc  b                                           ; $7368: $04
	ld   hl, $fdff                                   ; $7369: $21 $ff $fd
	rst  $38                                         ; $736c: $ff
	rst  JumpTable                                         ; $736d: $df
	add  c                                           ; $736e: $81
	rst  $38                                         ; $736f: $ff
	ld   [bc], a                                     ; $7370: $02
	cp   $ff                                         ; $7371: $fe $ff
	ld   bc, $fe81                                   ; $7373: $01 $81 $fe
	inc  b                                           ; $7376: $04
	sub  $de                                         ; $7377: $d6 $de
	sub  h                                           ; $7379: $94
	call c, $805c                                    ; $737a: $dc $5c $80
	rst  JumpTable                                         ; $737d: $df
	dec  bc                                          ; $737e: $0b
	sbc  $1a                                         ; $737f: $de $1a
	sbc  $7e                                         ; $7381: $de $7e
	cp   $9a                                         ; $7383: $fe $9a
	ld   a, [hl]                                     ; $7385: $7e
	ld   h, l                                        ; $7386: $65
	rra                                              ; $7387: $1f
	dec  de                                          ; $7388: $1b
	rrca                                             ; $7389: $0f
	inc  c                                           ; $738a: $0c
	add  l                                           ; $738b: $85
	nop                                              ; $738c: $00
	add  c                                           ; $738d: $81
	add  b                                           ; $738e: $80
	ld   bc, $c181                                   ; $738f: $01 $81 $c1
	add  b                                           ; $7392: $80
	ret  nz                                          ; $7393: $c0

	ld   [bc], a                                     ; $7394: $02
	pop  bc                                          ; $7395: $c1
	inc  b                                           ; $7396: $04
	dec  b                                           ; $7397: $05
	add  h                                           ; $7398: $84
	nop                                              ; $7399: $00
	add  b                                           ; $739a: $80
	ld   h, b                                        ; $739b: $60
	add  b                                           ; $739c: $80
	ldh  a, [rP1]                                    ; $739d: $f0 $00
	ld   [hl], b                                     ; $739f: $70
	add  b                                           ; $73a0: $80
	ld   hl, sp+$02                                  ; $73a1: $f8 $02
	ldh  a, [$81]                                    ; $73a3: $f0 $81
	ld   bc, $2a80                                   ; $73a5: $01 $80 $2a
	adc  d                                           ; $73a8: $8a
	nop                                              ; $73a9: $00
	add  b                                           ; $73aa: $80
	ld   d, b                                        ; $73ab: $50
	adc  [hl]                                        ; $73ac: $8e
	nop                                              ; $73ad: $00
	add  b                                           ; $73ae: $80
	and  b                                           ; $73af: $a0
	add  b                                           ; $73b0: $80
	nop                                              ; $73b1: $00
	add  b                                           ; $73b2: $80
	jr   c, jr_012_7335                              ; $73b3: $38 $80

	call nc, Call_012_5c05                           ; $73b5: $d4 $05 $5c
	db   $fc                                         ; $73b8: $fc
	call z, Call_012_4efc                            ; $73b9: $cc $fc $4e
	cp   $8c                                         ; $73bc: $fe $8c
	jr   nc, @-$7e                                   ; $73be: $30 $80

	ldh  a, [rSC]                                    ; $73c0: $f0 $02
	db   $10                                         ; $73c2: $10
	ld   a, $3a                                      ; $73c3: $3e $3a
	add  c                                           ; $73c5: $81
	ld   a, $02                                      ; $73c6: $3e $02
	ld   a, [bc]                                     ; $73c8: $0a
	ld   a, $0a                                      ; $73c9: $3e $0a
	add  c                                           ; $73cb: $81
	ld   a, $04                                      ; $73cc: $3e $04
	ld   a, [bc]                                     ; $73ce: $0a
	ld   a, $c1                                      ; $73cf: $3e $c1
	rst  $38                                         ; $73d1: $ff
	db   $10                                         ; $73d2: $10
	adc  l                                           ; $73d3: $8d
	jr   nc, jr_012_73da                             ; $73d4: $30 $04

	ld   [hl], e                                     ; $73d6: $73
	ld   a, e                                        ; $73d7: $7b
	dec  hl                                          ; $73d8: $2b
	ld   a, e                                        ; $73d9: $7b

jr_012_73da:
	dec  hl                                          ; $73da: $2b
	add  c                                           ; $73db: $81
	ld   a, e                                        ; $73dc: $7b
	ld   [bc], a                                     ; $73dd: $02
	dec  hl                                          ; $73de: $2b
	ld   a, e                                        ; $73df: $7b
	dec  hl                                          ; $73e0: $2b
	add  c                                           ; $73e1: $81
	ld   a, e                                        ; $73e2: $7b
	ld   [bc], a                                     ; $73e3: $02
	dec  hl                                          ; $73e4: $2b
	ld   a, e                                        ; $73e5: $7b
	ld   a, c                                        ; $73e6: $79
	add  e                                           ; $73e7: $83
	ld   bc, $0218                                   ; $73e8: $01 $18 $02
	inc  bc                                          ; $73eb: $03
	ld   [bc], a                                     ; $73ec: $02
	inc  bc                                          ; $73ed: $03
	ld   b, $07                                      ; $73ee: $06 $07
	inc  b                                           ; $73f0: $04
	rlca                                             ; $73f1: $07
	inc  b                                           ; $73f2: $04
	rlca                                             ; $73f3: $07
	ld   a, [hl]                                     ; $73f4: $7e
	rst  $38                                         ; $73f5: $ff
	ccf                                              ; $73f6: $3f
	rst  $38                                         ; $73f7: $ff
	ccf                                              ; $73f8: $3f
	rst  $38                                         ; $73f9: $ff
	ccf                                              ; $73fa: $3f
	rst  $38                                         ; $73fb: $ff
	ccf                                              ; $73fc: $3f
	rst  $38                                         ; $73fd: $ff
	ccf                                              ; $73fe: $3f
	rst  $38                                         ; $73ff: $ff
	ccf                                              ; $7400: $3f
	rst  $38                                         ; $7401: $ff
	ccf                                              ; $7402: $3f
	add  c                                           ; $7403: $81
	rst  $38                                         ; $7404: $ff
	ld   bc, $f7f3                                   ; $7405: $01 $f3 $f7
	add  b                                           ; $7408: $80
	rst  $38                                         ; $7409: $ff
	add  d                                           ; $740a: $82
	rst  $30                                         ; $740b: $f7
	add  b                                           ; $740c: $80
	rst  $38                                         ; $740d: $ff
	add  b                                           ; $740e: $80
	rst  $30                                         ; $740f: $f7
	ld   [bc], a                                     ; $7410: $02
	di                                               ; $7411: $f3
	rst  $30                                         ; $7412: $f7
	xor  [hl]                                        ; $7413: $ae
	add  c                                           ; $7414: $81
	cp   $80                                         ; $7415: $fe $80
	rst  $38                                         ; $7417: $ff
	add  d                                           ; $7418: $82
	cp   $80                                         ; $7419: $fe $80
	rst  $38                                         ; $741b: $ff
	add  d                                           ; $741c: $82
	cp   $00                                         ; $741d: $fe $00
	xor  l                                           ; $741f: $ad
	adc  e                                           ; $7420: $8b
	rst  $38                                         ; $7421: $ff
	inc  bc                                          ; $7422: $03
	cp   $ff                                         ; $7423: $fe $ff
	sub  l                                           ; $7425: $95
	sbc  $80                                         ; $7426: $de $80
	cp   $82                                         ; $7428: $fe $82
	sbc  $80                                         ; $742a: $de $80
	cp   $82                                         ; $742c: $fe $82

jr_012_742e:
	sbc  $00                                         ; $742e: $de $00
	ld   [$ff80], sp                                 ; $7430: $08 $80 $ff
	add  b                                           ; $7433: $80
	add  hl, hl                                      ; $7434: $29
	adc  d                                           ; $7435: $8a
	jr   z, jr_012_743d                              ; $7436: $28 $05

	xor  b                                           ; $7438: $a8
	ret  c                                           ; $7439: $d8

	di                                               ; $743a: $f3
	or   d                                           ; $743b: $b2
	ld   [hl], a                                     ; $743c: $77

jr_012_743d:
	ld   d, a                                        ; $743d: $57
	add  b                                           ; $743e: $80
	rla                                              ; $743f: $17
	add  hl, de                                      ; $7440: $19
	sbc  a                                           ; $7441: $9f
	sbc  [hl]                                        ; $7442: $9e
	sbc  a                                           ; $7443: $9f
	sbc  e                                           ; $7444: $9b
	sbc  a                                           ; $7445: $9f
	adc  e                                           ; $7446: $8b
	sbc  a                                           ; $7447: $9f
	sub  a                                           ; $7448: $97
	sbc  a                                           ; $7449: $9f
	dec  hl                                          ; $744a: $2b
	db   $fc                                         ; $744b: $fc
	cp   h                                           ; $744c: $bc
	db   $fc                                         ; $744d: $fc
	cp   [hl]                                        ; $744e: $be
	cp   $13                                         ; $744f: $fe $13
	rst  $30                                         ; $7451: $f7
	rst  JumpTable                                         ; $7452: $df
	ei                                               ; $7453: $fb
	ld   a, $fe                                      ; $7454: $3e $fe
	ld   l, [hl]                                     ; $7456: $6e
	rst  $38                                         ; $7457: $ff
	jp   c, $f4ff                                    ; $7458: $da $ff $f4

	add  e                                           ; $745b: $83
	nop                                              ; $745c: $00
	add  b                                           ; $745d: $80
	add  b                                           ; $745e: $80
	add  h                                           ; $745f: $84
	nop                                              ; $7460: $00
	ld   b, $80                                      ; $7461: $06 $80
	rst  $38                                         ; $7463: $ff
	ld   a, h                                        ; $7464: $7c
	inc  bc                                          ; $7465: $03
	ld   [bc], a                                     ; $7466: $02
	inc  bc                                          ; $7467: $03
	ld   bc, $0382                                   ; $7468: $01 $82 $03
	add  b                                           ; $746b: $80
	rlca                                             ; $746c: $07
	dec  d                                           ; $746d: $15
	rrca                                             ; $746e: $0f
	dec  c                                           ; $746f: $0d
	rrca                                             ; $7470: $0f
	ld   a, [bc]                                     ; $7471: $0a
	rst  $38                                         ; $7472: $ff
	sub  $fe                                         ; $7473: $d6 $fe
	call $e2fd                                       ; $7475: $cd $fd $e2
	rst  $38                                         ; $7478: $ff
	db   $eb                                         ; $7479: $eb
	cp   $f7                                         ; $747a: $fe $f7
	rst  $38                                         ; $747c: $ff
	and  e                                           ; $747d: $a3
	rst  $38                                         ; $747e: $ff
	cp   l                                           ; $747f: $bd
	rst  $38                                         ; $7480: $ff
	push af                                          ; $7481: $f5
	rst  $38                                         ; $7482: $ff
	inc  h                                           ; $7483: $24
	add  e                                           ; $7484: $83
	ldh  a, [$88]                                    ; $7485: $f0 $88
	jr   nc, jr_012_7489                             ; $7487: $30 $00

jr_012_7489:
	rst  JumpTable                                         ; $7489: $df
	add  e                                           ; $748a: $83
	rst  $38                                         ; $748b: $ff
	add  d                                           ; $748c: $82
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	inc  [hl]                                        ; $748f: $34
	add  c                                           ; $7490: $81
	ld   a, $02                                      ; $7491: $3e $02
	ld   a, [bc]                                     ; $7493: $0a
	ld   a, $ef                                      ; $7494: $3e $ef
	add  c                                           ; $7496: $81
	pop  af                                          ; $7497: $f1
	add  b                                           ; $7498: $80
	ldh  a, [$88]                                    ; $7499: $f0 $88
	jr   nc, jr_012_749d                             ; $749b: $30 $00

jr_012_749d:
	rst  JumpTable                                         ; $749d: $df
	add  c                                           ; $749e: $81
	rst  $38                                         ; $749f: $ff
	add  d                                           ; $74a0: $82
	inc  bc                                          ; $74a1: $03
	nop                                              ; $74a2: $00
	ld   d, e                                        ; $74a3: $53
	add  c                                           ; $74a4: $81
	ld   a, e                                        ; $74a5: $7b
	inc  b                                           ; $74a6: $04
	dec  hl                                          ; $74a7: $2b
	ld   a, e                                        ; $74a8: $7b
	dec  hl                                          ; $74a9: $2b
	ld   a, e                                        ; $74aa: $7b
	jr   z, jr_012_742e                              ; $74ab: $28 $81

	ccf                                              ; $74ad: $3f
	inc  c                                           ; $74ae: $0c
	ld   a, [hl-]                                    ; $74af: $3a
	rlca                                             ; $74b0: $07
	jr   jr_012_74d2                                 ; $74b1: $18 $1f

	jr   jr_012_74d4                                 ; $74b3: $18 $1f

	jr   jr_012_74d6                                 ; $74b5: $18 $1f

	jr   nc, @+$41                                   ; $74b7: $30 $3f

	jr   nc, @+$41                                   ; $74b9: $30 $3f

	inc  b                                           ; $74bb: $04
	add  c                                           ; $74bc: $81
	rst  $38                                         ; $74bd: $ff
	db   $10                                         ; $74be: $10
	add  c                                           ; $74bf: $81
	rst  $38                                         ; $74c0: $ff
	ccf                                              ; $74c1: $3f
	rst  $38                                         ; $74c2: $ff
	ccf                                              ; $74c3: $3f
	rst  $38                                         ; $74c4: $ff
	ccf                                              ; $74c5: $3f
	rst  $38                                         ; $74c6: $ff
	ccf                                              ; $74c7: $3f
	rst  $38                                         ; $74c8: $ff
	ccf                                              ; $74c9: $3f
	rst  $38                                         ; $74ca: $ff
	pop  bc                                          ; $74cb: $c1
	rst  $38                                         ; $74cc: $ff
	cp   $ff                                         ; $74cd: $fe $ff
	ret  nz                                          ; $74cf: $c0

	add  e                                           ; $74d0: $83
	rst  $38                                         ; $74d1: $ff

jr_012_74d2:
	nop                                              ; $74d2: $00
	di                                               ; $74d3: $f3

jr_012_74d4:
	add  c                                           ; $74d4: $81
	rst  $30                                         ; $74d5: $f7

jr_012_74d6:
	add  b                                           ; $74d6: $80
	rst  $38                                         ; $74d7: $ff
	nop                                              ; $74d8: $00
	and  h                                           ; $74d9: $a4
	add  c                                           ; $74da: $81
	rst  $38                                         ; $74db: $ff
	nop                                              ; $74dc: $00
	ldh  a, [$81]                                    ; $74dd: $f0 $81
	rst  $38                                         ; $74df: $ff
	add  h                                           ; $74e0: $84
	cp   $80                                         ; $74e1: $fe $80
	rst  $38                                         ; $74e3: $ff
	inc  b                                           ; $74e4: $04
	inc  c                                           ; $74e5: $0c
	rst  $38                                         ; $74e6: $ff
	cp   $ff                                         ; $74e7: $fe $ff
	rra                                              ; $74e9: $1f
	add  c                                           ; $74ea: $81
	rst  $38                                         ; $74eb: $ff
	nop                                              ; $74ec: $00
	cp   a                                           ; $74ed: $bf
	add  l                                           ; $74ee: $85

jr_012_74ef:
	rst  $38                                         ; $74ef: $ff
	ld   [bc], a                                     ; $74f0: $02
	ld   b, d                                        ; $74f1: $42
	rst  $38                                         ; $74f2: $ff
	ld   bc, $fe81                                   ; $74f3: $01 $81 $fe
	nop                                              ; $74f6: $00
	sub  $83                                         ; $74f7: $d6 $83
	sbc  $80                                         ; $74f9: $de $80
	cp   $80                                         ; $74fb: $fe $80
	sbc  $00                                         ; $74fd: $de $00
	ld   [$fb80], sp                                 ; $74ff: $08 $80 $fb
	add  b                                           ; $7502: $80
	dec  de                                          ; $7503: $1b
	add  d                                           ; $7504: $82
	dec  bc                                          ; $7505: $0b
	add  l                                           ; $7506: $85
	dec  hl                                          ; $7507: $2b
	inc  c                                           ; $7508: $0c
	dec  sp                                          ; $7509: $3b
	rst  $38                                         ; $750a: $ff
	ret  c                                           ; $750b: $d8

	rst  $38                                         ; $750c: $ff
	set  7, a                                        ; $750d: $cb $ff
	push af                                          ; $750f: $f5
	rst  $38                                         ; $7510: $ff
	add  $ff                                         ; $7511: $c6 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7513: $cf
	rst  $38                                         ; $7514: $ff
	rst  JumpTable                                         ; $7515: $df
	add  c                                           ; $7516: $81
	rst  $38                                         ; $7517: $ff
	inc  d                                           ; $7518: $14
	sbc  $ff                                         ; $7519: $de $ff
	push af                                          ; $751b: $f5
	rst  $38                                         ; $751c: $ff
	xor  e                                           ; $751d: $ab
	rst  $38                                         ; $751e: $ff
	ld   sp, hl                                      ; $751f: $f9
	rst  $38                                         ; $7520: $ff
	ld   h, b                                        ; $7521: $60
	rst  $38                                         ; $7522: $ff
	ld   e, c                                        ; $7523: $59
	rst  $38                                         ; $7524: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7525: $cf
	rst  $38                                         ; $7526: $ff
	xor  l                                           ; $7527: $ad
	rst  $38                                         ; $7528: $ff
	ld   a, l                                        ; $7529: $7d
	rst  $38                                         ; $752a: $ff
	cp   a                                           ; $752b: $bf
	rst  $38                                         ; $752c: $ff
	cp   a                                           ; $752d: $bf
	add  b                                           ; $752e: $80
	rst  $38                                         ; $752f: $ff
	add  hl, hl                                      ; $7530: $29
	cp   a                                           ; $7531: $bf
	rst  JumpTable                                         ; $7532: $df
	rst  $38                                         ; $7533: $ff
	cp   a                                           ; $7534: $bf
	rst  $38                                         ; $7535: $ff
	cpl                                              ; $7536: $2f
	rst  $38                                         ; $7537: $ff
	ld   l, a                                        ; $7538: $6f
	rst  $38                                         ; $7539: $ff
	ld   d, $ff                                      ; $753a: $16 $ff
	db   $e4                                         ; $753c: $e4
	rst  $38                                         ; $753d: $ff
	add  sp, -$01                                    ; $753e: $e8 $ff
	ld   a, [$cfff]                                  ; $7540: $fa $ff $cf
	rst  $38                                         ; $7543: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7544: $cf
	rst  $38                                         ; $7545: $ff
	rst  JumpTable                                         ; $7546: $df
	rst  $38                                         ; $7547: $ff
	rst  JumpTable                                         ; $7548: $df
	rst  $38                                         ; $7549: $ff
	ld   a, [hl]                                     ; $754a: $7e
	rst  $38                                         ; $754b: $ff
	ldh  a, [c]                                      ; $754c: $f2
	rst  $38                                         ; $754d: $ff
	ld   h, h                                        ; $754e: $64
	rst  $38                                         ; $754f: $ff
	dec  a                                           ; $7550: $3d
	rst  $38                                         ; $7551: $ff
	dec  de                                          ; $7552: $1b
	rst  $38                                         ; $7553: $ff
	adc  [hl]                                        ; $7554: $8e
	rst  $38                                         ; $7555: $ff
	or   a                                           ; $7556: $b7
	rst  $38                                         ; $7557: $ff
	add  $ff                                         ; $7558: $c6 $ff
	sbc  $8d                                         ; $755a: $de $8d
	jr   nc, jr_012_755e                             ; $755c: $30 $00

jr_012_755e:
	inc  d                                           ; $755e: $14
	add  l                                           ; $755f: $85
	ld   a, $05                                      ; $7560: $3e $05
	ld   a, [bc]                                     ; $7562: $0a
	ld   a, $0a                                      ; $7563: $3e $0a
	ld   a, $3c                                      ; $7565: $3e $3c
	ld   a, $80                                      ; $7567: $3e $80
	ld   a, a                                        ; $7569: $7f
	nop                                              ; $756a: $00
	jr   @-$77                                       ; $756b: $18 $87

	jr   nc, jr_012_74ef                             ; $756d: $30 $80

	ld   sp, $7f80                                   ; $756f: $31 $80 $7f
	ld   [bc], a                                     ; $7572: $02
	sbc  a                                           ; $7573: $9f
	cp   a                                           ; $7574: $bf
	ld   d, e                                        ; $7575: $53
	add  c                                           ; $7576: $81
	ld   a, e                                        ; $7577: $7b
	ld   [de], a                                     ; $7578: $12
	dec  hl                                          ; $7579: $2b
	ld   a, e                                        ; $757a: $7b
	dec  hl                                          ; $757b: $2b
	ld   a, e                                        ; $757c: $7b
	ld   a, [hl]                                     ; $757d: $7e
	ld   a, a                                        ; $757e: $7f
	ldh  a, [c]                                      ; $757f: $f2
	ei                                               ; $7580: $fb
	adc  $ef                                         ; $7581: $ce $ef
	push bc                                          ; $7583: $c5
	rst  $38                                         ; $7584: $ff
	ld   l, $3f                                      ; $7585: $2e $3f
	nop                                              ; $7587: $00
	ccf                                              ; $7588: $3f
	ld   b, c                                        ; $7589: $41
	ld   a, a                                        ; $758a: $7f
	ld   a, [hl+]                                    ; $758b: $2a
	add  b                                           ; $758c: $80
	ld   a, a                                        ; $758d: $7f
	ld   de, $3eff                                   ; $758e: $11 $ff $3e
	rst  $38                                         ; $7591: $ff
	cp   a                                           ; $7592: $bf
	rst  $38                                         ; $7593: $ff
	ld   a, a                                        ; $7594: $7f
	rst  $38                                         ; $7595: $ff
	add  b                                           ; $7596: $80
	rst  $38                                         ; $7597: $ff
	ccf                                              ; $7598: $3f
	rst  $38                                         ; $7599: $ff
	ld   a, a                                        ; $759a: $7f
	rst  $38                                         ; $759b: $ff
	adc  $ff                                         ; $759c: $ce $ff
	xor  h                                           ; $759e: $ac
	rst  $38                                         ; $759f: $ff
	and  d                                           ; $75a0: $a2
	add  e                                           ; $75a1: $83
	rst  $38                                         ; $75a2: $ff
	nop                                              ; $75a3: $00
	ld   c, h                                        ; $75a4: $4c
	add  c                                           ; $75a5: $81
	rst  $30                                         ; $75a6: $f7
	add  b                                           ; $75a7: $80
	rst  $38                                         ; $75a8: $ff
	ld   a, [bc]                                     ; $75a9: $0a
	ld   l, e                                        ; $75aa: $6b
	rst  $38                                         ; $75ab: $ff
	call $f2ff                                       ; $75ac: $cd $ff $f2
	rst  $38                                         ; $75af: $ff
	xor  $ff                                         ; $75b0: $ee $ff
	cp   $ff                                         ; $75b2: $fe $ff
	ld   de, $fe81                                   ; $75b4: $11 $81 $fe
	add  b                                           ; $75b7: $80
	rst  $38                                         ; $75b8: $ff
	ld   a, [bc]                                     ; $75b9: $0a
	ld   a, l                                        ; $75ba: $7d
	rst  $38                                         ; $75bb: $ff
	adc  h                                           ; $75bc: $8c
	rst  $38                                         ; $75bd: $ff
	ret                                              ; $75be: $c9


	rst  $38                                         ; $75bf: $ff
	rst  JumpTable                                         ; $75c0: $df
	rst  $38                                         ; $75c1: $ff
	rst  $30                                         ; $75c2: $f7
	rst  $38                                         ; $75c3: $ff
	ld   b, d                                        ; $75c4: $42
	add  e                                           ; $75c5: $83
	rst  $38                                         ; $75c6: $ff
	ld   b, $f1                                      ; $75c7: $06 $f1
	rst  $38                                         ; $75c9: $ff
	cp   b                                           ; $75ca: $b8
	rst  $38                                         ; $75cb: $ff
	ld   d, b                                        ; $75cc: $50
	rst  $38                                         ; $75cd: $ff
	and  h                                           ; $75ce: $a4
	add  c                                           ; $75cf: $81
	rst  $38                                         ; $75d0: $ff
	ld   bc, $de29                                   ; $75d1: $01 $29 $de
	add  b                                           ; $75d4: $80
	cp   $80                                         ; $75d5: $fe $80
	sbc  $06                                         ; $75d7: $de $06
	halt                                             ; $75d9: $76
	rst  $38                                         ; $75da: $ff
	adc  [hl]                                        ; $75db: $8e
	rst  $38                                         ; $75dc: $ff
	db   $10                                         ; $75dd: $10
	rst  $38                                         ; $75de: $ff
	rra                                              ; $75df: $1f
	add  d                                           ; $75e0: $82
	rst  $38                                         ; $75e1: $ff
	add  b                                           ; $75e2: $80
	dec  hl                                          ; $75e3: $2b
	add  hl, bc                                      ; $75e4: $09
	cpl                                              ; $75e5: $2f
	dec  h                                           ; $75e6: $25
	ld   a, $cf                                      ; $75e7: $3e $cf
	ei                                               ; $75e9: $fb
	db   $ec                                         ; $75ea: $ec
	rst  $28                                         ; $75eb: $ef
	ld   a, e                                        ; $75ec: $7b
	rst  $38                                         ; $75ed: $ff
	add  a                                           ; $75ee: $87
	add  l                                           ; $75ef: $85
	rst  $38                                         ; $75f0: $ff
	inc  b                                           ; $75f1: $04
	ld   c, c                                        ; $75f2: $49
	rst  $38                                         ; $75f3: $ff
	add  e                                           ; $75f4: $83
	rst  $38                                         ; $75f5: $ff
	dec  [hl]                                        ; $75f6: $35
	add  e                                           ; $75f7: $83
	rst  $38                                         ; $75f8: $ff
	ld   a, [bc]                                     ; $75f9: $0a
	ccf                                              ; $75fa: $3f
	rst  $38                                         ; $75fb: $ff
	scf                                              ; $75fc: $37
	rst  $38                                         ; $75fd: $ff
	rst  $20                                         ; $75fe: $e7
	rst  $38                                         ; $75ff: $ff
	xor  $ff                                         ; $7600: $ee $ff
	sbc  h                                           ; $7602: $9c
	rst  $38                                         ; $7603: $ff
	db   $fd                                         ; $7604: $fd
	add  c                                           ; $7605: $81
	rst  $38                                         ; $7606: $ff
	nop                                              ; $7607: $00
	sbc  a                                           ; $7608: $9f
	add  c                                           ; $7609: $81
	rst  $38                                         ; $760a: $ff
	nop                                              ; $760b: $00
	cp   a                                           ; $760c: $bf
	add  c                                           ; $760d: $81
	rst  $38                                         ; $760e: $ff
	ld   b, $e8                                      ; $760f: $06 $e8
	rst  $38                                         ; $7611: $ff
	nop                                              ; $7612: $00
	rst  $38                                         ; $7613: $ff
	ld   d, l                                        ; $7614: $55
	rst  $38                                         ; $7615: $ff
	db   $fd                                         ; $7616: $fd
	add  a                                           ; $7617: $87
	rst  $38                                         ; $7618: $ff
	ld   b, $af                                      ; $7619: $06 $af
	rst  $38                                         ; $761b: $ff
	cp   a                                           ; $761c: $bf
	rst  $38                                         ; $761d: $ff
	ld   l, a                                        ; $761e: $6f
	rst  $38                                         ; $761f: $ff
	ld   a, a                                        ; $7620: $7f
	add  e                                           ; $7621: $83
	rst  $38                                         ; $7622: $ff
	inc  b                                           ; $7623: $04
	call c, $ddff                                    ; $7624: $dc $ff $dd
	rst  $38                                         ; $7627: $ff
	cp   $81                                         ; $7628: $fe $81
	rst  $38                                         ; $762a: $ff
	nop                                              ; $762b: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $762c: $cf
	add  e                                           ; $762d: $83
	rst  $38                                         ; $762e: $ff
	inc  bc                                          ; $762f: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7630: $cf
	rst  $38                                         ; $7631: $ff
	add  h                                           ; $7632: $84
	ld   a, e                                        ; $7633: $7b
	add  b                                           ; $7634: $80
	rst  JumpTable                                         ; $7635: $df
	ld   [$ffbe], sp                                 ; $7636: $08 $be $ff
	pop  hl                                          ; $7639: $e1
	rst  $38                                         ; $763a: $ff
	ld   e, l                                        ; $763b: $5d
	rst  $38                                         ; $763c: $ff
	ld   a, l                                        ; $763d: $7d
	rst  $38                                         ; $763e: $ff
	ld   a, a                                        ; $763f: $7f
	add  c                                           ; $7640: $81
	rst  $38                                         ; $7641: $ff
	ld   b, $4c                                      ; $7642: $06 $4c
	or   a                                           ; $7644: $b7
	call nc, $eeff                                   ; $7645: $d4 $ff $ee
	rst  $38                                         ; $7648: $ff
	ld   a, $84                                      ; $7649: $3e $84
	rst  $38                                         ; $764b: $ff
	add  b                                           ; $764c: $80
	ld   hl, sp+$03                                  ; $764d: $f8 $03
	nop                                              ; $764f: $00
	pop  hl                                          ; $7650: $e1
	rst  $38                                         ; $7651: $ff
	ld   e, $84                                      ; $7652: $1e $84
	rst  $38                                         ; $7654: $ff
	add  b                                           ; $7655: $80
	db   $fc                                         ; $7656: $fc
	add  b                                           ; $7657: $80
	ret  nz                                          ; $7658: $c0

	add  d                                           ; $7659: $82
	nop                                              ; $765a: $00
	add  e                                           ; $765b: $83
	rst  $38                                         ; $765c: $ff
	inc  bc                                          ; $765d: $03
	ldh  [rIE], a                                    ; $765e: $e0 $ff
	rra                                              ; $7660: $1f
	rst  $38                                         ; $7661: $ff
	add  b                                           ; $7662: $80
	ld   a, a                                        ; $7663: $7f
	add  b                                           ; $7664: $80
	nop                                              ; $7665: $00
	add  b                                           ; $7666: $80
	ld   bc, $0004                                   ; $7667: $01 $04 $00
	rst  $38                                         ; $766a: $ff
	cp   $ff                                         ; $766b: $fe $ff
	ld   bc, $ff89                                   ; $766d: $01 $89 $ff
	inc  b                                           ; $7670: $04
	nop                                              ; $7671: $00
	rst  $38                                         ; $7672: $ff
	rrca                                             ; $7673: $0f
	rst  $38                                         ; $7674: $ff
	ldh  a, [$89]                                    ; $7675: $f0 $89
	rst  $38                                         ; $7677: $ff
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	add  c                                           ; $767a: $81
	rst  $38                                         ; $767b: $ff
	ld   [bc], a                                     ; $767c: $02
	ld   bc, $feff                                   ; $767d: $01 $ff $fe
	add  a                                           ; $7680: $87
	rst  $38                                         ; $7681: $ff
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	add  e                                           ; $7684: $83
	rst  $38                                         ; $7685: $ff
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	add  a                                           ; $7688: $87
	rst  $38                                         ; $7689: $ff
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	add  e                                           ; $768c: $83
	rst  $38                                         ; $768d: $ff
	ld   [bc], a                                     ; $768e: $02
	ld   bc, $feff                                   ; $768f: $01 $ff $fe
	add  l                                           ; $7692: $85
	rst  $38                                         ; $7693: $ff
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	add  l                                           ; $7696: $85
	rst  $38                                         ; $7697: $ff
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	add  l                                           ; $769a: $85
	rst  $38                                         ; $769b: $ff
	ld   [$ff03], sp                                 ; $769c: $08 $03 $ff
	di                                               ; $769f: $f3
	rst  $38                                         ; $76a0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76a1: $cf
	rst  $38                                         ; $76a2: $ff
	cp   a                                           ; $76a3: $bf
	rst  $38                                         ; $76a4: $ff
	ld   a, a                                        ; $76a5: $7f
	add  l                                           ; $76a6: $85
	rst  $38                                         ; $76a7: $ff
	inc  b                                           ; $76a8: $04
	ret  nz                                          ; $76a9: $c0

	rst  $38                                         ; $76aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ab: $cf
	rst  $38                                         ; $76ac: $ff
	ldh  a, [$89]                                    ; $76ad: $f0 $89
	rst  $38                                         ; $76af: $ff
	inc  b                                           ; $76b0: $04
	nop                                              ; $76b1: $00
	rst  $38                                         ; $76b2: $ff
	cp   [hl]                                        ; $76b3: $be
	rst  $38                                         ; $76b4: $ff
	ld   b, c                                        ; $76b5: $41
	adc  c                                           ; $76b6: $89
	rst  $38                                         ; $76b7: $ff
	ld   [bc], a                                     ; $76b8: $02
	rra                                              ; $76b9: $1f
	rst  $38                                         ; $76ba: $ff
	rra                                              ; $76bb: $1f
	adc  e                                           ; $76bc: $8b
	rst  $38                                         ; $76bd: $ff
	inc  b                                           ; $76be: $04
	nop                                              ; $76bf: $00
	rst  $38                                         ; $76c0: $ff
	rrca                                             ; $76c1: $0f
	rst  $38                                         ; $76c2: $ff
	ldh  a, [$87]                                    ; $76c3: $f0 $87
	rst  $38                                         ; $76c5: $ff
	add  b                                           ; $76c6: $80
	ld   hl, sp+$04                                  ; $76c7: $f8 $04
	nop                                              ; $76c9: $00
	rst  $38                                         ; $76ca: $ff
	call c, $23ff                                    ; $76cb: $dc $ff $23
	add  a                                           ; $76ce: $87
	rst  $38                                         ; $76cf: $ff
	add  b                                           ; $76d0: $80
	ld   bc, $1003                                   ; $76d1: $01 $03 $10
	ldh  a, [rAUD3LEVEL]                             ; $76d4: $f0 $1c
	db   $fc                                         ; $76d6: $fc
	add  d                                           ; $76d7: $82
	rst  $38                                         ; $76d8: $ff
	add  b                                           ; $76d9: $80
	cp   $80                                         ; $76da: $fe $80
	ldh  [$86], a                                    ; $76dc: $e0 $86
	nop                                              ; $76de: $00
	add  b                                           ; $76df: $80
	ret  nz                                          ; $76e0: $c0

	add  b                                           ; $76e1: $80
	db   $fc                                         ; $76e2: $fc
	add  [hl]                                        ; $76e3: $86
	nop                                              ; $76e4: $00
	add  b                                           ; $76e5: $80
	rra                                              ; $76e6: $1f
	adc  h                                           ; $76e7: $8c
	nop                                              ; $76e8: $00
	add  b                                           ; $76e9: $80
	rst  $38                                         ; $76ea: $ff
	add  b                                           ; $76eb: $80
	inc  bc                                          ; $76ec: $03
	add  b                                           ; $76ed: $80
	nop                                              ; $76ee: $00
	add  b                                           ; $76ef: $80
	ld   bc, $0086                                   ; $76f0: $01 $86 $00
	add  d                                           ; $76f3: $82
	rst  $38                                         ; $76f4: $ff
	add  b                                           ; $76f5: $80
	ccf                                              ; $76f6: $3f
	add  b                                           ; $76f7: $80
	rst  $38                                         ; $76f8: $ff
	add  b                                           ; $76f9: $80
	rlca                                             ; $76fa: $07
	add  b                                           ; $76fb: $80
	rra                                              ; $76fc: $1f
	add  d                                           ; $76fd: $82
	nop                                              ; $76fe: $00
	adc  d                                           ; $76ff: $8a
	rst  $38                                         ; $7700: $ff
	add  d                                           ; $7701: $82
	nop                                              ; $7702: $00
	add  h                                           ; $7703: $84
	rst  $38                                         ; $7704: $ff
	add  b                                           ; $7705: $80
	cp   $80                                         ; $7706: $fe $80
	rst  $38                                         ; $7708: $ff
	add  b                                           ; $7709: $80
	ldh  [$82], a                                    ; $770a: $e0 $82
	nop                                              ; $770c: $00
	add  h                                           ; $770d: $84
	rst  $38                                         ; $770e: $ff
	add  b                                           ; $770f: $80
	nop                                              ; $7710: $00
	add  b                                           ; $7711: $80
	add  b                                           ; $7712: $80
	add  h                                           ; $7713: $84
	nop                                              ; $7714: $00
	add  h                                           ; $7715: $84
	rst  $38                                         ; $7716: $ff
	add  b                                           ; $7717: $80
	ld   a, a                                        ; $7718: $7f
	add  b                                           ; $7719: $80
	rra                                              ; $771a: $1f
	add  h                                           ; $771b: $84
	nop                                              ; $771c: $00
	add  h                                           ; $771d: $84
	rst  $38                                         ; $771e: $ff
	add  b                                           ; $771f: $80
	ld   hl, sp-$80                                  ; $7720: $f8 $80
	ret  nz                                          ; $7722: $c0

	add  h                                           ; $7723: $84
	nop                                              ; $7724: $00
	add  b                                           ; $7725: $80
	rst  $38                                         ; $7726: $ff
	add  b                                           ; $7727: $80
	ldh  a, [$80]                                    ; $7728: $f0 $80
	cp   $88                                         ; $772a: $fe $88
	nop                                              ; $772c: $00
	add  b                                           ; $772d: $80
	rra                                              ; $772e: $1f
	add  d                                           ; $772f: $82
	rst  $38                                         ; $7730: $ff
	add  b                                           ; $7731: $80
	rra                                              ; $7732: $1f
	add  [hl]                                        ; $7733: $86
	nop                                              ; $7734: $00
	add  [hl]                                        ; $7735: $86
	rst  $38                                         ; $7736: $ff
	add  b                                           ; $7737: $80
	nop                                              ; $7738: $00
	add  b                                           ; $7739: $80
	ld   bc, $0082                                   ; $773a: $01 $82 $00
	adc  d                                           ; $773d: $8a
	rst  $38                                         ; $773e: $ff
	add  b                                           ; $773f: $80
	rrca                                             ; $7740: $0f
	add  b                                           ; $7741: $80
	nop                                              ; $7742: $00
	adc  h                                           ; $7743: $8c
	rst  $38                                         ; $7744: $ff
	add  b                                           ; $7745: $80
	ld   a, a                                        ; $7746: $7f
	adc  b                                           ; $7747: $88
	rst  $38                                         ; $7748: $ff
	add  b                                           ; $7749: $80
	add  b                                           ; $774a: $80
	add  b                                           ; $774b: $80
	ld   hl, sp-$80                                  ; $774c: $f8 $80
	add  b                                           ; $774e: $80
	add  b                                           ; $774f: $80
	rst  $38                                         ; $7750: $ff
	add  b                                           ; $7751: $80
	ld   hl, sp-$80                                  ; $7752: $f8 $80
	ldh  [$80], a                                    ; $7754: $e0 $80
	cp   $80                                         ; $7756: $fe $80
	rst  $38                                         ; $7758: $ff
	add  h                                           ; $7759: $84
	nop                                              ; $775a: $00
	add  b                                           ; $775b: $80
	ret  nz                                          ; $775c: $c0

	add  h                                           ; $775d: $84
	nop                                              ; $775e: $00
	add  b                                           ; $775f: $80
	ldh  [$92], a                                    ; $7760: $e0 $92
	nop                                              ; $7762: $00
	add  b                                           ; $7763: $80
	xor  d                                           ; $7764: $aa
	adc  d                                           ; $7765: $8a
	nop                                              ; $7766: $00
	add  b                                           ; $7767: $80
	ld   d, l                                        ; $7768: $55
	add  b                                           ; $7769: $80
	xor  d                                           ; $776a: $aa
	add  b                                           ; $776b: $80
	ld   d, l                                        ; $776c: $55
	add  b                                           ; $776d: $80
	xor  d                                           ; $776e: $aa
	add  b                                           ; $776f: $80
	ld   d, l                                        ; $7770: $55
	add  b                                           ; $7771: $80
	nop                                              ; $7772: $00
	add  b                                           ; $7773: $80
	ld   d, l                                        ; $7774: $55
	add  h                                           ; $7775: $84
	nop                                              ; $7776: $00
	add  b                                           ; $7777: $80
	ld   d, l                                        ; $7778: $55
	add  b                                           ; $7779: $80
	xor  d                                           ; $777a: $aa
	add  b                                           ; $777b: $80
	ld   d, l                                        ; $777c: $55
	add  b                                           ; $777d: $80
	ld   [bc], a                                     ; $777e: $02
	add  b                                           ; $777f: $80
	ld   d, h                                        ; $7780: $54
	add  b                                           ; $7781: $80
	xor  d                                           ; $7782: $aa
	add  b                                           ; $7783: $80
	nop                                              ; $7784: $00
	add  b                                           ; $7785: $80
	ld   a, [bc]                                     ; $7786: $0a
	add  b                                           ; $7787: $80
	nop                                              ; $7788: $00
	add  h                                           ; $7789: $84
	add  b                                           ; $778a: $80
	ld   [bc], a                                     ; $778b: $02
	ld   b, b                                        ; $778c: $40
	ret  nz                                          ; $778d: $c0

	ld   b, b                                        ; $778e: $40
	add  b                                           ; $778f: $80
	ret  nz                                          ; $7790: $c0

	dec  b                                           ; $7791: $05
	rst  $38                                         ; $7792: $ff
	cp   a                                           ; $7793: $bf
	rst  $38                                         ; $7794: $ff
	ld   a, l                                        ; $7795: $7d
	inc  bc                                          ; $7796: $03
	ld   bc, $0380                                   ; $7797: $01 $80 $03
	add  c                                           ; $779a: $81
	rlca                                             ; $779b: $07
	add  b                                           ; $779c: $80
	rrca                                             ; $779d: $0f
	ld   c, $07                                      ; $779e: $0e $07
	rrca                                             ; $77a0: $0f
	ld   bc, $faff                                   ; $77a1: $01 $ff $fa
	rst  $38                                         ; $77a4: $ff
	inc  [hl]                                        ; $77a5: $34
	rst  $38                                         ; $77a6: $ff
	rst  JumpTable                                         ; $77a7: $df
	rst  $38                                         ; $77a8: $ff
	rst  JumpTable                                         ; $77a9: $df
	rst  $38                                         ; $77aa: $ff
	ld   e, a                                        ; $77ab: $5f
	rst  $38                                         ; $77ac: $ff
	rst  $28                                         ; $77ad: $ef
	add  c                                           ; $77ae: $81
	rst  $38                                         ; $77af: $ff
	ld   e, $ef                                      ; $77b0: $1e $ef
	rst  $38                                         ; $77b2: $ff
	ld   l, a                                        ; $77b3: $6f
	rst  $38                                         ; $77b4: $ff
	add  hl, bc                                      ; $77b5: $09
	rst  $38                                         ; $77b6: $ff
	db   $eb                                         ; $77b7: $eb
	rst  $38                                         ; $77b8: $ff
	add  sp, -$01                                    ; $77b9: $e8 $ff
	ldh  a, [c]                                      ; $77bb: $f2
	rst  $38                                         ; $77bc: $ff
	ldh  [c], a                                      ; $77bd: $e2
	rst  $38                                         ; $77be: $ff
	ld   [$dfff], a                                  ; $77bf: $ea $ff $df
	rst  $38                                         ; $77c2: $ff
	rst  JumpTable                                         ; $77c3: $df
	rst  $38                                         ; $77c4: $ff
	cpl                                              ; $77c5: $2f
	rst  $38                                         ; $77c6: $ff
	cpl                                              ; $77c7: $2f
	rst  $38                                         ; $77c8: $ff
	db   $d3                                         ; $77c9: $d3
	rst  $38                                         ; $77ca: $ff
	adc  d                                           ; $77cb: $8a
	rst  $38                                         ; $77cc: $ff
	and  h                                           ; $77cd: $a4
	rst  $38                                         ; $77ce: $ff
	db   $fd                                         ; $77cf: $fd
	add  a                                           ; $77d0: $87
	rst  $38                                         ; $77d1: $ff
	ld   b, $45                                      ; $77d2: $06 $45
	rst  $38                                         ; $77d4: $ff
	sub  c                                           ; $77d5: $91
	rst  $38                                         ; $77d6: $ff
	ld   l, e                                        ; $77d7: $6b
	rst  $38                                         ; $77d8: $ff
	cp   a                                           ; $77d9: $bf
	add  e                                           ; $77da: $83
	rst  $38                                         ; $77db: $ff
	ld   [bc], a                                     ; $77dc: $02
	ldh  [rIE], a                                    ; $77dd: $e0 $ff
	rra                                              ; $77df: $1f
	add  a                                           ; $77e0: $87
	rst  $38                                         ; $77e1: $ff
	add  d                                           ; $77e2: $82
	ret  nz                                          ; $77e3: $c0

	ld   b, $80                                      ; $77e4: $06 $80
	rst  $38                                         ; $77e6: $ff
	sbc  a                                           ; $77e7: $9f
	rst  $38                                         ; $77e8: $ff
	db   $e3                                         ; $77e9: $e3
	rst  $38                                         ; $77ea: $ff
	db   $fc                                         ; $77eb: $fc
	add  e                                           ; $77ec: $83

jr_012_77ed:
	rst  $38                                         ; $77ed: $ff
	add  b                                           ; $77ee: $80
	rra                                              ; $77ef: $1f
	add  b                                           ; $77f0: $80
	ccf                                              ; $77f1: $3f
	nop                                              ; $77f2: $00
	reti                                             ; $77f3: $d9


jr_012_77f4:
	add  l                                           ; $77f4: $85
	ld   a, $01                                      ; $77f5: $3e $01
	jr   jr_012_77f9                                 ; $77f7: $18 $00

jr_012_77f9:
	add  d                                           ; $77f9: $82
	jr   nc, jr_012_77ff                             ; $77fa: $30 $03

	db   $10                                         ; $77fc: $10
	jr   nc, @-$1f                                   ; $77fd: $30 $df

jr_012_77ff:
	nop                                              ; $77ff: $00
	add  b                                           ; $7800: $80
	db   $fc                                         ; $7801: $fc
	add  b                                           ; $7802: $80
	rst  $38                                         ; $7803: $ff
	add  b                                           ; $7804: $80
	cp   $86                                         ; $7805: $fe $86
	rst  $38                                         ; $7807: $ff
	add  [hl]                                        ; $7808: $86
	nop                                              ; $7809: $00
	add  b                                           ; $780a: $80
	ld   hl, sp-$7c                                  ; $780b: $f8 $84
	rst  $38                                         ; $780d: $ff
	adc  b                                           ; $780e: $88
	nop                                              ; $780f: $00
	add  h                                           ; $7810: $84
	rst  $38                                         ; $7811: $ff
	adc  b                                           ; $7812: $88
	nop                                              ; $7813: $00
	add  b                                           ; $7814: $80
	add  b                                           ; $7815: $80
	add  b                                           ; $7816: $80
	cp   $80                                         ; $7817: $fe $80
	rst  $38                                         ; $7819: $ff
	adc  h                                           ; $781a: $8c
	nop                                              ; $781b: $00
	add  b                                           ; $781c: $80
	ret  nz                                          ; $781d: $c0

	adc  h                                           ; $781e: $8c
	nop                                              ; $781f: $00
	add  b                                           ; $7820: $80
	rst  $38                                         ; $7821: $ff
	add  d                                           ; $7822: $82
	nop                                              ; $7823: $00
	add  b                                           ; $7824: $80
	ld   bc, $0080                                   ; $7825: $01 $80 $00
	add  b                                           ; $7828: $80
	ld   bc, $3f80                                   ; $7829: $01 $80 $3f
	add  d                                           ; $782c: $82
	rst  $38                                         ; $782d: $ff
	add  d                                           ; $782e: $82
	nop                                              ; $782f: $00
	add  b                                           ; $7830: $80
	rst  $38                                         ; $7831: $ff
	add  b                                           ; $7832: $80
	ccf                                              ; $7833: $3f
	add  [hl]                                        ; $7834: $86
	rst  $38                                         ; $7835: $ff
	add  b                                           ; $7836: $80
	nop                                              ; $7837: $00
	add  b                                           ; $7838: $80
	rrca                                             ; $7839: $0f
	adc  d                                           ; $783a: $8a
	rst  $38                                         ; $783b: $ff
	add  b                                           ; $783c: $80
	nop                                              ; $783d: $00
	add  d                                           ; $783e: $82
	rst  $38                                         ; $783f: $ff
	add  b                                           ; $7840: $80
	cp   $86                                         ; $7841: $fe $86
	rst  $38                                         ; $7843: $ff
	add  b                                           ; $7844: $80
	nop                                              ; $7845: $00
	add  b                                           ; $7846: $80
	ldh  [$80], a                                    ; $7847: $e0 $80
	ret  nz                                          ; $7849: $c0

	add  b                                           ; $784a: $80
	nop                                              ; $784b: $00
	add  b                                           ; $784c: $80
	ret  nz                                          ; $784d: $c0

	add  h                                           ; $784e: $84
	rst  $38                                         ; $784f: $ff
	adc  d                                           ; $7850: $8a
	nop                                              ; $7851: $00
	add  d                                           ; $7852: $82
	rst  $38                                         ; $7853: $ff
	adc  d                                           ; $7854: $8a
	nop                                              ; $7855: $00
	add  b                                           ; $7856: $80
	add  b                                           ; $7857: $80
	add  b                                           ; $7858: $80
	cp   $00                                         ; $7859: $fe $00
	or   e                                           ; $785b: $b3
	add  l                                           ; $785c: $85
	ld   a, h                                        ; $785d: $7c
	ld   bc, $0030                                   ; $785e: $01 $30 $00
	add  d                                           ; $7861: $82
	ld   h, b                                        ; $7862: $60
	ld   b, $20                                      ; $7863: $06 $20
	ld   h, b                                        ; $7865: $60
	ld   d, b                                        ; $7866: $50
	jr   nc, jr_012_7890                             ; $7867: $30 $27

	ccf                                              ; $7869: $3f
	jr   z, jr_012_77ed                              ; $786a: $28 $81

	jr   nc, jr_012_786e                             ; $786c: $30 $00

jr_012_786e:
	db   $10                                         ; $786e: $10
	add  e                                           ; $786f: $83
	jr   nc, jr_012_77f4                             ; $7870: $30 $82

	nop                                              ; $7872: $00
	inc  bc                                          ; $7873: $03
	ldh  [$ef], a                                    ; $7874: $e0 $ef
	nop                                              ; $7876: $00
	rrca                                             ; $7877: $0f
	add  e                                           ; $7878: $83
	nop                                              ; $7879: $00
	dec  b                                           ; $787a: $05
	rst  $38                                         ; $787b: $ff
	nop                                              ; $787c: $00
	rst  $38                                         ; $787d: $ff
	rlca                                             ; $787e: $07
	ld   hl, sp-$01                                  ; $787f: $f8 $ff
	add  b                                           ; $7881: $80
	nop                                              ; $7882: $00
	ld   [bc], a                                     ; $7883: $02
	rst  $38                                         ; $7884: $ff
	nop                                              ; $7885: $00
	rst  $38                                         ; $7886: $ff
	add  e                                           ; $7887: $83
	nop                                              ; $7888: $00
	dec  b                                           ; $7889: $05
	rst  $38                                         ; $788a: $ff
	nop                                              ; $788b: $00
	rst  $38                                         ; $788c: $ff
	ldh  [$1f], a                                    ; $788d: $e0 $1f
	rst  $38                                         ; $788f: $ff

jr_012_7890:
	add  b                                           ; $7890: $80
	nop                                              ; $7891: $00
	ld   [bc], a                                     ; $7892: $02
	rst  $38                                         ; $7893: $ff
	nop                                              ; $7894: $00
	rst  $38                                         ; $7895: $ff
	add  e                                           ; $7896: $83
	nop                                              ; $7897: $00
	add  c                                           ; $7898: $81
	rst  $38                                         ; $7899: $ff
	ld   bc, $ff00                                   ; $789a: $01 $00 $ff
	add  c                                           ; $789d: $81
	nop                                              ; $789e: $00
	ld   [bc], a                                     ; $789f: $02
	rst  $38                                         ; $78a0: $ff
	nop                                              ; $78a1: $00
	rst  $38                                         ; $78a2: $ff
	add  d                                           ; $78a3: $82
	nop                                              ; $78a4: $00
	ld   b, $0f                                      ; $78a5: $06 $0f
	rst  $38                                         ; $78a7: $ff
	ldh  a, [rIE]                                    ; $78a8: $f0 $ff
	rlca                                             ; $78aa: $07
	rst  $38                                         ; $78ab: $ff
	rlca                                             ; $78ac: $07
	add  b                                           ; $78ad: $80
	nop                                              ; $78ae: $00
	ld   [bc], a                                     ; $78af: $02
	rst  $38                                         ; $78b0: $ff
	nop                                              ; $78b1: $00
	rst  $38                                         ; $78b2: $ff
	add  d                                           ; $78b3: $82
	nop                                              ; $78b4: $00
	inc  b                                           ; $78b5: $04
	ret  nz                                          ; $78b6: $c0

	rst  $38                                         ; $78b7: $ff
	nop                                              ; $78b8: $00
	rst  $38                                         ; $78b9: $ff
	ret  nz                                          ; $78ba: $c0

	add  b                                           ; $78bb: $80
	rst  $38                                         ; $78bc: $ff
	add  b                                           ; $78bd: $80
	nop                                              ; $78be: $00
	ld   [bc], a                                     ; $78bf: $02
	rst  $38                                         ; $78c0: $ff
	nop                                              ; $78c1: $00
	rst  $38                                         ; $78c2: $ff
	add  d                                           ; $78c3: $82
	nop                                              ; $78c4: $00
	inc  b                                           ; $78c5: $04
	rra                                              ; $78c6: $1f
	rst  $38                                         ; $78c7: $ff
	nop                                              ; $78c8: $00
	rst  $38                                         ; $78c9: $ff
	rra                                              ; $78ca: $1f
	add  b                                           ; $78cb: $80
	rst  $38                                         ; $78cc: $ff
	add  b                                           ; $78cd: $80
	nop                                              ; $78ce: $00
	ld   [bc], a                                     ; $78cf: $02
	rst  $38                                         ; $78d0: $ff
	nop                                              ; $78d1: $00
	rst  $38                                         ; $78d2: $ff
	add  d                                           ; $78d3: $82
	nop                                              ; $78d4: $00
	add  b                                           ; $78d5: $80
	rst  $38                                         ; $78d6: $ff
	add  hl, bc                                      ; $78d7: $09
	nop                                              ; $78d8: $00
	rst  $38                                         ; $78d9: $ff
	add  e                                           ; $78da: $83
	rst  $38                                         ; $78db: $ff
	add  e                                           ; $78dc: $83
	nop                                              ; $78dd: $00
	rlca                                             ; $78de: $07
	rst  $30                                         ; $78df: $f7
	nop                                              ; $78e0: $00
	ldh  a, [$82]                                    ; $78e1: $f0 $82
	nop                                              ; $78e3: $00
	ld   a, [bc]                                     ; $78e4: $0a
	add  b                                           ; $78e5: $80
	rst  $38                                         ; $78e6: $ff
	ld   a, b                                        ; $78e7: $78
	rst  $38                                         ; $78e8: $ff
	add  [hl]                                        ; $78e9: $86
	rst  $38                                         ; $78ea: $ff
	add  c                                           ; $78eb: $81
	nop                                              ; $78ec: $00
	add  e                                           ; $78ed: $83
	rst  $38                                         ; $78ee: $ff
	ld   a, h                                        ; $78ef: $7c
	add  c                                           ; $78f0: $81
	db   $10                                         ; $78f1: $10
	ld   b, $00                                      ; $78f2: $06 $00
	db   $10                                         ; $78f4: $10
	ld   de, $11d1                                   ; $78f5: $11 $d1 $11
	pop  de                                          ; $78f8: $d1
	nop                                              ; $78f9: $00
	add  b                                           ; $78fa: $80
	pop  bc                                          ; $78fb: $c1
	inc  b                                           ; $78fc: $04
	nop                                              ; $78fd: $00
	ldh  [$ef], a                                    ; $78fe: $e0 $ef
	nop                                              ; $7900: $00
	rrca                                             ; $7901: $0f

jr_012_7902:
	add  d                                           ; $7902: $82
	nop                                              ; $7903: $00
	ld   b, $c7                                      ; $7904: $06 $c7
	ret  nz                                          ; $7906: $c0

	ret  z                                           ; $7907: $c8

	ret  nz                                          ; $7908: $c0

	db   $10                                         ; $7909: $10
	ret  nz                                          ; $790a: $c0

	rst  JumpTable                                         ; $790b: $df
	add  b                                           ; $790c: $80

jr_012_790d:
	nop                                              ; $790d: $00
	ld   [bc], a                                     ; $790e: $02
	rst  $38                                         ; $790f: $ff
	nop                                              ; $7910: $00
	rst  $38                                         ; $7911: $ff
	add  d                                           ; $7912: $82
	nop                                              ; $7913: $00
	ld   b, $ff                                      ; $7914: $06 $ff
	nop                                              ; $7916: $00
	adc  a                                           ; $7917: $8f
	nop                                              ; $7918: $00
	ld   c, [hl]                                     ; $7919: $4e
	nop                                              ; $791a: $00
	ld   a, $80                                      ; $791b: $3e $80
	nop                                              ; $791d: $00
	ld   [bc], a                                     ; $791e: $02
	rst  $38                                         ; $791f: $ff
	nop                                              ; $7920: $00
	rst  $38                                         ; $7921: $ff
	add  d                                           ; $7922: $82
	nop                                              ; $7923: $00
	ld   b, $8f                                      ; $7924: $06 $8f
	rrca                                             ; $7926: $0f
	ld   b, b                                        ; $7927: $40
	rrca                                             ; $7928: $0f
	cpl                                              ; $7929: $2f
	rrca                                             ; $792a: $0f
	rst  $28                                         ; $792b: $ef

jr_012_792c:
	add  b                                           ; $792c: $80
	nop                                              ; $792d: $00
	ld   [bc], a                                     ; $792e: $02
	rst  $38                                         ; $792f: $ff
	nop                                              ; $7930: $00
	rst  $38                                         ; $7931: $ff
	add  d                                           ; $7932: $82
	nop                                              ; $7933: $00
	add  b                                           ; $7934: $80
	rst  $38                                         ; $7935: $ff
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	add  d                                           ; $7938: $82
	rst  $38                                         ; $7939: $ff
	add  b                                           ; $793a: $80
	nop                                              ; $793b: $00
	ld   [bc], a                                     ; $793c: $02
	rst  $38                                         ; $793d: $ff
	nop                                              ; $793e: $00
	rst  $38                                         ; $793f: $ff
	add  d                                           ; $7940: $82
	nop                                              ; $7941: $00
	add  b                                           ; $7942: $80
	rst  $38                                         ; $7943: $ff
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	add  d                                           ; $7946: $82
	rst  $38                                         ; $7947: $ff
	add  b                                           ; $7948: $80
	nop                                              ; $7949: $00
	ld   [bc], a                                     ; $794a: $02
	rst  $38                                         ; $794b: $ff
	nop                                              ; $794c: $00
	rst  $38                                         ; $794d: $ff
	add  d                                           ; $794e: $82
	nop                                              ; $794f: $00
	ld   b, $c0                                      ; $7950: $06 $c0
	rst  $38                                         ; $7952: $ff
	ccf                                              ; $7953: $3f
	rst  $38                                         ; $7954: $ff
	ldh  a, [rIE]                                    ; $7955: $f0 $ff
	ldh  a, [$80]                                    ; $7957: $f0 $80
	nop                                              ; $7959: $00
	ld   [bc], a                                     ; $795a: $02
	rst  $38                                         ; $795b: $ff
	nop                                              ; $795c: $00
	rst  $38                                         ; $795d: $ff
	add  e                                           ; $795e: $83
	nop                                              ; $795f: $00
	add  c                                           ; $7960: $81
	rst  $38                                         ; $7961: $ff
	ld   bc, $ff00                                   ; $7962: $01 $00 $ff
	add  c                                           ; $7965: $81
	nop                                              ; $7966: $00
	ld   [bc], a                                     ; $7967: $02
	rst  $38                                         ; $7968: $ff
	nop                                              ; $7969: $00
	rst  $38                                         ; $796a: $ff
	add  e                                           ; $796b: $83
	nop                                              ; $796c: $00
	add  c                                           ; $796d: $81
	rst  $38                                         ; $796e: $ff
	ld   bc, $ff00                                   ; $796f: $01 $00 $ff
	add  b                                           ; $7972: $80
	nop                                              ; $7973: $00
	inc  bc                                          ; $7974: $03
	ld   b, $f7                                      ; $7975: $06 $f7
	ld   bc, $83f0                                   ; $7977: $01 $f0 $83
	nop                                              ; $797a: $00
	add  c                                           ; $797b: $81
	rst  $38                                         ; $797c: $ff
	ld   [bc], a                                     ; $797d: $02
	nop                                              ; $797e: $00
	rst  $38                                         ; $797f: $ff
	jr   nz, jr_012_7902                             ; $7980: $20 $80

	ld   h, b                                        ; $7982: $60
	add  b                                           ; $7983: $80
	ldh  [$81], a                                    ; $7984: $e0 $81
	ld   h, b                                        ; $7986: $60
	nop                                              ; $7987: $00
	jr   nz, jr_012_790d                             ; $7988: $20 $83

	ld   h, b                                        ; $798a: $60
	add  b                                           ; $798b: $80
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	ld   h, $8d                                      ; $798e: $26 $8d
	ld   a, $06                                      ; $7990: $3e $06
	db   $10                                         ; $7992: $10
	ldh  a, [$e8]                                    ; $7993: $f0 $e8
	rst  $20                                         ; $7995: $e7
	rla                                              ; $7996: $17
	call z, $800c                                    ; $7997: $cc $0c $80
	rlc  c                                           ; $799a: $cb $01
	call z, $800c                                    ; $799c: $cc $0c $80
	rst  ToBoot                                         ; $799f: $c7
	add  hl, bc                                      ; $79a0: $09
	ret  z                                           ; $79a1: $c8

	inc  c                                           ; $79a2: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79a3: $cf
	ei                                               ; $79a4: $fb
	rrca                                             ; $79a5: $0f
	rla                                              ; $79a6: $17
	rst  $20                                         ; $79a7: $e7
	add  sp, $33                                     ; $79a8: $e8 $33
	jr   nc, jr_012_792c                             ; $79aa: $30 $80

	db   $d3                                         ; $79ac: $d3
	ld   bc, $3033                                   ; $79ad: $01 $33 $30
	add  b                                           ; $79b0: $80
	db   $e3                                         ; $79b1: $e3
	inc  bc                                          ; $79b2: $03
	inc  bc                                          ; $79b3: $03
	ret  nz                                          ; $79b4: $c0

	jp   $8107                                       ; $79b5: $c3 $07 $81


	rst  $38                                         ; $79b8: $ff
	ld   c, $03                                      ; $79b9: $0e $03
	rst  $38                                         ; $79bb: $ff
	inc  a                                           ; $79bc: $3c
	rst  $38                                         ; $79bd: $ff
	ret  nz                                          ; $79be: $c0

	rst  $38                                         ; $79bf: $ff
	ccf                                              ; $79c0: $3f
	rst  $38                                         ; $79c1: $ff
	jp   Jump_012_7cff                               ; $79c2: $c3 $ff $7c


	rst  $38                                         ; $79c5: $ff
	ld   a, a                                        ; $79c6: $7f
	rst  $38                                         ; $79c7: $ff
	nop                                              ; $79c8: $00
	add  c                                           ; $79c9: $81
	rst  $38                                         ; $79ca: $ff
	inc  b                                           ; $79cb: $04
	rrca                                             ; $79cc: $0f
	cp   $70                                         ; $79cd: $fe $70
	cp   $80                                         ; $79cf: $fe $80
	add  c                                           ; $79d1: $81
	cp   $01                                         ; $79d2: $fe $01
	nop                                              ; $79d4: $00
	cp   $80                                         ; $79d5: $fe $80
	rst  $38                                         ; $79d7: $ff
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	add  d                                           ; $79da: $82
	rst  $38                                         ; $79db: $ff
	ld   bc, $ff00                                   ; $79dc: $01 $00 $ff
	add  l                                           ; $79df: $85
	nop                                              ; $79e0: $00
	ld   a, [bc]                                     ; $79e1: $0a
	ld   a, a                                        ; $79e2: $7f
	rst  $38                                         ; $79e3: $ff
	nop                                              ; $79e4: $00
	rst  $38                                         ; $79e5: $ff
	add  b                                           ; $79e6: $80
	rst  $38                                         ; $79e7: $ff
	ccf                                              ; $79e8: $3f
	rst  $38                                         ; $79e9: $ff
	ret  nz                                          ; $79ea: $c0

	db   $fc                                         ; $79eb: $fc
	rlca                                             ; $79ec: $07
	add  c                                           ; $79ed: $81
	ld   hl, sp+$0f                                  ; $79ee: $f8 $0f
	ld   e, $fc                                      ; $79f0: $1e $fc
	rra                                              ; $79f2: $1f
	rst  $38                                         ; $79f3: $ff
	ld   c, $ff                                      ; $79f4: $0e $ff
	ldh  a, [rIE]                                    ; $79f6: $f0 $ff
	rlca                                             ; $79f8: $07
	rst  $38                                         ; $79f9: $ff
	jr   @+$01                                       ; $79fa: $18 $ff

	ldh  [$7f], a                                    ; $79fc: $e0 $7f
	nop                                              ; $79fe: $00
	ld   a, a                                        ; $79ff: $7f
	add  b                                           ; $7a00: $80
	rrca                                             ; $7a01: $0f
	jr   jr_012_7a37                                 ; $7a02: $18 $33

	db   $dd                                         ; $7a04: $dd
	inc  e                                           ; $7a05: $1c
	db   $dd                                         ; $7a06: $dd
	dec  e                                           ; $7a07: $1d
	db   $dd                                         ; $7a08: $dd
	call c, $1ddd                                    ; $7a09: $dc $dd $1d
	db   $dd                                         ; $7a0c: $dd
	dec  e                                           ; $7a0d: $1d
	db   $dd                                         ; $7a0e: $dd
	inc  e                                           ; $7a0f: $1c
	db   $dd                                         ; $7a10: $dd
	call c, $cfdd                                    ; $7a11: $dc $dd $cf
	ldh  [rP1], a                                    ; $7a14: $e0 $00
	ldh  [$e2], a                                    ; $7a16: $e0 $e2
	ldh  [rDIV], a                                   ; $7a18: $e0 $04
	ldh  [$e6], a                                    ; $7a1a: $e0 $e6
	add  c                                           ; $7a1c: $81
	ldh  [rAUD2LOW], a                               ; $7a1d: $e0 $18
	ld   [bc], a                                     ; $7a1f: $02
	ldh  [$0e], a                                    ; $7a20: $e0 $0e
	ldh  [$d2], a                                    ; $7a22: $e0 $d2
	nop                                              ; $7a24: $00
	ld   c, h                                        ; $7a25: $4c
	nop                                              ; $7a26: $00
	adc  h                                           ; $7a27: $8c
	nop                                              ; $7a28: $00
	inc  bc                                          ; $7a29: $03
	nop                                              ; $7a2a: $00
	inc  bc                                          ; $7a2b: $03
	nop                                              ; $7a2c: $00
	ld   e, $00                                      ; $7a2d: $1e $00
	sbc  [hl]                                        ; $7a2f: $9e
	nop                                              ; $7a30: $00
	ld   [de], a                                     ; $7a31: $12
	nop                                              ; $7a32: $00
	adc  l                                           ; $7a33: $8d
	rra                                              ; $7a34: $1f
	ld   e, $1f                                      ; $7a35: $1e $1f

jr_012_7a37:
	ld   bc, $1f80                                   ; $7a37: $01 $80 $1f
	add  c                                           ; $7a3a: $81
	ld   e, $06                                      ; $7a3b: $1e $06
	nop                                              ; $7a3d: $00
	ld   e, $80                                      ; $7a3e: $1e $80
	ld   e, $9e                                      ; $7a40: $1e $9e
	ld   e, $fe                                      ; $7a42: $1e $fe
	add  c                                           ; $7a44: $81
	rst  $38                                         ; $7a45: $ff
	inc  c                                           ; $7a46: $0c
	ldh  a, [rIE]                                    ; $7a47: $f0 $ff
	rrca                                             ; $7a49: $0f
	rst  $38                                         ; $7a4a: $ff
	ld   hl, sp-$01                                  ; $7a4b: $f8 $ff
	rlca                                             ; $7a4d: $07
	rst  $38                                         ; $7a4e: $ff
	ldh  [rIE], a                                    ; $7a4f: $e0 $ff
	nop                                              ; $7a51: $00
	rst  $38                                         ; $7a52: $ff
	ld   d, e                                        ; $7a53: $53
	adc  l                                           ; $7a54: $8d
	ld   a, h                                        ; $7a55: $7c
	nop                                              ; $7a56: $00
	ret  nc                                          ; $7a57: $d0

	add  c                                           ; $7a58: $81
	rlc  h                                           ; $7a59: $cb $04
	dec  bc                                          ; $7a5b: $0b
	jp   z, $ca0a                                    ; $7a5c: $ca $0a $ca

	ld   a, [bc]                                     ; $7a5f: $0a
	add  c                                           ; $7a60: $81
	jp   z, $0a00                                    ; $7a61: $ca $00 $0a

	add  c                                           ; $7a64: $81
	jp   z, Jump_012_4d03                            ; $7a65: $ca $03 $4d

	ld   h, b                                        ; $7a68: $60
	ld   b, [hl]                                     ; $7a69: $46
	ld   b, b                                        ; $7a6a: $40
	add  b                                           ; $7a6b: $80
	ld   c, h                                        ; $7a6c: $4c
	add  b                                           ; $7a6d: $80
	ld   a, b                                        ; $7a6e: $78
	jr   z, jr_012_7ad4                              ; $7a6f: $28 $63

	ld   h, c                                        ; $7a71: $61
	call nz, $e0c3                                   ; $7a72: $c4 $c3 $e0
	db   $e3                                         ; $7a75: $e3
	ret  nz                                          ; $7a76: $c0

	jp   $e71c                                       ; $7a77: $c3 $1c $e7


	db   $db                                         ; $7a7a: $db
	jp   $c105                                       ; $7a7b: $c3 $05 $c1


	ldh  a, [c]                                      ; $7a7e: $f2
	ldh  [$09], a                                    ; $7a7f: $e0 $09
	ldh  a, [$0c]                                    ; $7a81: $f0 $0c
	ld   hl, sp+$34                                  ; $7a83: $f8 $34
	ldh  a, [$09]                                    ; $7a85: $f0 $09
	ldh  [$ef], a                                    ; $7a87: $e0 $ef
	adc  $78                                         ; $7a89: $ce $78
	add  [hl]                                        ; $7a8b: $86
	ld   b, [hl]                                     ; $7a8c: $46
	ld   b, $9e                                      ; $7a8d: $06 $9e
	ld   c, $20                                      ; $7a8f: $0e $20
	ld   e, $60                                      ; $7a91: $1e $60

jr_012_7a93:
	ld   a, $5e                                      ; $7a93: $3e $5e
	ld   e, $2e                                      ; $7a95: $1e $2e
	ld   c, $7e                                      ; $7a97: $0e $7e
	add  e                                           ; $7a99: $83
	ld   h, b                                        ; $7a9a: $60
	add  b                                           ; $7a9b: $80
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	ld   c, h                                        ; $7a9e: $4c
	add  l                                           ; $7a9f: $85
	ld   a, h                                        ; $7aa0: $7c
	ld   [$f8ce], sp                                 ; $7aa1: $08 $ce $f8
	ld   e, $e0                                      ; $7aa4: $1e $e0
	ret  c                                           ; $7aa6: $d8

	ret  nz                                          ; $7aa7: $c0

	db   $fc                                         ; $7aa8: $fc
	ldh  [rDIV], a                                   ; $7aa9: $e0 $04
	add  c                                           ; $7aab: $81
	ldh  a, [rAUD3ENA]                               ; $7aac: $f0 $1a
	ld   a, [de]                                     ; $7aae: $1a
	ldh  [rAUD1HIGH], a                              ; $7aaf: $e0 $14
	ret  nz                                          ; $7ab1: $c0

	ld   l, $07                                      ; $7ab2: $2e $07
	jr   nc, jr_012_7ac5                             ; $7ab4: $30 $0f

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab6: $cf
	ccf                                              ; $7ab7: $3f
	nop                                              ; $7ab8: $00
	ccf                                              ; $7ab9: $3f
	rst  ToBoot                                         ; $7aba: $c7
	rlca                                             ; $7abb: $07
	cp   b                                           ; $7abc: $b8
	ld   bc, $0067                                   ; $7abd: $01 $67 $00
	ret  c                                           ; $7ac0: $d8

	nop                                              ; $7ac1: $00
	dec  [hl]                                        ; $7ac2: $35
	db   $dd                                         ; $7ac3: $dd
	dec  e                                           ; $7ac4: $1d

jr_012_7ac5:
	db   $dd                                         ; $7ac5: $dd
	call c, $1cdd                                    ; $7ac6: $dc $dd $1c
	add  c                                           ; $7ac9: $81
	db   $dd                                         ; $7aca: $dd
	ld   [bc], a                                     ; $7acb: $02
	inc  e                                           ; $7acc: $1c
	db   $dd                                         ; $7acd: $dd
	inc  e                                           ; $7ace: $1c
	add  c                                           ; $7acf: $81
	db   $dd                                         ; $7ad0: $dd
	nop                                              ; $7ad1: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad2: $cf
	add  c                                           ; $7ad3: $81

jr_012_7ad4:
	ldh  [rSC], a                                    ; $7ad4: $e0 $02
	nop                                              ; $7ad6: $00
	ldh  [rSB], a                                    ; $7ad7: $e0 $01
	add  c                                           ; $7ad9: $81
	ldh  [rSC], a                                    ; $7ada: $e0 $02
	nop                                              ; $7adc: $00
	ldh  [rP1], a                                    ; $7add: $e0 $00
	add  c                                           ; $7adf: $81
	ldh  [rAUD1SWEEP], a                             ; $7ae0: $e0 $10
	add  c                                           ; $7ae2: $81
	nop                                              ; $7ae3: $00
	add  [hl]                                        ; $7ae4: $86
	nop                                              ; $7ae5: $00
	inc  b                                           ; $7ae6: $04
	nop                                              ; $7ae7: $00
	inc  hl                                          ; $7ae8: $23
	nop                                              ; $7ae9: $00
	inc  c                                           ; $7aea: $0c
	nop                                              ; $7aeb: $00
	stop                                             ; $7aec: $10 $00
	inc  e                                           ; $7aee: $1c
	nop                                              ; $7aef: $00
	inc  e                                           ; $7af0: $1c
	nop                                              ; $7af1: $00
	dec  a                                           ; $7af2: $3d
	add  c                                           ; $7af3: $81
	ld   e, $00                                      ; $7af4: $1e $00
	nop                                              ; $7af6: $00
	add  c                                           ; $7af7: $81
	ld   e, $10                                      ; $7af8: $1e $10
	ld   [bc], a                                     ; $7afa: $02
	ld   e, $00                                      ; $7afb: $1e $00
	ld   e, $00                                      ; $7afd: $1e $00
	ld   e, $02                                      ; $7aff: $1e $02
	ld   e, $f1                                      ; $7b01: $1e $f1
	rst  $38                                         ; $7b03: $ff
	ldh  a, [rIE]                                    ; $7b04: $f0 $ff
	rrca                                             ; $7b06: $0f
	rst  $38                                         ; $7b07: $ff
	ldh  a, [rIE]                                    ; $7b08: $f0 $ff
	nop                                              ; $7b0a: $00
	add  e                                           ; $7b0b: $83
	rst  $38                                         ; $7b0c: $ff
	ld   [bc], a                                     ; $7b0d: $02
	nop                                              ; $7b0e: $00
	rst  $38                                         ; $7b0f: $ff
	jr   nz, jr_012_7a93                             ; $7b10: $20 $81

	rrc  c                                           ; $7b12: $cb $09
	ld   a, [bc]                                     ; $7b14: $0a
	rrc  e                                           ; $7b15: $cb $0b
	set  7, a                                        ; $7b17: $cb $ff
	rst  $20                                         ; $7b19: $e7
	ld   a, [bc]                                     ; $7b1a: $0a
	ldh  a, [rIF]                                    ; $7b1b: $f0 $0f
	ld   hl, sp-$80                                  ; $7b1d: $f8 $80
	rst  $38                                         ; $7b1f: $ff
	ld   bc, $e31b                                   ; $7b20: $01 $1b $e3
	add  b                                           ; $7b23: $80
	ld   b, e                                        ; $7b24: $43
	add  hl, bc                                      ; $7b25: $09
	ld   h, b                                        ; $7b26: $60
	ld   h, e                                        ; $7b27: $63
	ld   b, b                                        ; $7b28: $40
	ld   b, e                                        ; $7b29: $43
	rst  $28                                         ; $7b2a: $ef
	rst  $20                                         ; $7b2b: $e7
	db   $10                                         ; $7b2c: $10
	rrca                                             ; $7b2d: $0f
	ldh  a, [$1f]                                    ; $7b2e: $f0 $1f
	add  b                                           ; $7b30: $80
	rst  $38                                         ; $7b31: $ff
	ld   e, $dc                                      ; $7b32: $1e $dc
	pop  bc                                          ; $7b34: $c1
	add  $c3                                         ; $7b35: $c6 $c3
	add  hl, de                                      ; $7b37: $19
	rst  $20                                         ; $7b38: $e7
	ld   h, $ff                                      ; $7b39: $26 $ff
	ret  nz                                          ; $7b3b: $c0

	rst  $38                                         ; $7b3c: $ff
	rrca                                             ; $7b3d: $0f
	rst  $38                                         ; $7b3e: $ff
	ldh  a, [rIE]                                    ; $7b3f: $f0 $ff
	ld   bc, $70ff                                   ; $7b41: $01 $ff $70
	ld   b, $c6                                      ; $7b44: $06 $c6
	add  [hl]                                        ; $7b46: $86
	ld   hl, sp-$32                                  ; $7b47: $f8 $ce
	ld   c, $fe                                      ; $7b49: $0e $fe
	ld   [hl], c                                     ; $7b4b: $71
	rst  $38                                         ; $7b4c: $ff
	add  b                                           ; $7b4d: $80
	rst  $38                                         ; $7b4e: $ff
	rra                                              ; $7b4f: $1f
	rst  $38                                         ; $7b50: $ff
	ldh  [$80], a                                    ; $7b51: $e0 $80
	rst  $38                                         ; $7b53: $ff
	add  [hl]                                        ; $7b54: $86
	nop                                              ; $7b55: $00
	ld   bc, $00ff                                   ; $7b56: $01 $ff $00
	add  c                                           ; $7b59: $81
	rst  $38                                         ; $7b5a: $ff
	dec  b                                           ; $7b5b: $05
	nop                                              ; $7b5c: $00
	rst  $38                                         ; $7b5d: $ff
	ret  c                                           ; $7b5e: $d8

	add  b                                           ; $7b5f: $80
	ld   a, [hl]                                     ; $7b60: $7e
	ret  c                                           ; $7b61: $d8

	add  b                                           ; $7b62: $80
	db   $fc                                         ; $7b63: $fc
	ld   c, $00                                      ; $7b64: $0e $00
	db   $fc                                         ; $7b66: $fc
	db   $fd                                         ; $7b67: $fd
	cp   $02                                         ; $7b68: $fe $02
	rst  $38                                         ; $7b6a: $ff
	db   $fc                                         ; $7b6b: $fc
	rst  $38                                         ; $7b6c: $ff
	ccf                                              ; $7b6d: $3f
	rst  $38                                         ; $7b6e: $ff
	nop                                              ; $7b6f: $00
	add  hl, de                                      ; $7b70: $19
	reti                                             ; $7b71: $d9


	ccf                                              ; $7b72: $3f
	ld   b, b                                        ; $7b73: $40
	add  c                                           ; $7b74: $81
	ld   a, a                                        ; $7b75: $7f
	ld   [de], a                                     ; $7b76: $12
	ld   bc, $feff                                   ; $7b77: $01 $ff $fe
	rst  $38                                         ; $7b7a: $ff
	inc  bc                                          ; $7b7b: $03
	rst  $38                                         ; $7b7c: $ff
	db   $fc                                         ; $7b7d: $fc
	rst  $38                                         ; $7b7e: $ff
	inc  sp                                          ; $7b7f: $33
	db   $dd                                         ; $7b80: $dd
	call c, $1ddd                                    ; $7b81: $dc $dd $1d
	db   $dd                                         ; $7b84: $dd
	call c, $d1dd                                    ; $7b85: $dc $dd $d1

jr_012_7b88:
	pop  bc                                          ; $7b88: $c1
	db   $10                                         ; $7b89: $10
	add  c                                           ; $7b8a: $81
	pop  de                                          ; $7b8b: $d1
	inc  b                                           ; $7b8c: $04
	ld   bc, $ced1                                   ; $7b8d: $01 $d1 $ce
	ldh  [rSB], a                                    ; $7b90: $e0 $01
	add  c                                           ; $7b92: $81
	ldh  [rP1], a                                    ; $7b93: $e0 $00
	nop                                              ; $7b95: $00
	add  c                                           ; $7b96: $81
	ldh  [rAUD3ENA], a                               ; $7b97: $e0 $1a
	ld   [hl+], a                                    ; $7b99: $22
	ret  nz                                          ; $7b9a: $c0

	ret  nc                                          ; $7b9b: $d0

	ret  nz                                          ; $7b9c: $c0

jr_012_7b9d:
	jp   z, $34c0                                    ; $7b9d: $ca $c0 $34

	nop                                              ; $7ba0: $00
	ld   d, h                                        ; $7ba1: $54
	nop                                              ; $7ba2: $00
	and  h                                           ; $7ba3: $a4
	nop                                              ; $7ba4: $00
	inc  h                                           ; $7ba5: $24
	nop                                              ; $7ba6: $00
	ld   a, e                                        ; $7ba7: $7b
	nop                                              ; $7ba8: $00
	ld   c, e                                        ; $7ba9: $4b
	nop                                              ; $7baa: $00
	add  hl, de                                      ; $7bab: $19
	nop                                              ; $7bac: $00
	ld   sp, $0100                                   ; $7bad: $31 $00 $01
	ld   e, $1c                                      ; $7bb0: $1e $1c
	ld   e, $02                                      ; $7bb2: $1e $02
	add  c                                           ; $7bb4: $81
	ld   e, $0a                                      ; $7bb5: $1e $0a
	add  c                                           ; $7bb7: $81

jr_012_7bb8:
	rra                                              ; $7bb8: $1f
	ld   c, a                                        ; $7bb9: $4f
	rrca                                             ; $7bba: $0f
	ld   h, b                                        ; $7bbb: $60
	rrca                                             ; $7bbc: $0f
	ret  nz                                          ; $7bbd: $c0

	rrca                                             ; $7bbe: $0f
	ld   [hl], b                                     ; $7bbf: $70
	rst  $38                                         ; $7bc0: $ff

jr_012_7bc1:
	rrca                                             ; $7bc1: $0f
	add  c                                           ; $7bc2: $81
	rst  $38                                         ; $7bc3: $ff
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	add  c                                           ; $7bc6: $81
	rst  $38                                         ; $7bc7: $ff
	dec  bc                                          ; $7bc8: $0b
	nop                                              ; $7bc9: $00
	rst  $38                                         ; $7bca: $ff
	ret  nz                                          ; $7bcb: $c0

	rst  $38                                         ; $7bcc: $ff
	ccf                                              ; $7bcd: $3f

jr_012_7bce:
	rst  $38                                         ; $7bce: $ff
	db   $10                                         ; $7bcf: $10
	jr   nc, jr_012_7bf9                             ; $7bd0: $30 $27

	ccf                                              ; $7bd2: $3f
	rlca                                             ; $7bd3: $07
	ccf                                              ; $7bd4: $3f
	adc  d                                           ; $7bd5: $8a
	nop                                              ; $7bd6: $00
	add  b                                           ; $7bd7: $80
	rst  $28                                         ; $7bd8: $ef
	ld   bc, $efe0                                   ; $7bd9: $01 $e0 $ef
	add  b                                           ; $7bdc: $80
	rrca                                             ; $7bdd: $0f
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	add  c                                           ; $7be0: $81
	rrca                                             ; $7be1: $0f
	add  h                                           ; $7be2: $84
	nop                                              ; $7be3: $00
	add  b                                           ; $7be4: $80
	rst  $38                                         ; $7be5: $ff
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	add  c                                           ; $7be8: $81
	rst  $38                                         ; $7be9: $ff
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	add  c                                           ; $7bec: $81
	rst  $38                                         ; $7bed: $ff
	add  e                                           ; $7bee: $83
	nop                                              ; $7bef: $00
	inc  b                                           ; $7bf0: $04
	db   $10                                         ; $7bf1: $10
	sub  e                                           ; $7bf2: $93
	rst  $38                                         ; $7bf3: $ff

jr_012_7bf4:
	add  e                                           ; $7bf4: $83
	rst  $38                                         ; $7bf5: $ff
	adc  d                                           ; $7bf6: $8a
	nop                                              ; $7bf7: $00
	inc  bc                                          ; $7bf8: $03

jr_012_7bf9:
	or   $f7                                         ; $7bf9: $f6 $f7
	ld   b, $f7                                      ; $7bfb: $06 $f7
	add  b                                           ; $7bfd: $80
	ldh  a, [rP1]                                    ; $7bfe: $f0 $00

Call_012_7c00:
	nop                                              ; $7c00: $00
	add  c                                           ; $7c01: $81
	ldh  a, [$82]                                    ; $7c02: $f0 $82
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	jr   nz, jr_012_7b88                             ; $7c06: $20 $80

	ld   h, b                                        ; $7c08: $60
	ld   [bc], a                                     ; $7c09: $02
	ldh  [rAUD4LEN], a                               ; $7c0a: $e0 $20
	ldh  [$8c], a                                    ; $7c0c: $e0 $8c
	nop                                              ; $7c0e: $00
	inc  bc                                          ; $7c0f: $03
	rlca                                             ; $7c10: $07
	ccf                                              ; $7c11: $3f
	daa                                              ; $7c12: $27
	ccf                                              ; $7c13: $3f
	add  b                                           ; $7c14: $80
	jr   nc, jr_012_7c17                             ; $7c15: $30 $00

jr_012_7c17:
	db   $10                                         ; $7c17: $10
	add  e                                           ; $7c18: $83
	jr   nc, jr_012_7b9d                             ; $7c19: $30 $82

	nop                                              ; $7c1b: $00
	add  b                                           ; $7c1c: $80
	rst  $28                                         ; $7c1d: $ef
	ld   bc, $efe0                                   ; $7c1e: $01 $e0 $ef
	add  b                                           ; $7c21: $80
	rrca                                             ; $7c22: $0f
	nop                                              ; $7c23: $00

jr_012_7c24:
	nop                                              ; $7c24: $00
	add  c                                           ; $7c25: $81
	rrca                                             ; $7c26: $0f
	add  h                                           ; $7c27: $84
	nop                                              ; $7c28: $00
	add  b                                           ; $7c29: $80
	rst  $38                                         ; $7c2a: $ff
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	add  c                                           ; $7c2d: $81
	rst  $38                                         ; $7c2e: $ff
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	add  c                                           ; $7c31: $81
	rst  $38                                         ; $7c32: $ff
	add  b                                           ; $7c33: $80
	nop                                              ; $7c34: $00
	add  h                                           ; $7c35: $84
	jr   nc, jr_012_7bb8                             ; $7c36: $30 $80

	nop                                              ; $7c38: $00

jr_012_7c39:
	nop                                              ; $7c39: $00
	ld   h, $85                                      ; $7c3a: $26 $85
	ld   a, $00                                      ; $7c3c: $3e $00
	jr   jr_012_7bc1                                 ; $7c3e: $18 $81

	nop                                              ; $7c40: $00
	inc  bc                                          ; $7c41: $03
	jr   nz, jr_012_7c24                             ; $7c42: $20 $e0

	ld   h, b                                        ; $7c44: $60
	ldh  [$80], a                                    ; $7c45: $e0 $80
	ld   h, b                                        ; $7c47: $60
	nop                                              ; $7c48: $00
	jr   nz, jr_012_7bce                             ; $7c49: $20 $83

	ld   h, b                                        ; $7c4b: $60
	ld   bc, $00ff                                   ; $7c4c: $01 $ff $00
	add  b                                           ; $7c4f: $80
	ld   [bc], a                                     ; $7c50: $02
	add  b                                           ; $7c51: $80
	ldh  a, [$82]                                    ; $7c52: $f0 $82
	cp   $00                                         ; $7c54: $fe $00
	db   $fd                                         ; $7c56: $fd
	add  e                                           ; $7c57: $83
	db   $fc                                         ; $7c58: $fc
	ld   bc, $5554                                   ; $7c59: $01 $54 $55
	add  b                                           ; $7c5c: $80
	xor  d                                           ; $7c5d: $aa
	add  b                                           ; $7c5e: $80
	dec  b                                           ; $7c5f: $05
	add  b                                           ; $7c60: $80
	nop                                              ; $7c61: $00
	add  b                                           ; $7c62: $80
	ld   l, c                                        ; $7c63: $69
	rlca                                             ; $7c64: $07
	xor  h                                           ; $7c65: $ac
	inc  l                                           ; $7c66: $2c
	ld   b, b                                        ; $7c67: $40
	nop                                              ; $7c68: $00
	rlca                                             ; $7c69: $07
	nop                                              ; $7c6a: $00
	sub  d                                           ; $7c6b: $92
	ld   d, l                                        ; $7c6c: $55
	add  b                                           ; $7c6d: $80
	xor  d                                           ; $7c6e: $aa
	add  b                                           ; $7c6f: $80
	ld   d, h                                        ; $7c70: $54
	add  b                                           ; $7c71: $80
	jr   nz, jr_012_7bf4                             ; $7c72: $20 $80

	ld   d, l                                        ; $7c74: $55
	add  b                                           ; $7c75: $80
	ld   a, [bc]                                     ; $7c76: $0a
	add  b                                           ; $7c77: $80
	add  b                                           ; $7c78: $80
	add  b                                           ; $7c79: $80
	ld   a, b                                        ; $7c7a: $78
	add  b                                           ; $7c7b: $80
	ld   d, l                                        ; $7c7c: $55
	add  b                                           ; $7c7d: $80
	xor  d                                           ; $7c7e: $aa
	add  [hl]                                        ; $7c7f: $86
	nop                                              ; $7c80: $00
	dec  b                                           ; $7c81: $05
	ret  nz                                          ; $7c82: $c0

	nop                                              ; $7c83: $00
	cp   b                                           ; $7c84: $b8
	inc  bc                                          ; $7c85: $03
	dec  hl                                          ; $7c86: $2b
	ld   d, b                                        ; $7c87: $50
	add  [hl]                                        ; $7c88: $86
	nop                                              ; $7c89: $00
	ld   b, $10                                      ; $7c8a: $06 $10
	inc  bc                                          ; $7c8c: $03
	ld   c, $01                                      ; $7c8d: $0e $01
	ld   [bc], a                                     ; $7c8f: $02
	ret  nz                                          ; $7c90: $c0

	sbc  $85                                         ; $7c91: $de $85
	nop                                              ; $7c93: $00
	ld   [$fc04], sp                                 ; $7c94: $08 $04 $fc
	cp   e                                           ; $7c97: $bb
	ld   hl, sp+$7c                                  ; $7c98: $f8 $7c
	ldh  a, [rAUD1HIGH]                              ; $7c9a: $f0 $14
	ld   hl, sp-$25                                  ; $7c9c: $f8 $db
	adc  c                                           ; $7c9e: $89
	nop                                              ; $7c9f: $00
	inc  b                                           ; $7ca0: $04
	add  c                                           ; $7ca1: $81
	ld   bc, $3010                                   ; $7ca2: $01 $10 $30
	and  b                                           ; $7ca5: $a0
	add  a                                           ; $7ca6: $87
	nop                                              ; $7ca7: $00
	inc  bc                                          ; $7ca8: $03
	ld   h, b                                        ; $7ca9: $60
	nop                                              ; $7caa: $00
	ld   d, l                                        ; $7cab: $55
	dec  b                                           ; $7cac: $05
	add  b                                           ; $7cad: $80
	ld   [bc], a                                     ; $7cae: $02
	nop                                              ; $7caf: $00
	jr   nc, jr_012_7c39                             ; $7cb0: $30 $87

	nop                                              ; $7cb2: $00
	add  b                                           ; $7cb3: $80
	ld   a, [bc]                                     ; $7cb4: $0a
	add  b                                           ; $7cb5: $80
	ld   d, l                                        ; $7cb6: $55
	add  b                                           ; $7cb7: $80
	ld   a, [hl+]                                    ; $7cb8: $2a
	adc  d                                           ; $7cb9: $8a
	nop                                              ; $7cba: $00
	jr   z, @+$56                                    ; $7cbb: $28 $54

	ld   d, b                                        ; $7cbd: $50
	and  a                                           ; $7cbe: $a7
	and  b                                           ; $7cbf: $a0
	cp   $fc                                         ; $7cc0: $fe $fc
	ld   a, [$18f8]                                  ; $7cc2: $fa $f8 $18
	ld   hl, sp-$0b                                  ; $7cc5: $f8 $f5
	jr   nc, jr_012_7cf3                             ; $7cc7: $30 $2a

	jr   nz, jr_012_7cff                             ; $7cc9: $20 $34

	nop                                              ; $7ccb: $00
	jr   jr_012_7cce                                 ; $7ccc: $18 $00

jr_012_7cce:
	ld   [hl], e                                     ; $7cce: $73
	nop                                              ; $7ccf: $00
	xor  h                                           ; $7cd0: $ac
	nop                                              ; $7cd1: $00
	jr   nz, jr_012_7cd4                             ; $7cd2: $20 $00

jr_012_7cd4:
	ld   [hl], c                                     ; $7cd4: $71
	nop                                              ; $7cd5: $00
	sub  e                                           ; $7cd6: $93
	ld   bc, $003c                                   ; $7cd7: $01 $3c $00
	ld   l, a                                        ; $7cda: $6f
	nop                                              ; $7cdb: $00
	xor  b                                           ; $7cdc: $a8
	nop                                              ; $7cdd: $00
	jr   nz, jr_012_7ce0                             ; $7cde: $20 $00

jr_012_7ce0:
	cp   b                                           ; $7ce0: $b8
	ld   a, a                                        ; $7ce1: $7f
	ld   a, [hl]                                     ; $7ce2: $7e
	ld   a, a                                        ; $7ce3: $7f
	cp   $83                                         ; $7ce4: $fe $83
	rst  $38                                         ; $7ce6: $ff
	ld   d, $01                                      ; $7ce7: $16 $01
	ccf                                              ; $7ce9: $3f
	cp   [hl]                                        ; $7cea: $be
	inc  bc                                          ; $7ceb: $03
	ld   [bc], a                                     ; $7cec: $02
	ld   bc, $0180                                   ; $7ced: $01 $80 $01
	and  c                                           ; $7cf0: $a1
	rst  $38                                         ; $7cf1: $ff
	rra                                              ; $7cf2: $1f

jr_012_7cf3:
	rst  $38                                         ; $7cf3: $ff
	rra                                              ; $7cf4: $1f
	rst  $38                                         ; $7cf5: $ff
	rra                                              ; $7cf6: $1f
	rst  $38                                         ; $7cf7: $ff
	ccf                                              ; $7cf8: $3f
	rst  $38                                         ; $7cf9: $ff
	ld   a, a                                        ; $7cfa: $7f
	db   $fc                                         ; $7cfb: $fc
	ld   c, a                                        ; $7cfc: $4f
	ldh  a, [$7f]                                    ; $7cfd: $f0 $7f

Jump_012_7cff:
jr_012_7cff:
	add  c                                           ; $7cff: $81
	add  c                                           ; $7d00: $81
	ld   c, $c5                                      ; $7d01: $0e $c5
	inc  bc                                          ; $7d03: $03
	ld   a, e                                        ; $7d04: $7b
	add  c                                           ; $7d05: $81
	adc  a                                           ; $7d06: $8f
	ret  nz                                          ; $7d07: $c0

	pop  af                                          ; $7d08: $f1
	nop                                              ; $7d09: $00
	push bc                                          ; $7d0a: $c5
	nop                                              ; $7d0b: $00
	dec  sp                                          ; $7d0c: $3b
	ld   bc, $c0de                                   ; $7d0d: $01 $de $c0

jr_012_7d10:
	jp   nz, $c181                                   ; $7d10: $c2 $81 $c1

	ld   a, [bc]                                     ; $7d13: $0a
	push bc                                          ; $7d14: $c5
	ret  nz                                          ; $7d15: $c0

	rst  $20                                         ; $7d16: $e7
	add  b                                           ; $7d17: $80
	adc  b                                           ; $7d18: $88
	nop                                              ; $7d19: $00
	sbc  a                                           ; $7d1a: $9f
	adc  b                                           ; $7d1b: $88
	ld   l, [hl]                                     ; $7d1c: $6e
	ld   e, $d1                                      ; $7d1d: $1e $d1
	add  b                                           ; $7d1f: $80
	rst  $38                                         ; $7d20: $ff
	inc  bc                                          ; $7d21: $03
	rst  ToBoot                                         ; $7d22: $c7
	ld   a, [hl]                                     ; $7d23: $7e
	inc  bc                                          ; $7d24: $03
	rst  ToBoot                                         ; $7d25: $c7
	add  c                                           ; $7d26: $81
	ld   bc, $2506                                   ; $7d27: $01 $06 $25
	inc  bc                                          ; $7d2a: $03
	ld   l, $07                                      ; $7d2b: $2e $07
	scf                                              ; $7d2d: $37
	rlca                                             ; $7d2e: $07
	db   $e3                                         ; $7d2f: $e3
	add  c                                           ; $7d30: $81
	db   $fc                                         ; $7d31: $fc
	nop                                              ; $7d32: $00
	call c, $fc83                                    ; $7d33: $dc $83 $fc
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	add  c                                           ; $7d38: $81
	db   $fc                                         ; $7d39: $fc
	jr   jr_012_7d10                                 ; $7d3a: $18 $d4

	call c, $0089                                    ; $7d3c: $dc $89 $00
	jr   jr_012_7d41                                 ; $7d3f: $18 $00

jr_012_7d41:
	jr   nz, jr_012_7d43                             ; $7d41: $20 $00

jr_012_7d43:
	ld   e, b                                        ; $7d43: $58
	nop                                              ; $7d44: $00
	ld   h, h                                        ; $7d45: $64
	nop                                              ; $7d46: $00
	inc  e                                           ; $7d47: $1c
	nop                                              ; $7d48: $00
	ld   a, [hl+]                                    ; $7d49: $2a
	nop                                              ; $7d4a: $00
	ld   d, c                                        ; $7d4b: $51
	nop                                              ; $7d4c: $00
	jp   nc, $0600                                   ; $7d4d: $d2 $00 $06

	nop                                              ; $7d50: $00
	ld   [$0f00], sp                                 ; $7d51: $08 $00 $0f
	add  e                                           ; $7d54: $83
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	rrca                                             ; $7d57: $0f
	add  c                                           ; $7d58: $81
	nop                                              ; $7d59: $00
	ld   bc, $05ba                                   ; $7d5a: $01 $ba $05
	add  b                                           ; $7d5d: $80
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	add  b                                           ; $7d60: $80
	add  c                                           ; $7d61: $81
	nop                                              ; $7d62: $00
	add  b                                           ; $7d63: $80
	ld   h, b                                        ; $7d64: $60
	add  b                                           ; $7d65: $80
	db   $10                                         ; $7d66: $10
	dec  b                                           ; $7d67: $05
	ldh  [$08], a                                    ; $7d68: $e0 $08
	jr   c, @+$12                                    ; $7d6a: $38 $10

	jp   $8000                                       ; $7d6c: $c3 $00 $80


	jr   z, jr_012_7cf3                              ; $7d6f: $28 $82

	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	inc  b                                           ; $7d73: $04
	add  c                                           ; $7d74: $81
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	add  hl, bc                                      ; $7d77: $09
	add  c                                           ; $7d78: $81
	nop                                              ; $7d79: $00
	ld   bc, $109e                                   ; $7d7a: $01 $9e $10
	add  b                                           ; $7d7d: $80
	nop                                              ; $7d7e: $00
	ld   b, $01                                      ; $7d7f: $06 $01
	nop                                              ; $7d81: $00
	ld   c, $00                                      ; $7d82: $0e $00
	adc  b                                           ; $7d84: $88
	nop                                              ; $7d85: $00
	rlca                                             ; $7d86: $07
	add  e                                           ; $7d87: $83
	nop                                              ; $7d88: $00
	db   $10                                         ; $7d89: $10
	jr   c, jr_012_7d8c                              ; $7d8a: $38 $00

jr_012_7d8c:
	ld   b, h                                        ; $7d8c: $44
	nop                                              ; $7d8d: $00
	add  b                                           ; $7d8e: $80
	nop                                              ; $7d8f: $00
	inc  l                                           ; $7d90: $2c
	nop                                              ; $7d91: $00
	ld   d, b                                        ; $7d92: $50
	nop                                              ; $7d93: $00
	add  b                                           ; $7d94: $80
	nop                                              ; $7d95: $00
	ld   e, $00                                      ; $7d96: $1e $00
	ld   h, b                                        ; $7d98: $60
	nop                                              ; $7d99: $00
	ld   a, [hl]                                     ; $7d9a: $7e
	adc  l                                           ; $7d9b: $8d
	nop                                              ; $7d9c: $00
	ld   a, [bc]                                     ; $7d9d: $0a
	ccf                                              ; $7d9e: $3f
	nop                                              ; $7d9f: $00
	inc  hl                                          ; $7da0: $23
	nop                                              ; $7da1: $00
	db   $10                                         ; $7da2: $10

jr_012_7da3:
	jr   nz, jr_012_7dc7                             ; $7da3: $20 $22

	jr   nz, jr_012_7de0                             ; $7da5: $20 $39

	jr   nc, jr_012_7ddf                             ; $7da7: $30 $36

	add  c                                           ; $7da9: $81
	jr   nc, @+$10                                   ; $7daa: $30 $0e

	ld   [hl-], a                                    ; $7dac: $32
	jr   nc, jr_012_7da3                             ; $7dad: $30 $f4

	db   $10                                         ; $7daf: $10
	ld   [$1100], sp                                 ; $7db0: $08 $00 $11
	nop                                              ; $7db3: $00
	inc  hl                                          ; $7db4: $23
	ld   bc, $031f                                   ; $7db5: $01 $1f $03
	jp   $1303                                       ; $7db8: $c3 $03 $13


	add  c                                           ; $7dbb: $81
	inc  bc                                          ; $7dbc: $03
	ld   [bc], a                                     ; $7dbd: $02
	or   c                                           ; $7dbe: $b1
	ld   bc, $8181                                   ; $7dbf: $01 $81 $81
	ld   bc, $0229                                   ; $7dc2: $01 $29 $02
	inc  bc                                          ; $7dc5: $03
	ld   [bc], a                                     ; $7dc6: $02

jr_012_7dc7:
	inc  bc                                          ; $7dc7: $03
	ld   b, $07                                      ; $7dc8: $06 $07
	inc  b                                           ; $7dca: $04
	rlca                                             ; $7dcb: $07
	inc  b                                           ; $7dcc: $04
	rlca                                             ; $7dcd: $07
	ld   l, a                                        ; $7dce: $6f
	ldh  [$3e], a                                    ; $7dcf: $e0 $3e
	ldh  a, [$3d]                                    ; $7dd1: $f0 $3d
	db   $fc                                         ; $7dd3: $fc
	ccf                                              ; $7dd4: $3f
	cp   $3f                                         ; $7dd5: $fe $3f
	rst  $38                                         ; $7dd7: $ff
	ld   a, $fe                                      ; $7dd8: $3e $fe
	ccf                                              ; $7dda: $3f
	rst  $38                                         ; $7ddb: $ff
	ld   a, $fe                                      ; $7ddc: $3e $fe
	ld   c, e                                        ; $7dde: $4b

jr_012_7ddf:
	inc  bc                                          ; $7ddf: $03

jr_012_7de0:
	dec  [hl]                                        ; $7de0: $35
	ld   bc, $03c7                                   ; $7de1: $01 $c7 $03
	dec  sp                                          ; $7de4: $3b
	inc  bc                                          ; $7de5: $03
	call $f101                                       ; $7de6: $cd $01 $f1
	ld   bc, $008c                                   ; $7de9: $01 $8c $00
	ld   [hl], a                                     ; $7dec: $77
	nop                                              ; $7ded: $00
	ld   l, h                                        ; $7dee: $6c
	nop                                              ; $7def: $00
	sub  d                                           ; $7df0: $92
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	rst  $38                                         ; $7df3: $ff
	adc  c                                           ; $7df4: $89
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	rst  $38                                         ; $7df7: $ff
	sub  c                                           ; $7df8: $91
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	rst  $38                                         ; $7dfb: $ff
	adc  c                                           ; $7dfc: $89
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	rst  $38                                         ; $7dff: $ff
	adc  c                                           ; $7e00: $89
	nop                                              ; $7e01: $00
	ld   bc, $0301                                   ; $7e02: $01 $01 $03
	add  b                                           ; $7e05: $80
	nop                                              ; $7e06: $00
	inc  b                                           ; $7e07: $04
	ld   bc, $0107                                   ; $7e08: $01 $07 $01
	inc  bc                                          ; $7e0b: $03
	ld   sp, hl                                      ; $7e0c: $f9
	adc  c                                           ; $7e0d: $89
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	rst  $38                                         ; $7e10: $ff
	adc  c                                           ; $7e11: $89
	nop                                              ; $7e12: $00
	ld   [$0f07], sp                                 ; $7e13: $08 $07 $0f
	ld   bc, $0103                                   ; $7e16: $01 $03 $01
	rlca                                             ; $7e19: $07
	ld   bc, $f103                                   ; $7e1a: $01 $03 $f1
	adc  c                                           ; $7e1d: $89
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	rst  $38                                         ; $7e20: $ff
	adc  c                                           ; $7e21: $89
	nop                                              ; $7e22: $00
	ld   [$0807], sp                                 ; $7e23: $08 $07 $08
	rra                                              ; $7e26: $1f
	ld   bc, $0103                                   ; $7e27: $01 $03 $01
	rlca                                             ; $7e2a: $07
	ld   bc, $89ea                                   ; $7e2b: $01 $ea $89
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	ld   sp, hl                                      ; $7e30: $f9
	add  b                                           ; $7e31: $80
	ld   [hl+], a                                    ; $7e32: $22
	ld   bc, $0105                                   ; $7e33: $01 $05 $01
	add  b                                           ; $7e36: $80
	ld   hl, $030d                                   ; $7e37: $21 $0d $03
	ld   bc, $0020                                   ; $7e3a: $01 $20 $00
	jr   nz, jr_012_7e46                             ; $7e3d: $20 $07

	ld   [$011f], sp                                 ; $7e3f: $08 $1f $01
	inc  bc                                          ; $7e42: $03
	ld   bc, $181d                                   ; $7e43: $01 $1d $18

jr_012_7e46:
	jp   hl                                          ; $7e46: $e9


	adc  c                                           ; $7e47: $89
	nop                                              ; $7e48: $00
	inc  d                                           ; $7e49: $14
	jp   c, $2803                                    ; $7e4a: $da $03 $28

	dec  b                                           ; $7e4d: $05
	ld   bc, $1f1d                                   ; $7e4e: $01 $1d $1f
	rrca                                             ; $7e51: $0f
	dec  h                                           ; $7e52: $25
	inc  bc                                          ; $7e53: $03
	nop                                              ; $7e54: $00
	inc  bc                                          ; $7e55: $03
	dec  h                                           ; $7e56: $25
	rrca                                             ; $7e57: $0f
	rra                                              ; $7e58: $1f
	dec  e                                           ; $7e59: $1d
	ld   bc, $0113                                   ; $7e5a: $01 $13 $01
	rla                                              ; $7e5d: $17
	pop  af                                          ; $7e5e: $f1
	adc  c                                           ; $7e5f: $89
	nop                                              ; $7e60: $00
	dec  c                                           ; $7e61: $0d
	ld   [$1d1b], a                                  ; $7e62: $ea $1b $1d
	ld   bc, $0103                                   ; $7e65: $01 $03 $01
	rra                                              ; $7e68: $1f
	ld   [$2007], sp                                 ; $7e69: $08 $07 $20
	nop                                              ; $7e6c: $00
	jr   nz, jr_012_7e89                             ; $7e6d: $20 $1a

	ld   bc, $0780                                   ; $7e6f: $01 $80 $07
	ld   bc, $0306                                   ; $7e72: $01 $06 $03
	add  b                                           ; $7e75: $80
	ld   bc, $e100                                   ; $7e76: $01 $00 $e1
	adc  c                                           ; $7e79: $89
	nop                                              ; $7e7a: $00
	ld   [$31e9], sp                                 ; $7e7b: $08 $e9 $31
	inc  [hl]                                        ; $7e7e: $34
	ld   bc, $0103                                   ; $7e7f: $01 $03 $01
	rra                                              ; $7e82: $1f
	ld   [$8907], sp                                 ; $7e83: $08 $07 $89
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	rst  $38                                         ; $7e88: $ff

jr_012_7e89:
	adc  c                                           ; $7e89: $89
	nop                                              ; $7e8a: $00
	ld   [$01d7], sp                                 ; $7e8b: $08 $d7 $01
	daa                                              ; $7e8e: $27
	dec  b                                           ; $7e8f: $05
	ld   bc, $0103                                   ; $7e90: $01 $03 $01
	rrca                                             ; $7e93: $0f
	rlca                                             ; $7e94: $07
	adc  c                                           ; $7e95: $89
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	rst  $38                                         ; $7e98: $ff
	adc  c                                           ; $7e99: $89
	nop                                              ; $7e9a: $00
	inc  b                                           ; $7e9b: $04
	push de                                          ; $7e9c: $d5
	ld   bc, $0335                                   ; $7e9d: $01 $35 $03
	ld   b, $80                                      ; $7ea0: $06 $80
	nop                                              ; $7ea2: $00
	ld   bc, $1a01                                   ; $7ea3: $01 $01 $1a
	adc  c                                           ; $7ea6: $89
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	rst  $38                                         ; $7ea9: $ff
	adc  c                                           ; $7eaa: $89
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	rst  $38                                         ; $7ead: $ff
	sub  c                                           ; $7eae: $91
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	rst  $38                                         ; $7eb1: $ff
	adc  c                                           ; $7eb2: $89
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	rst  $38                                         ; $7eb5: $ff
	sub  c                                           ; $7eb6: $91
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	rst  $38                                         ; $7eb9: $ff
	adc  c                                           ; $7eba: $89
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	db   $d3                                         ; $7ebd: $d3
	sub  c                                           ; $7ebe: $91
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	db   $d3                                         ; $7ec1: $d3
	adc  c                                           ; $7ec2: $89
	nop                                              ; $7ec3: $00
	inc  d                                           ; $7ec4: $14
	rst  $28                                         ; $7ec5: $ef
	jr   nz, jr_012_7ec9                             ; $7ec6: $20 $01

	inc  bc                                          ; $7ec8: $03

jr_012_7ec9:
	ld   bc, $0107                                   ; $7ec9: $01 $07 $01
	inc  bc                                          ; $7ecc: $03
	ld   bc, $280f                                   ; $7ecd: $01 $0f $28
	ld   a, [hl+]                                    ; $7ed0: $2a
	ld   bc, $0107                                   ; $7ed1: $01 $07 $01
	inc  bc                                          ; $7ed4: $03
	ld   bc, $016f                                   ; $7ed5: $01 $6f $01
	ld   b, c                                        ; $7ed8: $41
	rst  $28                                         ; $7ed9: $ef
	adc  c                                           ; $7eda: $89
	nop                                              ; $7edb: $00
	inc  d                                           ; $7edc: $14
	rst  $28                                         ; $7edd: $ef
	ld   d, b                                        ; $7ede: $50
	ld   bc, $0103                                   ; $7edf: $01 $03 $01
	rlca                                             ; $7ee2: $07
	ld   bc, $0103                                   ; $7ee3: $01 $03 $01
	rrca                                             ; $7ee6: $0f
	ld   bc, $0103                                   ; $7ee7: $01 $03 $01
	rlca                                             ; $7eea: $07
	ld   bc, $0103                                   ; $7eeb: $01 $03 $01
	cpl                                              ; $7eee: $2f
	ld   bc, $ef71                                   ; $7eef: $01 $71 $ef
	adc  c                                           ; $7ef2: $89
	nop                                              ; $7ef3: $00

Call_012_7ef4:
	dec  c                                           ; $7ef4: $0d
	rst  $28                                         ; $7ef5: $ef
	ld   b, d                                        ; $7ef6: $42
	ld   bc, $0107                                   ; $7ef7: $01 $07 $01
	inc  bc                                          ; $7efa: $03
	ld   bc, $010f                                   ; $7efb: $01 $0f $01
	inc  bc                                          ; $7efe: $03
	ld   bc, $0107                                   ; $7eff: $01 $07 $01
	ld   c, l                                        ; $7f02: $4d
	add  h                                           ; $7f03: $84
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	rst  $28                                         ; $7f06: $ef
	adc  c                                           ; $7f07: $89
	nop                                              ; $7f08: $00
	ld   c, $ef                                      ; $7f09: $0e $ef
	ld   [hl], d                                     ; $7f0b: $72
	ld   bc, $0107                                   ; $7f0c: $01 $07 $01
	inc  bc                                          ; $7f0f: $03
	ld   bc, $010f                                   ; $7f10: $01 $0f $01
	inc  bc                                          ; $7f13: $03
	ld   bc, $0107                                   ; $7f14: $01 $07 $01
	ld   d, h                                        ; $7f17: $54
	add  hl, hl                                      ; $7f18: $29
	add  e                                           ; $7f19: $83
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	rst  $28                                         ; $7f1c: $ef
	adc  c                                           ; $7f1d: $89
	nop                                              ; $7f1e: $00
	inc  bc                                          ; $7f1f: $03
	rst  $38                                         ; $7f20: $ff
	nop                                              ; $7f21: $00
	dec  l                                           ; $7f22: $2d
	inc  bc                                          ; $7f23: $03
	adc  e                                           ; $7f24: $8b
	nop                                              ; $7f25: $00
	inc  bc                                          ; $7f26: $03
	inc  bc                                          ; $7f27: $03
	add  hl, sp                                      ; $7f28: $39
	ld   bc, $89ea                                   ; $7f29: $01 $ea $89
	nop                                              ; $7f2c: $00
	inc  d                                           ; $7f2d: $14
	ld   sp, hl                                      ; $7f2e: $f9
	ld   [hl+], a                                    ; $7f2f: $22
	dec  bc                                          ; $7f30: $0b
	ccf                                              ; $7f31: $3f
	ld   c, [hl]                                     ; $7f32: $4e
	ld   bc, $012f                                   ; $7f33: $01 $2f $01
	inc  bc                                          ; $7f36: $03
	ld   bc, $0107                                   ; $7f37: $01 $07 $01
	inc  bc                                          ; $7f3a: $03
	ld   bc, $680f                                   ; $7f3b: $01 $0f $68
	nop                                              ; $7f3e: $00
	ccf                                              ; $7f3f: $3f
	ld   hl, $e918                                   ; $7f40: $21 $18 $e9
	adc  c                                           ; $7f43: $89
	nop                                              ; $7f44: $00
	inc  d                                           ; $7f45: $14
	jp   c, $0903                                    ; $7f46: $da $03 $09

	ccf                                              ; $7f49: $3f
	ld   a, [hl]                                     ; $7f4a: $7e
	ld   bc, $016f                                   ; $7f4b: $01 $6f $01
	inc  bc                                          ; $7f4e: $03
	ld   bc, $0107                                   ; $7f4f: $01 $07 $01
	inc  bc                                          ; $7f52: $03
	ld   bc, $310f                                   ; $7f53: $01 $0f $31
	add  hl, hl                                      ; $7f56: $29
	ccf                                              ; $7f57: $3f
	ld   [hl], $17                                   ; $7f58: $36 $17
	pop  af                                          ; $7f5a: $f1
	adc  c                                           ; $7f5b: $89
	nop                                              ; $7f5c: $00
	inc  d                                           ; $7f5d: $14
	ld   [$211b], a                                  ; $7f5e: $ea $1b $21
	ld   d, [hl]                                     ; $7f61: $56
	inc  bc                                          ; $7f62: $03
	ld   bc, $0107                                   ; $7f63: $01 $07 $01
	inc  bc                                          ; $7f66: $03
	ld   bc, $016f                                   ; $7f67: $01 $6f $01
	inc  bc                                          ; $7f6a: $03
	ld   bc, $0107                                   ; $7f6b: $01 $07 $01
	inc  bc                                          ; $7f6e: $03
	add  hl, sp                                      ; $7f6f: $39
	jr   nc, jr_012_7f73                             ; $7f70: $30 $01

	pop  hl                                          ; $7f72: $e1

jr_012_7f73:
	adc  c                                           ; $7f73: $89
	nop                                              ; $7f74: $00
	inc  d                                           ; $7f75: $14
	jp   hl                                          ; $7f76: $e9


	ld   sp, $2608                                   ; $7f77: $31 $08 $26
	inc  bc                                          ; $7f7a: $03
	ld   bc, $0107                                   ; $7f7b: $01 $07 $01
	inc  bc                                          ; $7f7e: $03
	ld   bc, $012f                                   ; $7f7f: $01 $2f $01
	inc  bc                                          ; $7f82: $03
	ld   bc, $0f34                                   ; $7f83: $01 $34 $0f

Call_012_7f86:
	ld   bc, $2f36                                   ; $7f86: $01 $36 $2f
	nop                                              ; $7f89: $00
	rst  $38                                         ; $7f8a: $ff
	adc  c                                           ; $7f8b: $89

Call_012_7f8c:
	nop                                              ; $7f8c: $00
	inc  bc                                          ; $7f8d: $03
	rst  $10                                         ; $7f8e: $d7
	ld   bc, $0304                                   ; $7f8f: $01 $04 $03
	adc  e                                           ; $7f92: $8b
	nop                                              ; $7f93: $00
	inc  bc                                          ; $7f94: $03
	inc  bc                                          ; $7f95: $03
	dec  l                                           ; $7f96: $2d
	nop                                              ; $7f97: $00
	rst  $38                                         ; $7f98: $ff
	adc  c                                           ; $7f99: $89
	nop                                              ; $7f9a: $00
	inc  b                                           ; $7f9b: $04
	jp   c, $2803                                    ; $7f9c: $da $03 $28

	inc  hl                                          ; $7f9f: $23
	inc  bc                                          ; $7fa0: $03
	adc  c                                           ; $7fa1: $89
	nop                                              ; $7fa2: $00
	inc  b                                           ; $7fa3: $04
	inc  bc                                          ; $7fa4: $03
	dec  [hl]                                        ; $7fa5: $35
	ld   bc, $f117                                   ; $7fa6: $01 $17 $f1
	adc  c                                           ; $7fa9: $89
	nop                                              ; $7faa: $00
	ld   de, $1bea                                   ; $7fab: $11 $ea $1b
	dec  e                                           ; $7fae: $1d
	inc  a                                           ; $7faf: $3c
	ld   [hl], c                                     ; $7fb0: $71
	ld   bc, $012f                                   ; $7fb1: $01 $2f $01
	ld   l, e                                        ; $7fb4: $6b
	ld   bc, $6907                                   ; $7fb5: $01 $07 $69
	inc  bc                                          ; $7fb8: $03
	ld   bc, $680f                                   ; $7fb9: $01 $0f $68
	ccf                                              ; $7fbc: $3f
	ld   sp, $0180                                   ; $7fbd: $31 $80 $01
	nop                                              ; $7fc0: $00
	pop  hl                                          ; $7fc1: $e1
	adc  c                                           ; $7fc2: $89
	nop                                              ; $7fc3: $00
	ld   de, $31e9                                   ; $7fc4: $11 $e9 $31
	inc  [hl]                                        ; $7fc7: $34
	inc  a                                           ; $7fc8: $3c
	ld   b, c                                        ; $7fc9: $41
	ld   bc, $016f                                   ; $7fca: $01 $6f $01
	inc  e                                           ; $7fcd: $1c
	inc  bc                                          ; $7fce: $03
	ld   bc, $031a                                   ; $7fcf: $01 $1a $03
	ld   bc, $310f                                   ; $7fd2: $01 $0f $31
	ld   d, $2f                                      ; $7fd5: $16 $2f
	add  b                                           ; $7fd7: $80
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	rst  $38                                         ; $7fda: $ff
	adc  c                                           ; $7fdb: $89
	nop                                              ; $7fdc: $00
	inc  b                                           ; $7fdd: $04
	rst  $10                                         ; $7fde: $d7
	ld   bc, $2327                                   ; $7fdf: $01 $27 $23
	inc  bc                                          ; $7fe2: $03
	adc  c                                           ; $7fe3: $89
	nop                                              ; $7fe4: $00
	ld   bc, $2d03                                   ; $7fe5: $01 $03 $2d
	add  b                                           ; $7fe8: $80
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	adc  b                                           ; $7fee: $88
	nop                                              ; $7fef: $00
	and  e                                           ; $7ff0: $a3
	inc  l                                           ; $7ff1: $2c
	rst  $38                                         ; $7ff2: $ff
	ld   a, a                                        ; $7ff3: $7f
	ccf                                              ; $7ff4: $3f
	ld   c, l                                        ; $7ff5: $4d
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	push af                                          ; $7ff8: $f5
	ld   [hl], b                                     ; $7ff9: $70
	rst  $38                                         ; $7ffa: $ff
	ld   a, a                                        ; $7ffb: $7f
	rst  $38                                         ; $7ffc: $ff
	ld   [bc], a                                     ; $7ffd: $02
	jr   @+$02                                       ; $7ffe: $18 $00
