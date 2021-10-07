; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ff", ROMX[$4000], BANK[$ff]

	nop                                              ; $4000: $00
	inc  bc                                          ; $4001: $03
	or   h                                           ; $4002: $b4
	ld   b, b                                        ; $4003: $40
	nop                                              ; $4004: $00
	inc  bc                                          ; $4005: $03
	adc  $40                                         ; $4006: $ce $40
	jr   nz, jr_0ff_400d                             ; $4008: $20 $03

	add  sp, $40                                     ; $400a: $e8 $40
	nop                                              ; $400c: $00

jr_0ff_400d:
	nop                                              ; $400d: $00
	ld   c, $41                                      ; $400e: $0e $41
	nop                                              ; $4010: $00
	inc  bc                                          ; $4011: $03
	ld   [hl], $41                                   ; $4012: $36 $41
	nop                                              ; $4014: $00
	nop                                              ; $4015: $00
	ld   h, b                                        ; $4016: $60
	ld   b, c                                        ; $4017: $41
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	xor  b                                           ; $401a: $a8
	ld   b, c                                        ; $401b: $41
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	xor  [hl]                                        ; $401e: $ae
	ld   b, c                                        ; $401f: $41
	nop                                              ; $4020: $00
	inc  bc                                          ; $4021: $03
	ld   [$0041], a                                  ; $4022: $ea $41 $00
	inc  bc                                          ; $4025: $03
	nop                                              ; $4026: $00
	ld   b, d                                        ; $4027: $42
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	ld   [hl+], a                                    ; $402a: $22
	ld   b, d                                        ; $402b: $42
	jr   nz, jr_0ff_402f                             ; $402c: $20 $01

	ld   [hl+], a                                    ; $402e: $22

jr_0ff_402f:
	ld   b, d                                        ; $402f: $42
	ld   b, b                                        ; $4030: $40
	nop                                              ; $4031: $00
	ld   [hl+], a                                    ; $4032: $22
	ld   b, d                                        ; $4033: $42
	ld   h, b                                        ; $4034: $60
	ld   bc, $4222                                   ; $4035: $01 $22 $42
	add  b                                           ; $4038: $80
	ld   [bc], a                                     ; $4039: $02
	ld   [hl+], a                                    ; $403a: $22
	ld   b, d                                        ; $403b: $42
	and  b                                           ; $403c: $a0
	inc  bc                                          ; $403d: $03
	ld   [hl+], a                                    ; $403e: $22
	ld   b, d                                        ; $403f: $42
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	jr   z, jr_0ff_4086                              ; $4042: $28 $42

	nop                                              ; $4044: $00
	ld   [bc], a                                     ; $4045: $02
	ld   b, d                                        ; $4046: $42
	ld   b, d                                        ; $4047: $42
	nop                                              ; $4048: $00
	ld   [bc], a                                     ; $4049: $02
	ld   d, d                                        ; $404a: $52
	ld   b, d                                        ; $404b: $42
	nop                                              ; $404c: $00
	ld   [bc], a                                     ; $404d: $02
	ld   h, d                                        ; $404e: $62
	ld   b, d                                        ; $404f: $42
	nop                                              ; $4050: $00
	ld   [bc], a                                     ; $4051: $02
	ld   [hl], d                                     ; $4052: $72
	ld   b, d                                        ; $4053: $42
	nop                                              ; $4054: $00
	ld   [bc], a                                     ; $4055: $02
	add  d                                           ; $4056: $82
	ld   b, d                                        ; $4057: $42
	nop                                              ; $4058: $00
	ld   [bc], a                                     ; $4059: $02
	sub  d                                           ; $405a: $92
	ld   b, d                                        ; $405b: $42
	nop                                              ; $405c: $00
	ld   [bc], a                                     ; $405d: $02
	and  d                                           ; $405e: $a2
	ld   b, d                                        ; $405f: $42
	nop                                              ; $4060: $00
	ld   [bc], a                                     ; $4061: $02
	or   d                                           ; $4062: $b2
	ld   b, d                                        ; $4063: $42
	nop                                              ; $4064: $00
	ld   [bc], a                                     ; $4065: $02
	jp   nz, $0042                                   ; $4066: $c2 $42 $00

	ld   [bc], a                                     ; $4069: $02
	jp   nc, $0042                                   ; $406a: $d2 $42 $00

	ld   [bc], a                                     ; $406d: $02
	ldh  [c], a                                      ; $406e: $e2
	ld   b, d                                        ; $406f: $42
	nop                                              ; $4070: $00
	ld   [bc], a                                     ; $4071: $02
	ldh  a, [c]                                      ; $4072: $f2
	ld   b, d                                        ; $4073: $42
	nop                                              ; $4074: $00
	ld   [bc], a                                     ; $4075: $02
	ld   [bc], a                                     ; $4076: $02
	ld   b, e                                        ; $4077: $43
	nop                                              ; $4078: $00
	ld   [bc], a                                     ; $4079: $02
	ld   [de], a                                     ; $407a: $12
	ld   b, e                                        ; $407b: $43
	nop                                              ; $407c: $00
	ld   [bc], a                                     ; $407d: $02
	ld   [hl+], a                                    ; $407e: $22
	ld   b, e                                        ; $407f: $43
	nop                                              ; $4080: $00
	ld   [bc], a                                     ; $4081: $02
	ld   [hl-], a                                    ; $4082: $32
	ld   b, e                                        ; $4083: $43
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00

jr_0ff_4086:
	ld   b, d                                        ; $4086: $42
	ld   b, e                                        ; $4087: $43
	jr   nz, @+$05                                   ; $4088: $20 $03

	ld   e, b                                        ; $408a: $58
	ld   b, e                                        ; $408b: $43
	jr   nz, @+$05                                   ; $408c: $20 $03

	ld   a, [hl]                                     ; $408e: $7e
	ld   b, e                                        ; $408f: $43
	jr   nz, @+$05                                   ; $4090: $20 $03

	xor  b                                           ; $4092: $a8
	ld   b, e                                        ; $4093: $43
	jr   nz, @+$05                                   ; $4094: $20 $03

	cp   [hl]                                        ; $4096: $be
	ld   b, e                                        ; $4097: $43
	jr   nz, jr_0ff_409d                             ; $4098: $20 $03

	db   $e4                                         ; $409a: $e4
	ld   b, e                                        ; $409b: $43
	ld   b, b                                        ; $409c: $40

jr_0ff_409d:
	nop                                              ; $409d: $00
	ld   [de], a                                     ; $409e: $12
	ld   b, h                                        ; $409f: $44
	ld   h, b                                        ; $40a0: $60
	ld   bc, $443c                                   ; $40a1: $01 $3c $44
	add  b                                           ; $40a4: $80
	ld   [bc], a                                     ; $40a5: $02
	ld   h, [hl]                                     ; $40a6: $66
	ld   b, h                                        ; $40a7: $44
	and  b                                           ; $40a8: $a0
	inc  bc                                          ; $40a9: $03
	adc  [hl]                                        ; $40aa: $8e
	ld   b, h                                        ; $40ab: $44
	nop                                              ; $40ac: $00
	inc  bc                                          ; $40ad: $03
	sub  h                                           ; $40ae: $94
	ld   b, h                                        ; $40af: $44
	nop                                              ; $40b0: $00
	inc  bc                                          ; $40b1: $03
	xor  b                                           ; $40b2: $a8
	ld   b, h                                        ; $40b3: $44
	ld   [$0f00], sp                                 ; $40b4: $08 $00 $0f
	nop                                              ; $40b7: $00
	and  b                                           ; $40b8: $a0
	ld   b, $54                                      ; $40b9: $06 $54
	ld   bc, $0fa0                                   ; $40bb: $01 $a0 $0f
	jr   nz, jr_0ff_40c2                             ; $40be: $20 $02

	and  b                                           ; $40c0: $a0
	inc  c                                           ; $40c1: $0c

