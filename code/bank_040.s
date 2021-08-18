; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

	db   $e4                                         ; $4000: $e4
	nop                                              ; $4001: $00
	ld   de, $0022                                   ; $4002: $11 $22 $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	db   $e4                                         ; $4008: $e4
	ld   bc, $4541                                   ; $4009: $01 $41 $45
	ld   d, c                                        ; $400c: $51
	ccf                                              ; $400d: $3f
	ld   bc, $e400                                   ; $400e: $01 $00 $e4
	ld   [bc], a                                     ; $4011: $02
	ld   hl, $6e45                                   ; $4012: $21 $45 $6e
	nop                                              ; $4015: $00
	ld   [bc], a                                     ; $4016: $02
	nop                                              ; $4017: $00
	db   $e4                                         ; $4018: $e4
	inc  bc                                          ; $4019: $03
	ld   b, c                                        ; $401a: $41
	ld   h, a                                        ; $401b: $67
	add  b                                           ; $401c: $80
	ld   bc, $0002                                   ; $401d: $01 $02 $00
	db   $e4                                         ; $4020: $e4
	inc  b                                           ; $4021: $04
	ld   hl, $8067                                   ; $4022: $21 $67 $80
	ld   [bc], a                                     ; $4025: $02
	ld   [bc], a                                     ; $4026: $02
	nop                                              ; $4027: $00
	db   $e4                                         ; $4028: $e4
	dec  b                                           ; $4029: $05
	ld   bc, $0011                                   ; $402a: $01 $11 $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	db   $e4                                         ; $4031: $e4
	ld   b, $39                                      ; $4032: $06 $39
	ld   d, [hl]                                     ; $4034: $56
	ld   sp, hl                                      ; $4035: $f9
	ld   a, [de]                                     ; $4036: $1a
	ld   [bc], a                                     ; $4037: $02
	jr   z, jr_040_409e                              ; $4038: $28 $64

	rlca                                             ; $403a: $07
	ld   hl, $7027                                   ; $403b: $21 $27 $70
	dec  e                                           ; $403e: $1d
	ld   [bc], a                                     ; $403f: $02
	nop                                              ; $4040: $00
	ld   h, h                                        ; $4041: $64
	ld   [$2711], sp                                 ; $4042: $08 $11 $27
	ld   sp, $021e                                   ; $4045: $31 $1e $02
	nop                                              ; $4048: $00
	ld   h, h                                        ; $4049: $64
	add  hl, bc                                      ; $404a: $09
	ld   sp, $f327                                   ; $404b: $31 $27 $f3
	ld   e, $02                                      ; $404e: $1e $02
	nop                                              ; $4050: $00
	ld   h, h                                        ; $4051: $64
	ld   a, [bc]                                     ; $4052: $0a
	ld   d, c                                        ; $4053: $51
	daa                                              ; $4054: $27
	or   e                                           ; $4055: $b3
	rra                                              ; $4056: $1f
	ld   [bc], a                                     ; $4057: $02
	nop                                              ; $4058: $00
	ld   h, h                                        ; $4059: $64
	dec  bc                                          ; $405a: $0b
	ld   h, c                                        ; $405b: $61
	daa                                              ; $405c: $27
	ld   a, b                                        ; $405d: $78
	jr   nz, jr_040_4062                             ; $405e: $20 $02

	nop                                              ; $4060: $00
	ld   h, h                                        ; $4061: $64

jr_040_4062:
	inc  c                                           ; $4062: $0c
	ld   b, c                                        ; $4063: $41
	daa                                              ; $4064: $27
	ld   a, [hl-]                                    ; $4065: $3a
	ld   hl, $0002                                   ; $4066: $21 $02 $00
	ld   h, h                                        ; $4069: $64
	dec  c                                           ; $406a: $0d
	pop  hl                                          ; $406b: $e1
	daa                                              ; $406c: $27
	db   $f4                                         ; $406d: $f4
	ld   hl, $0002                                   ; $406e: $21 $02 $00
	ld   h, h                                        ; $4071: $64
	ld   c, $91                                      ; $4072: $0e $91
	daa                                              ; $4074: $27
	nop                                              ; $4075: $00
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	ld   e, $e4                                      ; $4078: $1e $e4
	rrca                                             ; $407a: $0f
	ld   h, c                                        ; $407b: $61
	daa                                              ; $407c: $27
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	db   $e4                                         ; $4081: $e4
	db   $10                                         ; $4082: $10
	ld   sp, $0027                                   ; $4083: $31 $27 $00
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	nop                                              ; $4088: $00
	db   $e4                                         ; $4089: $e4
	ld   de, $2741                                   ; $408a: $11 $41 $27
	nop                                              ; $408d: $00
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	db   $e4                                         ; $4091: $e4
	ld   [de], a                                     ; $4092: $12
	ld   d, c                                        ; $4093: $51
	daa                                              ; $4094: $27
	nop                                              ; $4095: $00
	nop                                              ; $4096: $00
	nop                                              ; $4097: $00
	nop                                              ; $4098: $00
	db   $e4                                         ; $4099: $e4
	inc  de                                          ; $409a: $13
	ld   hl, $0027                                   ; $409b: $21 $27 $00

jr_040_409e:
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	db   $e4                                         ; $40a1: $e4
	inc  d                                           ; $40a2: $14
	ld   de, $0027                                   ; $40a3: $11 $27 $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	db   $e4                                         ; $40a9: $e4
	dec  d                                           ; $40aa: $15
	pop  de                                          ; $40ab: $d1
	inc  [hl]                                        ; $40ac: $34
	call c, $0306                                    ; $40ad: $dc $06 $03
	dec  c                                           ; $40b0: $0d
	db   $e4                                         ; $40b1: $e4
	ld   d, $11                                      ; $40b2: $16 $11
	ld   b, a                                        ; $40b4: $47
	nop                                              ; $40b5: $00
	nop                                              ; $40b6: $00
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	db   $e4                                         ; $40b9: $e4
	rla                                              ; $40ba: $17
	pop  de                                          ; $40bb: $d1
	ld   d, [hl]                                     ; $40bc: $56
	ld   b, a                                        ; $40bd: $47
	dec  c                                           ; $40be: $0d
	inc  bc                                          ; $40bf: $03
	dec  c                                           ; $40c0: $0d
	db   $e4                                         ; $40c1: $e4
	jr   jr_040_4125                                 ; $40c2: $18 $61

	ld   b, a                                        ; $40c4: $47
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	db   $e4                                         ; $40c9: $e4
	add  hl, de                                      ; $40ca: $19
	ld   sp, $0047                                   ; $40cb: $31 $47 $00
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	db   $e4                                         ; $40d1: $e4
	ld   a, [de]                                     ; $40d2: $1a
	ld   b, c                                        ; $40d3: $41
	ld   b, a                                        ; $40d4: $47
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	db   $e4                                         ; $40d9: $e4
	dec  de                                          ; $40da: $1b
	ld   d, c                                        ; $40db: $51
	ld   b, a                                        ; $40dc: $47
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	db   $e4                                         ; $40e1: $e4
	inc  e                                           ; $40e2: $1c
	ld   hl, $0047                                   ; $40e3: $21 $47 $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	db   $e4                                         ; $40e9: $e4
	dec  e                                           ; $40ea: $1d
	ld   d, c                                        ; $40eb: $51
	ld   h, a                                        ; $40ec: $67
	nop                                              ; $40ed: $00
	nop                                              ; $40ee: $00
	nop                                              ; $40ef: $00
	nop                                              ; $40f0: $00
	db   $e4                                         ; $40f1: $e4
	ld   e, $61                                      ; $40f2: $1e $61
	ld   h, a                                        ; $40f4: $67
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	db   $e4                                         ; $40f9: $e4
	rra                                              ; $40fa: $1f
	ld   sp, $5a67                                   ; $40fb: $31 $67 $5a
	dec  l                                           ; $40fe: $2d
	inc  bc                                          ; $40ff: $03
	nop                                              ; $4100: $00
	db   $e4                                         ; $4101: $e4
	jr   nz, jr_040_4145                             ; $4102: $20 $41

	ld   h, a                                        ; $4104: $67
	nop                                              ; $4105: $00
	nop                                              ; $4106: $00
	nop                                              ; $4107: $00
	nop                                              ; $4108: $00
	db   $e4                                         ; $4109: $e4
	ld   hl, $6721                                   ; $410a: $21 $21 $67
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	db   $e4                                         ; $4111: $e4
	ld   [hl+], a                                    ; $4112: $22
	ld   de, $0067                                   ; $4113: $11 $67 $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	ld   h, h                                        ; $4119: $64
	inc  hl                                          ; $411a: $23
	pop  bc                                          ; $411b: $c1
	daa                                              ; $411c: $27
	ld   h, e                                        ; $411d: $63
	dec  sp                                          ; $411e: $3b
	inc  bc                                          ; $411f: $03
	nop                                              ; $4120: $00
	ld   h, h                                        ; $4121: $64
	inc  h                                           ; $4122: $24
	pop  de                                          ; $4123: $d1
	scf                                              ; $4124: $37

jr_040_4125:
	add  h                                           ; $4125: $84
	ccf                                              ; $4126: $3f
	inc  bc                                          ; $4127: $03
	nop                                              ; $4128: $00
	ld   h, h                                        ; $4129: $64
	dec  h                                           ; $412a: $25
	ld   hl, $0027                                   ; $412b: $21 $27 $00
	nop                                              ; $412e: $00
	nop                                              ; $412f: $00
	nop                                              ; $4130: $00
	ld   h, h                                        ; $4131: $64
	ld   h, $11                                      ; $4132: $26 $11
	daa                                              ; $4134: $27
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	nop                                              ; $4138: $00
	ld   h, h                                        ; $4139: $64
	daa                                              ; $413a: $27
	ld   sp, $0027                                   ; $413b: $31 $27 $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	ld   h, h                                        ; $4141: $64
	jr   z, @+$43                                    ; $4142: $28 $41

	daa                                              ; $4144: $27

jr_040_4145:
	nop                                              ; $4145: $00
	nop                                              ; $4146: $00
	nop                                              ; $4147: $00
	nop                                              ; $4148: $00
	ld   h, h                                        ; $4149: $64
	add  hl, hl                                      ; $414a: $29
	ld   h, c                                        ; $414b: $61
	daa                                              ; $414c: $27
	nop                                              ; $414d: $00
	nop                                              ; $414e: $00
	nop                                              ; $414f: $00
	nop                                              ; $4150: $00
	ld   h, h                                        ; $4151: $64
	ld   a, [hl+]                                    ; $4152: $2a
	ld   d, c                                        ; $4153: $51
	daa                                              ; $4154: $27
	nop                                              ; $4155: $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	nop                                              ; $4158: $00
	ld   h, h                                        ; $4159: $64
	dec  hl                                          ; $415a: $2b
	pop  hl                                          ; $415b: $e1
	rla                                              ; $415c: $17
	ld   e, $0b                                      ; $415d: $1e $0b
	inc  b                                           ; $415f: $04
	stop                                             ; $4160: $10 $00
	db   $e4                                         ; $4162: $e4
	inc  l                                           ; $4163: $2c
	ld   bc, $1e27                                   ; $4164: $01 $27 $1e
	dec  c                                           ; $4167: $0d
	inc  b                                           ; $4168: $04
	ld   bc, $2d64                                   ; $4169: $01 $64 $2d
	ld   bc, $0027                                   ; $416c: $01 $27 $00
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	ld   bc, $6400                                   ; $4171: $01 $00 $64
	ld   l, $61                                      ; $4174: $2e $61
	daa                                              ; $4176: $27
	cpl                                              ; $4177: $2f
	rrca                                             ; $4178: $0f
	inc  b                                           ; $4179: $04
	nop                                              ; $417a: $00
	ld   h, h                                        ; $417b: $64
	cpl                                              ; $417c: $2f
	ld   d, c                                        ; $417d: $51
	daa                                              ; $417e: $27
	push hl                                          ; $417f: $e5
	add  hl, de                                      ; $4180: $19
	inc  b                                           ; $4181: $04
	nop                                              ; $4182: $00
	ld   h, h                                        ; $4183: $64
	jr   nc, jr_040_41c7                             ; $4184: $30 $41

	daa                                              ; $4186: $27
	ld   [hl], c                                     ; $4187: $71
	inc  hl                                          ; $4188: $23
	inc  b                                           ; $4189: $04
	nop                                              ; $418a: $00
	ld   h, h                                        ; $418b: $64
	ld   sp, $2731                                   ; $418c: $31 $31 $27
	sub  b                                           ; $418f: $90
	dec  l                                           ; $4190: $2d
	inc  b                                           ; $4191: $04
	nop                                              ; $4192: $00
	ld   h, h                                        ; $4193: $64
	ld   [hl-], a                                    ; $4194: $32
	ld   hl, $5b27                                   ; $4195: $21 $27 $5b
	scf                                              ; $4198: $37
	inc  b                                           ; $4199: $04
	nop                                              ; $419a: $00
	ld   h, h                                        ; $419b: $64
	inc  sp                                          ; $419c: $33
	ld   de, $8d27                                   ; $419d: $11 $27 $8d
	inc  bc                                          ; $41a0: $03
	dec  b                                           ; $41a1: $05
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	db   $e4                                         ; $41a5: $e4
	inc  [hl]                                        ; $41a6: $34
	ld   bc, $0022                                   ; $41a7: $01 $22 $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	ld   bc, $35e4                                   ; $41ac: $01 $e4 $35
	ld   sp, $7756                                   ; $41af: $31 $56 $77
	ld   c, $05                                      ; $41b2: $0e $05
	nop                                              ; $41b4: $00
	nop                                              ; $41b5: $00
	db   $e4                                         ; $41b6: $e4
	ld   [hl], $29                                   ; $41b7: $36 $29
	inc  [hl]                                        ; $41b9: $34
	ld   d, d                                        ; $41ba: $52
	rrca                                             ; $41bb: $0f
	dec  b                                           ; $41bc: $05
	nop                                              ; $41bd: $00
	db   $e4                                         ; $41be: $e4
	scf                                              ; $41bf: $37
	ld   l, c                                        ; $41c0: $69
	ld   d, [hl]                                     ; $41c1: $56
	ld   b, a                                        ; $41c2: $47
	ld   [de], a                                     ; $41c3: $12
	dec  b                                           ; $41c4: $05
	nop                                              ; $41c5: $00
	ld   h, h                                        ; $41c6: $64

jr_040_41c7:
	jr   c, jr_040_41ea                              ; $41c7: $38 $21

	daa                                              ; $41c9: $27
	ret  c                                           ; $41ca: $d8

	dec  d                                           ; $41cb: $15
	dec  b                                           ; $41cc: $05
	nop                                              ; $41cd: $00
	ld   h, h                                        ; $41ce: $64
	add  hl, sp                                      ; $41cf: $39
	ld   de, $9927                                   ; $41d0: $11 $27 $99
	ld   d, $05                                      ; $41d3: $16 $05
	nop                                              ; $41d5: $00
	ld   h, h                                        ; $41d6: $64
	ld   a, [hl-]                                    ; $41d7: $3a
	ld   sp, $5b27                                   ; $41d8: $31 $27 $5b
	rla                                              ; $41db: $17
	dec  b                                           ; $41dc: $05
	nop                                              ; $41dd: $00
	ld   h, h                                        ; $41de: $64
	dec  sp                                          ; $41df: $3b
	ld   d, c                                        ; $41e0: $51
	daa                                              ; $41e1: $27
	dec  de                                          ; $41e2: $1b
	jr   jr_040_41ea                                 ; $41e3: $18 $05

	nop                                              ; $41e5: $00
	ld   h, h                                        ; $41e6: $64
	inc  a                                           ; $41e7: $3c
	ld   h, c                                        ; $41e8: $61
	daa                                              ; $41e9: $27

jr_040_41ea:
	ldh  [rAUD2LOW], a                               ; $41ea: $e0 $18
	dec  b                                           ; $41ec: $05
	nop                                              ; $41ed: $00
	ld   h, h                                        ; $41ee: $64
	dec  a                                           ; $41ef: $3d
	ld   b, c                                        ; $41f0: $41
	daa                                              ; $41f1: $27
	and  d                                           ; $41f2: $a2
	add  hl, de                                      ; $41f3: $19
	dec  b                                           ; $41f4: $05
	nop                                              ; $41f5: $00
	ld   h, h                                        ; $41f6: $64
	ld   a, $91                                      ; $41f7: $3e $91
	daa                                              ; $41f9: $27
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	ld   e, $e4                                      ; $41fd: $1e $e4
	ccf                                              ; $41ff: $3f
	ld   h, c                                        ; $4200: $61
	inc  h                                           ; $4201: $24
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	jr   nz, @-$1a                                   ; $4205: $20 $e4

	ld   b, b                                        ; $4207: $40
	ld   sp, $0024                                   ; $4208: $31 $24 $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	rra                                              ; $420d: $1f
	db   $e4                                         ; $420e: $e4
	ld   b, c                                        ; $420f: $41
	ld   b, c                                        ; $4210: $41
	inc  h                                           ; $4211: $24
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	nop                                              ; $4214: $00
	inc  c                                           ; $4215: $0c
	ld   h, h                                        ; $4216: $64
	ld   b, d                                        ; $4217: $42
	pop  hl                                          ; $4218: $e1
	daa                                              ; $4219: $27
	ld   h, d                                        ; $421a: $62
	ld   sp, $0005                                   ; $421b: $31 $05 $00
	db   $e4                                         ; $421e: $e4
	ld   b, e                                        ; $421f: $43
	ld   d, c                                        ; $4220: $51
	inc  h                                           ; $4221: $24
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	inc  d                                           ; $4225: $14
	db   $e4                                         ; $4226: $e4
	ld   b, h                                        ; $4227: $44
	ld   hl, $0024                                   ; $4228: $21 $24 $00
	nop                                              ; $422b: $00
	nop                                              ; $422c: $00
	nop                                              ; $422d: $00
	db   $e4                                         ; $422e: $e4
	ld   b, l                                        ; $422f: $45
	ld   de, $0024                                   ; $4230: $11 $24 $00
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	ld   [hl+], a                                    ; $4235: $22
	db   $e4                                         ; $4236: $e4
	ld   b, [hl]                                     ; $4237: $46
	pop  bc                                          ; $4238: $c1
	inc  [hl]                                        ; $4239: $34
	ei                                               ; $423a: $fb
	dec  b                                           ; $423b: $05
	ld   b, $0d                                      ; $423c: $06 $0d
	db   $e4                                         ; $423e: $e4
	ld   b, a                                        ; $423f: $47
	pop  de                                          ; $4240: $d1
	ld   d, [hl]                                     ; $4241: $56
	and  $06                                         ; $4242: $e6 $06
	ld   b, $0d                                      ; $4244: $06 $0d
	db   $e4                                         ; $4246: $e4
	ld   c, b                                        ; $4247: $48
	ld   hl, $0034                                   ; $4248: $21 $34 $00
	nop                                              ; $424b: $00
	nop                                              ; $424c: $00
	rrca                                             ; $424d: $0f
	db   $e4                                         ; $424e: $e4
	ld   c, c                                        ; $424f: $49
	ld   h, c                                        ; $4250: $61
	ld   b, l                                        ; $4251: $45
	nop                                              ; $4252: $00
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	inc  bc                                          ; $4255: $03
	db   $e4                                         ; $4256: $e4
	ld   c, d                                        ; $4257: $4a
	ld   sp, $0045                                   ; $4258: $31 $45 $00
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	ld   a, [hl+]                                    ; $425d: $2a
	db   $e4                                         ; $425e: $e4
	ld   c, e                                        ; $425f: $4b
	ld   b, c                                        ; $4260: $41
	ld   b, l                                        ; $4261: $45
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	db   $e4                                         ; $4266: $e4
	ld   c, h                                        ; $4267: $4c
	ld   d, c                                        ; $4268: $51
	ld   b, l                                        ; $4269: $45
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	db   $e4                                         ; $426e: $e4
	ld   c, l                                        ; $426f: $4d
	ld   de, $0045                                   ; $4270: $11 $45 $00

jr_040_4273:
	nop                                              ; $4273: $00
	nop                                              ; $4274: $00
	dec  l                                           ; $4275: $2d
	db   $e4                                         ; $4276: $e4
	ld   c, [hl]                                     ; $4277: $4e
	pop  de                                          ; $4278: $d1
	ld   b, a                                        ; $4279: $47
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	dec  c                                           ; $427d: $0d
	db   $e4                                         ; $427e: $e4
	ld   c, a                                        ; $427f: $4f
	ld   h, c                                        ; $4280: $61
	ld   d, [hl]                                     ; $4281: $56
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	rrca                                             ; $4285: $0f
	db   $e4                                         ; $4286: $e4
	ld   d, b                                        ; $4287: $50
	ld   sp, $0056                                   ; $4288: $31 $56 $00
	nop                                              ; $428b: $00
	nop                                              ; $428c: $00
	jr   z, jr_040_4273                              ; $428d: $28 $e4

	ld   d, c                                        ; $428f: $51
	ld   b, c                                        ; $4290: $41
	ld   d, [hl]                                     ; $4291: $56
	ld   [hl], b                                     ; $4292: $70
	inc  l                                           ; $4293: $2c
	ld   b, $00                                      ; $4294: $06 $00
	db   $e4                                         ; $4296: $e4
	ld   d, d                                        ; $4297: $52
	ld   d, c                                        ; $4298: $51
	ld   d, [hl]                                     ; $4299: $56
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	dec  d                                           ; $429d: $15
	db   $e4                                         ; $429e: $e4
	ld   d, e                                        ; $429f: $53
	ld   hl, $0056                                   ; $42a0: $21 $56 $00
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	db   $e4                                         ; $42a6: $e4
	ld   d, h                                        ; $42a7: $54
	ld   de, $0056                                   ; $42a8: $11 $56 $00
	nop                                              ; $42ab: $00
	nop                                              ; $42ac: $00
	ld   a, [de]                                     ; $42ad: $1a
	ld   h, h                                        ; $42ae: $64
	ld   d, l                                        ; $42af: $55
	pop  de                                          ; $42b0: $d1
	daa                                              ; $42b1: $27
	ld   b, h                                        ; $42b2: $44
	inc  [hl]                                        ; $42b3: $34
	ld   b, $00                                      ; $42b4: $06 $00
	ld   h, h                                        ; $42b6: $64
	ld   d, [hl]                                     ; $42b7: $56
	pop  bc                                          ; $42b8: $c1
	scf                                              ; $42b9: $37
	ld   l, h                                        ; $42ba: $6c
	jr   c, jr_040_42c3                              ; $42bb: $38 $06

	nop                                              ; $42bd: $00
	db   $e4                                         ; $42be: $e4
	ld   d, a                                        ; $42bf: $57
	ld   sp, $0046                                   ; $42c0: $31 $46 $00

jr_040_42c3:
	nop                                              ; $42c3: $00
	nop                                              ; $42c4: $00
	nop                                              ; $42c5: $00
	db   $e4                                         ; $42c6: $e4
	ld   e, b                                        ; $42c7: $58
	ld   hl, $0056                                   ; $42c8: $21 $56 $00
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	nop                                              ; $42cd: $00
	db   $e4                                         ; $42ce: $e4
	ld   e, c                                        ; $42cf: $59
	ld   de, $0056                                   ; $42d0: $11 $56 $00
	nop                                              ; $42d3: $00
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	db   $e4                                         ; $42d6: $e4
	ld   e, d                                        ; $42d7: $5a
	ld   b, c                                        ; $42d8: $41
	ld   d, [hl]                                     ; $42d9: $56
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	db   $e4                                         ; $42de: $e4
	ld   e, e                                        ; $42df: $5b
	ld   h, c                                        ; $42e0: $61
	ld   d, [hl]                                     ; $42e1: $56
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	db   $e4                                         ; $42e6: $e4
	ld   e, h                                        ; $42e7: $5c
	ld   d, c                                        ; $42e8: $51
	ld   d, [hl]                                     ; $42e9: $56
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	ld   h, h                                        ; $42ee: $64
	ld   e, l                                        ; $42ef: $5d
	ld   hl, $0027                                   ; $42f0: $21 $27 $00
	nop                                              ; $42f3: $00
	nop                                              ; $42f4: $00
	nop                                              ; $42f5: $00
	ld   h, h                                        ; $42f6: $64
	ld   e, [hl]                                     ; $42f7: $5e
	ld   de, $0027                                   ; $42f8: $11 $27 $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	ld   h, h                                        ; $42fe: $64
	ld   e, a                                        ; $42ff: $5f
	ld   sp, $0027                                   ; $4300: $31 $27 $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	ld   h, h                                        ; $4306: $64
	ld   h, b                                        ; $4307: $60
	ld   b, c                                        ; $4308: $41
	daa                                              ; $4309: $27
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	nop                                              ; $430d: $00
	ld   h, h                                        ; $430e: $64
	ld   h, c                                        ; $430f: $61
	ld   h, c                                        ; $4310: $61
	daa                                              ; $4311: $27
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	ld   h, h                                        ; $4316: $64
	ld   h, d                                        ; $4317: $62
	ld   d, c                                        ; $4318: $51
	daa                                              ; $4319: $27
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	ld   h, h                                        ; $431e: $64
	ld   h, e                                        ; $431f: $63
	pop  hl                                          ; $4320: $e1
	rla                                              ; $4321: $17
	ld   d, c                                        ; $4322: $51
	ld   a, [bc]                                     ; $4323: $0a
	rlca                                             ; $4324: $07
	stop                                             ; $4325: $10 $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	db   $e4                                         ; $4329: $e4
	ld   h, h                                        ; $432a: $64
	ld   bc, $5827                                   ; $432b: $01 $27 $58
	inc  c                                           ; $432e: $0c
	rlca                                             ; $432f: $07
	ld   bc, $65e4                                   ; $4330: $01 $e4 $65
	ld   bc, $b427                                   ; $4333: $01 $27 $b4
	inc  c                                           ; $4336: $0c
	rlca                                             ; $4337: $07
	ld   bc, $66e4                                   ; $4338: $01 $e4 $66
	ld   bc, $0022                                   ; $433b: $01 $22 $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	ld   bc, $e400                                   ; $4340: $01 $00 $e4
	ld   h, a                                        ; $4343: $67
	sub  c                                           ; $4344: $91
	rla                                              ; $4345: $17
	ld   a, a                                        ; $4346: $7f
	dec  c                                           ; $4347: $0d
	rlca                                             ; $4348: $07
	nop                                              ; $4349: $00
	ld   h, h                                        ; $434a: $64
	ld   l, b                                        ; $434b: $68
	ld   bc, $3827                                   ; $434c: $01 $27 $38
	rla                                              ; $434f: $17
	rlca                                             ; $4350: $07
	nop                                              ; $4351: $00
	ld   h, h                                        ; $4352: $64
	ld   l, c                                        ; $4353: $69
	ld   h, c                                        ; $4354: $61
	daa                                              ; $4355: $27
	sub  h                                           ; $4356: $94
	rla                                              ; $4357: $17
	rlca                                             ; $4358: $07
	nop                                              ; $4359: $00
	ld   h, h                                        ; $435a: $64
	ld   l, d                                        ; $435b: $6a
	ld   d, c                                        ; $435c: $51
	daa                                              ; $435d: $27
	jp   z, $0722                                    ; $435e: $ca $22 $07

	nop                                              ; $4361: $00
	ld   h, h                                        ; $4362: $64
	ld   l, e                                        ; $4363: $6b
	ld   b, c                                        ; $4364: $41
	daa                                              ; $4365: $27
	ld   c, c                                        ; $4366: $49
	dec  l                                           ; $4367: $2d
	rlca                                             ; $4368: $07
	nop                                              ; $4369: $00
	ld   h, h                                        ; $436a: $64
	ld   l, h                                        ; $436b: $6c
	ld   sp, $2727                                   ; $436c: $31 $27 $27
	jr   c, jr_040_4378                              ; $436f: $38 $07

	nop                                              ; $4371: $00
	ld   h, h                                        ; $4372: $64
	ld   l, l                                        ; $4373: $6d
	ld   hl, $0f27                                   ; $4374: $21 $27 $0f
	inc  bc                                          ; $4377: $03

