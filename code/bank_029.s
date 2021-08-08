; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

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
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	inc  bc                                          ; $4012: $03
	inc  bc                                          ; $4013: $03
	inc  c                                           ; $4014: $0c
	rrca                                             ; $4015: $0f
	inc  bc                                          ; $4016: $03
	inc  bc                                          ; $4017: $03
	inc  bc                                          ; $4018: $03
	ld   [bc], a                                     ; $4019: $02
	dec  b                                           ; $401a: $05
	ld   b, $04                                      ; $401b: $06 $04
	rlca                                             ; $401d: $07
	dec  b                                           ; $401e: $05
	rlca                                             ; $401f: $07
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	dec  sp                                          ; $4030: $3b
	dec  sp                                          ; $4031: $3b
	call nz, $02ff                                   ; $4032: $c4 $ff $02
	rst  $38                                         ; $4035: $ff
	add  l                                           ; $4036: $85
	ld   a, a                                        ; $4037: $7f
	ld   a, [hl-]                                    ; $4038: $3a
	db   $dd                                         ; $4039: $dd
	ld   a, l                                        ; $403a: $7d
	cp   [hl]                                        ; $403b: $be
	ld   a, [hl]                                     ; $403c: $7e
	and  e                                           ; $403d: $a3
	ld   a, [hl]                                     ; $403e: $7e
	jp   $0000                                      ; $403f: $c3 $00 $00


	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	ret  nz                                          ; $4050: $c0

	ret  nz                                          ; $4051: $c0

	jr   nz, @-$1e                                   ; $4052: $20 $e0

	db   $10                                         ; $4054: $10
	ldh  a, [rOBP0]                                  ; $4055: $f0 $48
	cp   b                                           ; $4057: $b8
	inc  h                                           ; $4058: $24
	call c, $fe12                                    ; $4059: $dc $12 $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $405c: $cf
	ld   a, a                                        ; $405d: $7f
	and  h                                           ; $405e: $a4
	ld   a, h                                        ; $405f: $7c
	ld   a, [bc]                                     ; $4060: $0a
	rrca                                             ; $4061: $0f
	ld   a, [bc]                                     ; $4062: $0a
	rrca                                             ; $4063: $0f
	inc  b                                           ; $4064: $04
	rlca                                             ; $4065: $07
	dec  b                                           ; $4066: $05
	rlca                                             ; $4067: $07
	dec  b                                           ; $4068: $05
	rlca                                             ; $4069: $07
	ld   [bc], a                                     ; $406a: $02
	ld   [bc], a                                     ; $406b: $02
	ld   [bc], a                                     ; $406c: $02
	ld   [bc], a                                     ; $406d: $02
	ld   [bc], a                                     ; $406e: $02
	ld   [bc], a                                     ; $406f: $02
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	nop                                              ; $4073: $00
	ld   bc, $0301                                   ; $4074: $01 $01 $03
	ld   [bc], a                                     ; $4077: $02
	inc  bc                                          ; $4078: $03
	ld   [bc], a                                     ; $4079: $02
	rlca                                             ; $407a: $07
	inc  b                                           ; $407b: $04
	rlca                                             ; $407c: $07
	inc  b                                           ; $407d: $04
	rlca                                             ; $407e: $07
	inc  b                                           ; $407f: $04
	ld   a, a                                        ; $4080: $7f
	rst  $38                                         ; $4081: $ff
	rst  $38                                         ; $4082: $ff
	add  e                                           ; $4083: $83
	rst  $38                                         ; $4084: $ff
	rst  ToBoot                                         ; $4085: $c7
	rst  $38                                         ; $4086: $ff
	adc  d                                           ; $4087: $8a
	rst  $38                                         ; $4088: $ff
	add  $ff                                         ; $4089: $c6 $ff
	add  b                                           ; $408b: $80
	rst  $38                                         ; $408c: $ff
	add  b                                           ; $408d: $80
	ld   a, a                                        ; $408e: $7f
	ld   b, c                                        ; $408f: $41
	ccf                                              ; $4090: $3f
	ccf                                              ; $4091: $3f
	rst  $38                                         ; $4092: $ff
	pop  bc                                          ; $4093: $c1
	rst  $38                                         ; $4094: $ff
	ld   b, d                                        ; $4095: $42
	rst  JumpTable                                         ; $4096: $df
	ld   h, d                                        ; $4097: $62
	jp   $c77e                                       ; $4098: $c3 $7e $c7


	ld   a, l                                        ; $409b: $7d
	rst  $28                                         ; $409c: $ef
	cp   d                                           ; $409d: $ba
	rst  $38                                         ; $409e: $ff
	or   h                                           ; $409f: $b4
	ld   [hl+], a                                    ; $40a0: $22
	cp   $12                                         ; $40a1: $fe $12
	cp   $12                                         ; $40a3: $fe $12
	cp   $9a                                         ; $40a5: $fe $9a
	cp   $9a                                         ; $40a7: $fe $9a
	cp   $9e                                         ; $40a9: $fe $9e
	cp   $bc                                         ; $40ab: $fe $bc
	db   $f4                                         ; $40ad: $f4
	cp   h                                           ; $40ae: $bc
	db   $f4                                         ; $40af: $f4
	ld   c, [hl]                                     ; $40b0: $4e
	ld   c, d                                        ; $40b1: $4a
	adc  $ca                                         ; $40b2: $ce $ca
	xor  $aa                                         ; $40b4: $ee $aa
	cp   $9e                                         ; $40b6: $fe $9e
	ld   hl, sp-$78                                  ; $40b8: $f8 $88
	db   $fc                                         ; $40ba: $fc
	inc  c                                           ; $40bb: $0c
	db   $fc                                         ; $40bc: $fc
	inc  b                                           ; $40bd: $04
	db   $fc                                         ; $40be: $fc
	add  h                                           ; $40bf: $84
	rlca                                             ; $40c0: $07
	inc  b                                           ; $40c1: $04
	rlca                                             ; $40c2: $07
	rlca                                             ; $40c3: $07
	rlca                                             ; $40c4: $07
	dec  b                                           ; $40c5: $05
	rlca                                             ; $40c6: $07
	inc  b                                           ; $40c7: $04
	rlca                                             ; $40c8: $07
	inc  b                                           ; $40c9: $04
	inc  bc                                          ; $40ca: $03
	inc  bc                                          ; $40cb: $03
	nop                                              ; $40cc: $00
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	ld   bc, $0201                                   ; $40d8: $01 $01 $02
	inc  bc                                          ; $40db: $03
	ld   [bc], a                                     ; $40dc: $02
	inc  bc                                          ; $40dd: $03
	inc  bc                                          ; $40de: $03
	inc  bc                                          ; $40df: $03
	rst  $38                                         ; $40e0: $ff
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	jr   z, @+$01                                    ; $40e3: $28 $ff

	jr   z, @+$01                                    ; $40e5: $28 $ff

	cp   l                                           ; $40e7: $bd
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	rst  $30                                         ; $40ee: $f7
	rst  $30                                         ; $40ef: $f7
	di                                               ; $40f0: $f3
	di                                               ; $40f1: $f3
	di                                               ; $40f2: $f3
	di                                               ; $40f3: $f3
	pop  af                                          ; $40f4: $f1
	pop  af                                          ; $40f5: $f1
	adc  c                                           ; $40f6: $89
	ld   sp, hl                                      ; $40f7: $f9
	ld   hl, sp-$08                                  ; $40f8: $f8 $f8
	ld   [$08f8], sp                                 ; $40fa: $08 $f8 $08
	ld   hl, sp-$08                                  ; $40fd: $f8 $f8
	ld   hl, sp-$04                                  ; $40ff: $f8 $fc
	ld   h, h                                        ; $4101: $64
	db   $fc                                         ; $4102: $fc
	sbc  h                                           ; $4103: $9c
	ld   hl, sp-$78                                  ; $4104: $f8 $88
	ldh  a, [$b0]                                    ; $4106: $f0 $b0
	ret  nz                                          ; $4108: $c0

	ret  nz                                          ; $4109: $c0

	ret  nz                                          ; $410a: $c0

	ret  nz                                          ; $410b: $c0

	ret  nz                                          ; $410c: $c0

	ret  nz                                          ; $410d: $c0

	ldh  [$e0], a                                    ; $410e: $e0 $e0
	ldh  [$e0], a                                    ; $4110: $e0 $e0
	ldh  a, [$f0]                                    ; $4112: $f0 $f0
	ldh  a, [$f0]                                    ; $4114: $f0 $f0
	adc  b                                           ; $4116: $88
	ld   hl, sp-$08                                  ; $4117: $f8 $f8
	ld   hl, sp-$7a                                  ; $4119: $f8 $86
	cp   $82                                         ; $411b: $fe $82
	cp   $7e                                         ; $411d: $fe $7e
	ld   a, [hl]                                     ; $411f: $7e
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	ld   a, h                                        ; $4123: $7c
	nop                                              ; $4124: $00
	jr   c, jr_029_416c                              ; $4125: $38 $45

	jr   c, @+$03                                    ; $4127: $38 $01

	jr   c, jr_029_412b                              ; $4129: $38 $00

jr_029_412b:
	ld   a, a                                        ; $412b: $7f
	nop                                              ; $412c: $00
	ld   a, a                                        ; $412d: $7f
	nop                                              ; $412e: $00
	ld   a, $00                                      ; $412f: $3e $00
	nop                                              ; $4131: $00
	nop                                              ; $4132: $00
	ld   a, $00                                      ; $4133: $3e $00
	inc  a                                           ; $4135: $3c
	nop                                              ; $4136: $00
	inc  e                                           ; $4137: $1c
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	nop                                              ; $413a: $00
	nop                                              ; $413b: $00
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	nop                                              ; $4144: $00
	ld   [bc], a                                     ; $4145: $02
	nop                                              ; $4146: $00
	inc  bc                                          ; $4147: $03
	nop                                              ; $4148: $00
	inc  bc                                          ; $4149: $03
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
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	nop                                              ; $4158: $00
	nop                                              ; $4159: $00
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	ld   h, b                                        ; $4163: $60
	nop                                              ; $4164: $00
	ld   [hl], b                                     ; $4165: $70
	nop                                              ; $4166: $00
	ld   b, b                                        ; $4167: $40
	nop                                              ; $4168: $00
	nop                                              ; $4169: $00
	nop                                              ; $416a: $00
	nop                                              ; $416b: $00

jr_029_416c:
	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	daa                                              ; $4196: $27
	daa                                              ; $4197: $27
	jr   jr_029_41b9                                 ; $4198: $18 $1f

	rlca                                             ; $419a: $07
	ld   b, $0a                                      ; $419b: $06 $0a
	dec  c                                           ; $419d: $0d
	ld   a, [bc]                                     ; $419e: $0a
	dec  c                                           ; $419f: $0d
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	nop                                              ; $41b0: $00
	nop                                              ; $41b1: $00
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	ld   [hl], a                                     ; $41b4: $77
	ld   [hl], a                                     ; $41b5: $77
	adc  b                                           ; $41b6: $88
	rst  $38                                         ; $41b7: $ff
	inc  b                                           ; $41b8: $04

jr_029_41b9:
	rst  $38                                         ; $41b9: $ff

jr_029_41ba:
	ld   a, [bc]                                     ; $41ba: $0a
	rst  $38                                         ; $41bb: $ff
	ld   [hl], h                                     ; $41bc: $74
	cp   e                                           ; $41bd: $bb
	ld   a, [$007d]                                  ; $41be: $fa $7d $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	nop                                              ; $41ce: $00
	nop                                              ; $41cf: $00
	nop                                              ; $41d0: $00
	nop                                              ; $41d1: $00
	nop                                              ; $41d2: $00
	nop                                              ; $41d3: $00
	add  b                                           ; $41d4: $80
	add  b                                           ; $41d5: $80
	ld   b, b                                        ; $41d6: $40
	ret  nz                                          ; $41d7: $c0

	jr   nz, jr_029_41ba                             ; $41d8: $20 $e0

	sub  b                                           ; $41da: $90
	ld   [hl], b                                     ; $41db: $70
	ld   c, a                                        ; $41dc: $4f
	cp   a                                           ; $41dd: $bf
	inc  h                                           ; $41de: $24
	db   $fc                                         ; $41df: $fc
	db   $10                                         ; $41e0: $10
	rra                                              ; $41e1: $1f
	ld   [de], a                                     ; $41e2: $12
	rra                                              ; $41e3: $1f
	inc  l                                           ; $41e4: $2c
	ccf                                              ; $41e5: $3f
	dec  [hl]                                        ; $41e6: $35
	ccf                                              ; $41e7: $3f
	add  hl, hl                                      ; $41e8: $29
	cpl                                              ; $41e9: $2f
	dec  bc                                          ; $41ea: $0b
	rrca                                             ; $41eb: $0f
	dec  bc                                          ; $41ec: $0b
	rrca                                             ; $41ed: $0f
	dec  c                                           ; $41ee: $0d
	dec  c                                           ; $41ef: $0d
	add  hl, bc                                      ; $41f0: $09
	add  hl, bc                                      ; $41f1: $09
	nop                                              ; $41f2: $00
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	nop                                              ; $41f5: $00
	ld   bc, $0301                                   ; $41f6: $01 $01 $03
	ld   [bc], a                                     ; $41f9: $02
	inc  bc                                          ; $41fa: $03
	ld   [bc], a                                     ; $41fb: $02
	rlca                                             ; $41fc: $07
	inc  b                                           ; $41fd: $04
	rlca                                             ; $41fe: $07
	inc  b                                           ; $41ff: $04
	db   $fd                                         ; $4200: $fd
	ld   b, [hl]                                     ; $4201: $46
	db   $fd                                         ; $4202: $fd
	add  [hl]                                        ; $4203: $86
	cp   $ff                                         ; $4204: $fe $ff
	cp   $8d                                         ; $4206: $fe $8d

jr_029_4208:
	cp   $9f                                         ; $4208: $fe $9f
	rst  $38                                         ; $420a: $ff
	dec  [hl]                                        ; $420b: $35
	rst  $38                                         ; $420c: $ff
	adc  l                                           ; $420d: $8d
	rst  $38                                         ; $420e: $ff
	ld   bc, $01ff                                   ; $420f: $01 $ff $01
	rst  $38                                         ; $4212: $ff
	add  e                                           ; $4213: $83
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	jr   nz, jr_029_4208                             ; $4217: $20 $ef

	ld   sp, $3fe1                                   ; $4219: $31 $e1 $3f
	db   $e3                                         ; $421c: $e3
	ld   a, $e7                                      ; $421d: $3e $e7
	dec  a                                           ; $421f: $3d
	sbc  b                                           ; $4220: $98
	ld   hl, sp+$48                                  ; $4221: $f8 $48
	ld   hl, sp+$44                                  ; $4223: $f8 $44
	db   $fc                                         ; $4225: $fc
	inc  h                                           ; $4226: $24
	db   $fc                                         ; $4227: $fc
	inc  h                                           ; $4228: $24
	db   $fc                                         ; $4229: $fc
	inc  [hl]                                        ; $422a: $34
	db   $fc                                         ; $422b: $fc
	inc  [hl]                                        ; $422c: $34
	db   $fc                                         ; $422d: $fc
	inc  a                                           ; $422e: $3c
	db   $fc                                         ; $422f: $fc
	ld   a, b                                        ; $4230: $78
	add  sp, $7c                                     ; $4231: $e8 $7c
	db   $e4                                         ; $4233: $e4
	sbc  a                                           ; $4234: $9f
	sub  e                                           ; $4235: $93
	rst  $28                                         ; $4236: $ef
	db   $ed                                         ; $4237: $ed
	di                                               ; $4238: $f3
	ld   d, e                                        ; $4239: $53
	db   $fc                                         ; $423a: $fc
	ld   c, h                                        ; $423b: $4c
	db   $fc                                         ; $423c: $fc
	ld   b, h                                        ; $423d: $44
	cp   $86                                         ; $423e: $fe $86
	rlca                                             ; $4240: $07
	rlca                                             ; $4241: $07
	rrca                                             ; $4242: $0f
	ld   [$080f], sp                                 ; $4243: $08 $0f $08
	rrca                                             ; $4246: $0f
	ld   [$0707], sp                                 ; $4247: $08 $07 $07
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	ld   bc, $0301                                   ; $424c: $01 $01 $03
	inc  bc                                          ; $424f: $03
	rlca                                             ; $4250: $07
	rlca                                             ; $4251: $07
	rlca                                             ; $4252: $07
	rlca                                             ; $4253: $07
	rlca                                             ; $4254: $07
	rlca                                             ; $4255: $07
	inc  b                                           ; $4256: $04
	rlca                                             ; $4257: $07
	rlca                                             ; $4258: $07
	rlca                                             ; $4259: $07
	ld   [$080f], sp                                 ; $425a: $08 $0f $08
	rrca                                             ; $425d: $0f
	rrca                                             ; $425e: $0f
	rrca                                             ; $425f: $0f
	rst  $38                                         ; $4260: $ff
	ld   e, d                                        ; $4261: $5a
	rst  $38                                         ; $4262: $ff
	call nc, $ffff                                   ; $4263: $d4 $ff $ff
	rst  $38                                         ; $4266: $ff
	sub  l                                           ; $4267: $95
	rst  $38                                         ; $4268: $ff
	sub  h                                           ; $4269: $94
	rst  $38                                         ; $426a: $ff
	sbc  $ff                                         ; $426b: $de $ff
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	rst  $38                                         ; $426f: $ff
	ei                                               ; $4270: $fb
	ei                                               ; $4271: $fb
	di                                               ; $4272: $f3
	di                                               ; $4273: $f3
	db   $e3                                         ; $4274: $e3
	db   $e3                                         ; $4275: $e3
	ld   hl, $a0e1                                   ; $4276: $21 $e1 $a0
	ldh  [rAUD4LEN], a                               ; $4279: $e0 $20
	ldh  [rAUD4LEN], a                               ; $427b: $e0 $20
	ldh  [$e0], a                                    ; $427d: $e0 $e0
	ldh  [$fe], a                                    ; $427f: $e0 $fe
	ld   [bc], a                                     ; $4281: $02
	cp   $f2                                         ; $4282: $fe $f2
	cp   $1e                                         ; $4284: $fe $1e
	cp   $12                                         ; $4286: $fe $12
	db   $fc                                         ; $4288: $fc
	sub  h                                           ; $4289: $94
	ld   hl, sp-$08                                  ; $428a: $f8 $f8
	ret  nz                                          ; $428c: $c0

	ret  nz                                          ; $428d: $c0

	ldh  [$e0], a                                    ; $428e: $e0 $e0
	ldh  [$e0], a                                    ; $4290: $e0 $e0
	ldh  a, [$f0]                                    ; $4292: $f0 $f0
	db   $fc                                         ; $4294: $fc
	db   $fc                                         ; $4295: $fc
	call nz, $fefc                                   ; $4296: $c4 $fc $fe
	cp   $42                                         ; $4299: $fe $42
	ld   a, [hl]                                     ; $429b: $7e
	ld   b, d                                        ; $429c: $42
	ld   a, [hl]                                     ; $429d: $7e
	ld   a, [hl]                                     ; $429e: $7e
	ld   a, [hl]                                     ; $429f: $7e
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	nop                                              ; $42a6: $00
	ld   [hl], d                                     ; $42a7: $72
	nop                                              ; $42a8: $00
	ld   h, b                                        ; $42a9: $60
	adc  d                                           ; $42aa: $8a
	ld   b, b                                        ; $42ab: $40
	ld   [bc], a                                     ; $42ac: $02
	ld   [hl], b                                     ; $42ad: $70
	nop                                              ; $42ae: $00
	cp   $00                                         ; $42af: $fe $00
	cp   $00                                         ; $42b1: $fe $00
	ld   a, h                                        ; $42b3: $7c
	nop                                              ; $42b4: $00
	nop                                              ; $42b5: $00
	nop                                              ; $42b6: $00
	rra                                              ; $42b7: $1f
	nop                                              ; $42b8: $00
	ld   c, $00                                      ; $42b9: $0e $00
	nop                                              ; $42bb: $00
	nop                                              ; $42bc: $00
	nop                                              ; $42bd: $00
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	nop                                              ; $42c2: $00
	nop                                              ; $42c3: $00
	nop                                              ; $42c4: $00
	ldh  [rP1], a                                    ; $42c5: $e0 $00
	db   $ec                                         ; $42c7: $ec
	nop                                              ; $42c8: $00
	ld   l, b                                        ; $42c9: $68
	nop                                              ; $42ca: $00
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	nop                                              ; $42cd: $00
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	nop                                              ; $42d3: $00
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
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	nop                                              ; $42e6: $00
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
	daa                                              ; $42f6: $27
	daa                                              ; $42f7: $27
	jr   jr_029_4319                                 ; $42f8: $18 $1f

	rlca                                             ; $42fa: $07
	ld   b, $0a                                      ; $42fb: $06 $0a
	dec  c                                           ; $42fd: $0d
	ld   a, [bc]                                     ; $42fe: $0a
	dec  c                                           ; $42ff: $0d
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	nop                                              ; $4306: $00
	nop                                              ; $4307: $00
	nop                                              ; $4308: $00
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	nop                                              ; $430d: $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	ld   [hl], a                                     ; $4314: $77
	ld   [hl], a                                     ; $4315: $77
	adc  b                                           ; $4316: $88
	rst  $38                                         ; $4317: $ff
	inc  b                                           ; $4318: $04

jr_029_4319:
	rst  $38                                         ; $4319: $ff

jr_029_431a:
	ld   a, [bc]                                     ; $431a: $0a
	rst  $38                                         ; $431b: $ff
	ld   [hl], h                                     ; $431c: $74
	cp   e                                           ; $431d: $bb
	ld   a, [$007d]                                  ; $431e: $fa $7d $00
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	nop                                              ; $432b: $00
	nop                                              ; $432c: $00
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	nop                                              ; $4330: $00
	nop                                              ; $4331: $00
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	add  b                                           ; $4334: $80
	add  b                                           ; $4335: $80
	ld   b, b                                        ; $4336: $40
	ret  nz                                          ; $4337: $c0

	jr   nz, jr_029_431a                             ; $4338: $20 $e0

	sub  b                                           ; $433a: $90
	ld   [hl], b                                     ; $433b: $70
	ld   c, a                                        ; $433c: $4f
	cp   a                                           ; $433d: $bf
	inc  h                                           ; $433e: $24
	db   $fc                                         ; $433f: $fc
	db   $10                                         ; $4340: $10
	rra                                              ; $4341: $1f
	ld   [de], a                                     ; $4342: $12
	rra                                              ; $4343: $1f
	inc  l                                           ; $4344: $2c
	ccf                                              ; $4345: $3f
	dec  [hl]                                        ; $4346: $35
	ccf                                              ; $4347: $3f
	add  hl, hl                                      ; $4348: $29
	cpl                                              ; $4349: $2f
	dec  bc                                          ; $434a: $0b
	rrca                                             ; $434b: $0f
	dec  bc                                          ; $434c: $0b
	rrca                                             ; $434d: $0f
	dec  c                                           ; $434e: $0d
	dec  c                                           ; $434f: $0d
	add  hl, bc                                      ; $4350: $09
	add  hl, bc                                      ; $4351: $09
	nop                                              ; $4352: $00
	nop                                              ; $4353: $00
	nop                                              ; $4354: $00
	nop                                              ; $4355: $00
	ld   bc, $0301                                   ; $4356: $01 $01 $03
	ld   [bc], a                                     ; $4359: $02
	inc  bc                                          ; $435a: $03
	ld   [bc], a                                     ; $435b: $02
	rlca                                             ; $435c: $07
	inc  b                                           ; $435d: $04
	rlca                                             ; $435e: $07
	rlca                                             ; $435f: $07
	db   $fd                                         ; $4360: $fd
	ld   b, [hl]                                     ; $4361: $46
	db   $fd                                         ; $4362: $fd
	add  [hl]                                        ; $4363: $86
	cp   $ff                                         ; $4364: $fe $ff
	cp   $8d                                         ; $4366: $fe $8d

jr_029_4368:
	cp   $9f                                         ; $4368: $fe $9f
	rst  $38                                         ; $436a: $ff
	dec  [hl]                                        ; $436b: $35
	rst  $38                                         ; $436c: $ff
	adc  l                                           ; $436d: $8d
	rst  $38                                         ; $436e: $ff
	ld   bc, $01ff                                   ; $436f: $01 $ff $01
	rst  $38                                         ; $4372: $ff
	add  e                                           ; $4373: $83
	rst  $38                                         ; $4374: $ff
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	jr   nz, jr_029_4368                             ; $4377: $20 $ef

	ld   sp, $3fe1                                   ; $4379: $31 $e1 $3f
	db   $e3                                         ; $437c: $e3
	ld   a, $f7                                      ; $437d: $3e $f7
	dec  e                                           ; $437f: $1d
	sbc  b                                           ; $4380: $98
	ld   hl, sp+$48                                  ; $4381: $f8 $48
	ld   hl, sp+$44                                  ; $4383: $f8 $44
	db   $fc                                         ; $4385: $fc
	inc  h                                           ; $4386: $24
	db   $fc                                         ; $4387: $fc
	inc  h                                           ; $4388: $24
	db   $fc                                         ; $4389: $fc
	inc  [hl]                                        ; $438a: $34
	db   $fc                                         ; $438b: $fc
	inc  [hl]                                        ; $438c: $34
	db   $fc                                         ; $438d: $fc
	inc  a                                           ; $438e: $3c
	db   $fc                                         ; $438f: $fc
	ld   a, b                                        ; $4390: $78
	add  sp, $7c                                     ; $4391: $e8 $7c
	db   $e4                                         ; $4393: $e4
	sbc  $da                                         ; $4394: $de $da
	rst  $30                                         ; $4396: $f7
	or   l                                           ; $4397: $b5
	ei                                               ; $4398: $fb
	ld   c, e                                        ; $4399: $4b
	db   $fc                                         ; $439a: $fc
	ld   b, h                                        ; $439b: $44
	cp   $82                                         ; $439c: $fe $82
	cp   $02                                         ; $439e: $fe $02
	rrca                                             ; $43a0: $0f
	ld   [$080f], sp                                 ; $43a1: $08 $0f $08
	rrca                                             ; $43a4: $0f
	ld   [$0707], sp                                 ; $43a5: $08 $07 $07
	nop                                              ; $43a8: $00
	nop                                              ; $43a9: $00
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	ld   bc, $0301                                   ; $43ac: $01 $01 $03
	inc  bc                                          ; $43af: $03
	inc  bc                                          ; $43b0: $03
	inc  bc                                          ; $43b1: $03
	rlca                                             ; $43b2: $07
	rlca                                             ; $43b3: $07
	rlca                                             ; $43b4: $07
	rlca                                             ; $43b5: $07
	ld   [$0f0f], sp                                 ; $43b6: $08 $0f $0f
	rrca                                             ; $43b9: $0f
	db   $10                                         ; $43ba: $10
	rra                                              ; $43bb: $1f
	db   $10                                         ; $43bc: $10
	rra                                              ; $43bd: $1f
	rra                                              ; $43be: $1f
	rra                                              ; $43bf: $1f
	rst  $38                                         ; $43c0: $ff
	sbc  d                                           ; $43c1: $9a
	rst  $38                                         ; $43c2: $ff
	sub  h                                           ; $43c3: $94
	rst  $38                                         ; $43c4: $ff
	rst  $38                                         ; $43c5: $ff
	rst  $38                                         ; $43c6: $ff
	sub  h                                           ; $43c7: $94
	rst  $38                                         ; $43c8: $ff
	sub  h                                           ; $43c9: $94
	rst  $38                                         ; $43ca: $ff
	sbc  $ff                                         ; $43cb: $de $ff
	rst  $38                                         ; $43cd: $ff
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	ei                                               ; $43d0: $fb
	ei                                               ; $43d1: $fb
	di                                               ; $43d2: $f3
	di                                               ; $43d3: $f3
	pop  hl                                          ; $43d4: $e1
	pop  hl                                          ; $43d5: $e1
	ld   h, c                                        ; $43d6: $61
	pop  hl                                          ; $43d7: $e1
	ret  nz                                          ; $43d8: $c0

	ret  nz                                          ; $43d9: $c0

	ld   b, b                                        ; $43da: $40
	ret  nz                                          ; $43db: $c0

	ld   b, b                                        ; $43dc: $40
	ret  nz                                          ; $43dd: $c0

	ret  nz                                          ; $43de: $c0

	ret  nz                                          ; $43df: $c0

	cp   $72                                         ; $43e0: $fe $72
	cp   $8e                                         ; $43e2: $fe $8e
	cp   $8a                                         ; $43e4: $fe $8a
	db   $fc                                         ; $43e6: $fc
	adc  h                                           ; $43e7: $8c
	ldh  a, [$f0]                                    ; $43e8: $f0 $f0
	ret  nz                                          ; $43ea: $c0

	ret  nz                                          ; $43eb: $c0

	ldh  [$e0], a                                    ; $43ec: $e0 $e0
	ldh  [$e0], a                                    ; $43ee: $e0 $e0
	ldh  a, [$f0]                                    ; $43f0: $f0 $f0
	ldh  a, [$f0]                                    ; $43f2: $f0 $f0
	db   $fc                                         ; $43f4: $fc
	db   $fc                                         ; $43f5: $fc
	call nz, $fefc                                   ; $43f6: $c4 $fc $fe
	cp   $42                                         ; $43f9: $fe $42
	ld   a, [hl]                                     ; $43fb: $7e
	ld   b, d                                        ; $43fc: $42
	ld   a, [hl]                                     ; $43fd: $7e
	ld   a, [hl]                                     ; $43fe: $7e
	ld   a, [hl]                                     ; $43ff: $7e
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00
	ld   [hl], d                                     ; $4407: $72
	nop                                              ; $4408: $00
	ld   h, b                                        ; $4409: $60
	adc  d                                           ; $440a: $8a
	ld   b, b                                        ; $440b: $40
	ld   [bc], a                                     ; $440c: $02
	ld   [hl], b                                     ; $440d: $70
	nop                                              ; $440e: $00
	cp   $00                                         ; $440f: $fe $00
	cp   $00                                         ; $4411: $fe $00
	ld   a, h                                        ; $4413: $7c
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	rra                                              ; $4417: $1f
	nop                                              ; $4418: $00
	ld   c, $00                                      ; $4419: $0e $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	ld   [hl], b                                     ; $4423: $70
	nop                                              ; $4424: $00
	ld   [hl], h                                     ; $4425: $74
	nop                                              ; $4426: $00
	ld   [hl], b                                     ; $4427: $70
	nop                                              ; $4428: $00
	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	nop                                              ; $442b: $00
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
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
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	nop                                              ; $4447: $00
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	ld   bc, $0e01                                   ; $4452: $01 $01 $0e
	rrca                                             ; $4455: $0f
	db   $10                                         ; $4456: $10
	rra                                              ; $4457: $1f
	ld   a, h                                        ; $4458: $7c
	ld   a, e                                        ; $4459: $7b
	add  hl, de                                      ; $445a: $19
	rla                                              ; $445b: $17
	add  hl, hl                                      ; $445c: $29
	scf                                              ; $445d: $37
	inc  hl                                          ; $445e: $23
	ld   a, $00                                      ; $445f: $3e $00
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
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	nop                                              ; $4471: $00
	sbc  $de                                         ; $4472: $de $de
	ld   hl, $30ff                                   ; $4474: $21 $ff $30
	rst  $38                                         ; $4477: $ff
	xor  d                                           ; $4478: $aa
	db   $fd                                         ; $4479: $fd
	ld   d, c                                        ; $447a: $51
	xor  $e8                                         ; $447b: $ee $e8
	rst  $30                                         ; $447d: $f7
	or   $1b                                         ; $447e: $f6 $1b
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	nop                                              ; $4489: $00
	nop                                              ; $448a: $00
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	add  b                                           ; $4496: $80
	add  b                                           ; $4497: $80
	ld   b, b                                        ; $4498: $40
	ret  nz                                          ; $4499: $c0

	jr   nz, @-$1e                                   ; $449a: $20 $e0

	sub  b                                           ; $449c: $90
	ldh  a, [rSVBK]                                  ; $449d: $f0 $70
	ldh  a, [$2b]                                    ; $449f: $f0 $2b
	ccf                                              ; $44a1: $3f
	ld   d, a                                        ; $44a2: $57
	ld   a, [hl]                                     ; $44a3: $7e
	ld   d, a                                        ; $44a4: $57
	ld   a, [hl]                                     ; $44a5: $7e
	daa                                              ; $44a6: $27
	ld   a, $2f                                      ; $44a7: $3e $2f
	ld   a, $2f                                      ; $44a9: $3e $2f
	inc  a                                           ; $44ab: $3c
	rla                                              ; $44ac: $17
	inc  d                                           ; $44ad: $14
	ccf                                              ; $44ae: $3f
	ccf                                              ; $44af: $3f
	ld   a, a                                        ; $44b0: $7f
	ld   b, [hl]                                     ; $44b1: $46
	ld   a, a                                        ; $44b2: $7f
	ld   b, a                                        ; $44b3: $47
	ld   a, a                                        ; $44b4: $7f
	ld   b, d                                        ; $44b5: $42
	ccf                                              ; $44b6: $3f
	ld   [hl-], a                                    ; $44b7: $32
	rst  $38                                         ; $44b8: $ff
	db   $f4                                         ; $44b9: $f4
	rst  $38                                         ; $44ba: $ff
	adc  h                                           ; $44bb: $8c
	rst  $38                                         ; $44bc: $ff
	add  h                                           ; $44bd: $84
	rst  $38                                         ; $44be: $ff
	add  a                                           ; $44bf: $87
	push af                                          ; $44c0: $f5
	ei                                               ; $44c1: $fb
	pop  af                                          ; $44c2: $f1
	ccf                                              ; $44c3: $3f
	ld   hl, sp+$7f                                  ; $44c4: $f8 $7f
	ld   hl, sp-$51                                  ; $44c6: $f8 $af
	ld   hl, sp+$6f                                  ; $44c8: $f8 $6f

jr_029_44ca:
	db   $fc                                         ; $44ca: $fc
	rlca                                             ; $44cb: $07
	db   $fc                                         ; $44cc: $fc
	rlca                                             ; $44cd: $07
	cp   $03                                         ; $44ce: $fe $03
	rst  $38                                         ; $44d0: $ff
	adc  a                                           ; $44d1: $8f
	rst  $38                                         ; $44d2: $ff
	pop  af                                          ; $44d3: $f1
	rst  $38                                         ; $44d4: $ff
	rrca                                             ; $44d5: $0f
	rst  $38                                         ; $44d6: $ff
	dec  b                                           ; $44d7: $05
	rst  $38                                         ; $44d8: $ff
	dec  b                                           ; $44d9: $05
	rst  $38                                         ; $44da: $ff
	dec  c                                           ; $44db: $0d
	rst  $38                                         ; $44dc: $ff
	ld   de, $e1ff                                   ; $44dd: $11 $ff $e1
	jr   z, jr_029_44ca                              ; $44e0: $28 $e8

	db   $10                                         ; $44e2: $10
	ldh  a, [$90]                                    ; $44e3: $f0 $90
	ldh  a, [$90]                                    ; $44e5: $f0 $90
	ldh  a, [$d0]                                    ; $44e7: $f0 $d0
	ldh  a, [$d0]                                    ; $44e9: $f0 $d0
	ldh  a, [$b0]                                    ; $44eb: $f0 $b0
	or   b                                           ; $44ed: $b0
	or   b                                           ; $44ee: $b0
	or   b                                           ; $44ef: $b0
	ldh  [$e0], a                                    ; $44f0: $e0 $e0
	add  b                                           ; $44f2: $80
	add  b                                           ; $44f3: $80
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
	ld   a, a                                        ; $4500: $7f
	ld   a, h                                        ; $4501: $7c
	rlca                                             ; $4502: $07
	rlca                                             ; $4503: $07
	rlca                                             ; $4504: $07
	rlca                                             ; $4505: $07
	rrca                                             ; $4506: $0f
	ld   c, $0f                                      ; $4507: $0e $0f
	rrca                                             ; $4509: $0f
	rra                                              ; $450a: $1f
	rra                                              ; $450b: $1f
	ccf                                              ; $450c: $3f
	ccf                                              ; $450d: $3f
	ccf                                              ; $450e: $3f
	ccf                                              ; $450f: $3f
	ccf                                              ; $4510: $3f
	ccf                                              ; $4511: $3f
	ccf                                              ; $4512: $3f
	ccf                                              ; $4513: $3f
	ld   l, $3e                                      ; $4514: $2e $3e
	ld   sp, $6f3f                                   ; $4516: $31 $3f $6f
	ld   a, a                                        ; $4519: $7f
	pop  bc                                          ; $451a: $c1
	rst  $38                                         ; $451b: $ff
	add  c                                           ; $451c: $81
	rst  $38                                         ; $451d: $ff
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	cp   $0e                                         ; $4520: $fe $0e
	rst  $38                                         ; $4522: $ff
	pop  af                                          ; $4523: $f1
	rst  $38                                         ; $4524: $ff
	ld   b, c                                        ; $4525: $41
	cp   $22                                         ; $4526: $fe $22
	cp   $ae                                         ; $4528: $fe $ae
	cp   $fe                                         ; $452a: $fe $fe
	cp   $fe                                         ; $452c: $fe $fe
	ld   a, a                                        ; $452e: $7f
	ld   a, a                                        ; $452f: $7f
	ld   a, a                                        ; $4530: $7f
	ld   a, a                                        ; $4531: $7f
	ccf                                              ; $4532: $3f
	ccf                                              ; $4533: $3f
	jr   c, jr_029_4575                              ; $4534: $38 $3f

	dec  de                                          ; $4536: $1b
	rra                                              ; $4537: $1f
	inc  b                                           ; $4538: $04
	rlca                                             ; $4539: $07
	inc  b                                           ; $453a: $04
	rlca                                             ; $453b: $07
	ld   [bc], a                                     ; $453c: $02
	inc  bc                                          ; $453d: $03
	inc  bc                                          ; $453e: $03
	inc  bc                                          ; $453f: $03
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	nop                                              ; $4544: $00
	nop                                              ; $4545: $00
	nop                                              ; $4546: $00
	nop                                              ; $4547: $00
	nop                                              ; $4548: $00
	nop                                              ; $4549: $00
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	nop                                              ; $454d: $00
	nop                                              ; $454e: $00
	nop                                              ; $454f: $00
	add  b                                           ; $4550: $80
	add  b                                           ; $4551: $80
	add  b                                           ; $4552: $80
	add  b                                           ; $4553: $80
	ld   b, b                                        ; $4554: $40
	ret  nz                                          ; $4555: $c0

	ret  nz                                          ; $4556: $c0

	ret  nz                                          ; $4557: $c0

	ld   h, b                                        ; $4558: $60
	ldh  [rAUD1SWEEP], a                             ; $4559: $e0 $10
	ldh  a, [rAUD1SWEEP]                             ; $455b: $f0 $10
	ldh  a, [$f0]                                    ; $455d: $f0 $f0
	ldh  a, [rP1]                                    ; $455f: $f0 $00
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	ret  nz                                          ; $4563: $c0

	nop                                              ; $4564: $00
	add  b                                           ; $4565: $80
	ld   d, b                                        ; $4566: $50
	nop                                              ; $4567: $00
	db   $10                                         ; $4568: $10
	add  b                                           ; $4569: $80
	nop                                              ; $456a: $00
	ld   hl, sp+$00                                  ; $456b: $f8 $00
	ld   hl, sp+$00                                  ; $456d: $f8 $00
	db   $fc                                         ; $456f: $fc
	nop                                              ; $4570: $00
	ld   [hl], b                                     ; $4571: $70
	nop                                              ; $4572: $00
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00

jr_029_4575:
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	ld   bc, $0100                                   ; $4583: $01 $00 $01
	nop                                              ; $4586: $00
	ld   bc, $0100                                   ; $4587: $01 $00 $01
	nop                                              ; $458a: $00
	inc  bc                                          ; $458b: $03
	nop                                              ; $458c: $00
	inc  bc                                          ; $458d: $03
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	nop                                              ; $4590: $00
	add  hl, sp                                      ; $4591: $39
	nop                                              ; $4592: $00
	jr   c, jr_029_4595                              ; $4593: $38 $00

jr_029_4595:
	inc  a                                           ; $4595: $3c
	nop                                              ; $4596: $00
	inc  c                                           ; $4597: $0c
	nop                                              ; $4598: $00
	ld   [$7000], sp                                 ; $4599: $08 $00 $70
	nop                                              ; $459c: $00
	ld   a, b                                        ; $459d: $78
	nop                                              ; $459e: $00
	ld   a, b                                        ; $459f: $78
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	nop                                              ; $45a8: $00
	nop                                              ; $45a9: $00
	nop                                              ; $45aa: $00
	nop                                              ; $45ab: $00
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	nop                                              ; $45b1: $00
	ld   bc, $0e01                                   ; $45b2: $01 $01 $0e
	rrca                                             ; $45b5: $0f
	db   $10                                         ; $45b6: $10
	rra                                              ; $45b7: $1f
	ld   a, h                                        ; $45b8: $7c
	ld   a, e                                        ; $45b9: $7b
	add  hl, de                                      ; $45ba: $19
	rla                                              ; $45bb: $17
	add  hl, hl                                      ; $45bc: $29
	scf                                              ; $45bd: $37
	inc  hl                                          ; $45be: $23
	ld   a, $00                                      ; $45bf: $3e $00
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	nop                                              ; $45c4: $00
	nop                                              ; $45c5: $00
	nop                                              ; $45c6: $00
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	nop                                              ; $45c9: $00
	nop                                              ; $45ca: $00
	nop                                              ; $45cb: $00
	nop                                              ; $45cc: $00
	nop                                              ; $45cd: $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	sbc  $de                                         ; $45d2: $de $de
	ld   hl, $30ff                                   ; $45d4: $21 $ff $30
	rst  $38                                         ; $45d7: $ff
	xor  d                                           ; $45d8: $aa
	db   $fd                                         ; $45d9: $fd
	ld   d, c                                        ; $45da: $51
	xor  $e8                                         ; $45db: $ee $e8
	rst  $30                                         ; $45dd: $f7
	or   $1b                                         ; $45de: $f6 $1b
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	nop                                              ; $45e4: $00
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	nop                                              ; $45e9: $00
	nop                                              ; $45ea: $00
	nop                                              ; $45eb: $00
	nop                                              ; $45ec: $00
	nop                                              ; $45ed: $00
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	nop                                              ; $45f0: $00
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	nop                                              ; $45f4: $00
	nop                                              ; $45f5: $00
	add  b                                           ; $45f6: $80
	add  b                                           ; $45f7: $80
	ld   b, b                                        ; $45f8: $40
	ret  nz                                          ; $45f9: $c0

	jr   nz, @-$1e                                   ; $45fa: $20 $e0

	sub  b                                           ; $45fc: $90
	ldh  a, [rSVBK]                                  ; $45fd: $f0 $70
	ldh  a, [$2b]                                    ; $45ff: $f0 $2b
	ccf                                              ; $4601: $3f
	ld   d, a                                        ; $4602: $57
	ld   a, [hl]                                     ; $4603: $7e
	ld   d, a                                        ; $4604: $57
	ld   a, [hl]                                     ; $4605: $7e
	daa                                              ; $4606: $27
	ld   a, $2f                                      ; $4607: $3e $2f
	ld   a, $2f                                      ; $4609: $3e $2f
	inc  a                                           ; $460b: $3c
	rla                                              ; $460c: $17
	inc  d                                           ; $460d: $14
	ccf                                              ; $460e: $3f
	ccf                                              ; $460f: $3f
	ld   a, e                                        ; $4610: $7b
	ld   c, d                                        ; $4611: $4a
	ld   a, a                                        ; $4612: $7f
	ld   c, a                                        ; $4613: $4f
	ld   a, a                                        ; $4614: $7f
	ld   d, c                                        ; $4615: $51
	ld   a, a                                        ; $4616: $7f
	ld   h, b                                        ; $4617: $60
	ccf                                              ; $4618: $3f
	jr   nz, jr_029_463a                             ; $4619: $20 $1f

	db   $10                                         ; $461b: $10
	rra                                              ; $461c: $1f
	ld   de, $2e3f                                   ; $461d: $11 $3f $2e
	push af                                          ; $4620: $f5
	ei                                               ; $4621: $fb
	pop  af                                          ; $4622: $f1
	ccf                                              ; $4623: $3f
	ld   hl, sp+$7f                                  ; $4624: $f8 $7f
	ld   hl, sp-$51                                  ; $4626: $f8 $af
	ld   hl, sp+$6f                                  ; $4628: $f8 $6f

jr_029_462a:
	db   $fc                                         ; $462a: $fc
	rlca                                             ; $462b: $07
	db   $fc                                         ; $462c: $fc
	rlca                                             ; $462d: $07
	cp   $03                                         ; $462e: $fe $03
	rst  $38                                         ; $4630: $ff
	adc  a                                           ; $4631: $8f
	rst  $38                                         ; $4632: $ff
	pop  af                                          ; $4633: $f1
	rst  $38                                         ; $4634: $ff
	rra                                              ; $4635: $1f
	rst  $38                                         ; $4636: $ff
	ld   de, $11ff                                   ; $4637: $11 $ff $11

jr_029_463a:
	rst  $38                                         ; $463a: $ff
	ld   hl, $41ff                                   ; $463b: $21 $ff $41
	rst  $38                                         ; $463e: $ff
	add  c                                           ; $463f: $81
	jr   z, jr_029_462a                              ; $4640: $28 $e8

	db   $10                                         ; $4642: $10
	ldh  a, [$90]                                    ; $4643: $f0 $90
	ldh  a, [$90]                                    ; $4645: $f0 $90
	ldh  a, [$d0]                                    ; $4647: $f0 $d0
	ldh  a, [$d0]                                    ; $4649: $f0 $d0
	ldh  a, [$b0]                                    ; $464b: $f0 $b0
	or   b                                           ; $464d: $b0
	or   b                                           ; $464e: $b0
	or   b                                           ; $464f: $b0
	ldh  [$e0], a                                    ; $4650: $e0 $e0
	add  b                                           ; $4652: $80
	add  b                                           ; $4653: $80
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	ccf                                              ; $4660: $3f
	ld   [hl+], a                                    ; $4661: $22
	ccf                                              ; $4662: $3f
	daa                                              ; $4663: $27
	rra                                              ; $4664: $1f
	ld   e, $0f                                      ; $4665: $1e $0f
	ld   c, $0f                                      ; $4667: $0e $0f
	rrca                                             ; $4669: $0f
	rra                                              ; $466a: $1f
	rra                                              ; $466b: $1f
	rra                                              ; $466c: $1f
	rra                                              ; $466d: $1f
	ccf                                              ; $466e: $3f
	ccf                                              ; $466f: $3f
	ccf                                              ; $4670: $3f
	ccf                                              ; $4671: $3f
	ccf                                              ; $4672: $3f
	ccf                                              ; $4673: $3f
	cpl                                              ; $4674: $2f
	ccf                                              ; $4675: $3f
	ld   sp, $6f3f                                   ; $4676: $31 $3f $6f
	ld   a, a                                        ; $4679: $7f
	pop  bc                                          ; $467a: $c1
	rst  $38                                         ; $467b: $ff
	add  c                                           ; $467c: $81
	rst  $38                                         ; $467d: $ff
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	cp   $1e                                         ; $4680: $fe $1e
	rst  $38                                         ; $4682: $ff
	pop  af                                          ; $4683: $f1
	rst  $38                                         ; $4684: $ff
	add  c                                           ; $4685: $81
	cp   $42                                         ; $4686: $fe $42
	cp   $ee                                         ; $4688: $fe $ee
	cp   $fe                                         ; $468a: $fe $fe
	cp   $fe                                         ; $468c: $fe $fe
	rst  $38                                         ; $468e: $ff
	rst  $38                                         ; $468f: $ff
	cp   a                                           ; $4690: $bf
	cp   a                                           ; $4691: $bf
	ccf                                              ; $4692: $3f
	ccf                                              ; $4693: $3f
	jr   jr_029_46b5                                 ; $4694: $18 $1f

	dec  bc                                          ; $4696: $0b
	rrca                                             ; $4697: $0f
	inc  b                                           ; $4698: $04
	rlca                                             ; $4699: $07
	ld   [bc], a                                     ; $469a: $02
	inc  bc                                          ; $469b: $03
	ld   [bc], a                                     ; $469c: $02
	inc  bc                                          ; $469d: $03
	ld   bc, $0001                                   ; $469e: $01 $01 $00
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	nop                                              ; $46a4: $00
	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	nop                                              ; $46ac: $00
	nop                                              ; $46ad: $00
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	add  b                                           ; $46b0: $80
	add  b                                           ; $46b1: $80
	add  b                                           ; $46b2: $80
	add  b                                           ; $46b3: $80
	ld   b, b                                        ; $46b4: $40

jr_029_46b5:
	ret  nz                                          ; $46b5: $c0

	ret  nz                                          ; $46b6: $c0

	ret  nz                                          ; $46b7: $c0

	ld   h, b                                        ; $46b8: $60
	ldh  [rAUD1SWEEP], a                             ; $46b9: $e0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46bb: $f0 $10
	ldh  a, [$f0]                                    ; $46bd: $f0 $f0
	ldh  a, [rP1]                                    ; $46bf: $f0 $00
	nop                                              ; $46c1: $00
	nop                                              ; $46c2: $00
	ret  nz                                          ; $46c3: $c0

	nop                                              ; $46c4: $00
	add  b                                           ; $46c5: $80
	ld   d, b                                        ; $46c6: $50
	nop                                              ; $46c7: $00
	db   $10                                         ; $46c8: $10
	add  b                                           ; $46c9: $80
	nop                                              ; $46ca: $00
	ld   hl, sp+$00                                  ; $46cb: $f8 $00
	ld   hl, sp+$00                                  ; $46cd: $f8 $00
	db   $fc                                         ; $46cf: $fc
	nop                                              ; $46d0: $00
	ld   [hl], b                                     ; $46d1: $70
	nop                                              ; $46d2: $00
	nop                                              ; $46d3: $00
	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	nop                                              ; $46d6: $00
	nop                                              ; $46d7: $00
	nop                                              ; $46d8: $00
	nop                                              ; $46d9: $00
	nop                                              ; $46da: $00
	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	ld   bc, $0100                                   ; $46e3: $01 $00 $01
	nop                                              ; $46e6: $00
	ld   bc, $0100                                   ; $46e7: $01 $00 $01
	nop                                              ; $46ea: $00
	inc  bc                                          ; $46eb: $03
	nop                                              ; $46ec: $00
	inc  bc                                          ; $46ed: $03
	nop                                              ; $46ee: $00
	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	ld   sp, $3000                                   ; $46f1: $31 $00 $30
	nop                                              ; $46f4: $00
	jr   nz, jr_029_46f7                             ; $46f5: $20 $00

jr_029_46f7:
	nop                                              ; $46f7: $00
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	nop                                              ; $46fd: $00
	nop                                              ; $46fe: $00
	stop                                             ; $46ff: $10 $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	nop                                              ; $4705: $00
	nop                                              ; $4706: $00
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	nop                                              ; $4709: $00
	nop                                              ; $470a: $00
	nop                                              ; $470b: $00
	nop                                              ; $470c: $00
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	nop                                              ; $4710: $00
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	nop                                              ; $4713: $00
	ld   bc, $0201                                   ; $4714: $01 $01 $02
	inc  bc                                          ; $4717: $03
	rrca                                             ; $4718: $0f
	rrca                                             ; $4719: $0f
	inc  bc                                          ; $471a: $03
	ld   [bc], a                                     ; $471b: $02
	dec  b                                           ; $471c: $05
	ld   b, $04                                      ; $471d: $06 $04
	rlca                                             ; $471f: $07
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	nop                                              ; $4726: $00
	nop                                              ; $4727: $00
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	nop                                              ; $472c: $00
	nop                                              ; $472d: $00
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	nop                                              ; $4731: $00
	dec  sp                                          ; $4732: $3b
	dec  sp                                          ; $4733: $3b
	call nz, $06ff                                   ; $4734: $c4 $ff $06
	rst  $38                                         ; $4737: $ff
	or   l                                           ; $4738: $b5
	ld   a, a                                        ; $4739: $7f
	ccf                                              ; $473a: $3f
	rst  $38                                         ; $473b: $ff
	ld   a, a                                        ; $473c: $7f
	ret  nz                                          ; $473d: $c0

	ld   a, a                                        ; $473e: $7f
	rst  $38                                         ; $473f: $ff
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	nop                                              ; $474d: $00
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	nop                                              ; $4750: $00
	nop                                              ; $4751: $00
	ret  nz                                          ; $4752: $c0

	ret  nz                                          ; $4753: $c0

	jr   nz, @-$1e                                   ; $4754: $20 $e0

	db   $10                                         ; $4756: $10
	ldh  a, [rOBP0]                                  ; $4757: $f0 $48
	cp   b                                           ; $4759: $b8
	inc  h                                           ; $475a: $24
	call c, $fe92                                    ; $475b: $dc $92 $fe
	adc  $fe                                         ; $475e: $ce $fe
	dec  b                                           ; $4760: $05
	rlca                                             ; $4761: $07
	ld   a, [bc]                                     ; $4762: $0a
	rrca                                             ; $4763: $0f
	ld   a, [bc]                                     ; $4764: $0a
	rrca                                             ; $4765: $0f
	inc  b                                           ; $4766: $04
	rlca                                             ; $4767: $07
	dec  b                                           ; $4768: $05
	rlca                                             ; $4769: $07
	dec  b                                           ; $476a: $05
	rlca                                             ; $476b: $07
	ld   [bc], a                                     ; $476c: $02
	ld   [bc], a                                     ; $476d: $02
	ld   [bc], a                                     ; $476e: $02
	ld   [bc], a                                     ; $476f: $02
	dec  e                                           ; $4770: $1d
	dec  e                                           ; $4771: $1d
	ccf                                              ; $4772: $3f
	ld   [hl+], a                                    ; $4773: $22
	ccf                                              ; $4774: $3f
	ld   [hl+], a                                    ; $4775: $22
	ccf                                              ; $4776: $3f
	ld   [hl+], a                                    ; $4777: $22
	rra                                              ; $4778: $1f
	inc  e                                           ; $4779: $1c
	rlca                                             ; $477a: $07
	inc  b                                           ; $477b: $04
	rlca                                             ; $477c: $07
	inc  b                                           ; $477d: $04
	inc  bc                                          ; $477e: $03
	inc  bc                                          ; $477f: $03
	ld   a, a                                        ; $4780: $7f
	pop  hl                                          ; $4781: $e1
	rst  $38                                         ; $4782: $ff
	di                                               ; $4783: $f3
	rst  $38                                         ; $4784: $ff
	jp   nc, $b1ff                                   ; $4785: $d2 $ff $b1

	rst  $38                                         ; $4788: $ff
	add  b                                           ; $4789: $80
	rst  $38                                         ; $478a: $ff
	add  b                                           ; $478b: $80
	rst  $38                                         ; $478c: $ff
	adc  h                                           ; $478d: $8c
	rst  $38                                         ; $478e: $ff
	jp   z, $3fff                                    ; $478f: $ca $ff $3f

	rst  $38                                         ; $4792: $ff
	dec  h                                           ; $4793: $25
	rst  JumpTable                                         ; $4794: $df
	ld   h, l                                        ; $4795: $65
	adc  a                                           ; $4796: $8f
	ld   a, [$f49f]                                  ; $4797: $fa $9f $f4
	cp   a                                           ; $479a: $bf
	add  sp, -$01                                    ; $479b: $e8 $ff
	ret  nc                                          ; $479d: $d0

	rst  $38                                         ; $479e: $ff
	db   $fc                                         ; $479f: $fc
	db   $e4                                         ; $47a0: $e4
	db   $fc                                         ; $47a1: $fc
	ldh  [c], a                                      ; $47a2: $e2
	cp   [hl]                                        ; $47a3: $be
	jp   nc, $d2be                                   ; $47a4: $d2 $be $d2

	cp   [hl]                                        ; $47a7: $be
	jp   c, $da3e                                    ; $47a8: $da $3e $da

	ld   a, $d4                                      ; $47ab: $3e $d4
	ld   [hl], h                                     ; $47ad: $74
	db   $e4                                         ; $47ae: $e4
	ld   h, h                                        ; $47af: $64
	ldh  a, [$b0]                                    ; $47b0: $f0 $b0
	ld   hl, sp+$08                                  ; $47b2: $f8 $08
	db   $fc                                         ; $47b4: $fc
	inc  b                                           ; $47b5: $04
	db   $fc                                         ; $47b6: $fc
	inc  b                                           ; $47b7: $04
	cp   $72                                         ; $47b8: $fe $72
	cp   $8e                                         ; $47ba: $fe $8e
	cp   $8a                                         ; $47bc: $fe $8a
	cp   $8a                                         ; $47be: $fe $8a
	rlca                                             ; $47c0: $07
	inc  b                                           ; $47c1: $04
	rrca                                             ; $47c2: $0f
	ld   [$080f], sp                                 ; $47c3: $08 $0f $08
	rrca                                             ; $47c6: $0f
	ld   c, $0f                                      ; $47c7: $0e $0f
	rrca                                             ; $47c9: $0f
	rrca                                             ; $47ca: $0f
	rrca                                             ; $47cb: $0f
	rra                                              ; $47cc: $1f
	rra                                              ; $47cd: $1f
	rra                                              ; $47ce: $1f
	rra                                              ; $47cf: $1f
	rra                                              ; $47d0: $1f
	rra                                              ; $47d1: $1f
	rra                                              ; $47d2: $1f
	rra                                              ; $47d3: $1f
	ccf                                              ; $47d4: $3f
	ccf                                              ; $47d5: $3f
	ld   b, a                                        ; $47d6: $47
	ld   a, a                                        ; $47d7: $7f
	ld   a, [hl]                                     ; $47d8: $7e
	ld   a, [hl]                                     ; $47d9: $7e
	add  d                                           ; $47da: $82
	cp   $82                                         ; $47db: $fe $82
	cp   $fe                                         ; $47dd: $fe $fe
	cp   $ff                                         ; $47df: $fe $ff
	ld   h, a                                        ; $47e1: $67
	rst  $38                                         ; $47e2: $ff
	and  c                                           ; $47e3: $a1
	rst  $38                                         ; $47e4: $ff
	and  b                                           ; $47e5: $a0
	rst  $38                                         ; $47e6: $ff
	rst  $20                                         ; $47e7: $e7
	rst  $38                                         ; $47e8: $ff
	rst  $38                                         ; $47e9: $ff
	rst  $38                                         ; $47ea: $ff
	rst  $38                                         ; $47eb: $ff
	rst  $38                                         ; $47ec: $ff
	rst  $38                                         ; $47ed: $ff
	sbc  a                                           ; $47ee: $9f
	sbc  a                                           ; $47ef: $9f
	rrca                                             ; $47f0: $0f
	rrca                                             ; $47f1: $0f
	rlca                                             ; $47f2: $07
	rlca                                             ; $47f3: $07
	ld   b, $07                                      ; $47f4: $06 $07
	ld   [bc], a                                     ; $47f6: $02
	inc  bc                                          ; $47f7: $03
	ld   bc, $0001                                   ; $47f8: $01 $01 $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	db   $fc                                         ; $4800: $fc
	db   $fc                                         ; $4801: $fc
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	add  b                                           ; $4804: $80
	add  b                                           ; $4805: $80
	nop                                              ; $4806: $00
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	add  b                                           ; $480c: $80
	add  b                                           ; $480d: $80
	ret  nz                                          ; $480e: $c0

	ret  nz                                          ; $480f: $c0

	ldh  [$e0], a                                    ; $4810: $e0 $e0
	ldh  [$e0], a                                    ; $4812: $e0 $e0
	db   $10                                         ; $4814: $10
	ldh  a, [$f0]                                    ; $4815: $f0 $f0
	ldh  a, [rAUD2LOW]                               ; $4817: $f0 $18
	ld   hl, sp-$7c                                  ; $4819: $f8 $84
	db   $fc                                         ; $481b: $fc
	add  h                                           ; $481c: $84
	db   $fc                                         ; $481d: $fc
	ld   a, h                                        ; $481e: $7c
	ld   a, h                                        ; $481f: $7c
	nop                                              ; $4820: $00
	ld   e, $00                                      ; $4821: $1e $00
	inc  c                                           ; $4823: $0c
	ld   hl, $400c                                   ; $4824: $21 $0c $40
	ld   c, $00                                      ; $4827: $0e $00
	ld   a, a                                        ; $4829: $7f
	nop                                              ; $482a: $00
	ld   a, a                                        ; $482b: $7f
	nop                                              ; $482c: $00
	ld   [hl], e                                     ; $482d: $73
	nop                                              ; $482e: $00
	dec  [hl]                                        ; $482f: $35
	nop                                              ; $4830: $00
	nop                                              ; $4831: $00
	nop                                              ; $4832: $00
	jr   jr_029_4835                                 ; $4833: $18 $00

jr_029_4835:
	jr   jr_029_4837                                 ; $4835: $18 $00

jr_029_4837:
	nop                                              ; $4837: $00
	nop                                              ; $4838: $00
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	inc  e                                           ; $4843: $1c
	nop                                              ; $4844: $00
	inc  e                                           ; $4845: $1c
	nop                                              ; $4846: $00
	inc  e                                           ; $4847: $1c
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	nop                                              ; $4850: $00
	nop                                              ; $4851: $00
	nop                                              ; $4852: $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	nop                                              ; $485e: $00
	nop                                              ; $485f: $00
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	ld   b, b                                        ; $4863: $40
	ld   b, b                                        ; $4864: $40
	nop                                              ; $4865: $00
	ld   b, b                                        ; $4866: $40
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	ret  nz                                          ; $4869: $c0

	nop                                              ; $486a: $00
	ret  nz                                          ; $486b: $c0

	nop                                              ; $486c: $00
	add  b                                           ; $486d: $80
	nop                                              ; $486e: $00
	add  b                                           ; $486f: $80
	nop                                              ; $4870: $00
	nop                                              ; $4871: $00
	nop                                              ; $4872: $00
	nop                                              ; $4873: $00
	nop                                              ; $4874: $00
	nop                                              ; $4875: $00
	nop                                              ; $4876: $00
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	nop                                              ; $4879: $00
	nop                                              ; $487a: $00
	ld   [hl], b                                     ; $487b: $70
	nop                                              ; $487c: $00
	ld   [hl], h                                     ; $487d: $74
	nop                                              ; $487e: $00
	ld   [hl], h                                     ; $487f: $74
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00
	nop                                              ; $4886: $00
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	nop                                              ; $4889: $00
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	nop                                              ; $488f: $00
	nop                                              ; $4890: $00
	nop                                              ; $4891: $00
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	ld   bc, $0201                                   ; $4894: $01 $01 $02
	inc  bc                                          ; $4897: $03
	dec  b                                           ; $4898: $05
	rlca                                             ; $4899: $07
	dec  bc                                          ; $489a: $0b
	ld   a, [bc]                                     ; $489b: $0a
	dec  b                                           ; $489c: $05
	ld   b, $08                                      ; $489d: $06 $08
	rrca                                             ; $489f: $0f
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	nop                                              ; $48a4: $00
	nop                                              ; $48a5: $00
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	nop                                              ; $48a8: $00
	nop                                              ; $48a9: $00
	nop                                              ; $48aa: $00
	nop                                              ; $48ab: $00
	nop                                              ; $48ac: $00
	nop                                              ; $48ad: $00
	nop                                              ; $48ae: $00
	nop                                              ; $48af: $00
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	dec  sp                                          ; $48b2: $3b
	dec  sp                                          ; $48b3: $3b
	call nz, $06ff                                   ; $48b4: $c4 $ff $06
	rst  $38                                         ; $48b7: $ff
	or   l                                           ; $48b8: $b5
	ld   a, a                                        ; $48b9: $7f
	ccf                                              ; $48ba: $3f
	rst  $38                                         ; $48bb: $ff
	ld   a, a                                        ; $48bc: $7f
	ret  nz                                          ; $48bd: $c0

	ld   a, a                                        ; $48be: $7f
	rst  $38                                         ; $48bf: $ff
	nop                                              ; $48c0: $00
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00
	nop                                              ; $48c4: $00
	nop                                              ; $48c5: $00
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00
	nop                                              ; $48c8: $00
	nop                                              ; $48c9: $00
	nop                                              ; $48ca: $00
	nop                                              ; $48cb: $00
	nop                                              ; $48cc: $00
	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00
	nop                                              ; $48cf: $00
	nop                                              ; $48d0: $00
	nop                                              ; $48d1: $00
	ret  nz                                          ; $48d2: $c0

	ret  nz                                          ; $48d3: $c0

	jr   nz, @-$1e                                   ; $48d4: $20 $e0

	db   $10                                         ; $48d6: $10
	ldh  a, [rOBP0]                                  ; $48d7: $f0 $48
	cp   b                                           ; $48d9: $b8
	inc  [hl]                                        ; $48da: $34
	call c, $fc8c                                    ; $48db: $dc $8c $fc
	add  $fe                                         ; $48de: $c6 $fe
	add  hl, bc                                      ; $48e0: $09
	rrca                                             ; $48e1: $0f
	ld   a, [bc]                                     ; $48e2: $0a
	rrca                                             ; $48e3: $0f
	ld   a, [bc]                                     ; $48e4: $0a
	rrca                                             ; $48e5: $0f
	inc  b                                           ; $48e6: $04
	rlca                                             ; $48e7: $07
	ld   a, l                                        ; $48e8: $7d
	ld   a, a                                        ; $48e9: $7f
	db   $fd                                         ; $48ea: $fd
	add  a                                           ; $48eb: $87
	cp   $86                                         ; $48ec: $fe $86
	rst  $38                                         ; $48ee: $ff
	adc  c                                           ; $48ef: $89
	rst  $38                                         ; $48f0: $ff
	adc  d                                           ; $48f1: $8a
	ld   a, a                                        ; $48f2: $7f
	ld   [hl], d                                     ; $48f3: $72
	rrca                                             ; $48f4: $0f
	inc  c                                           ; $48f5: $0c
	rlca                                             ; $48f6: $07
	inc  b                                           ; $48f7: $04
	rlca                                             ; $48f8: $07
	inc  b                                           ; $48f9: $04
	rlca                                             ; $48fa: $07
	inc  b                                           ; $48fb: $04
	inc  bc                                          ; $48fc: $03
	inc  bc                                          ; $48fd: $03
	rlca                                             ; $48fe: $07
	inc  b                                           ; $48ff: $04
	ld   a, a                                        ; $4900: $7f
	pop  hl                                          ; $4901: $e1
	rst  $38                                         ; $4902: $ff
	di                                               ; $4903: $f3
	rst  $38                                         ; $4904: $ff
	jp   nc, $b1ff                                   ; $4905: $d2 $ff $b1

	rst  $38                                         ; $4908: $ff
	add  b                                           ; $4909: $80
	rst  $38                                         ; $490a: $ff
	add  b                                           ; $490b: $80
	rst  $38                                         ; $490c: $ff
	adc  h                                           ; $490d: $8c
	rst  $38                                         ; $490e: $ff
	jp   z, $3fff                                    ; $490f: $ca $ff $3f

	rst  $38                                         ; $4912: $ff
	ld   h, l                                        ; $4913: $65
	rst  ToBoot                                         ; $4914: $c7
	ld   a, l                                        ; $4915: $7d
	adc  a                                           ; $4916: $8f
	ld   a, [$f4bf]                                  ; $4917: $fa $bf $f4
	rst  $38                                         ; $491a: $ff
	ret  z                                           ; $491b: $c8

	rst  $38                                         ; $491c: $ff
	db   $fc                                         ; $491d: $fc
	rst  $38                                         ; $491e: $ff
	ldh  [c], a                                      ; $491f: $e2
	and  $be                                         ; $4920: $e6 $be
	ldh  [c], a                                      ; $4922: $e2
	cp   $d2                                         ; $4923: $fe $d2
	cp   [hl]                                        ; $4925: $be
	jp   nc, $dabe                                   ; $4926: $d2 $be $da

	ld   a, $da                                      ; $4929: $3e $da
	ld   a, $e4                                      ; $492b: $3e $e4
	inc  h                                           ; $492d: $24
	call nz, $f044                                   ; $492e: $c4 $44 $f0
	or   b                                           ; $4931: $b0
	ld   hl, sp+$08                                  ; $4932: $f8 $08
	db   $fc                                         ; $4934: $fc
	inc  b                                           ; $4935: $04
	db   $fc                                         ; $4936: $fc
	inc  b                                           ; $4937: $04
	cp   $72                                         ; $4938: $fe $72
	cp   $8e                                         ; $493a: $fe $8e
	cp   $8a                                         ; $493c: $fe $8a
	cp   $8a                                         ; $493e: $fe $8a
	rrca                                             ; $4940: $0f
	ld   [$0c0f], sp                                 ; $4941: $08 $0f $0c
	rrca                                             ; $4944: $0f
	rrca                                             ; $4945: $0f
	rrca                                             ; $4946: $0f
	rrca                                             ; $4947: $0f
	rra                                              ; $4948: $1f
	rra                                              ; $4949: $1f
	rra                                              ; $494a: $1f
	rra                                              ; $494b: $1f
	rra                                              ; $494c: $1f
	rra                                              ; $494d: $1f
	ccf                                              ; $494e: $3f
	ccf                                              ; $494f: $3f
	ccf                                              ; $4950: $3f
	ccf                                              ; $4951: $3f
	ld   a, $3e                                      ; $4952: $3e $3e
	ld   a, $3e                                      ; $4954: $3e $3e
	ld   b, [hl]                                     ; $4956: $46
	ld   a, [hl]                                     ; $4957: $7e
	ld   a, [hl]                                     ; $4958: $7e
	ld   a, [hl]                                     ; $4959: $7e
	add  d                                           ; $495a: $82
	cp   $82                                         ; $495b: $fe $82
	cp   $fe                                         ; $495d: $fe $fe
	cp   $ff                                         ; $495f: $fe $ff
	ld   d, c                                        ; $4961: $51
	rst  $38                                         ; $4962: $ff
	sub  b                                           ; $4963: $90
	rst  $38                                         ; $4964: $ff
	sbc  a                                           ; $4965: $9f
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	rst  $38                                         ; $4969: $ff
	rst  $38                                         ; $496a: $ff
	rst  $38                                         ; $496b: $ff
	cp   a                                           ; $496c: $bf
	cp   a                                           ; $496d: $bf
	rra                                              ; $496e: $1f
	rra                                              ; $496f: $1f
	rra                                              ; $4970: $1f
	rra                                              ; $4971: $1f
	rrca                                             ; $4972: $0f
	rrca                                             ; $4973: $0f
	ld   b, $07                                      ; $4974: $06 $07
	ld   [bc], a                                     ; $4976: $02
	inc  bc                                          ; $4977: $03
	ld   bc, $0001                                   ; $4978: $01 $01 $00
	nop                                              ; $497b: $00
	nop                                              ; $497c: $00
	nop                                              ; $497d: $00
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	ld   a, h                                        ; $4980: $7c
	ld   a, h                                        ; $4981: $7c
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
	add  b                                           ; $498c: $80
	add  b                                           ; $498d: $80
	add  b                                           ; $498e: $80
	add  b                                           ; $498f: $80
	ldh  [$e0], a                                    ; $4990: $e0 $e0
	ldh  [$e0], a                                    ; $4992: $e0 $e0
	db   $10                                         ; $4994: $10
	ldh  a, [$f0]                                    ; $4995: $f0 $f0
	ldh  a, [$08]                                    ; $4997: $f0 $08
	ld   hl, sp-$7c                                  ; $4999: $f8 $84
	db   $fc                                         ; $499b: $fc
	add  h                                           ; $499c: $84
	db   $fc                                         ; $499d: $fc
	ld   a, h                                        ; $499e: $7c
	ld   a, h                                        ; $499f: $7c
	nop                                              ; $49a0: $00
	ld   e, $00                                      ; $49a1: $1e $00
	inc  c                                           ; $49a3: $0c
	ld   hl, $400c                                   ; $49a4: $21 $0c $40
	ld   c, $00                                      ; $49a7: $0e $00
	ld   a, a                                        ; $49a9: $7f
	nop                                              ; $49aa: $00
	ld   a, a                                        ; $49ab: $7f
	nop                                              ; $49ac: $00
	ld   [hl], e                                     ; $49ad: $73
	nop                                              ; $49ae: $00
	dec  [hl]                                        ; $49af: $35
	nop                                              ; $49b0: $00
	nop                                              ; $49b1: $00
	nop                                              ; $49b2: $00
	jr   jr_029_49b5                                 ; $49b3: $18 $00

jr_029_49b5:
	nop                                              ; $49b5: $00
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	nop                                              ; $49b8: $00
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	nop                                              ; $49c5: $00
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	nop                                              ; $49ca: $00
	ld   a, b                                        ; $49cb: $78
	nop                                              ; $49cc: $00
	ld   a, b                                        ; $49cd: $78
	nop                                              ; $49ce: $00
	halt                                             ; $49cf: $76
	nop                                              ; $49d0: $00
	ld   [hl], h                                     ; $49d1: $74
	nop                                              ; $49d2: $00
	inc  c                                           ; $49d3: $0c
	nop                                              ; $49d4: $00
	nop                                              ; $49d5: $00
	nop                                              ; $49d6: $00
	nop                                              ; $49d7: $00
	nop                                              ; $49d8: $00
	nop                                              ; $49d9: $00
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	ld   b, b                                        ; $49e1: $40
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	ld   b, b                                        ; $49e4: $40
	nop                                              ; $49e5: $00
	ld   b, b                                        ; $49e6: $40
	nop                                              ; $49e7: $00
	nop                                              ; $49e8: $00
	ret  nz                                          ; $49e9: $c0

	nop                                              ; $49ea: $00
	ret  nz                                          ; $49eb: $c0

	nop                                              ; $49ec: $00
	ret  nz                                          ; $49ed: $c0

	nop                                              ; $49ee: $00
	add  b                                           ; $49ef: $80
	nop                                              ; $49f0: $00
	nop                                              ; $49f1: $00
	nop                                              ; $49f2: $00
	nop                                              ; $49f3: $00
	nop                                              ; $49f4: $00
	nop                                              ; $49f5: $00
	nop                                              ; $49f6: $00
	nop                                              ; $49f7: $00
	nop                                              ; $49f8: $00
	nop                                              ; $49f9: $00
	nop                                              ; $49fa: $00
	ld   [hl], b                                     ; $49fb: $70
	nop                                              ; $49fc: $00
	ld   [hl], h                                     ; $49fd: $74
	nop                                              ; $49fe: $00
	ld   [hl], h                                     ; $49ff: $74
	inc  bc                                          ; $4a00: $03
	inc  bc                                          ; $4a01: $03
	inc  e                                           ; $4a02: $1c
	rra                                              ; $4a03: $1f
	ld   h, b                                        ; $4a04: $60
	ld   a, a                                        ; $4a05: $7f
	or   b                                           ; $4a06: $b0
	cp   a                                           ; $4a07: $bf
	ld   b, b                                        ; $4a08: $40
	ld   a, a                                        ; $4a09: $7f
	sbc  h                                           ; $4a0a: $9c
	ei                                               ; $4a0b: $fb
	xor  c                                           ; $4a0c: $a9
	or   [hl]                                        ; $4a0d: $b6
	ld   b, e                                        ; $4a0e: $43
	ld   a, l                                        ; $4a0f: $7d
	add  h                                           ; $4a10: $84
	ei                                               ; $4a11: $fb
	adc  b                                           ; $4a12: $88
	rst  $38                                         ; $4a13: $ff
	or   d                                           ; $4a14: $b2
	rst  $38                                         ; $4a15: $ff
	call nc, $a4ff                                   ; $4a16: $d4 $ff $a4
	cp   a                                           ; $4a19: $bf
	jr   z, jr_029_4a5b                              ; $4a1a: $28 $3f

	jr   z, jr_029_4a5d                              ; $4a1c: $28 $3f

	jr   z, @+$41                                    ; $4a1e: $28 $3f

	db   $ec                                         ; $4a20: $ec
	db   $ec                                         ; $4a21: $ec
	inc  de                                          ; $4a22: $13
	rst  $38                                         ; $4a23: $ff
	nop                                              ; $4a24: $00
	rst  $38                                         ; $4a25: $ff
	nop                                              ; $4a26: $00
	rst  $38                                         ; $4a27: $ff
	db   $10                                         ; $4a28: $10
	rst  $38                                         ; $4a29: $ff
	ld   a, [hl+]                                    ; $4a2a: $2a
	db   $fd                                         ; $4a2b: $fd
	ld   de, $18ee                                   ; $4a2c: $11 $ee $18
	rst  $20                                         ; $4a2f: $e7
	ld   a, [bc]                                     ; $4a30: $0a
	rst  $30                                         ; $4a31: $f7
	ld   hl, $21ff                                   ; $4a32: $21 $ff $21
	rst  $38                                         ; $4a35: $ff
	or   b                                           ; $4a36: $b0
	rst  $38                                         ; $4a37: $ff
	ldh  a, [rIE]                                    ; $4a38: $f0 $ff
	ld   sp, hl                                      ; $4a3a: $f9
	adc  a                                           ; $4a3b: $8f
	db   $fd                                         ; $4a3c: $fd
	add  a                                           ; $4a3d: $87
	db   $fd                                         ; $4a3e: $fd
	rst  $38                                         ; $4a3f: $ff
	nop                                              ; $4a40: $00
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	jp   nz, $3cc2                                   ; $4a44: $c2 $c2 $3c

	db   $fc                                         ; $4a47: $fc
	inc  b                                           ; $4a48: $04
	db   $fc                                         ; $4a49: $fc
	ld   l, b                                        ; $4a4a: $68
	ld   hl, sp+$1c                                  ; $4a4b: $f8 $1c
	db   $fc                                         ; $4a4d: $fc
	adc  b                                           ; $4a4e: $88
	ld   hl, sp+$68                                  ; $4a4f: $f8 $68
	ld   hl, sp+$28                                  ; $4a51: $f8 $28
	add  sp, $1e                                     ; $4a53: $e8 $1e
	cp   $9f                                         ; $4a55: $fe $9f
	pop  af                                          ; $4a57: $f1
	sbc  a                                           ; $4a58: $9f
	pop  af                                          ; $4a59: $f1
	ld   e, a                                        ; $4a5a: $5f

jr_029_4a5b:
	pop  af                                          ; $4a5b: $f1
	ld   e, a                                        ; $4a5c: $5f

jr_029_4a5d:
	pop  af                                          ; $4a5d: $f1
	ld   a, $ee                                      ; $4a5e: $3e $ee
	dec  [hl]                                        ; $4a60: $35
	scf                                              ; $4a61: $37
	dec  h                                           ; $4a62: $25
	daa                                              ; $4a63: $27
	inc  bc                                          ; $4a64: $03
	inc  bc                                          ; $4a65: $03
	rlca                                             ; $4a66: $07
	dec  b                                           ; $4a67: $05
	rlca                                             ; $4a68: $07
	inc  b                                           ; $4a69: $04
	rlca                                             ; $4a6a: $07
	inc  b                                           ; $4a6b: $04
	rlca                                             ; $4a6c: $07
	inc  b                                           ; $4a6d: $04
	rlca                                             ; $4a6e: $07
	inc  b                                           ; $4a6f: $04
	rlca                                             ; $4a70: $07
	inc  b                                           ; $4a71: $04
	rrca                                             ; $4a72: $0f
	dec  c                                           ; $4a73: $0d
	rra                                              ; $4a74: $1f
	rra                                              ; $4a75: $1f

jr_029_4a76:
	cpl                                              ; $4a76: $2f
	ccf                                              ; $4a77: $3f

jr_029_4a78:
	ccf                                              ; $4a78: $3f
	ld   a, $43                                      ; $4a79: $3e $43
	ld   a, [hl]                                     ; $4a7b: $7e
	ld   b, e                                        ; $4a7c: $43
	ld   a, [hl]                                     ; $4a7d: $7e
	ld   a, a                                        ; $4a7e: $7f
	ld   a, a                                        ; $4a7f: $7f
	ld   b, $ff                                      ; $4a80: $06 $ff
	dec  b                                           ; $4a82: $05
	rst  $38                                         ; $4a83: $ff
	add  c                                           ; $4a84: $81
	rst  $38                                         ; $4a85: $ff
	cp   $7f                                         ; $4a86: $fe $7f
	ld   hl, sp+$2f                                  ; $4a88: $f8 $2f
	rst  $38                                         ; $4a8a: $ff
	ld   d, a                                        ; $4a8b: $57
	rst  $38                                         ; $4a8c: $ff
	dec  hl                                          ; $4a8d: $2b
	rst  $38                                         ; $4a8e: $ff
	cpl                                              ; $4a8f: $2f
	rst  $38                                         ; $4a90: $ff
	ld   sp, hl                                      ; $4a91: $f9
	scf                                              ; $4a92: $37
	rst  $30                                         ; $4a93: $f7
	jr   nz, jr_029_4a76                             ; $4a94: $20 $e0

	jr   nz, jr_029_4a78                             ; $4a96: $20 $e0

	jr   nz, @-$1e                                   ; $4a98: $20 $e0

	db   $10                                         ; $4a9a: $10
	ldh  a, [rAUD1SWEEP]                             ; $4a9b: $f0 $10
	ldh  a, [$e0]                                    ; $4a9d: $f0 $e0
	ldh  [$c8], a                                    ; $4a9f: $e0 $c8
	ld   hl, sp+$70                                  ; $4aa1: $f8 $70
	or   b                                           ; $4aa3: $b0
	ldh  a, [$90]                                    ; $4aa4: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $4aa6: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4aa8: $e0 $a0
	ldh  a, [$b0]                                    ; $4aaa: $f0 $b0
	ldh  a, [rSVBK]                                  ; $4aac: $f0 $70
	ld   hl, sp+$78                                  ; $4aae: $f8 $78
	ld   hl, sp-$08                                  ; $4ab0: $f8 $f8
	ld   hl, sp-$08                                  ; $4ab2: $f8 $f8
	ld   hl, sp-$08                                  ; $4ab4: $f8 $f8
	adc  b                                           ; $4ab6: $88
	ld   hl, sp-$04                                  ; $4ab7: $f8 $fc
	db   $fc                                         ; $4ab9: $fc
	add  h                                           ; $4aba: $84
	db   $fc                                         ; $4abb: $fc
	add  h                                           ; $4abc: $84
	db   $fc                                         ; $4abd: $fc
	db   $fc                                         ; $4abe: $fc
	db   $fc                                         ; $4abf: $fc
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	nop                                              ; $4ac9: $00
	nop                                              ; $4aca: $00
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	nop                                              ; $4ace: $00
	nop                                              ; $4acf: $00
	nop                                              ; $4ad0: $00
	nop                                              ; $4ad1: $00
	nop                                              ; $4ad2: $00
	nop                                              ; $4ad3: $00
	nop                                              ; $4ad4: $00
	nop                                              ; $4ad5: $00
	nop                                              ; $4ad6: $00
	nop                                              ; $4ad7: $00
	nop                                              ; $4ad8: $00
	ld   bc, $0100                                   ; $4ad9: $01 $00 $01
	nop                                              ; $4adc: $00
	ld   bc, $0000                                   ; $4add: $01 $00 $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	nop                                              ; $4ae8: $00
	nop                                              ; $4ae9: $00
	nop                                              ; $4aea: $00
	nop                                              ; $4aeb: $00
	nop                                              ; $4aec: $00
	nop                                              ; $4aed: $00
	nop                                              ; $4aee: $00
	nop                                              ; $4aef: $00
	nop                                              ; $4af0: $00
	nop                                              ; $4af1: $00
	nop                                              ; $4af2: $00
	nop                                              ; $4af3: $00
	nop                                              ; $4af4: $00
	nop                                              ; $4af5: $00
	nop                                              ; $4af6: $00
	nop                                              ; $4af7: $00
	nop                                              ; $4af8: $00
	nop                                              ; $4af9: $00
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	nop                                              ; $4afc: $00
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00
	nop                                              ; $4aff: $00
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	nop                                              ; $4b04: $00
	nop                                              ; $4b05: $00
	nop                                              ; $4b06: $00
	nop                                              ; $4b07: $00
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	nop                                              ; $4b0a: $00
	nop                                              ; $4b0b: $00
	inc  b                                           ; $4b0c: $04
	nop                                              ; $4b0d: $00
	ld   [$1003], sp                                 ; $4b0e: $08 $03 $10
	ld   b, $10                                      ; $4b11: $06 $10
	ld   c, $10                                      ; $4b13: $0e $10
	ld   c, $08                                      ; $4b15: $0e $08
	ld   b, $00                                      ; $4b17: $06 $00

jr_029_4b19:
	inc  bc                                          ; $4b19: $03
	nop                                              ; $4b1a: $00
	nop                                              ; $4b1b: $00
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	nop                                              ; $4b24: $00
	nop                                              ; $4b25: $00
	nop                                              ; $4b26: $00
	nop                                              ; $4b27: $00
	nop                                              ; $4b28: $00
	nop                                              ; $4b29: $00
	nop                                              ; $4b2a: $00
	nop                                              ; $4b2b: $00

jr_029_4b2c:
	nop                                              ; $4b2c: $00
	ldh  [rP1], a                                    ; $4b2d: $e0 $00
	add  b                                           ; $4b2f: $80
	nop                                              ; $4b30: $00
	nop                                              ; $4b31: $00
	nop                                              ; $4b32: $00
	nop                                              ; $4b33: $00
	nop                                              ; $4b34: $00
	nop                                              ; $4b35: $00
	nop                                              ; $4b36: $00
	nop                                              ; $4b37: $00
	nop                                              ; $4b38: $00
	add  b                                           ; $4b39: $80
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	nop                                              ; $4b42: $00
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	nop                                              ; $4b46: $00
	nop                                              ; $4b47: $00
	nop                                              ; $4b48: $00
	nop                                              ; $4b49: $00
	nop                                              ; $4b4a: $00
	nop                                              ; $4b4b: $00
	nop                                              ; $4b4c: $00
	nop                                              ; $4b4d: $00
	nop                                              ; $4b4e: $00
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00
	nop                                              ; $4b51: $00
	nop                                              ; $4b52: $00
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00

jr_029_4b57:
	ld   [bc], a                                     ; $4b57: $02
	nop                                              ; $4b58: $00
	inc  bc                                          ; $4b59: $03
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	nop                                              ; $4b5c: $00
	nop                                              ; $4b5d: $00
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	ld   [$0400], sp                                 ; $4b61: $08 $00 $04
	nop                                              ; $4b64: $00
	ld   b, $00                                      ; $4b65: $06 $00
	ld   h, e                                        ; $4b67: $63
	nop                                              ; $4b68: $00
	add  hl, de                                      ; $4b69: $19
	nop                                              ; $4b6a: $00
	ld   bc, $0000                                   ; $4b6b: $01 $00 $00
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	nop                                              ; $4b70: $00
	nop                                              ; $4b71: $00
	nop                                              ; $4b72: $00
	nop                                              ; $4b73: $00
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	ld   bc, $0400                                   ; $4b78: $01 $00 $04
	inc  bc                                          ; $4b7b: $03
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	jr   nz, jr_029_4b83                             ; $4b81: $20 $00

jr_029_4b83:
	ld   b, b                                        ; $4b83: $40
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	ld   b, b                                        ; $4b87: $40
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	jr   nz, jr_029_4b2c                             ; $4b8a: $20 $a0

	nop                                              ; $4b8c: $00
	add  b                                           ; $4b8d: $80
	add  b                                           ; $4b8e: $80
	ldh  [$c0], a                                    ; $4b8f: $e0 $c0
	jr   nz, jr_029_4bd3                             ; $4b91: $20 $40

	jr   nc, jr_029_4bd5                             ; $4b93: $30 $40

	jr   nc, jr_029_4b57                             ; $4b95: $30 $c0

	jr   nc, jr_029_4b19                             ; $4b97: $30 $80

	ld   h, b                                        ; $4b99: $60
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	nop                                              ; $4b9c: $00
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	ld   bc, $0100                                   ; $4ba1: $01 $00 $01
	nop                                              ; $4ba4: $00
	ld   [bc], a                                     ; $4ba5: $02
	nop                                              ; $4ba6: $00
	nop                                              ; $4ba7: $00
	nop                                              ; $4ba8: $00
	nop                                              ; $4ba9: $00
	nop                                              ; $4baa: $00
	nop                                              ; $4bab: $00
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	nop                                              ; $4bae: $00
	ld   bc, $0300                                   ; $4baf: $01 $00 $03
	ld   [bc], a                                     ; $4bb2: $02
	dec  b                                           ; $4bb3: $05
	inc  bc                                          ; $4bb4: $03
	inc  b                                           ; $4bb5: $04
	inc  bc                                          ; $4bb6: $03
	inc  b                                           ; $4bb7: $04
	ld   bc, $0003                                   ; $4bb8: $01 $03 $00
	ld   bc, $0000                                   ; $4bbb: $01 $00 $00
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	jr   nz, jr_029_4bc3                             ; $4bc1: $20 $00

jr_029_4bc3:
	stop                                             ; $4bc3: $10 $00
	stop                                             ; $4bc5: $10 $00
	jr   nc, jr_029_4bc9                             ; $4bc7: $30 $00

jr_029_4bc9:
	ld   h, b                                        ; $4bc9: $60
	nop                                              ; $4bca: $00
	ldh  [rLCDC], a                                  ; $4bcb: $e0 $40
	and  b                                           ; $4bcd: $a0
	ld   b, b                                        ; $4bce: $40
	or   b                                           ; $4bcf: $b0
	ld   l, h                                        ; $4bd0: $6c
	cp   h                                           ; $4bd1: $bc
	ld   h, [hl]                                     ; $4bd2: $66

jr_029_4bd3:
	cp   d                                           ; $4bd3: $ba
	halt                                             ; $4bd4: $76

jr_029_4bd5:
	ld   [$dae6], a                                  ; $4bd5: $ea $e6 $da
	db   $ec                                         ; $4bd8: $ec
	db   $fc                                         ; $4bd9: $fc
	nop                                              ; $4bda: $00
	ldh  [rP1], a                                    ; $4bdb: $e0 $00
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	inc  b                                           ; $4be0: $04
	inc  b                                           ; $4be1: $04
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	ld   [bc], a                                     ; $4be4: $02

jr_029_4be5:
	ld   [bc], a                                     ; $4be5: $02
	ld   [bc], a                                     ; $4be6: $02
	ld   [bc], a                                     ; $4be7: $02
	ld   [bc], a                                     ; $4be8: $02
	ld   [bc], a                                     ; $4be9: $02
	ld   [bc], a                                     ; $4bea: $02
	ld   [bc], a                                     ; $4beb: $02
	ld   [bc], a                                     ; $4bec: $02
	nop                                              ; $4bed: $00
	ld   [bc], a                                     ; $4bee: $02
	nop                                              ; $4bef: $00
	ld   [bc], a                                     ; $4bf0: $02
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	ld   [bc], a                                     ; $4bf3: $02
	jr   nz, jr_029_4bf8                             ; $4bf4: $20 $02

	db   $10                                         ; $4bf6: $10
	ld   [bc], a                                     ; $4bf7: $02

jr_029_4bf8:
	ld   [$0002], sp                                 ; $4bf8: $08 $02 $00
	ld   [bc], a                                     ; $4bfb: $02
	inc  b                                           ; $4bfc: $04
	ld   bc, $0100                                   ; $4bfd: $01 $00 $01
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00

jr_029_4c03:
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	add  b                                           ; $4c06: $80
	add  b                                           ; $4c07: $80
	add  b                                           ; $4c08: $80
	add  b                                           ; $4c09: $80
	add  b                                           ; $4c0a: $80
	add  b                                           ; $4c0b: $80
	add  b                                           ; $4c0c: $80
	ret  nz                                          ; $4c0d: $c0

	add  b                                           ; $4c0e: $80
	ret  nz                                          ; $4c0f: $c0

	add  b                                           ; $4c10: $80
	ret  nz                                          ; $4c11: $c0

	add  b                                           ; $4c12: $80
	ret  nz                                          ; $4c13: $c0

	add  b                                           ; $4c14: $80
	ret  nz                                          ; $4c15: $c0

	ld   b, b                                        ; $4c16: $40
	jr   nz, jr_029_4c59                             ; $4c17: $20 $40

	jr   nz, jr_029_4c5b                             ; $4c19: $20 $40

	jr   nz, jr_029_4c5d                             ; $4c1b: $20 $40

	jr   nc, jr_029_4c5f                             ; $4c1d: $30 $40

	or   b                                           ; $4c1f: $b0
	ld   h, b                                        ; $4c20: $60
	sub  b                                           ; $4c21: $90
	ld   h, b                                        ; $4c22: $60
	sub  b                                           ; $4c23: $90
	and  b                                           ; $4c24: $a0
	ld   d, b                                        ; $4c25: $50
	and  b                                           ; $4c26: $a0
	ld   d, b                                        ; $4c27: $50
	jr   z, jr_029_4c7a                              ; $4c28: $28 $50

	ld   l, b                                        ; $4c2a: $68
	db   $10                                         ; $4c2b: $10
	jr   nz, jr_029_4c4a                             ; $4c2c: $20 $1c

	inc  h                                           ; $4c2e: $24
	ld   a, [de]                                     ; $4c2f: $1a
	inc  [hl]                                        ; $4c30: $34
	dec  bc                                          ; $4c31: $0b
	ld   [hl-], a                                    ; $4c32: $32
	dec  c                                           ; $4c33: $0d
	ld   [de], a                                     ; $4c34: $12
	dec  l                                           ; $4c35: $2d
	inc  de                                          ; $4c36: $13
	cpl                                              ; $4c37: $2f
	rla                                              ; $4c38: $17
	dec  hl                                          ; $4c39: $2b
	rla                                              ; $4c3a: $17
	dec  hl                                          ; $4c3b: $2b
	rlca                                             ; $4c3c: $07
	dec  sp                                          ; $4c3d: $3b
	inc  bc                                          ; $4c3e: $03
	inc  h                                           ; $4c3f: $24
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

jr_029_4c4a:
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	nop                                              ; $4c50: $00
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	nop                                              ; $4c56: $00
	add  b                                           ; $4c57: $80
	nop                                              ; $4c58: $00

jr_029_4c59:
	add  b                                           ; $4c59: $80
	add  b                                           ; $4c5a: $80

jr_029_4c5b:
	ld   b, b                                        ; $4c5b: $40
	add  b                                           ; $4c5c: $80

jr_029_4c5d:
	ret  nz                                          ; $4c5d: $c0

	add  b                                           ; $4c5e: $80

jr_029_4c5f:
	ld   b, b                                        ; $4c5f: $40
	and  b                                           ; $4c60: $a0
	jr   nz, jr_029_4c03                             ; $4c61: $20 $a0

	jr   nz, jr_029_4be5                             ; $4c63: $20 $80

	ld   [de], a                                     ; $4c65: $12
	sub  b                                           ; $4c66: $90
	ld   d, d                                        ; $4c67: $52
	jr   nz, @+$44                                   ; $4c68: $20 $42

	jr   nz, jr_029_4cae                             ; $4c6a: $20 $42

	jr   z, jr_029_4cb0                              ; $4c6c: $28 $42

	jr   z, jr_029_4cb2                              ; $4c6e: $28 $42

	ld   a, [hl+]                                    ; $4c70: $2a
	ld   b, c                                        ; $4c71: $41
	ld   a, [hl+]                                    ; $4c72: $2a
	ld   d, c                                        ; $4c73: $51
	ld   a, [hl+]                                    ; $4c74: $2a
	dec  d                                           ; $4c75: $15
	ld   hl, $271e                                   ; $4c76: $21 $1e $27
	inc  e                                           ; $4c79: $1c

jr_029_4c7a:
	rrca                                             ; $4c7a: $0f
	rla                                              ; $4c7b: $17
	ld   c, $17                                      ; $4c7c: $0e $17
	ld   [bc], a                                     ; $4c7e: $02
	dec  d                                           ; $4c7f: $15
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
	add  b                                           ; $4c97: $80
	nop                                              ; $4c98: $00
	add  b                                           ; $4c99: $80
	nop                                              ; $4c9a: $00
	ret  nz                                          ; $4c9b: $c0

	add  b                                           ; $4c9c: $80
	ld   b, b                                        ; $4c9d: $40
	add  b                                           ; $4c9e: $80
	ld   b, b                                        ; $4c9f: $40
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	ld   [$0c00], sp                                 ; $4ca5: $08 $00 $0c
	nop                                              ; $4ca8: $00
	ld   [bc], a                                     ; $4ca9: $02
	nop                                              ; $4caa: $00
	ld   bc, $0100                                   ; $4cab: $01 $00 $01

jr_029_4cae:
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00

jr_029_4cb0:
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00

jr_029_4cb2:
	nop                                              ; $4cb2: $00
	nop                                              ; $4cb3: $00
	nop                                              ; $4cb4: $00
	ld   b, $00                                      ; $4cb5: $06 $00
	rrca                                             ; $4cb7: $0f
	ld   bc, $010e                                   ; $4cb8: $01 $0e $01
	ld   c, $00                                      ; $4cbb: $0e $00
	rrca                                             ; $4cbd: $0f
	nop                                              ; $4cbe: $00
	ld   bc, $0000                                   ; $4cbf: $01 $00 $00
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
	ret  nz                                          ; $4ccd: $c0

	nop                                              ; $4cce: $00
	ldh  [rP1], a                                    ; $4ccf: $e0 $00
	ldh  a, [rP1]                                    ; $4cd1: $f0 $00
	ld   hl, sp+$20                                  ; $4cd3: $f8 $20
	call c, $e418                                    ; $4cd5: $dc $18 $e4
	add  b                                           ; $4cd8: $80
	ld   a, b                                        ; $4cd9: $78
	add  b                                           ; $4cda: $80
	ld   l, h                                        ; $4cdb: $6c
	ldh  a, [$0a]                                    ; $4cdc: $f0 $0a
	nop                                              ; $4cde: $00
	ld   hl, sp+$00                                  ; $4cdf: $f8 $00
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
	jr   jr_029_4cf2                                 ; $4cf0: $18 $00

jr_029_4cf2:
	rlca                                             ; $4cf2: $07
	nop                                              ; $4cf3: $00
	inc  bc                                          ; $4cf4: $03
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
	jr   z, jr_029_4d2a                              ; $4d00: $28 $28

	ld   a, [de]                                     ; $4d02: $1a
	ld   a, [de]                                     ; $4d03: $1a
	ld   b, $06                                      ; $4d04: $06 $06
	inc  bc                                          ; $4d06: $03
	inc  bc                                          ; $4d07: $03
	jr   jr_029_4d22                                 ; $4d08: $18 $18

	rlca                                             ; $4d0a: $07
	rlca                                             ; $4d0b: $07
	ld   h, e                                        ; $4d0c: $63
	ld   h, e                                        ; $4d0d: $63
	jr   jr_029_4d28                                 ; $4d0e: $18 $18

	rra                                              ; $4d10: $1f
	rra                                              ; $4d11: $1f
	ld   b, $06                                      ; $4d12: $06 $06
	pop  hl                                          ; $4d14: $e1
	ld   bc, $00f8                                   ; $4d15: $01 $f8 $00
	ld   h, [hl]                                     ; $4d18: $66
	jr   jr_029_4d54                                 ; $4d19: $18 $39

	ld   b, $0f                                      ; $4d1b: $06 $0f
	inc  bc                                          ; $4d1d: $03
	inc  bc                                          ; $4d1e: $03
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00

jr_029_4d22:
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	nop                                              ; $4d26: $00
	nop                                              ; $4d27: $00

jr_029_4d28:
	ret  nz                                          ; $4d28: $c0

	nop                                              ; $4d29: $00

jr_029_4d2a:
	inc  de                                          ; $4d2a: $13
	nop                                              ; $4d2b: $00
	jr   jr_029_4d2e                                 ; $4d2c: $18 $00

jr_029_4d2e:
	ld   e, $18                                      ; $4d2e: $1e $18
	ld   a, a                                        ; $4d30: $7f
	ld   a, h                                        ; $4d31: $7c
	rra                                              ; $4d32: $1f
	rra                                              ; $4d33: $1f
	rrca                                             ; $4d34: $0f
	rrca                                             ; $4d35: $0f
	ld   c, a                                        ; $4d36: $4f
	ld   c, h                                        ; $4d37: $4c
	or   e                                           ; $4d38: $b3
	or   e                                           ; $4d39: $b3
	nop                                              ; $4d3a: $00
	nop                                              ; $4d3b: $00
	ldh  [$e0], a                                    ; $4d3c: $e0 $e0
	ld   a, b                                        ; $4d3e: $78
	ld   a, b                                        ; $4d3f: $78
	rrca                                             ; $4d40: $0f
	rrca                                             ; $4d41: $0f
	add  e                                           ; $4d42: $83
	add  e                                           ; $4d43: $83
	di                                               ; $4d44: $f3
	di                                               ; $4d45: $f3
	db   $fc                                         ; $4d46: $fc
	db   $fc                                         ; $4d47: $fc
	ccf                                              ; $4d48: $3f
	ccf                                              ; $4d49: $3f
	rst  $20                                         ; $4d4a: $e7
	daa                                              ; $4d4b: $27
	add  hl, sp                                      ; $4d4c: $39
	pop  bc                                          ; $4d4d: $c1
	rst  $38                                         ; $4d4e: $ff
	pop  bc                                          ; $4d4f: $c1
	rst  $38                                         ; $4d50: $ff
	ld   a, $3f                                      ; $4d51: $3e $3f
	inc  bc                                          ; $4d53: $03

jr_029_4d54:
	rrca                                             ; $4d54: $0f
	nop                                              ; $4d55: $00
	inc  bc                                          ; $4d56: $03
	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	nop                                              ; $4d66: $00
	nop                                              ; $4d67: $00

jr_029_4d68:
	nop                                              ; $4d68: $00
	nop                                              ; $4d69: $00
	nop                                              ; $4d6a: $00
	nop                                              ; $4d6b: $00
	ldh  [rP1], a                                    ; $4d6c: $e0 $00
	jr   nc, jr_029_4d70                             ; $4d6e: $30 $00

jr_029_4d70:
	inc  a                                           ; $4d70: $3c
	nop                                              ; $4d71: $00
	rst  $30                                         ; $4d72: $f7
	nop                                              ; $4d73: $00
	cp   $81                                         ; $4d74: $fe $81
	rst  $38                                         ; $4d76: $ff
	ld   c, b                                        ; $4d77: $48
	rst  $38                                         ; $4d78: $ff
	nop                                              ; $4d79: $00
	rst  $38                                         ; $4d7a: $ff
	ldh  [$3f], a                                    ; $4d7b: $e0 $3f
	jr   nc, jr_029_4d8e                             ; $4d7d: $30 $0f

	ld   c, $23                                      ; $4d7f: $0e $23
	inc  hl                                          ; $4d81: $23
	ret  nz                                          ; $4d82: $c0

	ret  nz                                          ; $4d83: $c0

	ld   hl, sp-$08                                  ; $4d84: $f8 $f8
	rst  $38                                         ; $4d86: $ff
	rst  $38                                         ; $4d87: $ff

jr_029_4d88:
	ccf                                              ; $4d88: $3f
	ccf                                              ; $4d89: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8a: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8b: $cf
	di                                               ; $4d8c: $f3
	di                                               ; $4d8d: $f3

jr_029_4d8e:
	cp   $fe                                         ; $4d8e: $fe $fe
	rst  $38                                         ; $4d90: $ff

jr_029_4d91:
	rrca                                             ; $4d91: $0f
	rst  $38                                         ; $4d92: $ff
	jp   Jump_029_7fff                               ; $4d93: $c3 $ff $7f


	rst  $38                                         ; $4d96: $ff
	rrca                                             ; $4d97: $0f
	rst  $38                                         ; $4d98: $ff
	ld   bc, $103f                                   ; $4d99: $01 $3f $10
	rrca                                             ; $4d9c: $0f
	nop                                              ; $4d9d: $00
	ld   bc, $0000                                   ; $4d9e: $01 $00 $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	ret  nz                                          ; $4da4: $c0

	nop                                              ; $4da5: $00
	jr   nc, jr_029_4d68                             ; $4da6: $30 $c0

	ret  c                                           ; $4da8: $d8

	jr   nz, jr_029_4d91                             ; $4da9: $20 $e6

	jr   @-$0b                                       ; $4dab: $18 $f3

	inc  c                                           ; $4dad: $0c
	db   $fd                                         ; $4dae: $fd
	ld   [bc], a                                     ; $4daf: $02
	rst  $38                                         ; $4db0: $ff
	nop                                              ; $4db1: $00
	rst  $38                                         ; $4db2: $ff
	add  b                                           ; $4db3: $80
	rst  $38                                         ; $4db4: $ff
	ldh  [$3f], a                                    ; $4db5: $e0 $3f
	jr   c, jr_029_4d88                              ; $4db7: $38 $cf

	call z, $ffff                                    ; $4db9: $cc $ff $ff
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	ccf                                              ; $4dc0: $3f
	ccf                                              ; $4dc1: $3f
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	rst  $38                                         ; $4dca: $ff
	rra                                              ; $4dcb: $1f
	ccf                                              ; $4dcc: $3f
	rst  ToBoot                                         ; $4dcd: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dce: $cf
	jr   nc, jr_029_4e42                             ; $4dcf: $30 $71

	ld   c, $06                                      ; $4dd1: $0e $06
	ld   bc, $00e0                                   ; $4dd3: $01 $e0 $00
	ccf                                              ; $4dd6: $3f
	nop                                              ; $4dd7: $00
	ld   bc, $0000                                   ; $4dd8: $01 $00 $00
	nop                                              ; $4ddb: $00
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
	nop                                              ; $4ded: $00
	add  b                                           ; $4dee: $80
	nop                                              ; $4def: $00
	ret  nz                                          ; $4df0: $c0

	nop                                              ; $4df1: $00
	ldh  [rP1], a                                    ; $4df2: $e0 $00
	ldh  a, [rP1]                                    ; $4df4: $f0 $00
	ld   hl, sp+$00                                  ; $4df6: $f8 $00
	db   $fc                                         ; $4df8: $fc
	nop                                              ; $4df9: $00
	cp   $00                                         ; $4dfa: $fe $00
	rst  $38                                         ; $4dfc: $ff
	add  b                                           ; $4dfd: $80
	rst  $38                                         ; $4dfe: $ff
	ldh  [$f7], a                                    ; $4dff: $e0 $f7
	ld   hl, sp-$04                                  ; $4e01: $f8 $fc
	rst  $38                                         ; $4e03: $ff
	cp   $ff                                         ; $4e04: $fe $ff
	rst  $38                                         ; $4e06: $ff
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	rst  $38                                         ; $4e0b: $ff
	rst  $38                                         ; $4e0c: $ff
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	rst  $38                                         ; $4e0f: $ff
	rst  $30                                         ; $4e10: $f7
	rlca                                             ; $4e11: $07
	cp   h                                           ; $4e12: $bc
	ld   b, b                                        ; $4e13: $40
	ld   c, a                                        ; $4e14: $4f
	jr   nc, jr_029_4e26                             ; $4e15: $30 $0f

	nop                                              ; $4e17: $00
	ld   hl, sp+$00                                  ; $4e18: $f8 $00
	rlca                                             ; $4e1a: $07
	nop                                              ; $4e1b: $00
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	ret  nz                                          ; $4e20: $c0

	nop                                              ; $4e21: $00
	ldh  [rP1], a                                    ; $4e22: $e0 $00
	ld   [hl], b                                     ; $4e24: $70
	add  b                                           ; $4e25: $80

jr_029_4e26:
	cp   b                                           ; $4e26: $b8
	ret  nz                                          ; $4e27: $c0

	call c, $fce0                                    ; $4e28: $dc $e0 $fc
	ldh  a, [$f6]                                    ; $4e2b: $f0 $f6
	ldh  a, [$79]                                    ; $4e2d: $f0 $79
	ld   a, b                                        ; $4e2f: $78
	ret  c                                           ; $4e30: $d8

	ret  c                                           ; $4e31: $d8

	ldh  a, [$f0]                                    ; $4e32: $f0 $f0
	cp   h                                           ; $4e34: $bc
	inc  a                                           ; $4e35: $3c
	jp   $fc03                                       ; $4e36: $c3 $03 $fc


	nop                                              ; $4e39: $00
	add  b                                           ; $4e3a: $80
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	nop                                              ; $4e3d: $00
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00

jr_029_4e42:
	nop                                              ; $4e42: $00
	ld   b, b                                        ; $4e43: $40
	jr   jr_029_4e66                                 ; $4e44: $18 $20

	inc  c                                           ; $4e46: $0c
	db   $10                                         ; $4e47: $10
	ld   b, $18                                      ; $4e48: $06 $18
	inc  bc                                          ; $4e4a: $03
	dec  c                                           ; $4e4b: $0d
	ld   bc, $0107                                   ; $4e4c: $01 $07 $01
	ld   [bc], a                                     ; $4e4f: $02
	nop                                              ; $4e50: $00
	ld   bc, $0000                                   ; $4e51: $01 $00 $00
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	nop                                              ; $4e56: $00
	nop                                              ; $4e57: $00
	nop                                              ; $4e58: $00
	nop                                              ; $4e59: $00
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00
	nop                                              ; $4e5c: $00
	ret  nz                                          ; $4e5d: $c0

	nop                                              ; $4e5e: $00
	ld   [hl], b                                     ; $4e5f: $70
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00

jr_029_4e66:
	nop                                              ; $4e66: $00
	inc  bc                                          ; $4e67: $03
	nop                                              ; $4e68: $00
	rrca                                             ; $4e69: $0f
	ld   [bc], a                                     ; $4e6a: $02
	dec  c                                           ; $4e6b: $0d
	add  [hl]                                        ; $4e6c: $86
	sbc  c                                           ; $4e6d: $99
	adc  $d1                                         ; $4e6e: $ce $d1
	xor  $51                                         ; $4e70: $ee $51
	ld   l, [hl]                                     ; $4e72: $6e
	sub  c                                           ; $4e73: $91
	inc  b                                           ; $4e74: $04
	ld   e, e                                        ; $4e75: $5b
	ld   b, $39                                      ; $4e76: $06 $39
	ld   [bc], a                                     ; $4e78: $02
	ld   e, l                                        ; $4e79: $5d
	ld   bc, $004e                                   ; $4e7a: $01 $4e $00
	jp   $e300                                       ; $4e7d: $c3 $00 $e3


	nop                                              ; $4e80: $00
	nop                                              ; $4e81: $00
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	nop                                              ; $4e86: $00
	ldh  a, [rP1]                                    ; $4e87: $f0 $00
	db   $fc                                         ; $4e89: $fc
	nop                                              ; $4e8a: $00
	add  $00                                         ; $4e8b: $c6 $00
	db   $e3                                         ; $4e8d: $e3
	nop                                              ; $4e8e: $00
	pop  bc                                          ; $4e8f: $c1
	nop                                              ; $4e90: $00
	add  c                                           ; $4e91: $81
	nop                                              ; $4e92: $00
	pop  bc                                          ; $4e93: $c1
	nop                                              ; $4e94: $00
	ret  nz                                          ; $4e95: $c0

	nop                                              ; $4e96: $00
	ret  nz                                          ; $4e97: $c0

	nop                                              ; $4e98: $00
	ret  nz                                          ; $4e99: $c0

	add  b                                           ; $4e9a: $80
	ld   h, b                                        ; $4e9b: $60
	add  b                                           ; $4e9c: $80
	ld   h, b                                        ; $4e9d: $60
	add  b                                           ; $4e9e: $80

jr_029_4e9f:
	ld   h, b                                        ; $4e9f: $60
	ret  nz                                          ; $4ea0: $c0

	jr   jr_029_4ea3                                 ; $4ea1: $18 $00

jr_029_4ea3:
	ld   l, h                                        ; $4ea3: $6c
	nop                                              ; $4ea4: $00
	dec  sp                                          ; $4ea5: $3b
	ld   [de], a                                     ; $4ea6: $12
	dec  c                                           ; $4ea7: $0d
	ld   [$0207], sp                                 ; $4ea8: $08 $07 $02
	ld   bc, $0000                                   ; $4eab: $01 $00 $00
	nop                                              ; $4eae: $00
	ld   a, [hl]                                     ; $4eaf: $7e
	nop                                              ; $4eb0: $00
	add  b                                           ; $4eb1: $80
	nop                                              ; $4eb2: $00
	add  b                                           ; $4eb3: $80
	nop                                              ; $4eb4: $00
	jr   jr_029_4ebb                                 ; $4eb5: $18 $04

	ld   a, d                                        ; $4eb7: $7a
	inc  c                                           ; $4eb8: $0c
	ld   [hl], d                                     ; $4eb9: $72
	inc  d                                           ; $4eba: $14

jr_029_4ebb:
	dec  hl                                          ; $4ebb: $2b
	nop                                              ; $4ebc: $00
	cp   c                                           ; $4ebd: $b9
	nop                                              ; $4ebe: $00
	ret  nz                                          ; $4ebf: $c0

	nop                                              ; $4ec0: $00
	ld   a, a                                        ; $4ec1: $7f
	jr   nz, jr_029_4e9f                             ; $4ec2: $20 $db

	ld   h, b                                        ; $4ec4: $60

jr_029_4ec5:
	sbc  b                                           ; $4ec5: $98
	ld   h, b                                        ; $4ec6: $60

jr_029_4ec7:
	sbc  h                                           ; $4ec7: $9c
	nop                                              ; $4ec8: $00
	ld   [hl], e                                     ; $4ec9: $73
	nop                                              ; $4eca: $00
	cp   l                                           ; $4ecb: $bd
	nop                                              ; $4ecc: $00
	ld   sp, hl                                      ; $4ecd: $f9
	nop                                              ; $4ece: $00
	ld   a, a                                        ; $4ecf: $7f
	ld   b, b                                        ; $4ed0: $40
	rra                                              ; $4ed1: $1f
	ld   h, b                                        ; $4ed2: $60
	adc  a                                           ; $4ed3: $8f
	db   $10                                         ; $4ed4: $10
	add  a                                           ; $4ed5: $87
	ld   c, $91                                      ; $4ed6: $0e $91
	rlca                                             ; $4ed8: $07
	jr   c, jr_029_4edc                              ; $4ed9: $38 $01

	adc  [hl]                                        ; $4edb: $8e

jr_029_4edc:
	ld   bc, $00e6                                   ; $4edc: $01 $e6 $00
	ld   sp, hl                                      ; $4edf: $f9
	nop                                              ; $4ee0: $00
	ldh  [rP1], a                                    ; $4ee1: $e0 $00
	ldh  a, [rP1]                                    ; $4ee3: $f0 $00
	ldh  a, [rP1]                                    ; $4ee5: $f0 $00
	ldh  a, [rP1]                                    ; $4ee7: $f0 $00
	ldh  a, [rP1]                                    ; $4ee9: $f0 $00
	ldh  a, [rP1]                                    ; $4eeb: $f0 $00
	ld   hl, sp+$00                                  ; $4eed: $f8 $00
	ld   hl, sp+$00                                  ; $4eef: $f8 $00
	ld   hl, sp+$70                                  ; $4ef1: $f8 $70
	adc  h                                           ; $4ef3: $8c
	jr   nc, jr_029_4ec5                             ; $4ef4: $30 $cf

	jr   nc, jr_029_4ec7                             ; $4ef6: $30 $cf

	inc  c                                           ; $4ef8: $0c
	di                                               ; $4ef9: $f3
	call nz, $e23b                                   ; $4efa: $c4 $3b $e2
	rra                                              ; $4efd: $1f
	ld   a, c                                        ; $4efe: $79
	sub  a                                           ; $4eff: $97
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	nop                                              ; $4f02: $00
	ld   b, b                                        ; $4f03: $40
	nop                                              ; $4f04: $00
	jr   nz, jr_029_4f07                             ; $4f05: $20 $00

jr_029_4f07:
	jr   nz, jr_029_4f09                             ; $4f07: $20 $00

jr_029_4f09:
	jr   nz, jr_029_4f0b                             ; $4f09: $20 $00

jr_029_4f0b:
	jr   nz, jr_029_4f0d                             ; $4f0b: $20 $00

jr_029_4f0d:
	jr   nc, jr_029_4f0f                             ; $4f0d: $30 $00

jr_029_4f0f:
	jr   nc, jr_029_4f11                             ; $4f0f: $30 $00

jr_029_4f11:
	jr   nc, jr_029_4f13                             ; $4f11: $30 $00

jr_029_4f13:
	ldh  a, [rP1]                                    ; $4f13: $f0 $00
	ldh  a, [rP1]                                    ; $4f15: $f0 $00
	ldh  a, [rP1]                                    ; $4f17: $f0 $00
	ldh  [rP1], a                                    ; $4f19: $e0 $00
	ldh  [rP1], a                                    ; $4f1b: $e0 $00
	add  b                                           ; $4f1d: $80
	nop                                              ; $4f1e: $00
	ret  nz                                          ; $4f1f: $c0

	nop                                              ; $4f20: $00
	ld   a, $00                                      ; $4f21: $3e $00
	ld   a, b                                        ; $4f23: $78
	nop                                              ; $4f24: $00
	ld   [hl], b                                     ; $4f25: $70
	nop                                              ; $4f26: $00
	ld   [hl], b                                     ; $4f27: $70
	nop                                              ; $4f28: $00
	inc  a                                           ; $4f29: $3c
	nop                                              ; $4f2a: $00
	ccf                                              ; $4f2b: $3f
	nop                                              ; $4f2c: $00
	rlca                                             ; $4f2d: $07
	nop                                              ; $4f2e: $00
	nop                                              ; $4f2f: $00
	nop                                              ; $4f30: $00
	nop                                              ; $4f31: $00
	nop                                              ; $4f32: $00
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00
	ld   a, b                                        ; $4f36: $78
	rlca                                             ; $4f37: $07
	nop                                              ; $4f38: $00
	nop                                              ; $4f39: $00
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	ld   bc, $0000                                   ; $4f3c: $01 $00 $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	ld   a, [hl]                                     ; $4f41: $7e
	ret  nz                                          ; $4f42: $c0

	rst  ToBoot                                         ; $4f43: $c7
	jr   c, jr_029_4f81                              ; $4f44: $38 $3b

	rlca                                             ; $4f46: $07
	rlca                                             ; $4f47: $07
	nop                                              ; $4f48: $00
	ret  nz                                          ; $4f49: $c0

	ret  nz                                          ; $4f4a: $c0

	ldh  a, [$60]                                    ; $4f4b: $f0 $60
	cp   $03                                         ; $4f4d: $fe $03
	inc  b                                           ; $4f4f: $04
	ld   bc, $0006                                   ; $4f50: $01 $06 $00
	ld   a, a                                        ; $4f53: $7f
	inc  bc                                          ; $4f54: $03
	inc  e                                           ; $4f55: $1c
	nop                                              ; $4f56: $00
	rst  $38                                         ; $4f57: $ff
	rlca                                             ; $4f58: $07
	nop                                              ; $4f59: $00
	nop                                              ; $4f5a: $00
	rrca                                             ; $4f5b: $0f
	rst  $38                                         ; $4f5c: $ff
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	ccf                                              ; $4f5f: $3f
	inc  a                                           ; $4f60: $3c
	ld   e, a                                        ; $4f61: $5f
	ld   e, $e5                                      ; $4f62: $1e $e5
	rlca                                             ; $4f64: $07
	ei                                               ; $4f65: $fb
	ld   bc, $e4fe                                   ; $4f66: $01 $fe $e4
	ei                                               ; $4f69: $fb
	ld   a, e                                        ; $4f6a: $7b
	ld   a, h                                        ; $4f6b: $7c
	ld   a, $3f                                      ; $4f6c: $3e $3f
	rst  ToBoot                                         ; $4f6e: $c7
	rra                                              ; $4f6f: $1f
	db   $fd                                         ; $4f70: $fd
	inc  bc                                          ; $4f71: $03
	ld   a, a                                        ; $4f72: $7f
	add  b                                           ; $4f73: $80
	adc  a                                           ; $4f74: $8f
	ld   [hl], b                                     ; $4f75: $70
	ld   a, a                                        ; $4f76: $7f
	add  e                                           ; $4f77: $83
	adc  a                                           ; $4f78: $8f
	ld   a, a                                        ; $4f79: $7f
	ccf                                              ; $4f7a: $3f
	pop  bc                                          ; $4f7b: $c1
	rst  ToBoot                                         ; $4f7c: $c7
	jr   c, jr_029_4f7f                              ; $4f7d: $38 $00

jr_029_4f7f:
	rst  $38                                         ; $4f7f: $ff
	add  b                                           ; $4f80: $80

jr_029_4f81:
	ret  nz                                          ; $4f81: $c0

	nop                                              ; $4f82: $00
	ldh  [$80], a                                    ; $4f83: $e0 $80
	ld   [hl], b                                     ; $4f85: $70
	ret  nz                                          ; $4f86: $c0

	ldh  a, [$e0]                                    ; $4f87: $f0 $e0
	ldh  a, [$b8]                                    ; $4f89: $f0 $b8
	ld   a, b                                        ; $4f8b: $78
	add  sp, $18                                     ; $4f8c: $e8 $18
	cp   b                                           ; $4f8e: $b8
	ret  nz                                          ; $4f8f: $c0

	cp   $f0                                         ; $4f90: $fe $f0
	or   $f6                                         ; $4f92: $f6 $f6
	sbc  h                                           ; $4f94: $9c
	inc  e                                           ; $4f95: $1c
	ld   b, $e6                                      ; $4f96: $06 $e6
	ret  nz                                          ; $4f98: $c0

	ret  z                                           ; $4f99: $c8

	db   $fc                                         ; $4f9a: $fc
	db   $fc                                         ; $4f9b: $fc
	ld   hl, sp+$0f                                  ; $4f9c: $f8 $0f
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	inc  bc                                          ; $4fa7: $03
	rlca                                             ; $4fa8: $07
	ld   [$110e], sp                                 ; $4fa9: $08 $0e $11
	jr   jr_029_4fd5                                 ; $4fac: $18 $27

	jr   nc, jr_029_4fbc                             ; $4fae: $30 $0c

	jr   nz, jr_029_500b                             ; $4fb0: $20 $59

	ld   h, b                                        ; $4fb2: $60
	ld   [de], a                                     ; $4fb3: $12
	ld   h, b                                        ; $4fb4: $60
	ld   [de], a                                     ; $4fb5: $12
	jr   nz, jr_029_4fca                             ; $4fb6: $20 $12

	jr   nz, jr_029_5014                             ; $4fb8: $20 $5a

	jr   nc, @+$4c                                   ; $4fba: $30 $4a

jr_029_4fbc:
	db   $10                                         ; $4fbc: $10
	add  sp, $00                                     ; $4fbd: $e8 $00
	db   $fc                                         ; $4fbf: $fc
	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	nop                                              ; $4fc6: $00
	ldh  a, [$80]                                    ; $4fc7: $f0 $80
	ld   a, h                                        ; $4fc9: $7c

jr_029_4fca:
	nop                                              ; $4fca: $00
	add  $00                                         ; $4fcb: $c6 $00
	db   $e3                                         ; $4fcd: $e3
	nop                                              ; $4fce: $00
	pop  bc                                          ; $4fcf: $c1
	nop                                              ; $4fd0: $00
	ld   bc, $0100                                   ; $4fd1: $01 $00 $01
	nop                                              ; $4fd4: $00

jr_029_4fd5:
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00
	nop                                              ; $4fd7: $00
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	ld   b, $00                                      ; $4fdb: $06 $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	ld   a, a                                        ; $4fe1: $7f
	ld   [hl], b                                     ; $4fe2: $70
	add  e                                           ; $4fe3: $83
	ld   h, b                                        ; $4fe4: $60

jr_029_4fe5:
	add  b                                           ; $4fe5: $80
	ld   b, b                                        ; $4fe6: $40

jr_029_4fe7:
	add  b                                           ; $4fe7: $80
	nop                                              ; $4fe8: $00
	ld   b, e                                        ; $4fe9: $43
	nop                                              ; $4fea: $00
	dec  a                                           ; $4feb: $3d
	nop                                              ; $4fec: $00
	ld   bc, $3f00                                   ; $4fed: $01 $00 $3f
	ld   b, b                                        ; $4ff0: $40
	ccf                                              ; $4ff1: $3f
	ld   h, b                                        ; $4ff2: $60
	sbc  a                                           ; $4ff3: $9f
	db   $10                                         ; $4ff4: $10
	adc  a                                           ; $4ff5: $8f
	inc  c                                           ; $4ff6: $0c
	sub  e                                           ; $4ff7: $93
	rlca                                             ; $4ff8: $07
	jr   c, @+$03                                    ; $4ff9: $38 $01

	ld   c, $01                                      ; $4ffb: $0e $01
	ld   b, [hl]                                     ; $4ffd: $46
	nop                                              ; $4ffe: $00
	add  hl, sp                                      ; $4fff: $39
	nop                                              ; $5000: $00
	ldh  [rP1], a                                    ; $5001: $e0 $00
	ldh  a, [rP1]                                    ; $5003: $f0 $00
	ldh  a, [rP1]                                    ; $5005: $f0 $00
	ldh  a, [rP1]                                    ; $5007: $f0 $00
	ldh  a, [rP1]                                    ; $5009: $f0 $00

jr_029_500b:
	ldh  a, [rP1]                                    ; $500b: $f0 $00
	ld   hl, sp+$00                                  ; $500d: $f8 $00
	ld   hl, sp+$00                                  ; $500f: $f8 $00
	ld   hl, sp+$70                                  ; $5011: $f8 $70
	adc  h                                           ; $5013: $8c

jr_029_5014:
	jr   nc, jr_029_4fe5                             ; $5014: $30 $cf

	jr   nc, jr_029_4fe7                             ; $5016: $30 $cf

	inc  c                                           ; $5018: $0c
	di                                               ; $5019: $f3
	add  h                                           ; $501a: $84
	ld   a, e                                        ; $501b: $7b
	ldh  [$1f], a                                    ; $501c: $e0 $1f
	ld   a, b                                        ; $501e: $78
	add  l                                           ; $501f: $85
	nop                                              ; $5020: $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	ld   b, b                                        ; $5023: $40
	nop                                              ; $5024: $00
	jr   nz, jr_029_5027                             ; $5025: $20 $00

jr_029_5027:
	jr   nz, jr_029_5029                             ; $5027: $20 $00

jr_029_5029:
	jr   nz, jr_029_502b                             ; $5029: $20 $00

jr_029_502b:
	jr   nz, jr_029_502d                             ; $502b: $20 $00

jr_029_502d:
	jr   nc, jr_029_502f                             ; $502d: $30 $00

jr_029_502f:
	jr   nc, jr_029_5031                             ; $502f: $30 $00

jr_029_5031:
	jr   nc, jr_029_5033                             ; $5031: $30 $00

jr_029_5033:
	ldh  a, [rP1]                                    ; $5033: $f0 $00
	ldh  a, [rP1]                                    ; $5035: $f0 $00
	ldh  a, [rP1]                                    ; $5037: $f0 $00
	ldh  [rP1], a                                    ; $5039: $e0 $00
	ldh  [rP1], a                                    ; $503b: $e0 $00
	add  b                                           ; $503d: $80
	nop                                              ; $503e: $00
	ret  nz                                          ; $503f: $c0

	nop                                              ; $5040: $00
	ld   e, $00                                      ; $5041: $1e $00
	rlca                                             ; $5043: $07
	nop                                              ; $5044: $00
	inc  bc                                          ; $5045: $03
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	nop                                              ; $5048: $00
	ret  nz                                          ; $5049: $c0

	nop                                              ; $504a: $00
	ld   hl, sp+$00                                  ; $504b: $f8 $00
	ld   e, $03                                      ; $504d: $1e $03
	inc  b                                           ; $504f: $04
	ld   bc, $0006                                   ; $5050: $01 $06 $00
	ld   a, a                                        ; $5053: $7f
	nop                                              ; $5054: $00
	rra                                              ; $5055: $1f
	nop                                              ; $5056: $00
	inc  bc                                          ; $5057: $03
	nop                                              ; $5058: $00
	jr   nc, jr_029_505b                             ; $5059: $30 $00

jr_029_505b:
	rrca                                             ; $505b: $0f
	rst  $38                                         ; $505c: $ff
	nop                                              ; $505d: $00

jr_029_505e:
	nop                                              ; $505e: $00
	ccf                                              ; $505f: $3f
	jr   c, jr_029_50a9                              ; $5060: $38 $47

	inc  e                                           ; $5062: $1c
	pop  hl                                          ; $5063: $e1
	inc  b                                           ; $5064: $04
	ld   hl, sp+$00                                  ; $5065: $f8 $00
	cp   $00                                         ; $5067: $fe $00
	ld   a, a                                        ; $5069: $7f
	nop                                              ; $506a: $00
	dec  a                                           ; $506b: $3d
	nop                                              ; $506c: $00
	ld   bc, $1cc0                                   ; $506d: $01 $c0 $1c
	ld   a, b                                        ; $5070: $78
	add  [hl]                                        ; $5071: $86
	inc  c                                           ; $5072: $0c
	db   $d3                                         ; $5073: $d3
	rlca                                             ; $5074: $07
	adc  b                                           ; $5075: $88
	nop                                              ; $5076: $00
	add  e                                           ; $5077: $83
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	ld   [bc], a                                     ; $507a: $02
	ld   hl, sp-$40                                  ; $507b: $f8 $c0
	ccf                                              ; $507d: $3f
	nop                                              ; $507e: $00
	rst  $38                                         ; $507f: $ff
	nop                                              ; $5080: $00
	ret  nz                                          ; $5081: $c0

	nop                                              ; $5082: $00
	ldh  [rP1], a                                    ; $5083: $e0 $00
	ld   [hl], b                                     ; $5085: $70
	nop                                              ; $5086: $00
	jr   nc, jr_029_5089                             ; $5087: $30 $00

jr_029_5089:
	sub  b                                           ; $5089: $90
	nop                                              ; $508a: $00
	ret  nz                                          ; $508b: $c0

	jr   nz, jr_029_505e                             ; $508c: $20 $d0

	db   $10                                         ; $508e: $10
	add  sp, $00                                     ; $508f: $e8 $00
	jr   jr_029_5093                                 ; $5091: $18 $00

jr_029_5093:
	inc  b                                           ; $5093: $04
	add  b                                           ; $5094: $80
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	ldh  [c], a                                      ; $5097: $e2
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00

jr_029_509b:
	nop                                              ; $509b: $00
	ldh  a, [rIF]                                    ; $509c: $f0 $0f
	nop                                              ; $509e: $00
	ld   hl, sp+$00                                  ; $509f: $f8 $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	nop                                              ; $50a8: $00

jr_029_50a9:
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	inc  bc                                          ; $50b3: $03
	nop                                              ; $50b4: $00
	rrca                                             ; $50b5: $0f
	nop                                              ; $50b6: $00
	rra                                              ; $50b7: $1f
	nop                                              ; $50b8: $00
	rra                                              ; $50b9: $1f
	nop                                              ; $50ba: $00
	dec  bc                                          ; $50bb: $0b
	nop                                              ; $50bc: $00
	inc  bc                                          ; $50bd: $03
	nop                                              ; $50be: $00
	ld   bc, $0000                                   ; $50bf: $01 $00 $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	nop                                              ; $50ce: $00
	nop                                              ; $50cf: $00
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	nop                                              ; $50d2: $00
	ret  nz                                          ; $50d3: $c0

	nop                                              ; $50d4: $00
	ldh  [rP1], a                                    ; $50d5: $e0 $00
	ldh  a, [$c0]                                    ; $50d7: $f0 $c0
	jr   c, jr_029_509b                              ; $50d9: $38 $c0

	jr   c, jr_029_50dd                              ; $50db: $38 $00

jr_029_50dd:
	ld   hl, sp+$00                                  ; $50dd: $f8 $00
	ldh  a, [rP1]                                    ; $50df: $f0 $00
	ld   a, l                                        ; $50e1: $7d
	nop                                              ; $50e2: $00
	ld   a, d                                        ; $50e3: $7a
	nop                                              ; $50e4: $00
	add  sp, $00                                     ; $50e5: $e8 $00
	call z, Call_029_7300                            ; $50e7: $cc $00 $73
	nop                                              ; $50ea: $00
	dec  e                                           ; $50eb: $1d
	nop                                              ; $50ec: $00
	ld   bc, $e800                                   ; $50ed: $01 $00 $e8
	nop                                              ; $50f0: $00
	ccf                                              ; $50f1: $3f
	nop                                              ; $50f2: $00
	rra                                              ; $50f3: $1f
	rlca                                             ; $50f4: $07
	ld   [$130c], sp                                 ; $50f5: $08 $0c $13
	dec  c                                           ; $50f8: $0d
	ld   [hl-], a                                    ; $50f9: $32
	rlca                                             ; $50fa: $07
	jr   c, jr_029_50fd                              ; $50fb: $38 $00

jr_029_50fd:
	rra                                              ; $50fd: $1f
	nop                                              ; $50fe: $00
	rrca                                             ; $50ff: $0f
	nop                                              ; $5100: $00
	ret  nz                                          ; $5101: $c0

	nop                                              ; $5102: $00
	ldh  [rP1], a                                    ; $5103: $e0 $00
	ldh  a, [rP1]                                    ; $5105: $f0 $00
	cp   $00                                         ; $5107: $fe $00
	rst  $38                                         ; $5109: $ff
	nop                                              ; $510a: $00
	ld   sp, hl                                      ; $510b: $f9
	jr   nz, @-$26                                   ; $510c: $20 $d8

	db   $10                                         ; $510e: $10
	add  sp, $00                                     ; $510f: $e8 $00
	db   $fc                                         ; $5111: $fc
	nop                                              ; $5112: $00
	db   $fc                                         ; $5113: $fc
	xor  b                                           ; $5114: $a8
	ld   d, h                                        ; $5115: $54
	jr   @-$1a                                       ; $5116: $18 $e4

	nop                                              ; $5118: $00
	ld   hl, sp-$80                                  ; $5119: $f8 $80
	ld   l, [hl]                                     ; $511b: $6e
	ldh  a, [rIF]                                    ; $511c: $f0 $0f
	nop                                              ; $511e: $00
	ld   hl, sp+$00                                  ; $511f: $f8 $00
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	rra                                              ; $5123: $1f
	nop                                              ; $5124: $00
	ld   h, b                                        ; $5125: $60
	nop                                              ; $5126: $00
	ld   b, e                                        ; $5127: $43
	rlca                                             ; $5128: $07
	ld   [FarPopulateKanjiConvoStructForCurrTextBox], sp                                 ; $5129: $08 $0c $10
	db   $10                                         ; $512c: $10
	jr   nz, jr_029_514f                             ; $512d: $20 $20

	nop                                              ; $512f: $00
	jr   nz, jr_029_5173                             ; $5130: $20 $41

	ld   h, b                                        ; $5132: $60
	ld   [bc], a                                     ; $5133: $02
	ld   h, b                                        ; $5134: $60
	ld   [bc], a                                     ; $5135: $02
	jr   nz, jr_029_514a                             ; $5136: $20 $12

	jr   nz, jr_029_517c                             ; $5138: $20 $42

	jr   nc, jr_029_5186                             ; $513a: $30 $4a

	db   $10                                         ; $513c: $10
	jr   z, jr_029_513f                              ; $513d: $28 $00

jr_029_513f:
	inc  e                                           ; $513f: $1c
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	add  b                                           ; $5143: $80
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	nop                                              ; $5146: $00
	ldh  a, [$90]                                    ; $5147: $f0 $90
	inc  c                                           ; $5149: $0c

jr_029_514a:
	inc  c                                           ; $514a: $0c
	ld   [bc], a                                     ; $514b: $02
	inc  b                                           ; $514c: $04
	ld   h, d                                        ; $514d: $62
	ld   [bc], a                                     ; $514e: $02

jr_029_514f:
	pop  bc                                          ; $514f: $c1
	ld   [bc], a                                     ; $5150: $02
	ld   bc, $0100                                   ; $5151: $01 $00 $01
	nop                                              ; $5154: $00
	ld   bc, $0200                                   ; $5155: $01 $00 $02
	nop                                              ; $5158: $00
	ld   b, $00                                      ; $5159: $06 $00
	nop                                              ; $515b: $00
	nop                                              ; $515c: $00
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	ld   a, [hl]                                     ; $5161: $7e
	ld   h, b                                        ; $5162: $60
	add  d                                           ; $5163: $82
	ld   b, b                                        ; $5164: $40
	add  b                                           ; $5165: $80
	ld   h, b                                        ; $5166: $60
	adc  h                                           ; $5167: $8c
	jr   nz, jr_029_51ad                             ; $5168: $20 $43

	nop                                              ; $516a: $00
	dec  a                                           ; $516b: $3d
	nop                                              ; $516c: $00
	ld   bc, $0f00                                   ; $516d: $01 $00 $0f
	nop                                              ; $5170: $00
	ld   [hl-], a                                    ; $5171: $32
	nop                                              ; $5172: $00

jr_029_5173:
	jr   jr_029_5175                                 ; $5173: $18 $00

jr_029_5175:
	ld   l, $00                                      ; $5175: $2e $00
	ld   b, b                                        ; $5177: $40
	nop                                              ; $5178: $00
	jr   nz, jr_029_517b                             ; $5179: $20 $00

jr_029_517b:
	ld   h, b                                        ; $517b: $60

jr_029_517c:
	nop                                              ; $517c: $00
	sub  b                                           ; $517d: $90
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	inc  d                                           ; $5181: $14
	nop                                              ; $5182: $00
	inc  d                                           ; $5183: $14
	nop                                              ; $5184: $00
	inc  c                                           ; $5185: $0c

jr_029_5186:
	nop                                              ; $5186: $00
	ld   [$6800], sp                                 ; $5187: $08 $00 $68
	nop                                              ; $518a: $00
	xor  b                                           ; $518b: $a8
	nop                                              ; $518c: $00
	db   $e4                                         ; $518d: $e4
	nop                                              ; $518e: $00
	ldh  a, [c]                                      ; $518f: $f2
	nop                                              ; $5190: $00
	ei                                               ; $5191: $fb
	ld   d, b                                        ; $5192: $50
	inc  l                                           ; $5193: $2c
	nop                                              ; $5194: $00
	ld   a, $00                                      ; $5195: $3e $00
	dec  e                                           ; $5197: $1d
	nop                                              ; $5198: $00
	inc  e                                           ; $5199: $1c
	nop                                              ; $519a: $00
	ld   c, $00                                      ; $519b: $0e $00
	ld   b, $00                                      ; $519d: $06 $00
	ld   bc, $0000                                   ; $519f: $01 $00 $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	nop                                              ; $51a5: $00
	nop                                              ; $51a6: $00
	nop                                              ; $51a7: $00
	nop                                              ; $51a8: $00
	nop                                              ; $51a9: $00
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	nop                                              ; $51ac: $00

jr_029_51ad:
	nop                                              ; $51ad: $00

jr_029_51ae:
	nop                                              ; $51ae: $00
	nop                                              ; $51af: $00
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	nop                                              ; $51b4: $00
	inc  c                                           ; $51b5: $0c
	nop                                              ; $51b6: $00
	ld   [bc], a                                     ; $51b7: $02
	nop                                              ; $51b8: $00
	ld   bc, $0100                                   ; $51b9: $01 $00 $01
	nop                                              ; $51bc: $00
	inc  bc                                          ; $51bd: $03
	ld   b, b                                        ; $51be: $40
	or   b                                           ; $51bf: $b0
	nop                                              ; $51c0: $00
	ld   sp, $4200                                   ; $51c1: $31 $00 $42

jr_029_51c4:
	nop                                              ; $51c4: $00
	add  b                                           ; $51c5: $80
	nop                                              ; $51c6: $00
	add  h                                           ; $51c7: $84
	nop                                              ; $51c8: $00
	ld   b, e                                        ; $51c9: $43
	nop                                              ; $51ca: $00
	dec  e                                           ; $51cb: $1d
	nop                                              ; $51cc: $00
	ld   bc, $0800                                   ; $51cd: $01 $00 $08
	inc  bc                                          ; $51d0: $03
	inc  e                                           ; $51d1: $1c
	ld   b, $19                                      ; $51d2: $06 $19
	inc  b                                           ; $51d4: $04
	inc  bc                                          ; $51d5: $03
	inc  b                                           ; $51d6: $04
	inc  bc                                          ; $51d7: $03
	nop                                              ; $51d8: $00
	rlca                                             ; $51d9: $07
	nop                                              ; $51da: $00
	rra                                              ; $51db: $1f
	rlca                                             ; $51dc: $07
	jr   jr_029_51df                                 ; $51dd: $18 $00

jr_029_51df:
	rst  $38                                         ; $51df: $ff
	jr   nc, jr_029_51ae                             ; $51e0: $30 $cc

	inc  e                                           ; $51e2: $1c
	ldh  [c], a                                      ; $51e3: $e2
	inc  c                                           ; $51e4: $0c
	sub  e                                           ; $51e5: $93
	ld   c, $81                                      ; $51e6: $0e $81
	inc  c                                           ; $51e8: $0c
	sub  e                                           ; $51e9: $93
	nop                                              ; $51ea: $00
	scf                                              ; $51eb: $37
	jr   nz, jr_029_51c4                             ; $51ec: $20 $d6

	ldh  [rAUD1ENV], a                               ; $51ee: $e0 $12
	and  b                                           ; $51f0: $a0
	ld   b, h                                        ; $51f1: $44
	nop                                              ; $51f2: $00
	db   $f4                                         ; $51f3: $f4
	ld   [$0886], sp                                 ; $51f4: $08 $86 $08
	inc  [hl]                                        ; $51f7: $34
	db   $10                                         ; $51f8: $10
	ld   l, b                                        ; $51f9: $68
	ld   h, b                                        ; $51fa: $60
	adc  b                                           ; $51fb: $88
	ldh  a, [rP1]                                    ; $51fc: $f0 $00
	nop                                              ; $51fe: $00
	rst  $38                                         ; $51ff: $ff
	dec  de                                          ; $5200: $1b
	rra                                              ; $5201: $1f
	ld   [hl+], a                                    ; $5202: $22
	ccf                                              ; $5203: $3f
	ld   b, h                                        ; $5204: $44
	ld   a, a                                        ; $5205: $7f
	ld   b, h                                        ; $5206: $44
	ld   a, a                                        ; $5207: $7f
	ld   b, b                                        ; $5208: $40
	ld   a, a                                        ; $5209: $7f
	ld   [hl+], a                                    ; $520a: $22
	dec  a                                           ; $520b: $3d
	dec  [hl]                                        ; $520c: $35
	ld   a, [hl-]                                    ; $520d: $3a
	inc  h                                           ; $520e: $24
	dec  sp                                          ; $520f: $3b
	ld   b, b                                        ; $5210: $40
	ld   a, a                                        ; $5211: $7f
	ld   c, b                                        ; $5212: $48
	ld   a, a                                        ; $5213: $7f
	ld   c, c                                        ; $5214: $49
	ld   a, a                                        ; $5215: $7f
	jr   z, jr_029_5257                              ; $5216: $28 $3f

	jr   z, jr_029_5259                              ; $5218: $28 $3f

	ld   [de], a                                     ; $521a: $12
	rra                                              ; $521b: $1f
	ld   de, $091f                                   ; $521c: $11 $1f $09
	rrca                                             ; $521f: $0f
	pop  bc                                          ; $5220: $c1
	rst  $38                                         ; $5221: $ff
	add  [hl]                                        ; $5222: $86
	rst  $38                                         ; $5223: $ff
	ld   [$00ff], sp                                 ; $5224: $08 $ff $00
	rst  $38                                         ; $5227: $ff
	rlca                                             ; $5228: $07
	ld   hl, sp+$0c                                  ; $5229: $f8 $0c
	di                                               ; $522b: $f3
	db   $10                                         ; $522c: $10
	rst  $28                                         ; $522d: $ef
	nop                                              ; $522e: $00
	rst  $38                                         ; $522f: $ff
	rlca                                             ; $5230: $07
	rst  $38                                         ; $5231: $ff
	nop                                              ; $5232: $00
	rst  $38                                         ; $5233: $ff
	jr   nz, @+$01                                   ; $5234: $20 $ff

	or   b                                           ; $5236: $b0
	rst  $38                                         ; $5237: $ff
	ld   hl, sp-$01                                  ; $5238: $f8 $ff
	ld   a, a                                        ; $523a: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $523b: $cf
	ld   a, a                                        ; $523c: $7f
	pop  bc                                          ; $523d: $c1
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	ld   hl, sp-$08                                  ; $5240: $f8 $f8
	db   $10                                         ; $5242: $10
	ldh  a, [$3e]                                    ; $5243: $f0 $3e
	cp   $44                                         ; $5245: $fe $44
	db   $fc                                         ; $5247: $fc
	ld   [$7ff8], sp                                 ; $5248: $08 $f8 $7f
	rst  $38                                         ; $524b: $ff
	add  d                                           ; $524c: $82
	cp   $04                                         ; $524d: $fe $04
	db   $fc                                         ; $524f: $fc
	cp   b                                           ; $5250: $b8
	ld   hl, sp+$44                                  ; $5251: $f8 $44
	db   $fc                                         ; $5253: $fc
	ld   [hl+], a                                    ; $5254: $22
	cp   $1f                                         ; $5255: $fe $1f

jr_029_5257:
	db   $fd                                         ; $5257: $fd
	rrca                                             ; $5258: $0f

jr_029_5259:
	ld   sp, hl                                      ; $5259: $f9
	add  a                                           ; $525a: $87
	rst  $38                                         ; $525b: $ff
	ld   a, a                                        ; $525c: $7f
	ld   sp, hl                                      ; $525d: $f9
	ld   a, $ee                                      ; $525e: $3e $ee
	dec  b                                           ; $5260: $05
	rlca                                             ; $5261: $07
	inc  bc                                          ; $5262: $03
	inc  bc                                          ; $5263: $03
	inc  bc                                          ; $5264: $03
	inc  bc                                          ; $5265: $03
	rlca                                             ; $5266: $07
	dec  b                                           ; $5267: $05
	rlca                                             ; $5268: $07
	inc  b                                           ; $5269: $04
	rlca                                             ; $526a: $07
	inc  b                                           ; $526b: $04
	rlca                                             ; $526c: $07
	inc  b                                           ; $526d: $04
	rlca                                             ; $526e: $07
	inc  b                                           ; $526f: $04
	rlca                                             ; $5270: $07
	inc  b                                           ; $5271: $04
	rrca                                             ; $5272: $0f
	dec  c                                           ; $5273: $0d
	rra                                              ; $5274: $1f
	rra                                              ; $5275: $1f

jr_029_5276:
	cpl                                              ; $5276: $2f
	ccf                                              ; $5277: $3f

jr_029_5278:
	ccf                                              ; $5278: $3f
	ld   a, $43                                      ; $5279: $3e $43
	ld   a, [hl]                                     ; $527b: $7e
	ld   b, e                                        ; $527c: $43
	ld   a, [hl]                                     ; $527d: $7e
	ld   a, a                                        ; $527e: $7f
	ld   a, a                                        ; $527f: $7f
	ld   b, b                                        ; $5280: $40
	rst  $38                                         ; $5281: $ff
	jr   nz, @+$01                                   ; $5282: $20 $ff

	add  c                                           ; $5284: $81
	rst  $38                                         ; $5285: $ff
	cp   $7f                                         ; $5286: $fe $7f
	ld   hl, sp+$2f                                  ; $5288: $f8 $2f
	rst  $38                                         ; $528a: $ff
	ld   d, a                                        ; $528b: $57
	rst  $38                                         ; $528c: $ff
	dec  hl                                          ; $528d: $2b
	rst  $38                                         ; $528e: $ff
	cpl                                              ; $528f: $2f
	rst  $38                                         ; $5290: $ff
	ld   sp, hl                                      ; $5291: $f9
	scf                                              ; $5292: $37
	rst  $30                                         ; $5293: $f7
	jr   nz, jr_029_5276                             ; $5294: $20 $e0

	jr   nz, jr_029_5278                             ; $5296: $20 $e0

	jr   nz, @-$1e                                   ; $5298: $20 $e0

	db   $10                                         ; $529a: $10
	ldh  a, [rAUD1SWEEP]                             ; $529b: $f0 $10
	ldh  a, [$e0]                                    ; $529d: $f0 $e0
	ldh  [$c8], a                                    ; $529f: $e0 $c8
	ld   hl, sp+$70                                  ; $52a1: $f8 $70
	or   b                                           ; $52a3: $b0
	ldh  a, [$90]                                    ; $52a4: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $52a6: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $52a8: $e0 $a0
	ldh  a, [$b0]                                    ; $52aa: $f0 $b0
	ldh  a, [rSVBK]                                  ; $52ac: $f0 $70
	ld   hl, sp+$78                                  ; $52ae: $f8 $78
	ld   hl, sp-$08                                  ; $52b0: $f8 $f8
	ld   hl, sp-$08                                  ; $52b2: $f8 $f8
	ld   hl, sp-$08                                  ; $52b4: $f8 $f8
	adc  b                                           ; $52b6: $88
	ld   hl, sp-$04                                  ; $52b7: $f8 $fc
	db   $fc                                         ; $52b9: $fc
	add  h                                           ; $52ba: $84
	db   $fc                                         ; $52bb: $fc
	add  h                                           ; $52bc: $84
	db   $fc                                         ; $52bd: $fc
	db   $fc                                         ; $52be: $fc
	db   $fc                                         ; $52bf: $fc
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
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	nop                                              ; $52d3: $00
	nop                                              ; $52d4: $00
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00
	nop                                              ; $52d8: $00
	nop                                              ; $52d9: $00
	nop                                              ; $52da: $00
	nop                                              ; $52db: $00
	ld   bc, $0601                                   ; $52dc: $01 $01 $06
	ld   b, $00                                      ; $52df: $06 $00
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
	nop                                              ; $52f5: $00
	nop                                              ; $52f6: $00
	nop                                              ; $52f7: $00
	nop                                              ; $52f8: $00
	nop                                              ; $52f9: $00
	nop                                              ; $52fa: $00
	nop                                              ; $52fb: $00
	rlca                                             ; $52fc: $07
	rlca                                             ; $52fd: $07
	jr   c, jr_029_533f                              ; $52fe: $38 $3f

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
	nop                                              ; $530f: $00
	nop                                              ; $5310: $00
	nop                                              ; $5311: $00
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	nop                                              ; $5314: $00
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	nop                                              ; $5319: $00
	nop                                              ; $531a: $00
	nop                                              ; $531b: $00
	ldh  [$e0], a                                    ; $531c: $e0 $e0
	add  b                                           ; $531e: $80
	add  b                                           ; $531f: $80
	inc  bc                                          ; $5320: $03
	inc  bc                                          ; $5321: $03
	inc  c                                           ; $5322: $0c
	rrca                                             ; $5323: $0f
	jr   nc, jr_029_5365                             ; $5324: $30 $3f

	jr   nz, @+$41                                   ; $5326: $20 $3f

	ld   b, b                                        ; $5328: $40
	ld   a, a                                        ; $5329: $7f
	ld   d, d                                        ; $532a: $52
	ld   a, l                                        ; $532b: $7d
	inc  h                                           ; $532c: $24
	dec  sp                                          ; $532d: $3b
	dec  hl                                          ; $532e: $2b
	dec  [hl]                                        ; $532f: $35
	ld   c, d                                        ; $5330: $4a
	ld   [hl], l                                     ; $5331: $75
	ld   b, b                                        ; $5332: $40
	ld   a, a                                        ; $5333: $7f
	ld   c, b                                        ; $5334: $48
	ld   a, a                                        ; $5335: $7f
	ld   d, b                                        ; $5336: $50
	ld   a, a                                        ; $5337: $7f
	ld   d, b                                        ; $5338: $50
	ld   a, a                                        ; $5339: $7f
	inc  [hl]                                        ; $533a: $34
	ccf                                              ; $533b: $3f
	inc  [hl]                                        ; $533c: $34
	ccf                                              ; $533d: $3f
	inc  d                                           ; $533e: $14

jr_029_533f:
	rra                                              ; $533f: $1f
	cp   a                                           ; $5340: $bf
	cp   a                                           ; $5341: $bf
	ld   b, b                                        ; $5342: $40
	rst  $38                                         ; $5343: $ff
	ld   b, b                                        ; $5344: $40
	rst  $38                                         ; $5345: $ff
	ld   c, $ff                                      ; $5346: $0e $ff
	db   $10                                         ; $5348: $10
	rst  $38                                         ; $5349: $ff
	nop                                              ; $534a: $00
	rst  $38                                         ; $534b: $ff
	rrca                                             ; $534c: $0f
	ldh  a, [rAUD2LEN]                               ; $534d: $f0 $16
	jp   hl                                          ; $534f: $e9


	rlca                                             ; $5350: $07
	cp   $21                                         ; $5351: $fe $21
	rst  $38                                         ; $5353: $ff
	jr   nz, @+$01                                   ; $5354: $20 $ff

	ld   [hl], b                                     ; $5356: $70
	rst  $38                                         ; $5357: $ff
	ld   a, b                                        ; $5358: $78
	rst  $38                                         ; $5359: $ff
	ld   a, h                                        ; $535a: $7c
	rst  ToBoot                                         ; $535b: $c7
	rst  $38                                         ; $535c: $ff
	add  e                                           ; $535d: $83
	rst  $38                                         ; $535e: $ff
	rst  $38                                         ; $535f: $ff

jr_029_5360:
	add  b                                           ; $5360: $80
	add  b                                           ; $5361: $80
	ld   [hl], b                                     ; $5362: $70
	ldh  a, [$0c]                                    ; $5363: $f0 $0c

jr_029_5365:
	db   $fc                                         ; $5365: $fc
	jr   jr_029_5360                                 ; $5366: $18 $f8

	inc  b                                           ; $5368: $04
	db   $fc                                         ; $5369: $fc
	ld   h, d                                        ; $536a: $62
	cp   $3a                                         ; $536b: $fe $3a
	cp   $c8                                         ; $536d: $fe $c8
	ld   hl, sp+$24                                  ; $536f: $f8 $24
	db   $fc                                         ; $5371: $fc
	inc  d                                           ; $5372: $14
	db   $fc                                         ; $5373: $fc
	adc  [hl]                                        ; $5374: $8e
	cp   $4f                                         ; $5375: $fe $4f
	db   $fd                                         ; $5377: $fd
	cpl                                              ; $5378: $2f
	ld   sp, hl                                      ; $5379: $f9
	cpl                                              ; $537a: $2f
	ld   sp, hl                                      ; $537b: $f9
	rra                                              ; $537c: $1f
	pop  af                                          ; $537d: $f1
	ld   e, $fe                                      ; $537e: $1e $fe
	inc  c                                           ; $5380: $0c
	rrca                                             ; $5381: $0f
	ld   b, $07                                      ; $5382: $06 $07
	inc  bc                                          ; $5384: $03
	inc  bc                                          ; $5385: $03
	rlca                                             ; $5386: $07
	dec  b                                           ; $5387: $05
	rlca                                             ; $5388: $07
	inc  b                                           ; $5389: $04
	rlca                                             ; $538a: $07
	inc  b                                           ; $538b: $04
	rlca                                             ; $538c: $07
	inc  b                                           ; $538d: $04
	rlca                                             ; $538e: $07
	inc  b                                           ; $538f: $04
	rlca                                             ; $5390: $07
	inc  b                                           ; $5391: $04
	rrca                                             ; $5392: $0f
	dec  c                                           ; $5393: $0d
	rra                                              ; $5394: $1f
	rra                                              ; $5395: $1f

jr_029_5396:
	cpl                                              ; $5396: $2f
	ccf                                              ; $5397: $3f

jr_029_5398:
	ccf                                              ; $5398: $3f
	ld   a, $43                                      ; $5399: $3e $43
	ld   a, [hl]                                     ; $539b: $7e
	ld   b, e                                        ; $539c: $43
	ld   a, [hl]                                     ; $539d: $7e
	ld   a, a                                        ; $539e: $7f
	ld   a, a                                        ; $539f: $7f
	add  b                                           ; $53a0: $80
	rst  $38                                         ; $53a1: $ff
	add  b                                           ; $53a2: $80
	rst  $38                                         ; $53a3: $ff
	add  c                                           ; $53a4: $81
	rst  $38                                         ; $53a5: $ff
	cp   $7f                                         ; $53a6: $fe $7f
	ld   hl, sp+$2f                                  ; $53a8: $f8 $2f
	rst  $38                                         ; $53aa: $ff
	ld   d, a                                        ; $53ab: $57
	rst  $38                                         ; $53ac: $ff
	dec  hl                                          ; $53ad: $2b
	rst  $38                                         ; $53ae: $ff
	cpl                                              ; $53af: $2f
	rst  $38                                         ; $53b0: $ff
	ld   sp, hl                                      ; $53b1: $f9
	scf                                              ; $53b2: $37
	rst  $30                                         ; $53b3: $f7
	jr   nz, jr_029_5396                             ; $53b4: $20 $e0

	jr   nz, jr_029_5398                             ; $53b6: $20 $e0

	jr   nz, @-$1e                                   ; $53b8: $20 $e0

	db   $10                                         ; $53ba: $10
	ldh  a, [rAUD1SWEEP]                             ; $53bb: $f0 $10
	ldh  a, [$e0]                                    ; $53bd: $f0 $e0
	ldh  [$c8], a                                    ; $53bf: $e0 $c8
	ld   hl, sp-$10                                  ; $53c1: $f8 $f0
	or   b                                           ; $53c3: $b0
	ldh  a, [$90]                                    ; $53c4: $f0 $90
	ldh  [hScriptOpcodeParams], a                                    ; $53c6: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $53c8: $e0 $a0
	ldh  a, [$b0]                                    ; $53ca: $f0 $b0
	ldh  a, [rSVBK]                                  ; $53cc: $f0 $70
	ld   hl, sp+$78                                  ; $53ce: $f8 $78
	ld   hl, sp-$08                                  ; $53d0: $f8 $f8
	ld   hl, sp-$08                                  ; $53d2: $f8 $f8
	ld   hl, sp-$08                                  ; $53d4: $f8 $f8
	adc  b                                           ; $53d6: $88
	ld   hl, sp-$04                                  ; $53d7: $f8 $fc
	db   $fc                                         ; $53d9: $fc
	add  h                                           ; $53da: $84
	db   $fc                                         ; $53db: $fc
	add  h                                           ; $53dc: $84
	db   $fc                                         ; $53dd: $fc
	db   $fc                                         ; $53de: $fc
	db   $fc                                         ; $53df: $fc
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	nop                                              ; $53ed: $00
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	nop                                              ; $53f3: $00
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	ret  nz                                          ; $53fe: $c0

	ret  nz                                          ; $53ff: $c0

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
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	nop                                              ; $5428: $00
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	nop                                              ; $542c: $00
	nop                                              ; $542d: $00
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00
	nop                                              ; $5430: $00
	nop                                              ; $5431: $00
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	nop                                              ; $5434: $00
	nop                                              ; $5435: $00
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	nop                                              ; $5438: $00
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	nop                                              ; $543c: $00
	nop                                              ; $543d: $00
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
	nop                                              ; $544b: $00
	nop                                              ; $544c: $00
	nop                                              ; $544d: $00
	nop                                              ; $544e: $00
	nop                                              ; $544f: $00
	nop                                              ; $5450: $00
	nop                                              ; $5451: $00
	nop                                              ; $5452: $00
	nop                                              ; $5453: $00
	nop                                              ; $5454: $00
	nop                                              ; $5455: $00
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	nop                                              ; $5458: $00
	nop                                              ; $5459: $00
	nop                                              ; $545a: $00
	nop                                              ; $545b: $00
	nop                                              ; $545c: $00
	nop                                              ; $545d: $00
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
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
	nop                                              ; $546e: $00
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	nop                                              ; $5475: $00
	nop                                              ; $5476: $00
	nop                                              ; $5477: $00
	nop                                              ; $5478: $00
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	nop                                              ; $547b: $00
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	nop                                              ; $548e: $00
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	nop                                              ; $549e: $00
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
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
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
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	nop                                              ; $54d1: $00
	nop                                              ; $54d2: $00
	nop                                              ; $54d3: $00
	nop                                              ; $54d4: $00
	nop                                              ; $54d5: $00
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
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	nop                                              ; $54ee: $00
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	nop                                              ; $54f6: $00
	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
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
	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	nop                                              ; $551d: $00
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
	nop                                              ; $5531: $00
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	nop                                              ; $5535: $00
	nop                                              ; $5536: $00
	nop                                              ; $5537: $00
	nop                                              ; $5538: $00
	nop                                              ; $5539: $00
	nop                                              ; $553a: $00
	nop                                              ; $553b: $00
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	nop                                              ; $5541: $00
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	nop                                              ; $554e: $00
	nop                                              ; $554f: $00
	nop                                              ; $5550: $00
	nop                                              ; $5551: $00
	nop                                              ; $5552: $00
	nop                                              ; $5553: $00
	nop                                              ; $5554: $00
	nop                                              ; $5555: $00
	nop                                              ; $5556: $00
	nop                                              ; $5557: $00
	nop                                              ; $5558: $00
	nop                                              ; $5559: $00
	nop                                              ; $555a: $00
	nop                                              ; $555b: $00
	nop                                              ; $555c: $00
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	nop                                              ; $556b: $00
	nop                                              ; $556c: $00
	nop                                              ; $556d: $00
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	nop                                              ; $5570: $00
	nop                                              ; $5571: $00
	nop                                              ; $5572: $00
	nop                                              ; $5573: $00
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
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
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
	nop                                              ; $55b1: $00
	nop                                              ; $55b2: $00
	nop                                              ; $55b3: $00
	nop                                              ; $55b4: $00
	nop                                              ; $55b5: $00
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
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
	nop                                              ; $55cb: $00
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	nop                                              ; $55d0: $00
	nop                                              ; $55d1: $00
	nop                                              ; $55d2: $00
	nop                                              ; $55d3: $00
	nop                                              ; $55d4: $00
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	nop                                              ; $55d8: $00
	nop                                              ; $55d9: $00
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
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
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
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
	nop                                              ; $562a: $00
	nop                                              ; $562b: $00
	nop                                              ; $562c: $00
	nop                                              ; $562d: $00
	nop                                              ; $562e: $00
	nop                                              ; $562f: $00
	nop                                              ; $5630: $00
	nop                                              ; $5631: $00
	nop                                              ; $5632: $00
	nop                                              ; $5633: $00
	nop                                              ; $5634: $00
	nop                                              ; $5635: $00
	nop                                              ; $5636: $00
	nop                                              ; $5637: $00
	nop                                              ; $5638: $00
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	nop                                              ; $563b: $00
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
	nop                                              ; $5647: $00
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	nop                                              ; $564a: $00
	nop                                              ; $564b: $00
	nop                                              ; $564c: $00
	nop                                              ; $564d: $00
	nop                                              ; $564e: $00
	nop                                              ; $564f: $00
	nop                                              ; $5650: $00
	nop                                              ; $5651: $00
	nop                                              ; $5652: $00
	nop                                              ; $5653: $00
	nop                                              ; $5654: $00
	nop                                              ; $5655: $00
	nop                                              ; $5656: $00
	nop                                              ; $5657: $00
	nop                                              ; $5658: $00
	nop                                              ; $5659: $00
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
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	nop                                              ; $5671: $00
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	nop                                              ; $5675: $00
	nop                                              ; $5676: $00
	nop                                              ; $5677: $00
	nop                                              ; $5678: $00
	nop                                              ; $5679: $00
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	nop                                              ; $567c: $00
	nop                                              ; $567d: $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	nop                                              ; $5685: $00
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
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
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
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	nop                                              ; $56b4: $00
	nop                                              ; $56b5: $00
	nop                                              ; $56b6: $00
	nop                                              ; $56b7: $00
	nop                                              ; $56b8: $00
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	nop                                              ; $56bb: $00
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
	nop                                              ; $56c9: $00
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	nop                                              ; $56d4: $00
	nop                                              ; $56d5: $00
	nop                                              ; $56d6: $00
	nop                                              ; $56d7: $00
	nop                                              ; $56d8: $00
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	nop                                              ; $56dc: $00
	nop                                              ; $56dd: $00
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
	nop                                              ; $56e9: $00
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	nop                                              ; $56f4: $00
	nop                                              ; $56f5: $00
	nop                                              ; $56f6: $00
	nop                                              ; $56f7: $00
	nop                                              ; $56f8: $00
	nop                                              ; $56f9: $00
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
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
	nop                                              ; $5709: $00
	nop                                              ; $570a: $00
	nop                                              ; $570b: $00
	nop                                              ; $570c: $00
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	nop                                              ; $570f: $00
	nop                                              ; $5710: $00
	nop                                              ; $5711: $00
	nop                                              ; $5712: $00
	nop                                              ; $5713: $00
	nop                                              ; $5714: $00
	nop                                              ; $5715: $00
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	nop                                              ; $5718: $00
	nop                                              ; $5719: $00
	nop                                              ; $571a: $00
	nop                                              ; $571b: $00
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	nop                                              ; $5721: $00
	nop                                              ; $5722: $00
	nop                                              ; $5723: $00
	nop                                              ; $5724: $00
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00
	nop                                              ; $5728: $00
	nop                                              ; $5729: $00
	nop                                              ; $572a: $00
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	nop                                              ; $572d: $00
	nop                                              ; $572e: $00
	nop                                              ; $572f: $00
	nop                                              ; $5730: $00
	nop                                              ; $5731: $00
	nop                                              ; $5732: $00
	nop                                              ; $5733: $00
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	nop                                              ; $573a: $00
	nop                                              ; $573b: $00
	nop                                              ; $573c: $00
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	nop                                              ; $5741: $00
	nop                                              ; $5742: $00
	nop                                              ; $5743: $00
	nop                                              ; $5744: $00
	nop                                              ; $5745: $00
	nop                                              ; $5746: $00
	nop                                              ; $5747: $00
	nop                                              ; $5748: $00
	nop                                              ; $5749: $00
	nop                                              ; $574a: $00
	nop                                              ; $574b: $00
	nop                                              ; $574c: $00
	nop                                              ; $574d: $00
	nop                                              ; $574e: $00
	nop                                              ; $574f: $00
	nop                                              ; $5750: $00
	nop                                              ; $5751: $00
	nop                                              ; $5752: $00
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	nop                                              ; $5755: $00
	nop                                              ; $5756: $00
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
	nop                                              ; $5763: $00
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
	dec  b                                           ; $5800: $05
	dec  b                                           ; $5801: $05
	dec  b                                           ; $5802: $05
	ld   b, l                                        ; $5803: $45
	ld   b, l                                        ; $5804: $45
	ld   b, l                                        ; $5805: $45
	ld   b, l                                        ; $5806: $45
	ld   b, l                                        ; $5807: $45
	ld   b, l                                        ; $5808: $45
	ld   b, l                                        ; $5809: $45
	ld   h, $06                                      ; $580a: $26 $06
	inc  b                                           ; $580c: $04
	inc  b                                           ; $580d: $04
	inc  b                                           ; $580e: $04
	inc  b                                           ; $580f: $04
	inc  b                                           ; $5810: $04
	dec  b                                           ; $5811: $05
	dec  b                                           ; $5812: $05
	dec  b                                           ; $5813: $05
	dec  b                                           ; $5814: $05
	dec  h                                           ; $5815: $25
	dec  h                                           ; $5816: $25
	dec  b                                           ; $5817: $05
	dec  b                                           ; $5818: $05
	dec  b                                           ; $5819: $05
	dec  b                                           ; $581a: $05
	dec  b                                           ; $581b: $05
	dec  b                                           ; $581c: $05
	dec  l                                           ; $581d: $2d
	dec  h                                           ; $581e: $25
	dec  h                                           ; $581f: $25
	dec  b                                           ; $5820: $05
	dec  b                                           ; $5821: $05
	dec  b                                           ; $5822: $05
	dec  b                                           ; $5823: $05
	dec  b                                           ; $5824: $05
	dec  b                                           ; $5825: $05
	dec  b                                           ; $5826: $05
	dec  b                                           ; $5827: $05
	dec  b                                           ; $5828: $05
	dec  b                                           ; $5829: $05
	dec  h                                           ; $582a: $25
	dec  b                                           ; $582b: $05
	inc  b                                           ; $582c: $04
	inc  b                                           ; $582d: $04
	inc  b                                           ; $582e: $04
	inc  b                                           ; $582f: $04
	inc  b                                           ; $5830: $04
	dec  b                                           ; $5831: $05
	dec  b                                           ; $5832: $05
	inc  b                                           ; $5833: $04
	inc  b                                           ; $5834: $04
	dec  h                                           ; $5835: $25
	dec  h                                           ; $5836: $25
	dec  b                                           ; $5837: $05
	dec  b                                           ; $5838: $05
	dec  b                                           ; $5839: $05
	dec  b                                           ; $583a: $05
	dec  b                                           ; $583b: $05
	dec  b                                           ; $583c: $05
	dec  l                                           ; $583d: $2d
	dec  b                                           ; $583e: $05
	dec  b                                           ; $583f: $05
	dec  b                                           ; $5840: $05
	dec  h                                           ; $5841: $25
	dec  b                                           ; $5842: $05
	dec  b                                           ; $5843: $05
	dec  b                                           ; $5844: $05
	dec  b                                           ; $5845: $05
	dec  b                                           ; $5846: $05
	dec  b                                           ; $5847: $05
	dec  b                                           ; $5848: $05
	dec  c                                           ; $5849: $0d
	dec  b                                           ; $584a: $05
	dec  b                                           ; $584b: $05
	inc  b                                           ; $584c: $04
	inc  b                                           ; $584d: $04
	inc  b                                           ; $584e: $04
	inc  b                                           ; $584f: $04
	inc  b                                           ; $5850: $04
	dec  b                                           ; $5851: $05
	inc  bc                                          ; $5852: $03
	dec  b                                           ; $5853: $05
	dec  b                                           ; $5854: $05
	inc  hl                                          ; $5855: $23
	dec  h                                           ; $5856: $25
	dec  c                                           ; $5857: $0d
	dec  c                                           ; $5858: $0d
	dec  b                                           ; $5859: $05
	dec  b                                           ; $585a: $05
	dec  c                                           ; $585b: $0d
	dec  b                                           ; $585c: $05
	dec  b                                           ; $585d: $05
	dec  b                                           ; $585e: $05
	dec  b                                           ; $585f: $05
	dec  b                                           ; $5860: $05
	dec  b                                           ; $5861: $05
	dec  b                                           ; $5862: $05
	dec  b                                           ; $5863: $05
	dec  b                                           ; $5864: $05
	dec  b                                           ; $5865: $05
	dec  b                                           ; $5866: $05
	dec  b                                           ; $5867: $05
	dec  b                                           ; $5868: $05
	dec  b                                           ; $5869: $05
	dec  b                                           ; $586a: $05
	dec  b                                           ; $586b: $05
	dec  b                                           ; $586c: $05
	dec  b                                           ; $586d: $05
	dec  b                                           ; $586e: $05
	dec  b                                           ; $586f: $05
	dec  b                                           ; $5870: $05
	dec  b                                           ; $5871: $05
	dec  b                                           ; $5872: $05
	dec  b                                           ; $5873: $05
	dec  b                                           ; $5874: $05
	dec  b                                           ; $5875: $05
	dec  b                                           ; $5876: $05
	dec  b                                           ; $5877: $05
	dec  b                                           ; $5878: $05
	dec  b                                           ; $5879: $05
	dec  c                                           ; $587a: $0d
	dec  b                                           ; $587b: $05
	dec  b                                           ; $587c: $05
	dec  c                                           ; $587d: $0d
	ld   b, l                                        ; $587e: $45
	dec  l                                           ; $587f: $2d
	dec  b                                           ; $5880: $05
	dec  b                                           ; $5881: $05
	dec  c                                           ; $5882: $0d
	dec  c                                           ; $5883: $0d
	dec  c                                           ; $5884: $0d
	dec  c                                           ; $5885: $0d
	dec  c                                           ; $5886: $0d
	dec  b                                           ; $5887: $05
	dec  c                                           ; $5888: $0d
	dec  c                                           ; $5889: $0d
	dec  c                                           ; $588a: $0d
	dec  c                                           ; $588b: $0d
	dec  c                                           ; $588c: $0d
	dec  c                                           ; $588d: $0d
	dec  c                                           ; $588e: $0d
	dec  b                                           ; $588f: $05
	dec  b                                           ; $5890: $05
	dec  c                                           ; $5891: $0d
	dec  b                                           ; $5892: $05
	dec  b                                           ; $5893: $05
	dec  b                                           ; $5894: $05
	dec  b                                           ; $5895: $05
	dec  c                                           ; $5896: $0d
	dec  c                                           ; $5897: $0d
	dec  c                                           ; $5898: $0d
	dec  c                                           ; $5899: $0d
	dec  c                                           ; $589a: $0d
	dec  c                                           ; $589b: $0d
	dec  b                                           ; $589c: $05
	dec  b                                           ; $589d: $05
	dec  h                                           ; $589e: $25
	ld   h, l                                        ; $589f: $65
	adc  l                                           ; $58a0: $8d
	adc  l                                           ; $58a1: $8d
	adc  l                                           ; $58a2: $8d
	adc  l                                           ; $58a3: $8d
	adc  l                                           ; $58a4: $8d
	adc  l                                           ; $58a5: $8d
	adc  l                                           ; $58a6: $8d
	dec  c                                           ; $58a7: $0d
	dec  c                                           ; $58a8: $0d
	dec  c                                           ; $58a9: $0d
	dec  c                                           ; $58aa: $0d
	dec  b                                           ; $58ab: $05
	dec  c                                           ; $58ac: $0d
	dec  c                                           ; $58ad: $0d
	dec  c                                           ; $58ae: $0d
	dec  c                                           ; $58af: $0d
	dec  c                                           ; $58b0: $0d
	dec  b                                           ; $58b1: $05
	dec  b                                           ; $58b2: $05
	dec  b                                           ; $58b3: $05
	dec  b                                           ; $58b4: $05
	dec  b                                           ; $58b5: $05
	dec  b                                           ; $58b6: $05
	dec  c                                           ; $58b7: $0d
	dec  c                                           ; $58b8: $0d
	dec  b                                           ; $58b9: $05
	dec  c                                           ; $58ba: $0d
	dec  c                                           ; $58bb: $0d
	dec  c                                           ; $58bc: $0d
	dec  b                                           ; $58bd: $05
	dec  b                                           ; $58be: $05
	ld   h, l                                        ; $58bf: $65
	adc  l                                           ; $58c0: $8d
	adc  l                                           ; $58c1: $8d
	adc  l                                           ; $58c2: $8d
	adc  l                                           ; $58c3: $8d
	adc  l                                           ; $58c4: $8d
	adc  l                                           ; $58c5: $8d
	adc  l                                           ; $58c6: $8d
	dec  b                                           ; $58c7: $05
	dec  b                                           ; $58c8: $05
	dec  b                                           ; $58c9: $05
	dec  b                                           ; $58ca: $05
	dec  c                                           ; $58cb: $0d
	dec  b                                           ; $58cc: $05
	dec  c                                           ; $58cd: $0d
	dec  c                                           ; $58ce: $0d
	dec  c                                           ; $58cf: $0d
	dec  b                                           ; $58d0: $05
	dec  c                                           ; $58d1: $0d
	dec  b                                           ; $58d2: $05
	dec  b                                           ; $58d3: $05
	dec  b                                           ; $58d4: $05
	dec  b                                           ; $58d5: $05
	dec  c                                           ; $58d6: $0d
	dec  c                                           ; $58d7: $0d
	dec  c                                           ; $58d8: $0d
	dec  c                                           ; $58d9: $0d
	dec  c                                           ; $58da: $0d
	dec  c                                           ; $58db: $0d
	dec  b                                           ; $58dc: $05
	dec  b                                           ; $58dd: $05
	dec  b                                           ; $58de: $05
	ld   h, l                                        ; $58df: $65
	dec  l                                           ; $58e0: $2d
	dec  b                                           ; $58e1: $05
	adc  l                                           ; $58e2: $8d
	adc  l                                           ; $58e3: $8d
	dec  c                                           ; $58e4: $0d
	dec  b                                           ; $58e5: $05
	adc  l                                           ; $58e6: $8d
	dec  b                                           ; $58e7: $05
	dec  b                                           ; $58e8: $05
	dec  b                                           ; $58e9: $05
	dec  b                                           ; $58ea: $05
	dec  b                                           ; $58eb: $05
	dec  b                                           ; $58ec: $05
	dec  b                                           ; $58ed: $05
	dec  b                                           ; $58ee: $05
	dec  b                                           ; $58ef: $05
	dec  b                                           ; $58f0: $05
	dec  c                                           ; $58f1: $0d
	dec  b                                           ; $58f2: $05
	dec  b                                           ; $58f3: $05
	dec  b                                           ; $58f4: $05
	dec  b                                           ; $58f5: $05
	dec  b                                           ; $58f6: $05
	dec  b                                           ; $58f7: $05
	dec  b                                           ; $58f8: $05
	dec  c                                           ; $58f9: $0d
	dec  c                                           ; $58fa: $0d
	dec  c                                           ; $58fb: $0d
	dec  c                                           ; $58fc: $0d
	dec  b                                           ; $58fd: $05
	dec  b                                           ; $58fe: $05
	ld   h, l                                        ; $58ff: $65
	dec  l                                           ; $5900: $2d
	dec  b                                           ; $5901: $05
	dec  c                                           ; $5902: $0d
	dec  b                                           ; $5903: $05
	dec  b                                           ; $5904: $05
	dec  b                                           ; $5905: $05
	adc  l                                           ; $5906: $8d
	dec  b                                           ; $5907: $05
	dec  c                                           ; $5908: $0d
	dec  c                                           ; $5909: $0d
	dec  c                                           ; $590a: $0d
	dec  b                                           ; $590b: $05
	dec  b                                           ; $590c: $05
	dec  c                                           ; $590d: $0d
	dec  b                                           ; $590e: $05
	dec  c                                           ; $590f: $0d
	dec  b                                           ; $5910: $05
	dec  b                                           ; $5911: $05
	dec  b                                           ; $5912: $05
	dec  b                                           ; $5913: $05
	dec  b                                           ; $5914: $05
	dec  b                                           ; $5915: $05
	dec  c                                           ; $5916: $0d
	dec  b                                           ; $5917: $05
	dec  c                                           ; $5918: $0d
	dec  c                                           ; $5919: $0d
	dec  c                                           ; $591a: $0d
	dec  c                                           ; $591b: $0d
	dec  b                                           ; $591c: $05
	dec  b                                           ; $591d: $05
	dec  b                                           ; $591e: $05
	ld   h, l                                        ; $591f: $65
	dec  h                                           ; $5920: $25
	dec  b                                           ; $5921: $05
	dec  b                                           ; $5922: $05
	dec  c                                           ; $5923: $0d
	dec  c                                           ; $5924: $0d
	dec  c                                           ; $5925: $0d
	dec  b                                           ; $5926: $05
	dec  b                                           ; $5927: $05
	dec  b                                           ; $5928: $05
	dec  b                                           ; $5929: $05
	dec  b                                           ; $592a: $05
	dec  l                                           ; $592b: $2d
	dec  b                                           ; $592c: $05
	dec  b                                           ; $592d: $05
	dec  b                                           ; $592e: $05
	dec  b                                           ; $592f: $05
	dec  b                                           ; $5930: $05
	dec  b                                           ; $5931: $05
	dec  b                                           ; $5932: $05
	dec  b                                           ; $5933: $05
	dec  b                                           ; $5934: $05
	dec  b                                           ; $5935: $05
	dec  b                                           ; $5936: $05
	dec  c                                           ; $5937: $0d
	dec  c                                           ; $5938: $0d
	dec  b                                           ; $5939: $05
	dec  b                                           ; $593a: $05
	dec  c                                           ; $593b: $0d
	dec  c                                           ; $593c: $0d
	dec  b                                           ; $593d: $05
	dec  b                                           ; $593e: $05
	dec  h                                           ; $593f: $25
	dec  c                                           ; $5940: $0d
	dec  l                                           ; $5941: $2d
	dec  c                                           ; $5942: $0d
	dec  c                                           ; $5943: $0d
	dec  c                                           ; $5944: $0d
	dec  c                                           ; $5945: $0d
	dec  b                                           ; $5946: $05
	dec  b                                           ; $5947: $05
	dec  b                                           ; $5948: $05
	dec  b                                           ; $5949: $05
	dec  b                                           ; $594a: $05
	inc  b                                           ; $594b: $04
	inc  b                                           ; $594c: $04
	inc  b                                           ; $594d: $04
	inc  b                                           ; $594e: $04
	inc  b                                           ; $594f: $04
	inc  b                                           ; $5950: $04
	inc  b                                           ; $5951: $04
	inc  b                                           ; $5952: $04
	inc  b                                           ; $5953: $04
	inc  b                                           ; $5954: $04
	dec  b                                           ; $5955: $05
	dec  b                                           ; $5956: $05
	dec  c                                           ; $5957: $0d
	dec  b                                           ; $5958: $05
	dec  c                                           ; $5959: $0d
	dec  c                                           ; $595a: $0d
	dec  c                                           ; $595b: $0d
	dec  b                                           ; $595c: $05
	dec  b                                           ; $595d: $05
	dec  b                                           ; $595e: $05
	dec  l                                           ; $595f: $2d
	dec  c                                           ; $5960: $0d
	dec  l                                           ; $5961: $2d
	dec  c                                           ; $5962: $0d
	dec  c                                           ; $5963: $0d
	dec  c                                           ; $5964: $0d
	dec  c                                           ; $5965: $0d
	dec  b                                           ; $5966: $05
	ld   b, [hl]                                     ; $5967: $46
	ld   h, [hl]                                     ; $5968: $66
	dec  b                                           ; $5969: $05
	dec  b                                           ; $596a: $05
	dec  b                                           ; $596b: $05
	dec  b                                           ; $596c: $05
	dec  b                                           ; $596d: $05
	dec  b                                           ; $596e: $05
	dec  b                                           ; $596f: $05
	dec  b                                           ; $5970: $05
	dec  b                                           ; $5971: $05
	dec  b                                           ; $5972: $05
	dec  b                                           ; $5973: $05
	dec  b                                           ; $5974: $05
	ld   b, $26                                      ; $5975: $06 $26
	dec  c                                           ; $5977: $0d
	dec  c                                           ; $5978: $0d
	dec  b                                           ; $5979: $05
	dec  c                                           ; $597a: $0d
	dec  c                                           ; $597b: $0d
	dec  b                                           ; $597c: $05
	dec  h                                           ; $597d: $25
	dec  l                                           ; $597e: $2d
	dec  l                                           ; $597f: $2d
	dec  b                                           ; $5980: $05
	dec  b                                           ; $5981: $05
	dec  c                                           ; $5982: $0d
	dec  c                                           ; $5983: $0d
	dec  b                                           ; $5984: $05
	dec  b                                           ; $5985: $05
	dec  b                                           ; $5986: $05
	ld   b, $26                                      ; $5987: $06 $26
	dec  c                                           ; $5989: $0d
	dec  b                                           ; $598a: $05
	dec  b                                           ; $598b: $05
	dec  b                                           ; $598c: $05
	dec  b                                           ; $598d: $05
	dec  b                                           ; $598e: $05
	dec  b                                           ; $598f: $05
	dec  b                                           ; $5990: $05
	dec  b                                           ; $5991: $05
	dec  b                                           ; $5992: $05
	dec  b                                           ; $5993: $05
	dec  b                                           ; $5994: $05
	ld   b, $26                                      ; $5995: $06 $26
	dec  b                                           ; $5997: $05
	dec  c                                           ; $5998: $0d
	dec  c                                           ; $5999: $0d
	dec  c                                           ; $599a: $0d
	dec  c                                           ; $599b: $0d
	dec  b                                           ; $599c: $05
	dec  h                                           ; $599d: $25
	dec  l                                           ; $599e: $2d
	dec  l                                           ; $599f: $2d
	dec  c                                           ; $59a0: $0d
	dec  b                                           ; $59a1: $05
	dec  c                                           ; $59a2: $0d
	dec  b                                           ; $59a3: $05
	dec  b                                           ; $59a4: $05
	dec  b                                           ; $59a5: $05
	dec  b                                           ; $59a6: $05
	ld   b, $26                                      ; $59a7: $06 $26
	dec  b                                           ; $59a9: $05
	dec  b                                           ; $59aa: $05
	dec  b                                           ; $59ab: $05
	dec  c                                           ; $59ac: $0d
	dec  b                                           ; $59ad: $05
	dec  c                                           ; $59ae: $0d
	dec  c                                           ; $59af: $0d
	dec  c                                           ; $59b0: $0d
	dec  b                                           ; $59b1: $05
	dec  b                                           ; $59b2: $05
	dec  b                                           ; $59b3: $05
	dec  b                                           ; $59b4: $05
	ld   b, $26                                      ; $59b5: $06 $26
	dec  b                                           ; $59b7: $05
	dec  c                                           ; $59b8: $0d
	dec  b                                           ; $59b9: $05
	dec  c                                           ; $59ba: $0d
	dec  c                                           ; $59bb: $0d
	dec  b                                           ; $59bc: $05
	dec  h                                           ; $59bd: $25
	dec  h                                           ; $59be: $25
	dec  c                                           ; $59bf: $0d
	dec  b                                           ; $59c0: $05
	dec  b                                           ; $59c1: $05
	dec  b                                           ; $59c2: $05
	dec  c                                           ; $59c3: $0d
	dec  b                                           ; $59c4: $05
	dec  b                                           ; $59c5: $05
	dec  b                                           ; $59c6: $05
	ld   b, $26                                      ; $59c7: $06 $26
	dec  b                                           ; $59c9: $05
	dec  c                                           ; $59ca: $0d
	dec  l                                           ; $59cb: $2d
	dec  l                                           ; $59cc: $2d
	dec  l                                           ; $59cd: $2d
	dec  l                                           ; $59ce: $2d
	dec  c                                           ; $59cf: $0d
	dec  c                                           ; $59d0: $0d
	dec  c                                           ; $59d1: $0d
	dec  c                                           ; $59d2: $0d
	dec  c                                           ; $59d3: $0d
	dec  b                                           ; $59d4: $05
	dec  b                                           ; $59d5: $05
	dec  h                                           ; $59d6: $25
	dec  b                                           ; $59d7: $05
	dec  b                                           ; $59d8: $05
	dec  c                                           ; $59d9: $0d
	dec  c                                           ; $59da: $0d
	dec  b                                           ; $59db: $05
	dec  b                                           ; $59dc: $05
	dec  h                                           ; $59dd: $25
	dec  h                                           ; $59de: $25
	dec  b                                           ; $59df: $05
	ld   l, l                                        ; $59e0: $6d
	dec  c                                           ; $59e1: $0d
	dec  c                                           ; $59e2: $0d
	dec  b                                           ; $59e3: $05
	dec  c                                           ; $59e4: $0d
	dec  b                                           ; $59e5: $05
	dec  b                                           ; $59e6: $05
	ld   b, $26                                      ; $59e7: $06 $26
	dec  b                                           ; $59e9: $05
	dec  l                                           ; $59ea: $2d
	dec  l                                           ; $59eb: $2d
	dec  l                                           ; $59ec: $2d
	dec  c                                           ; $59ed: $0d
	dec  b                                           ; $59ee: $05
	dec  c                                           ; $59ef: $0d
	dec  c                                           ; $59f0: $0d
	dec  b                                           ; $59f1: $05
	dec  c                                           ; $59f2: $0d
	dec  b                                           ; $59f3: $05
	dec  b                                           ; $59f4: $05
	dec  b                                           ; $59f5: $05
	dec  b                                           ; $59f6: $05
	dec  b                                           ; $59f7: $05
	dec  c                                           ; $59f8: $0d
	dec  b                                           ; $59f9: $05
	dec  c                                           ; $59fa: $0d
	dec  c                                           ; $59fb: $0d
	ld   b, l                                        ; $59fc: $45
	dec  h                                           ; $59fd: $25
	dec  l                                           ; $59fe: $2d
	dec  l                                           ; $59ff: $2d
	ld   l, l                                        ; $5a00: $6d
	dec  c                                           ; $5a01: $0d
	dec  b                                           ; $5a02: $05
	dec  c                                           ; $5a03: $0d
	dec  c                                           ; $5a04: $0d
	dec  b                                           ; $5a05: $05
	dec  b                                           ; $5a06: $05
	ld   b, $26                                      ; $5a07: $06 $26
	dec  b                                           ; $5a09: $05
	dec  c                                           ; $5a0a: $0d
	dec  l                                           ; $5a0b: $2d
	dec  l                                           ; $5a0c: $2d
	dec  c                                           ; $5a0d: $0d
	dec  b                                           ; $5a0e: $05
	dec  c                                           ; $5a0f: $0d
	dec  c                                           ; $5a10: $0d
	dec  b                                           ; $5a11: $05
	dec  c                                           ; $5a12: $0d
	dec  b                                           ; $5a13: $05
	dec  b                                           ; $5a14: $05
	dec  b                                           ; $5a15: $05
	dec  b                                           ; $5a16: $05
	dec  b                                           ; $5a17: $05
	dec  b                                           ; $5a18: $05
	dec  c                                           ; $5a19: $0d
	dec  c                                           ; $5a1a: $0d
	dec  c                                           ; $5a1b: $0d
	dec  b                                           ; $5a1c: $05
	dec  h                                           ; $5a1d: $25
	dec  l                                           ; $5a1e: $2d
	dec  l                                           ; $5a1f: $2d
	dec  b                                           ; $5a20: $05
	dec  b                                           ; $5a21: $05
	dec  c                                           ; $5a22: $0d
	dec  b                                           ; $5a23: $05
	dec  c                                           ; $5a24: $0d
	dec  b                                           ; $5a25: $05
	dec  b                                           ; $5a26: $05
	ld   b, $26                                      ; $5a27: $06 $26
	dec  b                                           ; $5a29: $05
	dec  b                                           ; $5a2a: $05
	dec  b                                           ; $5a2b: $05
	dec  b                                           ; $5a2c: $05
	dec  c                                           ; $5a2d: $0d
	dec  c                                           ; $5a2e: $0d
	dec  b                                           ; $5a2f: $05
	dec  b                                           ; $5a30: $05
	dec  b                                           ; $5a31: $05
	dec  c                                           ; $5a32: $0d
	dec  c                                           ; $5a33: $0d
	dec  b                                           ; $5a34: $05
	dec  b                                           ; $5a35: $05
	dec  b                                           ; $5a36: $05
	dec  b                                           ; $5a37: $05
	dec  c                                           ; $5a38: $0d
	dec  b                                           ; $5a39: $05
	dec  c                                           ; $5a3a: $0d
	dec  b                                           ; $5a3b: $05
	dec  b                                           ; $5a3c: $05
	dec  h                                           ; $5a3d: $25
	dec  h                                           ; $5a3e: $25
	dec  c                                           ; $5a3f: $0d
	dec  b                                           ; $5a40: $05
	dec  b                                           ; $5a41: $05
	dec  c                                           ; $5a42: $0d
	dec  c                                           ; $5a43: $0d
	dec  b                                           ; $5a44: $05
	dec  b                                           ; $5a45: $05
	dec  b                                           ; $5a46: $05
	ld   b, $26                                      ; $5a47: $06 $26
	dec  b                                           ; $5a49: $05
	dec  b                                           ; $5a4a: $05
	dec  b                                           ; $5a4b: $05
	dec  c                                           ; $5a4c: $0d
	dec  c                                           ; $5a4d: $0d
	dec  c                                           ; $5a4e: $0d
	dec  b                                           ; $5a4f: $05
	dec  b                                           ; $5a50: $05
	dec  b                                           ; $5a51: $05
	dec  b                                           ; $5a52: $05
	dec  c                                           ; $5a53: $0d
	dec  b                                           ; $5a54: $05
	dec  c                                           ; $5a55: $0d
	dec  b                                           ; $5a56: $05
	dec  b                                           ; $5a57: $05
	dec  b                                           ; $5a58: $05
	dec  b                                           ; $5a59: $05
	dec  c                                           ; $5a5a: $0d
	dec  b                                           ; $5a5b: $05
	dec  b                                           ; $5a5c: $05
	dec  h                                           ; $5a5d: $25
	dec  h                                           ; $5a5e: $25
	dec  b                                           ; $5a5f: $05
	dec  b                                           ; $5a60: $05
	dec  b                                           ; $5a61: $05
	dec  b                                           ; $5a62: $05
	dec  c                                           ; $5a63: $0d
	dec  b                                           ; $5a64: $05
	dec  h                                           ; $5a65: $25
	dec  h                                           ; $5a66: $25
	ld   b, $26                                      ; $5a67: $06 $26
	dec  b                                           ; $5a69: $05
	dec  b                                           ; $5a6a: $05
	dec  b                                           ; $5a6b: $05
	dec  c                                           ; $5a6c: $0d
	dec  c                                           ; $5a6d: $0d
	dec  b                                           ; $5a6e: $05
	dec  b                                           ; $5a6f: $05
	dec  h                                           ; $5a70: $25
	dec  b                                           ; $5a71: $05
	dec  c                                           ; $5a72: $0d
	dec  b                                           ; $5a73: $05
	dec  c                                           ; $5a74: $0d
	dec  b                                           ; $5a75: $05
	dec  c                                           ; $5a76: $0d
	dec  b                                           ; $5a77: $05
	dec  c                                           ; $5a78: $0d
	dec  b                                           ; $5a79: $05
	dec  c                                           ; $5a7a: $0d
	dec  b                                           ; $5a7b: $05
	dec  c                                           ; $5a7c: $0d
	dec  h                                           ; $5a7d: $25
	dec  h                                           ; $5a7e: $25
	dec  b                                           ; $5a7f: $05
	dec  b                                           ; $5a80: $05
	dec  b                                           ; $5a81: $05
	dec  c                                           ; $5a82: $0d
	dec  c                                           ; $5a83: $0d
	dec  b                                           ; $5a84: $05
	dec  c                                           ; $5a85: $0d
	dec  b                                           ; $5a86: $05
	ld   b, $26                                      ; $5a87: $06 $26
	dec  b                                           ; $5a89: $05
	dec  b                                           ; $5a8a: $05
	dec  c                                           ; $5a8b: $0d
	dec  c                                           ; $5a8c: $0d
	dec  c                                           ; $5a8d: $0d
	dec  c                                           ; $5a8e: $0d
	dec  b                                           ; $5a8f: $05
	dec  b                                           ; $5a90: $05
	dec  b                                           ; $5a91: $05
	ld   b, l                                        ; $5a92: $45
	dec  b                                           ; $5a93: $05
	dec  c                                           ; $5a94: $0d
	dec  b                                           ; $5a95: $05
	dec  b                                           ; $5a96: $05
	dec  b                                           ; $5a97: $05
	dec  b                                           ; $5a98: $05
	dec  b                                           ; $5a99: $05
	dec  c                                           ; $5a9a: $0d
	dec  c                                           ; $5a9b: $0d
	dec  c                                           ; $5a9c: $0d
	dec  h                                           ; $5a9d: $25
	dec  h                                           ; $5a9e: $25
	dec  l                                           ; $5a9f: $2d
	dec  b                                           ; $5aa0: $05
	dec  b                                           ; $5aa1: $05
	dec  c                                           ; $5aa2: $0d
	dec  b                                           ; $5aa3: $05
	dec  b                                           ; $5aa4: $05
	dec  c                                           ; $5aa5: $0d
	dec  c                                           ; $5aa6: $0d
	ld   b, $26                                      ; $5aa7: $06 $26
	dec  b                                           ; $5aa9: $05
	dec  c                                           ; $5aaa: $0d
	dec  c                                           ; $5aab: $0d
	dec  c                                           ; $5aac: $0d
	dec  b                                           ; $5aad: $05
	dec  l                                           ; $5aae: $2d
	dec  b                                           ; $5aaf: $05
	dec  b                                           ; $5ab0: $05
	dec  b                                           ; $5ab1: $05
	dec  b                                           ; $5ab2: $05
	dec  b                                           ; $5ab3: $05
	dec  b                                           ; $5ab4: $05
	dec  c                                           ; $5ab5: $0d
	dec  c                                           ; $5ab6: $0d
	dec  b                                           ; $5ab7: $05
	ld   h, l                                        ; $5ab8: $65
	dec  b                                           ; $5ab9: $05
	dec  c                                           ; $5aba: $0d
	dec  c                                           ; $5abb: $0d
	dec  c                                           ; $5abc: $0d
	dec  b                                           ; $5abd: $05
	dec  h                                           ; $5abe: $25
	dec  h                                           ; $5abf: $25
	dec  b                                           ; $5ac0: $05
	dec  b                                           ; $5ac1: $05
	dec  b                                           ; $5ac2: $05
	dec  c                                           ; $5ac3: $0d
	dec  b                                           ; $5ac4: $05
	dec  c                                           ; $5ac5: $0d
	dec  c                                           ; $5ac6: $0d
	dec  b                                           ; $5ac7: $05
	dec  b                                           ; $5ac8: $05
	dec  c                                           ; $5ac9: $0d
	dec  c                                           ; $5aca: $0d
	dec  c                                           ; $5acb: $0d
	dec  b                                           ; $5acc: $05
	dec  c                                           ; $5acd: $0d
	dec  c                                           ; $5ace: $0d
	dec  c                                           ; $5acf: $0d
	dec  b                                           ; $5ad0: $05
	dec  b                                           ; $5ad1: $05
	dec  b                                           ; $5ad2: $05
	dec  c                                           ; $5ad3: $0d
	dec  b                                           ; $5ad4: $05
	dec  b                                           ; $5ad5: $05
	dec  b                                           ; $5ad6: $05
	dec  b                                           ; $5ad7: $05
	dec  b                                           ; $5ad8: $05
	dec  b                                           ; $5ad9: $05
	dec  b                                           ; $5ada: $05
	dec  b                                           ; $5adb: $05
	dec  c                                           ; $5adc: $0d
	dec  c                                           ; $5add: $0d
	dec  h                                           ; $5ade: $25
	dec  h                                           ; $5adf: $25
	dec  b                                           ; $5ae0: $05
	dec  b                                           ; $5ae1: $05
	dec  c                                           ; $5ae2: $0d
	dec  c                                           ; $5ae3: $0d
	dec  c                                           ; $5ae4: $0d
	dec  b                                           ; $5ae5: $05
	dec  b                                           ; $5ae6: $05
	dec  b                                           ; $5ae7: $05
	dec  b                                           ; $5ae8: $05
	dec  b                                           ; $5ae9: $05
	dec  c                                           ; $5aea: $0d
	dec  c                                           ; $5aeb: $0d
	dec  c                                           ; $5aec: $0d
	dec  c                                           ; $5aed: $0d
	dec  c                                           ; $5aee: $0d
	dec  c                                           ; $5aef: $0d
	dec  b                                           ; $5af0: $05
	dec  b                                           ; $5af1: $05
	dec  b                                           ; $5af2: $05
	dec  b                                           ; $5af3: $05
	dec  b                                           ; $5af4: $05
	dec  b                                           ; $5af5: $05
	dec  c                                           ; $5af6: $0d
	dec  b                                           ; $5af7: $05
	dec  b                                           ; $5af8: $05
	dec  b                                           ; $5af9: $05
	dec  c                                           ; $5afa: $0d
	dec  b                                           ; $5afb: $05
	dec  c                                           ; $5afc: $0d
	dec  b                                           ; $5afd: $05
	dec  h                                           ; $5afe: $25
	dec  h                                           ; $5aff: $25
	dec  b                                           ; $5b00: $05
	dec  b                                           ; $5b01: $05
	dec  b                                           ; $5b02: $05
	dec  b                                           ; $5b03: $05
	dec  c                                           ; $5b04: $0d
	dec  c                                           ; $5b05: $0d
	dec  b                                           ; $5b06: $05
	dec  c                                           ; $5b07: $0d
	dec  c                                           ; $5b08: $0d
	dec  c                                           ; $5b09: $0d
	ld   c, l                                        ; $5b0a: $4d
	ld   c, l                                        ; $5b0b: $4d
	ld   c, l                                        ; $5b0c: $4d
	dec  c                                           ; $5b0d: $0d
	dec  b                                           ; $5b0e: $05
	dec  b                                           ; $5b0f: $05
	dec  b                                           ; $5b10: $05
	dec  b                                           ; $5b11: $05
	dec  b                                           ; $5b12: $05
	dec  b                                           ; $5b13: $05
	dec  c                                           ; $5b14: $0d
	dec  b                                           ; $5b15: $05
	dec  b                                           ; $5b16: $05
	dec  h                                           ; $5b17: $25
	dec  bc                                          ; $5b18: $0b
	dec  bc                                          ; $5b19: $0b
	dec  b                                           ; $5b1a: $05
	dec  b                                           ; $5b1b: $05
	dec  c                                           ; $5b1c: $0d
	dec  b                                           ; $5b1d: $05
	dec  h                                           ; $5b1e: $25
	dec  h                                           ; $5b1f: $25
	dec  b                                           ; $5b20: $05
	dec  b                                           ; $5b21: $05
	dec  b                                           ; $5b22: $05
	dec  b                                           ; $5b23: $05
	dec  c                                           ; $5b24: $0d
	dec  c                                           ; $5b25: $0d
	dec  c                                           ; $5b26: $0d
	dec  b                                           ; $5b27: $05
	dec  c                                           ; $5b28: $0d
	dec  c                                           ; $5b29: $0d
	dec  c                                           ; $5b2a: $0d
	dec  b                                           ; $5b2b: $05
	dec  c                                           ; $5b2c: $0d
	dec  c                                           ; $5b2d: $0d
	dec  b                                           ; $5b2e: $05
	ld   b, l                                        ; $5b2f: $45
	dec  l                                           ; $5b30: $2d
	dec  b                                           ; $5b31: $05
	dec  c                                           ; $5b32: $0d
	dec  b                                           ; $5b33: $05
	dec  c                                           ; $5b34: $0d
	dec  b                                           ; $5b35: $05
	dec  b                                           ; $5b36: $05
	dec  b                                           ; $5b37: $05
	dec  b                                           ; $5b38: $05
	dec  b                                           ; $5b39: $05
	dec  b                                           ; $5b3a: $05
	dec  b                                           ; $5b3b: $05
	dec  c                                           ; $5b3c: $0d
	dec  b                                           ; $5b3d: $05
	dec  h                                           ; $5b3e: $25
	dec  h                                           ; $5b3f: $25
	dec  b                                           ; $5b40: $05
	dec  b                                           ; $5b41: $05
	dec  b                                           ; $5b42: $05
	dec  b                                           ; $5b43: $05
	dec  b                                           ; $5b44: $05
	dec  b                                           ; $5b45: $05
	dec  c                                           ; $5b46: $0d
	dec  b                                           ; $5b47: $05
	dec  b                                           ; $5b48: $05
	dec  b                                           ; $5b49: $05
	dec  c                                           ; $5b4a: $0d
	dec  c                                           ; $5b4b: $0d
	dec  c                                           ; $5b4c: $0d
	dec  b                                           ; $5b4d: $05
	dec  b                                           ; $5b4e: $05
	dec  h                                           ; $5b4f: $25
	dec  l                                           ; $5b50: $2d
	dec  b                                           ; $5b51: $05
	dec  c                                           ; $5b52: $0d
	ld   h, l                                        ; $5b53: $65
	dec  c                                           ; $5b54: $0d
	dec  b                                           ; $5b55: $05
	dec  c                                           ; $5b56: $0d
	dec  c                                           ; $5b57: $0d
	dec  b                                           ; $5b58: $05
	dec  b                                           ; $5b59: $05
	dec  c                                           ; $5b5a: $0d
	dec  c                                           ; $5b5b: $0d
	dec  c                                           ; $5b5c: $0d
	dec  b                                           ; $5b5d: $05
	dec  h                                           ; $5b5e: $25
	dec  h                                           ; $5b5f: $25
	dec  b                                           ; $5b60: $05
	dec  b                                           ; $5b61: $05
	dec  c                                           ; $5b62: $0d
	dec  b                                           ; $5b63: $05
	dec  b                                           ; $5b64: $05
	dec  b                                           ; $5b65: $05
	dec  b                                           ; $5b66: $05
	dec  b                                           ; $5b67: $05
	dec  b                                           ; $5b68: $05
	dec  b                                           ; $5b69: $05
	dec  b                                           ; $5b6a: $05
	dec  b                                           ; $5b6b: $05
	dec  b                                           ; $5b6c: $05
	dec  c                                           ; $5b6d: $0d
	dec  b                                           ; $5b6e: $05
	dec  h                                           ; $5b6f: $25
	dec  h                                           ; $5b70: $25
	dec  h                                           ; $5b71: $25
	dec  b                                           ; $5b72: $05
	dec  b                                           ; $5b73: $05
	ld   h, l                                        ; $5b74: $65
	dec  b                                           ; $5b75: $05
	dec  c                                           ; $5b76: $0d
	dec  c                                           ; $5b77: $0d
	dec  c                                           ; $5b78: $0d
	dec  b                                           ; $5b79: $05
	dec  c                                           ; $5b7a: $0d
	dec  b                                           ; $5b7b: $05
	dec  c                                           ; $5b7c: $0d
	dec  b                                           ; $5b7d: $05
	dec  h                                           ; $5b7e: $25
	dec  h                                           ; $5b7f: $25
	dec  b                                           ; $5b80: $05
	dec  b                                           ; $5b81: $05
	dec  c                                           ; $5b82: $0d
	dec  b                                           ; $5b83: $05
	dec  b                                           ; $5b84: $05
	dec  b                                           ; $5b85: $05
	dec  b                                           ; $5b86: $05
	ld   b, $26                                      ; $5b87: $06 $26
	dec  b                                           ; $5b89: $05
	dec  b                                           ; $5b8a: $05
	dec  b                                           ; $5b8b: $05
	dec  b                                           ; $5b8c: $05
	dec  b                                           ; $5b8d: $05
	dec  b                                           ; $5b8e: $05
	dec  h                                           ; $5b8f: $25
	dec  b                                           ; $5b90: $05
	dec  b                                           ; $5b91: $05
	dec  c                                           ; $5b92: $0d
	dec  c                                           ; $5b93: $0d
	dec  b                                           ; $5b94: $05
	dec  b                                           ; $5b95: $05
	dec  b                                           ; $5b96: $05
	dec  b                                           ; $5b97: $05
	dec  c                                           ; $5b98: $0d
	dec  c                                           ; $5b99: $0d
	dec  c                                           ; $5b9a: $0d
	dec  b                                           ; $5b9b: $05
	dec  b                                           ; $5b9c: $05
	dec  b                                           ; $5b9d: $05
	dec  h                                           ; $5b9e: $25
	dec  h                                           ; $5b9f: $25
	dec  b                                           ; $5ba0: $05
	dec  b                                           ; $5ba1: $05
	dec  b                                           ; $5ba2: $05
	dec  h                                           ; $5ba3: $25
	dec  h                                           ; $5ba4: $25
	dec  b                                           ; $5ba5: $05
	dec  b                                           ; $5ba6: $05
	ld   b, $26                                      ; $5ba7: $06 $26
	dec  b                                           ; $5ba9: $05
	dec  l                                           ; $5baa: $2d
	dec  b                                           ; $5bab: $05
	dec  b                                           ; $5bac: $05
	dec  c                                           ; $5bad: $0d
	dec  b                                           ; $5bae: $05
	dec  c                                           ; $5baf: $0d
	dec  b                                           ; $5bb0: $05
	dec  b                                           ; $5bb1: $05
	dec  c                                           ; $5bb2: $0d
	dec  c                                           ; $5bb3: $0d
	dec  b                                           ; $5bb4: $05
	ld   h, l                                        ; $5bb5: $65
	dec  b                                           ; $5bb6: $05
	dec  b                                           ; $5bb7: $05
	dec  b                                           ; $5bb8: $05
	dec  b                                           ; $5bb9: $05
	dec  c                                           ; $5bba: $0d
	dec  b                                           ; $5bbb: $05
	dec  b                                           ; $5bbc: $05
	dec  l                                           ; $5bbd: $2d
	dec  c                                           ; $5bbe: $0d
	dec  c                                           ; $5bbf: $0d
	dec  l                                           ; $5bc0: $2d
	dec  b                                           ; $5bc1: $05
	dec  b                                           ; $5bc2: $05
	dec  b                                           ; $5bc3: $05
	dec  b                                           ; $5bc4: $05
	dec  c                                           ; $5bc5: $0d
	dec  c                                           ; $5bc6: $0d
	dec  c                                           ; $5bc7: $0d
	dec  c                                           ; $5bc8: $0d
	dec  c                                           ; $5bc9: $0d
	dec  l                                           ; $5bca: $2d
	dec  b                                           ; $5bcb: $05
	dec  b                                           ; $5bcc: $05
	dec  c                                           ; $5bcd: $0d
	dec  b                                           ; $5bce: $05
	dec  b                                           ; $5bcf: $05
	dec  b                                           ; $5bd0: $05
	dec  b                                           ; $5bd1: $05
	dec  c                                           ; $5bd2: $0d
	dec  c                                           ; $5bd3: $0d
	dec  b                                           ; $5bd4: $05
	dec  b                                           ; $5bd5: $05
	dec  b                                           ; $5bd6: $05
	dec  b                                           ; $5bd7: $05
	dec  b                                           ; $5bd8: $05
	dec  b                                           ; $5bd9: $05
	dec  b                                           ; $5bda: $05
	dec  l                                           ; $5bdb: $2d
	dec  c                                           ; $5bdc: $0d
	dec  l                                           ; $5bdd: $2d
	dec  l                                           ; $5bde: $2d
	dec  b                                           ; $5bdf: $05
	xor  l                                           ; $5be0: $ad
	add  l                                           ; $5be1: $85
	add  l                                           ; $5be2: $85
	add  l                                           ; $5be3: $85
	add  l                                           ; $5be4: $85
	adc  l                                           ; $5be5: $8d
	adc  l                                           ; $5be6: $8d
	adc  l                                           ; $5be7: $8d
	adc  l                                           ; $5be8: $8d
	adc  l                                           ; $5be9: $8d
	and  l                                           ; $5bea: $a5
	add  l                                           ; $5beb: $85
	add  l                                           ; $5bec: $85
	and  l                                           ; $5bed: $a5
	add  l                                           ; $5bee: $85
	xor  l                                           ; $5bef: $ad
	and  l                                           ; $5bf0: $a5
	and  l                                           ; $5bf1: $a5
	adc  l                                           ; $5bf2: $8d
	adc  l                                           ; $5bf3: $8d
	add  l                                           ; $5bf4: $85
	add  l                                           ; $5bf5: $85
	add  l                                           ; $5bf6: $85
	add  l                                           ; $5bf7: $85
	add  l                                           ; $5bf8: $85
	add  l                                           ; $5bf9: $85
	add  l                                           ; $5bfa: $85
	xor  l                                           ; $5bfb: $ad
	adc  l                                           ; $5bfc: $8d
	xor  l                                           ; $5bfd: $ad
	xor  l                                           ; $5bfe: $ad
	dec  b                                           ; $5bff: $05
	ld   [hl], e                                     ; $5c00: $73
	ld   h, d                                        ; $5c01: $62
	ld   h, e                                        ; $5c02: $63
	ld   b, l                                        ; $5c03: $45
	ld   b, l                                        ; $5c04: $45
	ld   b, l                                        ; $5c05: $45
	ld   b, l                                        ; $5c06: $45
	ld   b, l                                        ; $5c07: $45
	ld   b, l                                        ; $5c08: $45
	ld   b, l                                        ; $5c09: $45
	ld   a, [hl-]                                    ; $5c0a: $3a
	ld   a, [hl-]                                    ; $5c0b: $3a
	rlca                                             ; $5c0c: $07
	jr   jr_029_5c27                                 ; $5c0d: $18 $18

	jr   jr_029_5c2a                                 ; $5c0f: $18 $19

	ld   h, [hl]                                     ; $5c11: $66
	ld   h, a                                        ; $5c12: $67
	ld   l, b                                        ; $5c13: $68
	ld   l, c                                        ; $5c14: $69
	ld   h, a                                        ; $5c15: $67
	ld   h, [hl]                                     ; $5c16: $66
	inc  de                                          ; $5c17: $13
	inc  d                                           ; $5c18: $14
	inc  de                                          ; $5c19: $13
	inc  d                                           ; $5c1a: $14
	inc  de                                          ; $5c1b: $13
	inc  d                                           ; $5c1c: $14
	rlca                                             ; $5c1d: $07
	inc  bc                                          ; $5c1e: $03
	inc  bc                                          ; $5c1f: $03
	ld   [hl], e                                     ; $5c20: $73
	ld   [hl], d                                     ; $5c21: $72
	ld   [hl], e                                     ; $5c22: $73
	ld   b, l                                        ; $5c23: $45
	ld   b, l                                        ; $5c24: $45
	ld   b, l                                        ; $5c25: $45
	ld   b, l                                        ; $5c26: $45

jr_029_5c27:
	ld   b, l                                        ; $5c27: $45
	ld   b, l                                        ; $5c28: $45
	ld   b, [hl]                                     ; $5c29: $46

jr_029_5c2a:
	inc  c                                           ; $5c2a: $0c
	inc  c                                           ; $5c2b: $0c
	rla                                              ; $5c2c: $17
	jr   @+$1a                                       ; $5c2d: $18 $18

	jr   jr_029_5c4a                                 ; $5c2f: $18 $19

	halt                                             ; $5c31: $76
	ld   [hl], a                                     ; $5c32: $77
	ld   a, b                                        ; $5c33: $78
	ld   a, c                                        ; $5c34: $79
	ld   [hl], a                                     ; $5c35: $77
	halt                                             ; $5c36: $76
	inc  hl                                          ; $5c37: $23
	inc  h                                           ; $5c38: $24
	inc  hl                                          ; $5c39: $23
	inc  h                                           ; $5c3a: $24
	inc  hl                                          ; $5c3b: $23
	inc  h                                           ; $5c3c: $24
	ld   [$1413], sp                                 ; $5c3d: $08 $13 $14
	ld   [hl], e                                     ; $5c40: $73
	dec  l                                           ; $5c41: $2d
	dec  l                                           ; $5c42: $2d
	dec  e                                           ; $5c43: $1d
	ld   a, $1d                                      ; $5c44: $3e $1d
	ld   a, $1d                                      ; $5c46: $3e $1d
	ld   a, $0c                                      ; $5c48: $3e $0c

jr_029_5c4a:
	ld   a, $11                                      ; $5c4a: $3e $11
	daa                                              ; $5c4c: $27
	jr   z, @+$2a                                    ; $5c4d: $28 $28

	jr   z, jr_029_5c7a                              ; $5c4f: $28 $29

	ld   l, h                                        ; $5c51: $6c
	ld   l, l                                        ; $5c52: $6d
	ld   a, l                                        ; $5c53: $7d
	ld   a, h                                        ; $5c54: $7c
	ld   l, l                                        ; $5c55: $6d
	ld   l, h                                        ; $5c56: $6c
	inc  c                                           ; $5c57: $0c
	inc  c                                           ; $5c58: $0c
	dec  e                                           ; $5c59: $1d
	ld   e, $0c                                      ; $5c5a: $1e $0c
	ld   de, $2315                                   ; $5c5c: $11 $15 $23
	inc  h                                           ; $5c5f: $24
	ld   [hl], e                                     ; $5c60: $73
	dec  c                                           ; $5c61: $0d
	ld   c, $0d                                      ; $5c62: $0e $0d
	ld   c, $0d                                      ; $5c64: $0e $0d
	ld   c, $0d                                      ; $5c66: $0e $0d
	ld   c, $0d                                      ; $5c68: $0e $0d
	ld   c, $0d                                      ; $5c6a: $0e $0d
	ld   c, $0d                                      ; $5c6c: $0e $0d
	ld   c, $0d                                      ; $5c6e: $0e $0d
	ld   c, $0e                                      ; $5c70: $0e $0e
	ld   sp, $2120                                   ; $5c72: $31 $20 $21
	ld   sp, $0d0e                                   ; $5c75: $31 $0e $0d
	ld   c, $0d                                      ; $5c78: $0e $0d

jr_029_5c7a:
	inc  c                                           ; $5c7a: $0c
	dec  c                                           ; $5c7b: $0d
	ld   c, $0c                                      ; $5c7c: $0e $0c
	ld   h, $07                                      ; $5c7e: $26 $07
	ld   [hl], e                                     ; $5c80: $73
	dec  e                                           ; $5c81: $1d
	inc  c                                           ; $5c82: $0c
	inc  c                                           ; $5c83: $0c
	inc  c                                           ; $5c84: $0c
	inc  c                                           ; $5c85: $0c
	inc  c                                           ; $5c86: $0c
	dec  e                                           ; $5c87: $1d
	inc  c                                           ; $5c88: $0c
	inc  c                                           ; $5c89: $0c
	inc  c                                           ; $5c8a: $0c
	inc  c                                           ; $5c8b: $0c
	inc  c                                           ; $5c8c: $0c
	inc  c                                           ; $5c8d: $0c
	inc  c                                           ; $5c8e: $0c
	dec  e                                           ; $5c8f: $1d
	ld   e, $0c                                      ; $5c90: $1e $0c
	ld   sp, $2120                                   ; $5c92: $31 $20 $21
	ld   sp, $0c0c                                   ; $5c95: $31 $0c $0c
	inc  c                                           ; $5c98: $0c
	inc  c                                           ; $5c99: $0c
	inc  c                                           ; $5c9a: $0c
	inc  c                                           ; $5c9b: $0c
	ld   e, $1d                                      ; $5c9c: $1e $1d
	cpl                                              ; $5c9e: $2f
	ccf                                              ; $5c9f: $3f
	add  hl, de                                      ; $5ca0: $19
	inc  de                                          ; $5ca1: $13
	inc  de                                          ; $5ca2: $13
	inc  de                                          ; $5ca3: $13
	inc  d                                           ; $5ca4: $14
	dec  d                                           ; $5ca5: $15
	ld   d, $0c                                      ; $5ca6: $16 $0c
	inc  c                                           ; $5ca8: $0c
	inc  c                                           ; $5ca9: $0c
	inc  c                                           ; $5caa: $0c
	dec  c                                           ; $5cab: $0d
	inc  c                                           ; $5cac: $0c
	inc  c                                           ; $5cad: $0c
	inc  c                                           ; $5cae: $0c
	inc  c                                           ; $5caf: $0c
	inc  c                                           ; $5cb0: $0c
	ld   c, $31                                      ; $5cb1: $0e $31
	jr   nz, @+$23                                   ; $5cb3: $20 $21

	ld   sp, $0c0e                                   ; $5cb5: $31 $0e $0c
	inc  c                                           ; $5cb8: $0c
	dec  c                                           ; $5cb9: $0d
	inc  c                                           ; $5cba: $0c
	inc  c                                           ; $5cbb: $0c
	inc  c                                           ; $5cbc: $0c
	dec  c                                           ; $5cbd: $0d
	ld   c, $3f                                      ; $5cbe: $0e $3f
	add  hl, hl                                      ; $5cc0: $29
	inc  hl                                          ; $5cc1: $23
	ld   [de], a                                     ; $5cc2: $12
	ld   [de], a                                     ; $5cc3: $12
	inc  h                                           ; $5cc4: $24
	dec  h                                           ; $5cc5: $25
	ld   h, $1d                                      ; $5cc6: $26 $1d
	ld   a, $1d                                      ; $5cc8: $3e $1d
	ld   a, $0c                                      ; $5cca: $3e $0c
	ld   e, $0c                                      ; $5ccc: $1e $0c
	inc  c                                           ; $5cce: $0c
	inc  c                                           ; $5ccf: $0c
	ld   e, $0c                                      ; $5cd0: $1e $0c
	ld   sp, $2120                                   ; $5cd2: $31 $20 $21
	ld   sp, $0c0c                                   ; $5cd5: $31 $0c $0c
	ld   b, b                                        ; $5cd8: $40
	ld   b, c                                        ; $5cd9: $41
	ld   b, d                                        ; $5cda: $42
	inc  c                                           ; $5cdb: $0c
	ld   a, $1d                                      ; $5cdc: $3e $1d
	ld   e, $3f                                      ; $5cde: $1e $3f
	jr   @+$0f                                       ; $5ce0: $18 $0d

	ld   [hl+], a                                    ; $5ce2: $22
	ld   [hl+], a                                    ; $5ce3: $22
	inc  c                                           ; $5ce4: $0c
	dec  c                                           ; $5ce5: $0d
	jr   jr_029_5cf5                                 ; $5ce6: $18 $0d

	ld   c, $0d                                      ; $5ce8: $0e $0d
	ld   c, $0d                                      ; $5cea: $0e $0d
	ld   c, $0d                                      ; $5cec: $0e $0d
	ld   c, $0d                                      ; $5cee: $0e $0d
	ld   c, $0c                                      ; $5cf0: $0e $0c
	ld   sp, $2120                                   ; $5cf2: $31 $20 $21

jr_029_5cf5:
	ld   sp, $0d0e                                   ; $5cf5: $31 $0e $0d
	ld   c, $43                                      ; $5cf8: $0e $43
	ld   b, h                                        ; $5cfa: $44
	ld   b, l                                        ; $5cfb: $45
	inc  c                                           ; $5cfc: $0c
	dec  c                                           ; $5cfd: $0d
	ld   c, $3f                                      ; $5cfe: $0e $3f
	jr   z, @+$1f                                    ; $5d00: $28 $1d

	inc  c                                           ; $5d02: $0c
	dec  e                                           ; $5d03: $1d
	ld   a, $1d                                      ; $5d04: $3e $1d
	jr   z, jr_029_5d6c                              ; $5d06: $28 $64

	ld   h, l                                        ; $5d08: $65
	ld   h, [hl]                                     ; $5d09: $66
	ld   h, a                                        ; $5d0a: $67
	dec  e                                           ; $5d0b: $1d
	ld   e, $0c                                      ; $5d0c: $1e $0c
	ld   e, $0c                                      ; $5d0e: $1e $0c
	ld   e, $3e                                      ; $5d10: $1e $3e
	ld   sp, $2120                                   ; $5d12: $31 $20 $21
	ld   sp, $1d0c                                   ; $5d15: $31 $0c $1d
	inc  c                                           ; $5d18: $0c
	ld   b, [hl]                                     ; $5d19: $46
	ld   b, a                                        ; $5d1a: $47
	inc  c                                           ; $5d1b: $0c
	ld   a, $1d                                      ; $5d1c: $3e $1d
	ld   e, $3f                                      ; $5d1e: $1e $3f
	ld   e, d                                        ; $5d20: $5a
	dec  c                                           ; $5d21: $0d
	ld   c, $0c                                      ; $5d22: $0e $0c
	dec  c                                           ; $5d24: $0d
	rla                                              ; $5d25: $17
	ld   e, d                                        ; $5d26: $5a
	ld   e, e                                        ; $5d27: $5b
	ld   d, a                                        ; $5d28: $57
	ld   e, b                                        ; $5d29: $58
	ld   [hl], d                                     ; $5d2a: $72
	rlca                                             ; $5d2b: $07
	inc  bc                                          ; $5d2c: $03
	inc  bc                                          ; $5d2d: $03
	inc  bc                                          ; $5d2e: $03
	inc  bc                                          ; $5d2f: $03
	inc  bc                                          ; $5d30: $03
	inc  bc                                          ; $5d31: $03
	inc  bc                                          ; $5d32: $03
	inc  bc                                          ; $5d33: $03
	inc  bc                                          ; $5d34: $03
	inc  bc                                          ; $5d35: $03
	inc  bc                                          ; $5d36: $03
	rlca                                             ; $5d37: $07
	inc  c                                           ; $5d38: $0c
	dec  c                                           ; $5d39: $0d
	ld   c, $0c                                      ; $5d3a: $0e $0c
	inc  c                                           ; $5d3c: $0c
	dec  c                                           ; $5d3d: $0d
	ld   c, $3f                                      ; $5d3e: $0e $3f
	ld   e, l                                        ; $5d40: $5d
	ld   sp, $3031                                   ; $5d41: $31 $31 $30
	dec  e                                           ; $5d44: $1d
	ld   c, c                                        ; $5d45: $49
	ld   l, d                                        ; $5d46: $6a
	ld   l, e                                        ; $5d47: $6b
	ld   d, a                                        ; $5d48: $57
	ld   e, b                                        ; $5d49: $58
	ld   [hl], d                                     ; $5d4a: $72
	daa                                              ; $5d4b: $27
	jr   z, jr_029_5d76                              ; $5d4c: $28 $28

	jr   z, jr_029_5d78                              ; $5d4e: $28 $28

	jr   z, jr_029_5d7a                              ; $5d50: $28 $28

	jr   z, jr_029_5d7c                              ; $5d52: $28 $28

	add  hl, hl                                      ; $5d54: $29
	dec  bc                                          ; $5d55: $0b
	inc  c                                           ; $5d56: $0c
	ld   [$0c3e], sp                                 ; $5d57: $08 $3e $0c
	inc  c                                           ; $5d5a: $0c
	inc  c                                           ; $5d5b: $0c
	ld   a, $1d                                      ; $5d5c: $3e $1d
	ld   e, $08                                      ; $5d5e: $1e $08
	ld   l, l                                        ; $5d60: $6d
	inc  sp                                          ; $5d61: $33
	inc  sp                                          ; $5d62: $33
	ld   [hl-], a                                    ; $5d63: $32
	inc  sp                                          ; $5d64: $33
	ld   c, b                                        ; $5d65: $48
	ld   a, d                                        ; $5d66: $7a
	dec  hl                                          ; $5d67: $2b
	dec  hl                                          ; $5d68: $2b
	ld   e, b                                        ; $5d69: $58
	ld   e, c                                        ; $5d6a: $59
	ld   b, l                                        ; $5d6b: $45

jr_029_5d6c:
	ld   b, [hl]                                     ; $5d6c: $46
	inc  bc                                          ; $5d6d: $03
	inc  bc                                          ; $5d6e: $03
	inc  bc                                          ; $5d6f: $03
	inc  bc                                          ; $5d70: $03
	inc  bc                                          ; $5d71: $03
	inc  bc                                          ; $5d72: $03
	inc  hl                                          ; $5d73: $23
	inc  h                                           ; $5d74: $24
	dec  de                                          ; $5d75: $1b

jr_029_5d76:
	dec  de                                          ; $5d76: $1b
	add  hl, bc                                      ; $5d77: $09

jr_029_5d78:
	inc  c                                           ; $5d78: $0c
	dec  c                                           ; $5d79: $0d

jr_029_5d7a:
	inc  c                                           ; $5d7a: $0c
	inc  c                                           ; $5d7b: $0c

jr_029_5d7c:
	ld   c, $4f                                      ; $5d7c: $0e $4f
	ld   d, c                                        ; $5d7e: $51
	ld   d, b                                        ; $5d7f: $50
	ld   c, c                                        ; $5d80: $49
	dec  e                                           ; $5d81: $1d
	inc  c                                           ; $5d82: $0c
	inc  c                                           ; $5d83: $0c
	ld   a, $1d                                      ; $5d84: $3e $1d
	ld   a, $1b                                      ; $5d86: $3e $1b
	dec  de                                          ; $5d88: $1b
	ld   b, $3e                                      ; $5d89: $06 $3e
	dec  e                                           ; $5d8b: $1d
	ld   a, $1d                                      ; $5d8c: $3e $1d
	ld   a, $1d                                      ; $5d8e: $3e $1d
	ld   a, $1d                                      ; $5d90: $3e $1d
	ld   a, $1d                                      ; $5d92: $3e $1d
	ld   de, $2c2c                                   ; $5d94: $11 $2c $2c
	ld   b, e                                        ; $5d97: $43
	inc  c                                           ; $5d98: $0c
	inc  c                                           ; $5d99: $0c
	inc  c                                           ; $5d9a: $0c
	inc  c                                           ; $5d9b: $0c
	ld   e, $5f                                      ; $5d9c: $1e $5f
	ld   h, c                                        ; $5d9e: $61
	ld   h, b                                        ; $5d9f: $60
	dec  bc                                          ; $5da0: $0b
	dec  c                                           ; $5da1: $0d
	inc  c                                           ; $5da2: $0c
	dec  c                                           ; $5da3: $0d
	ld   c, $0d                                      ; $5da4: $0e $0d
	ld   c, $1b                                      ; $5da6: $0e $1b
	dec  de                                          ; $5da8: $1b
	inc  sp                                          ; $5da9: $33
	ld   c, $0d                                      ; $5daa: $0e $0d
	inc  c                                           ; $5dac: $0c
	dec  c                                           ; $5dad: $0d
	inc  c                                           ; $5dae: $0c
	inc  c                                           ; $5daf: $0c
	inc  c                                           ; $5db0: $0c
	dec  c                                           ; $5db1: $0d
	ld   c, $0d                                      ; $5db2: $0e $0d
	ld   c, $2b                                      ; $5db4: $0e $2b
	dec  hl                                          ; $5db6: $2b
	inc  sp                                          ; $5db7: $33
	inc  c                                           ; $5db8: $0c
	dec  c                                           ; $5db9: $0d
	inc  c                                           ; $5dba: $0c
	inc  c                                           ; $5dbb: $0c
	ld   c, $6f                                      ; $5dbc: $0e $6f
	ld   l, [hl]                                     ; $5dbe: $6e
	jr   c, jr_029_5e09                              ; $5dbf: $38 $48

	ld   c, c                                        ; $5dc1: $49
	ld   a, $0c                                      ; $5dc2: $3e $0c
	ld   a, $1d                                      ; $5dc4: $3e $1d
	ld   a, $1b                                      ; $5dc6: $3e $1b
	dec  de                                          ; $5dc8: $1b
	ld   b, e                                        ; $5dc9: $43
	inc  c                                           ; $5dca: $0c
	ld   b, d                                        ; $5dcb: $42
	ld   b, c                                        ; $5dcc: $41
	ld   b, c                                        ; $5dcd: $41
	ld   b, b                                        ; $5dce: $40
	inc  c                                           ; $5dcf: $0c
	inc  c                                           ; $5dd0: $0c
	inc  c                                           ; $5dd1: $0c
	inc  c                                           ; $5dd2: $0c
	inc  c                                           ; $5dd3: $0c
	ld   a, $30                                      ; $5dd4: $3e $30
	jr   nc, jr_029_5e1b                             ; $5dd6: $30 $43

	ld   a, $0c                                      ; $5dd8: $3e $0c
	inc  c                                           ; $5dda: $0c
	dec  e                                           ; $5ddb: $1d
	ld   e, $56                                      ; $5ddc: $1e $56
	ld   d, l                                        ; $5dde: $55
	ld   b, l                                        ; $5ddf: $45
	ld   [bc], a                                     ; $5de0: $02
	ld   [bc], a                                     ; $5de1: $02
	inc  c                                           ; $5de2: $0c
	dec  c                                           ; $5de3: $0d
	inc  c                                           ; $5de4: $0c
	dec  c                                           ; $5de5: $0d
	ld   c, $1b                                      ; $5de6: $0e $1b
	dec  de                                          ; $5de8: $1b
	inc  sp                                          ; $5de9: $33
	ld   b, l                                        ; $5dea: $45
	ld   b, h                                        ; $5deb: $44
	ld   b, e                                        ; $5dec: $43
	inc  c                                           ; $5ded: $0c
	ld   c, $5e                                      ; $5dee: $0e $5e
	ld   e, a                                        ; $5df0: $5f
	dec  c                                           ; $5df1: $0d
	inc  c                                           ; $5df2: $0c
	dec  c                                           ; $5df3: $0d
	ld   c, $0d                                      ; $5df4: $0e $0d
	ld   e, d                                        ; $5df6: $5a
	ld   e, e                                        ; $5df7: $5b
	inc  c                                           ; $5df8: $0c
	dec  c                                           ; $5df9: $0d
	inc  c                                           ; $5dfa: $0c
	inc  c                                           ; $5dfb: $0c
	ld   c, $4f                                      ; $5dfc: $0e $4f
	ld   d, c                                        ; $5dfe: $51
	ld   d, b                                        ; $5dff: $50
	ld   [bc], a                                     ; $5e00: $02
	ld   [bc], a                                     ; $5e01: $02
	ld   a, $0c                                      ; $5e02: $3e $0c
	inc  c                                           ; $5e04: $0c
	dec  e                                           ; $5e05: $1d
	ld   a, $1b                                      ; $5e06: $3e $1b
	dec  de                                          ; $5e08: $1b

jr_029_5e09:
	ld   b, e                                        ; $5e09: $43
	inc  c                                           ; $5e0a: $0c
	ld   b, a                                        ; $5e0b: $47
	ld   b, [hl]                                     ; $5e0c: $46
	inc  c                                           ; $5e0d: $0c
	ld   b, a                                        ; $5e0e: $47
	ld   l, [hl]                                     ; $5e0f: $6e
	ld   l, a                                        ; $5e10: $6f
	dec  e                                           ; $5e11: $1d
	inc  c                                           ; $5e12: $0c
	dec  e                                           ; $5e13: $1d
	ld   a, $1d                                      ; $5e14: $3e $1d
	ld   l, d                                        ; $5e16: $6a
	ld   l, e                                        ; $5e17: $6b
	ld   a, $0c                                      ; $5e18: $3e $0c
	inc  c                                           ; $5e1a: $0c

jr_029_5e1b:
	inc  c                                           ; $5e1b: $0c
	ld   e, $5f                                      ; $5e1c: $1e $5f
	ld   h, c                                        ; $5e1e: $61
	ld   h, b                                        ; $5e1f: $60
	ld   e, b                                        ; $5e20: $58
	ld   e, c                                        ; $5e21: $59
	inc  c                                           ; $5e22: $0c
	dec  c                                           ; $5e23: $0d
	inc  c                                           ; $5e24: $0c
	dec  c                                           ; $5e25: $0d
	ld   b, a                                        ; $5e26: $47
	dec  de                                          ; $5e27: $1b
	dec  de                                          ; $5e28: $1b
	inc  sp                                          ; $5e29: $33
	ld   c, $0d                                      ; $5e2a: $0e $0d
	ld   c, $0d                                      ; $5e2c: $0e $0d
	rla                                              ; $5e2e: $17
	ld   l, d                                        ; $5e2f: $6a
	ld   l, e                                        ; $5e30: $6b
	inc  sp                                          ; $5e31: $33
	inc  c                                           ; $5e32: $0c
	inc  c                                           ; $5e33: $0c
	ld   c, $0d                                      ; $5e34: $0e $0d
	ld   a, d                                        ; $5e36: $7a
	ld   h, e                                        ; $5e37: $63
	inc  c                                           ; $5e38: $0c
	dec  c                                           ; $5e39: $0d
	inc  c                                           ; $5e3a: $0c
	dec  c                                           ; $5e3b: $0d
	ld   c, $6f                                      ; $5e3c: $0e $6f
	ld   l, [hl]                                     ; $5e3e: $6e
	ld   h, $59                                      ; $5e3f: $26 $59
	dec  e                                           ; $5e41: $1d
	inc  c                                           ; $5e42: $0c
	inc  c                                           ; $5e43: $0c
	ld   a, $1d                                      ; $5e44: $3e $1d
	ld   d, a                                        ; $5e46: $57
	inc  l                                           ; $5e47: $2c
	inc  l                                           ; $5e48: $2c
	ld   b, e                                        ; $5e49: $43
	ld   a, $1d                                      ; $5e4a: $3e $1d
	inc  c                                           ; $5e4c: $0c
	ld   c, $0f                                      ; $5e4d: $0e $0f
	ld   a, d                                        ; $5e4f: $7a
	ld   h, e                                        ; $5e50: $63
	ld   b, e                                        ; $5e51: $43
	ld   a, $0c                                      ; $5e52: $3e $0c
	ld   a, $0c                                      ; $5e54: $3e $0c
	ld   a, $73                                      ; $5e56: $3e $73
	ld   a, $1d                                      ; $5e58: $3e $1d
	inc  c                                           ; $5e5a: $0c
	dec  e                                           ; $5e5b: $1d
	ld   e, $56                                      ; $5e5c: $1e $56
	ld   d, l                                        ; $5e5e: $55
	ld   b, l                                        ; $5e5f: $45
	ld   d, e                                        ; $5e60: $53
	dec  c                                           ; $5e61: $0d
	ld   c, $0c                                      ; $5e62: $0e $0c
	ld   c, $64                                      ; $5e64: $0e $64
	ld   e, c                                        ; $5e66: $59
	dec  de                                          ; $5e67: $1b
	dec  de                                          ; $5e68: $1b
	inc  sp                                          ; $5e69: $33
	ld   c, $0d                                      ; $5e6a: $0e $0d
	inc  c                                           ; $5e6c: $0c
	inc  c                                           ; $5e6d: $0c
	ld   c, $0d                                      ; $5e6e: $0e $0d
	dec  d                                           ; $5e70: $15
	inc  sp                                          ; $5e71: $33
	inc  c                                           ; $5e72: $0c
	dec  c                                           ; $5e73: $0d
	inc  c                                           ; $5e74: $0c
	dec  c                                           ; $5e75: $0d
	inc  c                                           ; $5e76: $0c
	ld   h, e                                        ; $5e77: $63
	inc  c                                           ; $5e78: $0c
	dec  c                                           ; $5e79: $0d
	inc  c                                           ; $5e7a: $0c
	dec  c                                           ; $5e7b: $0d
	inc  c                                           ; $5e7c: $0c
	inc  sp                                          ; $5e7d: $33
	ld   d, l                                        ; $5e7e: $55
	ld   b, [hl]                                     ; $5e7f: $46
	ld   [hl], e                                     ; $5e80: $73
	dec  e                                           ; $5e81: $1d
	inc  c                                           ; $5e82: $0c
	inc  c                                           ; $5e83: $0c
	ld   a, $28                                      ; $5e84: $3e $28
	ld   b, l                                        ; $5e86: $45
	dec  hl                                          ; $5e87: $2b
	dec  hl                                          ; $5e88: $2b
	ld   h, h                                        ; $5e89: $64
	ld   a, $0c                                      ; $5e8a: $3e $0c
	inc  c                                           ; $5e8c: $0c
	inc  c                                           ; $5e8d: $0c
	inc  c                                           ; $5e8e: $0c
	dec  e                                           ; $5e8f: $1d
	ld   a, $53                                      ; $5e90: $3e $53
	db   $10                                         ; $5e92: $10
	dec  e                                           ; $5e93: $1d
	inc  c                                           ; $5e94: $0c
	dec  e                                           ; $5e95: $1d
	ld   a, $73                                      ; $5e96: $3e $73
	ld   a, $1d                                      ; $5e98: $3e $1d
	inc  c                                           ; $5e9a: $0c
	inc  c                                           ; $5e9b: $0c
	inc  c                                           ; $5e9c: $0c
	ld   b, e                                        ; $5e9d: $43
	ld   d, l                                        ; $5e9e: $55
	jr   c, jr_029_5f14                              ; $5e9f: $38 $73

	dec  c                                           ; $5ea1: $0d
	inc  c                                           ; $5ea2: $0c
	dec  c                                           ; $5ea3: $0d
	ld   c, $5c                                      ; $5ea4: $0e $5c
	ld   e, l                                        ; $5ea6: $5d
	inc  a                                           ; $5ea7: $3c
	inc  a                                           ; $5ea8: $3c
	ld   [hl], h                                     ; $5ea9: $74
	ld   [hl], d                                     ; $5eaa: $72
	inc  c                                           ; $5eab: $0c
	inc  c                                           ; $5eac: $0c
	dec  c                                           ; $5ead: $0d
	inc  c                                           ; $5eae: $0c
	dec  c                                           ; $5eaf: $0d
	ld   c, $63                                      ; $5eb0: $0e $63
	inc  sp                                          ; $5eb2: $33
	dec  c                                           ; $5eb3: $0d
	ld   c, $0c                                      ; $5eb4: $0e $0c
	inc  c                                           ; $5eb6: $0c
	ld   [hl], e                                     ; $5eb7: $73
	ld   de, $0c0d                                   ; $5eb8: $11 $0d $0c
	inc  c                                           ; $5ebb: $0c
	inc  c                                           ; $5ebc: $0c
	ld   de, $0356                                   ; $5ebd: $11 $56 $03
	ld   [hl], e                                     ; $5ec0: $73
	dec  e                                           ; $5ec1: $1d
	ld   a, $0c                                      ; $5ec2: $3e $0c
	ld   a, $6c                                      ; $5ec4: $3e $6c
	ld   l, l                                        ; $5ec6: $6d
	ld   a, d                                        ; $5ec7: $7a
	ld   a, e                                        ; $5ec8: $7b
	ld   [$7473], sp                                 ; $5ec9: $08 $73 $74
	ld   a, $0c                                      ; $5ecc: $3e $0c
	inc  c                                           ; $5ece: $0c
	inc  c                                           ; $5ecf: $0c
	ld   a, $73                                      ; $5ed0: $3e $73
	ld   b, e                                        ; $5ed2: $43
	inc  c                                           ; $5ed3: $0c
	ld   a, $1d                                      ; $5ed4: $3e $1d
	ld   a, $73                                      ; $5ed6: $3e $73
	ld   d, e                                        ; $5ed8: $53
	dec  e                                           ; $5ed9: $1d
	ld   a, $1d                                      ; $5eda: $3e $1d
	inc  c                                           ; $5edc: $0c
	inc  c                                           ; $5edd: $0c
	ld   e, a                                        ; $5ede: $5f
	ld   c, [hl]                                     ; $5edf: $4e
	ld   [hl], e                                     ; $5ee0: $73
	dec  c                                           ; $5ee1: $0d
	inc  c                                           ; $5ee2: $0c
	inc  c                                           ; $5ee3: $0c
	inc  c                                           ; $5ee4: $0c
	dec  c                                           ; $5ee5: $0d
	ld   c, $0d                                      ; $5ee6: $0e $0d
	ld   c, $11                                      ; $5ee8: $0e $11
	ld   [hl], b                                     ; $5eea: $70
	ld   [hl], c                                     ; $5eeb: $71
	inc  c                                           ; $5eec: $0c
	inc  c                                           ; $5eed: $0c
	inc  c                                           ; $5eee: $0c
	inc  c                                           ; $5eef: $0c
	ld   c, $73                                      ; $5ef0: $0e $73
	inc  sp                                          ; $5ef2: $33
	dec  c                                           ; $5ef3: $0d
	ld   c, $0d                                      ; $5ef4: $0e $0d
	inc  c                                           ; $5ef6: $0c
	ld   h, e                                        ; $5ef7: $63
	ld   [hl], e                                     ; $5ef8: $73
	inc  sp                                          ; $5ef9: $33
	inc  c                                           ; $5efa: $0c
	dec  c                                           ; $5efb: $0d
	inc  c                                           ; $5efc: $0c
	ld   c, $6f                                      ; $5efd: $0e $6f
	ld   l, [hl]                                     ; $5eff: $6e
	ld   [hl], e                                     ; $5f00: $73
	dec  e                                           ; $5f01: $1d
	ld   a, $1d                                      ; $5f02: $3e $1d
	inc  c                                           ; $5f04: $0c
	inc  c                                           ; $5f05: $0c
	ld   a, $0c                                      ; $5f06: $3e $0c
	inc  c                                           ; $5f08: $0c
	inc  c                                           ; $5f09: $0c
	inc  c                                           ; $5f0a: $0c
	inc  c                                           ; $5f0b: $0c
	inc  c                                           ; $5f0c: $0c
	inc  c                                           ; $5f0d: $0c
	ld   a, $1d                                      ; $5f0e: $3e $1d
	ld   a, $73                                      ; $5f10: $3e $73
	ld   b, e                                        ; $5f12: $43
	dec  e                                           ; $5f13: $1d

jr_029_5f14:
	inc  c                                           ; $5f14: $0c
	dec  e                                           ; $5f15: $1d
	ld   a, $61                                      ; $5f16: $3e $61
	ld   a, [hl-]                                    ; $5f18: $3a
	dec  sp                                          ; $5f19: $3b
	ld   a, $1d                                      ; $5f1a: $3e $1d
	inc  c                                           ; $5f1c: $0c
	ld   e, $56                                      ; $5f1d: $1e $56
	ld   d, l                                        ; $5f1f: $55
	ld   [hl], e                                     ; $5f20: $73
	dec  c                                           ; $5f21: $0d
	ld   c, $0d                                      ; $5f22: $0e $0d
	inc  c                                           ; $5f24: $0c
	inc  c                                           ; $5f25: $0c
	inc  c                                           ; $5f26: $0c
	dec  c                                           ; $5f27: $0d
	inc  c                                           ; $5f28: $0c
	inc  c                                           ; $5f29: $0c
	inc  c                                           ; $5f2a: $0c
	dec  c                                           ; $5f2b: $0d
	inc  c                                           ; $5f2c: $0c
	inc  c                                           ; $5f2d: $0c
	ld   c, $11                                      ; $5f2e: $0e $11
	rlca                                             ; $5f30: $07
	inc  bc                                          ; $5f31: $03
	rlca                                             ; $5f32: $07
	dec  c                                           ; $5f33: $0d
	inc  c                                           ; $5f34: $0c
	dec  c                                           ; $5f35: $0d
	ld   c, $11                                      ; $5f36: $0e $11
	ld   a, d                                        ; $5f38: $7a
	ld   a, e                                        ; $5f39: $7b
	ld   c, $0d                                      ; $5f3a: $0e $0d
	inc  c                                           ; $5f3c: $0c
	ld   c, $4f                                      ; $5f3d: $0e $4f
	ld   c, [hl]                                     ; $5f3f: $4e
	ld   [hl], e                                     ; $5f40: $73
	dec  e                                           ; $5f41: $1d
	ld   a, $1d                                      ; $5f42: $3e $1d
	ld   a, $1d                                      ; $5f44: $3e $1d
	inc  c                                           ; $5f46: $0c
	dec  e                                           ; $5f47: $1d
	ld   a, $1d                                      ; $5f48: $3e $1d
	inc  c                                           ; $5f4a: $0c
	inc  c                                           ; $5f4b: $0c
	inc  c                                           ; $5f4c: $0c
	dec  e                                           ; $5f4d: $1d
	ld   a, $4f                                      ; $5f4e: $3e $4f
	ld   [$0813], sp                                 ; $5f50: $08 $13 $08
	ld   de, $1d0c                                   ; $5f53: $11 $0c $1d
	inc  c                                           ; $5f56: $0c
	inc  c                                           ; $5f57: $0c
	ld   a, $1d                                      ; $5f58: $3e $1d
	inc  c                                           ; $5f5a: $0c
	inc  c                                           ; $5f5b: $0c
	inc  c                                           ; $5f5c: $0c
	ld   e, $5f                                      ; $5f5d: $1e $5f
	ld   e, [hl]                                     ; $5f5f: $5e
	ld   [hl], e                                     ; $5f60: $73
	ld   d, e                                        ; $5f61: $53
	inc  c                                           ; $5f62: $0c
	dec  c                                           ; $5f63: $0d
	ld   c, $0d                                      ; $5f64: $0e $0d
	ld   c, $0d                                      ; $5f66: $0e $0d
	ld   a, $0d                                      ; $5f68: $3e $0d
	ld   c, $0d                                      ; $5f6a: $0e $0d
	ld   c, $0c                                      ; $5f6c: $0e $0c
	ld   e, $5f                                      ; $5f6e: $1e $5f
	ld   e, [hl]                                     ; $5f70: $5e
	inc  hl                                          ; $5f71: $23
	ld   [hl], e                                     ; $5f72: $73
	ld   b, e                                        ; $5f73: $43
	ld   de, $0c0d                                   ; $5f74: $11 $0d $0c
	inc  c                                           ; $5f77: $0c
	inc  c                                           ; $5f78: $0c
	dec  c                                           ; $5f79: $0d
	inc  c                                           ; $5f7a: $0c
	dec  c                                           ; $5f7b: $0d
	inc  c                                           ; $5f7c: $0c
	ld   c, $6f                                      ; $5f7d: $0e $6f
	ld   l, [hl]                                     ; $5f7f: $6e
	ld   [hl], e                                     ; $5f80: $73
	ld   h, e                                        ; $5f81: $63
	inc  c                                           ; $5f82: $0c
	dec  e                                           ; $5f83: $1d
	ld   a, $66                                      ; $5f84: $3e $66
	ld   h, a                                        ; $5f86: $67
	inc  e                                           ; $5f87: $1c
	inc  e                                           ; $5f88: $1c
	dec  c                                           ; $5f89: $0d
	ld   a, $1d                                      ; $5f8a: $3e $1d
	ld   a, $66                                      ; $5f8c: $3e $66
	ld   h, a                                        ; $5f8e: $67
	ld   e, a                                        ; $5f8f: $5f
	ld   b, $06                                      ; $5f90: $06 $06
	ld   d, b                                        ; $5f92: $50
	ld   d, c                                        ; $5f93: $51
	ld   c, a                                        ; $5f94: $4f
	dec  e                                           ; $5f95: $1d
	ld   a, $1d                                      ; $5f96: $3e $1d
	inc  c                                           ; $5f98: $0c
	inc  c                                           ; $5f99: $0c
	inc  c                                           ; $5f9a: $0c
	dec  e                                           ; $5f9b: $1d
	ld   a, $1e                                      ; $5f9c: $3e $1e
	ld   d, [hl]                                     ; $5f9e: $56
	ld   d, l                                        ; $5f9f: $55
	ld   [hl], e                                     ; $5fa0: $73
	ld   [hl], e                                     ; $5fa1: $73
	ld   d, e                                        ; $5fa2: $53
	ld   h, h                                        ; $5fa3: $64
	ld   e, c                                        ; $5fa4: $59
	halt                                             ; $5fa5: $76
	ld   [hl], a                                     ; $5fa6: $77
	dec  hl                                          ; $5fa7: $2b
	dec  hl                                          ; $5fa8: $2b
	ld   d, e                                        ; $5fa9: $53
	rlca                                             ; $5faa: $07
	inc  bc                                          ; $5fab: $03
	inc  bc                                          ; $5fac: $03
	rlca                                             ; $5fad: $07
	ld   [hl], a                                     ; $5fae: $77
	ld   [$7373], sp                                 ; $5faf: $08 $73 $73
	ld   h, b                                        ; $5fb2: $60
	ld   h, c                                        ; $5fb3: $61
	ld   e, a                                        ; $5fb4: $5f
	ld   de, $0d0e                                   ; $5fb5: $11 $0e $0d
	ld   c, $0d                                      ; $5fb8: $0e $0d
	inc  c                                           ; $5fba: $0c
	dec  c                                           ; $5fbb: $0d
	ld   c, $3f                                      ; $5fbc: $0e $3f
	ld   a, $3e                                      ; $5fbe: $3e $3e
	rlca                                             ; $5fc0: $07
	inc  bc                                          ; $5fc1: $03
	inc  bc                                          ; $5fc2: $03
	inc  bc                                          ; $5fc3: $03
	inc  bc                                          ; $5fc4: $03
	ld   c, d                                        ; $5fc5: $4a
	inc  a                                           ; $5fc6: $3c
	dec  a                                           ; $5fc7: $3d
	ld   a, $3f                                      ; $5fc8: $3e $3f
	ld   [$1413], sp                                 ; $5fca: $08 $13 $14
	ld   [$6226], sp                                 ; $5fcd: $08 $26 $62
	ld   h, e                                        ; $5fd0: $63
	ld   h, e                                        ; $5fd1: $63
	ld   d, d                                        ; $5fd2: $52
	ld   d, e                                        ; $5fd3: $53
	ld   l, a                                        ; $5fd4: $6f
	ld   d, e                                        ; $5fd5: $53
	ld   b, $05                                      ; $5fd6: $06 $05
	ld   b, $05                                      ; $5fd8: $06 $05
	ld   b, $3f                                      ; $5fda: $06 $3f
	ld   a, $3d                                      ; $5fdc: $3e $3d
	inc  a                                           ; $5fde: $3c
	ld   h, d                                        ; $5fdf: $62
	ld   [$1413], sp                                 ; $5fe0: $08 $13 $14
	inc  de                                          ; $5fe3: $13
	inc  d                                           ; $5fe4: $14
	ld   c, e                                        ; $5fe5: $4b
	ld   c, h                                        ; $5fe6: $4c
	ld   c, l                                        ; $5fe7: $4d
	ld   c, [hl]                                     ; $5fe8: $4e
	ld   c, a                                        ; $5fe9: $4f
	inc  hl                                          ; $5fea: $23
	inc  hl                                          ; $5feb: $23
	inc  hl                                          ; $5fec: $23
	inc  hl                                          ; $5fed: $23
	ld   h, c                                        ; $5fee: $61
	ld   [$6061], sp                                 ; $5fef: $08 $61 $60
	ld   h, d                                        ; $5ff2: $62
	ld   h, e                                        ; $5ff3: $63
	ld   a, e                                        ; $5ff4: $7b
	ld   h, e                                        ; $5ff5: $63
	inc  d                                           ; $5ff6: $14
	inc  de                                          ; $5ff7: $13
	inc  d                                           ; $5ff8: $14
	inc  de                                          ; $5ff9: $13
	inc  d                                           ; $5ffa: $14
	ld   c, a                                        ; $5ffb: $4f
	ld   c, [hl]                                     ; $5ffc: $4e
	ld   c, l                                        ; $5ffd: $4d
	ld   c, h                                        ; $5ffe: $4c
	ld   [hl], d                                     ; $5fff: $72
	dec  h                                           ; $6000: $25
	dec  h                                           ; $6001: $25
	dec  b                                           ; $6002: $05
	dec  b                                           ; $6003: $05
	dec  b                                           ; $6004: $05
	dec  b                                           ; $6005: $05
	dec  b                                           ; $6006: $05
	dec  b                                           ; $6007: $05
	dec  b                                           ; $6008: $05
	dec  c                                           ; $6009: $0d
	dec  b                                           ; $600a: $05
	dec  b                                           ; $600b: $05
	dec  b                                           ; $600c: $05
	dec  b                                           ; $600d: $05
	dec  b                                           ; $600e: $05
	dec  c                                           ; $600f: $0d
	dec  l                                           ; $6010: $2d
	dec  h                                           ; $6011: $25
	dec  h                                           ; $6012: $25
	dec  h                                           ; $6013: $25
	dec  h                                           ; $6014: $25
	dec  b                                           ; $6015: $05
	dec  b                                           ; $6016: $05
	inc  b                                           ; $6017: $04
	inc  b                                           ; $6018: $04
	inc  b                                           ; $6019: $04
	inc  b                                           ; $601a: $04
	inc  b                                           ; $601b: $04
	dec  b                                           ; $601c: $05
	dec  b                                           ; $601d: $05
	dec  b                                           ; $601e: $05
	dec  b                                           ; $601f: $05
	dec  h                                           ; $6020: $25
	dec  h                                           ; $6021: $25
	dec  b                                           ; $6022: $05
	dec  b                                           ; $6023: $05
	dec  b                                           ; $6024: $05
	dec  b                                           ; $6025: $05
	dec  b                                           ; $6026: $05
	dec  b                                           ; $6027: $05
	dec  b                                           ; $6028: $05
	dec  c                                           ; $6029: $0d
	dec  b                                           ; $602a: $05
	dec  b                                           ; $602b: $05
	dec  b                                           ; $602c: $05
	dec  b                                           ; $602d: $05
	dec  b                                           ; $602e: $05
	dec  c                                           ; $602f: $0d
	dec  l                                           ; $6030: $2d
	dec  h                                           ; $6031: $25
	dec  h                                           ; $6032: $25
	dec  h                                           ; $6033: $25
	dec  h                                           ; $6034: $25
	dec  b                                           ; $6035: $05
	dec  b                                           ; $6036: $05
	inc  b                                           ; $6037: $04
	inc  b                                           ; $6038: $04
	inc  b                                           ; $6039: $04
	inc  b                                           ; $603a: $04
	inc  b                                           ; $603b: $04
	dec  b                                           ; $603c: $05
	dec  b                                           ; $603d: $05
	dec  b                                           ; $603e: $05
	dec  b                                           ; $603f: $05
	dec  h                                           ; $6040: $25
	dec  h                                           ; $6041: $25
	dec  b                                           ; $6042: $05
	dec  b                                           ; $6043: $05
	dec  b                                           ; $6044: $05
	dec  b                                           ; $6045: $05
	dec  b                                           ; $6046: $05
	dec  b                                           ; $6047: $05
	dec  b                                           ; $6048: $05
	dec  b                                           ; $6049: $05
	dec  b                                           ; $604a: $05
	dec  b                                           ; $604b: $05
	dec  b                                           ; $604c: $05
	dec  b                                           ; $604d: $05
	dec  b                                           ; $604e: $05
	dec  b                                           ; $604f: $05
	dec  b                                           ; $6050: $05
	dec  b                                           ; $6051: $05
	dec  b                                           ; $6052: $05
	dec  b                                           ; $6053: $05
	dec  b                                           ; $6054: $05
	dec  b                                           ; $6055: $05
	dec  b                                           ; $6056: $05
	inc  b                                           ; $6057: $04
	inc  b                                           ; $6058: $04
	inc  b                                           ; $6059: $04
	inc  b                                           ; $605a: $04
	inc  b                                           ; $605b: $04
	ld   b, $26                                      ; $605c: $06 $26
	dec  h                                           ; $605e: $25
	dec  h                                           ; $605f: $25
	dec  h                                           ; $6060: $25
	dec  h                                           ; $6061: $25
	dec  b                                           ; $6062: $05
	dec  b                                           ; $6063: $05
	dec  b                                           ; $6064: $05
	dec  b                                           ; $6065: $05
	dec  b                                           ; $6066: $05
	dec  b                                           ; $6067: $05
	dec  b                                           ; $6068: $05
	dec  b                                           ; $6069: $05
	dec  b                                           ; $606a: $05
	dec  b                                           ; $606b: $05
	dec  b                                           ; $606c: $05
	dec  b                                           ; $606d: $05
	dec  b                                           ; $606e: $05
	dec  b                                           ; $606f: $05
	dec  b                                           ; $6070: $05
	dec  b                                           ; $6071: $05
	dec  b                                           ; $6072: $05
	dec  b                                           ; $6073: $05
	dec  b                                           ; $6074: $05
	dec  b                                           ; $6075: $05
	dec  b                                           ; $6076: $05
	dec  b                                           ; $6077: $05
	dec  b                                           ; $6078: $05
	dec  b                                           ; $6079: $05
	dec  b                                           ; $607a: $05
	dec  b                                           ; $607b: $05
	ld   b, $26                                      ; $607c: $06 $26
	dec  h                                           ; $607e: $25
	dec  h                                           ; $607f: $25
	dec  h                                           ; $6080: $25
	dec  h                                           ; $6081: $25
	dec  b                                           ; $6082: $05
	dec  b                                           ; $6083: $05
	dec  b                                           ; $6084: $05
	dec  b                                           ; $6085: $05
	dec  b                                           ; $6086: $05
	dec  b                                           ; $6087: $05
	dec  b                                           ; $6088: $05
	dec  b                                           ; $6089: $05
	dec  c                                           ; $608a: $0d
	dec  c                                           ; $608b: $0d
	dec  c                                           ; $608c: $0d
	dec  b                                           ; $608d: $05
	dec  b                                           ; $608e: $05
	dec  b                                           ; $608f: $05
	dec  c                                           ; $6090: $0d
	dec  c                                           ; $6091: $0d
	dec  c                                           ; $6092: $0d
	dec  b                                           ; $6093: $05
	dec  c                                           ; $6094: $0d
	dec  b                                           ; $6095: $05
	dec  c                                           ; $6096: $0d
	dec  b                                           ; $6097: $05
	dec  b                                           ; $6098: $05
	dec  b                                           ; $6099: $05
	dec  b                                           ; $609a: $05
	dec  b                                           ; $609b: $05
	ld   b, $26                                      ; $609c: $06 $26
	dec  h                                           ; $609e: $25
	dec  h                                           ; $609f: $25
	dec  h                                           ; $60a0: $25
	dec  h                                           ; $60a1: $25
	dec  b                                           ; $60a2: $05
	dec  b                                           ; $60a3: $05
	dec  b                                           ; $60a4: $05
	dec  b                                           ; $60a5: $05
	dec  b                                           ; $60a6: $05
	dec  b                                           ; $60a7: $05
	dec  b                                           ; $60a8: $05
	dec  c                                           ; $60a9: $0d
	dec  c                                           ; $60aa: $0d
	dec  c                                           ; $60ab: $0d
	dec  b                                           ; $60ac: $05
	dec  c                                           ; $60ad: $0d
	dec  b                                           ; $60ae: $05
	dec  c                                           ; $60af: $0d
	dec  c                                           ; $60b0: $0d
	dec  c                                           ; $60b1: $0d
	dec  b                                           ; $60b2: $05
	dec  c                                           ; $60b3: $0d
	dec  b                                           ; $60b4: $05
	dec  b                                           ; $60b5: $05
	dec  b                                           ; $60b6: $05
	dec  b                                           ; $60b7: $05
	dec  b                                           ; $60b8: $05
	dec  b                                           ; $60b9: $05
	dec  b                                           ; $60ba: $05
	dec  b                                           ; $60bb: $05
	dec  b                                           ; $60bc: $05
	dec  h                                           ; $60bd: $25
	dec  h                                           ; $60be: $25
	ld   b, l                                        ; $60bf: $45
	dec  h                                           ; $60c0: $25
	dec  h                                           ; $60c1: $25
	dec  b                                           ; $60c2: $05
	dec  b                                           ; $60c3: $05
	dec  b                                           ; $60c4: $05
	dec  b                                           ; $60c5: $05
	dec  c                                           ; $60c6: $0d
	dec  b                                           ; $60c7: $05
	dec  c                                           ; $60c8: $0d
	dec  b                                           ; $60c9: $05
	dec  b                                           ; $60ca: $05
	dec  b                                           ; $60cb: $05
	dec  b                                           ; $60cc: $05
	dec  b                                           ; $60cd: $05
	dec  b                                           ; $60ce: $05
	dec  c                                           ; $60cf: $0d
	dec  c                                           ; $60d0: $0d
	dec  b                                           ; $60d1: $05
	dec  c                                           ; $60d2: $0d
	dec  b                                           ; $60d3: $05
	dec  c                                           ; $60d4: $0d
	dec  c                                           ; $60d5: $0d
	dec  c                                           ; $60d6: $0d
	dec  b                                           ; $60d7: $05
	dec  c                                           ; $60d8: $0d
	dec  b                                           ; $60d9: $05
	dec  b                                           ; $60da: $05
	dec  b                                           ; $60db: $05
	dec  b                                           ; $60dc: $05
	dec  h                                           ; $60dd: $25
	dec  h                                           ; $60de: $25
	dec  h                                           ; $60df: $25
	dec  h                                           ; $60e0: $25
	dec  h                                           ; $60e1: $25
	dec  b                                           ; $60e2: $05
	dec  b                                           ; $60e3: $05
	dec  b                                           ; $60e4: $05
	dec  b                                           ; $60e5: $05
	dec  c                                           ; $60e6: $0d
	dec  b                                           ; $60e7: $05
	dec  b                                           ; $60e8: $05
	dec  c                                           ; $60e9: $0d
	dec  c                                           ; $60ea: $0d
	dec  b                                           ; $60eb: $05
	dec  b                                           ; $60ec: $05
	dec  b                                           ; $60ed: $05
	dec  c                                           ; $60ee: $0d
	dec  b                                           ; $60ef: $05
	dec  b                                           ; $60f0: $05
	dec  b                                           ; $60f1: $05
	dec  b                                           ; $60f2: $05
	dec  c                                           ; $60f3: $0d
	dec  b                                           ; $60f4: $05
	dec  c                                           ; $60f5: $0d
	dec  c                                           ; $60f6: $0d
	dec  c                                           ; $60f7: $0d
	dec  c                                           ; $60f8: $0d
	dec  c                                           ; $60f9: $0d
	dec  b                                           ; $60fa: $05
	dec  b                                           ; $60fb: $05
	dec  b                                           ; $60fc: $05
	dec  b                                           ; $60fd: $05
	dec  h                                           ; $60fe: $25
	dec  h                                           ; $60ff: $25
	dec  b                                           ; $6100: $05
	dec  b                                           ; $6101: $05
	dec  b                                           ; $6102: $05
	dec  b                                           ; $6103: $05
	dec  b                                           ; $6104: $05
	dec  b                                           ; $6105: $05
	dec  c                                           ; $6106: $0d
	dec  b                                           ; $6107: $05
	dec  c                                           ; $6108: $0d
	dec  c                                           ; $6109: $0d
	dec  c                                           ; $610a: $0d
	dec  b                                           ; $610b: $05
	dec  c                                           ; $610c: $0d
	dec  c                                           ; $610d: $0d
	dec  b                                           ; $610e: $05
	dec  b                                           ; $610f: $05
	dec  c                                           ; $6110: $0d
	dec  b                                           ; $6111: $05
	dec  b                                           ; $6112: $05
	dec  b                                           ; $6113: $05
	dec  b                                           ; $6114: $05
	dec  b                                           ; $6115: $05
	dec  c                                           ; $6116: $0d
	dec  b                                           ; $6117: $05
	dec  c                                           ; $6118: $0d
	dec  c                                           ; $6119: $0d
	dec  b                                           ; $611a: $05
	dec  b                                           ; $611b: $05
	dec  b                                           ; $611c: $05
	dec  b                                           ; $611d: $05
	dec  h                                           ; $611e: $25
	dec  h                                           ; $611f: $25
	dec  b                                           ; $6120: $05
	dec  b                                           ; $6121: $05
	dec  b                                           ; $6122: $05
	dec  b                                           ; $6123: $05
	dec  b                                           ; $6124: $05
	dec  b                                           ; $6125: $05
	dec  b                                           ; $6126: $05
	dec  b                                           ; $6127: $05
	dec  b                                           ; $6128: $05
	dec  b                                           ; $6129: $05
	dec  c                                           ; $612a: $0d
	dec  c                                           ; $612b: $0d
	dec  c                                           ; $612c: $0d
	dec  b                                           ; $612d: $05
	dec  c                                           ; $612e: $0d
	dec  c                                           ; $612f: $0d
	dec  b                                           ; $6130: $05
	dec  b                                           ; $6131: $05
	dec  c                                           ; $6132: $0d
	dec  b                                           ; $6133: $05
	dec  b                                           ; $6134: $05
	dec  b                                           ; $6135: $05
	dec  b                                           ; $6136: $05
	dec  b                                           ; $6137: $05
	dec  b                                           ; $6138: $05
	dec  b                                           ; $6139: $05
	dec  b                                           ; $613a: $05
	dec  b                                           ; $613b: $05
	dec  b                                           ; $613c: $05
	dec  b                                           ; $613d: $05
	dec  h                                           ; $613e: $25
	dec  h                                           ; $613f: $25
	dec  b                                           ; $6140: $05
	dec  b                                           ; $6141: $05
	dec  b                                           ; $6142: $05
	dec  b                                           ; $6143: $05
	dec  b                                           ; $6144: $05
	dec  b                                           ; $6145: $05
	dec  b                                           ; $6146: $05
	dec  b                                           ; $6147: $05
	dec  b                                           ; $6148: $05
	dec  b                                           ; $6149: $05
	dec  b                                           ; $614a: $05
	dec  b                                           ; $614b: $05
	dec  c                                           ; $614c: $0d
	dec  b                                           ; $614d: $05
	dec  c                                           ; $614e: $0d
	dec  b                                           ; $614f: $05
	dec  c                                           ; $6150: $0d
	dec  c                                           ; $6151: $0d
	dec  b                                           ; $6152: $05
	dec  b                                           ; $6153: $05
	dec  c                                           ; $6154: $0d
	dec  b                                           ; $6155: $05
	dec  b                                           ; $6156: $05
	dec  b                                           ; $6157: $05
	xor  l                                           ; $6158: $ad
	adc  l                                           ; $6159: $8d
	adc  l                                           ; $615a: $8d
	adc  l                                           ; $615b: $8d
	adc  l                                           ; $615c: $8d
	adc  l                                           ; $615d: $8d
	xor  l                                           ; $615e: $ad
	xor  l                                           ; $615f: $ad
	dec  b                                           ; $6160: $05
	dec  b                                           ; $6161: $05
	dec  c                                           ; $6162: $0d
	dec  b                                           ; $6163: $05
	dec  b                                           ; $6164: $05
	dec  b                                           ; $6165: $05
	dec  b                                           ; $6166: $05
	dec  c                                           ; $6167: $0d
	dec  b                                           ; $6168: $05
	dec  b                                           ; $6169: $05
	dec  b                                           ; $616a: $05
	dec  c                                           ; $616b: $0d
	dec  b                                           ; $616c: $05
	dec  c                                           ; $616d: $0d
	dec  c                                           ; $616e: $0d
	dec  c                                           ; $616f: $0d
	dec  b                                           ; $6170: $05
	dec  b                                           ; $6171: $05
	dec  c                                           ; $6172: $0d
	dec  c                                           ; $6173: $0d
	dec  b                                           ; $6174: $05
	dec  b                                           ; $6175: $05
	dec  c                                           ; $6176: $0d
	dec  b                                           ; $6177: $05
	xor  l                                           ; $6178: $ad
	adc  l                                           ; $6179: $8d
	adc  l                                           ; $617a: $8d
	adc  l                                           ; $617b: $8d
	adc  l                                           ; $617c: $8d
	adc  l                                           ; $617d: $8d
	xor  l                                           ; $617e: $ad
	xor  l                                           ; $617f: $ad
	dec  b                                           ; $6180: $05
	dec  b                                           ; $6181: $05
	dec  b                                           ; $6182: $05
	dec  b                                           ; $6183: $05
	dec  b                                           ; $6184: $05
	dec  b                                           ; $6185: $05
	dec  b                                           ; $6186: $05
	dec  c                                           ; $6187: $0d
	dec  b                                           ; $6188: $05
	dec  b                                           ; $6189: $05
	dec  b                                           ; $618a: $05
	dec  b                                           ; $618b: $05
	dec  c                                           ; $618c: $0d
	dec  b                                           ; $618d: $05
	dec  c                                           ; $618e: $0d
	dec  c                                           ; $618f: $0d
	dec  c                                           ; $6190: $0d
	dec  b                                           ; $6191: $05
	dec  c                                           ; $6192: $0d
	dec  b                                           ; $6193: $05
	dec  c                                           ; $6194: $0d
	dec  c                                           ; $6195: $0d
	dec  b                                           ; $6196: $05
	dec  b                                           ; $6197: $05
	xor  l                                           ; $6198: $ad
	dec  b                                           ; $6199: $05
	dec  c                                           ; $619a: $0d
	dec  b                                           ; $619b: $05
	dec  b                                           ; $619c: $05
	dec  b                                           ; $619d: $05
	dec  h                                           ; $619e: $25
	dec  h                                           ; $619f: $25
	dec  b                                           ; $61a0: $05
	dec  b                                           ; $61a1: $05
	dec  b                                           ; $61a2: $05
	dec  b                                           ; $61a3: $05
	dec  b                                           ; $61a4: $05
	dec  b                                           ; $61a5: $05
	dec  b                                           ; $61a6: $05
	dec  c                                           ; $61a7: $0d
	dec  b                                           ; $61a8: $05
	dec  b                                           ; $61a9: $05
	dec  c                                           ; $61aa: $0d
	dec  b                                           ; $61ab: $05
	dec  b                                           ; $61ac: $05
	dec  b                                           ; $61ad: $05
	dec  b                                           ; $61ae: $05
	dec  b                                           ; $61af: $05
	dec  b                                           ; $61b0: $05
	dec  c                                           ; $61b1: $0d
	dec  c                                           ; $61b2: $0d
	dec  c                                           ; $61b3: $0d
	dec  b                                           ; $61b4: $05
	dec  b                                           ; $61b5: $05
	dec  c                                           ; $61b6: $0d
	dec  c                                           ; $61b7: $0d
	xor  l                                           ; $61b8: $ad
	dec  b                                           ; $61b9: $05
	dec  b                                           ; $61ba: $05
	dec  b                                           ; $61bb: $05
	dec  b                                           ; $61bc: $05
	dec  b                                           ; $61bd: $05
	dec  h                                           ; $61be: $25
	dec  h                                           ; $61bf: $25
	dec  b                                           ; $61c0: $05
	dec  b                                           ; $61c1: $05
	dec  b                                           ; $61c2: $05
	dec  b                                           ; $61c3: $05
	dec  b                                           ; $61c4: $05
	dec  b                                           ; $61c5: $05
	dec  b                                           ; $61c6: $05
	dec  b                                           ; $61c7: $05
	dec  c                                           ; $61c8: $0d
	dec  c                                           ; $61c9: $0d
	dec  b                                           ; $61ca: $05
	dec  b                                           ; $61cb: $05
	dec  b                                           ; $61cc: $05
	dec  b                                           ; $61cd: $05
	dec  b                                           ; $61ce: $05
	dec  b                                           ; $61cf: $05
	dec  b                                           ; $61d0: $05
	dec  b                                           ; $61d1: $05
	dec  c                                           ; $61d2: $0d
	dec  b                                           ; $61d3: $05
	dec  b                                           ; $61d4: $05
	dec  b                                           ; $61d5: $05
	dec  b                                           ; $61d6: $05
	ld   b, $26                                      ; $61d7: $06 $26
	dec  b                                           ; $61d9: $05
	dec  b                                           ; $61da: $05
	dec  b                                           ; $61db: $05
	dec  c                                           ; $61dc: $0d
	dec  b                                           ; $61dd: $05
	dec  h                                           ; $61de: $25
	dec  h                                           ; $61df: $25
	dec  b                                           ; $61e0: $05
	dec  b                                           ; $61e1: $05
	dec  b                                           ; $61e2: $05
	dec  b                                           ; $61e3: $05
	dec  b                                           ; $61e4: $05
	dec  b                                           ; $61e5: $05
	dec  b                                           ; $61e6: $05
	dec  b                                           ; $61e7: $05
	dec  b                                           ; $61e8: $05
	dec  b                                           ; $61e9: $05
	dec  c                                           ; $61ea: $0d
	dec  c                                           ; $61eb: $0d
	dec  b                                           ; $61ec: $05
	dec  b                                           ; $61ed: $05
	dec  b                                           ; $61ee: $05
	dec  c                                           ; $61ef: $0d
	dec  b                                           ; $61f0: $05
	dec  b                                           ; $61f1: $05
	dec  c                                           ; $61f2: $0d
	dec  c                                           ; $61f3: $0d
	dec  c                                           ; $61f4: $0d
	dec  b                                           ; $61f5: $05
	dec  b                                           ; $61f6: $05
	ld   b, $26                                      ; $61f7: $06 $26
	dec  c                                           ; $61f9: $0d
	dec  c                                           ; $61fa: $0d
	dec  c                                           ; $61fb: $0d
	dec  c                                           ; $61fc: $0d
	dec  c                                           ; $61fd: $0d
	dec  h                                           ; $61fe: $25
	dec  h                                           ; $61ff: $25
	dec  b                                           ; $6200: $05
	dec  b                                           ; $6201: $05
	dec  c                                           ; $6202: $0d
	dec  b                                           ; $6203: $05
	dec  c                                           ; $6204: $0d
	dec  b                                           ; $6205: $05
	dec  c                                           ; $6206: $0d
	dec  b                                           ; $6207: $05
	dec  c                                           ; $6208: $0d
	dec  b                                           ; $6209: $05
	dec  c                                           ; $620a: $0d
	dec  b                                           ; $620b: $05
	dec  b                                           ; $620c: $05
	dec  c                                           ; $620d: $0d
	dec  c                                           ; $620e: $0d
	dec  b                                           ; $620f: $05
	dec  b                                           ; $6210: $05
	dec  b                                           ; $6211: $05
	dec  b                                           ; $6212: $05
	dec  c                                           ; $6213: $0d
	dec  b                                           ; $6214: $05
	dec  b                                           ; $6215: $05
	dec  b                                           ; $6216: $05
	ld   b, $26                                      ; $6217: $06 $26
	dec  c                                           ; $6219: $0d
	dec  c                                           ; $621a: $0d
	dec  c                                           ; $621b: $0d
	dec  c                                           ; $621c: $0d
	dec  c                                           ; $621d: $0d
	dec  h                                           ; $621e: $25
	dec  h                                           ; $621f: $25
	dec  b                                           ; $6220: $05
	dec  b                                           ; $6221: $05
	dec  b                                           ; $6222: $05
	dec  b                                           ; $6223: $05
	dec  b                                           ; $6224: $05
	dec  b                                           ; $6225: $05
	dec  b                                           ; $6226: $05
	dec  b                                           ; $6227: $05
	dec  b                                           ; $6228: $05
	dec  c                                           ; $6229: $0d
	dec  b                                           ; $622a: $05
	dec  c                                           ; $622b: $0d
	dec  c                                           ; $622c: $0d
	dec  b                                           ; $622d: $05
	dec  c                                           ; $622e: $0d
	dec  c                                           ; $622f: $0d
	dec  c                                           ; $6230: $0d
	dec  c                                           ; $6231: $0d
	dec  c                                           ; $6232: $0d
	dec  b                                           ; $6233: $05
	dec  b                                           ; $6234: $05
	dec  b                                           ; $6235: $05
	dec  b                                           ; $6236: $05
	ld   b, $26                                      ; $6237: $06 $26
	dec  b                                           ; $6239: $05
	dec  b                                           ; $623a: $05
	dec  c                                           ; $623b: $0d
	dec  b                                           ; $623c: $05
	dec  b                                           ; $623d: $05
	dec  h                                           ; $623e: $25
	dec  h                                           ; $623f: $25
	dec  b                                           ; $6240: $05
	dec  b                                           ; $6241: $05
	dec  c                                           ; $6242: $0d
	dec  b                                           ; $6243: $05
	dec  c                                           ; $6244: $0d
	dec  c                                           ; $6245: $0d
	dec  c                                           ; $6246: $0d
	dec  c                                           ; $6247: $0d
	dec  c                                           ; $6248: $0d
	dec  c                                           ; $6249: $0d
	dec  c                                           ; $624a: $0d
	dec  c                                           ; $624b: $0d
	dec  c                                           ; $624c: $0d
	dec  c                                           ; $624d: $0d
	dec  b                                           ; $624e: $05
	dec  b                                           ; $624f: $05
	dec  b                                           ; $6250: $05
	dec  c                                           ; $6251: $0d
	dec  b                                           ; $6252: $05
	dec  b                                           ; $6253: $05
	dec  b                                           ; $6254: $05
	dec  b                                           ; $6255: $05
	dec  b                                           ; $6256: $05
	ld   b, $26                                      ; $6257: $06 $26
	dec  b                                           ; $6259: $05
	dec  c                                           ; $625a: $0d
	dec  c                                           ; $625b: $0d
	dec  c                                           ; $625c: $0d
	dec  b                                           ; $625d: $05
	dec  h                                           ; $625e: $25
	dec  h                                           ; $625f: $25
	dec  b                                           ; $6260: $05
	dec  c                                           ; $6261: $0d
	dec  b                                           ; $6262: $05
	dec  b                                           ; $6263: $05
	dec  b                                           ; $6264: $05
	dec  c                                           ; $6265: $0d
	dec  b                                           ; $6266: $05
	dec  c                                           ; $6267: $0d
	dec  b                                           ; $6268: $05
	dec  b                                           ; $6269: $05
	dec  c                                           ; $626a: $0d
	dec  b                                           ; $626b: $05
	dec  c                                           ; $626c: $0d
	dec  c                                           ; $626d: $0d
	dec  c                                           ; $626e: $0d
	dec  c                                           ; $626f: $0d
	dec  b                                           ; $6270: $05
	dec  c                                           ; $6271: $0d
	dec  b                                           ; $6272: $05
	dec  b                                           ; $6273: $05
	dec  b                                           ; $6274: $05
	dec  b                                           ; $6275: $05
	dec  b                                           ; $6276: $05
	ld   b, $26                                      ; $6277: $06 $26
	dec  b                                           ; $6279: $05
	dec  b                                           ; $627a: $05
	dec  c                                           ; $627b: $0d
	dec  b                                           ; $627c: $05
	dec  b                                           ; $627d: $05
	dec  h                                           ; $627e: $25
	dec  h                                           ; $627f: $25
	dec  b                                           ; $6280: $05
	dec  b                                           ; $6281: $05
	dec  c                                           ; $6282: $0d
	dec  b                                           ; $6283: $05
	dec  c                                           ; $6284: $0d
	dec  b                                           ; $6285: $05
	dec  c                                           ; $6286: $0d
	dec  b                                           ; $6287: $05
	dec  c                                           ; $6288: $0d
	dec  b                                           ; $6289: $05
	dec  c                                           ; $628a: $0d
	dec  b                                           ; $628b: $05
	dec  c                                           ; $628c: $0d
	dec  b                                           ; $628d: $05
	dec  c                                           ; $628e: $0d
	dec  b                                           ; $628f: $05
	dec  c                                           ; $6290: $0d
	dec  b                                           ; $6291: $05
	dec  c                                           ; $6292: $0d
	dec  b                                           ; $6293: $05
	dec  b                                           ; $6294: $05
	dec  b                                           ; $6295: $05
	dec  b                                           ; $6296: $05
	ld   b, $26                                      ; $6297: $06 $26
	dec  b                                           ; $6299: $05
	dec  c                                           ; $629a: $0d
	dec  b                                           ; $629b: $05
	dec  c                                           ; $629c: $0d
	dec  b                                           ; $629d: $05
	dec  h                                           ; $629e: $25
	dec  h                                           ; $629f: $25
	dec  b                                           ; $62a0: $05
	dec  b                                           ; $62a1: $05
	dec  b                                           ; $62a2: $05
	dec  b                                           ; $62a3: $05
	dec  c                                           ; $62a4: $0d
	dec  b                                           ; $62a5: $05
	dec  c                                           ; $62a6: $0d
	dec  b                                           ; $62a7: $05
	dec  b                                           ; $62a8: $05
	dec  b                                           ; $62a9: $05
	dec  b                                           ; $62aa: $05
	dec  b                                           ; $62ab: $05
	dec  b                                           ; $62ac: $05
	dec  b                                           ; $62ad: $05
	dec  b                                           ; $62ae: $05
	dec  b                                           ; $62af: $05
	dec  b                                           ; $62b0: $05
	dec  b                                           ; $62b1: $05
	dec  b                                           ; $62b2: $05
	dec  b                                           ; $62b3: $05
	dec  b                                           ; $62b4: $05
	dec  b                                           ; $62b5: $05
	dec  b                                           ; $62b6: $05
	ld   b, $26                                      ; $62b7: $06 $26
	dec  b                                           ; $62b9: $05
	dec  b                                           ; $62ba: $05
	dec  b                                           ; $62bb: $05
	dec  b                                           ; $62bc: $05
	dec  b                                           ; $62bd: $05
	dec  h                                           ; $62be: $25
	dec  h                                           ; $62bf: $25
	dec  b                                           ; $62c0: $05
	dec  b                                           ; $62c1: $05
	dec  c                                           ; $62c2: $0d
	dec  b                                           ; $62c3: $05
	dec  c                                           ; $62c4: $0d
	dec  c                                           ; $62c5: $0d
	dec  c                                           ; $62c6: $0d
	dec  b                                           ; $62c7: $05
	dec  b                                           ; $62c8: $05
	dec  b                                           ; $62c9: $05
	dec  b                                           ; $62ca: $05
	dec  b                                           ; $62cb: $05
	dec  b                                           ; $62cc: $05
	dec  b                                           ; $62cd: $05
	dec  b                                           ; $62ce: $05
	dec  b                                           ; $62cf: $05
	dec  b                                           ; $62d0: $05
	dec  b                                           ; $62d1: $05
	dec  b                                           ; $62d2: $05
	dec  b                                           ; $62d3: $05
	dec  b                                           ; $62d4: $05
	dec  h                                           ; $62d5: $25
	dec  h                                           ; $62d6: $25
	ld   b, $26                                      ; $62d7: $06 $26
	dec  b                                           ; $62d9: $05
	dec  c                                           ; $62da: $0d
	dec  b                                           ; $62db: $05
	dec  c                                           ; $62dc: $0d
	dec  b                                           ; $62dd: $05
	dec  h                                           ; $62de: $25
	dec  h                                           ; $62df: $25
	dec  b                                           ; $62e0: $05
	dec  c                                           ; $62e1: $0d
	dec  b                                           ; $62e2: $05
	dec  b                                           ; $62e3: $05
	dec  b                                           ; $62e4: $05
	dec  b                                           ; $62e5: $05
	dec  c                                           ; $62e6: $0d
	dec  c                                           ; $62e7: $0d
	dec  c                                           ; $62e8: $0d
	dec  b                                           ; $62e9: $05
	dec  b                                           ; $62ea: $05
	dec  b                                           ; $62eb: $05
	dec  b                                           ; $62ec: $05
	inc  b                                           ; $62ed: $04
	inc  b                                           ; $62ee: $04
	inc  b                                           ; $62ef: $04
	inc  b                                           ; $62f0: $04
	inc  b                                           ; $62f1: $04
	inc  b                                           ; $62f2: $04
	inc  b                                           ; $62f3: $04
	inc  b                                           ; $62f4: $04
	dec  h                                           ; $62f5: $25
	dec  h                                           ; $62f6: $25
	ld   b, $06                                      ; $62f7: $06 $06
	dec  b                                           ; $62f9: $05
	dec  b                                           ; $62fa: $05
	dec  c                                           ; $62fb: $0d
	dec  b                                           ; $62fc: $05
	dec  b                                           ; $62fd: $05
	dec  h                                           ; $62fe: $25
	dec  h                                           ; $62ff: $25
	dec  b                                           ; $6300: $05
	dec  b                                           ; $6301: $05
	dec  b                                           ; $6302: $05
	dec  b                                           ; $6303: $05
	dec  b                                           ; $6304: $05
	dec  b                                           ; $6305: $05
	dec  c                                           ; $6306: $0d
	dec  c                                           ; $6307: $0d
	dec  c                                           ; $6308: $0d
	dec  b                                           ; $6309: $05
	dec  b                                           ; $630a: $05
	dec  b                                           ; $630b: $05
	inc  hl                                          ; $630c: $23
	dec  b                                           ; $630d: $05
	dec  b                                           ; $630e: $05
	dec  b                                           ; $630f: $05
	dec  b                                           ; $6310: $05
	dec  b                                           ; $6311: $05
	dec  b                                           ; $6312: $05
	dec  b                                           ; $6313: $05
	dec  b                                           ; $6314: $05
	inc  hl                                          ; $6315: $23
	dec  h                                           ; $6316: $25
	ld   b, $0d                                      ; $6317: $06 $0d
	dec  b                                           ; $6319: $05
	dec  b                                           ; $631a: $05
	dec  c                                           ; $631b: $0d
	dec  b                                           ; $631c: $05
	dec  b                                           ; $631d: $05
	dec  h                                           ; $631e: $25
	dec  h                                           ; $631f: $25
	dec  b                                           ; $6320: $05
	dec  b                                           ; $6321: $05
	dec  b                                           ; $6322: $05
	dec  b                                           ; $6323: $05
	dec  c                                           ; $6324: $0d
	dec  c                                           ; $6325: $0d
	dec  b                                           ; $6326: $05
	dec  b                                           ; $6327: $05
	dec  b                                           ; $6328: $05
	dec  c                                           ; $6329: $0d
	dec  c                                           ; $632a: $0d
	dec  b                                           ; $632b: $05
	dec  b                                           ; $632c: $05
	dec  b                                           ; $632d: $05
	dec  b                                           ; $632e: $05
	dec  b                                           ; $632f: $05
	dec  b                                           ; $6330: $05
	dec  b                                           ; $6331: $05
	dec  b                                           ; $6332: $05
	dec  b                                           ; $6333: $05
	dec  b                                           ; $6334: $05
	dec  b                                           ; $6335: $05
	dec  b                                           ; $6336: $05
	dec  b                                           ; $6337: $05
	dec  b                                           ; $6338: $05
	dec  b                                           ; $6339: $05
	dec  c                                           ; $633a: $0d
	dec  c                                           ; $633b: $0d
	dec  c                                           ; $633c: $0d
	dec  b                                           ; $633d: $05
	dec  h                                           ; $633e: $25
	dec  h                                           ; $633f: $25
	dec  b                                           ; $6340: $05
	dec  b                                           ; $6341: $05
	dec  b                                           ; $6342: $05
	dec  b                                           ; $6343: $05
	dec  b                                           ; $6344: $05
	dec  c                                           ; $6345: $0d
	dec  b                                           ; $6346: $05
	dec  c                                           ; $6347: $0d
	dec  c                                           ; $6348: $0d
	dec  c                                           ; $6349: $0d
	dec  b                                           ; $634a: $05
	dec  c                                           ; $634b: $0d
	dec  b                                           ; $634c: $05
	dec  c                                           ; $634d: $0d
	dec  b                                           ; $634e: $05
	dec  b                                           ; $634f: $05
	dec  b                                           ; $6350: $05
	dec  b                                           ; $6351: $05
	dec  b                                           ; $6352: $05
	dec  b                                           ; $6353: $05
	dec  b                                           ; $6354: $05
	dec  b                                           ; $6355: $05
	dec  b                                           ; $6356: $05
	dec  b                                           ; $6357: $05
	dec  b                                           ; $6358: $05
	dec  c                                           ; $6359: $0d
	dec  b                                           ; $635a: $05
	dec  c                                           ; $635b: $0d
	dec  b                                           ; $635c: $05
	dec  b                                           ; $635d: $05
	dec  h                                           ; $635e: $25
	dec  h                                           ; $635f: $25
	dec  b                                           ; $6360: $05
	dec  b                                           ; $6361: $05
	dec  b                                           ; $6362: $05
	dec  b                                           ; $6363: $05
	dec  b                                           ; $6364: $05
	dec  b                                           ; $6365: $05
	dec  b                                           ; $6366: $05
	dec  c                                           ; $6367: $0d
	dec  c                                           ; $6368: $0d
	dec  b                                           ; $6369: $05
	dec  b                                           ; $636a: $05
	dec  b                                           ; $636b: $05
	dec  c                                           ; $636c: $0d
	dec  c                                           ; $636d: $0d
	dec  b                                           ; $636e: $05
	dec  b                                           ; $636f: $05
	dec  b                                           ; $6370: $05
	dec  b                                           ; $6371: $05
	dec  b                                           ; $6372: $05
	dec  b                                           ; $6373: $05
	dec  b                                           ; $6374: $05
	dec  c                                           ; $6375: $0d
	dec  c                                           ; $6376: $0d
	dec  c                                           ; $6377: $0d
	dec  c                                           ; $6378: $0d
	dec  b                                           ; $6379: $05
	dec  b                                           ; $637a: $05
	dec  b                                           ; $637b: $05
	dec  b                                           ; $637c: $05
	dec  b                                           ; $637d: $05
	dec  h                                           ; $637e: $25
	dec  h                                           ; $637f: $25
	dec  b                                           ; $6380: $05
	dec  b                                           ; $6381: $05
	dec  b                                           ; $6382: $05
	dec  b                                           ; $6383: $05
	dec  b                                           ; $6384: $05
	dec  b                                           ; $6385: $05
	dec  b                                           ; $6386: $05
	dec  b                                           ; $6387: $05
	dec  b                                           ; $6388: $05
	dec  b                                           ; $6389: $05
	dec  b                                           ; $638a: $05
	dec  b                                           ; $638b: $05
	dec  b                                           ; $638c: $05
	dec  b                                           ; $638d: $05
	dec  b                                           ; $638e: $05
	dec  b                                           ; $638f: $05
	dec  b                                           ; $6390: $05
	dec  b                                           ; $6391: $05
	dec  b                                           ; $6392: $05
	dec  b                                           ; $6393: $05
	dec  b                                           ; $6394: $05
	dec  b                                           ; $6395: $05
	dec  c                                           ; $6396: $0d
	dec  b                                           ; $6397: $05
	dec  c                                           ; $6398: $0d
	dec  b                                           ; $6399: $05
	dec  b                                           ; $639a: $05
	dec  b                                           ; $639b: $05
	dec  b                                           ; $639c: $05
	dec  b                                           ; $639d: $05
	dec  h                                           ; $639e: $25
	dec  h                                           ; $639f: $25
	dec  b                                           ; $63a0: $05
	dec  b                                           ; $63a1: $05
	dec  b                                           ; $63a2: $05
	dec  b                                           ; $63a3: $05
	dec  b                                           ; $63a4: $05
	dec  b                                           ; $63a5: $05
	dec  b                                           ; $63a6: $05
	dec  b                                           ; $63a7: $05
	dec  b                                           ; $63a8: $05
	dec  b                                           ; $63a9: $05
	dec  b                                           ; $63aa: $05
	dec  b                                           ; $63ab: $05
	dec  b                                           ; $63ac: $05
	dec  b                                           ; $63ad: $05
	dec  b                                           ; $63ae: $05
	dec  b                                           ; $63af: $05
	dec  b                                           ; $63b0: $05
	dec  b                                           ; $63b1: $05
	dec  b                                           ; $63b2: $05
	dec  b                                           ; $63b3: $05
	dec  b                                           ; $63b4: $05
	dec  b                                           ; $63b5: $05
	dec  b                                           ; $63b6: $05
	dec  b                                           ; $63b7: $05
	dec  b                                           ; $63b8: $05
	dec  b                                           ; $63b9: $05
	dec  b                                           ; $63ba: $05
	dec  b                                           ; $63bb: $05
	dec  b                                           ; $63bc: $05
	dec  b                                           ; $63bd: $05
	dec  h                                           ; $63be: $25
	dec  h                                           ; $63bf: $25
	dec  b                                           ; $63c0: $05
	dec  h                                           ; $63c1: $25
	dec  b                                           ; $63c2: $05
	dec  b                                           ; $63c3: $05
	dec  b                                           ; $63c4: $05
	dec  b                                           ; $63c5: $05
	dec  b                                           ; $63c6: $05
	dec  b                                           ; $63c7: $05
	dec  b                                           ; $63c8: $05
	dec  b                                           ; $63c9: $05
	dec  b                                           ; $63ca: $05
	dec  b                                           ; $63cb: $05
	dec  b                                           ; $63cc: $05
	dec  b                                           ; $63cd: $05
	dec  h                                           ; $63ce: $25
	dec  h                                           ; $63cf: $25
	dec  h                                           ; $63d0: $25
	dec  b                                           ; $63d1: $05
	dec  b                                           ; $63d2: $05
	dec  b                                           ; $63d3: $05
	dec  b                                           ; $63d4: $05
	dec  b                                           ; $63d5: $05
	dec  b                                           ; $63d6: $05
	dec  b                                           ; $63d7: $05
	dec  b                                           ; $63d8: $05
	dec  b                                           ; $63d9: $05
	dec  b                                           ; $63da: $05
	dec  b                                           ; $63db: $05
	dec  b                                           ; $63dc: $05
	dec  b                                           ; $63dd: $05
	dec  b                                           ; $63de: $05
	dec  h                                           ; $63df: $25
	dec  b                                           ; $63e0: $05
	dec  b                                           ; $63e1: $05
	dec  b                                           ; $63e2: $05
	dec  b                                           ; $63e3: $05
	dec  b                                           ; $63e4: $05
	dec  b                                           ; $63e5: $05
	dec  b                                           ; $63e6: $05
	dec  b                                           ; $63e7: $05
	dec  b                                           ; $63e8: $05
	dec  b                                           ; $63e9: $05
	dec  b                                           ; $63ea: $05
	dec  b                                           ; $63eb: $05
	dec  b                                           ; $63ec: $05
	dec  b                                           ; $63ed: $05
	dec  h                                           ; $63ee: $25
	dec  h                                           ; $63ef: $25
	dec  h                                           ; $63f0: $25
	dec  b                                           ; $63f1: $05
	dec  b                                           ; $63f2: $05
	dec  b                                           ; $63f3: $05
	dec  b                                           ; $63f4: $05
	dec  b                                           ; $63f5: $05
	dec  b                                           ; $63f6: $05
	dec  b                                           ; $63f7: $05
	dec  b                                           ; $63f8: $05
	dec  b                                           ; $63f9: $05
	dec  b                                           ; $63fa: $05
	dec  b                                           ; $63fb: $05
	dec  b                                           ; $63fc: $05
	dec  b                                           ; $63fd: $05
	dec  h                                           ; $63fe: $25
	dec  h                                           ; $63ff: $25
	ld   h, c                                        ; $6400: $61
	ld   d, b                                        ; $6401: $50
	ld   h, c                                        ; $6402: $61
	ld   h, d                                        ; $6403: $62
	inc  de                                          ; $6404: $13
	inc  d                                           ; $6405: $14
	inc  de                                          ; $6406: $13
	inc  d                                           ; $6407: $14
	inc  de                                          ; $6408: $13
	ld   [$030a], sp                                 ; $6409: $08 $0a $03
	inc  bc                                          ; $640c: $03
	inc  bc                                          ; $640d: $03
	inc  bc                                          ; $640e: $03
	rlca                                             ; $640f: $07
	ld   [$1413], sp                                 ; $6410: $08 $13 $14
	inc  de                                          ; $6413: $13
	inc  d                                           ; $6414: $14
	ld   e, d                                        ; $6415: $5a
	ld   e, e                                        ; $6416: $5b
	rlca                                             ; $6417: $07
	jr   jr_029_6432                                 ; $6418: $18 $18

	jr   jr_029_6435                                 ; $641a: $18 $19

	inc  bc                                          ; $641c: $03
	inc  bc                                          ; $641d: $03
	ld   [hl], e                                     ; $641e: $73
	ld   [hl], e                                     ; $641f: $73
	ld   d, e                                        ; $6420: $53
	ld   d, e                                        ; $6421: $53
	ld   [hl], c                                     ; $6422: $71
	ld   [hl], d                                     ; $6423: $72
	inc  hl                                          ; $6424: $23
	inc  h                                           ; $6425: $24
	inc  hl                                          ; $6426: $23
	inc  h                                           ; $6427: $24
	inc  hl                                          ; $6428: $23
	add  hl, bc                                      ; $6429: $09
	ld   a, [de]                                     ; $642a: $1a
	inc  de                                          ; $642b: $13
	inc  d                                           ; $642c: $14
	inc  de                                          ; $642d: $13
	inc  d                                           ; $642e: $14
	ld   [$2309], sp                                 ; $642f: $08 $09 $23

jr_029_6432:
	inc  h                                           ; $6432: $24
	inc  hl                                          ; $6433: $23
	inc  h                                           ; $6434: $24

jr_029_6435:
	ld   l, d                                        ; $6435: $6a
	ld   l, e                                        ; $6436: $6b
	rla                                              ; $6437: $17
	jr   @+$1a                                       ; $6438: $18 $18

	jr   jr_029_6455                                 ; $643a: $18 $19

	dec  bc                                          ; $643c: $0b
	inc  c                                           ; $643d: $0c
	ld   h, e                                        ; $643e: $63
	ld   h, e                                        ; $643f: $63
	ld   [hl], e                                     ; $6440: $73
	ld   [hl], e                                     ; $6441: $73
	ccf                                              ; $6442: $3f
	cpl                                              ; $6443: $2f
	dec  c                                           ; $6444: $0d
	ld   l, $0d                                      ; $6445: $2e $0d
	ld   l, $0d                                      ; $6447: $2e $0d
	ld   l, $4b                                      ; $6449: $2e $4b
	ld   c, h                                        ; $644b: $4c
	ld   c, h                                        ; $644c: $4c
	ld   c, h                                        ; $644d: $4c
	ld   c, h                                        ; $644e: $4c
	ld   c, l                                        ; $644f: $4d
	dec  c                                           ; $6450: $0d
	ld   l, $0d                                      ; $6451: $2e $0d
	ld   l, $0d                                      ; $6453: $2e $0d

jr_029_6455:
	ld   a, d                                        ; $6455: $7a
	ld   a, e                                        ; $6456: $7b
	daa                                              ; $6457: $27
	jr   z, jr_029_6482                              ; $6458: $28 $28

	jr   z, jr_029_6485                              ; $645a: $28 $29

	inc  l                                           ; $645c: $2c
	inc  l                                           ; $645d: $2c
	ld   h, c                                        ; $645e: $61
	ld   h, b                                        ; $645f: $60
	ld   h, e                                        ; $6460: $63
	ld   h, e                                        ; $6461: $63
	ccf                                              ; $6462: $3f
	ld   b, e                                        ; $6463: $43
	dec  e                                           ; $6464: $1d
	ld   e, $1d                                      ; $6465: $1e $1d
	ld   e, $1d                                      ; $6467: $1e $1d
	ld   e, $1d                                      ; $6469: $1e $1d
	ld   e, $1d                                      ; $646b: $1e $1d
	ld   e, $1d                                      ; $646d: $1e $1d
	ld   e, $1d                                      ; $646f: $1e $1d
	ld   e, $1d                                      ; $6471: $1e $1d
	ld   e, $1d                                      ; $6473: $1e $1d
	ld   e, $1d                                      ; $6475: $1e $1d
	ld   c, e                                        ; $6477: $4b
	ld   c, h                                        ; $6478: $4c
	ld   c, h                                        ; $6479: $4c
	ld   c, h                                        ; $647a: $4c
	ld   c, l                                        ; $647b: $4d
	dec  de                                          ; $647c: $1b
	dec  de                                          ; $647d: $1b
	ld   [hl], c                                     ; $647e: $71
	ld   [hl], b                                     ; $647f: $70
	ld   [hl], e                                     ; $6480: $73
	ld   [hl], e                                     ; $6481: $73

jr_029_6482:
	ccf                                              ; $6482: $3f
	inc  sp                                          ; $6483: $33
	dec  c                                           ; $6484: $0d

jr_029_6485:
	ld   l, $0d                                      ; $6485: $2e $0d
	ld   l, $0d                                      ; $6487: $2e $0d
	ld   l, $0c                                      ; $6489: $2e $0c
	inc  c                                           ; $648b: $0c
	inc  c                                           ; $648c: $0c
	ld   l, $0d                                      ; $648d: $2e $0d
	ld   l, $0c                                      ; $648f: $2e $0c
	inc  c                                           ; $6491: $0c
	inc  c                                           ; $6492: $0c
	ld   l, $0c                                      ; $6493: $2e $0c
	ld   l, $0c                                      ; $6495: $2e $0c
	ld   l, $0d                                      ; $6497: $2e $0d
	ld   l, $0d                                      ; $6499: $2e $0d
	inc  [hl]                                        ; $649b: $34
	dec  hl                                          ; $649c: $2b
	dec  hl                                          ; $649d: $2b
	ccf                                              ; $649e: $3f
	cpl                                              ; $649f: $2f
	ld   [hl], e                                     ; $64a0: $73
	ld   [hl], e                                     ; $64a1: $73
	ccf                                              ; $64a2: $3f
	ld   b, e                                        ; $64a3: $43
	dec  a                                           ; $64a4: $3d
	ld   e, $1d                                      ; $64a5: $1e $1d
	ld   e, $1d                                      ; $64a7: $1e $1d
	inc  c                                           ; $64a9: $0c
	inc  c                                           ; $64aa: $0c
	inc  c                                           ; $64ab: $0c
	dec  e                                           ; $64ac: $1d
	inc  c                                           ; $64ad: $0c
	dec  e                                           ; $64ae: $1d
	inc  c                                           ; $64af: $0c
	inc  c                                           ; $64b0: $0c
	inc  c                                           ; $64b1: $0c
	dec  e                                           ; $64b2: $1d
	inc  c                                           ; $64b3: $0c
	dec  e                                           ; $64b4: $1d
	ld   e, $1d                                      ; $64b5: $1e $1d
	ld   e, $1d                                      ; $64b7: $1e $1d
	ld   e, $1d                                      ; $64b9: $1e $1d
	ld   b, h                                        ; $64bb: $44
	dec  sp                                          ; $64bc: $3b
	jr   nc, @+$41                                   ; $64bd: $30 $3f

	ld   de, $6363                                   ; $64bf: $11 $63 $63
	ccf                                              ; $64c2: $3f
	inc  sp                                          ; $64c3: $33
	dec  c                                           ; $64c4: $0d
	ld   l, $0c                                      ; $64c5: $2e $0c
	ld   l, $0c                                      ; $64c7: $2e $0c
	ld   l, $0d                                      ; $64c9: $2e $0d
	ld   l, $47                                      ; $64cb: $2e $47
	ld   c, b                                        ; $64cd: $48
	ld   c, c                                        ; $64ce: $49
	inc  c                                           ; $64cf: $0c
	inc  c                                           ; $64d0: $0c
	ld   l, $0c                                      ; $64d1: $2e $0c
	ld   l, $0c                                      ; $64d3: $2e $0c
	inc  c                                           ; $64d5: $0c
	inc  c                                           ; $64d6: $0c
	ld   l, $0c                                      ; $64d7: $2e $0c
	ld   l, $0d                                      ; $64d9: $2e $0d
	ld   d, h                                        ; $64db: $54
	dec  [hl]                                        ; $64dc: $35
	rra                                              ; $64dd: $1f
	ld   [de], a                                     ; $64de: $12
	ld   c, [hl]                                     ; $64df: $4e
	ld   [hl], e                                     ; $64e0: $73
	ld   [hl], e                                     ; $64e1: $73
	ccf                                              ; $64e2: $3f
	ld   b, e                                        ; $64e3: $43
	dec  e                                           ; $64e4: $1d
	ld   e, $0c                                      ; $64e5: $1e $0c
	ld   e, $1d                                      ; $64e7: $1e $1d
	inc  c                                           ; $64e9: $0c
	inc  c                                           ; $64ea: $0c
	ld   e, $57                                      ; $64eb: $1e $57
	ld   e, b                                        ; $64ed: $58
	inc  b                                           ; $64ee: $04
	ld   c, b                                        ; $64ef: $48
	ld   c, c                                        ; $64f0: $49
	ld   e, $1d                                      ; $64f1: $1e $1d
	inc  c                                           ; $64f3: $0c
	dec  e                                           ; $64f4: $1d
	inc  c                                           ; $64f5: $0c
	inc  c                                           ; $64f6: $0c
	inc  c                                           ; $64f7: $0c
	inc  c                                           ; $64f8: $0c
	inc  c                                           ; $64f9: $0c
	dec  e                                           ; $64fa: $1d
	ld   e, $1d                                      ; $64fb: $1e $1d
	ld   e, $22                                      ; $64fd: $1e $22
	ld   e, [hl]                                     ; $64ff: $5e
	ld   e, d                                        ; $6500: $5a
	ld   e, e                                        ; $6501: $5b
	ccf                                              ; $6502: $3f
	inc  sp                                          ; $6503: $33
	dec  c                                           ; $6504: $0d
	ld   l, $0c                                      ; $6505: $2e $0c
	ld   l, $0c                                      ; $6507: $2e $0c
	inc  c                                           ; $6509: $0c
	inc  c                                           ; $650a: $0c
	ld   l, $05                                      ; $650b: $2e $05
	ld   b, $57                                      ; $650d: $06 $57
	ld   e, b                                        ; $650f: $58
	inc  b                                           ; $6510: $04
	ld   c, b                                        ; $6511: $48
	ld   c, c                                        ; $6512: $49
	ld   l, $0d                                      ; $6513: $2e $0d
	ld   l, $0c                                      ; $6515: $2e $0c
	ld   l, $0c                                      ; $6517: $2e $0c
	inc  c                                           ; $6519: $0c
	dec  c                                           ; $651a: $0d
	ld   l, $0d                                      ; $651b: $2e $0d
	ld   l, $6f                                      ; $651d: $2e $6f
	ld   l, [hl]                                     ; $651f: $6e
	ld   l, d                                        ; $6520: $6a
	ld   l, e                                        ; $6521: $6b
	ccf                                              ; $6522: $3f
	ld   b, e                                        ; $6523: $43
	dec  e                                           ; $6524: $1d
	ld   e, $1d                                      ; $6525: $1e $1d
	ld   e, $1d                                      ; $6527: $1e $1d
	ld   e, $0c                                      ; $6529: $1e $0c
	inc  c                                           ; $652b: $0c
	inc  c                                           ; $652c: $0c
	ld   e, $05                                      ; $652d: $1e $05
	ld   b, $57                                      ; $652f: $06 $57
	ld   e, b                                        ; $6531: $58
	inc  b                                           ; $6532: $04
	ld   c, b                                        ; $6533: $48
	ld   c, c                                        ; $6534: $49
	ld   e, $1d                                      ; $6535: $1e $1d
	ld   e, $1d                                      ; $6537: $1e $1d
	ld   e, $1d                                      ; $6539: $1e $1d
	ld   e, $1d                                      ; $653b: $1e $1d
	ld   e, $56                                      ; $653d: $1e $56
	ld   d, l                                        ; $653f: $55
	ld   a, d                                        ; $6540: $7a
	ld   a, e                                        ; $6541: $7b
	ccf                                              ; $6542: $3f
	inc  sp                                          ; $6543: $33
	dec  c                                           ; $6544: $0d
	ld   l, $0d                                      ; $6545: $2e $0d
	ld   l, $0d                                      ; $6547: $2e $0d
	ld   l, $0d                                      ; $6549: $2e $0d
	ld   l, $0c                                      ; $654b: $2e $0c
	ld   l, $0c                                      ; $654d: $2e $0c
	ld   l, $05                                      ; $654f: $2e $05
	ld   b, $57                                      ; $6551: $06 $57
	ld   e, b                                        ; $6553: $58
	inc  b                                           ; $6554: $04
	ld   c, b                                        ; $6555: $48
	ld   c, c                                        ; $6556: $49
	ld   l, $16                                      ; $6557: $2e $16
	inc  de                                          ; $6559: $13
	inc  de                                          ; $655a: $13
	inc  de                                          ; $655b: $13
	inc  de                                          ; $655c: $13
	inc  de                                          ; $655d: $13
	ld   de, $1310                                   ; $655e: $11 $10 $13
	inc  d                                           ; $6561: $14
	ld   [$4645], sp                                 ; $6562: $08 $45 $46
	inc  bc                                          ; $6565: $03
	inc  bc                                          ; $6566: $03
	rlca                                             ; $6567: $07
	dec  e                                           ; $6568: $1d
	ld   e, $1d                                      ; $6569: $1e $1d
	inc  c                                           ; $656b: $0c
	dec  e                                           ; $656c: $1d
	inc  c                                           ; $656d: $0c
	inc  c                                           ; $656e: $0c
	inc  c                                           ; $656f: $0c
	dec  e                                           ; $6570: $1d
	ld   e, $05                                      ; $6571: $1e $05
	ld   b, $57                                      ; $6573: $06 $57
	ld   e, b                                        ; $6575: $58
	inc  b                                           ; $6576: $04
	ld   c, b                                        ; $6577: $48
	ld   h, $23                                      ; $6578: $26 $23
	inc  hl                                          ; $657a: $23
	inc  hl                                          ; $657b: $23
	inc  hl                                          ; $657c: $23
	inc  hl                                          ; $657d: $23
	ld   hl, $2320                                   ; $657e: $21 $20 $23
	inc  h                                           ; $6581: $24
	ld   h, d                                        ; $6582: $62
	inc  d                                           ; $6583: $14
	inc  de                                          ; $6584: $13
	inc  d                                           ; $6585: $14
	inc  de                                          ; $6586: $13
	ld   [$4847], sp                                 ; $6587: $08 $47 $48
	ld   c, c                                        ; $658a: $49
	ld   l, $0c                                      ; $658b: $2e $0c
	ld   l, $0c                                      ; $658d: $2e $0c
	inc  c                                           ; $658f: $0c
	inc  c                                           ; $6590: $0c
	ld   l, $0c                                      ; $6591: $2e $0c
	ld   l, $05                                      ; $6593: $2e $05
	ld   b, $57                                      ; $6595: $06 $57
	ld   e, b                                        ; $6597: $58
	jr   jr_029_65cd                                 ; $6598: $18 $33

	inc  c                                           ; $659a: $0c
	ld   l, $0d                                      ; $659b: $2e $0d
	ld   l, $6f                                      ; $659d: $2e $6f
	ld   l, [hl]                                     ; $659f: $6e
	ld   de, $7271                                   ; $65a0: $11 $71 $72
	inc  h                                           ; $65a3: $24
	inc  hl                                          ; $65a4: $23
	inc  h                                           ; $65a5: $24
	inc  hl                                          ; $65a6: $23
	add  hl, bc                                      ; $65a7: $09
	ld   d, a                                        ; $65a8: $57
	ld   e, b                                        ; $65a9: $58
	inc  b                                           ; $65aa: $04
	ld   c, b                                        ; $65ab: $48
	ld   c, c                                        ; $65ac: $49
	ld   e, $1d                                      ; $65ad: $1e $1d
	ld   e, $1d                                      ; $65af: $1e $1d
	inc  c                                           ; $65b1: $0c
	inc  c                                           ; $65b2: $0c
	inc  c                                           ; $65b3: $0c
	dec  e                                           ; $65b4: $1d
	ld   e, $05                                      ; $65b5: $1e $05
	ld   b, $28                                      ; $65b7: $06 $28
	ld   b, e                                        ; $65b9: $43
	dec  e                                           ; $65ba: $1d
	ld   e, $1d                                      ; $65bb: $1e $1d
	ld   e, $56                                      ; $65bd: $1e $56
	ld   d, l                                        ; $65bf: $55
	ld   c, [hl]                                     ; $65c0: $4e
	ld   [de], a                                     ; $65c1: $12
	dec  l                                           ; $65c2: $2d
	ld   l, $0d                                      ; $65c3: $2e $0d
	ld   l, $0d                                      ; $65c5: $2e $0d
	ld   l, $05                                      ; $65c7: $2e $05
	ld   b, $57                                      ; $65c9: $06 $57
	ld   e, b                                        ; $65cb: $58
	ld   e, c                                        ; $65cc: $59

jr_029_65cd:
	ld   b, a                                        ; $65cd: $47
	ld   c, b                                        ; $65ce: $48
	ld   c, c                                        ; $65cf: $49
	dec  c                                           ; $65d0: $0d
	ld   l, $0c                                      ; $65d1: $2e $0c
	ld   l, $0d                                      ; $65d3: $2e $0d
	ld   l, $0d                                      ; $65d5: $2e $0d
	inc  e                                           ; $65d7: $1c
	inc  e                                           ; $65d8: $1c
	inc  sp                                          ; $65d9: $33
	dec  c                                           ; $65da: $0d
	ld   l, $0c                                      ; $65db: $2e $0c
	ld   l, $4f                                      ; $65dd: $2e $4f
	ld   c, [hl]                                     ; $65df: $4e
	ld   e, [hl]                                     ; $65e0: $5e
	ld   [hl+], a                                    ; $65e1: $22
	ld   b, e                                        ; $65e2: $43
	ld   a, $1d                                      ; $65e3: $3e $1d
	ld   a, $1d                                      ; $65e5: $3e $1d
	ld   a, $1d                                      ; $65e7: $3e $1d
	ld   a, $05                                      ; $65e9: $3e $05
	ld   b, $1d                                      ; $65eb: $06 $1d
	ld   d, a                                        ; $65ed: $57
	ld   e, b                                        ; $65ee: $58
	dec  bc                                          ; $65ef: $0b
	dec  e                                           ; $65f0: $1d
	ld   e, $0c                                      ; $65f1: $1e $0c
	inc  c                                           ; $65f3: $0c
	inc  c                                           ; $65f4: $0c
	ld   e, $1d                                      ; $65f5: $1e $1d
	dec  de                                          ; $65f7: $1b
	dec  de                                          ; $65f8: $1b
	dec  [hl]                                        ; $65f9: $35
	jr   nc, jr_029_662d                             ; $65fa: $30 $31

	jr   nc, jr_029_662f                             ; $65fc: $30 $31

	ld   e, a                                        ; $65fe: $5f
	ld   e, [hl]                                     ; $65ff: $5e
	ld   l, [hl]                                     ; $6600: $6e
	ld   l, a                                        ; $6601: $6f
	inc  c                                           ; $6602: $0c
	ld   l, $0c                                      ; $6603: $2e $0c
	ld   l, $0c                                      ; $6605: $2e $0c
	ld   l, $0c                                      ; $6607: $2e $0c
	ld   l, $0c                                      ; $6609: $2e $0c
	ld   l, $0d                                      ; $660b: $2e $0d
	dec  b                                           ; $660d: $05
	ld   b, $2e                                      ; $660e: $06 $2e
	dec  c                                           ; $6610: $0d
	ld   l, $0d                                      ; $6611: $2e $0d
	inc  c                                           ; $6613: $0c
	dec  c                                           ; $6614: $0d
	ld   l, $0d                                      ; $6615: $2e $0d
	dec  de                                          ; $6617: $1b
	dec  de                                          ; $6618: $1b
	ld   [hl], $32                                   ; $6619: $36 $32
	inc  sp                                          ; $661b: $33
	ld   [hl-], a                                    ; $661c: $32
	inc  sp                                          ; $661d: $33
	ld   l, a                                        ; $661e: $6f
	ld   l, [hl]                                     ; $661f: $6e
	ld   d, l                                        ; $6620: $55
	ld   d, [hl]                                     ; $6621: $56
	dec  e                                           ; $6622: $1d
	ld   e, $1d                                      ; $6623: $1e $1d
	ld   e, $1d                                      ; $6625: $1e $1d
	ld   e, $1d                                      ; $6627: $1e $1d
	inc  c                                           ; $6629: $0c
	dec  e                                           ; $662a: $1d
	inc  c                                           ; $662b: $0c
	inc  c                                           ; $662c: $0c

jr_029_662d:
	ld   l, $0c                                      ; $662d: $2e $0c

jr_029_662f:
	inc  c                                           ; $662f: $0c
	inc  c                                           ; $6630: $0c
	inc  c                                           ; $6631: $0c
	inc  c                                           ; $6632: $0c
	ld   l, $1d                                      ; $6633: $2e $1d
	ld   e, $1d                                      ; $6635: $1e $1d
	inc  l                                           ; $6637: $2c
	inc  l                                           ; $6638: $2c
	ld   b, e                                        ; $6639: $43
	dec  e                                           ; $663a: $1d
	inc  c                                           ; $663b: $0c
	dec  e                                           ; $663c: $1d
	ld   e, $56                                      ; $663d: $1e $56
	ld   d, l                                        ; $663f: $55
	ld   c, [hl]                                     ; $6640: $4e
	ld   c, a                                        ; $6641: $4f
	inc  c                                           ; $6642: $0c
	ld   l, $0c                                      ; $6643: $2e $0c
	inc  c                                           ; $6645: $0c
	inc  c                                           ; $6646: $0c
	inc  c                                           ; $6647: $0c
	inc  c                                           ; $6648: $0c
	inc  c                                           ; $6649: $0c
	inc  c                                           ; $664a: $0c
	inc  c                                           ; $664b: $0c
	inc  c                                           ; $664c: $0c
	inc  c                                           ; $664d: $0c
	dec  c                                           ; $664e: $0d
	ld   l, $0d                                      ; $664f: $2e $0d
	inc  c                                           ; $6651: $0c
	dec  c                                           ; $6652: $0d
	ld   l, $0d                                      ; $6653: $2e $0d
	ld   l, $0d                                      ; $6655: $2e $0d
	dec  de                                          ; $6657: $1b
	dec  de                                          ; $6658: $1b
	inc  sp                                          ; $6659: $33
	inc  c                                           ; $665a: $0c
	inc  c                                           ; $665b: $0c
	inc  c                                           ; $665c: $0c
	ld   l, $4f                                      ; $665d: $2e $4f
	ld   c, [hl]                                     ; $665f: $4e
	ld   e, [hl]                                     ; $6660: $5e
	inc  [hl]                                        ; $6661: $34
	dec  e                                           ; $6662: $1d
	ld   e, $1d                                      ; $6663: $1e $1d
	inc  c                                           ; $6665: $0c
	dec  e                                           ; $6666: $1d
	inc  c                                           ; $6667: $0c
	dec  e                                           ; $6668: $1d
	ld   e, $0c                                      ; $6669: $1e $0c
	ld   e, $0c                                      ; $666b: $1e $0c
	inc  c                                           ; $666d: $0c
	inc  c                                           ; $666e: $0c
	inc  c                                           ; $666f: $0c
	dec  e                                           ; $6670: $1d
	inc  c                                           ; $6671: $0c
	dec  e                                           ; $6672: $1d
	ld   e, $1d                                      ; $6673: $1e $1d
	ld   e, $1d                                      ; $6675: $1e $1d
	dec  de                                          ; $6677: $1b
	dec  de                                          ; $6678: $1b
	ld   b, e                                        ; $6679: $43
	dec  e                                           ; $667a: $1d
	inc  c                                           ; $667b: $0c
	dec  e                                           ; $667c: $1d
	ld   e, $5f                                      ; $667d: $1e $5f
	ld   e, [hl]                                     ; $667f: $5e
	ld   l, [hl]                                     ; $6680: $6e
	ld   l, a                                        ; $6681: $6f
	inc  c                                           ; $6682: $0c
	ld   l, $0c                                      ; $6683: $2e $0c
	ld   l, $0c                                      ; $6685: $2e $0c
	ld   l, $0c                                      ; $6687: $2e $0c
	ld   l, $0c                                      ; $6689: $2e $0c
	ld   l, $0c                                      ; $668b: $2e $0c
	ld   l, $0c                                      ; $668d: $2e $0c
	ld   l, $0c                                      ; $668f: $2e $0c
	ld   l, $0c                                      ; $6691: $2e $0c
	ld   l, $0d                                      ; $6693: $2e $0d
	ld   l, $0d                                      ; $6695: $2e $0d
	inc  l                                           ; $6697: $2c
	inc  l                                           ; $6698: $2c
	inc  sp                                          ; $6699: $33
	inc  c                                           ; $669a: $0c
	ld   l, $0c                                      ; $669b: $2e $0c
	ld   l, $6f                                      ; $669d: $2e $6f
	ld   l, [hl]                                     ; $669f: $6e
	ld   d, l                                        ; $66a0: $55
	ld   d, [hl]                                     ; $66a1: $56
	dec  e                                           ; $66a2: $1d
	ld   e, $0c                                      ; $66a3: $1e $0c
	ld   e, $0c                                      ; $66a5: $1e $0c
	ld   e, $1d                                      ; $66a7: $1e $1d
	ld   e, $1d                                      ; $66a9: $1e $1d
	ld   e, $1d                                      ; $66ab: $1e $1d
	ld   e, $1d                                      ; $66ad: $1e $1d
	ld   e, $1d                                      ; $66af: $1e $1d
	ld   e, $1d                                      ; $66b1: $1e $1d
	ld   e, $1d                                      ; $66b3: $1e $1d
	ld   e, $1d                                      ; $66b5: $1e $1d
	dec  de                                          ; $66b7: $1b
	dec  de                                          ; $66b8: $1b
	ld   b, e                                        ; $66b9: $43
	dec  e                                           ; $66ba: $1d
	ld   e, $1d                                      ; $66bb: $1e $1d
	ld   e, $56                                      ; $66bd: $1e $56
	ld   d, l                                        ; $66bf: $55
	ld   c, [hl]                                     ; $66c0: $4e
	ld   c, a                                        ; $66c1: $4f
	inc  c                                           ; $66c2: $0c
	ld   l, $0c                                      ; $66c3: $2e $0c
	inc  c                                           ; $66c5: $0c
	ld   d, h                                        ; $66c6: $54
	ld   e, d                                        ; $66c7: $5a
	ld   e, e                                        ; $66c8: $5b
	ld   h, h                                        ; $66c9: $64
	ld   h, l                                        ; $66ca: $65
	ld   h, [hl]                                     ; $66cb: $66
	ld   h, a                                        ; $66cc: $67
	ld   l, b                                        ; $66cd: $68
	ld   l, b                                        ; $66ce: $68
	ld   l, b                                        ; $66cf: $68
	ld   a, [hl]                                     ; $66d0: $7e
	ld   l, b                                        ; $66d1: $68
	ld   l, b                                        ; $66d2: $68
	ld   l, c                                        ; $66d3: $69
	ld   l, c                                        ; $66d4: $69
	ld   h, a                                        ; $66d5: $67
	ld   h, [hl]                                     ; $66d6: $66
	dec  de                                          ; $66d7: $1b
	dec  de                                          ; $66d8: $1b
	inc  sp                                          ; $66d9: $33
	inc  c                                           ; $66da: $0c
	ld   l, $0c                                      ; $66db: $2e $0c
	ld   l, $4f                                      ; $66dd: $2e $4f
	ld   c, [hl]                                     ; $66df: $4e
	ld   e, [hl]                                     ; $66e0: $5e
	inc  [hl]                                        ; $66e1: $34
	dec  e                                           ; $66e2: $1d
	ld   e, $1d                                      ; $66e3: $1e $1d
	ld   e, $64                                      ; $66e5: $1e $64
	ld   a, [hl+]                                    ; $66e7: $2a
	dec  hl                                          ; $66e8: $2b
	ld   [hl], h                                     ; $66e9: $74
	ld   [hl], l                                     ; $66ea: $75
	halt                                             ; $66eb: $76
	ld   [hl], a                                     ; $66ec: $77
	ld   a, b                                        ; $66ed: $78
	ld   a, c                                        ; $66ee: $79
	ld   a, c                                        ; $66ef: $79
	ld   a, a                                        ; $66f0: $7f
	ld   a, c                                        ; $66f1: $79
	ld   a, c                                        ; $66f2: $79
	ld   a, c                                        ; $66f3: $79
	ld   a, c                                        ; $66f4: $79
	ld   [hl], a                                     ; $66f5: $77
	halt                                             ; $66f6: $76
	add  hl, sp                                      ; $66f7: $39
	ld   a, [hl-]                                    ; $66f8: $3a
	ld   b, e                                        ; $66f9: $43
	dec  e                                           ; $66fa: $1d
	inc  c                                           ; $66fb: $0c
	dec  e                                           ; $66fc: $1d
	ld   e, $5f                                      ; $66fd: $1e $5f
	ld   e, [hl]                                     ; $66ff: $5e
	ld   l, [hl]                                     ; $6700: $6e
	ld   l, a                                        ; $6701: $6f
	dec  c                                           ; $6702: $0d
	ld   l, $0d                                      ; $6703: $2e $0d
	ld   l, $64                                      ; $6705: $2e $64
	inc  l                                           ; $6707: $2c
	dec  l                                           ; $6708: $2d
	ld   e, h                                        ; $6709: $5c
	ld   e, l                                        ; $670a: $5d
	ld   l, h                                        ; $670b: $6c
	ld   l, l                                        ; $670c: $6d
	ld   a, l                                        ; $670d: $7d
	ld   a, l                                        ; $670e: $7d
	ld   a, l                                        ; $670f: $7d
	ld   a, h                                        ; $6710: $7c
	ld   a, h                                        ; $6711: $7c
	ld   a, l                                        ; $6712: $7d
	ld   a, l                                        ; $6713: $7d
	ld   a, l                                        ; $6714: $7d
	ld   l, l                                        ; $6715: $6d
	ld   l, h                                        ; $6716: $6c
	inc  a                                           ; $6717: $3c
	ld   a, [bc]                                     ; $6718: $0a
	inc  sp                                          ; $6719: $33
	dec  c                                           ; $671a: $0d
	inc  c                                           ; $671b: $0c
	dec  c                                           ; $671c: $0d
	ld   l, $6f                                      ; $671d: $2e $6f
	ld   l, [hl]                                     ; $671f: $6e
	ld   d, l                                        ; $6720: $55
	ld   d, [hl]                                     ; $6721: $56
	dec  e                                           ; $6722: $1d
	ld   e, $0c                                      ; $6723: $1e $0c
	inc  c                                           ; $6725: $0c
	dec  e                                           ; $6726: $1d
	ld   e, $1d                                      ; $6727: $1e $1d
	inc  c                                           ; $6729: $0c
	inc  c                                           ; $672a: $0c
	ld   e, $1d                                      ; $672b: $1e $1d
	ld   e, $1d                                      ; $672d: $1e $1d
	ld   sp, $2120                                   ; $672f: $31 $20 $21
	ld   sp, $1d1e                                   ; $6732: $31 $1e $1d
	ld   e, $1d                                      ; $6735: $1e $1d
	ld   e, $1d                                      ; $6737: $1e $1d
	ld   e, $0c                                      ; $6739: $1e $0c
	inc  c                                           ; $673b: $0c
	inc  c                                           ; $673c: $0c
	ld   e, $56                                      ; $673d: $1e $56
	ld   d, l                                        ; $673f: $55
	ld   c, [hl]                                     ; $6740: $4e
	ld   c, a                                        ; $6741: $4f
	dec  c                                           ; $6742: $0d
	ld   l, $0d                                      ; $6743: $2e $0d
	inc  c                                           ; $6745: $0c
	dec  c                                           ; $6746: $0d
	inc  c                                           ; $6747: $0c
	inc  c                                           ; $6748: $0c
	inc  c                                           ; $6749: $0c
	dec  c                                           ; $674a: $0d
	inc  c                                           ; $674b: $0c
	dec  c                                           ; $674c: $0d
	inc  c                                           ; $674d: $0c
	dec  c                                           ; $674e: $0d
	ld   sp, $2120                                   ; $674f: $31 $20 $21
	ld   sp, $0d2e                                   ; $6752: $31 $2e $0d
	ld   l, $0d                                      ; $6755: $2e $0d
	ld   l, $0d                                      ; $6757: $2e $0d
	inc  c                                           ; $6759: $0c
	dec  c                                           ; $675a: $0d
	inc  c                                           ; $675b: $0c
	dec  c                                           ; $675c: $0d
	ld   l, $4f                                      ; $675d: $2e $4f
	ld   c, [hl]                                     ; $675f: $4e
	ld   e, [hl]                                     ; $6760: $5e
	ld   e, a                                        ; $6761: $5f
	dec  e                                           ; $6762: $1d
	ld   e, $1d                                      ; $6763: $1e $1d
	ld   a, $1d                                      ; $6765: $3e $1d
	inc  c                                           ; $6767: $0c
	inc  c                                           ; $6768: $0c
	ld   e, $1d                                      ; $6769: $1e $1d
	ld   e, $0c                                      ; $676b: $1e $0c
	inc  c                                           ; $676d: $0c
	dec  e                                           ; $676e: $1d
	ld   sp, $2120                                   ; $676f: $31 $20 $21
	ld   sp, $1d1e                                   ; $6772: $31 $1e $1d
	inc  c                                           ; $6775: $0c
	inc  c                                           ; $6776: $0c
	inc  c                                           ; $6777: $0c
	inc  c                                           ; $6778: $0c
	ld   e, $1d                                      ; $6779: $1e $1d
	ld   e, $1d                                      ; $677b: $1e $1d
	ld   e, $5f                                      ; $677d: $1e $5f
	ld   e, [hl]                                     ; $677f: $5e
	ld   l, [hl]                                     ; $6780: $6e
	ld   l, a                                        ; $6781: $6f
	inc  sp                                          ; $6782: $33
	ld   l, $0d                                      ; $6783: $2e $0d
	ld   l, $0d                                      ; $6785: $2e $0d
	ld   l, $0d                                      ; $6787: $2e $0d
	ld   l, $0d                                      ; $6789: $2e $0d
	ld   l, $0d                                      ; $678b: $2e $0d
	ld   l, $0d                                      ; $678d: $2e $0d
	ld   sp, $2120                                   ; $678f: $31 $20 $21
	ld   sp, $0d2e                                   ; $6792: $31 $2e $0d
	ld   l, $0c                                      ; $6795: $2e $0c
	ld   l, $0c                                      ; $6797: $2e $0c
	ld   l, $0d                                      ; $6799: $2e $0d
	ld   l, $0d                                      ; $679b: $2e $0d
	ld   l, $6f                                      ; $679d: $2e $6f
	ld   l, [hl]                                     ; $679f: $6e
	ld   d, l                                        ; $67a0: $55
	ld   d, [hl]                                     ; $67a1: $56
	ld   b, b                                        ; $67a2: $40
	ld   b, $05                                      ; $67a3: $06 $05
	ld   b, $05                                      ; $67a5: $06 $05
	ld   b, $05                                      ; $67a7: $06 $05
	ld   b, $05                                      ; $67a9: $06 $05
	ld   b, $05                                      ; $67ab: $06 $05
	ld   b, $05                                      ; $67ad: $06 $05
	ld   sp, $2120                                   ; $67af: $31 $20 $21
	ld   sp, $0506                                   ; $67b2: $31 $06 $05
	ld   b, $05                                      ; $67b5: $06 $05
	ld   b, $05                                      ; $67b7: $06 $05
	ld   b, $05                                      ; $67b9: $06 $05
	ld   b, $05                                      ; $67bb: $06 $05
	ld   b, $56                                      ; $67bd: $06 $56
	ld   d, l                                        ; $67bf: $55
	dec  d                                           ; $67c0: $15
	ld   h, b                                        ; $67c1: $60
	ld   h, d                                        ; $67c2: $62
	inc  d                                           ; $67c3: $14
	inc  de                                          ; $67c4: $13
	inc  d                                           ; $67c5: $14
	inc  de                                          ; $67c6: $13
	inc  d                                           ; $67c7: $14
	inc  de                                          ; $67c8: $13
	inc  d                                           ; $67c9: $14
	inc  de                                          ; $67ca: $13
	inc  d                                           ; $67cb: $14
	inc  de                                          ; $67cc: $13
	inc  d                                           ; $67cd: $14
	ld   h, d                                        ; $67ce: $62
	ld   h, c                                        ; $67cf: $61
	ld   h, b                                        ; $67d0: $60
	ld   h, b                                        ; $67d1: $60
	ld   h, c                                        ; $67d2: $61
	ld   h, d                                        ; $67d3: $62
	inc  de                                          ; $67d4: $13
	inc  d                                           ; $67d5: $14
	inc  de                                          ; $67d6: $13
	inc  d                                           ; $67d7: $14
	inc  de                                          ; $67d8: $13
	inc  d                                           ; $67d9: $14
	inc  de                                          ; $67da: $13
	inc  d                                           ; $67db: $14
	inc  de                                          ; $67dc: $13
	inc  d                                           ; $67dd: $14
	ld   h, b                                        ; $67de: $60
	dec  d                                           ; $67df: $15
	ld   [hl], b                                     ; $67e0: $70
	ld   h, b                                        ; $67e1: $60
	ld   [hl], d                                     ; $67e2: $72
	inc  h                                           ; $67e3: $24
	inc  hl                                          ; $67e4: $23
	inc  h                                           ; $67e5: $24
	inc  hl                                          ; $67e6: $23
	inc  h                                           ; $67e7: $24
	inc  hl                                          ; $67e8: $23
	inc  h                                           ; $67e9: $24
	inc  hl                                          ; $67ea: $23
	inc  h                                           ; $67eb: $24
	inc  hl                                          ; $67ec: $23
	inc  h                                           ; $67ed: $24
	ld   [hl], d                                     ; $67ee: $72
	ld   [hl], c                                     ; $67ef: $71
	ld   [hl], b                                     ; $67f0: $70
	ld   [hl], b                                     ; $67f1: $70
	ld   [hl], c                                     ; $67f2: $71
	ld   [hl], d                                     ; $67f3: $72
	inc  hl                                          ; $67f4: $23
	inc  h                                           ; $67f5: $24
	inc  hl                                          ; $67f6: $23
	inc  h                                           ; $67f7: $24
	inc  hl                                          ; $67f8: $23
	inc  h                                           ; $67f9: $24
	inc  hl                                          ; $67fa: $23
	inc  h                                           ; $67fb: $24
	inc  hl                                          ; $67fc: $23
	inc  h                                           ; $67fd: $24
	ld   h, b                                        ; $67fe: $60
	ld   [hl], b                                     ; $67ff: $70
	adc  c                                           ; $6800: $89
	adc  c                                           ; $6801: $89
	adc  c                                           ; $6802: $89
	adc  c                                           ; $6803: $89
	adc  d                                           ; $6804: $8a
	adc  d                                           ; $6805: $8a
	adc  d                                           ; $6806: $8a
	adc  d                                           ; $6807: $8a
	adc  d                                           ; $6808: $8a
	adc  d                                           ; $6809: $8a
	adc  d                                           ; $680a: $8a
	adc  d                                           ; $680b: $8a
	adc  d                                           ; $680c: $8a
	adc  d                                           ; $680d: $8a
	adc  d                                           ; $680e: $8a
	adc  d                                           ; $680f: $8a
	xor  d                                           ; $6810: $aa
	adc  d                                           ; $6811: $8a
	adc  d                                           ; $6812: $8a
	adc  d                                           ; $6813: $8a
	ld   [$0808], sp                                 ; $6814: $08 $08 $08
	ld   [$0808], sp                                 ; $6817: $08 $08 $08
	ld   [$0808], sp                                 ; $681a: $08 $08 $08
	ld   [$0808], sp                                 ; $681d: $08 $08 $08
	adc  c                                           ; $6820: $89
	adc  c                                           ; $6821: $89
	adc  c                                           ; $6822: $89
	adc  c                                           ; $6823: $89
	adc  d                                           ; $6824: $8a
	adc  d                                           ; $6825: $8a
	adc  d                                           ; $6826: $8a
	adc  d                                           ; $6827: $8a
	adc  b                                           ; $6828: $88
	add  b                                           ; $6829: $80
	adc  b                                           ; $682a: $88
	add  b                                           ; $682b: $80
	add  b                                           ; $682c: $80
	adc  b                                           ; $682d: $88
	add  b                                           ; $682e: $80
	add  b                                           ; $682f: $80
	xor  d                                           ; $6830: $aa
	add  d                                           ; $6831: $82
	add  d                                           ; $6832: $82
	adc  d                                           ; $6833: $8a
	ld   [$0808], sp                                 ; $6834: $08 $08 $08
	ld   [$0808], sp                                 ; $6837: $08 $08 $08
	ld   [$0808], sp                                 ; $683a: $08 $08 $08
	ld   [$0808], sp                                 ; $683d: $08 $08 $08
	adc  c                                           ; $6840: $89
	adc  c                                           ; $6841: $89
	adc  c                                           ; $6842: $89
	adc  c                                           ; $6843: $89
	adc  d                                           ; $6844: $8a
	adc  d                                           ; $6845: $8a
	adc  d                                           ; $6846: $8a
	adc  d                                           ; $6847: $8a
	adc  b                                           ; $6848: $88
	adc  b                                           ; $6849: $88
	add  b                                           ; $684a: $80
	add  b                                           ; $684b: $80
	adc  b                                           ; $684c: $88
	add  b                                           ; $684d: $80
	add  b                                           ; $684e: $80
	adc  b                                           ; $684f: $88
	xor  d                                           ; $6850: $aa
	add  d                                           ; $6851: $82
	add  d                                           ; $6852: $82
	adc  d                                           ; $6853: $8a
	ld   [$0808], sp                                 ; $6854: $08 $08 $08
	ld   [$0808], sp                                 ; $6857: $08 $08 $08
	ld   [$0808], sp                                 ; $685a: $08 $08 $08
	ld   [$0808], sp                                 ; $685d: $08 $08 $08
	adc  c                                           ; $6860: $89
	adc  c                                           ; $6861: $89
	adc  c                                           ; $6862: $89
	adc  c                                           ; $6863: $89
	jp   z, $caca                                    ; $6864: $ca $ca $ca

	jp   z, $caca                                    ; $6867: $ca $ca $ca

	jp   z, $caca                                    ; $686a: $ca $ca $ca

	jp   z, $caca                                    ; $686d: $ca $ca $ca

	ld   [$8a8a], a                                  ; $6870: $ea $8a $8a
	adc  d                                           ; $6873: $8a
	ld   [$0808], sp                                 ; $6874: $08 $08 $08
	ld   [$0808], sp                                 ; $6877: $08 $08 $08
	ld   [$0808], sp                                 ; $687a: $08 $08 $08
	ld   [$0808], sp                                 ; $687d: $08 $08 $08
	adc  c                                           ; $6880: $89
	adc  c                                           ; $6881: $89
	adc  c                                           ; $6882: $89
	adc  c                                           ; $6883: $89
	adc  c                                           ; $6884: $89
	adc  c                                           ; $6885: $89
	adc  c                                           ; $6886: $89
	adc  c                                           ; $6887: $89
	adc  c                                           ; $6888: $89
	adc  c                                           ; $6889: $89
	adc  c                                           ; $688a: $89
	adc  c                                           ; $688b: $89
	adc  c                                           ; $688c: $89
	adc  c                                           ; $688d: $89
	adc  c                                           ; $688e: $89
	adc  c                                           ; $688f: $89
	ld   [$0808], sp                                 ; $6890: $08 $08 $08
	ld   [$0808], sp                                 ; $6893: $08 $08 $08
	ld   [$0808], sp                                 ; $6896: $08 $08 $08
	ld   [$0808], sp                                 ; $6899: $08 $08 $08
	ld   [$0808], sp                                 ; $689c: $08 $08 $08
	ld   [$8989], sp                                 ; $689f: $08 $89 $89
	adc  c                                           ; $68a2: $89
	adc  c                                           ; $68a3: $89
	adc  c                                           ; $68a4: $89
	adc  c                                           ; $68a5: $89
	adc  c                                           ; $68a6: $89
	adc  c                                           ; $68a7: $89
	adc  c                                           ; $68a8: $89
	adc  c                                           ; $68a9: $89
	adc  c                                           ; $68aa: $89
	adc  c                                           ; $68ab: $89
	adc  c                                           ; $68ac: $89
	adc  c                                           ; $68ad: $89
	adc  c                                           ; $68ae: $89
	adc  c                                           ; $68af: $89
	ld   [$0808], sp                                 ; $68b0: $08 $08 $08
	ld   [$0808], sp                                 ; $68b3: $08 $08 $08
	ld   [$0808], sp                                 ; $68b6: $08 $08 $08
	ld   [$0808], sp                                 ; $68b9: $08 $08 $08
	ld   [$0808], sp                                 ; $68bc: $08 $08 $08
	ld   [$8989], sp                                 ; $68bf: $08 $89 $89
	adc  c                                           ; $68c2: $89
	adc  c                                           ; $68c3: $89
	adc  c                                           ; $68c4: $89
	adc  c                                           ; $68c5: $89
	adc  c                                           ; $68c6: $89
	adc  c                                           ; $68c7: $89
	adc  c                                           ; $68c8: $89
	adc  c                                           ; $68c9: $89
	adc  c                                           ; $68ca: $89
	adc  c                                           ; $68cb: $89
	adc  c                                           ; $68cc: $89
	adc  c                                           ; $68cd: $89
	adc  c                                           ; $68ce: $89
	adc  c                                           ; $68cf: $89
	ld   [$0808], sp                                 ; $68d0: $08 $08 $08
	ld   [$0808], sp                                 ; $68d3: $08 $08 $08
	ld   [$0808], sp                                 ; $68d6: $08 $08 $08
	ld   [$0808], sp                                 ; $68d9: $08 $08 $08
	ld   [$0808], sp                                 ; $68dc: $08 $08 $08
	ld   [$8989], sp                                 ; $68df: $08 $89 $89
	adc  c                                           ; $68e2: $89
	adc  c                                           ; $68e3: $89
	adc  c                                           ; $68e4: $89
	adc  c                                           ; $68e5: $89
	adc  c                                           ; $68e6: $89
	adc  c                                           ; $68e7: $89
	adc  c                                           ; $68e8: $89
	adc  c                                           ; $68e9: $89
	adc  c                                           ; $68ea: $89
	adc  c                                           ; $68eb: $89
	adc  c                                           ; $68ec: $89
	adc  c                                           ; $68ed: $89
	adc  c                                           ; $68ee: $89
	adc  c                                           ; $68ef: $89
	ld   [$0808], sp                                 ; $68f0: $08 $08 $08
	ld   [$0808], sp                                 ; $68f3: $08 $08 $08
	ld   [$0808], sp                                 ; $68f6: $08 $08 $08
	ld   [$0808], sp                                 ; $68f9: $08 $08 $08
	ld   [$0808], sp                                 ; $68fc: $08 $08 $08
	ld   [$0808], sp                                 ; $68ff: $08 $08 $08
	ld   [$0808], sp                                 ; $6902: $08 $08 $08
	ld   [$0808], sp                                 ; $6905: $08 $08 $08
	ld   [$0808], sp                                 ; $6908: $08 $08 $08
	ld   [$0808], sp                                 ; $690b: $08 $08 $08
	ld   [$0808], sp                                 ; $690e: $08 $08 $08
	ld   [$0808], sp                                 ; $6911: $08 $08 $08
	ld   [$0808], sp                                 ; $6914: $08 $08 $08
	ld   [$0808], sp                                 ; $6917: $08 $08 $08
	ld   [$0808], sp                                 ; $691a: $08 $08 $08
	ld   [$0808], sp                                 ; $691d: $08 $08 $08
	ld   [$0808], sp                                 ; $6920: $08 $08 $08
	ld   [$0808], sp                                 ; $6923: $08 $08 $08
	ld   [$0808], sp                                 ; $6926: $08 $08 $08
	ld   [$0808], sp                                 ; $6929: $08 $08 $08
	ld   [$0808], sp                                 ; $692c: $08 $08 $08
	ld   [$0808], sp                                 ; $692f: $08 $08 $08
	ld   [$0808], sp                                 ; $6932: $08 $08 $08
	ld   [$0808], sp                                 ; $6935: $08 $08 $08
	ld   [$0808], sp                                 ; $6938: $08 $08 $08
	ld   [$0808], sp                                 ; $693b: $08 $08 $08
	ld   [$0808], sp                                 ; $693e: $08 $08 $08
	ld   [$0808], sp                                 ; $6941: $08 $08 $08
	ld   [$0808], sp                                 ; $6944: $08 $08 $08
	ld   [$0808], sp                                 ; $6947: $08 $08 $08
	ld   [$0808], sp                                 ; $694a: $08 $08 $08
	ld   [$0808], sp                                 ; $694d: $08 $08 $08
	ld   [$0808], sp                                 ; $6950: $08 $08 $08
	ld   [$0808], sp                                 ; $6953: $08 $08 $08
	ld   [$0808], sp                                 ; $6956: $08 $08 $08
	ld   [$0808], sp                                 ; $6959: $08 $08 $08
	ld   [$0808], sp                                 ; $695c: $08 $08 $08
	ld   [$0808], sp                                 ; $695f: $08 $08 $08
	ld   [$0808], sp                                 ; $6962: $08 $08 $08
	ld   [$0808], sp                                 ; $6965: $08 $08 $08
	ld   [$0808], sp                                 ; $6968: $08 $08 $08
	ld   [$0808], sp                                 ; $696b: $08 $08 $08
	ld   [$0808], sp                                 ; $696e: $08 $08 $08
	ld   [$0808], sp                                 ; $6971: $08 $08 $08
	ld   [$0808], sp                                 ; $6974: $08 $08 $08
	ld   [$0808], sp                                 ; $6977: $08 $08 $08
	ld   [$0808], sp                                 ; $697a: $08 $08 $08
	ld   [$0808], sp                                 ; $697d: $08 $08 $08
	ld   [$0808], sp                                 ; $6980: $08 $08 $08
	ld   [$0808], sp                                 ; $6983: $08 $08 $08
	ld   [$0808], sp                                 ; $6986: $08 $08 $08
	ld   [$0808], sp                                 ; $6989: $08 $08 $08
	ld   [$0808], sp                                 ; $698c: $08 $08 $08
	ld   [$0808], sp                                 ; $698f: $08 $08 $08
	ld   [$0808], sp                                 ; $6992: $08 $08 $08
	ld   [$0808], sp                                 ; $6995: $08 $08 $08
	ld   [$0808], sp                                 ; $6998: $08 $08 $08
	ld   [$0808], sp                                 ; $699b: $08 $08 $08
	ld   [$0808], sp                                 ; $699e: $08 $08 $08
	ld   [$0808], sp                                 ; $69a1: $08 $08 $08
	ld   [$0808], sp                                 ; $69a4: $08 $08 $08
	ld   [$0808], sp                                 ; $69a7: $08 $08 $08
	ld   [$0808], sp                                 ; $69aa: $08 $08 $08
	ld   [$0808], sp                                 ; $69ad: $08 $08 $08
	ld   [$0808], sp                                 ; $69b0: $08 $08 $08
	ld   [$0808], sp                                 ; $69b3: $08 $08 $08
	ld   [$0808], sp                                 ; $69b6: $08 $08 $08
	ld   [$0808], sp                                 ; $69b9: $08 $08 $08
	ld   [$0808], sp                                 ; $69bc: $08 $08 $08
	ld   [$0808], sp                                 ; $69bf: $08 $08 $08
	ld   [$0808], sp                                 ; $69c2: $08 $08 $08
	ld   [$0808], sp                                 ; $69c5: $08 $08 $08
	ld   [$0808], sp                                 ; $69c8: $08 $08 $08
	ld   [$0808], sp                                 ; $69cb: $08 $08 $08
	ld   [$0808], sp                                 ; $69ce: $08 $08 $08
	ld   [$0808], sp                                 ; $69d1: $08 $08 $08
	ld   [$0808], sp                                 ; $69d4: $08 $08 $08
	ld   [$0808], sp                                 ; $69d7: $08 $08 $08
	ld   [$0808], sp                                 ; $69da: $08 $08 $08
	ld   [$0808], sp                                 ; $69dd: $08 $08 $08
	ld   [$0808], sp                                 ; $69e0: $08 $08 $08
	ld   [$0808], sp                                 ; $69e3: $08 $08 $08
	ld   [$0808], sp                                 ; $69e6: $08 $08 $08
	ld   [$0808], sp                                 ; $69e9: $08 $08 $08
	ld   [$0808], sp                                 ; $69ec: $08 $08 $08
	ld   [$0808], sp                                 ; $69ef: $08 $08 $08
	ld   [$0808], sp                                 ; $69f2: $08 $08 $08
	ld   [$0808], sp                                 ; $69f5: $08 $08 $08
	ld   [$0808], sp                                 ; $69f8: $08 $08 $08
	ld   [$0808], sp                                 ; $69fb: $08 $08 $08
	ld   [$0808], sp                                 ; $69fe: $08 $08 $08
	ld   [$0808], sp                                 ; $6a01: $08 $08 $08
	ld   [$0808], sp                                 ; $6a04: $08 $08 $08
	ld   [$0808], sp                                 ; $6a07: $08 $08 $08
	ld   [$0808], sp                                 ; $6a0a: $08 $08 $08
	ld   [$0808], sp                                 ; $6a0d: $08 $08 $08
	ld   [$0808], sp                                 ; $6a10: $08 $08 $08
	ld   [$0808], sp                                 ; $6a13: $08 $08 $08
	ld   [$0808], sp                                 ; $6a16: $08 $08 $08
	ld   [$0808], sp                                 ; $6a19: $08 $08 $08
	ld   [$0808], sp                                 ; $6a1c: $08 $08 $08
	ld   [$0808], sp                                 ; $6a1f: $08 $08 $08
	ld   [$0808], sp                                 ; $6a22: $08 $08 $08
	ld   [$0808], sp                                 ; $6a25: $08 $08 $08
	ld   [$0808], sp                                 ; $6a28: $08 $08 $08
	ld   [$0808], sp                                 ; $6a2b: $08 $08 $08
	ld   [$0808], sp                                 ; $6a2e: $08 $08 $08
	ld   [$0808], sp                                 ; $6a31: $08 $08 $08
	ld   [$0808], sp                                 ; $6a34: $08 $08 $08
	ld   [$0808], sp                                 ; $6a37: $08 $08 $08
	ld   [$0808], sp                                 ; $6a3a: $08 $08 $08
	ld   [$0808], sp                                 ; $6a3d: $08 $08 $08
	ld   [$0808], sp                                 ; $6a40: $08 $08 $08
	ld   [$0808], sp                                 ; $6a43: $08 $08 $08
	ld   [$0808], sp                                 ; $6a46: $08 $08 $08
	ld   [$0808], sp                                 ; $6a49: $08 $08 $08
	ld   [$0808], sp                                 ; $6a4c: $08 $08 $08
	ld   [$0808], sp                                 ; $6a4f: $08 $08 $08
	ld   [$0808], sp                                 ; $6a52: $08 $08 $08
	ld   [$0808], sp                                 ; $6a55: $08 $08 $08
	ld   [$0808], sp                                 ; $6a58: $08 $08 $08
	ld   [$0808], sp                                 ; $6a5b: $08 $08 $08
	ld   [$0808], sp                                 ; $6a5e: $08 $08 $08
	ld   [$0808], sp                                 ; $6a61: $08 $08 $08
	ld   [$0808], sp                                 ; $6a64: $08 $08 $08
	ld   [$0808], sp                                 ; $6a67: $08 $08 $08
	ld   [$0808], sp                                 ; $6a6a: $08 $08 $08
	ld   [$0808], sp                                 ; $6a6d: $08 $08 $08
	ld   [$0808], sp                                 ; $6a70: $08 $08 $08
	ld   [$0808], sp                                 ; $6a73: $08 $08 $08
	ld   [$0808], sp                                 ; $6a76: $08 $08 $08
	ld   [$0808], sp                                 ; $6a79: $08 $08 $08
	ld   [$0808], sp                                 ; $6a7c: $08 $08 $08
	ld   [$0808], sp                                 ; $6a7f: $08 $08 $08
	ld   [$0808], sp                                 ; $6a82: $08 $08 $08
	ld   [$0808], sp                                 ; $6a85: $08 $08 $08
	ld   [$0808], sp                                 ; $6a88: $08 $08 $08
	ld   [$0808], sp                                 ; $6a8b: $08 $08 $08
	ld   [$0808], sp                                 ; $6a8e: $08 $08 $08
	ld   [$0808], sp                                 ; $6a91: $08 $08 $08
	ld   [$0808], sp                                 ; $6a94: $08 $08 $08
	ld   [$0808], sp                                 ; $6a97: $08 $08 $08
	ld   [$0808], sp                                 ; $6a9a: $08 $08 $08
	ld   [$0808], sp                                 ; $6a9d: $08 $08 $08
	ld   [$0808], sp                                 ; $6aa0: $08 $08 $08
	ld   [$0808], sp                                 ; $6aa3: $08 $08 $08
	ld   [$0808], sp                                 ; $6aa6: $08 $08 $08
	ld   [$0808], sp                                 ; $6aa9: $08 $08 $08
	ld   [$0808], sp                                 ; $6aac: $08 $08 $08
	ld   [$0808], sp                                 ; $6aaf: $08 $08 $08
	ld   [$0808], sp                                 ; $6ab2: $08 $08 $08
	ld   [$0808], sp                                 ; $6ab5: $08 $08 $08
	ld   [$0808], sp                                 ; $6ab8: $08 $08 $08
	ld   [$0808], sp                                 ; $6abb: $08 $08 $08
	ld   [$0808], sp                                 ; $6abe: $08 $08 $08
	ld   [$0808], sp                                 ; $6ac1: $08 $08 $08
	ld   [$0808], sp                                 ; $6ac4: $08 $08 $08
	ld   [$0808], sp                                 ; $6ac7: $08 $08 $08
	ld   [$0808], sp                                 ; $6aca: $08 $08 $08
	ld   [$0808], sp                                 ; $6acd: $08 $08 $08
	ld   [$0808], sp                                 ; $6ad0: $08 $08 $08
	ld   [$0808], sp                                 ; $6ad3: $08 $08 $08
	ld   [$0808], sp                                 ; $6ad6: $08 $08 $08
	ld   [$0808], sp                                 ; $6ad9: $08 $08 $08
	ld   [$0808], sp                                 ; $6adc: $08 $08 $08
	ld   [$0808], sp                                 ; $6adf: $08 $08 $08
	ld   [$0808], sp                                 ; $6ae2: $08 $08 $08
	ld   [$0808], sp                                 ; $6ae5: $08 $08 $08
	ld   [$0808], sp                                 ; $6ae8: $08 $08 $08
	ld   [$0808], sp                                 ; $6aeb: $08 $08 $08
	ld   [$0808], sp                                 ; $6aee: $08 $08 $08
	ld   [$0808], sp                                 ; $6af1: $08 $08 $08
	ld   [$0808], sp                                 ; $6af4: $08 $08 $08
	ld   [$0808], sp                                 ; $6af7: $08 $08 $08
	ld   [$0808], sp                                 ; $6afa: $08 $08 $08
	ld   [$0808], sp                                 ; $6afd: $08 $08 $08
	ld   [$0808], sp                                 ; $6b00: $08 $08 $08
	ld   [$0808], sp                                 ; $6b03: $08 $08 $08
	ld   [$0808], sp                                 ; $6b06: $08 $08 $08
	ld   [$0808], sp                                 ; $6b09: $08 $08 $08
	ld   [$0808], sp                                 ; $6b0c: $08 $08 $08
	ld   [$0808], sp                                 ; $6b0f: $08 $08 $08
	ld   [$0808], sp                                 ; $6b12: $08 $08 $08
	ld   [$0808], sp                                 ; $6b15: $08 $08 $08
	ld   [$0808], sp                                 ; $6b18: $08 $08 $08
	ld   [$0808], sp                                 ; $6b1b: $08 $08 $08
	ld   [$0808], sp                                 ; $6b1e: $08 $08 $08
	ld   [$0808], sp                                 ; $6b21: $08 $08 $08
	ld   [$0808], sp                                 ; $6b24: $08 $08 $08
	ld   [$0808], sp                                 ; $6b27: $08 $08 $08
	ld   [$0808], sp                                 ; $6b2a: $08 $08 $08
	ld   [$0808], sp                                 ; $6b2d: $08 $08 $08
	ld   [$0808], sp                                 ; $6b30: $08 $08 $08
	ld   [$0808], sp                                 ; $6b33: $08 $08 $08
	ld   [$0808], sp                                 ; $6b36: $08 $08 $08
	ld   [$0808], sp                                 ; $6b39: $08 $08 $08
	ld   [$0808], sp                                 ; $6b3c: $08 $08 $08
	ld   [$0808], sp                                 ; $6b3f: $08 $08 $08
	ld   [$0808], sp                                 ; $6b42: $08 $08 $08
	ld   [$0808], sp                                 ; $6b45: $08 $08 $08
	ld   [$0808], sp                                 ; $6b48: $08 $08 $08
	ld   [$0808], sp                                 ; $6b4b: $08 $08 $08
	ld   [$0808], sp                                 ; $6b4e: $08 $08 $08
	ld   [$0808], sp                                 ; $6b51: $08 $08 $08
	ld   [$0808], sp                                 ; $6b54: $08 $08 $08
	ld   [$0808], sp                                 ; $6b57: $08 $08 $08
	ld   [$0808], sp                                 ; $6b5a: $08 $08 $08
	ld   [$0808], sp                                 ; $6b5d: $08 $08 $08
	ld   [$0808], sp                                 ; $6b60: $08 $08 $08
	ld   [$0808], sp                                 ; $6b63: $08 $08 $08
	ld   [$0808], sp                                 ; $6b66: $08 $08 $08
	ld   [$0808], sp                                 ; $6b69: $08 $08 $08
	ld   [$0808], sp                                 ; $6b6c: $08 $08 $08
	ld   [$0808], sp                                 ; $6b6f: $08 $08 $08
	ld   [$0808], sp                                 ; $6b72: $08 $08 $08
	ld   [$0808], sp                                 ; $6b75: $08 $08 $08
	ld   [$0808], sp                                 ; $6b78: $08 $08 $08
	ld   [$0808], sp                                 ; $6b7b: $08 $08 $08
	ld   [$0808], sp                                 ; $6b7e: $08 $08 $08
	ld   [$0808], sp                                 ; $6b81: $08 $08 $08
	ld   [$0808], sp                                 ; $6b84: $08 $08 $08
	ld   [$0808], sp                                 ; $6b87: $08 $08 $08
	ld   [$0808], sp                                 ; $6b8a: $08 $08 $08
	ld   [$0808], sp                                 ; $6b8d: $08 $08 $08
	ld   [$0808], sp                                 ; $6b90: $08 $08 $08
	ld   [$0808], sp                                 ; $6b93: $08 $08 $08
	ld   [$0808], sp                                 ; $6b96: $08 $08 $08
	ld   [$0808], sp                                 ; $6b99: $08 $08 $08
	ld   [$0808], sp                                 ; $6b9c: $08 $08 $08
	ld   [$0808], sp                                 ; $6b9f: $08 $08 $08
	ld   [$0808], sp                                 ; $6ba2: $08 $08 $08
	ld   [$0808], sp                                 ; $6ba5: $08 $08 $08
	ld   [$0808], sp                                 ; $6ba8: $08 $08 $08
	ld   [$0808], sp                                 ; $6bab: $08 $08 $08
	ld   [$0808], sp                                 ; $6bae: $08 $08 $08
	ld   [$0808], sp                                 ; $6bb1: $08 $08 $08
	ld   [$0808], sp                                 ; $6bb4: $08 $08 $08
	ld   [$0808], sp                                 ; $6bb7: $08 $08 $08
	ld   [$0808], sp                                 ; $6bba: $08 $08 $08
	ld   [$0808], sp                                 ; $6bbd: $08 $08 $08
	ld   [$0808], sp                                 ; $6bc0: $08 $08 $08
	ld   [$0808], sp                                 ; $6bc3: $08 $08 $08
	ld   [$0808], sp                                 ; $6bc6: $08 $08 $08
	ld   [$0808], sp                                 ; $6bc9: $08 $08 $08
	ld   [$0808], sp                                 ; $6bcc: $08 $08 $08
	ld   [$0808], sp                                 ; $6bcf: $08 $08 $08
	ld   [$0808], sp                                 ; $6bd2: $08 $08 $08
	ld   [$0808], sp                                 ; $6bd5: $08 $08 $08
	ld   [$0808], sp                                 ; $6bd8: $08 $08 $08
	ld   [$0808], sp                                 ; $6bdb: $08 $08 $08
	ld   [$0808], sp                                 ; $6bde: $08 $08 $08
	ld   [$0808], sp                                 ; $6be1: $08 $08 $08
	ld   [$0808], sp                                 ; $6be4: $08 $08 $08
	ld   [$0808], sp                                 ; $6be7: $08 $08 $08
	ld   [$0808], sp                                 ; $6bea: $08 $08 $08
	ld   [$0808], sp                                 ; $6bed: $08 $08 $08
	ld   [$0808], sp                                 ; $6bf0: $08 $08 $08
	ld   [$0808], sp                                 ; $6bf3: $08 $08 $08
	ld   [$0808], sp                                 ; $6bf6: $08 $08 $08
	ld   [$0808], sp                                 ; $6bf9: $08 $08 $08
	ld   [$0808], sp                                 ; $6bfc: $08 $08 $08
	ld   [$a1a0], sp                                 ; $6bff: $08 $a0 $a1
	and  d                                           ; $6c02: $a2
	and  e                                           ; $6c03: $a3
	sub  c                                           ; $6c04: $91
	sub  d                                           ; $6c05: $92
	sub  d                                           ; $6c06: $92
	sub  d                                           ; $6c07: $92
	sub  d                                           ; $6c08: $92
	sub  d                                           ; $6c09: $92
	sub  d                                           ; $6c0a: $92
	sub  d                                           ; $6c0b: $92
	sub  d                                           ; $6c0c: $92
	sub  d                                           ; $6c0d: $92
	sub  d                                           ; $6c0e: $92
	sub  d                                           ; $6c0f: $92
	sub  c                                           ; $6c10: $91
	adc  b                                           ; $6c11: $88
	adc  c                                           ; $6c12: $89
	adc  d                                           ; $6c13: $8a
	add  b                                           ; $6c14: $80
	add  b                                           ; $6c15: $80
	add  b                                           ; $6c16: $80
	add  b                                           ; $6c17: $80
	add  b                                           ; $6c18: $80
	add  b                                           ; $6c19: $80
	add  b                                           ; $6c1a: $80
	add  b                                           ; $6c1b: $80
	add  b                                           ; $6c1c: $80
	add  b                                           ; $6c1d: $80
	add  b                                           ; $6c1e: $80
	add  b                                           ; $6c1f: $80
	and  h                                           ; $6c20: $a4
	and  l                                           ; $6c21: $a5
	and  [hl]                                        ; $6c22: $a6
	and  a                                           ; $6c23: $a7
	sub  e                                           ; $6c24: $93
	add  d                                           ; $6c25: $82
	add  e                                           ; $6c26: $83
	add  h                                           ; $6c27: $84
	add  c                                           ; $6c28: $81
	db   $e4                                         ; $6c29: $e4
	sub  a                                           ; $6c2a: $97
	db   $e4                                         ; $6c2b: $e4
	db   $e4                                         ; $6c2c: $e4
	sub  a                                           ; $6c2d: $97
	db   $e4                                         ; $6c2e: $e4
	db   $e4                                         ; $6c2f: $e4
	sub  e                                           ; $6c30: $93
	ldh  a, [$f1]                                    ; $6c31: $f0 $f1
	sbc  c                                           ; $6c33: $99
	add  b                                           ; $6c34: $80
	add  b                                           ; $6c35: $80
	add  b                                           ; $6c36: $80
	add  b                                           ; $6c37: $80
	add  b                                           ; $6c38: $80
	add  b                                           ; $6c39: $80
	add  b                                           ; $6c3a: $80
	add  b                                           ; $6c3b: $80
	add  b                                           ; $6c3c: $80
	add  b                                           ; $6c3d: $80
	add  b                                           ; $6c3e: $80
	add  b                                           ; $6c3f: $80
	xor  b                                           ; $6c40: $a8
	xor  c                                           ; $6c41: $a9
	xor  d                                           ; $6c42: $aa
	xor  e                                           ; $6c43: $ab
	sub  e                                           ; $6c44: $93
	add  l                                           ; $6c45: $85
	add  [hl]                                        ; $6c46: $86
	add  a                                           ; $6c47: $87
	add  c                                           ; $6c48: $81
	add  c                                           ; $6c49: $81
	db   $e4                                         ; $6c4a: $e4
	db   $e4                                         ; $6c4b: $e4
	sub  a                                           ; $6c4c: $97
	db   $e4                                         ; $6c4d: $e4
	db   $e4                                         ; $6c4e: $e4
	add  c                                           ; $6c4f: $81
	sub  e                                           ; $6c50: $93
	ldh  a, [c]                                      ; $6c51: $f2
	di                                               ; $6c52: $f3
	sbc  h                                           ; $6c53: $9c
	add  b                                           ; $6c54: $80
	add  b                                           ; $6c55: $80
	add  b                                           ; $6c56: $80
	add  b                                           ; $6c57: $80
	add  b                                           ; $6c58: $80
	add  b                                           ; $6c59: $80
	add  b                                           ; $6c5a: $80
	add  b                                           ; $6c5b: $80
	add  b                                           ; $6c5c: $80
	add  b                                           ; $6c5d: $80
	add  b                                           ; $6c5e: $80
	add  b                                           ; $6c5f: $80
	xor  h                                           ; $6c60: $ac
	xor  l                                           ; $6c61: $ad
	xor  [hl]                                        ; $6c62: $ae
	xor  a                                           ; $6c63: $af
	sub  c                                           ; $6c64: $91
	sub  d                                           ; $6c65: $92
	sub  d                                           ; $6c66: $92
	sub  d                                           ; $6c67: $92
	sub  d                                           ; $6c68: $92
	sub  d                                           ; $6c69: $92
	sub  d                                           ; $6c6a: $92
	sub  d                                           ; $6c6b: $92
	sub  d                                           ; $6c6c: $92
	sub  d                                           ; $6c6d: $92
	sub  d                                           ; $6c6e: $92
	sub  d                                           ; $6c6f: $92
	sub  c                                           ; $6c70: $91
	sbc  l                                           ; $6c71: $9d
	sbc  [hl]                                        ; $6c72: $9e
	sbc  a                                           ; $6c73: $9f
	add  b                                           ; $6c74: $80
	add  b                                           ; $6c75: $80
	add  b                                           ; $6c76: $80
	add  b                                           ; $6c77: $80
	add  b                                           ; $6c78: $80
	add  b                                           ; $6c79: $80
	add  b                                           ; $6c7a: $80
	add  b                                           ; $6c7b: $80
	add  b                                           ; $6c7c: $80
	add  b                                           ; $6c7d: $80
	add  b                                           ; $6c7e: $80
	add  b                                           ; $6c7f: $80
	and  b                                           ; $6c80: $a0
	and  c                                           ; $6c81: $a1
	and  d                                           ; $6c82: $a2
	and  e                                           ; $6c83: $a3
	or   b                                           ; $6c84: $b0
	or   c                                           ; $6c85: $b1
	or   d                                           ; $6c86: $b2
	or   e                                           ; $6c87: $b3
	ret  nz                                          ; $6c88: $c0

	pop  bc                                          ; $6c89: $c1
	jp   nz, $d0c3                                   ; $6c8a: $c2 $c3 $d0

	pop  de                                          ; $6c8d: $d1
	jp   nc, $80d3                                   ; $6c8e: $d2 $d3 $80

	add  b                                           ; $6c91: $80
	add  b                                           ; $6c92: $80
	add  b                                           ; $6c93: $80
	add  b                                           ; $6c94: $80
	add  b                                           ; $6c95: $80
	add  b                                           ; $6c96: $80
	add  b                                           ; $6c97: $80
	add  b                                           ; $6c98: $80
	add  b                                           ; $6c99: $80
	add  b                                           ; $6c9a: $80
	add  b                                           ; $6c9b: $80
	add  b                                           ; $6c9c: $80
	add  b                                           ; $6c9d: $80
	add  b                                           ; $6c9e: $80
	add  b                                           ; $6c9f: $80
	and  h                                           ; $6ca0: $a4
	and  l                                           ; $6ca1: $a5
	and  [hl]                                        ; $6ca2: $a6
	and  a                                           ; $6ca3: $a7
	or   h                                           ; $6ca4: $b4
	or   l                                           ; $6ca5: $b5
	or   [hl]                                        ; $6ca6: $b6
	or   a                                           ; $6ca7: $b7
	call nz, $c6c5                                   ; $6ca8: $c4 $c5 $c6
	rst  ToBoot                                         ; $6cab: $c7
	call nc, $d6d5                                   ; $6cac: $d4 $d5 $d6
	rst  $10                                         ; $6caf: $d7
	add  b                                           ; $6cb0: $80
	add  b                                           ; $6cb1: $80
	add  b                                           ; $6cb2: $80
	add  b                                           ; $6cb3: $80
	add  b                                           ; $6cb4: $80
	add  b                                           ; $6cb5: $80
	add  b                                           ; $6cb6: $80
	add  b                                           ; $6cb7: $80
	add  b                                           ; $6cb8: $80
	add  b                                           ; $6cb9: $80
	add  b                                           ; $6cba: $80
	add  b                                           ; $6cbb: $80
	add  b                                           ; $6cbc: $80
	add  b                                           ; $6cbd: $80
	add  b                                           ; $6cbe: $80
	add  b                                           ; $6cbf: $80
	xor  b                                           ; $6cc0: $a8
	xor  c                                           ; $6cc1: $a9
	xor  d                                           ; $6cc2: $aa
	xor  e                                           ; $6cc3: $ab
	cp   b                                           ; $6cc4: $b8
	cp   c                                           ; $6cc5: $b9
	cp   d                                           ; $6cc6: $ba
	cp   e                                           ; $6cc7: $bb
	ret  z                                           ; $6cc8: $c8

	ret                                              ; $6cc9: $c9


	jp   z, $d8cb                                    ; $6cca: $ca $cb $d8

	reti                                             ; $6ccd: $d9


	jp   c, $80db                                    ; $6cce: $da $db $80

	add  b                                           ; $6cd1: $80
	add  b                                           ; $6cd2: $80
	add  b                                           ; $6cd3: $80
	add  b                                           ; $6cd4: $80
	add  b                                           ; $6cd5: $80
	add  b                                           ; $6cd6: $80
	add  b                                           ; $6cd7: $80
	add  b                                           ; $6cd8: $80
	add  b                                           ; $6cd9: $80
	add  b                                           ; $6cda: $80
	add  b                                           ; $6cdb: $80
	add  b                                           ; $6cdc: $80
	add  b                                           ; $6cdd: $80
	add  b                                           ; $6cde: $80
	add  b                                           ; $6cdf: $80
	xor  h                                           ; $6ce0: $ac
	xor  l                                           ; $6ce1: $ad
	xor  [hl]                                        ; $6ce2: $ae
	xor  a                                           ; $6ce3: $af
	cp   h                                           ; $6ce4: $bc
	cp   l                                           ; $6ce5: $bd
	cp   [hl]                                        ; $6ce6: $be
	cp   a                                           ; $6ce7: $bf
	call z, $cecd                                    ; $6ce8: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ceb: $cf
	call c, $dedd                                    ; $6cec: $dc $dd $de
	rst  JumpTable                                         ; $6cef: $df
	add  b                                           ; $6cf0: $80
	add  b                                           ; $6cf1: $80
	add  b                                           ; $6cf2: $80
	add  b                                           ; $6cf3: $80
	add  b                                           ; $6cf4: $80
	add  b                                           ; $6cf5: $80
	add  b                                           ; $6cf6: $80
	add  b                                           ; $6cf7: $80
	add  b                                           ; $6cf8: $80
	add  b                                           ; $6cf9: $80
	add  b                                           ; $6cfa: $80
	add  b                                           ; $6cfb: $80
	add  b                                           ; $6cfc: $80
	add  b                                           ; $6cfd: $80
	add  b                                           ; $6cfe: $80
	add  b                                           ; $6cff: $80
	add  b                                           ; $6d00: $80
	add  b                                           ; $6d01: $80
	add  b                                           ; $6d02: $80
	add  b                                           ; $6d03: $80
	add  b                                           ; $6d04: $80
	add  b                                           ; $6d05: $80
	add  b                                           ; $6d06: $80
	add  b                                           ; $6d07: $80
	add  b                                           ; $6d08: $80
	add  b                                           ; $6d09: $80
	add  b                                           ; $6d0a: $80
	add  b                                           ; $6d0b: $80
	add  b                                           ; $6d0c: $80
	add  b                                           ; $6d0d: $80
	add  b                                           ; $6d0e: $80
	add  b                                           ; $6d0f: $80
	add  b                                           ; $6d10: $80
	add  b                                           ; $6d11: $80
	add  b                                           ; $6d12: $80
	add  b                                           ; $6d13: $80
	add  b                                           ; $6d14: $80
	add  b                                           ; $6d15: $80
	add  b                                           ; $6d16: $80
	add  b                                           ; $6d17: $80
	add  b                                           ; $6d18: $80
	add  b                                           ; $6d19: $80
	add  b                                           ; $6d1a: $80
	add  b                                           ; $6d1b: $80
	add  b                                           ; $6d1c: $80
	add  b                                           ; $6d1d: $80
	add  b                                           ; $6d1e: $80
	add  b                                           ; $6d1f: $80
	add  b                                           ; $6d20: $80
	add  b                                           ; $6d21: $80
	add  b                                           ; $6d22: $80
	add  b                                           ; $6d23: $80
	add  b                                           ; $6d24: $80
	add  b                                           ; $6d25: $80
	add  b                                           ; $6d26: $80
	add  b                                           ; $6d27: $80
	add  b                                           ; $6d28: $80
	add  b                                           ; $6d29: $80
	add  b                                           ; $6d2a: $80
	add  b                                           ; $6d2b: $80
	add  b                                           ; $6d2c: $80
	add  b                                           ; $6d2d: $80
	add  b                                           ; $6d2e: $80
	add  b                                           ; $6d2f: $80
	add  b                                           ; $6d30: $80
	add  b                                           ; $6d31: $80
	add  b                                           ; $6d32: $80
	add  b                                           ; $6d33: $80
	add  b                                           ; $6d34: $80
	add  b                                           ; $6d35: $80
	add  b                                           ; $6d36: $80
	add  b                                           ; $6d37: $80
	add  b                                           ; $6d38: $80
	add  b                                           ; $6d39: $80
	add  b                                           ; $6d3a: $80
	add  b                                           ; $6d3b: $80
	add  b                                           ; $6d3c: $80
	add  b                                           ; $6d3d: $80
	add  b                                           ; $6d3e: $80
	add  b                                           ; $6d3f: $80
	add  b                                           ; $6d40: $80
	add  b                                           ; $6d41: $80
	add  b                                           ; $6d42: $80
	add  b                                           ; $6d43: $80
	add  b                                           ; $6d44: $80
	add  b                                           ; $6d45: $80
	add  b                                           ; $6d46: $80
	add  b                                           ; $6d47: $80
	add  b                                           ; $6d48: $80
	add  b                                           ; $6d49: $80
	add  b                                           ; $6d4a: $80
	add  b                                           ; $6d4b: $80
	add  b                                           ; $6d4c: $80
	add  b                                           ; $6d4d: $80
	add  b                                           ; $6d4e: $80
	add  b                                           ; $6d4f: $80
	add  b                                           ; $6d50: $80
	add  b                                           ; $6d51: $80
	add  b                                           ; $6d52: $80
	add  b                                           ; $6d53: $80
	add  b                                           ; $6d54: $80
	add  b                                           ; $6d55: $80
	add  b                                           ; $6d56: $80
	add  b                                           ; $6d57: $80
	add  b                                           ; $6d58: $80
	add  b                                           ; $6d59: $80
	add  b                                           ; $6d5a: $80
	add  b                                           ; $6d5b: $80
	add  b                                           ; $6d5c: $80
	add  b                                           ; $6d5d: $80
	add  b                                           ; $6d5e: $80
	add  b                                           ; $6d5f: $80
	add  b                                           ; $6d60: $80
	add  b                                           ; $6d61: $80
	add  b                                           ; $6d62: $80
	add  b                                           ; $6d63: $80
	add  b                                           ; $6d64: $80
	add  b                                           ; $6d65: $80
	add  b                                           ; $6d66: $80
	add  b                                           ; $6d67: $80
	add  b                                           ; $6d68: $80
	add  b                                           ; $6d69: $80
	add  b                                           ; $6d6a: $80
	add  b                                           ; $6d6b: $80
	add  b                                           ; $6d6c: $80
	add  b                                           ; $6d6d: $80
	add  b                                           ; $6d6e: $80
	add  b                                           ; $6d6f: $80
	add  b                                           ; $6d70: $80
	add  b                                           ; $6d71: $80
	add  b                                           ; $6d72: $80
	add  b                                           ; $6d73: $80
	add  b                                           ; $6d74: $80
	add  b                                           ; $6d75: $80
	add  b                                           ; $6d76: $80
	add  b                                           ; $6d77: $80
	add  b                                           ; $6d78: $80
	add  b                                           ; $6d79: $80
	add  b                                           ; $6d7a: $80
	add  b                                           ; $6d7b: $80
	add  b                                           ; $6d7c: $80
	add  b                                           ; $6d7d: $80
	add  b                                           ; $6d7e: $80
	add  b                                           ; $6d7f: $80
	add  b                                           ; $6d80: $80
	add  b                                           ; $6d81: $80
	add  b                                           ; $6d82: $80
	add  b                                           ; $6d83: $80
	add  b                                           ; $6d84: $80
	add  b                                           ; $6d85: $80
	add  b                                           ; $6d86: $80
	add  b                                           ; $6d87: $80
	add  b                                           ; $6d88: $80
	add  b                                           ; $6d89: $80
	add  b                                           ; $6d8a: $80
	add  b                                           ; $6d8b: $80
	add  b                                           ; $6d8c: $80
	add  b                                           ; $6d8d: $80
	add  b                                           ; $6d8e: $80
	add  b                                           ; $6d8f: $80
	add  b                                           ; $6d90: $80
	add  b                                           ; $6d91: $80
	add  b                                           ; $6d92: $80
	add  b                                           ; $6d93: $80
	add  b                                           ; $6d94: $80
	add  b                                           ; $6d95: $80
	add  b                                           ; $6d96: $80
	add  b                                           ; $6d97: $80
	add  b                                           ; $6d98: $80
	add  b                                           ; $6d99: $80
	add  b                                           ; $6d9a: $80
	add  b                                           ; $6d9b: $80
	add  b                                           ; $6d9c: $80
	add  b                                           ; $6d9d: $80
	add  b                                           ; $6d9e: $80
	add  b                                           ; $6d9f: $80
	add  b                                           ; $6da0: $80
	add  b                                           ; $6da1: $80
	add  b                                           ; $6da2: $80
	add  b                                           ; $6da3: $80
	add  b                                           ; $6da4: $80
	add  b                                           ; $6da5: $80
	add  b                                           ; $6da6: $80
	add  b                                           ; $6da7: $80
	add  b                                           ; $6da8: $80
	add  b                                           ; $6da9: $80
	add  b                                           ; $6daa: $80
	add  b                                           ; $6dab: $80
	add  b                                           ; $6dac: $80
	add  b                                           ; $6dad: $80
	add  b                                           ; $6dae: $80
	add  b                                           ; $6daf: $80
	add  b                                           ; $6db0: $80
	add  b                                           ; $6db1: $80
	add  b                                           ; $6db2: $80
	add  b                                           ; $6db3: $80
	add  b                                           ; $6db4: $80
	add  b                                           ; $6db5: $80
	add  b                                           ; $6db6: $80
	add  b                                           ; $6db7: $80
	add  b                                           ; $6db8: $80
	add  b                                           ; $6db9: $80
	add  b                                           ; $6dba: $80
	add  b                                           ; $6dbb: $80
	add  b                                           ; $6dbc: $80
	add  b                                           ; $6dbd: $80
	add  b                                           ; $6dbe: $80
	add  b                                           ; $6dbf: $80
	add  b                                           ; $6dc0: $80
	add  b                                           ; $6dc1: $80
	add  b                                           ; $6dc2: $80
	add  b                                           ; $6dc3: $80
	add  b                                           ; $6dc4: $80
	add  b                                           ; $6dc5: $80
	add  b                                           ; $6dc6: $80
	add  b                                           ; $6dc7: $80
	add  b                                           ; $6dc8: $80
	add  b                                           ; $6dc9: $80
	add  b                                           ; $6dca: $80
	add  b                                           ; $6dcb: $80
	add  b                                           ; $6dcc: $80
	add  b                                           ; $6dcd: $80
	add  b                                           ; $6dce: $80
	add  b                                           ; $6dcf: $80
	add  b                                           ; $6dd0: $80
	add  b                                           ; $6dd1: $80
	add  b                                           ; $6dd2: $80
	add  b                                           ; $6dd3: $80
	add  b                                           ; $6dd4: $80
	add  b                                           ; $6dd5: $80
	add  b                                           ; $6dd6: $80
	add  b                                           ; $6dd7: $80
	add  b                                           ; $6dd8: $80
	add  b                                           ; $6dd9: $80
	add  b                                           ; $6dda: $80
	add  b                                           ; $6ddb: $80
	add  b                                           ; $6ddc: $80
	add  b                                           ; $6ddd: $80
	add  b                                           ; $6dde: $80
	add  b                                           ; $6ddf: $80
	add  b                                           ; $6de0: $80
	add  b                                           ; $6de1: $80
	add  b                                           ; $6de2: $80
	add  b                                           ; $6de3: $80
	add  b                                           ; $6de4: $80
	add  b                                           ; $6de5: $80
	add  b                                           ; $6de6: $80
	add  b                                           ; $6de7: $80
	add  b                                           ; $6de8: $80
	add  b                                           ; $6de9: $80
	add  b                                           ; $6dea: $80
	add  b                                           ; $6deb: $80
	add  b                                           ; $6dec: $80
	add  b                                           ; $6ded: $80
	add  b                                           ; $6dee: $80
	add  b                                           ; $6def: $80
	add  b                                           ; $6df0: $80
	add  b                                           ; $6df1: $80
	add  b                                           ; $6df2: $80
	add  b                                           ; $6df3: $80
	add  b                                           ; $6df4: $80
	add  b                                           ; $6df5: $80
	add  b                                           ; $6df6: $80
	add  b                                           ; $6df7: $80
	add  b                                           ; $6df8: $80
	add  b                                           ; $6df9: $80
	add  b                                           ; $6dfa: $80
	add  b                                           ; $6dfb: $80
	add  b                                           ; $6dfc: $80
	add  b                                           ; $6dfd: $80
	add  b                                           ; $6dfe: $80
	add  b                                           ; $6dff: $80
	add  b                                           ; $6e00: $80
	add  b                                           ; $6e01: $80
	add  b                                           ; $6e02: $80
	add  b                                           ; $6e03: $80
	add  b                                           ; $6e04: $80
	add  b                                           ; $6e05: $80
	add  b                                           ; $6e06: $80
	add  b                                           ; $6e07: $80
	add  b                                           ; $6e08: $80
	add  b                                           ; $6e09: $80
	add  b                                           ; $6e0a: $80
	add  b                                           ; $6e0b: $80
	add  b                                           ; $6e0c: $80
	add  b                                           ; $6e0d: $80
	add  b                                           ; $6e0e: $80
	add  b                                           ; $6e0f: $80
	add  b                                           ; $6e10: $80
	add  b                                           ; $6e11: $80
	add  b                                           ; $6e12: $80
	add  b                                           ; $6e13: $80
	add  b                                           ; $6e14: $80
	add  b                                           ; $6e15: $80
	add  b                                           ; $6e16: $80
	add  b                                           ; $6e17: $80
	add  b                                           ; $6e18: $80
	add  b                                           ; $6e19: $80
	add  b                                           ; $6e1a: $80
	add  b                                           ; $6e1b: $80
	add  b                                           ; $6e1c: $80
	add  b                                           ; $6e1d: $80
	add  b                                           ; $6e1e: $80
	add  b                                           ; $6e1f: $80
	add  b                                           ; $6e20: $80
	add  b                                           ; $6e21: $80
	add  b                                           ; $6e22: $80
	add  b                                           ; $6e23: $80
	add  b                                           ; $6e24: $80
	add  b                                           ; $6e25: $80
	add  b                                           ; $6e26: $80
	add  b                                           ; $6e27: $80
	add  b                                           ; $6e28: $80
	add  b                                           ; $6e29: $80
	add  b                                           ; $6e2a: $80
	add  b                                           ; $6e2b: $80
	add  b                                           ; $6e2c: $80
	add  b                                           ; $6e2d: $80
	add  b                                           ; $6e2e: $80
	add  b                                           ; $6e2f: $80
	add  b                                           ; $6e30: $80
	add  b                                           ; $6e31: $80
	add  b                                           ; $6e32: $80
	add  b                                           ; $6e33: $80
	add  b                                           ; $6e34: $80
	add  b                                           ; $6e35: $80
	add  b                                           ; $6e36: $80
	add  b                                           ; $6e37: $80
	add  b                                           ; $6e38: $80
	add  b                                           ; $6e39: $80
	add  b                                           ; $6e3a: $80
	add  b                                           ; $6e3b: $80
	add  b                                           ; $6e3c: $80
	add  b                                           ; $6e3d: $80
	add  b                                           ; $6e3e: $80
	add  b                                           ; $6e3f: $80
	add  b                                           ; $6e40: $80
	add  b                                           ; $6e41: $80
	add  b                                           ; $6e42: $80
	add  b                                           ; $6e43: $80
	add  b                                           ; $6e44: $80
	add  b                                           ; $6e45: $80
	add  b                                           ; $6e46: $80
	add  b                                           ; $6e47: $80
	add  b                                           ; $6e48: $80
	add  b                                           ; $6e49: $80
	add  b                                           ; $6e4a: $80
	add  b                                           ; $6e4b: $80
	add  b                                           ; $6e4c: $80
	add  b                                           ; $6e4d: $80
	add  b                                           ; $6e4e: $80
	add  b                                           ; $6e4f: $80
	add  b                                           ; $6e50: $80
	add  b                                           ; $6e51: $80
	add  b                                           ; $6e52: $80
	add  b                                           ; $6e53: $80
	add  b                                           ; $6e54: $80
	add  b                                           ; $6e55: $80
	add  b                                           ; $6e56: $80
	add  b                                           ; $6e57: $80
	add  b                                           ; $6e58: $80
	add  b                                           ; $6e59: $80
	add  b                                           ; $6e5a: $80
	add  b                                           ; $6e5b: $80
	add  b                                           ; $6e5c: $80
	add  b                                           ; $6e5d: $80
	add  b                                           ; $6e5e: $80
	add  b                                           ; $6e5f: $80
	add  b                                           ; $6e60: $80
	add  b                                           ; $6e61: $80
	add  b                                           ; $6e62: $80
	add  b                                           ; $6e63: $80
	add  b                                           ; $6e64: $80
	add  b                                           ; $6e65: $80
	add  b                                           ; $6e66: $80
	add  b                                           ; $6e67: $80
	add  b                                           ; $6e68: $80
	add  b                                           ; $6e69: $80
	add  b                                           ; $6e6a: $80
	add  b                                           ; $6e6b: $80
	add  b                                           ; $6e6c: $80
	add  b                                           ; $6e6d: $80
	add  b                                           ; $6e6e: $80
	add  b                                           ; $6e6f: $80
	add  b                                           ; $6e70: $80
	add  b                                           ; $6e71: $80
	add  b                                           ; $6e72: $80
	add  b                                           ; $6e73: $80
	add  b                                           ; $6e74: $80
	add  b                                           ; $6e75: $80
	add  b                                           ; $6e76: $80
	add  b                                           ; $6e77: $80
	add  b                                           ; $6e78: $80
	add  b                                           ; $6e79: $80
	add  b                                           ; $6e7a: $80
	add  b                                           ; $6e7b: $80
	add  b                                           ; $6e7c: $80
	add  b                                           ; $6e7d: $80
	add  b                                           ; $6e7e: $80
	add  b                                           ; $6e7f: $80
	add  b                                           ; $6e80: $80
	add  b                                           ; $6e81: $80
	add  b                                           ; $6e82: $80
	add  b                                           ; $6e83: $80
	add  b                                           ; $6e84: $80
	add  b                                           ; $6e85: $80
	add  b                                           ; $6e86: $80
	add  b                                           ; $6e87: $80
	add  b                                           ; $6e88: $80
	add  b                                           ; $6e89: $80
	add  b                                           ; $6e8a: $80
	add  b                                           ; $6e8b: $80
	add  b                                           ; $6e8c: $80
	add  b                                           ; $6e8d: $80
	add  b                                           ; $6e8e: $80
	add  b                                           ; $6e8f: $80
	add  b                                           ; $6e90: $80
	add  b                                           ; $6e91: $80
	add  b                                           ; $6e92: $80
	add  b                                           ; $6e93: $80
	add  b                                           ; $6e94: $80
	add  b                                           ; $6e95: $80
	add  b                                           ; $6e96: $80
	add  b                                           ; $6e97: $80
	add  b                                           ; $6e98: $80
	add  b                                           ; $6e99: $80
	add  b                                           ; $6e9a: $80
	add  b                                           ; $6e9b: $80
	add  b                                           ; $6e9c: $80
	add  b                                           ; $6e9d: $80
	add  b                                           ; $6e9e: $80
	add  b                                           ; $6e9f: $80
	add  b                                           ; $6ea0: $80
	add  b                                           ; $6ea1: $80
	add  b                                           ; $6ea2: $80
	add  b                                           ; $6ea3: $80
	add  b                                           ; $6ea4: $80
	add  b                                           ; $6ea5: $80
	add  b                                           ; $6ea6: $80
	add  b                                           ; $6ea7: $80
	add  b                                           ; $6ea8: $80
	add  b                                           ; $6ea9: $80
	add  b                                           ; $6eaa: $80
	add  b                                           ; $6eab: $80
	add  b                                           ; $6eac: $80
	add  b                                           ; $6ead: $80
	add  b                                           ; $6eae: $80
	add  b                                           ; $6eaf: $80
	add  b                                           ; $6eb0: $80
	add  b                                           ; $6eb1: $80
	add  b                                           ; $6eb2: $80
	add  b                                           ; $6eb3: $80
	add  b                                           ; $6eb4: $80
	add  b                                           ; $6eb5: $80
	add  b                                           ; $6eb6: $80
	add  b                                           ; $6eb7: $80
	add  b                                           ; $6eb8: $80
	add  b                                           ; $6eb9: $80
	add  b                                           ; $6eba: $80
	add  b                                           ; $6ebb: $80
	add  b                                           ; $6ebc: $80
	add  b                                           ; $6ebd: $80
	add  b                                           ; $6ebe: $80
	add  b                                           ; $6ebf: $80
	add  b                                           ; $6ec0: $80
	add  b                                           ; $6ec1: $80
	add  b                                           ; $6ec2: $80
	add  b                                           ; $6ec3: $80
	add  b                                           ; $6ec4: $80
	add  b                                           ; $6ec5: $80
	add  b                                           ; $6ec6: $80
	add  b                                           ; $6ec7: $80
	add  b                                           ; $6ec8: $80
	add  b                                           ; $6ec9: $80
	add  b                                           ; $6eca: $80
	add  b                                           ; $6ecb: $80
	add  b                                           ; $6ecc: $80
	add  b                                           ; $6ecd: $80
	add  b                                           ; $6ece: $80
	add  b                                           ; $6ecf: $80
	add  b                                           ; $6ed0: $80
	add  b                                           ; $6ed1: $80
	add  b                                           ; $6ed2: $80
	add  b                                           ; $6ed3: $80
	add  b                                           ; $6ed4: $80
	add  b                                           ; $6ed5: $80
	add  b                                           ; $6ed6: $80
	add  b                                           ; $6ed7: $80
	add  b                                           ; $6ed8: $80
	add  b                                           ; $6ed9: $80
	add  b                                           ; $6eda: $80
	add  b                                           ; $6edb: $80
	add  b                                           ; $6edc: $80
	add  b                                           ; $6edd: $80
	add  b                                           ; $6ede: $80
	add  b                                           ; $6edf: $80
	add  b                                           ; $6ee0: $80
	add  b                                           ; $6ee1: $80
	add  b                                           ; $6ee2: $80
	add  b                                           ; $6ee3: $80
	add  b                                           ; $6ee4: $80
	add  b                                           ; $6ee5: $80
	add  b                                           ; $6ee6: $80
	add  b                                           ; $6ee7: $80
	add  b                                           ; $6ee8: $80
	add  b                                           ; $6ee9: $80
	add  b                                           ; $6eea: $80
	add  b                                           ; $6eeb: $80
	add  b                                           ; $6eec: $80
	add  b                                           ; $6eed: $80
	add  b                                           ; $6eee: $80
	add  b                                           ; $6eef: $80
	add  b                                           ; $6ef0: $80
	add  b                                           ; $6ef1: $80
	add  b                                           ; $6ef2: $80
	add  b                                           ; $6ef3: $80
	add  b                                           ; $6ef4: $80
	add  b                                           ; $6ef5: $80
	add  b                                           ; $6ef6: $80
	add  b                                           ; $6ef7: $80
	add  b                                           ; $6ef8: $80
	add  b                                           ; $6ef9: $80
	add  b                                           ; $6efa: $80
	add  b                                           ; $6efb: $80
	add  b                                           ; $6efc: $80
	add  b                                           ; $6efd: $80
	add  b                                           ; $6efe: $80
	add  b                                           ; $6eff: $80
	add  b                                           ; $6f00: $80
	add  b                                           ; $6f01: $80
	add  b                                           ; $6f02: $80
	add  b                                           ; $6f03: $80
	add  b                                           ; $6f04: $80
	add  b                                           ; $6f05: $80
	add  b                                           ; $6f06: $80
	add  b                                           ; $6f07: $80
	add  b                                           ; $6f08: $80
	add  b                                           ; $6f09: $80
	add  b                                           ; $6f0a: $80
	add  b                                           ; $6f0b: $80
	add  b                                           ; $6f0c: $80
	add  b                                           ; $6f0d: $80
	add  b                                           ; $6f0e: $80
	add  b                                           ; $6f0f: $80
	add  b                                           ; $6f10: $80
	add  b                                           ; $6f11: $80
	add  b                                           ; $6f12: $80
	add  b                                           ; $6f13: $80
	add  b                                           ; $6f14: $80
	add  b                                           ; $6f15: $80
	add  b                                           ; $6f16: $80
	add  b                                           ; $6f17: $80
	add  b                                           ; $6f18: $80
	add  b                                           ; $6f19: $80
	add  b                                           ; $6f1a: $80
	add  b                                           ; $6f1b: $80
	add  b                                           ; $6f1c: $80
	add  b                                           ; $6f1d: $80
	add  b                                           ; $6f1e: $80
	add  b                                           ; $6f1f: $80
	add  b                                           ; $6f20: $80
	add  b                                           ; $6f21: $80
	add  b                                           ; $6f22: $80
	add  b                                           ; $6f23: $80
	add  b                                           ; $6f24: $80
	add  b                                           ; $6f25: $80
	add  b                                           ; $6f26: $80
	add  b                                           ; $6f27: $80
	add  b                                           ; $6f28: $80
	add  b                                           ; $6f29: $80
	add  b                                           ; $6f2a: $80
	add  b                                           ; $6f2b: $80
	add  b                                           ; $6f2c: $80
	add  b                                           ; $6f2d: $80
	add  b                                           ; $6f2e: $80
	add  b                                           ; $6f2f: $80
	add  b                                           ; $6f30: $80
	add  b                                           ; $6f31: $80
	add  b                                           ; $6f32: $80
	add  b                                           ; $6f33: $80
	add  b                                           ; $6f34: $80
	add  b                                           ; $6f35: $80
	add  b                                           ; $6f36: $80
	add  b                                           ; $6f37: $80
	add  b                                           ; $6f38: $80
	add  b                                           ; $6f39: $80
	add  b                                           ; $6f3a: $80
	add  b                                           ; $6f3b: $80
	add  b                                           ; $6f3c: $80
	add  b                                           ; $6f3d: $80
	add  b                                           ; $6f3e: $80
	add  b                                           ; $6f3f: $80
	add  b                                           ; $6f40: $80
	add  b                                           ; $6f41: $80
	add  b                                           ; $6f42: $80
	add  b                                           ; $6f43: $80
	add  b                                           ; $6f44: $80
	add  b                                           ; $6f45: $80
	add  b                                           ; $6f46: $80
	add  b                                           ; $6f47: $80
	add  b                                           ; $6f48: $80
	add  b                                           ; $6f49: $80
	add  b                                           ; $6f4a: $80
	add  b                                           ; $6f4b: $80
	add  b                                           ; $6f4c: $80
	add  b                                           ; $6f4d: $80
	add  b                                           ; $6f4e: $80
	add  b                                           ; $6f4f: $80
	add  b                                           ; $6f50: $80
	add  b                                           ; $6f51: $80
	add  b                                           ; $6f52: $80
	add  b                                           ; $6f53: $80
	add  b                                           ; $6f54: $80
	add  b                                           ; $6f55: $80
	add  b                                           ; $6f56: $80
	add  b                                           ; $6f57: $80
	add  b                                           ; $6f58: $80
	add  b                                           ; $6f59: $80
	add  b                                           ; $6f5a: $80
	add  b                                           ; $6f5b: $80
	add  b                                           ; $6f5c: $80
	add  b                                           ; $6f5d: $80
	add  b                                           ; $6f5e: $80
	add  b                                           ; $6f5f: $80
	add  b                                           ; $6f60: $80
	add  b                                           ; $6f61: $80
	add  b                                           ; $6f62: $80
	add  b                                           ; $6f63: $80
	add  b                                           ; $6f64: $80
	add  b                                           ; $6f65: $80
	add  b                                           ; $6f66: $80
	add  b                                           ; $6f67: $80
	add  b                                           ; $6f68: $80
	add  b                                           ; $6f69: $80
	add  b                                           ; $6f6a: $80
	add  b                                           ; $6f6b: $80
	add  b                                           ; $6f6c: $80
	add  b                                           ; $6f6d: $80
	add  b                                           ; $6f6e: $80
	add  b                                           ; $6f6f: $80
	add  b                                           ; $6f70: $80
	add  b                                           ; $6f71: $80
	add  b                                           ; $6f72: $80
	add  b                                           ; $6f73: $80
	add  b                                           ; $6f74: $80
	add  b                                           ; $6f75: $80
	add  b                                           ; $6f76: $80
	add  b                                           ; $6f77: $80
	add  b                                           ; $6f78: $80
	add  b                                           ; $6f79: $80
	add  b                                           ; $6f7a: $80
	add  b                                           ; $6f7b: $80
	add  b                                           ; $6f7c: $80
	add  b                                           ; $6f7d: $80
	add  b                                           ; $6f7e: $80
	add  b                                           ; $6f7f: $80
	add  b                                           ; $6f80: $80
	add  b                                           ; $6f81: $80
	add  b                                           ; $6f82: $80
	add  b                                           ; $6f83: $80
	add  b                                           ; $6f84: $80
	add  b                                           ; $6f85: $80
	add  b                                           ; $6f86: $80
	add  b                                           ; $6f87: $80
	add  b                                           ; $6f88: $80
	add  b                                           ; $6f89: $80
	add  b                                           ; $6f8a: $80
	add  b                                           ; $6f8b: $80
	add  b                                           ; $6f8c: $80
	add  b                                           ; $6f8d: $80
	add  b                                           ; $6f8e: $80
	add  b                                           ; $6f8f: $80
	add  b                                           ; $6f90: $80
	add  b                                           ; $6f91: $80
	add  b                                           ; $6f92: $80
	add  b                                           ; $6f93: $80
	add  b                                           ; $6f94: $80
	add  b                                           ; $6f95: $80
	add  b                                           ; $6f96: $80
	add  b                                           ; $6f97: $80
	add  b                                           ; $6f98: $80
	add  b                                           ; $6f99: $80
	add  b                                           ; $6f9a: $80
	add  b                                           ; $6f9b: $80
	add  b                                           ; $6f9c: $80
	add  b                                           ; $6f9d: $80
	add  b                                           ; $6f9e: $80
	add  b                                           ; $6f9f: $80
	add  b                                           ; $6fa0: $80
	add  b                                           ; $6fa1: $80
	add  b                                           ; $6fa2: $80
	add  b                                           ; $6fa3: $80
	add  b                                           ; $6fa4: $80
	add  b                                           ; $6fa5: $80
	add  b                                           ; $6fa6: $80
	add  b                                           ; $6fa7: $80
	add  b                                           ; $6fa8: $80
	add  b                                           ; $6fa9: $80
	add  b                                           ; $6faa: $80
	add  b                                           ; $6fab: $80
	add  b                                           ; $6fac: $80
	add  b                                           ; $6fad: $80
	add  b                                           ; $6fae: $80
	add  b                                           ; $6faf: $80
	add  b                                           ; $6fb0: $80
	add  b                                           ; $6fb1: $80
	add  b                                           ; $6fb2: $80
	add  b                                           ; $6fb3: $80
	add  b                                           ; $6fb4: $80
	add  b                                           ; $6fb5: $80
	add  b                                           ; $6fb6: $80
	add  b                                           ; $6fb7: $80
	add  b                                           ; $6fb8: $80
	add  b                                           ; $6fb9: $80
	add  b                                           ; $6fba: $80
	add  b                                           ; $6fbb: $80
	add  b                                           ; $6fbc: $80
	add  b                                           ; $6fbd: $80
	add  b                                           ; $6fbe: $80
	add  b                                           ; $6fbf: $80
	add  b                                           ; $6fc0: $80
	add  b                                           ; $6fc1: $80
	add  b                                           ; $6fc2: $80
	add  b                                           ; $6fc3: $80
	add  b                                           ; $6fc4: $80
	add  b                                           ; $6fc5: $80
	add  b                                           ; $6fc6: $80
	add  b                                           ; $6fc7: $80
	add  b                                           ; $6fc8: $80
	add  b                                           ; $6fc9: $80
	add  b                                           ; $6fca: $80
	add  b                                           ; $6fcb: $80
	add  b                                           ; $6fcc: $80
	add  b                                           ; $6fcd: $80
	add  b                                           ; $6fce: $80
	add  b                                           ; $6fcf: $80
	add  b                                           ; $6fd0: $80
	add  b                                           ; $6fd1: $80
	add  b                                           ; $6fd2: $80
	add  b                                           ; $6fd3: $80
	add  b                                           ; $6fd4: $80
	add  b                                           ; $6fd5: $80
	add  b                                           ; $6fd6: $80
	add  b                                           ; $6fd7: $80
	add  b                                           ; $6fd8: $80
	add  b                                           ; $6fd9: $80
	add  b                                           ; $6fda: $80
	add  b                                           ; $6fdb: $80
	add  b                                           ; $6fdc: $80
	add  b                                           ; $6fdd: $80
	add  b                                           ; $6fde: $80
	add  b                                           ; $6fdf: $80
	add  b                                           ; $6fe0: $80
	add  b                                           ; $6fe1: $80
	add  b                                           ; $6fe2: $80
	add  b                                           ; $6fe3: $80
	add  b                                           ; $6fe4: $80
	add  b                                           ; $6fe5: $80
	add  b                                           ; $6fe6: $80
	add  b                                           ; $6fe7: $80
	add  b                                           ; $6fe8: $80
	add  b                                           ; $6fe9: $80
	add  b                                           ; $6fea: $80
	add  b                                           ; $6feb: $80
	add  b                                           ; $6fec: $80
	add  b                                           ; $6fed: $80
	add  b                                           ; $6fee: $80
	add  b                                           ; $6fef: $80
	add  b                                           ; $6ff0: $80
	add  b                                           ; $6ff1: $80
	add  b                                           ; $6ff2: $80
	add  b                                           ; $6ff3: $80
	add  b                                           ; $6ff4: $80
	add  b                                           ; $6ff5: $80
	add  b                                           ; $6ff6: $80
	add  b                                           ; $6ff7: $80
	add  b                                           ; $6ff8: $80
	add  b                                           ; $6ff9: $80
	add  b                                           ; $6ffa: $80
	add  b                                           ; $6ffb: $80
	add  b                                           ; $6ffc: $80
	add  b                                           ; $6ffd: $80
	add  b                                           ; $6ffe: $80
	add  b                                           ; $6fff: $80
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	ld   d, [hl]                                     ; $7004: $56
	ld   d, l                                        ; $7005: $55
	ld   e, h                                        ; $7006: $5c
	ld   e, h                                        ; $7007: $5c
	ld   e, h                                        ; $7008: $5c
	ld   e, h                                        ; $7009: $5c
	ld   e, h                                        ; $700a: $5c
	ld   e, h                                        ; $700b: $5c
	ld   e, h                                        ; $700c: $5c
	ld   e, h                                        ; $700d: $5c
	ld   d, l                                        ; $700e: $55
	ld   d, [hl]                                     ; $700f: $56
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
	ld   h, [hl]                                     ; $7024: $66
	ld   h, l                                        ; $7025: $65
	ld   l, c                                        ; $7026: $69
	ld   l, c                                        ; $7027: $69
	ld   l, c                                        ; $7028: $69
	ld   l, c                                        ; $7029: $69
	ld   l, c                                        ; $702a: $69
	ld   l, c                                        ; $702b: $69
	ld   l, c                                        ; $702c: $69
	ld   l, c                                        ; $702d: $69
	ld   h, l                                        ; $702e: $65
	ld   h, [hl]                                     ; $702f: $66
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
	ld   e, c                                        ; $7040: $59
	ld   e, c                                        ; $7041: $59
	ld   e, c                                        ; $7042: $59
	ld   e, c                                        ; $7043: $59
	ld   e, [hl]                                     ; $7044: $5e
	ld   bc, $0101                                   ; $7045: $01 $01 $01
	ld   bc, $0101                                   ; $7048: $01 $01 $01
	ld   bc, $0101                                   ; $704b: $01 $01 $01
	ld   bc, $595e                                   ; $704e: $01 $5e $59
	ld   e, c                                        ; $7051: $59
	ld   e, c                                        ; $7052: $59
	ld   e, c                                        ; $7053: $59
	ld   e, c                                        ; $7054: $59
	ld   e, c                                        ; $7055: $59
	ld   e, c                                        ; $7056: $59
	ld   e, c                                        ; $7057: $59
	ld   e, c                                        ; $7058: $59
	ld   e, c                                        ; $7059: $59
	ld   e, c                                        ; $705a: $59
	ld   e, c                                        ; $705b: $59
	ld   e, c                                        ; $705c: $59
	ld   e, c                                        ; $705d: $59
	ld   e, c                                        ; $705e: $59
	ld   e, c                                        ; $705f: $59
	ld   d, a                                        ; $7060: $57
	ld   e, b                                        ; $7061: $58
	ld   d, a                                        ; $7062: $57
	ld   e, b                                        ; $7063: $58
	ld   e, e                                        ; $7064: $5b
	ld   bc, $0101                                   ; $7065: $01 $01 $01
	ld   bc, $0101                                   ; $7068: $01 $01 $01
	ld   bc, $0101                                   ; $706b: $01 $01 $01
	ld   bc, $575b                                   ; $706e: $01 $5b $57
	ld   e, b                                        ; $7071: $58
	ld   d, a                                        ; $7072: $57
	ld   e, b                                        ; $7073: $58
	ld   d, a                                        ; $7074: $57
	ld   e, b                                        ; $7075: $58
	ld   d, a                                        ; $7076: $57
	ld   e, b                                        ; $7077: $58
	ld   d, a                                        ; $7078: $57
	ld   e, b                                        ; $7079: $58
	ld   d, a                                        ; $707a: $57
	ld   e, b                                        ; $707b: $58
	ld   d, a                                        ; $707c: $57
	ld   e, b                                        ; $707d: $58
	ld   d, a                                        ; $707e: $57
	ld   e, b                                        ; $707f: $58
	ld   h, a                                        ; $7080: $67
	ld   l, b                                        ; $7081: $68
	ld   h, a                                        ; $7082: $67
	ld   l, b                                        ; $7083: $68
	ld   h, h                                        ; $7084: $64
	ld   bc, $0101                                   ; $7085: $01 $01 $01
	ld   bc, $0101                                   ; $7088: $01 $01 $01
	ld   bc, $0101                                   ; $708b: $01 $01 $01
	ld   bc, $6764                                   ; $708e: $01 $64 $67
	ld   l, b                                        ; $7091: $68
	ld   h, a                                        ; $7092: $67
	ld   l, b                                        ; $7093: $68
	ld   h, a                                        ; $7094: $67
	ld   l, b                                        ; $7095: $68
	ld   h, a                                        ; $7096: $67
	ld   l, b                                        ; $7097: $68
	ld   h, a                                        ; $7098: $67
	ld   l, b                                        ; $7099: $68
	ld   h, a                                        ; $709a: $67
	ld   l, b                                        ; $709b: $68
	ld   h, a                                        ; $709c: $67
	ld   l, b                                        ; $709d: $68
	ld   h, a                                        ; $709e: $67
	ld   l, b                                        ; $709f: $68
	ld   d, a                                        ; $70a0: $57
	ld   e, b                                        ; $70a1: $58
	ld   d, a                                        ; $70a2: $57
	ld   e, b                                        ; $70a3: $58
	ld   h, h                                        ; $70a4: $64
	ld   bc, $0101                                   ; $70a5: $01 $01 $01
	ld   bc, $0101                                   ; $70a8: $01 $01 $01
	ld   bc, $0101                                   ; $70ab: $01 $01 $01
	ld   bc, $5764                                   ; $70ae: $01 $64 $57
	ld   e, b                                        ; $70b1: $58
	ld   d, a                                        ; $70b2: $57
	ld   e, b                                        ; $70b3: $58
	ld   d, a                                        ; $70b4: $57
	ld   e, b                                        ; $70b5: $58
	ld   d, a                                        ; $70b6: $57
	ld   e, b                                        ; $70b7: $58
	ld   d, a                                        ; $70b8: $57
	ld   e, b                                        ; $70b9: $58
	ld   d, a                                        ; $70ba: $57
	ld   e, b                                        ; $70bb: $58
	ld   d, a                                        ; $70bc: $57
	ld   e, b                                        ; $70bd: $58
	ld   d, a                                        ; $70be: $57
	ld   e, b                                        ; $70bf: $58
	ld   h, a                                        ; $70c0: $67
	ld   l, b                                        ; $70c1: $68
	ld   h, a                                        ; $70c2: $67
	ld   l, b                                        ; $70c3: $68
	ld   h, h                                        ; $70c4: $64
	ld   bc, $0101                                   ; $70c5: $01 $01 $01
	ld   bc, $0101                                   ; $70c8: $01 $01 $01
	ld   bc, $0101                                   ; $70cb: $01 $01 $01
	ld   bc, $6764                                   ; $70ce: $01 $64 $67
	ld   l, b                                        ; $70d1: $68
	ld   h, a                                        ; $70d2: $67
	ld   l, b                                        ; $70d3: $68
	ld   h, a                                        ; $70d4: $67
	ld   l, b                                        ; $70d5: $68
	ld   h, a                                        ; $70d6: $67
	ld   l, b                                        ; $70d7: $68
	ld   h, a                                        ; $70d8: $67
	ld   l, b                                        ; $70d9: $68
	ld   h, a                                        ; $70da: $67
	ld   l, b                                        ; $70db: $68
	ld   h, a                                        ; $70dc: $67
	ld   l, b                                        ; $70dd: $68
	ld   h, a                                        ; $70de: $67
	ld   l, b                                        ; $70df: $68
	ld   d, a                                        ; $70e0: $57
	ld   e, b                                        ; $70e1: $58
	ld   d, a                                        ; $70e2: $57
	ld   e, b                                        ; $70e3: $58
	ld   h, h                                        ; $70e4: $64
	ld   bc, $0101                                   ; $70e5: $01 $01 $01
	ld   bc, $0101                                   ; $70e8: $01 $01 $01
	ld   bc, $0101                                   ; $70eb: $01 $01 $01
	ld   bc, $5764                                   ; $70ee: $01 $64 $57
	ld   e, b                                        ; $70f1: $58
	ld   d, a                                        ; $70f2: $57
	ld   e, b                                        ; $70f3: $58
	ld   d, a                                        ; $70f4: $57
	ld   e, b                                        ; $70f5: $58
	ld   d, a                                        ; $70f6: $57
	ld   e, b                                        ; $70f7: $58
	ld   d, a                                        ; $70f8: $57
	ld   e, b                                        ; $70f9: $58
	ld   d, a                                        ; $70fa: $57
	ld   e, b                                        ; $70fb: $58
	ld   d, a                                        ; $70fc: $57
	ld   e, b                                        ; $70fd: $58
	ld   d, a                                        ; $70fe: $57
	ld   e, b                                        ; $70ff: $58
	ld   h, a                                        ; $7100: $67
	ld   l, b                                        ; $7101: $68
	ld   h, a                                        ; $7102: $67
	ld   l, b                                        ; $7103: $68
	ld   e, e                                        ; $7104: $5b
	ld   bc, $0101                                   ; $7105: $01 $01 $01
	ld   bc, $0101                                   ; $7108: $01 $01 $01
	ld   bc, $0101                                   ; $710b: $01 $01 $01
	ld   bc, $675b                                   ; $710e: $01 $5b $67
	ld   l, b                                        ; $7111: $68
	ld   h, a                                        ; $7112: $67
	ld   l, b                                        ; $7113: $68
	ld   h, a                                        ; $7114: $67
	ld   l, b                                        ; $7115: $68
	ld   h, a                                        ; $7116: $67
	ld   l, b                                        ; $7117: $68
	ld   h, a                                        ; $7118: $67
	ld   l, b                                        ; $7119: $68
	ld   h, a                                        ; $711a: $67
	ld   l, b                                        ; $711b: $68
	ld   h, a                                        ; $711c: $67
	ld   l, b                                        ; $711d: $68
	ld   h, a                                        ; $711e: $67
	ld   l, b                                        ; $711f: $68
	ld   e, c                                        ; $7120: $59
	ld   e, c                                        ; $7121: $59
	ld   e, c                                        ; $7122: $59
	ld   e, c                                        ; $7123: $59
	ld   e, [hl]                                     ; $7124: $5e
	ld   bc, $1110                                   ; $7125: $01 $10 $11
	ld   [de], a                                     ; $7128: $12
	inc  de                                          ; $7129: $13
	inc  d                                           ; $712a: $14
	dec  d                                           ; $712b: $15
	ld   bc, $0101                                   ; $712c: $01 $01 $01
	ld   e, [hl]                                     ; $712f: $5e
	ld   e, c                                        ; $7130: $59
	ld   e, c                                        ; $7131: $59
	ld   e, c                                        ; $7132: $59
	ld   e, c                                        ; $7133: $59
	ld   e, c                                        ; $7134: $59
	ld   e, c                                        ; $7135: $59
	ld   e, c                                        ; $7136: $59
	ld   e, c                                        ; $7137: $59
	ld   e, c                                        ; $7138: $59
	ld   e, c                                        ; $7139: $59
	ld   e, c                                        ; $713a: $59
	ld   e, c                                        ; $713b: $59
	ld   e, c                                        ; $713c: $59
	ld   e, c                                        ; $713d: $59
	ld   e, c                                        ; $713e: $59
	ld   e, c                                        ; $713f: $59
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	ld   h, [hl]                                     ; $7144: $66
	ld   h, l                                        ; $7145: $65
	jr   nz, jr_029_7169                             ; $7146: $20 $21

	ld   [hl+], a                                    ; $7148: $22
	inc  hl                                          ; $7149: $23
	inc  h                                           ; $714a: $24
	dec  h                                           ; $714b: $25
	ld   l, h                                        ; $714c: $6c
	ld   l, h                                        ; $714d: $6c
	ld   h, l                                        ; $714e: $65
	ld   h, [hl]                                     ; $714f: $66
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
	ld   d, [hl]                                     ; $7164: $56
	ld   d, l                                        ; $7165: $55
	jr   nc, jr_029_7199                             ; $7166: $30 $31

	ld   [hl-], a                                    ; $7168: $32

jr_029_7169:
	inc  sp                                          ; $7169: $33
	inc  [hl]                                        ; $716a: $34
	dec  [hl]                                        ; $716b: $35
	ld   e, h                                        ; $716c: $5c
	ld   e, h                                        ; $716d: $5c
	ld   d, l                                        ; $716e: $55
	ld   d, [hl]                                     ; $716f: $56
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
	ld   d, [hl]                                     ; $7184: $56
	ld   d, l                                        ; $7185: $55
	ld   e, h                                        ; $7186: $5c
	ld   e, h                                        ; $7187: $5c
	ld   e, h                                        ; $7188: $5c
	ld   e, h                                        ; $7189: $5c
	ld   e, h                                        ; $718a: $5c
	ld   e, h                                        ; $718b: $5c
	ld   e, h                                        ; $718c: $5c
	ld   e, h                                        ; $718d: $5c
	ld   d, l                                        ; $718e: $55
	ld   d, [hl]                                     ; $718f: $56
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00

jr_029_7199:
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
	ld   h, [hl]                                     ; $71a4: $66
	ld   h, l                                        ; $71a5: $65
	ld   l, c                                        ; $71a6: $69
	ld   l, c                                        ; $71a7: $69
	ld   l, c                                        ; $71a8: $69
	ld   l, c                                        ; $71a9: $69
	ld   l, c                                        ; $71aa: $69
	ld   l, c                                        ; $71ab: $69
	ld   l, c                                        ; $71ac: $69
	ld   l, c                                        ; $71ad: $69
	ld   h, l                                        ; $71ae: $65
	ld   h, [hl]                                     ; $71af: $66
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
	ld   e, c                                        ; $71c0: $59
	ld   e, c                                        ; $71c1: $59
	ld   e, c                                        ; $71c2: $59
	ld   e, c                                        ; $71c3: $59
	ld   e, [hl]                                     ; $71c4: $5e
	ld   bc, $0101                                   ; $71c5: $01 $01 $01
	ld   bc, $0101                                   ; $71c8: $01 $01 $01
	ld   bc, $0101                                   ; $71cb: $01 $01 $01
	ld   bc, $595e                                   ; $71ce: $01 $5e $59
	ld   e, c                                        ; $71d1: $59
	ld   e, c                                        ; $71d2: $59
	ld   e, c                                        ; $71d3: $59
	ld   e, c                                        ; $71d4: $59
	ld   e, c                                        ; $71d5: $59
	ld   e, c                                        ; $71d6: $59
	ld   e, c                                        ; $71d7: $59
	ld   e, c                                        ; $71d8: $59
	ld   e, c                                        ; $71d9: $59
	ld   e, c                                        ; $71da: $59
	ld   e, c                                        ; $71db: $59
	ld   e, c                                        ; $71dc: $59
	ld   e, c                                        ; $71dd: $59
	ld   e, c                                        ; $71de: $59
	ld   e, c                                        ; $71df: $59
	ld   d, a                                        ; $71e0: $57
	ld   e, b                                        ; $71e1: $58
	ld   d, a                                        ; $71e2: $57
	ld   e, b                                        ; $71e3: $58
	ld   e, e                                        ; $71e4: $5b
	ld   bc, $0101                                   ; $71e5: $01 $01 $01
	ld   bc, $0101                                   ; $71e8: $01 $01 $01
	ld   bc, $0101                                   ; $71eb: $01 $01 $01
	ld   bc, $575b                                   ; $71ee: $01 $5b $57
	ld   e, b                                        ; $71f1: $58
	ld   d, a                                        ; $71f2: $57
	ld   e, b                                        ; $71f3: $58
	ld   d, a                                        ; $71f4: $57
	ld   e, b                                        ; $71f5: $58
	ld   d, a                                        ; $71f6: $57
	ld   e, b                                        ; $71f7: $58
	ld   d, a                                        ; $71f8: $57
	ld   e, b                                        ; $71f9: $58
	ld   d, a                                        ; $71fa: $57
	ld   e, b                                        ; $71fb: $58
	ld   d, a                                        ; $71fc: $57
	ld   e, b                                        ; $71fd: $58
	ld   d, a                                        ; $71fe: $57
	ld   e, b                                        ; $71ff: $58
	ld   h, a                                        ; $7200: $67
	ld   l, b                                        ; $7201: $68
	ld   h, a                                        ; $7202: $67
	ld   l, b                                        ; $7203: $68
	ld   h, h                                        ; $7204: $64
	ld   bc, $0101                                   ; $7205: $01 $01 $01
	ld   bc, $0101                                   ; $7208: $01 $01 $01
	ld   bc, $0101                                   ; $720b: $01 $01 $01
	ld   bc, $6764                                   ; $720e: $01 $64 $67
	ld   l, b                                        ; $7211: $68
	ld   h, a                                        ; $7212: $67
	ld   l, b                                        ; $7213: $68
	ld   h, a                                        ; $7214: $67
	ld   l, b                                        ; $7215: $68
	ld   h, a                                        ; $7216: $67
	ld   l, b                                        ; $7217: $68
	ld   h, a                                        ; $7218: $67
	ld   l, b                                        ; $7219: $68
	ld   h, a                                        ; $721a: $67
	ld   l, b                                        ; $721b: $68
	ld   h, a                                        ; $721c: $67
	ld   l, b                                        ; $721d: $68
	ld   h, a                                        ; $721e: $67
	ld   l, b                                        ; $721f: $68
	ld   d, a                                        ; $7220: $57
	ld   e, b                                        ; $7221: $58
	ld   d, a                                        ; $7222: $57
	ld   e, b                                        ; $7223: $58
	ld   h, h                                        ; $7224: $64
	ld   bc, $0101                                   ; $7225: $01 $01 $01
	ld   bc, $0101                                   ; $7228: $01 $01 $01
	ld   bc, $0101                                   ; $722b: $01 $01 $01
	ld   bc, $5764                                   ; $722e: $01 $64 $57
	ld   e, b                                        ; $7231: $58
	ld   d, a                                        ; $7232: $57
	ld   e, b                                        ; $7233: $58
	ld   d, a                                        ; $7234: $57
	ld   e, b                                        ; $7235: $58
	ld   d, a                                        ; $7236: $57
	ld   e, b                                        ; $7237: $58
	ld   d, a                                        ; $7238: $57
	ld   e, b                                        ; $7239: $58
	ld   d, a                                        ; $723a: $57
	ld   e, b                                        ; $723b: $58
	ld   d, a                                        ; $723c: $57
	ld   e, b                                        ; $723d: $58
	ld   d, a                                        ; $723e: $57
	ld   e, b                                        ; $723f: $58
	ld   h, a                                        ; $7240: $67
	ld   l, b                                        ; $7241: $68
	ld   h, a                                        ; $7242: $67
	ld   l, b                                        ; $7243: $68
	ld   h, h                                        ; $7244: $64
	ld   bc, $0101                                   ; $7245: $01 $01 $01
	ld   bc, $0101                                   ; $7248: $01 $01 $01
	ld   bc, $0101                                   ; $724b: $01 $01 $01
	ld   bc, $6764                                   ; $724e: $01 $64 $67
	ld   l, b                                        ; $7251: $68
	ld   h, a                                        ; $7252: $67
	ld   l, b                                        ; $7253: $68
	ld   h, a                                        ; $7254: $67
	ld   l, b                                        ; $7255: $68
	ld   h, a                                        ; $7256: $67
	ld   l, b                                        ; $7257: $68
	ld   h, a                                        ; $7258: $67
	ld   l, b                                        ; $7259: $68
	ld   h, a                                        ; $725a: $67
	ld   l, b                                        ; $725b: $68
	ld   h, a                                        ; $725c: $67
	ld   l, b                                        ; $725d: $68
	ld   h, a                                        ; $725e: $67
	ld   l, b                                        ; $725f: $68
	ld   d, a                                        ; $7260: $57
	ld   e, b                                        ; $7261: $58
	ld   d, a                                        ; $7262: $57
	ld   e, b                                        ; $7263: $58
	ld   h, h                                        ; $7264: $64
	ld   bc, $0101                                   ; $7265: $01 $01 $01
	ld   bc, $0101                                   ; $7268: $01 $01 $01
	ld   bc, $0101                                   ; $726b: $01 $01 $01
	ld   bc, $5764                                   ; $726e: $01 $64 $57
	ld   e, b                                        ; $7271: $58
	ld   d, a                                        ; $7272: $57
	ld   e, b                                        ; $7273: $58
	ld   d, a                                        ; $7274: $57
	ld   e, b                                        ; $7275: $58
	ld   d, a                                        ; $7276: $57
	ld   e, b                                        ; $7277: $58
	ld   d, a                                        ; $7278: $57
	ld   e, b                                        ; $7279: $58
	ld   d, a                                        ; $727a: $57
	ld   e, b                                        ; $727b: $58
	ld   d, a                                        ; $727c: $57
	ld   e, b                                        ; $727d: $58
	ld   d, a                                        ; $727e: $57
	ld   e, b                                        ; $727f: $58
	ld   h, a                                        ; $7280: $67
	ld   l, b                                        ; $7281: $68
	ld   h, a                                        ; $7282: $67
	ld   l, b                                        ; $7283: $68
	ld   e, e                                        ; $7284: $5b
	ld   bc, $0101                                   ; $7285: $01 $01 $01
	ld   bc, $0101                                   ; $7288: $01 $01 $01
	ld   bc, $0101                                   ; $728b: $01 $01 $01
	ld   bc, $675b                                   ; $728e: $01 $5b $67
	ld   l, b                                        ; $7291: $68
	ld   h, a                                        ; $7292: $67
	ld   l, b                                        ; $7293: $68
	ld   h, a                                        ; $7294: $67
	ld   l, b                                        ; $7295: $68
	ld   h, a                                        ; $7296: $67
	ld   l, b                                        ; $7297: $68
	ld   h, a                                        ; $7298: $67
	ld   l, b                                        ; $7299: $68
	ld   h, a                                        ; $729a: $67
	ld   l, b                                        ; $729b: $68
	ld   h, a                                        ; $729c: $67
	ld   l, b                                        ; $729d: $68
	ld   h, a                                        ; $729e: $67
	ld   l, b                                        ; $729f: $68
	ld   e, c                                        ; $72a0: $59
	ld   e, c                                        ; $72a1: $59
	ld   e, c                                        ; $72a2: $59
	ld   e, c                                        ; $72a3: $59
	ld   e, [hl]                                     ; $72a4: $5e
	ld   bc, $1716                                   ; $72a5: $01 $16 $17
	jr   jr_029_72c3                                 ; $72a8: $18 $19

	ld   a, [de]                                     ; $72aa: $1a
	dec  de                                          ; $72ab: $1b
	ld   bc, $0101                                   ; $72ac: $01 $01 $01
	ld   e, [hl]                                     ; $72af: $5e
	ld   e, c                                        ; $72b0: $59
	ld   e, c                                        ; $72b1: $59
	ld   e, c                                        ; $72b2: $59
	ld   e, c                                        ; $72b3: $59
	ld   e, c                                        ; $72b4: $59
	ld   e, c                                        ; $72b5: $59
	ld   e, c                                        ; $72b6: $59
	ld   e, c                                        ; $72b7: $59
	ld   e, c                                        ; $72b8: $59
	ld   e, c                                        ; $72b9: $59
	ld   e, c                                        ; $72ba: $59
	ld   e, c                                        ; $72bb: $59
	ld   e, c                                        ; $72bc: $59
	ld   e, c                                        ; $72bd: $59
	ld   e, c                                        ; $72be: $59
	ld   e, c                                        ; $72bf: $59
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00

jr_029_72c3:
	nop                                              ; $72c3: $00
	ld   h, [hl]                                     ; $72c4: $66
	ld   h, l                                        ; $72c5: $65
	ld   h, $27                                      ; $72c6: $26 $27
	jr   z, jr_029_72f3                              ; $72c8: $28 $29

	ld   a, [hl+]                                    ; $72ca: $2a
	dec  hl                                          ; $72cb: $2b
	ld   l, h                                        ; $72cc: $6c
	ld   l, h                                        ; $72cd: $6c
	ld   h, l                                        ; $72ce: $65
	ld   h, [hl]                                     ; $72cf: $66
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
	ld   d, [hl]                                     ; $72e4: $56
	ld   d, l                                        ; $72e5: $55
	ld   [hl], $37                                   ; $72e6: $36 $37
	jr   c, jr_029_7323                              ; $72e8: $38 $39

	ld   a, [hl-]                                    ; $72ea: $3a
	dec  sp                                          ; $72eb: $3b
	ld   e, h                                        ; $72ec: $5c
	ld   e, h                                        ; $72ed: $5c
	ld   d, l                                        ; $72ee: $55
	ld   d, [hl]                                     ; $72ef: $56
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00

jr_029_72f3:
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

Call_029_7300:
	add  b                                           ; $7300: $80
	add  b                                           ; $7301: $80
	add  b                                           ; $7302: $80
	add  b                                           ; $7303: $80
	add  b                                           ; $7304: $80
	add  b                                           ; $7305: $80
	add  b                                           ; $7306: $80
	add  b                                           ; $7307: $80
	add  b                                           ; $7308: $80
	add  b                                           ; $7309: $80
	add  b                                           ; $730a: $80
	add  b                                           ; $730b: $80
	add  b                                           ; $730c: $80
	add  b                                           ; $730d: $80
	add  b                                           ; $730e: $80
	add  b                                           ; $730f: $80
	add  b                                           ; $7310: $80
	add  b                                           ; $7311: $80
	add  b                                           ; $7312: $80
	add  b                                           ; $7313: $80
	add  b                                           ; $7314: $80
	add  b                                           ; $7315: $80
	add  b                                           ; $7316: $80
	add  b                                           ; $7317: $80
	add  b                                           ; $7318: $80
	add  b                                           ; $7319: $80
	add  b                                           ; $731a: $80
	add  b                                           ; $731b: $80
	add  b                                           ; $731c: $80
	add  b                                           ; $731d: $80
	add  b                                           ; $731e: $80
	add  b                                           ; $731f: $80
	add  b                                           ; $7320: $80
	add  b                                           ; $7321: $80
	add  b                                           ; $7322: $80

jr_029_7323:
	add  b                                           ; $7323: $80
	add  b                                           ; $7324: $80
	add  b                                           ; $7325: $80
	add  b                                           ; $7326: $80
	add  b                                           ; $7327: $80
	add  b                                           ; $7328: $80
	add  b                                           ; $7329: $80
	add  b                                           ; $732a: $80
	add  b                                           ; $732b: $80
	add  b                                           ; $732c: $80
	add  b                                           ; $732d: $80
	add  b                                           ; $732e: $80
	add  b                                           ; $732f: $80
	add  b                                           ; $7330: $80
	add  b                                           ; $7331: $80
	add  b                                           ; $7332: $80
	add  b                                           ; $7333: $80
	add  b                                           ; $7334: $80
	add  b                                           ; $7335: $80
	add  b                                           ; $7336: $80
	add  b                                           ; $7337: $80
	add  b                                           ; $7338: $80
	add  b                                           ; $7339: $80
	add  b                                           ; $733a: $80
	add  b                                           ; $733b: $80
	add  b                                           ; $733c: $80
	add  b                                           ; $733d: $80
	add  b                                           ; $733e: $80
	add  b                                           ; $733f: $80
	add  b                                           ; $7340: $80
	add  b                                           ; $7341: $80
	add  b                                           ; $7342: $80
	add  b                                           ; $7343: $80
	add  b                                           ; $7344: $80
	add  b                                           ; $7345: $80
	add  b                                           ; $7346: $80
	add  b                                           ; $7347: $80
	add  b                                           ; $7348: $80
	add  b                                           ; $7349: $80
	add  b                                           ; $734a: $80
	add  b                                           ; $734b: $80
	add  b                                           ; $734c: $80
	add  b                                           ; $734d: $80
	add  b                                           ; $734e: $80
	add  b                                           ; $734f: $80
	add  b                                           ; $7350: $80
	add  b                                           ; $7351: $80
	add  b                                           ; $7352: $80
	add  b                                           ; $7353: $80
	add  b                                           ; $7354: $80
	add  b                                           ; $7355: $80
	add  b                                           ; $7356: $80
	add  b                                           ; $7357: $80
	add  b                                           ; $7358: $80
	add  b                                           ; $7359: $80
	add  b                                           ; $735a: $80
	add  b                                           ; $735b: $80
	add  b                                           ; $735c: $80
	add  b                                           ; $735d: $80
	add  b                                           ; $735e: $80
	add  b                                           ; $735f: $80
	add  b                                           ; $7360: $80
	add  b                                           ; $7361: $80
	add  b                                           ; $7362: $80
	add  b                                           ; $7363: $80
	add  b                                           ; $7364: $80
	add  b                                           ; $7365: $80
	add  b                                           ; $7366: $80
	add  b                                           ; $7367: $80
	add  b                                           ; $7368: $80
	add  b                                           ; $7369: $80
	add  b                                           ; $736a: $80
	add  b                                           ; $736b: $80
	add  b                                           ; $736c: $80
	add  b                                           ; $736d: $80
	add  b                                           ; $736e: $80
	add  b                                           ; $736f: $80
	add  b                                           ; $7370: $80
	add  b                                           ; $7371: $80
	add  b                                           ; $7372: $80
	add  b                                           ; $7373: $80
	add  b                                           ; $7374: $80
	add  b                                           ; $7375: $80
	add  b                                           ; $7376: $80
	add  b                                           ; $7377: $80
	add  b                                           ; $7378: $80
	add  b                                           ; $7379: $80
	add  b                                           ; $737a: $80
	add  b                                           ; $737b: $80
	add  b                                           ; $737c: $80
	add  b                                           ; $737d: $80
	add  b                                           ; $737e: $80
	add  b                                           ; $737f: $80
	add  b                                           ; $7380: $80
	add  b                                           ; $7381: $80
	add  b                                           ; $7382: $80
	add  b                                           ; $7383: $80
	add  b                                           ; $7384: $80
	add  b                                           ; $7385: $80
	add  b                                           ; $7386: $80
	add  b                                           ; $7387: $80
	add  b                                           ; $7388: $80
	add  b                                           ; $7389: $80
	add  b                                           ; $738a: $80
	add  b                                           ; $738b: $80
	add  b                                           ; $738c: $80
	add  b                                           ; $738d: $80
	add  b                                           ; $738e: $80
	add  b                                           ; $738f: $80
	add  b                                           ; $7390: $80
	add  b                                           ; $7391: $80
	add  b                                           ; $7392: $80
	add  b                                           ; $7393: $80
	add  b                                           ; $7394: $80
	add  b                                           ; $7395: $80
	add  b                                           ; $7396: $80
	add  b                                           ; $7397: $80
	add  b                                           ; $7398: $80
	add  b                                           ; $7399: $80
	add  b                                           ; $739a: $80
	add  b                                           ; $739b: $80
	add  b                                           ; $739c: $80
	add  b                                           ; $739d: $80
	add  b                                           ; $739e: $80
	add  b                                           ; $739f: $80
	add  b                                           ; $73a0: $80
	add  b                                           ; $73a1: $80
	add  b                                           ; $73a2: $80
	add  b                                           ; $73a3: $80
	add  b                                           ; $73a4: $80
	add  b                                           ; $73a5: $80
	add  b                                           ; $73a6: $80
	add  b                                           ; $73a7: $80
	add  b                                           ; $73a8: $80
	add  b                                           ; $73a9: $80
	add  b                                           ; $73aa: $80
	add  b                                           ; $73ab: $80
	add  b                                           ; $73ac: $80
	add  b                                           ; $73ad: $80
	add  b                                           ; $73ae: $80
	add  b                                           ; $73af: $80
	add  b                                           ; $73b0: $80
	add  b                                           ; $73b1: $80
	add  b                                           ; $73b2: $80
	add  b                                           ; $73b3: $80
	add  b                                           ; $73b4: $80
	add  b                                           ; $73b5: $80
	add  b                                           ; $73b6: $80
	add  b                                           ; $73b7: $80
	add  b                                           ; $73b8: $80
	add  b                                           ; $73b9: $80
	add  b                                           ; $73ba: $80
	add  b                                           ; $73bb: $80
	add  b                                           ; $73bc: $80
	add  b                                           ; $73bd: $80
	add  b                                           ; $73be: $80
	add  b                                           ; $73bf: $80
	add  b                                           ; $73c0: $80
	add  b                                           ; $73c1: $80
	add  b                                           ; $73c2: $80
	add  b                                           ; $73c3: $80
	add  b                                           ; $73c4: $80
	add  b                                           ; $73c5: $80
	add  b                                           ; $73c6: $80
	add  b                                           ; $73c7: $80
	add  b                                           ; $73c8: $80
	add  b                                           ; $73c9: $80
	add  b                                           ; $73ca: $80
	add  b                                           ; $73cb: $80
	add  b                                           ; $73cc: $80
	add  b                                           ; $73cd: $80
	add  b                                           ; $73ce: $80
	add  b                                           ; $73cf: $80
	add  b                                           ; $73d0: $80
	add  b                                           ; $73d1: $80
	add  b                                           ; $73d2: $80
	add  b                                           ; $73d3: $80
	add  b                                           ; $73d4: $80
	add  b                                           ; $73d5: $80
	add  b                                           ; $73d6: $80
	add  b                                           ; $73d7: $80
	add  b                                           ; $73d8: $80
	add  b                                           ; $73d9: $80
	add  b                                           ; $73da: $80
	add  b                                           ; $73db: $80
	add  b                                           ; $73dc: $80
	add  b                                           ; $73dd: $80
	add  b                                           ; $73de: $80
	add  b                                           ; $73df: $80
	add  b                                           ; $73e0: $80
	add  b                                           ; $73e1: $80
	add  b                                           ; $73e2: $80
	add  b                                           ; $73e3: $80
	add  b                                           ; $73e4: $80
	add  b                                           ; $73e5: $80
	add  b                                           ; $73e6: $80
	add  b                                           ; $73e7: $80
	add  b                                           ; $73e8: $80
	add  b                                           ; $73e9: $80
	add  b                                           ; $73ea: $80
	add  b                                           ; $73eb: $80
	add  b                                           ; $73ec: $80
	add  b                                           ; $73ed: $80
	add  b                                           ; $73ee: $80
	add  b                                           ; $73ef: $80
	add  b                                           ; $73f0: $80
	add  b                                           ; $73f1: $80
	add  b                                           ; $73f2: $80
	add  b                                           ; $73f3: $80
	add  b                                           ; $73f4: $80
	add  b                                           ; $73f5: $80
	add  b                                           ; $73f6: $80
	add  b                                           ; $73f7: $80
	add  b                                           ; $73f8: $80
	add  b                                           ; $73f9: $80
	add  b                                           ; $73fa: $80
	add  b                                           ; $73fb: $80
	add  b                                           ; $73fc: $80
	add  b                                           ; $73fd: $80
	add  b                                           ; $73fe: $80
	add  b                                           ; $73ff: $80
	ld   b, $06                                      ; $7400: $06 $06
	ld   b, $06                                      ; $7402: $06 $06
	dec  h                                           ; $7404: $25
	dec  h                                           ; $7405: $25
	dec  b                                           ; $7406: $05
	dec  b                                           ; $7407: $05
	dec  b                                           ; $7408: $05
	dec  b                                           ; $7409: $05
	dec  b                                           ; $740a: $05
	dec  b                                           ; $740b: $05
	dec  b                                           ; $740c: $05
	dec  b                                           ; $740d: $05
	dec  b                                           ; $740e: $05
	dec  b                                           ; $740f: $05
	ld   b, $06                                      ; $7410: $06 $06
	ld   b, $06                                      ; $7412: $06 $06
	ld   b, $06                                      ; $7414: $06 $06
	ld   b, $06                                      ; $7416: $06 $06
	ld   b, $06                                      ; $7418: $06 $06
	ld   b, $06                                      ; $741a: $06 $06
	ld   b, $06                                      ; $741c: $06 $06
	ld   b, $06                                      ; $741e: $06 $06
	ld   b, $06                                      ; $7420: $06 $06
	ld   b, $06                                      ; $7422: $06 $06
	dec  h                                           ; $7424: $25
	dec  h                                           ; $7425: $25
	dec  b                                           ; $7426: $05
	dec  b                                           ; $7427: $05
	dec  b                                           ; $7428: $05
	dec  b                                           ; $7429: $05
	dec  b                                           ; $742a: $05
	dec  b                                           ; $742b: $05
	dec  b                                           ; $742c: $05
	dec  b                                           ; $742d: $05
	dec  b                                           ; $742e: $05
	dec  b                                           ; $742f: $05
	ld   b, $06                                      ; $7430: $06 $06
	ld   b, $06                                      ; $7432: $06 $06
	ld   b, $06                                      ; $7434: $06 $06
	ld   b, $06                                      ; $7436: $06 $06
	ld   b, $06                                      ; $7438: $06 $06
	ld   b, $06                                      ; $743a: $06 $06
	ld   b, $06                                      ; $743c: $06 $06
	ld   b, $06                                      ; $743e: $06 $06
	dec  b                                           ; $7440: $05
	dec  b                                           ; $7441: $05
	dec  b                                           ; $7442: $05
	dec  b                                           ; $7443: $05
	dec  h                                           ; $7444: $25
	dec  b                                           ; $7445: $05
	dec  b                                           ; $7446: $05
	dec  b                                           ; $7447: $05
	dec  b                                           ; $7448: $05
	dec  b                                           ; $7449: $05
	dec  b                                           ; $744a: $05
	dec  b                                           ; $744b: $05
	dec  b                                           ; $744c: $05
	dec  b                                           ; $744d: $05
	dec  b                                           ; $744e: $05
	dec  b                                           ; $744f: $05
	dec  b                                           ; $7450: $05
	dec  b                                           ; $7451: $05
	dec  b                                           ; $7452: $05
	dec  b                                           ; $7453: $05
	dec  b                                           ; $7454: $05
	dec  b                                           ; $7455: $05
	dec  b                                           ; $7456: $05
	dec  b                                           ; $7457: $05
	dec  b                                           ; $7458: $05
	dec  b                                           ; $7459: $05
	dec  b                                           ; $745a: $05
	dec  b                                           ; $745b: $05
	dec  b                                           ; $745c: $05
	dec  b                                           ; $745d: $05
	dec  b                                           ; $745e: $05
	dec  b                                           ; $745f: $05
	inc  bc                                          ; $7460: $03
	inc  bc                                          ; $7461: $03
	inc  bc                                          ; $7462: $03
	inc  bc                                          ; $7463: $03
	dec  h                                           ; $7464: $25
	dec  b                                           ; $7465: $05
	dec  b                                           ; $7466: $05
	dec  b                                           ; $7467: $05
	dec  b                                           ; $7468: $05
	dec  b                                           ; $7469: $05
	dec  b                                           ; $746a: $05
	dec  b                                           ; $746b: $05
	dec  b                                           ; $746c: $05
	dec  b                                           ; $746d: $05
	dec  b                                           ; $746e: $05
	dec  b                                           ; $746f: $05
	inc  bc                                          ; $7470: $03
	inc  bc                                          ; $7471: $03
	inc  bc                                          ; $7472: $03
	inc  bc                                          ; $7473: $03
	inc  bc                                          ; $7474: $03
	inc  bc                                          ; $7475: $03
	inc  bc                                          ; $7476: $03
	inc  bc                                          ; $7477: $03
	inc  bc                                          ; $7478: $03
	inc  bc                                          ; $7479: $03
	inc  bc                                          ; $747a: $03
	inc  bc                                          ; $747b: $03
	inc  bc                                          ; $747c: $03
	inc  bc                                          ; $747d: $03
	inc  bc                                          ; $747e: $03
	inc  bc                                          ; $747f: $03
	inc  bc                                          ; $7480: $03
	inc  bc                                          ; $7481: $03
	inc  bc                                          ; $7482: $03
	inc  bc                                          ; $7483: $03
	dec  h                                           ; $7484: $25
	dec  b                                           ; $7485: $05
	dec  b                                           ; $7486: $05
	dec  b                                           ; $7487: $05
	dec  b                                           ; $7488: $05
	dec  b                                           ; $7489: $05
	dec  b                                           ; $748a: $05
	dec  b                                           ; $748b: $05
	dec  b                                           ; $748c: $05
	dec  b                                           ; $748d: $05
	dec  b                                           ; $748e: $05
	dec  b                                           ; $748f: $05
	inc  bc                                          ; $7490: $03
	inc  bc                                          ; $7491: $03
	inc  bc                                          ; $7492: $03
	inc  bc                                          ; $7493: $03
	inc  bc                                          ; $7494: $03
	inc  bc                                          ; $7495: $03
	inc  bc                                          ; $7496: $03
	inc  bc                                          ; $7497: $03
	inc  bc                                          ; $7498: $03
	inc  bc                                          ; $7499: $03
	inc  bc                                          ; $749a: $03
	inc  bc                                          ; $749b: $03
	inc  bc                                          ; $749c: $03
	inc  bc                                          ; $749d: $03
	inc  bc                                          ; $749e: $03
	inc  bc                                          ; $749f: $03
	inc  bc                                          ; $74a0: $03
	inc  bc                                          ; $74a1: $03
	inc  bc                                          ; $74a2: $03
	inc  bc                                          ; $74a3: $03
	dec  h                                           ; $74a4: $25
	dec  b                                           ; $74a5: $05
	dec  b                                           ; $74a6: $05
	dec  b                                           ; $74a7: $05
	dec  b                                           ; $74a8: $05
	dec  b                                           ; $74a9: $05
	dec  b                                           ; $74aa: $05
	dec  b                                           ; $74ab: $05
	dec  b                                           ; $74ac: $05
	dec  b                                           ; $74ad: $05
	dec  b                                           ; $74ae: $05
	dec  b                                           ; $74af: $05
	inc  bc                                          ; $74b0: $03
	inc  bc                                          ; $74b1: $03
	inc  bc                                          ; $74b2: $03
	inc  bc                                          ; $74b3: $03
	inc  bc                                          ; $74b4: $03
	inc  bc                                          ; $74b5: $03
	inc  bc                                          ; $74b6: $03
	inc  bc                                          ; $74b7: $03
	inc  bc                                          ; $74b8: $03
	inc  bc                                          ; $74b9: $03
	inc  bc                                          ; $74ba: $03
	inc  bc                                          ; $74bb: $03
	inc  bc                                          ; $74bc: $03
	inc  bc                                          ; $74bd: $03
	inc  bc                                          ; $74be: $03
	inc  bc                                          ; $74bf: $03
	inc  bc                                          ; $74c0: $03
	inc  bc                                          ; $74c1: $03
	inc  bc                                          ; $74c2: $03
	inc  bc                                          ; $74c3: $03
	dec  h                                           ; $74c4: $25
	dec  b                                           ; $74c5: $05
	dec  b                                           ; $74c6: $05
	dec  b                                           ; $74c7: $05
	dec  b                                           ; $74c8: $05
	dec  b                                           ; $74c9: $05
	dec  b                                           ; $74ca: $05
	dec  b                                           ; $74cb: $05
	dec  b                                           ; $74cc: $05
	dec  b                                           ; $74cd: $05
	dec  b                                           ; $74ce: $05
	dec  b                                           ; $74cf: $05
	inc  bc                                          ; $74d0: $03
	inc  bc                                          ; $74d1: $03
	inc  bc                                          ; $74d2: $03
	inc  bc                                          ; $74d3: $03
	inc  bc                                          ; $74d4: $03
	inc  bc                                          ; $74d5: $03
	inc  bc                                          ; $74d6: $03
	inc  bc                                          ; $74d7: $03
	inc  bc                                          ; $74d8: $03
	inc  bc                                          ; $74d9: $03
	inc  bc                                          ; $74da: $03
	inc  bc                                          ; $74db: $03
	inc  bc                                          ; $74dc: $03
	inc  bc                                          ; $74dd: $03
	inc  bc                                          ; $74de: $03
	inc  bc                                          ; $74df: $03
	inc  bc                                          ; $74e0: $03
	inc  bc                                          ; $74e1: $03
	inc  bc                                          ; $74e2: $03
	inc  bc                                          ; $74e3: $03
	dec  h                                           ; $74e4: $25
	dec  b                                           ; $74e5: $05
	dec  b                                           ; $74e6: $05
	dec  b                                           ; $74e7: $05
	dec  b                                           ; $74e8: $05
	dec  b                                           ; $74e9: $05
	dec  b                                           ; $74ea: $05
	dec  b                                           ; $74eb: $05
	dec  b                                           ; $74ec: $05
	dec  b                                           ; $74ed: $05
	dec  b                                           ; $74ee: $05
	dec  b                                           ; $74ef: $05
	inc  bc                                          ; $74f0: $03
	inc  bc                                          ; $74f1: $03
	inc  bc                                          ; $74f2: $03
	inc  bc                                          ; $74f3: $03
	inc  bc                                          ; $74f4: $03
	inc  bc                                          ; $74f5: $03
	inc  bc                                          ; $74f6: $03
	inc  bc                                          ; $74f7: $03
	inc  bc                                          ; $74f8: $03
	inc  bc                                          ; $74f9: $03
	inc  bc                                          ; $74fa: $03
	inc  bc                                          ; $74fb: $03
	inc  bc                                          ; $74fc: $03
	inc  bc                                          ; $74fd: $03
	inc  bc                                          ; $74fe: $03
	inc  bc                                          ; $74ff: $03
	inc  bc                                          ; $7500: $03
	inc  bc                                          ; $7501: $03
	inc  bc                                          ; $7502: $03
	inc  bc                                          ; $7503: $03
	ld   h, l                                        ; $7504: $65
	dec  b                                           ; $7505: $05
	dec  b                                           ; $7506: $05
	dec  b                                           ; $7507: $05
	dec  b                                           ; $7508: $05
	dec  b                                           ; $7509: $05
	dec  b                                           ; $750a: $05
	dec  b                                           ; $750b: $05
	dec  b                                           ; $750c: $05
	dec  b                                           ; $750d: $05
	dec  b                                           ; $750e: $05
	ld   b, l                                        ; $750f: $45
	inc  bc                                          ; $7510: $03
	inc  bc                                          ; $7511: $03
	inc  bc                                          ; $7512: $03
	inc  bc                                          ; $7513: $03
	inc  bc                                          ; $7514: $03
	inc  bc                                          ; $7515: $03
	inc  bc                                          ; $7516: $03
	inc  bc                                          ; $7517: $03
	inc  bc                                          ; $7518: $03
	inc  bc                                          ; $7519: $03
	inc  bc                                          ; $751a: $03
	inc  bc                                          ; $751b: $03
	inc  bc                                          ; $751c: $03
	inc  bc                                          ; $751d: $03
	inc  bc                                          ; $751e: $03
	inc  bc                                          ; $751f: $03
	dec  b                                           ; $7520: $05
	dec  b                                           ; $7521: $05
	dec  b                                           ; $7522: $05
	dec  b                                           ; $7523: $05
	dec  h                                           ; $7524: $25
	dec  b                                           ; $7525: $05
	inc  bc                                          ; $7526: $03
	inc  bc                                          ; $7527: $03
	inc  bc                                          ; $7528: $03
	inc  bc                                          ; $7529: $03
	inc  bc                                          ; $752a: $03
	inc  bc                                          ; $752b: $03
	dec  b                                           ; $752c: $05
	dec  b                                           ; $752d: $05
	dec  b                                           ; $752e: $05
	dec  b                                           ; $752f: $05
	dec  b                                           ; $7530: $05
	dec  b                                           ; $7531: $05
	dec  b                                           ; $7532: $05
	dec  b                                           ; $7533: $05
	dec  b                                           ; $7534: $05
	dec  b                                           ; $7535: $05
	dec  b                                           ; $7536: $05
	dec  b                                           ; $7537: $05
	dec  b                                           ; $7538: $05
	dec  b                                           ; $7539: $05
	dec  b                                           ; $753a: $05
	dec  b                                           ; $753b: $05
	dec  b                                           ; $753c: $05
	dec  b                                           ; $753d: $05
	dec  b                                           ; $753e: $05
	dec  b                                           ; $753f: $05
	ld   b, $06                                      ; $7540: $06 $06
	ld   b, $06                                      ; $7542: $06 $06
	ld   h, l                                        ; $7544: $65
	ld   h, l                                        ; $7545: $65
	inc  bc                                          ; $7546: $03
	inc  bc                                          ; $7547: $03
	inc  bc                                          ; $7548: $03
	inc  bc                                          ; $7549: $03
	inc  bc                                          ; $754a: $03
	inc  bc                                          ; $754b: $03
	ld   b, l                                        ; $754c: $45
	ld   b, l                                        ; $754d: $45
	ld   b, l                                        ; $754e: $45
	ld   b, l                                        ; $754f: $45
	ld   b, $06                                      ; $7550: $06 $06
	ld   b, $06                                      ; $7552: $06 $06
	ld   b, $06                                      ; $7554: $06 $06
	ld   b, $06                                      ; $7556: $06 $06
	ld   b, $06                                      ; $7558: $06 $06
	ld   b, $06                                      ; $755a: $06 $06
	ld   b, $06                                      ; $755c: $06 $06
	ld   b, $06                                      ; $755e: $06 $06
	ld   b, $06                                      ; $7560: $06 $06
	ld   b, $06                                      ; $7562: $06 $06
	ld   h, l                                        ; $7564: $65
	ld   h, l                                        ; $7565: $65
	inc  bc                                          ; $7566: $03
	inc  bc                                          ; $7567: $03
	inc  bc                                          ; $7568: $03
	inc  bc                                          ; $7569: $03
	inc  bc                                          ; $756a: $03
	inc  bc                                          ; $756b: $03
	ld   b, l                                        ; $756c: $45
	ld   b, l                                        ; $756d: $45
	ld   b, l                                        ; $756e: $45
	ld   b, l                                        ; $756f: $45
	ld   b, $06                                      ; $7570: $06 $06
	ld   b, $06                                      ; $7572: $06 $06
	ld   b, $06                                      ; $7574: $06 $06
	ld   b, $06                                      ; $7576: $06 $06
	ld   b, $06                                      ; $7578: $06 $06
	ld   b, $06                                      ; $757a: $06 $06
	ld   b, $06                                      ; $757c: $06 $06
	ld   b, $06                                      ; $757e: $06 $06
	ld   b, $06                                      ; $7580: $06 $06
	ld   b, $06                                      ; $7582: $06 $06
	dec  h                                           ; $7584: $25
	dec  h                                           ; $7585: $25
	dec  b                                           ; $7586: $05
	dec  b                                           ; $7587: $05
	dec  b                                           ; $7588: $05
	dec  b                                           ; $7589: $05
	dec  b                                           ; $758a: $05
	dec  b                                           ; $758b: $05
	dec  b                                           ; $758c: $05
	dec  b                                           ; $758d: $05
	dec  b                                           ; $758e: $05
	dec  b                                           ; $758f: $05
	ld   b, $06                                      ; $7590: $06 $06
	ld   b, $06                                      ; $7592: $06 $06
	ld   b, $06                                      ; $7594: $06 $06
	ld   b, $06                                      ; $7596: $06 $06
	ld   b, $06                                      ; $7598: $06 $06
	ld   b, $06                                      ; $759a: $06 $06
	ld   b, $06                                      ; $759c: $06 $06
	ld   b, $06                                      ; $759e: $06 $06
	ld   b, $06                                      ; $75a0: $06 $06
	ld   b, $06                                      ; $75a2: $06 $06
	dec  h                                           ; $75a4: $25
	dec  h                                           ; $75a5: $25
	dec  b                                           ; $75a6: $05
	dec  b                                           ; $75a7: $05
	dec  b                                           ; $75a8: $05
	dec  b                                           ; $75a9: $05
	dec  b                                           ; $75aa: $05
	dec  b                                           ; $75ab: $05
	dec  b                                           ; $75ac: $05
	dec  b                                           ; $75ad: $05
	dec  b                                           ; $75ae: $05
	dec  b                                           ; $75af: $05
	ld   b, $06                                      ; $75b0: $06 $06
	ld   b, $06                                      ; $75b2: $06 $06
	ld   b, $06                                      ; $75b4: $06 $06
	ld   b, $06                                      ; $75b6: $06 $06
	ld   b, $06                                      ; $75b8: $06 $06
	ld   b, $06                                      ; $75ba: $06 $06
	ld   b, $06                                      ; $75bc: $06 $06
	ld   b, $06                                      ; $75be: $06 $06
	dec  b                                           ; $75c0: $05
	dec  b                                           ; $75c1: $05
	dec  b                                           ; $75c2: $05
	dec  b                                           ; $75c3: $05
	dec  h                                           ; $75c4: $25
	dec  b                                           ; $75c5: $05
	dec  b                                           ; $75c6: $05
	dec  b                                           ; $75c7: $05
	dec  b                                           ; $75c8: $05
	dec  b                                           ; $75c9: $05
	dec  b                                           ; $75ca: $05
	dec  b                                           ; $75cb: $05
	dec  b                                           ; $75cc: $05
	dec  b                                           ; $75cd: $05
	dec  b                                           ; $75ce: $05
	dec  b                                           ; $75cf: $05
	dec  b                                           ; $75d0: $05
	dec  b                                           ; $75d1: $05
	dec  b                                           ; $75d2: $05
	dec  b                                           ; $75d3: $05
	dec  b                                           ; $75d4: $05
	dec  b                                           ; $75d5: $05
	dec  b                                           ; $75d6: $05
	dec  b                                           ; $75d7: $05
	dec  b                                           ; $75d8: $05
	dec  b                                           ; $75d9: $05
	dec  b                                           ; $75da: $05
	dec  b                                           ; $75db: $05
	dec  b                                           ; $75dc: $05
	dec  b                                           ; $75dd: $05
	dec  b                                           ; $75de: $05
	dec  b                                           ; $75df: $05
	inc  bc                                          ; $75e0: $03
	inc  bc                                          ; $75e1: $03
	inc  bc                                          ; $75e2: $03
	inc  bc                                          ; $75e3: $03
	dec  h                                           ; $75e4: $25
	dec  b                                           ; $75e5: $05
	dec  b                                           ; $75e6: $05
	dec  b                                           ; $75e7: $05
	dec  b                                           ; $75e8: $05
	dec  b                                           ; $75e9: $05
	dec  b                                           ; $75ea: $05
	dec  b                                           ; $75eb: $05
	dec  b                                           ; $75ec: $05
	dec  b                                           ; $75ed: $05
	dec  b                                           ; $75ee: $05
	dec  b                                           ; $75ef: $05
	inc  bc                                          ; $75f0: $03
	inc  bc                                          ; $75f1: $03
	inc  bc                                          ; $75f2: $03
	inc  bc                                          ; $75f3: $03
	inc  bc                                          ; $75f4: $03
	inc  bc                                          ; $75f5: $03
	inc  bc                                          ; $75f6: $03
	inc  bc                                          ; $75f7: $03
	inc  bc                                          ; $75f8: $03
	inc  bc                                          ; $75f9: $03
	inc  bc                                          ; $75fa: $03
	inc  bc                                          ; $75fb: $03
	inc  bc                                          ; $75fc: $03
	inc  bc                                          ; $75fd: $03
	inc  bc                                          ; $75fe: $03
	inc  bc                                          ; $75ff: $03
	inc  bc                                          ; $7600: $03
	inc  bc                                          ; $7601: $03
	inc  bc                                          ; $7602: $03
	inc  bc                                          ; $7603: $03
	dec  h                                           ; $7604: $25
	dec  b                                           ; $7605: $05
	dec  b                                           ; $7606: $05
	dec  b                                           ; $7607: $05
	dec  b                                           ; $7608: $05
	dec  b                                           ; $7609: $05
	dec  b                                           ; $760a: $05
	dec  b                                           ; $760b: $05
	dec  b                                           ; $760c: $05
	dec  b                                           ; $760d: $05
	dec  b                                           ; $760e: $05
	dec  b                                           ; $760f: $05
	inc  bc                                          ; $7610: $03
	inc  bc                                          ; $7611: $03
	inc  bc                                          ; $7612: $03
	inc  bc                                          ; $7613: $03
	inc  bc                                          ; $7614: $03
	inc  bc                                          ; $7615: $03
	inc  bc                                          ; $7616: $03
	inc  bc                                          ; $7617: $03
	inc  bc                                          ; $7618: $03
	inc  bc                                          ; $7619: $03
	inc  bc                                          ; $761a: $03
	inc  bc                                          ; $761b: $03
	inc  bc                                          ; $761c: $03
	inc  bc                                          ; $761d: $03
	inc  bc                                          ; $761e: $03
	inc  bc                                          ; $761f: $03
	inc  bc                                          ; $7620: $03
	inc  bc                                          ; $7621: $03
	inc  bc                                          ; $7622: $03
	inc  bc                                          ; $7623: $03
	dec  h                                           ; $7624: $25
	dec  b                                           ; $7625: $05
	dec  b                                           ; $7626: $05
	dec  b                                           ; $7627: $05
	dec  b                                           ; $7628: $05
	dec  b                                           ; $7629: $05
	dec  b                                           ; $762a: $05
	dec  b                                           ; $762b: $05
	dec  b                                           ; $762c: $05
	dec  b                                           ; $762d: $05
	dec  b                                           ; $762e: $05
	dec  b                                           ; $762f: $05
	inc  bc                                          ; $7630: $03
	inc  bc                                          ; $7631: $03
	inc  bc                                          ; $7632: $03
	inc  bc                                          ; $7633: $03
	inc  bc                                          ; $7634: $03
	inc  bc                                          ; $7635: $03
	inc  bc                                          ; $7636: $03
	inc  bc                                          ; $7637: $03
	inc  bc                                          ; $7638: $03
	inc  bc                                          ; $7639: $03
	inc  bc                                          ; $763a: $03
	inc  bc                                          ; $763b: $03
	inc  bc                                          ; $763c: $03
	inc  bc                                          ; $763d: $03
	inc  bc                                          ; $763e: $03
	inc  bc                                          ; $763f: $03
	inc  bc                                          ; $7640: $03
	inc  bc                                          ; $7641: $03
	inc  bc                                          ; $7642: $03
	inc  bc                                          ; $7643: $03
	dec  h                                           ; $7644: $25
	dec  b                                           ; $7645: $05
	dec  b                                           ; $7646: $05
	dec  b                                           ; $7647: $05
	dec  b                                           ; $7648: $05
	dec  b                                           ; $7649: $05
	dec  b                                           ; $764a: $05
	dec  b                                           ; $764b: $05
	dec  b                                           ; $764c: $05
	dec  b                                           ; $764d: $05
	dec  b                                           ; $764e: $05
	dec  b                                           ; $764f: $05
	inc  bc                                          ; $7650: $03
	inc  bc                                          ; $7651: $03
	inc  bc                                          ; $7652: $03
	inc  bc                                          ; $7653: $03
	inc  bc                                          ; $7654: $03
	inc  bc                                          ; $7655: $03
	inc  bc                                          ; $7656: $03
	inc  bc                                          ; $7657: $03
	inc  bc                                          ; $7658: $03
	inc  bc                                          ; $7659: $03
	inc  bc                                          ; $765a: $03
	inc  bc                                          ; $765b: $03
	inc  bc                                          ; $765c: $03
	inc  bc                                          ; $765d: $03
	inc  bc                                          ; $765e: $03
	inc  bc                                          ; $765f: $03
	inc  bc                                          ; $7660: $03
	inc  bc                                          ; $7661: $03
	inc  bc                                          ; $7662: $03
	inc  bc                                          ; $7663: $03
	dec  h                                           ; $7664: $25
	dec  b                                           ; $7665: $05
	dec  b                                           ; $7666: $05
	dec  b                                           ; $7667: $05
	dec  b                                           ; $7668: $05
	dec  b                                           ; $7669: $05
	dec  b                                           ; $766a: $05
	dec  b                                           ; $766b: $05
	dec  b                                           ; $766c: $05
	dec  b                                           ; $766d: $05
	dec  b                                           ; $766e: $05
	dec  b                                           ; $766f: $05
	inc  bc                                          ; $7670: $03
	inc  bc                                          ; $7671: $03
	inc  bc                                          ; $7672: $03
	inc  bc                                          ; $7673: $03
	inc  bc                                          ; $7674: $03
	inc  bc                                          ; $7675: $03
	inc  bc                                          ; $7676: $03
	inc  bc                                          ; $7677: $03
	inc  bc                                          ; $7678: $03
	inc  bc                                          ; $7679: $03
	inc  bc                                          ; $767a: $03
	inc  bc                                          ; $767b: $03
	inc  bc                                          ; $767c: $03
	inc  bc                                          ; $767d: $03
	inc  bc                                          ; $767e: $03
	inc  bc                                          ; $767f: $03
	inc  bc                                          ; $7680: $03
	inc  bc                                          ; $7681: $03
	inc  bc                                          ; $7682: $03
	inc  bc                                          ; $7683: $03
	ld   h, l                                        ; $7684: $65
	dec  b                                           ; $7685: $05
	dec  b                                           ; $7686: $05
	dec  b                                           ; $7687: $05
	dec  b                                           ; $7688: $05
	dec  b                                           ; $7689: $05
	dec  b                                           ; $768a: $05
	dec  b                                           ; $768b: $05
	dec  b                                           ; $768c: $05
	dec  b                                           ; $768d: $05
	dec  b                                           ; $768e: $05
	ld   b, l                                        ; $768f: $45
	inc  bc                                          ; $7690: $03
	inc  bc                                          ; $7691: $03
	inc  bc                                          ; $7692: $03
	inc  bc                                          ; $7693: $03
	inc  bc                                          ; $7694: $03
	inc  bc                                          ; $7695: $03
	inc  bc                                          ; $7696: $03
	inc  bc                                          ; $7697: $03
	inc  bc                                          ; $7698: $03
	inc  bc                                          ; $7699: $03
	inc  bc                                          ; $769a: $03
	inc  bc                                          ; $769b: $03
	inc  bc                                          ; $769c: $03
	inc  bc                                          ; $769d: $03
	inc  bc                                          ; $769e: $03
	inc  bc                                          ; $769f: $03
	dec  b                                           ; $76a0: $05
	dec  b                                           ; $76a1: $05
	dec  b                                           ; $76a2: $05
	dec  b                                           ; $76a3: $05
	dec  h                                           ; $76a4: $25
	dec  b                                           ; $76a5: $05
	inc  bc                                          ; $76a6: $03
	inc  bc                                          ; $76a7: $03
	inc  bc                                          ; $76a8: $03
	inc  bc                                          ; $76a9: $03
	inc  bc                                          ; $76aa: $03
	inc  bc                                          ; $76ab: $03
	dec  b                                           ; $76ac: $05
	dec  b                                           ; $76ad: $05
	dec  b                                           ; $76ae: $05
	dec  b                                           ; $76af: $05
	dec  b                                           ; $76b0: $05
	dec  b                                           ; $76b1: $05
	dec  b                                           ; $76b2: $05
	dec  b                                           ; $76b3: $05
	dec  b                                           ; $76b4: $05
	dec  b                                           ; $76b5: $05
	dec  b                                           ; $76b6: $05
	dec  b                                           ; $76b7: $05
	dec  b                                           ; $76b8: $05
	dec  b                                           ; $76b9: $05
	dec  b                                           ; $76ba: $05
	dec  b                                           ; $76bb: $05
	dec  b                                           ; $76bc: $05
	dec  b                                           ; $76bd: $05
	dec  b                                           ; $76be: $05
	dec  b                                           ; $76bf: $05
	ld   b, $06                                      ; $76c0: $06 $06
	ld   b, $06                                      ; $76c2: $06 $06
	ld   h, l                                        ; $76c4: $65
	ld   h, l                                        ; $76c5: $65
	inc  bc                                          ; $76c6: $03
	inc  bc                                          ; $76c7: $03
	inc  bc                                          ; $76c8: $03
	inc  bc                                          ; $76c9: $03
	inc  bc                                          ; $76ca: $03
	inc  bc                                          ; $76cb: $03
	ld   b, l                                        ; $76cc: $45
	ld   b, l                                        ; $76cd: $45
	ld   b, l                                        ; $76ce: $45
	ld   b, l                                        ; $76cf: $45
	ld   b, $06                                      ; $76d0: $06 $06
	ld   b, $06                                      ; $76d2: $06 $06
	ld   b, $06                                      ; $76d4: $06 $06
	ld   b, $06                                      ; $76d6: $06 $06
	ld   b, $06                                      ; $76d8: $06 $06
	ld   b, $06                                      ; $76da: $06 $06
	ld   b, $06                                      ; $76dc: $06 $06
	ld   b, $06                                      ; $76de: $06 $06
	ld   b, $06                                      ; $76e0: $06 $06
	ld   b, $06                                      ; $76e2: $06 $06
	ld   h, l                                        ; $76e4: $65
	ld   h, l                                        ; $76e5: $65
	inc  bc                                          ; $76e6: $03
	inc  bc                                          ; $76e7: $03
	inc  bc                                          ; $76e8: $03
	inc  bc                                          ; $76e9: $03
	inc  bc                                          ; $76ea: $03
	inc  bc                                          ; $76eb: $03
	ld   b, l                                        ; $76ec: $45
	ld   b, l                                        ; $76ed: $45
	ld   b, l                                        ; $76ee: $45
	ld   b, l                                        ; $76ef: $45
	ld   b, $06                                      ; $76f0: $06 $06
	ld   b, $06                                      ; $76f2: $06 $06
	ld   b, $06                                      ; $76f4: $06 $06
	ld   b, $06                                      ; $76f6: $06 $06
	ld   b, $06                                      ; $76f8: $06 $06
	ld   b, $06                                      ; $76fa: $06 $06
	ld   b, $06                                      ; $76fc: $06 $06
	ld   b, $06                                      ; $76fe: $06 $06
	ld   [$0808], sp                                 ; $7700: $08 $08 $08
	ld   [$0808], sp                                 ; $7703: $08 $08 $08
	ld   [$0808], sp                                 ; $7706: $08 $08 $08
	ld   [$0808], sp                                 ; $7709: $08 $08 $08
	ld   [$0808], sp                                 ; $770c: $08 $08 $08
	ld   [$0808], sp                                 ; $770f: $08 $08 $08
	ld   [$0808], sp                                 ; $7712: $08 $08 $08
	ld   [$0808], sp                                 ; $7715: $08 $08 $08
	ld   [$0808], sp                                 ; $7718: $08 $08 $08
	ld   [$0808], sp                                 ; $771b: $08 $08 $08
	ld   [$0808], sp                                 ; $771e: $08 $08 $08
	ld   [$0808], sp                                 ; $7721: $08 $08 $08
	ld   [$0808], sp                                 ; $7724: $08 $08 $08
	ld   [$0808], sp                                 ; $7727: $08 $08 $08
	ld   [$0808], sp                                 ; $772a: $08 $08 $08
	ld   [$0808], sp                                 ; $772d: $08 $08 $08
	ld   [$0808], sp                                 ; $7730: $08 $08 $08
	ld   [$0808], sp                                 ; $7733: $08 $08 $08
	ld   [$0808], sp                                 ; $7736: $08 $08 $08
	ld   [$0808], sp                                 ; $7739: $08 $08 $08
	ld   [$0808], sp                                 ; $773c: $08 $08 $08
	ld   [$0808], sp                                 ; $773f: $08 $08 $08
	ld   [$0808], sp                                 ; $7742: $08 $08 $08
	ld   [$0808], sp                                 ; $7745: $08 $08 $08
	ld   [$0808], sp                                 ; $7748: $08 $08 $08
	ld   [$0808], sp                                 ; $774b: $08 $08 $08
	ld   [$0808], sp                                 ; $774e: $08 $08 $08
	ld   [$0808], sp                                 ; $7751: $08 $08 $08
	ld   [$0808], sp                                 ; $7754: $08 $08 $08
	ld   [$0808], sp                                 ; $7757: $08 $08 $08
	ld   [$0808], sp                                 ; $775a: $08 $08 $08
	ld   [$0808], sp                                 ; $775d: $08 $08 $08
	ld   [$0808], sp                                 ; $7760: $08 $08 $08
	ld   [$0808], sp                                 ; $7763: $08 $08 $08
	ld   [$0808], sp                                 ; $7766: $08 $08 $08
	ld   [$0808], sp                                 ; $7769: $08 $08 $08
	ld   [$0808], sp                                 ; $776c: $08 $08 $08
	ld   [$0808], sp                                 ; $776f: $08 $08 $08
	ld   [$0808], sp                                 ; $7772: $08 $08 $08
	ld   [$0808], sp                                 ; $7775: $08 $08 $08
	ld   [$0808], sp                                 ; $7778: $08 $08 $08
	ld   [$0808], sp                                 ; $777b: $08 $08 $08
	ld   [$0808], sp                                 ; $777e: $08 $08 $08
	ld   [$0808], sp                                 ; $7781: $08 $08 $08
	ld   [$0808], sp                                 ; $7784: $08 $08 $08
	ld   [$0808], sp                                 ; $7787: $08 $08 $08
	ld   [$0808], sp                                 ; $778a: $08 $08 $08
	ld   [$0808], sp                                 ; $778d: $08 $08 $08
	ld   [$0808], sp                                 ; $7790: $08 $08 $08
	ld   [$0808], sp                                 ; $7793: $08 $08 $08
	ld   [$0808], sp                                 ; $7796: $08 $08 $08
	ld   [$0808], sp                                 ; $7799: $08 $08 $08
	ld   [$0808], sp                                 ; $779c: $08 $08 $08
	ld   [$0808], sp                                 ; $779f: $08 $08 $08
	ld   [$0808], sp                                 ; $77a2: $08 $08 $08
	ld   [$0808], sp                                 ; $77a5: $08 $08 $08
	ld   [$0808], sp                                 ; $77a8: $08 $08 $08
	ld   [$0808], sp                                 ; $77ab: $08 $08 $08
	ld   [$0808], sp                                 ; $77ae: $08 $08 $08
	ld   [$0808], sp                                 ; $77b1: $08 $08 $08
	ld   [$0808], sp                                 ; $77b4: $08 $08 $08
	ld   [$0808], sp                                 ; $77b7: $08 $08 $08
	ld   [$0808], sp                                 ; $77ba: $08 $08 $08
	ld   [$0808], sp                                 ; $77bd: $08 $08 $08
	ld   [$0808], sp                                 ; $77c0: $08 $08 $08
	ld   [$0808], sp                                 ; $77c3: $08 $08 $08
	ld   [$0808], sp                                 ; $77c6: $08 $08 $08
	ld   [$0808], sp                                 ; $77c9: $08 $08 $08
	ld   [$0808], sp                                 ; $77cc: $08 $08 $08
	ld   [$0808], sp                                 ; $77cf: $08 $08 $08
	ld   [$0808], sp                                 ; $77d2: $08 $08 $08
	ld   [$0808], sp                                 ; $77d5: $08 $08 $08
	ld   [$0808], sp                                 ; $77d8: $08 $08 $08
	ld   [$0808], sp                                 ; $77db: $08 $08 $08
	ld   [$0808], sp                                 ; $77de: $08 $08 $08
	ld   [$0808], sp                                 ; $77e1: $08 $08 $08
	ld   [$0808], sp                                 ; $77e4: $08 $08 $08
	ld   [$0808], sp                                 ; $77e7: $08 $08 $08
	ld   [$0808], sp                                 ; $77ea: $08 $08 $08
	ld   [$0808], sp                                 ; $77ed: $08 $08 $08
	ld   [$0808], sp                                 ; $77f0: $08 $08 $08
	ld   [$0808], sp                                 ; $77f3: $08 $08 $08
	ld   [$0808], sp                                 ; $77f6: $08 $08 $08
	ld   [$0808], sp                                 ; $77f9: $08 $08 $08
	ld   [$0808], sp                                 ; $77fc: $08 $08 $08
	ld   [rRAMG], sp                                 ; $77ff: $08 $00 $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	ld   d, [hl]                                     ; $7804: $56
	ld   d, l                                        ; $7805: $55
	ld   e, h                                        ; $7806: $5c
	ld   e, h                                        ; $7807: $5c
	ld   e, h                                        ; $7808: $5c
	ld   e, h                                        ; $7809: $5c
	ld   e, h                                        ; $780a: $5c
	ld   e, h                                        ; $780b: $5c
	ld   e, h                                        ; $780c: $5c
	ld   e, h                                        ; $780d: $5c
	ld   d, l                                        ; $780e: $55
	ld   d, [hl]                                     ; $780f: $56
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
	ld   h, [hl]                                     ; $7824: $66
	ld   h, l                                        ; $7825: $65
	ld   l, c                                        ; $7826: $69
	ld   l, c                                        ; $7827: $69
	ld   l, c                                        ; $7828: $69
	ld   l, c                                        ; $7829: $69
	ld   l, c                                        ; $782a: $69
	ld   l, c                                        ; $782b: $69
	ld   l, c                                        ; $782c: $69
	ld   l, c                                        ; $782d: $69
	ld   h, l                                        ; $782e: $65
	ld   h, [hl]                                     ; $782f: $66
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
	ld   e, c                                        ; $7840: $59
	ld   e, c                                        ; $7841: $59
	ld   e, c                                        ; $7842: $59
	ld   e, c                                        ; $7843: $59
	ld   e, [hl]                                     ; $7844: $5e
	ld   bc, $0101                                   ; $7845: $01 $01 $01
	ld   bc, $0101                                   ; $7848: $01 $01 $01
	ld   bc, $0101                                   ; $784b: $01 $01 $01
	ld   bc, $595e                                   ; $784e: $01 $5e $59
	ld   e, c                                        ; $7851: $59
	ld   e, c                                        ; $7852: $59
	ld   e, c                                        ; $7853: $59
	ld   e, c                                        ; $7854: $59
	ld   e, c                                        ; $7855: $59
	ld   e, c                                        ; $7856: $59
	ld   e, c                                        ; $7857: $59
	ld   e, c                                        ; $7858: $59
	ld   e, c                                        ; $7859: $59
	ld   e, c                                        ; $785a: $59
	ld   e, c                                        ; $785b: $59
	ld   e, c                                        ; $785c: $59
	ld   e, c                                        ; $785d: $59
	ld   e, c                                        ; $785e: $59
	ld   e, c                                        ; $785f: $59
	ld   d, a                                        ; $7860: $57
	ld   e, b                                        ; $7861: $58
	ld   d, a                                        ; $7862: $57
	ld   e, b                                        ; $7863: $58
	ld   e, e                                        ; $7864: $5b
	ld   bc, $0101                                   ; $7865: $01 $01 $01
	ld   bc, $0101                                   ; $7868: $01 $01 $01
	ld   bc, $0101                                   ; $786b: $01 $01 $01
	ld   bc, $575b                                   ; $786e: $01 $5b $57
	ld   e, b                                        ; $7871: $58
	ld   d, a                                        ; $7872: $57
	ld   e, b                                        ; $7873: $58
	ld   d, a                                        ; $7874: $57
	ld   e, b                                        ; $7875: $58
	ld   d, a                                        ; $7876: $57
	ld   e, b                                        ; $7877: $58
	ld   d, a                                        ; $7878: $57
	ld   e, b                                        ; $7879: $58
	ld   d, a                                        ; $787a: $57
	ld   e, b                                        ; $787b: $58
	ld   d, a                                        ; $787c: $57
	ld   e, b                                        ; $787d: $58
	ld   d, a                                        ; $787e: $57
	ld   e, b                                        ; $787f: $58
	ld   h, a                                        ; $7880: $67
	ld   l, b                                        ; $7881: $68
	ld   h, a                                        ; $7882: $67
	ld   l, b                                        ; $7883: $68
	ld   h, h                                        ; $7884: $64
	ld   bc, $0101                                   ; $7885: $01 $01 $01
	ld   bc, $0101                                   ; $7888: $01 $01 $01
	ld   bc, $0101                                   ; $788b: $01 $01 $01
	ld   bc, $6764                                   ; $788e: $01 $64 $67
	ld   l, b                                        ; $7891: $68
	ld   h, a                                        ; $7892: $67
	ld   l, b                                        ; $7893: $68
	ld   h, a                                        ; $7894: $67
	ld   l, b                                        ; $7895: $68
	ld   h, a                                        ; $7896: $67
	ld   l, b                                        ; $7897: $68
	ld   h, a                                        ; $7898: $67
	ld   l, b                                        ; $7899: $68
	ld   h, a                                        ; $789a: $67
	ld   l, b                                        ; $789b: $68
	ld   h, a                                        ; $789c: $67
	ld   l, b                                        ; $789d: $68
	ld   h, a                                        ; $789e: $67
	ld   l, b                                        ; $789f: $68
	ld   d, a                                        ; $78a0: $57
	ld   e, b                                        ; $78a1: $58
	ld   d, a                                        ; $78a2: $57
	ld   e, b                                        ; $78a3: $58
	ld   h, h                                        ; $78a4: $64
	ld   bc, $0101                                   ; $78a5: $01 $01 $01
	ld   bc, $0101                                   ; $78a8: $01 $01 $01
	ld   bc, $0101                                   ; $78ab: $01 $01 $01
	ld   bc, $5764                                   ; $78ae: $01 $64 $57
	ld   e, b                                        ; $78b1: $58
	ld   d, a                                        ; $78b2: $57
	ld   e, b                                        ; $78b3: $58
	ld   d, a                                        ; $78b4: $57
	ld   e, b                                        ; $78b5: $58
	ld   d, a                                        ; $78b6: $57
	ld   e, b                                        ; $78b7: $58
	ld   d, a                                        ; $78b8: $57
	ld   e, b                                        ; $78b9: $58
	ld   d, a                                        ; $78ba: $57
	ld   e, b                                        ; $78bb: $58
	ld   d, a                                        ; $78bc: $57
	ld   e, b                                        ; $78bd: $58
	ld   d, a                                        ; $78be: $57
	ld   e, b                                        ; $78bf: $58
	ld   h, a                                        ; $78c0: $67
	ld   l, b                                        ; $78c1: $68
	ld   h, a                                        ; $78c2: $67
	ld   l, b                                        ; $78c3: $68
	ld   h, h                                        ; $78c4: $64
	ld   bc, $0101                                   ; $78c5: $01 $01 $01
	ld   bc, $0101                                   ; $78c8: $01 $01 $01
	ld   bc, $0101                                   ; $78cb: $01 $01 $01
	ld   bc, $6764                                   ; $78ce: $01 $64 $67
	ld   l, b                                        ; $78d1: $68
	ld   h, a                                        ; $78d2: $67
	ld   l, b                                        ; $78d3: $68
	ld   h, a                                        ; $78d4: $67
	ld   l, b                                        ; $78d5: $68
	ld   h, a                                        ; $78d6: $67
	ld   l, b                                        ; $78d7: $68
	ld   h, a                                        ; $78d8: $67
	ld   l, b                                        ; $78d9: $68
	ld   h, a                                        ; $78da: $67
	ld   l, b                                        ; $78db: $68
	ld   h, a                                        ; $78dc: $67
	ld   l, b                                        ; $78dd: $68
	ld   h, a                                        ; $78de: $67
	ld   l, b                                        ; $78df: $68
	ld   d, a                                        ; $78e0: $57
	ld   e, b                                        ; $78e1: $58
	ld   d, a                                        ; $78e2: $57
	ld   e, b                                        ; $78e3: $58
	ld   h, h                                        ; $78e4: $64
	ld   bc, $0101                                   ; $78e5: $01 $01 $01
	ld   bc, $0101                                   ; $78e8: $01 $01 $01
	ld   bc, $0101                                   ; $78eb: $01 $01 $01
	ld   bc, $5764                                   ; $78ee: $01 $64 $57
	ld   e, b                                        ; $78f1: $58
	ld   d, a                                        ; $78f2: $57
	ld   e, b                                        ; $78f3: $58
	ld   d, a                                        ; $78f4: $57
	ld   e, b                                        ; $78f5: $58
	ld   d, a                                        ; $78f6: $57
	ld   e, b                                        ; $78f7: $58
	ld   d, a                                        ; $78f8: $57
	ld   e, b                                        ; $78f9: $58
	ld   d, a                                        ; $78fa: $57
	ld   e, b                                        ; $78fb: $58
	ld   d, a                                        ; $78fc: $57
	ld   e, b                                        ; $78fd: $58
	ld   d, a                                        ; $78fe: $57
	ld   e, b                                        ; $78ff: $58
	ld   h, a                                        ; $7900: $67
	ld   l, b                                        ; $7901: $68
	ld   h, a                                        ; $7902: $67
	ld   l, b                                        ; $7903: $68
	ld   e, e                                        ; $7904: $5b
	ld   bc, $0101                                   ; $7905: $01 $01 $01
	ld   bc, $0101                                   ; $7908: $01 $01 $01
	ld   bc, $0101                                   ; $790b: $01 $01 $01
	ld   bc, $675b                                   ; $790e: $01 $5b $67
	ld   l, b                                        ; $7911: $68
	ld   h, a                                        ; $7912: $67
	ld   l, b                                        ; $7913: $68
	ld   h, a                                        ; $7914: $67
	ld   l, b                                        ; $7915: $68
	ld   h, a                                        ; $7916: $67
	ld   l, b                                        ; $7917: $68
	ld   h, a                                        ; $7918: $67
	ld   l, b                                        ; $7919: $68
	ld   h, a                                        ; $791a: $67
	ld   l, b                                        ; $791b: $68
	ld   h, a                                        ; $791c: $67
	ld   l, b                                        ; $791d: $68
	ld   h, a                                        ; $791e: $67
	ld   l, b                                        ; $791f: $68
	ld   e, c                                        ; $7920: $59
	ld   e, c                                        ; $7921: $59
	ld   e, c                                        ; $7922: $59
	ld   e, c                                        ; $7923: $59
	ld   e, [hl]                                     ; $7924: $5e
	ld   bc, $1a1b                                   ; $7925: $01 $1b $1a
	add  hl, de                                      ; $7928: $19
	jr   jr_029_7942                                 ; $7929: $18 $17

	ld   d, $01                                      ; $792b: $16 $01
	ld   bc, $5e01                                   ; $792d: $01 $01 $5e
	ld   e, c                                        ; $7930: $59
	ld   e, c                                        ; $7931: $59
	ld   e, c                                        ; $7932: $59
	ld   e, c                                        ; $7933: $59
	ld   e, c                                        ; $7934: $59
	ld   e, c                                        ; $7935: $59
	ld   e, c                                        ; $7936: $59
	ld   e, c                                        ; $7937: $59
	ld   e, c                                        ; $7938: $59
	ld   e, c                                        ; $7939: $59
	ld   e, c                                        ; $793a: $59
	ld   e, c                                        ; $793b: $59
	ld   e, c                                        ; $793c: $59
	ld   e, c                                        ; $793d: $59
	ld   e, c                                        ; $793e: $59
	ld   e, c                                        ; $793f: $59
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00

jr_029_7942:
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	ld   h, [hl]                                     ; $7944: $66
	ld   h, l                                        ; $7945: $65
	dec  hl                                          ; $7946: $2b
	ld   a, [hl+]                                    ; $7947: $2a
	add  hl, hl                                      ; $7948: $29
	jr   z, jr_029_7972                              ; $7949: $28 $27

	ld   h, $6c                                      ; $794b: $26 $6c
	ld   l, h                                        ; $794d: $6c
	ld   h, l                                        ; $794e: $65
	ld   h, [hl]                                     ; $794f: $66
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
	ld   d, [hl]                                     ; $7964: $56
	ld   d, l                                        ; $7965: $55
	dec  sp                                          ; $7966: $3b
	ld   a, [hl-]                                    ; $7967: $3a
	add  hl, sp                                      ; $7968: $39
	jr   c, jr_029_79a2                              ; $7969: $38 $37

	ld   [hl], $5c                                   ; $796b: $36 $5c
	ld   e, h                                        ; $796d: $5c
	ld   d, l                                        ; $796e: $55
	ld   d, [hl]                                     ; $796f: $56
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00

jr_029_7972:
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
	add  b                                           ; $7980: $80
	add  b                                           ; $7981: $80
	add  b                                           ; $7982: $80
	add  b                                           ; $7983: $80
	add  b                                           ; $7984: $80
	add  b                                           ; $7985: $80
	add  b                                           ; $7986: $80
	add  b                                           ; $7987: $80
	add  b                                           ; $7988: $80
	add  b                                           ; $7989: $80
	add  b                                           ; $798a: $80
	add  b                                           ; $798b: $80
	add  b                                           ; $798c: $80
	add  b                                           ; $798d: $80
	add  b                                           ; $798e: $80
	add  b                                           ; $798f: $80
	add  b                                           ; $7990: $80
	add  b                                           ; $7991: $80
	add  b                                           ; $7992: $80
	add  b                                           ; $7993: $80
	add  b                                           ; $7994: $80
	add  b                                           ; $7995: $80
	add  b                                           ; $7996: $80
	add  b                                           ; $7997: $80
	add  b                                           ; $7998: $80
	add  b                                           ; $7999: $80
	add  b                                           ; $799a: $80
	add  b                                           ; $799b: $80
	add  b                                           ; $799c: $80
	add  b                                           ; $799d: $80
	add  b                                           ; $799e: $80
	add  b                                           ; $799f: $80
	add  b                                           ; $79a0: $80
	add  b                                           ; $79a1: $80

jr_029_79a2:
	add  b                                           ; $79a2: $80
	add  b                                           ; $79a3: $80
	add  b                                           ; $79a4: $80
	add  b                                           ; $79a5: $80
	add  b                                           ; $79a6: $80
	add  b                                           ; $79a7: $80
	add  b                                           ; $79a8: $80
	add  b                                           ; $79a9: $80
	add  b                                           ; $79aa: $80
	add  b                                           ; $79ab: $80
	add  b                                           ; $79ac: $80
	add  b                                           ; $79ad: $80
	add  b                                           ; $79ae: $80
	add  b                                           ; $79af: $80
	add  b                                           ; $79b0: $80
	add  b                                           ; $79b1: $80
	add  b                                           ; $79b2: $80
	add  b                                           ; $79b3: $80
	add  b                                           ; $79b4: $80
	add  b                                           ; $79b5: $80
	add  b                                           ; $79b6: $80
	add  b                                           ; $79b7: $80
	add  b                                           ; $79b8: $80
	add  b                                           ; $79b9: $80
	add  b                                           ; $79ba: $80
	add  b                                           ; $79bb: $80
	add  b                                           ; $79bc: $80
	add  b                                           ; $79bd: $80
	add  b                                           ; $79be: $80
	add  b                                           ; $79bf: $80
	add  b                                           ; $79c0: $80
	add  b                                           ; $79c1: $80
	add  b                                           ; $79c2: $80
	add  b                                           ; $79c3: $80
	add  b                                           ; $79c4: $80
	add  b                                           ; $79c5: $80
	add  b                                           ; $79c6: $80
	add  b                                           ; $79c7: $80
	add  b                                           ; $79c8: $80
	add  b                                           ; $79c9: $80
	add  b                                           ; $79ca: $80
	add  b                                           ; $79cb: $80
	add  b                                           ; $79cc: $80
	add  b                                           ; $79cd: $80
	add  b                                           ; $79ce: $80
	add  b                                           ; $79cf: $80
	add  b                                           ; $79d0: $80
	add  b                                           ; $79d1: $80
	add  b                                           ; $79d2: $80
	add  b                                           ; $79d3: $80
	add  b                                           ; $79d4: $80
	add  b                                           ; $79d5: $80
	add  b                                           ; $79d6: $80
	add  b                                           ; $79d7: $80
	add  b                                           ; $79d8: $80
	add  b                                           ; $79d9: $80
	add  b                                           ; $79da: $80
	add  b                                           ; $79db: $80
	add  b                                           ; $79dc: $80
	add  b                                           ; $79dd: $80
	add  b                                           ; $79de: $80
	add  b                                           ; $79df: $80
	add  b                                           ; $79e0: $80
	add  b                                           ; $79e1: $80
	add  b                                           ; $79e2: $80
	add  b                                           ; $79e3: $80
	add  b                                           ; $79e4: $80
	add  b                                           ; $79e5: $80
	add  b                                           ; $79e6: $80
	add  b                                           ; $79e7: $80
	add  b                                           ; $79e8: $80
	add  b                                           ; $79e9: $80
	add  b                                           ; $79ea: $80
	add  b                                           ; $79eb: $80
	add  b                                           ; $79ec: $80
	add  b                                           ; $79ed: $80
	add  b                                           ; $79ee: $80
	add  b                                           ; $79ef: $80
	add  b                                           ; $79f0: $80
	add  b                                           ; $79f1: $80
	add  b                                           ; $79f2: $80
	add  b                                           ; $79f3: $80
	add  b                                           ; $79f4: $80
	add  b                                           ; $79f5: $80
	add  b                                           ; $79f6: $80
	add  b                                           ; $79f7: $80
	add  b                                           ; $79f8: $80
	add  b                                           ; $79f9: $80
	add  b                                           ; $79fa: $80
	add  b                                           ; $79fb: $80
	add  b                                           ; $79fc: $80
	add  b                                           ; $79fd: $80
	add  b                                           ; $79fe: $80
	add  b                                           ; $79ff: $80
	add  b                                           ; $7a00: $80
	add  b                                           ; $7a01: $80
	add  b                                           ; $7a02: $80
	add  b                                           ; $7a03: $80
	add  b                                           ; $7a04: $80
	add  b                                           ; $7a05: $80
	add  b                                           ; $7a06: $80
	add  b                                           ; $7a07: $80
	add  b                                           ; $7a08: $80
	add  b                                           ; $7a09: $80
	add  b                                           ; $7a0a: $80
	add  b                                           ; $7a0b: $80
	add  b                                           ; $7a0c: $80
	add  b                                           ; $7a0d: $80
	add  b                                           ; $7a0e: $80
	add  b                                           ; $7a0f: $80
	add  b                                           ; $7a10: $80
	add  b                                           ; $7a11: $80
	add  b                                           ; $7a12: $80
	add  b                                           ; $7a13: $80
	add  b                                           ; $7a14: $80
	add  b                                           ; $7a15: $80
	add  b                                           ; $7a16: $80
	add  b                                           ; $7a17: $80
	add  b                                           ; $7a18: $80
	add  b                                           ; $7a19: $80
	add  b                                           ; $7a1a: $80
	add  b                                           ; $7a1b: $80
	add  b                                           ; $7a1c: $80
	add  b                                           ; $7a1d: $80
	add  b                                           ; $7a1e: $80
	add  b                                           ; $7a1f: $80
	add  b                                           ; $7a20: $80
	add  b                                           ; $7a21: $80
	add  b                                           ; $7a22: $80
	add  b                                           ; $7a23: $80
	add  b                                           ; $7a24: $80
	add  b                                           ; $7a25: $80
	add  b                                           ; $7a26: $80
	add  b                                           ; $7a27: $80
	add  b                                           ; $7a28: $80
	add  b                                           ; $7a29: $80
	add  b                                           ; $7a2a: $80
	add  b                                           ; $7a2b: $80
	add  b                                           ; $7a2c: $80
	add  b                                           ; $7a2d: $80
	add  b                                           ; $7a2e: $80
	add  b                                           ; $7a2f: $80
	add  b                                           ; $7a30: $80
	add  b                                           ; $7a31: $80
	add  b                                           ; $7a32: $80
	add  b                                           ; $7a33: $80
	add  b                                           ; $7a34: $80
	add  b                                           ; $7a35: $80
	add  b                                           ; $7a36: $80
	add  b                                           ; $7a37: $80
	add  b                                           ; $7a38: $80
	add  b                                           ; $7a39: $80
	add  b                                           ; $7a3a: $80
	add  b                                           ; $7a3b: $80
	add  b                                           ; $7a3c: $80
	add  b                                           ; $7a3d: $80
	add  b                                           ; $7a3e: $80
	add  b                                           ; $7a3f: $80
	add  b                                           ; $7a40: $80
	add  b                                           ; $7a41: $80
	add  b                                           ; $7a42: $80
	add  b                                           ; $7a43: $80
	add  b                                           ; $7a44: $80
	add  b                                           ; $7a45: $80
	add  b                                           ; $7a46: $80
	add  b                                           ; $7a47: $80
	add  b                                           ; $7a48: $80
	add  b                                           ; $7a49: $80
	add  b                                           ; $7a4a: $80
	add  b                                           ; $7a4b: $80
	add  b                                           ; $7a4c: $80
	add  b                                           ; $7a4d: $80
	add  b                                           ; $7a4e: $80
	add  b                                           ; $7a4f: $80
	add  b                                           ; $7a50: $80
	add  b                                           ; $7a51: $80
	add  b                                           ; $7a52: $80
	add  b                                           ; $7a53: $80
	add  b                                           ; $7a54: $80
	add  b                                           ; $7a55: $80
	add  b                                           ; $7a56: $80
	add  b                                           ; $7a57: $80
	add  b                                           ; $7a58: $80
	add  b                                           ; $7a59: $80
	add  b                                           ; $7a5a: $80
	add  b                                           ; $7a5b: $80
	add  b                                           ; $7a5c: $80
	add  b                                           ; $7a5d: $80
	add  b                                           ; $7a5e: $80
	add  b                                           ; $7a5f: $80
	add  b                                           ; $7a60: $80
	add  b                                           ; $7a61: $80
	add  b                                           ; $7a62: $80
	add  b                                           ; $7a63: $80
	add  b                                           ; $7a64: $80
	add  b                                           ; $7a65: $80
	add  b                                           ; $7a66: $80
	add  b                                           ; $7a67: $80
	add  b                                           ; $7a68: $80
	add  b                                           ; $7a69: $80
	add  b                                           ; $7a6a: $80
	add  b                                           ; $7a6b: $80
	add  b                                           ; $7a6c: $80
	add  b                                           ; $7a6d: $80
	add  b                                           ; $7a6e: $80
	add  b                                           ; $7a6f: $80
	add  b                                           ; $7a70: $80
	add  b                                           ; $7a71: $80
	add  b                                           ; $7a72: $80
	add  b                                           ; $7a73: $80
	add  b                                           ; $7a74: $80
	add  b                                           ; $7a75: $80
	add  b                                           ; $7a76: $80
	add  b                                           ; $7a77: $80
	add  b                                           ; $7a78: $80
	add  b                                           ; $7a79: $80
	add  b                                           ; $7a7a: $80
	add  b                                           ; $7a7b: $80
	add  b                                           ; $7a7c: $80
	add  b                                           ; $7a7d: $80
	add  b                                           ; $7a7e: $80
	add  b                                           ; $7a7f: $80
	add  b                                           ; $7a80: $80
	add  b                                           ; $7a81: $80
	add  b                                           ; $7a82: $80
	add  b                                           ; $7a83: $80
	add  b                                           ; $7a84: $80
	add  b                                           ; $7a85: $80
	add  b                                           ; $7a86: $80
	add  b                                           ; $7a87: $80
	add  b                                           ; $7a88: $80
	add  b                                           ; $7a89: $80
	add  b                                           ; $7a8a: $80
	add  b                                           ; $7a8b: $80
	add  b                                           ; $7a8c: $80
	add  b                                           ; $7a8d: $80
	add  b                                           ; $7a8e: $80
	add  b                                           ; $7a8f: $80
	add  b                                           ; $7a90: $80
	add  b                                           ; $7a91: $80
	add  b                                           ; $7a92: $80
	add  b                                           ; $7a93: $80
	add  b                                           ; $7a94: $80
	add  b                                           ; $7a95: $80
	add  b                                           ; $7a96: $80
	add  b                                           ; $7a97: $80
	add  b                                           ; $7a98: $80
	add  b                                           ; $7a99: $80
	add  b                                           ; $7a9a: $80
	add  b                                           ; $7a9b: $80
	add  b                                           ; $7a9c: $80
	add  b                                           ; $7a9d: $80
	add  b                                           ; $7a9e: $80
	add  b                                           ; $7a9f: $80
	add  b                                           ; $7aa0: $80
	add  b                                           ; $7aa1: $80
	add  b                                           ; $7aa2: $80
	add  b                                           ; $7aa3: $80
	add  b                                           ; $7aa4: $80
	add  b                                           ; $7aa5: $80
	add  b                                           ; $7aa6: $80
	add  b                                           ; $7aa7: $80
	add  b                                           ; $7aa8: $80
	add  b                                           ; $7aa9: $80
	add  b                                           ; $7aaa: $80
	add  b                                           ; $7aab: $80
	add  b                                           ; $7aac: $80
	add  b                                           ; $7aad: $80
	add  b                                           ; $7aae: $80
	add  b                                           ; $7aaf: $80
	add  b                                           ; $7ab0: $80
	add  b                                           ; $7ab1: $80
	add  b                                           ; $7ab2: $80
	add  b                                           ; $7ab3: $80
	add  b                                           ; $7ab4: $80
	add  b                                           ; $7ab5: $80
	add  b                                           ; $7ab6: $80
	add  b                                           ; $7ab7: $80
	add  b                                           ; $7ab8: $80
	add  b                                           ; $7ab9: $80
	add  b                                           ; $7aba: $80
	add  b                                           ; $7abb: $80
	add  b                                           ; $7abc: $80
	add  b                                           ; $7abd: $80
	add  b                                           ; $7abe: $80
	add  b                                           ; $7abf: $80
	add  b                                           ; $7ac0: $80
	add  b                                           ; $7ac1: $80
	add  b                                           ; $7ac2: $80
	add  b                                           ; $7ac3: $80
	add  b                                           ; $7ac4: $80
	add  b                                           ; $7ac5: $80
	add  b                                           ; $7ac6: $80
	add  b                                           ; $7ac7: $80
	add  b                                           ; $7ac8: $80
	add  b                                           ; $7ac9: $80
	add  b                                           ; $7aca: $80
	add  b                                           ; $7acb: $80
	add  b                                           ; $7acc: $80
	add  b                                           ; $7acd: $80
	add  b                                           ; $7ace: $80
	add  b                                           ; $7acf: $80
	add  b                                           ; $7ad0: $80
	add  b                                           ; $7ad1: $80
	add  b                                           ; $7ad2: $80
	add  b                                           ; $7ad3: $80
	add  b                                           ; $7ad4: $80
	add  b                                           ; $7ad5: $80
	add  b                                           ; $7ad6: $80
	add  b                                           ; $7ad7: $80
	add  b                                           ; $7ad8: $80
	add  b                                           ; $7ad9: $80
	add  b                                           ; $7ada: $80
	add  b                                           ; $7adb: $80
	add  b                                           ; $7adc: $80
	add  b                                           ; $7add: $80
	add  b                                           ; $7ade: $80
	add  b                                           ; $7adf: $80
	add  b                                           ; $7ae0: $80
	add  b                                           ; $7ae1: $80
	add  b                                           ; $7ae2: $80
	add  b                                           ; $7ae3: $80
	add  b                                           ; $7ae4: $80
	add  b                                           ; $7ae5: $80
	add  b                                           ; $7ae6: $80
	add  b                                           ; $7ae7: $80
	add  b                                           ; $7ae8: $80
	add  b                                           ; $7ae9: $80
	add  b                                           ; $7aea: $80
	add  b                                           ; $7aeb: $80
	add  b                                           ; $7aec: $80
	add  b                                           ; $7aed: $80
	add  b                                           ; $7aee: $80
	add  b                                           ; $7aef: $80
	add  b                                           ; $7af0: $80
	add  b                                           ; $7af1: $80
	add  b                                           ; $7af2: $80
	add  b                                           ; $7af3: $80
	add  b                                           ; $7af4: $80
	add  b                                           ; $7af5: $80
	add  b                                           ; $7af6: $80
	add  b                                           ; $7af7: $80
	add  b                                           ; $7af8: $80
	add  b                                           ; $7af9: $80
	add  b                                           ; $7afa: $80
	add  b                                           ; $7afb: $80
	add  b                                           ; $7afc: $80
	add  b                                           ; $7afd: $80
	add  b                                           ; $7afe: $80
	add  b                                           ; $7aff: $80
	add  b                                           ; $7b00: $80
	add  b                                           ; $7b01: $80
	add  b                                           ; $7b02: $80
	add  b                                           ; $7b03: $80
	add  b                                           ; $7b04: $80
	add  b                                           ; $7b05: $80
	add  b                                           ; $7b06: $80
	add  b                                           ; $7b07: $80
	add  b                                           ; $7b08: $80
	add  b                                           ; $7b09: $80
	add  b                                           ; $7b0a: $80
	add  b                                           ; $7b0b: $80
	add  b                                           ; $7b0c: $80
	add  b                                           ; $7b0d: $80
	add  b                                           ; $7b0e: $80
	add  b                                           ; $7b0f: $80
	add  b                                           ; $7b10: $80
	add  b                                           ; $7b11: $80
	add  b                                           ; $7b12: $80
	add  b                                           ; $7b13: $80
	add  b                                           ; $7b14: $80
	add  b                                           ; $7b15: $80
	add  b                                           ; $7b16: $80
	add  b                                           ; $7b17: $80
	add  b                                           ; $7b18: $80
	add  b                                           ; $7b19: $80
	add  b                                           ; $7b1a: $80
	add  b                                           ; $7b1b: $80
	add  b                                           ; $7b1c: $80
	add  b                                           ; $7b1d: $80
	add  b                                           ; $7b1e: $80
	add  b                                           ; $7b1f: $80
	add  b                                           ; $7b20: $80
	add  b                                           ; $7b21: $80
	add  b                                           ; $7b22: $80
	add  b                                           ; $7b23: $80
	add  b                                           ; $7b24: $80
	add  b                                           ; $7b25: $80
	add  b                                           ; $7b26: $80
	add  b                                           ; $7b27: $80
	add  b                                           ; $7b28: $80
	add  b                                           ; $7b29: $80
	add  b                                           ; $7b2a: $80
	add  b                                           ; $7b2b: $80
	add  b                                           ; $7b2c: $80
	add  b                                           ; $7b2d: $80
	add  b                                           ; $7b2e: $80
	add  b                                           ; $7b2f: $80
	add  b                                           ; $7b30: $80
	add  b                                           ; $7b31: $80
	add  b                                           ; $7b32: $80
	add  b                                           ; $7b33: $80
	add  b                                           ; $7b34: $80
	add  b                                           ; $7b35: $80
	add  b                                           ; $7b36: $80
	add  b                                           ; $7b37: $80
	add  b                                           ; $7b38: $80
	add  b                                           ; $7b39: $80
	add  b                                           ; $7b3a: $80
	add  b                                           ; $7b3b: $80
	add  b                                           ; $7b3c: $80
	add  b                                           ; $7b3d: $80
	add  b                                           ; $7b3e: $80
	add  b                                           ; $7b3f: $80
	add  b                                           ; $7b40: $80
	add  b                                           ; $7b41: $80
	add  b                                           ; $7b42: $80
	add  b                                           ; $7b43: $80
	add  b                                           ; $7b44: $80
	add  b                                           ; $7b45: $80
	add  b                                           ; $7b46: $80
	add  b                                           ; $7b47: $80
	add  b                                           ; $7b48: $80
	add  b                                           ; $7b49: $80
	add  b                                           ; $7b4a: $80
	add  b                                           ; $7b4b: $80
	add  b                                           ; $7b4c: $80
	add  b                                           ; $7b4d: $80
	add  b                                           ; $7b4e: $80
	add  b                                           ; $7b4f: $80
	add  b                                           ; $7b50: $80
	add  b                                           ; $7b51: $80
	add  b                                           ; $7b52: $80
	add  b                                           ; $7b53: $80
	add  b                                           ; $7b54: $80
	add  b                                           ; $7b55: $80
	add  b                                           ; $7b56: $80
	add  b                                           ; $7b57: $80
	add  b                                           ; $7b58: $80
	add  b                                           ; $7b59: $80
	add  b                                           ; $7b5a: $80
	add  b                                           ; $7b5b: $80
	add  b                                           ; $7b5c: $80
	add  b                                           ; $7b5d: $80
	add  b                                           ; $7b5e: $80
	add  b                                           ; $7b5f: $80
	add  b                                           ; $7b60: $80
	add  b                                           ; $7b61: $80
	add  b                                           ; $7b62: $80
	add  b                                           ; $7b63: $80
	add  b                                           ; $7b64: $80
	add  b                                           ; $7b65: $80
	add  b                                           ; $7b66: $80
	add  b                                           ; $7b67: $80
	add  b                                           ; $7b68: $80
	add  b                                           ; $7b69: $80
	add  b                                           ; $7b6a: $80
	add  b                                           ; $7b6b: $80
	add  b                                           ; $7b6c: $80
	add  b                                           ; $7b6d: $80
	add  b                                           ; $7b6e: $80
	add  b                                           ; $7b6f: $80
	add  b                                           ; $7b70: $80
	add  b                                           ; $7b71: $80
	add  b                                           ; $7b72: $80
	add  b                                           ; $7b73: $80
	add  b                                           ; $7b74: $80
	add  b                                           ; $7b75: $80
	add  b                                           ; $7b76: $80
	add  b                                           ; $7b77: $80
	add  b                                           ; $7b78: $80
	add  b                                           ; $7b79: $80
	add  b                                           ; $7b7a: $80
	add  b                                           ; $7b7b: $80
	add  b                                           ; $7b7c: $80
	add  b                                           ; $7b7d: $80
	add  b                                           ; $7b7e: $80
	add  b                                           ; $7b7f: $80
	add  b                                           ; $7b80: $80
	add  b                                           ; $7b81: $80
	add  b                                           ; $7b82: $80
	add  b                                           ; $7b83: $80
	add  b                                           ; $7b84: $80
	add  b                                           ; $7b85: $80
	add  b                                           ; $7b86: $80
	add  b                                           ; $7b87: $80
	add  b                                           ; $7b88: $80
	add  b                                           ; $7b89: $80
	add  b                                           ; $7b8a: $80
	add  b                                           ; $7b8b: $80
	add  b                                           ; $7b8c: $80
	add  b                                           ; $7b8d: $80
	add  b                                           ; $7b8e: $80
	add  b                                           ; $7b8f: $80
	add  b                                           ; $7b90: $80
	add  b                                           ; $7b91: $80
	add  b                                           ; $7b92: $80
	add  b                                           ; $7b93: $80
	add  b                                           ; $7b94: $80
	add  b                                           ; $7b95: $80
	add  b                                           ; $7b96: $80
	add  b                                           ; $7b97: $80
	add  b                                           ; $7b98: $80
	add  b                                           ; $7b99: $80
	add  b                                           ; $7b9a: $80
	add  b                                           ; $7b9b: $80
	add  b                                           ; $7b9c: $80
	add  b                                           ; $7b9d: $80
	add  b                                           ; $7b9e: $80
	add  b                                           ; $7b9f: $80
	add  b                                           ; $7ba0: $80
	add  b                                           ; $7ba1: $80
	add  b                                           ; $7ba2: $80
	add  b                                           ; $7ba3: $80
	add  b                                           ; $7ba4: $80
	add  b                                           ; $7ba5: $80
	add  b                                           ; $7ba6: $80
	add  b                                           ; $7ba7: $80
	add  b                                           ; $7ba8: $80
	add  b                                           ; $7ba9: $80
	add  b                                           ; $7baa: $80
	add  b                                           ; $7bab: $80
	add  b                                           ; $7bac: $80
	add  b                                           ; $7bad: $80
	add  b                                           ; $7bae: $80
	add  b                                           ; $7baf: $80
	add  b                                           ; $7bb0: $80
	add  b                                           ; $7bb1: $80
	add  b                                           ; $7bb2: $80
	add  b                                           ; $7bb3: $80
	add  b                                           ; $7bb4: $80
	add  b                                           ; $7bb5: $80
	add  b                                           ; $7bb6: $80
	add  b                                           ; $7bb7: $80
	add  b                                           ; $7bb8: $80
	add  b                                           ; $7bb9: $80
	add  b                                           ; $7bba: $80
	add  b                                           ; $7bbb: $80
	add  b                                           ; $7bbc: $80
	add  b                                           ; $7bbd: $80
	add  b                                           ; $7bbe: $80
	add  b                                           ; $7bbf: $80
	add  b                                           ; $7bc0: $80
	add  b                                           ; $7bc1: $80
	add  b                                           ; $7bc2: $80
	add  b                                           ; $7bc3: $80
	add  b                                           ; $7bc4: $80
	add  b                                           ; $7bc5: $80
	add  b                                           ; $7bc6: $80
	add  b                                           ; $7bc7: $80
	add  b                                           ; $7bc8: $80
	add  b                                           ; $7bc9: $80
	add  b                                           ; $7bca: $80
	add  b                                           ; $7bcb: $80
	add  b                                           ; $7bcc: $80
	add  b                                           ; $7bcd: $80
	add  b                                           ; $7bce: $80
	add  b                                           ; $7bcf: $80
	add  b                                           ; $7bd0: $80
	add  b                                           ; $7bd1: $80
	add  b                                           ; $7bd2: $80
	add  b                                           ; $7bd3: $80
	add  b                                           ; $7bd4: $80
	add  b                                           ; $7bd5: $80
	add  b                                           ; $7bd6: $80
	add  b                                           ; $7bd7: $80
	add  b                                           ; $7bd8: $80
	add  b                                           ; $7bd9: $80
	add  b                                           ; $7bda: $80
	add  b                                           ; $7bdb: $80
	add  b                                           ; $7bdc: $80
	add  b                                           ; $7bdd: $80
	add  b                                           ; $7bde: $80
	add  b                                           ; $7bdf: $80
	add  b                                           ; $7be0: $80
	add  b                                           ; $7be1: $80
	add  b                                           ; $7be2: $80
	add  b                                           ; $7be3: $80
	add  b                                           ; $7be4: $80
	add  b                                           ; $7be5: $80
	add  b                                           ; $7be6: $80
	add  b                                           ; $7be7: $80
	add  b                                           ; $7be8: $80
	add  b                                           ; $7be9: $80
	add  b                                           ; $7bea: $80
	add  b                                           ; $7beb: $80
	add  b                                           ; $7bec: $80
	add  b                                           ; $7bed: $80
	add  b                                           ; $7bee: $80
	add  b                                           ; $7bef: $80
	add  b                                           ; $7bf0: $80
	add  b                                           ; $7bf1: $80
	add  b                                           ; $7bf2: $80
	add  b                                           ; $7bf3: $80
	add  b                                           ; $7bf4: $80
	add  b                                           ; $7bf5: $80
	add  b                                           ; $7bf6: $80
	add  b                                           ; $7bf7: $80
	add  b                                           ; $7bf8: $80
	add  b                                           ; $7bf9: $80
	add  b                                           ; $7bfa: $80
	add  b                                           ; $7bfb: $80
	add  b                                           ; $7bfc: $80
	add  b                                           ; $7bfd: $80
	add  b                                           ; $7bfe: $80
	add  b                                           ; $7bff: $80
	ld   b, $06                                      ; $7c00: $06 $06
	ld   b, $06                                      ; $7c02: $06 $06
	dec  h                                           ; $7c04: $25
	dec  h                                           ; $7c05: $25
	dec  b                                           ; $7c06: $05
	dec  b                                           ; $7c07: $05
	dec  b                                           ; $7c08: $05
	dec  b                                           ; $7c09: $05
	dec  b                                           ; $7c0a: $05
	dec  b                                           ; $7c0b: $05
	dec  b                                           ; $7c0c: $05
	dec  b                                           ; $7c0d: $05
	dec  b                                           ; $7c0e: $05
	dec  b                                           ; $7c0f: $05
	ld   b, $06                                      ; $7c10: $06 $06
	ld   b, $06                                      ; $7c12: $06 $06
	ld   b, $06                                      ; $7c14: $06 $06
	ld   b, $06                                      ; $7c16: $06 $06
	ld   b, $06                                      ; $7c18: $06 $06
	ld   b, $06                                      ; $7c1a: $06 $06
	ld   b, $06                                      ; $7c1c: $06 $06
	ld   b, $06                                      ; $7c1e: $06 $06
	ld   b, $06                                      ; $7c20: $06 $06
	ld   b, $06                                      ; $7c22: $06 $06
	dec  h                                           ; $7c24: $25
	dec  h                                           ; $7c25: $25
	dec  b                                           ; $7c26: $05
	dec  b                                           ; $7c27: $05
	dec  b                                           ; $7c28: $05
	dec  b                                           ; $7c29: $05
	dec  b                                           ; $7c2a: $05
	dec  b                                           ; $7c2b: $05
	dec  b                                           ; $7c2c: $05
	dec  b                                           ; $7c2d: $05
	dec  b                                           ; $7c2e: $05
	dec  b                                           ; $7c2f: $05
	ld   b, $06                                      ; $7c30: $06 $06
	ld   b, $06                                      ; $7c32: $06 $06
	ld   b, $06                                      ; $7c34: $06 $06
	ld   b, $06                                      ; $7c36: $06 $06
	ld   b, $06                                      ; $7c38: $06 $06
	ld   b, $06                                      ; $7c3a: $06 $06
	ld   b, $06                                      ; $7c3c: $06 $06
	ld   b, $06                                      ; $7c3e: $06 $06
	dec  b                                           ; $7c40: $05
	dec  b                                           ; $7c41: $05
	dec  b                                           ; $7c42: $05
	dec  b                                           ; $7c43: $05
	dec  h                                           ; $7c44: $25
	dec  b                                           ; $7c45: $05
	dec  b                                           ; $7c46: $05
	dec  b                                           ; $7c47: $05
	dec  b                                           ; $7c48: $05
	dec  b                                           ; $7c49: $05
	dec  b                                           ; $7c4a: $05
	dec  b                                           ; $7c4b: $05
	dec  b                                           ; $7c4c: $05
	dec  b                                           ; $7c4d: $05
	dec  b                                           ; $7c4e: $05
	dec  b                                           ; $7c4f: $05
	dec  b                                           ; $7c50: $05
	dec  b                                           ; $7c51: $05
	dec  b                                           ; $7c52: $05
	dec  b                                           ; $7c53: $05
	dec  b                                           ; $7c54: $05
	dec  b                                           ; $7c55: $05
	dec  b                                           ; $7c56: $05
	dec  b                                           ; $7c57: $05
	dec  b                                           ; $7c58: $05
	dec  b                                           ; $7c59: $05
	dec  b                                           ; $7c5a: $05
	dec  b                                           ; $7c5b: $05
	dec  b                                           ; $7c5c: $05
	dec  b                                           ; $7c5d: $05
	dec  b                                           ; $7c5e: $05
	dec  b                                           ; $7c5f: $05
	inc  bc                                          ; $7c60: $03
	inc  bc                                          ; $7c61: $03
	inc  bc                                          ; $7c62: $03
	inc  bc                                          ; $7c63: $03
	dec  h                                           ; $7c64: $25
	dec  b                                           ; $7c65: $05
	dec  b                                           ; $7c66: $05
	dec  b                                           ; $7c67: $05
	dec  b                                           ; $7c68: $05
	dec  b                                           ; $7c69: $05
	dec  b                                           ; $7c6a: $05
	dec  b                                           ; $7c6b: $05
	dec  b                                           ; $7c6c: $05
	dec  b                                           ; $7c6d: $05
	dec  b                                           ; $7c6e: $05
	dec  b                                           ; $7c6f: $05
	inc  bc                                          ; $7c70: $03
	inc  bc                                          ; $7c71: $03
	inc  bc                                          ; $7c72: $03
	inc  bc                                          ; $7c73: $03
	inc  bc                                          ; $7c74: $03
	inc  bc                                          ; $7c75: $03
	inc  bc                                          ; $7c76: $03
	inc  bc                                          ; $7c77: $03
	inc  bc                                          ; $7c78: $03
	inc  bc                                          ; $7c79: $03
	inc  bc                                          ; $7c7a: $03
	inc  bc                                          ; $7c7b: $03
	inc  bc                                          ; $7c7c: $03
	inc  bc                                          ; $7c7d: $03
	inc  bc                                          ; $7c7e: $03
	inc  bc                                          ; $7c7f: $03
	inc  bc                                          ; $7c80: $03
	inc  bc                                          ; $7c81: $03
	inc  bc                                          ; $7c82: $03
	inc  bc                                          ; $7c83: $03
	dec  h                                           ; $7c84: $25
	dec  b                                           ; $7c85: $05
	dec  b                                           ; $7c86: $05
	dec  b                                           ; $7c87: $05
	dec  b                                           ; $7c88: $05
	dec  b                                           ; $7c89: $05
	dec  b                                           ; $7c8a: $05
	dec  b                                           ; $7c8b: $05
	dec  b                                           ; $7c8c: $05
	dec  b                                           ; $7c8d: $05
	dec  b                                           ; $7c8e: $05
	dec  b                                           ; $7c8f: $05
	inc  bc                                          ; $7c90: $03
	inc  bc                                          ; $7c91: $03
	inc  bc                                          ; $7c92: $03
	inc  bc                                          ; $7c93: $03
	inc  bc                                          ; $7c94: $03
	inc  bc                                          ; $7c95: $03
	inc  bc                                          ; $7c96: $03
	inc  bc                                          ; $7c97: $03
	inc  bc                                          ; $7c98: $03
	inc  bc                                          ; $7c99: $03
	inc  bc                                          ; $7c9a: $03
	inc  bc                                          ; $7c9b: $03
	inc  bc                                          ; $7c9c: $03
	inc  bc                                          ; $7c9d: $03
	inc  bc                                          ; $7c9e: $03
	inc  bc                                          ; $7c9f: $03
	inc  bc                                          ; $7ca0: $03
	inc  bc                                          ; $7ca1: $03
	inc  bc                                          ; $7ca2: $03
	inc  bc                                          ; $7ca3: $03
	dec  h                                           ; $7ca4: $25
	dec  b                                           ; $7ca5: $05
	dec  b                                           ; $7ca6: $05
	dec  b                                           ; $7ca7: $05
	dec  b                                           ; $7ca8: $05
	dec  b                                           ; $7ca9: $05
	dec  b                                           ; $7caa: $05
	dec  b                                           ; $7cab: $05
	dec  b                                           ; $7cac: $05
	dec  b                                           ; $7cad: $05
	dec  b                                           ; $7cae: $05
	dec  b                                           ; $7caf: $05
	inc  bc                                          ; $7cb0: $03
	inc  bc                                          ; $7cb1: $03
	inc  bc                                          ; $7cb2: $03
	inc  bc                                          ; $7cb3: $03
	inc  bc                                          ; $7cb4: $03
	inc  bc                                          ; $7cb5: $03
	inc  bc                                          ; $7cb6: $03
	inc  bc                                          ; $7cb7: $03
	inc  bc                                          ; $7cb8: $03
	inc  bc                                          ; $7cb9: $03
	inc  bc                                          ; $7cba: $03
	inc  bc                                          ; $7cbb: $03
	inc  bc                                          ; $7cbc: $03
	inc  bc                                          ; $7cbd: $03
	inc  bc                                          ; $7cbe: $03
	inc  bc                                          ; $7cbf: $03
	inc  bc                                          ; $7cc0: $03
	inc  bc                                          ; $7cc1: $03
	inc  bc                                          ; $7cc2: $03
	inc  bc                                          ; $7cc3: $03
	dec  h                                           ; $7cc4: $25
	dec  b                                           ; $7cc5: $05
	dec  b                                           ; $7cc6: $05
	dec  b                                           ; $7cc7: $05
	dec  b                                           ; $7cc8: $05
	dec  b                                           ; $7cc9: $05
	dec  b                                           ; $7cca: $05
	dec  b                                           ; $7ccb: $05
	dec  b                                           ; $7ccc: $05
	dec  b                                           ; $7ccd: $05
	dec  b                                           ; $7cce: $05
	dec  b                                           ; $7ccf: $05
	inc  bc                                          ; $7cd0: $03
	inc  bc                                          ; $7cd1: $03
	inc  bc                                          ; $7cd2: $03
	inc  bc                                          ; $7cd3: $03
	inc  bc                                          ; $7cd4: $03
	inc  bc                                          ; $7cd5: $03
	inc  bc                                          ; $7cd6: $03
	inc  bc                                          ; $7cd7: $03
	inc  bc                                          ; $7cd8: $03
	inc  bc                                          ; $7cd9: $03
	inc  bc                                          ; $7cda: $03
	inc  bc                                          ; $7cdb: $03
	inc  bc                                          ; $7cdc: $03
	inc  bc                                          ; $7cdd: $03
	inc  bc                                          ; $7cde: $03
	inc  bc                                          ; $7cdf: $03
	inc  bc                                          ; $7ce0: $03
	inc  bc                                          ; $7ce1: $03
	inc  bc                                          ; $7ce2: $03
	inc  bc                                          ; $7ce3: $03
	dec  h                                           ; $7ce4: $25
	dec  b                                           ; $7ce5: $05
	dec  b                                           ; $7ce6: $05
	dec  b                                           ; $7ce7: $05
	dec  b                                           ; $7ce8: $05
	dec  b                                           ; $7ce9: $05
	dec  b                                           ; $7cea: $05
	dec  b                                           ; $7ceb: $05
	dec  b                                           ; $7cec: $05
	dec  b                                           ; $7ced: $05
	dec  b                                           ; $7cee: $05
	dec  b                                           ; $7cef: $05
	inc  bc                                          ; $7cf0: $03
	inc  bc                                          ; $7cf1: $03
	inc  bc                                          ; $7cf2: $03
	inc  bc                                          ; $7cf3: $03
	inc  bc                                          ; $7cf4: $03
	inc  bc                                          ; $7cf5: $03
	inc  bc                                          ; $7cf6: $03
	inc  bc                                          ; $7cf7: $03
	inc  bc                                          ; $7cf8: $03
	inc  bc                                          ; $7cf9: $03
	inc  bc                                          ; $7cfa: $03
	inc  bc                                          ; $7cfb: $03
	inc  bc                                          ; $7cfc: $03
	inc  bc                                          ; $7cfd: $03
	inc  bc                                          ; $7cfe: $03
	inc  bc                                          ; $7cff: $03
	inc  bc                                          ; $7d00: $03
	inc  bc                                          ; $7d01: $03
	inc  bc                                          ; $7d02: $03
	inc  bc                                          ; $7d03: $03
	ld   h, l                                        ; $7d04: $65
	dec  b                                           ; $7d05: $05
	dec  b                                           ; $7d06: $05
	dec  b                                           ; $7d07: $05
	dec  b                                           ; $7d08: $05
	dec  b                                           ; $7d09: $05
	dec  b                                           ; $7d0a: $05
	dec  b                                           ; $7d0b: $05
	dec  b                                           ; $7d0c: $05
	dec  b                                           ; $7d0d: $05
	dec  b                                           ; $7d0e: $05
	ld   b, l                                        ; $7d0f: $45
	inc  bc                                          ; $7d10: $03
	inc  bc                                          ; $7d11: $03
	inc  bc                                          ; $7d12: $03
	inc  bc                                          ; $7d13: $03
	inc  bc                                          ; $7d14: $03
	inc  bc                                          ; $7d15: $03
	inc  bc                                          ; $7d16: $03
	inc  bc                                          ; $7d17: $03
	inc  bc                                          ; $7d18: $03
	inc  bc                                          ; $7d19: $03
	inc  bc                                          ; $7d1a: $03
	inc  bc                                          ; $7d1b: $03
	inc  bc                                          ; $7d1c: $03
	inc  bc                                          ; $7d1d: $03
	inc  bc                                          ; $7d1e: $03
	inc  bc                                          ; $7d1f: $03
	dec  b                                           ; $7d20: $05
	dec  b                                           ; $7d21: $05
	dec  b                                           ; $7d22: $05
	dec  b                                           ; $7d23: $05
	dec  h                                           ; $7d24: $25
	dec  b                                           ; $7d25: $05
	inc  hl                                          ; $7d26: $23
	inc  hl                                          ; $7d27: $23
	inc  hl                                          ; $7d28: $23
	inc  hl                                          ; $7d29: $23
	inc  hl                                          ; $7d2a: $23
	inc  hl                                          ; $7d2b: $23
	dec  b                                           ; $7d2c: $05
	dec  b                                           ; $7d2d: $05
	dec  b                                           ; $7d2e: $05
	dec  b                                           ; $7d2f: $05
	dec  b                                           ; $7d30: $05
	dec  b                                           ; $7d31: $05
	dec  b                                           ; $7d32: $05
	dec  b                                           ; $7d33: $05
	dec  b                                           ; $7d34: $05
	dec  b                                           ; $7d35: $05
	dec  b                                           ; $7d36: $05
	dec  b                                           ; $7d37: $05
	dec  b                                           ; $7d38: $05
	dec  b                                           ; $7d39: $05
	dec  b                                           ; $7d3a: $05
	dec  b                                           ; $7d3b: $05
	dec  b                                           ; $7d3c: $05
	dec  b                                           ; $7d3d: $05
	dec  b                                           ; $7d3e: $05
	dec  b                                           ; $7d3f: $05
	ld   b, $06                                      ; $7d40: $06 $06
	ld   b, $06                                      ; $7d42: $06 $06
	ld   h, l                                        ; $7d44: $65
	ld   h, l                                        ; $7d45: $65
	inc  hl                                          ; $7d46: $23
	inc  hl                                          ; $7d47: $23
	inc  hl                                          ; $7d48: $23
	inc  hl                                          ; $7d49: $23
	inc  hl                                          ; $7d4a: $23
	inc  hl                                          ; $7d4b: $23
	ld   b, l                                        ; $7d4c: $45
	ld   b, l                                        ; $7d4d: $45
	ld   b, l                                        ; $7d4e: $45
	ld   b, l                                        ; $7d4f: $45
	ld   b, $06                                      ; $7d50: $06 $06
	ld   b, $06                                      ; $7d52: $06 $06
	ld   b, $06                                      ; $7d54: $06 $06
	ld   b, $06                                      ; $7d56: $06 $06
	ld   b, $06                                      ; $7d58: $06 $06
	ld   b, $06                                      ; $7d5a: $06 $06
	ld   b, $06                                      ; $7d5c: $06 $06
	ld   b, $06                                      ; $7d5e: $06 $06
	ld   b, $06                                      ; $7d60: $06 $06
	ld   b, $06                                      ; $7d62: $06 $06
	ld   h, l                                        ; $7d64: $65
	ld   h, l                                        ; $7d65: $65
	inc  hl                                          ; $7d66: $23
	inc  hl                                          ; $7d67: $23
	inc  hl                                          ; $7d68: $23
	inc  hl                                          ; $7d69: $23
	inc  hl                                          ; $7d6a: $23
	inc  hl                                          ; $7d6b: $23
	ld   b, l                                        ; $7d6c: $45
	ld   b, l                                        ; $7d6d: $45
	ld   b, l                                        ; $7d6e: $45
	ld   b, l                                        ; $7d6f: $45
	ld   b, $06                                      ; $7d70: $06 $06
	ld   b, $06                                      ; $7d72: $06 $06
	ld   b, $06                                      ; $7d74: $06 $06
	ld   b, $06                                      ; $7d76: $06 $06
	ld   b, $06                                      ; $7d78: $06 $06
	ld   b, $06                                      ; $7d7a: $06 $06
	ld   b, $06                                      ; $7d7c: $06 $06
	ld   b, $06                                      ; $7d7e: $06 $06
	ld   [$0808], sp                                 ; $7d80: $08 $08 $08
	ld   [$0808], sp                                 ; $7d83: $08 $08 $08
	ld   [$0808], sp                                 ; $7d86: $08 $08 $08
	ld   [$0808], sp                                 ; $7d89: $08 $08 $08
	ld   [$0808], sp                                 ; $7d8c: $08 $08 $08
	ld   [$0808], sp                                 ; $7d8f: $08 $08 $08
	ld   [$0808], sp                                 ; $7d92: $08 $08 $08
	ld   [$0808], sp                                 ; $7d95: $08 $08 $08
	ld   [$0808], sp                                 ; $7d98: $08 $08 $08
	ld   [$0808], sp                                 ; $7d9b: $08 $08 $08
	ld   [$0808], sp                                 ; $7d9e: $08 $08 $08
	ld   [$0808], sp                                 ; $7da1: $08 $08 $08
	ld   [$0808], sp                                 ; $7da4: $08 $08 $08
	ld   [$0808], sp                                 ; $7da7: $08 $08 $08
	ld   [$0808], sp                                 ; $7daa: $08 $08 $08
	ld   [$0808], sp                                 ; $7dad: $08 $08 $08
	ld   [$0808], sp                                 ; $7db0: $08 $08 $08
	ld   [$0808], sp                                 ; $7db3: $08 $08 $08
	ld   [$0808], sp                                 ; $7db6: $08 $08 $08
	ld   [$0808], sp                                 ; $7db9: $08 $08 $08
	ld   [$0808], sp                                 ; $7dbc: $08 $08 $08
	ld   [$0808], sp                                 ; $7dbf: $08 $08 $08
	ld   [$0808], sp                                 ; $7dc2: $08 $08 $08
	ld   [$0808], sp                                 ; $7dc5: $08 $08 $08
	ld   [$0808], sp                                 ; $7dc8: $08 $08 $08
	ld   [$0808], sp                                 ; $7dcb: $08 $08 $08
	ld   [$0808], sp                                 ; $7dce: $08 $08 $08
	ld   [$0808], sp                                 ; $7dd1: $08 $08 $08
	ld   [$0808], sp                                 ; $7dd4: $08 $08 $08
	ld   [$0808], sp                                 ; $7dd7: $08 $08 $08
	ld   [$0808], sp                                 ; $7dda: $08 $08 $08
	ld   [$0808], sp                                 ; $7ddd: $08 $08 $08
	ld   [$0808], sp                                 ; $7de0: $08 $08 $08
	ld   [$0808], sp                                 ; $7de3: $08 $08 $08
	ld   [$0808], sp                                 ; $7de6: $08 $08 $08
	ld   [$0808], sp                                 ; $7de9: $08 $08 $08
	ld   [$0808], sp                                 ; $7dec: $08 $08 $08
	ld   [$0808], sp                                 ; $7def: $08 $08 $08
	ld   [$0808], sp                                 ; $7df2: $08 $08 $08
	ld   [$0808], sp                                 ; $7df5: $08 $08 $08
	ld   [$0808], sp                                 ; $7df8: $08 $08 $08
	ld   [$0808], sp                                 ; $7dfb: $08 $08 $08
	ld   [$0808], sp                                 ; $7dfe: $08 $08 $08
	ld   [$0808], sp                                 ; $7e01: $08 $08 $08
	ld   [$0808], sp                                 ; $7e04: $08 $08 $08
	ld   [$0808], sp                                 ; $7e07: $08 $08 $08
	ld   [$0808], sp                                 ; $7e0a: $08 $08 $08
	ld   [$0808], sp                                 ; $7e0d: $08 $08 $08
	ld   [$0808], sp                                 ; $7e10: $08 $08 $08
	ld   [$0808], sp                                 ; $7e13: $08 $08 $08
	ld   [$0808], sp                                 ; $7e16: $08 $08 $08
	ld   [$0808], sp                                 ; $7e19: $08 $08 $08
	ld   [$0808], sp                                 ; $7e1c: $08 $08 $08
	ld   [$0808], sp                                 ; $7e1f: $08 $08 $08
	ld   [$0808], sp                                 ; $7e22: $08 $08 $08
	ld   [$0808], sp                                 ; $7e25: $08 $08 $08
	ld   [$0808], sp                                 ; $7e28: $08 $08 $08
	ld   [$0808], sp                                 ; $7e2b: $08 $08 $08
	ld   [$0808], sp                                 ; $7e2e: $08 $08 $08
	ld   [$0808], sp                                 ; $7e31: $08 $08 $08
	ld   [$0808], sp                                 ; $7e34: $08 $08 $08
	ld   [$0808], sp                                 ; $7e37: $08 $08 $08
	ld   [$0808], sp                                 ; $7e3a: $08 $08 $08
	ld   [$0808], sp                                 ; $7e3d: $08 $08 $08
	ld   [$0808], sp                                 ; $7e40: $08 $08 $08
	ld   [$0808], sp                                 ; $7e43: $08 $08 $08
	ld   [$0808], sp                                 ; $7e46: $08 $08 $08
	ld   [$0808], sp                                 ; $7e49: $08 $08 $08
	ld   [$0808], sp                                 ; $7e4c: $08 $08 $08
	ld   [$0808], sp                                 ; $7e4f: $08 $08 $08
	ld   [$0808], sp                                 ; $7e52: $08 $08 $08
	ld   [$0808], sp                                 ; $7e55: $08 $08 $08
	ld   [$0808], sp                                 ; $7e58: $08 $08 $08
	ld   [$0808], sp                                 ; $7e5b: $08 $08 $08
	ld   [$0808], sp                                 ; $7e5e: $08 $08 $08
	ld   [$0808], sp                                 ; $7e61: $08 $08 $08
	ld   [$0808], sp                                 ; $7e64: $08 $08 $08
	ld   [$0808], sp                                 ; $7e67: $08 $08 $08
	ld   [$0808], sp                                 ; $7e6a: $08 $08 $08
	ld   [$0808], sp                                 ; $7e6d: $08 $08 $08
	ld   [$0808], sp                                 ; $7e70: $08 $08 $08
	ld   [$0808], sp                                 ; $7e73: $08 $08 $08
	ld   [$0808], sp                                 ; $7e76: $08 $08 $08
	ld   [$0808], sp                                 ; $7e79: $08 $08 $08
	ld   [$0808], sp                                 ; $7e7c: $08 $08 $08
	ld   [$0808], sp                                 ; $7e7f: $08 $08 $08
	ld   [$0808], sp                                 ; $7e82: $08 $08 $08
	ld   [$0808], sp                                 ; $7e85: $08 $08 $08
	ld   [$0808], sp                                 ; $7e88: $08 $08 $08
	ld   [$0808], sp                                 ; $7e8b: $08 $08 $08
	ld   [$0808], sp                                 ; $7e8e: $08 $08 $08
	ld   [$0808], sp                                 ; $7e91: $08 $08 $08
	ld   [$0808], sp                                 ; $7e94: $08 $08 $08
	ld   [$0808], sp                                 ; $7e97: $08 $08 $08
	ld   [$0808], sp                                 ; $7e9a: $08 $08 $08
	ld   [$0808], sp                                 ; $7e9d: $08 $08 $08
	ld   [$0808], sp                                 ; $7ea0: $08 $08 $08
	ld   [$0808], sp                                 ; $7ea3: $08 $08 $08
	ld   [$0808], sp                                 ; $7ea6: $08 $08 $08
	ld   [$0808], sp                                 ; $7ea9: $08 $08 $08
	ld   [$0808], sp                                 ; $7eac: $08 $08 $08
	ld   [$0808], sp                                 ; $7eaf: $08 $08 $08
	ld   [$0808], sp                                 ; $7eb2: $08 $08 $08
	ld   [$0808], sp                                 ; $7eb5: $08 $08 $08
	ld   [$0808], sp                                 ; $7eb8: $08 $08 $08
	ld   [$0808], sp                                 ; $7ebb: $08 $08 $08
	ld   [$0808], sp                                 ; $7ebe: $08 $08 $08
	ld   [$0808], sp                                 ; $7ec1: $08 $08 $08
	ld   [$0808], sp                                 ; $7ec4: $08 $08 $08
	ld   [$0808], sp                                 ; $7ec7: $08 $08 $08
	ld   [$0808], sp                                 ; $7eca: $08 $08 $08
	ld   [$0808], sp                                 ; $7ecd: $08 $08 $08
	ld   [$0808], sp                                 ; $7ed0: $08 $08 $08
	ld   [$0808], sp                                 ; $7ed3: $08 $08 $08
	ld   [$0808], sp                                 ; $7ed6: $08 $08 $08
	ld   [$0808], sp                                 ; $7ed9: $08 $08 $08
	ld   [$0808], sp                                 ; $7edc: $08 $08 $08
	ld   [$0808], sp                                 ; $7edf: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee2: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee5: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee8: $08 $08 $08
	ld   [$0808], sp                                 ; $7eeb: $08 $08 $08
	ld   [$0808], sp                                 ; $7eee: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef1: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef4: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef7: $08 $08 $08
	ld   [$0808], sp                                 ; $7efa: $08 $08 $08
	ld   [$0808], sp                                 ; $7efd: $08 $08 $08
	ld   [$0808], sp                                 ; $7f00: $08 $08 $08
	ld   [$0808], sp                                 ; $7f03: $08 $08 $08
	ld   [$0808], sp                                 ; $7f06: $08 $08 $08
	ld   [$0808], sp                                 ; $7f09: $08 $08 $08
	ld   [$0808], sp                                 ; $7f0c: $08 $08 $08
	ld   [$0808], sp                                 ; $7f0f: $08 $08 $08
	ld   [$0808], sp                                 ; $7f12: $08 $08 $08
	ld   [$0808], sp                                 ; $7f15: $08 $08 $08
	ld   [$0808], sp                                 ; $7f18: $08 $08 $08
	ld   [$0808], sp                                 ; $7f1b: $08 $08 $08
	ld   [$0808], sp                                 ; $7f1e: $08 $08 $08
	ld   [$0808], sp                                 ; $7f21: $08 $08 $08
	ld   [$0808], sp                                 ; $7f24: $08 $08 $08
	ld   [$0808], sp                                 ; $7f27: $08 $08 $08
	ld   [$0808], sp                                 ; $7f2a: $08 $08 $08
	ld   [$0808], sp                                 ; $7f2d: $08 $08 $08
	ld   [$0808], sp                                 ; $7f30: $08 $08 $08
	ld   [$0808], sp                                 ; $7f33: $08 $08 $08
	ld   [$0808], sp                                 ; $7f36: $08 $08 $08
	ld   [$0808], sp                                 ; $7f39: $08 $08 $08
	ld   [$0808], sp                                 ; $7f3c: $08 $08 $08
	ld   [$0808], sp                                 ; $7f3f: $08 $08 $08
	ld   [$0808], sp                                 ; $7f42: $08 $08 $08
	ld   [$0808], sp                                 ; $7f45: $08 $08 $08
	ld   [$0808], sp                                 ; $7f48: $08 $08 $08
	ld   [$0808], sp                                 ; $7f4b: $08 $08 $08
	ld   [$0808], sp                                 ; $7f4e: $08 $08 $08
	ld   [$0808], sp                                 ; $7f51: $08 $08 $08
	ld   [$0808], sp                                 ; $7f54: $08 $08 $08
	ld   [$0808], sp                                 ; $7f57: $08 $08 $08
	ld   [$0808], sp                                 ; $7f5a: $08 $08 $08
	ld   [$0808], sp                                 ; $7f5d: $08 $08 $08
	ld   [$0808], sp                                 ; $7f60: $08 $08 $08
	ld   [$0808], sp                                 ; $7f63: $08 $08 $08
	ld   [$0808], sp                                 ; $7f66: $08 $08 $08
	ld   [$0808], sp                                 ; $7f69: $08 $08 $08
	ld   [$0808], sp                                 ; $7f6c: $08 $08 $08
	ld   [$0808], sp                                 ; $7f6f: $08 $08 $08
	ld   [$0808], sp                                 ; $7f72: $08 $08 $08
	ld   [$0808], sp                                 ; $7f75: $08 $08 $08
	ld   [$0808], sp                                 ; $7f78: $08 $08 $08
	ld   [$0808], sp                                 ; $7f7b: $08 $08 $08
	ld   [$0808], sp                                 ; $7f7e: $08 $08 $08
	ld   [$0808], sp                                 ; $7f81: $08 $08 $08
	ld   [$0808], sp                                 ; $7f84: $08 $08 $08
	ld   [$0808], sp                                 ; $7f87: $08 $08 $08
	ld   [$0808], sp                                 ; $7f8a: $08 $08 $08
	ld   [$0808], sp                                 ; $7f8d: $08 $08 $08
	ld   [$0808], sp                                 ; $7f90: $08 $08 $08
	ld   [$0808], sp                                 ; $7f93: $08 $08 $08
	ld   [$0808], sp                                 ; $7f96: $08 $08 $08
	ld   [$0808], sp                                 ; $7f99: $08 $08 $08
	ld   [$0808], sp                                 ; $7f9c: $08 $08 $08
	ld   [$0808], sp                                 ; $7f9f: $08 $08 $08
	ld   [$0808], sp                                 ; $7fa2: $08 $08 $08
	ld   [$0808], sp                                 ; $7fa5: $08 $08 $08
	ld   [$0808], sp                                 ; $7fa8: $08 $08 $08
	ld   [$0808], sp                                 ; $7fab: $08 $08 $08
	ld   [$0808], sp                                 ; $7fae: $08 $08 $08
	ld   [$0808], sp                                 ; $7fb1: $08 $08 $08
	ld   [$0808], sp                                 ; $7fb4: $08 $08 $08
	ld   [$0808], sp                                 ; $7fb7: $08 $08 $08
	ld   [$0808], sp                                 ; $7fba: $08 $08 $08
	ld   [$0808], sp                                 ; $7fbd: $08 $08 $08
	ld   [$0808], sp                                 ; $7fc0: $08 $08 $08
	ld   [$0808], sp                                 ; $7fc3: $08 $08 $08
	ld   [$0808], sp                                 ; $7fc6: $08 $08 $08
	ld   [$0808], sp                                 ; $7fc9: $08 $08 $08
	ld   [$0808], sp                                 ; $7fcc: $08 $08 $08
	ld   [$0808], sp                                 ; $7fcf: $08 $08 $08
	ld   [$0808], sp                                 ; $7fd2: $08 $08 $08
	ld   [$0808], sp                                 ; $7fd5: $08 $08 $08
	ld   [$0808], sp                                 ; $7fd8: $08 $08 $08
	ld   [$0808], sp                                 ; $7fdb: $08 $08 $08
	ld   [$0808], sp                                 ; $7fde: $08 $08 $08
	ld   [$0808], sp                                 ; $7fe1: $08 $08 $08
	ld   [$0808], sp                                 ; $7fe4: $08 $08 $08
	ld   [$0808], sp                                 ; $7fe7: $08 $08 $08
	ld   [$0808], sp                                 ; $7fea: $08 $08 $08
	ld   [$0808], sp                                 ; $7fed: $08 $08 $08
	ld   [$0808], sp                                 ; $7ff0: $08 $08 $08
	ld   [$0808], sp                                 ; $7ff3: $08 $08 $08
	ld   [$0808], sp                                 ; $7ff6: $08 $08 $08
	ld   [$0808], sp                                 ; $7ff9: $08 $08 $08
	ld   [$0808], sp                                 ; $7ffc: $08 $08 $08

Jump_029_7fff:
	db   $08                                         ; $7fff: $08