jr_0ff_40c2:
	ld   hl, $a002                                   ; $40c2: $21 $02 $a0
	ld   [$0122], sp                                 ; $40c5: $08 $22 $01
	and  b                                           ; $40c8: $a0
	inc  b                                           ; $40c9: $04
	inc  hl                                          ; $40ca: $23
	ld   bc, $ffff                                   ; $40cb: $01 $ff $ff
	ld   [$0f00], sp                                 ; $40ce: $08 $00 $0f
	nop                                              ; $40d1: $00
	and  b                                           ; $40d2: $a0
	ld   [$0171], sp                                 ; $40d3: $08 $71 $01
	and  b                                           ; $40d6: $a0
	rrca                                             ; $40d7: $0f
	ld   h, b                                        ; $40d8: $60
	ld   [bc], a                                     ; $40d9: $02
	and  b                                           ; $40da: $a0
	rlca                                             ; $40db: $07
	ld   h, c                                        ; $40dc: $61
	ld   bc, $04a0                                   ; $40dd: $01 $a0 $04
	ld   h, d                                        ; $40e0: $62
	ld   bc, $01a0                                   ; $40e1: $01 $a0 $01
	ld   h, e                                        ; $40e4: $63
	ld   bc, $ffff                                   ; $40e5: $01 $ff $ff
	ld   [bc], a                                     ; $40e8: $02
	nop                                              ; $40e9: $00
	rrca                                             ; $40ea: $0f
	nop                                              ; $40eb: $00
	and  b                                           ; $40ec: $a0
	ld   [$0161], sp                                 ; $40ed: $08 $61 $01
	and  b                                           ; $40f0: $a0
	inc  c                                           ; $40f1: $0c
	inc  [hl]                                        ; $40f2: $34
	ld   bc, $0ea0                                   ; $40f3: $01 $a0 $0e
	ld   [hl-], a                                    ; $40f6: $32
	ld   bc, $0fa0                                   ; $40f7: $01 $a0 $0f
	jr   nc, jr_0ff_40ff                             ; $40fa: $30 $03

	and  b                                           ; $40fc: $a0
	inc  b                                           ; $40fd: $04
	ld   [hl-], a                                    ; $40fe: $32

jr_0ff_40ff:
	ld   bc, $03a0                                   ; $40ff: $01 $a0 $03
	inc  sp                                          ; $4102: $33
	ld   bc, $02a0                                   ; $4103: $01 $a0 $02
	inc  [hl]                                        ; $4106: $34
	ld   bc, $01a0                                   ; $4107: $01 $a0 $01
	dec  [hl]                                        ; $410a: $35
	ld   bc, $ffff                                   ; $410b: $01 $ff $ff
	nop                                              ; $410e: $00
	ld   [bc], a                                     ; $410f: $02
	rrca                                             ; $4110: $0f
	nop                                              ; $4111: $00
	and  e                                           ; $4112: $a3
	inc  h                                           ; $4113: $24
	and  b                                           ; $4114: $a0
	rrca                                             ; $4115: $0f
	ld   b, b                                        ; $4116: $40
	ld   bc, $02a0                                   ; $4117: $01 $a0 $02
	ld   h, b                                        ; $411a: $60
	ld   bc, $0fa0                                   ; $411b: $01 $a0 $0f
	ld   h, b                                        ; $411e: $60
	ld   [bc], a                                     ; $411f: $02
	and  b                                           ; $4120: $a0
	inc  c                                           ; $4121: $0c
	ld   h, b                                        ; $4122: $60
	ld   bc, $0aa0                                   ; $4123: $01 $a0 $0a
	ld   h, b                                        ; $4126: $60
	ld   bc, $05a0                                   ; $4127: $01 $a0 $05
	ld   h, b                                        ; $412a: $60
	ld   bc, $03a0                                   ; $412b: $01 $a0 $03
	ld   h, b                                        ; $412e: $60
	ld   bc, $01a0                                   ; $412f: $01 $a0 $01
	ld   h, b                                        ; $4132: $60
	ld   bc, $ffff                                   ; $4133: $01 $ff $ff
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	rrca                                             ; $4138: $0f
	nop                                              ; $4139: $00
	and  b                                           ; $413a: $a0
	ld   [$0171], sp                                 ; $413b: $08 $71 $01
	and  b                                           ; $413e: $a0
	rrca                                             ; $413f: $0f
	ld   d, b                                        ; $4140: $50
	ld   bc, $0160                                   ; $4141: $01 $60 $01
	ld   [hl], c                                     ; $4144: $71
	ld   bc, $0160                                   ; $4145: $01 $60 $01
	ld   [hl], c                                     ; $4148: $71
	ld   bc, $0ca0                                   ; $4149: $01 $a0 $0c
	ld   h, d                                        ; $414c: $62
	ld   bc, $03a0                                   ; $414d: $01 $a0 $03
	ld   h, b                                        ; $4150: $60
	ld   [bc], a                                     ; $4151: $02
	ld   h, d                                        ; $4152: $62
	ld   bc, $0163                                   ; $4153: $01 $63 $01
	and  b                                           ; $4156: $a0
	ld   bc, $0170                                   ; $4157: $01 $70 $01
	ld   [hl], d                                     ; $415a: $72
	ld   bc, $0173                                   ; $415b: $01 $73 $01
	rst  $38                                         ; $415e: $ff
	rst  $38                                         ; $415f: $ff
	nop                                              ; $4160: $00
	ld   [bc], a                                     ; $4161: $02
	rrca                                             ; $4162: $0f
	nop                                              ; $4163: $00
	and  e                                           ; $4164: $a3
	inc  h                                           ; $4165: $24
	and  b                                           ; $4166: $a0
	rrca                                             ; $4167: $0f
	ld   d, b                                        ; $4168: $50
	ld   [bc], a                                     ; $4169: $02
	and  b                                           ; $416a: $a0
	ld   [bc], a                                     ; $416b: $02
	ld   d, b                                        ; $416c: $50
	ld   [bc], a                                     ; $416d: $02
	and  b                                           ; $416e: $a0
	rrca                                             ; $416f: $0f
	ld   c, c                                        ; $4170: $49
	ld   [bc], a                                     ; $4171: $02
	and  b                                           ; $4172: $a0
	ld   [bc], a                                     ; $4173: $02
	ld   c, c                                        ; $4174: $49
	ld   [bc], a                                     ; $4175: $02
	and  b                                           ; $4176: $a0
	rrca                                             ; $4177: $0f
	ld   b, l                                        ; $4178: $45
	ld   [bc], a                                     ; $4179: $02
	and  b                                           ; $417a: $a0
	ld   [bc], a                                     ; $417b: $02
	ld   b, l                                        ; $417c: $45
	ld   [bc], a                                     ; $417d: $02
	and  b                                           ; $417e: $a0
	rrca                                             ; $417f: $0f
	ld   b, h                                        ; $4180: $44
	ld   [bc], a                                     ; $4181: $02
	and  b                                           ; $4182: $a0
	ld   [bc], a                                     ; $4183: $02
	ld   b, h                                        ; $4184: $44
	ld   [bc], a                                     ; $4185: $02
	and  b                                           ; $4186: $a0
	rrca                                             ; $4187: $0f
	ld   b, b                                        ; $4188: $40
	ld   [bc], a                                     ; $4189: $02
	and  b                                           ; $418a: $a0
	ld   [bc], a                                     ; $418b: $02
	ld   b, b                                        ; $418c: $40
	ld   [bc], a                                     ; $418d: $02
	and  b                                           ; $418e: $a0
	rlca                                             ; $418f: $07
	ld   b, l                                        ; $4190: $45
	ld   bc, $0144                   ; $4191: $01 $44 $01
	ld   b, b                                        ; $4194: $40
	ld   bc, $04a0                                   ; $4195: $01 $a0 $04
	ld   b, l                                        ; $4198: $45
	ld   bc, $0144                   ; $4199: $01 $44 $01
	ld   b, b                                        ; $419c: $40
	ld   bc, $01a0                                   ; $419d: $01 $a0 $01
	ld   b, l                                        ; $41a0: $45
	ld   bc, $0144                   ; $41a1: $01 $44 $01
	ld   b, b                                        ; $41a4: $40
	ld   bc, $ffff                                   ; $41a5: $01 $ff $ff
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	rst  $38                                         ; $41ac: $ff
	rst  $38                                         ; $41ad: $ff
	nop                                              ; $41ae: $00
	ld   [bc], a                                     ; $41af: $02
	rrca                                             ; $41b0: $0f
	nop                                              ; $41b1: $00
	db   $fd                                         ; $41b2: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $41b3: $f0 $a0
	rrca                                             ; $41b5: $0f
	scf                                              ; $41b6: $37
	inc  bc                                          ; $41b7: $03
	and  b                                           ; $41b8: $a0
	rlca                                             ; $41b9: $07
	ld   [hl-], a                                    ; $41ba: $32
	ld   bc, $02a0                                   ; $41bb: $01 $a0 $02
	dec  hl                                          ; $41be: $2b
	ld   bc, $371f                                   ; $41bf: $01 $1f $37
	or   d                                           ; $41c2: $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $41c3: $f0 $a0
	rrca                                             ; $41c5: $0f
	ld   b, a                                        ; $41c6: $47
	ld   a, [bc]                                     ; $41c7: $0a
	and  b                                           ; $41c8: $a0
	dec  b                                           ; $41c9: $05
	ld   b, d                                        ; $41ca: $42
	ld   bc, $02a0                                   ; $41cb: $01 $a0 $02
	dec  sp                                          ; $41ce: $3b
	ld   bc, $04a0                                   ; $41cf: $01 $a0 $04
	ld   b, a                                        ; $41d2: $47
	dec  b                                           ; $41d3: $05
	ld   b, d                                        ; $41d4: $42
	ld   bc, $013b                                   ; $41d5: $01 $3b $01
	and  b                                           ; $41d8: $a0
	ld   [bc], a                                     ; $41d9: $02
	ld   b, a                                        ; $41da: $47
	dec  b                                           ; $41db: $05
	ld   b, d                                        ; $41dc: $42
	ld   bc, $013b                                   ; $41dd: $01 $3b $01
	and  b                                           ; $41e0: $a0
	ld   bc, $0547                                   ; $41e1: $01 $47 $05
	ld   b, d                                        ; $41e4: $42
	ld   bc, $013b                                   ; $41e5: $01 $3b $01
	rst  $38                                         ; $41e8: $ff