jr_040_4378:
	ld   [$6400], sp                                 ; $4378: $08 $00 $64
	ld   l, [hl]                                     ; $437b: $6e
	ld   de, $cc27                                   ; $437c: $11 $27 $cc
	rrca                                             ; $437f: $0f
	ld   [rRAMG], sp                                 ; $4380: $08 $00 $00
	nop                                              ; $4383: $00
	db   $e4                                         ; $4384: $e4
	ld   l, a                                        ; $4385: $6f
	ld   bc, $0022                                   ; $4386: $01 $22 $00
	nop                                              ; $4389: $00
	nop                                              ; $438a: $00
	ld   bc, $70e4                                   ; $438b: $01 $e4 $70
	ld   d, c                                        ; $438e: $51
	ld   h, a                                        ; $438f: $67
	add  c                                           ; $4390: $81
	ld   a, [de]                                     ; $4391: $1a

jr_040_4392:
	ld   [$e400], sp                                 ; $4392: $08 $00 $e4
	ld   [hl], c                                     ; $4395: $71
	ld   d, c                                        ; $4396: $51
	inc  h                                           ; $4397: $24
	adc  a                                           ; $4398: $8f
	rra                                              ; $4399: $1f
	ld   [rRAMG], sp                                 ; $439a: $08 $00 $00
	db   $e4                                         ; $439d: $e4
	ld   [hl], d                                     ; $439e: $72
	ld   c, c                                        ; $439f: $49
	inc  [hl]                                        ; $43a0: $34
	rst  ToBoot                                         ; $43a1: $c7
	dec  h                                           ; $43a2: $25
	ld   [$e41b], sp                                 ; $43a3: $08 $1b $e4
	ld   [hl], e                                     ; $43a6: $73
	add  hl, hl                                      ; $43a7: $29
	inc  [hl]                                        ; $43a8: $34
	xor  l                                           ; $43a9: $ad
	ld   h, $08                                      ; $43aa: $26 $08
	jr   z, jr_040_4392                              ; $43ac: $28 $e4

	ld   [hl], h                                     ; $43ae: $74
	ld   l, c                                        ; $43af: $69
	ld   b, l                                        ; $43b0: $45
	ld   h, $28                                      ; $43b1: $26 $28
	ld   [$e42a], sp                                 ; $43b3: $08 $2a $e4
	ld   [hl], l                                     ; $43b6: $75
	add  hl, sp                                      ; $43b7: $39
	ld   b, l                                        ; $43b8: $45
	rst  $30                                         ; $43b9: $f7
	inc  l                                           ; $43ba: $2c
	ld   [$e42a], sp                                 ; $43bb: $08 $2a $e4
	halt                                             ; $43be: $76
	ld   c, c                                        ; $43bf: $49
	ld   d, [hl]                                     ; $43c0: $56
	call z, $082d                                    ; $43c1: $cc $2d $08
	dec  de                                          ; $43c4: $1b
	db   $e4                                         ; $43c5: $e4
	ld   [hl], a                                     ; $43c6: $77
	add  hl, hl                                      ; $43c7: $29
	ld   d, [hl]                                     ; $43c8: $56
	jp   $0830                                       ; $43c9: $c3 $30 $08


	jr   z, @-$1a                                    ; $43cc: $28 $e4

	ld   a, b                                        ; $43ce: $78
	add  hl, de                                      ; $43cf: $19
	ld   d, [hl]                                     ; $43d0: $56
	inc  a                                           ; $43d1: $3c
	ld   [hl-], a                                    ; $43d2: $32
	ld   [$6403], sp                                 ; $43d3: $08 $03 $64
	ld   a, c                                        ; $43d6: $79
	ld   hl, $9f27                                   ; $43d7: $21 $27 $9f
	ld   [hl-], a                                    ; $43da: $32
	ld   [$6400], sp                                 ; $43db: $08 $00 $64
	ld   a, d                                        ; $43de: $7a
	ld   de, $6027                                   ; $43df: $11 $27 $60
	inc  sp                                          ; $43e2: $33
	ld   [$6400], sp                                 ; $43e3: $08 $00 $64
	ld   a, e                                        ; $43e6: $7b
	ld   sp, $2227                                   ; $43e7: $31 $27 $22
	inc  [hl]                                        ; $43ea: $34
	ld   [$6400], sp                                 ; $43eb: $08 $00 $64
	ld   a, h                                        ; $43ee: $7c
	ld   d, c                                        ; $43ef: $51
	daa                                              ; $43f0: $27
	ldh  [c], a                                      ; $43f1: $e2
	inc  [hl]                                        ; $43f2: $34
	ld   [$6400], sp                                 ; $43f3: $08 $00 $64
	ld   a, l                                        ; $43f6: $7d
	ld   h, c                                        ; $43f7: $61
	daa                                              ; $43f8: $27
	and  a                                           ; $43f9: $a7
	dec  [hl]                                        ; $43fa: $35
	ld   [$6400], sp                                 ; $43fb: $08 $00 $64
	ld   a, [hl]                                     ; $43fe: $7e
	ld   b, c                                        ; $43ff: $41
	daa                                              ; $4400: $27
	ld   l, c                                        ; $4401: $69
	ld   [hl], $08                                   ; $4402: $36 $08
	nop                                              ; $4404: $00
	ld   h, h                                        ; $4405: $64
	ld   a, a                                        ; $4406: $7f
	sub  c                                           ; $4407: $91
	daa                                              ; $4408: $27
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	ld   e, $e4                                      ; $440c: $1e $e4
	add  b                                           ; $440e: $80
	ld   h, c                                        ; $440f: $61
	inc  hl                                          ; $4410: $23
	ld   [hl-], a                                    ; $4411: $32
	ld   [bc], a                                     ; $4412: $02
	add  hl, bc                                      ; $4413: $09
	ld   d, $e4                                      ; $4414: $16 $e4
	add  c                                           ; $4416: $81
	ld   sp, $5724                                   ; $4417: $31 $24 $57
	inc  bc                                          ; $441a: $03
	add  hl, bc                                      ; $441b: $09
	rla                                              ; $441c: $17
	db   $e4                                         ; $441d: $e4
	add  d                                           ; $441e: $82
	ld   b, c                                        ; $441f: $41
	inc  h                                           ; $4420: $24
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	db   $e4                                         ; $4425: $e4
	add  e                                           ; $4426: $83
	ld   d, c                                        ; $4427: $51
	inc  h                                           ; $4428: $24
	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	nop                                              ; $442b: $00
	dec  h                                           ; $442c: $25
	db   $e4                                         ; $442d: $e4
	add  h                                           ; $442e: $84
	ld   hl, $0924                                   ; $442f: $21 $24 $09
	ld   a, [bc]                                     ; $4432: $0a
	add  hl, bc                                      ; $4433: $09
	nop                                              ; $4434: $00
	db   $e4                                         ; $4435: $e4
	add  l                                           ; $4436: $85
	ld   de, $0024                                   ; $4437: $11 $24 $00
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	db   $e4                                         ; $443d: $e4
	add  [hl]                                        ; $443e: $86
	ld   h, c                                        ; $443f: $61
	dec  [hl]                                        ; $4440: $35
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	rrca                                             ; $4444: $0f
	db   $e4                                         ; $4445: $e4
	add  a                                           ; $4446: $87
	ld   b, c                                        ; $4447: $41
	ld   b, l                                        ; $4448: $45
	nop                                              ; $4449: $00
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	db   $e4                                         ; $444d: $e4
	adc  b                                           ; $444e: $88
	ld   d, c                                        ; $444f: $51
	ld   b, l                                        ; $4450: $45
	call z, $0912                                    ; $4451: $cc $12 $09
	dec  d                                           ; $4454: $15
	db   $e4                                         ; $4455: $e4
	adc  c                                           ; $4456: $89
	ld   hl, $0045                                   ; $4457: $21 $45 $00
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	inc  e                                           ; $445c: $1c
	db   $e4                                         ; $445d: $e4
	adc  d                                           ; $445e: $8a
	ld   de, $4f45                                   ; $445f: $11 $45 $4f
	ld   d, $09                                      ; $4462: $16 $09
	ld   a, [de]                                     ; $4464: $1a
	db   $e4                                         ; $4465: $e4
	adc  e                                           ; $4466: $8b
	ld   sp, $0067                                   ; $4467: $31 $67 $00
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	rla                                              ; $446c: $17
	db   $e4                                         ; $446d: $e4
	adc  h                                           ; $446e: $8c
	ld   d, c                                        ; $446f: $51
	ld   h, a                                        ; $4470: $67
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	dec  d                                           ; $4474: $15
	db   $e4                                         ; $4475: $e4
	adc  l                                           ; $4476: $8d
	ld   sp, $0045                                   ; $4477: $31 $45 $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	db   $e4                                         ; $447d: $e4
	adc  [hl]                                        ; $447e: $8e
	ld   h, c                                        ; $447f: $61
	ld   d, a                                        ; $4480: $57
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	ld   d, $e4                                      ; $4484: $16 $e4
	adc  a                                           ; $4486: $8f
	ld   b, c                                        ; $4487: $41
	ld   h, a                                        ; $4488: $67
	jp   c, $0920                                    ; $4489: $da $20 $09

	dec  de                                          ; $448c: $1b
	db   $e4                                         ; $448d: $e4
	sub  b                                           ; $448e: $90
	ld   hl, $f867                                   ; $448f: $21 $67 $f8
	ld   hl, $1c09                                   ; $4492: $21 $09 $1c
	db   $e4                                         ; $4495: $e4
	sub  c                                           ; $4496: $91
	ld   de, $af67                                   ; $4497: $11 $67 $af
	inc  hl                                          ; $449a: $23
	add  hl, bc                                      ; $449b: $09
	nop                                              ; $449c: $00
	ld   h, h                                        ; $449d: $64
	sub  d                                           ; $449e: $92
	ld   hl, $0027                                   ; $449f: $21 $27 $00
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	nop                                              ; $44a4: $00
	ld   h, h                                        ; $44a5: $64
	sub  e                                           ; $44a6: $93
	ld   de, $0027                                   ; $44a7: $11 $27 $00
	nop                                              ; $44aa: $00
	nop                                              ; $44ab: $00
	nop                                              ; $44ac: $00
	ld   h, h                                        ; $44ad: $64
	sub  h                                           ; $44ae: $94
	ld   sp, $0027                                   ; $44af: $31 $27 $00
	nop                                              ; $44b2: $00
	nop                                              ; $44b3: $00
	nop                                              ; $44b4: $00
	ld   h, h                                        ; $44b5: $64
	sub  l                                           ; $44b6: $95
	ld   b, c                                        ; $44b7: $41
	daa                                              ; $44b8: $27
	nop                                              ; $44b9: $00
	nop                                              ; $44ba: $00
	nop                                              ; $44bb: $00
	nop                                              ; $44bc: $00
	ld   h, h                                        ; $44bd: $64
	sub  [hl]                                        ; $44be: $96
	ld   h, c                                        ; $44bf: $61
	daa                                              ; $44c0: $27
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	ld   h, h                                        ; $44c5: $64
	sub  a                                           ; $44c6: $97
	ld   d, c                                        ; $44c7: $51
	daa                                              ; $44c8: $27
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	db   $e4                                         ; $44ce: $e4
	sbc  b                                           ; $44cf: $98
	ld   bc, $0022                                   ; $44d0: $01 $22 $00
	nop                                              ; $44d3: $00
	nop                                              ; $44d4: $00
	ld   bc, $99e4                                   ; $44d5: $01 $e4 $99
	ld   sp, $0845                                   ; $44d8: $31 $45 $08
	cpl                                              ; $44db: $2f
	add  hl, bc                                      ; $44dc: $09
	nop                                              ; $44dd: $00
	db   $e4                                         ; $44de: $e4
	sbc  d                                           ; $44df: $9a
	ld   de, $fd45                                   ; $44e0: $11 $45 $fd
	cpl                                              ; $44e3: $2f
	add  hl, bc                                      ; $44e4: $09
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	db   $e4                                         ; $44e8: $e4
	sbc  e                                           ; $44e9: $9b
	sub  c                                           ; $44ea: $91
	nop                                              ; $44eb: $00
	nop                                              ; $44ec: $00
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	db   $e4                                         ; $44f0: $e4
	sbc  h                                           ; $44f1: $9c
	ld   h, c                                        ; $44f2: $61
	inc  hl                                          ; $44f3: $23
	xor  [hl]                                        ; $44f4: $ae
	dec  b                                           ; $44f5: $05
	ld   a, [bc]                                     ; $44f6: $0a
	nop                                              ; $44f7: $00
	db   $e4                                         ; $44f8: $e4
	sbc  l                                           ; $44f9: $9d
	ld   sp, $9f23                                   ; $44fa: $31 $23 $9f
	ld   b, $0a                                      ; $44fd: $06 $0a
	nop                                              ; $44ff: $00
	db   $e4                                         ; $4500: $e4
	sbc  [hl]                                        ; $4501: $9e
	ld   h, c                                        ; $4502: $61
	dec  [hl]                                        ; $4503: $35
	and  d                                           ; $4504: $a2
	rlca                                             ; $4505: $07
	ld   a, [bc]                                     ; $4506: $0a
	nop                                              ; $4507: $00
	db   $e4                                         ; $4508: $e4
	sbc  a                                           ; $4509: $9f
	ld   b, c                                        ; $450a: $41
	ld   d, [hl]                                     ; $450b: $56
	ld   a, [hl]                                     ; $450c: $7e
	ld   [$010a], sp                                 ; $450d: $08 $0a $01
	db   $e4                                         ; $4510: $e4
	and  b                                           ; $4511: $a0
	ld   d, c                                        ; $4512: $51
	ld   d, [hl]                                     ; $4513: $56
	ld   d, h                                        ; $4514: $54
	add  hl, bc                                      ; $4515: $09
	ld   a, [bc]                                     ; $4516: $0a
	ld   bc, $a1e4                                   ; $4517: $01 $e4 $a1
	ld   hl, $4267                                   ; $451a: $21 $67 $42
	ld   a, [bc]                                     ; $451d: $0a
	ld   a, [bc]                                     ; $451e: $0a
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	ld   h, h                                        ; $4521: $64
	rlca                                             ; $4522: $07
	ld   hl, $7007                                   ; $4523: $21 $07 $70
	dec  e                                           ; $4526: $1d
	ld   [bc], a                                     ; $4527: $02
	nop                                              ; $4528: $00
	ld   h, h                                        ; $4529: $64
	ld   [$0711], sp                                 ; $452a: $08 $11 $07
	ld   sp, $021e                                   ; $452d: $31 $1e $02
	nop                                              ; $4530: $00
	ld   h, h                                        ; $4531: $64
	add  hl, bc                                      ; $4532: $09
	ld   sp, $f307                                   ; $4533: $31 $07 $f3
	ld   e, $02                                      ; $4536: $1e $02
	nop                                              ; $4538: $00
	ld   h, h                                        ; $4539: $64
	ld   a, [bc]                                     ; $453a: $0a
	ld   d, c                                        ; $453b: $51
	rlca                                             ; $453c: $07
	or   e                                           ; $453d: $b3
	rra                                              ; $453e: $1f
	ld   [bc], a                                     ; $453f: $02
	nop                                              ; $4540: $00
	ld   h, h                                        ; $4541: $64
	dec  bc                                          ; $4542: $0b
	ld   h, c                                        ; $4543: $61
	rlca                                             ; $4544: $07
	ld   a, b                                        ; $4545: $78
	jr   nz, jr_040_454a                             ; $4546: $20 $02

	nop                                              ; $4548: $00
	ld   h, h                                        ; $4549: $64

jr_040_454a:
	inc  c                                           ; $454a: $0c
	ld   b, c                                        ; $454b: $41
	rlca                                             ; $454c: $07
	ld   a, [hl-]                                    ; $454d: $3a
	ld   hl, $0002                                   ; $454e: $21 $02 $00
	ld   h, h                                        ; $4551: $64
	dec  c                                           ; $4552: $0d
	pop  hl                                          ; $4553: $e1
	rlca                                             ; $4554: $07
	db   $f4                                         ; $4555: $f4
	ld   hl, $0002                                   ; $4556: $21 $02 $00
	ld   h, h                                        ; $4559: $64
	ld   c, $91                                      ; $455a: $0e $91
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	ld   e, $64                                      ; $4560: $1e $64
	and  d                                           ; $4562: $a2
	sub  c                                           ; $4563: $91
	rla                                              ; $4564: $17
	nop                                              ; $4565: $00
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	ld   e, $e4                                      ; $4568: $1e $e4
	and  e                                           ; $456a: $a3
	pop  bc                                          ; $456b: $c1
	ld   [de], a                                     ; $456c: $12
	ld   [hl], l                                     ; $456d: $75
	dec  de                                          ; $456e: $1b
	ld   a, [bc]                                     ; $456f: $0a
	dec  c                                           ; $4570: $0d
	db   $e4                                         ; $4571: $e4
	and  h                                           ; $4572: $a4
	ld   h, c                                        ; $4573: $61
	inc  de                                          ; $4574: $13
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	db   $e4                                         ; $4579: $e4
	and  l                                           ; $457a: $a5
	ld   sp, $0013                                   ; $457b: $31 $13 $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	db   $e4                                         ; $4581: $e4
	and  [hl]                                        ; $4582: $a6
	ld   b, c                                        ; $4583: $41
	inc  de                                          ; $4584: $13
	nop                                              ; $4585: $00
	nop                                              ; $4586: $00
	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	db   $e4                                         ; $4589: $e4
	and  a                                           ; $458a: $a7
	ld   d, c                                        ; $458b: $51
	inc  de                                          ; $458c: $13
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	nop                                              ; $4590: $00
	db   $e4                                         ; $4591: $e4
	xor  b                                           ; $4592: $a8
	ld   hl, $0013                                   ; $4593: $21 $13 $00
	nop                                              ; $4596: $00
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	db   $e4                                         ; $4599: $e4
	xor  c                                           ; $459a: $a9
	ld   de, $ea12                                   ; $459b: $11 $12 $ea

jr_040_459e:
	ld   sp, $000a                                   ; $459e: $31 $0a $00
	db   $e4                                         ; $45a1: $e4
	xor  d                                           ; $45a2: $aa
	pop  bc                                          ; $45a3: $c1
	inc  [hl]                                        ; $45a4: $34
	daa                                              ; $45a5: $27
	ld   a, $0a                                      ; $45a6: $3e $0a
	dec  c                                           ; $45a8: $0d
	db   $e4                                         ; $45a9: $e4
	xor  e                                           ; $45aa: $ab
	ld   d, c                                        ; $45ab: $51
	ld   [hl], a                                     ; $45ac: $77
	nop                                              ; $45ad: $00
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	db   $e4                                         ; $45b1: $e4
	xor  h                                           ; $45b2: $ac
	ld   hl, $0077                                   ; $45b3: $21 $77 $00
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	jr   nz, jr_040_459e                             ; $45b8: $20 $e4

	xor  l                                           ; $45ba: $ad
	ld   h, c                                        ; $45bb: $61
	ld   [hl], a                                     ; $45bc: $77
	nop                                              ; $45bd: $00
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	rrca                                             ; $45c0: $0f
	db   $e4                                         ; $45c1: $e4
	xor  [hl]                                        ; $45c2: $ae
	ld   de, $0077                                   ; $45c3: $11 $77 $00
	nop                                              ; $45c6: $00
	nop                                              ; $45c7: $00
	nop                                              ; $45c8: $00
	db   $e4                                         ; $45c9: $e4
	xor  a                                           ; $45ca: $af
	ld   sp, $0077                                   ; $45cb: $31 $77 $00
	nop                                              ; $45ce: $00
	nop                                              ; $45cf: $00
	inc  bc                                          ; $45d0: $03
	db   $e4                                         ; $45d1: $e4
	or   b                                           ; $45d2: $b0
	ld   b, c                                        ; $45d3: $41
	ld   [hl], a                                     ; $45d4: $77
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	nop                                              ; $45d8: $00
	db   $e4                                         ; $45d9: $e4
	or   c                                           ; $45da: $b1
	ld   h, c                                        ; $45db: $61
	dec  [hl]                                        ; $45dc: $35
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	rrca                                             ; $45e0: $0f
	db   $e4                                         ; $45e1: $e4
	or   d                                           ; $45e2: $b2
	ld   sp, $0034                                   ; $45e3: $31 $34 $00
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	db   $e4                                         ; $45e9: $e4
	or   e                                           ; $45ea: $b3
	ld   b, c                                        ; $45eb: $41
	dec  [hl]                                        ; $45ec: $35
	nop                                              ; $45ed: $00
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	nop                                              ; $45f0: $00
	db   $e4                                         ; $45f1: $e4
	or   h                                           ; $45f2: $b4
	ld   d, c                                        ; $45f3: $51
	dec  [hl]                                        ; $45f4: $35
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	db   $e4                                         ; $45f9: $e4
	or   l                                           ; $45fa: $b5
	ld   hl, $0035                                   ; $45fb: $21 $35 $00
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	ld   [de], a                                     ; $4600: $12
	db   $e4                                         ; $4601: $e4
	or   [hl]                                        ; $4602: $b6
	ld   de, $0035                                   ; $4603: $11 $35 $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	db   $e4                                         ; $4609: $e4
	or   a                                           ; $460a: $b7
	pop  de                                          ; $460b: $d1
	ld   b, l                                        ; $460c: $45
	ld   a, $15                                      ; $460d: $3e $15
	inc  c                                           ; $460f: $0c
	dec  c                                           ; $4610: $0d
	db   $e4                                         ; $4611: $e4
	cp   b                                           ; $4612: $b8
	ld   b, c                                        ; $4613: $41
	ld   b, [hl]                                     ; $4614: $46
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	db   $e4                                         ; $4619: $e4
	cp   c                                           ; $461a: $b9
	ld   h, c                                        ; $461b: $61
	ld   d, [hl]                                     ; $461c: $56
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	db   $e4                                         ; $4621: $e4
	cp   d                                           ; $4622: $ba
	ld   sp, $0056                                   ; $4623: $31 $56 $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	db   $e4                                         ; $4629: $e4
	cp   e                                           ; $462a: $bb
	ld   d, c                                        ; $462b: $51
	ld   d, [hl]                                     ; $462c: $56
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	db   $e4                                         ; $4631: $e4
	cp   h                                           ; $4632: $bc
	ld   hl, $0056                                   ; $4633: $21 $56 $00
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	nop                                              ; $4638: $00
	db   $e4                                         ; $4639: $e4
	cp   l                                           ; $463a: $bd
	ld   de, $9056                                   ; $463b: $11 $56 $90
	jr   nc, jr_040_464c                             ; $463e: $30 $0c

	nop                                              ; $4640: $00
	ld   h, h                                        ; $4641: $64
	inc  hl                                          ; $4642: $23
	pop  bc                                          ; $4643: $c1
	rlca                                             ; $4644: $07
	ld   h, e                                        ; $4645: $63
	dec  sp                                          ; $4646: $3b
	inc  bc                                          ; $4647: $03
	nop                                              ; $4648: $00
	ld   h, h                                        ; $4649: $64
	inc  h                                           ; $464a: $24
	pop  de                                          ; $464b: $d1

jr_040_464c:
	rlca                                             ; $464c: $07
	add  h                                           ; $464d: $84
	ccf                                              ; $464e: $3f
	inc  bc                                          ; $464f: $03
	nop                                              ; $4650: $00
	ld   h, h                                        ; $4651: $64
	dec  h                                           ; $4652: $25
	ld   hl, $0000                                   ; $4653: $21 $00 $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	ld   h, h                                        ; $4659: $64
	ld   h, $11                                      ; $465a: $26 $11
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	ld   h, h                                        ; $4661: $64
	daa                                              ; $4662: $27
	ld   sp, $0000                                   ; $4663: $31 $00 $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	ld   h, h                                        ; $4669: $64
	jr   z, jr_040_46ad                              ; $466a: $28 $41

	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	ld   h, h                                        ; $4671: $64
	add  hl, hl                                      ; $4672: $29
	ld   h, c                                        ; $4673: $61
	nop                                              ; $4674: $00
	nop                                              ; $4675: $00
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	nop                                              ; $4678: $00
	ld   h, h                                        ; $4679: $64
	ld   a, [hl+]                                    ; $467a: $2a
	ld   d, c                                        ; $467b: $51
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	ld   h, h                                        ; $4681: $64
	cp   [hl]                                        ; $4682: $be
	ld   hl, $0017                                   ; $4683: $21 $17 $00
	nop                                              ; $4686: $00
	nop                                              ; $4687: $00
	nop                                              ; $4688: $00
	ld   h, h                                        ; $4689: $64
	cp   a                                           ; $468a: $bf
	ld   de, $0017                                   ; $468b: $11 $17 $00
	nop                                              ; $468e: $00
	nop                                              ; $468f: $00
	nop                                              ; $4690: $00
	ld   h, h                                        ; $4691: $64
	ret  nz                                          ; $4692: $c0

	ld   sp, $0017                                   ; $4693: $31 $17 $00
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	ld   h, h                                        ; $4699: $64
	pop  bc                                          ; $469a: $c1
	ld   b, c                                        ; $469b: $41
	rla                                              ; $469c: $17
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	nop                                              ; $46a0: $00
	ld   h, h                                        ; $46a1: $64
	jp   nz, $1761                                   ; $46a2: $c2 $61 $17

	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	ld   h, h                                        ; $46a9: $64
	jp   $1751                                       ; $46aa: $c3 $51 $17