jr_0ff_41e9:
	rst  $38                                         ; $41e9: $ff
	ld   [$0f00], sp                                 ; $41ea: $08 $00 $0f

jr_0ff_41ed:
	nop                                              ; $41ed: $00
	and  b                                           ; $41ee: $a0
	ld   [$0162], sp                                 ; $41ef: $08 $62 $01
	and  b                                           ; $41f2: $a0
	rrca                                             ; $41f3: $0f
	ld   c, d                                        ; $41f4: $4a
	ld   bc, $02a0                                   ; $41f5: $01 $a0 $02
	ld   b, c                                        ; $41f8: $41

jr_0ff_41f9:
	ld   bc, $01a0                                   ; $41f9: $01 $a0 $01
	ld   d, d                                        ; $41fc: $52

jr_0ff_41fd:
	ld   bc, $ffff                                   ; $41fd: $01 $ff $ff
	dec  b                                           ; $4200: $05
	nop                                              ; $4201: $00
	rrca                                             ; $4202: $0f
	nop                                              ; $4203: $00
	and  b                                           ; $4204: $a0
	ld   [$0171], sp                                 ; $4205: $08 $71 $01
	and  b                                           ; $4208: $a0

jr_0ff_4209:
	rrca                                             ; $4209: $0f
	ld   h, b                                        ; $420a: $60
	inc  bc                                          ; $420b: $03
	and  b                                           ; $420c: $a0

jr_0ff_420d:
	ld   b, $39                                      ; $420d: $06 $39
	ld   bc, $03a0                                   ; $420f: $01 $a0 $03
	ld   h, d                                        ; $4212: $62
	ld   [bc], a                                     ; $4213: $02
	ld   h, c                                        ; $4214: $61
	ld   bc, $0160                                   ; $4215: $01 $60 $01
	and  b                                           ; $4218: $a0

jr_0ff_4219:
	ld   bc, $0262                                   ; $4219: $01 $62 $02
	ld   h, c                                        ; $421c: $61

jr_0ff_421d:
	ld   bc, $0160                                   ; $421d: $01 $60 $01
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	ld   bc, $0f02                                   ; $4228: $01 $02 $0f
	nop                                              ; $422b: $00
	db   $fd                                         ; $422c: $fd

jr_0ff_422d:
	ldh  a, [hScriptOpcodeParams]                                    ; $422d: $f0 $a0
	ld   b, $23                                      ; $422f: $06 $23
	ld   bc, $08a0                                   ; $4231: $01 $a0 $08
	inc  h                                           ; $4234: $24
	ld   bc, $04a0                                   ; $4235: $01 $a0 $04
	inc  hl                                          ; $4238: $23

jr_0ff_4239:
	ld   bc, $06a0                                   ; $4239: $01 $a0 $06
	inc  h                                           ; $423c: $24

jr_0ff_423d:
	ld   bc, $f0b0                                   ; $423d: $01 $b0 $f0
	rst  $38                                         ; $4240: $ff
	rst  $38                                         ; $4241: $ff
	ld   bc, $0f00                                   ; $4242: $01 $00 $0f
	nop                                              ; $4245: $00
	and  d                                           ; $4246: $a2
	jr   nz, jr_0ff_41e9                             ; $4247: $20 $a0