jr_040_46ad:
	nop                                              ; $46ad: $00
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	ld   h, h                                        ; $46b1: $64
	dec  hl                                          ; $46b2: $2b
	pop  hl                                          ; $46b3: $e1
	rlca                                             ; $46b4: $07
	ld   e, $0b                                      ; $46b5: $1e $0b
	inc  b                                           ; $46b7: $04
	stop                                             ; $46b8: $10 $00
	db   $e4                                         ; $46ba: $e4
	inc  l                                           ; $46bb: $2c
	ld   bc, $1e07                                   ; $46bc: $01 $07 $1e
	dec  c                                           ; $46bf: $0d
	inc  b                                           ; $46c0: $04
	ld   bc, $6400                                   ; $46c1: $01 $00 $64
	ld   l, $61                                      ; $46c4: $2e $61
	rlca                                             ; $46c6: $07
	cpl                                              ; $46c7: $2f
	rrca                                             ; $46c8: $0f
	inc  b                                           ; $46c9: $04
	nop                                              ; $46ca: $00
	ld   h, h                                        ; $46cb: $64
	cpl                                              ; $46cc: $2f
	ld   d, c                                        ; $46cd: $51
	rlca                                             ; $46ce: $07
	push hl                                          ; $46cf: $e5
	add  hl, de                                      ; $46d0: $19
	inc  b                                           ; $46d1: $04
	nop                                              ; $46d2: $00
	ld   h, h                                        ; $46d3: $64
	jr   nc, jr_040_4717                             ; $46d4: $30 $41

	rlca                                             ; $46d6: $07
	ld   [hl], c                                     ; $46d7: $71
	inc  hl                                          ; $46d8: $23
	inc  b                                           ; $46d9: $04
	nop                                              ; $46da: $00
	ld   h, h                                        ; $46db: $64
	ld   sp, $0731                                   ; $46dc: $31 $31 $07
	sub  b                                           ; $46df: $90
	dec  l                                           ; $46e0: $2d
	inc  b                                           ; $46e1: $04
	nop                                              ; $46e2: $00
	ld   h, h                                        ; $46e3: $64
	ld   [hl-], a                                    ; $46e4: $32
	ld   hl, $5b07                                   ; $46e5: $21 $07 $5b
	scf                                              ; $46e8: $37
	inc  b                                           ; $46e9: $04
	nop                                              ; $46ea: $00
	ld   h, h                                        ; $46eb: $64
	inc  sp                                          ; $46ec: $33
	ld   de, $8d07                                   ; $46ed: $11 $07 $8d
	inc  bc                                          ; $46f0: $03
	dec  b                                           ; $46f1: $05
	nop                                              ; $46f2: $00
	nop                                              ; $46f3: $00
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	db   $e4                                         ; $46f6: $e4
	call nz, $3429                                   ; $46f7: $c4 $29 $34
	ld   c, e                                        ; $46fa: $4b
	inc  a                                           ; $46fb: $3c
	inc  c                                           ; $46fc: $0c
	ld   [de], a                                     ; $46fd: $12
	ld   h, h                                        ; $46fe: $64
	jr   c, jr_040_4722                              ; $46ff: $38 $21

	rlca                                             ; $4701: $07
	ret  c                                           ; $4702: $d8

	dec  d                                           ; $4703: $15
	dec  b                                           ; $4704: $05
	nop                                              ; $4705: $00
	ld   h, h                                        ; $4706: $64
	add  hl, sp                                      ; $4707: $39
	ld   de, $9907                                   ; $4708: $11 $07 $99
	ld   d, $05                                      ; $470b: $16 $05
	nop                                              ; $470d: $00
	ld   h, h                                        ; $470e: $64
	ld   a, [hl-]                                    ; $470f: $3a
	ld   sp, $5b07                                   ; $4710: $31 $07 $5b
	rla                                              ; $4713: $17
	dec  b                                           ; $4714: $05
	nop                                              ; $4715: $00
	ld   h, h                                        ; $4716: $64

jr_040_4717:
	dec  sp                                          ; $4717: $3b
	ld   d, c                                        ; $4718: $51
	rlca                                             ; $4719: $07
	dec  de                                          ; $471a: $1b
	jr   jr_040_4722                                 ; $471b: $18 $05

	nop                                              ; $471d: $00
	ld   h, h                                        ; $471e: $64
	inc  a                                           ; $471f: $3c
	ld   h, c                                        ; $4720: $61
	rlca                                             ; $4721: $07

jr_040_4722:
	ldh  [rAUD2LOW], a                               ; $4722: $e0 $18
	dec  b                                           ; $4724: $05
	nop                                              ; $4725: $00
	ld   h, h                                        ; $4726: $64
	dec  a                                           ; $4727: $3d
	ld   b, c                                        ; $4728: $41
	rlca                                             ; $4729: $07
	and  d                                           ; $472a: $a2
	add  hl, de                                      ; $472b: $19
	dec  b                                           ; $472c: $05
	nop                                              ; $472d: $00
	ld   h, h                                        ; $472e: $64
	ld   a, $91                                      ; $472f: $3e $91
	nop                                              ; $4731: $00
	nop                                              ; $4732: $00
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	ld   e, $64                                      ; $4735: $1e $64
	ld   b, d                                        ; $4737: $42
	pop  hl                                          ; $4738: $e1
	rlca                                             ; $4739: $07
	ld   h, d                                        ; $473a: $62
	ld   sp, $0005                                   ; $473b: $31 $05 $00
	ld   h, h                                        ; $473e: $64
	push bc                                          ; $473f: $c5
	sub  c                                           ; $4740: $91
	rla                                              ; $4741: $17
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	ld   e, $e4                                      ; $4745: $1e $e4
	add  $d1                                         ; $4747: $c6 $d1
	ld   [de], a                                     ; $4749: $12
	xor  d                                           ; $474a: $aa
	rrca                                             ; $474b: $0f
	dec  c                                           ; $474c: $0d
	dec  c                                           ; $474d: $0d
	db   $e4                                         ; $474e: $e4
	rst  ToBoot                                         ; $474f: $c7
	ld   h, c                                        ; $4750: $61
	ld   [de], a                                     ; $4751: $12
	cpl                                              ; $4752: $2f
	db   $10                                         ; $4753: $10
	dec  c                                           ; $4754: $0d
	nop                                              ; $4755: $00
	db   $e4                                         ; $4756: $e4
	ret  z                                           ; $4757: $c8

	ld   sp, $0012                                   ; $4758: $31 $12 $00
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	inc  d                                           ; $475d: $14
	db   $e4                                         ; $475e: $e4
	ret                                              ; $475f: $c9


	ld   b, c                                        ; $4760: $41
	ld   [de], a                                     ; $4761: $12
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	add  hl, bc                                      ; $4765: $09
	db   $e4                                         ; $4766: $e4
	jp   z, $1251                                    ; $4767: $ca $51 $12

	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	dec  d                                           ; $476d: $15
	db   $e4                                         ; $476e: $e4
	sla  c                                           ; $476f: $cb $21
	inc  de                                          ; $4771: $13
	nop                                              ; $4772: $00
	nop                                              ; $4773: $00
	nop                                              ; $4774: $00
	nop                                              ; $4775: $00
	db   $e4                                         ; $4776: $e4
	call z, $35d1                                    ; $4777: $cc $d1 $35
	ld   h, d                                        ; $477a: $62
	ld   [hl+], a                                    ; $477b: $22
	dec  c                                           ; $477c: $0d
	dec  c                                           ; $477d: $0d
	db   $e4                                         ; $477e: $e4
	call $3451                                       ; $477f: $cd $51 $34
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	db   $e4                                         ; $4786: $e4
	adc  $11                                         ; $4787: $ce $11
	inc  [hl]                                        ; $4789: $34
	sub  [hl]                                        ; $478a: $96
	jr   z, @+$0f                                    ; $478b: $28 $0d

	ld   [hl+], a                                    ; $478d: $22
	db   $e4                                         ; $478e: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $478f: $cf
	ld   sp, $3e77                                   ; $4790: $31 $77 $3e
	inc  l                                           ; $4793: $2c
	dec  c                                           ; $4794: $0d
	inc  bc                                          ; $4795: $03
	db   $e4                                         ; $4796: $e4
	ret  nc                                          ; $4797: $d0

	ld   de, $f077                                   ; $4798: $11 $77 $f0
	inc  sp                                          ; $479b: $33
	dec  c                                           ; $479c: $0d
	nop                                              ; $479d: $00
	db   $e4                                         ; $479e: $e4
	pop  de                                          ; $479f: $d1
	ld   b, c                                        ; $47a0: $41
	ld   [hl], a                                     ; $47a1: $77
	sbc  a                                           ; $47a2: $9f

jr_040_47a3:
	dec  sp                                          ; $47a3: $3b
	dec  c                                           ; $47a4: $0d
	nop                                              ; $47a5: $00
	db   $e4                                         ; $47a6: $e4
	jp   nc, $7761                           ; $47a7: $d2 $61 $77

	db   $db                                         ; $47aa: $db
	ld   b, $0e                                      ; $47ab: $06 $0e
	rrca                                             ; $47ad: $0f
	db   $e4                                         ; $47ae: $e4
	db   $d3                                         ; $47af: $d3
	ld   d, c                                        ; $47b0: $51
	ld   [hl], a                                     ; $47b1: $77
	sub  e                                           ; $47b2: $93
	rrca                                             ; $47b3: $0f
	ld   c, $00                                      ; $47b4: $0e $00
	db   $e4                                         ; $47b6: $e4
	call nc, $7721                           ; $47b7: $d4 $21 $77
	dec  h                                           ; $47ba: $25
	ld   d, $0e                                      ; $47bb: $16 $0e
	jr   nz, jr_040_47a3                             ; $47bd: $20 $e4

	push de                                          ; $47bf: $d5
	ld   de, $0012                                   ; $47c0: $11 $12 $00
	nop                                              ; $47c3: $00
	nop                                              ; $47c4: $00
	ld   [hl+], a                                    ; $47c5: $22
	db   $e4                                         ; $47c6: $e4
	sub  $21                                         ; $47c7: $d6 $21
	inc  h                                           ; $47c9: $24
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	nop                                              ; $47cc: $00
	ld   a, [hl+]                                    ; $47cd: $2a
	db   $e4                                         ; $47ce: $e4
	rst  $10                                         ; $47cf: $d7
	ld   h, c                                        ; $47d0: $61
	inc  [hl]                                        ; $47d1: $34
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	db   $e4                                         ; $47d6: $e4
	ret  c                                           ; $47d7: $d8

	ld   sp, $0034                                   ; $47d8: $31 $34 $00
	nop                                              ; $47db: $00
	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	db   $e4                                         ; $47de: $e4
	reti                                             ; $47df: $d9


	ld   b, c                                        ; $47e0: $41
	inc  [hl]                                        ; $47e1: $34
	nop                                              ; $47e2: $00

jr_040_47e3:
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	db   $e4                                         ; $47e6: $e4
	jp   c, $57c1                            ; $47e7: $da $c1 $57

	rst  $30                                         ; $47ea: $f7
	ccf                                              ; $47eb: $3f
	ld   c, $0d                                      ; $47ec: $0e $0d
	db   $e4                                         ; $47ee: $e4
	db   $db                                         ; $47ef: $db
	pop  bc                                          ; $47f0: $c1
	dec  h                                           ; $47f1: $25
	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	nop                                              ; $47f4: $00
	dec  c                                           ; $47f5: $0d
	db   $e4                                         ; $47f6: $e4
	call c, $4561                                    ; $47f7: $dc $61 $45
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	jr   z, jr_040_47e3                              ; $47fd: $28 $e4

	db   $dd                                         ; $47ff: $dd
	ld   sp, $0045                                   ; $4800: $31 $45 $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	db   $e4                                         ; $4806: $e4
	sbc  $41                                         ; $4807: $de $41
	ld   b, l                                        ; $4809: $45
	sub  b                                           ; $480a: $90
	ld   a, [bc]                                     ; $480b: $0a
	rrca                                             ; $480c: $0f
	dec  de                                          ; $480d: $1b
	db   $e4                                         ; $480e: $e4
	rst  JumpTable                                         ; $480f: $df
	ld   d, c                                        ; $4810: $51
	ld   b, l                                        ; $4811: $45
	ld   sp, hl                                      ; $4812: $f9
	inc  c                                           ; $4813: $0c
	rrca                                             ; $4814: $0f
	inc  c                                           ; $4815: $0c
	db   $e4                                         ; $4816: $e4
	ldh  [rAUD4ENV], a                               ; $4817: $e0 $21
	ld   b, l                                        ; $4819: $45
	ld   c, h                                        ; $481a: $4c
	ld   de, $1d0f                                   ; $481b: $11 $0f $1d
	db   $e4                                         ; $481e: $e4
	pop  hl                                          ; $481f: $e1
	ld   de, $2d45                                   ; $4820: $11 $45 $2d
	dec  d                                           ; $4823: $15
	rrca                                             ; $4824: $0f
	nop                                              ; $4825: $00
	ld   h, h                                        ; $4826: $64
	ld   d, l                                        ; $4827: $55
	pop  de                                          ; $4828: $d1
	rlca                                             ; $4829: $07
	ld   b, h                                        ; $482a: $44
	inc  [hl]                                        ; $482b: $34
	ld   b, $00                                      ; $482c: $06 $00
	ld   h, h                                        ; $482e: $64
	ld   d, [hl]                                     ; $482f: $56
	pop  bc                                          ; $4830: $c1
	rlca                                             ; $4831: $07
	ld   l, h                                        ; $4832: $6c
	jr   c, jr_040_483b                              ; $4833: $38 $06

	nop                                              ; $4835: $00
	ld   h, h                                        ; $4836: $64
	ldh  [c], a                                      ; $4837: $e2
	ld   hl, $0016                                   ; $4838: $21 $16 $00

jr_040_483b:
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	ld   h, h                                        ; $483e: $64
	db   $e3                                         ; $483f: $e3
	ld   de, $0016                                   ; $4840: $11 $16 $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	ld   h, h                                        ; $4846: $64
	db   $e4                                         ; $4847: $e4
	ld   sp, $0016                                   ; $4848: $31 $16 $00
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	ld   h, h                                        ; $484e: $64
	push hl                                          ; $484f: $e5
	ld   b, c                                        ; $4850: $41
	ld   d, $00                                      ; $4851: $16 $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	ld   h, h                                        ; $4856: $64
	and  $61                                         ; $4857: $e6 $61
	ld   d, $00                                      ; $4859: $16 $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	ld   h, h                                        ; $485e: $64
	rst  $20                                         ; $485f: $e7
	ld   d, c                                        ; $4860: $51
	ld   d, $00                                      ; $4861: $16 $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	db   $e4                                         ; $4866: $e4
	add  sp, $21                                     ; $4867: $e8 $21
	ld   [hl], a                                     ; $4869: $77
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	db   $e4                                         ; $486e: $e4
	jp   hl                                          ; $486f: $e9


	ld   de, $0077                                   ; $4870: $11 $77 $00
	nop                                              ; $4873: $00
	nop                                              ; $4874: $00
	nop                                              ; $4875: $00
	db   $e4                                         ; $4876: $e4
	ld   [$7731], a                                  ; $4877: $ea $31 $77
	nop                                              ; $487a: $00
	nop                                              ; $487b: $00
	nop                                              ; $487c: $00
	nop                                              ; $487d: $00
	db   $e4                                         ; $487e: $e4
	db   $eb                                         ; $487f: $eb
	ld   b, c                                        ; $4880: $41
	ld   [hl], a                                     ; $4881: $77
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00
	db   $e4                                         ; $4886: $e4
	db   $ec                                         ; $4887: $ec
	ld   h, c                                        ; $4888: $61
	ld   [hl], a                                     ; $4889: $77
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	nop                                              ; $488d: $00
	db   $e4                                         ; $488e: $e4
	db   $ed                                         ; $488f: $ed
	ld   d, c                                        ; $4890: $51
	ld   [hl], a                                     ; $4891: $77
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	nop                                              ; $4894: $00
	nop                                              ; $4895: $00
	ld   h, h                                        ; $4896: $64
	ld   h, e                                        ; $4897: $63
	pop  hl                                          ; $4898: $e1
	rlca                                             ; $4899: $07
	ld   d, c                                        ; $489a: $51
	ld   a, [bc]                                     ; $489b: $0a
	rlca                                             ; $489c: $07
	stop                                             ; $489d: $10 $00
	nop                                              ; $489f: $00
	nop                                              ; $48a0: $00
	db   $e4                                         ; $48a1: $e4
	ld   h, h                                        ; $48a2: $64
	ld   bc, $5807                                   ; $48a3: $01 $07 $58
	inc  c                                           ; $48a6: $0c
	rlca                                             ; $48a7: $07
	ld   bc, $65e4                                   ; $48a8: $01 $e4 $65
	ld   bc, $b407                                   ; $48ab: $01 $07 $b4
	inc  c                                           ; $48ae: $0c
	rlca                                             ; $48af: $07
	ld   bc, $e400                                   ; $48b0: $01 $00 $e4
	ld   h, a                                        ; $48b3: $67
	sub  c                                           ; $48b4: $91
	nop                                              ; $48b5: $00
	ld   a, a                                        ; $48b6: $7f
	dec  c                                           ; $48b7: $0d
	rlca                                             ; $48b8: $07
	nop                                              ; $48b9: $00
	db   $e4                                         ; $48ba: $e4
	xor  $91                                         ; $48bb: $ee $91
	rla                                              ; $48bd: $17
	cp   l                                           ; $48be: $bd
	dec  h                                           ; $48bf: $25
	rrca                                             ; $48c0: $0f
	nop                                              ; $48c1: $00
	ld   h, h                                        ; $48c2: $64
	ld   l, b                                        ; $48c3: $68
	ld   bc, $3807                                   ; $48c4: $01 $07 $38
	rla                                              ; $48c7: $17
	rlca                                             ; $48c8: $07
	nop                                              ; $48c9: $00
	ld   h, h                                        ; $48ca: $64
	ld   l, c                                        ; $48cb: $69
	ld   h, c                                        ; $48cc: $61
	rlca                                             ; $48cd: $07
	sub  h                                           ; $48ce: $94
	rla                                              ; $48cf: $17
	rlca                                             ; $48d0: $07
	nop                                              ; $48d1: $00
	ld   h, h                                        ; $48d2: $64
	ld   l, d                                        ; $48d3: $6a
	ld   d, c                                        ; $48d4: $51
	rlca                                             ; $48d5: $07
	jp   z, $0722                                    ; $48d6: $ca $22 $07

	nop                                              ; $48d9: $00
	ld   h, h                                        ; $48da: $64
	ld   l, e                                        ; $48db: $6b
	ld   b, c                                        ; $48dc: $41
	rlca                                             ; $48dd: $07
	ld   c, c                                        ; $48de: $49
	dec  l                                           ; $48df: $2d
	rlca                                             ; $48e0: $07
	nop                                              ; $48e1: $00
	ld   h, h                                        ; $48e2: $64
	ld   l, h                                        ; $48e3: $6c
	ld   sp, $2707                                   ; $48e4: $31 $07 $27
	jr   c, jr_040_48f0                              ; $48e7: $38 $07

	nop                                              ; $48e9: $00
	ld   h, h                                        ; $48ea: $64
	ld   l, l                                        ; $48eb: $6d
	ld   hl, $0f07                                   ; $48ec: $21 $07 $0f
	inc  bc                                          ; $48ef: $03

jr_040_48f0:
	ld   [$6400], sp                                 ; $48f0: $08 $00 $64
	ld   l, [hl]                                     ; $48f3: $6e
	ld   de, $cc07                                   ; $48f4: $11 $07 $cc
	rrca                                             ; $48f7: $0f
	ld   [rRAMG], sp                                 ; $48f8: $08 $00 $00
	nop                                              ; $48fb: $00
	db   $e4                                         ; $48fc: $e4
	rst  $28                                         ; $48fd: $ef
	ld   sp, $d645                                   ; $48fe: $31 $45 $d6
	ld   l, $0f                                      ; $4901: $2e $0f
	nop                                              ; $4903: $00
	nop                                              ; $4904: $00
	db   $e4                                         ; $4905: $e4
	ldh  a, [rBCPD]                                  ; $4906: $f0 $69
	ld   [de], a                                     ; $4908: $12
	ld   d, h                                        ; $4909: $54
	ld   sp, $0e0f                                   ; $490a: $31 $0f $0e
	db   $e4                                         ; $490d: $e4
	pop  af                                          ; $490e: $f1
	add  hl, sp                                      ; $490f: $39
	ld   [de], a                                     ; $4910: $12
	ld   hl, sp+$38                                  ; $4911: $f8 $38
	rrca                                             ; $4913: $0f
	rla                                              ; $4914: $17
	db   $e4                                         ; $4915: $e4
	ldh  a, [c]                                      ; $4916: $f2
	ld   e, c                                        ; $4917: $59
	ld   [de], a                                     ; $4918: $12
	ld   de, $0f3a                                   ; $4919: $11 $3a $0f
	nop                                              ; $491c: $00
	db   $e4                                         ; $491d: $e4
	di                                               ; $491e: $f3
	add  hl, de                                      ; $491f: $19
	inc  de                                          ; $4920: $13
	pop  hl                                          ; $4921: $e1
	dec  sp                                          ; $4922: $3b
	rrca                                             ; $4923: $0f
	ld   a, [hl+]                                    ; $4924: $2a
	db   $e4                                         ; $4925: $e4
	db   $f4                                         ; $4926: $f4
	ld   l, c                                        ; $4927: $69
	inc  [hl]                                        ; $4928: $34
	ld   a, [hl-]                                    ; $4929: $3a
	nop                                              ; $492a: $00
	db   $10                                         ; $492b: $10
	jr   z, @-$1a                                    ; $492c: $28 $e4

	push af                                          ; $492e: $f5
	ld   c, c                                        ; $492f: $49
	ld   b, l                                        ; $4930: $45
	sbc  $03                                         ; $4931: $de $03
	db   $10                                         ; $4933: $10
	dec  de                                          ; $4934: $1b
	db   $e4                                         ; $4935: $e4
	or   $59                                         ; $4936: $f6 $59
	ld   b, l                                        ; $4938: $45
	or   h                                           ; $4939: $b4
	ld   c, $10                                      ; $493a: $0e $10
	dec  d                                           ; $493c: $15
	db   $e4                                         ; $493d: $e4
	rst  $30                                         ; $493e: $f7
	add  hl, hl                                      ; $493f: $29
	ld   d, [hl]                                     ; $4940: $56
	inc  l                                           ; $4941: $2c
	inc  d                                           ; $4942: $14
	db   $10                                         ; $4943: $10
	dec  hl                                          ; $4944: $2b
	ld   h, h                                        ; $4945: $64
	ld   a, c                                        ; $4946: $79
	ld   hl, $9f07                                   ; $4947: $21 $07 $9f
	ld   [hl-], a                                    ; $494a: $32
	ld   [$6400], sp                                 ; $494b: $08 $00 $64
	ld   a, d                                        ; $494e: $7a
	ld   de, $6007                                   ; $494f: $11 $07 $60
	inc  sp                                          ; $4952: $33
	ld   [$6400], sp                                 ; $4953: $08 $00 $64
	ld   a, e                                        ; $4956: $7b
	ld   sp, $2207                                   ; $4957: $31 $07 $22
	inc  [hl]                                        ; $495a: $34
	ld   [$6400], sp                                 ; $495b: $08 $00 $64
	ld   a, h                                        ; $495e: $7c
	ld   d, c                                        ; $495f: $51
	rlca                                             ; $4960: $07
	ldh  [c], a                                      ; $4961: $e2
	inc  [hl]                                        ; $4962: $34
	ld   [$6400], sp                                 ; $4963: $08 $00 $64
	ld   a, l                                        ; $4966: $7d
	ld   h, c                                        ; $4967: $61
	rlca                                             ; $4968: $07
	and  a                                           ; $4969: $a7
	dec  [hl]                                        ; $496a: $35
	ld   [$6400], sp                                 ; $496b: $08 $00 $64
	ld   a, [hl]                                     ; $496e: $7e
	ld   b, c                                        ; $496f: $41
	rlca                                             ; $4970: $07
	ld   l, c                                        ; $4971: $69
	ld   [hl], $08                                   ; $4972: $36 $08
	nop                                              ; $4974: $00
	ld   h, h                                        ; $4975: $64
	ld   a, a                                        ; $4976: $7f
	sub  c                                           ; $4977: $91
	nop                                              ; $4978: $00
	nop                                              ; $4979: $00
	nop                                              ; $497a: $00
	nop                                              ; $497b: $00
	ld   e, $64                                      ; $497c: $1e $64
	ld   hl, sp-$6f                                  ; $497e: $f8 $91
	rla                                              ; $4980: $17
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	nop                                              ; $4983: $00
	ld   e, $e4                                      ; $4984: $1e $e4
	ld   sp, hl                                      ; $4986: $f9
	ld   h, c                                        ; $4987: $61
	inc  de                                          ; $4988: $13
	nop                                              ; $4989: $00
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	ld   d, $e4                                      ; $498c: $16 $e4
	ld   a, [$1331]                                  ; $498e: $fa $31 $13
	nop                                              ; $4991: $00
	nop                                              ; $4992: $00
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	db   $e4                                         ; $4995: $e4
	ei                                               ; $4996: $fb
	ld   b, c                                        ; $4997: $41
	inc  de                                          ; $4998: $13
	nop                                              ; $4999: $00
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	dec  de                                          ; $499c: $1b
	db   $e4                                         ; $499d: $e4
	db   $fc                                         ; $499e: $fc
	ld   d, c                                        ; $499f: $51
	inc  de                                          ; $49a0: $13
	nop                                              ; $49a1: $00
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	inc  h                                           ; $49a4: $24
	db   $e4                                         ; $49a5: $e4
	db   $fd                                         ; $49a6: $fd
	ld   hl, $0013                                   ; $49a7: $21 $13 $00
	nop                                              ; $49aa: $00
	nop                                              ; $49ab: $00
	nop                                              ; $49ac: $00
	db   $e4                                         ; $49ad: $e4
	cp   $11                                         ; $49ae: $fe $11
	inc  de                                          ; $49b0: $13
	nop                                              ; $49b1: $00
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	inc  d                                           ; $49b4: $14
	db   $e4                                         ; $49b5: $e4
	rst  $38                                         ; $49b6: $ff
	ld   h, c                                        ; $49b7: $61
	dec  [hl]                                        ; $49b8: $35
	nop                                              ; $49b9: $00
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	inc  bc                                          ; $49bc: $03
	db   $e4                                         ; $49bd: $e4
	nop                                              ; $49be: $00
	ld   [hl-], a                                    ; $49bf: $32
	dec  [hl]                                        ; $49c0: $35
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	db   $e4                                         ; $49c5: $e4
	ld   bc, $3542                                   ; $49c6: $01 $42 $35
	nop                                              ; $49c9: $00
	nop                                              ; $49ca: $00
	nop                                              ; $49cb: $00
	ld   a, [bc]                                     ; $49cc: $0a
	db   $e4                                         ; $49cd: $e4
	ld   [bc], a                                     ; $49ce: $02
	ld   d, d                                        ; $49cf: $52
	dec  [hl]                                        ; $49d0: $35
	nop                                              ; $49d1: $00
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	ld   a, [hl+]                                    ; $49d4: $2a
	db   $e4                                         ; $49d5: $e4
	inc  bc                                          ; $49d6: $03
	ld   [hl+], a                                    ; $49d7: $22
	dec  [hl]                                        ; $49d8: $35
	nop                                              ; $49d9: $00
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	db   $e4                                         ; $49dd: $e4
	inc  b                                           ; $49de: $04
	ld   [de], a                                     ; $49df: $12
	dec  [hl]                                        ; $49e0: $35
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	inc  hl                                          ; $49e4: $23
	db   $e4                                         ; $49e5: $e4
	dec  b                                           ; $49e6: $05
	ld   h, d                                        ; $49e7: $62
	ld   d, a                                        ; $49e8: $57
	nop                                              ; $49e9: $00
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00
	add  hl, bc                                      ; $49ec: $09
	db   $e4                                         ; $49ed: $e4
	ld   b, $32                                      ; $49ee: $06 $32
	ld   d, a                                        ; $49f0: $57
	nop                                              ; $49f1: $00
	nop                                              ; $49f2: $00
	nop                                              ; $49f3: $00
	inc  d                                           ; $49f4: $14
	db   $e4                                         ; $49f5: $e4
	rlca                                             ; $49f6: $07
	ld   b, d                                        ; $49f7: $42
	ld   d, a                                        ; $49f8: $57
	nop                                              ; $49f9: $00
	nop                                              ; $49fa: $00
	nop                                              ; $49fb: $00
	dec  de                                          ; $49fc: $1b
	db   $e4                                         ; $49fd: $e4
	ld   [$5752], sp                                 ; $49fe: $08 $52 $57
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	rrca                                             ; $4a04: $0f
	db   $e4                                         ; $4a05: $e4
	add  hl, bc                                      ; $4a06: $09
	ld   [hl+], a                                    ; $4a07: $22
	ld   d, a                                        ; $4a08: $57
	nop                                              ; $4a09: $00
	nop                                              ; $4a0a: $00
	nop                                              ; $4a0b: $00
	nop                                              ; $4a0c: $00
	db   $e4                                         ; $4a0d: $e4
	ld   a, [bc]                                     ; $4a0e: $0a
	ld   [de], a                                     ; $4a0f: $12
	ld   d, a                                        ; $4a10: $57
	nop                                              ; $4a11: $00
	nop                                              ; $4a12: $00
	nop                                              ; $4a13: $00
	nop                                              ; $4a14: $00
	ld   h, h                                        ; $4a15: $64
	dec  bc                                          ; $4a16: $0b
	ld   [hl-], a                                    ; $4a17: $32
	inc  [hl]                                        ; $4a18: $34
	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	nop                                              ; $4a1b: $00
	nop                                              ; $4a1c: $00
	ld   h, h                                        ; $4a1d: $64
	inc  c                                           ; $4a1e: $0c
	ld   [hl+], a                                    ; $4a1f: $22
	ld   b, l                                        ; $4a20: $45
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	ld   h, h                                        ; $4a25: $64
	dec  c                                           ; $4a26: $0d
	ld   [de], a                                     ; $4a27: $12
	ld   b, l                                        ; $4a28: $45
	nop                                              ; $4a29: $00
	nop                                              ; $4a2a: $00
	nop                                              ; $4a2b: $00
	nop                                              ; $4a2c: $00
	ld   h, h                                        ; $4a2d: $64
	ld   c, $62                                      ; $4a2e: $0e $62
	ld   b, l                                        ; $4a30: $45
	nop                                              ; $4a31: $00
	nop                                              ; $4a32: $00
	nop                                              ; $4a33: $00
	nop                                              ; $4a34: $00
	ld   h, h                                        ; $4a35: $64
	rrca                                             ; $4a36: $0f
	ld   b, d                                        ; $4a37: $42
	ld   d, [hl]                                     ; $4a38: $56
	nop                                              ; $4a39: $00
	nop                                              ; $4a3a: $00
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	ld   h, h                                        ; $4a3d: $64
	db   $10                                         ; $4a3e: $10
	ld   d, d                                        ; $4a3f: $52
	ld   d, [hl]                                     ; $4a40: $56
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	ld   h, h                                        ; $4a45: $64
	sub  d                                           ; $4a46: $92
	ld   hl, $0000                                   ; $4a47: $21 $00 $00
	nop                                              ; $4a4a: $00
	nop                                              ; $4a4b: $00
	nop                                              ; $4a4c: $00
	ld   h, h                                        ; $4a4d: $64
	sub  e                                           ; $4a4e: $93
	ld   de, $0000                                   ; $4a4f: $11 $00 $00
	nop                                              ; $4a52: $00
	nop                                              ; $4a53: $00
	nop                                              ; $4a54: $00
	ld   h, h                                        ; $4a55: $64
	sub  h                                           ; $4a56: $94
	ld   sp, $0000                                   ; $4a57: $31 $00 $00
	nop                                              ; $4a5a: $00
	nop                                              ; $4a5b: $00
	nop                                              ; $4a5c: $00
	ld   h, h                                        ; $4a5d: $64
	sub  l                                           ; $4a5e: $95
	ld   b, c                                        ; $4a5f: $41
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	ld   h, h                                        ; $4a65: $64
	sub  [hl]                                        ; $4a66: $96
	ld   h, c                                        ; $4a67: $61
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	ld   h, h                                        ; $4a6d: $64
	sub  a                                           ; $4a6e: $97
	ld   d, c                                        ; $4a6f: $51
	nop                                              ; $4a70: $00
	nop                                              ; $4a71: $00
	nop                                              ; $4a72: $00
	nop                                              ; $4a73: $00
	nop                                              ; $4a74: $00
	ld   h, h                                        ; $4a75: $64
	ld   de, $1722                                   ; $4a76: $11 $22 $17
	nop                                              ; $4a79: $00
	nop                                              ; $4a7a: $00
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	ld   h, h                                        ; $4a7d: $64
	ld   [de], a                                     ; $4a7e: $12
	ld   [de], a                                     ; $4a7f: $12
	rla                                              ; $4a80: $17
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	ld   h, h                                        ; $4a85: $64
	inc  de                                          ; $4a86: $13
	ld   [hl-], a                                    ; $4a87: $32
	rla                                              ; $4a88: $17
	nop                                              ; $4a89: $00
	nop                                              ; $4a8a: $00
	nop                                              ; $4a8b: $00
	nop                                              ; $4a8c: $00
	ld   h, h                                        ; $4a8d: $64
	inc  d                                           ; $4a8e: $14
	ld   b, d                                        ; $4a8f: $42
	rla                                              ; $4a90: $17
	nop                                              ; $4a91: $00
	nop                                              ; $4a92: $00
	nop                                              ; $4a93: $00
	nop                                              ; $4a94: $00
	ld   h, h                                        ; $4a95: $64
	dec  d                                           ; $4a96: $15
	ld   h, d                                        ; $4a97: $62
	rla                                              ; $4a98: $17
	nop                                              ; $4a99: $00
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	nop                                              ; $4a9c: $00
	ld   h, h                                        ; $4a9d: $64
	ld   d, $52                                      ; $4a9e: $16 $52
	rla                                              ; $4aa0: $17
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00
	nop                                              ; $4aa4: $00
	nop                                              ; $4aa5: $00
	db   $e4                                         ; $4aa6: $e4
	rla                                              ; $4aa7: $17
	ld   b, d                                        ; $4aa8: $42
	ld   [de], a                                     ; $4aa9: $12
	adc  c                                           ; $4aaa: $89
	ld   a, [hl-]                                    ; $4aab: $3a
	ld   de, $e401                                   ; $4aac: $11 $01 $e4
	jr   jr_040_4ac3                                 ; $4aaf: $18 $12

	ld   d, [hl]                                     ; $4ab1: $56
	rst  ToBoot                                         ; $4ab2: $c7
	inc  a                                           ; $4ab3: $3c
	ld   de, $0000                                   ; $4ab4: $11 $00 $00
	nop                                              ; $4ab7: $00
	db   $e4                                         ; $4ab8: $e4
	add  hl, de                                      ; $4ab9: $19
	ld   [hl+], a                                    ; $4aba: $22
	inc  d                                           ; $4abb: $14
	ld   l, e                                        ; $4abc: $6b
	nop                                              ; $4abd: $00
	ld   [de], a                                     ; $4abe: $12
	nop                                              ; $4abf: $00
	db   $e4                                         ; $4ac0: $e4
	ld   a, [de]                                     ; $4ac1: $1a
	ld   h, d                                        ; $4ac2: $62

jr_040_4ac3:
	inc  d                                           ; $4ac3: $14
	xor  c                                           ; $4ac4: $a9
	ld   d, $12                                      ; $4ac5: $16 $12
	nop                                              ; $4ac7: $00
	db   $e4                                         ; $4ac8: $e4
	dec  de                                          ; $4ac9: $1b
	ld   b, d                                        ; $4aca: $42
	inc  d                                           ; $4acb: $14
	ld   d, $32                                      ; $4acc: $16 $32
	ld   [de], a                                     ; $4ace: $12
	nop                                              ; $4acf: $00
	db   $e4                                         ; $4ad0: $e4
	inc  e                                           ; $4ad1: $1c
	ld   [hl-], a                                    ; $4ad2: $32
	inc  d                                           ; $4ad3: $14
	ld   l, l                                        ; $4ad4: $6d
	dec  b                                           ; $4ad5: $05
	inc  de                                          ; $4ad6: $13
	nop                                              ; $4ad7: $00
	db   $e4                                         ; $4ad8: $e4
	dec  e                                           ; $4ad9: $1d
	ld   d, d                                        ; $4ada: $52
	inc  d                                           ; $4adb: $14
	ld   a, l                                        ; $4adc: $7d
	dec  e                                           ; $4add: $1d
	inc  de                                          ; $4ade: $13
	nop                                              ; $4adf: $00
	db   $e4                                         ; $4ae0: $e4
	ld   e, $12                                      ; $4ae1: $1e $12
	inc  d                                           ; $4ae3: $14
	jp   nc, $132f                                   ; $4ae4: $d2 $2f $13

	nop                                              ; $4ae7: $00
	db   $e4                                         ; $4ae8: $e4
	rra                                              ; $4ae9: $1f
	ld   [hl+], a                                    ; $4aea: $22
	inc  [hl]                                        ; $4aeb: $34
	add  hl, de                                      ; $4aec: $19
	inc  b                                           ; $4aed: $04
	inc  d                                           ; $4aee: $14
	nop                                              ; $4aef: $00
	db   $e4                                         ; $4af0: $e4
	jr   nz, jr_040_4b05                             ; $4af1: $20 $12

	inc  [hl]                                        ; $4af3: $34
	dec  hl                                          ; $4af4: $2b
	ld   b, $14                                      ; $4af5: $06 $14
	nop                                              ; $4af7: $00
	db   $e4                                         ; $4af8: $e4
	ld   hl, $4522                                   ; $4af9: $21 $22 $45
	ld   h, $08                                      ; $4afc: $26 $08

jr_040_4afe:
	inc  d                                           ; $4afe: $14
	nop                                              ; $4aff: $00
	db   $e4                                         ; $4b00: $e4
	ld   [hl+], a                                    ; $4b01: $22
	ld   h, d                                        ; $4b02: $62
	ld   h, [hl]                                     ; $4b03: $66
	add  hl, sp                                      ; $4b04: $39

jr_040_4b05:
	add  hl, bc                                      ; $4b05: $09
	inc  d                                           ; $4b06: $14
	nop                                              ; $4b07: $00
	db   $e4                                         ; $4b08: $e4
	inc  hl                                          ; $4b09: $23
	ld   [hl-], a                                    ; $4b0a: $32
	ld   h, [hl]                                     ; $4b0b: $66
	reti                                             ; $4b0c: $d9


	dec  d                                           ; $4b0d: $15
	inc  d                                           ; $4b0e: $14
	nop                                              ; $4b0f: $00
	db   $e4                                         ; $4b10: $e4
	inc  h                                           ; $4b11: $24
	ld   b, d                                        ; $4b12: $42
	ld   h, [hl]                                     ; $4b13: $66
	ld   a, c                                        ; $4b14: $79
	ld   hl, $0014                                   ; $4b15: $21 $14 $00
	db   $e4                                         ; $4b18: $e4
	dec  h                                           ; $4b19: $25
	ld   d, d                                        ; $4b1a: $52
	ld   h, [hl]                                     ; $4b1b: $66
	or   d                                           ; $4b1c: $b2
	dec  l                                           ; $4b1d: $2d
	inc  d                                           ; $4b1e: $14
	nop                                              ; $4b1f: $00
	db   $e4                                         ; $4b20: $e4
	ld   h, $22                                      ; $4b21: $26 $22
	ld   h, [hl]                                     ; $4b23: $66
	jp   hl                                          ; $4b24: $e9


	inc  a                                           ; $4b25: $3c
	inc  d                                           ; $4b26: $14
	nop                                              ; $4b27: $00
	db   $e4                                         ; $4b28: $e4
	daa                                              ; $4b29: $27
	ld   [de], a                                     ; $4b2a: $12
	ld   h, [hl]                                     ; $4b2b: $66
	sbc  l                                           ; $4b2c: $9d
	ld   [$0015], sp                                 ; $4b2d: $08 $15 $00
	nop                                              ; $4b30: $00
	ld   h, h                                        ; $4b31: $64
	rlca                                             ; $4b32: $07
	ld   hl, $7007                                   ; $4b33: $21 $07 $70
	dec  e                                           ; $4b36: $1d
	ld   [bc], a                                     ; $4b37: $02
	nop                                              ; $4b38: $00
	ld   h, h                                        ; $4b39: $64
	ld   [$0711], sp                                 ; $4b3a: $08 $11 $07
	ld   sp, $021e                                   ; $4b3d: $31 $1e $02
	nop                                              ; $4b40: $00
	ld   h, h                                        ; $4b41: $64
	add  hl, bc                                      ; $4b42: $09
	ld   sp, $f307                                   ; $4b43: $31 $07 $f3
	ld   e, $02                                      ; $4b46: $1e $02
	nop                                              ; $4b48: $00
	ld   h, h                                        ; $4b49: $64
	ld   a, [bc]                                     ; $4b4a: $0a
	ld   d, c                                        ; $4b4b: $51
	rlca                                             ; $4b4c: $07
	or   e                                           ; $4b4d: $b3
	rra                                              ; $4b4e: $1f
	ld   [bc], a                                     ; $4b4f: $02
	nop                                              ; $4b50: $00
	ld   h, h                                        ; $4b51: $64
	dec  bc                                          ; $4b52: $0b
	ld   h, c                                        ; $4b53: $61
	rlca                                             ; $4b54: $07
	ld   a, b                                        ; $4b55: $78
	jr   nz, jr_040_4b5a                             ; $4b56: $20 $02

	nop                                              ; $4b58: $00
	ld   h, h                                        ; $4b59: $64

jr_040_4b5a:
	inc  c                                           ; $4b5a: $0c
	ld   b, c                                        ; $4b5b: $41
	rlca                                             ; $4b5c: $07
	ld   a, [hl-]                                    ; $4b5d: $3a
	ld   hl, $0002                                   ; $4b5e: $21 $02 $00
	ld   h, h                                        ; $4b61: $64
	dec  c                                           ; $4b62: $0d
	pop  hl                                          ; $4b63: $e1
	rlca                                             ; $4b64: $07
	db   $f4                                         ; $4b65: $f4
	ld   hl, $0002                                   ; $4b66: $21 $02 $00
	ld   h, h                                        ; $4b69: $64
	jr   z, jr_040_4afe                              ; $4b6a: $28 $92

	ld   b, $00                                      ; $4b6c: $06 $00

jr_040_4b6e:
	nop                                              ; $4b6e: $00
	nop                                              ; $4b6f: $00
	ld   e, $e4                                      ; $4b70: $1e $e4
	add  hl, hl                                      ; $4b72: $29
	ld   h, d                                        ; $4b73: $62
	ld   [bc], a                                     ; $4b74: $02
	nop                                              ; $4b75: $00
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	rrca                                             ; $4b78: $0f
	db   $e4                                         ; $4b79: $e4
	ld   a, [hl+]                                    ; $4b7a: $2a
	ld   [hl-], a                                    ; $4b7b: $32
	ld   bc, $0000                                   ; $4b7c: $01 $00 $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	db   $e4                                         ; $4b81: $e4
	dec  hl                                          ; $4b82: $2b
	ld   b, d                                        ; $4b83: $42
	ld   bc, $0000                                   ; $4b84: $01 $00 $00
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	db   $e4                                         ; $4b89: $e4
	inc  l                                           ; $4b8a: $2c
	ld   d, d                                        ; $4b8b: $52
	ld   [bc], a                                     ; $4b8c: $02
	nop                                              ; $4b8d: $00
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	nop                                              ; $4b90: $00
	db   $e4                                         ; $4b91: $e4
	dec  l                                           ; $4b92: $2d
	ld   [hl+], a                                    ; $4b93: $22
	ld   [bc], a                                     ; $4b94: $02
	nop                                              ; $4b95: $00
	nop                                              ; $4b96: $00
	nop                                              ; $4b97: $00
	nop                                              ; $4b98: $00
	db   $e4                                         ; $4b99: $e4
	ld   l, $12                                      ; $4b9a: $2e $12
	ld   [bc], a                                     ; $4b9c: $02
	pop  de                                          ; $4b9d: $d1
	ld   a, $15                                      ; $4b9e: $3e $15
	nop                                              ; $4ba0: $00
	db   $e4                                         ; $4ba1: $e4
	cpl                                              ; $4ba2: $2f
	jp   nc, $9d12                                   ; $4ba3: $d2 $12 $9d

	ld   [bc], a                                     ; $4ba6: $02
	ld   d, $0d                                      ; $4ba7: $16 $0d
	db   $e4                                         ; $4ba9: $e4
	jr   nc, jr_040_4b6e                             ; $4baa: $30 $c2

	ld   b, l                                        ; $4bac: $45
	sub  b                                           ; $4bad: $90
	inc  bc                                          ; $4bae: $03
	ld   d, $0d                                      ; $4baf: $16 $0d
	db   $e4                                         ; $4bb1: $e4
	ld   sp, $6632                                   ; $4bb2: $31 $32 $66
	nop                                              ; $4bb5: $00
	nop                                              ; $4bb6: $00
	nop                                              ; $4bb7: $00
	nop                                              ; $4bb8: $00
	db   $e4                                         ; $4bb9: $e4
	ld   [hl-], a                                    ; $4bba: $32
	ld   [de], a                                     ; $4bbb: $12
	ld   h, [hl]                                     ; $4bbc: $66
	nop                                              ; $4bbd: $00

jr_040_4bbe:
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	db   $e4                                         ; $4bc1: $e4
	inc  sp                                          ; $4bc2: $33
	ld   b, d                                        ; $4bc3: $42
	ld   h, [hl]                                     ; $4bc4: $66
	nop                                              ; $4bc5: $00
	nop                                              ; $4bc6: $00
	nop                                              ; $4bc7: $00
	dec  de                                          ; $4bc8: $1b
	db   $e4                                         ; $4bc9: $e4
	inc  [hl]                                        ; $4bca: $34
	ld   h, d                                        ; $4bcb: $62
	ld   h, [hl]                                     ; $4bcc: $66
	nop                                              ; $4bcd: $00
	nop                                              ; $4bce: $00
	nop                                              ; $4bcf: $00
	nop                                              ; $4bd0: $00
	db   $e4                                         ; $4bd1: $e4
	dec  [hl]                                        ; $4bd2: $35
	ld   d, d                                        ; $4bd3: $52
	ld   h, [hl]                                     ; $4bd4: $66
	nop                                              ; $4bd5: $00
	nop                                              ; $4bd6: $00
	nop                                              ; $4bd7: $00
	nop                                              ; $4bd8: $00
	db   $e4                                         ; $4bd9: $e4
	ld   [hl], $22                                   ; $4bda: $36 $22
	ld   h, [hl]                                     ; $4bdc: $66
	nop                                              ; $4bdd: $00
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	ld   h, h                                        ; $4be1: $64
	scf                                              ; $4be2: $37
	sub  d                                           ; $4be3: $92
	ld   [hl], a                                     ; $4be4: $77
	nop                                              ; $4be5: $00
	nop                                              ; $4be6: $00
	nop                                              ; $4be7: $00
	ld   e, $e4                                      ; $4be8: $1e $e4
	jr   c, jr_040_4bbe                              ; $4bea: $38 $d2

	ld   [hl], a                                     ; $4bec: $77
	jp   z, $162f                                    ; $4bed: $ca $2f $16

	dec  c                                           ; $4bf0: $0d
	db   $e4                                         ; $4bf1: $e4
	add  hl, sp                                      ; $4bf2: $39
	ld   h, d                                        ; $4bf3: $62
	ld   [hl], a                                     ; $4bf4: $77
	nop                                              ; $4bf5: $00
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	nop                                              ; $4bf8: $00
	db   $e4                                         ; $4bf9: $e4
	ld   a, [hl-]                                    ; $4bfa: $3a
	ld   [hl-], a                                    ; $4bfb: $32
	ld   [hl], a                                     ; $4bfc: $77
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	db   $e4                                         ; $4c01: $e4
	dec  sp                                          ; $4c02: $3b
	ld   b, d                                        ; $4c03: $42
	ld   [hl], a                                     ; $4c04: $77
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	db   $e4                                         ; $4c09: $e4
	inc  a                                           ; $4c0a: $3c
	ld   d, d                                        ; $4c0b: $52
	ld   [hl], a                                     ; $4c0c: $77
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	db   $e4                                         ; $4c11: $e4
	dec  a                                           ; $4c12: $3d
	ld   [hl+], a                                    ; $4c13: $22
	ld   [hl], a                                     ; $4c14: $77
	nop                                              ; $4c15: $00
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	db   $e4                                         ; $4c19: $e4
	ld   a, $12                                      ; $4c1a: $3e $12
	ld   [hl], a                                     ; $4c1c: $77
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	db   $e4                                         ; $4c21: $e4
	ccf                                              ; $4c22: $3f
	jp   nz, $a403                                   ; $4c23: $c2 $03 $a4

	ld   b, $17                                      ; $4c26: $06 $17
	dec  c                                           ; $4c28: $0d
	db   $e4                                         ; $4c29: $e4
	ld   b, b                                        ; $4c2a: $40
	ld   b, d                                        ; $4c2b: $42
	inc  de                                          ; $4c2c: $13
	nop                                              ; $4c2d: $00
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	nop                                              ; $4c30: $00
	db   $e4                                         ; $4c31: $e4
	ld   b, c                                        ; $4c32: $41
	ld   h, d                                        ; $4c33: $62
	inc  h                                           ; $4c34: $24
	nop                                              ; $4c35: $00
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	db   $e4                                         ; $4c39: $e4
	ld   b, d                                        ; $4c3a: $42
	ld   [hl-], a                                    ; $4c3b: $32
	inc  h                                           ; $4c3c: $24
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	db   $e4                                         ; $4c41: $e4
	ld   b, e                                        ; $4c42: $43
	ld   d, d                                        ; $4c43: $52
	inc  h                                           ; $4c44: $24
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	db   $e4                                         ; $4c49: $e4
	ld   b, h                                        ; $4c4a: $44
	ld   [hl+], a                                    ; $4c4b: $22
	inc  h                                           ; $4c4c: $24
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	nop                                              ; $4c50: $00
	db   $e4                                         ; $4c51: $e4
	ld   b, l                                        ; $4c52: $45
	ld   [de], a                                     ; $4c53: $12
	inc  h                                           ; $4c54: $24
	ld   c, $1e                                      ; $4c55: $0e $1e
	rla                                              ; $4c57: $17
	nop                                              ; $4c58: $00
	db   $e4                                         ; $4c59: $e4
	ld   b, [hl]                                     ; $4c5a: $46
	ld   b, d                                        ; $4c5b: $42
	dec  [hl]                                        ; $4c5c: $35
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	db   $e4                                         ; $4c61: $e4
	ld   b, a                                        ; $4c62: $47
	ld   h, d                                        ; $4c63: $62
	ld   b, l                                        ; $4c64: $45
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	nop                                              ; $4c68: $00
	db   $e4                                         ; $4c69: $e4
	ld   c, b                                        ; $4c6a: $48
	ld   [hl+], a                                    ; $4c6b: $22
	ld   b, l                                        ; $4c6c: $45
	nop                                              ; $4c6d: $00
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	db   $e4                                         ; $4c71: $e4
	ld   c, c                                        ; $4c72: $49
	ld   [hl-], a                                    ; $4c73: $32
	ld   b, l                                        ; $4c74: $45
	nop                                              ; $4c75: $00
	nop                                              ; $4c76: $00
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	db   $e4                                         ; $4c79: $e4
	ld   c, d                                        ; $4c7a: $4a
	ld   d, d                                        ; $4c7b: $52
	ld   b, l                                        ; $4c7c: $45
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	db   $e4                                         ; $4c81: $e4
	ld   c, e                                        ; $4c82: $4b
	ld   [de], a                                     ; $4c83: $12
	ld   b, l                                        ; $4c84: $45
	sub  $39                                         ; $4c85: $d6 $39
	rla                                              ; $4c87: $17
	nop                                              ; $4c88: $00
	ld   h, h                                        ; $4c89: $64
	inc  hl                                          ; $4c8a: $23
	pop  bc                                          ; $4c8b: $c1
	rlca                                             ; $4c8c: $07
	ld   h, e                                        ; $4c8d: $63
	dec  sp                                          ; $4c8e: $3b
	inc  bc                                          ; $4c8f: $03
	nop                                              ; $4c90: $00
	ld   h, h                                        ; $4c91: $64
	inc  h                                           ; $4c92: $24
	pop  de                                          ; $4c93: $d1
	rlca                                             ; $4c94: $07
	add  h                                           ; $4c95: $84
	ccf                                              ; $4c96: $3f
	inc  bc                                          ; $4c97: $03
	nop                                              ; $4c98: $00
	ld   h, h                                        ; $4c99: $64
	ld   c, h                                        ; $4c9a: $4c
	ld   [hl+], a                                    ; $4c9b: $22
	ld   b, $00                                      ; $4c9c: $06 $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	ld   h, h                                        ; $4ca1: $64
	ld   c, l                                        ; $4ca2: $4d
	ld   [de], a                                     ; $4ca3: $12
	ld   b, $00                                      ; $4ca4: $06 $00
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	nop                                              ; $4ca8: $00
	ld   h, h                                        ; $4ca9: $64
	ld   c, [hl]                                     ; $4caa: $4e
	ld   [hl-], a                                    ; $4cab: $32
	ld   b, $00                                      ; $4cac: $06 $00
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	nop                                              ; $4cb0: $00
	ld   h, h                                        ; $4cb1: $64
	ld   c, a                                        ; $4cb2: $4f
	ld   b, d                                        ; $4cb3: $42
	ld   b, $00                                      ; $4cb4: $06 $00
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	ld   h, h                                        ; $4cb9: $64
	ld   d, b                                        ; $4cba: $50
	ld   h, d                                        ; $4cbb: $62
	ld   b, $00                                      ; $4cbc: $06 $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	ld   h, h                                        ; $4cc1: $64
	ld   d, c                                        ; $4cc2: $51
	ld   d, d                                        ; $4cc3: $52
	ld   b, $00                                      ; $4cc4: $06 $00
	nop                                              ; $4cc6: $00
	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	ld   h, h                                        ; $4cc9: $64
	ld   d, d                                        ; $4cca: $52
	ld   [hl+], a                                    ; $4ccb: $22
	ld   [hl], a                                     ; $4ccc: $77
	nop                                              ; $4ccd: $00
	nop                                              ; $4cce: $00
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	ld   h, h                                        ; $4cd1: $64
	ld   d, e                                        ; $4cd2: $53
	ld   [de], a                                     ; $4cd3: $12
	ld   [hl], a                                     ; $4cd4: $77
	nop                                              ; $4cd5: $00
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	ld   h, h                                        ; $4cd9: $64
	ld   d, h                                        ; $4cda: $54
	ld   [hl-], a                                    ; $4cdb: $32
	ld   [hl], a                                     ; $4cdc: $77
	nop                                              ; $4cdd: $00
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	ld   h, h                                        ; $4ce1: $64
	ld   d, l                                        ; $4ce2: $55
	ld   b, d                                        ; $4ce3: $42
	ld   [hl], a                                     ; $4ce4: $77
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	ld   h, h                                        ; $4ce9: $64
	ld   d, [hl]                                     ; $4cea: $56
	ld   h, d                                        ; $4ceb: $62
	ld   [hl], a                                     ; $4cec: $77
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	ld   h, h                                        ; $4cf1: $64
	ld   d, a                                        ; $4cf2: $57
	ld   d, d                                        ; $4cf3: $52
	ld   [hl], a                                     ; $4cf4: $77
	nop                                              ; $4cf5: $00
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	ld   h, h                                        ; $4cf9: $64
	dec  hl                                          ; $4cfa: $2b
	pop  hl                                          ; $4cfb: $e1
	rlca                                             ; $4cfc: $07
	ld   e, $0b                                      ; $4cfd: $1e $0b
	inc  b                                           ; $4cff: $04
	stop                                             ; $4d00: $10 $00
	db   $e4                                         ; $4d02: $e4
	inc  l                                           ; $4d03: $2c
	ld   bc, $1e07                                   ; $4d04: $01 $07 $1e
	dec  c                                           ; $4d07: $0d
	inc  b                                           ; $4d08: $04
	ld   bc, $6400                                   ; $4d09: $01 $00 $64
	ld   l, $61                                      ; $4d0c: $2e $61
	rlca                                             ; $4d0e: $07
	cpl                                              ; $4d0f: $2f
	rrca                                             ; $4d10: $0f
	inc  b                                           ; $4d11: $04
	nop                                              ; $4d12: $00
	ld   h, h                                        ; $4d13: $64
	cpl                                              ; $4d14: $2f
	ld   d, c                                        ; $4d15: $51
	rlca                                             ; $4d16: $07
	push hl                                          ; $4d17: $e5
	add  hl, de                                      ; $4d18: $19
	inc  b                                           ; $4d19: $04
	nop                                              ; $4d1a: $00
	ld   h, h                                        ; $4d1b: $64
	jr   nc, jr_040_4d5f                             ; $4d1c: $30 $41

	rlca                                             ; $4d1e: $07
	ld   [hl], c                                     ; $4d1f: $71
	inc  hl                                          ; $4d20: $23
	inc  b                                           ; $4d21: $04
	nop                                              ; $4d22: $00
	ld   h, h                                        ; $4d23: $64
	ld   sp, $0731                                   ; $4d24: $31 $31 $07
	sub  b                                           ; $4d27: $90
	dec  l                                           ; $4d28: $2d
	inc  b                                           ; $4d29: $04
	nop                                              ; $4d2a: $00
	ld   h, h                                        ; $4d2b: $64
	ld   [hl-], a                                    ; $4d2c: $32
	ld   hl, $5b07                                   ; $4d2d: $21 $07 $5b
	scf                                              ; $4d30: $37
	inc  b                                           ; $4d31: $04
	nop                                              ; $4d32: $00
	ld   h, h                                        ; $4d33: $64
	inc  sp                                          ; $4d34: $33
	ld   de, $8d07                                   ; $4d35: $11 $07 $8d
	inc  bc                                          ; $4d38: $03
	dec  b                                           ; $4d39: $05
	nop                                              ; $4d3a: $00
	nop                                              ; $4d3b: $00
	nop                                              ; $4d3c: $00
	nop                                              ; $4d3d: $00
	db   $e4                                         ; $4d3e: $e4
	ld   e, b                                        ; $4d3f: $58
	ld   e, d                                        ; $4d40: $5a
	ld   [bc], a                                     ; $4d41: $02
	adc  $0c                                         ; $4d42: $ce $0c
	jr   jr_040_4d5b                                 ; $4d44: $18 $15

	db   $e4                                         ; $4d46: $e4
	ld   e, c                                        ; $4d47: $59
	ld   l, d                                        ; $4d48: $6a
	inc  d                                           ; $4d49: $14
	xor  h                                           ; $4d4a: $ac
	ld   de, $0018                                   ; $4d4b: $11 $18 $00
	db   $e4                                         ; $4d4e: $e4
	ld   e, d                                        ; $4d4f: $5a
	ld   a, [hl-]                                    ; $4d50: $3a
	ld   [de], a                                     ; $4d51: $12
	db   $eb                                         ; $4d52: $eb
	rla                                              ; $4d53: $17
	jr   jr_040_4d7f                                 ; $4d54: $18 $29

	db   $e4                                         ; $4d56: $e4
	ld   e, e                                        ; $4d57: $5b
	ld   a, [de]                                     ; $4d58: $1a
	inc  [hl]                                        ; $4d59: $34
	pop  af                                          ; $4d5a: $f1