jr_0ff_4249:
	ld   [bc], a                                     ; $4249: $02
	ld   b, e                                        ; $424a: $43
	jr   jr_0ff_41ed                                 ; $424b: $18 $a0

jr_0ff_424d:
	ld   b, $43                                      ; $424d: $06 $43
	ld   [$ffff], sp                                 ; $424f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4252: $01 $00 $0f
	nop                                              ; $4255: $00
	and  d                                           ; $4256: $a2
	jr   nz, jr_0ff_41f9                             ; $4257: $20 $a0

jr_0ff_4259:
	ld   [bc], a                                     ; $4259: $02
	ld   b, h                                        ; $425a: $44
	jr   jr_0ff_41fd                                 ; $425b: $18 $a0

jr_0ff_425d:
	ld   b, $44                                      ; $425d: $06 $44
	ld   [$ffff], sp                                 ; $425f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4262: $01 $00 $0f
	nop                                              ; $4265: $00
	and  d                                           ; $4266: $a2
	jr   nz, jr_0ff_4209                             ; $4267: $20 $a0

jr_0ff_4269:
	ld   [bc], a                                     ; $4269: $02
	ld   b, l                                        ; $426a: $45
	jr   jr_0ff_420d                                 ; $426b: $18 $a0

jr_0ff_426d:
	ld   b, $45                                      ; $426d: $06 $45
	ld   [$ffff], sp                                 ; $426f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4272: $01 $00 $0f
	nop                                              ; $4275: $00
	and  d                                           ; $4276: $a2
	jr   nz, jr_0ff_4219                             ; $4277: $20 $a0

jr_0ff_4279:
	ld   [bc], a                                     ; $4279: $02
	ld   b, [hl]                                     ; $427a: $46
	jr   jr_0ff_421d                                 ; $427b: $18 $a0

jr_0ff_427d:
	ld   b, $46                                      ; $427d: $06 $46
	ld   [$ffff], sp                                 ; $427f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4282: $01 $00 $0f
	nop                                              ; $4285: $00
	and  d                                           ; $4286: $a2
	jr   nz, @-$5e                                   ; $4287: $20 $a0

jr_0ff_4289:
	ld   [bc], a                                     ; $4289: $02
	ld   b, a                                        ; $428a: $47
	jr   jr_0ff_422d                                 ; $428b: $18 $a0

jr_0ff_428d:
	ld   b, $47                                      ; $428d: $06 $47
	ld   [$ffff], sp                                 ; $428f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4292: $01 $00 $0f
	nop                                              ; $4295: $00
	and  d                                           ; $4296: $a2
	jr   nz, jr_0ff_4239                             ; $4297: $20 $a0

jr_0ff_4299:
	ld   [bc], a                                     ; $4299: $02
	ld   c, b                                        ; $429a: $48
	jr   jr_0ff_423d                                 ; $429b: $18 $a0

jr_0ff_429d:
	ld   b, $48                                      ; $429d: $06 $48
	ld   [$ffff], sp                                 ; $429f: $08 $ff $ff
	ld   bc, $0f00                                   ; $42a2: $01 $00 $0f
	nop                                              ; $42a5: $00
	and  d                                           ; $42a6: $a2
	jr   nz, jr_0ff_4249                             ; $42a7: $20 $a0

jr_0ff_42a9:
	ld   [bc], a                                     ; $42a9: $02
	ld   c, c                                        ; $42aa: $49
	jr   jr_0ff_424d                                 ; $42ab: $18 $a0

jr_0ff_42ad:
	ld   b, $49                                      ; $42ad: $06 $49
	ld   [$ffff], sp                                 ; $42af: $08 $ff $ff
	ld   bc, $0f00                                   ; $42b2: $01 $00 $0f
	nop                                              ; $42b5: $00
	and  d                                           ; $42b6: $a2
	jr   nz, jr_0ff_4259                             ; $42b7: $20 $a0

jr_0ff_42b9:
	ld   [bc], a                                     ; $42b9: $02
	ld   c, d                                        ; $42ba: $4a
	jr   jr_0ff_425d                                 ; $42bb: $18 $a0

jr_0ff_42bd:
	ld   b, $4a                                      ; $42bd: $06 $4a
	ld   [$ffff], sp                                 ; $42bf: $08 $ff $ff
	ld   bc, $0f00                                   ; $42c2: $01 $00 $0f
	nop                                              ; $42c5: $00
	and  d                                           ; $42c6: $a2
	jr   nz, jr_0ff_4269                             ; $42c7: $20 $a0

jr_0ff_42c9:
	ld   [bc], a                                     ; $42c9: $02
	ld   c, e                                        ; $42ca: $4b
	jr   jr_0ff_426d                                 ; $42cb: $18 $a0

jr_0ff_42cd:
	ld   b, $4b                                      ; $42cd: $06 $4b
	ld   [$ffff], sp                                 ; $42cf: $08 $ff $ff
	ld   bc, $0f00                                   ; $42d2: $01 $00 $0f
	nop                                              ; $42d5: $00
	and  d                                           ; $42d6: $a2
	jr   nz, jr_0ff_4279                             ; $42d7: $20 $a0

jr_0ff_42d9:
	ld   [bc], a                                     ; $42d9: $02
	ld   d, b                                        ; $42da: $50
	jr   jr_0ff_427d                                 ; $42db: $18 $a0