jr_040_4d5b:
	ld   e, $18                                      ; $4d5b: $1e $18
	inc  bc                                          ; $4d5d: $03
	ld   h, h                                        ; $4d5e: $64

jr_040_4d5f:
	jr   c, jr_040_4d82                              ; $4d5f: $38 $21

	rlca                                             ; $4d61: $07
	ret  c                                           ; $4d62: $d8

	dec  d                                           ; $4d63: $15
	dec  b                                           ; $4d64: $05
	nop                                              ; $4d65: $00
	ld   h, h                                        ; $4d66: $64
	add  hl, sp                                      ; $4d67: $39
	ld   de, $9907                                   ; $4d68: $11 $07 $99
	ld   d, $05                                      ; $4d6b: $16 $05
	nop                                              ; $4d6d: $00
	ld   h, h                                        ; $4d6e: $64
	ld   a, [hl-]                                    ; $4d6f: $3a
	ld   sp, $5b07                                   ; $4d70: $31 $07 $5b
	rla                                              ; $4d73: $17
	dec  b                                           ; $4d74: $05
	nop                                              ; $4d75: $00
	ld   h, h                                        ; $4d76: $64
	dec  sp                                          ; $4d77: $3b
	ld   d, c                                        ; $4d78: $51
	rlca                                             ; $4d79: $07
	dec  de                                          ; $4d7a: $1b
	jr   jr_040_4d82                                 ; $4d7b: $18 $05

	nop                                              ; $4d7d: $00
	ld   h, h                                        ; $4d7e: $64

jr_040_4d7f:
	inc  a                                           ; $4d7f: $3c
	ld   h, c                                        ; $4d80: $61
	rlca                                             ; $4d81: $07

jr_040_4d82:
	ldh  [rAUD2LOW], a                               ; $4d82: $e0 $18
	dec  b                                           ; $4d84: $05
	nop                                              ; $4d85: $00
	ld   h, h                                        ; $4d86: $64
	dec  a                                           ; $4d87: $3d
	ld   b, c                                        ; $4d88: $41
	rlca                                             ; $4d89: $07
	and  d                                           ; $4d8a: $a2
	add  hl, de                                      ; $4d8b: $19
	dec  b                                           ; $4d8c: $05
	nop                                              ; $4d8d: $00
	ld   h, h                                        ; $4d8e: $64
	ld   b, d                                        ; $4d8f: $42
	pop  hl                                          ; $4d90: $e1
	rlca                                             ; $4d91: $07
	ld   h, d                                        ; $4d92: $62
	ld   sp, $0005                                   ; $4d93: $31 $05 $00
	ld   h, h                                        ; $4d96: $64
	ld   e, h                                        ; $4d97: $5c
	sub  d                                           ; $4d98: $92
	ld   b, $00                                      ; $4d99: $06 $00
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	ld   e, $e4                                      ; $4d9d: $1e $e4
	ld   e, l                                        ; $4d9f: $5d
	ld   h, d                                        ; $4da0: $62
	ld   [bc], a                                     ; $4da1: $02
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	nop                                              ; $4da4: $00
	ld   d, $e4                                      ; $4da5: $16 $e4
	ld   e, [hl]                                     ; $4da7: $5e
	ld   [hl-], a                                    ; $4da8: $32
	ld   [bc], a                                     ; $4da9: $02
	nop                                              ; $4daa: $00
	nop                                              ; $4dab: $00
	nop                                              ; $4dac: $00
	dec  b                                           ; $4dad: $05
	db   $e4                                         ; $4dae: $e4
	ld   e, a                                        ; $4daf: $5f
	ld   b, d                                        ; $4db0: $42
	ld   bc, $0000                                   ; $4db1: $01 $00 $00
	nop                                              ; $4db4: $00
	nop                                              ; $4db5: $00
	db   $e4                                         ; $4db6: $e4
	ld   h, b                                        ; $4db7: $60
	ld   d, d                                        ; $4db8: $52
	ld   [bc], a                                     ; $4db9: $02
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	inc  bc                                          ; $4dbd: $03
	db   $e4                                         ; $4dbe: $e4
	ld   h, c                                        ; $4dbf: $61
	ld   [hl+], a                                    ; $4dc0: $22
	ld   bc, $0000                                   ; $4dc1: $01 $00 $00
	nop                                              ; $4dc4: $00
	ld   a, [hl+]                                    ; $4dc5: $2a
	db   $e4                                         ; $4dc6: $e4
	ld   h, d                                        ; $4dc7: $62
	ld   [de], a                                     ; $4dc8: $12
	ld   [bc], a                                     ; $4dc9: $02
	nop                                              ; $4dca: $00
	nop                                              ; $4dcb: $00
	nop                                              ; $4dcc: $00
	ld   [bc], a                                     ; $4dcd: $02
	db   $e4                                         ; $4dce: $e4
	ld   h, e                                        ; $4dcf: $63
	jp   nc, $eb34                                   ; $4dd0: $d2 $34 $eb

	ld   c, $19                                      ; $4dd3: $0e $19
	dec  c                                           ; $4dd5: $0d
	db   $e4                                         ; $4dd6: $e4
	ld   h, h                                        ; $4dd7: $64
	ld   h, d                                        ; $4dd8: $62
	ld   h, [hl]                                     ; $4dd9: $66
	add  l                                           ; $4dda: $85
	rrca                                             ; $4ddb: $0f
	add  hl, de                                      ; $4ddc: $19
	nop                                              ; $4ddd: $00
	db   $e4                                         ; $4dde: $e4
	ld   h, l                                        ; $4ddf: $65
	ld   d, d                                        ; $4de0: $52
	ld   h, [hl]                                     ; $4de1: $66
	sub  c                                           ; $4de2: $91
	ld   d, $19                                      ; $4de3: $16 $19
	nop                                              ; $4de5: $00
	db   $e4                                         ; $4de6: $e4
	ld   h, [hl]                                     ; $4de7: $66
	ld   [hl+], a                                    ; $4de8: $22
	ld   h, [hl]                                     ; $4de9: $66
	ld   b, l                                        ; $4dea: $45
	dec  de                                          ; $4deb: $1b
	add  hl, de                                      ; $4dec: $19
	nop                                              ; $4ded: $00
	db   $e4                                         ; $4dee: $e4
	ld   h, a                                        ; $4def: $67
	ld   [hl-], a                                    ; $4df0: $32
	ld   h, [hl]                                     ; $4df1: $66
	cp   b                                           ; $4df2: $b8
	ld   hl, $0019                                   ; $4df3: $21 $19 $00
	db   $e4                                         ; $4df6: $e4
	ld   l, b                                        ; $4df7: $68
	ld   b, d                                        ; $4df8: $42
	ld   h, [hl]                                     ; $4df9: $66
	xor  c                                           ; $4dfa: $a9
	dec  h                                           ; $4dfb: $25
	add  hl, de                                      ; $4dfc: $19
	dec  de                                          ; $4dfd: $1b
	db   $e4                                         ; $4dfe: $e4
	ld   l, c                                        ; $4dff: $69
	ld   [de], a                                     ; $4e00: $12
	ld   h, [hl]                                     ; $4e01: $66
	adc  h                                           ; $4e02: $8c
	ld   h, $19                                      ; $4e03: $26 $19
	nop                                              ; $4e05: $00
	ld   h, h                                        ; $4e06: $64
	ld   l, d                                        ; $4e07: $6a
	sub  d                                           ; $4e08: $92
	ld   [hl], a                                     ; $4e09: $77
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	ld   e, $e4                                      ; $4e0d: $1e $e4
	ld   l, e                                        ; $4e0f: $6b
	ld   h, d                                        ; $4e10: $62
	ld   [hl], a                                     ; $4e11: $77
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	db   $e4                                         ; $4e16: $e4
	ld   l, h                                        ; $4e17: $6c
	ld   [hl-], a                                    ; $4e18: $32
	ld   [hl], a                                     ; $4e19: $77
	nop                                              ; $4e1a: $00
	nop                                              ; $4e1b: $00
	nop                                              ; $4e1c: $00
	rla                                              ; $4e1d: $17
	db   $e4                                         ; $4e1e: $e4
	ld   l, l                                        ; $4e1f: $6d
	ld   b, d                                        ; $4e20: $42
	ld   [hl], a                                     ; $4e21: $77
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	dec  de                                          ; $4e25: $1b
	db   $e4                                         ; $4e26: $e4
	ld   l, [hl]                                     ; $4e27: $6e
	ld   d, d                                        ; $4e28: $52
	ld   [hl], a                                     ; $4e29: $77
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	dec  d                                           ; $4e2d: $15
	db   $e4                                         ; $4e2e: $e4
	ld   l, a                                        ; $4e2f: $6f
	ld   [hl+], a                                    ; $4e30: $22
	ld   [hl], a                                     ; $4e31: $77
	nop                                              ; $4e32: $00
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	ld   [$70e4], sp                                 ; $4e35: $08 $e4 $70
	ld   [de], a                                     ; $4e38: $12
	ld   [hl], a                                     ; $4e39: $77
	nop                                              ; $4e3a: $00
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	nop                                              ; $4e3d: $00
	db   $e4                                         ; $4e3e: $e4
	ld   [hl], c                                     ; $4e3f: $71
	ld   b, d                                        ; $4e40: $42
	ld   [de], a                                     ; $4e41: $12
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	ld   [$72e4], sp                                 ; $4e45: $08 $e4 $72
	jp   nc, $7a24                           ; $4e48: $d2 $24 $7a

	rrca                                             ; $4e4b: $0f
	ld   a, [de]                                     ; $4e4c: $1a
	dec  c                                           ; $4e4d: $0d
	db   $e4                                         ; $4e4e: $e4
	ld   [hl], e                                     ; $4e4f: $73
	ld   h, d                                        ; $4e50: $62
	inc  hl                                          ; $4e51: $23
	nop                                              ; $4e52: $00

jr_040_4e53:
	nop                                              ; $4e53: $00
	nop                                              ; $4e54: $00
	ld   a, [hl+]                                    ; $4e55: $2a
	db   $e4                                         ; $4e56: $e4
	ld   [hl], h                                     ; $4e57: $74
	ld   [hl-], a                                    ; $4e58: $32
	inc  hl                                          ; $4e59: $23
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00
	nop                                              ; $4e5c: $00
	ld   a, [bc]                                     ; $4e5d: $0a
	db   $e4                                         ; $4e5e: $e4
	ld   [hl], l                                     ; $4e5f: $75
	ld   d, d                                        ; $4e60: $52
	inc  hl                                          ; $4e61: $23
	nop                                              ; $4e62: $00

jr_040_4e63:
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	inc  h                                           ; $4e65: $24
	db   $e4                                         ; $4e66: $e4
	halt                                             ; $4e67: $76
	ld   [hl+], a                                    ; $4e68: $22
	inc  hl                                          ; $4e69: $23
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	jr   nz, jr_040_4e53                             ; $4e6d: $20 $e4

	ld   [hl], a                                     ; $4e6f: $77
	ld   [de], a                                     ; $4e70: $12
	inc  hl                                          ; $4e71: $23
	nop                                              ; $4e72: $00
	nop                                              ; $4e73: $00
	nop                                              ; $4e74: $00
	add  hl, bc                                      ; $4e75: $09
	db   $e4                                         ; $4e76: $e4
	ld   a, b                                        ; $4e77: $78
	ld   h, d                                        ; $4e78: $62
	inc  [hl]                                        ; $4e79: $34
	nop                                              ; $4e7a: $00
	nop                                              ; $4e7b: $00
	nop                                              ; $4e7c: $00
	jr   z, jr_040_4e63                              ; $4e7d: $28 $e4

	ld   a, c                                        ; $4e7f: $79
	jp   nc, $0003                                   ; $4e80: $d2 $03 $00

	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	dec  c                                           ; $4e85: $0d
	db   $e4                                         ; $4e86: $e4
	ld   a, d                                        ; $4e87: $7a
	ld   b, d                                        ; $4e88: $42
	inc  h                                           ; $4e89: $24
	nop                                              ; $4e8a: $00
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	nop                                              ; $4e8d: $00
	db   $e4                                         ; $4e8e: $e4
	ld   a, e                                        ; $4e8f: $7b
	ld   [hl-], a                                    ; $4e90: $32
	inc  [hl]                                        ; $4e91: $34
	nop                                              ; $4e92: $00
	nop                                              ; $4e93: $00
	nop                                              ; $4e94: $00
	inc  d                                           ; $4e95: $14
	db   $e4                                         ; $4e96: $e4
	ld   a, h                                        ; $4e97: $7c
	ld   d, d                                        ; $4e98: $52
	inc  [hl]                                        ; $4e99: $34
	nop                                              ; $4e9a: $00
	nop                                              ; $4e9b: $00
	nop                                              ; $4e9c: $00
	nop                                              ; $4e9d: $00
	db   $e4                                         ; $4e9e: $e4
	ld   a, l                                        ; $4e9f: $7d
	ld   [hl+], a                                    ; $4ea0: $22
	inc  [hl]                                        ; $4ea1: $34
	adc  e                                           ; $4ea2: $8b
	ld   de, $2b1b                                   ; $4ea3: $11 $1b $2b
	db   $e4                                         ; $4ea6: $e4
	ld   a, [hl]                                     ; $4ea7: $7e
	ld   [de], a                                     ; $4ea8: $12
	inc  [hl]                                        ; $4ea9: $34
	nop                                              ; $4eaa: $00
	nop                                              ; $4eab: $00
	nop                                              ; $4eac: $00
	nop                                              ; $4ead: $00
	db   $e4                                         ; $4eae: $e4
	ld   a, a                                        ; $4eaf: $7f
	jp   nz, $5877                           ; $4eb0: $c2 $77 $58

	add  hl, de                                      ; $4eb3: $19
	dec  de                                          ; $4eb4: $1b
	dec  c                                           ; $4eb5: $0d
	ld   h, h                                        ; $4eb6: $64
	ld   d, l                                        ; $4eb7: $55
	pop  de                                          ; $4eb8: $d1
	rlca                                             ; $4eb9: $07
	ld   b, h                                        ; $4eba: $44
	inc  [hl]                                        ; $4ebb: $34
	ld   b, $00                                      ; $4ebc: $06 $00
	ld   h, h                                        ; $4ebe: $64
	ld   d, [hl]                                     ; $4ebf: $56
	pop  bc                                          ; $4ec0: $c1
	rlca                                             ; $4ec1: $07
	ld   l, h                                        ; $4ec2: $6c
	jr   c, jr_040_4ecb                              ; $4ec3: $38 $06

	nop                                              ; $4ec5: $00
	ld   h, h                                        ; $4ec6: $64
	add  b                                           ; $4ec7: $80
	ld   [hl+], a                                    ; $4ec8: $22
	dec  b                                           ; $4ec9: $05
	nop                                              ; $4eca: $00

jr_040_4ecb:
	nop                                              ; $4ecb: $00
	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	ld   h, h                                        ; $4ece: $64
	add  c                                           ; $4ecf: $81
	ld   [de], a                                     ; $4ed0: $12
	dec  b                                           ; $4ed1: $05
	nop                                              ; $4ed2: $00
	nop                                              ; $4ed3: $00
	nop                                              ; $4ed4: $00
	nop                                              ; $4ed5: $00
	ld   h, h                                        ; $4ed6: $64
	add  d                                           ; $4ed7: $82
	ld   [hl-], a                                    ; $4ed8: $32
	dec  b                                           ; $4ed9: $05
	nop                                              ; $4eda: $00
	nop                                              ; $4edb: $00
	nop                                              ; $4edc: $00
	nop                                              ; $4edd: $00
	ld   h, h                                        ; $4ede: $64
	add  e                                           ; $4edf: $83
	ld   b, d                                        ; $4ee0: $42
	dec  b                                           ; $4ee1: $05
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	ld   h, h                                        ; $4ee6: $64
	add  h                                           ; $4ee7: $84
	ld   h, d                                        ; $4ee8: $62
	dec  b                                           ; $4ee9: $05
	nop                                              ; $4eea: $00
	nop                                              ; $4eeb: $00
	nop                                              ; $4eec: $00
	nop                                              ; $4eed: $00
	ld   h, h                                        ; $4eee: $64
	add  l                                           ; $4eef: $85
	ld   d, d                                        ; $4ef0: $52
	dec  b                                           ; $4ef1: $05
	nop                                              ; $4ef2: $00
	nop                                              ; $4ef3: $00
	nop                                              ; $4ef4: $00
	nop                                              ; $4ef5: $00
	db   $e4                                         ; $4ef6: $e4
	add  [hl]                                        ; $4ef7: $86
	ld   [hl+], a                                    ; $4ef8: $22
	ld   h, [hl]                                     ; $4ef9: $66
	nop                                              ; $4efa: $00
	nop                                              ; $4efb: $00
	nop                                              ; $4efc: $00
	nop                                              ; $4efd: $00
	db   $e4                                         ; $4efe: $e4
	add  a                                           ; $4eff: $87
	ld   [de], a                                     ; $4f00: $12
	ld   h, [hl]                                     ; $4f01: $66
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	nop                                              ; $4f05: $00
	db   $e4                                         ; $4f06: $e4
	adc  b                                           ; $4f07: $88
	ld   [hl-], a                                    ; $4f08: $32
	ld   h, [hl]                                     ; $4f09: $66
	nop                                              ; $4f0a: $00
	nop                                              ; $4f0b: $00
	nop                                              ; $4f0c: $00
	nop                                              ; $4f0d: $00
	db   $e4                                         ; $4f0e: $e4
	adc  c                                           ; $4f0f: $89
	ld   b, d                                        ; $4f10: $42
	ld   h, [hl]                                     ; $4f11: $66
	sub  h                                           ; $4f12: $94
	inc  sp                                          ; $4f13: $33
	dec  de                                          ; $4f14: $1b
	nop                                              ; $4f15: $00
	db   $e4                                         ; $4f16: $e4
	adc  d                                           ; $4f17: $8a
	ld   h, d                                        ; $4f18: $62
	ld   h, [hl]                                     ; $4f19: $66
	nop                                              ; $4f1a: $00
	nop                                              ; $4f1b: $00
	nop                                              ; $4f1c: $00
	nop                                              ; $4f1d: $00
	db   $e4                                         ; $4f1e: $e4
	adc  e                                           ; $4f1f: $8b
	ld   d, d                                        ; $4f20: $52
	ld   h, [hl]                                     ; $4f21: $66
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	nop                                              ; $4f25: $00
	ld   h, h                                        ; $4f26: $64
	adc  h                                           ; $4f27: $8c
	ld   [hl+], a                                    ; $4f28: $22
	ld   [hl], a                                     ; $4f29: $77
	nop                                              ; $4f2a: $00
	nop                                              ; $4f2b: $00
	nop                                              ; $4f2c: $00
	nop                                              ; $4f2d: $00
	ld   h, h                                        ; $4f2e: $64
	adc  l                                           ; $4f2f: $8d
	ld   [de], a                                     ; $4f30: $12
	ld   [hl], a                                     ; $4f31: $77
	nop                                              ; $4f32: $00
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00
	ld   h, h                                        ; $4f36: $64
	adc  [hl]                                        ; $4f37: $8e
	ld   [hl-], a                                    ; $4f38: $32
	ld   [hl], a                                     ; $4f39: $77
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	nop                                              ; $4f3c: $00
	nop                                              ; $4f3d: $00
	ld   h, h                                        ; $4f3e: $64
	adc  a                                           ; $4f3f: $8f
	ld   b, d                                        ; $4f40: $42
	ld   [hl], a                                     ; $4f41: $77
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	ld   h, h                                        ; $4f46: $64
	sub  b                                           ; $4f47: $90
	ld   h, d                                        ; $4f48: $62
	ld   [hl], a                                     ; $4f49: $77
	nop                                              ; $4f4a: $00
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	nop                                              ; $4f4d: $00
	ld   h, h                                        ; $4f4e: $64
	sub  c                                           ; $4f4f: $91
	ld   d, d                                        ; $4f50: $52
	ld   [hl], a                                     ; $4f51: $77
	nop                                              ; $4f52: $00
	nop                                              ; $4f53: $00
	nop                                              ; $4f54: $00
	nop                                              ; $4f55: $00
	ld   h, h                                        ; $4f56: $64
	ld   h, e                                        ; $4f57: $63
	pop  hl                                          ; $4f58: $e1
	rlca                                             ; $4f59: $07
	ld   d, c                                        ; $4f5a: $51
	ld   a, [bc]                                     ; $4f5b: $0a
	rlca                                             ; $4f5c: $07
	stop                                             ; $4f5d: $10 $00
	nop                                              ; $4f5f: $00
	nop                                              ; $4f60: $00
	db   $e4                                         ; $4f61: $e4
	ld   h, h                                        ; $4f62: $64
	ld   bc, $5807                                   ; $4f63: $01 $07 $58
	inc  c                                           ; $4f66: $0c
	rlca                                             ; $4f67: $07
	ld   bc, $65e4                                   ; $4f68: $01 $e4 $65
	ld   bc, $b407                                   ; $4f6b: $01 $07 $b4
	inc  c                                           ; $4f6e: $0c
	rlca                                             ; $4f6f: $07
	ld   bc, $e400                                   ; $4f70: $01 $00 $e4
	xor  $91                                         ; $4f73: $ee $91
	nop                                              ; $4f75: $00
	cp   l                                           ; $4f76: $bd
	dec  h                                           ; $4f77: $25
	rrca                                             ; $4f78: $0f
	nop                                              ; $4f79: $00
	db   $e4                                         ; $4f7a: $e4
	sub  d                                           ; $4f7b: $92
	sub  d                                           ; $4f7c: $92
	ld   b, $a7                                      ; $4f7d: $06 $a7
	ld   a, $1b                                      ; $4f7f: $3e $1b
	nop                                              ; $4f81: $00
	ld   h, h                                        ; $4f82: $64
	ld   l, b                                        ; $4f83: $68
	ld   bc, $3807                                   ; $4f84: $01 $07 $38
	rla                                              ; $4f87: $17
	rlca                                             ; $4f88: $07
	nop                                              ; $4f89: $00
	ld   h, h                                        ; $4f8a: $64
	ld   l, c                                        ; $4f8b: $69
	ld   h, c                                        ; $4f8c: $61
	rlca                                             ; $4f8d: $07
	sub  h                                           ; $4f8e: $94
	rla                                              ; $4f8f: $17
	rlca                                             ; $4f90: $07
	nop                                              ; $4f91: $00
	ld   h, h                                        ; $4f92: $64
	ld   l, d                                        ; $4f93: $6a
	ld   d, c                                        ; $4f94: $51
	rlca                                             ; $4f95: $07
	jp   z, $0722                                    ; $4f96: $ca $22 $07

	nop                                              ; $4f99: $00
	ld   h, h                                        ; $4f9a: $64
	ld   l, e                                        ; $4f9b: $6b
	ld   b, c                                        ; $4f9c: $41
	rlca                                             ; $4f9d: $07
	ld   c, c                                        ; $4f9e: $49
	dec  l                                           ; $4f9f: $2d
	rlca                                             ; $4fa0: $07
	nop                                              ; $4fa1: $00
	ld   h, h                                        ; $4fa2: $64
	ld   l, h                                        ; $4fa3: $6c
	ld   sp, $2707                                   ; $4fa4: $31 $07 $27
	jr   c, jr_040_4fb0                              ; $4fa7: $38 $07

	nop                                              ; $4fa9: $00
	ld   h, h                                        ; $4faa: $64
	ld   l, l                                        ; $4fab: $6d
	ld   hl, $0f07                                   ; $4fac: $21 $07 $0f
	inc  bc                                          ; $4faf: $03