jr_0ff_42dd:
	ld   b, $50                                      ; $42dd: $06 $50
	ld   [$ffff], sp                                 ; $42df: $08 $ff $ff
	ld   bc, $0f00                                   ; $42e2: $01 $00 $0f
	nop                                              ; $42e5: $00
	and  d                                           ; $42e6: $a2
	jr   nz, jr_0ff_4289                             ; $42e7: $20 $a0

	ld   [bc], a                                     ; $42e9: $02
	ld   d, c                                        ; $42ea: $51
	jr   jr_0ff_428d                                 ; $42eb: $18 $a0

	ld   b, $51                                      ; $42ed: $06 $51
	ld   [$ffff], sp                                 ; $42ef: $08 $ff $ff
	ld   bc, $0f00                                   ; $42f2: $01 $00 $0f
	nop                                              ; $42f5: $00
	and  d                                           ; $42f6: $a2
	jr   nz, jr_0ff_4299                             ; $42f7: $20 $a0

	ld   [bc], a                                     ; $42f9: $02
	ld   d, d                                        ; $42fa: $52
	jr   jr_0ff_429d                                 ; $42fb: $18 $a0

	ld   b, $52                                      ; $42fd: $06 $52
	ld   [$ffff], sp                                 ; $42ff: $08 $ff $ff
	ld   bc, $0f00                                   ; $4302: $01 $00 $0f
	nop                                              ; $4305: $00
	and  d                                           ; $4306: $a2
	jr   nz, jr_0ff_42a9                             ; $4307: $20 $a0

	ld   [bc], a                                     ; $4309: $02
	ld   d, e                                        ; $430a: $53
	jr   jr_0ff_42ad                                 ; $430b: $18 $a0

	ld   b, $53                                      ; $430d: $06 $53
	ld   [$ffff], sp                                 ; $430f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4312: $01 $00 $0f
	nop                                              ; $4315: $00
	and  d                                           ; $4316: $a2
	jr   nz, jr_0ff_42b9                             ; $4317: $20 $a0

	ld   [bc], a                                     ; $4319: $02
	ld   d, h                                        ; $431a: $54
	jr   jr_0ff_42bd                                 ; $431b: $18 $a0

	ld   b, $54                                      ; $431d: $06 $54
	ld   [$ffff], sp                                 ; $431f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4322: $01 $00 $0f
	nop                                              ; $4325: $00
	and  d                                           ; $4326: $a2
	jr   nz, jr_0ff_42c9                             ; $4327: $20 $a0

	ld   [bc], a                                     ; $4329: $02
	ld   d, l                                        ; $432a: $55
	jr   jr_0ff_42cd                                 ; $432b: $18 $a0

	ld   b, $55                                      ; $432d: $06 $55
	ld   [$ffff], sp                                 ; $432f: $08 $ff $ff
	ld   bc, $0f00                                   ; $4332: $01 $00 $0f
	nop                                              ; $4335: $00
	and  d                                           ; $4336: $a2
	jr   nz, jr_0ff_42d9                             ; $4337: $20 $a0

	ld   [bc], a                                     ; $4339: $02
	ld   d, [hl]                                     ; $433a: $56
	jr   jr_0ff_42dd                                 ; $433b: $18 $a0

	ld   b, $56                                      ; $433d: $06 $56
	ld   [$ffff], sp                                 ; $433f: $08 $ff $ff
	ld   bc, $0f02                                   ; $4342: $01 $02 $0f
	nop                                              ; $4345: $00
	and  b                                           ; $4346: $a0
	ld   b, $23                                      ; $4347: $06 $23
	ld   bc, $08a0                                   ; $4349: $01 $a0 $08
	inc  h                                           ; $434c: $24
	ld   bc, $04a0                                   ; $434d: $01 $a0 $04
	inc  hl                                          ; $4350: $23
	ld   bc, $06a0                                   ; $4351: $01 $a0 $06
	inc  h                                           ; $4354: $24
	ld   bc, $ffff                                   ; $4355: $01 $ff $ff
	ld   [$0f00], sp                                 ; $4358: $08 $00 $0f
	nop                                              ; $435b: $00
	and  b                                           ; $435c: $a0
	ld   [$0168], sp                                 ; $435d: $08 $68 $01
	and  b                                           ; $4360: $a0
	rrca                                             ; $4361: $0f
	ld   l, c                                        ; $4362: $69
	inc  b                                           ; $4363: $04
	and  b                                           ; $4364: $a0
	ld   c, $69                                      ; $4365: $0e $69
	ld   [bc], a                                     ; $4367: $02
	and  b                                           ; $4368: $a0
	inc  c                                           ; $4369: $0c
	ld   l, c                                        ; $436a: $69
	ld   [bc], a                                     ; $436b: $02
	and  b                                           ; $436c: $a0
	inc  b                                           ; $436d: $04
	ld   l, c                                        ; $436e: $69
	ld   [bc], a                                     ; $436f: $02
	and  b                                           ; $4370: $a0
	inc  bc                                          ; $4371: $03
	ld   l, c                                        ; $4372: $69
	ld   [bc], a                                     ; $4373: $02
	and  b                                           ; $4374: $a0
	ld   [bc], a                                     ; $4375: $02
	ld   l, c                                        ; $4376: $69
	ld   [bc], a                                     ; $4377: $02
	and  b                                           ; $4378: $a0
	ld   bc, $0269                                   ; $4379: $01 $69 $02
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	ld   [$0f00], sp                                 ; $437e: $08 $00 $0f
	nop                                              ; $4381: $00
	and  b                                           ; $4382: $a0
	ld   [$0161], sp                                 ; $4383: $08 $61 $01
	and  b                                           ; $4386: $a0
	ld   [$0162], sp                                 ; $4387: $08 $62 $01
	db   $fd                                         ; $438a: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $438b: $f0 $a0
	rrca                                             ; $438d: $0f
	ld   d, b                                        ; $438e: $50
	ld   [bc], a                                     ; $438f: $02
	and  b                                           ; $4390: $a0
	ld   c, $51                                      ; $4391: $0e $51
	ld   bc, $f0b7                                   ; $4393: $01 $b7 $f0
	and  b                                           ; $4396: $a0
	ld   a, [bc]                                     ; $4397: $0a
	ld   d, c                                        ; $4398: $51
	ld   bc, $07a0                                   ; $4399: $01 $a0 $07
	ld   d, d                                        ; $439c: $52
	ld   bc, $04a0                                   ; $439d: $01 $a0 $04
	ld   d, e                                        ; $43a0: $53
	ld   bc, $01a0                                   ; $43a1: $01 $a0 $01
	ld   d, e                                        ; $43a4: $53
	ld   bc, $ffff                                   ; $43a5: $01 $ff $ff
	ld   [$0f00], sp                                 ; $43a8: $08 $00 $0f
	nop                                              ; $43ab: $00
	and  b                                           ; $43ac: $a0
	rrca                                             ; $43ad: $0f
	ld   [hl], b                                     ; $43ae: $70
	ld   [bc], a                                     ; $43af: $02
	and  b                                           ; $43b0: $a0
	ld   c, $71                                      ; $43b1: $0e $71
	ld   bc, $02a0                                   ; $43b3: $01 $a0 $02
	ld   [hl], e                                     ; $43b6: $73
	ld   bc, $01a0                                   ; $43b7: $01 $a0 $01
	ld   [hl], e                                     ; $43ba: $73
	ld   bc, $ffff                                   ; $43bb: $01 $ff $ff
	ld   [$0f00], sp                                 ; $43be: $08 $00 $0f
	nop                                              ; $43c1: $00
	and  b                                           ; $43c2: $a0
	ld   [$015a], sp                                 ; $43c3: $08 $5a $01
	and  b                                           ; $43c6: $a0
	rrca                                             ; $43c7: $0f
	ld   e, c                                        ; $43c8: $59
	rrca                                             ; $43c9: $0f
	and  b                                           ; $43ca: $a0
	ld   a, [bc]                                     ; $43cb: $0a
	ld   e, c                                        ; $43cc: $59
	ld   [bc], a                                     ; $43cd: $02
	and  b                                           ; $43ce: $a0
	rlca                                             ; $43cf: $07
	ld   e, c                                        ; $43d0: $59
	ld   [bc], a                                     ; $43d1: $02
	and  b                                           ; $43d2: $a0
	inc  b                                           ; $43d3: $04
	ld   e, b                                        ; $43d4: $58
	ld   bc, $03a0                                   ; $43d5: $01 $a0 $03
	ld   e, c                                        ; $43d8: $59
	ld   bc, $02a0                                   ; $43d9: $01 $a0 $02
	ld   e, b                                        ; $43dc: $58
	ld   bc, $01a0                                   ; $43dd: $01 $a0 $01
	ld   e, c                                        ; $43e0: $59
	ld   bc, $ffff                                   ; $43e1: $01 $ff $ff
	ld   [$0f00], sp                                 ; $43e4: $08 $00 $0f
	nop                                              ; $43e7: $00

jr_0ff_43e8:
	and  b                                           ; $43e8: $a0
	ld   [$0171], sp                                 ; $43e9: $08 $71 $01
	and  b                                           ; $43ec: $a0
	ld   [$0172], sp                                 ; $43ed: $08 $72 $01
	and  b                                           ; $43f0: $a0
	rrca                                             ; $43f1: $0f
	ld   a, b                                        ; $43f2: $78
	inc  b                                           ; $43f3: $04
	and  b                                           ; $43f4: $a0
	ld   c, $79                                      ; $43f5: $0e $79
	inc  bc                                          ; $43f7: $03
	and  b                                           ; $43f8: $a0
	inc  b                                           ; $43f9: $04
	ld   l, b                                        ; $43fa: $68
	ld   [bc], a                                     ; $43fb: $02
	and  b                                           ; $43fc: $a0
	inc  bc                                          ; $43fd: $03
	ld   l, c                                        ; $43fe: $69
	ld   bc, $02a0                                   ; $43ff: $01 $a0 $02
	ld   l, b                                        ; $4402: $68
	ld   bc, $01a0                                   ; $4403: $01 $a0 $01
	ld   l, c                                        ; $4406: $69
	ld   bc, $02a0                                   ; $4407: $01 $a0 $02
	ld   l, b                                        ; $440a: $68
	ld   bc, $01a0                                   ; $440b: $01 $a0 $01
	ld   l, c                                        ; $440e: $69
	ld   bc, $ffff                                   ; $440f: $01 $ff $ff
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	ld   [$a200], sp                                 ; $4414: $08 $00 $a2
	ld   bc, $30c7                                   ; $4417: $01 $c7 $30
	and  e                                           ; $441a: $a3
	inc  h                                           ; $441b: $24
	jr   nz, jr_0ff_442e                             ; $441c: $20 $10

	inc  de                                          ; $441e: $13
	dec  b                                           ; $441f: $05
	dec  d                                           ; $4420: $15
	dec  b                                           ; $4421: $05
	rla                                              ; $4422: $17
	dec  b                                           ; $4423: $05
	jr   jr_0ff_442b                                 ; $4424: $18 $05

	ld   a, [de]                                     ; $4426: $1a
	dec  b                                           ; $4427: $05
	jr   nz, jr_0ff_442f                             ; $4428: $20 $05

	ld   [hl+], a                                    ; $442a: $22

jr_0ff_442b:
	ld   [$071f], sp                                 ; $442b: $08 $1f $07

jr_0ff_442e:
	ld   [hl+], a                                    ; $442e: $22

jr_0ff_442f:
	ld   [$071f], sp                                 ; $442f: $08 $1f $07
	dec  h                                           ; $4432: $25
	ld   [$071f], sp                                 ; $4433: $08 $1f $07
	rst  ToBoot                                         ; $4436: $c7
	ld   h, b                                        ; $4437: $60
	inc  h                                           ; $4438: $24
	ldh  a, [rIE]                                    ; $4439: $f0 $ff
	rst  $38                                         ; $443b: $ff
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	inc  c                                           ; $443e: $0c
	nop                                              ; $443f: $00
	and  d                                           ; $4440: $a2
	nop                                              ; $4441: $00
	rst  ToBoot                                         ; $4442: $c7
	jr   nc, jr_0ff_43e8                             ; $4443: $30 $a3

	ld   d, $33                                      ; $4445: $16 $33
	db   $10                                         ; $4447: $10
	daa                                              ; $4448: $27
	dec  b                                           ; $4449: $05
	jr   z, @+$07                                    ; $444a: $28 $05

	ld   a, [hl+]                                    ; $444c: $2a
	dec  b                                           ; $444d: $05
	jr   nc, jr_0ff_4455                             ; $444e: $30 $05

	ld   sp, $3305                                   ; $4450: $31 $05 $33
	dec  b                                           ; $4453: $05
	dec  [hl]                                        ; $4454: $35

jr_0ff_4455:
	ld   [$071f], sp                                 ; $4455: $08 $1f $07
	dec  [hl]                                        ; $4458: $35
	ld   [$071f], sp                                 ; $4459: $08 $1f $07
	ld   a, [hl-]                                    ; $445c: $3a
	ld   [$071f], sp                                 ; $445d: $08 $1f $07
	rst  ToBoot                                         ; $4460: $c7
	ld   h, b                                        ; $4461: $60
	scf                                              ; $4462: $37
	ldh  a, [rIE]                                    ; $4463: $f0 $ff
	rst  $38                                         ; $4465: $ff
	nop                                              ; $4466: $00
	ld   b, b                                        ; $4467: $40
	ld   [bc], a                                     ; $4468: $02
	ld   [bc], a                                     ; $4469: $02
	and  b                                           ; $446a: $a0
	ld   [bc], a                                     ; $446b: $02
	and  e                                           ; $446c: $a3
	inc  h                                           ; $446d: $24
	and  d                                           ; $446e: $a2
	add  b                                           ; $446f: $80
	jr   jr_0ff_447a                                 ; $4470: $18 $08

	rra                                              ; $4472: $1f
	ld   [$0818], sp                                 ; $4473: $08 $18 $08
	jr   @+$0a                                       ; $4476: $18 $08

	jr   jr_0ff_4482                                 ; $4478: $18 $08

jr_0ff_447a:
	rra                                              ; $447a: $1f
	ld   [$081a], sp                                 ; $447b: $08 $1a $08
	rra                                              ; $447e: $1f
	ld   [$082a], sp                                 ; $447f: $08 $2a $08

jr_0ff_4482:
	rra                                              ; $4482: $1f
	ld   [$081a], sp                                 ; $4483: $08 $1a $08
	rra                                              ; $4486: $1f
	ld   [$60a2], sp                                 ; $4487: $08 $a2 $60
	jr   nz, @-$0e                                   ; $448a: $20 $f0

	rst  $38                                         ; $448c: $ff
	rst  $38                                         ; $448d: $ff
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	add  hl, bc                                      ; $4490: $09
	nop                                              ; $4491: $00
	rst  $38                                         ; $4492: $ff
	rst  $38                                         ; $4493: $ff
	ld   [bc], a                                     ; $4494: $02
	nop                                              ; $4495: $00
	add  hl, bc                                      ; $4496: $09
	nop                                              ; $4497: $00
	db   $fd                                         ; $4498: $fd
	di                                               ; $4499: $f3
	pop  bc                                          ; $449a: $c1
	inc  b                                           ; $449b: $04
	and  b                                           ; $449c: $a0
	dec  bc                                          ; $449d: $0b
	ld   d, $01                                      ; $449e: $16 $01
	jr   nz, @+$04                                   ; $44a0: $20 $02

	rra                                              ; $44a2: $1f
	ld   bc, $f3b0                                   ; $44a3: $01 $b0 $f3
	rst  $38                                         ; $44a6: $ff
	rst  $38                                         ; $44a7: $ff
	inc  bc                                          ; $44a8: $03
	nop                                              ; $44a9: $00
	add  hl, bc                                      ; $44aa: $09
	nop                                              ; $44ab: $00
	pop  bc                                          ; $44ac: $c1
	inc  b                                           ; $44ad: $04
	and  b                                           ; $44ae: $a0
	add  hl, bc                                      ; $44af: $09
	ld   l, b                                        ; $44b0: $68
	ld   bc, $06a0                                   ; $44b1: $01 $a0 $06
	sbc  c                                           ; $44b4: $99
	ld   bc, $01a0                                   ; $44b5: $01 $a0 $01
	sbc  c                                           ; $44b8: $99
	ld   b, $ff                                      ; $44b9: $06 $ff
	rst  $38                                         ; $44bb: $ff