jr_040_4fb0:
	ld   [$6400], sp                                 ; $4fb0: $08 $00 $64
	ld   l, [hl]                                     ; $4fb3: $6e
	ld   de, $cc07                                   ; $4fb4: $11 $07 $cc
	rrca                                             ; $4fb7: $0f
	ld   [rRAMG], sp                                 ; $4fb8: $08 $00 $00
	nop                                              ; $4fbb: $00
	db   $e4                                         ; $4fbc: $e4
	sub  e                                           ; $4fbd: $93
	ld   d, d                                        ; $4fbe: $52
	ld   [bc], a                                     ; $4fbf: $02
	ret  nz                                          ; $4fc0: $c0

	rlca                                             ; $4fc1: $07
	inc  e                                           ; $4fc2: $1c
	ld   bc, $94e4                                   ; $4fc3: $01 $e4 $94
	ld   [de], a                                     ; $4fc6: $12
	inc  [hl]                                        ; $4fc7: $34
	or   d                                           ; $4fc8: $b2
	ld   [$001c], sp                                 ; $4fc9: $08 $1c $00
	db   $e4                                         ; $4fcc: $e4
	sub  l                                           ; $4fcd: $95
	ld   b, d                                        ; $4fce: $42
	ld   h, [hl]                                     ; $4fcf: $66
	and  c                                           ; $4fd0: $a1
	add  hl, bc                                      ; $4fd1: $09
	inc  e                                           ; $4fd2: $1c
	dec  de                                          ; $4fd3: $1b
	nop                                              ; $4fd4: $00
	db   $e4                                         ; $4fd5: $e4
	sub  [hl]                                        ; $4fd6: $96
	ld   a, [hl-]                                    ; $4fd7: $3a
	ld   bc, $0a62                                   ; $4fd8: $01 $62 $0a
	inc  e                                           ; $4fdb: $1c
	ld   c, $e4                                      ; $4fdc: $0e $e4
	sub  a                                           ; $4fde: $97
	ld   [hl+], a                                    ; $4fdf: $22
	ld   [de], a                                     ; $4fe0: $12
	ldh  [c], a                                      ; $4fe1: $e2
	dec  bc                                          ; $4fe2: $0b
	inc  e                                           ; $4fe3: $1c
	ld   a, [hl+]                                    ; $4fe4: $2a
	db   $e4                                         ; $4fe5: $e4
	sbc  b                                           ; $4fe6: $98
	ld   l, d                                        ; $4fe7: $6a
	inc  [hl]                                        ; $4fe8: $34
	ld   b, c                                        ; $4fe9: $41
	db   $10                                         ; $4fea: $10
	inc  e                                           ; $4feb: $1c
	rrca                                             ; $4fec: $0f
	db   $e4                                         ; $4fed: $e4
	sbc  c                                           ; $4fee: $99
	ld   a, [hl+]                                    ; $4fef: $2a
	inc  [hl]                                        ; $4ff0: $34
	and  a                                           ; $4ff1: $a7
	inc  d                                           ; $4ff2: $14
	inc  e                                           ; $4ff3: $1c
	dec  b                                           ; $4ff4: $05
	db   $e4                                         ; $4ff5: $e4
	sbc  d                                           ; $4ff6: $9a
	ld   a, [de]                                     ; $4ff7: $1a
	inc  [hl]                                        ; $4ff8: $34
	call z, $1c19                                    ; $4ff9: $cc $19 $1c
	ld   a, [de]                                     ; $4ffc: $1a
	db   $e4                                         ; $4ffd: $e4
	sbc  e                                           ; $4ffe: $9b
	ld   e, d                                        ; $4fff: $5a
	ld   b, l                                        ; $5000: $45
	sbc  h                                           ; $5001: $9c
	rra                                              ; $5002: $1f
	inc  e                                           ; $5003: $1c
	nop                                              ; $5004: $00
	db   $e4                                         ; $5005: $e4
	sbc  h                                           ; $5006: $9c
	ld   [hl+], a                                    ; $5007: $22
	ld   [hl], a                                     ; $5008: $77
	dec  d                                           ; $5009: $15
	inc  hl                                          ; $500a: $23
	inc  e                                           ; $500b: $1c
	inc  e                                           ; $500c: $1c
	db   $e4                                         ; $500d: $e4
	sbc  l                                           ; $500e: $9d
	ld   a, [de]                                     ; $500f: $1a
	ld   [hl], a                                     ; $5010: $77
	ld   a, e                                        ; $5011: $7b
	dec  h                                           ; $5012: $25
	inc  e                                           ; $5013: $1c
	nop                                              ; $5014: $00
	ld   h, h                                        ; $5015: $64
	ld   a, c                                        ; $5016: $79
	ld   hl, $9f07                                   ; $5017: $21 $07 $9f
	ld   [hl-], a                                    ; $501a: $32
	ld   [$6400], sp                                 ; $501b: $08 $00 $64
	ld   a, d                                        ; $501e: $7a
	ld   de, $6007                                   ; $501f: $11 $07 $60
	inc  sp                                          ; $5022: $33
	ld   [$6400], sp                                 ; $5023: $08 $00 $64
	ld   a, e                                        ; $5026: $7b
	ld   sp, $2207                                   ; $5027: $31 $07 $22
	inc  [hl]                                        ; $502a: $34
	ld   [$6400], sp                                 ; $502b: $08 $00 $64
	ld   a, h                                        ; $502e: $7c
	ld   d, c                                        ; $502f: $51
	rlca                                             ; $5030: $07
	ldh  [c], a                                      ; $5031: $e2
	inc  [hl]                                        ; $5032: $34
	ld   [$6400], sp                                 ; $5033: $08 $00 $64
	ld   a, l                                        ; $5036: $7d
	ld   h, c                                        ; $5037: $61
	rlca                                             ; $5038: $07
	and  a                                           ; $5039: $a7
	dec  [hl]                                        ; $503a: $35
	ld   [$6400], sp                                 ; $503b: $08 $00 $64
	ld   a, [hl]                                     ; $503e: $7e
	ld   b, c                                        ; $503f: $41
	rlca                                             ; $5040: $07
	ld   l, c                                        ; $5041: $69
	ld   [hl], $08                                   ; $5042: $36 $08
	nop                                              ; $5044: $00
	ld   h, h                                        ; $5045: $64
	sbc  [hl]                                        ; $5046: $9e
	sub  d                                           ; $5047: $92
	ld   b, $00                                      ; $5048: $06 $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	ld   e, $e4                                      ; $504c: $1e $e4
	sbc  a                                           ; $504e: $9f
	ld   h, d                                        ; $504f: $62
	ld   [bc], a                                     ; $5050: $02
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	db   $e4                                         ; $5055: $e4
	and  b                                           ; $5056: $a0
	ld   [hl-], a                                    ; $5057: $32
	ld   bc, $0000                                   ; $5058: $01 $00 $00
	nop                                              ; $505b: $00
	inc  b                                           ; $505c: $04
	db   $e4                                         ; $505d: $e4
	and  c                                           ; $505e: $a1
	ld   b, d                                        ; $505f: $42
	ld   [bc], a                                     ; $5060: $02
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	dec  de                                          ; $5064: $1b
	db   $e4                                         ; $5065: $e4
	and  d                                           ; $5066: $a2
	ld   d, d                                        ; $5067: $52
	ld   bc, $0000                                   ; $5068: $01 $00 $00
	nop                                              ; $506b: $00
	ld   a, [hl+]                                    ; $506c: $2a
	db   $e4                                         ; $506d: $e4
	and  e                                           ; $506e: $a3
	ld   [hl+], a                                    ; $506f: $22
	ld   [bc], a                                     ; $5070: $02
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	inc  e                                           ; $5074: $1c
	db   $e4                                         ; $5075: $e4
	and  h                                           ; $5076: $a4
	ld   [de], a                                     ; $5077: $12
	ld   bc, $0000                                   ; $5078: $01 $00 $00
	nop                                              ; $507b: $00
	dec  b                                           ; $507c: $05
	ld   h, h                                        ; $507d: $64
	and  l                                           ; $507e: $a5
	sub  d                                           ; $507f: $92
	ld   [hl], a                                     ; $5080: $77
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	ld   e, $e4                                      ; $5084: $1e $e4
	and  [hl]                                        ; $5086: $a6
	ld   h, d                                        ; $5087: $62
	ld   [hl], a                                     ; $5088: $77
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	db   $e4                                         ; $508d: $e4
	and  a                                           ; $508e: $a7
	ld   b, d                                        ; $508f: $42
	ld   [hl], a                                     ; $5090: $77
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	db   $e4                                         ; $5095: $e4
	xor  b                                           ; $5096: $a8
	ld   d, d                                        ; $5097: $52
	ld   [hl], a                                     ; $5098: $77
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	db   $e4                                         ; $509d: $e4
	xor  c                                           ; $509e: $a9
	ld   [hl+], a                                    ; $509f: $22
	ld   [hl], a                                     ; $50a0: $77
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	ld   a, [hl+]                                    ; $50a4: $2a
	db   $e4                                         ; $50a5: $e4
	xor  d                                           ; $50a6: $aa
	ld   [de], a                                     ; $50a7: $12
	ld   [hl], a                                     ; $50a8: $77
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	inc  bc                                          ; $50ac: $03
	db   $e4                                         ; $50ad: $e4
	xor  e                                           ; $50ae: $ab
	ld   h, d                                        ; $50af: $62
	inc  hl                                          ; $50b0: $23
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	nop                                              ; $50b3: $00
	nop                                              ; $50b4: $00
	db   $e4                                         ; $50b5: $e4
	xor  h                                           ; $50b6: $ac
	ld   [hl-], a                                    ; $50b7: $32
	inc  h                                           ; $50b8: $24
	nop                                              ; $50b9: $00
	nop                                              ; $50ba: $00
	nop                                              ; $50bb: $00
	ld   [$ade4], sp                                 ; $50bc: $08 $e4 $ad
	ld   b, d                                        ; $50bf: $42
	inc  hl                                          ; $50c0: $23
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	ld   a, [hl+]                                    ; $50c4: $2a
	db   $e4                                         ; $50c5: $e4
	xor  [hl]                                        ; $50c6: $ae
	ld   d, d                                        ; $50c7: $52
	inc  hl                                          ; $50c8: $23
	nop                                              ; $50c9: $00
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	dec  b                                           ; $50cc: $05
	db   $e4                                         ; $50cd: $e4
	xor  a                                           ; $50ce: $af
	ld   [hl+], a                                    ; $50cf: $22
	inc  h                                           ; $50d0: $24
	nop                                              ; $50d1: $00
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	inc  e                                           ; $50d4: $1c
	db   $e4                                         ; $50d5: $e4
	or   b                                           ; $50d6: $b0
	ld   [de], a                                     ; $50d7: $12
	inc  h                                           ; $50d8: $24
	ld   b, l                                        ; $50d9: $45
	dec  c                                           ; $50da: $0d
	ld   e, $0e                                      ; $50db: $1e $0e
	db   $e4                                         ; $50dd: $e4
	or   c                                           ; $50de: $b1
	ld   [hl-], a                                    ; $50df: $32
	ld   [hl], a                                     ; $50e0: $77
	nop                                              ; $50e1: $00
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	nop                                              ; $50e4: $00
	db   $e4                                         ; $50e5: $e4
	or   d                                           ; $50e6: $b2
	ld   h, d                                        ; $50e7: $62
	ld   b, [hl]                                     ; $50e8: $46
	nop                                              ; $50e9: $00
	nop                                              ; $50ea: $00
	nop                                              ; $50eb: $00
	nop                                              ; $50ec: $00
	db   $e4                                         ; $50ed: $e4
	or   e                                           ; $50ee: $b3
	ld   [hl-], a                                    ; $50ef: $32
	ld   b, [hl]                                     ; $50f0: $46
	nop                                              ; $50f1: $00
	nop                                              ; $50f2: $00
	nop                                              ; $50f3: $00
	nop                                              ; $50f4: $00
	db   $e4                                         ; $50f5: $e4
	or   h                                           ; $50f6: $b4
	ld   b, d                                        ; $50f7: $42
	ld   b, [hl]                                     ; $50f8: $46
	nop                                              ; $50f9: $00
	nop                                              ; $50fa: $00
	nop                                              ; $50fb: $00
	add  hl, bc                                      ; $50fc: $09
	db   $e4                                         ; $50fd: $e4
	or   l                                           ; $50fe: $b5
	ld   d, d                                        ; $50ff: $52
	ld   b, [hl]                                     ; $5100: $46
	nop                                              ; $5101: $00
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	dec  d                                           ; $5104: $15
	db   $e4                                         ; $5105: $e4
	or   [hl]                                        ; $5106: $b6
	ld   [hl+], a                                    ; $5107: $22
	ld   b, [hl]                                     ; $5108: $46
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
	dec  b                                           ; $510c: $05
	db   $e4                                         ; $510d: $e4
	or   a                                           ; $510e: $b7
	ld   [de], a                                     ; $510f: $12
	ld   d, [hl]                                     ; $5110: $56
	nop                                              ; $5111: $00
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	ld   a, [hl+]                                    ; $5114: $2a
	ld   h, h                                        ; $5115: $64
	cp   b                                           ; $5116: $b8
	ld   d, d                                        ; $5117: $52
	inc  [hl]                                        ; $5118: $34
	nop                                              ; $5119: $00
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	ld   h, h                                        ; $511d: $64
	cp   c                                           ; $511e: $b9
	ld   [hl+], a                                    ; $511f: $22
	ld   b, l                                        ; $5120: $45
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	nop                                              ; $5124: $00
	ld   h, h                                        ; $5125: $64
	cp   d                                           ; $5126: $ba
	ld   [de], a                                     ; $5127: $12
	ld   b, l                                        ; $5128: $45
	nop                                              ; $5129: $00
	nop                                              ; $512a: $00
	nop                                              ; $512b: $00
	nop                                              ; $512c: $00
	ld   h, h                                        ; $512d: $64
	cp   e                                           ; $512e: $bb
	ld   [hl-], a                                    ; $512f: $32
	ld   b, l                                        ; $5130: $45
	nop                                              ; $5131: $00
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	ld   h, h                                        ; $5135: $64
	cp   h                                           ; $5136: $bc
	ld   b, d                                        ; $5137: $42
	ld   b, l                                        ; $5138: $45
	nop                                              ; $5139: $00
	nop                                              ; $513a: $00
	nop                                              ; $513b: $00
	nop                                              ; $513c: $00
	ld   h, h                                        ; $513d: $64
	cp   l                                           ; $513e: $bd
	ld   h, d                                        ; $513f: $62
	ld   b, l                                        ; $5140: $45
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	ld   h, h                                        ; $5145: $64
	cp   [hl]                                        ; $5146: $be
	ld   [hl+], a                                    ; $5147: $22
	ld   b, $00                                      ; $5148: $06 $00
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	nop                                              ; $514c: $00
	ld   h, h                                        ; $514d: $64
	cp   a                                           ; $514e: $bf
	ld   [de], a                                     ; $514f: $12
	ld   b, $00                                      ; $5150: $06 $00
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00
	nop                                              ; $5154: $00
	ld   h, h                                        ; $5155: $64
	ret  nz                                          ; $5156: $c0

	ld   [hl-], a                                    ; $5157: $32
	ld   b, $00                                      ; $5158: $06 $00
	nop                                              ; $515a: $00
	nop                                              ; $515b: $00
	nop                                              ; $515c: $00
	ld   h, h                                        ; $515d: $64
	pop  bc                                          ; $515e: $c1
	ld   b, d                                        ; $515f: $42
	ld   b, $00                                      ; $5160: $06 $00
	nop                                              ; $5162: $00
	nop                                              ; $5163: $00
	nop                                              ; $5164: $00
	ld   h, h                                        ; $5165: $64
	jp   nz, $0662                                   ; $5166: $c2 $62 $06

	nop                                              ; $5169: $00
	nop                                              ; $516a: $00
	nop                                              ; $516b: $00
	nop                                              ; $516c: $00
	ld   h, h                                        ; $516d: $64
	jp   $0652                                       ; $516e: $c3 $52 $06


	nop                                              ; $5171: $00
	nop                                              ; $5172: $00
	nop                                              ; $5173: $00
	nop                                              ; $5174: $00
	ld   h, h                                        ; $5175: $64
	call nz, $7722                           ; $5176: $c4 $22 $77
	nop                                              ; $5179: $00
	nop                                              ; $517a: $00
	nop                                              ; $517b: $00
	nop                                              ; $517c: $00
	ld   h, h                                        ; $517d: $64
	push bc                                          ; $517e: $c5
	ld   [de], a                                     ; $517f: $12
	ld   [hl], a                                     ; $5180: $77
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	nop                                              ; $5184: $00
	ld   h, h                                        ; $5185: $64
	add  $32                                         ; $5186: $c6 $32
	ld   [hl], a                                     ; $5188: $77
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	nop                                              ; $518b: $00
	nop                                              ; $518c: $00
	ld   h, h                                        ; $518d: $64
	rst  ToBoot                                         ; $518e: $c7
	ld   b, d                                        ; $518f: $42
	ld   [hl], a                                     ; $5190: $77
	nop                                              ; $5191: $00
	nop                                              ; $5192: $00
	nop                                              ; $5193: $00
	nop                                              ; $5194: $00
	ld   h, h                                        ; $5195: $64
	ret  z                                           ; $5196: $c8

	ld   h, d                                        ; $5197: $62
	ld   [hl], a                                     ; $5198: $77
	nop                                              ; $5199: $00
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	nop                                              ; $519c: $00
	ld   h, h                                        ; $519d: $64
	ret                                              ; $519e: $c9


	ld   d, d                                        ; $519f: $52
	ld   [hl], a                                     ; $51a0: $77
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	nop                                              ; $51a5: $00
	db   $e4                                         ; $51a6: $e4
	jp   z, $2342                                    ; $51a7: $ca $42 $23

	ld   d, e                                        ; $51aa: $53
	ccf                                              ; $51ab: $3f
	ld   e, $01                                      ; $51ac: $1e $01
	db   $e4                                         ; $51ae: $e4
	bit  4, d                                        ; $51af: $cb $62
	ld   d, l                                        ; $51b1: $55
	ld   a, $01                                      ; $51b2: $3e $01
	rra                                              ; $51b4: $1f
	nop                                              ; $51b5: $00
	db   $e4                                         ; $51b6: $e4
	call z, Call_040_5532                            ; $51b7: $cc $32 $55
	ei                                               ; $51ba: $fb
	ld   [bc], a                                     ; $51bb: $02
	rra                                              ; $51bc: $1f
	nop                                              ; $51bd: $00
	db   $e4                                         ; $51be: $e4
	call Call_040_5542                               ; $51bf: $cd $42 $55
	ret                                              ; $51c2: $c9


	inc  b                                           ; $51c3: $04
	rra                                              ; $51c4: $1f
	nop                                              ; $51c5: $00
	db   $e4                                         ; $51c6: $e4
	adc  $52                                         ; $51c7: $ce $52
	ld   d, l                                        ; $51c9: $55
	ld   [hl], a                                     ; $51ca: $77
	ld   b, $1f                                      ; $51cb: $06 $1f
	nop                                              ; $51cd: $00
	db   $e4                                         ; $51ce: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51cf: $cf
	ld   [hl+], a                                    ; $51d0: $22
	ld   d, l                                        ; $51d1: $55
	daa                                              ; $51d2: $27
	ld   [$001f], sp                                 ; $51d3: $08 $1f $00
	db   $e4                                         ; $51d6: $e4
	ret  nc                                          ; $51d7: $d0

	ld   [de], a                                     ; $51d8: $12
	ld   d, l                                        ; $51d9: $55
	add  hl, bc                                      ; $51da: $09
	ld   a, [bc]                                     ; $51db: $0a
	rra                                              ; $51dc: $1f
	nop                                              ; $51dd: $00
	db   $e4                                         ; $51de: $e4
	pop  de                                          ; $51df: $d1
	ld   h, d                                        ; $51e0: $62
	ld   [hl], a                                     ; $51e1: $77
	call c, $1f0b                                    ; $51e2: $dc $0b $1f
	ld   bc, $d2e4                                   ; $51e5: $01 $e4 $d2
	ld   b, d                                        ; $51e8: $42
	inc  [hl]                                        ; $51e9: $34
	ld   h, b                                        ; $51ea: $60
	inc  de                                          ; $51eb: $13
	rra                                              ; $51ec: $1f
	ld   bc, $0000                                   ; $51ed: $01 $00 $00
	db   $e4                                         ; $51f0: $e4
	db   $d3                                         ; $51f1: $d3
	ld   [hl+], a                                    ; $51f2: $22
	inc  bc                                          ; $51f3: $03
	ld   l, h                                        ; $51f4: $6c
	dec  d                                           ; $51f5: $15
	rra                                              ; $51f6: $1f
	nop                                              ; $51f7: $00
	db   $e4                                         ; $51f8: $e4
	call nc, $0362                                   ; $51f9: $d4 $62 $03
	add  c                                           ; $51fc: $81
	dec  hl                                          ; $51fd: $2b
	rra                                              ; $51fe: $1f
	nop                                              ; $51ff: $00
	db   $e4                                         ; $5200: $e4
	push de                                          ; $5201: $d5
	ld   b, d                                        ; $5202: $42
	inc  bc                                          ; $5203: $03
	ld   c, a                                        ; $5204: $4f
	add  hl, bc                                      ; $5205: $09
	jr   nz, jr_040_5208                             ; $5206: $20 $00

jr_040_5208:
	db   $e4                                         ; $5208: $e4
	sub  $32                                         ; $5209: $d6 $32
	inc  bc                                          ; $520b: $03
	cp   h                                           ; $520c: $bc
	dec  de                                          ; $520d: $1b
	jr   nz, jr_040_5210                             ; $520e: $20 $00

jr_040_5210:
	db   $e4                                         ; $5210: $e4
	rst  $10                                         ; $5211: $d7
	ld   d, d                                        ; $5212: $52
	inc  bc                                          ; $5213: $03
	call nz, $210d                                   ; $5214: $c4 $0d $21
	nop                                              ; $5217: $00
	db   $e4                                         ; $5218: $e4
	ret  c                                           ; $5219: $d8

	ld   [de], a                                     ; $521a: $12
	inc  bc                                          ; $521b: $03
	ld   a, [de]                                     ; $521c: $1a
	ld   [hl+], a                                    ; $521d: $22
	ld   hl, $e400                                   ; $521e: $21 $00 $e4
	reti                                             ; $5221: $d9


	ld   d, d                                        ; $5222: $52
	ld   d, l                                        ; $5223: $55
	ret  nz                                          ; $5224: $c0

	nop                                              ; $5225: $00
	ld   [hl+], a                                    ; $5226: $22
	nop                                              ; $5227: $00
	db   $e4                                         ; $5228: $e4
	jp   c, $5522                                    ; $5229: $da $22 $55

	cp   a                                           ; $522c: $bf
	ld   a, [de]                                     ; $522d: $1a
	ld   [hl+], a                                    ; $522e: $22
	nop                                              ; $522f: $00
	db   $e4                                         ; $5230: $e4
	db   $db                                         ; $5231: $db
	ld   [de], a                                     ; $5232: $12
	ld   d, l                                        ; $5233: $55
	ld   l, c                                        ; $5234: $69
	ld   [hl-], a                                    ; $5235: $32
	ld   [hl+], a                                    ; $5236: $22
	nop                                              ; $5237: $00
	db   $e4                                         ; $5238: $e4
	call c, Call_040_5562                            ; $5239: $dc $62 $55
	add  d                                           ; $523c: $82
	dec  bc                                          ; $523d: $0b
	inc  hl                                          ; $523e: $23
	nop                                              ; $523f: $00
	db   $e4                                         ; $5240: $e4
	db   $dd                                         ; $5241: $dd
	ld   b, d                                        ; $5242: $42
	ld   d, l                                        ; $5243: $55
	ld   a, c                                        ; $5244: $79
	dec  h                                           ; $5245: $25
	inc  hl                                          ; $5246: $23
	nop                                              ; $5247: $00
	db   $e4                                         ; $5248: $e4
	sbc  $32                                         ; $5249: $de $32
	ld   d, l                                        ; $524b: $55
	ret  nz                                          ; $524c: $c0

	dec  sp                                          ; $524d: $3b
	inc  hl                                          ; $524e: $23
	nop                                              ; $524f: $00
	db   $e4                                         ; $5250: $e4
	rst  JumpTable                                         ; $5251: $df
	ld   [bc], a                                     ; $5252: $02
	ld   h, [hl]                                     ; $5253: $66
	nop                                              ; $5254: $00
	nop                                              ; $5255: $00
	nop                                              ; $5256: $00
	nop                                              ; $5257: $00
	db   $e4                                         ; $5258: $e4
	ldh  [rSC], a                                    ; $5259: $e0 $02
	ld   [hl], a                                     ; $525b: $77
	nop                                              ; $525c: $00
	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	ld   bc, $e1e4                                   ; $525f: $01 $e4 $e1
	sub  d                                           ; $5262: $92
	ld   d, l                                        ; $5263: $55
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	ld   bc, $e2e4                                   ; $5267: $01 $e4 $e2
	ld   [hl-], a                                    ; $526a: $32
	ld   [de], a                                     ; $526b: $12
	ld   a, [de]                                     ; $526c: $1a
	daa                                              ; $526d: $27
	dec  h                                           ; $526e: $25
	nop                                              ; $526f: $00
	db   $e4                                         ; $5270: $e4
	db   $e3                                         ; $5271: $e3
	ld   d, d                                        ; $5272: $52
	inc  hl                                          ; $5273: $23
	ld   e, $29                                      ; $5274: $1e $29
	dec  h                                           ; $5276: $25
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	ld   h, h                                        ; $5279: $64
	rlca                                             ; $527a: $07
	ld   hl, $7005                                   ; $527b: $21 $05 $70
	dec  e                                           ; $527e: $1d
	ld   [bc], a                                     ; $527f: $02
	nop                                              ; $5280: $00
	ld   h, h                                        ; $5281: $64
	ld   [$0511], sp                                 ; $5282: $08 $11 $05
	ld   sp, $021e                                   ; $5285: $31 $1e $02
	nop                                              ; $5288: $00
	ld   h, h                                        ; $5289: $64
	add  hl, bc                                      ; $528a: $09
	ld   sp, $f305                                   ; $528b: $31 $05 $f3

jr_040_528e:
	ld   e, $02                                      ; $528e: $1e $02
	nop                                              ; $5290: $00
	ld   h, h                                        ; $5291: $64
	ld   a, [bc]                                     ; $5292: $0a
	ld   d, c                                        ; $5293: $51
	dec  b                                           ; $5294: $05
	or   e                                           ; $5295: $b3
	rra                                              ; $5296: $1f
	ld   [bc], a                                     ; $5297: $02
	nop                                              ; $5298: $00
	ld   h, h                                        ; $5299: $64
	dec  bc                                          ; $529a: $0b
	ld   h, c                                        ; $529b: $61
	dec  b                                           ; $529c: $05
	ld   a, b                                        ; $529d: $78
	jr   nz, jr_040_52a2                             ; $529e: $20 $02

	nop                                              ; $52a0: $00
	ld   h, h                                        ; $52a1: $64