; in case of null terminators
	db $00, $00, $00

if def(VWF)

TileMap_IrisMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $87
	db $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $86, $86, $86, $87
	db $84, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $86, $87
	db $84, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $86, $87
	db $84, $ba, $bb, $bc, $bd, $be, $bf, $c0, $bb, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $86, $86, $87
	db $84, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $87
	db $84, $db, $dc, $dd, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $de, $df
	db $84, $86, $86, $e0, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86, $e1, $87
	db $e2, $e3, $e3, $e3, $e3, $e3, $e4, $e5, $e5, $e5, $e5, $e5, $e5, $e6, $e3, $e3, $e3, $e3, $e7, $e8
	db $e9, $e9, $e9, $e9, $e9, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $e9, $e9, $e9, $e9, $e9, $e9
	db $f2, $f2, $f2, $f2, $f2, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $f2, $f2, $f2, $f2, $f2, $f2
	db $86, $86, $fb, $fc, $fd, $86, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $00, $86, $86, $86, $86, $86, $86
	db $86, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $86, $86, $86
	db $86, $86, $11, $12, $13, $86, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
	db $86, $86, $86, $86, $86, $86, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $86, $86, $30, $31, $32, $86, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $86, $86
	db $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f


Gfx_IrisMiniGameHelpScreen::
	INCBIN "en_irisMGHelpScreen.2bpp"
.end::


TileMap_KohranMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $92, $92, $92, $92, $93
	db $94, $95, $96, $97, $98, $99, $9a, $9b, $92, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $92, $92, $93
	db $84, $92, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $92, $93
	db $84, $92, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $93
	db $84, $92, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $cb, $cc, $d0, $d1, $d2, $d3, $d4
	db $84, $92, $d5, $d6, $d7, $d8, $92, $92, $92, $92, $92, $92, $92, $92, $92, $92, $92, $92, $d9, $93
	db $da, $db, $db, $db, $db, $db, $dc, $dd, $dd, $dd, $dd, $dd, $dd, $de, $db, $db, $db, $db, $df, $e0
	db $e1, $e1, $e1, $e1, $e1, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $e1, $e1, $e1, $e1, $e1, $e1
	db $e1, $e1, $e1, $e1, $e1, $e1, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $e1, $e1, $e1, $e1, $e1, $e1
	db $f2, $f2, $f2, $f2, $f2, $f2, $f3, $f4, $f4, $f4, $f4, $f4, $f4, $f5, $f2, $f2, $f2, $f2, $f2, $f2
	db $92, $92, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $92, $92, $fd, $fe, $ff, $00, $01, $02, $03, $92, $92
	db $92, $92, $04, $05, $06, $07, $08, $09, $0a, $92, $92, $0b, $0c, $0d, $0e, $0f, $10, $11, $92, $92
	db $92, $92, $12, $13, $14, $15, $16, $17, $18, $92, $92, $0b, $0c, $19, $1a, $1b, $10, $11, $92, $92
	db $92, $92, $1c, $1d, $1e, $1f, $20, $21, $22, $92, $92, $23, $24, $25, $26, $27, $28, $29, $92, $92
	db $92, $2a, $2b, $2c, $92, $2d, $2e, $2f, $30, $31, $32, $33, $34, $92, $2d, $2e, $2f, $30, $31, $92
	db $92, $35, $36, $37, $92, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $92, $38, $39, $3a, $3b, $3c, $92
	db $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40


Gfx_KohranMiniGameHelpScreen::
	INCBIN "en_kohranMGHelpScreen.2bpp"
.end::


TileMap_KannaMiniGameHelpScreen::
	db $80, $81, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $82, $83
	db $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $86, $86, $95
	db $96, $97, $86, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $86, $86, $95
	db $84, $86, $86, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $86, $95
	db $84, $86, $86, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $8d, $be, $bf, $86, $86, $86, $86, $95
	db $84, $86, $86, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $86, $86, $86, $cc, $cd
	db $84, $86, $86, $ce, $cf, $d0, $a8, $d1, $d2, $86, $86, $86, $86, $86, $86, $86, $86, $86, $d3, $95
	db $d4, $d5, $d5, $d5, $d5, $d5, $d6, $d7, $d7, $d7, $d7, $d7, $d7, $d8, $d5, $d5, $d5, $d5, $d9, $da
	db $db, $db, $db, $db, $db, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $db, $db, $db, $db, $db, $db
	db $86, $86, $86, $86, $86, $86, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $86, $86, $86, $86, $86, $86
	db $86, $ec, $ed, $ee, $ed, $ed, $ef, $f0, $f0, $f1, $f2, $f2, $f2, $f3, $86, $86, $86, $86, $86, $86
	db $86, $f4, $f5, $f6, $f7, $f5, $f5, $f5, $f5, $f8, $86, $86, $86, $86, $86, $86, $86, $86, $86, $86
	db $86, $f4, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $f8, $86, $00, $01, $02, $86, $03, $04, $05, $86, $86
	db $86, $f4, $f5, $06, $f5, $f5, $f5, $f5, $f5, $f8, $86, $07, $08, $09, $86, $07, $0a, $0b, $86, $86
	db $86, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
	db $86, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31
	db $86, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $86, $86
	db $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $43, $44, $43, $43, $43, $43, $43, $43, $43, $43


Gfx_KannaMiniGameHelpScreen::
	INCBIN "en_kannaMGHelpScreen.2bpp"
.end::


Gfx_SumireMiniGameMainSpr::
	INCBIN "en_sumireMiniGameMainSpr.2bpp"
.end::


Gfx_MariaMiniGameMain::
	INCBIN "en_mariaMiniGameMain.2bpp"
.end::


TileMap_EnMariaMiniGameMain::
	db $80, $81, $82, $83
	db $84, $85, $86, $87
	db $88, $89, $8a, $8b


LoadIrisMiniGameMainGfx1::
	ld   bc, $80
	ld   de, $8a60
	ld   hl, .row1
	call MemCopy

	ld   bc, $80
	ld   de, $8ae0
	ld   hl, .row2
	call MemCopy

	ld   bc, $80
	ld   de, $8b60
	ld   hl, .row3
	call MemCopy

	ld   bc, $80
	ld   de, $8be0
	ld   hl, .row4
	call MemCopy

	ld   bc, $80
	ld   de, $8c60
	ld   hl, .row5
	call MemCopy

	ld   bc, $80
	ld   de, $8ce0
	ld   hl, .row6
	call MemCopy

	ld   bc, $b0
	ld   de, $8d60
	ld   hl, .row7
	call MemCopy

	ld   bc, $b0
	ld   de, $8e10
	ld   hl, .row8
	call MemCopy

	ld   bc, $b0
	ld   de, $8ec0
	ld   hl, .row9
	call MemCopy

	ld   bc, $30
	ld   de, $8830
	ld   hl, .score
	call MemCopy

	ld   bc, $30
	ld   de, $88a0
	ld   hl, .timer
	call MemCopy

	ret

.row1:
	INCBIN "en_irisMiniGameMain.2bpp", 0, $80
.row2:
	INCBIN "en_irisMiniGameMain.2bpp", 11*$10, $80
.row3:
	INCBIN "en_irisMiniGameMain.2bpp", 22*$10, $80
.row4:
	INCBIN "en_irisMiniGameMain.2bpp", 33*$10, $80
.row5:
	INCBIN "en_irisMiniGameMain.2bpp", 44*$10, $80
.row6:
	INCBIN "en_irisMiniGameMain.2bpp", 55*$10, $80
.row7:
	INCBIN "en_irisMiniGameMain.2bpp", 66*$10, $b0
.row8:
	INCBIN "en_irisMiniGameMain.2bpp", 77*$10, $b0
.row9:
	INCBIN "en_irisMiniGameMain.2bpp", 88*$10, $b0

.score:
	INCBIN "en_irisMiniGameMain.2bpp", 8*$10, $30
.timer:
	INCBIN "en_irisMiniGameMain.2bpp", (11+8)*$10, $30


IrisMiniGameMainLayout1::
	db $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad
	db $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5
	db $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd


IrisMiniGameMainLayout2::
	db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5
	db $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
	db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5


IrisMiniGameMainLayout3::
	db $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0
	db $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb
	db $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6


IrisMiniGameMainLayout4::
	db $4c, $e0, $e0, $4c, $4c
	db $4c, $f0, $f0, $4f, $4c


Gfx_IrisMiniGameMain::
	INCBIN "en_kohranMiniGameMain.2bpp"
.end::


EnLoadKannaMiniGameGfx0::
	ld   bc, 10*$10
	ld   de, $8c10
	ld   hl, .row1
	call MemCopy

	ld   bc, 10*$10
	ld   de, $8d10
	ld   hl, .row2
	call MemCopy

	ld   bc, 10*$10
	ld   de, $8e10
	ld   hl, .row3
	call MemCopy

	ld   bc, 10*$10
	ld   de, $8f10
	ld   hl, .row4
	call MemCopy

	ld   bc, 6*$10
	ld   de, $8cb0
	ld   hl, .row6_1
	call MemCopy

	ld   bc, 6*$10
	ld   de, $8db0
	ld   hl, .row7_1
	call MemCopy

	ld   bc, 6*$10
	ld   de, $8eb0
	ld   hl, .row8_1
	call MemCopy

	ld   bc, 5*$10
	ld   de, $8fb0
	ld   hl, .row9_1
	call MemCopy

	ret
.row1:
	INCBIN "en_kannaMiniGameMain.2bpp", 0, 10*$10
.row2:
	INCBIN "en_kannaMiniGameMain.2bpp", 10*$10, 10*$10
.row3:
	INCBIN "en_kannaMiniGameMain.2bpp", 20*$10, 10*$10
.row4:
	INCBIN "en_kannaMiniGameMain.2bpp", 30*$10, 10*$10
.row6_1:
	INCBIN "en_kannaMiniGameMain.2bpp", 50*$10, 6*$10
.row7_1:
	INCBIN "en_kannaMiniGameMain.2bpp", 60*$10, 6*$10
.row8_1:
	INCBIN "en_kannaMiniGameMain.2bpp", 70*$10, 6*$10
.row9_1:
	INCBIN "en_kannaMiniGameMain.2bpp", 80*$10, 5*$10


_SoundModeLoadTextHook::
	call LoadInstantText

	ld   hl, $d0a0+$13f
	ld   de, $d0a0+$139
	ld   bc, $138
:	ld   a, [de]
	dec  de
	ld   [hl-], a
	dec  bc
	ld   a, b
	or   c
	jr   nz, :-
	ret


IrisMiniGameLayoutHook::
; Tile attr
	ld   de, $5982                                   ; $56e5: $11 $82 $59
	ld   bc, $141b                                   ; $56e8: $01 $1b $14
	call FarCopyLayout                                       ; $56eb: $cd $2c $0b

; Attrs hook
	ld   a, $88
	ld   [$9a46], a
	ld   [$9a66], a
	ld   [$9a86], a
	ld   [$9a4d], a
	ld   [$9a6d], a
	ld   [$9a8d], a
	ld   [$9b10], a
	ld   [$9b30], a
	ld   [$9b50], a
	ld   [$9b0e], a
	ld   [$9b0f], a
	ld   [$9b2e], a
	ld   [$9b2f], a
	ld   [$9b4e], a
	ld   [$9b4f], a

	ld   a, $03
	ld   [$99ee], a
	ld   [$9a0e], a

	ld   a, $0b
	ld   [$99f0], a
	ld   [$9a10], a

; Tile map
	xor  a                                           ; $56ee: $af
	ldh  [rVBK], a                                   ; $56ef: $e0 $4f
	ld   hl, $9800                                   ; $56f1: $21 $00 $98
	ld   a, $34                                      ; $56f4: $3e $34
	call FarCopyLayout                                       ; $56f6: $cd $2c $0b

; Map hook
	ld   a, BANK(IrisMiniGameMainLayout1)
	ldbc $08, $03
	ld   de, IrisMiniGameMainLayout1
	ld   hl, $9a46
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout2)
	ldbc $08, $03
	ld   de, IrisMiniGameMainLayout2
	ld   hl, $9aa6
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout3)
	ldbc $0b, $03
	ld   de, IrisMiniGameMainLayout3
	ld   hl, $9b06
	call FarCopyLayout

	ld   a, BANK(IrisMiniGameMainLayout4)
	ldbc $05, $02
	ld   de, IrisMiniGameMainLayout4
	ld   hl, $99ed
	call FarCopyLayout
	ret


_AllEndingsHook::
	ld   hl, FLAG1_SAKURA_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1

	ld   hl, FLAG1_SUMIRE_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1

	ld   hl, FLAG1_MARIA_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1

	ld   hl, FLAG1_IRIS_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1

	ld   hl, FLAG1_KOHRAN_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1

	ld   hl, FLAG1_KANNA_PORTRAIT_GALLERY
	ld   a, $ff
	M_FarCall SetOrUnsetNextFlag1
	ret


FileLoadDisplayLastDayMap::
	db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30
	db $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $fb, $fc, $fd, $fd, $fd, $fd, $fd, $3f, $fd


FileLoadDisplayLastDayAttr::
	db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
	db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
	db $05, $05, $05, $05, $05, $05, $05, $0d, $05


FileLoadDisplayDayMap::
	db $18, $19, $1a, $1b
	db $23, $24, $25, $26
	db $fd, $fd, $ed, $fd


FileLoadDisplayDayAttr::
	db $0d, $0d, $0d, $0d, $05, $05, $05
	db $0d, $0d, $0d, $0d, $05, $05, $05
	db $05, $05, $0d, $05, $05, $05, $05

endc