jr_040_52a2:
	inc  c                                           ; $52a2: $0c
	ld   b, c                                        ; $52a3: $41
	dec  b                                           ; $52a4: $05
	ld   a, [hl-]                                    ; $52a5: $3a
	ld   hl, $0002                                   ; $52a6: $21 $02 $00
	ld   h, h                                        ; $52a9: $64
	dec  c                                           ; $52aa: $0d
	pop  hl                                          ; $52ab: $e1
	inc  b                                           ; $52ac: $04
	db   $f4                                         ; $52ad: $f4
	ld   hl, $0002                                   ; $52ae: $21 $02 $00
	ld   h, h                                        ; $52b1: $64
	scf                                              ; $52b2: $37
	sub  d                                           ; $52b3: $92
	dec  b                                           ; $52b4: $05
	nop                                              ; $52b5: $00
	nop                                              ; $52b6: $00
	nop                                              ; $52b7: $00
	ld   e, $e4                                      ; $52b8: $1e $e4
	jr   c, jr_040_528e                              ; $52ba: $38 $d2

	nop                                              ; $52bc: $00
	jp   z, $162f                                    ; $52bd: $ca $2f $16

	dec  c                                           ; $52c0: $0d
	db   $e4                                         ; $52c1: $e4
	add  hl, sp                                      ; $52c2: $39
	ld   h, d                                        ; $52c3: $62
	ld   bc, $0000                                   ; $52c4: $01 $00 $00
	nop                                              ; $52c7: $00
	nop                                              ; $52c8: $00
	db   $e4                                         ; $52c9: $e4
	ld   a, [hl-]                                    ; $52ca: $3a
	ld   [hl-], a                                    ; $52cb: $32
	ld   bc, $0000                                   ; $52cc: $01 $00 $00
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00
	db   $e4                                         ; $52d1: $e4
	dec  sp                                          ; $52d2: $3b
	ld   b, d                                        ; $52d3: $42
	ld   bc, $0000                                   ; $52d4: $01 $00 $00
	nop                                              ; $52d7: $00
	nop                                              ; $52d8: $00
	db   $e4                                         ; $52d9: $e4
	inc  a                                           ; $52da: $3c
	ld   d, d                                        ; $52db: $52
	ld   bc, $0000                                   ; $52dc: $01 $00 $00
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	db   $e4                                         ; $52e1: $e4
	dec  a                                           ; $52e2: $3d
	ld   [hl+], a                                    ; $52e3: $22
	ld   bc, $0000                                   ; $52e4: $01 $00 $00
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	db   $e4                                         ; $52e9: $e4
	ld   a, $12                                      ; $52ea: $3e $12
	ld   bc, $0000                                   ; $52ec: $01 $00 $00
	nop                                              ; $52ef: $00
	nop                                              ; $52f0: $00
	db   $e4                                         ; $52f1: $e4
	db   $e4                                         ; $52f2: $e4
	ld   h, d                                        ; $52f3: $62
	ld   [de], a                                     ; $52f4: $12
	nop                                              ; $52f5: $00
	nop                                              ; $52f6: $00
	nop                                              ; $52f7: $00
	nop                                              ; $52f8: $00
	db   $e4                                         ; $52f9: $e4
	push hl                                          ; $52fa: $e5
	ld   [hl-], a                                    ; $52fb: $32
	ld   [de], a                                     ; $52fc: $12
	nop                                              ; $52fd: $00
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	db   $e4                                         ; $5301: $e4
	and  $42                                         ; $5302: $e6 $42
	ld   [de], a                                     ; $5304: $12
	nop                                              ; $5305: $00
	nop                                              ; $5306: $00
	nop                                              ; $5307: $00
	nop                                              ; $5308: $00
	db   $e4                                         ; $5309: $e4
	rst  $20                                         ; $530a: $e7
	ld   d, d                                        ; $530b: $52
	inc  de                                          ; $530c: $13
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	nop                                              ; $530f: $00
	nop                                              ; $5310: $00
	db   $e4                                         ; $5311: $e4
	add  sp, $22                                     ; $5312: $e8 $22
	inc  de                                          ; $5314: $13
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	db   $e4                                         ; $5319: $e4
	jp   hl                                          ; $531a: $e9


	ld   [de], a                                     ; $531b: $12
	inc  de                                          ; $531c: $13
	db   $10                                         ; $531d: $10
	dec  a                                           ; $531e: $3d
	dec  h                                           ; $531f: $25
	nop                                              ; $5320: $00
	db   $e4                                         ; $5321: $e4
	ld   [$2462], a                                  ; $5322: $ea $62 $24
	nop                                              ; $5325: $00
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	nop                                              ; $5328: $00
	db   $e4                                         ; $5329: $e4
	db   $eb                                         ; $532a: $eb
	ld   [hl-], a                                    ; $532b: $32
	inc  h                                           ; $532c: $24
	nop                                              ; $532d: $00
	nop                                              ; $532e: $00
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	db   $e4                                         ; $5331: $e4
	db   $ec                                         ; $5332: $ec
	ld   b, d                                        ; $5333: $42
	inc  hl                                          ; $5334: $23
	nop                                              ; $5335: $00
	nop                                              ; $5336: $00
	nop                                              ; $5337: $00
	ld   a, [hl+]                                    ; $5338: $2a
	db   $e4                                         ; $5339: $e4
	db   $ed                                         ; $533a: $ed
	ld   d, d                                        ; $533b: $52
	inc  [hl]                                        ; $533c: $34
	nop                                              ; $533d: $00
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	dec  d                                           ; $5340: $15
	db   $e4                                         ; $5341: $e4
	xor  $22                                         ; $5342: $ee $22
	inc  [hl]                                        ; $5344: $34
	nop                                              ; $5345: $00
	nop                                              ; $5346: $00
	nop                                              ; $5347: $00
	inc  d                                           ; $5348: $14
	db   $e4                                         ; $5349: $e4
	rst  $28                                         ; $534a: $ef
	ld   [de], a                                     ; $534b: $12
	inc  [hl]                                        ; $534c: $34
	nop                                              ; $534d: $00
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	nop                                              ; $5350: $00
	ld   h, h                                        ; $5351: $64
	inc  hl                                          ; $5352: $23
	pop  bc                                          ; $5353: $c1
	inc  b                                           ; $5354: $04
	ld   h, e                                        ; $5355: $63
	dec  sp                                          ; $5356: $3b
	inc  bc                                          ; $5357: $03
	nop                                              ; $5358: $00
	ld   h, h                                        ; $5359: $64
	inc  h                                           ; $535a: $24
	pop  de                                          ; $535b: $d1
	inc  b                                           ; $535c: $04
	add  h                                           ; $535d: $84
	ccf                                              ; $535e: $3f
	inc  bc                                          ; $535f: $03
	nop                                              ; $5360: $00
	ld   h, h                                        ; $5361: $64
	ld   d, d                                        ; $5362: $52
	ld   [hl+], a                                    ; $5363: $22
	inc  b                                           ; $5364: $04
	nop                                              ; $5365: $00
	nop                                              ; $5366: $00
	nop                                              ; $5367: $00
	nop                                              ; $5368: $00
	ld   h, h                                        ; $5369: $64
	ld   d, e                                        ; $536a: $53
	ld   [de], a                                     ; $536b: $12
	inc  b                                           ; $536c: $04
	nop                                              ; $536d: $00
	nop                                              ; $536e: $00
	nop                                              ; $536f: $00
	nop                                              ; $5370: $00
	ld   h, h                                        ; $5371: $64
	ld   d, h                                        ; $5372: $54
	ld   [hl-], a                                    ; $5373: $32
	inc  b                                           ; $5374: $04
	nop                                              ; $5375: $00
	nop                                              ; $5376: $00
	nop                                              ; $5377: $00
	nop                                              ; $5378: $00
	ld   h, h                                        ; $5379: $64
	ld   d, l                                        ; $537a: $55
	ld   b, d                                        ; $537b: $42
	inc  b                                           ; $537c: $04
	nop                                              ; $537d: $00
	nop                                              ; $537e: $00
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	ld   h, h                                        ; $5381: $64
	ld   d, [hl]                                     ; $5382: $56
	ld   h, d                                        ; $5383: $62
	inc  b                                           ; $5384: $04
	nop                                              ; $5385: $00
	nop                                              ; $5386: $00
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	ld   h, h                                        ; $5389: $64
	ld   d, a                                        ; $538a: $57
	ld   d, d                                        ; $538b: $52
	inc  b                                           ; $538c: $04
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	ld   h, h                                        ; $5391: $64
	dec  hl                                          ; $5392: $2b
	pop  hl                                          ; $5393: $e1
	rlca                                             ; $5394: $07
	ld   e, $0b                                      ; $5395: $1e $0b
	inc  b                                           ; $5397: $04
	stop                                             ; $5398: $10 $00
	db   $e4                                         ; $539a: $e4
	inc  l                                           ; $539b: $2c
	ld   bc, $1e06                                   ; $539c: $01 $06 $1e
	dec  c                                           ; $539f: $0d
	inc  b                                           ; $53a0: $04
	ld   bc, $6400                                   ; $53a1: $01 $00 $64
	ld   l, $61                                      ; $53a4: $2e $61
	ld   b, $2f                                      ; $53a6: $06 $2f
	rrca                                             ; $53a8: $0f
	inc  b                                           ; $53a9: $04
	nop                                              ; $53aa: $00
	ld   h, h                                        ; $53ab: $64
	cpl                                              ; $53ac: $2f
	ld   d, c                                        ; $53ad: $51
	ld   b, $e5                                      ; $53ae: $06 $e5
	add  hl, de                                      ; $53b0: $19
	inc  b                                           ; $53b1: $04
	nop                                              ; $53b2: $00
	ld   h, h                                        ; $53b3: $64
	jr   nc, jr_040_53f7                             ; $53b4: $30 $41

	ld   b, $71                                      ; $53b6: $06 $71
	inc  hl                                          ; $53b8: $23
	inc  b                                           ; $53b9: $04
	nop                                              ; $53ba: $00
	ld   h, h                                        ; $53bb: $64
	ld   sp, $0631                                   ; $53bc: $31 $31 $06
	sub  b                                           ; $53bf: $90
	dec  l                                           ; $53c0: $2d
	inc  b                                           ; $53c1: $04
	nop                                              ; $53c2: $00
	ld   h, h                                        ; $53c3: $64
	ld   [hl-], a                                    ; $53c4: $32
	ld   hl, $5b06                                   ; $53c5: $21 $06 $5b
	scf                                              ; $53c8: $37
	inc  b                                           ; $53c9: $04
	nop                                              ; $53ca: $00
	ld   h, h                                        ; $53cb: $64
	inc  sp                                          ; $53cc: $33
	ld   de, $8d06                                   ; $53cd: $11 $06 $8d
	inc  bc                                          ; $53d0: $03
	dec  b                                           ; $53d1: $05
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	nop                                              ; $53d4: $00
	nop                                              ; $53d5: $00
	db   $e4                                         ; $53d6: $e4
	ldh  a, [rSCY]                                   ; $53d7: $f0 $42
	ld   [bc], a                                     ; $53d9: $02
	xor  a                                           ; $53da: $af
	add  hl, de                                      ; $53db: $19
	ld   h, $00                                      ; $53dc: $26 $00
	db   $e4                                         ; $53de: $e4
	pop  af                                          ; $53df: $f1
	ld   a, [hl-]                                    ; $53e0: $3a
	ld   [de], a                                     ; $53e1: $12
	ld   e, a                                        ; $53e2: $5f
	scf                                              ; $53e3: $37
	ld   h, $0e                                      ; $53e4: $26 $0e
	ld   h, h                                        ; $53e6: $64
	jr   c, jr_040_540a                              ; $53e7: $38 $21

	dec  b                                           ; $53e9: $05
	ret  c                                           ; $53ea: $d8

	dec  d                                           ; $53eb: $15
	dec  b                                           ; $53ec: $05
	nop                                              ; $53ed: $00
	ld   h, h                                        ; $53ee: $64
	add  hl, sp                                      ; $53ef: $39
	ld   de, $9905                                   ; $53f0: $11 $05 $99
	ld   d, $05                                      ; $53f3: $16 $05
	nop                                              ; $53f5: $00
	ld   h, h                                        ; $53f6: $64

jr_040_53f7:
	ld   a, [hl-]                                    ; $53f7: $3a
	ld   sp, $5b05                                   ; $53f8: $31 $05 $5b
	rla                                              ; $53fb: $17
	dec  b                                           ; $53fc: $05
	nop                                              ; $53fd: $00
	ld   h, h                                        ; $53fe: $64
	dec  sp                                          ; $53ff: $3b
	ld   d, c                                        ; $5400: $51
	dec  b                                           ; $5401: $05
	dec  de                                          ; $5402: $1b
	jr   jr_040_540a                                 ; $5403: $18 $05

	nop                                              ; $5405: $00
	ld   h, h                                        ; $5406: $64
	inc  a                                           ; $5407: $3c
	ld   h, c                                        ; $5408: $61
	dec  b                                           ; $5409: $05

jr_040_540a:
	ldh  [rAUD2LOW], a                               ; $540a: $e0 $18
	dec  b                                           ; $540c: $05
	nop                                              ; $540d: $00
	ld   h, h                                        ; $540e: $64
	dec  a                                           ; $540f: $3d
	ld   b, c                                        ; $5410: $41
	dec  b                                           ; $5411: $05
	and  d                                           ; $5412: $a2
	add  hl, de                                      ; $5413: $19
	dec  b                                           ; $5414: $05
	nop                                              ; $5415: $00
	ld   h, h                                        ; $5416: $64
	ld   b, d                                        ; $5417: $42
	pop  hl                                          ; $5418: $e1
	inc  b                                           ; $5419: $04
	ld   h, d                                        ; $541a: $62
	ld   sp, $0005                                   ; $541b: $31 $05 $00
	ld   h, h                                        ; $541e: $64
	ld   l, d                                        ; $541f: $6a
	sub  d                                           ; $5420: $92
	dec  b                                           ; $5421: $05
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	ld   e, $e4                                      ; $5425: $1e $e4
	ld   l, e                                        ; $5427: $6b
	ld   h, d                                        ; $5428: $62
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	nop                                              ; $542c: $00
	nop                                              ; $542d: $00
	db   $e4                                         ; $542e: $e4
	ld   l, h                                        ; $542f: $6c
	ld   [hl-], a                                    ; $5430: $32
	nop                                              ; $5431: $00
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	nop                                              ; $5434: $00
	rla                                              ; $5435: $17
	db   $e4                                         ; $5436: $e4
	ld   l, l                                        ; $5437: $6d
	ld   b, d                                        ; $5438: $42
	ld   bc, $0000                                   ; $5439: $01 $00 $00
	nop                                              ; $543c: $00
	dec  de                                          ; $543d: $1b
	db   $e4                                         ; $543e: $e4
	ld   l, [hl]                                     ; $543f: $6e
	ld   d, d                                        ; $5440: $52
	ld   bc, $0000                                   ; $5441: $01 $00 $00
	nop                                              ; $5444: $00
	dec  d                                           ; $5445: $15
	db   $e4                                         ; $5446: $e4
	ld   l, a                                        ; $5447: $6f
	ld   [hl+], a                                    ; $5448: $22
	ld   bc, $0000                                   ; $5449: $01 $00 $00
	nop                                              ; $544c: $00
	ld   [$70e4], sp                                 ; $544d: $08 $e4 $70
	ld   [de], a                                     ; $5450: $12
	nop                                              ; $5451: $00
	nop                                              ; $5452: $00
	nop                                              ; $5453: $00
	nop                                              ; $5454: $00
	nop                                              ; $5455: $00
	db   $e4                                         ; $5456: $e4
	ldh  a, [c]                                      ; $5457: $f2
	jp   nc, $aa23                                   ; $5458: $d2 $23 $aa

	dec  sp                                          ; $545b: $3b
	ld   h, $0d                                      ; $545c: $26 $0d
	db   $e4                                         ; $545e: $e4
	di                                               ; $545f: $f3
	jp   nz, $2e02                                   ; $5460: $c2 $02 $2e

	inc  a                                           ; $5463: $3c
	ld   h, $0d                                      ; $5464: $26 $0d
	db   $e4                                         ; $5466: $e4
	db   $f4                                         ; $5467: $f4
	ld   h, d                                        ; $5468: $62
	ld   bc, $0000                                   ; $5469: $01 $00 $00
	nop                                              ; $546c: $00
	rrca                                             ; $546d: $0f
	db   $e4                                         ; $546e: $e4
	push af                                          ; $546f: $f5
	ld   [hl-], a                                    ; $5470: $32
	ld   [bc], a                                     ; $5471: $02
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	nop                                              ; $5475: $00
	db   $e4                                         ; $5476: $e4
	or   $12                                         ; $5477: $f6 $12
	ld   [bc], a                                     ; $5479: $02
	and  a                                           ; $547a: $a7
	ld   b, $27                                      ; $547b: $06 $27
	nop                                              ; $547d: $00
	db   $e4                                         ; $547e: $e4
	rst  $30                                         ; $547f: $f7
	ld   b, d                                        ; $5480: $42
	ld   [de], a                                     ; $5481: $12
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	dec  b                                           ; $5485: $05
	db   $e4                                         ; $5486: $e4
	ld   hl, sp+$52                                  ; $5487: $f8 $52
	ld   [de], a                                     ; $5489: $12
	nop                                              ; $548a: $00

jr_040_548b:
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	dec  d                                           ; $548d: $15
	db   $e4                                         ; $548e: $e4
	ld   sp, hl                                      ; $548f: $f9
	ld   [hl+], a                                    ; $5490: $22
	ld   [de], a                                     ; $5491: $12
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	db   $e4                                         ; $5496: $e4
	ld   a, a                                        ; $5497: $7f
	jp   nz, $5802                           ; $5498: $c2 $02 $58

	add  hl, de                                      ; $549b: $19
	dec  de                                          ; $549c: $1b
	dec  c                                           ; $549d: $0d
	db   $e4                                         ; $549e: $e4
	ld   a, [$1362]                                  ; $549f: $fa $62 $13
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	jr   z, jr_040_548b                              ; $54a5: $28 $e4

	ei                                               ; $54a7: $fb
	ld   [hl-], a                                    ; $54a8: $32
	inc  hl                                          ; $54a9: $23
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	nop                                              ; $54ad: $00
	db   $e4                                         ; $54ae: $e4
	db   $fc                                         ; $54af: $fc
	ld   b, d                                        ; $54b0: $42
	inc  hl                                          ; $54b1: $23
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	dec  de                                          ; $54b5: $1b
	db   $e4                                         ; $54b6: $e4
	db   $fd                                         ; $54b7: $fd
	ld   d, d                                        ; $54b8: $52
	inc  hl                                          ; $54b9: $23
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	inc  c                                           ; $54bd: $0c
	db   $e4                                         ; $54be: $e4
	cp   $22                                         ; $54bf: $fe $22
	inc  hl                                          ; $54c1: $23
	add  $25                                         ; $54c2: $c6 $25
	daa                                              ; $54c4: $27
	nop                                              ; $54c5: $00
	db   $e4                                         ; $54c6: $e4
	rst  $38                                         ; $54c7: $ff
	ld   [de], a                                     ; $54c8: $12
	inc  hl                                          ; $54c9: $23
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	ld   [$5564], sp                                 ; $54cd: $08 $64 $55
	pop  de                                          ; $54d0: $d1
	inc  b                                           ; $54d1: $04
	ld   b, h                                        ; $54d2: $44
	inc  [hl]                                        ; $54d3: $34
	ld   b, $00                                      ; $54d4: $06 $00
	ld   h, h                                        ; $54d6: $64
	ld   d, [hl]                                     ; $54d7: $56
	pop  bc                                          ; $54d8: $c1
	inc  b                                           ; $54d9: $04
	ld   l, h                                        ; $54da: $6c
	jr   c, jr_040_54e3                              ; $54db: $38 $06

	nop                                              ; $54dd: $00
	ld   h, h                                        ; $54de: $64
	adc  h                                           ; $54df: $8c
	ld   [hl+], a                                    ; $54e0: $22
	inc  b                                           ; $54e1: $04
	nop                                              ; $54e2: $00

jr_040_54e3:
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	ld   h, h                                        ; $54e6: $64
	adc  l                                           ; $54e7: $8d
	ld   [de], a                                     ; $54e8: $12
	inc  b                                           ; $54e9: $04
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	ld   h, h                                        ; $54ee: $64
	adc  [hl]                                        ; $54ef: $8e
	ld   [hl-], a                                    ; $54f0: $32
	inc  b                                           ; $54f1: $04
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	ld   h, h                                        ; $54f6: $64
	adc  a                                           ; $54f7: $8f
	ld   b, d                                        ; $54f8: $42
	inc  b                                           ; $54f9: $04
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	ld   h, h                                        ; $54fe: $64
	sub  b                                           ; $54ff: $90
	ld   h, d                                        ; $5500: $62
	inc  b                                           ; $5501: $04
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	ld   h, h                                        ; $5506: $64
	sub  c                                           ; $5507: $91
	ld   d, d                                        ; $5508: $52
	inc  b                                           ; $5509: $04
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00
	ld   h, h                                        ; $550e: $64
	ld   h, e                                        ; $550f: $63
	pop  hl                                          ; $5510: $e1
	rlca                                             ; $5511: $07
	ld   d, c                                        ; $5512: $51
	ld   a, [bc]                                     ; $5513: $0a
	rlca                                             ; $5514: $07
	stop                                             ; $5515: $10 $00
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	db   $e4                                         ; $5519: $e4
	ld   h, h                                        ; $551a: $64
	ld   bc, $5806                                   ; $551b: $01 $06 $58
	inc  c                                           ; $551e: $0c
	rlca                                             ; $551f: $07
	ld   bc, $65e4                                   ; $5520: $01 $e4 $65
	ld   bc, $b406                                   ; $5523: $01 $06 $b4
	inc  c                                           ; $5526: $0c
	rlca                                             ; $5527: $07
	ld   bc, $e400                                   ; $5528: $01 $00 $e4
	nop                                              ; $552b: $00
	inc  bc                                          ; $552c: $03
	ld   b, h                                        ; $552d: $44
	ld   d, [hl]                                     ; $552e: $56
	add  hl, hl                                      ; $552f: $29
	daa                                              ; $5530: $27
	nop                                              ; $5531: $00

Call_040_5532:
	db   $e4                                         ; $5532: $e4
	ld   bc, $4493                                   ; $5533: $01 $93 $44
	jp   c, $2735                                    ; $5536: $da $35 $27

	nop                                              ; $5539: $00
	ld   h, h                                        ; $553a: $64
	ld   l, b                                        ; $553b: $68
	ld   bc, $3806                                   ; $553c: $01 $06 $38
	rla                                              ; $553f: $17
	rlca                                             ; $5540: $07
	nop                                              ; $5541: $00

Call_040_5542:
	ld   h, h                                        ; $5542: $64
	ld   l, c                                        ; $5543: $69
	ld   h, c                                        ; $5544: $61
	ld   b, $94                                      ; $5545: $06 $94
	rla                                              ; $5547: $17
	rlca                                             ; $5548: $07
	nop                                              ; $5549: $00
	ld   h, h                                        ; $554a: $64
	ld   l, d                                        ; $554b: $6a
	ld   d, c                                        ; $554c: $51
	ld   b, $ca                                      ; $554d: $06 $ca
	ld   [hl+], a                                    ; $554f: $22
	rlca                                             ; $5550: $07
	nop                                              ; $5551: $00
	ld   h, h                                        ; $5552: $64
	ld   l, e                                        ; $5553: $6b
	ld   b, c                                        ; $5554: $41
	ld   b, $49                                      ; $5555: $06 $49
	dec  l                                           ; $5557: $2d
	rlca                                             ; $5558: $07
	nop                                              ; $5559: $00
	ld   h, h                                        ; $555a: $64
	ld   l, h                                        ; $555b: $6c
	ld   sp, $2706                                   ; $555c: $31 $06 $27
	jr   c, jr_040_5568                              ; $555f: $38 $07

	nop                                              ; $5561: $00

Call_040_5562:
	ld   h, h                                        ; $5562: $64
	ld   l, l                                        ; $5563: $6d
	ld   hl, $0f06                                   ; $5564: $21 $06 $0f
	inc  bc                                          ; $5567: $03

jr_040_5568:
	ld   [$6400], sp                                 ; $5568: $08 $00 $64
	ld   l, [hl]                                     ; $556b: $6e
	ld   de, $cc06                                   ; $556c: $11 $06 $cc
	rrca                                             ; $556f: $0f
	ld   [rRAMG], sp                                 ; $5570: $08 $00 $00
	nop                                              ; $5573: $00
	db   $e4                                         ; $5574: $e4
	ld   [bc], a                                     ; $5575: $02
	inc  sp                                          ; $5576: $33
	ld   [de], a                                     ; $5577: $12
	rst  $30                                         ; $5578: $f7
	ld   a, $27                                      ; $5579: $3e $27
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	db   $e4                                         ; $557d: $e4
	sbc  h                                           ; $557e: $9c
	ld   [hl+], a                                    ; $557f: $22
	ld   bc, $2315                                   ; $5580: $01 $15 $23
	inc  e                                           ; $5583: $1c
	inc  e                                           ; $5584: $1c
	db   $e4                                         ; $5585: $e4
	sbc  l                                           ; $5586: $9d
	ld   a, [de]                                     ; $5587: $1a
	nop                                              ; $5588: $00
	ld   a, e                                        ; $5589: $7b
	dec  h                                           ; $558a: $25
	inc  e                                           ; $558b: $1c
	nop                                              ; $558c: $00
	db   $e4                                         ; $558d: $e4
	inc  bc                                          ; $558e: $03
	dec  sp                                          ; $558f: $3b
	ld   [bc], a                                     ; $5590: $02
	call nz, $273f                                   ; $5591: $c4 $3f $27
	nop                                              ; $5594: $00
	db   $e4                                         ; $5595: $e4
	inc  b                                           ; $5596: $04
	ld   l, e                                        ; $5597: $6b
	inc  de                                          ; $5598: $13
	sub  b                                           ; $5599: $90
	ld   bc, $2828                                   ; $559a: $01 $28 $28
	db   $e4                                         ; $559d: $e4
	dec  b                                           ; $559e: $05
	ld   e, e                                        ; $559f: $5b
	ld   [de], a                                     ; $55a0: $12
	dec  bc                                          ; $55a1: $0b
	inc  bc                                          ; $55a2: $03
	jr   z, @+$17                                    ; $55a3: $28 $15

	db   $e4                                         ; $55a5: $e4
	ld   b, $4b                                      ; $55a6: $06 $4b
	inc  hl                                          ; $55a8: $23
	xor  $05                                         ; $55a9: $ee $05
	jr   z, jr_040_55d8                              ; $55ab: $28 $2b

	db   $e4                                         ; $55ad: $e4
	rlca                                             ; $55ae: $07
	ld   e, e                                        ; $55af: $5b
	inc  hl                                          ; $55b0: $23
	xor  e                                           ; $55b1: $ab
	rlca                                             ; $55b2: $07
	jr   z, jr_040_55d7                              ; $55b3: $28 $22

	db   $e4                                         ; $55b5: $e4
	ld   [$232b], sp                                 ; $55b6: $08 $2b $23
	ld   e, $09                                      ; $55b9: $1e $09
	jr   z, @+$22                                    ; $55bb: $28 $20

	ld   h, h                                        ; $55bd: $64
	ld   a, c                                        ; $55be: $79
	ld   hl, $9f05                                   ; $55bf: $21 $05 $9f
	ld   [hl-], a                                    ; $55c2: $32
	ld   [$6400], sp                                 ; $55c3: $08 $00 $64
	ld   a, d                                        ; $55c6: $7a
	ld   de, $6005                                   ; $55c7: $11 $05 $60
	inc  sp                                          ; $55ca: $33
	ld   [$6400], sp                                 ; $55cb: $08 $00 $64
	ld   a, e                                        ; $55ce: $7b
	ld   sp, $2205                                   ; $55cf: $31 $05 $22
	inc  [hl]                                        ; $55d2: $34
	ld   [$6400], sp                                 ; $55d3: $08 $00 $64
	ld   a, h                                        ; $55d6: $7c

jr_040_55d7:
	ld   d, c                                        ; $55d7: $51

jr_040_55d8:
	dec  b                                           ; $55d8: $05
	ldh  [c], a                                      ; $55d9: $e2
	inc  [hl]                                        ; $55da: $34
	ld   [$6400], sp                                 ; $55db: $08 $00 $64
	ld   a, l                                        ; $55de: $7d
	ld   h, c                                        ; $55df: $61
	dec  b                                           ; $55e0: $05
	and  a                                           ; $55e1: $a7
	dec  [hl]                                        ; $55e2: $35
	ld   [$6400], sp                                 ; $55e3: $08 $00 $64
	ld   a, [hl]                                     ; $55e6: $7e
	ld   b, c                                        ; $55e7: $41
	dec  b                                           ; $55e8: $05
	ld   l, c                                        ; $55e9: $69
	ld   [hl], $08                                   ; $55ea: $36 $08
	nop                                              ; $55ec: $00
	ld   h, h                                        ; $55ed: $64
	and  l                                           ; $55ee: $a5
	sub  d                                           ; $55ef: $92
	dec  b                                           ; $55f0: $05
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	nop                                              ; $55f3: $00
	ld   e, $e4                                      ; $55f4: $1e $e4
	and  [hl]                                        ; $55f6: $a6
	ld   h, d                                        ; $55f7: $62
	ld   bc, $0000                                   ; $55f8: $01 $00 $00
	nop                                              ; $55fb: $00
	nop                                              ; $55fc: $00
	db   $e4                                         ; $55fd: $e4
	and  a                                           ; $55fe: $a7
	ld   b, d                                        ; $55ff: $42
	nop                                              ; $5600: $00
	nop                                              ; $5601: $00
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	db   $e4                                         ; $5605: $e4
	xor  b                                           ; $5606: $a8
	ld   d, d                                        ; $5607: $52
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	nop                                              ; $560c: $00
	db   $e4                                         ; $560d: $e4
	xor  c                                           ; $560e: $a9
	ld   [hl+], a                                    ; $560f: $22
	nop                                              ; $5610: $00
	nop                                              ; $5611: $00
	nop                                              ; $5612: $00
	nop                                              ; $5613: $00
	ld   a, [hl+]                                    ; $5614: $2a
	db   $e4                                         ; $5615: $e4
	xor  d                                           ; $5616: $aa
	ld   [de], a                                     ; $5617: $12
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	inc  bc                                          ; $561c: $03
	db   $e4                                         ; $561d: $e4
	add  hl, bc                                      ; $561e: $09
	inc  sp                                          ; $561f: $33
	ld   [de], a                                     ; $5620: $12
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	ld   a, [hl+]                                    ; $5624: $2a
	db   $e4                                         ; $5625: $e4
	or   c                                           ; $5626: $b1
	ld   [hl-], a                                    ; $5627: $32
	ld   bc, $0000                                   ; $5628: $01 $00 $00
	nop                                              ; $562b: $00
	nop                                              ; $562c: $00
	db   $e4                                         ; $562d: $e4
	ld   a, [bc]                                     ; $562e: $0a
	ld   d, e                                        ; $562f: $53
	ld   [bc], a                                     ; $5630: $02
	nop                                              ; $5631: $00
	nop                                              ; $5632: $00
	nop                                              ; $5633: $00
	nop                                              ; $5634: $00
	db   $e4                                         ; $5635: $e4
	dec  bc                                          ; $5636: $0b
	inc  hl                                          ; $5637: $23
	ld   [bc], a                                     ; $5638: $02
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	nop                                              ; $563b: $00
	nop                                              ; $563c: $00
	db   $e4                                         ; $563d: $e4
	inc  c                                           ; $563e: $0c
	ld   h, e                                        ; $563f: $63
	ld   [de], a                                     ; $5640: $12
	nop                                              ; $5641: $00
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	ld   a, [bc]                                     ; $5644: $0a
	db   $e4                                         ; $5645: $e4
	dec  c                                           ; $5646: $0d
	ld   b, e                                        ; $5647: $43
	ld   [de], a                                     ; $5648: $12
	nop                                              ; $5649: $00
	nop                                              ; $564a: $00
	nop                                              ; $564b: $00
	inc  c                                           ; $564c: $0c
	db   $e4                                         ; $564d: $e4
	ld   c, $13                                      ; $564e: $0e $13
	ld   [de], a                                     ; $5650: $12
	sub  c                                           ; $5651: $91
	ld   e, $28                                      ; $5652: $1e $28
	inc  d                                           ; $5654: $14
	db   $e4                                         ; $5655: $e4
	rrca                                             ; $5656: $0f
	ld   d, e                                        ; $5657: $53
	inc  [hl]                                        ; $5658: $34
	nop                                              ; $5659: $00
	nop                                              ; $565a: $00
	nop                                              ; $565b: $00
	dec  d                                           ; $565c: $15
	db   $e4                                         ; $565d: $e4
	db   $10                                         ; $565e: $10
	ld   h, e                                        ; $565f: $63
	inc  [hl]                                        ; $5660: $34
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	ld   d, $e4                                      ; $5664: $16 $e4
	ld   de, $3433                                   ; $5666: $11 $33 $34
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	rla                                              ; $566c: $17
	db   $e4                                         ; $566d: $e4
	ld   [de], a                                     ; $566e: $12
	ld   b, e                                        ; $566f: $43
	inc  [hl]                                        ; $5670: $34
	nop                                              ; $5671: $00
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	db   $e4                                         ; $5675: $e4
	inc  de                                          ; $5676: $13
	inc  hl                                          ; $5677: $23
	inc  [hl]                                        ; $5678: $34
	nop                                              ; $5679: $00
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	inc  e                                           ; $567c: $1c
	db   $e4                                         ; $567d: $e4
	inc  d                                           ; $567e: $14
	inc  de                                          ; $567f: $13
	inc  [hl]                                        ; $5680: $34
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	ld   a, [de]                                     ; $5684: $1a
	ld   h, h                                        ; $5685: $64
	dec  d                                           ; $5686: $15
	inc  hl                                          ; $5687: $23
	ld   [de], a                                     ; $5688: $12
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	ld   h, h                                        ; $568d: $64
	ld   d, $13                                      ; $568e: $16 $13
	inc  [hl]                                        ; $5690: $34
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	ld   h, h                                        ; $5695: $64
	rla                                              ; $5696: $17
	inc  sp                                          ; $5697: $33
	inc  [hl]                                        ; $5698: $34
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	ld   h, h                                        ; $569d: $64
	jr   jr_040_56e3                                 ; $569e: $18 $43

	inc  [hl]                                        ; $56a0: $34
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
	nop                                              ; $56a4: $00
	ld   h, h                                        ; $56a5: $64
	add  hl, de                                      ; $56a6: $19
	ld   h, e                                        ; $56a7: $63
	inc  [hl]                                        ; $56a8: $34
	nop                                              ; $56a9: $00
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	nop                                              ; $56ac: $00
	ld   h, h                                        ; $56ad: $64
	ld   a, [de]                                     ; $56ae: $1a
	ld   d, e                                        ; $56af: $53
	inc  [hl]                                        ; $56b0: $34
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	nop                                              ; $56b4: $00
	ld   h, h                                        ; $56b5: $64
	call nz, $0522                                   ; $56b6: $c4 $22 $05
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	nop                                              ; $56bb: $00
	nop                                              ; $56bc: $00
	ld   h, h                                        ; $56bd: $64
	push bc                                          ; $56be: $c5
	ld   [de], a                                     ; $56bf: $12
	dec  b                                           ; $56c0: $05
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	nop                                              ; $56c4: $00
	ld   h, h                                        ; $56c5: $64
	add  $32                                         ; $56c6: $c6 $32
	dec  b                                           ; $56c8: $05
	nop                                              ; $56c9: $00
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	ld   h, h                                        ; $56cd: $64
	rst  ToBoot                                         ; $56ce: $c7
	ld   b, d                                        ; $56cf: $42
	dec  b                                           ; $56d0: $05
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	nop                                              ; $56d4: $00
	ld   h, h                                        ; $56d5: $64
	ret  z                                           ; $56d6: $c8

	ld   h, d                                        ; $56d7: $62
	dec  b                                           ; $56d8: $05
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	nop                                              ; $56dc: $00
	ld   h, h                                        ; $56dd: $64
	ret                                              ; $56de: $c9


	ld   d, d                                        ; $56df: $52
	dec  b                                           ; $56e0: $05
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00

jr_040_56e3:
	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	db   $e4                                         ; $56e6: $e4
	pop  de                                          ; $56e7: $d1
	ld   h, d                                        ; $56e8: $62
	ld   bc, $0bdc                                   ; $56e9: $01 $dc $0b
	rra                                              ; $56ec: $1f
	ld   bc, $1be4                                   ; $56ed: $01 $e4 $1b
	inc  de                                          ; $56f0: $13
	inc  hl                                          ; $56f1: $23
	ld   a, $38                                      ; $56f2: $3e $38
	jr   z, jr_040_56f6                              ; $56f4: $28 $00

jr_040_56f6:
	db   $e4                                         ; $56f6: $e4
	inc  e                                           ; $56f7: $1c
	inc  hl                                          ; $56f8: $23
	ld   b, h                                        ; $56f9: $44
	call c, $283b                                    ; $56fa: $dc $3b $28
	nop                                              ; $56fd: $00
	db   $e4                                         ; $56fe: $e4
	dec  e                                           ; $56ff: $1d
	ld   h, e                                        ; $5700: $63
	ld   b, h                                        ; $5701: $44
	cp   b                                           ; $5702: $b8
	dec  a                                           ; $5703: $3d
	jr   z, jr_040_5706                              ; $5704: $28 $00

jr_040_5706:
	db   $e4                                         ; $5706: $e4
	ld   e, $43                                      ; $5707: $1e $43
	ld   b, h                                        ; $5709: $44
	adc  b                                           ; $570a: $88
	ccf                                              ; $570b: $3f
	jr   z, jr_040_570e                              ; $570c: $28 $00

jr_040_570e:
	db   $e4                                         ; $570e: $e4
	rra                                              ; $570f: $1f
	inc  sp                                          ; $5710: $33
	ld   b, h                                        ; $5711: $44
	inc  hl                                          ; $5712: $23
	ld   bc, $0029                                   ; $5713: $01 $29 $00
	db   $e4                                         ; $5716: $e4
	db $20, $53

	ld   b, h                                        ; $5719: $44
	call c, $2902                                    ; $571a: $dc $02 $29
	nop                                              ; $571d: $00
	db   $e4                                         ; $571e: $e4
	ld   hl, $4413                                   ; $571f: $21 $13 $44
	sub  e                                           ; $5722: $93
	inc  b                                           ; $5723: $04
	add  hl, hl                                      ; $5724: $29
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00


macro ScriptSrc
	dw \1-$4000
	db BANK(\1)-SCRIPT_DATA_BANK
endm
ScriptSources::
	db $00, $00, $00
	db $03, $00, $00
	db $73, $12, $00
	db $5f, $15, $00
	db $b0, $1b, $00
	ScriptSrc Script_005
	ScriptSrc Script_006
	db $7f, $23, $00
	db $d2, $23, $00
	db $da, $07, $01
	db $76, $0b, $01
	db $19, $0f, $01
	db $6d, $12, $01
	db $46, $16, $01
	db $ae, $19, $01
	db $4b, $1d, $01
	db $8c, $1f, $01
	db $2f, $2b, $01
	db $87, $2d, $01

rept $100-$13
	db $00, $00, $00
endr

	db $10, $34, $01
	db $5f, $3f, $01
	db $7c, $00, $02
	db $8e, $01, $02
	db $8e, $02, $02
	ScriptSrc Script_0105
	db $06, $1b, $02
	db $7c, $1d, $02
	db $3d, $1e, $02
	db $ff, $1e, $02
	db $bf, $1f, $02
	db $84, $20, $02
	db $46, $21, $02
	db $06, $22, $02 ; 010d - 269
	db $0b, $22, $02
	db $1a, $2d, $02
	db $48, $31, $02
	db $ec, $33, $02
	db $cc, $39, $02
	db $8a, $3c, $02
	db $dd, $02, $03
	db $e3, $06, $03
	db $94, $07, $03
	db $4e, $0d, $03
	db $f8, $0d, $03
	db $33, $12, $03
	db $ba, $16, $03
	db $f6, $1a, $03
	db $50, $20, $03
	db $13, $26, $03
	db $36, $29, $03
	db $66, $2d, $03
	db $98, $30, $03
	db $f1, $34, $03
	db $4e, $38, $03
	db $72, $3b, $03
	db $93, $3f, $03
	db $ac, $03, $04
	db $26, $05, $04
	db $63, $06, $04
	db $90, $07, $04
	db $c4, $08, $04
	db $ee, $09, $04
	db $30, $0b, $04
	db $27, $0d, $04
	db $73, $0d, $04
	db $35, $0f, $04
	db $eb, $19, $04
	db $77, $23, $04
	db $96, $2d, $04
	db $61, $37, $04
	db $93, $03, $05
	db $b9, $0d, $05
	db $8b, $0e, $05
	db $59, $0f, $05
	db $4e, $12, $05
	db $e4, $15, $05
	db $a5, $16, $05
	db $67, $17, $05
	db $27, $18, $05
	db $ec, $18, $05
	db $ae, $19, $05
	db $5c, $1a, $05
	db $6b, $25, $05
	db $64, $2a, $05
	db $f0, $2d, $05
	db $7a, $31, $05
	db $7f, $31, $05
	db $e6, $39, $05
	db $6b, $3d, $05
	db $09, $06, $06
	db $ed, $06, $06
	db $91, $07, $06
	db $57, $09, $06
	db $c3, $0b, $06
	db $3a, $0f, $06
	db $18, $14, $06
	db $36, $19, $06
	db $63, $1b, $06
	db $27, $23, $06
	db $54, $2a, $06
	db $77, $2c, $06
	db $ca, $2f, $06
	db $38, $31, $06
	db $ce, $32, $06
	db $53, $34, $06
	db $7b, $38, $06
	db $8b, $3c, $06
	db $7a, $3d, $06
	db $7e, $3e, $06
	db $93, $3f, $06
	db $8f, $00, $07
	db $8c, $01, $07
	db $81, $02, $07
	db $db, $03, $07
	db $23, $05, $07
	db $70, $06, $07
	db $cb, $07, $07
	db $0f, $09, $07
	db $69, $0a, $07
	db $61, $0c, $07
	db $bd, $0c, $07
	db $05, $0d, $07
	db $85, $0d, $07
	db $47, $17, $07
	db $9a, $17, $07
	db $d0, $22, $07
	db $4f, $2d, $07
	db $2d, $38, $07
	db $15, $03, $08
	db $d2, $0f, $08
	db $26, $1a, $08
	db $8d, $1a, $08
	db $9c, $1f, $08
	db $d4, $25, $08
	db $ba, $26, $08
	db $33, $28, $08
	db $04, $2d, $08
	db $d9, $2d, $08
	db $d0, $30, $08
	db $43, $32, $08
	db $ab, $32, $08
	db $6c, $33, $08
	db $2e, $34, $08
	db $ee, $34, $08
	db $b3, $35, $08
	db $75, $36, $08
	db $23, $37, $08
	db $38, $02, $09
	db $5d, $03, $09
	db $92, $04, $09
	db $03, $08, $09
	db $15, $0a, $09
	db $25, $0c, $09
	db $d2, $0d, $09
	db $ca, $0f, $09
	db $d2, $12, $09
	db $2b, $14, $09
	db $55, $16, $09
	db $75, $17, $09
	db $28, $19, $09
	db $06, $1c, $09
	db $dd, $1e, $09
	db $e0, $20, $09
	db $fe, $21, $09
	db $bb, $23, $09
	db $db, $25, $09
	db $87, $27, $09
	db $0c, $29, $09
	db $70, $2a, $09
	db $e0, $2b, $09
	db $44, $2d, $09
	db $a7, $2e, $09
	db $21, $2f, $09
	db $0a, $30, $09
	db $0a, $32, $09
	db $bc, $05, $0a
	db $ad, $06, $0a
	db $b0, $07, $0a
	db $8c, $08, $0a
	db $62, $09, $0a
	db $50, $0a, $0a
	db $54, $0b, $0a
	db $7c, $1b, $0a
	db $60, $1c, $0a
	db $bc, $21, $0a
	db $21, $23, $0a
	db $cf, $28, $0a
	db $47, $2f, $0a
	db $f6, $31, $0a
	db $2e, $3e, $0a
	db $c2, $3e, $0a
	db $53, $05, $0b
	db $7d, $0d, $0b
	db $2b, $16, $0b
	db $d9, $1d, $0b
	db $88, $25, $0b
	db $c6, $30, $0b
	db $5e, $38, $0b
	db $8a, $01, $0c
	db $7e, $04, $0c
	db $9c, $09, $0c
	db $7c, $10, $0c
	db $45, $15, $0c
	db $b4, $15, $0c
	db $4b, $19, $0c
	db $cc, $20, $0c
	db $bd, $24, $0c
	db $95, $2a, $0c
	db $9c, $30, $0c
	db $2a, $35, $0c
	db $64, $36, $0c
	db $a7, $37, $0c
	db $d4, $38, $0c
	db $f1, $39, $0c
	db $1b, $3b, $0c
	db $58, $3c, $0c
	db $8d, $3f, $0c
	db $b1, $0f, $0d
	db $35, $10, $0d
	db $89, $12, $0d
	db $54, $16, $0d
	db $94, $17, $0d
	db $39, $1d, $0d
	db $69, $22, $0d
	db $d9, $22, $0d
	db $a2, $28, $0d
	db $45, $2c, $0d
	db $f7, $33, $0d
	db $a6, $3b, $0d
	db $e2, $06, $0e
	db $9a, $0f, $0e
	db $2c, $16, $0e
	db $43, $1e, $0e
	db $ad, $25, $0e
	db $f7, $2f, $0e
	db $fe, $35, $0e
	db $4c, $3b, $0e
	db $fe, $3f, $0e
	db $67, $00, $0f
	db $c9, $05, $0f
	db $94, $06, $0f
	db $9d, $0a, $0f
	db $ff, $0c, $0f
	db $53, $11, $0f
	db $40, $15, $0f
	db $94, $17, $0f
	db $f2, $18, $0f
	db $3c, $1a, $0f
	db $90, $1b, $0f
	db $db, $1c, $0f
	db $36, $1e, $0f
	db $7e, $1f, $0f
	db $99, $20, $0f
	db $9b, $21, $0f
	db $a0, $22, $0f
	db $a9, $23, $0f
	db $b3, $24, $0f
	db $c3, $25, $0f
	db $e3, $2e, $0f
	db $61, $31, $0f
	db $05, $39, $0f
	db $18, $3a, $0f
	db $ee, $3b, $0f
	db $47, $00, $10
	db $eb, $03, $10
	db $c1, $0e, $10
	db $39, $14, $10
	db $b4, $1b, $10
	db $d5, $2b, $10
	db $f7, $2e, $10
	db $0d, $33, $10
	db $13, $36, $10
	db $00, $3c, $10
	db $3b, $03, $11
	db $e2, $06, $11
	db $a1, $08, $11
	db $3a, $0a, $11
	db $08, $0f, $11
	db $2c, $12, $11
	db $a8, $14, $11
	db $17, $19, $11
	db $77, $1b, $11
	db $eb, $1c, $11
	db $3f, $20, $11
	db $1a, $23, $11
	db $fa, $27, $11
	db $69, $2b, $11
	db $78, $2c, $11
	db $99, $2d, $11
	db $b3, $2e, $11
	db $cd, $2f, $11
	db $e3, $30, $11
	db $00, $32, $11
	db $78, $33, $11
	db $f7, $34, $11
	db $61, $36, $11
	db $c1, $37, $11
	db $25, $39, $11
	db $9e, $3a, $11
	db $d9, $3c, $11
	db $71, $00, $12
	db $af, $16, $12
	db $1c, $32, $12
	db $73, $05, $13
	db $83, $1d, $13
	db $d8, $2f, $13
	db $32, $04, $14
	db $52, $06, $14
	db $3d, $08, $14
	db $40, $09, $14
	db $e0, $15, $14
	db $80, $21, $14
	db $b9, $2d, $14
	db $f0, $3c, $14
	db $a4, $08, $15
	db $69, $13, $15
	db $8a, $23, $15
	db $d3, $29, $15
	db $7d, $2e, $15
	db $95, $30, $15
	db $6d, $38, $15
	db $dd, $3e, $15
	db $a4, $02, $16
	db $97, $03, $16
	db $7c, $04, $16
	db $6b, $08, $16
	db $2f, $0c, $16
	db $05, $0d, $16
	db $7e, $14, $16
	db $37, $19, $16
	db $a9, $1f, $16
	db $d1, $2f, $16
	db $45, $30, $16
	db $c4, $35, $16
	db $93, $3a, $16
	db $fa, $3c, $16
	db $b6, $3f, $16
	db $a6, $02, $17
	db $ab, $06, $17
	db $3a, $07, $17
	db $83, $0b, $17
	db $a7, $11, $17
	db $f7, $15, $17
	db $24, $1a, $17
	db $1a, $1e, $17
	db $6a, $23, $17
	db $09, $27, $17
	db $ed, $2a, $17
	db $d6, $32, $17
	db $94, $34, $17
	db $e2, $39, $17
	db $a2, $3e, $17
	db $d4, $3f, $17
	db $11, $01, $18
	db $3e, $02, $18
	db $5a, $03, $18
	db $89, $04, $18
	db $b8, $05, $18
	db $e9, $06, $18
	db $2d, $08, $18
	db $5a, $09, $18
	db $75, $0a, $18
	db $9f, $0b, $18
	db $db, $0c, $18
	db $be, $11, $18
	db $f2, $17, $18
	db $fe, $1e, $18
	db $5f, $23, $18
	db $80, $33, $18
	db $d2, $36, $18
	db $88, $3b, $18
	db $17, $03, $19
	db $f7, $08, $19
	db $aa, $0b, $19
	db $f2, $0e, $19
	db $8c, $0f, $19
	db $98, $16, $19
	db $4c, $1b, $19
	db $bf, $21, $19
	db $b0, $25, $19
	db $93, $26, $19
	db $2c, $2a, $19
	db $4d, $3a, $19
	db $76, $3f, $19
	db $f3, $00, $1a
	db $31, $05, $1a
	db $bb, $09, $1a
	db $b9, $0c, $1a
	db $07, $0e, $1a
	db $81, $0f, $1a
	db $f6, $0f, $1a
	db $11, $19, $1a
	db $ec, $1d, $1a
	db $d8, $25, $1a
	db $48, $34, $1a
	db $2c, $36, $1a
	db $76, $39, $1a
	db $9e, $07, $1b
	db $bb, $0b, $1b
	db $79, $0f, $1b
	db $97, $11, $1b
	db $1c, $15, $1b
	db $6d, $19, $1b
	db $d5, $27, $1b
	db $4e, $29, $1b
	db $af, $2a, $1b
	db $1f, $2c, $1b
	db $93, $2d, $1b
	db $06, $2f, $1b
	db $67, $30, $1b
	db $84, $31, $1b
	db $8d, $32, $1b
	db $9b, $33, $1b
	db $a4, $34, $1b
	db $b0, $35, $1b
	db $bb, $36, $1b
	db $1d, $38, $1b
	db $68, $39, $1b
	db $be, $3a, $1b
	db $09, $3c, $1b
	db $5e, $3d, $1b
	db $ad, $3e, $1b
	db $d1, $07, $1c
	db $c6, $08, $1c
	db $a8, $09, $1c
	db $69, $0a, $1c
	db $e8, $0b, $1c
	db $48, $10, $1c
	db $b4, $14, $1c
	db $d3, $19, $1c
	db $a3, $1f, $1c
	db $22, $23, $1c
	db $8e, $25, $1c
	db $d8, $27, $1c
	db $f9, $37, $1c
	db $e6, $3a, $1c
	db $2c, $3b, $1c
	db $ed, $00, $1d
	db $17, $05, $1d
	db $8b, $06, $1d
	db $f7, $08, $1d
	db $18, $19, $1d
	db $11, $1c, $1d
	db $29, $2a, $1d
	db $12, $2c, $1d
	db $cc, $34, $1d
	db $7f, $37, $1d
	db $6f, $01, $1e
	db $3a, $04, $1e
	db $01, $06, $1e
	db $bc, $07, $1e
	db $51, $0d, $1e
	db $6b, $10, $1e
	db $82, $14, $1e
	db $f0, $16, $1e
	db $ed, $18, $1e
	db $2f, $1a, $1e
	db $f1, $1b, $1e
	db $de, $1e, $1e
	db $85, $27, $1e
	db $a3, $28, $1e
	db $c6, $29, $1e
	db $d0, $2a, $1e
	db $d9, $2b, $1e
	db $ed, $2c, $1e
	db $08, $2e, $1e
	db $7d, $2f, $1e
	db $fc, $30, $1e
	db $60, $32, $1e
	db $c0, $33, $1e
	db $21, $35, $1e
	db $84, $36, $1e
	db $15, $38, $1e
	db $a3, $39, $1e
	db $17, $3b, $1e
	db $77, $3c, $1e
	db $f0, $3d, $1e
	db $5a, $3f, $1e
	db $44, $01, $1f
	db $01, $03, $1f
	db $cf, $04, $1f
	db $7d, $06, $1f
	db $2d, $08, $1f
	db $0f, $0a, $1f
	db $e2, $0b, $1f
	db $72, $13, $1f
	db $79, $15, $1f
	db $8e, $2b, $1f
	db $5c, $09, $20
	db $c9, $1b, $20
	db $d1, $0d, $21
	db $27, $22, $21
	db $c7, $00, $22
	db $c6, $1a, $22
	db $70, $32, $22
	db $89, $0b, $23
	db $80, $25, $23
	db $c7, $3b, $23
	db $42, $1a, $24
	db $15, $26, $24
	db $03, $3b, $24
	db $59, $27, $25
	db $35, $29, $25
	db $14, $2a, $25
	db $d3, $2d, $25
	db $8b, $2f, $25
	db $ff, $31, $25
	db $4c, $36, $25
	db $1c, $3d, $25
	db $db, $3f, $25
	db $ba, $04, $26
	db $79, $08, $26
	db $e1, $0c, $26
	db $dd, $11, $26
	db $a2, $15, $26
	db $c1, $19, $26
	db $6c, $37, $26
	db $b1, $3b, $26
	db $35, $3c, $26
	db $9d, $3c, $26
	db $07, $01, $27
	db $b3, $06, $27
	db $f0, $0a, $27
	db $c4, $0c, $27
	db $85, $0f, $27
	db $6f, $11, $27
	db $8a, $16, $27
	db $e4, $1d, $27
	db $84, $1f, $27
	db $d2, $25, $27
	db $4b, $27, $27
	db $62, $29, $27
	db $e0, $35, $27
	db $0b, $3f, $27
	db $cb, $3f, $27
	db $97, $01, $28
	db $18, $03, $28
	db $fb, $05, $28
	db $b2, $07, $28
	db $24, $09, $28
	db $f3, $0b, $28
	db $7c, $10, $28
	db $70, $15, $28
	db $b4, $18, $28
	db $bf, $1c, $28
	db $9d, $1e, $28
	db $3f, $22, $28
	db $cc, $24, $28
	db $6a, $27, $28
	db $75, $29, $28
	db $a5, $2b, $28
	db $de, $2e, $28
	db $a8, $31, $28
	db $cf, $32, $28
	db $dd, $33, $28
	db $f2, $34, $28
	db $05, $36, $28
	db $24, $37, $28
	db $50, $38, $28
	db $e9, $3b, $28
	db $c5, $3d, $28
	db $95, $3f, $28
	db $30, $01, $29
	db $e9, $02, $29
	db $a0, $04, $29
