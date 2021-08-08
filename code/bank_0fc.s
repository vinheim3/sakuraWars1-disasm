; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0fc", ROMX[$4000], BANK[$fc]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	sub  h                                           ; $4002: $94
	ld   b, b                                        ; $4003: $40
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	and  [hl]                                        ; $4006: $a6
	ld   b, b                                        ; $4007: $40
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	ret  nc                                          ; $400a: $d0

	ld   b, b                                        ; $400b: $40
	nop                                              ; $400c: $00
	inc  bc                                          ; $400d: $03
	or   $40                                         ; $400e: $f6 $40
	nop                                              ; $4010: $00
	inc  bc                                          ; $4011: $03
	ld   [$0041], sp                                 ; $4012: $08 $41 $00
	inc  bc                                          ; $4015: $03
	ld   a, [de]                                     ; $4016: $1a
	ld   b, c                                        ; $4017: $41
	nop                                              ; $4018: $00
	inc  bc                                          ; $4019: $03
	ld   [hl], $41                                   ; $401a: $36 $41
	nop                                              ; $401c: $00
	inc  bc                                          ; $401d: $03
	ld   h, b                                        ; $401e: $60
	ld   b, c                                        ; $401f: $41
	nop                                              ; $4020: $00
	inc  bc                                          ; $4021: $03
	add  [hl]                                        ; $4022: $86
	ld   b, c                                        ; $4023: $41
	nop                                              ; $4024: $00
	inc  bc                                          ; $4025: $03
	ret  nz                                          ; $4026: $c0

	ld   b, c                                        ; $4027: $41
	nop                                              ; $4028: $00
	inc  bc                                          ; $4029: $03
	sub  $41                                         ; $402a: $d6 $41
	nop                                              ; $402c: $00
	inc  bc                                          ; $402d: $03
	inc  b                                           ; $402e: $04
	ld   b, d                                        ; $402f: $42
	nop                                              ; $4030: $00
	inc  bc                                          ; $4031: $03
	ld   a, [hl+]                                    ; $4032: $2a
	ld   b, d                                        ; $4033: $42
	nop                                              ; $4034: $00
	inc  bc                                          ; $4035: $03
	ld   l, h                                        ; $4036: $6c
	ld   b, d                                        ; $4037: $42
	nop                                              ; $4038: $00
	nop                                              ; $4039: $00
	jp   z, $0042                                    ; $403a: $ca $42 $00

	nop                                              ; $403d: $00
	sub  b                                           ; $403e: $90
	ld   b, e                                        ; $403f: $43
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	ld   d, [hl]                                     ; $4042: $56
	ld   b, h                                        ; $4043: $44
	ld   b, b                                        ; $4044: $40
	nop                                              ; $4045: $00
	cp   d                                           ; $4046: $ba
	ld   b, h                                        ; $4047: $44
	ld   h, b                                        ; $4048: $60
	ld   bc, $4808                                   ; $4049: $01 $08 $48
	add  b                                           ; $404c: $80
	ld   [bc], a                                     ; $404d: $02
	ldh  a, [c]                                      ; $404e: $f2
	ld   c, e                                        ; $404f: $4b
	and  b                                           ; $4050: $a0
	inc  bc                                          ; $4051: $03
	xor  $4e                                         ; $4052: $ee $4e
	ld   b, b                                        ; $4054: $40
	nop                                              ; $4055: $00
	add  $50                                         ; $4056: $c6 $50
	ld   h, b                                        ; $4058: $60
	ld   bc, $51e4                                   ; $4059: $01 $e4 $51
	add  b                                           ; $405c: $80
	ld   [bc], a                                     ; $405d: $02
	db   $10                                         ; $405e: $10
	ld   d, e                                        ; $405f: $53
	and  b                                           ; $4060: $a0
	inc  bc                                          ; $4061: $03
	ld   [hl-], a                                    ; $4062: $32
	ld   d, h                                        ; $4063: $54
	ld   b, b                                        ; $4064: $40
	nop                                              ; $4065: $00
	jr   c, jr_0fc_40bc                              ; $4066: $38 $54

	ld   h, b                                        ; $4068: $60
	ld   bc, $5850                                   ; $4069: $01 $50 $58
	add  b                                           ; $406c: $80
	ld   [bc], a                                     ; $406d: $02
	sub  b                                           ; $406e: $90
	ld   e, l                                        ; $406f: $5d
	and  b                                           ; $4070: $a0
	inc  bc                                          ; $4071: $03
	nop                                              ; $4072: $00
	ld   h, e                                        ; $4073: $63
	ld   b, b                                        ; $4074: $40
	nop                                              ; $4075: $00
	and  b                                           ; $4076: $a0
	ld   h, a                                        ; $4077: $67
	ld   h, b                                        ; $4078: $60
	ld   bc, $6d46                                   ; $4079: $01 $46 $6d
	add  b                                           ; $407c: $80
	ld   [bc], a                                     ; $407d: $02
	ld   [hl], b                                     ; $407e: $70
	ld   l, a                                        ; $407f: $6f
	and  b                                           ; $4080: $a0
	inc  bc                                          ; $4081: $03
	jr   nc, jr_0fc_40fb                             ; $4082: $30 $77

	ld   b, b                                        ; $4084: $40
	nop                                              ; $4085: $00
	ld   d, h                                        ; $4086: $54
	ld   a, d                                        ; $4087: $7a
	ld   h, b                                        ; $4088: $60
	ld   bc, $7b48                                   ; $4089: $01 $48 $7b
	add  b                                           ; $408c: $80
	ld   [bc], a                                     ; $408d: $02
	ld   b, $7c                                      ; $408e: $06 $7c
	and  b                                           ; $4090: $a0
	inc  bc                                          ; $4091: $03
	ld   d, $7e                                      ; $4092: $16 $7e
	nop                                              ; $4094: $00
	ld   [bc], a                                     ; $4095: $02
	rrca                                             ; $4096: $0f
	nop                                              ; $4097: $00
	and  b                                           ; $4098: $a0
	rrca                                             ; $4099: $0f
	ld   b, b                                        ; $409a: $40
	ld   [bc], a                                     ; $409b: $02
	and  b                                           ; $409c: $a0
	inc  b                                           ; $409d: $04
	ld   b, b                                        ; $409e: $40
	ld   bc, $01a0                                   ; $409f: $01 $a0 $01
	ld   b, b                                        ; $40a2: $40
	ld   bc, $ffff                                   ; $40a3: $01 $ff $ff
	nop                                              ; $40a6: $00
	ld   [bc], a                                     ; $40a7: $02
	rrca                                             ; $40a8: $0f
	nop                                              ; $40a9: $00
	and  b                                           ; $40aa: $a0
	rrca                                             ; $40ab: $0f
	ld   d, b                                        ; $40ac: $50
	ld   [$04a0], sp                                 ; $40ad: $08 $a0 $04
	ld   d, b                                        ; $40b0: $50
	ld   [$0fa0], sp                                 ; $40b1: $08 $a0 $0f
	ld   b, l                                        ; $40b4: $45
	ld   [$0847], sp                                 ; $40b5: $08 $47 $08
	ld   c, c                                        ; $40b8: $49
	ld   [$084b], sp                                 ; $40b9: $08 $4b $08

jr_0fc_40bc:
	ld   d, b                                        ; $40bc: $50
	ld   [$06a0], sp                                 ; $40bd: $08 $a0 $06
	ld   c, e                                        ; $40c0: $4b
	inc  b                                           ; $40c1: $04
	and  b                                           ; $40c2: $a0
	inc  b                                           ; $40c3: $04
	ld   d, b                                        ; $40c4: $50
	inc  b                                           ; $40c5: $04
	and  b                                           ; $40c6: $a0
	inc  bc                                          ; $40c7: $03
	ld   c, e                                        ; $40c8: $4b
	inc  b                                           ; $40c9: $04
	and  b                                           ; $40ca: $a0
	ld   [bc], a                                     ; $40cb: $02
	ld   d, b                                        ; $40cc: $50
	inc  b                                           ; $40cd: $04
	rst  $38                                         ; $40ce: $ff
	rst  $38                                         ; $40cf: $ff
	nop                                              ; $40d0: $00
	ld   [bc], a                                     ; $40d1: $02
	rrca                                             ; $40d2: $0f
	nop                                              ; $40d3: $00
	and  b                                           ; $40d4: $a0
	rrca                                             ; $40d5: $0f
	ld   c, c                                        ; $40d6: $49
	ld   b, $a0                                      ; $40d7: $06 $a0
	ld   c, $46                                      ; $40d9: $0e $46
	ld   b, $a0                                      ; $40db: $06 $a0
	dec  c                                           ; $40dd: $0d
	ld   b, e                                        ; $40de: $43
	ld   b, $a0                                      ; $40df: $06 $a0
	inc  c                                           ; $40e1: $0c
	dec  sp                                          ; $40e2: $3b
	ld   b, $a0                                      ; $40e3: $06 $a0
	ld   b, $43                                      ; $40e5: $06 $43
	inc  bc                                          ; $40e7: $03
	and  b                                           ; $40e8: $a0
	inc  b                                           ; $40e9: $04
	dec  sp                                          ; $40ea: $3b
	inc  bc                                          ; $40eb: $03
	and  b                                           ; $40ec: $a0
	inc  bc                                          ; $40ed: $03
	ld   b, e                                        ; $40ee: $43
	inc  bc                                          ; $40ef: $03
	and  b                                           ; $40f0: $a0
	ld   [bc], a                                     ; $40f1: $02
	dec  sp                                          ; $40f2: $3b
	inc  bc                                          ; $40f3: $03
	rst  $38                                         ; $40f4: $ff
	rst  $38                                         ; $40f5: $ff
	ld   bc, $0f00                                   ; $40f6: $01 $00 $0f
	nop                                              ; $40f9: $00
	db   $fd                                         ; $40fa: $fd

jr_0fc_40fb:
	ldh  a, [hScriptOpcodeParams]                                    ; $40fb: $f0 $a0
	inc  b                                           ; $40fd: $04
	ld   b, b                                        ; $40fe: $40
	ld   [$03a0], sp                                 ; $40ff: $08 $a0 $03
	ld   b, c                                        ; $4102: $41
	ld   [$f0bf], sp                                 ; $4103: $08 $bf $f0
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	ld   bc, $0f00                                   ; $4108: $01 $00 $0f
	nop                                              ; $410b: $00
	db   $fd                                         ; $410c: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $410d: $f0 $a0
	inc  b                                           ; $410f: $04
	ld   d, b                                        ; $4110: $50
	ld   [$03a0], sp                                 ; $4111: $08 $a0 $03
	ld   d, b                                        ; $4114: $50
	ld   [$f0bf], sp                                 ; $4115: $08 $bf $f0
	rst  $38                                         ; $4118: $ff
	rst  $38                                         ; $4119: $ff
	ld   bc, $0f00                                   ; $411a: $01 $00 $0f
	nop                                              ; $411d: $00
	db   $fd                                         ; $411e: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $411f: $f0 $a0
	rrca                                             ; $4121: $0f
	ld   h, b                                        ; $4122: $60
	ld   bc, $0163                                   ; $4123: $01 $63 $01
	and  b                                           ; $4126: $a0
	inc  bc                                          ; $4127: $03
	ld   h, b                                        ; $4128: $60
	ld   [bc], a                                     ; $4129: $02
	and  b                                           ; $412a: $a0
	ld   bc, $0163                                   ; $412b: $01 $63 $01
	ld   h, d                                        ; $412e: $62
	ld   bc, $0b1f                                   ; $412f: $01 $1f $0b
	or   c                                           ; $4132: $b1
	ldh  a, [rIE]                                    ; $4133: $f0 $ff
	rst  $38                                         ; $4135: $ff
	ld   b, $00                                      ; $4136: $06 $00
	rrca                                             ; $4138: $0f
	nop                                              ; $4139: $00
	and  b                                           ; $413a: $a0
	ld   [$0171], sp                                 ; $413b: $08 $71 $01
	and  b                                           ; $413e: $a0
	rrca                                             ; $413f: $0f
	ld   d, b                                        ; $4140: $50
	ld   bc, $0160                                   ; $4141: $01 $60 $01
	ld   [hl], d                                     ; $4144: $72
	ld   bc, $0162                                   ; $4145: $01 $62 $01
	ld   [hl], c                                     ; $4148: $71
	ld   bc, $0ca0                                   ; $4149: $01 $a0 $0c
	ld   h, e                                        ; $414c: $63
	ld   bc, $03a0                                   ; $414d: $01 $a0 $03
	ld   h, b                                        ; $4150: $60
	ld   [bc], a                                     ; $4151: $02
	ld   h, d                                        ; $4152: $62
	ld   bc, $0161                                   ; $4153: $01 $61 $01
	and  b                                           ; $4156: $a0
	ld   bc, $0173                                   ; $4157: $01 $73 $01
	ld   [hl], d                                     ; $415a: $72
	ld   bc, $0171                                   ; $415b: $01 $71 $01
	rst  $38                                         ; $415e: $ff
	rst  $38                                         ; $415f: $ff
	ld   [$0f00], sp                                 ; $4160: $08 $00 $0f
	nop                                              ; $4163: $00
	and  b                                           ; $4164: $a0
	ld   [$0177], sp                                 ; $4165: $08 $77 $01
	and  b                                           ; $4168: $a0
	rrca                                             ; $4169: $0f
	ld   d, h                                        ; $416a: $54
	ld   bc, $0155                                   ; $416b: $01 $55 $01
	ld   d, [hl]                                     ; $416e: $56
	ld   bc, $0ca0                                   ; $416f: $01 $a0 $0c
	ld   h, d                                        ; $4172: $62
	ld   bc, $03a0                                   ; $4173: $01 $a0 $03
	ld   h, b                                        ; $4176: $60
	ld   [bc], a                                     ; $4177: $02
	ld   h, d                                        ; $4178: $62
	ld   bc, $0163                                   ; $4179: $01 $63 $01
	and  b                                           ; $417c: $a0
	ld   bc, $0170                                   ; $417d: $01 $70 $01
	ld   [hl], d                                     ; $4180: $72
	ld   bc, $0173                                   ; $4181: $01 $73 $01
	rst  $38                                         ; $4184: $ff
	rst  $38                                         ; $4185: $ff
	ld   a, [bc]                                     ; $4186: $0a
	nop                                              ; $4187: $00
	rrca                                             ; $4188: $0f
	nop                                              ; $4189: $00
	and  b                                           ; $418a: $a0
	ld   a, [bc]                                     ; $418b: $0a
	ld   l, b                                        ; $418c: $68
	ld   bc, $0fa0                                   ; $418d: $01 $a0 $0f
	ld   d, d                                        ; $4190: $52
	inc  b                                           ; $4191: $04
	and  b                                           ; $4192: $a0
	dec  c                                           ; $4193: $0d
	ld   h, d                                        ; $4194: $62
	ld   [bc], a                                     ; $4195: $02
	and  b                                           ; $4196: $a0
	ld   a, [bc]                                     ; $4197: $0a
	ld   d, d                                        ; $4198: $52
	ld   [bc], a                                     ; $4199: $02
	and  b                                           ; $419a: $a0
	inc  b                                           ; $419b: $04
	ld   h, b                                        ; $419c: $60
	ld   [bc], a                                     ; $419d: $02
	and  b                                           ; $419e: $a0
	inc  bc                                          ; $419f: $03
	ld   d, d                                        ; $41a0: $52
	ld   bc, $02a0                                   ; $41a1: $01 $a0 $02
	ld   h, d                                        ; $41a4: $62
	ld   bc, $03a0                                   ; $41a5: $01 $a0 $03
	ld   [hl], b                                     ; $41a8: $70
	ld   [bc], a                                     ; $41a9: $02
	and  b                                           ; $41aa: $a0
	ld   [bc], a                                     ; $41ab: $02
	ld   h, d                                        ; $41ac: $62
	ld   bc, $01a0                                   ; $41ad: $01 $a0 $01
	ld   [hl], d                                     ; $41b0: $72
	ld   bc, $02a0                                   ; $41b1: $01 $a0 $02
	ld   [hl], b                                     ; $41b4: $70
	ld   [bc], a                                     ; $41b5: $02
	and  b                                           ; $41b6: $a0
	ld   bc, $0162                                   ; $41b7: $01 $62 $01
	and  b                                           ; $41ba: $a0
	ld   bc, $0172                                   ; $41bb: $01 $72 $01
	rst  $38                                         ; $41be: $ff
	rst  $38                                         ; $41bf: $ff
	ld   [$0f00], sp                                 ; $41c0: $08 $00 $0f
	nop                                              ; $41c3: $00
	and  b                                           ; $41c4: $a0
	ld   a, [bc]                                     ; $41c5: $0a
	ld   [hl], d                                     ; $41c6: $72
	ld   bc, $0fa0                                   ; $41c7: $01 $a0 $0f
	rla                                              ; $41ca: $17
	ld   bc, $03a0                                   ; $41cb: $01 $a0 $03
	db   $10                                         ; $41ce: $10
	ld   bc, $01a0                                   ; $41cf: $01 $a0 $01
	ld   [hl+], a                                    ; $41d2: $22
	ld   bc, $ffff                                   ; $41d3: $01 $ff $ff
	ld   [$0f00], sp                                 ; $41d6: $08 $00 $0f
	nop                                              ; $41d9: $00
	and  b                                           ; $41da: $a0
	ld   [$0151], sp                                 ; $41db: $08 $51 $01
	and  b                                           ; $41de: $a0
	rrca                                             ; $41df: $0f
	ld   b, e                                        ; $41e0: $43
	inc  bc                                          ; $41e1: $03
	and  b                                           ; $41e2: $a0
	inc  c                                           ; $41e3: $0c
	ld   b, d                                        ; $41e4: $42
	ld   bc, $09a0                                   ; $41e5: $01 $a0 $09
	ld   b, c                                        ; $41e8: $41
	inc  bc                                          ; $41e9: $03
	and  b                                           ; $41ea: $a0
	inc  bc                                          ; $41eb: $03
	ld   b, e                                        ; $41ec: $43
	ld   [bc], a                                     ; $41ed: $02
	and  b                                           ; $41ee: $a0
	ld   [bc], a                                     ; $41ef: $02
	ld   b, d                                        ; $41f0: $42
	ld   bc, $01a0                                   ; $41f1: $01 $a0 $01
	ld   b, c                                        ; $41f4: $41
	ld   bc, $02a0                                   ; $41f5: $01 $a0 $02
	ld   b, e                                        ; $41f8: $43
	ld   [bc], a                                     ; $41f9: $02
	and  b                                           ; $41fa: $a0
	ld   bc, $0142                                   ; $41fb: $01 $42 $01
	and  b                                           ; $41fe: $a0
	ld   bc, $0141                                   ; $41ff: $01 $41 $01
	rst  $38                                         ; $4202: $ff
	rst  $38                                         ; $4203: $ff
	ld   bc, $0f00                                   ; $4204: $01 $00 $0f
	nop                                              ; $4207: $00
	db   $fd                                         ; $4208: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4209: $f0 $a0
	dec  c                                           ; $420b: $0d
	ld   [hl], e                                     ; $420c: $73
	ld   bc, $0fa0                                   ; $420d: $01 $a0 $0f
	ld   b, h                                        ; $4210: $44
	ld   [bc], a                                     ; $4211: $02
	and  b                                           ; $4212: $a0
	ld   a, [bc]                                     ; $4213: $0a
	ld   d, d                                        ; $4214: $52
	ld   bc, $04a0                                   ; $4215: $01 $a0 $04
	ld   d, c                                        ; $4218: $51
	ld   bc, $f0b4                                   ; $4219: $01 $b4 $f0
	and  b                                           ; $421c: $a0
	rlca                                             ; $421d: $07
	ld   b, e                                        ; $421e: $43
	ld   bc, $04a0                                   ; $421f: $01 $a0 $04
	ld   d, d                                        ; $4222: $52
	ld   bc, $01a0                                   ; $4223: $01 $a0 $01
	ld   d, c                                        ; $4226: $51
	ld   bc, $ffff                                   ; $4227: $01 $ff $ff
	ld   [$0f00], sp                                 ; $422a: $08 $00 $0f
	nop                                              ; $422d: $00
	and  b                                           ; $422e: $a0
	ld   a, [bc]                                     ; $422f: $0a
	ld   l, b                                        ; $4230: $68
	ld   bc, $09a0                                   ; $4231: $01 $a0 $09
	ld   h, a                                        ; $4234: $67
	ld   bc, $08a0                                   ; $4235: $01 $a0 $08
	ld   h, [hl]                                     ; $4238: $66
	ld   bc, $0fa0                                   ; $4239: $01 $a0 $0f
	ld   d, d                                        ; $423c: $52
	inc  b                                           ; $423d: $04
	and  b                                           ; $423e: $a0
	dec  c                                           ; $423f: $0d
	ld   h, d                                        ; $4240: $62
	ld   [bc], a                                     ; $4241: $02
	and  b                                           ; $4242: $a0
	ld   a, [bc]                                     ; $4243: $0a
	ld   d, d                                        ; $4244: $52
	ld   [bc], a                                     ; $4245: $02
	and  b                                           ; $4246: $a0
	inc  b                                           ; $4247: $04
	ld   h, b                                        ; $4248: $60
	ld   [bc], a                                     ; $4249: $02
	and  b                                           ; $424a: $a0
	inc  bc                                          ; $424b: $03
	ld   d, d                                        ; $424c: $52
	ld   bc, $02a0                                   ; $424d: $01 $a0 $02
	ld   h, d                                        ; $4250: $62
	ld   bc, $03a0                                   ; $4251: $01 $a0 $03
	ld   [hl], b                                     ; $4254: $70
	ld   [bc], a                                     ; $4255: $02
	and  b                                           ; $4256: $a0
	ld   [bc], a                                     ; $4257: $02
	ld   h, d                                        ; $4258: $62
	ld   bc, $01a0                                   ; $4259: $01 $a0 $01
	ld   [hl], d                                     ; $425c: $72
	ld   bc, $02a0                                   ; $425d: $01 $a0 $02
	ld   [hl], b                                     ; $4260: $70
	ld   [bc], a                                     ; $4261: $02
	and  b                                           ; $4262: $a0
	ld   bc, $0162                                   ; $4263: $01 $62 $01
	and  b                                           ; $4266: $a0
	ld   bc, $0172                                   ; $4267: $01 $72 $01
	rst  $38                                         ; $426a: $ff
	rst  $38                                         ; $426b: $ff
	ld   [$0f00], sp                                 ; $426c: $08 $00 $0f
	nop                                              ; $426f: $00
	and  b                                           ; $4270: $a0
	rrca                                             ; $4271: $0f
	ld   d, l                                        ; $4272: $55
	ld   [bc], a                                     ; $4273: $02
	and  b                                           ; $4274: $a0
	ld   c, $54                                      ; $4275: $0e $54
	ld   [bc], a                                     ; $4277: $02
	and  b                                           ; $4278: $a0
	rrca                                             ; $4279: $0f
	ld   d, e                                        ; $427a: $53
	ld   bc, $06a0                                   ; $427b: $01 $a0 $06
	ld   d, d                                        ; $427e: $52
	ld   bc, $0fa0                                   ; $427f: $01 $a0 $0f
	ld   b, d                                        ; $4282: $42
	inc  b                                           ; $4283: $04
	and  b                                           ; $4284: $a0
	ld   c, $44                                      ; $4285: $0e $44
	ld   [bc], a                                     ; $4287: $02
	and  b                                           ; $4288: $a0
	rrca                                             ; $4289: $0f
	ld   b, e                                        ; $428a: $43
	inc  b                                           ; $428b: $04
	and  b                                           ; $428c: $a0
	ld   c, $44                                      ; $428d: $0e $44
	ld   [bc], a                                     ; $428f: $02
	and  b                                           ; $4290: $a0
	dec  c                                           ; $4291: $0d
	ld   b, e                                        ; $4292: $43
	ld   [bc], a                                     ; $4293: $02
	and  b                                           ; $4294: $a0
	inc  c                                           ; $4295: $0c
	ld   b, h                                        ; $4296: $44
	ld   [bc], a                                     ; $4297: $02
	and  b                                           ; $4298: $a0
	add  hl, bc                                      ; $4299: $09
	ld   b, d                                        ; $429a: $42
	inc  bc                                          ; $429b: $03
	and  b                                           ; $429c: $a0
	ld   [$0344], sp                                 ; $429d: $08 $44 $03
	and  b                                           ; $42a0: $a0
	rlca                                             ; $42a1: $07
	ld   b, e                                        ; $42a2: $43
	inc  bc                                          ; $42a3: $03
	and  b                                           ; $42a4: $a0
	ld   b, $44                                      ; $42a5: $06 $44
	inc  bc                                          ; $42a7: $03
	and  b                                           ; $42a8: $a0
	dec  b                                           ; $42a9: $05
	ld   b, d                                        ; $42aa: $42
	inc  bc                                          ; $42ab: $03
	and  b                                           ; $42ac: $a0
	inc  b                                           ; $42ad: $04
	ld   b, h                                        ; $42ae: $44
	inc  bc                                          ; $42af: $03
	and  b                                           ; $42b0: $a0
	dec  b                                           ; $42b1: $05
	ld   d, e                                        ; $42b2: $53
	inc  bc                                          ; $42b3: $03
	and  b                                           ; $42b4: $a0
	inc  b                                           ; $42b5: $04
	ld   d, h                                        ; $42b6: $54
	inc  bc                                          ; $42b7: $03
	and  b                                           ; $42b8: $a0
	ld   [bc], a                                     ; $42b9: $02
	ld   h, d                                        ; $42ba: $62
	ld   bc, $01a0                                   ; $42bb: $01 $a0 $01
	ld   d, e                                        ; $42be: $53
	ld   bc, $02a0                                   ; $42bf: $01 $a0 $02
	ld   h, h                                        ; $42c2: $64
	ld   bc, $01a0                                   ; $42c3: $01 $a0 $01
	ld   d, l                                        ; $42c6: $55
	ld   bc, $ffff                                   ; $42c7: $01 $ff $ff
	nop                                              ; $42ca: $00
	ld   [bc], a                                     ; $42cb: $02
	rrca                                             ; $42cc: $0f
	nop                                              ; $42cd: $00
	and  b                                           ; $42ce: $a0
	ld   a, [bc]                                     ; $42cf: $0a
	add  hl, sp                                      ; $42d0: $39
	ld   bc, $09a0                                   ; $42d1: $01 $a0 $09
	ld   a, [hl-]                                    ; $42d4: $3a
	ld   bc, $08a0                                   ; $42d5: $01 $a0 $08
	jr   c, jr_0fc_42db                              ; $42d8: $38 $01

	and  b                                           ; $42da: $a0

jr_0fc_42db:
	rlca                                             ; $42db: $07
	add  hl, sp                                      ; $42dc: $39
	ld   bc, $0ba0                                   ; $42dd: $01 $a0 $0b
	ld   a, [hl-]                                    ; $42e0: $3a
	ld   bc, $0aa0                                   ; $42e1: $01 $a0 $0a
	jr   c, jr_0fc_42e7                              ; $42e4: $38 $01

	and  b                                           ; $42e6: $a0

jr_0fc_42e7:
	add  hl, bc                                      ; $42e7: $09
	add  hl, sp                                      ; $42e8: $39
	ld   bc, $08a0                                   ; $42e9: $01 $a0 $08
	ld   a, [hl-]                                    ; $42ec: $3a
	ld   bc, $0ca0                                   ; $42ed: $01 $a0 $0c
	dec  sp                                          ; $42f0: $3b
	ld   bc, $0ba0                                   ; $42f1: $01 $a0 $0b
	add  hl, sp                                      ; $42f4: $39
	ld   bc, $0aa0                                   ; $42f5: $01 $a0 $0a
	ld   a, [hl-]                                    ; $42f8: $3a
	ld   bc, $09a0                                   ; $42f9: $01 $a0 $09
	dec  sp                                          ; $42fc: $3b
	ld   bc, $0da0                                   ; $42fd: $01 $a0 $0d
	ld   b, b                                        ; $4300: $40
	ld   bc, $0ca0                                   ; $4301: $01 $a0 $0c
	ld   a, [hl-]                                    ; $4304: $3a
	ld   bc, $0ba0                                   ; $4305: $01 $a0 $0b
	dec  sp                                          ; $4308: $3b
	ld   bc, $0aa0                                   ; $4309: $01 $a0 $0a
	ld   b, b                                        ; $430c: $40
	ld   bc, $0ea0                                   ; $430d: $01 $a0 $0e
	ld   b, c                                        ; $4310: $41
	ld   bc, $0da0                                   ; $4311: $01 $a0 $0d
	dec  sp                                          ; $4314: $3b
	ld   bc, $0ca0                                   ; $4315: $01 $a0 $0c
	ld   b, b                                        ; $4318: $40
	ld   bc, $0ba0                                   ; $4319: $01 $a0 $0b
	ld   b, c                                        ; $431c: $41
	ld   bc, $0fa0                                   ; $431d: $01 $a0 $0f
	ld   b, d                                        ; $4320: $42
	ld   bc, $0ea0                                   ; $4321: $01 $a0 $0e
	ld   b, b                                        ; $4324: $40
	ld   bc, $0da0                                   ; $4325: $01 $a0 $0d
	ld   b, c                                        ; $4328: $41
	ld   bc, $0ca0                                   ; $4329: $01 $a0 $0c
	ld   b, d                                        ; $432c: $42
	ld   bc, $0fa0                                   ; $432d: $01 $a0 $0f
	ld   b, e                                        ; $4330: $43
	ld   bc, $0ea0                                   ; $4331: $01 $a0 $0e
	ld   b, c                                        ; $4334: $41
	ld   bc, $0da0                                   ; $4335: $01 $a0 $0d
	ld   b, d                                        ; $4338: $42
	ld   bc, $0ca0                                   ; $4339: $01 $a0 $0c
	ld   b, e                                        ; $433c: $43
	ld   bc, $0fa0                                   ; $433d: $01 $a0 $0f
	ld   b, h                                        ; $4340: $44
	ld   bc, $0ea0                                   ; $4341: $01 $a0 $0e
	ld   b, d                                        ; $4344: $42
	ld   bc, $0da0                                   ; $4345: $01 $a0 $0d
	ld   b, e                                        ; $4348: $43
	ld   bc, $0ca0                                   ; $4349: $01 $a0 $0c
	ld   b, h                                        ; $434c: $44
	ld   bc, $0fa0                                   ; $434d: $01 $a0 $0f
	ld   b, l                                        ; $4350: $45
	ld   bc, $0ea0                                   ; $4351: $01 $a0 $0e
	ld   b, e                                        ; $4354: $43
	ld   bc, $0da0                                   ; $4355: $01 $a0 $0d
	ld   b, h                                        ; $4358: $44
	ld   bc, $0ca0                                   ; $4359: $01 $a0 $0c
	ld   b, l                                        ; $435c: $45
	ld   bc, $0fa0                                   ; $435d: $01 $a0 $0f
	ld   b, [hl]                                     ; $4360: $46
	ld   bc, $0ca0                                   ; $4361: $01 $a0 $0c
	ld   b, c                                        ; $4364: $41
	ld   bc, $09a0                                   ; $4365: $01 $a0 $09
	add  hl, sp                                      ; $4368: $39
	ld   bc, $0aa0                                   ; $4369: $01 $a0 $0a
	ld   b, [hl]                                     ; $436c: $46
	ld   bc, $07a0                                   ; $436d: $01 $a0 $07
	ld   b, c                                        ; $4370: $41
	ld   bc, $04a0                                   ; $4371: $01 $a0 $04
	add  hl, sp                                      ; $4374: $39
	ld   bc, $06a0                                   ; $4375: $01 $a0 $06
	ld   b, [hl]                                     ; $4378: $46
	ld   bc, $03a0                                   ; $4379: $01 $a0 $03
	ld   b, c                                        ; $437c: $41
	ld   bc, $02a0                                   ; $437d: $01 $a0 $02
	add  hl, sp                                      ; $4380: $39
	ld   bc, $04a0                                   ; $4381: $01 $a0 $04
	ld   b, [hl]                                     ; $4384: $46
	ld   bc, $02a0                                   ; $4385: $01 $a0 $02
	ld   b, c                                        ; $4388: $41
	ld   bc, $01a0                                   ; $4389: $01 $a0 $01
	add  hl, sp                                      ; $438c: $39
	ld   bc, $ffff                                   ; $438d: $01 $ff $ff
	nop                                              ; $4390: $00
	ld   bc, $000f                                   ; $4391: $01 $0f $00
	and  b                                           ; $4394: $a0
	ld   a, [bc]                                     ; $4395: $0a
	add  hl, hl                                      ; $4396: $29
	ld   bc, $09a0                                   ; $4397: $01 $a0 $09
	ld   a, [hl+]                                    ; $439a: $2a
	ld   bc, $08a0                                   ; $439b: $01 $a0 $08
	jr   z, jr_0fc_43a1                              ; $439e: $28 $01

	and  b                                           ; $43a0: $a0

jr_0fc_43a1:
	rlca                                             ; $43a1: $07
	add  hl, hl                                      ; $43a2: $29
	ld   bc, $0ba0                                   ; $43a3: $01 $a0 $0b
	ld   a, [hl+]                                    ; $43a6: $2a
	ld   bc, $0aa0                                   ; $43a7: $01 $a0 $0a
	jr   z, jr_0fc_43ad                              ; $43aa: $28 $01

	and  b                                           ; $43ac: $a0

jr_0fc_43ad:
	add  hl, bc                                      ; $43ad: $09
	add  hl, hl                                      ; $43ae: $29
	ld   bc, $08a0                                   ; $43af: $01 $a0 $08
	ld   a, [hl+]                                    ; $43b2: $2a
	ld   bc, $0ca0                                   ; $43b3: $01 $a0 $0c
	dec  hl                                          ; $43b6: $2b
	ld   bc, $0ba0                                   ; $43b7: $01 $a0 $0b
	add  hl, hl                                      ; $43ba: $29
	ld   bc, $0aa0                                   ; $43bb: $01 $a0 $0a
	ld   a, [hl+]                                    ; $43be: $2a
	ld   bc, $09a0                                   ; $43bf: $01 $a0 $09
	dec  hl                                          ; $43c2: $2b
	ld   bc, $0da0                                   ; $43c3: $01 $a0 $0d
	jr   nc, jr_0fc_43c9                             ; $43c6: $30 $01

	and  b                                           ; $43c8: $a0

jr_0fc_43c9:
	inc  c                                           ; $43c9: $0c
	ld   a, [hl+]                                    ; $43ca: $2a
	ld   bc, $0ba0                                   ; $43cb: $01 $a0 $0b
	dec  hl                                          ; $43ce: $2b
	ld   bc, $0aa0                                   ; $43cf: $01 $a0 $0a
	jr   nc, jr_0fc_43d5                             ; $43d2: $30 $01

	and  b                                           ; $43d4: $a0

jr_0fc_43d5:
	ld   c, $31                                      ; $43d5: $0e $31
	ld   bc, $0da0                                   ; $43d7: $01 $a0 $0d
	dec  hl                                          ; $43da: $2b
	ld   bc, $0ca0                                   ; $43db: $01 $a0 $0c
	jr   nc, jr_0fc_43e1                             ; $43de: $30 $01

	and  b                                           ; $43e0: $a0

jr_0fc_43e1:
	dec  bc                                          ; $43e1: $0b
	ld   sp, $a001                                   ; $43e2: $31 $01 $a0
	rrca                                             ; $43e5: $0f
	ld   [hl-], a                                    ; $43e6: $32
	ld   bc, $0ea0                                   ; $43e7: $01 $a0 $0e
	jr   nc, jr_0fc_43ed                             ; $43ea: $30 $01

	and  b                                           ; $43ec: $a0

jr_0fc_43ed:
	dec  c                                           ; $43ed: $0d
	ld   sp, $a001                                   ; $43ee: $31 $01 $a0
	inc  c                                           ; $43f1: $0c
	ld   [hl-], a                                    ; $43f2: $32
	ld   bc, $0fa0                                   ; $43f3: $01 $a0 $0f
	inc  sp                                          ; $43f6: $33
	ld   bc, $0ea0                                   ; $43f7: $01 $a0 $0e
	ld   sp, $a001                                   ; $43fa: $31 $01 $a0
	dec  c                                           ; $43fd: $0d
	ld   [hl-], a                                    ; $43fe: $32
	ld   bc, $0ca0                                   ; $43ff: $01 $a0 $0c
	inc  sp                                          ; $4402: $33
	ld   bc, $0fa0                                   ; $4403: $01 $a0 $0f
	inc  [hl]                                        ; $4406: $34
	ld   bc, $0ea0                                   ; $4407: $01 $a0 $0e
	ld   [hl-], a                                    ; $440a: $32
	ld   bc, $0da0                                   ; $440b: $01 $a0 $0d
	inc  sp                                          ; $440e: $33
	ld   bc, $0ca0                                   ; $440f: $01 $a0 $0c
	inc  [hl]                                        ; $4412: $34
	ld   bc, $0fa0                                   ; $4413: $01 $a0 $0f
	dec  [hl]                                        ; $4416: $35
	ld   bc, $0ea0                                   ; $4417: $01 $a0 $0e
	inc  sp                                          ; $441a: $33
	ld   bc, $0da0                                   ; $441b: $01 $a0 $0d
	inc  [hl]                                        ; $441e: $34
	ld   bc, $0ca0                                   ; $441f: $01 $a0 $0c
	dec  [hl]                                        ; $4422: $35
	ld   bc, $0fa0                                   ; $4423: $01 $a0 $0f
	ld   [hl], $01                                   ; $4426: $36 $01
	and  b                                           ; $4428: $a0
	inc  c                                           ; $4429: $0c
	ld   sp, $a001                                   ; $442a: $31 $01 $a0
	add  hl, bc                                      ; $442d: $09
	add  hl, hl                                      ; $442e: $29
	ld   bc, $0aa0                                   ; $442f: $01 $a0 $0a
	ld   [hl], $01                                   ; $4432: $36 $01
	and  b                                           ; $4434: $a0
	rlca                                             ; $4435: $07
	ld   sp, $a001                                   ; $4436: $31 $01 $a0
	inc  b                                           ; $4439: $04
	add  hl, hl                                      ; $443a: $29
	ld   bc, $06a0                                   ; $443b: $01 $a0 $06
	ld   [hl], $01                                   ; $443e: $36 $01
	and  b                                           ; $4440: $a0
	inc  bc                                          ; $4441: $03
	ld   sp, $a001                                   ; $4442: $31 $01 $a0
	ld   [bc], a                                     ; $4445: $02
	add  hl, hl                                      ; $4446: $29
	ld   bc, $04a0                                   ; $4447: $01 $a0 $04
	ld   [hl], $01                                   ; $444a: $36 $01
	and  b                                           ; $444c: $a0
	ld   [bc], a                                     ; $444d: $02
	ld   sp, $a001                                   ; $444e: $31 $01 $a0
	ld   bc, $0129                                   ; $4451: $01 $29 $01
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	nop                                              ; $4456: $00
	ld   [bc], a                                     ; $4457: $02
	rrca                                             ; $4458: $0f
	nop                                              ; $4459: $00
	and  e                                           ; $445a: $a3
	ld   hl, $0aa0                                   ; $445b: $21 $a0 $0a
	scf                                              ; $445e: $37
	ld   bc, $04a0                                   ; $445f: $01 $a0 $04
	dec  sp                                          ; $4462: $3b
	ld   bc, $02a0                                   ; $4463: $01 $a0 $02
	ld   b, d                                        ; $4466: $42
	ld   bc, $0ca0                                   ; $4467: $01 $a0 $0c
	ld   b, d                                        ; $446a: $42
	ld   bc, $06a0                                   ; $446b: $01 $a0 $06
	ld   b, a                                        ; $446e: $47
	ld   bc, $03a0                                   ; $446f: $01 $a0 $03
	ld   c, e                                        ; $4472: $4b
	ld   bc, $0da0                                   ; $4473: $01 $a0 $0d
	ld   b, a                                        ; $4476: $47
	ld   bc, $06a0                                   ; $4477: $01 $a0 $06
	ld   c, e                                        ; $447a: $4b
	ld   bc, $03a0                                   ; $447b: $01 $a0 $03
	ld   d, d                                        ; $447e: $52
	ld   bc, $0fa0                                   ; $447f: $01 $a0 $0f
	ld   d, d                                        ; $4482: $52
	ld   bc, $08a0                                   ; $4483: $01 $a0 $08
	ld   d, a                                        ; $4486: $57
	ld   bc, $04a0                                   ; $4487: $01 $a0 $04
	ld   e, e                                        ; $448a: $5b
	ld   bc, $0fa0                                   ; $448b: $01 $a0 $0f
	ld   d, a                                        ; $448e: $57
	ld   bc, $08a0                                   ; $448f: $01 $a0 $08
	ld   e, e                                        ; $4492: $5b
	ld   bc, $04a0                                   ; $4493: $01 $a0 $04
	ld   h, d                                        ; $4496: $62
	ld   bc, $0fa0                                   ; $4497: $01 $a0 $0f
	ld   l, e                                        ; $449a: $6b

jr_0fc_449b:
	ld   bc, $08a0                                   ; $449b: $01 $a0 $08
	ld   h, d                                        ; $449e: $62
	ld   bc, $09a0                                   ; $449f: $01 $a0 $09
	ld   l, e                                        ; $44a2: $6b
	ld   bc, $04a0                                   ; $44a3: $01 $a0 $04
	ld   h, d                                        ; $44a6: $62
	ld   bc, $06a0                                   ; $44a7: $01 $a0 $06
	ld   l, e                                        ; $44aa: $6b
	ld   bc, $04a0                                   ; $44ab: $01 $a0 $04
	ld   h, d                                        ; $44ae: $62
	ld   bc, $03a0                                   ; $44af: $01 $a0 $03
	ld   l, e                                        ; $44b2: $6b
	ld   bc, $02a0                                   ; $44b3: $01 $a0 $02
	ld   h, d                                        ; $44b6: $62
	ld   bc, $ffff                                   ; $44b7: $01 $ff $ff
	dec  b                                           ; $44ba: $05
	nop                                              ; $44bb: $00
	add  hl, bc                                      ; $44bc: $09
	nop                                              ; $44bd: $00
	db   $fd                                         ; $44be: $fd
	di                                               ; $44bf: $f3
	and  d                                           ; $44c0: $a2
	nop                                              ; $44c1: $00
	rst  ToBoot                                         ; $44c2: $c7
	jr   nc, @-$5b                                   ; $44c3: $30 $a3

	ld   h, $a0                                      ; $44c5: $26 $a0
	add  hl, bc                                      ; $44c7: $09
	ld   [hl-], a                                    ; $44c8: $32
	inc  c                                           ; $44c9: $0c
	ld   a, [hl+]                                    ; $44ca: $2a
	inc  c                                           ; $44cb: $0c
	jr   nc, jr_0fc_44da                             ; $44cc: $30 $0c

	ld   [hl-], a                                    ; $44ce: $32
	inc  c                                           ; $44cf: $0c
	inc  [hl]                                        ; $44d0: $34
	inc  c                                           ; $44d1: $0c
	rst  ToBoot                                         ; $44d2: $c7
	ld   [hl], b                                     ; $44d3: $70
	jr   nc, @+$26                                   ; $44d4: $30 $24

	rst  ToBoot                                         ; $44d6: $c7
	jr   nc, jr_0fc_450b                             ; $44d7: $30 $32

	inc  bc                                          ; $44d9: $03

jr_0fc_44da:
	jr   nc, jr_0fc_44df                             ; $44da: $30 $03

	dec  hl                                          ; $44dc: $2b
	inc  bc                                          ; $44dd: $03
	add  hl, hl                                      ; $44de: $29

jr_0fc_44df:
	inc  bc                                          ; $44df: $03
	daa                                              ; $44e0: $27
	ld   [bc], a                                     ; $44e1: $02
	ld   h, $02                                      ; $44e2: $26 $02
	dec  hl                                          ; $44e4: $2b
	inc  bc                                          ; $44e5: $03
	add  hl, hl                                      ; $44e6: $29
	inc  bc                                          ; $44e7: $03
	daa                                              ; $44e8: $27
	inc  bc                                          ; $44e9: $03
	ld   h, $03                                      ; $44ea: $26 $03
	inc  h                                           ; $44ec: $24
	ld   [bc], a                                     ; $44ed: $02
	ld   [hl+], a                                    ; $44ee: $22
	ld   [bc], a                                     ; $44ef: $02
	jr   nz, jr_0fc_44fe                             ; $44f0: $20 $0c

	rst  ToBoot                                         ; $44f2: $c7
	ld   [hl], b                                     ; $44f3: $70
	ld   [hl+], a                                    ; $44f4: $22
	ld   h, h                                        ; $44f5: $64
	rst  ToBoot                                         ; $44f6: $c7
	jr   nc, jr_0fc_449b                             ; $44f7: $30 $a2

	ld   bc, $0434                                   ; $44f9: $01 $34 $04
	ld   [hl], $04                                   ; $44fc: $36 $04

jr_0fc_44fe:
	scf                                              ; $44fe: $37
	inc  b                                           ; $44ff: $04
	add  hl, sp                                      ; $4500: $39
	inc  b                                           ; $4501: $04
	dec  sp                                          ; $4502: $3b
	inc  b                                           ; $4503: $04
	ld   b, b                                        ; $4504: $40
	inc  b                                           ; $4505: $04
	dec  sp                                          ; $4506: $3b
	inc  b                                           ; $4507: $04
	ld   b, b                                        ; $4508: $40
	inc  b                                           ; $4509: $04
	dec  sp                                          ; $450a: $3b

jr_0fc_450b:
	inc  b                                           ; $450b: $04
	ld   b, b                                        ; $450c: $40
	inc  b                                           ; $450d: $04
	dec  sp                                          ; $450e: $3b
	inc  b                                           ; $450f: $04
	ld   b, b                                        ; $4510: $40
	inc  b                                           ; $4511: $04
	dec  sp                                          ; $4512: $3b
	inc  b                                           ; $4513: $04
	ld   b, b                                        ; $4514: $40
	inc  b                                           ; $4515: $04
	dec  sp                                          ; $4516: $3b
	inc  b                                           ; $4517: $04
	ld   b, b                                        ; $4518: $40
	inc  b                                           ; $4519: $04
	dec  sp                                          ; $451a: $3b
	inc  b                                           ; $451b: $04
	ld   b, b                                        ; $451c: $40
	inc  b                                           ; $451d: $04
	dec  sp                                          ; $451e: $3b
	inc  b                                           ; $451f: $04
	ld   b, b                                        ; $4520: $40
	inc  b                                           ; $4521: $04
	dec  sp                                          ; $4522: $3b
	inc  b                                           ; $4523: $04
	ld   b, b                                        ; $4524: $40
	inc  b                                           ; $4525: $04
	dec  sp                                          ; $4526: $3b
	inc  b                                           ; $4527: $04
	ld   b, b                                        ; $4528: $40
	inc  b                                           ; $4529: $04
	dec  sp                                          ; $452a: $3b
	inc  b                                           ; $452b: $04
	ld   b, b                                        ; $452c: $40
	inc  b                                           ; $452d: $04
	dec  sp                                          ; $452e: $3b
	inc  b                                           ; $452f: $04
	ld   b, b                                        ; $4530: $40
	inc  b                                           ; $4531: $04
	and  b                                           ; $4532: $a0
	inc  b                                           ; $4533: $04
	dec  sp                                          ; $4534: $3b
	inc  b                                           ; $4535: $04
	ld   b, b                                        ; $4536: $40
	inc  b                                           ; $4537: $04
	and  b                                           ; $4538: $a0
	add  hl, bc                                      ; $4539: $09
	dec  sp                                          ; $453a: $3b
	inc  b                                           ; $453b: $04
	ld   b, b                                        ; $453c: $40
	inc  b                                           ; $453d: $04
	ld   b, d                                        ; $453e: $42
	inc  b                                           ; $453f: $04
	ld   b, b                                        ; $4540: $40
	inc  b                                           ; $4541: $04
	dec  sp                                          ; $4542: $3b
	inc  b                                           ; $4543: $04
	scf                                              ; $4544: $37
	inc  b                                           ; $4545: $04
	add  hl, sp                                      ; $4546: $39
	db   $10                                         ; $4547: $10
	inc  [hl]                                        ; $4548: $34
	db   $10                                         ; $4549: $10
	inc  sp                                          ; $454a: $33
	db   $10                                         ; $454b: $10
	inc  [hl]                                        ; $454c: $34
	ld   [$0836], sp                                 ; $454d: $08 $36 $08
	scf                                              ; $4550: $37
	inc  b                                           ; $4551: $04
	add  hl, sp                                      ; $4552: $39
	inc  b                                           ; $4553: $04
	dec  sp                                          ; $4554: $3b
	inc  b                                           ; $4555: $04
	ld   b, b                                        ; $4556: $40
	inc  b                                           ; $4557: $04
	dec  sp                                          ; $4558: $3b
	inc  b                                           ; $4559: $04
	scf                                              ; $455a: $37
	inc  b                                           ; $455b: $04
	inc  [hl]                                        ; $455c: $34
	inc  b                                           ; $455d: $04
	jr   nc, jr_0fc_4564                             ; $455e: $30 $04

	dec  hl                                          ; $4560: $2b
	inc  b                                           ; $4561: $04
	jr   nc, jr_0fc_4568                             ; $4562: $30 $04

jr_0fc_4564:
	dec  hl                                          ; $4564: $2b
	inc  b                                           ; $4565: $04
	jr   nc, jr_0fc_456c                             ; $4566: $30 $04

jr_0fc_4568:
	dec  hl                                          ; $4568: $2b
	ld   [$04a0], sp                                 ; $4569: $08 $a0 $04

jr_0fc_456c:
	dec  hl                                          ; $456c: $2b
	ld   [$00a2], sp                                 ; $456d: $08 $a2 $00
	and  b                                           ; $4570: $a0
	add  hl, bc                                      ; $4571: $09
	inc  [hl]                                        ; $4572: $34
	inc  b                                           ; $4573: $04
	and  b                                           ; $4574: $a0
	inc  b                                           ; $4575: $04
	inc  [hl]                                        ; $4576: $34
	inc  b                                           ; $4577: $04
	and  b                                           ; $4578: $a0
	add  hl, bc                                      ; $4579: $09
	inc  [hl]                                        ; $457a: $34
	inc  b                                           ; $457b: $04
	and  b                                           ; $457c: $a0
	inc  b                                           ; $457d: $04
	inc  [hl]                                        ; $457e: $34
	inc  b                                           ; $457f: $04
	and  b                                           ; $4580: $a0
	add  hl, bc                                      ; $4581: $09
	inc  [hl]                                        ; $4582: $34
	inc  b                                           ; $4583: $04
	and  b                                           ; $4584: $a0
	inc  b                                           ; $4585: $04
	inc  [hl]                                        ; $4586: $34
	inc  b                                           ; $4587: $04
	rra                                              ; $4588: $1f
	ld   [$09a0], sp                                 ; $4589: $08 $a0 $09
	jr   nc, jr_0fc_4592                             ; $458c: $30 $04

	dec  hl                                          ; $458e: $2b
	inc  b                                           ; $458f: $04
	add  hl, hl                                      ; $4590: $29
	inc  b                                           ; $4591: $04

jr_0fc_4592:
	dec  hl                                          ; $4592: $2b
	inc  b                                           ; $4593: $04
	jr   nc, jr_0fc_459a                             ; $4594: $30 $04

	and  b                                           ; $4596: $a0
	inc  b                                           ; $4597: $04
	jr   nc, jr_0fc_459e                             ; $4598: $30 $04

jr_0fc_459a:
	and  b                                           ; $459a: $a0
	add  hl, bc                                      ; $459b: $09
	add  hl, hl                                      ; $459c: $29
	inc  b                                           ; $459d: $04

jr_0fc_459e:
	and  b                                           ; $459e: $a0
	inc  b                                           ; $459f: $04
	add  hl, hl                                      ; $45a0: $29
	inc  b                                           ; $45a1: $04
	and  b                                           ; $45a2: $a0
	add  hl, bc                                      ; $45a3: $09
	daa                                              ; $45a4: $27
	inc  b                                           ; $45a5: $04

jr_0fc_45a6:
	and  b                                           ; $45a6: $a0
	inc  b                                           ; $45a7: $04
	daa                                              ; $45a8: $27
	inc  b                                           ; $45a9: $04
	and  b                                           ; $45aa: $a0
	add  hl, bc                                      ; $45ab: $09
	daa                                              ; $45ac: $27
	inc  b                                           ; $45ad: $04

jr_0fc_45ae:
	and  b                                           ; $45ae: $a0
	inc  b                                           ; $45af: $04
	daa                                              ; $45b0: $27
	inc  b                                           ; $45b1: $04
	and  b                                           ; $45b2: $a0
	add  hl, bc                                      ; $45b3: $09
	daa                                              ; $45b4: $27
	inc  b                                           ; $45b5: $04
	and  b                                           ; $45b6: $a0
	inc  b                                           ; $45b7: $04
	daa                                              ; $45b8: $27
	inc  b                                           ; $45b9: $04
	rra                                              ; $45ba: $1f
	ld   [$09a0], sp                                 ; $45bb: $08 $a0 $09
	dec  hl                                          ; $45be: $2b
	inc  b                                           ; $45bf: $04
	add  hl, hl                                      ; $45c0: $29
	inc  b                                           ; $45c1: $04
	daa                                              ; $45c2: $27
	inc  b                                           ; $45c3: $04
	add  hl, hl                                      ; $45c4: $29
	inc  b                                           ; $45c5: $04
	dec  hl                                          ; $45c6: $2b
	inc  b                                           ; $45c7: $04
	and  b                                           ; $45c8: $a0
	inc  b                                           ; $45c9: $04
	dec  hl                                          ; $45ca: $2b
	inc  b                                           ; $45cb: $04
	and  b                                           ; $45cc: $a0
	add  hl, bc                                      ; $45cd: $09
	daa                                              ; $45ce: $27
	inc  b                                           ; $45cf: $04
	and  b                                           ; $45d0: $a0
	inc  b                                           ; $45d1: $04
	daa                                              ; $45d2: $27
	inc  b                                           ; $45d3: $04
	and  d                                           ; $45d4: $a2
	ld   bc, $70c7                                   ; $45d5: $01 $c7 $70
	and  b                                           ; $45d8: $a0
	add  hl, bc                                      ; $45d9: $09
	ld   b, b                                        ; $45da: $40
	jr   nz, jr_0fc_461f                             ; $45db: $20 $42

	jr   nz, jr_0fc_45a6                             ; $45dd: $20 $c7

	jr   nc, jr_0fc_4625                             ; $45df: $30 $44

	inc  b                                           ; $45e1: $04
	and  b                                           ; $45e2: $a0
	inc  b                                           ; $45e3: $04
	ld   b, h                                        ; $45e4: $44
	inc  b                                           ; $45e5: $04
	and  b                                           ; $45e6: $a0
	add  hl, bc                                      ; $45e7: $09
	ld   b, h                                        ; $45e8: $44
	inc  b                                           ; $45e9: $04
	ld   b, [hl]                                     ; $45ea: $46
	inc  b                                           ; $45eb: $04
	ld   b, h                                        ; $45ec: $44
	inc  b                                           ; $45ed: $04
	and  b                                           ; $45ee: $a0
	inc  b                                           ; $45ef: $04
	ld   b, h                                        ; $45f0: $44
	inc  b                                           ; $45f1: $04
	and  b                                           ; $45f2: $a0
	add  hl, bc                                      ; $45f3: $09
	ld   b, h                                        ; $45f4: $44
	inc  b                                           ; $45f5: $04
	ld   b, [hl]                                     ; $45f6: $46
	inc  b                                           ; $45f7: $04
	rst  ToBoot                                         ; $45f8: $c7

jr_0fc_45f9:
	ld   [hl], b                                     ; $45f9: $70
	ld   b, h                                        ; $45fa: $44
	inc  e                                           ; $45fb: $1c
	and  b                                           ; $45fc: $a0
	inc  b                                           ; $45fd: $04
	ld   b, h                                        ; $45fe: $44
	inc  b                                           ; $45ff: $04
	rra                                              ; $4600: $1f
	ret  nz                                          ; $4601: $c0

	rra                                              ; $4602: $1f
	ret  nz                                          ; $4603: $c0

	rra                                              ; $4604: $1f
	ld   c, b                                        ; $4605: $48
	and  d                                           ; $4606: $a2
	nop                                              ; $4607: $00
	rst  ToBoot                                         ; $4608: $c7
	jr   nc, jr_0fc_45ae                             ; $4609: $30 $a3

	inc  d                                           ; $460b: $14
	and  b                                           ; $460c: $a0
	add  hl, bc                                      ; $460d: $09
	ld   h, $02                                      ; $460e: $26 $02
	rra                                              ; $4610: $1f
	ld   [bc], a                                     ; $4611: $02
	and  b                                           ; $4612: $a0
	inc  b                                           ; $4613: $04
	ld   h, $02                                      ; $4614: $26 $02
	rra                                              ; $4616: $1f
	ld   [bc], a                                     ; $4617: $02
	and  b                                           ; $4618: $a0
	add  hl, bc                                      ; $4619: $09
	daa                                              ; $461a: $27
	ld   [$0232], sp                                 ; $461b: $08 $32 $02

jr_0fc_461e:
	rra                                              ; $461e: $1f

jr_0fc_461f:
	ld   [bc], a                                     ; $461f: $02
	and  b                                           ; $4620: $a0
	inc  b                                           ; $4621: $04
	ld   [hl-], a                                    ; $4622: $32
	ld   [bc], a                                     ; $4623: $02
	rra                                              ; $4624: $1f

jr_0fc_4625:
	ld   [bc], a                                     ; $4625: $02
	and  b                                           ; $4626: $a0
	add  hl, bc                                      ; $4627: $09
	ld   sp, $1f02                                   ; $4628: $31 $02 $1f
	ld   [bc], a                                     ; $462b: $02
	and  b                                           ; $462c: $a0
	inc  b                                           ; $462d: $04
	ld   sp, $1f02                                   ; $462e: $31 $02 $1f
	ld   b, $a0                                      ; $4631: $06 $a0
	add  hl, bc                                      ; $4633: $09
	add  hl, hl                                      ; $4634: $29
	ld   [bc], a                                     ; $4635: $02
	rra                                              ; $4636: $1f
	ld   [bc], a                                     ; $4637: $02
	and  b                                           ; $4638: $a0
	inc  b                                           ; $4639: $04
	add  hl, hl                                      ; $463a: $29
	ld   [bc], a                                     ; $463b: $02
	rra                                              ; $463c: $1f
	ld   b, $a0                                      ; $463d: $06 $a0
	add  hl, bc                                      ; $463f: $09
	inc  h                                           ; $4640: $24
	ld   [bc], a                                     ; $4641: $02
	rra                                              ; $4642: $1f
	ld   [bc], a                                     ; $4643: $02
	and  b                                           ; $4644: $a0
	inc  b                                           ; $4645: $04
	inc  h                                           ; $4646: $24
	ld   [bc], a                                     ; $4647: $02
	rra                                              ; $4648: $1f
	ld   [bc], a                                     ; $4649: $02
	and  d                                           ; $464a: $a2
	ld   bc, $70c7                                   ; $464b: $01 $c7 $70
	and  b                                           ; $464e: $a0
	add  hl, bc                                      ; $464f: $09
	inc  h                                           ; $4650: $24
	jr   nz, jr_0fc_4679                             ; $4651: $20 $26

	jr   nz, jr_0fc_467c                             ; $4653: $20 $27

	jr   nz, jr_0fc_461e                             ; $4655: $20 $c7

	jr   nc, jr_0fc_45f9                             ; $4657: $30 $a0

	inc  b                                           ; $4659: $04
	daa                                              ; $465a: $27
	ld   [$09a0], sp                                 ; $465b: $08 $a0 $09
	ld   h, $04                                      ; $465e: $26 $04
	daa                                              ; $4660: $27
	inc  b                                           ; $4661: $04
	ld   h, $04                                      ; $4662: $26 $04
	inc  h                                           ; $4664: $24
	inc  b                                           ; $4665: $04
	ld   [hl+], a                                    ; $4666: $22
	inc  b                                           ; $4667: $04
	ld   h, $04                                      ; $4668: $26 $04
	daa                                              ; $466a: $27
	db   $10                                         ; $466b: $10
	inc  h                                           ; $466c: $24
	ld   [$0830], sp                                 ; $466d: $08 $30 $08
	add  hl, hl                                      ; $4670: $29
	ld   [$042b], sp                                 ; $4671: $08 $2b $04
	add  hl, hl                                      ; $4674: $29
	inc  b                                           ; $4675: $04
	daa                                              ; $4676: $27
	inc  b                                           ; $4677: $04
	and  b                                           ; $4678: $a0

jr_0fc_4679:
	inc  b                                           ; $4679: $04

jr_0fc_467a:
	daa                                              ; $467a: $27
	inc  b                                           ; $467b: $04

jr_0fc_467c:
	and  b                                           ; $467c: $a0
	add  hl, bc                                      ; $467d: $09
	add  hl, hl                                      ; $467e: $29
	inc  b                                           ; $467f: $04
	and  b                                           ; $4680: $a0
	inc  b                                           ; $4681: $04
	add  hl, hl                                      ; $4682: $29
	inc  b                                           ; $4683: $04
	rra                                              ; $4684: $1f
	ld   [$09a0], sp                                 ; $4685: $08 $a0 $09
	ld   [hl-], a                                    ; $4688: $32
	ld   [bc], a                                     ; $4689: $02
	rra                                              ; $468a: $1f
	ld   [bc], a                                     ; $468b: $02
	and  b                                           ; $468c: $a0
	inc  b                                           ; $468d: $04
	ld   [hl-], a                                    ; $468e: $32
	inc  b                                           ; $468f: $04
	and  b                                           ; $4690: $a0
	add  hl, bc                                      ; $4691: $09
	dec  hl                                          ; $4692: $2b
	inc  b                                           ; $4693: $04
	add  hl, hl                                      ; $4694: $29
	inc  b                                           ; $4695: $04
	daa                                              ; $4696: $27
	ld   [bc], a                                     ; $4697: $02
	rra                                              ; $4698: $1f
	ld   [bc], a                                     ; $4699: $02
	and  b                                           ; $469a: $a0
	inc  b                                           ; $469b: $04
	daa                                              ; $469c: $27
	inc  b                                           ; $469d: $04
	and  b                                           ; $469e: $a0
	add  hl, bc                                      ; $469f: $09
	add  hl, hl                                      ; $46a0: $29
	inc  c                                           ; $46a1: $0c
	dec  hl                                          ; $46a2: $2b
	ld   [bc], a                                     ; $46a3: $02
	rra                                              ; $46a4: $1f
	ld   [bc], a                                     ; $46a5: $02
	and  b                                           ; $46a6: $a0
	inc  b                                           ; $46a7: $04
	dec  hl                                          ; $46a8: $2b
	inc  b                                           ; $46a9: $04
	rra                                              ; $46aa: $1f
	inc  b                                           ; $46ab: $04
	rst  ToBoot                                         ; $46ac: $c7
	ld   [hl], b                                     ; $46ad: $70
	and  b                                           ; $46ae: $a0
	add  hl, bc                                      ; $46af: $09
	daa                                              ; $46b0: $27
	jr   nz, jr_0fc_467a                             ; $46b1: $20 $c7

	jr   nc, jr_0fc_46db                             ; $46b3: $30 $26

	ld   [$0827], sp                                 ; $46b5: $08 $27 $08
	add  hl, hl                                      ; $46b8: $29
	ld   [$082b], sp                                 ; $46b9: $08 $2b $08
	ld   [hl-], a                                    ; $46bc: $32
	ld   [$70c7], sp                                 ; $46bd: $08 $c7 $70
	jr   nc, jr_0fc_46da                             ; $46c0: $30 $18

	daa                                              ; $46c2: $27
	inc  b                                           ; $46c3: $04
	ld   h, $04                                      ; $46c4: $26 $04
	inc  h                                           ; $46c6: $24
	inc  e                                           ; $46c7: $1c
	and  b                                           ; $46c8: $a0
	inc  b                                           ; $46c9: $04
	inc  h                                           ; $46ca: $24
	inc  b                                           ; $46cb: $04
	rra                                              ; $46cc: $1f
	ld   b, b                                        ; $46cd: $40
	rst  ToBoot                                         ; $46ce: $c7
	jr   nc, @-$5c                                   ; $46cf: $30 $a2

	nop                                              ; $46d1: $00
	and  b                                           ; $46d2: $a0
	add  hl, bc                                      ; $46d3: $09
	inc  h                                           ; $46d4: $24
	inc  b                                           ; $46d5: $04
	dec  de                                          ; $46d6: $1b
	inc  b                                           ; $46d7: $04
	add  hl, de                                      ; $46d8: $19
	inc  b                                           ; $46d9: $04

jr_0fc_46da:
	dec  de                                          ; $46da: $1b

jr_0fc_46db:
	inc  b                                           ; $46db: $04
	inc  d                                           ; $46dc: $14
	inc  b                                           ; $46dd: $04
	dec  de                                          ; $46de: $1b
	inc  b                                           ; $46df: $04
	add  hl, de                                      ; $46e0: $19
	inc  b                                           ; $46e1: $04
	dec  de                                          ; $46e2: $1b
	inc  b                                           ; $46e3: $04
	inc  h                                           ; $46e4: $24
	inc  b                                           ; $46e5: $04
	dec  hl                                          ; $46e6: $2b
	inc  b                                           ; $46e7: $04
	add  hl, hl                                      ; $46e8: $29
	inc  b                                           ; $46e9: $04
	dec  hl                                          ; $46ea: $2b
	inc  b                                           ; $46eb: $04
	daa                                              ; $46ec: $27
	inc  b                                           ; $46ed: $04
	ld   h, $04                                      ; $46ee: $26 $04
	ld   [hl+], a                                    ; $46f0: $22
	inc  b                                           ; $46f1: $04
	dec  de                                          ; $46f2: $1b
	inc  b                                           ; $46f3: $04
	ld   [de], a                                     ; $46f4: $12
	inc  b                                           ; $46f5: $04
	inc  d                                           ; $46f6: $14
	inc  b                                           ; $46f7: $04
	add  hl, de                                      ; $46f8: $19
	inc  b                                           ; $46f9: $04
	dec  de                                          ; $46fa: $1b
	inc  b                                           ; $46fb: $04
	ld   [hl+], a                                    ; $46fc: $22
	inc  b                                           ; $46fd: $04
	inc  h                                           ; $46fe: $24
	inc  b                                           ; $46ff: $04
	add  hl, hl                                      ; $4700: $29
	inc  b                                           ; $4701: $04
	dec  hl                                          ; $4702: $2b
	inc  b                                           ; $4703: $04
	dec  hl                                          ; $4704: $2b
	db   $10                                         ; $4705: $10
	ld   [hl-], a                                    ; $4706: $32
	db   $10                                         ; $4707: $10
	ld   [hl-], a                                    ; $4708: $32
	inc  a                                           ; $4709: $3c
	and  b                                           ; $470a: $a0
	inc  b                                           ; $470b: $04
	ld   [hl-], a                                    ; $470c: $32
	inc  b                                           ; $470d: $04
	and  b                                           ; $470e: $a0
	add  hl, bc                                      ; $470f: $09
	ld   [hl+], a                                    ; $4710: $22
	ld   [bc], a                                     ; $4711: $02
	and  b                                           ; $4712: $a0
	inc  b                                           ; $4713: $04
	ld   [hl+], a                                    ; $4714: $22
	ld   [bc], a                                     ; $4715: $02
	rra                                              ; $4716: $1f
	inc  b                                           ; $4717: $04
	and  b                                           ; $4718: $a0
	add  hl, bc                                      ; $4719: $09
	ld   [hl-], a                                    ; $471a: $32
	ld   [bc], a                                     ; $471b: $02
	and  b                                           ; $471c: $a0
	inc  b                                           ; $471d: $04
	ld   [hl-], a                                    ; $471e: $32
	ld   [bc], a                                     ; $471f: $02

jr_0fc_4720:
	rra                                              ; $4720: $1f
	inc  b                                           ; $4721: $04
	and  b                                           ; $4722: $a0
	add  hl, bc                                      ; $4723: $09
	inc  [hl]                                        ; $4724: $34
	ld   [bc], a                                     ; $4725: $02
	and  b                                           ; $4726: $a0
	inc  b                                           ; $4727: $04
	inc  [hl]                                        ; $4728: $34
	ld   [bc], a                                     ; $4729: $02
	and  b                                           ; $472a: $a0
	add  hl, bc                                      ; $472b: $09
	inc  sp                                          ; $472c: $33
	ld   [bc], a                                     ; $472d: $02
	and  b                                           ; $472e: $a0
	inc  b                                           ; $472f: $04
	inc  sp                                          ; $4730: $33
	ld   [bc], a                                     ; $4731: $02
	and  b                                           ; $4732: $a0
	add  hl, bc                                      ; $4733: $09
	ld   [hl-], a                                    ; $4734: $32
	ld   [bc], a                                     ; $4735: $02
	and  b                                           ; $4736: $a0
	inc  b                                           ; $4737: $04
	ld   [hl-], a                                    ; $4738: $32
	ld   [bc], a                                     ; $4739: $02
	rra                                              ; $473a: $1f
	inc  b                                           ; $473b: $04
	and  b                                           ; $473c: $a0
	add  hl, bc                                      ; $473d: $09
	ld   b, h                                        ; $473e: $44
	inc  b                                           ; $473f: $04
	ld   b, e                                        ; $4740: $43
	inc  b                                           ; $4741: $04
	ld   b, d                                        ; $4742: $42
	inc  b                                           ; $4743: $04
	and  b                                           ; $4744: $a0
	inc  b                                           ; $4745: $04
	ld   b, d                                        ; $4746: $42
	ld   [bc], a                                     ; $4747: $02
	rra                                              ; $4748: $1f
	ld   [bc], a                                     ; $4749: $02
	and  b                                           ; $474a: $a0
	add  hl, bc                                      ; $474b: $09
	daa                                              ; $474c: $27
	inc  b                                           ; $474d: $04
	ld   h, $04                                      ; $474e: $26 $04
	inc  h                                           ; $4750: $24
	inc  b                                           ; $4751: $04
	ld   [hl+], a                                    ; $4752: $22
	inc  b                                           ; $4753: $04
	rst  ToBoot                                         ; $4754: $c7
	ld   [hl], b                                     ; $4755: $70
	daa                                              ; $4756: $27
	jr   nz, jr_0fc_4720                             ; $4757: $20 $c7

	jr   nc, jr_0fc_4781                             ; $4759: $30 $26

	ld   [$0822], sp                                 ; $475b: $08 $22 $08
	add  hl, hl                                      ; $475e: $29
	db   $10                                         ; $475f: $10
	and  b                                           ; $4760: $a0
	inc  b                                           ; $4761: $04
	add  hl, hl                                      ; $4762: $29
	inc  b                                           ; $4763: $04
	rra                                              ; $4764: $1f
	inc  b                                           ; $4765: $04
	and  b                                           ; $4766: $a0
	add  hl, bc                                      ; $4767: $09
	ld   [hl+], a                                    ; $4768: $22
	ld   [bc], a                                     ; $4769: $02
	rra                                              ; $476a: $1f
	ld   [bc], a                                     ; $476b: $02
	and  b                                           ; $476c: $a0
	inc  b                                           ; $476d: $04
	ld   [hl+], a                                    ; $476e: $22
	inc  b                                           ; $476f: $04
	and  b                                           ; $4770: $a0
	add  hl, bc                                      ; $4771: $09
	ld   h, $04                                      ; $4772: $26 $04
	and  b                                           ; $4774: $a0
	inc  b                                           ; $4775: $04
	ld   h, $04                                      ; $4776: $26 $04
	and  b                                           ; $4778: $a0
	add  hl, bc                                      ; $4779: $09
	daa                                              ; $477a: $27
	ld   [bc], a                                     ; $477b: $02
	rra                                              ; $477c: $1f
	ld   [bc], a                                     ; $477d: $02
	and  b                                           ; $477e: $a0
	inc  b                                           ; $477f: $04
	daa                                              ; $4780: $27

jr_0fc_4781:
	inc  b                                           ; $4781: $04
	and  b                                           ; $4782: $a0
	add  hl, bc                                      ; $4783: $09
	ld   [hl-], a                                    ; $4784: $32
	db   $10                                         ; $4785: $10
	inc  sp                                          ; $4786: $33
	db   $10                                         ; $4787: $10
	inc  [hl]                                        ; $4788: $34
	inc  c                                           ; $4789: $0c
	inc  [hl]                                        ; $478a: $34
	ld   [bc], a                                     ; $478b: $02
	and  b                                           ; $478c: $a0
	inc  b                                           ; $478d: $04
	inc  [hl]                                        ; $478e: $34
	inc  b                                           ; $478f: $04
	rra                                              ; $4790: $1f
	ld   b, $a0                                      ; $4791: $06 $a0
	add  hl, bc                                      ; $4793: $09
	inc  [hl]                                        ; $4794: $34
	ld   [bc], a                                     ; $4795: $02
	and  b                                           ; $4796: $a0
	inc  b                                           ; $4797: $04
	inc  [hl]                                        ; $4798: $34
	ld   [bc], a                                     ; $4799: $02
	and  b                                           ; $479a: $a0
	add  hl, bc                                      ; $479b: $09
	inc  [hl]                                        ; $479c: $34
	ld   [bc], a                                     ; $479d: $02
	and  b                                           ; $479e: $a0
	inc  b                                           ; $479f: $04
	inc  [hl]                                        ; $47a0: $34
	ld   [bc], a                                     ; $47a1: $02
	and  b                                           ; $47a2: $a0
	add  hl, bc                                      ; $47a3: $09
	inc  [hl]                                        ; $47a4: $34
	ld   [bc], a                                     ; $47a5: $02
	and  b                                           ; $47a6: $a0
	inc  b                                           ; $47a7: $04
	inc  [hl]                                        ; $47a8: $34
	ld   [bc], a                                     ; $47a9: $02
	and  b                                           ; $47aa: $a0
	add  hl, bc                                      ; $47ab: $09
	inc  [hl]                                        ; $47ac: $34
	ld   [bc], a                                     ; $47ad: $02
	and  b                                           ; $47ae: $a0
	inc  b                                           ; $47af: $04
	inc  [hl]                                        ; $47b0: $34
	inc  b                                           ; $47b1: $04
	rra                                              ; $47b2: $1f
	ld   e, $a0                                      ; $47b3: $1e $a0
	add  hl, bc                                      ; $47b5: $09

jr_0fc_47b6:
	ld   d, $02                                      ; $47b6: $16 $02
	and  b                                           ; $47b8: $a0
	inc  b                                           ; $47b9: $04
	ld   d, $04                                      ; $47ba: $16 $04
	rra                                              ; $47bc: $1f
	ld   [bc], a                                     ; $47bd: $02
	and  b                                           ; $47be: $a0
	add  hl, bc                                      ; $47bf: $09
	add  hl, de                                      ; $47c0: $19
	ld   [$021b], sp                                 ; $47c1: $08 $1b $02
	and  b                                           ; $47c4: $a0
	inc  b                                           ; $47c5: $04
	dec  de                                          ; $47c6: $1b
	inc  b                                           ; $47c7: $04
	rra                                              ; $47c8: $1f
	ld   [bc], a                                     ; $47c9: $02
	and  b                                           ; $47ca: $a0
	add  hl, bc                                      ; $47cb: $09
	ld   [hl+], a                                    ; $47cc: $22
	ld   [$0224], sp                                 ; $47cd: $08 $24 $02
	and  b                                           ; $47d0: $a0
	inc  b                                           ; $47d1: $04
	inc  h                                           ; $47d2: $24
	inc  b                                           ; $47d3: $04
	rra                                              ; $47d4: $1f
	ld   [bc], a                                     ; $47d5: $02
	and  b                                           ; $47d6: $a0
	add  hl, bc                                      ; $47d7: $09
	ld   h, $08                                      ; $47d8: $26 $08
	add  hl, hl                                      ; $47da: $29
	ld   [bc], a                                     ; $47db: $02
	and  b                                           ; $47dc: $a0
	inc  b                                           ; $47dd: $04
	add  hl, hl                                      ; $47de: $29
	inc  b                                           ; $47df: $04
	rra                                              ; $47e0: $1f
	ld   [bc], a                                     ; $47e1: $02
	and  b                                           ; $47e2: $a0
	add  hl, bc                                      ; $47e3: $09
	jr   nc, jr_0fc_47f2                             ; $47e4: $30 $0c

	jr   nc, jr_0fc_47ea                             ; $47e6: $30 $02

	and  b                                           ; $47e8: $a0
	inc  b                                           ; $47e9: $04

jr_0fc_47ea:
	jr   nc, jr_0fc_47f0                             ; $47ea: $30 $04

	rra                                              ; $47ec: $1f
	ld   c, $a0                                      ; $47ed: $0e $a0
	add  hl, bc                                      ; $47ef: $09

jr_0fc_47f0:
	ld   [hl-], a                                    ; $47f0: $32
	inc  c                                           ; $47f1: $0c

jr_0fc_47f2:
	ld   [hl-], a                                    ; $47f2: $32
	ld   [bc], a                                     ; $47f3: $02
	and  b                                           ; $47f4: $a0
	inc  b                                           ; $47f5: $04
	ld   [hl-], a                                    ; $47f6: $32
	inc  b                                           ; $47f7: $04
	rra                                              ; $47f8: $1f
	ld   c, $c7                                      ; $47f9: $0e $c7
	ld   [hl], b                                     ; $47fb: $70
	and  b                                           ; $47fc: $a0
	add  hl, bc                                      ; $47fd: $09
	dec  hl                                          ; $47fe: $2b
	inc  [hl]                                        ; $47ff: $34
	and  b                                           ; $4800: $a0
	inc  b                                           ; $4801: $04
	dec  hl                                          ; $4802: $2b
	inc  c                                           ; $4803: $0c
	or   b                                           ; $4804: $b0
	di                                               ; $4805: $f3
	rst  $38                                         ; $4806: $ff
	rst  $38                                         ; $4807: $ff
	dec  b                                           ; $4808: $05
	nop                                              ; $4809: $00
	add  hl, bc                                      ; $480a: $09
	nop                                              ; $480b: $00
	db   $fd                                         ; $480c: $fd
	di                                               ; $480d: $f3
	and  d                                           ; $480e: $a2
	nop                                              ; $480f: $00
	rst  ToBoot                                         ; $4810: $c7
	jr   nc, jr_0fc_47b6                             ; $4811: $30 $a3

	ld   h, $a0                                      ; $4813: $26 $a0
	dec  c                                           ; $4815: $0d
	dec  sp                                          ; $4816: $3b
	inc  c                                           ; $4817: $0c
	scf                                              ; $4818: $37
	inc  c                                           ; $4819: $0c
	add  hl, sp                                      ; $481a: $39
	inc  c                                           ; $481b: $0c
	dec  sp                                          ; $481c: $3b
	inc  c                                           ; $481d: $0c
	ld   b, c                                        ; $481e: $41
	inc  c                                           ; $481f: $0c
	add  hl, sp                                      ; $4820: $39
	inc  d                                           ; $4821: $14
	and  e                                           ; $4822: $a3
	ld   [hl+], a                                    ; $4823: $22
	add  hl, sp                                      ; $4824: $39
	inc  bc                                          ; $4825: $03
	scf                                              ; $4826: $37
	inc  bc                                          ; $4827: $03
	dec  [hl]                                        ; $4828: $35
	inc  bc                                          ; $4829: $03
	inc  [hl]                                        ; $482a: $34
	inc  bc                                          ; $482b: $03
	ld   [hl-], a                                    ; $482c: $32
	ld   [bc], a                                     ; $482d: $02
	jr   nc, jr_0fc_4832                             ; $482e: $30 $02

	dec  [hl]                                        ; $4830: $35
	inc  bc                                          ; $4831: $03

jr_0fc_4832:
	inc  [hl]                                        ; $4832: $34
	inc  bc                                          ; $4833: $03
	ld   [hl-], a                                    ; $4834: $32
	inc  bc                                          ; $4835: $03
	jr   nc, jr_0fc_483b                             ; $4836: $30 $03

	dec  hl                                          ; $4838: $2b
	ld   [bc], a                                     ; $4839: $02
	add  hl, hl                                      ; $483a: $29

jr_0fc_483b:
	ld   [bc], a                                     ; $483b: $02
	ld   [hl-], a                                    ; $483c: $32
	inc  bc                                          ; $483d: $03
	jr   nc, jr_0fc_4843                             ; $483e: $30 $03

	dec  hl                                          ; $4840: $2b
	inc  bc                                          ; $4841: $03
	add  hl, hl                                      ; $4842: $29

jr_0fc_4843:
	inc  bc                                          ; $4843: $03
	daa                                              ; $4844: $27
	ld   [bc], a                                     ; $4845: $02
	ld   h, $02                                      ; $4846: $26 $02
	and  e                                           ; $4848: $a3
	jr   z, jr_0fc_4870                              ; $4849: $28 $25

	inc  c                                           ; $484b: $0c
	daa                                              ; $484c: $27
	inc  e                                           ; $484d: $1c
	and  d                                           ; $484e: $a2
	ld   bc, $26a3                                   ; $484f: $01 $a3 $26
	ld   [hl-], a                                    ; $4852: $32
	ld   [$0829], sp                                 ; $4853: $08 $29 $08
	dec  hl                                          ; $4856: $2b
	ld   [$40c7], sp                                 ; $4857: $08 $c7 $40
	and  e                                           ; $485a: $a3
	jr   z, jr_0fc_4891                              ; $485b: $28 $34

	db   $10                                         ; $485d: $10
	add  hl, sp                                      ; $485e: $39
	db   $10                                         ; $485f: $10
	ld   b, d                                        ; $4860: $42
	db   $10                                         ; $4861: $10
	ld   b, a                                        ; $4862: $47
	db   $10                                         ; $4863: $10
	and  d                                           ; $4864: $a2
	nop                                              ; $4865: $00
	and  e                                           ; $4866: $a3
	ld   h, $a0                                      ; $4867: $26 $a0
	ld   c, $2b                                      ; $4869: $0e $2b
	ld   c, $a0                                      ; $486b: $0e $a0
	ld   [$022b], sp                                 ; $486d: $08 $2b $02

jr_0fc_4870:
	and  b                                           ; $4870: $a0
	ld   c, $2b                                      ; $4871: $0e $2b
	ld   [bc], a                                     ; $4873: $02
	and  b                                           ; $4874: $a0
	ld   [$042b], sp                                 ; $4875: $08 $2b $04
	rra                                              ; $4878: $1f
	ld   [bc], a                                     ; $4879: $02
	and  b                                           ; $487a: $a0
	ld   c, $34                                      ; $487b: $0e $34
	ld   [bc], a                                     ; $487d: $02
	and  b                                           ; $487e: $a0
	ld   [$0434], sp                                 ; $487f: $08 $34 $04
	rra                                              ; $4882: $1f
	ld   [bc], a                                     ; $4883: $02
	and  b                                           ; $4884: $a0
	ld   c, $2b                                      ; $4885: $0e $2b
	inc  c                                           ; $4887: $0c
	dec  hl                                          ; $4888: $2b
	ld   [bc], a                                     ; $4889: $02
	and  b                                           ; $488a: $a0
	ld   [$022b], sp                                 ; $488b: $08 $2b $02
	and  b                                           ; $488e: $a0
	ld   c, $2b                                      ; $488f: $0e $2b

jr_0fc_4891:
	ld   [bc], a                                     ; $4891: $02
	and  b                                           ; $4892: $a0
	ld   [$042b], sp                                 ; $4893: $08 $2b $04
	rra                                              ; $4896: $1f
	ld   [bc], a                                     ; $4897: $02
	and  b                                           ; $4898: $a0
	ld   c, $34                                      ; $4899: $0e $34
	ld   [bc], a                                     ; $489b: $02
	and  b                                           ; $489c: $a0
	ld   [$0434], sp                                 ; $489d: $08 $34 $04
	rra                                              ; $48a0: $1f
	ld   [bc], a                                     ; $48a1: $02
	and  b                                           ; $48a2: $a0
	ld   c, $2b                                      ; $48a3: $0e $2b
	inc  b                                           ; $48a5: $04
	and  b                                           ; $48a6: $a0
	ld   [$042b], sp                                 ; $48a7: $08 $2b $04
	and  b                                           ; $48aa: $a0
	ld   c, $29                                      ; $48ab: $0e $29
	ld   [bc], a                                     ; $48ad: $02
	rra                                              ; $48ae: $1f
	ld   [bc], a                                     ; $48af: $02
	and  b                                           ; $48b0: $a0
	ld   [$0229], sp                                 ; $48b1: $08 $29 $02
	rra                                              ; $48b4: $1f
	ld   [bc], a                                     ; $48b5: $02
	and  b                                           ; $48b6: $a0
	ld   c, $27                                      ; $48b7: $0e $27
	inc  b                                           ; $48b9: $04
	and  b                                           ; $48ba: $a0
	ld   [$0427], sp                                 ; $48bb: $08 $27 $04
	and  b                                           ; $48be: $a0
	ld   c, $29                                      ; $48bf: $0e $29
	ld   [bc], a                                     ; $48c1: $02
	rra                                              ; $48c2: $1f
	ld   [bc], a                                     ; $48c3: $02
	and  b                                           ; $48c4: $a0
	ld   [$0229], sp                                 ; $48c5: $08 $29 $02
	rra                                              ; $48c8: $1f
	ld   [bc], a                                     ; $48c9: $02
	and  b                                           ; $48ca: $a0
	ld   c, $2b                                      ; $48cb: $0e $2b
	jr   @-$5e                                       ; $48cd: $18 $a0

	ld   [$082b], sp                                 ; $48cf: $08 $2b $08
	and  b                                           ; $48d2: $a0
	ld   c, $30                                      ; $48d3: $0e $30
	ld   c, $a0                                      ; $48d5: $0e $a0
	ld   [$0230], sp                                 ; $48d7: $08 $30 $02
	and  b                                           ; $48da: $a0
	ld   c, $30                                      ; $48db: $0e $30
	inc  b                                           ; $48dd: $04
	and  b                                           ; $48de: $a0
	ld   [$0430], sp                                 ; $48df: $08 $30 $04
	and  b                                           ; $48e2: $a0
	ld   c, $34                                      ; $48e3: $0e $34
	ld   [bc], a                                     ; $48e5: $02
	rra                                              ; $48e6: $1f
	ld   [bc], a                                     ; $48e7: $02
	and  b                                           ; $48e8: $a0
	ld   [$0234], sp                                 ; $48e9: $08 $34 $02
	rra                                              ; $48ec: $1f
	ld   [bc], a                                     ; $48ed: $02
	and  b                                           ; $48ee: $a0
	ld   c, $33                                      ; $48ef: $0e $33
	ld   b, $a0                                      ; $48f1: $06 $a0
	ld   [$0233], sp                                 ; $48f3: $08 $33 $02
	and  b                                           ; $48f6: $a0
	ld   c, $2b                                      ; $48f7: $0e $2b
	ld   [bc], a                                     ; $48f9: $02
	and  b                                           ; $48fa: $a0
	ld   [$022b], sp                                 ; $48fb: $08 $2b $02
	and  b                                           ; $48fe: $a0
	ld   c, $33                                      ; $48ff: $0e $33
	ld   [bc], a                                     ; $4901: $02
	and  b                                           ; $4902: $a0
	ld   [$0233], sp                                 ; $4903: $08 $33 $02
	and  b                                           ; $4906: $a0
	ld   c, $2b                                      ; $4907: $0e $2b
	ld   [bc], a                                     ; $4909: $02
	rra                                              ; $490a: $1f
	ld   [bc], a                                     ; $490b: $02
	and  b                                           ; $490c: $a0
	ld   [$022b], sp                                 ; $490d: $08 $2b $02
	rra                                              ; $4910: $1f
	ld   [bc], a                                     ; $4911: $02
	and  b                                           ; $4912: $a0
	ld   c, $29                                      ; $4913: $0e $29
	ld   [bc], a                                     ; $4915: $02
	rra                                              ; $4916: $1f
	ld   [bc], a                                     ; $4917: $02
	and  b                                           ; $4918: $a0
	ld   [$0229], sp                                 ; $4919: $08 $29 $02
	rra                                              ; $491c: $1f
	ld   [bc], a                                     ; $491d: $02
	and  b                                           ; $491e: $a0
	ld   c, $27                                      ; $491f: $0e $27
	inc  b                                           ; $4921: $04
	and  b                                           ; $4922: $a0
	ld   [$0427], sp                                 ; $4923: $08 $27 $04
	and  b                                           ; $4926: $a0
	ld   c, $26                                      ; $4927: $0e $26
	ld   [bc], a                                     ; $4929: $02
	rra                                              ; $492a: $1f
	ld   [bc], a                                     ; $492b: $02
	and  b                                           ; $492c: $a0
	ld   [$0226], sp                                 ; $492d: $08 $26 $02
	rra                                              ; $4930: $1f
	ld   [bc], a                                     ; $4931: $02
	and  b                                           ; $4932: $a0
	ld   c, $27                                      ; $4933: $0e $27
	inc  b                                           ; $4935: $04
	and  b                                           ; $4936: $a0
	ld   [$0427], sp                                 ; $4937: $08 $27 $04
	and  b                                           ; $493a: $a0
	ld   c, $29                                      ; $493b: $0e $29
	ld   [bc], a                                     ; $493d: $02
	rra                                              ; $493e: $1f
	ld   [bc], a                                     ; $493f: $02
	and  b                                           ; $4940: $a0
	ld   [$0229], sp                                 ; $4941: $08 $29 $02
	rra                                              ; $4944: $1f
	ld   [bc], a                                     ; $4945: $02
	and  b                                           ; $4946: $a0
	ld   c, $2b                                      ; $4947: $0e $2b
	inc  e                                           ; $4949: $1c
	and  b                                           ; $494a: $a0
	ld   [$042b], sp                                 ; $494b: $08 $2b $04
	and  b                                           ; $494e: $a0
	dec  c                                           ; $494f: $0d
	ld   b, b                                        ; $4950: $40
	inc  b                                           ; $4951: $04
	and  b                                           ; $4952: $a0
	ld   [$0440], sp                                 ; $4953: $08 $40 $04
	and  b                                           ; $4956: $a0
	dec  c                                           ; $4957: $0d
	ld   b, b                                        ; $4958: $40
	inc  b                                           ; $4959: $04
	and  b                                           ; $495a: $a0
	ld   [$0440], sp                                 ; $495b: $08 $40 $04
	and  b                                           ; $495e: $a0
	dec  c                                           ; $495f: $0d
	ld   b, b                                        ; $4960: $40
	inc  b                                           ; $4961: $04
	and  b                                           ; $4962: $a0
	ld   [$0440], sp                                 ; $4963: $08 $40 $04
	rra                                              ; $4966: $1f
	ld   [$0da0], sp                                 ; $4967: $08 $a0 $0d
	ld   b, b                                        ; $496a: $40
	inc  b                                           ; $496b: $04
	dec  sp                                          ; $496c: $3b
	inc  b                                           ; $496d: $04
	add  hl, sp                                      ; $496e: $39
	inc  b                                           ; $496f: $04
	dec  sp                                          ; $4970: $3b
	inc  b                                           ; $4971: $04
	ld   b, b                                        ; $4972: $40
	inc  b                                           ; $4973: $04
	and  b                                           ; $4974: $a0
	ld   [$0440], sp                                 ; $4975: $08 $40 $04
	and  b                                           ; $4978: $a0
	dec  c                                           ; $4979: $0d
	add  hl, sp                                      ; $497a: $39
	inc  b                                           ; $497b: $04
	and  b                                           ; $497c: $a0
	ld   [$0439], sp                                 ; $497d: $08 $39 $04
	and  b                                           ; $4980: $a0
	dec  c                                           ; $4981: $0d
	dec  sp                                          ; $4982: $3b
	inc  b                                           ; $4983: $04
	and  b                                           ; $4984: $a0
	ld   [$043b], sp                                 ; $4985: $08 $3b $04
	and  b                                           ; $4988: $a0
	dec  c                                           ; $4989: $0d
	dec  sp                                          ; $498a: $3b
	inc  b                                           ; $498b: $04
	and  b                                           ; $498c: $a0
	ld   [$043b], sp                                 ; $498d: $08 $3b $04
	and  b                                           ; $4990: $a0
	dec  c                                           ; $4991: $0d
	dec  sp                                          ; $4992: $3b
	inc  b                                           ; $4993: $04
	and  b                                           ; $4994: $a0
	ld   [$043b], sp                                 ; $4995: $08 $3b $04
	rra                                              ; $4998: $1f
	ld   [$0da0], sp                                 ; $4999: $08 $a0 $0d
	dec  sp                                          ; $499c: $3b
	inc  b                                           ; $499d: $04
	add  hl, sp                                      ; $499e: $39
	inc  b                                           ; $499f: $04
	scf                                              ; $49a0: $37
	inc  b                                           ; $49a1: $04
	add  hl, sp                                      ; $49a2: $39
	inc  b                                           ; $49a3: $04
	dec  sp                                          ; $49a4: $3b
	inc  b                                           ; $49a5: $04
	and  b                                           ; $49a6: $a0
	ld   [$043b], sp                                 ; $49a7: $08 $3b $04
	and  b                                           ; $49aa: $a0
	dec  c                                           ; $49ab: $0d
	scf                                              ; $49ac: $37
	inc  b                                           ; $49ad: $04
	and  b                                           ; $49ae: $a0
	ld   [$0437], sp                                 ; $49af: $08 $37 $04
	and  b                                           ; $49b2: $a0
	ld   c, $24                                      ; $49b3: $0e $24
	ld   b, $a0                                      ; $49b5: $06 $a0
	ld   [$0424], sp                                 ; $49b7: $08 $24 $04
	rra                                              ; $49ba: $1f
	ld   [bc], a                                     ; $49bb: $02
	and  b                                           ; $49bc: $a0
	ld   c, $24                                      ; $49bd: $0e $24
	ld   [bc], a                                     ; $49bf: $02
	and  b                                           ; $49c0: $a0
	ld   [$0224], sp                                 ; $49c1: $08 $24 $02
	and  b                                           ; $49c4: $a0
	ld   c, $26                                      ; $49c5: $0e $26
	ld   [bc], a                                     ; $49c7: $02
	rra                                              ; $49c8: $1f
	ld   [bc], a                                     ; $49c9: $02
	and  b                                           ; $49ca: $a0
	ld   [$0426], sp                                 ; $49cb: $08 $26 $04
	and  b                                           ; $49ce: $a0
	ld   c, $27                                      ; $49cf: $0e $27
	ld   [bc], a                                     ; $49d1: $02
	rra                                              ; $49d2: $1f
	ld   [bc], a                                     ; $49d3: $02
	and  b                                           ; $49d4: $a0
	ld   [$0427], sp                                 ; $49d5: $08 $27 $04
	and  b                                           ; $49d8: $a0
	ld   c, $29                                      ; $49d9: $0e $29
	ld   [bc], a                                     ; $49db: $02
	rra                                              ; $49dc: $1f
	ld   [bc], a                                     ; $49dd: $02
	and  b                                           ; $49de: $a0
	ld   [$0429], sp                                 ; $49df: $08 $29 $04
	and  b                                           ; $49e2: $a0
	ld   c, $2b                                      ; $49e3: $0e $2b
	ld   [bc], a                                     ; $49e5: $02
	rra                                              ; $49e6: $1f
	ld   [bc], a                                     ; $49e7: $02
	and  b                                           ; $49e8: $a0
	ld   [$042b], sp                                 ; $49e9: $08 $2b $04
	and  b                                           ; $49ec: $a0
	ld   c, $30                                      ; $49ed: $0e $30
	ld   [bc], a                                     ; $49ef: $02
	rra                                              ; $49f0: $1f
	ld   [bc], a                                     ; $49f1: $02
	and  b                                           ; $49f2: $a0
	ld   [$0430], sp                                 ; $49f3: $08 $30 $04
	and  b                                           ; $49f6: $a0
	ld   c, $32                                      ; $49f7: $0e $32
	ld   [bc], a                                     ; $49f9: $02
	rra                                              ; $49fa: $1f
	ld   [bc], a                                     ; $49fb: $02
	and  b                                           ; $49fc: $a0
	ld   [$0432], sp                                 ; $49fd: $08 $32 $04
	and  b                                           ; $4a00: $a0
	ld   c, $34                                      ; $4a01: $0e $34
	ld   [bc], a                                     ; $4a03: $02
	rra                                              ; $4a04: $1f
	ld   [bc], a                                     ; $4a05: $02
	and  b                                           ; $4a06: $a0
	ld   [$0434], sp                                 ; $4a07: $08 $34 $04
	and  b                                           ; $4a0a: $a0
	ld   c, $34                                      ; $4a0b: $0e $34
	ld   [bc], a                                     ; $4a0d: $02
	and  b                                           ; $4a0e: $a0
	ld   [$0234], sp                                 ; $4a0f: $08 $34 $02
	and  b                                           ; $4a12: $a0
	ld   c, $36                                      ; $4a13: $0e $36
	ld   [bc], a                                     ; $4a15: $02
	and  b                                           ; $4a16: $a0
	ld   [$0236], sp                                 ; $4a17: $08 $36 $02
	and  b                                           ; $4a1a: $a0
	ld   c, $34                                      ; $4a1b: $0e $34
	ld   [bc], a                                     ; $4a1d: $02
	rra                                              ; $4a1e: $1f
	ld   [bc], a                                     ; $4a1f: $02
	and  b                                           ; $4a20: $a0
	ld   [$0434], sp                                 ; $4a21: $08 $34 $04
	and  b                                           ; $4a24: $a0
	ld   c, $34                                      ; $4a25: $0e $34
	ld   [bc], a                                     ; $4a27: $02
	and  b                                           ; $4a28: $a0
	ld   [$0234], sp                                 ; $4a29: $08 $34 $02
	and  b                                           ; $4a2c: $a0
	ld   c, $36                                      ; $4a2d: $0e $36
	ld   [bc], a                                     ; $4a2f: $02

jr_0fc_4a30:
	and  b                                           ; $4a30: $a0
	ld   [$0236], sp                                 ; $4a31: $08 $36 $02
	and  b                                           ; $4a34: $a0
	ld   c, $34                                      ; $4a35: $0e $34
	ld   e, $a0                                      ; $4a37: $1e $a0

jr_0fc_4a39:
	ld   [$0234], sp                                 ; $4a39: $08 $34 $02
	and  d                                           ; $4a3c: $a2
	ld   bc, $01ac                                   ; $4a3d: $01 $ac $01
	ld   a, $03                                      ; $4a40: $3e $03
	rst  ToBoot                                         ; $4a42: $c7
	ld   b, b                                        ; $4a43: $40
	ld   [hl-], a                                    ; $4a44: $32
	db   $10                                         ; $4a45: $10
	rst  ToBoot                                         ; $4a46: $c7
	jr   nz, jr_0fc_4a79                             ; $4a47: $20 $30

	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $4a49: $08 $32 $08
	rst  ToBoot                                         ; $4a4c: $c7
	ld   b, b                                        ; $4a4d: $40
	dec  hl                                          ; $4a4e: $2b
	jr   nz, jr_0fc_4a70                             ; $4a4f: $20 $1f

	jr   nz, @+$2d                                   ; $4a51: $20 $2b

	inc  c                                           ; $4a53: $0c
	rst  ToBoot                                         ; $4a54: $c7
	jr   nz, @+$2d                                   ; $4a55: $20 $2b

	inc  b                                           ; $4a57: $04
	dec  hl                                          ; $4a58: $2b
	ld   [$0829], sp                                 ; $4a59: $08 $29 $08
	dec  hl                                          ; $4a5c: $2b
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $4a5d: $08 $32 $08
	inc  [hl]                                        ; $4a60: $34
	ld   [$083b], sp                                 ; $4a61: $08 $3b $08
	rst  ToBoot                                         ; $4a64: $c7
	ld   b, b                                        ; $4a65: $40
	add  hl, sp                                      ; $4a66: $39
	jr   jr_0fc_4a30                                 ; $4a67: $18 $c7

	jr   nz, @+$3d                                   ; $4a69: $20 $3b

	inc  b                                           ; $4a6b: $04
	add  hl, sp                                      ; $4a6c: $39
	inc  b                                           ; $4a6d: $04
	rst  ToBoot                                         ; $4a6e: $c7
	ld   b, b                                        ; $4a6f: $40

jr_0fc_4a70:
	scf                                              ; $4a70: $37
	jr   @-$37                                       ; $4a71: $18 $c7

	jr   nz, @+$38                                   ; $4a73: $20 $36

	inc  b                                           ; $4a75: $04
	scf                                              ; $4a76: $37

jr_0fc_4a77:
	inc  b                                           ; $4a77: $04
	add  hl, sp                                      ; $4a78: $39

jr_0fc_4a79:
	ld   [$0839], sp                                 ; $4a79: $08 $39 $08

jr_0fc_4a7c:
	add  hl, sp                                      ; $4a7c: $39
	ld   [$0839], sp                                 ; $4a7d: $08 $39 $08
	add  hl, sp                                      ; $4a80: $39
	ld   [$0837], sp                                 ; $4a81: $08 $37 $08
	rst  ToBoot                                         ; $4a84: $c7
	ld   b, b                                        ; $4a85: $40

jr_0fc_4a86:
	ld   [hl], $10                                   ; $4a86: $36 $10
	inc  [hl]                                        ; $4a88: $34
	jr   nz, @+$21                                   ; $4a89: $20 $1f

	jr   nz, jr_0fc_4a39                             ; $4a8b: $20 $ac

	ld   bc, $033e                                   ; $4a8d: $01 $3e $03
	ld   [hl-], a                                    ; $4a90: $32
	ld   [$0434], sp                                 ; $4a91: $08 $34 $04
	ld   [hl-], a                                    ; $4a94: $32
	inc  b                                           ; $4a95: $04
	jr   nc, @+$0a                                   ; $4a96: $30 $08

	ld   [hl-], a                                    ; $4a98: $32
	ld   [$40c7], sp                                 ; $4a99: $08 $c7 $40
	dec  hl                                          ; $4a9c: $2b
	jr   nz, @+$21                                   ; $4a9d: $20 $1f

	jr   nz, jr_0fc_4acc                             ; $4a9f: $20 $2b

	db   $10                                         ; $4aa1: $10
	rst  ToBoot                                         ; $4aa2: $c7
	jr   nz, jr_0fc_4ad0                             ; $4aa3: $20 $2b

	ld   [$0829], sp                                 ; $4aa5: $08 $29 $08
	dec  hl                                          ; $4aa8: $2b
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $4aa9: $08 $32 $08
	inc  [hl]                                        ; $4aac: $34
	ld   [$083b], sp                                 ; $4aad: $08 $3b $08
	rst  ToBoot                                         ; $4ab0: $c7
	ld   b, b                                        ; $4ab1: $40
	add  hl, sp                                      ; $4ab2: $39
	jr   jr_0fc_4a7c                                 ; $4ab3: $18 $c7

	jr   nz, jr_0fc_4af2                             ; $4ab5: $20 $3b

	inc  b                                           ; $4ab7: $04
	add  hl, sp                                      ; $4ab8: $39
	inc  b                                           ; $4ab9: $04
	rst  ToBoot                                         ; $4aba: $c7
	ld   b, b                                        ; $4abb: $40
	scf                                              ; $4abc: $37
	jr   jr_0fc_4a86                                 ; $4abd: $18 $c7

	jr   nz, jr_0fc_4af8                             ; $4abf: $20 $37

	ld   [$0839], sp                                 ; $4ac1: $08 $39 $08
	add  hl, sp                                      ; $4ac4: $39
	ld   [$0839], sp                                 ; $4ac5: $08 $39 $08

jr_0fc_4ac8:
	add  hl, sp                                      ; $4ac8: $39
	ld   [$0839], sp                                 ; $4ac9: $08 $39 $08

jr_0fc_4acc:
	scf                                              ; $4acc: $37
	ld   [$40c7], sp                                 ; $4acd: $08 $c7 $40

jr_0fc_4ad0:
	ld   [hl], $10                                   ; $4ad0: $36 $10
	inc  [hl]                                        ; $4ad2: $34
	jr   nz, jr_0fc_4a77                             ; $4ad3: $20 $a2

	nop                                              ; $4ad5: $00
	rst  ToBoot                                         ; $4ad6: $c7
	db   $10                                         ; $4ad7: $10
	xor  h                                           ; $4ad8: $ac
	ld   bc, $036c                                   ; $4ad9: $01 $6c $03
	and  d                                           ; $4adc: $a2
	ld   bc, $0ea0                                   ; $4add: $01 $a0 $0e
	rst  ToBoot                                         ; $4ae0: $c7
	jr   nc, @+$39                                   ; $4ae1: $30 $37

	db   $10                                         ; $4ae3: $10
	add  hl, sp                                      ; $4ae4: $39
	db   $10                                         ; $4ae5: $10
	rst  ToBoot                                         ; $4ae6: $c7
	ld   b, b                                        ; $4ae7: $40
	and  b                                           ; $4ae8: $a0

jr_0fc_4ae9:
	ld   c, $3b                                      ; $4ae9: $0e $3b
	jr   nz, @-$37                                   ; $4aeb: $20 $c7

	jr   nz, @+$3d                                   ; $4aed: $20 $3b

	ld   [$083b], sp                                 ; $4aef: $08 $3b $08

jr_0fc_4af2:
	add  hl, sp                                      ; $4af2: $39
	ld   [$0837], sp                                 ; $4af3: $08 $37 $08
	rst  ToBoot                                         ; $4af6: $c7
	ld   b, b                                        ; $4af7: $40

jr_0fc_4af8:
	add  hl, sp                                      ; $4af8: $39
	jr   nz, @+$3b                                   ; $4af9: $20 $39

	db   $10                                         ; $4afb: $10
	dec  sp                                          ; $4afc: $3b
	db   $10                                         ; $4afd: $10
	ld   b, b                                        ; $4afe: $40
	jr   jr_0fc_4ac8                                 ; $4aff: $18 $c7

	jr   nz, jr_0fc_4b45                             ; $4b01: $20 $42

	ld   [$0840], sp                                 ; $4b03: $08 $40 $08
	dec  sp                                          ; $4b06: $3b
	ld   [$0839], sp                                 ; $4b07: $08 $39 $08
	scf                                              ; $4b0a: $37
	ld   [$40c7], sp                                 ; $4b0b: $08 $c7 $40
	dec  sp                                          ; $4b0e: $3b
	jr   nz, jr_0fc_4b4c                             ; $4b0f: $20 $3b

	db   $10                                         ; $4b11: $10
	add  hl, sp                                      ; $4b12: $39
	db   $10                                         ; $4b13: $10
	scf                                              ; $4b14: $37
	jr   nz, @-$37                                   ; $4b15: $20 $c7

	jr   nz, @+$39                                   ; $4b17: $20 $37

	ld   [$0837], sp                                 ; $4b19: $08 $37 $08
	ld   [hl], $08                                   ; $4b1c: $36 $08

jr_0fc_4b1e:
	dec  hl                                          ; $4b1e: $2b
	ld   [$40c7], sp                                 ; $4b1f: $08 $c7 $40
	ld   [hl-], a                                    ; $4b22: $32
	jr   nz, jr_0fc_4b44                             ; $4b23: $20 $1f

	db   $10                                         ; $4b25: $10
	rst  ToBoot                                         ; $4b26: $c7
	jr   nz, jr_0fc_4b54                             ; $4b27: $20 $2b

	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $4b29: $08 $32 $08
	rst  ToBoot                                         ; $4b2c: $c7
	ld   b, b                                        ; $4b2d: $40
	inc  [hl]                                        ; $4b2e: $34
	jr   jr_0fc_4af8                                 ; $4b2f: $18 $c7

	jr   nz, @+$3d                                   ; $4b31: $20 $3b

	ld   [$0839], sp                                 ; $4b33: $08 $39 $08
	dec  sp                                          ; $4b36: $3b
	inc  b                                           ; $4b37: $04
	add  hl, sp                                      ; $4b38: $39
	inc  b                                           ; $4b39: $04
	scf                                              ; $4b3a: $37
	ld   [$0834], sp                                 ; $4b3b: $08 $34 $08
	rst  ToBoot                                         ; $4b3e: $c7
	ld   b, b                                        ; $4b3f: $40
	scf                                              ; $4b40: $37
	ld   b, b                                        ; $4b41: $40
	or   b                                           ; $4b42: $b0
	di                                               ; $4b43: $f3

jr_0fc_4b44:
	rst  $38                                         ; $4b44: $ff

jr_0fc_4b45:
	rst  $38                                         ; $4b45: $ff
	rst  ToBoot                                         ; $4b46: $c7
	jr   nz, jr_0fc_4ae9                             ; $4b47: $20 $a0

	ld   c, $2b                                      ; $4b49: $0e $2b
	inc  c                                           ; $4b4b: $0c

jr_0fc_4b4c:
	dec  hl                                          ; $4b4c: $2b
	inc  b                                           ; $4b4d: $04
	scf                                              ; $4b4e: $37
	ld   [$0836], sp                                 ; $4b4f: $08 $36 $08
	rst  ToBoot                                         ; $4b52: $c7
	ld   b, b                                        ; $4b53: $40

jr_0fc_4b54:
	scf                                              ; $4b54: $37
	jr   nz, jr_0fc_4b1e                             ; $4b55: $20 $c7

	jr   nz, jr_0fc_4b90                             ; $4b57: $20 $37

	ld   [$0436], sp                                 ; $4b59: $08 $36 $04
	inc  [hl]                                        ; $4b5c: $34
	inc  b                                           ; $4b5d: $04
	ld   [hl-], a                                    ; $4b5e: $32
	ld   [$082b], sp                                 ; $4b5f: $08 $2b $08
	rst  ToBoot                                         ; $4b62: $c7
	ld   b, b                                        ; $4b63: $40
	inc  [hl]                                        ; $4b64: $34
	jr   nz, @+$36                                   ; $4b65: $20 $34

	inc  c                                           ; $4b67: $0c
	rst  ToBoot                                         ; $4b68: $c7
	jr   nz, jr_0fc_4b9f                             ; $4b69: $20 $34

	inc  b                                           ; $4b6b: $04
	inc  [hl]                                        ; $4b6c: $34
	ld   [$0837], sp                                 ; $4b6d: $08 $37 $08
	rst  ToBoot                                         ; $4b70: $c7
	jr   nc, @-$51                                   ; $4b71: $30 $ad

	nop                                              ; $4b73: $00
	and  b                                           ; $4b74: $a0
	inc  c                                           ; $4b75: $0c
	inc  [hl]                                        ; $4b76: $34
	ld   [bc], a                                     ; $4b77: $02
	rra                                              ; $4b78: $1f
	ld   [bc], a                                     ; $4b79: $02
	dec  sp                                          ; $4b7a: $3b
	ld   [bc], a                                     ; $4b7b: $02
	and  b                                           ; $4b7c: $a0
	inc  b                                           ; $4b7d: $04
	inc  [hl]                                        ; $4b7e: $34
	ld   [bc], a                                     ; $4b7f: $02
	and  b                                           ; $4b80: $a0
	inc  c                                           ; $4b81: $0c
	add  hl, sp                                      ; $4b82: $39
	ld   [bc], a                                     ; $4b83: $02
	and  b                                           ; $4b84: $a0
	inc  b                                           ; $4b85: $04
	dec  sp                                          ; $4b86: $3b
	ld   [bc], a                                     ; $4b87: $02
	and  b                                           ; $4b88: $a0
	inc  c                                           ; $4b89: $0c
	dec  sp                                          ; $4b8a: $3b
	ld   [bc], a                                     ; $4b8b: $02
	and  b                                           ; $4b8c: $a0
	inc  b                                           ; $4b8d: $04
	add  hl, sp                                      ; $4b8e: $39
	ld   [bc], a                                     ; $4b8f: $02

jr_0fc_4b90:
	and  b                                           ; $4b90: $a0
	inc  c                                           ; $4b91: $0c
	scf                                              ; $4b92: $37
	ld   [bc], a                                     ; $4b93: $02
	and  b                                           ; $4b94: $a0
	inc  b                                           ; $4b95: $04
	dec  sp                                          ; $4b96: $3b
	ld   [bc], a                                     ; $4b97: $02
	and  b                                           ; $4b98: $a0
	inc  c                                           ; $4b99: $0c
	ld   [hl], $02                                   ; $4b9a: $36 $02
	and  b                                           ; $4b9c: $a0
	inc  b                                           ; $4b9d: $04
	scf                                              ; $4b9e: $37

jr_0fc_4b9f:
	ld   [bc], a                                     ; $4b9f: $02
	and  b                                           ; $4ba0: $a0
	inc  c                                           ; $4ba1: $0c
	ld   [hl-], a                                    ; $4ba2: $32
	ld   [bc], a                                     ; $4ba3: $02
	and  b                                           ; $4ba4: $a0
	inc  b                                           ; $4ba5: $04
	ld   [hl], $02                                   ; $4ba6: $36 $02
	and  b                                           ; $4ba8: $a0
	inc  c                                           ; $4ba9: $0c
	dec  hl                                          ; $4baa: $2b
	ld   [bc], a                                     ; $4bab: $02
	and  b                                           ; $4bac: $a0
	inc  b                                           ; $4bad: $04
	ld   [hl-], a                                    ; $4bae: $32
	ld   [bc], a                                     ; $4baf: $02
	and  b                                           ; $4bb0: $a0
	inc  c                                           ; $4bb1: $0c
	ld   [hl+], a                                    ; $4bb2: $22
	ld   [bc], a                                     ; $4bb3: $02
	and  b                                           ; $4bb4: $a0
	inc  b                                           ; $4bb5: $04
	dec  hl                                          ; $4bb6: $2b
	ld   [bc], a                                     ; $4bb7: $02
	and  b                                           ; $4bb8: $a0
	inc  c                                           ; $4bb9: $0c
	inc  h                                           ; $4bba: $24
	ld   [bc], a                                     ; $4bbb: $02
	and  b                                           ; $4bbc: $a0
	inc  b                                           ; $4bbd: $04
	ld   [hl+], a                                    ; $4bbe: $22
	ld   [bc], a                                     ; $4bbf: $02
	and  b                                           ; $4bc0: $a0
	inc  c                                           ; $4bc1: $0c
	add  hl, hl                                      ; $4bc2: $29
	ld   [bc], a                                     ; $4bc3: $02
	and  b                                           ; $4bc4: $a0
	inc  b                                           ; $4bc5: $04
	inc  h                                           ; $4bc6: $24
	ld   [bc], a                                     ; $4bc7: $02
	and  b                                           ; $4bc8: $a0
	inc  c                                           ; $4bc9: $0c
	dec  hl                                          ; $4bca: $2b
	ld   [bc], a                                     ; $4bcb: $02
	and  b                                           ; $4bcc: $a0
	inc  b                                           ; $4bcd: $04
	add  hl, hl                                      ; $4bce: $29
	ld   [bc], a                                     ; $4bcf: $02
	and  b                                           ; $4bd0: $a0
	inc  c                                           ; $4bd1: $0c
	ld   [hl-], a                                    ; $4bd2: $32
	ld   [bc], a                                     ; $4bd3: $02
	and  b                                           ; $4bd4: $a0
	inc  b                                           ; $4bd5: $04
	dec  hl                                          ; $4bd6: $2b
	ld   [bc], a                                     ; $4bd7: $02
	and  b                                           ; $4bd8: $a0
	inc  c                                           ; $4bd9: $0c
	inc  [hl]                                        ; $4bda: $34
	ld   [bc], a                                     ; $4bdb: $02
	and  b                                           ; $4bdc: $a0
	inc  b                                           ; $4bdd: $04
	ld   [hl-], a                                    ; $4bde: $32
	ld   [bc], a                                     ; $4bdf: $02
	and  b                                           ; $4be0: $a0
	inc  c                                           ; $4be1: $0c
	add  hl, sp                                      ; $4be2: $39
	ld   [bc], a                                     ; $4be3: $02
	and  b                                           ; $4be4: $a0
	inc  b                                           ; $4be5: $04
	inc  [hl]                                        ; $4be6: $34
	ld   [bc], a                                     ; $4be7: $02
	and  b                                           ; $4be8: $a0
	inc  c                                           ; $4be9: $0c
	dec  sp                                          ; $4bea: $3b
	ld   [bc], a                                     ; $4beb: $02
	and  b                                           ; $4bec: $a0
	inc  b                                           ; $4bed: $04
	add  hl, sp                                      ; $4bee: $39
	ld   [bc], a                                     ; $4bef: $02
	xor  l                                           ; $4bf0: $ad
	nop                                              ; $4bf1: $00
	dec  b                                           ; $4bf2: $05
	ld   b, b                                        ; $4bf3: $40
	ld   [bc], a                                     ; $4bf4: $02
	inc  bc                                          ; $4bf5: $03
	db   $fd                                         ; $4bf6: $fd
	di                                               ; $4bf7: $f3
	and  b                                           ; $4bf8: $a0
	ld   [bc], a                                     ; $4bf9: $02
	and  e                                           ; $4bfa: $a3
	inc  h                                           ; $4bfb: $24
	and  d                                           ; $4bfc: $a2
	add  b                                           ; $4bfd: $80
	jr   nz, jr_0fc_4c0c                             ; $4bfe: $20 $0c

	dec  d                                           ; $4c00: $15
	inc  c                                           ; $4c01: $0c
	ld   a, [de]                                     ; $4c02: $1a
	inc  c                                           ; $4c03: $0c
	add  hl, de                                      ; $4c04: $19
	inc  c                                           ; $4c05: $0c
	ld   [hl+], a                                    ; $4c06: $22
	inc  c                                           ; $4c07: $0c
	rla                                              ; $4c08: $17
	inc  h                                           ; $4c09: $24
	and  b                                           ; $4c0a: $a0
	inc  b                                           ; $4c0b: $04

jr_0fc_4c0c:
	rla                                              ; $4c0c: $17
	db   $10                                         ; $4c0d: $10
	and  b                                           ; $4c0e: $a0
	ld   [bc], a                                     ; $4c0f: $02
	and  d                                           ; $4c10: $a2
	jr   nz, jr_0fc_4c38                             ; $4c11: $20 $25

	inc  bc                                          ; $4c13: $03
	inc  h                                           ; $4c14: $24
	inc  bc                                          ; $4c15: $03
	ld   [hl+], a                                    ; $4c16: $22
	inc  bc                                          ; $4c17: $03
	jr   nz, jr_0fc_4c1d                             ; $4c18: $20 $03

	dec  de                                          ; $4c1a: $1b
	ld   [bc], a                                     ; $4c1b: $02
	add  hl, de                                      ; $4c1c: $19

jr_0fc_4c1d:
	ld   [bc], a                                     ; $4c1d: $02
	and  d                                           ; $4c1e: $a2
	add  b                                           ; $4c1f: $80
	add  hl, de                                      ; $4c20: $19

jr_0fc_4c21:
	inc  c                                           ; $4c21: $0c
	and  d                                           ; $4c22: $a2
	rst  $38                                         ; $4c23: $ff
	and  e                                           ; $4c24: $a3
	inc  b                                           ; $4c25: $04
	dec  de                                          ; $4c26: $1b
	ld   [hl], h                                     ; $4c27: $74
	and  e                                           ; $4c28: $a3
	inc  h                                           ; $4c29: $24
	and  d                                           ; $4c2a: $a2
	jr   nc, jr_0fc_4c31                             ; $4c2b: $30 $04

	db   $10                                         ; $4c2d: $10
	and  d                                           ; $4c2e: $a2
	jr   nz, @+$16                                   ; $4c2f: $20 $14

jr_0fc_4c31:
	ld   [$0804], sp                                 ; $4c31: $08 $04 $08
	ld   [de], a                                     ; $4c34: $12
	ld   [$080b], sp                                 ; $4c35: $08 $0b $08

jr_0fc_4c38:
	inc  d                                           ; $4c38: $14
	ld   [$0804], sp                                 ; $4c39: $08 $04 $08
	and  d                                           ; $4c3c: $a2
	jr   nc, @+$19                                   ; $4c3d: $30 $17

	db   $10                                         ; $4c3f: $10
	and  d                                           ; $4c40: $a2
	jr   nz, @+$19                                   ; $4c41: $20 $17

	ld   [$0817], sp                                 ; $4c43: $08 $17 $08
	rla                                              ; $4c46: $17
	ld   [$0819], sp                                 ; $4c47: $08 $19 $08
	dec  de                                          ; $4c4a: $1b
	ld   [$0817], sp                                 ; $4c4b: $08 $17 $08
	and  d                                           ; $4c4e: $a2
	jr   nc, @+$1b                                   ; $4c4f: $30 $19

	db   $10                                         ; $4c51: $10
	and  d                                           ; $4c52: $a2
	jr   nz, @+$1b                                   ; $4c53: $20 $19

	ld   [$0819], sp                                 ; $4c55: $08 $19 $08
	dec  de                                          ; $4c58: $1b
	ld   [$081b], sp                                 ; $4c59: $08 $1b $08
	inc  hl                                          ; $4c5c: $23
	ld   [$081b], sp                                 ; $4c5d: $08 $1b $08
	inc  h                                           ; $4c60: $24
	ld   [$0822], sp                                 ; $4c61: $08 $22 $08
	inc  h                                           ; $4c64: $24
	ld   [$0826], sp                                 ; $4c65: $08 $26 $08
	daa                                              ; $4c68: $27
	ld   [$0826], sp                                 ; $4c69: $08 $26 $08
	inc  h                                           ; $4c6c: $24
	ld   [$081b], sp                                 ; $4c6d: $08 $1b $08

jr_0fc_4c70:
	and  d                                           ; $4c70: $a2
	jr   nc, jr_0fc_4c70                             ; $4c71: $30 $fd

	ldh  a, [hScriptOpcodeParams]                                    ; $4c73: $f0 $a0
	ld   [bc], a                                     ; $4c75: $02
	add  hl, de                                      ; $4c76: $19
	inc  b                                           ; $4c77: $04
	and  b                                           ; $4c78: $a0
	ld   b, $19                                      ; $4c79: $06 $19
	inc  b                                           ; $4c7b: $04
	or   d                                           ; $4c7c: $b2
	ldh  a, [$1f]                                    ; $4c7d: $f0 $1f
	jr   nz, jr_0fc_4c21                             ; $4c7f: $20 $a0

	ld   [bc], a                                     ; $4c81: $02
	add  hl, de                                      ; $4c82: $19
	inc  b                                           ; $4c83: $04
	and  b                                           ; $4c84: $a0
	ld   b, $19                                      ; $4c85: $06 $19
	inc  b                                           ; $4c87: $04
	db   $fd                                         ; $4c88: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4c89: $f0 $a0
	ld   [bc], a                                     ; $4c8b: $02
	inc  d                                           ; $4c8c: $14
	inc  b                                           ; $4c8d: $04
	and  b                                           ; $4c8e: $a0
	ld   b, $14                                      ; $4c8f: $06 $14
	inc  b                                           ; $4c91: $04
	or   d                                           ; $4c92: $b2
	ldh  a, [$1f]                                    ; $4c93: $f0 $1f
	db   $10                                         ; $4c95: $10
	and  b                                           ; $4c96: $a0
	ld   [bc], a                                     ; $4c97: $02
	and  d                                           ; $4c98: $a2
	jr   nz, jr_0fc_4cbf                             ; $4c99: $20 $24

	ld   [$0822], sp                                 ; $4c9b: $08 $22 $08
	ld   hl, $2008                                   ; $4c9e: $21 $08 $20
	ld   [$0820], sp                                 ; $4ca1: $08 $20 $08
	daa                                              ; $4ca4: $27
	ld   [$0820], sp                                 ; $4ca5: $08 $20 $08
	ld   [hl+], a                                    ; $4ca8: $22
	ld   [$0822], sp                                 ; $4ca9: $08 $22 $08
	add  hl, hl                                      ; $4cac: $29
	ld   [$0822], sp                                 ; $4cad: $08 $22 $08
	and  d                                           ; $4cb0: $a2

jr_0fc_4cb1:
	jr   nc, jr_0fc_4cd7                             ; $4cb1: $30 $24

	db   $10                                         ; $4cb3: $10
	and  d                                           ; $4cb4: $a2
	jr   nz, jr_0fc_4cde                             ; $4cb5: $20 $27

	ld   [$30a2], sp                                 ; $4cb7: $08 $a2 $30
	dec  hl                                          ; $4cba: $2b
	db   $10                                         ; $4cbb: $10
	and  d                                           ; $4cbc: $a2
	jr   nz, jr_0fc_4ce6                             ; $4cbd: $20 $27

jr_0fc_4cbf:
	ld   [$0826], sp                                 ; $4cbf: $08 $26 $08
	dec  de                                          ; $4cc2: $1b
	ld   [$01ac], sp                                 ; $4cc3: $08 $ac $01
	ld   c, [hl]                                     ; $4cc6: $4e
	ld   [bc], a                                     ; $4cc7: $02
	and  d                                           ; $4cc8: $a2
	jr   nc, @-$5e                                   ; $4cc9: $30 $a0

	ld   [bc], a                                     ; $4ccb: $02
	ld   hl, $1f14                                   ; $4ccc: $21 $14 $1f
	inc  b                                           ; $4ccf: $04
	ld   hl, $a006                                   ; $4cd0: $21 $06 $a0
	ld   b, $21                                      ; $4cd3: $06 $21

jr_0fc_4cd5:
	ld   [bc], a                                     ; $4cd5: $02
	and  b                                           ; $4cd6: $a0

jr_0fc_4cd7:
	ld   [bc], a                                     ; $4cd7: $02
	jr   nz, jr_0fc_4cde                             ; $4cd8: $20 $04

	and  b                                           ; $4cda: $a0
	ld   b, $20                                      ; $4cdb: $06 $20
	ld   [bc], a                                     ; $4cdd: $02

jr_0fc_4cde:
	rra                                              ; $4cde: $1f
	ld   [bc], a                                     ; $4cdf: $02
	and  b                                           ; $4ce0: $a0
	ld   [bc], a                                     ; $4ce1: $02
	jr   nz, jr_0fc_4cf2                             ; $4ce2: $20 $0e

	rra                                              ; $4ce4: $1f
	ld   [bc], a                                     ; $4ce5: $02

jr_0fc_4ce6:
	jr   nz, jr_0fc_4cee                             ; $4ce6: $20 $06

	and  b                                           ; $4ce8: $a0
	ld   b, $20                                      ; $4ce9: $06 $20
	ld   [bc], a                                     ; $4ceb: $02
	and  b                                           ; $4cec: $a0
	ld   [bc], a                                     ; $4ced: $02

jr_0fc_4cee:
	ld   [hl+], a                                    ; $4cee: $22
	inc  d                                           ; $4cef: $14
	rra                                              ; $4cf0: $1f
	inc  b                                           ; $4cf1: $04

jr_0fc_4cf2:
	ld   [hl+], a                                    ; $4cf2: $22
	ld   b, $a0                                      ; $4cf3: $06 $a0
	ld   b, $22                                      ; $4cf5: $06 $22
	ld   [bc], a                                     ; $4cf7: $02
	and  b                                           ; $4cf8: $a0
	ld   [bc], a                                     ; $4cf9: $02
	dec  de                                          ; $4cfa: $1b
	inc  b                                           ; $4cfb: $04
	and  b                                           ; $4cfc: $a0
	ld   b, $1b                                      ; $4cfd: $06 $1b
	ld   [bc], a                                     ; $4cff: $02
	rra                                              ; $4d00: $1f
	ld   [bc], a                                     ; $4d01: $02
	and  b                                           ; $4d02: $a0
	ld   [bc], a                                     ; $4d03: $02
	dec  de                                          ; $4d04: $1b
	ld   c, $1f                                      ; $4d05: $0e $1f
	ld   [bc], a                                     ; $4d07: $02
	dec  de                                          ; $4d08: $1b
	ld   b, $a0                                      ; $4d09: $06 $a0
	ld   b, $1b                                      ; $4d0b: $06 $1b
	ld   [bc], a                                     ; $4d0d: $02
	and  d                                           ; $4d0e: $a2
	jr   nz, jr_0fc_4cb1                             ; $4d0f: $20 $a0

	ld   [bc], a                                     ; $4d11: $02
	inc  h                                           ; $4d12: $24
	ld   [$0824], sp                                 ; $4d13: $08 $24 $08
	and  d                                           ; $4d16: $a2
	jr   nc, jr_0fc_4d3d                             ; $4d17: $30 $24

	inc  b                                           ; $4d19: $04
	and  b                                           ; $4d1a: $a0
	ld   b, $24                                      ; $4d1b: $06 $24
	ld   [bc], a                                     ; $4d1d: $02
	rra                                              ; $4d1e: $1f
	ld   [bc], a                                     ; $4d1f: $02
	and  b                                           ; $4d20: $a0
	ld   [bc], a                                     ; $4d21: $02
	ld   [hl+], a                                    ; $4d22: $22
	ld   [$20a2], sp                                 ; $4d23: $08 $a2 $20
	inc  h                                           ; $4d26: $24
	ld   [$0827], sp                                 ; $4d27: $08 $27 $08
	ld   h, $08                                      ; $4d2a: $26 $08
	dec  de                                          ; $4d2c: $1b
	ld   [$01ac], sp                                 ; $4d2d: $08 $ac $01
	ld   c, [hl]                                     ; $4d30: $4e
	ld   [bc], a                                     ; $4d31: $02
	and  d                                           ; $4d32: $a2
	jr   nc, jr_0fc_4cd5                             ; $4d33: $30 $a0

	ld   [bc], a                                     ; $4d35: $02
	jr   nz, jr_0fc_4d4c                             ; $4d36: $20 $14

	rra                                              ; $4d38: $1f
	inc  b                                           ; $4d39: $04
	jr   nz, jr_0fc_4d42                             ; $4d3a: $20 $06

	and  b                                           ; $4d3c: $a0

jr_0fc_4d3d:
	ld   b, $20                                      ; $4d3d: $06 $20
	ld   [bc], a                                     ; $4d3f: $02
	and  b                                           ; $4d40: $a0
	ld   [bc], a                                     ; $4d41: $02

jr_0fc_4d42:
	add  hl, de                                      ; $4d42: $19
	inc  b                                           ; $4d43: $04
	and  b                                           ; $4d44: $a0
	ld   b, $19                                      ; $4d45: $06 $19
	ld   [bc], a                                     ; $4d47: $02
	rra                                              ; $4d48: $1f
	ld   [bc], a                                     ; $4d49: $02
	and  b                                           ; $4d4a: $a0
	ld   [bc], a                                     ; $4d4b: $02

jr_0fc_4d4c:
	add  hl, de                                      ; $4d4c: $19
	ld   c, $1f                                      ; $4d4d: $0e $1f
	ld   [bc], a                                     ; $4d4f: $02
	add  hl, de                                      ; $4d50: $19
	ld   b, $a0                                      ; $4d51: $06 $a0
	ld   b, $19                                      ; $4d53: $06 $19
	ld   [bc], a                                     ; $4d55: $02
	and  b                                           ; $4d56: $a0
	ld   [bc], a                                     ; $4d57: $02
	ld   [hl+], a                                    ; $4d58: $22
	inc  d                                           ; $4d59: $14
	rra                                              ; $4d5a: $1f
	inc  b                                           ; $4d5b: $04
	ld   [hl+], a                                    ; $4d5c: $22
	ld   b, $a0                                      ; $4d5d: $06 $a0
	ld   b, $22                                      ; $4d5f: $06 $22
	ld   [bc], a                                     ; $4d61: $02
	and  b                                           ; $4d62: $a0
	ld   [bc], a                                     ; $4d63: $02
	dec  de                                          ; $4d64: $1b
	inc  b                                           ; $4d65: $04
	and  b                                           ; $4d66: $a0
	ld   b, $1b                                      ; $4d67: $06 $1b
	ld   [bc], a                                     ; $4d69: $02
	rra                                              ; $4d6a: $1f
	ld   [bc], a                                     ; $4d6b: $02
	and  b                                           ; $4d6c: $a0
	ld   [bc], a                                     ; $4d6d: $02
	dec  de                                          ; $4d6e: $1b
	ld   c, $1f                                      ; $4d6f: $0e $1f
	ld   [bc], a                                     ; $4d71: $02
	dec  de                                          ; $4d72: $1b
	ld   b, $a0                                      ; $4d73: $06 $a0
	ld   b, $1b                                      ; $4d75: $06 $1b
	ld   [bc], a                                     ; $4d77: $02
	and  b                                           ; $4d78: $a0
	ld   [bc], a                                     ; $4d79: $02
	inc  h                                           ; $4d7a: $24
	inc  d                                           ; $4d7b: $14
	rra                                              ; $4d7c: $1f
	inc  b                                           ; $4d7d: $04
	dec  de                                          ; $4d7e: $1b
	ld   b, $a0                                      ; $4d7f: $06 $a0
	ld   b, $1b                                      ; $4d81: $06 $1b
	ld   [bc], a                                     ; $4d83: $02
	and  b                                           ; $4d84: $a0
	ld   [bc], a                                     ; $4d85: $02
	inc  h                                           ; $4d86: $24
	inc  b                                           ; $4d87: $04
	and  b                                           ; $4d88: $a0
	ld   b, $24                                      ; $4d89: $06 $24
	ld   [bc], a                                     ; $4d8b: $02
	rra                                              ; $4d8c: $1f
	ld   [bc], a                                     ; $4d8d: $02
	and  b                                           ; $4d8e: $a0
	ld   [bc], a                                     ; $4d8f: $02
	inc  h                                           ; $4d90: $24
	ld   c, $1f                                      ; $4d91: $0e $1f
	ld   [bc], a                                     ; $4d93: $02
	dec  de                                          ; $4d94: $1b
	ld   b, $a0                                      ; $4d95: $06 $a0
	ld   b, $1b                                      ; $4d97: $06 $1b
	ld   [bc], a                                     ; $4d99: $02
	and  b                                           ; $4d9a: $a0
	ld   [bc], a                                     ; $4d9b: $02
	inc  h                                           ; $4d9c: $24
	ld   [$20a2], sp                                 ; $4d9d: $08 $a2 $20
	ld   [hl+], a                                    ; $4da0: $22
	ld   [$081b], sp                                 ; $4da1: $08 $1b $08
	add  hl, de                                      ; $4da4: $19
	ld   [$40a2], sp                                 ; $4da5: $08 $a2 $40
	inc  d                                           ; $4da8: $14
	db   $10                                         ; $4da9: $10
	ld   d, $10                                      ; $4daa: $16 $10

jr_0fc_4dac:
	and  d                                           ; $4dac: $a2
	jr   nz, jr_0fc_4dac                             ; $4dad: $20 $fd

	ldh  a, [$ac]                                    ; $4daf: $f0 $ac
	ld   bc, $02f0                                   ; $4db1: $01 $f0 $02
	or   e                                           ; $4db4: $b3
	ldh  a, [$fd]                                    ; $4db5: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4db7: $f0 $a0
	ld   [bc], a                                     ; $4db9: $02
	ld   d, $08                                      ; $4dba: $16 $08
	ld   d, $06                                      ; $4dbc: $16 $06
	and  b                                           ; $4dbe: $a0
	ld   b, $16                                      ; $4dbf: $06 $16
	ld   [bc], a                                     ; $4dc1: $02
	or   e                                           ; $4dc2: $b3
	ldh  a, [$fd]                                    ; $4dc3: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4dc5: $f0 $a0
	ld   [bc], a                                     ; $4dc7: $02
	inc  d                                           ; $4dc8: $14
	ld   [$0614], sp                                 ; $4dc9: $08 $14 $06
	and  b                                           ; $4dcc: $a0
	ld   b, $14                                      ; $4dcd: $06 $14
	ld   [bc], a                                     ; $4dcf: $02
	or   c                                           ; $4dd0: $b1
	ldh  a, [$fd]                                    ; $4dd1: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4dd3: $f0 $a0
	ld   [bc], a                                     ; $4dd5: $02
	ld   [hl+], a                                    ; $4dd6: $22
	ld   [$0622], sp                                 ; $4dd7: $08 $22 $06
	and  b                                           ; $4dda: $a0
	ld   b, $22                                      ; $4ddb: $06 $22
	ld   [bc], a                                     ; $4ddd: $02
	or   c                                           ; $4dde: $b1
	ldh  a, [$fd]                                    ; $4ddf: $f0 $fd
	ldh  a, [$ac]                                    ; $4de1: $f0 $ac
	ld   bc, $02f0                                   ; $4de3: $01 $f0 $02
	or   d                                           ; $4de6: $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $4de7: $f0 $a0
	ld   [bc], a                                     ; $4de9: $02
	ld   d, $08                                      ; $4dea: $16 $08
	ld   d, $06                                      ; $4dec: $16 $06
	and  b                                           ; $4dee: $a0
	ld   b, $16                                      ; $4def: $06 $16
	ld   [bc], a                                     ; $4df1: $02
	db   $fd                                         ; $4df2: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4df3: $f0 $a0
	ld   [bc], a                                     ; $4df5: $02
	inc  d                                           ; $4df6: $14
	ld   [$0614], sp                                 ; $4df7: $08 $14 $06
	and  b                                           ; $4dfa: $a0
	ld   b, $14                                      ; $4dfb: $06 $14
	ld   [bc], a                                     ; $4dfd: $02
	or   d                                           ; $4dfe: $b2
	ldh  a, [hScriptOpcodeParams]                                    ; $4dff: $f0 $a0
	ld   [bc], a                                     ; $4e01: $02
	inc  d                                           ; $4e02: $14
	ld   [$0619], sp                                 ; $4e03: $08 $19 $06
	and  b                                           ; $4e06: $a0
	ld   b, $19                                      ; $4e07: $06 $19
	ld   [bc], a                                     ; $4e09: $02
	db   $fd                                         ; $4e0a: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4e0b: $f0 $a0
	ld   [bc], a                                     ; $4e0d: $02
	dec  de                                          ; $4e0e: $1b
	ld   [$061b], sp                                 ; $4e0f: $08 $1b $06
	and  b                                           ; $4e12: $a0
	ld   b, $1b                                      ; $4e13: $06 $1b
	ld   [bc], a                                     ; $4e15: $02
	or   e                                           ; $4e16: $b3
	ldh  a, [$fd]                                    ; $4e17: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4e19: $f0 $a0
	ld   [bc], a                                     ; $4e1b: $02
	jr   nz, @+$0a                                   ; $4e1c: $20 $08

	jr   nz, @+$08                                   ; $4e1e: $20 $06

	and  b                                           ; $4e20: $a0
	ld   b, $20                                      ; $4e21: $06 $20
	ld   [bc], a                                     ; $4e23: $02
	or   c                                           ; $4e24: $b1
	ldh  a, [$fd]                                    ; $4e25: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4e27: $f0 $a0
	ld   [bc], a                                     ; $4e29: $02
	ld   [hl+], a                                    ; $4e2a: $22
	ld   [$0622], sp                                 ; $4e2b: $08 $22 $06
	and  b                                           ; $4e2e: $a0
	ld   b, $22                                      ; $4e2f: $06 $22
	ld   [bc], a                                     ; $4e31: $02
	or   c                                           ; $4e32: $b1
	ldh  a, [$fd]                                    ; $4e33: $f0 $fd
	ldh  a, [$ac]                                    ; $4e35: $f0 $ac
	ld   bc, $02f0                                   ; $4e37: $01 $f0 $02
	or   e                                           ; $4e3a: $b3
	ldh  a, [$b0]                                    ; $4e3b: $f0 $b0
	di                                               ; $4e3d: $f3
	rst  $38                                         ; $4e3e: $ff
	rst  $38                                         ; $4e3f: $ff
	and  d                                           ; $4e40: $a2
	jr   nc, jr_0fc_4e67                             ; $4e41: $30 $24

	inc  d                                           ; $4e43: $14
	rra                                              ; $4e44: $1f
	inc  b                                           ; $4e45: $04
	dec  de                                          ; $4e46: $1b
	ld   b, $a0                                      ; $4e47: $06 $a0
	ld   b, $1b                                      ; $4e49: $06 $1b
	ld   [bc], a                                     ; $4e4b: $02
	and  b                                           ; $4e4c: $a0
	ld   [bc], a                                     ; $4e4d: $02
	inc  h                                           ; $4e4e: $24
	inc  b                                           ; $4e4f: $04
	and  b                                           ; $4e50: $a0
	ld   b, $24                                      ; $4e51: $06 $24
	ld   [bc], a                                     ; $4e53: $02
	rra                                              ; $4e54: $1f
	ld   [bc], a                                     ; $4e55: $02
	and  b                                           ; $4e56: $a0
	ld   [bc], a                                     ; $4e57: $02
	inc  h                                           ; $4e58: $24
	ld   c, $1f                                      ; $4e59: $0e $1f
	ld   [bc], a                                     ; $4e5b: $02
	dec  de                                          ; $4e5c: $1b
	ld   b, $a0                                      ; $4e5d: $06 $a0
	ld   b, $1b                                      ; $4e5f: $06 $1b
	ld   [bc], a                                     ; $4e61: $02
	and  b                                           ; $4e62: $a0
	ld   [bc], a                                     ; $4e63: $02
	inc  h                                           ; $4e64: $24
	inc  d                                           ; $4e65: $14
	rra                                              ; $4e66: $1f

jr_0fc_4e67:
	inc  b                                           ; $4e67: $04
	dec  de                                          ; $4e68: $1b
	ld   b, $a0                                      ; $4e69: $06 $a0
	ld   b, $1b                                      ; $4e6b: $06 $1b
	ld   [bc], a                                     ; $4e6d: $02
	and  b                                           ; $4e6e: $a0
	ld   [bc], a                                     ; $4e6f: $02
	inc  h                                           ; $4e70: $24
	ld   [$20a2], sp                                 ; $4e71: $08 $a2 $20
	rla                                              ; $4e74: $17
	ld   [$0819], sp                                 ; $4e75: $08 $19 $08
	dec  de                                          ; $4e78: $1b
	ld   [$30a2], sp                                 ; $4e79: $08 $a2 $30
	jr   nz, jr_0fc_4e92                             ; $4e7c: $20 $14

	rra                                              ; $4e7e: $1f
	inc  b                                           ; $4e7f: $04
	jr   nz, jr_0fc_4e88                             ; $4e80: $20 $06

	and  b                                           ; $4e82: $a0
	ld   b, $20                                      ; $4e83: $06 $20
	ld   [bc], a                                     ; $4e85: $02
	and  b                                           ; $4e86: $a0
	ld   [bc], a                                     ; $4e87: $02

jr_0fc_4e88:
	ld   [hl+], a                                    ; $4e88: $22
	inc  b                                           ; $4e89: $04
	and  b                                           ; $4e8a: $a0
	ld   b, $22                                      ; $4e8b: $06 $22
	ld   [bc], a                                     ; $4e8d: $02
	rra                                              ; $4e8e: $1f
	ld   [bc], a                                     ; $4e8f: $02
	and  b                                           ; $4e90: $a0
	ld   [bc], a                                     ; $4e91: $02

jr_0fc_4e92:
	ld   [hl+], a                                    ; $4e92: $22
	ld   c, $1f                                      ; $4e93: $0e $1f
	ld   [bc], a                                     ; $4e95: $02
	ld   [hl+], a                                    ; $4e96: $22
	ld   b, $a0                                      ; $4e97: $06 $a0
	ld   b, $22                                      ; $4e99: $06 $22
	ld   [bc], a                                     ; $4e9b: $02
	and  b                                           ; $4e9c: $a0
	ld   [bc], a                                     ; $4e9d: $02
	rla                                              ; $4e9e: $17
	inc  d                                           ; $4e9f: $14
	rra                                              ; $4ea0: $1f
	inc  b                                           ; $4ea1: $04
	rla                                              ; $4ea2: $17
	ld   b, $a0                                      ; $4ea3: $06 $a0
	ld   b, $17                                      ; $4ea5: $06 $17
	ld   [bc], a                                     ; $4ea7: $02
	and  b                                           ; $4ea8: $a0
	ld   [bc], a                                     ; $4ea9: $02
	dec  de                                          ; $4eaa: $1b
	inc  b                                           ; $4eab: $04
	and  b                                           ; $4eac: $a0
	ld   b, $1b                                      ; $4ead: $06 $1b
	ld   [bc], a                                     ; $4eaf: $02
	rra                                              ; $4eb0: $1f
	ld   [bc], a                                     ; $4eb1: $02
	and  b                                           ; $4eb2: $a0
	ld   [bc], a                                     ; $4eb3: $02
	dec  de                                          ; $4eb4: $1b
	ld   c, $1f                                      ; $4eb5: $0e $1f
	ld   [bc], a                                     ; $4eb7: $02
	dec  de                                          ; $4eb8: $1b
	ld   b, $a0                                      ; $4eb9: $06 $a0
	ld   b, $1b                                      ; $4ebb: $06 $1b
	ld   [bc], a                                     ; $4ebd: $02
	and  b                                           ; $4ebe: $a0
	ld   [bc], a                                     ; $4ebf: $02
	inc  h                                           ; $4ec0: $24
	inc  d                                           ; $4ec1: $14
	rra                                              ; $4ec2: $1f
	inc  b                                           ; $4ec3: $04
	inc  h                                           ; $4ec4: $24
	ld   b, $a0                                      ; $4ec5: $06 $a0
	ld   b, $24                                      ; $4ec7: $06 $24
	ld   [bc], a                                     ; $4ec9: $02
	and  b                                           ; $4eca: $a0
	ld   [bc], a                                     ; $4ecb: $02
	rla                                              ; $4ecc: $17
	inc  b                                           ; $4ecd: $04
	and  b                                           ; $4ece: $a0
	ld   b, $17                                      ; $4ecf: $06 $17
	ld   [bc], a                                     ; $4ed1: $02
	rra                                              ; $4ed2: $1f
	ld   [bc], a                                     ; $4ed3: $02
	and  b                                           ; $4ed4: $a0
	ld   [bc], a                                     ; $4ed5: $02
	rla                                              ; $4ed6: $17
	ld   c, $1f                                      ; $4ed7: $0e $1f
	ld   [bc], a                                     ; $4ed9: $02
	ld   [hl+], a                                    ; $4eda: $22
	ld   b, $a0                                      ; $4edb: $06 $a0
	ld   b, $22                                      ; $4edd: $06 $22
	ld   [bc], a                                     ; $4edf: $02
	xor  l                                           ; $4ee0: $ad
	nop                                              ; $4ee1: $00
	and  b                                           ; $4ee2: $a0
	ld   [bc], a                                     ; $4ee3: $02
	rla                                              ; $4ee4: $17
	ld   [$0617], sp                                 ; $4ee5: $08 $17 $06
	and  b                                           ; $4ee8: $a0
	ld   b, $17                                      ; $4ee9: $06 $17
	ld   [bc], a                                     ; $4eeb: $02
	xor  l                                           ; $4eec: $ad
	nop                                              ; $4eed: $00
	dec  b                                           ; $4eee: $05
	nop                                              ; $4eef: $00
	add  hl, bc                                      ; $4ef0: $09
	nop                                              ; $4ef1: $00
	db   $fd                                         ; $4ef2: $fd
	di                                               ; $4ef3: $f3
	db   $fd                                         ; $4ef4: $fd
	ldh  a, [$c1]                                    ; $4ef5: $f0 $c1
	inc  b                                           ; $4ef7: $04
	and  b                                           ; $4ef8: $a0
	add  hl, bc                                      ; $4ef9: $09
	ld   l, b                                        ; $4efa: $68
	ld   bc, $06a0                                   ; $4efb: $01 $a0 $06
	sbc  c                                           ; $4efe: $99
	ld   bc, $01a0                                   ; $4eff: $01 $a0 $01
	sbc  c                                           ; $4f02: $99
	ld   a, [bc]                                     ; $4f03: $0a
	or   l                                           ; $4f04: $b5
	ldh  a, [$1f]                                    ; $4f05: $f0 $1f
	jr   c, @-$01                                    ; $4f07: $38 $fd

	ldh  a, [hScriptOpcodeParams]                                    ; $4f09: $f0 $a0
	dec  c                                           ; $4f0b: $0d
	rla                                              ; $4f0c: $17
	ld   bc, $0aa0                                   ; $4f0d: $01 $a0 $0a
	db   $10                                         ; $4f10: $10
	ld   bc, $01a0                                   ; $4f11: $01 $a0 $01
	nop                                              ; $4f14: $00
	ld   a, [bc]                                     ; $4f15: $0a
	or   c                                           ; $4f16: $b1
	ldh  a, [$1f]                                    ; $4f17: $f0 $1f
	ld   c, b                                        ; $4f19: $48
	xor  h                                           ; $4f1a: $ac
	ld   bc, $0138                                   ; $4f1b: $01 $38 $01
	db   $fd                                         ; $4f1e: $fd
	ldh  a, [$ac]                                    ; $4f1f: $f0 $ac
	ld   bc, $0166                                   ; $4f21: $01 $66 $01
	or   [hl]                                        ; $4f24: $b6
	ldh  a, [$ac]                                    ; $4f25: $f0 $ac
	ld   bc, $0138                                   ; $4f27: $01 $38 $01
	xor  h                                           ; $4f2a: $ac
	ld   bc, $0196                                   ; $4f2b: $01 $96 $01
	rra                                              ; $4f2e: $1f
	ld   [$03c1], sp                                 ; $4f2f: $08 $c1 $03
	and  b                                           ; $4f32: $a0
	rlca                                             ; $4f33: $07
	ld   [bc], a                                     ; $4f34: $02
	ld   bc, $01a0                                   ; $4f35: $01 $a0 $01
	nop                                              ; $4f38: $00
	rlca                                             ; $4f39: $07
	pop  bc                                          ; $4f3a: $c1
	inc  b                                           ; $4f3b: $04
	and  b                                           ; $4f3c: $a0
	add  hl, bc                                      ; $4f3d: $09
	ld   l, b                                        ; $4f3e: $68
	ld   bc, $06a0                                   ; $4f3f: $01 $a0 $06
	sbc  c                                           ; $4f42: $99
	ld   bc, $01a0                                   ; $4f43: $01 $a0 $01
	sbc  c                                           ; $4f46: $99
	ld   b, $c1                                      ; $4f47: $06 $c1
	inc  bc                                          ; $4f49: $03
	and  b                                           ; $4f4a: $a0
	rlca                                             ; $4f4b: $07
	ld   [bc], a                                     ; $4f4c: $02
	ld   bc, $01a0                                   ; $4f4d: $01 $a0 $01
	nop                                              ; $4f50: $00
	rlca                                             ; $4f51: $07
	xor  h                                           ; $4f52: $ac
	ld   bc, $0196                                   ; $4f53: $01 $96 $01
	db   $fd                                         ; $4f56: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4f57: $f0 $a0
	dec  c                                           ; $4f59: $0d
	rla                                              ; $4f5a: $17
	ld   bc, $0aa0                                   ; $4f5b: $01 $a0 $0a
	db   $10                                         ; $4f5e: $10
	ld   bc, $01a0                                   ; $4f5f: $01 $a0 $01
	nop                                              ; $4f62: $00
	ld   [bc], a                                     ; $4f63: $02
	or   c                                           ; $4f64: $b1
	ldh  a, [$c1]                                    ; $4f65: $f0 $c1
	inc  b                                           ; $4f67: $04
	and  b                                           ; $4f68: $a0
	add  hl, bc                                      ; $4f69: $09
	ld   l, b                                        ; $4f6a: $68
	ld   bc, $06a0                                   ; $4f6b: $01 $a0 $06
	sbc  c                                           ; $4f6e: $99
	ld   bc, $01a0                                   ; $4f6f: $01 $a0 $01
	sbc  c                                           ; $4f72: $99
	ld   b, $a0                                      ; $4f73: $06 $a0
	dec  c                                           ; $4f75: $0d
	rla                                              ; $4f76: $17
	ld   bc, $0aa0                                   ; $4f77: $01 $a0 $0a
	db   $10                                         ; $4f7a: $10
	ld   bc, $01a0                                   ; $4f7b: $01 $a0 $01
	nop                                              ; $4f7e: $00
	ld   b, $c1                                      ; $4f7f: $06 $c1
	inc  b                                           ; $4f81: $04
	and  b                                           ; $4f82: $a0
	add  hl, bc                                      ; $4f83: $09
	ld   l, b                                        ; $4f84: $68
	ld   bc, $06a0                                   ; $4f85: $01 $a0 $06
	sbc  c                                           ; $4f88: $99
	ld   bc, $01a0                                   ; $4f89: $01 $a0 $01
	sbc  c                                           ; $4f8c: $99
	ld   b, $fd                                      ; $4f8d: $06 $fd
	ldh  a, [$ac]                                    ; $4f8f: $f0 $ac
	ld   bc, $0166                                   ; $4f91: $01 $66 $01
	or   d                                           ; $4f94: $b2
	ldh  a, [$fd]                                    ; $4f95: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4f97: $f0 $a0
	dec  c                                           ; $4f99: $0d
	rla                                              ; $4f9a: $17
	ld   bc, $0aa0                                   ; $4f9b: $01 $a0 $0a
	db   $10                                         ; $4f9e: $10
	ld   bc, $01a0                                   ; $4f9f: $01 $a0 $01
	nop                                              ; $4fa2: $00
	ld   b, $c1                                      ; $4fa3: $06 $c1
	inc  b                                           ; $4fa5: $04
	and  b                                           ; $4fa6: $a0
	add  hl, bc                                      ; $4fa7: $09
	ld   l, b                                        ; $4fa8: $68
	ld   bc, $06a0                                   ; $4fa9: $01 $a0 $06
	sbc  c                                           ; $4fac: $99
	ld   bc, $01a0                                   ; $4fad: $01 $a0 $01
	sbc  c                                           ; $4fb0: $99
	ld   b, $b1                                      ; $4fb1: $06 $b1
	ldh  a, [$fd]                                    ; $4fb3: $f0 $fd
	ldh  a, [$ac]                                    ; $4fb5: $f0 $ac
	ld   bc, $0166                                   ; $4fb7: $01 $66 $01
	cp   a                                           ; $4fba: $bf
	ldh  a, [$fd]                                    ; $4fbb: $f0 $fd
	ldh  a, [$ac]                                    ; $4fbd: $f0 $ac
	ld   bc, $0166                                   ; $4fbf: $01 $66 $01
	cp   a                                           ; $4fc2: $bf
	ldh  a, [$ac]                                    ; $4fc3: $f0 $ac
	ld   bc, $01aa                                   ; $4fc5: $01 $aa $01
	db   $fd                                         ; $4fc8: $fd
	ldh  a, [$c1]                                    ; $4fc9: $f0 $c1
	inc  b                                           ; $4fcb: $04
	and  b                                           ; $4fcc: $a0
	add  hl, bc                                      ; $4fcd: $09
	ld   l, b                                        ; $4fce: $68
	ld   bc, $06a0                                   ; $4fcf: $01 $a0 $06
	sbc  c                                           ; $4fd2: $99
	ld   bc, $01a0                                   ; $4fd3: $01 $a0 $01
	sbc  c                                           ; $4fd6: $99
	ld   c, $b1                                      ; $4fd7: $0e $b1
	ldh  a, [$fd]                                    ; $4fd9: $f0 $fd
	ldh  a, [$ac]                                    ; $4fdb: $f0 $ac
	ld   bc, $0166                                   ; $4fdd: $01 $66 $01
	cp   h                                           ; $4fe0: $bc
	ldh  a, [$fd]                                    ; $4fe1: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $4fe3: $f0 $a0
	dec  c                                           ; $4fe5: $0d
	rla                                              ; $4fe6: $17
	ld   bc, $0aa0                                   ; $4fe7: $01 $a0 $0a
	db   $10                                         ; $4fea: $10
	ld   bc, $01a0                                   ; $4feb: $01 $a0 $01
	nop                                              ; $4fee: $00
	ld   [bc], a                                     ; $4fef: $02
	or   a                                           ; $4ff0: $b7
	ldh  a, [$ac]                                    ; $4ff1: $f0 $ac
	ld   bc, $01aa                                   ; $4ff3: $01 $aa $01
	db   $fd                                         ; $4ff6: $fd
	ldh  a, [$c1]                                    ; $4ff7: $f0 $c1
	inc  bc                                          ; $4ff9: $03
	and  b                                           ; $4ffa: $a0
	rlca                                             ; $4ffb: $07
	ld   [bc], a                                     ; $4ffc: $02
	ld   bc, $01a0                                   ; $4ffd: $01 $a0 $01
	nop                                              ; $5000: $00
	inc  bc                                          ; $5001: $03
	or   c                                           ; $5002: $b1
	ldh  a, [$fd]                                    ; $5003: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5005: $f0 $a0
	dec  c                                           ; $5007: $0d
	rla                                              ; $5008: $17
	ld   bc, $0aa0                                   ; $5009: $01 $a0 $0a
	db   $10                                         ; $500c: $10
	ld   bc, $01a0                                   ; $500d: $01 $a0 $01
	nop                                              ; $5010: $00
	ld   [bc], a                                     ; $5011: $02
	or   e                                           ; $5012: $b3
	ldh  a, [$c1]                                    ; $5013: $f0 $c1
	inc  b                                           ; $5015: $04
	and  b                                           ; $5016: $a0
	add  hl, bc                                      ; $5017: $09
	ld   l, b                                        ; $5018: $68
	ld   bc, $06a0                                   ; $5019: $01 $a0 $06
	sbc  c                                           ; $501c: $99
	ld   bc, $01a0                                   ; $501d: $01 $a0 $01
	sbc  c                                           ; $5020: $99
	ld   b, $b0                                      ; $5021: $06 $b0
	di                                               ; $5023: $f3
	rst  $38                                         ; $5024: $ff
	rst  $38                                         ; $5025: $ff
	db   $fd                                         ; $5026: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5027: $f0 $a0
	dec  c                                           ; $5029: $0d
	rla                                              ; $502a: $17
	ld   bc, $0aa0                                   ; $502b: $01 $a0 $0a
	db   $10                                         ; $502e: $10
	ld   bc, $01a0                                   ; $502f: $01 $a0 $01
	nop                                              ; $5032: $00
	ld   [bc], a                                     ; $5033: $02
	or   d                                           ; $5034: $b2
	ldh  a, [$1f]                                    ; $5035: $f0 $1f
	inc  b                                           ; $5037: $04
	and  b                                           ; $5038: $a0
	dec  c                                           ; $5039: $0d
	rla                                              ; $503a: $17
	ld   bc, $0aa0                                   ; $503b: $01 $a0 $0a
	db   $10                                         ; $503e: $10
	ld   bc, $01a0                                   ; $503f: $01 $a0 $01
	nop                                              ; $5042: $00
	ld   b, $c1                                      ; $5043: $06 $c1
	inc  b                                           ; $5045: $04
	and  b                                           ; $5046: $a0
	add  hl, bc                                      ; $5047: $09
	ld   l, b                                        ; $5048: $68
	ld   bc, $06a0                                   ; $5049: $01 $a0 $06
	sbc  c                                           ; $504c: $99
	ld   bc, $01a0                                   ; $504d: $01 $a0 $01
	sbc  c                                           ; $5050: $99
	ld   b, $ad                                      ; $5051: $06 $ad
	nop                                              ; $5053: $00
	pop  bc                                          ; $5054: $c1
	inc  b                                           ; $5055: $04
	and  b                                           ; $5056: $a0
	add  hl, bc                                      ; $5057: $09
	ld   l, b                                        ; $5058: $68
	ld   bc, $06a0                                   ; $5059: $01 $a0 $06
	sbc  c                                           ; $505c: $99
	ld   bc, $01a0                                   ; $505d: $01 $a0 $01
	sbc  c                                           ; $5060: $99
	ld   b, $c1                                      ; $5061: $06 $c1
	inc  bc                                          ; $5063: $03
	and  b                                           ; $5064: $a0
	rlca                                             ; $5065: $07
	ld   [bc], a                                     ; $5066: $02
	ld   bc, $01a0                                   ; $5067: $01 $a0 $01
	nop                                              ; $506a: $00
	rlca                                             ; $506b: $07
	and  b                                           ; $506c: $a0
	dec  c                                           ; $506d: $0d
	rla                                              ; $506e: $17
	ld   bc, $0aa0                                   ; $506f: $01 $a0 $0a
	db   $10                                         ; $5072: $10
	ld   bc, $01a0                                   ; $5073: $01 $a0 $01
	nop                                              ; $5076: $00
	ld   b, $c1                                      ; $5077: $06 $c1
	inc  bc                                          ; $5079: $03
	and  b                                           ; $507a: $a0
	rlca                                             ; $507b: $07
	ld   [bc], a                                     ; $507c: $02
	ld   bc, $01a0                                   ; $507d: $01 $a0 $01
	nop                                              ; $5080: $00
	rlca                                             ; $5081: $07
	xor  l                                           ; $5082: $ad
	nop                                              ; $5083: $00
	db   $fd                                         ; $5084: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $5085: $f0 $a0
	dec  c                                           ; $5087: $0d
	rla                                              ; $5088: $17
	ld   bc, $0aa0                                   ; $5089: $01 $a0 $0a
	db   $10                                         ; $508c: $10
	ld   bc, $01a0                                   ; $508d: $01 $a0 $01
	nop                                              ; $5090: $00
	ld   b, $b2                                      ; $5091: $06 $b2
	ldh  a, [$1f]                                    ; $5093: $f0 $1f
	ld   [$00ad], sp                                 ; $5095: $08 $ad $00
	pop  bc                                          ; $5098: $c1
	inc  b                                           ; $5099: $04
	and  b                                           ; $509a: $a0
	add  hl, bc                                      ; $509b: $09
	ld   l, b                                        ; $509c: $68
	ld   bc, $06a0                                   ; $509d: $01 $a0 $06
	sbc  c                                           ; $50a0: $99
	ld   bc, $01a0                                   ; $50a1: $01 $a0 $01
	sbc  c                                           ; $50a4: $99
	ld   b, $fd                                      ; $50a5: $06 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $50a7: $f0 $a0
	dec  c                                           ; $50a9: $0d
	rla                                              ; $50aa: $17
	ld   bc, $0aa0                                   ; $50ab: $01 $a0 $0a
	db   $10                                         ; $50ae: $10
	ld   bc, $01a0                                   ; $50af: $01 $a0 $01
	nop                                              ; $50b2: $00
	ld   b, $b1                                      ; $50b3: $06 $b1
	ldh  a, [$c1]                                    ; $50b5: $f0 $c1
	inc  b                                           ; $50b7: $04
	and  b                                           ; $50b8: $a0
	add  hl, bc                                      ; $50b9: $09
	ld   l, b                                        ; $50ba: $68

jr_0fc_50bb:
	ld   bc, $06a0                                   ; $50bb: $01 $a0 $06
	sbc  c                                           ; $50be: $99
	ld   bc, $01a0                                   ; $50bf: $01 $a0 $01
	sbc  c                                           ; $50c2: $99
	ld   b, $ad                                      ; $50c3: $06 $ad

jr_0fc_50c5:
	nop                                              ; $50c5: $00
	ld   a, [bc]                                     ; $50c6: $0a
	nop                                              ; $50c7: $00
	add  hl, bc                                      ; $50c8: $09
	nop                                              ; $50c9: $00
	db   $fd                                         ; $50ca: $fd
	di                                               ; $50cb: $f3
	and  d                                           ; $50cc: $a2
	nop                                              ; $50cd: $00
	and  e                                           ; $50ce: $a3
	inc  h                                           ; $50cf: $24
	rst  ToBoot                                         ; $50d0: $c7
	ld   [hl], b                                     ; $50d1: $70
	rra                                              ; $50d2: $1f
	db   $10                                         ; $50d3: $10
	and  b                                           ; $50d4: $a0
	add  hl, bc                                      ; $50d5: $09
	inc  h                                           ; $50d6: $24
	jr   nz, @+$21                                   ; $50d7: $20 $1f

	db   $10                                         ; $50d9: $10
	ld   [hl+], a                                    ; $50da: $22
	jr   nz, @+$21                                   ; $50db: $20 $1f

	db   $10                                         ; $50dd: $10
	ld   hl, $1f20                                   ; $50de: $21 $20 $1f
	db   $10                                         ; $50e1: $10
	jr   nz, @+$5a                                   ; $50e2: $20 $58

	rra                                              ; $50e4: $1f
	db   $10                                         ; $50e5: $10
	add  hl, hl                                      ; $50e6: $29
	jr   nz, jr_0fc_5108                             ; $50e7: $20 $1f

	db   $10                                         ; $50e9: $10
	daa                                              ; $50ea: $27
	jr   nz, jr_0fc_510c                             ; $50eb: $20 $1f

	db   $10                                         ; $50ed: $10
	ld   h, $20                                      ; $50ee: $26 $20
	rra                                              ; $50f0: $1f
	db   $10                                         ; $50f1: $10
	daa                                              ; $50f2: $27
	ld   c, h                                        ; $50f3: $4c
	rra                                              ; $50f4: $1f
	db   $10                                         ; $50f5: $10
	add  hl, hl                                      ; $50f6: $29
	jr   nz, @+$21                                   ; $50f7: $20 $1f

	db   $10                                         ; $50f9: $10
	daa                                              ; $50fa: $27
	jr   nz, jr_0fc_511c                             ; $50fb: $20 $1f

	db   $10                                         ; $50fd: $10
	ld   h, $20                                      ; $50fe: $26 $20
	rra                                              ; $5100: $1f
	db   $10                                         ; $5101: $10
	inc  h                                           ; $5102: $24
	ld   d, b                                        ; $5103: $50
	and  d                                           ; $5104: $a2
	ld   b, b                                        ; $5105: $40
	rra                                              ; $5106: $1f
	db   $10                                         ; $5107: $10

jr_0fc_5108:
	dec  sp                                          ; $5108: $3b
	ld   [$0839], sp                                 ; $5109: $08 $39 $08

jr_0fc_510c:
	scf                                              ; $510c: $37
	ld   [$0834], sp                                 ; $510d: $08 $34 $08
	ld   [hl-], a                                    ; $5110: $32
	ld   [bc], a                                     ; $5111: $02
	inc  [hl]                                        ; $5112: $34
	ld   [bc], a                                     ; $5113: $02
	ld   [hl-], a                                    ; $5114: $32
	inc  c                                           ; $5115: $0c
	daa                                              ; $5116: $27
	jr   nz, jr_0fc_50bb                             ; $5117: $20 $a2

	ld   h, b                                        ; $5119: $60
	rra                                              ; $511a: $1f
	db   $10                                         ; $511b: $10

jr_0fc_511c:
	ld   h, $20                                      ; $511c: $26 $20
	rra                                              ; $511e: $1f
	db   $10                                         ; $511f: $10
	daa                                              ; $5120: $27
	jr   nz, jr_0fc_50c5                             ; $5121: $20 $a2

	ld   b, b                                        ; $5123: $40
	inc  [hl]                                        ; $5124: $34
	db   $10                                         ; $5125: $10
	dec  hl                                          ; $5126: $2b
	db   $10                                         ; $5127: $10
	ld   [hl-], a                                    ; $5128: $32
	db   $10                                         ; $5129: $10
	add  hl, sp                                      ; $512a: $39
	ld   [bc], a                                     ; $512b: $02
	dec  sp                                          ; $512c: $3b
	ld   [bc], a                                     ; $512d: $02
	add  hl, sp                                      ; $512e: $39
	inc  c                                           ; $512f: $0c
	add  hl, hl                                      ; $5130: $29
	jr   nz, jr_0fc_5175                             ; $5131: $20 $42

	ld   [bc], a                                     ; $5133: $02
	ld   b, h                                        ; $5134: $44
	ld   [bc], a                                     ; $5135: $02
	ld   b, d                                        ; $5136: $42
	inc  c                                           ; $5137: $0c
	daa                                              ; $5138: $27
	jr   @+$43                                       ; $5139: $18 $41

	ld   [$083b], sp                                 ; $513b: $08 $3b $08
	add  hl, sp                                      ; $513e: $39
	ld   [$1037], sp                                 ; $513f: $08 $37 $10
	inc  [hl]                                        ; $5142: $34
	db   $10                                         ; $5143: $10
	ld   [hl-], a                                    ; $5144: $32
	ld   [bc], a                                     ; $5145: $02
	inc  [hl]                                        ; $5146: $34
	ld   [bc], a                                     ; $5147: $02
	ld   [hl-], a                                    ; $5148: $32
	inc  c                                           ; $5149: $0c
	add  hl, hl                                      ; $514a: $29
	ld   [$082b], sp                                 ; $514b: $08 $2b $08
	ld   [hl-], a                                    ; $514e: $32
	ld   [$0837], sp                                 ; $514f: $08 $37 $08
	ld   [hl], $08                                   ; $5152: $36 $08
	ld   sp, $2b08                                   ; $5154: $31 $08 $2b
	ld   [$0829], sp                                 ; $5157: $08 $29 $08
	and  d                                           ; $515a: $a2
	ld   h, b                                        ; $515b: $60
	dec  hl                                          ; $515c: $2b
	jr   nz, jr_0fc_5183                             ; $515d: $20 $24

	jr   nz, jr_0fc_5180                             ; $515f: $20 $1f

	db   $10                                         ; $5161: $10
	jr   nz, jr_0fc_51ac                             ; $5162: $20 $48

	rra                                              ; $5164: $1f
	db   $10                                         ; $5165: $10
	inc  h                                           ; $5166: $24
	jr   nz, jr_0fc_5188                             ; $5167: $20 $1f

	db   $10                                         ; $5169: $10
	ld   [hl+], a                                    ; $516a: $22
	jr   nz, @+$21                                   ; $516b: $20 $1f

	db   $10                                         ; $516d: $10
	ld   hl, $1f20                                   ; $516e: $21 $20 $1f
	db   $10                                         ; $5171: $10
	jr   nz, jr_0fc_51bc                             ; $5172: $20 $48

	and  d                                           ; $5174: $a2

jr_0fc_5175:
	ld   b, b                                        ; $5175: $40
	and  d                                           ; $5176: $a2
	ld   [bc], a                                     ; $5177: $02
	and  b                                           ; $5178: $a0
	inc  b                                           ; $5179: $04
	db   $fd                                         ; $517a: $fd
	ldh  a, [rAUDENA]                                ; $517b: $f0 $26
	ld   [bc], a                                     ; $517d: $02
	dec  hl                                          ; $517e: $2b
	ld   [bc], a                                     ; $517f: $02

jr_0fc_5180:
	cp   e                                           ; $5180: $bb
	ldh  a, [$fd]                                    ; $5181: $f0 $fd

jr_0fc_5183:
	pop  af                                          ; $5183: $f1
	db   $fd                                         ; $5184: $fd
	ldh  a, [rAUDVOL]                                ; $5185: $f0 $24
	ld   [bc], a                                     ; $5187: $02

jr_0fc_5188:
	dec  hl                                          ; $5188: $2b
	ld   [bc], a                                     ; $5189: $02
	cp   e                                           ; $518a: $bb
	ldh  a, [$b2]                                    ; $518b: $f0 $b2
	pop  af                                          ; $518d: $f1
	db   $fd                                         ; $518e: $fd
	ldh  a, [rAUDENA]                                ; $518f: $f0 $26
	ld   [bc], a                                     ; $5191: $02
	dec  hl                                          ; $5192: $2b
	ld   [bc], a                                     ; $5193: $02
	cp   e                                           ; $5194: $bb
	ldh  a, [$fd]                                    ; $5195: $f0 $fd
	ldh  a, [rAUDVOL]                                ; $5197: $f0 $24
	ld   [bc], a                                     ; $5199: $02
	dec  hl                                          ; $519a: $2b
	ld   [bc], a                                     ; $519b: $02
	cp   e                                           ; $519c: $bb
	ldh  a, [$fd]                                    ; $519d: $f0 $fd
	ldh  a, [rAUDVOL]                                ; $519f: $f0 $24
	ld   [bc], a                                     ; $51a1: $02
	dec  hl                                          ; $51a2: $2b
	ld   [bc], a                                     ; $51a3: $02
	cp   a                                           ; $51a4: $bf

jr_0fc_51a5:
	ldh  a, [hScriptOpcodeParams]                                    ; $51a5: $f0 $a0
	ld   b, $24                                      ; $51a7: $06 $24
	ld   [bc], a                                     ; $51a9: $02
	dec  hl                                          ; $51aa: $2b
	ld   [bc], a                                     ; $51ab: $02

jr_0fc_51ac:
	inc  h                                           ; $51ac: $24
	ld   [bc], a                                     ; $51ad: $02
	and  b                                           ; $51ae: $a0
	inc  b                                           ; $51af: $04
	dec  hl                                          ; $51b0: $2b
	inc  bc                                          ; $51b1: $03
	inc  h                                           ; $51b2: $24
	inc  bc                                          ; $51b3: $03
	dec  hl                                          ; $51b4: $2b
	inc  bc                                          ; $51b5: $03
	and  b                                           ; $51b6: $a0
	inc  bc                                          ; $51b7: $03
	inc  h                                           ; $51b8: $24
	inc  bc                                          ; $51b9: $03
	dec  hl                                          ; $51ba: $2b
	inc  bc                                          ; $51bb: $03

jr_0fc_51bc:
	inc  h                                           ; $51bc: $24
	inc  bc                                          ; $51bd: $03
	and  b                                           ; $51be: $a0
	ld   [bc], a                                     ; $51bf: $02
	dec  hl                                          ; $51c0: $2b
	inc  b                                           ; $51c1: $04
	inc  h                                           ; $51c2: $24
	inc  b                                           ; $51c3: $04
	dec  hl                                          ; $51c4: $2b
	inc  b                                           ; $51c5: $04
	and  b                                           ; $51c6: $a0
	ld   bc, $0624                                   ; $51c7: $01 $24 $06

jr_0fc_51ca:
	dec  hl                                          ; $51ca: $2b
	ld   d, $a2                                      ; $51cb: $16 $a2
	ld   h, b                                        ; $51cd: $60
	add  hl, hl                                      ; $51ce: $29
	jr   nz, @-$5c                                   ; $51cf: $20 $a2

	nop                                              ; $51d1: $00
	rra                                              ; $51d2: $1f
	db   $10                                         ; $51d3: $10
	and  b                                           ; $51d4: $a0
	add  hl, bc                                      ; $51d5: $09
	ld   h, $20                                      ; $51d6: $26 $20
	rra                                              ; $51d8: $1f
	db   $10                                         ; $51d9: $10
	add  hl, hl                                      ; $51da: $29
	jr   nz, jr_0fc_51fc                             ; $51db: $20 $1f

	db   $10                                         ; $51dd: $10
	ld   h, $38                                      ; $51de: $26 $38
	or   b                                           ; $51e0: $b0
	di                                               ; $51e1: $f3
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	ld   a, [bc]                                     ; $51e4: $0a
	nop                                              ; $51e5: $00
	add  hl, bc                                      ; $51e6: $09
	nop                                              ; $51e7: $00
	db   $fd                                         ; $51e8: $fd
	di                                               ; $51e9: $f3
	and  d                                           ; $51ea: $a2
	nop                                              ; $51eb: $00
	and  e                                           ; $51ec: $a3
	inc  h                                           ; $51ed: $24
	and  b                                           ; $51ee: $a0
	dec  c                                           ; $51ef: $0d
	rst  ToBoot                                         ; $51f0: $c7
	ld   [hl], b                                     ; $51f1: $70
	rra                                              ; $51f2: $1f
	db   $10                                         ; $51f3: $10
	add  hl, hl                                      ; $51f4: $29
	jr   nz, @+$21                                   ; $51f5: $20 $1f

	db   $10                                         ; $51f7: $10
	daa                                              ; $51f8: $27
	jr   nz, @+$21                                   ; $51f9: $20 $1f

	db   $10                                         ; $51fb: $10

jr_0fc_51fc:
	ld   h, $20                                      ; $51fc: $26 $20
	rra                                              ; $51fe: $1f
	db   $10                                         ; $51ff: $10
	daa                                              ; $5200: $27
	jr   c, jr_0fc_51ca                              ; $5201: $38 $c7

	jr   nc, jr_0fc_51a5                             ; $5203: $30 $a0

	dec  c                                           ; $5205: $0d
	inc  [hl]                                        ; $5206: $34
	db   $10                                         ; $5207: $10
	scf                                              ; $5208: $37
	db   $10                                         ; $5209: $10
	ld   [hl-], a                                    ; $520a: $32
	ld   [bc], a                                     ; $520b: $02
	inc  [hl]                                        ; $520c: $34
	ld   [bc], a                                     ; $520d: $02
	rst  ToBoot                                         ; $520e: $c7
	ld   d, b                                        ; $520f: $50
	ld   [hl-], a                                    ; $5210: $32
	inc  e                                           ; $5211: $1c
	rst  ToBoot                                         ; $5212: $c7
	jr   nc, jr_0fc_5249                             ; $5213: $30 $34

	ld   [$0837], sp                                 ; $5215: $08 $37 $08
	add  hl, sp                                      ; $5218: $39
	jr   jr_0fc_5252                                 ; $5219: $18 $37

	ld   [$0839], sp                                 ; $521b: $08 $39 $08
	ld   b, d                                        ; $521e: $42
	ld   [$083b], sp                                 ; $521f: $08 $3b $08
	ld   [hl], $08                                   ; $5222: $36 $08
	add  hl, sp                                      ; $5224: $39
	jr   @+$3d                                       ; $5225: $18 $3b

	ld   [$0837], sp                                 ; $5227: $08 $37 $08
	ld   [hl-], a                                    ; $522a: $32
	ld   [$50c7], sp                                 ; $522b: $08 $c7 $50
	inc  [hl]                                        ; $522e: $34
	inc  a                                           ; $522f: $3c
	rst  ToBoot                                         ; $5230: $c7
	jr   nc, jr_0fc_5267                             ; $5231: $30 $34

	ld   [$0837], sp                                 ; $5233: $08 $37 $08
	ld   [hl-], a                                    ; $5236: $32
	ld   [bc], a                                     ; $5237: $02
	inc  [hl]                                        ; $5238: $34
	ld   [bc], a                                     ; $5239: $02
	ld   [hl-], a                                    ; $523a: $32
	inc  e                                           ; $523b: $1c
	inc  [hl]                                        ; $523c: $34
	ld   [$082b], sp                                 ; $523d: $08 $2b $08
	add  hl, hl                                      ; $5240: $29
	jr   @+$34                                       ; $5241: $18 $32

	jr   jr_0fc_5277                                 ; $5243: $18 $32

	ld   [$0831], sp                                 ; $5245: $08 $31 $08
	dec  hl                                          ; $5248: $2b

jr_0fc_5249:
	db   $10                                         ; $5249: $10
	add  hl, hl                                      ; $524a: $29
	db   $10                                         ; $524b: $10
	rst  ToBoot                                         ; $524c: $c7
	ld   [hl], b                                     ; $524d: $70
	dec  hl                                          ; $524e: $2b
	ld   d, b                                        ; $524f: $50
	rst  ToBoot                                         ; $5250: $c7
	ld   a, a                                        ; $5251: $7f

jr_0fc_5252:
	and  d                                           ; $5252: $a2
	ld   bc, $24a3                                   ; $5253: $01 $a3 $24
	inc  [hl]                                        ; $5256: $34
	ld   [$0837], sp                                 ; $5257: $08 $37 $08
	ld   [hl-], a                                    ; $525a: $32
	ld   [bc], a                                     ; $525b: $02
	inc  [hl]                                        ; $525c: $34
	ld   [bc], a                                     ; $525d: $02
	ld   [hl-], a                                    ; $525e: $32
	inc  e                                           ; $525f: $1c
	inc  [hl]                                        ; $5260: $34
	ld   [$0837], sp                                 ; $5261: $08 $37 $08
	add  hl, sp                                      ; $5264: $39
	jr   @+$39                                       ; $5265: $18 $37

jr_0fc_5267:
	ld   [$0839], sp                                 ; $5267: $08 $39 $08
	ld   b, d                                        ; $526a: $42
	ld   [$083b], sp                                 ; $526b: $08 $3b $08
	ld   [hl], $08                                   ; $526e: $36 $08
	add  hl, sp                                      ; $5270: $39
	jr   jr_0fc_52ae                                 ; $5271: $18 $3b

	ld   [$0837], sp                                 ; $5273: $08 $37 $08
	ld   [hl-], a                                    ; $5276: $32

jr_0fc_5277:
	ld   [$3c34], sp                                 ; $5277: $08 $34 $3c
	and  b                                           ; $527a: $a0
	ld   bc, $0434                                   ; $527b: $01 $34 $04
	and  b                                           ; $527e: $a0
	dec  c                                           ; $527f: $0d
	inc  [hl]                                        ; $5280: $34
	ld   [$0837], sp                                 ; $5281: $08 $37 $08
	ld   [hl-], a                                    ; $5284: $32
	ld   [bc], a                                     ; $5285: $02
	inc  [hl]                                        ; $5286: $34
	ld   [bc], a                                     ; $5287: $02

jr_0fc_5288:
	ld   [hl-], a                                    ; $5288: $32
	inc  e                                           ; $5289: $1c
	inc  [hl]                                        ; $528a: $34
	ld   [$082b], sp                                 ; $528b: $08 $2b $08
	add  hl, hl                                      ; $528e: $29
	jr   jr_0fc_52c3                                 ; $528f: $18 $32

	jr   jr_0fc_52c5                                 ; $5291: $18 $32

	ld   [$0831], sp                                 ; $5293: $08 $31 $08
	dec  hl                                          ; $5296: $2b
	db   $10                                         ; $5297: $10
	add  hl, hl                                      ; $5298: $29
	db   $10                                         ; $5299: $10
	dec  hl                                          ; $529a: $2b
	ld   c, b                                        ; $529b: $48
	and  b                                           ; $529c: $a0
	ld   bc, $182b                                   ; $529d: $01 $2b $18
	and  d                                           ; $52a0: $a2
	nop                                              ; $52a1: $00
	and  e                                           ; $52a2: $a3
	inc  h                                           ; $52a3: $24
	rst  ToBoot                                         ; $52a4: $c7
	ld   [hl], b                                     ; $52a5: $70
	rra                                              ; $52a6: $1f
	db   $10                                         ; $52a7: $10
	and  b                                           ; $52a8: $a0
	dec  c                                           ; $52a9: $0d
	ld   h, $20                                      ; $52aa: $26 $20
	rra                                              ; $52ac: $1f
	db   $10                                         ; $52ad: $10

jr_0fc_52ae:
	daa                                              ; $52ae: $27
	ld   c, b                                        ; $52af: $48
	rra                                              ; $52b0: $1f
	db   $10                                         ; $52b1: $10
	add  hl, hl                                      ; $52b2: $29
	jr   nz, @+$21                                   ; $52b3: $20 $1f

	db   $10                                         ; $52b5: $10
	daa                                              ; $52b6: $27
	jr   nz, @+$21                                   ; $52b7: $20 $1f

	db   $10                                         ; $52b9: $10
	ld   h, $20                                      ; $52ba: $26 $20
	rra                                              ; $52bc: $1f
	db   $10                                         ; $52bd: $10
	daa                                              ; $52be: $27
	jr   c, jr_0fc_5288                              ; $52bf: $38 $c7

	ld   b, b                                        ; $52c1: $40
	and  b                                           ; $52c2: $a0

jr_0fc_52c3:
	dec  c                                           ; $52c3: $0d
	inc  [hl]                                        ; $52c4: $34

jr_0fc_52c5:
	ld   [$0836], sp                                 ; $52c5: $08 $36 $08
	scf                                              ; $52c8: $37
	ld   [$0836], sp                                 ; $52c9: $08 $36 $08
	inc  [hl]                                        ; $52cc: $34
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $52cd: $08 $32 $08
	inc  [hl]                                        ; $52d0: $34
	jr   @+$34                                       ; $52d1: $18 $32

	ld   [$182b], sp                                 ; $52d3: $08 $2b $18
	add  hl, hl                                      ; $52d6: $29

jr_0fc_52d7:
	ld   [$082b], sp                                 ; $52d7: $08 $2b $08
	add  hl, hl                                      ; $52da: $29
	ld   [$0827], sp                                 ; $52db: $08 $27 $08
	inc  h                                           ; $52de: $24
	ld   [$3027], sp                                 ; $52df: $08 $27 $30
	rst  ToBoot                                         ; $52e2: $c7
	ld   a, a                                        ; $52e3: $7f
	and  d                                           ; $52e4: $a2
	ld   bc, $24a3                                   ; $52e5: $01 $a3 $24
	inc  [hl]                                        ; $52e8: $34
	ld   [$0836], sp                                 ; $52e9: $08 $36 $08
	scf                                              ; $52ec: $37
	ld   [$0836], sp                                 ; $52ed: $08 $36 $08
	inc  [hl]                                        ; $52f0: $34
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $52f1: $08 $32 $08
	inc  [hl]                                        ; $52f4: $34
	jr   jr_0fc_5329                                 ; $52f5: $18 $32

	ld   [$182b], sp                                 ; $52f7: $08 $2b $18
	add  hl, hl                                      ; $52fa: $29
	ld   [$082b], sp                                 ; $52fb: $08 $2b $08
	add  hl, hl                                      ; $52fe: $29
	ld   [$0827], sp                                 ; $52ff: $08 $27 $08
	inc  h                                           ; $5302: $24
	ld   [$5022], sp                                 ; $5303: $08 $22 $50
	inc  h                                           ; $5306: $24
	ret  nc                                          ; $5307: $d0

	and  b                                           ; $5308: $a0
	ld   bc, $0824                                   ; $5309: $01 $24 $08
	or   b                                           ; $530c: $b0
	di                                               ; $530d: $f3
	rst  $38                                         ; $530e: $ff
	rst  $38                                         ; $530f: $ff
	ld   a, [bc]                                     ; $5310: $0a
	ld   b, b                                        ; $5311: $40
	ld   [bc], a                                     ; $5312: $02
	inc  bc                                          ; $5313: $03
	db   $fd                                         ; $5314: $fd
	di                                               ; $5315: $f3
	and  b                                           ; $5316: $a0
	ld   [bc], a                                     ; $5317: $02
	and  e                                           ; $5318: $a3
	ld   h, $a2                                      ; $5319: $26 $a2
	ld   b, b                                        ; $531b: $40
	and  b                                           ; $531c: $a0
	inc  b                                           ; $531d: $04
	rla                                              ; $531e: $17
	db   $10                                         ; $531f: $10
	and  d                                           ; $5320: $a2
	ld   h, b                                        ; $5321: $60
	dec  hl                                          ; $5322: $2b
	jr   nz, @-$5c                                   ; $5323: $20 $a2

	ld   b, b                                        ; $5325: $40
	jr   nz, jr_0fc_5338                             ; $5326: $20 $10

	and  d                                           ; $5328: $a2

jr_0fc_5329:
	ld   h, b                                        ; $5329: $60
	add  hl, hl                                      ; $532a: $29
	jr   nz, @-$5c                                   ; $532b: $20 $a2

	ld   b, b                                        ; $532d: $40
	ld   [hl+], a                                    ; $532e: $22
	db   $10                                         ; $532f: $10
	and  d                                           ; $5330: $a2
	ld   h, b                                        ; $5331: $60
	add  hl, hl                                      ; $5332: $29
	jr   nz, jr_0fc_52d7                             ; $5333: $20 $a2

	ld   b, b                                        ; $5335: $40
	inc  h                                           ; $5336: $24

jr_0fc_5337:
	db   $10                                         ; $5337: $10

jr_0fc_5338:
	and  d                                           ; $5338: $a2
	ld   h, b                                        ; $5339: $60
	dec  hl                                          ; $533a: $2b
	ld   e, b                                        ; $533b: $58
	xor  h                                           ; $533c: $ac
	ld   bc, $0110                                   ; $533d: $01 $10 $01
	and  d                                           ; $5340: $a2
	ld   b, b                                        ; $5341: $40
	ld   [hl+], a                                    ; $5342: $22
	db   $10                                         ; $5343: $10
	and  d                                           ; $5344: $a2
	ld   h, b                                        ; $5345: $60
	ld   sp, $a220                                   ; $5346: $31 $20 $a2
	ld   b, b                                        ; $5349: $40
	inc  h                                           ; $534a: $24
	db   $10                                         ; $534b: $10
	and  d                                           ; $534c: $a2
	ld   h, b                                        ; $534d: $60
	jr   nc, jr_0fc_539c                             ; $534e: $30 $4c

	xor  h                                           ; $5350: $ac
	ld   bc, $0110                                   ; $5351: $01 $10 $01
	and  d                                           ; $5354: $a2
	ld   b, b                                        ; $5355: $40
	ld   [hl+], a                                    ; $5356: $22

jr_0fc_5357:
	db   $10                                         ; $5357: $10
	and  d                                           ; $5358: $a2
	ld   h, b                                        ; $5359: $60
	ld   sp, $a220                                   ; $535a: $31 $20 $a2
	ld   b, b                                        ; $535d: $40
	jr   nz, @+$12                                   ; $535e: $20 $10

	and  d                                           ; $5360: $a2
	ld   a, b                                        ; $5361: $78
	daa                                              ; $5362: $27
	ld   d, b                                        ; $5363: $50
	xor  h                                           ; $5364: $ac
	ld   bc, $0110                                   ; $5365: $01 $10 $01
	and  d                                           ; $5368: $a2
	ld   b, b                                        ; $5369: $40
	ld   [hl+], a                                    ; $536a: $22
	db   $10                                         ; $536b: $10
	and  d                                           ; $536c: $a2
	ld   h, b                                        ; $536d: $60
	ld   sp, $a220                                   ; $536e: $31 $20 $a2
	ld   b, b                                        ; $5371: $40
	inc  h                                           ; $5372: $24
	db   $10                                         ; $5373: $10
	and  d                                           ; $5374: $a2
	ld   h, b                                        ; $5375: $60
	jr   nc, jr_0fc_53c8                             ; $5376: $30 $50

	xor  h                                           ; $5378: $ac
	ld   bc, $0110                                   ; $5379: $01 $10 $01
	and  d                                           ; $537c: $a2
	ld   b, b                                        ; $537d: $40
	ld   [hl+], a                                    ; $537e: $22

jr_0fc_537f:
	db   $10                                         ; $537f: $10
	and  d                                           ; $5380: $a2
	ld   h, b                                        ; $5381: $60
	add  hl, hl                                      ; $5382: $29
	jr   nz, @-$5c                                   ; $5383: $20 $a2

	ld   b, b                                        ; $5385: $40
	jr   nz, jr_0fc_5398                             ; $5386: $20 $10

	and  d                                           ; $5388: $a2
	ld   h, b                                        ; $5389: $60
	daa                                              ; $538a: $27
	ld   d, b                                        ; $538b: $50
	and  d                                           ; $538c: $a2
	ld   b, b                                        ; $538d: $40
	inc  h                                           ; $538e: $24

jr_0fc_538f:
	db   $10                                         ; $538f: $10
	and  d                                           ; $5390: $a2
	ld   h, b                                        ; $5391: $60
	add  hl, hl                                      ; $5392: $29
	jr   nz, jr_0fc_5337                             ; $5393: $20 $a2

	ld   b, b                                        ; $5395: $40
	ld   [hl+], a                                    ; $5396: $22

jr_0fc_5397:
	db   $10                                         ; $5397: $10

jr_0fc_5398:
	and  d                                           ; $5398: $a2
	ld   h, b                                        ; $5399: $60
	dec  hl                                          ; $539a: $2b
	ld   c, b                                        ; $539b: $48

jr_0fc_539c:
	and  d                                           ; $539c: $a2
	ld   b, b                                        ; $539d: $40
	rla                                              ; $539e: $17

jr_0fc_539f:
	db   $10                                         ; $539f: $10
	and  d                                           ; $53a0: $a2
	ld   h, b                                        ; $53a1: $60
	dec  hl                                          ; $53a2: $2b
	jr   nz, @-$5c                                   ; $53a3: $20 $a2

	ld   b, b                                        ; $53a5: $40
	jr   nz, jr_0fc_53b8                             ; $53a6: $20 $10

	and  d                                           ; $53a8: $a2
	ld   h, b                                        ; $53a9: $60
	add  hl, hl                                      ; $53aa: $29
	jr   nz, @-$5c                                   ; $53ab: $20 $a2

	ld   b, b                                        ; $53ad: $40
	ld   [hl+], a                                    ; $53ae: $22
	db   $10                                         ; $53af: $10
	and  d                                           ; $53b0: $a2
	ld   h, b                                        ; $53b1: $60
	add  hl, hl                                      ; $53b2: $29
	jr   nz, jr_0fc_5357                             ; $53b3: $20 $a2

	ld   b, b                                        ; $53b5: $40
	inc  h                                           ; $53b6: $24

jr_0fc_53b7:
	db   $10                                         ; $53b7: $10

jr_0fc_53b8:
	and  d                                           ; $53b8: $a2
	ld   h, b                                        ; $53b9: $60
	dec  hl                                          ; $53ba: $2b
	ld   c, b                                        ; $53bb: $48
	and  d                                           ; $53bc: $a2
	ld   b, b                                        ; $53bd: $40
	inc  d                                           ; $53be: $14
	db   $10                                         ; $53bf: $10
	and  d                                           ; $53c0: $a2
	ld   h, b                                        ; $53c1: $60
	dec  hl                                          ; $53c2: $2b
	jr   nz, @-$5c                                   ; $53c3: $20 $a2

	ld   b, b                                        ; $53c5: $40
	ld   [de], a                                     ; $53c6: $12
	db   $10                                         ; $53c7: $10

jr_0fc_53c8:
	and  d                                           ; $53c8: $a2
	ld   h, b                                        ; $53c9: $60
	add  hl, hl                                      ; $53ca: $29

jr_0fc_53cb:
	jr   nz, @-$5c                                   ; $53cb: $20 $a2

	ld   b, b                                        ; $53cd: $40
	db   $10                                         ; $53ce: $10
	db   $10                                         ; $53cf: $10
	and  d                                           ; $53d0: $a2
	ld   h, b                                        ; $53d1: $60
	daa                                              ; $53d2: $27
	jr   nz, @-$5c                                   ; $53d3: $20 $a2

	ld   b, b                                        ; $53d5: $40
	ld   [de], a                                     ; $53d6: $12
	db   $10                                         ; $53d7: $10
	and  d                                           ; $53d8: $a2
	ld   h, b                                        ; $53d9: $60
	add  hl, hl                                      ; $53da: $29
	jr   nz, jr_0fc_537f                             ; $53db: $20 $a2

	ld   b, b                                        ; $53dd: $40

jr_0fc_53de:
	inc  d                                           ; $53de: $14
	db   $10                                         ; $53df: $10
	and  d                                           ; $53e0: $a2
	ld   h, b                                        ; $53e1: $60
	dec  hl                                          ; $53e2: $2b
	jr   nz, @-$5c                                   ; $53e3: $20 $a2

	ld   b, b                                        ; $53e5: $40
	ld   [de], a                                     ; $53e6: $12
	db   $10                                         ; $53e7: $10

jr_0fc_53e8:
	and  d                                           ; $53e8: $a2
	ld   h, b                                        ; $53e9: $60
	add  hl, hl                                      ; $53ea: $29
	jr   nz, jr_0fc_538f                             ; $53eb: $20 $a2

	ld   b, b                                        ; $53ed: $40
	db   $10                                         ; $53ee: $10
	db   $10                                         ; $53ef: $10
	and  d                                           ; $53f0: $a2
	ld   h, b                                        ; $53f1: $60
	daa                                              ; $53f2: $27
	jr   nz, jr_0fc_5397                             ; $53f3: $20 $a2

	ld   b, b                                        ; $53f5: $40
	ld   [de], a                                     ; $53f6: $12
	db   $10                                         ; $53f7: $10
	and  d                                           ; $53f8: $a2
	ld   h, b                                        ; $53f9: $60
	add  hl, hl                                      ; $53fa: $29
	jr   nc, jr_0fc_539f                             ; $53fb: $30 $a2

	ld   b, b                                        ; $53fd: $40
	inc  h                                           ; $53fe: $24
	db   $10                                         ; $53ff: $10
	and  d                                           ; $5400: $a2
	ld   h, b                                        ; $5401: $60
	dec  hl                                          ; $5402: $2b
	jr   nz, @-$5c                                   ; $5403: $20 $a2

	ld   b, b                                        ; $5405: $40
	dec  de                                          ; $5406: $1b
	db   $10                                         ; $5407: $10
	and  d                                           ; $5408: $a2
	ld   h, b                                        ; $5409: $60
	ld   sp, $a220                                   ; $540a: $31 $20 $a2
	ld   b, b                                        ; $540d: $40
	inc  h                                           ; $540e: $24
	db   $10                                         ; $540f: $10
	and  d                                           ; $5410: $a2
	ld   h, b                                        ; $5411: $60
	dec  hl                                          ; $5412: $2b
	jr   nz, jr_0fc_53b7                             ; $5413: $20 $a2

	ld   b, b                                        ; $5415: $40
	dec  de                                          ; $5416: $1b
	db   $10                                         ; $5417: $10
	and  d                                           ; $5418: $a2
	ld   h, b                                        ; $5419: $60
	ld   sp, $b038                                   ; $541a: $31 $38 $b0
	di                                               ; $541d: $f3
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	and  d                                           ; $5420: $a2
	ld   b, b                                        ; $5421: $40
	rla                                              ; $5422: $17
	db   $10                                         ; $5423: $10
	and  d                                           ; $5424: $a2
	ld   h, b                                        ; $5425: $60
	inc  [hl]                                        ; $5426: $34
	jr   nz, jr_0fc_53cb                             ; $5427: $20 $a2

	ld   b, b                                        ; $5429: $40
	jr   nz, jr_0fc_543c                             ; $542a: $20 $10

	and  d                                           ; $542c: $a2
	ld   h, b                                        ; $542d: $60
	ld   [hl-], a                                    ; $542e: $32
	jr   nz, jr_0fc_53de                             ; $542f: $20 $ad

	nop                                              ; $5431: $00
	ld   a, [bc]                                     ; $5432: $0a
	nop                                              ; $5433: $00
	add  hl, bc                                      ; $5434: $09
	nop                                              ; $5435: $00
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	add  hl, bc                                      ; $5438: $09
	nop                                              ; $5439: $00
	add  hl, bc                                      ; $543a: $09
	nop                                              ; $543b: $00

jr_0fc_543c:
	rra                                              ; $543c: $1f
	jr   nz, jr_0fc_543c                             ; $543d: $20 $fd

	di                                               ; $543f: $f3
	and  d                                           ; $5440: $a2
	nop                                              ; $5441: $00
	rst  ToBoot                                         ; $5442: $c7
	jr   nz, jr_0fc_53e8                             ; $5443: $20 $a3

	inc  d                                           ; $5445: $14
	rra                                              ; $5446: $1f
	db   $10                                         ; $5447: $10
	and  b                                           ; $5448: $a0
	ld   [$0422], sp                                 ; $5449: $08 $22 $04
	and  b                                           ; $544c: $a0
	inc  bc                                          ; $544d: $03
	ld   [hl+], a                                    ; $544e: $22
	ld   [bc], a                                     ; $544f: $02
	rra                                              ; $5450: $1f
	ld   [bc], a                                     ; $5451: $02
	and  b                                           ; $5452: $a0
	ld   [$0422], sp                                 ; $5453: $08 $22 $04
	and  b                                           ; $5456: $a0
	inc  bc                                          ; $5457: $03
	ld   [hl+], a                                    ; $5458: $22
	ld   [bc], a                                     ; $5459: $02
	rra                                              ; $545a: $1f
	ld   [bc], a                                     ; $545b: $02
	and  b                                           ; $545c: $a0
	ld   [$1024], sp                                 ; $545d: $08 $24 $10
	ld   [hl+], a                                    ; $5460: $22
	db   $10                                         ; $5461: $10
	rra                                              ; $5462: $1f
	ld   [$0422], sp                                 ; $5463: $08 $22 $04
	and  b                                           ; $5466: $a0
	inc  bc                                          ; $5467: $03
	ld   [hl+], a                                    ; $5468: $22
	ld   [bc], a                                     ; $5469: $02
	rra                                              ; $546a: $1f
	ld   [bc], a                                     ; $546b: $02
	and  b                                           ; $546c: $a0
	ld   [$0422], sp                                 ; $546d: $08 $22 $04
	and  b                                           ; $5470: $a0
	inc  bc                                          ; $5471: $03
	ld   [hl+], a                                    ; $5472: $22
	ld   [bc], a                                     ; $5473: $02
	rra                                              ; $5474: $1f
	ld   [bc], a                                     ; $5475: $02
	and  b                                           ; $5476: $a0
	ld   [$0422], sp                                 ; $5477: $08 $22 $04
	and  b                                           ; $547a: $a0
	inc  bc                                          ; $547b: $03
	ld   [hl+], a                                    ; $547c: $22
	ld   [bc], a                                     ; $547d: $02
	rra                                              ; $547e: $1f
	ld   [bc], a                                     ; $547f: $02
	and  b                                           ; $5480: $a0
	ld   [$1024], sp                                 ; $5481: $08 $24 $10
	ld   [hl+], a                                    ; $5484: $22
	db   $10                                         ; $5485: $10
	rra                                              ; $5486: $1f
	db   $10                                         ; $5487: $10
	ld   [hl+], a                                    ; $5488: $22
	inc  b                                           ; $5489: $04
	and  b                                           ; $548a: $a0
	inc  bc                                          ; $548b: $03
	ld   [hl+], a                                    ; $548c: $22
	ld   [bc], a                                     ; $548d: $02
	rra                                              ; $548e: $1f
	ld   [bc], a                                     ; $548f: $02
	and  b                                           ; $5490: $a0
	ld   [$0422], sp                                 ; $5491: $08 $22 $04
	and  b                                           ; $5494: $a0
	inc  bc                                          ; $5495: $03
	ld   [hl+], a                                    ; $5496: $22
	ld   [bc], a                                     ; $5497: $02
	rra                                              ; $5498: $1f
	ld   [bc], a                                     ; $5499: $02
	and  b                                           ; $549a: $a0
	ld   [$1024], sp                                 ; $549b: $08 $24 $10
	ld   [hl+], a                                    ; $549e: $22
	db   $10                                         ; $549f: $10
	rra                                              ; $54a0: $1f
	ld   [$0422], sp                                 ; $54a1: $08 $22 $04
	and  b                                           ; $54a4: $a0
	inc  bc                                          ; $54a5: $03
	ld   [hl+], a                                    ; $54a6: $22
	ld   [bc], a                                     ; $54a7: $02
	rra                                              ; $54a8: $1f
	ld   [bc], a                                     ; $54a9: $02
	and  b                                           ; $54aa: $a0
	ld   [$0422], sp                                 ; $54ab: $08 $22 $04
	and  b                                           ; $54ae: $a0
	inc  bc                                          ; $54af: $03
	ld   [hl+], a                                    ; $54b0: $22
	ld   [bc], a                                     ; $54b1: $02
	rra                                              ; $54b2: $1f
	ld   [bc], a                                     ; $54b3: $02
	and  b                                           ; $54b4: $a0
	ld   [$0422], sp                                 ; $54b5: $08 $22 $04
	and  b                                           ; $54b8: $a0
	inc  bc                                          ; $54b9: $03
	ld   [hl+], a                                    ; $54ba: $22
	ld   [bc], a                                     ; $54bb: $02
	rra                                              ; $54bc: $1f
	ld   [bc], a                                     ; $54bd: $02
	and  b                                           ; $54be: $a0
	ld   [$1024], sp                                 ; $54bf: $08 $24 $10
	ld   [hl+], a                                    ; $54c2: $22
	db   $10                                         ; $54c3: $10
	rra                                              ; $54c4: $1f
	jr   nc, jr_0fc_54e9                             ; $54c5: $30 $22

	inc  b                                           ; $54c7: $04
	and  b                                           ; $54c8: $a0
	inc  bc                                          ; $54c9: $03
	ld   [hl+], a                                    ; $54ca: $22
	ld   [bc], a                                     ; $54cb: $02
	rra                                              ; $54cc: $1f
	ld   [bc], a                                     ; $54cd: $02
	and  b                                           ; $54ce: $a0
	ld   [$0422], sp                                 ; $54cf: $08 $22 $04
	and  b                                           ; $54d2: $a0
	inc  bc                                          ; $54d3: $03
	ld   [hl+], a                                    ; $54d4: $22
	ld   [bc], a                                     ; $54d5: $02
	rra                                              ; $54d6: $1f
	ld   [bc], a                                     ; $54d7: $02
	and  b                                           ; $54d8: $a0
	ld   [$1024], sp                                 ; $54d9: $08 $24 $10
	ld   [hl+], a                                    ; $54dc: $22
	db   $10                                         ; $54dd: $10
	rra                                              ; $54de: $1f
	ld   [$0422], sp                                 ; $54df: $08 $22 $04
	and  b                                           ; $54e2: $a0
	inc  bc                                          ; $54e3: $03
	ld   [hl+], a                                    ; $54e4: $22
	ld   [bc], a                                     ; $54e5: $02
	rra                                              ; $54e6: $1f
	ld   [bc], a                                     ; $54e7: $02
	and  b                                           ; $54e8: $a0

jr_0fc_54e9:
	ld   [$0422], sp                                 ; $54e9: $08 $22 $04
	and  b                                           ; $54ec: $a0
	inc  bc                                          ; $54ed: $03
	ld   [hl+], a                                    ; $54ee: $22
	ld   [bc], a                                     ; $54ef: $02
	rra                                              ; $54f0: $1f
	ld   [bc], a                                     ; $54f1: $02
	and  b                                           ; $54f2: $a0
	ld   [$0422], sp                                 ; $54f3: $08 $22 $04
	and  b                                           ; $54f6: $a0
	inc  bc                                          ; $54f7: $03
	ld   [hl+], a                                    ; $54f8: $22
	ld   [bc], a                                     ; $54f9: $02
	rra                                              ; $54fa: $1f
	ld   [bc], a                                     ; $54fb: $02
	and  b                                           ; $54fc: $a0
	ld   [$1024], sp                                 ; $54fd: $08 $24 $10
	ld   [hl+], a                                    ; $5500: $22
	db   $10                                         ; $5501: $10
	rra                                              ; $5502: $1f
	db   $10                                         ; $5503: $10
	ld   [hl+], a                                    ; $5504: $22
	inc  b                                           ; $5505: $04
	and  b                                           ; $5506: $a0
	inc  bc                                          ; $5507: $03
	ld   [hl+], a                                    ; $5508: $22
	ld   [bc], a                                     ; $5509: $02
	rra                                              ; $550a: $1f
	ld   [bc], a                                     ; $550b: $02
	and  b                                           ; $550c: $a0
	ld   [$0422], sp                                 ; $550d: $08 $22 $04
	and  b                                           ; $5510: $a0
	inc  bc                                          ; $5511: $03
	ld   [hl+], a                                    ; $5512: $22
	ld   [bc], a                                     ; $5513: $02
	rra                                              ; $5514: $1f
	ld   [bc], a                                     ; $5515: $02
	and  b                                           ; $5516: $a0
	ld   [$1024], sp                                 ; $5517: $08 $24 $10
	ld   [hl+], a                                    ; $551a: $22
	db   $10                                         ; $551b: $10
	rra                                              ; $551c: $1f
	ld   [$0422], sp                                 ; $551d: $08 $22 $04
	and  b                                           ; $5520: $a0
	inc  bc                                          ; $5521: $03
	ld   [hl+], a                                    ; $5522: $22
	ld   [bc], a                                     ; $5523: $02
	rra                                              ; $5524: $1f
	ld   [bc], a                                     ; $5525: $02
	and  b                                           ; $5526: $a0
	ld   [$0422], sp                                 ; $5527: $08 $22 $04
	and  b                                           ; $552a: $a0
	inc  bc                                          ; $552b: $03
	ld   [hl+], a                                    ; $552c: $22
	ld   [bc], a                                     ; $552d: $02
	rra                                              ; $552e: $1f
	ld   [bc], a                                     ; $552f: $02
	and  b                                           ; $5530: $a0
	ld   [$0422], sp                                 ; $5531: $08 $22 $04
	and  b                                           ; $5534: $a0
	inc  bc                                          ; $5535: $03
	ld   [hl+], a                                    ; $5536: $22
	ld   [bc], a                                     ; $5537: $02
	rra                                              ; $5538: $1f
	ld   [bc], a                                     ; $5539: $02
	and  b                                           ; $553a: $a0
	ld   [$1024], sp                                 ; $553b: $08 $24 $10
	ld   [hl+], a                                    ; $553e: $22
	db   $10                                         ; $553f: $10
	rra                                              ; $5540: $1f
	db   $10                                         ; $5541: $10
	jr   nz, jr_0fc_5548                             ; $5542: $20 $04

	and  b                                           ; $5544: $a0
	inc  bc                                          ; $5545: $03
	jr   nz, jr_0fc_554a                             ; $5546: $20 $02

jr_0fc_5548:
	rra                                              ; $5548: $1f
	ld   [bc], a                                     ; $5549: $02

jr_0fc_554a:
	and  b                                           ; $554a: $a0
	ld   [$0420], sp                                 ; $554b: $08 $20 $04
	and  b                                           ; $554e: $a0
	inc  bc                                          ; $554f: $03
	jr   nz, jr_0fc_5554                             ; $5550: $20 $02

	rra                                              ; $5552: $1f
	ld   [bc], a                                     ; $5553: $02

jr_0fc_5554:
	and  b                                           ; $5554: $a0
	ld   [$1022], sp                                 ; $5555: $08 $22 $10
	jr   nz, jr_0fc_556a                             ; $5558: $20 $10

	rra                                              ; $555a: $1f
	ld   [$0420], sp                                 ; $555b: $08 $20 $04
	and  b                                           ; $555e: $a0
	inc  bc                                          ; $555f: $03
	jr   nz, jr_0fc_5564                             ; $5560: $20 $02

	rra                                              ; $5562: $1f
	ld   [bc], a                                     ; $5563: $02

jr_0fc_5564:
	and  b                                           ; $5564: $a0
	ld   [$0420], sp                                 ; $5565: $08 $20 $04
	and  b                                           ; $5568: $a0
	inc  bc                                          ; $5569: $03

jr_0fc_556a:
	jr   nz, jr_0fc_556e                             ; $556a: $20 $02

	rra                                              ; $556c: $1f
	ld   [bc], a                                     ; $556d: $02

jr_0fc_556e:
	and  b                                           ; $556e: $a0
	ld   [$0420], sp                                 ; $556f: $08 $20 $04
	and  b                                           ; $5572: $a0
	inc  bc                                          ; $5573: $03
	jr   nz, jr_0fc_5578                             ; $5574: $20 $02

	rra                                              ; $5576: $1f
	ld   [bc], a                                     ; $5577: $02

jr_0fc_5578:
	and  b                                           ; $5578: $a0
	ld   [$1019], sp                                 ; $5579: $08 $19 $10
	inc  h                                           ; $557c: $24
	db   $10                                         ; $557d: $10
	rra                                              ; $557e: $1f
	db   $10                                         ; $557f: $10
	ld   [hl+], a                                    ; $5580: $22
	inc  b                                           ; $5581: $04
	and  b                                           ; $5582: $a0
	inc  bc                                          ; $5583: $03
	ld   [hl+], a                                    ; $5584: $22
	ld   [bc], a                                     ; $5585: $02
	rra                                              ; $5586: $1f
	ld   [bc], a                                     ; $5587: $02
	and  b                                           ; $5588: $a0
	ld   [$0422], sp                                 ; $5589: $08 $22 $04
	and  b                                           ; $558c: $a0
	inc  bc                                          ; $558d: $03
	ld   [hl+], a                                    ; $558e: $22
	ld   [bc], a                                     ; $558f: $02
	rra                                              ; $5590: $1f
	ld   [bc], a                                     ; $5591: $02
	and  b                                           ; $5592: $a0
	ld   [$1024], sp                                 ; $5593: $08 $24 $10
	ld   [hl+], a                                    ; $5596: $22
	db   $10                                         ; $5597: $10
	rra                                              ; $5598: $1f
	ld   [$0422], sp                                 ; $5599: $08 $22 $04
	and  b                                           ; $559c: $a0
	dec  b                                           ; $559d: $05
	ld   [hl+], a                                    ; $559e: $22
	ld   [bc], a                                     ; $559f: $02
	rra                                              ; $55a0: $1f
	ld   [bc], a                                     ; $55a1: $02
	and  b                                           ; $55a2: $a0
	ld   [$0422], sp                                 ; $55a3: $08 $22 $04
	and  b                                           ; $55a6: $a0
	inc  bc                                          ; $55a7: $03
	ld   [hl+], a                                    ; $55a8: $22
	ld   [bc], a                                     ; $55a9: $02
	rra                                              ; $55aa: $1f
	ld   [bc], a                                     ; $55ab: $02
	and  b                                           ; $55ac: $a0
	ld   [$0422], sp                                 ; $55ad: $08 $22 $04
	and  b                                           ; $55b0: $a0
	inc  bc                                          ; $55b1: $03
	ld   [hl+], a                                    ; $55b2: $22
	ld   [bc], a                                     ; $55b3: $02
	rra                                              ; $55b4: $1f
	ld   [bc], a                                     ; $55b5: $02
	and  b                                           ; $55b6: $a0
	ld   [$1024], sp                                 ; $55b7: $08 $24 $10
	ld   [hl+], a                                    ; $55ba: $22
	db   $10                                         ; $55bb: $10
	and  d                                           ; $55bc: $a2
	ld   [bc], a                                     ; $55bd: $02
	jp   $a310                                       ; $55be: $c3 $10 $a3


	inc  h                                           ; $55c1: $24
	and  b                                           ; $55c2: $a0
	dec  bc                                          ; $55c3: $0b
	ld   [hl+], a                                    ; $55c4: $22
	jr   z, jr_0fc_55eb                              ; $55c5: $28 $24

	inc  b                                           ; $55c7: $04
	ld   [hl+], a                                    ; $55c8: $22
	inc  b                                           ; $55c9: $04
	daa                                              ; $55ca: $27
	ld   [$0829], sp                                 ; $55cb: $08 $29 $08
	dec  hl                                          ; $55ce: $2b

jr_0fc_55cf:
	ld   c, b                                        ; $55cf: $48
	and  b                                           ; $55d0: $a0
	dec  b                                           ; $55d1: $05
	dec  hl                                          ; $55d2: $2b
	inc  b                                           ; $55d3: $04
	rra                                              ; $55d4: $1f

jr_0fc_55d5:
	inc  c                                           ; $55d5: $0c
	and  b                                           ; $55d6: $a0
	dec  bc                                          ; $55d7: $0b
	ld   [hl+], a                                    ; $55d8: $22
	inc  b                                           ; $55d9: $04

jr_0fc_55da:
	dec  h                                           ; $55da: $25
	inc  b                                           ; $55db: $04
	jr   nz, jr_0fc_55e6                             ; $55dc: $20 $08

	dec  de                                          ; $55de: $1b
	ld   [$0819], sp                                 ; $55df: $08 $19 $08
	dec  de                                          ; $55e2: $1b
	inc  bc                                          ; $55e3: $03
	add  hl, de                                      ; $55e4: $19
	inc  bc                                          ; $55e5: $03

jr_0fc_55e6:
	dec  de                                          ; $55e6: $1b
	ld   [bc], a                                     ; $55e7: $02
	ld   [hl+], a                                    ; $55e8: $22
	ld   b, b                                        ; $55e9: $40
	and  b                                           ; $55ea: $a0

jr_0fc_55eb:
	dec  b                                           ; $55eb: $05
	ld   [hl+], a                                    ; $55ec: $22
	inc  b                                           ; $55ed: $04
	rra                                              ; $55ee: $1f
	inc  c                                           ; $55ef: $0c
	and  b                                           ; $55f0: $a0
	dec  bc                                          ; $55f1: $0b
	dec  hl                                          ; $55f2: $2b
	inc  b                                           ; $55f3: $04
	add  hl, hl                                      ; $55f4: $29
	inc  b                                           ; $55f5: $04
	inc  h                                           ; $55f6: $24
	inc  b                                           ; $55f7: $04
	daa                                              ; $55f8: $27
	inc  b                                           ; $55f9: $04
	add  hl, hl                                      ; $55fa: $29
	inc  a                                           ; $55fb: $3c
	and  b                                           ; $55fc: $a0
	dec  b                                           ; $55fd: $05
	add  hl, hl                                      ; $55fe: $29
	inc  b                                           ; $55ff: $04
	and  b                                           ; $5600: $a0

jr_0fc_5601:
	dec  bc                                          ; $5601: $0b
	add  hl, hl                                      ; $5602: $29
	ld   [$082b], sp                                 ; $5603: $08 $2b $08
	ld   [hl-], a                                    ; $5606: $32
	ld   [$0836], sp                                 ; $5607: $08 $36 $08
	scf                                              ; $560a: $37
	ld   c, b                                        ; $560b: $48
	ld   [hl], $04                                   ; $560c: $36 $04
	ld   [hl-], a                                    ; $560e: $32
	inc  b                                           ; $560f: $04
	jr   nc, jr_0fc_5616                             ; $5610: $30 $04

	and  b                                           ; $5612: $a0
	dec  b                                           ; $5613: $05
	jr   nc, jr_0fc_561a                             ; $5614: $30 $04

jr_0fc_5616:
	and  b                                           ; $5616: $a0
	dec  bc                                          ; $5617: $0b
	dec  hl                                          ; $5618: $2b
	inc  b                                           ; $5619: $04

jr_0fc_561a:
	and  b                                           ; $561a: $a0
	dec  b                                           ; $561b: $05
	dec  hl                                          ; $561c: $2b
	inc  b                                           ; $561d: $04
	and  b                                           ; $561e: $a0
	dec  bc                                          ; $561f: $0b
	daa                                              ; $5620: $27
	inc  a                                           ; $5621: $3c
	and  b                                           ; $5622: $a0
	dec  b                                           ; $5623: $05
	daa                                              ; $5624: $27
	inc  b                                           ; $5625: $04
	rra                                              ; $5626: $1f
	db   $10                                         ; $5627: $10
	and  b                                           ; $5628: $a0
	dec  bc                                          ; $5629: $0b
	add  hl, de                                      ; $562a: $19

jr_0fc_562b:
	db   $10                                         ; $562b: $10
	rra                                              ; $562c: $1f
	jr   nz, jr_0fc_55cf                             ; $562d: $20 $a0

	rlca                                             ; $562f: $07
	inc  [hl]                                        ; $5630: $34
	jr   nz, jr_0fc_55d5                             ; $5631: $20 $a2

	nop                                              ; $5633: $00
	rst  ToBoot                                         ; $5634: $c7
	jr   nz, jr_0fc_55da                             ; $5635: $20 $a3

	inc  d                                           ; $5637: $14
	inc  [hl]                                        ; $5638: $34
	inc  b                                           ; $5639: $04
	and  b                                           ; $563a: $a0
	dec  b                                           ; $563b: $05
	inc  [hl]                                        ; $563c: $34
	inc  b                                           ; $563d: $04
	and  b                                           ; $563e: $a0
	add  hl, bc                                      ; $563f: $09
	ld   [hl-], a                                    ; $5640: $32
	inc  b                                           ; $5641: $04
	and  b                                           ; $5642: $a0
	dec  b                                           ; $5643: $05
	ld   [hl-], a                                    ; $5644: $32
	inc  b                                           ; $5645: $04
	and  b                                           ; $5646: $a0
	add  hl, bc                                      ; $5647: $09
	inc  [hl]                                        ; $5648: $34
	inc  b                                           ; $5649: $04
	and  b                                           ; $564a: $a0
	dec  b                                           ; $564b: $05
	inc  [hl]                                        ; $564c: $34
	inc  b                                           ; $564d: $04
	and  b                                           ; $564e: $a0
	add  hl, bc                                      ; $564f: $09
	scf                                              ; $5650: $37
	inc  b                                           ; $5651: $04
	and  b                                           ; $5652: $a0
	dec  b                                           ; $5653: $05
	scf                                              ; $5654: $37
	inc  b                                           ; $5655: $04
	and  b                                           ; $5656: $a0
	add  hl, bc                                      ; $5657: $09
	inc  [hl]                                        ; $5658: $34
	inc  b                                           ; $5659: $04
	and  b                                           ; $565a: $a0
	dec  b                                           ; $565b: $05
	inc  [hl]                                        ; $565c: $34
	inc  b                                           ; $565d: $04
	rra                                              ; $565e: $1f
	jr   jr_0fc_5601                                 ; $565f: $18 $a0

	add  hl, bc                                      ; $5661: $09
	dec  hl                                          ; $5662: $2b
	inc  b                                           ; $5663: $04
	and  b                                           ; $5664: $a0
	dec  b                                           ; $5665: $05
	dec  hl                                          ; $5666: $2b
	inc  b                                           ; $5667: $04
	and  b                                           ; $5668: $a0
	add  hl, bc                                      ; $5669: $09
	add  hl, hl                                      ; $566a: $29
	inc  b                                           ; $566b: $04
	and  b                                           ; $566c: $a0
	dec  b                                           ; $566d: $05
	add  hl, hl                                      ; $566e: $29
	inc  b                                           ; $566f: $04
	and  b                                           ; $5670: $a0
	add  hl, bc                                      ; $5671: $09
	dec  hl                                          ; $5672: $2b
	inc  b                                           ; $5673: $04
	and  b                                           ; $5674: $a0
	dec  b                                           ; $5675: $05
	dec  hl                                          ; $5676: $2b
	inc  b                                           ; $5677: $04
	and  b                                           ; $5678: $a0
	add  hl, bc                                      ; $5679: $09
	ld   [hl-], a                                    ; $567a: $32
	inc  b                                           ; $567b: $04
	and  b                                           ; $567c: $a0
	dec  b                                           ; $567d: $05
	ld   [hl-], a                                    ; $567e: $32
	inc  b                                           ; $567f: $04
	and  b                                           ; $5680: $a0
	add  hl, bc                                      ; $5681: $09
	dec  hl                                          ; $5682: $2b
	inc  b                                           ; $5683: $04
	and  b                                           ; $5684: $a0

jr_0fc_5685:
	dec  b                                           ; $5685: $05
	dec  hl                                          ; $5686: $2b
	inc  b                                           ; $5687: $04
	rra                                              ; $5688: $1f
	jr   jr_0fc_562b                                 ; $5689: $18 $a0

	add  hl, bc                                      ; $568b: $09
	inc  [hl]                                        ; $568c: $34
	inc  b                                           ; $568d: $04
	and  b                                           ; $568e: $a0
	dec  b                                           ; $568f: $05
	inc  [hl]                                        ; $5690: $34
	inc  b                                           ; $5691: $04
	and  b                                           ; $5692: $a0
	add  hl, bc                                      ; $5693: $09
	ld   [hl-], a                                    ; $5694: $32
	inc  b                                           ; $5695: $04
	and  b                                           ; $5696: $a0
	dec  b                                           ; $5697: $05
	ld   [hl-], a                                    ; $5698: $32
	inc  b                                           ; $5699: $04

jr_0fc_569a:
	and  b                                           ; $569a: $a0
	add  hl, bc                                      ; $569b: $09
	inc  [hl]                                        ; $569c: $34
	inc  b                                           ; $569d: $04
	and  b                                           ; $569e: $a0
	dec  b                                           ; $569f: $05
	inc  [hl]                                        ; $56a0: $34
	inc  b                                           ; $56a1: $04
	and  b                                           ; $56a2: $a0
	add  hl, bc                                      ; $56a3: $09
	scf                                              ; $56a4: $37
	inc  b                                           ; $56a5: $04
	and  b                                           ; $56a6: $a0
	dec  b                                           ; $56a7: $05
	scf                                              ; $56a8: $37
	inc  b                                           ; $56a9: $04
	and  b                                           ; $56aa: $a0
	add  hl, bc                                      ; $56ab: $09
	add  hl, sp                                      ; $56ac: $39
	inc  b                                           ; $56ad: $04
	and  b                                           ; $56ae: $a0
	dec  b                                           ; $56af: $05
	add  hl, sp                                      ; $56b0: $39
	inc  b                                           ; $56b1: $04
	and  b                                           ; $56b2: $a0
	add  hl, bc                                      ; $56b3: $09
	inc  [hl]                                        ; $56b4: $34
	inc  b                                           ; $56b5: $04
	and  b                                           ; $56b6: $a0
	dec  b                                           ; $56b7: $05
	inc  [hl]                                        ; $56b8: $34
	inc  b                                           ; $56b9: $04
	and  b                                           ; $56ba: $a0
	add  hl, bc                                      ; $56bb: $09
	ld   [hl-], a                                    ; $56bc: $32
	inc  b                                           ; $56bd: $04
	and  b                                           ; $56be: $a0
	dec  b                                           ; $56bf: $05
	ld   [hl-], a                                    ; $56c0: $32
	inc  b                                           ; $56c1: $04
	and  b                                           ; $56c2: $a0
	add  hl, bc                                      ; $56c3: $09
	inc  [hl]                                        ; $56c4: $34
	inc  b                                           ; $56c5: $04
	and  b                                           ; $56c6: $a0
	dec  b                                           ; $56c7: $05
	inc  [hl]                                        ; $56c8: $34
	inc  b                                           ; $56c9: $04
	and  d                                           ; $56ca: $a2
	ld   [bc], a                                     ; $56cb: $02
	jp   $a308                                       ; $56cc: $c3 $08 $a3


	inc  h                                           ; $56cf: $24
	and  b                                           ; $56d0: $a0
	add  hl, bc                                      ; $56d1: $09
	dec  hl                                          ; $56d2: $2b
	inc  c                                           ; $56d3: $0c
	add  hl, hl                                      ; $56d4: $29
	inc  b                                           ; $56d5: $04
	daa                                              ; $56d6: $27
	jr   @+$26                                       ; $56d7: $18 $24

	ld   [$0822], sp                                 ; $56d9: $08 $22 $08
	inc  h                                           ; $56dc: $24
	ld   [$0c1b], sp                                 ; $56dd: $08 $1b $0c
	add  hl, de                                      ; $56e0: $19
	inc  b                                           ; $56e1: $04
	rla                                              ; $56e2: $17
	jr   z, jr_0fc_5685                              ; $56e3: $28 $a0

	dec  b                                           ; $56e5: $05
	rla                                              ; $56e6: $17
	ld   [$09a0], sp                                 ; $56e7: $08 $a0 $09
	inc  h                                           ; $56ea: $24
	ld   a, h                                        ; $56eb: $7c
	and  b                                           ; $56ec: $a0
	inc  bc                                          ; $56ed: $03
	inc  h                                           ; $56ee: $24
	inc  b                                           ; $56ef: $04
	rra                                              ; $56f0: $1f
	add  b                                           ; $56f1: $80
	and  d                                           ; $56f2: $a2
	nop                                              ; $56f3: $00
	rst  ToBoot                                         ; $56f4: $c7
	jr   nz, jr_0fc_569a                             ; $56f5: $20 $a3

	inc  d                                           ; $56f7: $14
	db   $fd                                         ; $56f8: $fd
	ldh  a, [$1f]                                    ; $56f9: $f0 $1f
	ld   [$09a0], sp                                 ; $56fb: $08 $a0 $09
	dec  h                                           ; $56fe: $25
	ld   [bc], a                                     ; $56ff: $02
	and  b                                           ; $5700: $a0
	dec  b                                           ; $5701: $05
	dec  h                                           ; $5702: $25
	ld   [bc], a                                     ; $5703: $02
	and  b                                           ; $5704: $a0
	add  hl, bc                                      ; $5705: $09
	dec  h                                           ; $5706: $25
	ld   [bc], a                                     ; $5707: $02
	and  b                                           ; $5708: $a0
	dec  b                                           ; $5709: $05
	dec  h                                           ; $570a: $25
	ld   [bc], a                                     ; $570b: $02
	or   e                                           ; $570c: $b3
	ldh  a, [$1f]                                    ; $570d: $f0 $1f
	ld   [$09a0], sp                                 ; $570f: $08 $a0 $09
	inc  h                                           ; $5712: $24
	ld   [bc], a                                     ; $5713: $02
	and  b                                           ; $5714: $a0
	dec  b                                           ; $5715: $05
	inc  h                                           ; $5716: $24
	ld   [bc], a                                     ; $5717: $02
	and  b                                           ; $5718: $a0
	add  hl, bc                                      ; $5719: $09
	inc  h                                           ; $571a: $24
	ld   [bc], a                                     ; $571b: $02
	and  b                                           ; $571c: $a0
	dec  b                                           ; $571d: $05
	inc  h                                           ; $571e: $24
	ld   [bc], a                                     ; $571f: $02
	rra                                              ; $5720: $1f
	ld   [$09a0], sp                                 ; $5721: $08 $a0 $09
	inc  h                                           ; $5724: $24
	ld   [bc], a                                     ; $5725: $02
	and  b                                           ; $5726: $a0
	dec  b                                           ; $5727: $05
	inc  h                                           ; $5728: $24
	ld   [bc], a                                     ; $5729: $02
	and  b                                           ; $572a: $a0
	add  hl, bc                                      ; $572b: $09
	inc  h                                           ; $572c: $24
	ld   [bc], a                                     ; $572d: $02
	and  b                                           ; $572e: $a0
	dec  b                                           ; $572f: $05
	inc  h                                           ; $5730: $24
	ld   [bc], a                                     ; $5731: $02
	rra                                              ; $5732: $1f
	ld   [$09a0], sp                                 ; $5733: $08 $a0 $09
	inc  h                                           ; $5736: $24
	ld   [bc], a                                     ; $5737: $02
	and  b                                           ; $5738: $a0
	dec  b                                           ; $5739: $05
	inc  h                                           ; $573a: $24
	ld   [bc], a                                     ; $573b: $02
	and  b                                           ; $573c: $a0
	add  hl, bc                                      ; $573d: $09
	inc  h                                           ; $573e: $24
	ld   [bc], a                                     ; $573f: $02
	and  b                                           ; $5740: $a0
	dec  b                                           ; $5741: $05
	inc  h                                           ; $5742: $24
	ld   [bc], a                                     ; $5743: $02
	rra                                              ; $5744: $1f
	ld   [$09a0], sp                                 ; $5745: $08 $a0 $09
	inc  h                                           ; $5748: $24
	ld   [bc], a                                     ; $5749: $02
	and  b                                           ; $574a: $a0
	dec  b                                           ; $574b: $05
	inc  h                                           ; $574c: $24
	ld   [bc], a                                     ; $574d: $02
	and  b                                           ; $574e: $a0
	add  hl, bc                                      ; $574f: $09
	inc  h                                           ; $5750: $24
	ld   [bc], a                                     ; $5751: $02
	and  b                                           ; $5752: $a0
	dec  b                                           ; $5753: $05
	inc  h                                           ; $5754: $24
	ld   [bc], a                                     ; $5755: $02
	rra                                              ; $5756: $1f
	ld   [$09a0], sp                                 ; $5757: $08 $a0 $09
	dec  h                                           ; $575a: $25
	ld   [bc], a                                     ; $575b: $02
	and  b                                           ; $575c: $a0
	dec  b                                           ; $575d: $05
	dec  h                                           ; $575e: $25
	ld   [bc], a                                     ; $575f: $02
	and  b                                           ; $5760: $a0
	add  hl, bc                                      ; $5761: $09
	dec  h                                           ; $5762: $25
	ld   [bc], a                                     ; $5763: $02
	and  b                                           ; $5764: $a0
	dec  b                                           ; $5765: $05
	dec  h                                           ; $5766: $25
	ld   [bc], a                                     ; $5767: $02
	rra                                              ; $5768: $1f
	ld   [$09a0], sp                                 ; $5769: $08 $a0 $09
	dec  h                                           ; $576c: $25
	ld   [bc], a                                     ; $576d: $02
	and  b                                           ; $576e: $a0
	dec  b                                           ; $576f: $05
	dec  h                                           ; $5770: $25
	ld   [bc], a                                     ; $5771: $02
	and  b                                           ; $5772: $a0
	add  hl, bc                                      ; $5773: $09
	dec  h                                           ; $5774: $25
	ld   [bc], a                                     ; $5775: $02
	and  b                                           ; $5776: $a0
	dec  b                                           ; $5777: $05
	dec  h                                           ; $5778: $25
	ld   [bc], a                                     ; $5779: $02
	rra                                              ; $577a: $1f
	ld   [$09a0], sp                                 ; $577b: $08 $a0 $09
	dec  h                                           ; $577e: $25
	ld   [bc], a                                     ; $577f: $02
	and  b                                           ; $5780: $a0
	dec  b                                           ; $5781: $05
	dec  h                                           ; $5782: $25
	ld   [bc], a                                     ; $5783: $02
	and  b                                           ; $5784: $a0
	add  hl, bc                                      ; $5785: $09
	dec  h                                           ; $5786: $25
	ld   [bc], a                                     ; $5787: $02
	and  b                                           ; $5788: $a0
	dec  b                                           ; $5789: $05
	dec  h                                           ; $578a: $25
	ld   [bc], a                                     ; $578b: $02
	rra                                              ; $578c: $1f
	ld   [$09a0], sp                                 ; $578d: $08 $a0 $09
	dec  h                                           ; $5790: $25
	ld   [bc], a                                     ; $5791: $02
	and  b                                           ; $5792: $a0
	dec  b                                           ; $5793: $05
	dec  h                                           ; $5794: $25
	ld   [bc], a                                     ; $5795: $02
	and  b                                           ; $5796: $a0
	add  hl, bc                                      ; $5797: $09
	dec  h                                           ; $5798: $25
	ld   [bc], a                                     ; $5799: $02
	and  b                                           ; $579a: $a0
	dec  b                                           ; $579b: $05
	dec  h                                           ; $579c: $25
	ld   [bc], a                                     ; $579d: $02
	rra                                              ; $579e: $1f
	ld   [$09a0], sp                                 ; $579f: $08 $a0 $09
	inc  h                                           ; $57a2: $24
	ld   [bc], a                                     ; $57a3: $02
	and  b                                           ; $57a4: $a0
	dec  b                                           ; $57a5: $05
	inc  h                                           ; $57a6: $24
	ld   [bc], a                                     ; $57a7: $02
	and  b                                           ; $57a8: $a0
	add  hl, bc                                      ; $57a9: $09
	inc  h                                           ; $57aa: $24
	ld   [bc], a                                     ; $57ab: $02
	and  b                                           ; $57ac: $a0
	dec  b                                           ; $57ad: $05
	inc  h                                           ; $57ae: $24
	ld   [bc], a                                     ; $57af: $02
	rra                                              ; $57b0: $1f
	ld   [$09a0], sp                                 ; $57b1: $08 $a0 $09
	inc  h                                           ; $57b4: $24
	ld   [bc], a                                     ; $57b5: $02
	and  b                                           ; $57b6: $a0
	dec  b                                           ; $57b7: $05
	inc  h                                           ; $57b8: $24
	ld   [bc], a                                     ; $57b9: $02
	and  b                                           ; $57ba: $a0
	add  hl, bc                                      ; $57bb: $09
	inc  h                                           ; $57bc: $24
	ld   [bc], a                                     ; $57bd: $02
	and  b                                           ; $57be: $a0
	dec  b                                           ; $57bf: $05
	inc  h                                           ; $57c0: $24
	ld   [bc], a                                     ; $57c1: $02
	rra                                              ; $57c2: $1f
	ld   [$09a0], sp                                 ; $57c3: $08 $a0 $09
	inc  h                                           ; $57c6: $24
	ld   [bc], a                                     ; $57c7: $02
	and  b                                           ; $57c8: $a0
	dec  b                                           ; $57c9: $05
	inc  h                                           ; $57ca: $24
	ld   [bc], a                                     ; $57cb: $02
	and  b                                           ; $57cc: $a0
	add  hl, bc                                      ; $57cd: $09
	inc  h                                           ; $57ce: $24
	ld   [bc], a                                     ; $57cf: $02
	and  b                                           ; $57d0: $a0
	dec  b                                           ; $57d1: $05
	inc  h                                           ; $57d2: $24
	ld   [bc], a                                     ; $57d3: $02
	rra                                              ; $57d4: $1f
	ld   [$09a0], sp                                 ; $57d5: $08 $a0 $09
	inc  h                                           ; $57d8: $24
	ld   [bc], a                                     ; $57d9: $02
	and  b                                           ; $57da: $a0
	dec  b                                           ; $57db: $05
	inc  h                                           ; $57dc: $24
	ld   [bc], a                                     ; $57dd: $02
	and  b                                           ; $57de: $a0
	add  hl, bc                                      ; $57df: $09
	inc  h                                           ; $57e0: $24
	ld   [bc], a                                     ; $57e1: $02
	and  b                                           ; $57e2: $a0
	dec  b                                           ; $57e3: $05
	inc  h                                           ; $57e4: $24
	ld   [bc], a                                     ; $57e5: $02
	and  d                                           ; $57e6: $a2
	ld   [bc], a                                     ; $57e7: $02
	rst  ToBoot                                         ; $57e8: $c7
	ld   a, a                                        ; $57e9: $7f
	and  e                                           ; $57ea: $a3
	inc  h                                           ; $57eb: $24
	and  b                                           ; $57ec: $a0
	add  hl, bc                                      ; $57ed: $09
	ld   [hl+], a                                    ; $57ee: $22
	jr   nz, jr_0fc_5816                             ; $57ef: $20 $25

	ld   [$0424], sp                                 ; $57f1: $08 $24 $04
	ld   [hl+], a                                    ; $57f4: $22
	inc  b                                           ; $57f5: $04
	jr   nz, jr_0fc_57fc                             ; $57f6: $20 $04

	and  b                                           ; $57f8: $a0
	dec  b                                           ; $57f9: $05
	jr   nz, jr_0fc_5800                             ; $57fa: $20 $04

jr_0fc_57fc:
	and  b                                           ; $57fc: $a0

jr_0fc_57fd:
	add  hl, bc                                      ; $57fd: $09
	inc  h                                           ; $57fe: $24
	inc  b                                           ; $57ff: $04

jr_0fc_5800:
	and  b                                           ; $5800: $a0
	dec  b                                           ; $5801: $05
	inc  h                                           ; $5802: $24
	inc  b                                           ; $5803: $04
	and  b                                           ; $5804: $a0
	add  hl, bc                                      ; $5805: $09
	ld   [hl+], a                                    ; $5806: $22
	inc  l                                           ; $5807: $2c
	and  b                                           ; $5808: $a0
	dec  b                                           ; $5809: $05
	ld   [hl+], a                                    ; $580a: $22
	inc  b                                           ; $580b: $04
	and  b                                           ; $580c: $a0
	add  hl, bc                                      ; $580d: $09
	add  hl, de                                      ; $580e: $19
	inc  b                                           ; $580f: $04
	and  b                                           ; $5810: $a0
	dec  b                                           ; $5811: $05
	add  hl, de                                      ; $5812: $19
	ld   [bc], a                                     ; $5813: $02
	rra                                              ; $5814: $1f
	ld   [bc], a                                     ; $5815: $02

jr_0fc_5816:
	and  b                                           ; $5816: $a0
	add  hl, bc                                      ; $5817: $09
	add  hl, de                                      ; $5818: $19
	inc  b                                           ; $5819: $04
	and  b                                           ; $581a: $a0
	dec  b                                           ; $581b: $05
	add  hl, de                                      ; $581c: $19
	ld   [bc], a                                     ; $581d: $02
	rra                                              ; $581e: $1f
	ld   [bc], a                                     ; $581f: $02
	and  b                                           ; $5820: $a0
	add  hl, bc                                      ; $5821: $09
	dec  de                                          ; $5822: $1b
	db   $10                                         ; $5823: $10
	add  hl, de                                      ; $5824: $19
	db   $10                                         ; $5825: $10
	rra                                              ; $5826: $1f
	ld   [$0419], sp                                 ; $5827: $08 $19 $04
	and  b                                           ; $582a: $a0
	dec  b                                           ; $582b: $05
	add  hl, de                                      ; $582c: $19
	ld   [bc], a                                     ; $582d: $02
	rra                                              ; $582e: $1f
	ld   [bc], a                                     ; $582f: $02
	and  b                                           ; $5830: $a0
	add  hl, bc                                      ; $5831: $09
	add  hl, de                                      ; $5832: $19
	inc  b                                           ; $5833: $04
	and  b                                           ; $5834: $a0
	dec  b                                           ; $5835: $05
	add  hl, de                                      ; $5836: $19
	ld   [bc], a                                     ; $5837: $02
	rra                                              ; $5838: $1f
	ld   [bc], a                                     ; $5839: $02
	and  b                                           ; $583a: $a0

jr_0fc_583b:
	add  hl, bc                                      ; $583b: $09
	add  hl, de                                      ; $583c: $19
	inc  b                                           ; $583d: $04
	and  b                                           ; $583e: $a0
	dec  b                                           ; $583f: $05

jr_0fc_5840:
	add  hl, de                                      ; $5840: $19
	ld   [bc], a                                     ; $5841: $02
	rra                                              ; $5842: $1f
	ld   [bc], a                                     ; $5843: $02
	and  b                                           ; $5844: $a0
	add  hl, bc                                      ; $5845: $09
	dec  de                                          ; $5846: $1b
	db   $10                                         ; $5847: $10
	add  hl, de                                      ; $5848: $19
	jr   nz, @+$21                                   ; $5849: $20 $1f

	jr   nc, jr_0fc_57fd                             ; $584b: $30 $b0

	di                                               ; $584d: $f3
	rst  $38                                         ; $584e: $ff
	rst  $38                                         ; $584f: $ff
	add  hl, bc                                      ; $5850: $09
	nop                                              ; $5851: $00
	add  hl, bc                                      ; $5852: $09
	nop                                              ; $5853: $00
	and  d                                           ; $5854: $a2
	ld   bc, $20c7                                   ; $5855: $01 $c7 $20
	and  e                                           ; $5858: $a3
	inc  h                                           ; $5859: $24
	and  b                                           ; $585a: $a0
	dec  c                                           ; $585b: $0d
	ld   [hl+], a                                    ; $585c: $22
	inc  b                                           ; $585d: $04
	inc  h                                           ; $585e: $24
	inc  b                                           ; $585f: $04
	daa                                              ; $5860: $27
	inc  b                                           ; $5861: $04
	add  hl, hl                                      ; $5862: $29
	inc  b                                           ; $5863: $04
	daa                                              ; $5864: $27
	inc  b                                           ; $5865: $04
	inc  h                                           ; $5866: $24
	inc  b                                           ; $5867: $04
	ld   [hl+], a                                    ; $5868: $22
	ld   [$f3fd], sp                                 ; $5869: $08 $fd $f3
	and  b                                           ; $586c: $a0
	dec  c                                           ; $586d: $0d
	daa                                              ; $586e: $27
	inc  b                                           ; $586f: $04
	and  b                                           ; $5870: $a0
	rlca                                             ; $5871: $07
	add  hl, hl                                      ; $5872: $29

jr_0fc_5873:
	inc  b                                           ; $5873: $04
	rst  ToBoot                                         ; $5874: $c7
	ld   b, b                                        ; $5875: $40
	daa                                              ; $5876: $27
	jr   jr_0fc_5840                                 ; $5877: $18 $c7

	jr   nz, @+$21                                   ; $5879: $20 $1f

	ld   b, b                                        ; $587b: $40
	and  b                                           ; $587c: $a0
	dec  c                                           ; $587d: $0d

jr_0fc_587e:
	dec  de                                          ; $587e: $1b
	ld   [$0319], sp                                 ; $587f: $08 $19 $03
	dec  de                                          ; $5882: $1b
	inc  bc                                          ; $5883: $03
	add  hl, de                                      ; $5884: $19
	ld   [bc], a                                     ; $5885: $02
	rla                                              ; $5886: $17
	inc  b                                           ; $5887: $04
	and  b                                           ; $5888: $a0
	add  hl, bc                                      ; $5889: $09
	rla                                              ; $588a: $17
	inc  b                                           ; $588b: $04
	and  b                                           ; $588c: $a0
	dec  c                                           ; $588d: $0d
	inc  d                                           ; $588e: $14
	inc  b                                           ; $588f: $04
	and  b                                           ; $5890: $a0
	add  hl, bc                                      ; $5891: $09
	inc  d                                           ; $5892: $14
	inc  b                                           ; $5893: $04
	rst  ToBoot                                         ; $5894: $c7
	ld   b, b                                        ; $5895: $40
	and  b                                           ; $5896: $a0
	dec  c                                           ; $5897: $0d
	ld   [de], a                                     ; $5898: $12
	jr   nz, jr_0fc_583b                             ; $5899: $20 $a0

	ld   [bc], a                                     ; $589b: $02
	ld   [de], a                                     ; $589c: $12
	inc  b                                           ; $589d: $04
	rst  ToBoot                                         ; $589e: $c7
	jr   nz, jr_0fc_58c0                             ; $589f: $20 $1f

	ld   e, h                                        ; $58a1: $5c
	and  b                                           ; $58a2: $a0
	dec  c                                           ; $58a3: $0d
	daa                                              ; $58a4: $27
	ld   [$0829], sp                                 ; $58a5: $08 $29 $08
	ld   [hl], $08                                   ; $58a8: $36 $08
	scf                                              ; $58aa: $37
	ld   [$0432], sp                                 ; $58ab: $08 $32 $04
	and  b                                           ; $58ae: $a0
	add  hl, bc                                      ; $58af: $09
	inc  [hl]                                        ; $58b0: $34
	inc  b                                           ; $58b1: $04
	rst  ToBoot                                         ; $58b2: $c7
	ld   b, b                                        ; $58b3: $40
	ld   [hl-], a                                    ; $58b4: $32
	jr   jr_0fc_587e                                 ; $58b5: $18 $c7

	jr   nz, jr_0fc_58d8                             ; $58b7: $20 $1f

	ld   b, b                                        ; $58b9: $40
	and  b                                           ; $58ba: $a0

jr_0fc_58bb:
	dec  c                                           ; $58bb: $0d
	ld   [hl-], a                                    ; $58bc: $32
	ld   [$0831], sp                                 ; $58bd: $08 $31 $08

jr_0fc_58c0:
	add  hl, hl                                      ; $58c0: $29
	ld   [$0827], sp                                 ; $58c1: $08 $27 $08
	dec  hl                                          ; $58c4: $2b
	inc  b                                           ; $58c5: $04
	and  b                                           ; $58c6: $a0
	add  hl, bc                                      ; $58c7: $09
	ld   a, [hl+]                                    ; $58c8: $2a
	inc  b                                           ; $58c9: $04
	rst  ToBoot                                         ; $58ca: $c7
	ld   b, b                                        ; $58cb: $40
	dec  hl                                          ; $58cc: $2b
	inc  e                                           ; $58cd: $1c
	rra                                              ; $58ce: $1f
	inc  e                                           ; $58cf: $1c
	rst  ToBoot                                         ; $58d0: $c7
	jr   nz, jr_0fc_5873                             ; $58d1: $20 $a0

	dec  c                                           ; $58d3: $0d
	ld   [hl+], a                                    ; $58d4: $22
	inc  b                                           ; $58d5: $04
	inc  h                                           ; $58d6: $24
	inc  b                                           ; $58d7: $04

jr_0fc_58d8:
	daa                                              ; $58d8: $27
	inc  b                                           ; $58d9: $04
	add  hl, hl                                      ; $58da: $29
	inc  b                                           ; $58db: $04
	daa                                              ; $58dc: $27
	inc  b                                           ; $58dd: $04
	inc  h                                           ; $58de: $24
	inc  b                                           ; $58df: $04

jr_0fc_58e0:
	ld   [hl+], a                                    ; $58e0: $22
	ld   [$082b], sp                                 ; $58e1: $08 $2b $08
	add  hl, hl                                      ; $58e4: $29
	ld   [$0824], sp                                 ; $58e5: $08 $24 $08
	daa                                              ; $58e8: $27
	ld   [$40c7], sp                                 ; $58e9: $08 $c7 $40
	add  hl, hl                                      ; $58ec: $29
	db   $10                                         ; $58ed: $10
	rra                                              ; $58ee: $1f
	jr   nz, @-$37                                   ; $58ef: $20 $c7

	jr   nz, jr_0fc_591c                             ; $58f1: $20 $29

	inc  b                                           ; $58f3: $04
	dec  hl                                          ; $58f4: $2b
	inc  b                                           ; $58f5: $04
	inc  h                                           ; $58f6: $24
	inc  b                                           ; $58f7: $04
	daa                                              ; $58f8: $27
	inc  b                                           ; $58f9: $04
	rst  ToBoot                                         ; $58fa: $c7
	ld   b, b                                        ; $58fb: $40
	add  hl, hl                                      ; $58fc: $29
	inc  c                                           ; $58fd: $0c
	rst  ToBoot                                         ; $58fe: $c7
	jr   nz, jr_0fc_592c                             ; $58ff: $20 $2b

	inc  b                                           ; $5901: $04
	daa                                              ; $5902: $27
	ld   [$0824], sp                                 ; $5903: $08 $24 $08
	rst  ToBoot                                         ; $5906: $c7
	ld   b, b                                        ; $5907: $40
	ld   [hl+], a                                    ; $5908: $22
	db   $10                                         ; $5909: $10
	add  hl, hl                                      ; $590a: $29
	db   $10                                         ; $590b: $10
	rst  ToBoot                                         ; $590c: $c7
	jr   nz, jr_0fc_5936                             ; $590d: $20 $27

	inc  b                                           ; $590f: $04
	and  b                                           ; $5910: $a0
	add  hl, bc                                      ; $5911: $09
	add  hl, hl                                      ; $5912: $29
	inc  b                                           ; $5913: $04
	rst  ToBoot                                         ; $5914: $c7
	ld   b, b                                        ; $5915: $40
	daa                                              ; $5916: $27
	jr   jr_0fc_58e0                                 ; $5917: $18 $c7

	jr   nz, jr_0fc_58bb                             ; $5919: $20 $a0

	dec  c                                           ; $591b: $0d

jr_0fc_591c:
	ld   d, $08                                      ; $591c: $16 $08
	ld   d, $04                                      ; $591e: $16 $04
	ld   [de], a                                     ; $5920: $12
	inc  b                                           ; $5921: $04
	db   $10                                         ; $5922: $10
	inc  b                                           ; $5923: $04
	rra                                              ; $5924: $1f
	inc  b                                           ; $5925: $04
	ld   [de], a                                     ; $5926: $12
	inc  b                                           ; $5927: $04
	rra                                              ; $5928: $1f
	inc  b                                           ; $5929: $04
	rst  ToBoot                                         ; $592a: $c7
	ld   b, b                                        ; $592b: $40

jr_0fc_592c:
	rlca                                             ; $592c: $07
	db   $10                                         ; $592d: $10
	and  b                                           ; $592e: $a0
	ld   [bc], a                                     ; $592f: $02
	rlca                                             ; $5930: $07
	inc  b                                           ; $5931: $04
	rst  ToBoot                                         ; $5932: $c7
	jr   nz, jr_0fc_5954                             ; $5933: $20 $1f

	inc  c                                           ; $5935: $0c

jr_0fc_5936:
	and  b                                           ; $5936: $a0
	dec  c                                           ; $5937: $0d
	daa                                              ; $5938: $27
	ld   [$0829], sp                                 ; $5939: $08 $29 $08
	ld   [hl], $08                                   ; $593c: $36 $08
	scf                                              ; $593e: $37
	ld   [$0432], sp                                 ; $593f: $08 $32 $04
	and  b                                           ; $5942: $a0
	add  hl, bc                                      ; $5943: $09
	inc  [hl]                                        ; $5944: $34
	inc  b                                           ; $5945: $04
	ld   [hl-], a                                    ; $5946: $32
	ld   [$0da0], sp                                 ; $5947: $08 $a0 $0d
	ld   [hl+], a                                    ; $594a: $22
	inc  b                                           ; $594b: $04
	and  b                                           ; $594c: $a0
	add  hl, bc                                      ; $594d: $09
	ld   [hl+], a                                    ; $594e: $22
	ld   [bc], a                                     ; $594f: $02
	rra                                              ; $5950: $1f
	ld   [bc], a                                     ; $5951: $02
	and  b                                           ; $5952: $a0
	dec  c                                           ; $5953: $0d

jr_0fc_5954:
	ld   [hl+], a                                    ; $5954: $22
	inc  b                                           ; $5955: $04
	and  b                                           ; $5956: $a0
	add  hl, bc                                      ; $5957: $09
	ld   [hl+], a                                    ; $5958: $22
	ld   [bc], a                                     ; $5959: $02
	rra                                              ; $595a: $1f
	ld   [bc], a                                     ; $595b: $02
	rst  ToBoot                                         ; $595c: $c7
	ld   b, b                                        ; $595d: $40
	and  b                                           ; $595e: $a0
	dec  c                                           ; $595f: $0d
	inc  h                                           ; $5960: $24
	db   $10                                         ; $5961: $10
	ld   [hl+], a                                    ; $5962: $22
	db   $10                                         ; $5963: $10
	rst  ToBoot                                         ; $5964: $c7
	jr   nz, jr_0fc_5986                             ; $5965: $20 $1f

	ld   [$0422], sp                                 ; $5967: $08 $22 $04
	and  b                                           ; $596a: $a0
	add  hl, bc                                      ; $596b: $09
	ld   [hl+], a                                    ; $596c: $22
	ld   [bc], a                                     ; $596d: $02
	rra                                              ; $596e: $1f
	ld   [bc], a                                     ; $596f: $02
	and  b                                           ; $5970: $a0
	dec  c                                           ; $5971: $0d
	ld   [hl+], a                                    ; $5972: $22
	inc  b                                           ; $5973: $04
	and  b                                           ; $5974: $a0
	add  hl, bc                                      ; $5975: $09
	ld   [hl+], a                                    ; $5976: $22
	ld   [bc], a                                     ; $5977: $02
	rra                                              ; $5978: $1f
	ld   [bc], a                                     ; $5979: $02
	and  b                                           ; $597a: $a0
	dec  c                                           ; $597b: $0d
	ld   [hl+], a                                    ; $597c: $22
	inc  b                                           ; $597d: $04
	and  b                                           ; $597e: $a0
	add  hl, bc                                      ; $597f: $09
	ld   [hl+], a                                    ; $5980: $22
	ld   [bc], a                                     ; $5981: $02
	rra                                              ; $5982: $1f
	ld   [bc], a                                     ; $5983: $02
	and  b                                           ; $5984: $a0
	dec  c                                           ; $5985: $0d

jr_0fc_5986:
	ld   [hl-], a                                    ; $5986: $32
	ld   [$0831], sp                                 ; $5987: $08 $31 $08
	add  hl, hl                                      ; $598a: $29
	ld   [$0827], sp                                 ; $598b: $08 $27 $08
	dec  hl                                          ; $598e: $2b
	inc  b                                           ; $598f: $04
	and  b                                           ; $5990: $a0
	add  hl, bc                                      ; $5991: $09
	ld   a, [hl+]                                    ; $5992: $2a
	inc  b                                           ; $5993: $04
	dec  hl                                          ; $5994: $2b
	ld   [$0da0], sp                                 ; $5995: $08 $a0 $0d
	ld   [hl+], a                                    ; $5998: $22
	inc  b                                           ; $5999: $04
	and  b                                           ; $599a: $a0
	add  hl, bc                                      ; $599b: $09
	ld   [hl+], a                                    ; $599c: $22
	ld   [bc], a                                     ; $599d: $02
	rra                                              ; $599e: $1f
	ld   [bc], a                                     ; $599f: $02
	and  b                                           ; $59a0: $a0
	dec  c                                           ; $59a1: $0d
	ld   [hl+], a                                    ; $59a2: $22
	inc  b                                           ; $59a3: $04
	and  b                                           ; $59a4: $a0
	add  hl, bc                                      ; $59a5: $09
	ld   [hl+], a                                    ; $59a6: $22
	ld   [bc], a                                     ; $59a7: $02
	rra                                              ; $59a8: $1f
	ld   [bc], a                                     ; $59a9: $02
	rst  ToBoot                                         ; $59aa: $c7
	ld   b, b                                        ; $59ab: $40
	and  b                                           ; $59ac: $a0
	dec  c                                           ; $59ad: $0d
	inc  h                                           ; $59ae: $24
	db   $10                                         ; $59af: $10
	ld   [hl+], a                                    ; $59b0: $22
	db   $10                                         ; $59b1: $10
	rst  ToBoot                                         ; $59b2: $c7
	jr   nz, jr_0fc_59d7                             ; $59b3: $20 $22

	inc  b                                           ; $59b5: $04
	inc  h                                           ; $59b6: $24
	inc  b                                           ; $59b7: $04
	daa                                              ; $59b8: $27
	inc  b                                           ; $59b9: $04
	add  hl, hl                                      ; $59ba: $29
	inc  b                                           ; $59bb: $04
	daa                                              ; $59bc: $27
	inc  b                                           ; $59bd: $04
	inc  h                                           ; $59be: $24
	inc  b                                           ; $59bf: $04
	ld   [hl+], a                                    ; $59c0: $22
	ld   [$082b], sp                                 ; $59c1: $08 $2b $08
	add  hl, hl                                      ; $59c4: $29
	ld   [$0824], sp                                 ; $59c5: $08 $24 $08
	daa                                              ; $59c8: $27
	ld   [$40c7], sp                                 ; $59c9: $08 $c7 $40
	add  hl, hl                                      ; $59cc: $29
	db   $10                                         ; $59cd: $10
	rst  ToBoot                                         ; $59ce: $c7
	jr   nz, jr_0fc_59f1                             ; $59cf: $20 $20

	inc  b                                           ; $59d1: $04
	and  b                                           ; $59d2: $a0
	add  hl, bc                                      ; $59d3: $09
	jr   nz, jr_0fc_59d8                             ; $59d4: $20 $02

	rra                                              ; $59d6: $1f

jr_0fc_59d7:
	ld   [bc], a                                     ; $59d7: $02

jr_0fc_59d8:
	and  b                                           ; $59d8: $a0
	dec  c                                           ; $59d9: $0d
	jr   nz, jr_0fc_59e0                             ; $59da: $20 $04

	and  b                                           ; $59dc: $a0
	add  hl, bc                                      ; $59dd: $09
	jr   nz, jr_0fc_59e2                             ; $59de: $20 $02

jr_0fc_59e0:
	rra                                              ; $59e0: $1f
	ld   [bc], a                                     ; $59e1: $02

jr_0fc_59e2:
	rst  ToBoot                                         ; $59e2: $c7
	ld   b, b                                        ; $59e3: $40
	and  b                                           ; $59e4: $a0
	dec  c                                           ; $59e5: $0d
	ld   [hl+], a                                    ; $59e6: $22
	db   $10                                         ; $59e7: $10
	rst  ToBoot                                         ; $59e8: $c7
	jr   nz, jr_0fc_5a14                             ; $59e9: $20 $29

	inc  b                                           ; $59eb: $04
	dec  hl                                          ; $59ec: $2b
	inc  b                                           ; $59ed: $04
	inc  h                                           ; $59ee: $24
	inc  b                                           ; $59ef: $04
	daa                                              ; $59f0: $27

jr_0fc_59f1:
	inc  b                                           ; $59f1: $04
	rst  ToBoot                                         ; $59f2: $c7
	ld   b, b                                        ; $59f3: $40
	add  hl, hl                                      ; $59f4: $29
	inc  c                                           ; $59f5: $0c
	rst  ToBoot                                         ; $59f6: $c7
	jr   nz, jr_0fc_5a24                             ; $59f7: $20 $2b

	inc  b                                           ; $59f9: $04
	daa                                              ; $59fa: $27
	ld   [$0824], sp                                 ; $59fb: $08 $24 $08
	rst  ToBoot                                         ; $59fe: $c7
	ld   b, b                                        ; $59ff: $40
	ld   [hl+], a                                    ; $5a00: $22
	db   $10                                         ; $5a01: $10
	add  hl, hl                                      ; $5a02: $29
	db   $10                                         ; $5a03: $10
	rst  ToBoot                                         ; $5a04: $c7
	jr   nz, jr_0fc_5a2e                             ; $5a05: $20 $27

	inc  b                                           ; $5a07: $04
	and  b                                           ; $5a08: $a0
	add  hl, bc                                      ; $5a09: $09
	add  hl, hl                                      ; $5a0a: $29
	inc  b                                           ; $5a0b: $04
	daa                                              ; $5a0c: $27
	ld   [$0da0], sp                                 ; $5a0d: $08 $a0 $0d
	ld   [hl+], a                                    ; $5a10: $22
	inc  b                                           ; $5a11: $04
	and  b                                           ; $5a12: $a0
	add  hl, bc                                      ; $5a13: $09

jr_0fc_5a14:
	ld   [hl+], a                                    ; $5a14: $22
	ld   [bc], a                                     ; $5a15: $02
	rra                                              ; $5a16: $1f
	ld   [bc], a                                     ; $5a17: $02
	and  b                                           ; $5a18: $a0
	dec  c                                           ; $5a19: $0d
	ld   [hl+], a                                    ; $5a1a: $22
	inc  b                                           ; $5a1b: $04
	and  b                                           ; $5a1c: $a0
	add  hl, bc                                      ; $5a1d: $09
	ld   [hl+], a                                    ; $5a1e: $22
	ld   [bc], a                                     ; $5a1f: $02
	rra                                              ; $5a20: $1f
	ld   [bc], a                                     ; $5a21: $02
	and  b                                           ; $5a22: $a0
	dec  c                                           ; $5a23: $0d

jr_0fc_5a24:
	ld   d, $08                                      ; $5a24: $16 $08
	ld   d, $04                                      ; $5a26: $16 $04
	ld   [de], a                                     ; $5a28: $12
	inc  b                                           ; $5a29: $04
	db   $10                                         ; $5a2a: $10
	inc  b                                           ; $5a2b: $04
	and  b                                           ; $5a2c: $a0
	add  hl, bc                                      ; $5a2d: $09

jr_0fc_5a2e:
	db   $10                                         ; $5a2e: $10
	ld   [bc], a                                     ; $5a2f: $02
	rra                                              ; $5a30: $1f
	ld   [bc], a                                     ; $5a31: $02
	and  b                                           ; $5a32: $a0
	dec  c                                           ; $5a33: $0d
	ld   [de], a                                     ; $5a34: $12
	inc  b                                           ; $5a35: $04
	rra                                              ; $5a36: $1f
	inc  b                                           ; $5a37: $04
	rst  ToBoot                                         ; $5a38: $c7
	ld   b, b                                        ; $5a39: $40
	rlca                                             ; $5a3a: $07
	db   $10                                         ; $5a3b: $10
	rst  ToBoot                                         ; $5a3c: $c7
	jr   nz, jr_0fc_5a61                             ; $5a3d: $20 $22

	inc  b                                           ; $5a3f: $04
	and  b                                           ; $5a40: $a0

jr_0fc_5a41:
	add  hl, bc                                      ; $5a41: $09
	ld   [hl+], a                                    ; $5a42: $22
	ld   [bc], a                                     ; $5a43: $02
	rra                                              ; $5a44: $1f
	ld   [bc], a                                     ; $5a45: $02
	and  b                                           ; $5a46: $a0
	dec  c                                           ; $5a47: $0d
	ld   [hl+], a                                    ; $5a48: $22
	inc  b                                           ; $5a49: $04
	and  b                                           ; $5a4a: $a0
	add  hl, bc                                      ; $5a4b: $09
	ld   [hl+], a                                    ; $5a4c: $22
	ld   [bc], a                                     ; $5a4d: $02
	rra                                              ; $5a4e: $1f
	ld   [bc], a                                     ; $5a4f: $02
	rst  ToBoot                                         ; $5a50: $c7
	ld   b, b                                        ; $5a51: $40
	and  b                                           ; $5a52: $a0
	dec  c                                           ; $5a53: $0d
	inc  h                                           ; $5a54: $24
	db   $10                                         ; $5a55: $10
	ld   [hl+], a                                    ; $5a56: $22
	db   $10                                         ; $5a57: $10
	rst  ToBoot                                         ; $5a58: $c7
	jr   nz, @+$21                                   ; $5a59: $20 $1f

	db   $10                                         ; $5a5b: $10
	ld   [hl+], a                                    ; $5a5c: $22
	inc  b                                           ; $5a5d: $04
	and  b                                           ; $5a5e: $a0
	add  hl, bc                                      ; $5a5f: $09
	ld   [hl+], a                                    ; $5a60: $22

jr_0fc_5a61:
	ld   [bc], a                                     ; $5a61: $02
	rra                                              ; $5a62: $1f
	ld   [bc], a                                     ; $5a63: $02
	and  b                                           ; $5a64: $a0
	dec  c                                           ; $5a65: $0d
	ld   [hl+], a                                    ; $5a66: $22
	inc  b                                           ; $5a67: $04
	and  b                                           ; $5a68: $a0
	add  hl, bc                                      ; $5a69: $09
	ld   [hl+], a                                    ; $5a6a: $22
	ld   [bc], a                                     ; $5a6b: $02
	rra                                              ; $5a6c: $1f
	ld   [bc], a                                     ; $5a6d: $02
	rst  ToBoot                                         ; $5a6e: $c7
	ld   b, b                                        ; $5a6f: $40
	and  b                                           ; $5a70: $a0
	dec  c                                           ; $5a71: $0d
	inc  h                                           ; $5a72: $24
	db   $10                                         ; $5a73: $10
	ld   [hl+], a                                    ; $5a74: $22
	db   $10                                         ; $5a75: $10
	rst  ToBoot                                         ; $5a76: $c7
	jr   nz, jr_0fc_5a98                             ; $5a77: $20 $1f

	ld   [$0422], sp                                 ; $5a79: $08 $22 $04
	and  b                                           ; $5a7c: $a0
	add  hl, bc                                      ; $5a7d: $09
	ld   [hl+], a                                    ; $5a7e: $22
	ld   [bc], a                                     ; $5a7f: $02
	rra                                              ; $5a80: $1f
	ld   [bc], a                                     ; $5a81: $02
	and  b                                           ; $5a82: $a0
	dec  c                                           ; $5a83: $0d
	ld   [hl+], a                                    ; $5a84: $22
	inc  b                                           ; $5a85: $04
	and  b                                           ; $5a86: $a0
	add  hl, bc                                      ; $5a87: $09
	ld   [hl+], a                                    ; $5a88: $22
	ld   [bc], a                                     ; $5a89: $02
	rra                                              ; $5a8a: $1f
	ld   [bc], a                                     ; $5a8b: $02
	and  b                                           ; $5a8c: $a0
	dec  c                                           ; $5a8d: $0d
	ld   [hl+], a                                    ; $5a8e: $22
	inc  b                                           ; $5a8f: $04
	and  b                                           ; $5a90: $a0
	add  hl, bc                                      ; $5a91: $09
	ld   [hl+], a                                    ; $5a92: $22

jr_0fc_5a93:
	ld   [bc], a                                     ; $5a93: $02
	rra                                              ; $5a94: $1f
	ld   [bc], a                                     ; $5a95: $02
	rst  ToBoot                                         ; $5a96: $c7
	ld   b, b                                        ; $5a97: $40

jr_0fc_5a98:
	and  b                                           ; $5a98: $a0
	dec  c                                           ; $5a99: $0d
	inc  h                                           ; $5a9a: $24
	db   $10                                         ; $5a9b: $10
	ld   [hl+], a                                    ; $5a9c: $22
	db   $10                                         ; $5a9d: $10
	rst  ToBoot                                         ; $5a9e: $c7
	jr   nz, jr_0fc_5a41                             ; $5a9f: $20 $a0

	dec  c                                           ; $5aa1: $0d
	dec  hl                                          ; $5aa2: $2b
	ld   [bc], a                                     ; $5aa3: $02
	and  b                                           ; $5aa4: $a0
	ld   b, $2b                                      ; $5aa5: $06 $2b
	ld   [bc], a                                     ; $5aa7: $02
	and  b                                           ; $5aa8: $a0
	dec  c                                           ; $5aa9: $0d
	inc  [hl]                                        ; $5aaa: $34
	ld   [bc], a                                     ; $5aab: $02
	and  b                                           ; $5aac: $a0
	ld   b, $34                                      ; $5aad: $06 $34
	ld   [bc], a                                     ; $5aaf: $02
	and  b                                           ; $5ab0: $a0
	dec  c                                           ; $5ab1: $0d
	add  hl, hl                                      ; $5ab2: $29
	ld   [bc], a                                     ; $5ab3: $02
	and  b                                           ; $5ab4: $a0
	ld   b, $29                                      ; $5ab5: $06 $29
	ld   [bc], a                                     ; $5ab7: $02
	and  b                                           ; $5ab8: $a0
	dec  c                                           ; $5ab9: $0d
	ld   [hl-], a                                    ; $5aba: $32
	ld   [bc], a                                     ; $5abb: $02
	and  b                                           ; $5abc: $a0
	ld   b, $32                                      ; $5abd: $06 $32
	ld   [bc], a                                     ; $5abf: $02
	and  b                                           ; $5ac0: $a0
	dec  c                                           ; $5ac1: $0d
	dec  hl                                          ; $5ac2: $2b
	ld   [bc], a                                     ; $5ac3: $02
	and  b                                           ; $5ac4: $a0
	ld   b, $2b                                      ; $5ac5: $06 $2b
	ld   [bc], a                                     ; $5ac7: $02
	and  b                                           ; $5ac8: $a0
	dec  c                                           ; $5ac9: $0d
	inc  [hl]                                        ; $5aca: $34
	ld   [bc], a                                     ; $5acb: $02
	and  b                                           ; $5acc: $a0
	ld   b, $34                                      ; $5acd: $06 $34
	ld   [bc], a                                     ; $5acf: $02
	and  b                                           ; $5ad0: $a0
	dec  c                                           ; $5ad1: $0d
	ld   [hl-], a                                    ; $5ad2: $32
	ld   [bc], a                                     ; $5ad3: $02
	and  b                                           ; $5ad4: $a0
	ld   b, $32                                      ; $5ad5: $06 $32
	ld   [bc], a                                     ; $5ad7: $02
	and  b                                           ; $5ad8: $a0
	dec  c                                           ; $5ad9: $0d
	scf                                              ; $5ada: $37
	ld   [bc], a                                     ; $5adb: $02
	and  b                                           ; $5adc: $a0
	ld   b, $37                                      ; $5add: $06 $37
	ld   [bc], a                                     ; $5adf: $02
	and  b                                           ; $5ae0: $a0
	dec  c                                           ; $5ae1: $0d
	dec  hl                                          ; $5ae2: $2b
	ld   [bc], a                                     ; $5ae3: $02
	and  b                                           ; $5ae4: $a0

jr_0fc_5ae5:
	ld   b, $2b                                      ; $5ae5: $06 $2b
	ld   [bc], a                                     ; $5ae7: $02
	and  b                                           ; $5ae8: $a0
	dec  c                                           ; $5ae9: $0d
	inc  [hl]                                        ; $5aea: $34
	ld   [bc], a                                     ; $5aeb: $02
	and  b                                           ; $5aec: $a0
	ld   b, $34                                      ; $5aed: $06 $34
	ld   [bc], a                                     ; $5aef: $02
	rra                                              ; $5af0: $1f
	jr   jr_0fc_5a93                                 ; $5af1: $18 $a0

	dec  c                                           ; $5af3: $0d
	ld   h, $02                                      ; $5af4: $26 $02
	and  b                                           ; $5af6: $a0
	ld   b, $26                                      ; $5af7: $06 $26
	ld   [bc], a                                     ; $5af9: $02
	and  b                                           ; $5afa: $a0
	dec  c                                           ; $5afb: $0d
	dec  hl                                          ; $5afc: $2b
	ld   [bc], a                                     ; $5afd: $02
	and  b                                           ; $5afe: $a0
	ld   b, $2b                                      ; $5aff: $06 $2b
	ld   [bc], a                                     ; $5b01: $02
	and  b                                           ; $5b02: $a0
	dec  c                                           ; $5b03: $0d
	inc  h                                           ; $5b04: $24
	ld   [bc], a                                     ; $5b05: $02
	and  b                                           ; $5b06: $a0
	ld   b, $24                                      ; $5b07: $06 $24
	ld   [bc], a                                     ; $5b09: $02
	and  b                                           ; $5b0a: $a0
	dec  c                                           ; $5b0b: $0d
	add  hl, hl                                      ; $5b0c: $29
	ld   [bc], a                                     ; $5b0d: $02
	and  b                                           ; $5b0e: $a0
	ld   b, $29                                      ; $5b0f: $06 $29
	ld   [bc], a                                     ; $5b11: $02
	and  b                                           ; $5b12: $a0
	dec  c                                           ; $5b13: $0d
	ld   h, $02                                      ; $5b14: $26 $02
	and  b                                           ; $5b16: $a0
	ld   b, $26                                      ; $5b17: $06 $26
	ld   [bc], a                                     ; $5b19: $02
	and  b                                           ; $5b1a: $a0
	dec  c                                           ; $5b1b: $0d
	dec  hl                                          ; $5b1c: $2b
	ld   [bc], a                                     ; $5b1d: $02
	and  b                                           ; $5b1e: $a0
	ld   b, $2b                                      ; $5b1f: $06 $2b
	ld   [bc], a                                     ; $5b21: $02
	and  b                                           ; $5b22: $a0
	dec  c                                           ; $5b23: $0d
	add  hl, hl                                      ; $5b24: $29
	ld   [bc], a                                     ; $5b25: $02
	and  b                                           ; $5b26: $a0
	ld   b, $29                                      ; $5b27: $06 $29
	ld   [bc], a                                     ; $5b29: $02
	and  b                                           ; $5b2a: $a0
	dec  c                                           ; $5b2b: $0d
	ld   [hl-], a                                    ; $5b2c: $32
	ld   [bc], a                                     ; $5b2d: $02
	and  b                                           ; $5b2e: $a0
	ld   b, $32                                      ; $5b2f: $06 $32
	ld   [bc], a                                     ; $5b31: $02
	and  b                                           ; $5b32: $a0
	dec  c                                           ; $5b33: $0d
	ld   h, $02                                      ; $5b34: $26 $02
	and  b                                           ; $5b36: $a0
	ld   b, $26                                      ; $5b37: $06 $26
	ld   [bc], a                                     ; $5b39: $02
	and  b                                           ; $5b3a: $a0
	dec  c                                           ; $5b3b: $0d
	dec  hl                                          ; $5b3c: $2b
	ld   [bc], a                                     ; $5b3d: $02
	and  b                                           ; $5b3e: $a0
	ld   b, $2b                                      ; $5b3f: $06 $2b
	ld   [bc], a                                     ; $5b41: $02
	rra                                              ; $5b42: $1f
	jr   jr_0fc_5ae5                                 ; $5b43: $18 $a0

	dec  c                                           ; $5b45: $0d
	dec  hl                                          ; $5b46: $2b
	ld   [bc], a                                     ; $5b47: $02
	and  b                                           ; $5b48: $a0
	ld   b, $2b                                      ; $5b49: $06 $2b
	ld   [bc], a                                     ; $5b4b: $02
	and  b                                           ; $5b4c: $a0
	dec  c                                           ; $5b4d: $0d
	inc  [hl]                                        ; $5b4e: $34
	ld   [bc], a                                     ; $5b4f: $02
	and  b                                           ; $5b50: $a0
	ld   b, $34                                      ; $5b51: $06 $34
	ld   [bc], a                                     ; $5b53: $02
	and  b                                           ; $5b54: $a0
	dec  c                                           ; $5b55: $0d
	add  hl, hl                                      ; $5b56: $29
	ld   [bc], a                                     ; $5b57: $02
	and  b                                           ; $5b58: $a0
	ld   b, $29                                      ; $5b59: $06 $29
	ld   [bc], a                                     ; $5b5b: $02
	and  b                                           ; $5b5c: $a0
	dec  c                                           ; $5b5d: $0d
	ld   [hl-], a                                    ; $5b5e: $32
	ld   [bc], a                                     ; $5b5f: $02
	and  b                                           ; $5b60: $a0
	ld   b, $32                                      ; $5b61: $06 $32
	ld   [bc], a                                     ; $5b63: $02
	and  b                                           ; $5b64: $a0
	dec  c                                           ; $5b65: $0d
	dec  hl                                          ; $5b66: $2b
	ld   [bc], a                                     ; $5b67: $02
	and  b                                           ; $5b68: $a0
	ld   b, $2b                                      ; $5b69: $06 $2b
	ld   [bc], a                                     ; $5b6b: $02
	and  b                                           ; $5b6c: $a0
	dec  c                                           ; $5b6d: $0d
	inc  [hl]                                        ; $5b6e: $34
	ld   [bc], a                                     ; $5b6f: $02
	and  b                                           ; $5b70: $a0
	ld   b, $34                                      ; $5b71: $06 $34
	ld   [bc], a                                     ; $5b73: $02
	and  b                                           ; $5b74: $a0
	dec  c                                           ; $5b75: $0d
	ld   [hl-], a                                    ; $5b76: $32
	ld   [bc], a                                     ; $5b77: $02
	and  b                                           ; $5b78: $a0
	ld   b, $32                                      ; $5b79: $06 $32
	ld   [bc], a                                     ; $5b7b: $02
	and  b                                           ; $5b7c: $a0
	dec  c                                           ; $5b7d: $0d
	scf                                              ; $5b7e: $37
	ld   [bc], a                                     ; $5b7f: $02
	and  b                                           ; $5b80: $a0
	ld   b, $37                                      ; $5b81: $06 $37
	ld   [bc], a                                     ; $5b83: $02
	and  b                                           ; $5b84: $a0
	dec  c                                           ; $5b85: $0d
	inc  [hl]                                        ; $5b86: $34
	ld   [bc], a                                     ; $5b87: $02
	and  b                                           ; $5b88: $a0
	ld   b, $34                                      ; $5b89: $06 $34
	ld   [bc], a                                     ; $5b8b: $02
	and  b                                           ; $5b8c: $a0
	dec  c                                           ; $5b8d: $0d
	add  hl, sp                                      ; $5b8e: $39
	ld   [bc], a                                     ; $5b8f: $02
	and  b                                           ; $5b90: $a0
	ld   b, $39                                      ; $5b91: $06 $39
	ld   [bc], a                                     ; $5b93: $02
	and  b                                           ; $5b94: $a0
	dec  c                                           ; $5b95: $0d
	dec  hl                                          ; $5b96: $2b
	ld   [bc], a                                     ; $5b97: $02
	and  b                                           ; $5b98: $a0
	ld   b, $2b                                      ; $5b99: $06 $2b
	ld   [bc], a                                     ; $5b9b: $02
	and  b                                           ; $5b9c: $a0
	dec  c                                           ; $5b9d: $0d
	inc  [hl]                                        ; $5b9e: $34
	ld   [bc], a                                     ; $5b9f: $02
	and  b                                           ; $5ba0: $a0
	ld   b, $34                                      ; $5ba1: $06 $34
	ld   [bc], a                                     ; $5ba3: $02
	and  b                                           ; $5ba4: $a0
	dec  c                                           ; $5ba5: $0d
	add  hl, hl                                      ; $5ba6: $29
	ld   [bc], a                                     ; $5ba7: $02
	and  b                                           ; $5ba8: $a0
	ld   b, $29                                      ; $5ba9: $06 $29
	ld   [bc], a                                     ; $5bab: $02
	and  b                                           ; $5bac: $a0
	dec  c                                           ; $5bad: $0d
	ld   [hl-], a                                    ; $5bae: $32
	ld   [bc], a                                     ; $5baf: $02
	and  b                                           ; $5bb0: $a0
	ld   b, $32                                      ; $5bb1: $06 $32
	ld   [bc], a                                     ; $5bb3: $02
	and  b                                           ; $5bb4: $a0
	dec  c                                           ; $5bb5: $0d
	dec  hl                                          ; $5bb6: $2b
	ld   [bc], a                                     ; $5bb7: $02
	and  b                                           ; $5bb8: $a0
	ld   b, $2b                                      ; $5bb9: $06 $2b
	ld   [bc], a                                     ; $5bbb: $02
	and  b                                           ; $5bbc: $a0
	dec  c                                           ; $5bbd: $0d
	inc  [hl]                                        ; $5bbe: $34
	ld   [bc], a                                     ; $5bbf: $02
	and  b                                           ; $5bc0: $a0
	ld   b, $34                                      ; $5bc1: $06 $34
	ld   [bc], a                                     ; $5bc3: $02
	rst  ToBoot                                         ; $5bc4: $c7
	ld   b, b                                        ; $5bc5: $40
	and  b                                           ; $5bc6: $a0
	dec  c                                           ; $5bc7: $0d
	rla                                              ; $5bc8: $17
	db   $10                                         ; $5bc9: $10
	rst  ToBoot                                         ; $5bca: $c7
	jr   nz, jr_0fc_5bef                             ; $5bcb: $20 $22

	ld   [bc], a                                     ; $5bcd: $02
	and  b                                           ; $5bce: $a0
	add  hl, bc                                      ; $5bcf: $09
	ld   [hl+], a                                    ; $5bd0: $22
	ld   [bc], a                                     ; $5bd1: $02
	and  b                                           ; $5bd2: $a0
	dec  c                                           ; $5bd3: $0d
	inc  h                                           ; $5bd4: $24
	ld   [bc], a                                     ; $5bd5: $02
	and  b                                           ; $5bd6: $a0
	add  hl, bc                                      ; $5bd7: $09
	inc  h                                           ; $5bd8: $24
	ld   [bc], a                                     ; $5bd9: $02
	and  b                                           ; $5bda: $a0
	dec  c                                           ; $5bdb: $0d
	daa                                              ; $5bdc: $27
	ld   [bc], a                                     ; $5bdd: $02
	and  b                                           ; $5bde: $a0
	add  hl, bc                                      ; $5bdf: $09
	daa                                              ; $5be0: $27
	ld   [bc], a                                     ; $5be1: $02
	and  b                                           ; $5be2: $a0
	dec  c                                           ; $5be3: $0d
	dec  hl                                          ; $5be4: $2b
	ld   [bc], a                                     ; $5be5: $02
	and  b                                           ; $5be6: $a0
	add  hl, bc                                      ; $5be7: $09
	dec  hl                                          ; $5be8: $2b
	ld   [bc], a                                     ; $5be9: $02
	and  b                                           ; $5bea: $a0
	dec  c                                           ; $5beb: $0d
	daa                                              ; $5bec: $27
	ld   [bc], a                                     ; $5bed: $02
	and  b                                           ; $5bee: $a0

jr_0fc_5bef:
	add  hl, bc                                      ; $5bef: $09
	daa                                              ; $5bf0: $27
	ld   [bc], a                                     ; $5bf1: $02
	and  b                                           ; $5bf2: $a0
	dec  c                                           ; $5bf3: $0d
	add  hl, hl                                      ; $5bf4: $29
	ld   [bc], a                                     ; $5bf5: $02
	and  b                                           ; $5bf6: $a0
	add  hl, bc                                      ; $5bf7: $09
	add  hl, hl                                      ; $5bf8: $29
	ld   [bc], a                                     ; $5bf9: $02
	and  b                                           ; $5bfa: $a0
	dec  c                                           ; $5bfb: $0d
	ld   [hl-], a                                    ; $5bfc: $32
	inc  bc                                          ; $5bfd: $03
	and  b                                           ; $5bfe: $a0
	add  hl, bc                                      ; $5bff: $09
	ld   [hl-], a                                    ; $5c00: $32
	inc  bc                                          ; $5c01: $03
	and  b                                           ; $5c02: $a0
	dec  c                                           ; $5c03: $0d
	inc  [hl]                                        ; $5c04: $34
	ld   [bc], a                                     ; $5c05: $02
	and  b                                           ; $5c06: $a0
	add  hl, bc                                      ; $5c07: $09
	inc  [hl]                                        ; $5c08: $34
	inc  bc                                          ; $5c09: $03
	and  b                                           ; $5c0a: $a0
	dec  c                                           ; $5c0b: $0d
	ld   [hl-], a                                    ; $5c0c: $32
	inc  bc                                          ; $5c0d: $03
	and  b                                           ; $5c0e: $a0
	add  hl, bc                                      ; $5c0f: $09
	ld   [hl-], a                                    ; $5c10: $32
	ld   [bc], a                                     ; $5c11: $02
	and  b                                           ; $5c12: $a0
	dec  c                                           ; $5c13: $0d
	inc  [hl]                                        ; $5c14: $34
	inc  bc                                          ; $5c15: $03
	and  b                                           ; $5c16: $a0
	add  hl, bc                                      ; $5c17: $09
	inc  [hl]                                        ; $5c18: $34
	inc  bc                                          ; $5c19: $03
	and  b                                           ; $5c1a: $a0
	dec  c                                           ; $5c1b: $0d
	scf                                              ; $5c1c: $37
	ld   [bc], a                                     ; $5c1d: $02
	and  b                                           ; $5c1e: $a0
	add  hl, bc                                      ; $5c1f: $09
	scf                                              ; $5c20: $37
	inc  bc                                          ; $5c21: $03
	and  b                                           ; $5c22: $a0
	dec  c                                           ; $5c23: $0d
	add  hl, sp                                      ; $5c24: $39
	inc  bc                                          ; $5c25: $03
	and  b                                           ; $5c26: $a0
	add  hl, bc                                      ; $5c27: $09
	add  hl, sp                                      ; $5c28: $39
	ld   [bc], a                                     ; $5c29: $02
	and  b                                           ; $5c2a: $a0
	dec  c                                           ; $5c2b: $0d
	dec  sp                                          ; $5c2c: $3b
	ld   [bc], a                                     ; $5c2d: $02
	ld   b, d                                        ; $5c2e: $42
	ld   [bc], a                                     ; $5c2f: $02
	rst  ToBoot                                         ; $5c30: $c7
	ld   b, b                                        ; $5c31: $40
	dec  sp                                          ; $5c32: $3b
	inc  [hl]                                        ; $5c33: $34
	rst  ToBoot                                         ; $5c34: $c7
	jr   nz, @+$21                                   ; $5c35: $20 $1f

	db   $10                                         ; $5c37: $10
	and  b                                           ; $5c38: $a0
	inc  c                                           ; $5c39: $0c
	inc  h                                           ; $5c3a: $24
	inc  b                                           ; $5c3b: $04
	and  b                                           ; $5c3c: $a0
	dec  b                                           ; $5c3d: $05
	inc  h                                           ; $5c3e: $24
	ld   [bc], a                                     ; $5c3f: $02
	rra                                              ; $5c40: $1f
	ld   [bc], a                                     ; $5c41: $02
	and  b                                           ; $5c42: $a0
	inc  c                                           ; $5c43: $0c
	inc  h                                           ; $5c44: $24
	inc  b                                           ; $5c45: $04
	and  b                                           ; $5c46: $a0
	dec  b                                           ; $5c47: $05
	inc  h                                           ; $5c48: $24
	ld   [bc], a                                     ; $5c49: $02
	rra                                              ; $5c4a: $1f
	ld   [bc], a                                     ; $5c4b: $02
	rst  ToBoot                                         ; $5c4c: $c7
	ld   b, b                                        ; $5c4d: $40
	and  b                                           ; $5c4e: $a0
	inc  c                                           ; $5c4f: $0c
	ld   h, $10                                      ; $5c50: $26 $10
	inc  h                                           ; $5c52: $24
	db   $10                                         ; $5c53: $10
	rst  ToBoot                                         ; $5c54: $c7
	jr   nz, jr_0fc_5c76                             ; $5c55: $20 $1f

	ld   [$0424], sp                                 ; $5c57: $08 $24 $04
	and  b                                           ; $5c5a: $a0
	dec  b                                           ; $5c5b: $05
	inc  h                                           ; $5c5c: $24
	ld   [bc], a                                     ; $5c5d: $02
	rra                                              ; $5c5e: $1f
	ld   [bc], a                                     ; $5c5f: $02
	and  b                                           ; $5c60: $a0
	inc  c                                           ; $5c61: $0c
	inc  h                                           ; $5c62: $24
	inc  b                                           ; $5c63: $04
	and  b                                           ; $5c64: $a0
	dec  b                                           ; $5c65: $05
	inc  h                                           ; $5c66: $24

jr_0fc_5c67:
	ld   [bc], a                                     ; $5c67: $02
	rra                                              ; $5c68: $1f
	ld   [bc], a                                     ; $5c69: $02
	and  b                                           ; $5c6a: $a0
	inc  c                                           ; $5c6b: $0c
	inc  h                                           ; $5c6c: $24
	inc  b                                           ; $5c6d: $04
	and  b                                           ; $5c6e: $a0
	dec  b                                           ; $5c6f: $05
	inc  h                                           ; $5c70: $24
	ld   [bc], a                                     ; $5c71: $02
	rra                                              ; $5c72: $1f
	ld   [bc], a                                     ; $5c73: $02
	rst  ToBoot                                         ; $5c74: $c7
	ld   b, b                                        ; $5c75: $40

jr_0fc_5c76:
	and  b                                           ; $5c76: $a0
	inc  c                                           ; $5c77: $0c
	ld   h, $10                                      ; $5c78: $26 $10
	inc  h                                           ; $5c7a: $24
	db   $10                                         ; $5c7b: $10
	rst  ToBoot                                         ; $5c7c: $c7
	jr   nz, @+$21                                   ; $5c7d: $20 $1f

	db   $10                                         ; $5c7f: $10
	inc  h                                           ; $5c80: $24
	inc  b                                           ; $5c81: $04
	and  b                                           ; $5c82: $a0
	dec  b                                           ; $5c83: $05
	inc  h                                           ; $5c84: $24
	ld   [bc], a                                     ; $5c85: $02
	rra                                              ; $5c86: $1f

jr_0fc_5c87:
	ld   [bc], a                                     ; $5c87: $02
	and  b                                           ; $5c88: $a0
	inc  c                                           ; $5c89: $0c
	inc  h                                           ; $5c8a: $24
	inc  b                                           ; $5c8b: $04
	and  b                                           ; $5c8c: $a0
	dec  b                                           ; $5c8d: $05
	inc  h                                           ; $5c8e: $24
	ld   [bc], a                                     ; $5c8f: $02
	rra                                              ; $5c90: $1f
	ld   [bc], a                                     ; $5c91: $02
	rst  ToBoot                                         ; $5c92: $c7
	ld   b, b                                        ; $5c93: $40
	and  b                                           ; $5c94: $a0
	inc  c                                           ; $5c95: $0c
	ld   h, $10                                      ; $5c96: $26 $10
	inc  h                                           ; $5c98: $24
	db   $10                                         ; $5c99: $10
	rst  ToBoot                                         ; $5c9a: $c7
	jr   nz, jr_0fc_5cbc                             ; $5c9b: $20 $1f

	ld   [$0424], sp                                 ; $5c9d: $08 $24 $04
	and  b                                           ; $5ca0: $a0
	dec  b                                           ; $5ca1: $05
	inc  h                                           ; $5ca2: $24
	ld   [bc], a                                     ; $5ca3: $02
	rra                                              ; $5ca4: $1f
	ld   [bc], a                                     ; $5ca5: $02
	and  b                                           ; $5ca6: $a0
	inc  c                                           ; $5ca7: $0c
	inc  h                                           ; $5ca8: $24

jr_0fc_5ca9:
	inc  b                                           ; $5ca9: $04
	and  b                                           ; $5caa: $a0
	dec  b                                           ; $5cab: $05
	inc  h                                           ; $5cac: $24
	ld   [bc], a                                     ; $5cad: $02
	rra                                              ; $5cae: $1f
	ld   [bc], a                                     ; $5caf: $02
	and  b                                           ; $5cb0: $a0
	inc  c                                           ; $5cb1: $0c
	inc  h                                           ; $5cb2: $24
	inc  b                                           ; $5cb3: $04
	and  b                                           ; $5cb4: $a0
	dec  b                                           ; $5cb5: $05
	inc  h                                           ; $5cb6: $24
	ld   [bc], a                                     ; $5cb7: $02
	rra                                              ; $5cb8: $1f
	ld   [bc], a                                     ; $5cb9: $02
	rst  ToBoot                                         ; $5cba: $c7
	ld   b, b                                        ; $5cbb: $40

jr_0fc_5cbc:
	and  b                                           ; $5cbc: $a0
	inc  c                                           ; $5cbd: $0c
	ld   h, $10                                      ; $5cbe: $26 $10
	inc  h                                           ; $5cc0: $24
	db   $10                                         ; $5cc1: $10
	rst  ToBoot                                         ; $5cc2: $c7
	jr   nz, jr_0fc_5c67                             ; $5cc3: $20 $a2

	ld   [bc], a                                     ; $5cc5: $02
	jp   $a304                                       ; $5cc6: $c3 $04 $a3


	ld   h, $a0                                      ; $5cc9: $26 $a0
	dec  c                                           ; $5ccb: $0d
	add  hl, hl                                      ; $5ccc: $29
	ld   [$042b], sp                                 ; $5ccd: $08 $2b $04
	jr   nc, jr_0fc_5cd6                             ; $5cd0: $30 $04

	ld   [hl-], a                                    ; $5cd2: $32
	ld   [$0434], sp                                 ; $5cd3: $08 $34 $04

jr_0fc_5cd6:
	ld   [hl-], a                                    ; $5cd6: $32
	inc  b                                           ; $5cd7: $04
	add  hl, hl                                      ; $5cd8: $29
	db   $10                                         ; $5cd9: $10
	jr   nc, jr_0fc_5ce4                             ; $5cda: $30 $08

	dec  hl                                          ; $5cdc: $2b
	ld   [bc], a                                     ; $5cdd: $02
	ld   a, [hl+]                                    ; $5cde: $2a
	ld   [bc], a                                     ; $5cdf: $02
	add  hl, hl                                      ; $5ce0: $29
	ld   [bc], a                                     ; $5ce1: $02
	jr   z, @+$04                                    ; $5ce2: $28 $02

jr_0fc_5ce4:
	daa                                              ; $5ce4: $27
	jr   nz, jr_0fc_5c87                             ; $5ce5: $20 $a0

	ld   [bc], a                                     ; $5ce7: $02
	daa                                              ; $5ce8: $27
	inc  b                                           ; $5ce9: $04
	rra                                              ; $5cea: $1f
	inc  e                                           ; $5ceb: $1c
	and  b                                           ; $5cec: $a0
	dec  c                                           ; $5ced: $0d
	add  hl, hl                                      ; $5cee: $29
	ld   [$042b], sp                                 ; $5cef: $08 $2b $04
	jr   nc, jr_0fc_5cf8                             ; $5cf2: $30 $04

	ld   [hl-], a                                    ; $5cf4: $32
	ld   [$0434], sp                                 ; $5cf5: $08 $34 $04

jr_0fc_5cf8:
	ld   [hl-], a                                    ; $5cf8: $32
	inc  b                                           ; $5cf9: $04
	add  hl, hl                                      ; $5cfa: $29
	db   $10                                         ; $5cfb: $10
	jr   nc, jr_0fc_5d06                             ; $5cfc: $30 $08

	dec  hl                                          ; $5cfe: $2b
	ld   [bc], a                                     ; $5cff: $02
	ld   a, [hl+]                                    ; $5d00: $2a
	ld   [bc], a                                     ; $5d01: $02
	add  hl, hl                                      ; $5d02: $29
	ld   [bc], a                                     ; $5d03: $02
	jr   z, @+$04                                    ; $5d04: $28 $02

jr_0fc_5d06:
	daa                                              ; $5d06: $27
	jr   nz, jr_0fc_5ca9                             ; $5d07: $20 $a0

	ld   [bc], a                                     ; $5d09: $02
	daa                                              ; $5d0a: $27
	inc  b                                           ; $5d0b: $04
	rra                                              ; $5d0c: $1f
	inc  e                                           ; $5d0d: $1c
	and  b                                           ; $5d0e: $a0
	dec  c                                           ; $5d0f: $0d
	dec  [hl]                                        ; $5d10: $35
	ld   [$0434], sp                                 ; $5d11: $08 $34 $04
	ld   [hl-], a                                    ; $5d14: $32
	inc  b                                           ; $5d15: $04
	jr   nc, jr_0fc_5d1c                             ; $5d16: $30 $04

	and  b                                           ; $5d18: $a0
	add  hl, bc                                      ; $5d19: $09
	jr   nc, jr_0fc_5d20                             ; $5d1a: $30 $04

jr_0fc_5d1c:
	and  b                                           ; $5d1c: $a0
	dec  c                                           ; $5d1d: $0d
	inc  [hl]                                        ; $5d1e: $34
	inc  b                                           ; $5d1f: $04

jr_0fc_5d20:
	and  b                                           ; $5d20: $a0
	add  hl, bc                                      ; $5d21: $09
	inc  [hl]                                        ; $5d22: $34
	inc  b                                           ; $5d23: $04
	and  b                                           ; $5d24: $a0
	dec  c                                           ; $5d25: $0d
	ld   [hl-], a                                    ; $5d26: $32
	ld   b, b                                        ; $5d27: $40
	and  b                                           ; $5d28: $a0
	ld   [bc], a                                     ; $5d29: $02
	ld   [hl-], a                                    ; $5d2a: $32
	inc  b                                           ; $5d2b: $04
	and  d                                           ; $5d2c: $a2
	ld   bc, $20c7                                   ; $5d2d: $01 $c7 $20
	and  e                                           ; $5d30: $a3
	inc  h                                           ; $5d31: $24
	rra                                              ; $5d32: $1f
	inc  c                                           ; $5d33: $0c
	and  b                                           ; $5d34: $a0
	inc  c                                           ; $5d35: $0c
	ld   [hl+], a                                    ; $5d36: $22
	inc  b                                           ; $5d37: $04
	and  b                                           ; $5d38: $a0
	dec  b                                           ; $5d39: $05
	ld   [hl+], a                                    ; $5d3a: $22
	ld   [bc], a                                     ; $5d3b: $02
	rra                                              ; $5d3c: $1f

jr_0fc_5d3d:
	ld   [bc], a                                     ; $5d3d: $02
	and  b                                           ; $5d3e: $a0
	inc  c                                           ; $5d3f: $0c

jr_0fc_5d40:
	ld   [hl+], a                                    ; $5d40: $22
	inc  b                                           ; $5d41: $04
	and  b                                           ; $5d42: $a0
	dec  b                                           ; $5d43: $05
	ld   [hl+], a                                    ; $5d44: $22
	ld   [bc], a                                     ; $5d45: $02
	rra                                              ; $5d46: $1f
	ld   [bc], a                                     ; $5d47: $02
	rst  ToBoot                                         ; $5d48: $c7
	ld   b, b                                        ; $5d49: $40
	and  b                                           ; $5d4a: $a0
	inc  c                                           ; $5d4b: $0c
	inc  h                                           ; $5d4c: $24
	db   $10                                         ; $5d4d: $10
	ld   [hl+], a                                    ; $5d4e: $22
	db   $10                                         ; $5d4f: $10
	rst  ToBoot                                         ; $5d50: $c7
	jr   nz, jr_0fc_5d72                             ; $5d51: $20 $1f

	ld   [$0422], sp                                 ; $5d53: $08 $22 $04
	and  b                                           ; $5d56: $a0
	dec  b                                           ; $5d57: $05
	ld   [hl+], a                                    ; $5d58: $22
	ld   [bc], a                                     ; $5d59: $02
	rra                                              ; $5d5a: $1f
	ld   [bc], a                                     ; $5d5b: $02
	and  b                                           ; $5d5c: $a0
	inc  c                                           ; $5d5d: $0c
	ld   [hl+], a                                    ; $5d5e: $22
	inc  b                                           ; $5d5f: $04
	and  b                                           ; $5d60: $a0
	dec  b                                           ; $5d61: $05
	ld   [hl+], a                                    ; $5d62: $22
	ld   [bc], a                                     ; $5d63: $02
	rra                                              ; $5d64: $1f
	ld   [bc], a                                     ; $5d65: $02
	and  b                                           ; $5d66: $a0
	inc  c                                           ; $5d67: $0c
	ld   [hl+], a                                    ; $5d68: $22
	inc  b                                           ; $5d69: $04
	and  b                                           ; $5d6a: $a0
	dec  b                                           ; $5d6b: $05
	ld   [hl+], a                                    ; $5d6c: $22
	ld   [bc], a                                     ; $5d6d: $02
	rra                                              ; $5d6e: $1f
	ld   [bc], a                                     ; $5d6f: $02
	rst  ToBoot                                         ; $5d70: $c7
	ld   b, b                                        ; $5d71: $40

jr_0fc_5d72:
	and  b                                           ; $5d72: $a0
	inc  c                                           ; $5d73: $0c
	inc  h                                           ; $5d74: $24
	db   $10                                         ; $5d75: $10
	ld   [hl+], a                                    ; $5d76: $22
	jr   nz, jr_0fc_5d40                             ; $5d77: $20 $c7

	jr   nz, jr_0fc_5d9a                             ; $5d79: $20 $1f

	db   $10                                         ; $5d7b: $10
	and  b                                           ; $5d7c: $a0
	dec  c                                           ; $5d7d: $0d
	ld   [hl+], a                                    ; $5d7e: $22
	inc  b                                           ; $5d7f: $04
	inc  h                                           ; $5d80: $24
	inc  b                                           ; $5d81: $04
	daa                                              ; $5d82: $27
	inc  b                                           ; $5d83: $04
	add  hl, hl                                      ; $5d84: $29
	inc  b                                           ; $5d85: $04
	daa                                              ; $5d86: $27
	inc  b                                           ; $5d87: $04
	inc  h                                           ; $5d88: $24
	inc  b                                           ; $5d89: $04
	ld   [hl+], a                                    ; $5d8a: $22
	ld   [$f3b0], sp                                 ; $5d8b: $08 $b0 $f3
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	add  hl, bc                                      ; $5d90: $09
	ld   b, b                                        ; $5d91: $40
	ld   [bc], a                                     ; $5d92: $02
	inc  bc                                          ; $5d93: $03

jr_0fc_5d94:
	rra                                              ; $5d94: $1f
	jr   nz, jr_0fc_5d94                             ; $5d95: $20 $fd

	di                                               ; $5d97: $f3
	and  e                                           ; $5d98: $a3
	inc  h                                           ; $5d99: $24

jr_0fc_5d9a:
	and  d                                           ; $5d9a: $a2
	jr   nc, jr_0fc_5d3d                             ; $5d9b: $30 $a0

	ld   [bc], a                                     ; $5d9d: $02
	rla                                              ; $5d9e: $17
	inc  b                                           ; $5d9f: $04
	rla                                              ; $5da0: $17
	inc  b                                           ; $5da1: $04
	rla                                              ; $5da2: $17
	inc  b                                           ; $5da3: $04
	and  b                                           ; $5da4: $a0
	inc  b                                           ; $5da5: $04
	rla                                              ; $5da6: $17
	inc  b                                           ; $5da7: $04
	and  b                                           ; $5da8: $a0
	ld   [bc], a                                     ; $5da9: $02
	add  hl, hl                                      ; $5daa: $29
	inc  b                                           ; $5dab: $04
	and  b                                           ; $5dac: $a0
	inc  b                                           ; $5dad: $04
	add  hl, hl                                      ; $5dae: $29
	ld   [bc], a                                     ; $5daf: $02
	rra                                              ; $5db0: $1f
	ld   [bc], a                                     ; $5db1: $02
	and  b                                           ; $5db2: $a0
	ld   [bc], a                                     ; $5db3: $02
	add  hl, hl                                      ; $5db4: $29
	inc  b                                           ; $5db5: $04
	and  b                                           ; $5db6: $a0
	inc  b                                           ; $5db7: $04
	add  hl, hl                                      ; $5db8: $29
	ld   [bc], a                                     ; $5db9: $02
	rra                                              ; $5dba: $1f
	ld   [bc], a                                     ; $5dbb: $02
	and  b                                           ; $5dbc: $a0
	ld   [bc], a                                     ; $5dbd: $02
	dec  hl                                          ; $5dbe: $2b
	db   $10                                         ; $5dbf: $10
	ld   [hl+], a                                    ; $5dc0: $22
	inc  b                                           ; $5dc1: $04
	inc  h                                           ; $5dc2: $24
	inc  b                                           ; $5dc3: $04
	ld   [hl+], a                                    ; $5dc4: $22
	ld   [$0817], sp                                 ; $5dc5: $08 $17 $08
	add  hl, hl                                      ; $5dc8: $29
	inc  b                                           ; $5dc9: $04
	and  b                                           ; $5dca: $a0
	inc  b                                           ; $5dcb: $04
	add  hl, hl                                      ; $5dcc: $29
	ld   [bc], a                                     ; $5dcd: $02
	rra                                              ; $5dce: $1f
	ld   [bc], a                                     ; $5dcf: $02
	and  b                                           ; $5dd0: $a0
	ld   [bc], a                                     ; $5dd1: $02
	add  hl, hl                                      ; $5dd2: $29
	inc  b                                           ; $5dd3: $04
	and  b                                           ; $5dd4: $a0
	inc  b                                           ; $5dd5: $04
	add  hl, hl                                      ; $5dd6: $29
	ld   [bc], a                                     ; $5dd7: $02
	rra                                              ; $5dd8: $1f
	ld   [bc], a                                     ; $5dd9: $02
	and  b                                           ; $5dda: $a0
	ld   [bc], a                                     ; $5ddb: $02
	add  hl, hl                                      ; $5ddc: $29
	inc  b                                           ; $5ddd: $04
	and  b                                           ; $5dde: $a0
	inc  b                                           ; $5ddf: $04
	add  hl, hl                                      ; $5de0: $29
	ld   [bc], a                                     ; $5de1: $02
	rra                                              ; $5de2: $1f
	ld   [bc], a                                     ; $5de3: $02
	and  b                                           ; $5de4: $a0
	ld   [bc], a                                     ; $5de5: $02
	dec  hl                                          ; $5de6: $2b
	db   $10                                         ; $5de7: $10
	add  hl, hl                                      ; $5de8: $29
	ld   [$0812], sp                                 ; $5de9: $08 $12 $08
	rla                                              ; $5dec: $17
	inc  b                                           ; $5ded: $04
	rla                                              ; $5dee: $17
	inc  b                                           ; $5def: $04
	rla                                              ; $5df0: $17
	inc  b                                           ; $5df1: $04
	and  b                                           ; $5df2: $a0
	inc  b                                           ; $5df3: $04
	rla                                              ; $5df4: $17
	inc  b                                           ; $5df5: $04
	and  b                                           ; $5df6: $a0
	ld   [bc], a                                     ; $5df7: $02
	add  hl, hl                                      ; $5df8: $29
	inc  b                                           ; $5df9: $04
	and  b                                           ; $5dfa: $a0
	inc  b                                           ; $5dfb: $04
	add  hl, hl                                      ; $5dfc: $29
	ld   [bc], a                                     ; $5dfd: $02
	rra                                              ; $5dfe: $1f
	ld   [bc], a                                     ; $5dff: $02
	and  b                                           ; $5e00: $a0
	ld   [bc], a                                     ; $5e01: $02
	add  hl, hl                                      ; $5e02: $29
	inc  b                                           ; $5e03: $04
	and  b                                           ; $5e04: $a0
	inc  b                                           ; $5e05: $04
	add  hl, hl                                      ; $5e06: $29
	ld   [bc], a                                     ; $5e07: $02
	rra                                              ; $5e08: $1f
	ld   [bc], a                                     ; $5e09: $02
	and  b                                           ; $5e0a: $a0
	ld   [bc], a                                     ; $5e0b: $02
	dec  hl                                          ; $5e0c: $2b
	db   $10                                         ; $5e0d: $10
	ld   [hl+], a                                    ; $5e0e: $22
	inc  b                                           ; $5e0f: $04
	inc  h                                           ; $5e10: $24
	inc  b                                           ; $5e11: $04
	ld   [hl+], a                                    ; $5e12: $22
	ld   [$0817], sp                                 ; $5e13: $08 $17 $08
	add  hl, hl                                      ; $5e16: $29
	inc  b                                           ; $5e17: $04
	and  b                                           ; $5e18: $a0
	inc  b                                           ; $5e19: $04
	add  hl, hl                                      ; $5e1a: $29
	ld   [bc], a                                     ; $5e1b: $02
	rra                                              ; $5e1c: $1f
	ld   [bc], a                                     ; $5e1d: $02
	and  b                                           ; $5e1e: $a0
	ld   [bc], a                                     ; $5e1f: $02
	add  hl, hl                                      ; $5e20: $29
	inc  b                                           ; $5e21: $04
	and  b                                           ; $5e22: $a0
	inc  b                                           ; $5e23: $04
	add  hl, hl                                      ; $5e24: $29
	ld   [bc], a                                     ; $5e25: $02
	rra                                              ; $5e26: $1f
	ld   [bc], a                                     ; $5e27: $02
	and  b                                           ; $5e28: $a0
	ld   [bc], a                                     ; $5e29: $02
	add  hl, hl                                      ; $5e2a: $29
	inc  b                                           ; $5e2b: $04
	and  b                                           ; $5e2c: $a0
	inc  b                                           ; $5e2d: $04
	add  hl, hl                                      ; $5e2e: $29
	ld   [bc], a                                     ; $5e2f: $02
	rra                                              ; $5e30: $1f
	ld   [bc], a                                     ; $5e31: $02
	and  b                                           ; $5e32: $a0
	ld   [bc], a                                     ; $5e33: $02
	dec  hl                                          ; $5e34: $2b
	db   $10                                         ; $5e35: $10
	add  hl, hl                                      ; $5e36: $29
	ld   [$0812], sp                                 ; $5e37: $08 $12 $08
	and  b                                           ; $5e3a: $a0
	inc  b                                           ; $5e3b: $04
	ld   [de], a                                     ; $5e3c: $12
	ld   [$181f], sp                                 ; $5e3d: $08 $1f $18
	and  b                                           ; $5e40: $a0
	ld   [bc], a                                     ; $5e41: $02
	rla                                              ; $5e42: $17
	inc  b                                           ; $5e43: $04
	rla                                              ; $5e44: $17
	inc  b                                           ; $5e45: $04
	rla                                              ; $5e46: $17
	inc  b                                           ; $5e47: $04
	and  b                                           ; $5e48: $a0
	inc  b                                           ; $5e49: $04
	rla                                              ; $5e4a: $17
	inc  b                                           ; $5e4b: $04
	and  b                                           ; $5e4c: $a0
	ld   [bc], a                                     ; $5e4d: $02
	add  hl, hl                                      ; $5e4e: $29
	inc  b                                           ; $5e4f: $04
	and  b                                           ; $5e50: $a0
	inc  b                                           ; $5e51: $04
	add  hl, hl                                      ; $5e52: $29
	ld   [bc], a                                     ; $5e53: $02
	rra                                              ; $5e54: $1f
	ld   [bc], a                                     ; $5e55: $02
	and  b                                           ; $5e56: $a0
	ld   [bc], a                                     ; $5e57: $02
	add  hl, hl                                      ; $5e58: $29
	inc  b                                           ; $5e59: $04
	and  b                                           ; $5e5a: $a0
	inc  b                                           ; $5e5b: $04
	add  hl, hl                                      ; $5e5c: $29
	ld   [bc], a                                     ; $5e5d: $02
	rra                                              ; $5e5e: $1f
	ld   [bc], a                                     ; $5e5f: $02
	and  b                                           ; $5e60: $a0
	ld   [bc], a                                     ; $5e61: $02
	dec  hl                                          ; $5e62: $2b
	db   $10                                         ; $5e63: $10
	ld   [hl+], a                                    ; $5e64: $22
	inc  b                                           ; $5e65: $04
	inc  h                                           ; $5e66: $24
	inc  b                                           ; $5e67: $04
	ld   [hl+], a                                    ; $5e68: $22
	ld   [$0817], sp                                 ; $5e69: $08 $17 $08
	add  hl, hl                                      ; $5e6c: $29
	inc  b                                           ; $5e6d: $04
	and  b                                           ; $5e6e: $a0
	inc  b                                           ; $5e6f: $04
	add  hl, hl                                      ; $5e70: $29
	ld   [bc], a                                     ; $5e71: $02
	rra                                              ; $5e72: $1f
	ld   [bc], a                                     ; $5e73: $02
	and  b                                           ; $5e74: $a0
	ld   [bc], a                                     ; $5e75: $02
	add  hl, hl                                      ; $5e76: $29
	inc  b                                           ; $5e77: $04
	and  b                                           ; $5e78: $a0
	inc  b                                           ; $5e79: $04
	add  hl, hl                                      ; $5e7a: $29
	ld   [bc], a                                     ; $5e7b: $02
	rra                                              ; $5e7c: $1f
	ld   [bc], a                                     ; $5e7d: $02
	and  b                                           ; $5e7e: $a0
	ld   [bc], a                                     ; $5e7f: $02
	add  hl, hl                                      ; $5e80: $29
	inc  b                                           ; $5e81: $04
	and  b                                           ; $5e82: $a0
	inc  b                                           ; $5e83: $04
	add  hl, hl                                      ; $5e84: $29
	ld   [bc], a                                     ; $5e85: $02
	rra                                              ; $5e86: $1f
	ld   [bc], a                                     ; $5e87: $02
	and  b                                           ; $5e88: $a0
	ld   [bc], a                                     ; $5e89: $02
	dec  hl                                          ; $5e8a: $2b
	db   $10                                         ; $5e8b: $10
	add  hl, hl                                      ; $5e8c: $29
	ld   [$0812], sp                                 ; $5e8d: $08 $12 $08
	rla                                              ; $5e90: $17
	inc  b                                           ; $5e91: $04
	rla                                              ; $5e92: $17
	inc  b                                           ; $5e93: $04
	rla                                              ; $5e94: $17
	inc  b                                           ; $5e95: $04
	and  b                                           ; $5e96: $a0
	inc  b                                           ; $5e97: $04
	rla                                              ; $5e98: $17
	inc  b                                           ; $5e99: $04
	and  b                                           ; $5e9a: $a0
	ld   [bc], a                                     ; $5e9b: $02
	add  hl, hl                                      ; $5e9c: $29
	inc  b                                           ; $5e9d: $04
	and  b                                           ; $5e9e: $a0
	inc  b                                           ; $5e9f: $04
	add  hl, hl                                      ; $5ea0: $29
	ld   [bc], a                                     ; $5ea1: $02
	rra                                              ; $5ea2: $1f
	ld   [bc], a                                     ; $5ea3: $02
	and  b                                           ; $5ea4: $a0
	ld   [bc], a                                     ; $5ea5: $02
	add  hl, hl                                      ; $5ea6: $29
	inc  b                                           ; $5ea7: $04
	and  b                                           ; $5ea8: $a0
	inc  b                                           ; $5ea9: $04
	add  hl, hl                                      ; $5eaa: $29
	ld   [bc], a                                     ; $5eab: $02
	rra                                              ; $5eac: $1f
	ld   [bc], a                                     ; $5ead: $02
	and  b                                           ; $5eae: $a0
	ld   [bc], a                                     ; $5eaf: $02
	dec  hl                                          ; $5eb0: $2b
	db   $10                                         ; $5eb1: $10
	ld   [hl+], a                                    ; $5eb2: $22
	inc  b                                           ; $5eb3: $04
	inc  h                                           ; $5eb4: $24
	inc  b                                           ; $5eb5: $04
	ld   [hl+], a                                    ; $5eb6: $22
	ld   [$0817], sp                                 ; $5eb7: $08 $17 $08
	add  hl, hl                                      ; $5eba: $29
	inc  b                                           ; $5ebb: $04
	and  b                                           ; $5ebc: $a0
	inc  b                                           ; $5ebd: $04
	add  hl, hl                                      ; $5ebe: $29
	ld   [bc], a                                     ; $5ebf: $02
	rra                                              ; $5ec0: $1f
	ld   [bc], a                                     ; $5ec1: $02
	and  b                                           ; $5ec2: $a0
	ld   [bc], a                                     ; $5ec3: $02
	add  hl, hl                                      ; $5ec4: $29
	inc  b                                           ; $5ec5: $04
	and  b                                           ; $5ec6: $a0
	inc  b                                           ; $5ec7: $04
	add  hl, hl                                      ; $5ec8: $29
	ld   [bc], a                                     ; $5ec9: $02
	rra                                              ; $5eca: $1f
	ld   [bc], a                                     ; $5ecb: $02
	and  b                                           ; $5ecc: $a0
	ld   [bc], a                                     ; $5ecd: $02
	add  hl, hl                                      ; $5ece: $29
	inc  b                                           ; $5ecf: $04
	and  b                                           ; $5ed0: $a0
	inc  b                                           ; $5ed1: $04
	add  hl, hl                                      ; $5ed2: $29
	ld   [bc], a                                     ; $5ed3: $02
	rra                                              ; $5ed4: $1f
	ld   [bc], a                                     ; $5ed5: $02
	and  b                                           ; $5ed6: $a0
	ld   [bc], a                                     ; $5ed7: $02
	dec  hl                                          ; $5ed8: $2b
	db   $10                                         ; $5ed9: $10
	add  hl, hl                                      ; $5eda: $29
	ld   [$0812], sp                                 ; $5edb: $08 $12 $08
	dec  d                                           ; $5ede: $15
	inc  b                                           ; $5edf: $04
	dec  d                                           ; $5ee0: $15
	inc  b                                           ; $5ee1: $04
	dec  d                                           ; $5ee2: $15
	inc  b                                           ; $5ee3: $04
	and  b                                           ; $5ee4: $a0
	inc  b                                           ; $5ee5: $04
	dec  d                                           ; $5ee6: $15
	inc  b                                           ; $5ee7: $04
	and  b                                           ; $5ee8: $a0
	ld   [bc], a                                     ; $5ee9: $02
	daa                                              ; $5eea: $27
	inc  b                                           ; $5eeb: $04
	and  b                                           ; $5eec: $a0
	inc  b                                           ; $5eed: $04
	daa                                              ; $5eee: $27
	ld   [bc], a                                     ; $5eef: $02
	rra                                              ; $5ef0: $1f
	ld   [bc], a                                     ; $5ef1: $02
	and  b                                           ; $5ef2: $a0
	ld   [bc], a                                     ; $5ef3: $02
	daa                                              ; $5ef4: $27
	inc  b                                           ; $5ef5: $04
	and  b                                           ; $5ef6: $a0
	inc  b                                           ; $5ef7: $04
	daa                                              ; $5ef8: $27
	ld   [bc], a                                     ; $5ef9: $02
	rra                                              ; $5efa: $1f
	ld   [bc], a                                     ; $5efb: $02
	and  b                                           ; $5efc: $a0
	ld   [bc], a                                     ; $5efd: $02
	add  hl, hl                                      ; $5efe: $29
	inc  b                                           ; $5eff: $04
	dec  hl                                          ; $5f00: $2b
	inc  b                                           ; $5f01: $04
	add  hl, hl                                      ; $5f02: $29
	ld   [$0825], sp                                 ; $5f03: $08 $25 $08
	jr   nz, jr_0fc_5f10                             ; $5f06: $20 $08

	add  hl, de                                      ; $5f08: $19
	ld   [$0427], sp                                 ; $5f09: $08 $27 $04
	and  b                                           ; $5f0c: $a0
	inc  b                                           ; $5f0d: $04
	daa                                              ; $5f0e: $27
	ld   [bc], a                                     ; $5f0f: $02

jr_0fc_5f10:
	rra                                              ; $5f10: $1f
	ld   [bc], a                                     ; $5f11: $02
	and  b                                           ; $5f12: $a0
	ld   [bc], a                                     ; $5f13: $02
	daa                                              ; $5f14: $27
	inc  b                                           ; $5f15: $04
	and  b                                           ; $5f16: $a0
	inc  b                                           ; $5f17: $04
	daa                                              ; $5f18: $27
	ld   [bc], a                                     ; $5f19: $02
	rra                                              ; $5f1a: $1f
	ld   [bc], a                                     ; $5f1b: $02
	and  b                                           ; $5f1c: $a0
	ld   [bc], a                                     ; $5f1d: $02
	add  hl, de                                      ; $5f1e: $19
	ld   [$0822], sp                                 ; $5f1f: $08 $22 $08
	rra                                              ; $5f22: $1f
	ld   [$102b], sp                                 ; $5f23: $08 $2b $10
	rla                                              ; $5f26: $17
	inc  b                                           ; $5f27: $04
	rla                                              ; $5f28: $17
	inc  b                                           ; $5f29: $04
	rla                                              ; $5f2a: $17
	inc  b                                           ; $5f2b: $04
	and  b                                           ; $5f2c: $a0
	inc  b                                           ; $5f2d: $04
	rla                                              ; $5f2e: $17
	inc  b                                           ; $5f2f: $04
	and  b                                           ; $5f30: $a0
	ld   [bc], a                                     ; $5f31: $02
	add  hl, hl                                      ; $5f32: $29
	inc  b                                           ; $5f33: $04
	and  b                                           ; $5f34: $a0
	inc  b                                           ; $5f35: $04
	add  hl, hl                                      ; $5f36: $29
	ld   [bc], a                                     ; $5f37: $02
	rra                                              ; $5f38: $1f
	ld   [bc], a                                     ; $5f39: $02
	and  b                                           ; $5f3a: $a0
	ld   [bc], a                                     ; $5f3b: $02
	add  hl, hl                                      ; $5f3c: $29
	inc  b                                           ; $5f3d: $04
	and  b                                           ; $5f3e: $a0
	inc  b                                           ; $5f3f: $04
	add  hl, hl                                      ; $5f40: $29
	ld   [bc], a                                     ; $5f41: $02
	rra                                              ; $5f42: $1f
	ld   [bc], a                                     ; $5f43: $02
	and  b                                           ; $5f44: $a0
	ld   [bc], a                                     ; $5f45: $02
	dec  hl                                          ; $5f46: $2b
	db   $10                                         ; $5f47: $10
	ld   [hl+], a                                    ; $5f48: $22
	inc  b                                           ; $5f49: $04
	inc  h                                           ; $5f4a: $24
	inc  b                                           ; $5f4b: $04
	ld   [hl+], a                                    ; $5f4c: $22
	ld   [$0817], sp                                 ; $5f4d: $08 $17 $08
	add  hl, hl                                      ; $5f50: $29
	inc  b                                           ; $5f51: $04
	and  b                                           ; $5f52: $a0
	inc  b                                           ; $5f53: $04
	add  hl, hl                                      ; $5f54: $29
	ld   [bc], a                                     ; $5f55: $02
	rra                                              ; $5f56: $1f
	ld   [bc], a                                     ; $5f57: $02
	and  b                                           ; $5f58: $a0
	ld   [bc], a                                     ; $5f59: $02
	add  hl, hl                                      ; $5f5a: $29
	inc  b                                           ; $5f5b: $04
	and  b                                           ; $5f5c: $a0
	inc  b                                           ; $5f5d: $04
	add  hl, hl                                      ; $5f5e: $29
	ld   [bc], a                                     ; $5f5f: $02
	rra                                              ; $5f60: $1f
	ld   [bc], a                                     ; $5f61: $02
	and  b                                           ; $5f62: $a0
	ld   [bc], a                                     ; $5f63: $02
	add  hl, hl                                      ; $5f64: $29
	inc  b                                           ; $5f65: $04
	and  b                                           ; $5f66: $a0
	inc  b                                           ; $5f67: $04
	add  hl, hl                                      ; $5f68: $29
	ld   [bc], a                                     ; $5f69: $02
	rra                                              ; $5f6a: $1f
	ld   [bc], a                                     ; $5f6b: $02
	and  b                                           ; $5f6c: $a0
	ld   [bc], a                                     ; $5f6d: $02
	dec  hl                                          ; $5f6e: $2b
	db   $10                                         ; $5f6f: $10
	add  hl, hl                                      ; $5f70: $29
	ld   [$0812], sp                                 ; $5f71: $08 $12 $08
	rla                                              ; $5f74: $17
	inc  b                                           ; $5f75: $04
	rla                                              ; $5f76: $17
	inc  b                                           ; $5f77: $04
	rla                                              ; $5f78: $17
	inc  b                                           ; $5f79: $04
	and  b                                           ; $5f7a: $a0
	inc  b                                           ; $5f7b: $04
	rla                                              ; $5f7c: $17
	inc  b                                           ; $5f7d: $04
	and  b                                           ; $5f7e: $a0
	ld   [bc], a                                     ; $5f7f: $02
	add  hl, hl                                      ; $5f80: $29
	inc  b                                           ; $5f81: $04
	and  b                                           ; $5f82: $a0
	inc  b                                           ; $5f83: $04
	add  hl, hl                                      ; $5f84: $29
	ld   [bc], a                                     ; $5f85: $02
	rra                                              ; $5f86: $1f
	ld   [bc], a                                     ; $5f87: $02
	and  b                                           ; $5f88: $a0
	ld   [bc], a                                     ; $5f89: $02
	add  hl, hl                                      ; $5f8a: $29
	inc  b                                           ; $5f8b: $04
	and  b                                           ; $5f8c: $a0
	inc  b                                           ; $5f8d: $04
	add  hl, hl                                      ; $5f8e: $29
	ld   [bc], a                                     ; $5f8f: $02
	rra                                              ; $5f90: $1f
	ld   [bc], a                                     ; $5f91: $02
	and  b                                           ; $5f92: $a0
	ld   [bc], a                                     ; $5f93: $02
	dec  hl                                          ; $5f94: $2b
	db   $10                                         ; $5f95: $10
	ld   [hl+], a                                    ; $5f96: $22
	inc  b                                           ; $5f97: $04
	inc  h                                           ; $5f98: $24
	inc  b                                           ; $5f99: $04
	ld   [hl+], a                                    ; $5f9a: $22
	ld   [$0817], sp                                 ; $5f9b: $08 $17 $08
	add  hl, hl                                      ; $5f9e: $29
	inc  b                                           ; $5f9f: $04
	and  b                                           ; $5fa0: $a0
	inc  b                                           ; $5fa1: $04
	add  hl, hl                                      ; $5fa2: $29
	ld   [bc], a                                     ; $5fa3: $02
	rra                                              ; $5fa4: $1f
	ld   [bc], a                                     ; $5fa5: $02
	and  b                                           ; $5fa6: $a0
	ld   [bc], a                                     ; $5fa7: $02
	add  hl, hl                                      ; $5fa8: $29
	inc  b                                           ; $5fa9: $04
	and  b                                           ; $5faa: $a0
	inc  b                                           ; $5fab: $04
	add  hl, hl                                      ; $5fac: $29
	ld   [bc], a                                     ; $5fad: $02
	rra                                              ; $5fae: $1f
	ld   [bc], a                                     ; $5faf: $02
	and  b                                           ; $5fb0: $a0
	ld   [bc], a                                     ; $5fb1: $02
	add  hl, hl                                      ; $5fb2: $29
	inc  b                                           ; $5fb3: $04
	and  b                                           ; $5fb4: $a0
	inc  b                                           ; $5fb5: $04
	add  hl, hl                                      ; $5fb6: $29
	ld   [bc], a                                     ; $5fb7: $02
	rra                                              ; $5fb8: $1f
	ld   [bc], a                                     ; $5fb9: $02
	and  b                                           ; $5fba: $a0
	ld   [bc], a                                     ; $5fbb: $02
	inc  [hl]                                        ; $5fbc: $34
	db   $10                                         ; $5fbd: $10
	ld   [hl-], a                                    ; $5fbe: $32
	ld   [$0812], sp                                 ; $5fbf: $08 $12 $08
	rla                                              ; $5fc2: $17
	inc  b                                           ; $5fc3: $04
	rla                                              ; $5fc4: $17
	inc  b                                           ; $5fc5: $04
	rla                                              ; $5fc6: $17
	inc  b                                           ; $5fc7: $04
	and  b                                           ; $5fc8: $a0
	inc  b                                           ; $5fc9: $04
	rla                                              ; $5fca: $17
	inc  b                                           ; $5fcb: $04
	and  b                                           ; $5fcc: $a0
	ld   [bc], a                                     ; $5fcd: $02
	add  hl, hl                                      ; $5fce: $29
	inc  b                                           ; $5fcf: $04
	and  b                                           ; $5fd0: $a0
	inc  b                                           ; $5fd1: $04
	add  hl, hl                                      ; $5fd2: $29
	ld   [bc], a                                     ; $5fd3: $02
	rra                                              ; $5fd4: $1f
	ld   [bc], a                                     ; $5fd5: $02
	and  b                                           ; $5fd6: $a0
	ld   [bc], a                                     ; $5fd7: $02
	add  hl, hl                                      ; $5fd8: $29
	inc  b                                           ; $5fd9: $04
	and  b                                           ; $5fda: $a0
	inc  b                                           ; $5fdb: $04
	add  hl, hl                                      ; $5fdc: $29
	ld   [bc], a                                     ; $5fdd: $02
	rra                                              ; $5fde: $1f
	ld   [bc], a                                     ; $5fdf: $02
	and  b                                           ; $5fe0: $a0
	ld   [bc], a                                     ; $5fe1: $02
	dec  hl                                          ; $5fe2: $2b
	db   $10                                         ; $5fe3: $10
	ld   [hl+], a                                    ; $5fe4: $22
	inc  b                                           ; $5fe5: $04
	inc  h                                           ; $5fe6: $24
	inc  b                                           ; $5fe7: $04
	ld   [hl+], a                                    ; $5fe8: $22
	ld   [$0817], sp                                 ; $5fe9: $08 $17 $08
	add  hl, hl                                      ; $5fec: $29
	inc  b                                           ; $5fed: $04
	and  b                                           ; $5fee: $a0
	inc  b                                           ; $5fef: $04
	add  hl, hl                                      ; $5ff0: $29
	inc  b                                           ; $5ff1: $04
	and  b                                           ; $5ff2: $a0
	ld   [bc], a                                     ; $5ff3: $02
	add  hl, hl                                      ; $5ff4: $29
	inc  b                                           ; $5ff5: $04
	and  b                                           ; $5ff6: $a0
	inc  b                                           ; $5ff7: $04
	add  hl, hl                                      ; $5ff8: $29
	inc  b                                           ; $5ff9: $04
	and  b                                           ; $5ffa: $a0
	ld   [bc], a                                     ; $5ffb: $02
	add  hl, hl                                      ; $5ffc: $29
	inc  b                                           ; $5ffd: $04
	and  b                                           ; $5ffe: $a0
	inc  b                                           ; $5fff: $04
	add  hl, hl                                      ; $6000: $29
	inc  b                                           ; $6001: $04
	and  b                                           ; $6002: $a0
	ld   [bc], a                                     ; $6003: $02
	inc  [hl]                                        ; $6004: $34
	db   $10                                         ; $6005: $10
	ld   [hl-], a                                    ; $6006: $32
	ld   [$0812], sp                                 ; $6007: $08 $12 $08
	dec  d                                           ; $600a: $15
	inc  b                                           ; $600b: $04
	dec  d                                           ; $600c: $15
	inc  b                                           ; $600d: $04
	dec  d                                           ; $600e: $15
	inc  b                                           ; $600f: $04
	and  b                                           ; $6010: $a0
	inc  b                                           ; $6011: $04
	dec  d                                           ; $6012: $15
	inc  b                                           ; $6013: $04
	and  b                                           ; $6014: $a0
	ld   [bc], a                                     ; $6015: $02
	daa                                              ; $6016: $27
	inc  b                                           ; $6017: $04
	and  b                                           ; $6018: $a0
	inc  b                                           ; $6019: $04
	daa                                              ; $601a: $27
	ld   [bc], a                                     ; $601b: $02
	rra                                              ; $601c: $1f
	ld   [bc], a                                     ; $601d: $02
	and  b                                           ; $601e: $a0
	ld   [bc], a                                     ; $601f: $02
	daa                                              ; $6020: $27
	inc  b                                           ; $6021: $04
	and  b                                           ; $6022: $a0
	inc  b                                           ; $6023: $04
	daa                                              ; $6024: $27
	ld   [bc], a                                     ; $6025: $02
	rra                                              ; $6026: $1f
	ld   [bc], a                                     ; $6027: $02
	and  b                                           ; $6028: $a0
	ld   [bc], a                                     ; $6029: $02
	add  hl, hl                                      ; $602a: $29
	inc  b                                           ; $602b: $04
	dec  hl                                          ; $602c: $2b
	inc  b                                           ; $602d: $04
	add  hl, hl                                      ; $602e: $29
	ld   [$0825], sp                                 ; $602f: $08 $25 $08
	jr   nz, jr_0fc_603c                             ; $6032: $20 $08

	add  hl, de                                      ; $6034: $19
	ld   [$0430], sp                                 ; $6035: $08 $30 $04
	and  b                                           ; $6038: $a0
	inc  b                                           ; $6039: $04
	jr   nc, jr_0fc_603e                             ; $603a: $30 $02

jr_0fc_603c:
	rra                                              ; $603c: $1f
	ld   [bc], a                                     ; $603d: $02

jr_0fc_603e:
	and  b                                           ; $603e: $a0
	ld   [bc], a                                     ; $603f: $02
	jr   nc, jr_0fc_6046                             ; $6040: $30 $04

	and  b                                           ; $6042: $a0
	inc  b                                           ; $6043: $04
	jr   nc, jr_0fc_6048                             ; $6044: $30 $02

jr_0fc_6046:
	rra                                              ; $6046: $1f
	ld   [bc], a                                     ; $6047: $02

jr_0fc_6048:
	and  b                                           ; $6048: $a0
	ld   [bc], a                                     ; $6049: $02
	ld   [hl-], a                                    ; $604a: $32
	ld   [$0822], sp                                 ; $604b: $08 $22 $08
	and  b                                           ; $604e: $a0
	inc  b                                           ; $604f: $04
	ld   [hl+], a                                    ; $6050: $22
	inc  b                                           ; $6051: $04
	rra                                              ; $6052: $1f
	inc  b                                           ; $6053: $04
	and  b                                           ; $6054: $a0
	ld   [bc], a                                     ; $6055: $02
	inc  [hl]                                        ; $6056: $34
	db   $10                                         ; $6057: $10
	rla                                              ; $6058: $17
	inc  b                                           ; $6059: $04
	rla                                              ; $605a: $17
	inc  b                                           ; $605b: $04
	rla                                              ; $605c: $17
	inc  b                                           ; $605d: $04
	and  b                                           ; $605e: $a0
	inc  b                                           ; $605f: $04
	rla                                              ; $6060: $17
	inc  b                                           ; $6061: $04
	and  b                                           ; $6062: $a0
	ld   [bc], a                                     ; $6063: $02
	add  hl, hl                                      ; $6064: $29
	inc  b                                           ; $6065: $04
	and  b                                           ; $6066: $a0
	inc  b                                           ; $6067: $04
	add  hl, hl                                      ; $6068: $29
	ld   [bc], a                                     ; $6069: $02
	rra                                              ; $606a: $1f
	ld   [bc], a                                     ; $606b: $02
	and  b                                           ; $606c: $a0
	ld   [bc], a                                     ; $606d: $02
	add  hl, hl                                      ; $606e: $29
	inc  b                                           ; $606f: $04
	and  b                                           ; $6070: $a0
	inc  b                                           ; $6071: $04
	add  hl, hl                                      ; $6072: $29
	ld   [bc], a                                     ; $6073: $02
	rra                                              ; $6074: $1f
	ld   [bc], a                                     ; $6075: $02
	and  b                                           ; $6076: $a0
	ld   [bc], a                                     ; $6077: $02
	dec  hl                                          ; $6078: $2b
	db   $10                                         ; $6079: $10
	ld   [hl+], a                                    ; $607a: $22
	inc  b                                           ; $607b: $04
	inc  h                                           ; $607c: $24
	inc  b                                           ; $607d: $04
	ld   [hl+], a                                    ; $607e: $22
	ld   [$0817], sp                                 ; $607f: $08 $17 $08
	add  hl, hl                                      ; $6082: $29
	inc  b                                           ; $6083: $04
	and  b                                           ; $6084: $a0
	inc  b                                           ; $6085: $04
	add  hl, hl                                      ; $6086: $29
	ld   [bc], a                                     ; $6087: $02
	rra                                              ; $6088: $1f
	ld   [bc], a                                     ; $6089: $02
	and  b                                           ; $608a: $a0
	ld   [bc], a                                     ; $608b: $02
	add  hl, hl                                      ; $608c: $29
	inc  b                                           ; $608d: $04
	and  b                                           ; $608e: $a0
	inc  b                                           ; $608f: $04
	add  hl, hl                                      ; $6090: $29
	ld   [bc], a                                     ; $6091: $02
	rra                                              ; $6092: $1f
	ld   [bc], a                                     ; $6093: $02
	and  b                                           ; $6094: $a0
	ld   [bc], a                                     ; $6095: $02
	add  hl, hl                                      ; $6096: $29
	inc  b                                           ; $6097: $04
	and  b                                           ; $6098: $a0
	inc  b                                           ; $6099: $04
	add  hl, hl                                      ; $609a: $29
	ld   [bc], a                                     ; $609b: $02
	rra                                              ; $609c: $1f
	ld   [bc], a                                     ; $609d: $02
	and  b                                           ; $609e: $a0
	ld   [bc], a                                     ; $609f: $02
	dec  hl                                          ; $60a0: $2b
	db   $10                                         ; $60a1: $10
	add  hl, hl                                      ; $60a2: $29
	ld   [$0812], sp                                 ; $60a3: $08 $12 $08
	rla                                              ; $60a6: $17
	inc  b                                           ; $60a7: $04
	rla                                              ; $60a8: $17
	inc  b                                           ; $60a9: $04
	rla                                              ; $60aa: $17
	inc  b                                           ; $60ab: $04
	and  b                                           ; $60ac: $a0
	inc  b                                           ; $60ad: $04
	rla                                              ; $60ae: $17
	inc  b                                           ; $60af: $04
	and  b                                           ; $60b0: $a0
	ld   [bc], a                                     ; $60b1: $02
	add  hl, hl                                      ; $60b2: $29
	inc  b                                           ; $60b3: $04
	and  b                                           ; $60b4: $a0
	inc  b                                           ; $60b5: $04
	add  hl, hl                                      ; $60b6: $29
	ld   [bc], a                                     ; $60b7: $02
	rra                                              ; $60b8: $1f
	ld   [bc], a                                     ; $60b9: $02
	and  b                                           ; $60ba: $a0
	ld   [bc], a                                     ; $60bb: $02
	add  hl, hl                                      ; $60bc: $29
	inc  b                                           ; $60bd: $04
	and  b                                           ; $60be: $a0
	inc  b                                           ; $60bf: $04
	add  hl, hl                                      ; $60c0: $29
	ld   [bc], a                                     ; $60c1: $02
	rra                                              ; $60c2: $1f
	ld   [bc], a                                     ; $60c3: $02
	and  b                                           ; $60c4: $a0
	ld   [bc], a                                     ; $60c5: $02
	dec  hl                                          ; $60c6: $2b
	db   $10                                         ; $60c7: $10
	ld   [hl+], a                                    ; $60c8: $22
	inc  b                                           ; $60c9: $04
	inc  h                                           ; $60ca: $24
	inc  b                                           ; $60cb: $04
	ld   [hl+], a                                    ; $60cc: $22
	ld   [$0817], sp                                 ; $60cd: $08 $17 $08
	add  hl, hl                                      ; $60d0: $29
	inc  b                                           ; $60d1: $04
	and  b                                           ; $60d2: $a0
	inc  b                                           ; $60d3: $04
	add  hl, hl                                      ; $60d4: $29
	ld   [bc], a                                     ; $60d5: $02
	rra                                              ; $60d6: $1f
	ld   [bc], a                                     ; $60d7: $02
	and  b                                           ; $60d8: $a0
	ld   [bc], a                                     ; $60d9: $02
	add  hl, hl                                      ; $60da: $29
	inc  b                                           ; $60db: $04
	and  b                                           ; $60dc: $a0
	inc  b                                           ; $60dd: $04
	add  hl, hl                                      ; $60de: $29
	ld   [bc], a                                     ; $60df: $02
	rra                                              ; $60e0: $1f
	ld   [bc], a                                     ; $60e1: $02
	and  b                                           ; $60e2: $a0
	ld   [bc], a                                     ; $60e3: $02
	add  hl, hl                                      ; $60e4: $29
	inc  b                                           ; $60e5: $04
	and  b                                           ; $60e6: $a0
	inc  b                                           ; $60e7: $04
	add  hl, hl                                      ; $60e8: $29
	ld   [bc], a                                     ; $60e9: $02
	rra                                              ; $60ea: $1f
	ld   [bc], a                                     ; $60eb: $02
	and  b                                           ; $60ec: $a0
	ld   [bc], a                                     ; $60ed: $02
	dec  hl                                          ; $60ee: $2b
	db   $10                                         ; $60ef: $10
	add  hl, hl                                      ; $60f0: $29
	ld   [$0812], sp                                 ; $60f1: $08 $12 $08
	inc  [hl]                                        ; $60f4: $34
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $60f5: $08 $32 $08
	inc  [hl]                                        ; $60f8: $34
	ld   [$0837], sp                                 ; $60f9: $08 $37 $08
	inc  [hl]                                        ; $60fc: $34
	ld   [$04a0], sp                                 ; $60fd: $08 $a0 $04
	inc  [hl]                                        ; $6100: $34
	ld   [bc], a                                     ; $6101: $02
	rra                                              ; $6102: $1f
	ld   d, $a0                                      ; $6103: $16 $a0
	ld   [bc], a                                     ; $6105: $02
	dec  hl                                          ; $6106: $2b
	ld   [$0829], sp                                 ; $6107: $08 $29 $08
	dec  hl                                          ; $610a: $2b
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $610b: $08 $32 $08
	dec  hl                                          ; $610e: $2b
	ld   [$04a0], sp                                 ; $610f: $08 $a0 $04
	dec  hl                                          ; $6112: $2b
	ld   [bc], a                                     ; $6113: $02
	rra                                              ; $6114: $1f
	ld   d, $a0                                      ; $6115: $16 $a0
	ld   [bc], a                                     ; $6117: $02
	inc  [hl]                                        ; $6118: $34
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $6119: $08 $32 $08
	inc  [hl]                                        ; $611c: $34
	ld   [$0837], sp                                 ; $611d: $08 $37 $08
	add  hl, sp                                      ; $6120: $39
	ld   [$0834], sp                                 ; $6121: $08 $34 $08
	ld   [hl-], a                                    ; $6124: $32
	ld   [$0834], sp                                 ; $6125: $08 $34 $08
	jr   nz, jr_0fc_6172                             ; $6128: $20 $48

	and  b                                           ; $612a: $a0
	inc  b                                           ; $612b: $04
	jr   nz, jr_0fc_6166                             ; $612c: $20 $38

	and  b                                           ; $612e: $a0
	ld   [bc], a                                     ; $612f: $02
	inc  d                                           ; $6130: $14
	inc  b                                           ; $6131: $04
	inc  d                                           ; $6132: $14
	inc  b                                           ; $6133: $04
	inc  d                                           ; $6134: $14
	inc  b                                           ; $6135: $04
	and  b                                           ; $6136: $a0
	inc  b                                           ; $6137: $04
	inc  d                                           ; $6138: $14
	inc  b                                           ; $6139: $04
	and  b                                           ; $613a: $a0
	ld   [bc], a                                     ; $613b: $02
	dec  hl                                          ; $613c: $2b
	inc  b                                           ; $613d: $04
	and  b                                           ; $613e: $a0
	inc  b                                           ; $613f: $04
	dec  hl                                          ; $6140: $2b
	ld   [bc], a                                     ; $6141: $02
	rra                                              ; $6142: $1f
	ld   [bc], a                                     ; $6143: $02
	and  b                                           ; $6144: $a0
	ld   [bc], a                                     ; $6145: $02
	dec  hl                                          ; $6146: $2b
	inc  b                                           ; $6147: $04
	and  b                                           ; $6148: $a0
	inc  b                                           ; $6149: $04
	dec  hl                                          ; $614a: $2b
	ld   [bc], a                                     ; $614b: $02
	rra                                              ; $614c: $1f
	ld   [bc], a                                     ; $614d: $02
	and  b                                           ; $614e: $a0
	ld   [bc], a                                     ; $614f: $02
	ld   sp, $2b10                                   ; $6150: $31 $10 $2b
	inc  b                                           ; $6153: $04
	ld   sp, $2b04                                   ; $6154: $31 $04 $2b
	ld   [$0814], sp                                 ; $6157: $08 $14 $08
	dec  hl                                          ; $615a: $2b
	inc  b                                           ; $615b: $04
	and  b                                           ; $615c: $a0
	inc  b                                           ; $615d: $04
	dec  hl                                          ; $615e: $2b
	ld   [bc], a                                     ; $615f: $02
	rra                                              ; $6160: $1f
	ld   [bc], a                                     ; $6161: $02
	and  b                                           ; $6162: $a0
	ld   [bc], a                                     ; $6163: $02
	dec  hl                                          ; $6164: $2b
	inc  b                                           ; $6165: $04

jr_0fc_6166:
	and  b                                           ; $6166: $a0
	inc  b                                           ; $6167: $04
	dec  hl                                          ; $6168: $2b
	ld   [bc], a                                     ; $6169: $02
	rra                                              ; $616a: $1f
	ld   [bc], a                                     ; $616b: $02
	and  b                                           ; $616c: $a0
	ld   [bc], a                                     ; $616d: $02
	dec  hl                                          ; $616e: $2b
	inc  b                                           ; $616f: $04
	and  b                                           ; $6170: $a0
	inc  b                                           ; $6171: $04

jr_0fc_6172:
	dec  hl                                          ; $6172: $2b
	ld   [bc], a                                     ; $6173: $02
	rra                                              ; $6174: $1f
	ld   [bc], a                                     ; $6175: $02
	and  b                                           ; $6176: $a0
	ld   [bc], a                                     ; $6177: $02
	ld   sp, $2b10                                   ; $6178: $31 $10 $2b
	ld   [$081b], sp                                 ; $617b: $08 $1b $08
	inc  d                                           ; $617e: $14
	inc  b                                           ; $617f: $04
	inc  d                                           ; $6180: $14
	inc  b                                           ; $6181: $04
	inc  d                                           ; $6182: $14
	inc  b                                           ; $6183: $04
	and  b                                           ; $6184: $a0
	inc  b                                           ; $6185: $04
	inc  d                                           ; $6186: $14
	inc  b                                           ; $6187: $04
	and  b                                           ; $6188: $a0
	ld   [bc], a                                     ; $6189: $02
	dec  hl                                          ; $618a: $2b
	inc  b                                           ; $618b: $04
	and  b                                           ; $618c: $a0
	inc  b                                           ; $618d: $04
	dec  hl                                          ; $618e: $2b
	ld   [bc], a                                     ; $618f: $02
	rra                                              ; $6190: $1f
	ld   [bc], a                                     ; $6191: $02
	and  b                                           ; $6192: $a0
	ld   [bc], a                                     ; $6193: $02
	dec  hl                                          ; $6194: $2b
	inc  b                                           ; $6195: $04
	and  b                                           ; $6196: $a0
	inc  b                                           ; $6197: $04
	dec  hl                                          ; $6198: $2b
	ld   [bc], a                                     ; $6199: $02
	rra                                              ; $619a: $1f
	ld   [bc], a                                     ; $619b: $02
	and  b                                           ; $619c: $a0
	ld   [bc], a                                     ; $619d: $02
	ld   sp, $2b10                                   ; $619e: $31 $10 $2b
	inc  b                                           ; $61a1: $04
	ld   sp, $2b04                                   ; $61a2: $31 $04 $2b
	ld   [$0814], sp                                 ; $61a5: $08 $14 $08
	dec  hl                                          ; $61a8: $2b
	inc  b                                           ; $61a9: $04
	and  b                                           ; $61aa: $a0
	inc  b                                           ; $61ab: $04
	dec  hl                                          ; $61ac: $2b
	ld   [bc], a                                     ; $61ad: $02
	rra                                              ; $61ae: $1f
	ld   [bc], a                                     ; $61af: $02
	and  b                                           ; $61b0: $a0
	ld   [bc], a                                     ; $61b1: $02
	dec  hl                                          ; $61b2: $2b
	inc  b                                           ; $61b3: $04
	and  b                                           ; $61b4: $a0
	inc  b                                           ; $61b5: $04
	dec  hl                                          ; $61b6: $2b
	ld   [bc], a                                     ; $61b7: $02
	rra                                              ; $61b8: $1f
	ld   [bc], a                                     ; $61b9: $02
	and  b                                           ; $61ba: $a0
	ld   [bc], a                                     ; $61bb: $02
	dec  hl                                          ; $61bc: $2b
	inc  b                                           ; $61bd: $04
	and  b                                           ; $61be: $a0
	inc  b                                           ; $61bf: $04
	dec  hl                                          ; $61c0: $2b
	ld   [bc], a                                     ; $61c1: $02
	rra                                              ; $61c2: $1f
	ld   [bc], a                                     ; $61c3: $02
	and  b                                           ; $61c4: $a0
	ld   [bc], a                                     ; $61c5: $02
	ld   sp, $2b10                                   ; $61c6: $31 $10 $2b
	ld   [$081b], sp                                 ; $61c9: $08 $1b $08
	dec  d                                           ; $61cc: $15
	ld   [$0230], sp                                 ; $61cd: $08 $30 $02
	and  b                                           ; $61d0: $a0
	inc  b                                           ; $61d1: $04
	jr   nc, jr_0fc_61d6                             ; $61d2: $30 $02

	and  b                                           ; $61d4: $a0
	ld   [bc], a                                     ; $61d5: $02

jr_0fc_61d6:
	jr   nc, jr_0fc_61da                             ; $61d6: $30 $02

	and  b                                           ; $61d8: $a0
	inc  b                                           ; $61d9: $04

jr_0fc_61da:
	jr   nc, jr_0fc_61de                             ; $61da: $30 $02

	and  b                                           ; $61dc: $a0
	ld   [bc], a                                     ; $61dd: $02

jr_0fc_61de:
	jr   nz, jr_0fc_61e8                             ; $61de: $20 $08

	jr   nc, jr_0fc_61e4                             ; $61e0: $30 $02

	and  b                                           ; $61e2: $a0
	inc  b                                           ; $61e3: $04

jr_0fc_61e4:
	jr   nc, jr_0fc_61e8                             ; $61e4: $30 $02

	and  b                                           ; $61e6: $a0
	ld   [bc], a                                     ; $61e7: $02

jr_0fc_61e8:
	jr   nc, jr_0fc_61ec                             ; $61e8: $30 $02

	and  b                                           ; $61ea: $a0
	inc  b                                           ; $61eb: $04

jr_0fc_61ec:
	jr   nc, jr_0fc_61f0                             ; $61ec: $30 $02

	and  b                                           ; $61ee: $a0
	ld   [bc], a                                     ; $61ef: $02

jr_0fc_61f0:
	dec  d                                           ; $61f0: $15
	ld   [$0230], sp                                 ; $61f1: $08 $30 $02
	and  b                                           ; $61f4: $a0
	inc  b                                           ; $61f5: $04
	jr   nc, jr_0fc_61fa                             ; $61f6: $30 $02

	and  b                                           ; $61f8: $a0
	ld   [bc], a                                     ; $61f9: $02

jr_0fc_61fa:
	jr   nc, jr_0fc_61fe                             ; $61fa: $30 $02

	and  b                                           ; $61fc: $a0
	inc  b                                           ; $61fd: $04

jr_0fc_61fe:
	jr   nc, jr_0fc_6202                             ; $61fe: $30 $02

	and  b                                           ; $6200: $a0
	ld   [bc], a                                     ; $6201: $02

jr_0fc_6202:
	jr   nz, jr_0fc_620c                             ; $6202: $20 $08

	jr   nc, jr_0fc_6208                             ; $6204: $30 $02

	and  b                                           ; $6206: $a0
	inc  b                                           ; $6207: $04

jr_0fc_6208:
	jr   nc, jr_0fc_620c                             ; $6208: $30 $02

	and  b                                           ; $620a: $a0
	ld   [bc], a                                     ; $620b: $02

jr_0fc_620c:
	jr   nc, jr_0fc_6210                             ; $620c: $30 $02

	and  b                                           ; $620e: $a0
	inc  b                                           ; $620f: $04

jr_0fc_6210:
	jr   nc, jr_0fc_6214                             ; $6210: $30 $02

	and  b                                           ; $6212: $a0
	ld   [bc], a                                     ; $6213: $02

jr_0fc_6214:
	rla                                              ; $6214: $17
	ld   [$0230], sp                                 ; $6215: $08 $30 $02
	and  b                                           ; $6218: $a0
	inc  b                                           ; $6219: $04
	jr   nc, jr_0fc_621e                             ; $621a: $30 $02

	and  b                                           ; $621c: $a0
	ld   [bc], a                                     ; $621d: $02

jr_0fc_621e:
	jr   nc, jr_0fc_6222                             ; $621e: $30 $02

	and  b                                           ; $6220: $a0
	inc  b                                           ; $6221: $04

jr_0fc_6222:
	jr   nc, jr_0fc_6226                             ; $6222: $30 $02

	and  b                                           ; $6224: $a0
	ld   [bc], a                                     ; $6225: $02

jr_0fc_6226:
	jr   nz, jr_0fc_6230                             ; $6226: $20 $08

	jr   nc, jr_0fc_622c                             ; $6228: $30 $02

	and  b                                           ; $622a: $a0
	inc  b                                           ; $622b: $04

jr_0fc_622c:
	jr   nc, jr_0fc_6230                             ; $622c: $30 $02

	and  b                                           ; $622e: $a0
	ld   [bc], a                                     ; $622f: $02

jr_0fc_6230:
	jr   nc, jr_0fc_6234                             ; $6230: $30 $02

	and  b                                           ; $6232: $a0
	inc  b                                           ; $6233: $04

jr_0fc_6234:
	jr   nc, jr_0fc_6238                             ; $6234: $30 $02

	and  b                                           ; $6236: $a0
	ld   [bc], a                                     ; $6237: $02

jr_0fc_6238:
	jr   nz, jr_0fc_6242                             ; $6238: $20 $08

	jr   nc, jr_0fc_623e                             ; $623a: $30 $02

	and  b                                           ; $623c: $a0
	inc  b                                           ; $623d: $04

jr_0fc_623e:
	jr   nc, jr_0fc_6242                             ; $623e: $30 $02

	and  b                                           ; $6240: $a0
	ld   [bc], a                                     ; $6241: $02

jr_0fc_6242:
	jr   nc, jr_0fc_6246                             ; $6242: $30 $02

	and  b                                           ; $6244: $a0
	inc  b                                           ; $6245: $04

jr_0fc_6246:
	jr   nc, jr_0fc_624a                             ; $6246: $30 $02

	and  b                                           ; $6248: $a0
	ld   [bc], a                                     ; $6249: $02

jr_0fc_624a:
	inc  h                                           ; $624a: $24
	ld   [$0230], sp                                 ; $624b: $08 $30 $02
	and  b                                           ; $624e: $a0
	inc  b                                           ; $624f: $04
	jr   nc, jr_0fc_6254                             ; $6250: $30 $02

	and  b                                           ; $6252: $a0
	ld   [bc], a                                     ; $6253: $02

jr_0fc_6254:
	jr   nc, jr_0fc_6258                             ; $6254: $30 $02

	and  b                                           ; $6256: $a0
	inc  b                                           ; $6257: $04

jr_0fc_6258:
	jr   nc, jr_0fc_625c                             ; $6258: $30 $02

	and  b                                           ; $625a: $a0
	ld   [bc], a                                     ; $625b: $02

jr_0fc_625c:
	dec  d                                           ; $625c: $15
	ld   [$0230], sp                                 ; $625d: $08 $30 $02
	and  b                                           ; $6260: $a0
	inc  b                                           ; $6261: $04
	jr   nc, jr_0fc_6266                             ; $6262: $30 $02

	and  b                                           ; $6264: $a0
	ld   [bc], a                                     ; $6265: $02

jr_0fc_6266:
	jr   nc, jr_0fc_626a                             ; $6266: $30 $02

	and  b                                           ; $6268: $a0
	inc  b                                           ; $6269: $04

jr_0fc_626a:
	jr   nc, jr_0fc_626e                             ; $626a: $30 $02

	and  b                                           ; $626c: $a0
	ld   [bc], a                                     ; $626d: $02

jr_0fc_626e:
	jr   nz, jr_0fc_6278                             ; $626e: $20 $08

	jr   nc, jr_0fc_6274                             ; $6270: $30 $02

	and  b                                           ; $6272: $a0
	inc  b                                           ; $6273: $04

jr_0fc_6274:
	jr   nc, jr_0fc_6278                             ; $6274: $30 $02

	and  b                                           ; $6276: $a0
	ld   [bc], a                                     ; $6277: $02

jr_0fc_6278:
	jr   nc, jr_0fc_627c                             ; $6278: $30 $02

	and  b                                           ; $627a: $a0
	inc  b                                           ; $627b: $04

jr_0fc_627c:
	jr   nc, jr_0fc_6280                             ; $627c: $30 $02

	and  b                                           ; $627e: $a0
	ld   [bc], a                                     ; $627f: $02

jr_0fc_6280:
	dec  d                                           ; $6280: $15
	ld   [$0230], sp                                 ; $6281: $08 $30 $02
	and  b                                           ; $6284: $a0
	inc  b                                           ; $6285: $04
	jr   nc, jr_0fc_628a                             ; $6286: $30 $02

	and  b                                           ; $6288: $a0
	ld   [bc], a                                     ; $6289: $02

jr_0fc_628a:
	jr   nc, jr_0fc_628e                             ; $628a: $30 $02

	and  b                                           ; $628c: $a0
	inc  b                                           ; $628d: $04

jr_0fc_628e:
	jr   nc, jr_0fc_6292                             ; $628e: $30 $02

	and  b                                           ; $6290: $a0
	ld   [bc], a                                     ; $6291: $02

jr_0fc_6292:
	jr   nz, jr_0fc_629c                             ; $6292: $20 $08

	jr   nc, jr_0fc_6298                             ; $6294: $30 $02

	and  b                                           ; $6296: $a0
	inc  b                                           ; $6297: $04

jr_0fc_6298:
	jr   nc, jr_0fc_629c                             ; $6298: $30 $02

	and  b                                           ; $629a: $a0
	ld   [bc], a                                     ; $629b: $02

jr_0fc_629c:
	jr   nc, jr_0fc_62a0                             ; $629c: $30 $02

	and  b                                           ; $629e: $a0
	inc  b                                           ; $629f: $04

jr_0fc_62a0:
	jr   nc, jr_0fc_62a4                             ; $62a0: $30 $02

	and  b                                           ; $62a2: $a0
	ld   [bc], a                                     ; $62a3: $02

jr_0fc_62a4:
	rla                                              ; $62a4: $17
	ld   [$0230], sp                                 ; $62a5: $08 $30 $02
	and  b                                           ; $62a8: $a0
	inc  b                                           ; $62a9: $04
	jr   nc, jr_0fc_62ae                             ; $62aa: $30 $02

	and  b                                           ; $62ac: $a0
	ld   [bc], a                                     ; $62ad: $02

jr_0fc_62ae:
	jr   nc, jr_0fc_62b2                             ; $62ae: $30 $02

	and  b                                           ; $62b0: $a0
	inc  b                                           ; $62b1: $04

jr_0fc_62b2:
	jr   nc, jr_0fc_62b6                             ; $62b2: $30 $02

	and  b                                           ; $62b4: $a0
	ld   [bc], a                                     ; $62b5: $02

jr_0fc_62b6:
	jr   nz, jr_0fc_62c0                             ; $62b6: $20 $08

	jr   nc, jr_0fc_62bc                             ; $62b8: $30 $02

	and  b                                           ; $62ba: $a0
	inc  b                                           ; $62bb: $04

jr_0fc_62bc:
	jr   nc, jr_0fc_62c0                             ; $62bc: $30 $02

	and  b                                           ; $62be: $a0
	ld   [bc], a                                     ; $62bf: $02

jr_0fc_62c0:
	jr   nc, jr_0fc_62c4                             ; $62c0: $30 $02

	and  b                                           ; $62c2: $a0
	inc  b                                           ; $62c3: $04

jr_0fc_62c4:
	jr   nc, jr_0fc_62c8                             ; $62c4: $30 $02

	and  b                                           ; $62c6: $a0
	ld   [bc], a                                     ; $62c7: $02

jr_0fc_62c8:
	jr   nz, jr_0fc_62d2                             ; $62c8: $20 $08

	jr   nc, jr_0fc_62ce                             ; $62ca: $30 $02

	and  b                                           ; $62cc: $a0
	inc  b                                           ; $62cd: $04

jr_0fc_62ce:
	jr   nc, jr_0fc_62d2                             ; $62ce: $30 $02

	and  b                                           ; $62d0: $a0
	ld   [bc], a                                     ; $62d1: $02

jr_0fc_62d2:
	jr   nc, jr_0fc_62d6                             ; $62d2: $30 $02

	and  b                                           ; $62d4: $a0
	inc  b                                           ; $62d5: $04

jr_0fc_62d6:
	jr   nc, jr_0fc_62da                             ; $62d6: $30 $02

	and  b                                           ; $62d8: $a0
	ld   [bc], a                                     ; $62d9: $02

jr_0fc_62da:
	inc  h                                           ; $62da: $24
	ld   [$0230], sp                                 ; $62db: $08 $30 $02
	and  b                                           ; $62de: $a0
	inc  b                                           ; $62df: $04
	jr   nc, jr_0fc_62e4                             ; $62e0: $30 $02

	and  b                                           ; $62e2: $a0
	ld   [bc], a                                     ; $62e3: $02

jr_0fc_62e4:
	jr   nc, jr_0fc_62e8                             ; $62e4: $30 $02

	and  b                                           ; $62e6: $a0
	inc  b                                           ; $62e7: $04

jr_0fc_62e8:
	jr   nc, jr_0fc_62ec                             ; $62e8: $30 $02

	and  b                                           ; $62ea: $a0
	ld   [bc], a                                     ; $62eb: $02

jr_0fc_62ec:
	ld   a, [de]                                     ; $62ec: $1a
	jr   nz, @+$21                                   ; $62ed: $20 $1f

	ld   b, b                                        ; $62ef: $40
	ld   [de], a                                     ; $62f0: $12
	ld   [$301f], sp                                 ; $62f1: $08 $1f $30
	add  hl, de                                      ; $62f4: $19
	ld   [$0812], sp                                 ; $62f5: $08 $12 $08
	rra                                              ; $62f8: $1f
	jr   c, jr_0fc_631a                              ; $62f9: $38 $1f

	ld   b, b                                        ; $62fb: $40
	or   b                                           ; $62fc: $b0
	di                                               ; $62fd: $f3
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	add  hl, bc                                      ; $6300: $09
	nop                                              ; $6301: $00
	add  hl, bc                                      ; $6302: $09
	nop                                              ; $6303: $00

jr_0fc_6304:
	rra                                              ; $6304: $1f
	jr   nz, jr_0fc_6304                             ; $6305: $20 $fd

	di                                               ; $6307: $f3
	xor  h                                           ; $6308: $ac
	ld   bc, $027a                                   ; $6309: $01 $7a $02
	xor  h                                           ; $630c: $ac
	ld   bc, $02a0                                   ; $630d: $01 $a0 $02
	xor  h                                           ; $6310: $ac
	ld   bc, $027a                                   ; $6311: $01 $7a $02
	xor  h                                           ; $6314: $ac
	ld   bc, $0302                                   ; $6315: $01 $02 $03
	pop  bc                                          ; $6318: $c1
	inc  b                                           ; $6319: $04

jr_0fc_631a:
	and  b                                           ; $631a: $a0
	add  hl, bc                                      ; $631b: $09
	ld   l, b                                        ; $631c: $68
	ld   bc, $06a0                                   ; $631d: $01 $a0 $06
	sbc  c                                           ; $6320: $99
	ld   bc, $01a0                                   ; $6321: $01 $a0 $01
	sbc  c                                           ; $6324: $99
	ld   e, $fd                                      ; $6325: $1e $fd
	ldh  a, [c]                                      ; $6327: $f2
	db   $fd                                         ; $6328: $fd
	pop  af                                          ; $6329: $f1
	xor  h                                           ; $632a: $ac
	ld   bc, $027a                                   ; $632b: $01 $7a $02
	xor  h                                           ; $632e: $ac
	ld   bc, $02a0                                   ; $632f: $01 $a0 $02
	or   c                                           ; $6332: $b1
	pop  af                                          ; $6333: $f1
	xor  h                                           ; $6334: $ac
	ld   bc, $0370                                   ; $6335: $01 $70 $03
	xor  h                                           ; $6338: $ac
	ld   bc, $03a6                                   ; $6339: $01 $a6 $03
	db   $fd                                         ; $633c: $fd
	ldh  a, [$c1]                                    ; $633d: $f0 $c1
	inc  b                                           ; $633f: $04
	and  b                                           ; $6340: $a0
	add  hl, bc                                      ; $6341: $09
	ld   l, b                                        ; $6342: $68
	ld   bc, $06a0                                   ; $6343: $01 $a0 $06
	sbc  c                                           ; $6346: $99
	ld   bc, $01a0                                   ; $6347: $01 $a0 $01
	sbc  c                                           ; $634a: $99
	ld   [bc], a                                     ; $634b: $02
	or   d                                           ; $634c: $b2
	ldh  a, [$1f]                                    ; $634d: $f0 $1f
	inc  c                                           ; $634f: $0c
	db   $fd                                         ; $6350: $fd
	ldh  a, [$c1]                                    ; $6351: $f0 $c1
	inc  bc                                          ; $6353: $03
	and  b                                           ; $6354: $a0

jr_0fc_6355:
	rlca                                             ; $6355: $07
	ld   [bc], a                                     ; $6356: $02
	ld   bc, $01a0                                   ; $6357: $01 $a0 $01
	nop                                              ; $635a: $00
	rlca                                             ; $635b: $07
	or   c                                           ; $635c: $b1
	ldh  a, [$1f]                                    ; $635d: $f0 $1f
	ld   [$0da0], sp                                 ; $635f: $08 $a0 $0d
	rla                                              ; $6362: $17
	ld   bc, $0aa0                                   ; $6363: $01 $a0 $0a
	db   $10                                         ; $6366: $10
	ld   bc, $01a0                                   ; $6367: $01 $a0 $01
	nop                                              ; $636a: $00
	ld   c, $c1                                      ; $636b: $0e $c1
	inc  b                                           ; $636d: $04
	and  b                                           ; $636e: $a0
	add  hl, bc                                      ; $636f: $09
	ld   l, b                                        ; $6370: $68

jr_0fc_6371:
	ld   bc, $06a0                                   ; $6371: $01 $a0 $06
	sbc  c                                           ; $6374: $99
	ld   bc, $01a0                                   ; $6375: $01 $a0 $01
	sbc  c                                           ; $6378: $99
	ld   b, $c1                                      ; $6379: $06 $c1
	inc  bc                                          ; $637b: $03
	and  b                                           ; $637c: $a0
	rlca                                             ; $637d: $07
	ld   [bc], a                                     ; $637e: $02
	ld   bc, $01a0                                   ; $637f: $01 $a0 $01
	nop                                              ; $6382: $00
	rrca                                             ; $6383: $0f
	pop  bc                                          ; $6384: $c1
	inc  bc                                          ; $6385: $03
	and  b                                           ; $6386: $a0
	rlca                                             ; $6387: $07
	ld   [bc], a                                     ; $6388: $02
	ld   bc, $01a0                                   ; $6389: $01 $a0 $01
	nop                                              ; $638c: $00
	rlca                                             ; $638d: $07
	and  b                                           ; $638e: $a0
	dec  c                                           ; $638f: $0d
	rla                                              ; $6390: $17
	ld   bc, $0aa0                                   ; $6391: $01 $a0 $0a
	db   $10                                         ; $6394: $10
	ld   bc, $01a0                                   ; $6395: $01 $a0 $01
	nop                                              ; $6398: $00
	ld   d, $c1                                      ; $6399: $16 $c1
	inc  b                                           ; $639b: $04
	and  b                                           ; $639c: $a0
	add  hl, bc                                      ; $639d: $09
	ld   l, b                                        ; $639e: $68
	ld   bc, $06a0                                   ; $639f: $01 $a0 $06
	sbc  c                                           ; $63a2: $99
	ld   bc, $01a0                                   ; $63a3: $01 $a0 $01
	sbc  c                                           ; $63a6: $99
	ld   b, $b1                                      ; $63a7: $06 $b1
	ldh  a, [c]                                      ; $63a9: $f2
	xor  h                                           ; $63aa: $ac
	ld   bc, $027a                                   ; $63ab: $01 $7a $02
	xor  h                                           ; $63ae: $ac
	ld   bc, $02a0                                   ; $63af: $01 $a0 $02
	rra                                              ; $63b2: $1f
	jr   nz, jr_0fc_6355                             ; $63b3: $20 $a0

	dec  c                                           ; $63b5: $0d
	rla                                              ; $63b6: $17
	ld   bc, $0aa0                                   ; $63b7: $01 $a0 $0a
	db   $10                                         ; $63ba: $10
	ld   bc, $01a0                                   ; $63bb: $01 $a0 $01
	nop                                              ; $63be: $00
	ld   b, $c1                                      ; $63bf: $06 $c1
	inc  b                                           ; $63c1: $04
	and  b                                           ; $63c2: $a0
	add  hl, bc                                      ; $63c3: $09
	ld   l, b                                        ; $63c4: $68
	ld   bc, $06a0                                   ; $63c5: $01 $a0 $06
	sbc  c                                           ; $63c8: $99
	ld   bc, $01a0                                   ; $63c9: $01 $a0 $01
	sbc  c                                           ; $63cc: $99
	ld   d, $1f                                      ; $63cd: $16 $1f
	jr   nz, jr_0fc_6371                             ; $63cf: $20 $a0

	dec  c                                           ; $63d1: $0d
	rla                                              ; $63d2: $17
	ld   bc, $0aa0                                   ; $63d3: $01 $a0 $0a
	db   $10                                         ; $63d6: $10
	ld   bc, $01a0                                   ; $63d7: $01 $a0 $01
	nop                                              ; $63da: $00
	ld   b, $a0                                      ; $63db: $06 $a0
	dec  c                                           ; $63dd: $0d
	rla                                              ; $63de: $17
	ld   bc, $0aa0                                   ; $63df: $01 $a0 $0a
	db   $10                                         ; $63e2: $10
	ld   bc, $01a0                                   ; $63e3: $01 $a0 $01
	nop                                              ; $63e6: $00
	ld   b, $a0                                      ; $63e7: $06 $a0
	dec  c                                           ; $63e9: $0d
	rla                                              ; $63ea: $17
	ld   bc, $0aa0                                   ; $63eb: $01 $a0 $0a
	db   $10                                         ; $63ee: $10
	ld   bc, $01a0                                   ; $63ef: $01 $a0 $01
	nop                                              ; $63f2: $00
	ld   c, $1f                                      ; $63f3: $0e $1f
	ld   b, b                                        ; $63f5: $40
	rra                                              ; $63f6: $1f
	ld   b, b                                        ; $63f7: $40
	rra                                              ; $63f8: $1f
	ld   b, b                                        ; $63f9: $40
	xor  h                                           ; $63fa: $ac
	ld   bc, $027a                                   ; $63fb: $01 $7a $02
	xor  h                                           ; $63fe: $ac
	ld   bc, $02a0                                   ; $63ff: $01 $a0 $02
	xor  h                                           ; $6402: $ac
	ld   bc, $027a                                   ; $6403: $01 $7a $02
	pop  bc                                          ; $6406: $c1
	inc  b                                           ; $6407: $04
	and  b                                           ; $6408: $a0
	add  hl, bc                                      ; $6409: $09
	ld   l, b                                        ; $640a: $68
	ld   bc, $06a0                                   ; $640b: $01 $a0 $06
	sbc  c                                           ; $640e: $99
	ld   bc, $01a0                                   ; $640f: $01 $a0 $01
	sbc  c                                           ; $6412: $99
	ld   b, $c1                                      ; $6413: $06 $c1
	inc  bc                                          ; $6415: $03
	and  b                                           ; $6416: $a0
	rlca                                             ; $6417: $07
	ld   [bc], a                                     ; $6418: $02
	ld   bc, $01a0                                   ; $6419: $01 $a0 $01
	nop                                              ; $641c: $00
	rlca                                             ; $641d: $07
	pop  bc                                          ; $641e: $c1
	inc  bc                                          ; $641f: $03
	and  b                                           ; $6420: $a0
	rlca                                             ; $6421: $07
	ld   [bc], a                                     ; $6422: $02
	ld   bc, $01a0                                   ; $6423: $01 $a0 $01
	nop                                              ; $6426: $00
	rlca                                             ; $6427: $07
	and  b                                           ; $6428: $a0
	dec  c                                           ; $6429: $0d
	rla                                              ; $642a: $17
	ld   bc, $0aa0                                   ; $642b: $01 $a0 $0a
	db   $10                                         ; $642e: $10
	ld   bc, $01a0                                   ; $642f: $01 $a0 $01
	nop                                              ; $6432: $00
	ld   [bc], a                                     ; $6433: $02
	and  b                                           ; $6434: $a0
	dec  c                                           ; $6435: $0d
	rla                                              ; $6436: $17
	ld   bc, $0aa0                                   ; $6437: $01 $a0 $0a
	db   $10                                         ; $643a: $10
	ld   bc, $01a0                                   ; $643b: $01 $a0 $01
	nop                                              ; $643e: $00
	ld   [bc], a                                     ; $643f: $02
	and  b                                           ; $6440: $a0
	dec  c                                           ; $6441: $0d
	rla                                              ; $6442: $17
	ld   bc, $0aa0                                   ; $6443: $01 $a0 $0a
	db   $10                                         ; $6446: $10
	ld   bc, $01a0                                   ; $6447: $01 $a0 $01
	nop                                              ; $644a: $00
	ld   b, $a0                                      ; $644b: $06 $a0
	dec  c                                           ; $644d: $0d
	rla                                              ; $644e: $17
	ld   bc, $0aa0                                   ; $644f: $01 $a0 $0a
	db   $10                                         ; $6452: $10
	ld   bc, $01a0                                   ; $6453: $01 $a0 $01
	nop                                              ; $6456: $00
	ld   b, $a0                                      ; $6457: $06 $a0
	dec  c                                           ; $6459: $0d
	rla                                              ; $645a: $17
	ld   bc, $0aa0                                   ; $645b: $01 $a0 $0a
	db   $10                                         ; $645e: $10
	ld   bc, $01a0                                   ; $645f: $01 $a0 $01
	nop                                              ; $6462: $00
	ld   b, $a0                                      ; $6463: $06 $a0
	dec  c                                           ; $6465: $0d
	rla                                              ; $6466: $17
	ld   bc, $0aa0                                   ; $6467: $01 $a0 $0a
	db   $10                                         ; $646a: $10
	ld   bc, $01a0                                   ; $646b: $01 $a0 $01
	nop                                              ; $646e: $00
	ld   b, $ac                                      ; $646f: $06 $ac
	ld   bc, $0432                                   ; $6471: $01 $32 $04
	pop  bc                                          ; $6474: $c1
	inc  b                                           ; $6475: $04
	and  b                                           ; $6476: $a0
	add  hl, bc                                      ; $6477: $09
	ld   l, b                                        ; $6478: $68
	ld   bc, $06a0                                   ; $6479: $01 $a0 $06
	sbc  c                                           ; $647c: $99
	ld   bc, $01a0                                   ; $647d: $01 $a0 $01
	sbc  c                                           ; $6480: $99
	ld   b, $c1                                      ; $6481: $06 $c1
	inc  bc                                          ; $6483: $03
	and  b                                           ; $6484: $a0
	rlca                                             ; $6485: $07
	ld   [bc], a                                     ; $6486: $02
	ld   bc, $01a0                                   ; $6487: $01 $a0 $01
	nop                                              ; $648a: $00
	rlca                                             ; $648b: $07
	pop  bc                                          ; $648c: $c1
	inc  bc                                          ; $648d: $03
	and  b                                           ; $648e: $a0
	rlca                                             ; $648f: $07
	ld   [bc], a                                     ; $6490: $02
	ld   bc, $01a0                                   ; $6491: $01 $a0 $01
	nop                                              ; $6494: $00
	rlca                                             ; $6495: $07
	and  b                                           ; $6496: $a0
	dec  c                                           ; $6497: $0d
	rla                                              ; $6498: $17
	ld   bc, $0aa0                                   ; $6499: $01 $a0 $0a
	db   $10                                         ; $649c: $10
	ld   bc, $01a0                                   ; $649d: $01 $a0 $01
	nop                                              ; $64a0: $00
	ld   b, $c1                                      ; $64a1: $06 $c1
	inc  b                                           ; $64a3: $04
	and  b                                           ; $64a4: $a0
	add  hl, bc                                      ; $64a5: $09
	ld   l, b                                        ; $64a6: $68
	ld   bc, $06a0                                   ; $64a7: $01 $a0 $06
	sbc  c                                           ; $64aa: $99
	ld   bc, $01a0                                   ; $64ab: $01 $a0 $01
	sbc  c                                           ; $64ae: $99
	ld   b, $c1                                      ; $64af: $06 $c1
	inc  bc                                          ; $64b1: $03
	and  b                                           ; $64b2: $a0
	rlca                                             ; $64b3: $07
	ld   [bc], a                                     ; $64b4: $02
	ld   bc, $01a0                                   ; $64b5: $01 $a0 $01
	nop                                              ; $64b8: $00
	rlca                                             ; $64b9: $07
	pop  bc                                          ; $64ba: $c1
	inc  bc                                          ; $64bb: $03
	and  b                                           ; $64bc: $a0
	rlca                                             ; $64bd: $07
	ld   [bc], a                                     ; $64be: $02
	ld   bc, $01a0                                   ; $64bf: $01 $a0 $01
	nop                                              ; $64c2: $00
	rlca                                             ; $64c3: $07
	pop  bc                                          ; $64c4: $c1
	inc  b                                           ; $64c5: $04
	and  b                                           ; $64c6: $a0
	add  hl, bc                                      ; $64c7: $09
	ld   l, b                                        ; $64c8: $68
	ld   bc, $06a0                                   ; $64c9: $01 $a0 $06
	sbc  c                                           ; $64cc: $99
	ld   bc, $01a0                                   ; $64cd: $01 $a0 $01
	sbc  c                                           ; $64d0: $99
	ld   b, $ac                                      ; $64d1: $06 $ac
	ld   bc, $0432                                   ; $64d3: $01 $32 $04
	pop  bc                                          ; $64d6: $c1
	inc  b                                           ; $64d7: $04
	and  b                                           ; $64d8: $a0
	add  hl, bc                                      ; $64d9: $09
	ld   l, b                                        ; $64da: $68
	ld   bc, $06a0                                   ; $64db: $01 $a0 $06
	sbc  c                                           ; $64de: $99
	ld   bc, $01a0                                   ; $64df: $01 $a0 $01
	sbc  c                                           ; $64e2: $99
	ld   b, $c1                                      ; $64e3: $06 $c1
	inc  bc                                          ; $64e5: $03
	and  b                                           ; $64e6: $a0
	rlca                                             ; $64e7: $07
	ld   [bc], a                                     ; $64e8: $02
	ld   bc, $01a0                                   ; $64e9: $01 $a0 $01
	nop                                              ; $64ec: $00
	rlca                                             ; $64ed: $07
	pop  bc                                          ; $64ee: $c1
	inc  bc                                          ; $64ef: $03
	and  b                                           ; $64f0: $a0
	rlca                                             ; $64f1: $07
	ld   [bc], a                                     ; $64f2: $02
	ld   bc, $01a0                                   ; $64f3: $01 $a0 $01
	nop                                              ; $64f6: $00
	rlca                                             ; $64f7: $07

jr_0fc_64f8:
	pop  bc                                          ; $64f8: $c1
	inc  bc                                          ; $64f9: $03
	and  b                                           ; $64fa: $a0
	rlca                                             ; $64fb: $07
	ld   [bc], a                                     ; $64fc: $02
	ld   bc, $01a0                                   ; $64fd: $01 $a0 $01
	nop                                              ; $6500: $00
	rlca                                             ; $6501: $07
	pop  bc                                          ; $6502: $c1
	inc  b                                           ; $6503: $04
	and  b                                           ; $6504: $a0
	add  hl, bc                                      ; $6505: $09
	ld   l, b                                        ; $6506: $68
	ld   bc, $06a0                                   ; $6507: $01 $a0 $06
	sbc  c                                           ; $650a: $99
	ld   bc, $01a0                                   ; $650b: $01 $a0 $01
	sbc  c                                           ; $650e: $99
	ld   b, $c1                                      ; $650f: $06 $c1
	inc  bc                                          ; $6511: $03
	and  b                                           ; $6512: $a0
	rlca                                             ; $6513: $07
	ld   [bc], a                                     ; $6514: $02
	ld   bc, $01a0                                   ; $6515: $01 $a0 $01
	nop                                              ; $6518: $00
	rlca                                             ; $6519: $07
	pop  bc                                          ; $651a: $c1
	inc  bc                                          ; $651b: $03
	and  b                                           ; $651c: $a0
	rlca                                             ; $651d: $07
	ld   [bc], a                                     ; $651e: $02
	ld   bc, $01a0                                   ; $651f: $01 $a0 $01
	nop                                              ; $6522: $00
	rlca                                             ; $6523: $07
	pop  bc                                          ; $6524: $c1
	inc  b                                           ; $6525: $04
	and  b                                           ; $6526: $a0
	add  hl, bc                                      ; $6527: $09
	ld   l, b                                        ; $6528: $68
	ld   bc, $06a0                                   ; $6529: $01 $a0 $06
	sbc  c                                           ; $652c: $99
	ld   bc, $01a0                                   ; $652d: $01 $a0 $01
	sbc  c                                           ; $6530: $99
	ld   b, $1f                                      ; $6531: $06 $1f
	ld   b, b                                        ; $6533: $40
	rra                                              ; $6534: $1f
	jr   nz, jr_0fc_64f8                             ; $6535: $20 $c1

	inc  b                                           ; $6537: $04
	and  b                                           ; $6538: $a0
	add  hl, bc                                      ; $6539: $09
	ld   l, b                                        ; $653a: $68
	ld   bc, $06a0                                   ; $653b: $01 $a0 $06
	sbc  c                                           ; $653e: $99
	ld   bc, $01a0                                   ; $653f: $01 $a0 $01
	sbc  c                                           ; $6542: $99
	ld   [hl], $c1                                   ; $6543: $36 $c1
	inc  b                                           ; $6545: $04
	and  b                                           ; $6546: $a0
	add  hl, bc                                      ; $6547: $09
	ld   l, b                                        ; $6548: $68
	ld   bc, $06a0                                   ; $6549: $01 $a0 $06

jr_0fc_654c:
	sbc  c                                           ; $654c: $99
	ld   bc, $01a0                                   ; $654d: $01 $a0 $01
	sbc  c                                           ; $6550: $99
	ld   b, $c1                                      ; $6551: $06 $c1
	inc  b                                           ; $6553: $04
	and  b                                           ; $6554: $a0
	add  hl, bc                                      ; $6555: $09
	ld   l, b                                        ; $6556: $68
	ld   bc, $06a0                                   ; $6557: $01 $a0 $06
	sbc  c                                           ; $655a: $99
	ld   bc, $01a0                                   ; $655b: $01 $a0 $01
	sbc  c                                           ; $655e: $99
	ld   a, $c1                                      ; $655f: $3e $c1
	inc  bc                                          ; $6561: $03
	and  b                                           ; $6562: $a0
	rlca                                             ; $6563: $07
	ld   [bc], a                                     ; $6564: $02
	ld   bc, $01a0                                   ; $6565: $01 $a0 $01
	nop                                              ; $6568: $00
	rra                                              ; $6569: $1f
	and  b                                           ; $656a: $a0
	dec  c                                           ; $656b: $0d
	rla                                              ; $656c: $17
	ld   bc, $0aa0                                   ; $656d: $01 $a0 $0a
	db   $10                                         ; $6570: $10
	ld   bc, $01a0                                   ; $6571: $01 $a0 $01
	nop                                              ; $6574: $00
	ld   e, $b0                                      ; $6575: $1e $b0
	di                                               ; $6577: $f3
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	db   $fd                                         ; $657a: $fd
	ldh  a, [$c1]                                    ; $657b: $f0 $c1
	inc  b                                           ; $657d: $04
	and  b                                           ; $657e: $a0
	add  hl, bc                                      ; $657f: $09
	ld   l, b                                        ; $6580: $68
	ld   bc, $06a0                                   ; $6581: $01 $a0 $06
	sbc  c                                           ; $6584: $99
	ld   bc, $01a0                                   ; $6585: $01 $a0 $01
	sbc  c                                           ; $6588: $99
	ld   [bc], a                                     ; $6589: $02
	or   d                                           ; $658a: $b2
	ldh  a, [$1f]                                    ; $658b: $f0 $1f
	inc  c                                           ; $658d: $0c
	db   $fd                                         ; $658e: $fd
	ldh  a, [$c1]                                    ; $658f: $f0 $c1
	inc  bc                                          ; $6591: $03
	and  b                                           ; $6592: $a0
	rlca                                             ; $6593: $07
	ld   [bc], a                                     ; $6594: $02
	ld   bc, $01a0                                   ; $6595: $01 $a0 $01
	nop                                              ; $6598: $00
	rlca                                             ; $6599: $07
	or   c                                           ; $659a: $b1
	ldh  a, [$1f]                                    ; $659b: $f0 $1f
	jr   jr_0fc_654c                                 ; $659d: $18 $ad

	nop                                              ; $659f: $00
	pop  bc                                          ; $65a0: $c1
	inc  b                                           ; $65a1: $04
	and  b                                           ; $65a2: $a0
	add  hl, bc                                      ; $65a3: $09
	ld   l, b                                        ; $65a4: $68
	ld   bc, $06a0                                   ; $65a5: $01 $a0 $06
	sbc  c                                           ; $65a8: $99
	ld   bc, $01a0                                   ; $65a9: $01 $a0 $01
	sbc  c                                           ; $65ac: $99
	ld   b, $a0                                      ; $65ad: $06 $a0
	dec  c                                           ; $65af: $0d
	rla                                              ; $65b0: $17
	ld   bc, $0aa0                                   ; $65b1: $01 $a0 $0a
	db   $10                                         ; $65b4: $10
	ld   bc, $01a0                                   ; $65b5: $01 $a0 $01
	nop                                              ; $65b8: $00
	ld   b, $a0                                      ; $65b9: $06 $a0
	dec  c                                           ; $65bb: $0d
	rla                                              ; $65bc: $17
	ld   bc, $0aa0                                   ; $65bd: $01 $a0 $0a
	db   $10                                         ; $65c0: $10
	ld   bc, $01a0                                   ; $65c1: $01 $a0 $01
	nop                                              ; $65c4: $00
	ld   b, $c1                                      ; $65c5: $06 $c1
	inc  bc                                          ; $65c7: $03
	and  b                                           ; $65c8: $a0
	rlca                                             ; $65c9: $07
	ld   [bc], a                                     ; $65ca: $02
	ld   bc, $01a0                                   ; $65cb: $01 $a0 $01
	nop                                              ; $65ce: $00
	rlca                                             ; $65cf: $07
	pop  bc                                          ; $65d0: $c1
	inc  bc                                          ; $65d1: $03
	and  b                                           ; $65d2: $a0
	rlca                                             ; $65d3: $07
	ld   [bc], a                                     ; $65d4: $02
	ld   bc, $01a0                                   ; $65d5: $01 $a0 $01
	nop                                              ; $65d8: $00
	rlca                                             ; $65d9: $07
	and  b                                           ; $65da: $a0
	dec  c                                           ; $65db: $0d
	rla                                              ; $65dc: $17
	ld   bc, $0aa0                                   ; $65dd: $01 $a0 $0a
	db   $10                                         ; $65e0: $10
	ld   bc, $01a0                                   ; $65e1: $01 $a0 $01
	nop                                              ; $65e4: $00
	ld   b, $a0                                      ; $65e5: $06 $a0
	dec  c                                           ; $65e7: $0d
	rla                                              ; $65e8: $17
	ld   bc, $0aa0                                   ; $65e9: $01 $a0 $0a
	db   $10                                         ; $65ec: $10
	ld   bc, $01a0                                   ; $65ed: $01 $a0 $01
	nop                                              ; $65f0: $00
	ld   b, $c1                                      ; $65f1: $06 $c1
	inc  b                                           ; $65f3: $04
	and  b                                           ; $65f4: $a0
	add  hl, bc                                      ; $65f5: $09
	ld   l, b                                        ; $65f6: $68
	ld   bc, $06a0                                   ; $65f7: $01 $a0 $06
	sbc  c                                           ; $65fa: $99
	ld   bc, $01a0                                   ; $65fb: $01 $a0 $01
	sbc  c                                           ; $65fe: $99
	ld   b, $ad                                      ; $65ff: $06 $ad
	nop                                              ; $6601: $00
	pop  bc                                          ; $6602: $c1
	inc  b                                           ; $6603: $04
	and  b                                           ; $6604: $a0
	add  hl, bc                                      ; $6605: $09
	ld   l, b                                        ; $6606: $68
	ld   bc, $06a0                                   ; $6607: $01 $a0 $06
	sbc  c                                           ; $660a: $99
	ld   bc, $01a0                                   ; $660b: $01 $a0 $01
	sbc  c                                           ; $660e: $99
	ld   b, $a0                                      ; $660f: $06 $a0
	dec  c                                           ; $6611: $0d
	rla                                              ; $6612: $17
	ld   bc, $0aa0                                   ; $6613: $01 $a0 $0a
	db   $10                                         ; $6616: $10
	ld   bc, $01a0                                   ; $6617: $01 $a0 $01
	nop                                              ; $661a: $00
	ld   b, $a0                                      ; $661b: $06 $a0
	dec  c                                           ; $661d: $0d
	rla                                              ; $661e: $17
	ld   bc, $0aa0                                   ; $661f: $01 $a0 $0a
	db   $10                                         ; $6622: $10
	ld   bc, $01a0                                   ; $6623: $01 $a0 $01
	nop                                              ; $6626: $00
	ld   b, $c1                                      ; $6627: $06 $c1
	inc  bc                                          ; $6629: $03
	and  b                                           ; $662a: $a0
	rlca                                             ; $662b: $07
	ld   [bc], a                                     ; $662c: $02
	ld   bc, $01a0                                   ; $662d: $01 $a0 $01
	nop                                              ; $6630: $00
	rlca                                             ; $6631: $07
	pop  bc                                          ; $6632: $c1
	inc  bc                                          ; $6633: $03
	and  b                                           ; $6634: $a0
	rlca                                             ; $6635: $07
	ld   [bc], a                                     ; $6636: $02
	ld   bc, $01a0                                   ; $6637: $01 $a0 $01
	nop                                              ; $663a: $00
	dec  b                                           ; $663b: $05
	and  b                                           ; $663c: $a0
	dec  c                                           ; $663d: $0d
	rla                                              ; $663e: $17
	ld   bc, $0aa0                                   ; $663f: $01 $a0 $0a
	db   $10                                         ; $6642: $10
	ld   bc, $01a0                                   ; $6643: $01 $a0 $01
	nop                                              ; $6646: $00
	inc  bc                                          ; $6647: $03
	and  b                                           ; $6648: $a0
	dec  c                                           ; $6649: $0d
	rla                                              ; $664a: $17
	ld   bc, $0aa0                                   ; $664b: $01 $a0 $0a
	db   $10                                         ; $664e: $10
	ld   bc, $01a0                                   ; $664f: $01 $a0 $01
	nop                                              ; $6652: $00
	inc  bc                                          ; $6653: $03
	pop  bc                                          ; $6654: $c1
	inc  b                                           ; $6655: $04
	and  b                                           ; $6656: $a0
	add  hl, bc                                      ; $6657: $09
	ld   l, b                                        ; $6658: $68
	ld   bc, $06a0                                   ; $6659: $01 $a0 $06
	sbc  c                                           ; $665c: $99
	ld   bc, $01a0                                   ; $665d: $01 $a0 $01
	sbc  c                                           ; $6660: $99
	ld   b, $a0                                      ; $6661: $06 $a0
	dec  c                                           ; $6663: $0d
	rla                                              ; $6664: $17
	ld   bc, $0aa0                                   ; $6665: $01 $a0 $0a
	db   $10                                         ; $6668: $10
	ld   bc, $01a0                                   ; $6669: $01 $a0 $01
	nop                                              ; $666c: $00
	ld   b, $ad                                      ; $666d: $06 $ad
	nop                                              ; $666f: $00
	db   $fd                                         ; $6670: $fd
	ldh  a, [$c1]                                    ; $6671: $f0 $c1
	inc  b                                           ; $6673: $04
	and  b                                           ; $6674: $a0
	add  hl, bc                                      ; $6675: $09
	ld   l, b                                        ; $6676: $68
	ld   bc, $06a0                                   ; $6677: $01 $a0 $06
	sbc  c                                           ; $667a: $99
	ld   bc, $01a0                                   ; $667b: $01 $a0 $01
	sbc  c                                           ; $667e: $99
	ld   [bc], a                                     ; $667f: $02
	or   d                                           ; $6680: $b2
	ldh  a, [$1f]                                    ; $6681: $f0 $1f
	inc  c                                           ; $6683: $0c
	db   $fd                                         ; $6684: $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $6685: $f0 $a0
	dec  c                                           ; $6687: $0d
	rla                                              ; $6688: $17
	ld   bc, $0aa0                                   ; $6689: $01 $a0 $0a
	db   $10                                         ; $668c: $10
	ld   bc, $01a0                                   ; $668d: $01 $a0 $01
	nop                                              ; $6690: $00
	ld   b, $b1                                      ; $6691: $06 $b1
	ldh  a, [$1f]                                    ; $6693: $f0 $1f
	db   $10                                         ; $6695: $10
	pop  bc                                          ; $6696: $c1
	inc  b                                           ; $6697: $04
	and  b                                           ; $6698: $a0
	add  hl, bc                                      ; $6699: $09
	ld   l, b                                        ; $669a: $68
	ld   bc, $06a0                                   ; $669b: $01 $a0 $06
	sbc  c                                           ; $669e: $99
	ld   bc, $01a0                                   ; $669f: $01 $a0 $01
	sbc  c                                           ; $66a2: $99
	ld   b, $ad                                      ; $66a3: $06 $ad
	nop                                              ; $66a5: $00
	pop  bc                                          ; $66a6: $c1
	inc  b                                           ; $66a7: $04
	and  b                                           ; $66a8: $a0
	add  hl, bc                                      ; $66a9: $09
	ld   l, b                                        ; $66aa: $68
	ld   bc, $06a0                                   ; $66ab: $01 $a0 $06
	sbc  c                                           ; $66ae: $99
	ld   bc, $01a0                                   ; $66af: $01 $a0 $01
	sbc  c                                           ; $66b2: $99
	ld   b, $a0                                      ; $66b3: $06 $a0
	dec  c                                           ; $66b5: $0d
	rla                                              ; $66b6: $17
	ld   bc, $0aa0                                   ; $66b7: $01 $a0 $0a
	db   $10                                         ; $66ba: $10
	ld   bc, $01a0                                   ; $66bb: $01 $a0 $01
	nop                                              ; $66be: $00
	ld   b, $a0                                      ; $66bf: $06 $a0
	dec  c                                           ; $66c1: $0d
	rla                                              ; $66c2: $17
	ld   bc, $0aa0                                   ; $66c3: $01 $a0 $0a
	db   $10                                         ; $66c6: $10
	ld   bc, $01a0                                   ; $66c7: $01 $a0 $01
	nop                                              ; $66ca: $00
	ld   b, $c1                                      ; $66cb: $06 $c1
	inc  b                                           ; $66cd: $04
	and  b                                           ; $66ce: $a0
	add  hl, bc                                      ; $66cf: $09
	ld   l, b                                        ; $66d0: $68
	ld   bc, $06a0                                   ; $66d1: $01 $a0 $06
	sbc  c                                           ; $66d4: $99
	ld   bc, $01a0                                   ; $66d5: $01 $a0 $01
	sbc  c                                           ; $66d8: $99
	ld   b, $fd                                      ; $66d9: $06 $fd
	ldh  a, [$c1]                                    ; $66db: $f0 $c1
	inc  bc                                          ; $66dd: $03
	and  b                                           ; $66de: $a0
	rlca                                             ; $66df: $07
	ld   [bc], a                                     ; $66e0: $02
	ld   bc, $01a0                                   ; $66e1: $01 $a0 $01
	nop                                              ; $66e4: $00
	inc  bc                                          ; $66e5: $03
	or   e                                           ; $66e6: $b3
	ldh  a, [$c1]                                    ; $66e7: $f0 $c1
	inc  bc                                          ; $66e9: $03
	and  b                                           ; $66ea: $a0
	rlca                                             ; $66eb: $07
	ld   [bc], a                                     ; $66ec: $02
	ld   bc, $01a0                                   ; $66ed: $01 $a0 $01
	nop                                              ; $66f0: $00
	rrca                                             ; $66f1: $0f
	xor  l                                           ; $66f2: $ad
	nop                                              ; $66f3: $00
	pop  bc                                          ; $66f4: $c1
	inc  b                                           ; $66f5: $04
	and  b                                           ; $66f6: $a0
	add  hl, bc                                      ; $66f7: $09
	ld   l, b                                        ; $66f8: $68
	ld   bc, $06a0                                   ; $66f9: $01 $a0 $06
	sbc  c                                           ; $66fc: $99
	ld   bc, $01a0                                   ; $66fd: $01 $a0 $01
	sbc  c                                           ; $6700: $99
	ld   b, $c1                                      ; $6701: $06 $c1
	inc  bc                                          ; $6703: $03
	and  b                                           ; $6704: $a0
	rlca                                             ; $6705: $07
	ld   [bc], a                                     ; $6706: $02
	ld   bc, $01a0                                   ; $6707: $01 $a0 $01
	nop                                              ; $670a: $00
	rrca                                             ; $670b: $0f
	pop  bc                                          ; $670c: $c1
	inc  bc                                          ; $670d: $03
	and  b                                           ; $670e: $a0
	rlca                                             ; $670f: $07
	ld   [bc], a                                     ; $6710: $02
	ld   bc, $01a0                                   ; $6711: $01 $a0 $01
	nop                                              ; $6714: $00
	rlca                                             ; $6715: $07
	and  b                                           ; $6716: $a0
	dec  c                                           ; $6717: $0d
	rla                                              ; $6718: $17
	ld   bc, $0aa0                                   ; $6719: $01 $a0 $0a
	db   $10                                         ; $671c: $10
	ld   bc, $01a0                                   ; $671d: $01 $a0 $01
	nop                                              ; $6720: $00
	ld   d, $c1                                      ; $6721: $16 $c1
	inc  b                                           ; $6723: $04
	and  b                                           ; $6724: $a0
	add  hl, bc                                      ; $6725: $09
	ld   l, b                                        ; $6726: $68
	ld   bc, $06a0                                   ; $6727: $01 $a0 $06
	sbc  c                                           ; $672a: $99
	ld   bc, $01a0                                   ; $672b: $01 $a0 $01
	sbc  c                                           ; $672e: $99
	ld   b, $ad                                      ; $672f: $06 $ad
	nop                                              ; $6731: $00
	pop  bc                                          ; $6732: $c1
	inc  b                                           ; $6733: $04
	and  b                                           ; $6734: $a0
	add  hl, bc                                      ; $6735: $09
	ld   l, b                                        ; $6736: $68
	ld   bc, $06a0                                   ; $6737: $01 $a0 $06
	sbc  c                                           ; $673a: $99
	ld   bc, $01a0                                   ; $673b: $01 $a0 $01
	sbc  c                                           ; $673e: $99
	ld   b, $c1                                      ; $673f: $06 $c1
	inc  bc                                          ; $6741: $03
	and  b                                           ; $6742: $a0
	rlca                                             ; $6743: $07
	ld   [bc], a                                     ; $6744: $02
	ld   bc, $01a0                                   ; $6745: $01 $a0 $01
	nop                                              ; $6748: $00
	rlca                                             ; $6749: $07
	pop  bc                                          ; $674a: $c1
	inc  bc                                          ; $674b: $03
	and  b                                           ; $674c: $a0
	rlca                                             ; $674d: $07
	ld   [bc], a                                     ; $674e: $02
	ld   bc, $01a0                                   ; $674f: $01 $a0 $01
	nop                                              ; $6752: $00
	rlca                                             ; $6753: $07
	pop  bc                                          ; $6754: $c1
	inc  b                                           ; $6755: $04
	and  b                                           ; $6756: $a0
	add  hl, bc                                      ; $6757: $09
	ld   l, b                                        ; $6758: $68
	ld   bc, $06a0                                   ; $6759: $01 $a0 $06
	sbc  c                                           ; $675c: $99
	ld   bc, $01a0                                   ; $675d: $01 $a0 $01
	sbc  c                                           ; $6760: $99
	ld   b, $c1                                      ; $6761: $06 $c1
	inc  b                                           ; $6763: $04
	and  b                                           ; $6764: $a0
	add  hl, bc                                      ; $6765: $09
	ld   l, b                                        ; $6766: $68
	ld   bc, $06a0                                   ; $6767: $01 $a0 $06
	sbc  c                                           ; $676a: $99
	ld   bc, $01a0                                   ; $676b: $01 $a0 $01
	sbc  c                                           ; $676e: $99
	ld   b, $c1                                      ; $676f: $06 $c1
	inc  bc                                          ; $6771: $03
	and  b                                           ; $6772: $a0
	rlca                                             ; $6773: $07
	ld   [bc], a                                     ; $6774: $02
	ld   bc, $01a0                                   ; $6775: $01 $a0 $01
	nop                                              ; $6778: $00
	inc  bc                                          ; $6779: $03
	and  b                                           ; $677a: $a0
	dec  c                                           ; $677b: $0d
	rla                                              ; $677c: $17
	ld   bc, $0aa0                                   ; $677d: $01 $a0 $0a
	db   $10                                         ; $6780: $10
	ld   bc, $01a0                                   ; $6781: $01 $a0 $01
	nop                                              ; $6784: $00
	ld   [bc], a                                     ; $6785: $02
	pop  bc                                          ; $6786: $c1
	inc  b                                           ; $6787: $04
	and  b                                           ; $6788: $a0
	add  hl, bc                                      ; $6789: $09
	ld   l, b                                        ; $678a: $68
	ld   bc, $06a0                                   ; $678b: $01 $a0 $06
	sbc  c                                           ; $678e: $99
	ld   bc, $01a0                                   ; $678f: $01 $a0 $01
	sbc  c                                           ; $6792: $99
	ld   b, $c1                                      ; $6793: $06 $c1
	inc  bc                                          ; $6795: $03
	and  b                                           ; $6796: $a0
	rlca                                             ; $6797: $07
	ld   [bc], a                                     ; $6798: $02
	ld   bc, $01a0                                   ; $6799: $01 $a0 $01
	nop                                              ; $679c: $00
	rlca                                             ; $679d: $07
	xor  l                                           ; $679e: $ad
	nop                                              ; $679f: $00
	rlca                                             ; $67a0: $07
	nop                                              ; $67a1: $00
	add  hl, bc                                      ; $67a2: $09
	nop                                              ; $67a3: $00
	rra                                              ; $67a4: $1f
	ld   b, b                                        ; $67a5: $40
	db   $fd                                         ; $67a6: $fd
	di                                               ; $67a7: $f3
	and  d                                           ; $67a8: $a2
	nop                                              ; $67a9: $00
	rst  ToBoot                                         ; $67aa: $c7
	jr   nc, @-$5b                                   ; $67ab: $30 $a3

	ld   [hl], $1f                                   ; $67ad: $36 $1f
	ld   [$09a0], sp                                 ; $67af: $08 $a0 $09
	dec  h                                           ; $67b2: $25
	ld   c, $1f                                      ; $67b3: $0e $1f
	ld   [bc], a                                     ; $67b5: $02
	dec  h                                           ; $67b6: $25
	inc  b                                           ; $67b7: $04
	and  b                                           ; $67b8: $a0
	inc  bc                                          ; $67b9: $03
	dec  h                                           ; $67ba: $25
	inc  b                                           ; $67bb: $04
	rra                                              ; $67bc: $1f
	ld   [$09a0], sp                                 ; $67bd: $08 $a0 $09
	dec  h                                           ; $67c0: $25
	inc  b                                           ; $67c1: $04
	and  b                                           ; $67c2: $a0
	inc  bc                                          ; $67c3: $03
	dec  h                                           ; $67c4: $25
	inc  b                                           ; $67c5: $04
	rra                                              ; $67c6: $1f
	ld   [$09a0], sp                                 ; $67c7: $08 $a0 $09
	dec  h                                           ; $67ca: $25
	inc  b                                           ; $67cb: $04
	and  b                                           ; $67cc: $a0
	inc  bc                                          ; $67cd: $03
	dec  h                                           ; $67ce: $25
	inc  b                                           ; $67cf: $04
	rra                                              ; $67d0: $1f
	ld   [$09a0], sp                                 ; $67d1: $08 $a0 $09
	dec  h                                           ; $67d4: $25
	ld   c, $1f                                      ; $67d5: $0e $1f
	ld   [bc], a                                     ; $67d7: $02
	dec  h                                           ; $67d8: $25
	inc  b                                           ; $67d9: $04
	and  b                                           ; $67da: $a0
	inc  bc                                          ; $67db: $03
	dec  h                                           ; $67dc: $25
	inc  b                                           ; $67dd: $04
	rra                                              ; $67de: $1f
	ld   [$09a0], sp                                 ; $67df: $08 $a0 $09
	dec  h                                           ; $67e2: $25
	inc  b                                           ; $67e3: $04
	and  b                                           ; $67e4: $a0
	inc  bc                                          ; $67e5: $03
	dec  h                                           ; $67e6: $25
	inc  b                                           ; $67e7: $04
	rra                                              ; $67e8: $1f
	ld   [$09a0], sp                                 ; $67e9: $08 $a0 $09
	dec  h                                           ; $67ec: $25
	inc  b                                           ; $67ed: $04
	and  b                                           ; $67ee: $a0
	inc  bc                                          ; $67ef: $03
	dec  h                                           ; $67f0: $25
	inc  b                                           ; $67f1: $04
	rra                                              ; $67f2: $1f
	ld   [$09a0], sp                                 ; $67f3: $08 $a0 $09
	daa                                              ; $67f6: $27
	ld   c, $1f                                      ; $67f7: $0e $1f
	ld   [bc], a                                     ; $67f9: $02
	daa                                              ; $67fa: $27
	inc  b                                           ; $67fb: $04
	and  b                                           ; $67fc: $a0
	inc  bc                                          ; $67fd: $03
	daa                                              ; $67fe: $27
	inc  b                                           ; $67ff: $04
	rra                                              ; $6800: $1f
	ld   [$09a0], sp                                 ; $6801: $08 $a0 $09
	daa                                              ; $6804: $27
	inc  b                                           ; $6805: $04
	and  b                                           ; $6806: $a0
	inc  bc                                          ; $6807: $03
	daa                                              ; $6808: $27
	inc  b                                           ; $6809: $04
	rra                                              ; $680a: $1f
	ld   [$09a0], sp                                 ; $680b: $08 $a0 $09
	daa                                              ; $680e: $27
	inc  b                                           ; $680f: $04
	and  b                                           ; $6810: $a0
	inc  bc                                          ; $6811: $03
	daa                                              ; $6812: $27
	inc  b                                           ; $6813: $04
	rra                                              ; $6814: $1f
	ld   [$09a0], sp                                 ; $6815: $08 $a0 $09
	daa                                              ; $6818: $27
	ld   c, $1f                                      ; $6819: $0e $1f
	ld   [bc], a                                     ; $681b: $02
	daa                                              ; $681c: $27
	inc  b                                           ; $681d: $04
	and  b                                           ; $681e: $a0
	inc  bc                                          ; $681f: $03
	daa                                              ; $6820: $27
	inc  b                                           ; $6821: $04
	rra                                              ; $6822: $1f
	ld   [$09a0], sp                                 ; $6823: $08 $a0 $09
	daa                                              ; $6826: $27
	inc  b                                           ; $6827: $04
	and  b                                           ; $6828: $a0
	inc  bc                                          ; $6829: $03
	daa                                              ; $682a: $27
	inc  b                                           ; $682b: $04
	rra                                              ; $682c: $1f
	ld   [$09a0], sp                                 ; $682d: $08 $a0 $09
	daa                                              ; $6830: $27
	inc  b                                           ; $6831: $04
	and  b                                           ; $6832: $a0
	inc  bc                                          ; $6833: $03
	daa                                              ; $6834: $27
	inc  b                                           ; $6835: $04
	rra                                              ; $6836: $1f
	ld   [$09a0], sp                                 ; $6837: $08 $a0 $09
	daa                                              ; $683a: $27
	ld   c, $1f                                      ; $683b: $0e $1f
	ld   [bc], a                                     ; $683d: $02
	daa                                              ; $683e: $27
	inc  b                                           ; $683f: $04
	and  b                                           ; $6840: $a0
	inc  bc                                          ; $6841: $03
	daa                                              ; $6842: $27
	inc  b                                           ; $6843: $04
	rra                                              ; $6844: $1f
	ld   [$09a0], sp                                 ; $6845: $08 $a0 $09
	daa                                              ; $6848: $27
	inc  b                                           ; $6849: $04
	and  b                                           ; $684a: $a0
	inc  bc                                          ; $684b: $03
	daa                                              ; $684c: $27
	inc  b                                           ; $684d: $04
	rra                                              ; $684e: $1f
	ld   [$09a0], sp                                 ; $684f: $08 $a0 $09
	daa                                              ; $6852: $27
	inc  b                                           ; $6853: $04
	and  b                                           ; $6854: $a0
	inc  bc                                          ; $6855: $03
	daa                                              ; $6856: $27
	inc  b                                           ; $6857: $04
	rra                                              ; $6858: $1f
	ld   [$09a0], sp                                 ; $6859: $08 $a0 $09
	add  hl, hl                                      ; $685c: $29
	ld   c, $1f                                      ; $685d: $0e $1f
	ld   [bc], a                                     ; $685f: $02
	add  hl, hl                                      ; $6860: $29
	inc  b                                           ; $6861: $04
	and  b                                           ; $6862: $a0
	inc  bc                                          ; $6863: $03
	add  hl, hl                                      ; $6864: $29
	inc  b                                           ; $6865: $04
	rra                                              ; $6866: $1f
	ld   [$09a0], sp                                 ; $6867: $08 $a0 $09
	add  hl, hl                                      ; $686a: $29
	inc  b                                           ; $686b: $04
	and  b                                           ; $686c: $a0
	inc  bc                                          ; $686d: $03
	add  hl, hl                                      ; $686e: $29
	inc  b                                           ; $686f: $04
	rra                                              ; $6870: $1f
	ld   [$09a0], sp                                 ; $6871: $08 $a0 $09
	add  hl, hl                                      ; $6874: $29
	inc  b                                           ; $6875: $04
	and  b                                           ; $6876: $a0
	inc  bc                                          ; $6877: $03
	add  hl, hl                                      ; $6878: $29
	inc  b                                           ; $6879: $04
	rra                                              ; $687a: $1f
	ld   [$09a0], sp                                 ; $687b: $08 $a0 $09
	dec  h                                           ; $687e: $25
	ld   c, $1f                                      ; $687f: $0e $1f
	ld   [bc], a                                     ; $6881: $02
	dec  h                                           ; $6882: $25
	inc  b                                           ; $6883: $04
	and  b                                           ; $6884: $a0
	inc  bc                                          ; $6885: $03
	dec  h                                           ; $6886: $25
	inc  b                                           ; $6887: $04
	rra                                              ; $6888: $1f
	ld   [$09a0], sp                                 ; $6889: $08 $a0 $09
	dec  h                                           ; $688c: $25
	inc  b                                           ; $688d: $04
	and  b                                           ; $688e: $a0
	inc  bc                                          ; $688f: $03
	dec  h                                           ; $6890: $25
	inc  b                                           ; $6891: $04
	rra                                              ; $6892: $1f
	ld   [$09a0], sp                                 ; $6893: $08 $a0 $09
	dec  h                                           ; $6896: $25
	inc  b                                           ; $6897: $04
	and  b                                           ; $6898: $a0
	inc  bc                                          ; $6899: $03
	dec  h                                           ; $689a: $25
	inc  b                                           ; $689b: $04
	rra                                              ; $689c: $1f
	ld   [$09a0], sp                                 ; $689d: $08 $a0 $09
	dec  h                                           ; $68a0: $25
	ld   c, $1f                                      ; $68a1: $0e $1f
	ld   [bc], a                                     ; $68a3: $02
	dec  h                                           ; $68a4: $25
	inc  b                                           ; $68a5: $04
	and  b                                           ; $68a6: $a0
	inc  bc                                          ; $68a7: $03
	dec  h                                           ; $68a8: $25
	inc  b                                           ; $68a9: $04
	rra                                              ; $68aa: $1f
	ld   [$09a0], sp                                 ; $68ab: $08 $a0 $09
	dec  h                                           ; $68ae: $25
	inc  b                                           ; $68af: $04
	and  b                                           ; $68b0: $a0
	inc  bc                                          ; $68b1: $03
	dec  h                                           ; $68b2: $25
	inc  b                                           ; $68b3: $04
	rra                                              ; $68b4: $1f
	ld   [$09a0], sp                                 ; $68b5: $08 $a0 $09
	dec  h                                           ; $68b8: $25
	inc  b                                           ; $68b9: $04
	and  b                                           ; $68ba: $a0
	inc  bc                                          ; $68bb: $03
	dec  h                                           ; $68bc: $25
	inc  b                                           ; $68bd: $04
	rra                                              ; $68be: $1f
	ld   [$09a0], sp                                 ; $68bf: $08 $a0 $09
	daa                                              ; $68c2: $27
	ld   c, $1f                                      ; $68c3: $0e $1f
	ld   [bc], a                                     ; $68c5: $02
	daa                                              ; $68c6: $27
	inc  b                                           ; $68c7: $04
	and  b                                           ; $68c8: $a0
	inc  bc                                          ; $68c9: $03
	daa                                              ; $68ca: $27
	inc  b                                           ; $68cb: $04
	rra                                              ; $68cc: $1f
	ld   [$09a0], sp                                 ; $68cd: $08 $a0 $09
	daa                                              ; $68d0: $27
	inc  b                                           ; $68d1: $04
	and  b                                           ; $68d2: $a0
	inc  bc                                          ; $68d3: $03
	daa                                              ; $68d4: $27
	inc  b                                           ; $68d5: $04
	rra                                              ; $68d6: $1f
	ld   [$09a0], sp                                 ; $68d7: $08 $a0 $09
	daa                                              ; $68da: $27
	inc  b                                           ; $68db: $04
	and  b                                           ; $68dc: $a0
	inc  bc                                          ; $68dd: $03
	daa                                              ; $68de: $27
	inc  b                                           ; $68df: $04
	rra                                              ; $68e0: $1f
	ld   [$09a0], sp                                 ; $68e1: $08 $a0 $09
	ld   h, $0e                                      ; $68e4: $26 $0e
	rra                                              ; $68e6: $1f
	ld   [bc], a                                     ; $68e7: $02
	ld   h, $04                                      ; $68e8: $26 $04
	and  b                                           ; $68ea: $a0
	inc  bc                                          ; $68eb: $03
	ld   h, $04                                      ; $68ec: $26 $04
	rra                                              ; $68ee: $1f
	ld   [$09a0], sp                                 ; $68ef: $08 $a0 $09
	ld   h, $04                                      ; $68f2: $26 $04
	and  b                                           ; $68f4: $a0
	inc  bc                                          ; $68f5: $03
	ld   h, $04                                      ; $68f6: $26 $04
	rra                                              ; $68f8: $1f
	ld   [$09a0], sp                                 ; $68f9: $08 $a0 $09
	ld   h, $04                                      ; $68fc: $26 $04
	and  b                                           ; $68fe: $a0
	inc  bc                                          ; $68ff: $03
	ld   h, $04                                      ; $6900: $26 $04
	rra                                              ; $6902: $1f
	ld   [$09a0], sp                                 ; $6903: $08 $a0 $09
	dec  h                                           ; $6906: $25
	ld   c, $1f                                      ; $6907: $0e $1f
	ld   [bc], a                                     ; $6909: $02
	dec  h                                           ; $690a: $25
	inc  b                                           ; $690b: $04
	and  b                                           ; $690c: $a0
	inc  bc                                          ; $690d: $03
	dec  h                                           ; $690e: $25
	inc  b                                           ; $690f: $04
	rra                                              ; $6910: $1f
	ld   [$09a0], sp                                 ; $6911: $08 $a0 $09
	dec  h                                           ; $6914: $25
	inc  b                                           ; $6915: $04
	and  b                                           ; $6916: $a0
	inc  bc                                          ; $6917: $03
	dec  h                                           ; $6918: $25
	inc  b                                           ; $6919: $04
	rra                                              ; $691a: $1f
	ld   [$09a0], sp                                 ; $691b: $08 $a0 $09
	dec  h                                           ; $691e: $25
	inc  b                                           ; $691f: $04
	and  b                                           ; $6920: $a0
	inc  bc                                          ; $6921: $03
	dec  h                                           ; $6922: $25
	inc  b                                           ; $6923: $04
	rra                                              ; $6924: $1f
	ld   [$09a0], sp                                 ; $6925: $08 $a0 $09
	daa                                              ; $6928: $27
	ld   c, $1f                                      ; $6929: $0e $1f
	ld   [bc], a                                     ; $692b: $02
	daa                                              ; $692c: $27
	inc  b                                           ; $692d: $04
	and  b                                           ; $692e: $a0
	inc  bc                                          ; $692f: $03
	daa                                              ; $6930: $27
	inc  b                                           ; $6931: $04
	rra                                              ; $6932: $1f
	ld   [$09a0], sp                                 ; $6933: $08 $a0 $09
	daa                                              ; $6936: $27
	inc  b                                           ; $6937: $04
	and  b                                           ; $6938: $a0
	inc  bc                                          ; $6939: $03
	daa                                              ; $693a: $27
	inc  b                                           ; $693b: $04
	rra                                              ; $693c: $1f
	ld   [$09a0], sp                                 ; $693d: $08 $a0 $09
	daa                                              ; $6940: $27
	inc  b                                           ; $6941: $04
	and  b                                           ; $6942: $a0
	inc  bc                                          ; $6943: $03
	daa                                              ; $6944: $27
	inc  b                                           ; $6945: $04
	rra                                              ; $6946: $1f
	ld   [$09a0], sp                                 ; $6947: $08 $a0 $09
	daa                                              ; $694a: $27
	ld   c, $1f                                      ; $694b: $0e $1f
	ld   [bc], a                                     ; $694d: $02
	daa                                              ; $694e: $27
	inc  b                                           ; $694f: $04
	and  b                                           ; $6950: $a0
	inc  bc                                          ; $6951: $03
	daa                                              ; $6952: $27
	inc  b                                           ; $6953: $04
	rra                                              ; $6954: $1f
	ld   [$09a0], sp                                 ; $6955: $08 $a0 $09
	daa                                              ; $6958: $27
	inc  b                                           ; $6959: $04
	and  b                                           ; $695a: $a0
	inc  bc                                          ; $695b: $03
	daa                                              ; $695c: $27
	inc  b                                           ; $695d: $04
	rra                                              ; $695e: $1f
	ld   [$09a0], sp                                 ; $695f: $08 $a0 $09
	daa                                              ; $6962: $27
	inc  b                                           ; $6963: $04
	and  b                                           ; $6964: $a0
	inc  bc                                          ; $6965: $03
	daa                                              ; $6966: $27
	inc  b                                           ; $6967: $04
	rra                                              ; $6968: $1f
	ld   [$09a0], sp                                 ; $6969: $08 $a0 $09
	daa                                              ; $696c: $27
	ld   c, $1f                                      ; $696d: $0e $1f
	ld   [bc], a                                     ; $696f: $02
	daa                                              ; $6970: $27
	inc  b                                           ; $6971: $04
	and  b                                           ; $6972: $a0
	inc  bc                                          ; $6973: $03
	daa                                              ; $6974: $27
	inc  b                                           ; $6975: $04
	rra                                              ; $6976: $1f
	ld   [$09a0], sp                                 ; $6977: $08 $a0 $09
	daa                                              ; $697a: $27
	inc  b                                           ; $697b: $04
	and  b                                           ; $697c: $a0
	inc  bc                                          ; $697d: $03
	daa                                              ; $697e: $27
	inc  b                                           ; $697f: $04
	rra                                              ; $6980: $1f
	ld   [$09a0], sp                                 ; $6981: $08 $a0 $09
	daa                                              ; $6984: $27
	inc  b                                           ; $6985: $04
	and  b                                           ; $6986: $a0
	inc  bc                                          ; $6987: $03
	daa                                              ; $6988: $27
	inc  b                                           ; $6989: $04
	rra                                              ; $698a: $1f
	ld   [$09a0], sp                                 ; $698b: $08 $a0 $09
	dec  h                                           ; $698e: $25
	ld   c, $1f                                      ; $698f: $0e $1f
	ld   [bc], a                                     ; $6991: $02
	dec  h                                           ; $6992: $25
	inc  b                                           ; $6993: $04
	and  b                                           ; $6994: $a0
	inc  bc                                          ; $6995: $03
	dec  h                                           ; $6996: $25
	inc  b                                           ; $6997: $04
	rra                                              ; $6998: $1f
	ld   [$09a0], sp                                 ; $6999: $08 $a0 $09
	dec  h                                           ; $699c: $25
	inc  b                                           ; $699d: $04
	and  b                                           ; $699e: $a0
	inc  bc                                          ; $699f: $03
	dec  h                                           ; $69a0: $25
	inc  b                                           ; $69a1: $04
	rra                                              ; $69a2: $1f
	ld   [$09a0], sp                                 ; $69a3: $08 $a0 $09
	dec  h                                           ; $69a6: $25
	inc  b                                           ; $69a7: $04
	and  b                                           ; $69a8: $a0
	inc  bc                                          ; $69a9: $03
	dec  h                                           ; $69aa: $25
	inc  b                                           ; $69ab: $04
	and  b                                           ; $69ac: $a0
	add  hl, bc                                      ; $69ad: $09
	add  hl, de                                      ; $69ae: $19
	ld   [bc], a                                     ; $69af: $02
	and  b                                           ; $69b0: $a0
	inc  bc                                          ; $69b1: $03
	add  hl, de                                      ; $69b2: $19
	ld   [bc], a                                     ; $69b3: $02
	rra                                              ; $69b4: $1f
	inc  b                                           ; $69b5: $04
	and  b                                           ; $69b6: $a0
	add  hl, bc                                      ; $69b7: $09
	add  hl, de                                      ; $69b8: $19
	ld   [bc], a                                     ; $69b9: $02
	and  b                                           ; $69ba: $a0
	inc  bc                                          ; $69bb: $03
	add  hl, de                                      ; $69bc: $19
	ld   [bc], a                                     ; $69bd: $02
	rra                                              ; $69be: $1f
	inc  b                                           ; $69bf: $04
	and  b                                           ; $69c0: $a0
	add  hl, bc                                      ; $69c1: $09
	add  hl, de                                      ; $69c2: $19
	ld   [bc], a                                     ; $69c3: $02
	and  b                                           ; $69c4: $a0
	inc  bc                                          ; $69c5: $03
	add  hl, de                                      ; $69c6: $19
	ld   [bc], a                                     ; $69c7: $02
	rra                                              ; $69c8: $1f
	inc  [hl]                                        ; $69c9: $34
	and  d                                           ; $69ca: $a2
	ld   bc, $04c3                                   ; $69cb: $01 $c3 $04
	and  d                                           ; $69ce: $a2
	ld   h, $a0                                      ; $69cf: $26 $a0
	add  hl, bc                                      ; $69d1: $09
	dec  h                                           ; $69d2: $25
	ld   c, $1f                                      ; $69d3: $0e $1f
	ld   [bc], a                                     ; $69d5: $02
	dec  h                                           ; $69d6: $25
	inc  b                                           ; $69d7: $04
	and  b                                           ; $69d8: $a0
	inc  bc                                          ; $69d9: $03
	dec  h                                           ; $69da: $25
	inc  b                                           ; $69db: $04
	and  b                                           ; $69dc: $a0
	add  hl, bc                                      ; $69dd: $09
	ld   [hl+], a                                    ; $69de: $22
	ld   [$1020], sp                                 ; $69df: $08 $20 $10
	ld   a, [de]                                     ; $69e2: $1a
	inc  b                                           ; $69e3: $04
	dec  de                                          ; $69e4: $1b
	ld   [bc], a                                     ; $69e5: $02
	ld   hl, $2202                                   ; $69e6: $21 $02 $22
	jr   z, jr_0fc_6a10                              ; $69e9: $28 $25

	inc  b                                           ; $69eb: $04
	and  b                                           ; $69ec: $a0
	inc  bc                                          ; $69ed: $03
	dec  h                                           ; $69ee: $25
	inc  b                                           ; $69ef: $04
	rra                                              ; $69f0: $1f
	ld   [$09a0], sp                                 ; $69f1: $08 $a0 $09
	dec  h                                           ; $69f4: $25
	inc  b                                           ; $69f5: $04
	and  b                                           ; $69f6: $a0
	inc  bc                                          ; $69f7: $03
	dec  h                                           ; $69f8: $25
	inc  b                                           ; $69f9: $04
	rra                                              ; $69fa: $1f
	ld   [$09a0], sp                                 ; $69fb: $08 $a0 $09
	daa                                              ; $69fe: $27
	ld   c, $1f                                      ; $69ff: $0e $1f
	ld   [bc], a                                     ; $6a01: $02
	ld   [hl+], a                                    ; $6a02: $22
	ld   [$0827], sp                                 ; $6a03: $08 $27 $08
	ld   [hl+], a                                    ; $6a06: $22
	db   $10                                         ; $6a07: $10
	jr   nz, jr_0fc_6a12                             ; $6a08: $20 $08

	ld   a, [de]                                     ; $6a0a: $1a
	jr   z, @+$29                                    ; $6a0b: $28 $27

	inc  b                                           ; $6a0d: $04
	and  b                                           ; $6a0e: $a0
	inc  bc                                          ; $6a0f: $03

jr_0fc_6a10:
	daa                                              ; $6a10: $27
	inc  b                                           ; $6a11: $04

jr_0fc_6a12:
	rra                                              ; $6a12: $1f
	ld   [$09a0], sp                                 ; $6a13: $08 $a0 $09
	daa                                              ; $6a16: $27
	inc  b                                           ; $6a17: $04
	and  b                                           ; $6a18: $a0
	inc  bc                                          ; $6a19: $03
	daa                                              ; $6a1a: $27
	inc  b                                           ; $6a1b: $04
	rra                                              ; $6a1c: $1f
	ld   [$09a0], sp                                 ; $6a1d: $08 $a0 $09
	daa                                              ; $6a20: $27
	ld   c, $1f                                      ; $6a21: $0e $1f
	ld   [bc], a                                     ; $6a23: $02
	daa                                              ; $6a24: $27
	inc  b                                           ; $6a25: $04
	rra                                              ; $6a26: $1f
	inc  b                                           ; $6a27: $04
	and  b                                           ; $6a28: $a0
	ld   a, [bc]                                     ; $6a29: $0a
	ld   a, [hl+]                                    ; $6a2a: $2a
	ld   [$09a0], sp                                 ; $6a2b: $08 $a0 $09
	ld   a, [hl+]                                    ; $6a2e: $2a
	ld   [bc], a                                     ; $6a2f: $02
	and  b                                           ; $6a30: $a0
	ld   a, [bc]                                     ; $6a31: $0a
	add  hl, hl                                      ; $6a32: $29
	ld   c, $27                                      ; $6a33: $0e $27
	ld   [$1025], sp                                 ; $6a35: $08 $25 $10
	inc  hl                                          ; $6a38: $23
	ld   [$0822], sp                                 ; $6a39: $08 $22 $08
	jr   nz, jr_0fc_6a56                             ; $6a3c: $20 $18

	ld   a, [de]                                     ; $6a3e: $1a
	ld   [$1c22], sp                                 ; $6a3f: $08 $22 $1c
	and  b                                           ; $6a42: $a0
	inc  bc                                          ; $6a43: $03
	ld   [hl+], a                                    ; $6a44: $22
	inc  b                                           ; $6a45: $04
	and  b                                           ; $6a46: $a0
	ld   a, [bc]                                     ; $6a47: $0a
	jr   nz, jr_0fc_6a4e                             ; $6a48: $20 $04

	ld   [hl+], a                                    ; $6a4a: $22
	inc  b                                           ; $6a4b: $04
	jr   nz, jr_0fc_6a52                             ; $6a4c: $20 $04

jr_0fc_6a4e:
	ld   [hl+], a                                    ; $6a4e: $22
	inc  b                                           ; $6a4f: $04
	jr   nz, jr_0fc_6a5a                             ; $6a50: $20 $08

jr_0fc_6a52:
	ld   a, [de]                                     ; $6a52: $1a
	ld   [$1c22], sp                                 ; $6a53: $08 $22 $1c

jr_0fc_6a56:
	inc  hl                                          ; $6a56: $23
	ld   [bc], a                                     ; $6a57: $02
	inc  h                                           ; $6a58: $24
	ld   [bc], a                                     ; $6a59: $02

jr_0fc_6a5a:
	dec  h                                           ; $6a5a: $25
	inc  e                                           ; $6a5b: $1c
	and  b                                           ; $6a5c: $a0
	inc  bc                                          ; $6a5d: $03
	dec  h                                           ; $6a5e: $25
	inc  b                                           ; $6a5f: $04
	and  b                                           ; $6a60: $a0
	ld   a, [bc]                                     ; $6a61: $0a
	ld   a, [de]                                     ; $6a62: $1a
	ld   d, $a0                                      ; $6a63: $16 $a0
	inc  bc                                          ; $6a65: $03
	ld   a, [de]                                     ; $6a66: $1a
	ld   [bc], a                                     ; $6a67: $02
	and  b                                           ; $6a68: $a0
	ld   a, [bc]                                     ; $6a69: $0a
	ld   a, [de]                                     ; $6a6a: $1a
	ld   [$0a2a], sp                                 ; $6a6b: $08 $2a $0a
	add  hl, hl                                      ; $6a6e: $29
	inc  c                                           ; $6a6f: $0c
	daa                                              ; $6a70: $27
	ld   a, [bc]                                     ; $6a71: $0a
	ld   h, $38                                      ; $6a72: $26 $38
	and  b                                           ; $6a74: $a0
	inc  bc                                          ; $6a75: $03
	ld   h, $08                                      ; $6a76: $26 $08
	rra                                              ; $6a78: $1f
	ld   [$0aa0], sp                                 ; $6a79: $08 $a0 $0a
	dec  h                                           ; $6a7c: $25
	ld   c, $1f                                      ; $6a7d: $0e $1f
	ld   [bc], a                                     ; $6a7f: $02
	dec  h                                           ; $6a80: $25
	ld   [$0430], sp                                 ; $6a81: $08 $30 $04
	ld   [hl-], a                                    ; $6a84: $32
	inc  b                                           ; $6a85: $04
	jr   nc, jr_0fc_6a8c                             ; $6a86: $30 $04

	ld   [hl-], a                                    ; $6a88: $32
	inc  b                                           ; $6a89: $04
	jr   nc, @+$0a                                   ; $6a8a: $30 $08

jr_0fc_6a8c:
	add  hl, hl                                      ; $6a8c: $29
	ld   [$00a2], sp                                 ; $6a8d: $08 $a2 $00
	rst  ToBoot                                         ; $6a90: $c7
	jr   nc, @-$5b                                   ; $6a91: $30 $a3

	ld   h, $2b                                      ; $6a93: $26 $2b
	jr   z, jr_0fc_6abe                              ; $6a95: $28 $27

	inc  b                                           ; $6a97: $04
	and  b                                           ; $6a98: $a0
	inc  bc                                          ; $6a99: $03
	daa                                              ; $6a9a: $27
	inc  b                                           ; $6a9b: $04
	rra                                              ; $6a9c: $1f
	ld   [$09a0], sp                                 ; $6a9d: $08 $a0 $09
	daa                                              ; $6aa0: $27
	inc  b                                           ; $6aa1: $04
	and  b                                           ; $6aa2: $a0
	inc  bc                                          ; $6aa3: $03
	daa                                              ; $6aa4: $27
	inc  b                                           ; $6aa5: $04
	rra                                              ; $6aa6: $1f
	ld   [$09a0], sp                                 ; $6aa7: $08 $a0 $09
	daa                                              ; $6aaa: $27
	ld   c, $1f                                      ; $6aab: $0e $1f
	ld   [bc], a                                     ; $6aad: $02
	daa                                              ; $6aae: $27
	inc  b                                           ; $6aaf: $04
	and  b                                           ; $6ab0: $a0
	inc  bc                                          ; $6ab1: $03
	daa                                              ; $6ab2: $27
	ld   b, $1f                                      ; $6ab3: $06 $1f
	ld   b, $a0                                      ; $6ab5: $06 $a0
	add  hl, bc                                      ; $6ab7: $09
	daa                                              ; $6ab8: $27
	inc  b                                           ; $6ab9: $04
	and  b                                           ; $6aba: $a0
	inc  bc                                          ; $6abb: $03
	daa                                              ; $6abc: $27
	inc  b                                           ; $6abd: $04

jr_0fc_6abe:
	rra                                              ; $6abe: $1f
	ld   [$09a0], sp                                 ; $6abf: $08 $a0 $09
	daa                                              ; $6ac2: $27
	inc  b                                           ; $6ac3: $04
	and  b                                           ; $6ac4: $a0
	inc  bc                                          ; $6ac5: $03
	daa                                              ; $6ac6: $27
	inc  b                                           ; $6ac7: $04
	rra                                              ; $6ac8: $1f
	ld   [$09a0], sp                                 ; $6ac9: $08 $a0 $09
	dec  h                                           ; $6acc: $25
	ld   c, $1f                                      ; $6acd: $0e $1f
	ld   [bc], a                                     ; $6acf: $02
	dec  h                                           ; $6ad0: $25
	inc  b                                           ; $6ad1: $04
	and  b                                           ; $6ad2: $a0
	inc  bc                                          ; $6ad3: $03
	dec  h                                           ; $6ad4: $25
	ld   b, $1f                                      ; $6ad5: $06 $1f
	ld   b, $a0                                      ; $6ad7: $06 $a0
	add  hl, bc                                      ; $6ad9: $09
	daa                                              ; $6ada: $27
	inc  b                                           ; $6adb: $04
	and  b                                           ; $6adc: $a0
	inc  bc                                          ; $6add: $03
	daa                                              ; $6ade: $27
	inc  b                                           ; $6adf: $04
	rra                                              ; $6ae0: $1f
	ld   [$09a0], sp                                 ; $6ae1: $08 $a0 $09
	daa                                              ; $6ae4: $27
	inc  b                                           ; $6ae5: $04
	and  b                                           ; $6ae6: $a0
	inc  bc                                          ; $6ae7: $03
	daa                                              ; $6ae8: $27
	inc  b                                           ; $6ae9: $04
	rra                                              ; $6aea: $1f
	ld   [$09a0], sp                                 ; $6aeb: $08 $a0 $09
	dec  d                                           ; $6aee: $15
	ld   [$0817], sp                                 ; $6aef: $08 $17 $08
	ld   a, [de]                                     ; $6af2: $1a
	ld   [$0420], sp                                 ; $6af3: $08 $20 $04
	ld   [hl+], a                                    ; $6af6: $22
	inc  b                                           ; $6af7: $04
	jr   nz, jr_0fc_6afe                             ; $6af8: $20 $04

	ld   [hl+], a                                    ; $6afa: $22
	inc  b                                           ; $6afb: $04
	jr   nz, jr_0fc_6b06                             ; $6afc: $20 $08

jr_0fc_6afe:
	add  hl, de                                      ; $6afe: $19
	ld   [$201a], sp                                 ; $6aff: $08 $1a $20
	rra                                              ; $6b02: $1f
	ld   [$081a], sp                                 ; $6b03: $08 $1a $08

jr_0fc_6b06:
	rra                                              ; $6b06: $1f
	ld   [$081a], sp                                 ; $6b07: $08 $1a $08
	rra                                              ; $6b0a: $1f
	ld   [$1022], sp                                 ; $6b0b: $08 $22 $10
	dec  h                                           ; $6b0e: $25
	ld   [bc], a                                     ; $6b0f: $02
	and  b                                           ; $6b10: $a0
	inc  bc                                          ; $6b11: $03
	dec  h                                           ; $6b12: $25
	inc  b                                           ; $6b13: $04
	rra                                              ; $6b14: $1f
	ld   a, [bc]                                     ; $6b15: $0a
	and  b                                           ; $6b16: $a0
	add  hl, bc                                      ; $6b17: $09
	daa                                              ; $6b18: $27
	ld   [bc], a                                     ; $6b19: $02
	and  b                                           ; $6b1a: $a0
	inc  bc                                          ; $6b1b: $03
	daa                                              ; $6b1c: $27
	inc  b                                           ; $6b1d: $04
	rra                                              ; $6b1e: $1f
	ld   [bc], a                                     ; $6b1f: $02
	and  b                                           ; $6b20: $a0
	add  hl, bc                                      ; $6b21: $09
	ld   [hl+], a                                    ; $6b22: $22
	ld   [bc], a                                     ; $6b23: $02
	and  b                                           ; $6b24: $a0
	inc  bc                                          ; $6b25: $03
	ld   [hl+], a                                    ; $6b26: $22
	inc  b                                           ; $6b27: $04
	rra                                              ; $6b28: $1f
	ld   [bc], a                                     ; $6b29: $02
	and  b                                           ; $6b2a: $a0
	add  hl, bc                                      ; $6b2b: $09
	dec  h                                           ; $6b2c: $25
	ld   [bc], a                                     ; $6b2d: $02
	and  b                                           ; $6b2e: $a0
	inc  bc                                          ; $6b2f: $03
	dec  h                                           ; $6b30: $25
	inc  b                                           ; $6b31: $04
	rra                                              ; $6b32: $1f
	ld   a, [bc]                                     ; $6b33: $0a
	and  b                                           ; $6b34: $a0
	add  hl, bc                                      ; $6b35: $09
	jr   nz, jr_0fc_6b48                             ; $6b36: $20 $10

	dec  h                                           ; $6b38: $25
	ld   [bc], a                                     ; $6b39: $02
	and  b                                           ; $6b3a: $a0
	inc  bc                                          ; $6b3b: $03
	dec  h                                           ; $6b3c: $25
	inc  b                                           ; $6b3d: $04
	rra                                              ; $6b3e: $1f
	ld   a, [bc]                                     ; $6b3f: $0a
	and  b                                           ; $6b40: $a0
	add  hl, bc                                      ; $6b41: $09
	daa                                              ; $6b42: $27
	ld   [bc], a                                     ; $6b43: $02
	and  b                                           ; $6b44: $a0
	inc  bc                                          ; $6b45: $03
	daa                                              ; $6b46: $27
	inc  b                                           ; $6b47: $04

jr_0fc_6b48:
	rra                                              ; $6b48: $1f
	ld   [bc], a                                     ; $6b49: $02
	and  b                                           ; $6b4a: $a0
	add  hl, bc                                      ; $6b4b: $09
	jr   nz, jr_0fc_6b50                             ; $6b4c: $20 $02

	and  b                                           ; $6b4e: $a0
	inc  bc                                          ; $6b4f: $03

jr_0fc_6b50:
	jr   nz, jr_0fc_6b56                             ; $6b50: $20 $04

	rra                                              ; $6b52: $1f
	ld   [bc], a                                     ; $6b53: $02
	and  b                                           ; $6b54: $a0
	add  hl, bc                                      ; $6b55: $09

jr_0fc_6b56:
	dec  h                                           ; $6b56: $25
	ld   [bc], a                                     ; $6b57: $02
	and  b                                           ; $6b58: $a0
	inc  bc                                          ; $6b59: $03
	dec  h                                           ; $6b5a: $25
	inc  b                                           ; $6b5b: $04
	rra                                              ; $6b5c: $1f
	ld   a, [bc]                                     ; $6b5d: $0a
	and  b                                           ; $6b5e: $a0
	add  hl, bc                                      ; $6b5f: $09
	dec  h                                           ; $6b60: $25
	db   $10                                         ; $6b61: $10
	jr   nc, jr_0fc_6b66                             ; $6b62: $30 $02

	and  b                                           ; $6b64: $a0
	inc  bc                                          ; $6b65: $03

jr_0fc_6b66:
	jr   nc, jr_0fc_6b6c                             ; $6b66: $30 $04

	rra                                              ; $6b68: $1f
	ld   a, [bc]                                     ; $6b69: $0a
	and  b                                           ; $6b6a: $a0
	add  hl, bc                                      ; $6b6b: $09

jr_0fc_6b6c:
	ld   a, [hl+]                                    ; $6b6c: $2a
	ld   [bc], a                                     ; $6b6d: $02
	and  b                                           ; $6b6e: $a0
	inc  bc                                          ; $6b6f: $03
	ld   a, [hl+]                                    ; $6b70: $2a
	inc  b                                           ; $6b71: $04
	rra                                              ; $6b72: $1f
	ld   [bc], a                                     ; $6b73: $02
	and  b                                           ; $6b74: $a0
	add  hl, bc                                      ; $6b75: $09
	jr   z, jr_0fc_6b7a                              ; $6b76: $28 $02

	and  b                                           ; $6b78: $a0
	inc  bc                                          ; $6b79: $03

jr_0fc_6b7a:
	jr   z, jr_0fc_6b80                              ; $6b7a: $28 $04

	rra                                              ; $6b7c: $1f
	ld   [bc], a                                     ; $6b7d: $02
	and  b                                           ; $6b7e: $a0
	add  hl, bc                                      ; $6b7f: $09

jr_0fc_6b80:
	dec  h                                           ; $6b80: $25
	ld   [bc], a                                     ; $6b81: $02
	and  b                                           ; $6b82: $a0
	inc  bc                                          ; $6b83: $03
	dec  h                                           ; $6b84: $25
	inc  b                                           ; $6b85: $04
	rra                                              ; $6b86: $1f
	ld   a, [bc]                                     ; $6b87: $0a
	and  b                                           ; $6b88: $a0
	add  hl, bc                                      ; $6b89: $09
	inc  hl                                          ; $6b8a: $23
	db   $10                                         ; $6b8b: $10
	inc  hl                                          ; $6b8c: $23
	ld   [bc], a                                     ; $6b8d: $02
	and  b                                           ; $6b8e: $a0
	inc  bc                                          ; $6b8f: $03
	inc  hl                                          ; $6b90: $23
	inc  b                                           ; $6b91: $04
	rra                                              ; $6b92: $1f
	ld   [bc], a                                     ; $6b93: $02
	and  b                                           ; $6b94: $a0
	add  hl, bc                                      ; $6b95: $09
	inc  hl                                          ; $6b96: $23
	db   $10                                         ; $6b97: $10
	inc  hl                                          ; $6b98: $23
	inc  c                                           ; $6b99: $0c
	rra                                              ; $6b9a: $1f
	inc  b                                           ; $6b9b: $04
	rra                                              ; $6b9c: $1f
	ld   [$0e22], sp                                 ; $6b9d: $08 $22 $0e
	rra                                              ; $6ba0: $1f
	ld   [bc], a                                     ; $6ba1: $02
	ld   [hl+], a                                    ; $6ba2: $22
	inc  b                                           ; $6ba3: $04
	and  b                                           ; $6ba4: $a0
	inc  bc                                          ; $6ba5: $03
	ld   [hl+], a                                    ; $6ba6: $22
	inc  b                                           ; $6ba7: $04
	rra                                              ; $6ba8: $1f
	ld   [$09a0], sp                                 ; $6ba9: $08 $a0 $09
	ld   [hl+], a                                    ; $6bac: $22
	inc  b                                           ; $6bad: $04
	and  b                                           ; $6bae: $a0
	inc  bc                                          ; $6baf: $03
	ld   [hl+], a                                    ; $6bb0: $22
	inc  b                                           ; $6bb1: $04
	rra                                              ; $6bb2: $1f
	ld   [$09a0], sp                                 ; $6bb3: $08 $a0 $09
	ld   [hl+], a                                    ; $6bb6: $22
	inc  b                                           ; $6bb7: $04
	and  b                                           ; $6bb8: $a0
	inc  bc                                          ; $6bb9: $03
	ld   [hl+], a                                    ; $6bba: $22
	inc  b                                           ; $6bbb: $04
	rra                                              ; $6bbc: $1f
	ld   [$09a0], sp                                 ; $6bbd: $08 $a0 $09
	jr   nz, jr_0fc_6bd0                             ; $6bc0: $20 $0e

	rra                                              ; $6bc2: $1f
	ld   [bc], a                                     ; $6bc3: $02
	jr   nz, jr_0fc_6bca                             ; $6bc4: $20 $04

	and  b                                           ; $6bc6: $a0
	inc  bc                                          ; $6bc7: $03
	jr   nz, jr_0fc_6bce                             ; $6bc8: $20 $04

jr_0fc_6bca:
	rra                                              ; $6bca: $1f
	ld   [$09a0], sp                                 ; $6bcb: $08 $a0 $09

jr_0fc_6bce:
	jr   nz, jr_0fc_6bd4                             ; $6bce: $20 $04

jr_0fc_6bd0:
	and  b                                           ; $6bd0: $a0
	inc  bc                                          ; $6bd1: $03
	jr   nz, jr_0fc_6bd8                             ; $6bd2: $20 $04

jr_0fc_6bd4:
	rra                                              ; $6bd4: $1f
	ld   [$09a0], sp                                 ; $6bd5: $08 $a0 $09

jr_0fc_6bd8:
	jr   nz, jr_0fc_6bde                             ; $6bd8: $20 $04

	and  b                                           ; $6bda: $a0
	inc  bc                                          ; $6bdb: $03
	jr   nz, jr_0fc_6be2                             ; $6bdc: $20 $04

jr_0fc_6bde:
	rra                                              ; $6bde: $1f
	ld   [$09a0], sp                                 ; $6bdf: $08 $a0 $09

jr_0fc_6be2:
	jr   nz, jr_0fc_6bec                             ; $6be2: $20 $08

	dec  d                                           ; $6be4: $15
	inc  b                                           ; $6be5: $04
	rla                                              ; $6be6: $17
	inc  b                                           ; $6be7: $04
	dec  d                                           ; $6be8: $15
	inc  b                                           ; $6be9: $04
	rla                                              ; $6bea: $17
	inc  b                                           ; $6beb: $04

jr_0fc_6bec:
	jr   nz, jr_0fc_6bf2                             ; $6bec: $20 $04

	ld   [hl+], a                                    ; $6bee: $22
	inc  b                                           ; $6bef: $04
	jr   nz, jr_0fc_6bf6                             ; $6bf0: $20 $04

jr_0fc_6bf2:
	ld   [hl+], a                                    ; $6bf2: $22
	inc  b                                           ; $6bf3: $04
	dec  h                                           ; $6bf4: $25
	inc  b                                           ; $6bf5: $04

jr_0fc_6bf6:
	daa                                              ; $6bf6: $27
	inc  b                                           ; $6bf7: $04
	dec  h                                           ; $6bf8: $25
	inc  b                                           ; $6bf9: $04
	daa                                              ; $6bfa: $27
	inc  b                                           ; $6bfb: $04
	jr   nc, jr_0fc_6c18                             ; $6bfc: $30 $1a

	inc  sp                                          ; $6bfe: $33
	inc  bc                                          ; $6bff: $03
	inc  [hl]                                        ; $6c00: $34
	inc  bc                                          ; $6c01: $03
	dec  [hl]                                        ; $6c02: $35
	ld   a, [de]                                     ; $6c03: $1a
	and  b                                           ; $6c04: $a0
	inc  bc                                          ; $6c05: $03
	dec  [hl]                                        ; $6c06: $35
	ld   b, $a0                                      ; $6c07: $06 $a0
	add  hl, bc                                      ; $6c09: $09
	ld   [hl-], a                                    ; $6c0a: $32
	inc  e                                           ; $6c0b: $1c
	and  b                                           ; $6c0c: $a0
	inc  bc                                          ; $6c0d: $03
	ld   [hl-], a                                    ; $6c0e: $32
	inc  b                                           ; $6c0f: $04
	rra                                              ; $6c10: $1f
	ld   [$09a0], sp                                 ; $6c11: $08 $a0 $09
	dec  h                                           ; $6c14: $25
	inc  b                                           ; $6c15: $04
	and  b                                           ; $6c16: $a0
	inc  bc                                          ; $6c17: $03

jr_0fc_6c18:
	dec  h                                           ; $6c18: $25
	inc  b                                           ; $6c19: $04
	rra                                              ; $6c1a: $1f
	ld   [$09a0], sp                                 ; $6c1b: $08 $a0 $09
	dec  h                                           ; $6c1e: $25
	inc  b                                           ; $6c1f: $04
	and  b                                           ; $6c20: $a0
	inc  bc                                          ; $6c21: $03
	dec  h                                           ; $6c22: $25
	inc  b                                           ; $6c23: $04
	and  b                                           ; $6c24: $a0
	add  hl, bc                                      ; $6c25: $09
	inc  sp                                          ; $6c26: $33
	inc  e                                           ; $6c27: $1c
	and  b                                           ; $6c28: $a0
	inc  bc                                          ; $6c29: $03
	inc  sp                                          ; $6c2a: $33
	inc  b                                           ; $6c2b: $04
	rra                                              ; $6c2c: $1f
	ld   [$09a0], sp                                 ; $6c2d: $08 $a0 $09
	dec  h                                           ; $6c30: $25
	inc  b                                           ; $6c31: $04
	and  b                                           ; $6c32: $a0
	inc  bc                                          ; $6c33: $03
	dec  h                                           ; $6c34: $25
	inc  b                                           ; $6c35: $04
	rra                                              ; $6c36: $1f
	ld   [$09a0], sp                                 ; $6c37: $08 $a0 $09
	dec  h                                           ; $6c3a: $25
	inc  b                                           ; $6c3b: $04
	and  b                                           ; $6c3c: $a0
	inc  bc                                          ; $6c3d: $03
	dec  h                                           ; $6c3e: $25
	inc  b                                           ; $6c3f: $04
	and  b                                           ; $6c40: $a0
	add  hl, bc                                      ; $6c41: $09
	ld   [hl], $10                                   ; $6c42: $36 $10
	ld   [hl], $10                                   ; $6c44: $36 $10
	ld   [hl], $10                                   ; $6c46: $36 $10
	ld   [hl], $10                                   ; $6c48: $36 $10
	scf                                              ; $6c4a: $37
	inc  l                                           ; $6c4b: $2c
	and  b                                           ; $6c4c: $a0
	inc  bc                                          ; $6c4d: $03
	scf                                              ; $6c4e: $37
	inc  b                                           ; $6c4f: $04
	rra                                              ; $6c50: $1f
	ld   [$09a0], sp                                 ; $6c51: $08 $a0 $09
	daa                                              ; $6c54: $27
	inc  b                                           ; $6c55: $04
	and  b                                           ; $6c56: $a0
	inc  bc                                          ; $6c57: $03
	daa                                              ; $6c58: $27
	inc  b                                           ; $6c59: $04
	rra                                              ; $6c5a: $1f
	ld   [$09a0], sp                                 ; $6c5b: $08 $a0 $09
	daa                                              ; $6c5e: $27
	inc  c                                           ; $6c5f: $0c
	rra                                              ; $6c60: $1f
	inc  b                                           ; $6c61: $04
	daa                                              ; $6c62: $27
	inc  b                                           ; $6c63: $04
	and  b                                           ; $6c64: $a0
	inc  bc                                          ; $6c65: $03
	daa                                              ; $6c66: $27
	inc  b                                           ; $6c67: $04
	rra                                              ; $6c68: $1f
	ld   [$09a0], sp                                 ; $6c69: $08 $a0 $09
	inc  h                                           ; $6c6c: $24
	inc  b                                           ; $6c6d: $04
	and  b                                           ; $6c6e: $a0
	inc  bc                                          ; $6c6f: $03
	inc  h                                           ; $6c70: $24
	inc  b                                           ; $6c71: $04
	rra                                              ; $6c72: $1f
	ld   [$09a0], sp                                 ; $6c73: $08 $a0 $09
	inc  h                                           ; $6c76: $24
	inc  b                                           ; $6c77: $04
	and  b                                           ; $6c78: $a0
	inc  bc                                          ; $6c79: $03
	inc  h                                           ; $6c7a: $24
	inc  b                                           ; $6c7b: $04
	rra                                              ; $6c7c: $1f
	ld   [$09a0], sp                                 ; $6c7d: $08 $a0 $09
	ld   [hl+], a                                    ; $6c80: $22
	ld   c, $1f                                      ; $6c81: $0e $1f
	ld   [bc], a                                     ; $6c83: $02
	ld   [hl+], a                                    ; $6c84: $22
	inc  b                                           ; $6c85: $04
	and  b                                           ; $6c86: $a0
	inc  bc                                          ; $6c87: $03
	ld   [hl+], a                                    ; $6c88: $22
	inc  b                                           ; $6c89: $04
	and  b                                           ; $6c8a: $a0
	add  hl, bc                                      ; $6c8b: $09
	dec  de                                          ; $6c8c: $1b
	ld   [bc], a                                     ; $6c8d: $02
	and  b                                           ; $6c8e: $a0
	inc  bc                                          ; $6c8f: $03
	dec  de                                          ; $6c90: $1b
	ld   [bc], a                                     ; $6c91: $02
	rra                                              ; $6c92: $1f
	inc  b                                           ; $6c93: $04
	and  b                                           ; $6c94: $a0
	add  hl, bc                                      ; $6c95: $09
	jr   nz, jr_0fc_6c9a                             ; $6c96: $20 $02

	and  b                                           ; $6c98: $a0
	inc  bc                                          ; $6c99: $03

jr_0fc_6c9a:
	jr   nz, jr_0fc_6c9e                             ; $6c9a: $20 $02

	rra                                              ; $6c9c: $1f
	inc  b                                           ; $6c9d: $04

jr_0fc_6c9e:
	and  b                                           ; $6c9e: $a0
	add  hl, bc                                      ; $6c9f: $09
	ld   hl, $a002                                   ; $6ca0: $21 $02 $a0
	inc  bc                                          ; $6ca3: $03
	ld   hl, $1f02                                   ; $6ca4: $21 $02 $1f
	inc  b                                           ; $6ca7: $04
	and  b                                           ; $6ca8: $a0
	add  hl, bc                                      ; $6ca9: $09
	ld   [hl+], a                                    ; $6caa: $22
	ld   [bc], a                                     ; $6cab: $02
	and  b                                           ; $6cac: $a0
	inc  bc                                          ; $6cad: $03
	ld   [hl+], a                                    ; $6cae: $22
	ld   [bc], a                                     ; $6caf: $02
	rra                                              ; $6cb0: $1f
	inc  b                                           ; $6cb1: $04
	rra                                              ; $6cb2: $1f
	ld   [$09a0], sp                                 ; $6cb3: $08 $a0 $09
	daa                                              ; $6cb6: $27
	inc  c                                           ; $6cb7: $0c
	rra                                              ; $6cb8: $1f
	inc  b                                           ; $6cb9: $04
	daa                                              ; $6cba: $27
	inc  b                                           ; $6cbb: $04
	and  b                                           ; $6cbc: $a0
	inc  bc                                          ; $6cbd: $03
	daa                                              ; $6cbe: $27
	inc  b                                           ; $6cbf: $04
	rra                                              ; $6cc0: $1f
	ld   [$09a0], sp                                 ; $6cc1: $08 $a0 $09
	daa                                              ; $6cc4: $27
	inc  b                                           ; $6cc5: $04
	and  b                                           ; $6cc6: $a0
	inc  bc                                          ; $6cc7: $03
	daa                                              ; $6cc8: $27
	inc  b                                           ; $6cc9: $04
	rra                                              ; $6cca: $1f
	ld   [$09a0], sp                                 ; $6ccb: $08 $a0 $09
	daa                                              ; $6cce: $27
	inc  b                                           ; $6ccf: $04
	and  b                                           ; $6cd0: $a0
	inc  bc                                          ; $6cd1: $03
	daa                                              ; $6cd2: $27
	inc  b                                           ; $6cd3: $04
	rra                                              ; $6cd4: $1f
	ld   [$09a0], sp                                 ; $6cd5: $08 $a0 $09
	add  hl, hl                                      ; $6cd8: $29
	ld   c, $1f                                      ; $6cd9: $0e $1f
	ld   [bc], a                                     ; $6cdb: $02
	add  hl, hl                                      ; $6cdc: $29
	inc  b                                           ; $6cdd: $04
	and  b                                           ; $6cde: $a0
	inc  bc                                          ; $6cdf: $03
	add  hl, hl                                      ; $6ce0: $29
	inc  b                                           ; $6ce1: $04
	rra                                              ; $6ce2: $1f
	ld   [$09a0], sp                                 ; $6ce3: $08 $a0 $09
	ld   a, [hl+]                                    ; $6ce6: $2a
	inc  b                                           ; $6ce7: $04
	and  b                                           ; $6ce8: $a0
	inc  bc                                          ; $6ce9: $03
	ld   a, [hl+]                                    ; $6cea: $2a
	inc  b                                           ; $6ceb: $04
	rra                                              ; $6cec: $1f
	ld   [$09a0], sp                                 ; $6ced: $08 $a0 $09
	ld   a, [hl+]                                    ; $6cf0: $2a
	inc  b                                           ; $6cf1: $04
	and  b                                           ; $6cf2: $a0

jr_0fc_6cf3:
	inc  bc                                          ; $6cf3: $03
	ld   a, [hl+]                                    ; $6cf4: $2a
	inc  b                                           ; $6cf5: $04
	rra                                              ; $6cf6: $1f
	ld   [$09a0], sp                                 ; $6cf7: $08 $a0 $09
	ld   sp, $3208                                   ; $6cfa: $31 $08 $32
	ld   [bc], a                                     ; $6cfd: $02
	and  b                                           ; $6cfe: $a0
	inc  bc                                          ; $6cff: $03
	ld   [hl-], a                                    ; $6d00: $32
	inc  b                                           ; $6d01: $04
	rra                                              ; $6d02: $1f
	ld   [bc], a                                     ; $6d03: $02
	and  b                                           ; $6d04: $a0
	add  hl, bc                                      ; $6d05: $09
	add  hl, hl                                      ; $6d06: $29
	ld   [$022a], sp                                 ; $6d07: $08 $2a $02
	and  b                                           ; $6d0a: $a0
	inc  bc                                          ; $6d0b: $03
	ld   a, [hl+]                                    ; $6d0c: $2a
	inc  b                                           ; $6d0d: $04
	rra                                              ; $6d0e: $1f
	ld   [bc], a                                     ; $6d0f: $02
	and  b                                           ; $6d10: $a0
	add  hl, bc                                      ; $6d11: $09
	inc  h                                           ; $6d12: $24
	ld   [$0235], sp                                 ; $6d13: $08 $35 $02
	inc  sp                                          ; $6d16: $33
	ld   [bc], a                                     ; $6d17: $02
	ld   [hl-], a                                    ; $6d18: $32
	ld   [bc], a                                     ; $6d19: $02
	jr   nc, jr_0fc_6d1e                             ; $6d1a: $30 $02

	ld   a, [hl+]                                    ; $6d1c: $2a
	ld   [bc], a                                     ; $6d1d: $02

jr_0fc_6d1e:
	add  hl, hl                                      ; $6d1e: $29
	ld   [bc], a                                     ; $6d1f: $02
	daa                                              ; $6d20: $27
	ld   [bc], a                                     ; $6d21: $02
	dec  h                                           ; $6d22: $25
	ld   [bc], a                                     ; $6d23: $02
	ld   [hl+], a                                    ; $6d24: $22
	ld   [bc], a                                     ; $6d25: $02
	and  b                                           ; $6d26: $a0
	inc  bc                                          ; $6d27: $03
	ld   [hl+], a                                    ; $6d28: $22
	ld   [bc], a                                     ; $6d29: $02
	rra                                              ; $6d2a: $1f
	inc  b                                           ; $6d2b: $04
	and  b                                           ; $6d2c: $a0
	add  hl, bc                                      ; $6d2d: $09
	ld   [hl+], a                                    ; $6d2e: $22
	ld   [bc], a                                     ; $6d2f: $02
	and  b                                           ; $6d30: $a0
	inc  bc                                          ; $6d31: $03
	ld   [hl+], a                                    ; $6d32: $22
	ld   [bc], a                                     ; $6d33: $02
	rra                                              ; $6d34: $1f
	inc  b                                           ; $6d35: $04
	and  b                                           ; $6d36: $a0
	add  hl, bc                                      ; $6d37: $09
	ld   [hl+], a                                    ; $6d38: $22
	ld   [bc], a                                     ; $6d39: $02
	and  b                                           ; $6d3a: $a0
	inc  bc                                          ; $6d3b: $03
	ld   [hl+], a                                    ; $6d3c: $22
	ld   [bc], a                                     ; $6d3d: $02
	rra                                              ; $6d3e: $1f
	inc  b                                           ; $6d3f: $04
	rra                                              ; $6d40: $1f
	jr   z, jr_0fc_6cf3                              ; $6d41: $28 $b0

	di                                               ; $6d43: $f3
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	rlca                                             ; $6d46: $07
	nop                                              ; $6d47: $00
	add  hl, bc                                      ; $6d48: $09
	nop                                              ; $6d49: $00
	rra                                              ; $6d4a: $1f
	jr   nz, @-$5c                                   ; $6d4b: $20 $a2

	ld   bc, $04c3                                   ; $6d4d: $01 $c3 $04
	and  e                                           ; $6d50: $a3
	inc  h                                           ; $6d51: $24
	and  b                                           ; $6d52: $a0
	dec  c                                           ; $6d53: $0d
	ld   [hl-], a                                    ; $6d54: $32
	ld   [$1030], sp                                 ; $6d55: $08 $30 $10
	ld   a, [hl+]                                    ; $6d58: $2a
	ld   [$f3fd], sp                                 ; $6d59: $08 $fd $f3
	and  d                                           ; $6d5c: $a2
	ld   bc, $04c3                                   ; $6d5d: $01 $c3 $04
	and  e                                           ; $6d60: $a3
	inc  h                                           ; $6d61: $24
	ld   [hl-], a                                    ; $6d62: $32
	ld   d, b                                        ; $6d63: $50
	and  b                                           ; $6d64: $a0
	dec  b                                           ; $6d65: $05
	ld   [hl-], a                                    ; $6d66: $32
	inc  b                                           ; $6d67: $04
	rra                                              ; $6d68: $1f
	inc  b                                           ; $6d69: $04
	and  b                                           ; $6d6a: $a0
	dec  c                                           ; $6d6b: $0d
	ld   [hl-], a                                    ; $6d6c: $32
	ld   [$0837], sp                                 ; $6d6d: $08 $37 $08
	ld   [hl-], a                                    ; $6d70: $32
	db   $10                                         ; $6d71: $10
	jr   nc, jr_0fc_6d7c                             ; $6d72: $30 $08

	ld   a, [hl+]                                    ; $6d74: $2a
	ld   d, b                                        ; $6d75: $50
	and  b                                           ; $6d76: $a0
	dec  b                                           ; $6d77: $05
	ld   a, [hl+]                                    ; $6d78: $2a
	inc  b                                           ; $6d79: $04
	rra                                              ; $6d7a: $1f
	inc  c                                           ; $6d7b: $0c

jr_0fc_6d7c:
	and  b                                           ; $6d7c: $a0
	dec  c                                           ; $6d7d: $0d
	ld   a, [hl+]                                    ; $6d7e: $2a
	ld   [$1032], sp                                 ; $6d7f: $08 $32 $10
	dec  [hl]                                        ; $6d82: $35
	ld   [$3037], sp                                 ; $6d83: $08 $37 $30
	ld   b, b                                        ; $6d86: $40
	db   $10                                         ; $6d87: $10
	add  hl, sp                                      ; $6d88: $39
	jr   nz, @+$39                                   ; $6d89: $20 $37

	jr   @+$34                                       ; $6d8b: $18 $32

	ld   [$5035], sp                                 ; $6d8d: $08 $35 $50
	and  b                                           ; $6d90: $a0
	dec  b                                           ; $6d91: $05
	dec  [hl]                                        ; $6d92: $35
	inc  b                                           ; $6d93: $04
	rra                                              ; $6d94: $1f
	inc  b                                           ; $6d95: $04
	and  b                                           ; $6d96: $a0
	dec  c                                           ; $6d97: $0d
	ld   [hl-], a                                    ; $6d98: $32
	ld   [$0833], sp                                 ; $6d99: $08 $33 $08
	dec  [hl]                                        ; $6d9c: $35
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $6d9d: $08 $32 $08
	jr   nc, jr_0fc_6daa                             ; $6da0: $30 $08

	ld   a, [hl+]                                    ; $6da2: $2a
	ld   l, $a0                                      ; $6da3: $2e $a0
	dec  b                                           ; $6da5: $05
	ld   a, [hl+]                                    ; $6da6: $2a
	ld   [bc], a                                     ; $6da7: $02
	and  b                                           ; $6da8: $a0
	dec  c                                           ; $6da9: $0d

jr_0fc_6daa:
	ld   a, [hl+]                                    ; $6daa: $2a
	db   $10                                         ; $6dab: $10
	ld   a, [hl-]                                    ; $6dac: $3a
	db   $10                                         ; $6dad: $10
	and  b                                           ; $6dae: $a0
	dec  b                                           ; $6daf: $05
	ld   a, [hl-]                                    ; $6db0: $3a
	inc  b                                           ; $6db1: $04
	rra                                              ; $6db2: $1f
	inc  b                                           ; $6db3: $04
	and  b                                           ; $6db4: $a0
	dec  c                                           ; $6db5: $0d
	ld   a, [hl-]                                    ; $6db6: $3a
	ld   [$0840], sp                                 ; $6db7: $08 $40 $08
	ld   a, [hl-]                                    ; $6dba: $3a
	ld   [$0838], sp                                 ; $6dbb: $08 $38 $08
	ld   [hl], $08                                   ; $6dbe: $36 $08
	dec  [hl]                                        ; $6dc0: $35
	jr   nc, jr_0fc_6df5                             ; $6dc1: $30 $32

	db   $10                                         ; $6dc3: $10
	scf                                              ; $6dc4: $37
	ld   e, $a0                                      ; $6dc5: $1e $a0
	dec  b                                           ; $6dc7: $05
	scf                                              ; $6dc8: $37
	ld   [bc], a                                     ; $6dc9: $02
	and  b                                           ; $6dca: $a0
	dec  c                                           ; $6dcb: $0d
	scf                                              ; $6dcc: $37
	ld   [$1035], sp                                 ; $6dcd: $08 $35 $10
	ld   [hl-], a                                    ; $6dd0: $32
	ld   [$3033], sp                                 ; $6dd1: $08 $33 $30
	ld   [hl-], a                                    ; $6dd4: $32
	ld   [$0833], sp                                 ; $6dd5: $08 $33 $08
	ld   [hl-], a                                    ; $6dd8: $32
	jr   nz, @+$32                                   ; $6dd9: $20 $30

	jr   @+$2c                                       ; $6ddb: $18 $2a

	ld   [$3c35], sp                                 ; $6ddd: $08 $35 $3c
	and  b                                           ; $6de0: $a0
	dec  b                                           ; $6de1: $05
	dec  [hl]                                        ; $6de2: $35
	inc  b                                           ; $6de3: $04
	and  b                                           ; $6de4: $a0
	dec  c                                           ; $6de5: $0d
	dec  h                                           ; $6de6: $25
	inc  b                                           ; $6de7: $04
	and  b                                           ; $6de8: $a0
	dec  b                                           ; $6de9: $05
	dec  h                                           ; $6dea: $25
	ld   [bc], a                                     ; $6deb: $02
	rra                                              ; $6dec: $1f
	ld   [bc], a                                     ; $6ded: $02
	and  b                                           ; $6dee: $a0
	dec  c                                           ; $6def: $0d
	dec  h                                           ; $6df0: $25
	inc  b                                           ; $6df1: $04
	and  b                                           ; $6df2: $a0
	dec  b                                           ; $6df3: $05
	dec  h                                           ; $6df4: $25

jr_0fc_6df5:
	ld   [bc], a                                     ; $6df5: $02
	rra                                              ; $6df6: $1f
	ld   [bc], a                                     ; $6df7: $02
	and  b                                           ; $6df8: $a0
	dec  c                                           ; $6df9: $0d
	dec  h                                           ; $6dfa: $25
	inc  b                                           ; $6dfb: $04
	and  b                                           ; $6dfc: $a0
	dec  b                                           ; $6dfd: $05
	dec  h                                           ; $6dfe: $25
	ld   [bc], a                                     ; $6dff: $02
	rra                                              ; $6e00: $1f
	ld   a, [bc]                                     ; $6e01: $0a
	and  b                                           ; $6e02: $a0
	dec  c                                           ; $6e03: $0d
	ld   [hl-], a                                    ; $6e04: $32
	ld   [$1030], sp                                 ; $6e05: $08 $30 $10
	ld   a, [hl+]                                    ; $6e08: $2a
	ld   [$5032], sp                                 ; $6e09: $08 $32 $50
	and  b                                           ; $6e0c: $a0
	dec  b                                           ; $6e0d: $05
	ld   [hl-], a                                    ; $6e0e: $32
	inc  b                                           ; $6e0f: $04
	rra                                              ; $6e10: $1f
	inc  b                                           ; $6e11: $04
	and  b                                           ; $6e12: $a0
	dec  c                                           ; $6e13: $0d
	ld   [hl-], a                                    ; $6e14: $32
	ld   [$0837], sp                                 ; $6e15: $08 $37 $08
	ld   [hl-], a                                    ; $6e18: $32
	db   $10                                         ; $6e19: $10
	jr   nc, jr_0fc_6e24                             ; $6e1a: $30 $08

	ld   a, [hl+]                                    ; $6e1c: $2a
	ld   d, b                                        ; $6e1d: $50
	and  b                                           ; $6e1e: $a0
	dec  b                                           ; $6e1f: $05
	ld   a, [hl+]                                    ; $6e20: $2a
	inc  b                                           ; $6e21: $04
	rra                                              ; $6e22: $1f
	inc  c                                           ; $6e23: $0c

jr_0fc_6e24:
	and  b                                           ; $6e24: $a0
	dec  c                                           ; $6e25: $0d
	ld   a, [hl+]                                    ; $6e26: $2a
	ld   [$1032], sp                                 ; $6e27: $08 $32 $10
	dec  [hl]                                        ; $6e2a: $35
	ld   [$3037], sp                                 ; $6e2b: $08 $37 $30
	ld   b, b                                        ; $6e2e: $40
	db   $10                                         ; $6e2f: $10
	add  hl, sp                                      ; $6e30: $39
	jr   nz, @+$39                                   ; $6e31: $20 $37

	jr   @+$34                                       ; $6e33: $18 $32

	ld   [$5035], sp                                 ; $6e35: $08 $35 $50
	and  b                                           ; $6e38: $a0
	dec  b                                           ; $6e39: $05
	dec  [hl]                                        ; $6e3a: $35
	inc  b                                           ; $6e3b: $04
	rra                                              ; $6e3c: $1f
	inc  b                                           ; $6e3d: $04
	and  b                                           ; $6e3e: $a0
	dec  c                                           ; $6e3f: $0d
	ld   [hl-], a                                    ; $6e40: $32
	ld   [$0833], sp                                 ; $6e41: $08 $33 $08
	dec  [hl]                                        ; $6e44: $35
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $6e45: $08 $32 $08
	jr   nc, jr_0fc_6e52                             ; $6e48: $30 $08

	ld   a, [hl+]                                    ; $6e4a: $2a
	ld   l, $a0                                      ; $6e4b: $2e $a0
	dec  b                                           ; $6e4d: $05
	ld   a, [hl+]                                    ; $6e4e: $2a
	ld   [bc], a                                     ; $6e4f: $02
	and  b                                           ; $6e50: $a0
	dec  c                                           ; $6e51: $0d

jr_0fc_6e52:
	ld   a, [hl+]                                    ; $6e52: $2a
	db   $10                                         ; $6e53: $10
	ld   a, [hl-]                                    ; $6e54: $3a
	db   $10                                         ; $6e55: $10
	and  b                                           ; $6e56: $a0
	dec  b                                           ; $6e57: $05
	ld   a, [hl-]                                    ; $6e58: $3a
	inc  b                                           ; $6e59: $04
	rra                                              ; $6e5a: $1f
	inc  b                                           ; $6e5b: $04
	and  b                                           ; $6e5c: $a0

jr_0fc_6e5d:
	dec  c                                           ; $6e5d: $0d
	ld   a, [hl-]                                    ; $6e5e: $3a
	ld   [$0840], sp                                 ; $6e5f: $08 $40 $08
	ld   a, [hl-]                                    ; $6e62: $3a
	ld   [$0838], sp                                 ; $6e63: $08 $38 $08
	ld   [hl], $08                                   ; $6e66: $36 $08
	dec  [hl]                                        ; $6e68: $35
	jr   nc, jr_0fc_6e9d                             ; $6e69: $30 $32

	db   $10                                         ; $6e6b: $10
	scf                                              ; $6e6c: $37
	ld   d, $a0                                      ; $6e6d: $16 $a0
	dec  b                                           ; $6e6f: $05
	scf                                              ; $6e70: $37
	ld   [bc], a                                     ; $6e71: $02
	and  b                                           ; $6e72: $a0
	dec  c                                           ; $6e73: $0d
	scf                                              ; $6e74: $37
	inc  b                                           ; $6e75: $04
	jr   c, jr_0fc_6e7c                              ; $6e76: $38 $04

	scf                                              ; $6e78: $37
	ld   [$0835], sp                                 ; $6e79: $08 $35 $08

jr_0fc_6e7c:
	inc  sp                                          ; $6e7c: $33
	ld   [FadePalettesAndSetRangeToUpdate], sp                                 ; $6e7d: $08 $32 $08
	inc  sp                                          ; $6e80: $33
	jr   nz, @+$34                                   ; $6e81: $20 $32

	db   $10                                         ; $6e83: $10
	inc  sp                                          ; $6e84: $33
	db   $10                                         ; $6e85: $10
	dec  [hl]                                        ; $6e86: $35
	jr   nz, @+$39                                   ; $6e87: $20 $37

	db   $10                                         ; $6e89: $10
	dec  [hl]                                        ; $6e8a: $35
	ld   [$0837], sp                                 ; $6e8b: $08 $37 $08
	ld   a, [hl-]                                    ; $6e8e: $3a
	ld   d, h                                        ; $6e8f: $54
	and  b                                           ; $6e90: $a0
	dec  b                                           ; $6e91: $05
	ld   a, [hl-]                                    ; $6e92: $3a
	inc  c                                           ; $6e93: $0c
	and  b                                           ; $6e94: $a0
	dec  bc                                          ; $6e95: $0b
	dec  h                                           ; $6e96: $25
	db   $10                                         ; $6e97: $10
	daa                                              ; $6e98: $27
	db   $10                                         ; $6e99: $10
	ld   a, [hl+]                                    ; $6e9a: $2a
	inc  e                                           ; $6e9b: $1c
	and  b                                           ; $6e9c: $a0

jr_0fc_6e9d:
	dec  b                                           ; $6e9d: $05
	ld   a, [hl+]                                    ; $6e9e: $2a
	inc  b                                           ; $6e9f: $04
	and  b                                           ; $6ea0: $a0
	dec  bc                                          ; $6ea1: $0b
	dec  h                                           ; $6ea2: $25
	db   $10                                         ; $6ea3: $10
	daa                                              ; $6ea4: $27
	db   $10                                         ; $6ea5: $10
	jr   nc, @+$1e                                   ; $6ea6: $30 $1c

	and  b                                           ; $6ea8: $a0

jr_0fc_6ea9:
	dec  b                                           ; $6ea9: $05
	jr   nc, jr_0fc_6eb0                             ; $6eaa: $30 $04

	and  b                                           ; $6eac: $a0
	dec  bc                                          ; $6ead: $0b
	dec  h                                           ; $6eae: $25
	db   $10                                         ; $6eaf: $10

jr_0fc_6eb0:
	daa                                              ; $6eb0: $27
	db   $10                                         ; $6eb1: $10
	ld   [hl-], a                                    ; $6eb2: $32
	db   $10                                         ; $6eb3: $10
	jr   nc, jr_0fc_6ec6                             ; $6eb4: $30 $10

	ld   a, [hl+]                                    ; $6eb6: $2a
	db   $10                                         ; $6eb7: $10
	ld   [hl-], a                                    ; $6eb8: $32
	db   $10                                         ; $6eb9: $10
	daa                                              ; $6eba: $27
	jr   z, jr_0fc_6e5d                              ; $6ebb: $28 $a0

	dec  b                                           ; $6ebd: $05
	daa                                              ; $6ebe: $27
	ld   [$0ba0], sp                                 ; $6ebf: $08 $a0 $0b
	daa                                              ; $6ec2: $27
	ld   [$0829], sp                                 ; $6ec3: $08 $29 $08

jr_0fc_6ec6:
	ld   a, [hl+]                                    ; $6ec6: $2a
	jr   nz, jr_0fc_6ef0                             ; $6ec7: $20 $27

	jr   jr_0fc_6eed                                 ; $6ec9: $18 $22

	ld   [$1020], sp                                 ; $6ecb: $08 $20 $10
	inc  h                                           ; $6ece: $24
	db   $10                                         ; $6ecf: $10
	daa                                              ; $6ed0: $27
	db   $10                                         ; $6ed1: $10
	ld   [hl-], a                                    ; $6ed2: $32
	db   $10                                         ; $6ed3: $10
	jr   nc, jr_0fc_6ef6                             ; $6ed4: $30 $20

	add  hl, hl                                      ; $6ed6: $29
	jr   jr_0fc_6f00                                 ; $6ed7: $18 $27

	ld   [$1825], sp                                 ; $6ed9: $08 $25 $18
	and  b                                           ; $6edc: $a0
	dec  b                                           ; $6edd: $05
	dec  h                                           ; $6ede: $25
	ld   [$0ba0], sp                                 ; $6edf: $08 $a0 $0b
	dec  h                                           ; $6ee2: $25

jr_0fc_6ee3:
	db   $10                                         ; $6ee3: $10
	daa                                              ; $6ee4: $27
	db   $10                                         ; $6ee5: $10
	ld   a, [hl+]                                    ; $6ee6: $2a
	inc  e                                           ; $6ee7: $1c
	and  b                                           ; $6ee8: $a0
	dec  b                                           ; $6ee9: $05
	ld   a, [hl+]                                    ; $6eea: $2a
	inc  b                                           ; $6eeb: $04
	and  b                                           ; $6eec: $a0

jr_0fc_6eed:
	dec  bc                                          ; $6eed: $0b
	dec  h                                           ; $6eee: $25
	db   $10                                         ; $6eef: $10

jr_0fc_6ef0:
	daa                                              ; $6ef0: $27
	db   $10                                         ; $6ef1: $10
	jr   nc, jr_0fc_6f10                             ; $6ef2: $30 $1c

	and  b                                           ; $6ef4: $a0
	dec  b                                           ; $6ef5: $05

jr_0fc_6ef6:
	jr   nc, jr_0fc_6efc                             ; $6ef6: $30 $04

	and  b                                           ; $6ef8: $a0
	dec  bc                                          ; $6ef9: $0b
	dec  h                                           ; $6efa: $25
	db   $10                                         ; $6efb: $10

jr_0fc_6efc:
	daa                                              ; $6efc: $27
	db   $10                                         ; $6efd: $10
	ld   [hl-], a                                    ; $6efe: $32
	db   $10                                         ; $6eff: $10

jr_0fc_6f00:
	jr   nc, jr_0fc_6f12                             ; $6f00: $30 $10

	ld   a, [hl+]                                    ; $6f02: $2a
	db   $10                                         ; $6f03: $10
	ld   [hl-], a                                    ; $6f04: $32
	db   $10                                         ; $6f05: $10
	daa                                              ; $6f06: $27
	jr   nz, jr_0fc_6ea9                             ; $6f07: $20 $a0

	dec  b                                           ; $6f09: $05
	daa                                              ; $6f0a: $27
	inc  b                                           ; $6f0b: $04
	rra                                              ; $6f0c: $1f
	inc  b                                           ; $6f0d: $04
	and  b                                           ; $6f0e: $a0
	dec  c                                           ; $6f0f: $0d

jr_0fc_6f10:
	daa                                              ; $6f10: $27
	inc  b                                           ; $6f11: $04

jr_0fc_6f12:
	and  b                                           ; $6f12: $a0
	dec  b                                           ; $6f13: $05
	daa                                              ; $6f14: $27
	inc  b                                           ; $6f15: $04
	and  b                                           ; $6f16: $a0
	dec  bc                                          ; $6f17: $0b
	daa                                              ; $6f18: $27
	ld   [$0829], sp                                 ; $6f19: $08 $29 $08
	ld   a, [hl+]                                    ; $6f1c: $2a
	jr   jr_0fc_6f41                                 ; $6f1d: $18 $22

	ld   [$1029], sp                                 ; $6f1f: $08 $29 $10
	daa                                              ; $6f22: $27
	db   $10                                         ; $6f23: $10
	dec  h                                           ; $6f24: $25
	jr   nz, jr_0fc_6f4a                             ; $6f25: $20 $23

	jr   jr_0fc_6f4b                                 ; $6f27: $18 $22

	ld   [$2023], sp                                 ; $6f29: $08 $23 $20
	and  b                                           ; $6f2c: $a0
	dec  b                                           ; $6f2d: $05
	inc  hl                                          ; $6f2e: $23
	ld   [$0ba0], sp                                 ; $6f2f: $08 $a0 $0b
	ld   [hl+], a                                    ; $6f32: $22
	ld   [$0822], sp                                 ; $6f33: $08 $22 $08
	inc  hl                                          ; $6f36: $23
	ld   [$2025], sp                                 ; $6f37: $08 $25 $20
	daa                                              ; $6f3a: $27
	db   $10                                         ; $6f3b: $10
	dec  h                                           ; $6f3c: $25
	ld   [$0827], sp                                 ; $6f3d: $08 $27 $08
	ld   a, [hl+]                                    ; $6f40: $2a

jr_0fc_6f41:
	jr   c, jr_0fc_6ee3                              ; $6f41: $38 $a0

	dec  b                                           ; $6f43: $05
	ld   a, [hl+]                                    ; $6f44: $2a
	ld   [$0da0], sp                                 ; $6f45: $08 $a0 $0d
	ld   a, [hl+]                                    ; $6f48: $2a
	ld   [bc], a                                     ; $6f49: $02

jr_0fc_6f4a:
	and  b                                           ; $6f4a: $a0

jr_0fc_6f4b:
	dec  b                                           ; $6f4b: $05
	ld   a, [hl+]                                    ; $6f4c: $2a
	ld   [bc], a                                     ; $6f4d: $02
	rra                                              ; $6f4e: $1f
	inc  b                                           ; $6f4f: $04
	and  b                                           ; $6f50: $a0
	dec  c                                           ; $6f51: $0d
	ld   a, [hl+]                                    ; $6f52: $2a
	ld   [bc], a                                     ; $6f53: $02
	and  b                                           ; $6f54: $a0
	dec  b                                           ; $6f55: $05
	ld   a, [hl+]                                    ; $6f56: $2a
	ld   [bc], a                                     ; $6f57: $02
	rra                                              ; $6f58: $1f
	inc  b                                           ; $6f59: $04
	and  b                                           ; $6f5a: $a0
	dec  c                                           ; $6f5b: $0d
	ld   a, [hl+]                                    ; $6f5c: $2a
	inc  b                                           ; $6f5d: $04
	and  b                                           ; $6f5e: $a0
	dec  b                                           ; $6f5f: $05
	ld   a, [hl+]                                    ; $6f60: $2a
	ld   [bc], a                                     ; $6f61: $02
	rra                                              ; $6f62: $1f
	ld   a, [bc]                                     ; $6f63: $0a
	and  b                                           ; $6f64: $a0
	dec  c                                           ; $6f65: $0d
	ld   [hl-], a                                    ; $6f66: $32
	ld   [$1030], sp                                 ; $6f67: $08 $30 $10
	ld   a, [hl+]                                    ; $6f6a: $2a
	ld   [$f3b0], sp                                 ; $6f6b: $08 $b0 $f3
	rst  $38                                         ; $6f6e: $ff
	rst  $38                                         ; $6f6f: $ff
	rlca                                             ; $6f70: $07
	ld   b, b                                        ; $6f71: $40
	ld   [bc], a                                     ; $6f72: $02
	ld   [bc], a                                     ; $6f73: $02
	rra                                              ; $6f74: $1f
	ld   b, b                                        ; $6f75: $40
	db   $fd                                         ; $6f76: $fd
	di                                               ; $6f77: $f3
	and  b                                           ; $6f78: $a0
	ld   [bc], a                                     ; $6f79: $02
	and  e                                           ; $6f7a: $a3
	inc  h                                           ; $6f7b: $24
	and  d                                           ; $6f7c: $a2
	ld   b, b                                        ; $6f7d: $40
	and  b                                           ; $6f7e: $a0
	ld   [bc], a                                     ; $6f7f: $02
	ld   a, [de]                                     ; $6f80: $1a
	ld   [$0e32], sp                                 ; $6f81: $08 $32 $0e
	rra                                              ; $6f84: $1f
	ld   [bc], a                                     ; $6f85: $02
	ld   [hl-], a                                    ; $6f86: $32
	inc  b                                           ; $6f87: $04
	and  b                                           ; $6f88: $a0
	inc  b                                           ; $6f89: $04
	ld   [hl-], a                                    ; $6f8a: $32
	ld   [bc], a                                     ; $6f8b: $02
	rra                                              ; $6f8c: $1f
	ld   [bc], a                                     ; $6f8d: $02
	and  b                                           ; $6f8e: $a0
	ld   [bc], a                                     ; $6f8f: $02
	dec  d                                           ; $6f90: $15
	ld   [$0432], sp                                 ; $6f91: $08 $32 $04
	and  b                                           ; $6f94: $a0
	inc  b                                           ; $6f95: $04
	ld   [hl-], a                                    ; $6f96: $32
	ld   [bc], a                                     ; $6f97: $02
	rra                                              ; $6f98: $1f
	ld   [bc], a                                     ; $6f99: $02
	and  b                                           ; $6f9a: $a0
	ld   [bc], a                                     ; $6f9b: $02
	dec  d                                           ; $6f9c: $15
	ld   [$0432], sp                                 ; $6f9d: $08 $32 $04
	and  b                                           ; $6fa0: $a0
	inc  b                                           ; $6fa1: $04
	ld   [hl-], a                                    ; $6fa2: $32
	ld   [bc], a                                     ; $6fa3: $02
	rra                                              ; $6fa4: $1f
	ld   [bc], a                                     ; $6fa5: $02
	and  b                                           ; $6fa6: $a0
	ld   [bc], a                                     ; $6fa7: $02
	ld   a, [de]                                     ; $6fa8: $1a
	ld   [$0e32], sp                                 ; $6fa9: $08 $32 $0e
	rra                                              ; $6fac: $1f
	ld   [bc], a                                     ; $6fad: $02
	ld   [hl-], a                                    ; $6fae: $32
	inc  b                                           ; $6faf: $04
	and  b                                           ; $6fb0: $a0
	inc  b                                           ; $6fb1: $04
	ld   [hl-], a                                    ; $6fb2: $32
	ld   [bc], a                                     ; $6fb3: $02
	rra                                              ; $6fb4: $1f
	ld   [bc], a                                     ; $6fb5: $02
	and  b                                           ; $6fb6: $a0
	ld   [bc], a                                     ; $6fb7: $02
	rla                                              ; $6fb8: $17
	ld   [$0432], sp                                 ; $6fb9: $08 $32 $04
	and  b                                           ; $6fbc: $a0
	inc  b                                           ; $6fbd: $04
	ld   [hl-], a                                    ; $6fbe: $32
	ld   [bc], a                                     ; $6fbf: $02
	rra                                              ; $6fc0: $1f
	ld   [bc], a                                     ; $6fc1: $02
	and  b                                           ; $6fc2: $a0
	ld   [bc], a                                     ; $6fc3: $02
	ld   a, [de]                                     ; $6fc4: $1a
	ld   [$0432], sp                                 ; $6fc5: $08 $32 $04
	and  b                                           ; $6fc8: $a0
	inc  b                                           ; $6fc9: $04
	ld   [hl-], a                                    ; $6fca: $32
	ld   [bc], a                                     ; $6fcb: $02
	rra                                              ; $6fcc: $1f
	ld   [bc], a                                     ; $6fcd: $02
	and  b                                           ; $6fce: $a0
	ld   [bc], a                                     ; $6fcf: $02
	rla                                              ; $6fd0: $17
	ld   [$0e32], sp                                 ; $6fd1: $08 $32 $0e
	rra                                              ; $6fd4: $1f
	ld   [bc], a                                     ; $6fd5: $02
	ld   [hl-], a                                    ; $6fd6: $32
	inc  b                                           ; $6fd7: $04
	and  b                                           ; $6fd8: $a0
	inc  b                                           ; $6fd9: $04
	ld   [hl-], a                                    ; $6fda: $32
	ld   [bc], a                                     ; $6fdb: $02
	rra                                              ; $6fdc: $1f
	ld   [bc], a                                     ; $6fdd: $02
	and  b                                           ; $6fde: $a0
	ld   [bc], a                                     ; $6fdf: $02
	ld   [hl+], a                                    ; $6fe0: $22
	ld   [$0432], sp                                 ; $6fe1: $08 $32 $04
	and  b                                           ; $6fe4: $a0
	inc  b                                           ; $6fe5: $04
	ld   [hl-], a                                    ; $6fe6: $32
	ld   [bc], a                                     ; $6fe7: $02
	rra                                              ; $6fe8: $1f
	ld   [bc], a                                     ; $6fe9: $02
	and  b                                           ; $6fea: $a0
	ld   [bc], a                                     ; $6feb: $02
	ld   [hl+], a                                    ; $6fec: $22
	ld   [$0432], sp                                 ; $6fed: $08 $32 $04
	and  b                                           ; $6ff0: $a0
	inc  b                                           ; $6ff1: $04
	ld   [hl-], a                                    ; $6ff2: $32
	ld   [bc], a                                     ; $6ff3: $02
	rra                                              ; $6ff4: $1f
	ld   [bc], a                                     ; $6ff5: $02
	and  b                                           ; $6ff6: $a0
	ld   [bc], a                                     ; $6ff7: $02
	rla                                              ; $6ff8: $17
	ld   [$0e32], sp                                 ; $6ff9: $08 $32 $0e
	rra                                              ; $6ffc: $1f
	ld   [bc], a                                     ; $6ffd: $02
	ld   [hl-], a                                    ; $6ffe: $32
	inc  b                                           ; $6fff: $04
	and  b                                           ; $7000: $a0
	inc  b                                           ; $7001: $04
	ld   [hl-], a                                    ; $7002: $32
	ld   [bc], a                                     ; $7003: $02
	rra                                              ; $7004: $1f
	ld   [bc], a                                     ; $7005: $02
	and  b                                           ; $7006: $a0
	ld   [bc], a                                     ; $7007: $02
	daa                                              ; $7008: $27
	ld   [$0432], sp                                 ; $7009: $08 $32 $04
	and  b                                           ; $700c: $a0
	inc  b                                           ; $700d: $04
	ld   [hl-], a                                    ; $700e: $32
	ld   [bc], a                                     ; $700f: $02
	rra                                              ; $7010: $1f
	ld   [bc], a                                     ; $7011: $02
	and  b                                           ; $7012: $a0
	ld   [bc], a                                     ; $7013: $02
	dec  h                                           ; $7014: $25
	ld   [$0432], sp                                 ; $7015: $08 $32 $04
	and  b                                           ; $7018: $a0
	inc  b                                           ; $7019: $04
	ld   [hl-], a                                    ; $701a: $32
	ld   [bc], a                                     ; $701b: $02
	rra                                              ; $701c: $1f
	ld   [bc], a                                     ; $701d: $02
	and  b                                           ; $701e: $a0
	ld   [bc], a                                     ; $701f: $02
	inc  hl                                          ; $7020: $23
	ld   [$0e33], sp                                 ; $7021: $08 $33 $0e
	rra                                              ; $7024: $1f
	ld   [bc], a                                     ; $7025: $02
	inc  sp                                          ; $7026: $33
	inc  b                                           ; $7027: $04
	and  b                                           ; $7028: $a0
	inc  b                                           ; $7029: $04
	inc  sp                                          ; $702a: $33
	ld   [bc], a                                     ; $702b: $02
	rra                                              ; $702c: $1f
	ld   [bc], a                                     ; $702d: $02
	and  b                                           ; $702e: $a0
	ld   [bc], a                                     ; $702f: $02
	ld   a, [de]                                     ; $7030: $1a
	ld   [$0433], sp                                 ; $7031: $08 $33 $04
	and  b                                           ; $7034: $a0
	inc  b                                           ; $7035: $04
	inc  sp                                          ; $7036: $33
	ld   [bc], a                                     ; $7037: $02
	rra                                              ; $7038: $1f
	ld   [bc], a                                     ; $7039: $02
	and  b                                           ; $703a: $a0
	ld   [bc], a                                     ; $703b: $02
	ld   a, [de]                                     ; $703c: $1a
	ld   [$0433], sp                                 ; $703d: $08 $33 $04
	and  b                                           ; $7040: $a0
	inc  b                                           ; $7041: $04
	inc  sp                                          ; $7042: $33
	ld   [bc], a                                     ; $7043: $02
	rra                                              ; $7044: $1f
	ld   [bc], a                                     ; $7045: $02
	and  b                                           ; $7046: $a0
	ld   [bc], a                                     ; $7047: $02
	dec  d                                           ; $7048: $15
	ld   [$0e35], sp                                 ; $7049: $08 $35 $0e
	rra                                              ; $704c: $1f
	ld   [bc], a                                     ; $704d: $02
	dec  [hl]                                        ; $704e: $35
	inc  b                                           ; $704f: $04
	and  b                                           ; $7050: $a0
	inc  b                                           ; $7051: $04
	dec  [hl]                                        ; $7052: $35
	ld   [bc], a                                     ; $7053: $02
	rra                                              ; $7054: $1f
	ld   [bc], a                                     ; $7055: $02
	and  b                                           ; $7056: $a0
	ld   [bc], a                                     ; $7057: $02
	jr   nz, jr_0fc_7062                             ; $7058: $20 $08

	dec  [hl]                                        ; $705a: $35
	inc  b                                           ; $705b: $04
	and  b                                           ; $705c: $a0
	inc  b                                           ; $705d: $04
	dec  [hl]                                        ; $705e: $35
	ld   [bc], a                                     ; $705f: $02
	rra                                              ; $7060: $1f
	ld   [bc], a                                     ; $7061: $02

jr_0fc_7062:
	and  b                                           ; $7062: $a0
	ld   [bc], a                                     ; $7063: $02
	jr   nz, jr_0fc_706e                             ; $7064: $20 $08

	dec  [hl]                                        ; $7066: $35
	inc  b                                           ; $7067: $04
	and  b                                           ; $7068: $a0
	inc  b                                           ; $7069: $04
	dec  [hl]                                        ; $706a: $35
	ld   [bc], a                                     ; $706b: $02
	rra                                              ; $706c: $1f
	ld   [bc], a                                     ; $706d: $02

jr_0fc_706e:
	and  b                                           ; $706e: $a0
	ld   [bc], a                                     ; $706f: $02
	ld   a, [de]                                     ; $7070: $1a
	ld   [$0e32], sp                                 ; $7071: $08 $32 $0e
	rra                                              ; $7074: $1f
	ld   [bc], a                                     ; $7075: $02
	ld   [hl-], a                                    ; $7076: $32
	inc  b                                           ; $7077: $04
	and  b                                           ; $7078: $a0
	inc  b                                           ; $7079: $04
	ld   [hl-], a                                    ; $707a: $32
	ld   [bc], a                                     ; $707b: $02
	rra                                              ; $707c: $1f
	ld   [bc], a                                     ; $707d: $02
	and  b                                           ; $707e: $a0
	ld   [bc], a                                     ; $707f: $02
	dec  d                                           ; $7080: $15
	ld   [$0432], sp                                 ; $7081: $08 $32 $04
	and  b                                           ; $7084: $a0
	inc  b                                           ; $7085: $04
	ld   [hl-], a                                    ; $7086: $32
	ld   [bc], a                                     ; $7087: $02
	rra                                              ; $7088: $1f
	ld   [bc], a                                     ; $7089: $02
	and  b                                           ; $708a: $a0
	ld   [bc], a                                     ; $708b: $02
	dec  d                                           ; $708c: $15
	ld   [$0432], sp                                 ; $708d: $08 $32 $04
	and  b                                           ; $7090: $a0
	inc  b                                           ; $7091: $04
	ld   [hl-], a                                    ; $7092: $32
	ld   [bc], a                                     ; $7093: $02
	rra                                              ; $7094: $1f
	ld   [bc], a                                     ; $7095: $02
	and  b                                           ; $7096: $a0
	ld   [bc], a                                     ; $7097: $02
	ld   a, [de]                                     ; $7098: $1a
	ld   [$0e32], sp                                 ; $7099: $08 $32 $0e
	rra                                              ; $709c: $1f
	ld   [bc], a                                     ; $709d: $02
	ld   [hl-], a                                    ; $709e: $32
	inc  b                                           ; $709f: $04
	and  b                                           ; $70a0: $a0
	inc  b                                           ; $70a1: $04
	ld   [hl-], a                                    ; $70a2: $32
	ld   [bc], a                                     ; $70a3: $02
	rra                                              ; $70a4: $1f
	ld   [bc], a                                     ; $70a5: $02
	and  b                                           ; $70a6: $a0
	ld   [bc], a                                     ; $70a7: $02
	ld   [hl+], a                                    ; $70a8: $22
	ld   [$0432], sp                                 ; $70a9: $08 $32 $04
	and  b                                           ; $70ac: $a0
	inc  b                                           ; $70ad: $04
	ld   [hl-], a                                    ; $70ae: $32
	ld   [bc], a                                     ; $70af: $02
	rra                                              ; $70b0: $1f
	ld   [bc], a                                     ; $70b1: $02
	and  b                                           ; $70b2: $a0
	ld   [bc], a                                     ; $70b3: $02
	dec  h                                           ; $70b4: $25
	ld   [$0432], sp                                 ; $70b5: $08 $32 $04
	and  b                                           ; $70b8: $a0
	inc  b                                           ; $70b9: $04
	ld   [hl-], a                                    ; $70ba: $32
	ld   [bc], a                                     ; $70bb: $02
	rra                                              ; $70bc: $1f
	ld   [bc], a                                     ; $70bd: $02
	and  b                                           ; $70be: $a0
	ld   [bc], a                                     ; $70bf: $02
	inc  hl                                          ; $70c0: $23
	ld   [$0e33], sp                                 ; $70c1: $08 $33 $0e
	rra                                              ; $70c4: $1f
	ld   [bc], a                                     ; $70c5: $02
	inc  sp                                          ; $70c6: $33
	inc  b                                           ; $70c7: $04
	and  b                                           ; $70c8: $a0
	inc  b                                           ; $70c9: $04
	inc  sp                                          ; $70ca: $33
	ld   [bc], a                                     ; $70cb: $02
	rra                                              ; $70cc: $1f
	ld   [bc], a                                     ; $70cd: $02
	and  b                                           ; $70ce: $a0
	ld   [bc], a                                     ; $70cf: $02
	ld   a, [de]                                     ; $70d0: $1a
	ld   [$0433], sp                                 ; $70d1: $08 $33 $04
	and  b                                           ; $70d4: $a0
	inc  b                                           ; $70d5: $04
	inc  sp                                          ; $70d6: $33
	ld   [bc], a                                     ; $70d7: $02
	rra                                              ; $70d8: $1f
	ld   [bc], a                                     ; $70d9: $02
	and  b                                           ; $70da: $a0
	ld   [bc], a                                     ; $70db: $02
	ld   a, [de]                                     ; $70dc: $1a
	ld   [$0433], sp                                 ; $70dd: $08 $33 $04
	and  b                                           ; $70e0: $a0
	inc  b                                           ; $70e1: $04
	inc  sp                                          ; $70e2: $33
	ld   [bc], a                                     ; $70e3: $02
	rra                                              ; $70e4: $1f
	ld   [bc], a                                     ; $70e5: $02
	and  b                                           ; $70e6: $a0
	ld   [bc], a                                     ; $70e7: $02
	inc  hl                                          ; $70e8: $23
	ld   [$0e33], sp                                 ; $70e9: $08 $33 $0e
	rra                                              ; $70ec: $1f
	ld   [bc], a                                     ; $70ed: $02
	inc  sp                                          ; $70ee: $33
	inc  b                                           ; $70ef: $04
	and  b                                           ; $70f0: $a0
	inc  b                                           ; $70f1: $04
	inc  sp                                          ; $70f2: $33
	ld   [bc], a                                     ; $70f3: $02
	rra                                              ; $70f4: $1f
	ld   [bc], a                                     ; $70f5: $02
	and  b                                           ; $70f6: $a0
	ld   [bc], a                                     ; $70f7: $02
	ld   a, [de]                                     ; $70f8: $1a
	ld   [$0433], sp                                 ; $70f9: $08 $33 $04
	and  b                                           ; $70fc: $a0
	inc  b                                           ; $70fd: $04
	inc  sp                                          ; $70fe: $33
	ld   [bc], a                                     ; $70ff: $02
	rra                                              ; $7100: $1f
	ld   [bc], a                                     ; $7101: $02
	and  b                                           ; $7102: $a0
	ld   [bc], a                                     ; $7103: $02
	ld   a, [de]                                     ; $7104: $1a
	ld   [$0433], sp                                 ; $7105: $08 $33 $04
	and  b                                           ; $7108: $a0
	inc  b                                           ; $7109: $04
	inc  sp                                          ; $710a: $33
	ld   [bc], a                                     ; $710b: $02
	rra                                              ; $710c: $1f
	ld   [bc], a                                     ; $710d: $02
	and  b                                           ; $710e: $a0
	ld   [bc], a                                     ; $710f: $02
	ld   [hl+], a                                    ; $7110: $22
	ld   [$0e32], sp                                 ; $7111: $08 $32 $0e
	rra                                              ; $7114: $1f
	ld   [bc], a                                     ; $7115: $02
	ld   [hl-], a                                    ; $7116: $32
	inc  b                                           ; $7117: $04
	and  b                                           ; $7118: $a0
	inc  b                                           ; $7119: $04
	ld   [hl-], a                                    ; $711a: $32
	ld   [bc], a                                     ; $711b: $02
	rra                                              ; $711c: $1f
	ld   [bc], a                                     ; $711d: $02
	and  b                                           ; $711e: $a0
	ld   [bc], a                                     ; $711f: $02
	add  hl, de                                      ; $7120: $19
	ld   [$0432], sp                                 ; $7121: $08 $32 $04
	and  b                                           ; $7124: $a0
	inc  b                                           ; $7125: $04
	ld   [hl-], a                                    ; $7126: $32
	ld   [bc], a                                     ; $7127: $02
	rra                                              ; $7128: $1f
	ld   [bc], a                                     ; $7129: $02
	and  b                                           ; $712a: $a0
	ld   [bc], a                                     ; $712b: $02
	ld   [hl+], a                                    ; $712c: $22
	ld   [$0432], sp                                 ; $712d: $08 $32 $04
	and  b                                           ; $7130: $a0
	inc  b                                           ; $7131: $04
	ld   [hl-], a                                    ; $7132: $32
	ld   [bc], a                                     ; $7133: $02
	rra                                              ; $7134: $1f
	ld   [bc], a                                     ; $7135: $02
	and  b                                           ; $7136: $a0
	ld   [bc], a                                     ; $7137: $02
	rla                                              ; $7138: $17
	ld   [$0e32], sp                                 ; $7139: $08 $32 $0e
	rra                                              ; $713c: $1f
	ld   [bc], a                                     ; $713d: $02
	ld   [hl-], a                                    ; $713e: $32
	inc  b                                           ; $713f: $04
	and  b                                           ; $7140: $a0
	inc  b                                           ; $7141: $04
	ld   [hl-], a                                    ; $7142: $32
	ld   [bc], a                                     ; $7143: $02
	rra                                              ; $7144: $1f
	ld   [bc], a                                     ; $7145: $02
	and  b                                           ; $7146: $a0
	ld   [bc], a                                     ; $7147: $02
	ld   [hl+], a                                    ; $7148: $22
	ld   [$0432], sp                                 ; $7149: $08 $32 $04
	and  b                                           ; $714c: $a0
	inc  b                                           ; $714d: $04
	ld   [hl-], a                                    ; $714e: $32
	ld   [bc], a                                     ; $714f: $02
	rra                                              ; $7150: $1f
	ld   [bc], a                                     ; $7151: $02
	and  b                                           ; $7152: $a0
	ld   [bc], a                                     ; $7153: $02
	daa                                              ; $7154: $27
	ld   [$0432], sp                                 ; $7155: $08 $32 $04
	and  b                                           ; $7158: $a0
	inc  b                                           ; $7159: $04
	ld   [hl-], a                                    ; $715a: $32
	ld   [bc], a                                     ; $715b: $02
	rra                                              ; $715c: $1f
	ld   [bc], a                                     ; $715d: $02
	and  b                                           ; $715e: $a0
	ld   [bc], a                                     ; $715f: $02
	jr   nz, jr_0fc_716a                             ; $7160: $20 $08

	inc  sp                                          ; $7162: $33
	ld   c, $1f                                      ; $7163: $0e $1f
	ld   [bc], a                                     ; $7165: $02
	inc  sp                                          ; $7166: $33
	inc  b                                           ; $7167: $04
	and  b                                           ; $7168: $a0
	inc  b                                           ; $7169: $04

jr_0fc_716a:
	inc  sp                                          ; $716a: $33
	ld   [bc], a                                     ; $716b: $02
	rra                                              ; $716c: $1f
	ld   [bc], a                                     ; $716d: $02
	and  b                                           ; $716e: $a0
	ld   [bc], a                                     ; $716f: $02
	jr   nz, jr_0fc_717a                             ; $7170: $20 $08

	inc  sp                                          ; $7172: $33
	inc  b                                           ; $7173: $04
	and  b                                           ; $7174: $a0
	inc  b                                           ; $7175: $04
	inc  sp                                          ; $7176: $33
	ld   [bc], a                                     ; $7177: $02
	rra                                              ; $7178: $1f
	ld   [bc], a                                     ; $7179: $02

jr_0fc_717a:
	and  b                                           ; $717a: $a0
	ld   [bc], a                                     ; $717b: $02
	rla                                              ; $717c: $17
	ld   [$0433], sp                                 ; $717d: $08 $33 $04
	and  b                                           ; $7180: $a0
	inc  b                                           ; $7181: $04
	inc  sp                                          ; $7182: $33
	ld   [bc], a                                     ; $7183: $02
	rra                                              ; $7184: $1f
	ld   [bc], a                                     ; $7185: $02
	and  b                                           ; $7186: $a0
	ld   [bc], a                                     ; $7187: $02
	jr   nz, jr_0fc_7192                             ; $7188: $20 $08

	inc  [hl]                                        ; $718a: $34
	ld   c, $1f                                      ; $718b: $0e $1f
	ld   [bc], a                                     ; $718d: $02
	inc  [hl]                                        ; $718e: $34
	inc  b                                           ; $718f: $04
	and  b                                           ; $7190: $a0
	inc  b                                           ; $7191: $04

jr_0fc_7192:
	inc  [hl]                                        ; $7192: $34
	ld   [bc], a                                     ; $7193: $02
	rra                                              ; $7194: $1f
	ld   [bc], a                                     ; $7195: $02
	and  b                                           ; $7196: $a0
	ld   [bc], a                                     ; $7197: $02
	rla                                              ; $7198: $17
	ld   [$0434], sp                                 ; $7199: $08 $34 $04
	and  b                                           ; $719c: $a0
	inc  b                                           ; $719d: $04
	inc  [hl]                                        ; $719e: $34
	ld   [bc], a                                     ; $719f: $02
	rra                                              ; $71a0: $1f
	ld   [bc], a                                     ; $71a1: $02
	and  b                                           ; $71a2: $a0
	ld   [bc], a                                     ; $71a3: $02
	rla                                              ; $71a4: $17
	ld   [$0434], sp                                 ; $71a5: $08 $34 $04
	and  b                                           ; $71a8: $a0
	inc  b                                           ; $71a9: $04
	inc  [hl]                                        ; $71aa: $34
	ld   [bc], a                                     ; $71ab: $02
	rra                                              ; $71ac: $1f
	ld   [bc], a                                     ; $71ad: $02
	and  b                                           ; $71ae: $a0
	ld   [bc], a                                     ; $71af: $02
	dec  d                                           ; $71b0: $15
	ld   [$0e30], sp                                 ; $71b1: $08 $30 $0e
	rra                                              ; $71b4: $1f
	ld   [bc], a                                     ; $71b5: $02
	jr   nc, jr_0fc_71bc                             ; $71b6: $30 $04

	and  b                                           ; $71b8: $a0
	inc  b                                           ; $71b9: $04
	jr   nc, jr_0fc_71be                             ; $71ba: $30 $02

jr_0fc_71bc:
	rra                                              ; $71bc: $1f
	ld   [bc], a                                     ; $71bd: $02

jr_0fc_71be:
	and  b                                           ; $71be: $a0
	ld   [bc], a                                     ; $71bf: $02
	add  hl, de                                      ; $71c0: $19
	ld   [$0430], sp                                 ; $71c1: $08 $30 $04
	and  b                                           ; $71c4: $a0
	inc  b                                           ; $71c5: $04
	jr   nc, jr_0fc_71ca                             ; $71c6: $30 $02

	rra                                              ; $71c8: $1f
	ld   [bc], a                                     ; $71c9: $02

jr_0fc_71ca:
	and  b                                           ; $71ca: $a0
	ld   [bc], a                                     ; $71cb: $02
	jr   nz, jr_0fc_71d6                             ; $71cc: $20 $08

	jr   nc, jr_0fc_71d4                             ; $71ce: $30 $04

	and  b                                           ; $71d0: $a0
	inc  b                                           ; $71d1: $04
	jr   nc, jr_0fc_71d6                             ; $71d2: $30 $02

jr_0fc_71d4:
	rra                                              ; $71d4: $1f
	ld   [bc], a                                     ; $71d5: $02

jr_0fc_71d6:
	and  b                                           ; $71d6: $a0
	ld   [bc], a                                     ; $71d7: $02
	dec  h                                           ; $71d8: $25
	ld   [bc], a                                     ; $71d9: $02
	rra                                              ; $71da: $1f
	ld   b, $15                                      ; $71db: $06 $15
	ld   [bc], a                                     ; $71dd: $02
	rra                                              ; $71de: $1f
	ld   b, $15                                      ; $71df: $06 $15
	ld   b, $a0                                      ; $71e1: $06 $a0
	inc  b                                           ; $71e3: $04
	dec  d                                           ; $71e4: $15
	inc  b                                           ; $71e5: $04
	rra                                              ; $71e6: $1f
	ld   d, $a0                                      ; $71e7: $16 $a0
	ld   [bc], a                                     ; $71e9: $02
	dec  d                                           ; $71ea: $15
	ld   [bc], a                                     ; $71eb: $02
	rra                                              ; $71ec: $1f
	ld   b, $17                                      ; $71ed: $06 $17
	ld   [bc], a                                     ; $71ef: $02
	rra                                              ; $71f0: $1f
	ld   b, $1a                                      ; $71f1: $06 $1a
	ld   [$0e32], sp                                 ; $71f3: $08 $32 $0e
	rra                                              ; $71f6: $1f
	ld   [bc], a                                     ; $71f7: $02
	ld   [hl-], a                                    ; $71f8: $32
	inc  b                                           ; $71f9: $04
	and  b                                           ; $71fa: $a0
	inc  b                                           ; $71fb: $04
	ld   [hl-], a                                    ; $71fc: $32
	ld   [bc], a                                     ; $71fd: $02
	rra                                              ; $71fe: $1f
	ld   [bc], a                                     ; $71ff: $02
	and  b                                           ; $7200: $a0
	ld   [bc], a                                     ; $7201: $02
	dec  d                                           ; $7202: $15
	ld   [$0435], sp                                 ; $7203: $08 $35 $04
	and  b                                           ; $7206: $a0
	inc  b                                           ; $7207: $04
	dec  [hl]                                        ; $7208: $35
	inc  b                                           ; $7209: $04
	and  b                                           ; $720a: $a0
	ld   [bc], a                                     ; $720b: $02
	dec  d                                           ; $720c: $15
	ld   [$0435], sp                                 ; $720d: $08 $35 $04
	and  b                                           ; $7210: $a0
	inc  b                                           ; $7211: $04
	dec  [hl]                                        ; $7212: $35
	inc  b                                           ; $7213: $04
	and  b                                           ; $7214: $a0
	ld   [bc], a                                     ; $7215: $02
	ld   a, [de]                                     ; $7216: $1a
	ld   [$0e35], sp                                 ; $7217: $08 $35 $0e
	rra                                              ; $721a: $1f
	ld   [bc], a                                     ; $721b: $02
	dec  [hl]                                        ; $721c: $35
	inc  b                                           ; $721d: $04
	and  b                                           ; $721e: $a0
	inc  b                                           ; $721f: $04
	dec  [hl]                                        ; $7220: $35
	inc  b                                           ; $7221: $04
	and  b                                           ; $7222: $a0
	ld   [bc], a                                     ; $7223: $02
	rla                                              ; $7224: $17
	ld   [$0432], sp                                 ; $7225: $08 $32 $04
	and  b                                           ; $7228: $a0
	inc  b                                           ; $7229: $04
	ld   [hl-], a                                    ; $722a: $32
	ld   [bc], a                                     ; $722b: $02
	rra                                              ; $722c: $1f
	ld   [bc], a                                     ; $722d: $02
	and  b                                           ; $722e: $a0
	ld   [bc], a                                     ; $722f: $02
	ld   a, [de]                                     ; $7230: $1a
	ld   [$0432], sp                                 ; $7231: $08 $32 $04
	and  b                                           ; $7234: $a0
	inc  b                                           ; $7235: $04
	ld   [hl-], a                                    ; $7236: $32
	ld   [bc], a                                     ; $7237: $02
	rra                                              ; $7238: $1f
	ld   [bc], a                                     ; $7239: $02
	and  b                                           ; $723a: $a0
	ld   [bc], a                                     ; $723b: $02
	rla                                              ; $723c: $17
	ld   [$0e32], sp                                 ; $723d: $08 $32 $0e
	rra                                              ; $7240: $1f
	ld   [bc], a                                     ; $7241: $02
	scf                                              ; $7242: $37
	inc  b                                           ; $7243: $04
	and  b                                           ; $7244: $a0
	inc  b                                           ; $7245: $04
	scf                                              ; $7246: $37
	inc  b                                           ; $7247: $04
	and  b                                           ; $7248: $a0
	ld   [bc], a                                     ; $7249: $02
	ld   [hl+], a                                    ; $724a: $22
	ld   [$0437], sp                                 ; $724b: $08 $37 $04
	and  b                                           ; $724e: $a0
	inc  b                                           ; $724f: $04
	scf                                              ; $7250: $37
	inc  b                                           ; $7251: $04
	and  b                                           ; $7252: $a0
	ld   [bc], a                                     ; $7253: $02
	ld   [hl+], a                                    ; $7254: $22
	ld   [$0437], sp                                 ; $7255: $08 $37 $04
	and  b                                           ; $7258: $a0
	inc  b                                           ; $7259: $04
	scf                                              ; $725a: $37
	inc  b                                           ; $725b: $04
	and  b                                           ; $725c: $a0
	ld   [bc], a                                     ; $725d: $02
	rla                                              ; $725e: $17
	ld   [$0e37], sp                                 ; $725f: $08 $37 $0e
	rra                                              ; $7262: $1f
	ld   [bc], a                                     ; $7263: $02
	scf                                              ; $7264: $37
	inc  b                                           ; $7265: $04
	and  b                                           ; $7266: $a0
	inc  b                                           ; $7267: $04
	scf                                              ; $7268: $37
	inc  b                                           ; $7269: $04
	and  b                                           ; $726a: $a0
	ld   [bc], a                                     ; $726b: $02
	daa                                              ; $726c: $27
	ld   [$0432], sp                                 ; $726d: $08 $32 $04
	and  b                                           ; $7270: $a0
	inc  b                                           ; $7271: $04
	ld   [hl-], a                                    ; $7272: $32
	ld   [bc], a                                     ; $7273: $02
	rra                                              ; $7274: $1f
	ld   [bc], a                                     ; $7275: $02
	and  b                                           ; $7276: $a0
	ld   [bc], a                                     ; $7277: $02
	dec  h                                           ; $7278: $25
	ld   [$0432], sp                                 ; $7279: $08 $32 $04
	and  b                                           ; $727c: $a0
	inc  b                                           ; $727d: $04
	ld   [hl-], a                                    ; $727e: $32
	ld   [bc], a                                     ; $727f: $02
	rra                                              ; $7280: $1f
	ld   [bc], a                                     ; $7281: $02
	and  b                                           ; $7282: $a0
	ld   [bc], a                                     ; $7283: $02
	inc  hl                                          ; $7284: $23
	ld   [$0e33], sp                                 ; $7285: $08 $33 $0e
	rra                                              ; $7288: $1f
	ld   [bc], a                                     ; $7289: $02
	inc  sp                                          ; $728a: $33
	inc  b                                           ; $728b: $04
	and  b                                           ; $728c: $a0
	inc  b                                           ; $728d: $04
	inc  sp                                          ; $728e: $33
	ld   [bc], a                                     ; $728f: $02
	rra                                              ; $7290: $1f
	ld   [bc], a                                     ; $7291: $02
	and  b                                           ; $7292: $a0
	ld   [bc], a                                     ; $7293: $02
	ld   a, [de]                                     ; $7294: $1a
	ld   [$0433], sp                                 ; $7295: $08 $33 $04
	and  b                                           ; $7298: $a0
	inc  b                                           ; $7299: $04
	inc  sp                                          ; $729a: $33
	ld   [bc], a                                     ; $729b: $02
	rra                                              ; $729c: $1f
	ld   [bc], a                                     ; $729d: $02
	and  b                                           ; $729e: $a0
	ld   [bc], a                                     ; $729f: $02
	ld   a, [de]                                     ; $72a0: $1a
	ld   [$0433], sp                                 ; $72a1: $08 $33 $04
	and  b                                           ; $72a4: $a0
	inc  b                                           ; $72a5: $04
	inc  sp                                          ; $72a6: $33
	ld   [bc], a                                     ; $72a7: $02
	rra                                              ; $72a8: $1f
	ld   [bc], a                                     ; $72a9: $02
	and  b                                           ; $72aa: $a0
	ld   [bc], a                                     ; $72ab: $02
	dec  d                                           ; $72ac: $15
	ld   [$0e39], sp                                 ; $72ad: $08 $39 $0e
	rra                                              ; $72b0: $1f
	ld   [bc], a                                     ; $72b1: $02
	add  hl, sp                                      ; $72b2: $39
	inc  b                                           ; $72b3: $04
	and  b                                           ; $72b4: $a0
	inc  b                                           ; $72b5: $04
	add  hl, sp                                      ; $72b6: $39
	inc  b                                           ; $72b7: $04
	and  b                                           ; $72b8: $a0
	ld   [bc], a                                     ; $72b9: $02
	jr   nz, jr_0fc_72c4                             ; $72ba: $20 $08

	add  hl, sp                                      ; $72bc: $39
	inc  b                                           ; $72bd: $04
	and  b                                           ; $72be: $a0
	inc  b                                           ; $72bf: $04
	add  hl, sp                                      ; $72c0: $39
	inc  b                                           ; $72c1: $04
	and  b                                           ; $72c2: $a0
	ld   [bc], a                                     ; $72c3: $02

jr_0fc_72c4:
	jr   nz, jr_0fc_72ce                             ; $72c4: $20 $08

	add  hl, sp                                      ; $72c6: $39
	inc  b                                           ; $72c7: $04
	and  b                                           ; $72c8: $a0
	inc  b                                           ; $72c9: $04
	add  hl, sp                                      ; $72ca: $39
	inc  b                                           ; $72cb: $04
	and  b                                           ; $72cc: $a0
	ld   [bc], a                                     ; $72cd: $02

jr_0fc_72ce:
	ld   a, [de]                                     ; $72ce: $1a
	ld   [$0e2a], sp                                 ; $72cf: $08 $2a $0e
	rra                                              ; $72d2: $1f
	ld   [bc], a                                     ; $72d3: $02
	ld   a, [hl+]                                    ; $72d4: $2a
	inc  b                                           ; $72d5: $04
	and  b                                           ; $72d6: $a0
	inc  b                                           ; $72d7: $04
	ld   a, [hl+]                                    ; $72d8: $2a
	ld   [bc], a                                     ; $72d9: $02
	rra                                              ; $72da: $1f
	ld   [bc], a                                     ; $72db: $02
	and  b                                           ; $72dc: $a0
	ld   [bc], a                                     ; $72dd: $02
	dec  d                                           ; $72de: $15
	ld   [$042a], sp                                 ; $72df: $08 $2a $04
	and  b                                           ; $72e2: $a0
	inc  b                                           ; $72e3: $04
	ld   a, [hl+]                                    ; $72e4: $2a
	ld   [bc], a                                     ; $72e5: $02
	rra                                              ; $72e6: $1f
	ld   [bc], a                                     ; $72e7: $02
	and  b                                           ; $72e8: $a0
	ld   [bc], a                                     ; $72e9: $02
	dec  d                                           ; $72ea: $15
	ld   [$042a], sp                                 ; $72eb: $08 $2a $04
	and  b                                           ; $72ee: $a0
	inc  b                                           ; $72ef: $04
	ld   a, [hl+]                                    ; $72f0: $2a
	ld   [bc], a                                     ; $72f1: $02
	rra                                              ; $72f2: $1f
	ld   [bc], a                                     ; $72f3: $02
	and  b                                           ; $72f4: $a0
	ld   [bc], a                                     ; $72f5: $02
	ld   a, [de]                                     ; $72f6: $1a
	ld   [$0e28], sp                                 ; $72f7: $08 $28 $0e
	rra                                              ; $72fa: $1f
	ld   [bc], a                                     ; $72fb: $02
	jr   z, jr_0fc_7302                              ; $72fc: $28 $04

	and  b                                           ; $72fe: $a0
	inc  b                                           ; $72ff: $04
	jr   z, jr_0fc_7304                              ; $7300: $28 $02

jr_0fc_7302:
	rra                                              ; $7302: $1f
	ld   [bc], a                                     ; $7303: $02

jr_0fc_7304:
	and  b                                           ; $7304: $a0
	ld   [bc], a                                     ; $7305: $02
	ld   [hl+], a                                    ; $7306: $22
	ld   [$042a], sp                                 ; $7307: $08 $2a $04
	and  b                                           ; $730a: $a0
	inc  b                                           ; $730b: $04
	ld   a, [hl+]                                    ; $730c: $2a
	ld   [bc], a                                     ; $730d: $02
	rra                                              ; $730e: $1f
	ld   [bc], a                                     ; $730f: $02
	and  b                                           ; $7310: $a0
	ld   [bc], a                                     ; $7311: $02
	dec  h                                           ; $7312: $25
	ld   [$042a], sp                                 ; $7313: $08 $2a $04
	and  b                                           ; $7316: $a0
	inc  b                                           ; $7317: $04
	ld   a, [hl+]                                    ; $7318: $2a
	ld   [bc], a                                     ; $7319: $02
	rra                                              ; $731a: $1f
	ld   [bc], a                                     ; $731b: $02
	and  b                                           ; $731c: $a0
	ld   [bc], a                                     ; $731d: $02
	inc  hl                                          ; $731e: $23
	ld   [$0e33], sp                                 ; $731f: $08 $33 $0e
	rra                                              ; $7322: $1f
	ld   [bc], a                                     ; $7323: $02
	inc  sp                                          ; $7324: $33
	inc  b                                           ; $7325: $04
	and  b                                           ; $7326: $a0
	inc  b                                           ; $7327: $04
	inc  sp                                          ; $7328: $33
	ld   [bc], a                                     ; $7329: $02
	rra                                              ; $732a: $1f
	ld   [bc], a                                     ; $732b: $02
	and  b                                           ; $732c: $a0
	ld   [bc], a                                     ; $732d: $02
	ld   a, [de]                                     ; $732e: $1a
	ld   [$0433], sp                                 ; $732f: $08 $33 $04
	and  b                                           ; $7332: $a0
	inc  b                                           ; $7333: $04
	inc  sp                                          ; $7334: $33
	ld   [bc], a                                     ; $7335: $02
	rra                                              ; $7336: $1f
	ld   [bc], a                                     ; $7337: $02
	and  b                                           ; $7338: $a0
	ld   [bc], a                                     ; $7339: $02
	ld   a, [de]                                     ; $733a: $1a
	ld   [$0433], sp                                 ; $733b: $08 $33 $04
	and  b                                           ; $733e: $a0
	inc  b                                           ; $733f: $04
	inc  sp                                          ; $7340: $33
	ld   [bc], a                                     ; $7341: $02
	rra                                              ; $7342: $1f
	ld   [bc], a                                     ; $7343: $02
	and  b                                           ; $7344: $a0
	ld   [bc], a                                     ; $7345: $02
	inc  hl                                          ; $7346: $23
	ld   [$0e33], sp                                 ; $7347: $08 $33 $0e
	rra                                              ; $734a: $1f
	ld   [bc], a                                     ; $734b: $02
	inc  sp                                          ; $734c: $33
	inc  b                                           ; $734d: $04
	and  b                                           ; $734e: $a0
	inc  b                                           ; $734f: $04
	inc  sp                                          ; $7350: $33
	ld   [bc], a                                     ; $7351: $02
	rra                                              ; $7352: $1f
	ld   [bc], a                                     ; $7353: $02
	and  b                                           ; $7354: $a0
	ld   [bc], a                                     ; $7355: $02
	ld   a, [de]                                     ; $7356: $1a
	ld   [$0433], sp                                 ; $7357: $08 $33 $04
	and  b                                           ; $735a: $a0
	inc  b                                           ; $735b: $04
	inc  sp                                          ; $735c: $33
	ld   [bc], a                                     ; $735d: $02
	rra                                              ; $735e: $1f
	ld   [bc], a                                     ; $735f: $02
	and  b                                           ; $7360: $a0
	ld   [bc], a                                     ; $7361: $02
	ld   a, [de]                                     ; $7362: $1a
	ld   [$0433], sp                                 ; $7363: $08 $33 $04
	and  b                                           ; $7366: $a0
	inc  b                                           ; $7367: $04
	inc  sp                                          ; $7368: $33
	ld   [bc], a                                     ; $7369: $02
	rra                                              ; $736a: $1f
	ld   [bc], a                                     ; $736b: $02
	and  b                                           ; $736c: $a0
	ld   [bc], a                                     ; $736d: $02
	ld   [hl+], a                                    ; $736e: $22
	ld   [$0e32], sp                                 ; $736f: $08 $32 $0e
	rra                                              ; $7372: $1f
	ld   [bc], a                                     ; $7373: $02
	ld   [hl-], a                                    ; $7374: $32
	inc  b                                           ; $7375: $04
	and  b                                           ; $7376: $a0
	inc  b                                           ; $7377: $04
	ld   [hl-], a                                    ; $7378: $32
	ld   [bc], a                                     ; $7379: $02
	rra                                              ; $737a: $1f
	ld   [bc], a                                     ; $737b: $02
	and  b                                           ; $737c: $a0
	ld   [bc], a                                     ; $737d: $02
	add  hl, de                                      ; $737e: $19
	ld   [$0432], sp                                 ; $737f: $08 $32 $04
	and  b                                           ; $7382: $a0
	inc  b                                           ; $7383: $04
	ld   [hl-], a                                    ; $7384: $32
	ld   [bc], a                                     ; $7385: $02
	rra                                              ; $7386: $1f
	ld   [bc], a                                     ; $7387: $02
	and  b                                           ; $7388: $a0
	ld   [bc], a                                     ; $7389: $02
	ld   [hl+], a                                    ; $738a: $22
	ld   [$0432], sp                                 ; $738b: $08 $32 $04
	and  b                                           ; $738e: $a0
	inc  b                                           ; $738f: $04
	ld   [hl-], a                                    ; $7390: $32
	ld   [bc], a                                     ; $7391: $02
	rra                                              ; $7392: $1f
	ld   [bc], a                                     ; $7393: $02
	and  b                                           ; $7394: $a0
	ld   [bc], a                                     ; $7395: $02
	rla                                              ; $7396: $17
	ld   [$0e32], sp                                 ; $7397: $08 $32 $0e
	rra                                              ; $739a: $1f
	ld   [bc], a                                     ; $739b: $02
	ld   [hl-], a                                    ; $739c: $32
	inc  b                                           ; $739d: $04
	and  b                                           ; $739e: $a0
	inc  b                                           ; $739f: $04
	ld   [hl-], a                                    ; $73a0: $32
	ld   [bc], a                                     ; $73a1: $02
	rra                                              ; $73a2: $1f
	ld   [bc], a                                     ; $73a3: $02
	and  b                                           ; $73a4: $a0
	ld   [bc], a                                     ; $73a5: $02
	ld   [hl+], a                                    ; $73a6: $22
	ld   [$0432], sp                                 ; $73a7: $08 $32 $04
	and  b                                           ; $73aa: $a0
	inc  b                                           ; $73ab: $04
	ld   [hl-], a                                    ; $73ac: $32
	ld   [bc], a                                     ; $73ad: $02
	rra                                              ; $73ae: $1f
	ld   [bc], a                                     ; $73af: $02
	and  b                                           ; $73b0: $a0
	ld   [bc], a                                     ; $73b1: $02
	daa                                              ; $73b2: $27
	ld   [$0432], sp                                 ; $73b3: $08 $32 $04
	and  b                                           ; $73b6: $a0
	inc  b                                           ; $73b7: $04
	ld   [hl-], a                                    ; $73b8: $32
	ld   [bc], a                                     ; $73b9: $02
	rra                                              ; $73ba: $1f
	ld   [bc], a                                     ; $73bb: $02
	and  b                                           ; $73bc: $a0
	ld   [bc], a                                     ; $73bd: $02
	jr   nz, jr_0fc_73c8                             ; $73be: $20 $08

	inc  sp                                          ; $73c0: $33
	ld   c, $1f                                      ; $73c1: $0e $1f
	ld   [bc], a                                     ; $73c3: $02
	inc  sp                                          ; $73c4: $33
	inc  b                                           ; $73c5: $04
	and  b                                           ; $73c6: $a0
	inc  b                                           ; $73c7: $04

jr_0fc_73c8:
	inc  sp                                          ; $73c8: $33
	ld   [bc], a                                     ; $73c9: $02
	rra                                              ; $73ca: $1f
	ld   [bc], a                                     ; $73cb: $02
	and  b                                           ; $73cc: $a0
	ld   [bc], a                                     ; $73cd: $02
	rla                                              ; $73ce: $17
	ld   [$0433], sp                                 ; $73cf: $08 $33 $04
	and  b                                           ; $73d2: $a0
	inc  b                                           ; $73d3: $04
	inc  sp                                          ; $73d4: $33
	ld   [bc], a                                     ; $73d5: $02
	rra                                              ; $73d6: $1f
	ld   [bc], a                                     ; $73d7: $02
	and  b                                           ; $73d8: $a0
	ld   [bc], a                                     ; $73d9: $02
	rla                                              ; $73da: $17
	ld   [$0433], sp                                 ; $73db: $08 $33 $04
	and  b                                           ; $73de: $a0
	inc  b                                           ; $73df: $04
	inc  sp                                          ; $73e0: $33
	ld   [bc], a                                     ; $73e1: $02
	rra                                              ; $73e2: $1f
	ld   [bc], a                                     ; $73e3: $02
	and  b                                           ; $73e4: $a0
	ld   [bc], a                                     ; $73e5: $02
	dec  h                                           ; $73e6: $25
	ld   [$0e30], sp                                 ; $73e7: $08 $30 $0e
	rra                                              ; $73ea: $1f
	ld   [bc], a                                     ; $73eb: $02
	jr   nc, jr_0fc_73f2                             ; $73ec: $30 $04

	and  b                                           ; $73ee: $a0
	inc  b                                           ; $73ef: $04
	jr   nc, jr_0fc_73f4                             ; $73f0: $30 $02

jr_0fc_73f2:
	rra                                              ; $73f2: $1f
	ld   [bc], a                                     ; $73f3: $02

jr_0fc_73f4:
	and  b                                           ; $73f4: $a0
	ld   [bc], a                                     ; $73f5: $02
	dec  d                                           ; $73f6: $15
	ld   [$0433], sp                                 ; $73f7: $08 $33 $04
	and  b                                           ; $73fa: $a0
	inc  b                                           ; $73fb: $04
	inc  sp                                          ; $73fc: $33
	ld   [bc], a                                     ; $73fd: $02
	rra                                              ; $73fe: $1f
	ld   [bc], a                                     ; $73ff: $02
	and  b                                           ; $7400: $a0
	ld   [bc], a                                     ; $7401: $02
	dec  d                                           ; $7402: $15
	ld   [$0433], sp                                 ; $7403: $08 $33 $04
	and  b                                           ; $7406: $a0
	inc  b                                           ; $7407: $04
	inc  sp                                          ; $7408: $33
	ld   [bc], a                                     ; $7409: $02
	rra                                              ; $740a: $1f
	ld   [bc], a                                     ; $740b: $02
	and  b                                           ; $740c: $a0
	ld   [bc], a                                     ; $740d: $02
	ld   a, [de]                                     ; $740e: $1a
	ld   [$0e32], sp                                 ; $740f: $08 $32 $0e
	rra                                              ; $7412: $1f
	ld   [bc], a                                     ; $7413: $02
	ld   [hl-], a                                    ; $7414: $32
	inc  b                                           ; $7415: $04
	and  b                                           ; $7416: $a0
	inc  b                                           ; $7417: $04
	ld   [hl-], a                                    ; $7418: $32
	ld   [bc], a                                     ; $7419: $02
	rra                                              ; $741a: $1f
	ld   [bc], a                                     ; $741b: $02
	and  b                                           ; $741c: $a0
	ld   [bc], a                                     ; $741d: $02
	dec  d                                           ; $741e: $15
	ld   [$0425], sp                                 ; $741f: $08 $25 $04
	rra                                              ; $7422: $1f
	inc  b                                           ; $7423: $04
	dec  d                                           ; $7424: $15
	ld   [$0625], sp                                 ; $7425: $08 $25 $06
	rra                                              ; $7428: $1f
	ld   [bc], a                                     ; $7429: $02
	ld   a, [de]                                     ; $742a: $1a
	ld   [bc], a                                     ; $742b: $02
	rra                                              ; $742c: $1f
	ld   b, $31                                      ; $742d: $06 $31
	ld   [$0232], sp                                 ; $742f: $08 $32 $02
	rra                                              ; $7432: $1f
	ld   b, $2a                                      ; $7433: $06 $2a
	ld   [$0224], sp                                 ; $7435: $08 $24 $02
	rra                                              ; $7438: $1f
	ld   b, $25                                      ; $7439: $06 $25
	ld   [$0222], sp                                 ; $743b: $08 $22 $02
	rra                                              ; $743e: $1f
	ld   b, $20                                      ; $743f: $06 $20
	ld   [$081a], sp                                 ; $7441: $08 $1a $08
	ld   a, [hl+]                                    ; $7444: $2a
	db   $10                                         ; $7445: $10
	ld   [hl-], a                                    ; $7446: $32
	ld   [bc], a                                     ; $7447: $02
	and  b                                           ; $7448: $a0
	inc  b                                           ; $7449: $04
	ld   [hl-], a                                    ; $744a: $32
	ld   [bc], a                                     ; $744b: $02
	rra                                              ; $744c: $1f
	inc  c                                           ; $744d: $0c
	and  b                                           ; $744e: $a0
	ld   [bc], a                                     ; $744f: $02
	ld   [hl-], a                                    ; $7450: $32
	ld   [bc], a                                     ; $7451: $02
	and  b                                           ; $7452: $a0
	inc  b                                           ; $7453: $04
	ld   [hl-], a                                    ; $7454: $32
	ld   [bc], a                                     ; $7455: $02
	rra                                              ; $7456: $1f
	inc  b                                           ; $7457: $04
	and  b                                           ; $7458: $a0
	ld   [bc], a                                     ; $7459: $02
	ld   a, [hl+]                                    ; $745a: $2a
	ld   [bc], a                                     ; $745b: $02
	and  b                                           ; $745c: $a0
	inc  b                                           ; $745d: $04
	ld   a, [hl+]                                    ; $745e: $2a
	ld   [bc], a                                     ; $745f: $02
	rra                                              ; $7460: $1f
	inc  b                                           ; $7461: $04
	and  b                                           ; $7462: $a0
	ld   [bc], a                                     ; $7463: $02
	ld   [hl-], a                                    ; $7464: $32
	ld   [bc], a                                     ; $7465: $02
	and  b                                           ; $7466: $a0
	inc  b                                           ; $7467: $04
	ld   [hl-], a                                    ; $7468: $32
	ld   [bc], a                                     ; $7469: $02
	rra                                              ; $746a: $1f
	inc  b                                           ; $746b: $04
	and  b                                           ; $746c: $a0
	ld   [bc], a                                     ; $746d: $02
	add  hl, de                                      ; $746e: $19
	ld   [$1029], sp                                 ; $746f: $08 $29 $10
	jr   nc, jr_0fc_7476                             ; $7472: $30 $02

	and  b                                           ; $7474: $a0
	inc  b                                           ; $7475: $04

jr_0fc_7476:
	jr   nc, jr_0fc_747a                             ; $7476: $30 $02

	rra                                              ; $7478: $1f
	inc  c                                           ; $7479: $0c

jr_0fc_747a:
	and  b                                           ; $747a: $a0
	ld   [bc], a                                     ; $747b: $02
	inc  sp                                          ; $747c: $33
	ld   [bc], a                                     ; $747d: $02
	and  b                                           ; $747e: $a0
	inc  b                                           ; $747f: $04
	inc  sp                                          ; $7480: $33
	ld   [bc], a                                     ; $7481: $02
	rra                                              ; $7482: $1f
	inc  b                                           ; $7483: $04
	and  b                                           ; $7484: $a0
	ld   [bc], a                                     ; $7485: $02
	add  hl, hl                                      ; $7486: $29
	ld   [bc], a                                     ; $7487: $02
	and  b                                           ; $7488: $a0
	inc  b                                           ; $7489: $04
	add  hl, hl                                      ; $748a: $29
	ld   [bc], a                                     ; $748b: $02
	rra                                              ; $748c: $1f
	inc  b                                           ; $748d: $04
	and  b                                           ; $748e: $a0
	ld   [bc], a                                     ; $748f: $02
	jr   nc, jr_0fc_7494                             ; $7490: $30 $02

	and  b                                           ; $7492: $a0
	inc  b                                           ; $7493: $04

jr_0fc_7494:
	jr   nc, jr_0fc_7498                             ; $7494: $30 $02

	rra                                              ; $7496: $1f
	inc  b                                           ; $7497: $04

jr_0fc_7498:
	and  b                                           ; $7498: $a0
	ld   [bc], a                                     ; $7499: $02
	jr   jr_0fc_74a4                                 ; $749a: $18 $08

	jr   nc, jr_0fc_74ae                             ; $749c: $30 $10

	jr   c, jr_0fc_74a2                              ; $749e: $38 $02

	and  b                                           ; $74a0: $a0
	inc  b                                           ; $74a1: $04

jr_0fc_74a2:
	jr   c, jr_0fc_74a6                              ; $74a2: $38 $02

jr_0fc_74a4:
	rra                                              ; $74a4: $1f
	inc  b                                           ; $74a5: $04

jr_0fc_74a6:
	and  b                                           ; $74a6: $a0
	ld   [bc], a                                     ; $74a7: $02
	ld   a, [de]                                     ; $74a8: $1a
	ld   [$0235], sp                                 ; $74a9: $08 $35 $02
	and  b                                           ; $74ac: $a0
	inc  b                                           ; $74ad: $04

jr_0fc_74ae:
	dec  [hl]                                        ; $74ae: $35
	ld   [bc], a                                     ; $74af: $02
	rra                                              ; $74b0: $1f
	inc  b                                           ; $74b1: $04
	and  b                                           ; $74b2: $a0
	ld   [bc], a                                     ; $74b3: $02
	dec  [hl]                                        ; $74b4: $35
	ld   [bc], a                                     ; $74b5: $02
	and  b                                           ; $74b6: $a0
	inc  b                                           ; $74b7: $04
	dec  [hl]                                        ; $74b8: $35
	ld   [bc], a                                     ; $74b9: $02
	rra                                              ; $74ba: $1f
	inc  b                                           ; $74bb: $04
	and  b                                           ; $74bc: $a0
	ld   [bc], a                                     ; $74bd: $02
	ld   [hl-], a                                    ; $74be: $32
	ld   [bc], a                                     ; $74bf: $02
	and  b                                           ; $74c0: $a0
	inc  b                                           ; $74c1: $04
	ld   [hl-], a                                    ; $74c2: $32
	ld   [bc], a                                     ; $74c3: $02
	rra                                              ; $74c4: $1f
	inc  b                                           ; $74c5: $04
	and  b                                           ; $74c6: $a0
	ld   [bc], a                                     ; $74c7: $02
	inc  hl                                          ; $74c8: $23
	ld   [$1032], sp                                 ; $74c9: $08 $32 $10
	ld   [hl-], a                                    ; $74cc: $32
	inc  b                                           ; $74cd: $04
	and  b                                           ; $74ce: $a0
	inc  b                                           ; $74cf: $04
	ld   [hl-], a                                    ; $74d0: $32
	inc  b                                           ; $74d1: $04
	and  b                                           ; $74d2: $a0
	ld   [bc], a                                     ; $74d3: $02
	jr   nc, jr_0fc_74e6                             ; $74d4: $30 $10

	jr   nc, jr_0fc_74e4                             ; $74d6: $30 $0c

	and  b                                           ; $74d8: $a0
	inc  b                                           ; $74d9: $04
	jr   nc, @+$06                                   ; $74da: $30 $04

	and  b                                           ; $74dc: $a0
	ld   [bc], a                                     ; $74dd: $02
	rla                                              ; $74de: $17
	ld   [$0e2a], sp                                 ; $74df: $08 $2a $0e
	rra                                              ; $74e2: $1f
	ld   [bc], a                                     ; $74e3: $02

jr_0fc_74e4:
	ld   a, [hl+]                                    ; $74e4: $2a
	inc  b                                           ; $74e5: $04

jr_0fc_74e6:
	and  b                                           ; $74e6: $a0
	inc  b                                           ; $74e7: $04
	ld   a, [hl+]                                    ; $74e8: $2a
	ld   [bc], a                                     ; $74e9: $02
	rra                                              ; $74ea: $1f
	ld   [bc], a                                     ; $74eb: $02
	and  b                                           ; $74ec: $a0
	ld   [bc], a                                     ; $74ed: $02
	ld   [hl+], a                                    ; $74ee: $22
	ld   [$042a], sp                                 ; $74ef: $08 $2a $04
	and  b                                           ; $74f2: $a0
	inc  b                                           ; $74f3: $04
	ld   a, [hl+]                                    ; $74f4: $2a
	ld   [bc], a                                     ; $74f5: $02
	rra                                              ; $74f6: $1f
	ld   [bc], a                                     ; $74f7: $02
	and  b                                           ; $74f8: $a0
	ld   [bc], a                                     ; $74f9: $02
	ld   [hl+], a                                    ; $74fa: $22
	ld   [$042a], sp                                 ; $74fb: $08 $2a $04
	and  b                                           ; $74fe: $a0
	inc  b                                           ; $74ff: $04
	ld   a, [hl+]                                    ; $7500: $2a
	ld   [bc], a                                     ; $7501: $02
	rra                                              ; $7502: $1f
	ld   [bc], a                                     ; $7503: $02
	and  b                                           ; $7504: $a0
	ld   [bc], a                                     ; $7505: $02
	jr   nz, jr_0fc_7510                             ; $7506: $20 $08

	daa                                              ; $7508: $27
	ld   c, $1f                                      ; $7509: $0e $1f
	ld   [bc], a                                     ; $750b: $02
	daa                                              ; $750c: $27
	inc  b                                           ; $750d: $04
	and  b                                           ; $750e: $a0
	inc  b                                           ; $750f: $04

jr_0fc_7510:
	daa                                              ; $7510: $27
	ld   [bc], a                                     ; $7511: $02
	rra                                              ; $7512: $1f
	ld   [bc], a                                     ; $7513: $02
	and  b                                           ; $7514: $a0
	ld   [bc], a                                     ; $7515: $02
	jr   nz, jr_0fc_7520                             ; $7516: $20 $08

	daa                                              ; $7518: $27
	inc  b                                           ; $7519: $04
	and  b                                           ; $751a: $a0
	inc  b                                           ; $751b: $04
	daa                                              ; $751c: $27
	ld   [bc], a                                     ; $751d: $02
	rra                                              ; $751e: $1f
	ld   [bc], a                                     ; $751f: $02

jr_0fc_7520:
	and  b                                           ; $7520: $a0
	ld   [bc], a                                     ; $7521: $02
	inc  h                                           ; $7522: $24
	ld   [$0427], sp                                 ; $7523: $08 $27 $04
	and  b                                           ; $7526: $a0
	inc  b                                           ; $7527: $04
	daa                                              ; $7528: $27
	ld   [bc], a                                     ; $7529: $02
	rra                                              ; $752a: $1f
	ld   [bc], a                                     ; $752b: $02
	and  b                                           ; $752c: $a0
	ld   [bc], a                                     ; $752d: $02
	dec  h                                           ; $752e: $25
	ld   [$0829], sp                                 ; $752f: $08 $29 $08
	and  b                                           ; $7532: $a0
	inc  b                                           ; $7533: $04
	add  hl, hl                                      ; $7534: $29
	inc  b                                           ; $7535: $04
	rra                                              ; $7536: $1f
	inc  c                                           ; $7537: $0c
	and  b                                           ; $7538: $a0
	ld   [bc], a                                     ; $7539: $02
	dec  d                                           ; $753a: $15
	inc  b                                           ; $753b: $04
	rla                                              ; $753c: $17
	inc  b                                           ; $753d: $04
	dec  d                                           ; $753e: $15
	inc  b                                           ; $753f: $04
	rla                                              ; $7540: $17
	inc  b                                           ; $7541: $04
	jr   nz, jr_0fc_7548                             ; $7542: $20 $04

	ld   [hl+], a                                    ; $7544: $22
	inc  b                                           ; $7545: $04
	jr   nz, jr_0fc_754c                             ; $7546: $20 $04

jr_0fc_7548:
	ld   [hl+], a                                    ; $7548: $22
	inc  b                                           ; $7549: $04
	dec  h                                           ; $754a: $25
	ld   [bc], a                                     ; $754b: $02

jr_0fc_754c:
	and  b                                           ; $754c: $a0
	inc  b                                           ; $754d: $04
	dec  h                                           ; $754e: $25
	ld   [bc], a                                     ; $754f: $02
	rra                                              ; $7550: $1f
	inc  b                                           ; $7551: $04
	and  b                                           ; $7552: $a0
	ld   [bc], a                                     ; $7553: $02
	dec  h                                           ; $7554: $25
	ld   [bc], a                                     ; $7555: $02
	and  b                                           ; $7556: $a0
	inc  b                                           ; $7557: $04
	dec  h                                           ; $7558: $25
	ld   [bc], a                                     ; $7559: $02
	rra                                              ; $755a: $1f
	inc  b                                           ; $755b: $04
	and  b                                           ; $755c: $a0
	ld   [bc], a                                     ; $755d: $02
	inc  hl                                          ; $755e: $23
	ld   [bc], a                                     ; $755f: $02
	and  b                                           ; $7560: $a0
	inc  b                                           ; $7561: $04
	inc  hl                                          ; $7562: $23
	ld   [bc], a                                     ; $7563: $02
	rra                                              ; $7564: $1f
	inc  b                                           ; $7565: $04
	and  b                                           ; $7566: $a0
	ld   [bc], a                                     ; $7567: $02
	inc  hl                                          ; $7568: $23
	ld   [bc], a                                     ; $7569: $02
	and  b                                           ; $756a: $a0
	inc  b                                           ; $756b: $04
	inc  hl                                          ; $756c: $23
	ld   [bc], a                                     ; $756d: $02
	rra                                              ; $756e: $1f
	inc  b                                           ; $756f: $04
	and  b                                           ; $7570: $a0
	ld   [bc], a                                     ; $7571: $02
	ld   [hl+], a                                    ; $7572: $22
	ld   [bc], a                                     ; $7573: $02
	and  b                                           ; $7574: $a0
	inc  b                                           ; $7575: $04
	ld   [hl+], a                                    ; $7576: $22
	ld   [bc], a                                     ; $7577: $02
	rra                                              ; $7578: $1f
	inc  b                                           ; $7579: $04
	and  b                                           ; $757a: $a0
	ld   [bc], a                                     ; $757b: $02
	ld   [hl+], a                                    ; $757c: $22
	ld   [bc], a                                     ; $757d: $02
	and  b                                           ; $757e: $a0
	inc  b                                           ; $757f: $04
	ld   [hl+], a                                    ; $7580: $22
	ld   [bc], a                                     ; $7581: $02
	rra                                              ; $7582: $1f
	inc  b                                           ; $7583: $04
	and  b                                           ; $7584: $a0
	ld   [bc], a                                     ; $7585: $02
	jr   nz, jr_0fc_758a                             ; $7586: $20 $02

	and  b                                           ; $7588: $a0
	inc  b                                           ; $7589: $04

jr_0fc_758a:
	jr   nz, jr_0fc_758e                             ; $758a: $20 $02

	rra                                              ; $758c: $1f
	inc  b                                           ; $758d: $04

jr_0fc_758e:
	and  b                                           ; $758e: $a0
	ld   [bc], a                                     ; $758f: $02
	jr   nz, jr_0fc_7594                             ; $7590: $20 $02

	and  b                                           ; $7592: $a0
	inc  b                                           ; $7593: $04

jr_0fc_7594:
	jr   nz, jr_0fc_7598                             ; $7594: $20 $02

	rra                                              ; $7596: $1f
	inc  b                                           ; $7597: $04

jr_0fc_7598:
	and  b                                           ; $7598: $a0
	ld   [bc], a                                     ; $7599: $02
	ld   a, [de]                                     ; $759a: $1a
	ld   [$0e35], sp                                 ; $759b: $08 $35 $0e
	rra                                              ; $759e: $1f
	ld   [bc], a                                     ; $759f: $02
	dec  [hl]                                        ; $75a0: $35
	inc  b                                           ; $75a1: $04
	and  b                                           ; $75a2: $a0
	inc  b                                           ; $75a3: $04
	dec  [hl]                                        ; $75a4: $35
	inc  b                                           ; $75a5: $04
	rra                                              ; $75a6: $1f
	ld   [$02a0], sp                                 ; $75a7: $08 $a0 $02
	ld   [hl-], a                                    ; $75aa: $32
	inc  b                                           ; $75ab: $04
	and  b                                           ; $75ac: $a0
	inc  b                                           ; $75ad: $04
	ld   [hl-], a                                    ; $75ae: $32
	ld   [bc], a                                     ; $75af: $02
	rra                                              ; $75b0: $1f
	ld   [bc], a                                     ; $75b1: $02
	and  b                                           ; $75b2: $a0
	ld   [bc], a                                     ; $75b3: $02
	rla                                              ; $75b4: $17
	ld   [bc], a                                     ; $75b5: $02
	rra                                              ; $75b6: $1f
	ld   b, $32                                      ; $75b7: $06 $32
	inc  b                                           ; $75b9: $04
	and  b                                           ; $75ba: $a0
	inc  b                                           ; $75bb: $04
	ld   [hl-], a                                    ; $75bc: $32
	ld   [bc], a                                     ; $75bd: $02
	rra                                              ; $75be: $1f
	ld   [bc], a                                     ; $75bf: $02
	and  b                                           ; $75c0: $a0
	ld   [bc], a                                     ; $75c1: $02
	add  hl, de                                      ; $75c2: $19
	ld   [$0c35], sp                                 ; $75c3: $08 $35 $0c
	rra                                              ; $75c6: $1f
	inc  b                                           ; $75c7: $04
	dec  [hl]                                        ; $75c8: $35
	inc  b                                           ; $75c9: $04
	and  b                                           ; $75ca: $a0
	inc  b                                           ; $75cb: $04
	dec  [hl]                                        ; $75cc: $35
	inc  b                                           ; $75cd: $04
	rra                                              ; $75ce: $1f
	ld   [$02a0], sp                                 ; $75cf: $08 $a0 $02
	jr   nc, jr_0fc_75d8                             ; $75d2: $30 $04

	and  b                                           ; $75d4: $a0
	inc  b                                           ; $75d5: $04
	jr   nc, jr_0fc_75da                             ; $75d6: $30 $02

jr_0fc_75d8:
	rra                                              ; $75d8: $1f
	ld   [bc], a                                     ; $75d9: $02

jr_0fc_75da:
	and  b                                           ; $75da: $a0
	ld   [bc], a                                     ; $75db: $02
	jr   nz, @+$04                                   ; $75dc: $20 $02

	rra                                              ; $75de: $1f
	ld   b, $30                                      ; $75df: $06 $30
	inc  b                                           ; $75e1: $04
	and  b                                           ; $75e2: $a0
	inc  b                                           ; $75e3: $04
	jr   nc, jr_0fc_75e8                             ; $75e4: $30 $02

	rra                                              ; $75e6: $1f
	ld   [bc], a                                     ; $75e7: $02

jr_0fc_75e8:
	and  b                                           ; $75e8: $a0
	ld   [bc], a                                     ; $75e9: $02
	ld   [hl+], a                                    ; $75ea: $22
	ld   [$0836], sp                                 ; $75eb: $08 $36 $08
	jr   nz, jr_0fc_75f8                             ; $75ee: $20 $08

	ld   [hl], $04                                   ; $75f0: $36 $04
	and  b                                           ; $75f2: $a0
	inc  b                                           ; $75f3: $04
	ld   [hl], $04                                   ; $75f4: $36 $04
	and  b                                           ; $75f6: $a0
	ld   [bc], a                                     ; $75f7: $02

jr_0fc_75f8:
	ld   a, [de]                                     ; $75f8: $1a
	ld   [$0436], sp                                 ; $75f9: $08 $36 $04
	and  b                                           ; $75fc: $a0
	inc  b                                           ; $75fd: $04
	ld   [hl], $04                                   ; $75fe: $36 $04
	and  b                                           ; $7600: $a0
	ld   [bc], a                                     ; $7601: $02
	add  hl, de                                      ; $7602: $19
	ld   [$0436], sp                                 ; $7603: $08 $36 $04
	and  b                                           ; $7606: $a0
	inc  b                                           ; $7607: $04
	ld   [hl], $04                                   ; $7608: $36 $04
	and  b                                           ; $760a: $a0
	ld   [bc], a                                     ; $760b: $02
	inc  hl                                          ; $760c: $23
	ld   [$0c33], sp                                 ; $760d: $08 $33 $0c
	rra                                              ; $7610: $1f
	inc  b                                           ; $7611: $04
	inc  sp                                          ; $7612: $33
	inc  b                                           ; $7613: $04
	and  b                                           ; $7614: $a0
	inc  b                                           ; $7615: $04
	inc  sp                                          ; $7616: $33
	ld   [bc], a                                     ; $7617: $02
	rra                                              ; $7618: $1f
	ld   [bc], a                                     ; $7619: $02
	and  b                                           ; $761a: $a0
	ld   [bc], a                                     ; $761b: $02
	ld   a, [de]                                     ; $761c: $1a
	ld   [$0433], sp                                 ; $761d: $08 $33 $04
	and  b                                           ; $7620: $a0
	inc  b                                           ; $7621: $04
	inc  sp                                          ; $7622: $33
	ld   [bc], a                                     ; $7623: $02
	rra                                              ; $7624: $1f
	ld   [bc], a                                     ; $7625: $02
	and  b                                           ; $7626: $a0
	ld   [bc], a                                     ; $7627: $02
	ld   a, [de]                                     ; $7628: $1a
	ld   [$0433], sp                                 ; $7629: $08 $33 $04
	and  b                                           ; $762c: $a0
	inc  b                                           ; $762d: $04
	inc  sp                                          ; $762e: $33
	ld   [bc], a                                     ; $762f: $02
	rra                                              ; $7630: $1f
	ld   [bc], a                                     ; $7631: $02
	and  b                                           ; $7632: $a0
	ld   [bc], a                                     ; $7633: $02
	rla                                              ; $7634: $17
	ld   [$0c32], sp                                 ; $7635: $08 $32 $0c
	rra                                              ; $7638: $1f
	inc  b                                           ; $7639: $04
	ld   [hl-], a                                    ; $763a: $32
	inc  b                                           ; $763b: $04
	and  b                                           ; $763c: $a0
	inc  b                                           ; $763d: $04
	ld   [hl-], a                                    ; $763e: $32
	ld   [bc], a                                     ; $763f: $02
	rra                                              ; $7640: $1f
	ld   [bc], a                                     ; $7641: $02
	and  b                                           ; $7642: $a0
	ld   [bc], a                                     ; $7643: $02
	ld   hl, $3108                                   ; $7644: $21 $08 $31
	inc  b                                           ; $7647: $04
	and  b                                           ; $7648: $a0
	inc  b                                           ; $7649: $04
	ld   sp, $1f02                                   ; $764a: $31 $02 $1f
	ld   [bc], a                                     ; $764d: $02
	and  b                                           ; $764e: $a0
	ld   [bc], a                                     ; $764f: $02
	ld   hl, $3108                                   ; $7650: $21 $08 $31
	inc  b                                           ; $7653: $04
	and  b                                           ; $7654: $a0
	inc  b                                           ; $7655: $04
	ld   sp, $1f02                                   ; $7656: $31 $02 $1f
	ld   [bc], a                                     ; $7659: $02
	and  b                                           ; $765a: $a0
	ld   [bc], a                                     ; $765b: $02
	ld   [hl+], a                                    ; $765c: $22
	ld   [$0e29], sp                                 ; $765d: $08 $29 $0e
	rra                                              ; $7660: $1f
	ld   [bc], a                                     ; $7661: $02
	add  hl, hl                                      ; $7662: $29
	inc  b                                           ; $7663: $04
	and  b                                           ; $7664: $a0
	inc  b                                           ; $7665: $04
	add  hl, hl                                      ; $7666: $29
	ld   [bc], a                                     ; $7667: $02
	rra                                              ; $7668: $1f
	ld   [bc], a                                     ; $7669: $02
	and  b                                           ; $766a: $a0
	ld   [bc], a                                     ; $766b: $02
	rla                                              ; $766c: $17
	ld   [bc], a                                     ; $766d: $02
	and  b                                           ; $766e: $a0
	inc  b                                           ; $766f: $04
	rla                                              ; $7670: $17
	ld   [bc], a                                     ; $7671: $02
	rra                                              ; $7672: $1f
	inc  b                                           ; $7673: $04
	and  b                                           ; $7674: $a0
	ld   [bc], a                                     ; $7675: $02
	add  hl, de                                      ; $7676: $19
	ld   [bc], a                                     ; $7677: $02
	and  b                                           ; $7678: $a0
	inc  b                                           ; $7679: $04
	add  hl, de                                      ; $767a: $19
	ld   [bc], a                                     ; $767b: $02
	rra                                              ; $767c: $1f
	inc  b                                           ; $767d: $04
	and  b                                           ; $767e: $a0
	ld   [bc], a                                     ; $767f: $02
	ld   a, [de]                                     ; $7680: $1a
	ld   [bc], a                                     ; $7681: $02
	and  b                                           ; $7682: $a0
	inc  b                                           ; $7683: $04
	ld   a, [de]                                     ; $7684: $1a
	ld   [bc], a                                     ; $7685: $02
	rra                                              ; $7686: $1f
	inc  b                                           ; $7687: $04
	and  b                                           ; $7688: $a0
	ld   [bc], a                                     ; $7689: $02
	dec  de                                          ; $768a: $1b
	ld   [bc], a                                     ; $768b: $02
	and  b                                           ; $768c: $a0
	inc  b                                           ; $768d: $04
	dec  de                                          ; $768e: $1b
	ld   [bc], a                                     ; $768f: $02
	rra                                              ; $7690: $1f
	inc  b                                           ; $7691: $04
	and  b                                           ; $7692: $a0
	ld   [bc], a                                     ; $7693: $02
	jr   nz, jr_0fc_769e                             ; $7694: $20 $08

	jr   nc, jr_0fc_76a4                             ; $7696: $30 $0c

	rra                                              ; $7698: $1f
	inc  b                                           ; $7699: $04
	jr   nc, jr_0fc_76a0                             ; $769a: $30 $04

	and  b                                           ; $769c: $a0
	inc  b                                           ; $769d: $04

jr_0fc_769e:
	jr   nc, jr_0fc_76a2                             ; $769e: $30 $02

jr_0fc_76a0:
	rra                                              ; $76a0: $1f
	ld   [bc], a                                     ; $76a1: $02

jr_0fc_76a2:
	and  b                                           ; $76a2: $a0
	ld   [bc], a                                     ; $76a3: $02

jr_0fc_76a4:
	rla                                              ; $76a4: $17
	ld   [$0430], sp                                 ; $76a5: $08 $30 $04
	and  b                                           ; $76a8: $a0
	inc  b                                           ; $76a9: $04
	jr   nc, jr_0fc_76ae                             ; $76aa: $30 $02

	rra                                              ; $76ac: $1f
	ld   [bc], a                                     ; $76ad: $02

jr_0fc_76ae:
	and  b                                           ; $76ae: $a0
	ld   [bc], a                                     ; $76af: $02
	rla                                              ; $76b0: $17
	ld   [$0430], sp                                 ; $76b1: $08 $30 $04
	and  b                                           ; $76b4: $a0
	inc  b                                           ; $76b5: $04
	jr   nc, jr_0fc_76ba                             ; $76b6: $30 $02

	rra                                              ; $76b8: $1f
	ld   [bc], a                                     ; $76b9: $02

jr_0fc_76ba:
	and  b                                           ; $76ba: $a0
	ld   [bc], a                                     ; $76bb: $02
	dec  d                                           ; $76bc: $15
	ld   [$0e30], sp                                 ; $76bd: $08 $30 $0e
	rra                                              ; $76c0: $1f
	ld   [bc], a                                     ; $76c1: $02
	jr   nc, jr_0fc_76c8                             ; $76c2: $30 $04

	and  b                                           ; $76c4: $a0
	inc  b                                           ; $76c5: $04
	jr   nc, jr_0fc_76ca                             ; $76c6: $30 $02

jr_0fc_76c8:
	rra                                              ; $76c8: $1f
	ld   [bc], a                                     ; $76c9: $02

jr_0fc_76ca:
	and  b                                           ; $76ca: $a0
	ld   [bc], a                                     ; $76cb: $02
	dec  d                                           ; $76cc: $15
	ld   [$0433], sp                                 ; $76cd: $08 $33 $04
	and  b                                           ; $76d0: $a0
	inc  b                                           ; $76d1: $04
	inc  sp                                          ; $76d2: $33
	ld   [bc], a                                     ; $76d3: $02
	rra                                              ; $76d4: $1f
	ld   [bc], a                                     ; $76d5: $02
	and  b                                           ; $76d6: $a0
	ld   [bc], a                                     ; $76d7: $02
	jr   nz, jr_0fc_76e2                             ; $76d8: $20 $08

	inc  sp                                          ; $76da: $33
	inc  b                                           ; $76db: $04
	and  b                                           ; $76dc: $a0
	inc  b                                           ; $76dd: $04
	inc  sp                                          ; $76de: $33
	ld   [bc], a                                     ; $76df: $02
	rra                                              ; $76e0: $1f
	ld   [bc], a                                     ; $76e1: $02

jr_0fc_76e2:
	and  b                                           ; $76e2: $a0
	ld   [bc], a                                     ; $76e3: $02
	ld   a, [de]                                     ; $76e4: $1a
	ld   [$0839], sp                                 ; $76e5: $08 $39 $08
	ld   a, [hl-]                                    ; $76e8: $3a
	ld   [bc], a                                     ; $76e9: $02
	and  b                                           ; $76ea: $a0
	inc  b                                           ; $76eb: $04
	ld   a, [hl-]                                    ; $76ec: $3a
	ld   [bc], a                                     ; $76ed: $02
	rra                                              ; $76ee: $1f
	inc  b                                           ; $76ef: $04
	and  b                                           ; $76f0: $a0
	ld   [bc], a                                     ; $76f1: $02
	inc  [hl]                                        ; $76f2: $34
	ld   [$0235], sp                                 ; $76f3: $08 $35 $02
	and  b                                           ; $76f6: $a0
	inc  b                                           ; $76f7: $04
	dec  [hl]                                        ; $76f8: $35
	ld   [bc], a                                     ; $76f9: $02
	rra                                              ; $76fa: $1f
	inc  b                                           ; $76fb: $04
	and  b                                           ; $76fc: $a0
	ld   [bc], a                                     ; $76fd: $02
	ld   sp, $3208                                   ; $76fe: $31 $08 $32
	ld   [bc], a                                     ; $7701: $02
	jr   nc, jr_0fc_7706                             ; $7702: $30 $02

	ld   a, [hl+]                                    ; $7704: $2a
	ld   [bc], a                                     ; $7705: $02

jr_0fc_7706:
	add  hl, hl                                      ; $7706: $29
	ld   [bc], a                                     ; $7707: $02
	daa                                              ; $7708: $27
	ld   [bc], a                                     ; $7709: $02
	dec  h                                           ; $770a: $25
	ld   [bc], a                                     ; $770b: $02
	inc  hl                                          ; $770c: $23
	ld   [bc], a                                     ; $770d: $02
	ld   [hl+], a                                    ; $770e: $22
	ld   [bc], a                                     ; $770f: $02
	ld   a, [de]                                     ; $7710: $1a
	ld   [bc], a                                     ; $7711: $02
	and  b                                           ; $7712: $a0
	inc  b                                           ; $7713: $04
	ld   a, [de]                                     ; $7714: $1a
	ld   [bc], a                                     ; $7715: $02
	rra                                              ; $7716: $1f
	inc  b                                           ; $7717: $04
	and  b                                           ; $7718: $a0
	ld   [bc], a                                     ; $7719: $02
	ld   a, [de]                                     ; $771a: $1a
	ld   [bc], a                                     ; $771b: $02
	and  b                                           ; $771c: $a0
	inc  b                                           ; $771d: $04
	ld   a, [de]                                     ; $771e: $1a
	ld   [bc], a                                     ; $771f: $02
	rra                                              ; $7720: $1f
	inc  b                                           ; $7721: $04
	and  b                                           ; $7722: $a0
	ld   [bc], a                                     ; $7723: $02
	ld   a, [de]                                     ; $7724: $1a
	ld   [$04a0], sp                                 ; $7725: $08 $a0 $04
	ld   a, [de]                                     ; $7728: $1a
	ld   [$201f], sp                                 ; $7729: $08 $1f $20
	or   b                                           ; $772c: $b0
	di                                               ; $772d: $f3
	rst  $38                                         ; $772e: $ff
	rst  $38                                         ; $772f: $ff
	rlca                                             ; $7730: $07
	nop                                              ; $7731: $00
	add  hl, bc                                      ; $7732: $09
	nop                                              ; $7733: $00
	pop  bc                                          ; $7734: $c1
	inc  bc                                          ; $7735: $03
	and  b                                           ; $7736: $a0
	rlca                                             ; $7737: $07
	ld   [bc], a                                     ; $7738: $02
	ld   bc, $01a0                                   ; $7739: $01 $a0 $01
	nop                                              ; $773c: $00
	rlca                                             ; $773d: $07
	db   $fd                                         ; $773e: $fd
	ldh  a, [$c1]                                    ; $773f: $f0 $c1
	inc  b                                           ; $7741: $04
	and  b                                           ; $7742: $a0
	dec  bc                                          ; $7743: $0b
	ld   d, $01                                      ; $7744: $16 $01
	jr   nz, jr_0fc_7749                             ; $7746: $20 $01

	or   e                                           ; $7748: $b3

jr_0fc_7749:
	ldh  a, [$fd]                                    ; $7749: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $774b: $f0 $a0
	dec  c                                           ; $774d: $0d
	rla                                              ; $774e: $17
	ld   bc, $0aa0                                   ; $774f: $01 $a0 $0a
	db   $10                                         ; $7752: $10
	ld   bc, $01a0                                   ; $7753: $01 $a0 $01
	nop                                              ; $7756: $00
	ld   b, $b1                                      ; $7757: $06 $b1
	ldh  a, [$c1]                                    ; $7759: $f0 $c1
	inc  bc                                          ; $775b: $03
	and  b                                           ; $775c: $a0
	rlca                                             ; $775d: $07
	ld   [bc], a                                     ; $775e: $02
	ld   bc, $01a0                                   ; $775f: $01 $a0 $01
	nop                                              ; $7762: $00
	rra                                              ; $7763: $1f
	db   $fd                                         ; $7764: $fd
	di                                               ; $7765: $f3
	db   $fd                                         ; $7766: $fd
	pop  af                                          ; $7767: $f1
	xor  h                                           ; $7768: $ac
	ld   bc, $01ce                                   ; $7769: $01 $ce $01
	xor  h                                           ; $776c: $ac
	ld   bc, $0228                                   ; $776d: $01 $28 $02
	or   [hl]                                        ; $7770: $b6
	pop  af                                          ; $7771: $f1
	xor  h                                           ; $7772: $ac
	ld   bc, $01ce                                   ; $7773: $01 $ce $01
	db   $fd                                         ; $7776: $fd
	ldh  a, [$c1]                                    ; $7777: $f0 $c1
	inc  b                                           ; $7779: $04
	and  b                                           ; $777a: $a0
	add  hl, bc                                      ; $777b: $09
	ld   l, b                                        ; $777c: $68
	ld   bc, $06a0                                   ; $777d: $01 $a0 $06
	sbc  c                                           ; $7780: $99
	ld   bc, $01a0                                   ; $7781: $01 $a0 $01
	sbc  c                                           ; $7784: $99
	ld   b, $b2                                      ; $7785: $06 $b2
	ldh  a, [$1f]                                    ; $7787: $f0 $1f
	ld   [$03c1], sp                                 ; $7789: $08 $c1 $03
	and  b                                           ; $778c: $a0
	rlca                                             ; $778d: $07
	ld   [bc], a                                     ; $778e: $02
	ld   bc, $01a0                                   ; $778f: $01 $a0 $01
	nop                                              ; $7792: $00
	rlca                                             ; $7793: $07
	db   $fd                                         ; $7794: $fd
	ldh  a, [$c1]                                    ; $7795: $f0 $c1
	inc  b                                           ; $7797: $04
	and  b                                           ; $7798: $a0
	dec  bc                                          ; $7799: $0b
	ld   d, $01                                      ; $779a: $16 $01
	jr   nz, jr_0fc_779f                             ; $779c: $20 $01

	or   e                                           ; $779e: $b3

jr_0fc_779f:
	ldh  a, [$fd]                                    ; $779f: $f0 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $77a1: $f0 $a0
	dec  c                                           ; $77a3: $0d
	rla                                              ; $77a4: $17
	ld   bc, $0aa0                                   ; $77a5: $01 $a0 $0a
	db   $10                                         ; $77a8: $10
	ld   bc, $01a0                                   ; $77a9: $01 $a0 $01
	nop                                              ; $77ac: $00
	ld   b, $b1                                      ; $77ad: $06 $b1
	ldh  a, [$fd]                                    ; $77af: $f0 $fd
	pop  af                                          ; $77b1: $f1
	xor  h                                           ; $77b2: $ac
	ld   bc, $01ce                                   ; $77b3: $01 $ce $01
	xor  h                                           ; $77b6: $ac
	ld   bc, $0228                                   ; $77b7: $01 $28 $02
	or   [hl]                                        ; $77ba: $b6
	pop  af                                          ; $77bb: $f1
	xor  h                                           ; $77bc: $ac
	ld   bc, $01ce                                   ; $77bd: $01 $ce $01
	pop  bc                                          ; $77c0: $c1
	inc  b                                           ; $77c1: $04
	and  b                                           ; $77c2: $a0
	add  hl, bc                                      ; $77c3: $09
	ld   l, b                                        ; $77c4: $68
	ld   bc, $06a0                                   ; $77c5: $01 $a0 $06
	sbc  c                                           ; $77c8: $99
	ld   bc, $01a0                                   ; $77c9: $01 $a0 $01
	sbc  c                                           ; $77cc: $99
	ld   b, $c1                                      ; $77cd: $06 $c1
	inc  bc                                          ; $77cf: $03
	and  b                                           ; $77d0: $a0
	rlca                                             ; $77d1: $07
	ld   [bc], a                                     ; $77d2: $02
	ld   bc, $01a0                                   ; $77d3: $01 $a0 $01
	nop                                              ; $77d6: $00
	rlca                                             ; $77d7: $07
	and  b                                           ; $77d8: $a0
	dec  c                                           ; $77d9: $0d
	rla                                              ; $77da: $17
	ld   bc, $0aa0                                   ; $77db: $01 $a0 $0a
	db   $10                                         ; $77de: $10
	ld   bc, $01a0                                   ; $77df: $01 $a0 $01
	nop                                              ; $77e2: $00
	ld   b, $fd                                      ; $77e3: $06 $fd
	ldh  a, [$c1]                                    ; $77e5: $f0 $c1
	inc  b                                           ; $77e7: $04
	and  b                                           ; $77e8: $a0
	dec  bc                                          ; $77e9: $0b
	ld   d, $01                                      ; $77ea: $16 $01
	jr   nz, jr_0fc_77ef                             ; $77ec: $20 $01

	or   e                                           ; $77ee: $b3

jr_0fc_77ef:
	ldh  a, [$c1]                                    ; $77ef: $f0 $c1
	inc  bc                                          ; $77f1: $03
	and  b                                           ; $77f2: $a0
	rlca                                             ; $77f3: $07
	ld   [bc], a                                     ; $77f4: $02
	ld   bc, $01a0                                   ; $77f5: $01 $a0 $01
	nop                                              ; $77f8: $00
	rlca                                             ; $77f9: $07
	and  b                                           ; $77fa: $a0
	dec  c                                           ; $77fb: $0d
	rla                                              ; $77fc: $17
	ld   bc, $0aa0                                   ; $77fd: $01 $a0 $0a
	db   $10                                         ; $7800: $10
	ld   bc, $01a0                                   ; $7801: $01 $a0 $01
	nop                                              ; $7804: $00
	ld   c, $c1                                      ; $7805: $0e $c1
	inc  b                                           ; $7807: $04
	and  b                                           ; $7808: $a0
	add  hl, bc                                      ; $7809: $09
	ld   l, b                                        ; $780a: $68
	ld   bc, $06a0                                   ; $780b: $01 $a0 $06
	sbc  c                                           ; $780e: $99
	ld   bc, $01a0                                   ; $780f: $01 $a0 $01
	sbc  c                                           ; $7812: $99
	ld   b, $fd                                      ; $7813: $06 $fd
	pop  af                                          ; $7815: $f1
	xor  h                                           ; $7816: $ac
	ld   bc, $0270                                   ; $7817: $01 $70 $02
	or   c                                           ; $781a: $b1
	pop  af                                          ; $781b: $f1
	db   $fd                                         ; $781c: $fd
	pop  af                                          ; $781d: $f1
	xor  h                                           ; $781e: $ac
	ld   bc, $01ce                                   ; $781f: $01 $ce $01
	or   h                                           ; $7822: $b4
	pop  af                                          ; $7823: $f1
	pop  bc                                          ; $7824: $c1
	inc  b                                           ; $7825: $04
	and  b                                           ; $7826: $a0
	add  hl, bc                                      ; $7827: $09
	ld   l, b                                        ; $7828: $68
	ld   bc, $06a0                                   ; $7829: $01 $a0 $06
	sbc  c                                           ; $782c: $99
	ld   bc, $01a0                                   ; $782d: $01 $a0 $01
	sbc  c                                           ; $7830: $99
	ld   b, $fd                                      ; $7831: $06 $fd
	ldh  a, [$c1]                                    ; $7833: $f0 $c1
	inc  bc                                          ; $7835: $03
	and  b                                           ; $7836: $a0
	ld   [$0101], sp                                 ; $7837: $08 $01 $01
	and  b                                           ; $783a: $a0
	inc  b                                           ; $783b: $04
	nop                                              ; $783c: $00
	ld   bc, $f0b3                                   ; $783d: $01 $b3 $f0
	db   $fd                                         ; $7840: $fd
	ldh  a, [$c1]                                    ; $7841: $f0 $c1
	inc  bc                                          ; $7843: $03
	and  b                                           ; $7844: $a0
	rlca                                             ; $7845: $07
	ld   [bc], a                                     ; $7846: $02
	ld   bc, $01a0                                   ; $7847: $01 $a0 $01
	nop                                              ; $784a: $00
	rlca                                             ; $784b: $07
	or   c                                           ; $784c: $b1
	ldh  a, [$c1]                                    ; $784d: $f0 $c1
	inc  b                                           ; $784f: $04
	and  b                                           ; $7850: $a0
	add  hl, bc                                      ; $7851: $09
	ld   l, b                                        ; $7852: $68
	ld   bc, $06a0                                   ; $7853: $01 $a0 $06
	sbc  c                                           ; $7856: $99
	ld   bc, $01a0                                   ; $7857: $01 $a0 $01
	sbc  c                                           ; $785a: $99
	ld   b, $fd                                      ; $785b: $06 $fd
	ldh  a, [hScriptOpcodeParams]                                    ; $785d: $f0 $a0
	dec  c                                           ; $785f: $0d
	rla                                              ; $7860: $17
	ld   bc, $0aa0                                   ; $7861: $01 $a0 $0a
	db   $10                                         ; $7864: $10
	ld   bc, $01a0                                   ; $7865: $01 $a0 $01
	nop                                              ; $7868: $00
	ld   b, $b2                                      ; $7869: $06 $b2
	ldh  a, [$fd]                                    ; $786b: $f0 $fd
	pop  af                                          ; $786d: $f1
	xor  h                                           ; $786e: $ac
	ld   bc, $0270                                   ; $786f: $01 $70 $02
	or   c                                           ; $7872: $b1
	pop  af                                          ; $7873: $f1
	db   $fd                                         ; $7874: $fd
	pop  af                                          ; $7875: $f1
	xor  h                                           ; $7876: $ac
	ld   bc, $01ce                                   ; $7877: $01 $ce $01
	xor  h                                           ; $787a: $ac
	ld   bc, $02c6                                   ; $787b: $01 $c6 $02
	or   d                                           ; $787e: $b2
	pop  af                                          ; $787f: $f1
	pop  bc                                          ; $7880: $c1
	inc  b                                           ; $7881: $04
	and  b                                           ; $7882: $a0
	add  hl, bc                                      ; $7883: $09
	ld   l, b                                        ; $7884: $68
	ld   bc, $06a0                                   ; $7885: $01 $a0 $06
	sbc  c                                           ; $7888: $99
	ld   bc, $01a0                                   ; $7889: $01 $a0 $01
	sbc  c                                           ; $788c: $99
	ld   b, $fd                                      ; $788d: $06 $fd

jr_0fc_788f:
	ldh  a, [$c1]                                    ; $788f: $f0 $c1
	inc  bc                                          ; $7891: $03
	and  b                                           ; $7892: $a0
	ld   [$0101], sp                                 ; $7893: $08 $01 $01
	and  b                                           ; $7896: $a0
	inc  b                                           ; $7897: $04
	nop                                              ; $7898: $00
	ld   bc, $f0b3                                   ; $7899: $01 $b3 $f0
	db   $fd                                         ; $789c: $fd
	ldh  a, [$c1]                                    ; $789d: $f0 $c1
	inc  bc                                          ; $789f: $03
	and  b                                           ; $78a0: $a0
	rlca                                             ; $78a1: $07
	ld   [bc], a                                     ; $78a2: $02
	ld   bc, $01a0                                   ; $78a3: $01 $a0 $01
	nop                                              ; $78a6: $00
	rlca                                             ; $78a7: $07
	or   c                                           ; $78a8: $b1
	ldh  a, [$c1]                                    ; $78a9: $f0 $c1
	inc  b                                           ; $78ab: $04
	and  b                                           ; $78ac: $a0
	add  hl, bc                                      ; $78ad: $09
	ld   l, b                                        ; $78ae: $68
	ld   bc, $06a0                                   ; $78af: $01 $a0 $06
	sbc  c                                           ; $78b2: $99
	ld   bc, $01a0                                   ; $78b3: $01 $a0 $01
	sbc  c                                           ; $78b6: $99
	ld   b, $fd                                      ; $78b7: $06 $fd
	ldh  a, [$c1]                                    ; $78b9: $f0 $c1
	inc  b                                           ; $78bb: $04
	and  b                                           ; $78bc: $a0
	dec  bc                                          ; $78bd: $0b
	ld   d, $01                                      ; $78be: $16 $01
	jr   nz, jr_0fc_78c3                             ; $78c0: $20 $01

	or   e                                           ; $78c2: $b3

jr_0fc_78c3:
	ldh  a, [hScriptOpcodeParams]                                    ; $78c3: $f0 $a0
	dec  c                                           ; $78c5: $0d
	rla                                              ; $78c6: $17
	ld   bc, $0aa0                                   ; $78c7: $01 $a0 $0a
	db   $10                                         ; $78ca: $10
	ld   bc, $01a0                                   ; $78cb: $01 $a0 $01
	nop                                              ; $78ce: $00
	ld   b, $c1                                      ; $78cf: $06 $c1
	inc  bc                                          ; $78d1: $03
	and  b                                           ; $78d2: $a0
	rlca                                             ; $78d3: $07
	ld   [bc], a                                     ; $78d4: $02
	ld   bc, $01a0                                   ; $78d5: $01 $a0 $01
	nop                                              ; $78d8: $00
	rlca                                             ; $78d9: $07
	db   $fd                                         ; $78da: $fd
	ldh  a, [$c1]                                    ; $78db: $f0 $c1
	inc  b                                           ; $78dd: $04
	and  b                                           ; $78de: $a0
	add  hl, bc                                      ; $78df: $09
	ld   l, b                                        ; $78e0: $68
	ld   bc, $06a0                                   ; $78e1: $01 $a0 $06
	sbc  c                                           ; $78e4: $99
	ld   bc, $01a0                                   ; $78e5: $01 $a0 $01
	sbc  c                                           ; $78e8: $99
	ld   b, $b2                                      ; $78e9: $06 $b2
	ldh  a, [$1f]                                    ; $78eb: $f0 $1f
	jr   jr_0fc_788f                                 ; $78ed: $18 $a0

	dec  c                                           ; $78ef: $0d
	rla                                              ; $78f0: $17
	ld   bc, $0aa0                                   ; $78f1: $01 $a0 $0a
	db   $10                                         ; $78f4: $10
	ld   bc, $01a0                                   ; $78f5: $01 $a0 $01
	nop                                              ; $78f8: $00
	ld   c, $b0                                      ; $78f9: $0e $b0
	di                                               ; $78fb: $f3
	rst  $38                                         ; $78fc: $ff
	rst  $38                                         ; $78fd: $ff
	pop  bc                                          ; $78fe: $c1
	inc  b                                           ; $78ff: $04
	and  b                                           ; $7900: $a0
	add  hl, bc                                      ; $7901: $09
	ld   l, b                                        ; $7902: $68
	ld   bc, $06a0                                   ; $7903: $01 $a0 $06
	sbc  c                                           ; $7906: $99
	ld   bc, $01a0                                   ; $7907: $01 $a0 $01
	sbc  c                                           ; $790a: $99
	ld   b, $fd                                      ; $790b: $06 $fd
	ldh  a, [$c1]                                    ; $790d: $f0 $c1
	inc  bc                                          ; $790f: $03
	and  b                                           ; $7910: $a0
	ld   [$0101], sp                                 ; $7911: $08 $01 $01
	and  b                                           ; $7914: $a0
	inc  b                                           ; $7915: $04
	nop                                              ; $7916: $00
	ld   bc, $f0b3                                   ; $7917: $01 $b3 $f0
	db   $fd                                         ; $791a: $fd
	ldh  a, [$c1]                                    ; $791b: $f0 $c1
	inc  bc                                          ; $791d: $03
	and  b                                           ; $791e: $a0
	rlca                                             ; $791f: $07
	ld   [bc], a                                     ; $7920: $02
	ld   bc, $01a0                                   ; $7921: $01 $a0 $01
	nop                                              ; $7924: $00
	rlca                                             ; $7925: $07
	or   c                                           ; $7926: $b1
	ldh  a, [$c1]                                    ; $7927: $f0 $c1
	inc  b                                           ; $7929: $04
	and  b                                           ; $792a: $a0
	add  hl, bc                                      ; $792b: $09
	ld   l, b                                        ; $792c: $68
	ld   bc, $06a0                                   ; $792d: $01 $a0 $06
	sbc  c                                           ; $7930: $99
	ld   bc, $01a0                                   ; $7931: $01 $a0 $01
	sbc  c                                           ; $7934: $99
	ld   b, $c1                                      ; $7935: $06 $c1
	inc  bc                                          ; $7937: $03
	and  b                                           ; $7938: $a0
	rlca                                             ; $7939: $07
	ld   [bc], a                                     ; $793a: $02
	ld   bc, $01a0                                   ; $793b: $01 $a0 $01
	nop                                              ; $793e: $00
	rlca                                             ; $793f: $07
	and  b                                           ; $7940: $a0
	dec  c                                           ; $7941: $0d
	rla                                              ; $7942: $17
	ld   bc, $0aa0                                   ; $7943: $01 $a0 $0a
	db   $10                                         ; $7946: $10
	ld   bc, $01a0                                   ; $7947: $01 $a0 $01
	nop                                              ; $794a: $00
	ld   b, $c1                                      ; $794b: $06 $c1
	inc  bc                                          ; $794d: $03
	and  b                                           ; $794e: $a0
	rlca                                             ; $794f: $07
	ld   [bc], a                                     ; $7950: $02
	ld   bc, $01a0                                   ; $7951: $01 $a0 $01
	nop                                              ; $7954: $00
	rlca                                             ; $7955: $07
	xor  l                                           ; $7956: $ad
	nop                                              ; $7957: $00
	pop  bc                                          ; $7958: $c1
	inc  b                                           ; $7959: $04
	and  b                                           ; $795a: $a0
	add  hl, bc                                      ; $795b: $09
	ld   l, b                                        ; $795c: $68
	ld   bc, $06a0                                   ; $795d: $01 $a0 $06
	sbc  c                                           ; $7960: $99
	ld   bc, $01a0                                   ; $7961: $01 $a0 $01
	sbc  c                                           ; $7964: $99
	ld   b, $fd                                      ; $7965: $06 $fd
	ldh  a, [$c1]                                    ; $7967: $f0 $c1
	inc  bc                                          ; $7969: $03
	and  b                                           ; $796a: $a0
	ld   [$0101], sp                                 ; $796b: $08 $01 $01
	and  b                                           ; $796e: $a0
	inc  b                                           ; $796f: $04
	nop                                              ; $7970: $00
	ld   bc, $f0b3                                   ; $7971: $01 $b3 $f0
	db   $fd                                         ; $7974: $fd
	ldh  a, [$c1]                                    ; $7975: $f0 $c1
	inc  bc                                          ; $7977: $03
	and  b                                           ; $7978: $a0
	rlca                                             ; $7979: $07
	ld   [bc], a                                     ; $797a: $02
	ld   bc, $01a0                                   ; $797b: $01 $a0 $01
	nop                                              ; $797e: $00
	rlca                                             ; $797f: $07
	or   c                                           ; $7980: $b1
	ldh  a, [$fd]                                    ; $7981: $f0 $fd
	ldh  a, [$c1]                                    ; $7983: $f0 $c1
	inc  b                                           ; $7985: $04
	and  b                                           ; $7986: $a0
	add  hl, bc                                      ; $7987: $09
	ld   l, b                                        ; $7988: $68
	ld   bc, $06a0                                   ; $7989: $01 $a0 $06
	sbc  c                                           ; $798c: $99
	ld   bc, $01a0                                   ; $798d: $01 $a0 $01
	sbc  c                                           ; $7990: $99
	ld   b, $c1                                      ; $7991: $06 $c1
	inc  bc                                          ; $7993: $03
	and  b                                           ; $7994: $a0
	rlca                                             ; $7995: $07
	ld   [bc], a                                     ; $7996: $02
	ld   bc, $01a0                                   ; $7997: $01 $a0 $01
	nop                                              ; $799a: $00
	rlca                                             ; $799b: $07
	or   c                                           ; $799c: $b1
	ldh  a, [$ad]                                    ; $799d: $f0 $ad
	nop                                              ; $799f: $00
	pop  bc                                          ; $79a0: $c1
	inc  b                                           ; $79a1: $04
	and  b                                           ; $79a2: $a0
	add  hl, bc                                      ; $79a3: $09
	ld   l, b                                        ; $79a4: $68
	ld   bc, $06a0                                   ; $79a5: $01 $a0 $06
	sbc  c                                           ; $79a8: $99
	ld   bc, $01a0                                   ; $79a9: $01 $a0 $01
	sbc  c                                           ; $79ac: $99
	ld   b, $fd                                      ; $79ad: $06 $fd
	ldh  a, [$c1]                                    ; $79af: $f0 $c1
	inc  bc                                          ; $79b1: $03
	and  b                                           ; $79b2: $a0
	ld   [$0101], sp                                 ; $79b3: $08 $01 $01
	and  b                                           ; $79b6: $a0
	inc  b                                           ; $79b7: $04
	nop                                              ; $79b8: $00
	ld   bc, $f0b3                                   ; $79b9: $01 $b3 $f0
	pop  bc                                          ; $79bc: $c1
	inc  bc                                          ; $79bd: $03
	and  b                                           ; $79be: $a0
	rlca                                             ; $79bf: $07
	ld   [bc], a                                     ; $79c0: $02
	ld   bc, $01a0                                   ; $79c1: $01 $a0 $01
	nop                                              ; $79c4: $00
	rlca                                             ; $79c5: $07
	pop  bc                                          ; $79c6: $c1
	inc  b                                           ; $79c7: $04
	and  b                                           ; $79c8: $a0
	add  hl, bc                                      ; $79c9: $09
	ld   l, b                                        ; $79ca: $68
	ld   bc, $06a0                                   ; $79cb: $01 $a0 $06
	sbc  c                                           ; $79ce: $99
	ld   bc, $01a0                                   ; $79cf: $01 $a0 $01
	sbc  c                                           ; $79d2: $99
	ld   c, $c1                                      ; $79d3: $0e $c1
	inc  bc                                          ; $79d5: $03
	and  b                                           ; $79d6: $a0
	rlca                                             ; $79d7: $07
	ld   [bc], a                                     ; $79d8: $02
	ld   bc, $01a0                                   ; $79d9: $01 $a0 $01
	nop                                              ; $79dc: $00
	rlca                                             ; $79dd: $07
	and  b                                           ; $79de: $a0
	dec  c                                           ; $79df: $0d
	rla                                              ; $79e0: $17
	ld   bc, $0aa0                                   ; $79e1: $01 $a0 $0a
	db   $10                                         ; $79e4: $10
	ld   bc, $01a0                                   ; $79e5: $01 $a0 $01
	nop                                              ; $79e8: $00
	ld   b, $c1                                      ; $79e9: $06 $c1
	inc  bc                                          ; $79eb: $03
	and  b                                           ; $79ec: $a0
	rlca                                             ; $79ed: $07
	ld   [bc], a                                     ; $79ee: $02
	ld   bc, $01a0                                   ; $79ef: $01 $a0 $01
	nop                                              ; $79f2: $00
	rlca                                             ; $79f3: $07
	xor  l                                           ; $79f4: $ad
	nop                                              ; $79f5: $00
	pop  bc                                          ; $79f6: $c1
	inc  b                                           ; $79f7: $04
	and  b                                           ; $79f8: $a0
	add  hl, bc                                      ; $79f9: $09
	ld   l, b                                        ; $79fa: $68
	ld   bc, $06a0                                   ; $79fb: $01 $a0 $06
	sbc  c                                           ; $79fe: $99
	ld   bc, $01a0                                   ; $79ff: $01 $a0 $01
	sbc  c                                           ; $7a02: $99
	ld   b, $fd                                      ; $7a03: $06 $fd
	ldh  a, [$c1]                                    ; $7a05: $f0 $c1
	inc  bc                                          ; $7a07: $03
	and  b                                           ; $7a08: $a0
	ld   [$0101], sp                                 ; $7a09: $08 $01 $01
	and  b                                           ; $7a0c: $a0
	inc  b                                           ; $7a0d: $04
	nop                                              ; $7a0e: $00
	ld   bc, $f0b3                                   ; $7a0f: $01 $b3 $f0
	db   $fd                                         ; $7a12: $fd
	ldh  a, [$c1]                                    ; $7a13: $f0 $c1
	inc  bc                                          ; $7a15: $03
	and  b                                           ; $7a16: $a0
	rlca                                             ; $7a17: $07
	ld   [bc], a                                     ; $7a18: $02
	ld   bc, $01a0                                   ; $7a19: $01 $a0 $01
	nop                                              ; $7a1c: $00

jr_0fc_7a1d:
	rlca                                             ; $7a1d: $07
	or   c                                           ; $7a1e: $b1
	ldh  a, [$c1]                                    ; $7a1f: $f0 $c1
	inc  b                                           ; $7a21: $04
	and  b                                           ; $7a22: $a0
	add  hl, bc                                      ; $7a23: $09
	ld   l, b                                        ; $7a24: $68
	ld   bc, $06a0                                   ; $7a25: $01 $a0 $06
	sbc  c                                           ; $7a28: $99
	ld   bc, $01a0                                   ; $7a29: $01 $a0 $01
	sbc  c                                           ; $7a2c: $99
	ld   b, $c1                                      ; $7a2d: $06 $c1
	inc  bc                                          ; $7a2f: $03
	and  b                                           ; $7a30: $a0
	rlca                                             ; $7a31: $07
	ld   [bc], a                                     ; $7a32: $02
	ld   bc, $01a0                                   ; $7a33: $01 $a0 $01
	nop                                              ; $7a36: $00
	rlca                                             ; $7a37: $07
	and  b                                           ; $7a38: $a0
	dec  c                                           ; $7a39: $0d
	rla                                              ; $7a3a: $17
	ld   bc, $0aa0                                   ; $7a3b: $01 $a0 $0a
	db   $10                                         ; $7a3e: $10
	ld   bc, $01a0                                   ; $7a3f: $01 $a0 $01
	nop                                              ; $7a42: $00
	ld   b, $c1                                      ; $7a43: $06 $c1
	inc  b                                           ; $7a45: $04
	and  b                                           ; $7a46: $a0
	add  hl, bc                                      ; $7a47: $09
	ld   l, b                                        ; $7a48: $68
	ld   bc, $06a0                                   ; $7a49: $01 $a0 $06
	sbc  c                                           ; $7a4c: $99
	ld   bc, $01a0                                   ; $7a4d: $01 $a0 $01
	sbc  c                                           ; $7a50: $99
	ld   b, $ad                                      ; $7a51: $06 $ad
	nop                                              ; $7a53: $00
	dec  bc                                          ; $7a54: $0b
	nop                                              ; $7a55: $00
	add  hl, bc                                      ; $7a56: $09
	nop                                              ; $7a57: $00
	db   $fd                                         ; $7a58: $fd
	di                                               ; $7a59: $f3
	and  d                                           ; $7a5a: $a2
	nop                                              ; $7a5b: $00
	jp   $a308                                       ; $7a5c: $c3 $08 $a3


	inc  d                                           ; $7a5f: $14
	and  b                                           ; $7a60: $a0
	add  hl, bc                                      ; $7a61: $09
	jr   nz, @+$3a                                   ; $7a62: $20 $38

	and  b                                           ; $7a64: $a0
	inc  bc                                          ; $7a65: $03
	jr   nz, @+$0a                                   ; $7a66: $20 $08

	and  b                                           ; $7a68: $a0
	add  hl, bc                                      ; $7a69: $09
	ld   hl, $a038                                   ; $7a6a: $21 $38 $a0
	inc  bc                                          ; $7a6d: $03
	ld   hl, $a008                                   ; $7a6e: $21 $08 $a0
	add  hl, bc                                      ; $7a71: $09
	ld   [hl+], a                                    ; $7a72: $22
	inc  d                                           ; $7a73: $14
	ld   hl, $2204                                   ; $7a74: $21 $04 $22
	inc  b                                           ; $7a77: $04
	inc  h                                           ; $7a78: $24
	inc  b                                           ; $7a79: $04
	dec  h                                           ; $7a7a: $25
	jr   nz, jr_0fc_7a1d                             ; $7a7b: $20 $a0

	inc  bc                                          ; $7a7d: $03
	dec  h                                           ; $7a7e: $25
	inc  c                                           ; $7a7f: $0c
	and  b                                           ; $7a80: $a0
	add  hl, bc                                      ; $7a81: $09
	ld   [hl+], a                                    ; $7a82: $22
	inc  b                                           ; $7a83: $04
	dec  h                                           ; $7a84: $25
	ld   [$0427], sp                                 ; $7a85: $08 $27 $04
	dec  h                                           ; $7a88: $25
	inc  b                                           ; $7a89: $04
	inc  h                                           ; $7a8a: $24
	inc  e                                           ; $7a8b: $1c
	and  b                                           ; $7a8c: $a0
	inc  bc                                          ; $7a8d: $03
	inc  h                                           ; $7a8e: $24
	inc  b                                           ; $7a8f: $04
	and  b                                           ; $7a90: $a0
	add  hl, bc                                      ; $7a91: $09
	daa                                              ; $7a92: $27
	jr   jr_0fc_7abe                                 ; $7a93: $18 $29

	ld   [$2026], sp                                 ; $7a95: $08 $26 $20
	dec  h                                           ; $7a98: $25
	jr   @+$24                                       ; $7a99: $18 $22

	ld   [$1c21], sp                                 ; $7a9b: $08 $21 $1c
	and  b                                           ; $7a9e: $a0
	inc  bc                                          ; $7a9f: $03
	ld   hl, $1f04                                   ; $7aa0: $21 $04 $1f
	inc  b                                           ; $7aa3: $04
	and  b                                           ; $7aa4: $a0
	add  hl, bc                                      ; $7aa5: $09
	dec  d                                           ; $7aa6: $15
	inc  b                                           ; $7aa7: $04
	add  hl, de                                      ; $7aa8: $19
	inc  b                                           ; $7aa9: $04
	jr   nz, @+$06                                   ; $7aaa: $20 $04

	ld   [hl+], a                                    ; $7aac: $22
	inc  c                                           ; $7aad: $0c
	ld   hl, $2002                                   ; $7aae: $21 $02 $20
	ld   [bc], a                                     ; $7ab1: $02
	dec  de                                          ; $7ab2: $1b
	jr   nz, @+$21                                   ; $7ab3: $20 $1f

	ld   [$081a], sp                                 ; $7ab5: $08 $1a $08
	jr   nz, jr_0fc_7ac2                             ; $7ab8: $20 $08

	ld   [hl+], a                                    ; $7aba: $22
	ld   [$1024], sp                                 ; $7abb: $08 $24 $10

jr_0fc_7abe:
	jr   nz, @+$12                                   ; $7abe: $20 $10

	and  b                                           ; $7ac0: $a0
	inc  bc                                          ; $7ac1: $03

jr_0fc_7ac2:
	jr   nz, jr_0fc_7acc                             ; $7ac2: $20 $08

	and  b                                           ; $7ac4: $a0
	add  hl, bc                                      ; $7ac5: $09
	jr   nz, @+$0a                                   ; $7ac6: $20 $08

	ld   a, [de]                                     ; $7ac8: $1a
	ld   [$0819], sp                                 ; $7ac9: $08 $19 $08

jr_0fc_7acc:
	jr   nz, jr_0fc_7aee                             ; $7acc: $20 $20

	ld   hl, $2920                                   ; $7ace: $21 $20 $29
	db   $10                                         ; $7ad1: $10
	ld   hl, $1f10                                   ; $7ad2: $21 $10 $1f
	ld   [$0822], sp                                 ; $7ad5: $08 $22 $08
	inc  h                                           ; $7ad8: $24
	ld   [$0822], sp                                 ; $7ad9: $08 $22 $08
	dec  h                                           ; $7adc: $25
	jr   nz, jr_0fc_7b04                             ; $7add: $20 $25

	jr   jr_0fc_7b08                                 ; $7adf: $18 $27

	inc  b                                           ; $7ae1: $04
	dec  h                                           ; $7ae2: $25
	inc  b                                           ; $7ae3: $04
	inc  h                                           ; $7ae4: $24
	db   $10                                         ; $7ae5: $10
	jr   nz, jr_0fc_7aeb                             ; $7ae6: $20 $03

	ld   [hl+], a                                    ; $7ae8: $22
	inc  bc                                          ; $7ae9: $03
	inc  h                                           ; $7aea: $24

jr_0fc_7aeb:
	ld   [bc], a                                     ; $7aeb: $02
	ld   [hl+], a                                    ; $7aec: $22
	ld   [bc], a                                     ; $7aed: $02

jr_0fc_7aee:
	inc  h                                           ; $7aee: $24
	ld   [bc], a                                     ; $7aef: $02
	dec  h                                           ; $7af0: $25
	ld   [bc], a                                     ; $7af1: $02
	daa                                              ; $7af2: $27
	ld   [bc], a                                     ; $7af3: $02
	add  hl, hl                                      ; $7af4: $29
	jr   nz, @-$5e                                   ; $7af5: $20 $a0

	inc  bc                                          ; $7af7: $03
	add  hl, hl                                      ; $7af8: $29
	ld   [$09a0], sp                                 ; $7af9: $08 $a0 $09
	inc  hl                                          ; $7afc: $23
	ld   [$0826], sp                                 ; $7afd: $08 $26 $08
	add  hl, hl                                      ; $7b00: $29
	ld   [$0a2a], sp                                 ; $7b01: $08 $2a $0a

jr_0fc_7b04:
	add  hl, hl                                      ; $7b04: $29
	ld   [bc], a                                     ; $7b05: $02
	ld   a, [hl+]                                    ; $7b06: $2a
	ld   [bc], a                                     ; $7b07: $02

jr_0fc_7b08:
	add  hl, hl                                      ; $7b08: $29
	ld   [bc], a                                     ; $7b09: $02
	daa                                              ; $7b0a: $27
	inc  b                                           ; $7b0b: $04
	dec  h                                           ; $7b0c: $25
	inc  b                                           ; $7b0d: $04
	inc  h                                           ; $7b0e: $24
	inc  b                                           ; $7b0f: $04
	ld   [hl+], a                                    ; $7b10: $22
	inc  b                                           ; $7b11: $04
	ld   hl, $a01c                                   ; $7b12: $21 $1c $a0
	inc  bc                                          ; $7b15: $03
	ld   hl, $1f04                                   ; $7b16: $21 $04 $1f
	ld   [$09a0], sp                                 ; $7b19: $08 $a0 $09
	jr   nz, jr_0fc_7b26                             ; $7b1c: $20 $08

	dec  d                                           ; $7b1e: $15
	ld   [$0819], sp                                 ; $7b1f: $08 $19 $08
	ld   a, [de]                                     ; $7b22: $1a
	db   $10                                         ; $7b23: $10
	jr   nz, jr_0fc_7b36                             ; $7b24: $20 $10

jr_0fc_7b26:
	and  b                                           ; $7b26: $a0
	inc  bc                                          ; $7b27: $03
	jr   nz, jr_0fc_7b32                             ; $7b28: $20 $08

	and  b                                           ; $7b2a: $a0
	add  hl, bc                                      ; $7b2b: $09
	jr   nz, jr_0fc_7b36                             ; $7b2c: $20 $08

	ld   a, [de]                                     ; $7b2e: $1a
	ld   [bc], a                                     ; $7b2f: $02
	jr   nz, jr_0fc_7b34                             ; $7b30: $20 $02

jr_0fc_7b32:
	ld   a, [de]                                     ; $7b32: $1a
	ld   [bc], a                                     ; $7b33: $02

jr_0fc_7b34:
	jr   nz, jr_0fc_7b38                             ; $7b34: $20 $02

jr_0fc_7b36:
	ld   a, [de]                                     ; $7b36: $1a
	ld   [bc], a                                     ; $7b37: $02

jr_0fc_7b38:
	jr   nz, jr_0fc_7b3c                             ; $7b38: $20 $02

	ld   a, [de]                                     ; $7b3a: $1a
	ld   [bc], a                                     ; $7b3b: $02

jr_0fc_7b3c:
	jr   nz, jr_0fc_7b40                             ; $7b3c: $20 $02

	add  hl, de                                      ; $7b3e: $19
	inc  e                                           ; $7b3f: $1c

jr_0fc_7b40:
	and  b                                           ; $7b40: $a0
	inc  bc                                          ; $7b41: $03
	add  hl, de                                      ; $7b42: $19
	inc  b                                           ; $7b43: $04
	or   b                                           ; $7b44: $b0
	di                                               ; $7b45: $f3
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	dec  bc                                          ; $7b48: $0b
	nop                                              ; $7b49: $00
	add  hl, bc                                      ; $7b4a: $09
	nop                                              ; $7b4b: $00
	db   $fd                                         ; $7b4c: $fd
	di                                               ; $7b4d: $f3
	and  d                                           ; $7b4e: $a2
	ld   bc, $08c3                                   ; $7b4f: $01 $c3 $08
	and  e                                           ; $7b52: $a3
	ld   h, $a0                                      ; $7b53: $26 $a0
	dec  bc                                          ; $7b55: $0b
	add  hl, hl                                      ; $7b56: $29
	inc  h                                           ; $7b57: $24
	and  b                                           ; $7b58: $a0
	dec  b                                           ; $7b59: $05
	add  hl, hl                                      ; $7b5a: $29
	inc  b                                           ; $7b5b: $04
	and  b                                           ; $7b5c: $a0
	dec  c                                           ; $7b5d: $0d
	daa                                              ; $7b5e: $27
	ld   [$0c2a], sp                                 ; $7b5f: $08 $2a $0c
	add  hl, hl                                      ; $7b62: $29
	inc  b                                           ; $7b63: $04
	daa                                              ; $7b64: $27
	db   $10                                         ; $7b65: $10
	dec  h                                           ; $7b66: $25
	db   $10                                         ; $7b67: $10
	inc  h                                           ; $7b68: $24
	db   $10                                         ; $7b69: $10
	dec  h                                           ; $7b6a: $25
	db   $10                                         ; $7b6b: $10
	ld   a, [hl+]                                    ; $7b6c: $2a
	inc  h                                           ; $7b6d: $24
	and  b                                           ; $7b6e: $a0
	dec  b                                           ; $7b6f: $05
	ld   a, [hl+]                                    ; $7b70: $2a
	inc  b                                           ; $7b71: $04
	and  b                                           ; $7b72: $a0
	dec  c                                           ; $7b73: $0d
	add  hl, hl                                      ; $7b74: $29
	ld   [$0c30], sp                                 ; $7b75: $08 $30 $0c
	ld   a, [hl+]                                    ; $7b78: $2a
	inc  b                                           ; $7b79: $04
	add  hl, hl                                      ; $7b7a: $29
	jr   nz, @+$29                                   ; $7b7b: $20 $27

	inc  e                                           ; $7b7d: $1c
	and  b                                           ; $7b7e: $a0
	dec  b                                           ; $7b7f: $05
	daa                                              ; $7b80: $27
	inc  b                                           ; $7b81: $04
	and  b                                           ; $7b82: $a0
	dec  c                                           ; $7b83: $0d
	jr   nc, @+$28                                   ; $7b84: $30 $26

	and  b                                           ; $7b86: $a0
	dec  b                                           ; $7b87: $05
	jr   nc, jr_0fc_7b8c                             ; $7b88: $30 $02

	and  b                                           ; $7b8a: $a0
	dec  c                                           ; $7b8b: $0d

jr_0fc_7b8c:
	add  hl, hl                                      ; $7b8c: $29
	ld   [$082a], sp                                 ; $7b8d: $08 $2a $08
	jr   nc, jr_0fc_7b9a                             ; $7b90: $30 $08

	ld   [hl-], a                                    ; $7b92: $32
	db   $10                                         ; $7b93: $10
	ld   a, [hl+]                                    ; $7b94: $2a
	db   $10                                         ; $7b95: $10
	add  hl, hl                                      ; $7b96: $29
	db   $10                                         ; $7b97: $10
	daa                                              ; $7b98: $27
	db   $10                                         ; $7b99: $10

jr_0fc_7b9a:
	dec  h                                           ; $7b9a: $25
	ld   e, $a0                                      ; $7b9b: $1e $a0
	dec  b                                           ; $7b9d: $05
	dec  h                                           ; $7b9e: $25
	ld   [bc], a                                     ; $7b9f: $02
	and  b                                           ; $7ba0: $a0
	dec  c                                           ; $7ba1: $0d
	daa                                              ; $7ba2: $27
	ld   [$0825], sp                                 ; $7ba3: $08 $25 $08
	inc  h                                           ; $7ba6: $24
	inc  c                                           ; $7ba7: $0c
	dec  h                                           ; $7ba8: $25
	inc  b                                           ; $7ba9: $04
	daa                                              ; $7baa: $27
	jr   nz, @+$2a                                   ; $7bab: $20 $28

	inc  e                                           ; $7bad: $1c
	and  b                                           ; $7bae: $a0
	dec  b                                           ; $7baf: $05
	jr   z, jr_0fc_7bb6                              ; $7bb0: $28 $04

	and  b                                           ; $7bb2: $a0
	dec  c                                           ; $7bb3: $0d
	add  hl, hl                                      ; $7bb4: $29
	inc  h                                           ; $7bb5: $24

jr_0fc_7bb6:
	and  b                                           ; $7bb6: $a0
	dec  b                                           ; $7bb7: $05
	add  hl, hl                                      ; $7bb8: $29
	inc  b                                           ; $7bb9: $04
	and  b                                           ; $7bba: $a0
	dec  c                                           ; $7bbb: $0d
	daa                                              ; $7bbc: $27
	ld   [$0c2a], sp                                 ; $7bbd: $08 $2a $0c
	add  hl, hl                                      ; $7bc0: $29
	inc  b                                           ; $7bc1: $04
	daa                                              ; $7bc2: $27
	db   $10                                         ; $7bc3: $10
	dec  h                                           ; $7bc4: $25
	db   $10                                         ; $7bc5: $10
	inc  h                                           ; $7bc6: $24
	db   $10                                         ; $7bc7: $10
	dec  h                                           ; $7bc8: $25
	db   $10                                         ; $7bc9: $10
	ld   a, [hl+]                                    ; $7bca: $2a
	ld   h, $a0                                      ; $7bcb: $26 $a0
	dec  b                                           ; $7bcd: $05
	ld   a, [hl+]                                    ; $7bce: $2a
	ld   [bc], a                                     ; $7bcf: $02
	and  b                                           ; $7bd0: $a0
	dec  c                                           ; $7bd1: $0d
	add  hl, hl                                      ; $7bd2: $29
	ld   [$0c30], sp                                 ; $7bd3: $08 $30 $0c
	ld   a, [hl+]                                    ; $7bd6: $2a
	inc  b                                           ; $7bd7: $04
	add  hl, hl                                      ; $7bd8: $29
	jr   nz, jr_0fc_7c02                             ; $7bd9: $20 $27

	inc  e                                           ; $7bdb: $1c
	and  b                                           ; $7bdc: $a0
	dec  b                                           ; $7bdd: $05
	daa                                              ; $7bde: $27
	inc  b                                           ; $7bdf: $04
	and  b                                           ; $7be0: $a0
	dec  c                                           ; $7be1: $0d
	jr   nc, jr_0fc_7c0a                             ; $7be2: $30 $26

	and  b                                           ; $7be4: $a0
	dec  b                                           ; $7be5: $05
	jr   nc, jr_0fc_7bea                             ; $7be6: $30 $02

	and  b                                           ; $7be8: $a0
	dec  c                                           ; $7be9: $0d

jr_0fc_7bea:
	dec  hl                                          ; $7bea: $2b
	ld   [$0830], sp                                 ; $7beb: $08 $30 $08
	ld   sp, $3208                                   ; $7bee: $31 $08 $32
	db   $10                                         ; $7bf1: $10
	ld   a, [hl+]                                    ; $7bf2: $2a
	db   $10                                         ; $7bf3: $10
	dec  h                                           ; $7bf4: $25
	db   $10                                         ; $7bf5: $10
	daa                                              ; $7bf6: $27
	db   $10                                         ; $7bf7: $10
	add  hl, hl                                      ; $7bf8: $29
	jr   nz, jr_0fc_7c22                             ; $7bf9: $20 $27

	jr   nz, jr_0fc_7c22                             ; $7bfb: $20 $25

	inc  h                                           ; $7bfd: $24
	and  b                                           ; $7bfe: $a0
	dec  b                                           ; $7bff: $05
	dec  h                                           ; $7c00: $25
	inc  e                                           ; $7c01: $1c

jr_0fc_7c02:
	or   b                                           ; $7c02: $b0
	di                                               ; $7c03: $f3
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	dec  bc                                          ; $7c06: $0b
	ld   b, b                                        ; $7c07: $40
	ld   [bc], a                                     ; $7c08: $02
	ld   [bc], a                                     ; $7c09: $02

jr_0fc_7c0a:
	db   $fd                                         ; $7c0a: $fd
	di                                               ; $7c0b: $f3
	and  e                                           ; $7c0c: $a3
	inc  h                                           ; $7c0d: $24
	and  d                                           ; $7c0e: $a2
	ld   b, b                                        ; $7c0f: $40
	and  b                                           ; $7c10: $a0
	ld   [bc], a                                     ; $7c11: $02
	dec  h                                           ; $7c12: $25
	inc  b                                           ; $7c13: $04
	jr   nc, jr_0fc_7c1a                             ; $7c14: $30 $04

	dec  [hl]                                        ; $7c16: $35
	inc  b                                           ; $7c17: $04
	scf                                              ; $7c18: $37
	inc  b                                           ; $7c19: $04

jr_0fc_7c1a:
	add  hl, sp                                      ; $7c1a: $39
	inc  b                                           ; $7c1b: $04
	scf                                              ; $7c1c: $37
	inc  b                                           ; $7c1d: $04
	dec  [hl]                                        ; $7c1e: $35
	inc  b                                           ; $7c1f: $04
	jr   nc, jr_0fc_7c26                             ; $7c20: $30 $04

jr_0fc_7c22:
	dec  h                                           ; $7c22: $25
	inc  b                                           ; $7c23: $04
	jr   nc, jr_0fc_7c2a                             ; $7c24: $30 $04

jr_0fc_7c26:
	dec  [hl]                                        ; $7c26: $35
	inc  b                                           ; $7c27: $04
	scf                                              ; $7c28: $37
	inc  b                                           ; $7c29: $04

jr_0fc_7c2a:
	add  hl, sp                                      ; $7c2a: $39
	inc  b                                           ; $7c2b: $04
	scf                                              ; $7c2c: $37
	inc  b                                           ; $7c2d: $04
	dec  [hl]                                        ; $7c2e: $35
	inc  b                                           ; $7c2f: $04
	jr   nc, @+$06                                   ; $7c30: $30 $04

	dec  h                                           ; $7c32: $25
	inc  b                                           ; $7c33: $04
	ld   sp, $3504                                   ; $7c34: $31 $04 $35
	inc  b                                           ; $7c37: $04
	scf                                              ; $7c38: $37
	inc  b                                           ; $7c39: $04
	add  hl, sp                                      ; $7c3a: $39
	inc  b                                           ; $7c3b: $04
	scf                                              ; $7c3c: $37
	inc  b                                           ; $7c3d: $04
	dec  [hl]                                        ; $7c3e: $35
	inc  b                                           ; $7c3f: $04
	ld   sp, $2504                                   ; $7c40: $31 $04 $25
	inc  b                                           ; $7c43: $04
	ld   sp, $3504                                   ; $7c44: $31 $04 $35
	inc  b                                           ; $7c47: $04
	scf                                              ; $7c48: $37
	inc  b                                           ; $7c49: $04
	add  hl, sp                                      ; $7c4a: $39
	inc  b                                           ; $7c4b: $04
	scf                                              ; $7c4c: $37
	inc  b                                           ; $7c4d: $04
	add  hl, sp                                      ; $7c4e: $39
	inc  b                                           ; $7c4f: $04
	ld   sp, $2504                                   ; $7c50: $31 $04 $25
	inc  b                                           ; $7c53: $04
	ld   [hl-], a                                    ; $7c54: $32
	inc  b                                           ; $7c55: $04
	scf                                              ; $7c56: $37
	inc  b                                           ; $7c57: $04
	add  hl, sp                                      ; $7c58: $39
	inc  b                                           ; $7c59: $04
	ld   a, [hl-]                                    ; $7c5a: $3a
	inc  b                                           ; $7c5b: $04
	add  hl, sp                                      ; $7c5c: $39
	inc  b                                           ; $7c5d: $04
	scf                                              ; $7c5e: $37
	inc  b                                           ; $7c5f: $04
	ld   [hl-], a                                    ; $7c60: $32
	inc  b                                           ; $7c61: $04
	dec  h                                           ; $7c62: $25
	inc  b                                           ; $7c63: $04
	ld   [hl-], a                                    ; $7c64: $32
	inc  b                                           ; $7c65: $04
	scf                                              ; $7c66: $37
	inc  b                                           ; $7c67: $04
	add  hl, sp                                      ; $7c68: $39
	inc  b                                           ; $7c69: $04
	ld   a, [hl-]                                    ; $7c6a: $3a
	inc  b                                           ; $7c6b: $04
	add  hl, sp                                      ; $7c6c: $39
	inc  b                                           ; $7c6d: $04
	scf                                              ; $7c6e: $37
	inc  b                                           ; $7c6f: $04
	ld   [hl-], a                                    ; $7c70: $32
	inc  b                                           ; $7c71: $04
	jr   nz, jr_0fc_7c78                             ; $7c72: $20 $04

	ld   a, [hl+]                                    ; $7c74: $2a
	inc  b                                           ; $7c75: $04
	ld   [hl-], a                                    ; $7c76: $32
	inc  b                                           ; $7c77: $04

jr_0fc_7c78:
	scf                                              ; $7c78: $37
	inc  b                                           ; $7c79: $04
	ld   a, [hl-]                                    ; $7c7a: $3a
	inc  b                                           ; $7c7b: $04
	scf                                              ; $7c7c: $37
	inc  b                                           ; $7c7d: $04
	ld   [hl-], a                                    ; $7c7e: $32
	inc  b                                           ; $7c7f: $04
	ld   a, [hl+]                                    ; $7c80: $2a
	inc  b                                           ; $7c81: $04
	jr   nz, jr_0fc_7c88                             ; $7c82: $20 $04

	ld   a, [hl+]                                    ; $7c84: $2a
	inc  b                                           ; $7c85: $04
	inc  [hl]                                        ; $7c86: $34
	inc  b                                           ; $7c87: $04

jr_0fc_7c88:
	scf                                              ; $7c88: $37
	inc  b                                           ; $7c89: $04
	ld   a, [hl-]                                    ; $7c8a: $3a
	inc  b                                           ; $7c8b: $04
	scf                                              ; $7c8c: $37
	inc  b                                           ; $7c8d: $04
	inc  [hl]                                        ; $7c8e: $34
	inc  b                                           ; $7c8f: $04
	ld   a, [hl+]                                    ; $7c90: $2a
	inc  b                                           ; $7c91: $04
	add  hl, de                                      ; $7c92: $19
	inc  b                                           ; $7c93: $04
	jr   nc, jr_0fc_7c9a                             ; $7c94: $30 $04

	inc  [hl]                                        ; $7c96: $34
	inc  b                                           ; $7c97: $04
	scf                                              ; $7c98: $37
	inc  b                                           ; $7c99: $04

jr_0fc_7c9a:
	add  hl, sp                                      ; $7c9a: $39
	inc  b                                           ; $7c9b: $04
	scf                                              ; $7c9c: $37
	inc  b                                           ; $7c9d: $04
	inc  [hl]                                        ; $7c9e: $34
	inc  b                                           ; $7c9f: $04
	jr   nc, jr_0fc_7ca6                             ; $7ca0: $30 $04

	ld   [hl+], a                                    ; $7ca2: $22
	inc  b                                           ; $7ca3: $04
	jr   nc, jr_0fc_7caa                             ; $7ca4: $30 $04

jr_0fc_7ca6:
	ld   [hl-], a                                    ; $7ca6: $32
	inc  b                                           ; $7ca7: $04
	ld   [hl], $04                                   ; $7ca8: $36 $04

jr_0fc_7caa:
	add  hl, sp                                      ; $7caa: $39
	inc  b                                           ; $7cab: $04
	ld   [hl], $04                                   ; $7cac: $36 $04
	ld   [hl-], a                                    ; $7cae: $32
	inc  b                                           ; $7caf: $04
	jr   nc, jr_0fc_7cb6                             ; $7cb0: $30 $04

	daa                                              ; $7cb2: $27
	inc  b                                           ; $7cb3: $04
	ld   [hl-], a                                    ; $7cb4: $32
	inc  b                                           ; $7cb5: $04

jr_0fc_7cb6:
	scf                                              ; $7cb6: $37
	inc  b                                           ; $7cb7: $04
	add  hl, sp                                      ; $7cb8: $39
	inc  b                                           ; $7cb9: $04
	ld   b, d                                        ; $7cba: $42
	inc  b                                           ; $7cbb: $04
	add  hl, sp                                      ; $7cbc: $39
	inc  b                                           ; $7cbd: $04
	scf                                              ; $7cbe: $37
	inc  b                                           ; $7cbf: $04
	ld   [hl-], a                                    ; $7cc0: $32
	inc  b                                           ; $7cc1: $04
	ld   hl, $3404                                   ; $7cc2: $21 $04 $34
	inc  b                                           ; $7cc5: $04
	scf                                              ; $7cc6: $37
	inc  b                                           ; $7cc7: $04
	add  hl, sp                                      ; $7cc8: $39
	inc  b                                           ; $7cc9: $04
	ld   a, [hl-]                                    ; $7cca: $3a
	inc  b                                           ; $7ccb: $04
	add  hl, sp                                      ; $7ccc: $39
	inc  b                                           ; $7ccd: $04
	scf                                              ; $7cce: $37
	inc  b                                           ; $7ccf: $04
	inc  [hl]                                        ; $7cd0: $34
	inc  b                                           ; $7cd1: $04
	ld   [hl+], a                                    ; $7cd2: $22
	inc  b                                           ; $7cd3: $04
	add  hl, hl                                      ; $7cd4: $29
	inc  b                                           ; $7cd5: $04
	ld   [hl-], a                                    ; $7cd6: $32
	inc  b                                           ; $7cd7: $04
	dec  [hl]                                        ; $7cd8: $35
	inc  b                                           ; $7cd9: $04
	add  hl, sp                                      ; $7cda: $39
	inc  b                                           ; $7cdb: $04
	dec  [hl]                                        ; $7cdc: $35
	inc  b                                           ; $7cdd: $04
	ld   [hl-], a                                    ; $7cde: $32
	inc  b                                           ; $7cdf: $04
	add  hl, hl                                      ; $7ce0: $29
	inc  b                                           ; $7ce1: $04
	dec  de                                          ; $7ce2: $1b
	inc  b                                           ; $7ce3: $04
	ld   [hl-], a                                    ; $7ce4: $32
	inc  b                                           ; $7ce5: $04
	dec  [hl]                                        ; $7ce6: $35
	inc  b                                           ; $7ce7: $04
	scf                                              ; $7ce8: $37
	inc  b                                           ; $7ce9: $04
	dec  sp                                          ; $7cea: $3b
	inc  b                                           ; $7ceb: $04
	scf                                              ; $7cec: $37
	inc  b                                           ; $7ced: $04
	dec  [hl]                                        ; $7cee: $35
	inc  b                                           ; $7cef: $04
	ld   [hl-], a                                    ; $7cf0: $32
	inc  b                                           ; $7cf1: $04
	jr   nz, jr_0fc_7cf8                             ; $7cf2: $20 $04

	daa                                              ; $7cf4: $27
	inc  b                                           ; $7cf5: $04
	jr   nc, jr_0fc_7cfc                             ; $7cf6: $30 $04

jr_0fc_7cf8:
	inc  [hl]                                        ; $7cf8: $34
	inc  b                                           ; $7cf9: $04
	scf                                              ; $7cfa: $37
	inc  b                                           ; $7cfb: $04

jr_0fc_7cfc:
	inc  [hl]                                        ; $7cfc: $34
	inc  b                                           ; $7cfd: $04
	jr   nc, jr_0fc_7d04                             ; $7cfe: $30 $04

	daa                                              ; $7d00: $27
	inc  b                                           ; $7d01: $04
	jr   nz, jr_0fc_7d08                             ; $7d02: $20 $04

jr_0fc_7d04:
	jr   z, jr_0fc_7d0a                              ; $7d04: $28 $04

	jr   nc, jr_0fc_7d0c                             ; $7d06: $30 $04

jr_0fc_7d08:
	inc  [hl]                                        ; $7d08: $34
	inc  b                                           ; $7d09: $04

jr_0fc_7d0a:
	jr   c, jr_0fc_7d10                              ; $7d0a: $38 $04

jr_0fc_7d0c:
	inc  [hl]                                        ; $7d0c: $34
	inc  b                                           ; $7d0d: $04
	jr   nc, jr_0fc_7d14                             ; $7d0e: $30 $04

jr_0fc_7d10:
	jr   z, jr_0fc_7d16                              ; $7d10: $28 $04

	dec  d                                           ; $7d12: $15
	inc  b                                           ; $7d13: $04

jr_0fc_7d14:
	jr   nc, jr_0fc_7d1a                             ; $7d14: $30 $04

jr_0fc_7d16:
	dec  [hl]                                        ; $7d16: $35
	inc  b                                           ; $7d17: $04
	scf                                              ; $7d18: $37
	inc  b                                           ; $7d19: $04

jr_0fc_7d1a:
	add  hl, sp                                      ; $7d1a: $39
	inc  b                                           ; $7d1b: $04
	scf                                              ; $7d1c: $37
	inc  b                                           ; $7d1d: $04
	dec  [hl]                                        ; $7d1e: $35
	inc  b                                           ; $7d1f: $04
	jr   nc, jr_0fc_7d26                             ; $7d20: $30 $04

	dec  h                                           ; $7d22: $25
	inc  b                                           ; $7d23: $04
	jr   nc, jr_0fc_7d2a                             ; $7d24: $30 $04

jr_0fc_7d26:
	dec  [hl]                                        ; $7d26: $35
	inc  b                                           ; $7d27: $04
	scf                                              ; $7d28: $37
	inc  b                                           ; $7d29: $04

jr_0fc_7d2a:
	add  hl, sp                                      ; $7d2a: $39
	inc  b                                           ; $7d2b: $04
	scf                                              ; $7d2c: $37
	inc  b                                           ; $7d2d: $04
	dec  [hl]                                        ; $7d2e: $35
	inc  b                                           ; $7d2f: $04
	jr   nc, @+$06                                   ; $7d30: $30 $04

	dec  h                                           ; $7d32: $25
	inc  b                                           ; $7d33: $04
	ld   sp, $3504                                   ; $7d34: $31 $04 $35
	inc  b                                           ; $7d37: $04
	scf                                              ; $7d38: $37
	inc  b                                           ; $7d39: $04
	add  hl, sp                                      ; $7d3a: $39
	inc  b                                           ; $7d3b: $04
	scf                                              ; $7d3c: $37
	inc  b                                           ; $7d3d: $04
	dec  [hl]                                        ; $7d3e: $35
	inc  b                                           ; $7d3f: $04
	ld   sp, $2504                                   ; $7d40: $31 $04 $25
	inc  b                                           ; $7d43: $04
	ld   sp, $3504                                   ; $7d44: $31 $04 $35
	inc  b                                           ; $7d47: $04
	scf                                              ; $7d48: $37
	inc  b                                           ; $7d49: $04
	add  hl, sp                                      ; $7d4a: $39
	inc  b                                           ; $7d4b: $04
	scf                                              ; $7d4c: $37
	inc  b                                           ; $7d4d: $04
	add  hl, sp                                      ; $7d4e: $39
	inc  b                                           ; $7d4f: $04
	ld   sp, $1504                                   ; $7d50: $31 $04 $15
	inc  b                                           ; $7d53: $04
	ld   [hl-], a                                    ; $7d54: $32
	inc  b                                           ; $7d55: $04
	scf                                              ; $7d56: $37
	inc  b                                           ; $7d57: $04
	add  hl, sp                                      ; $7d58: $39
	inc  b                                           ; $7d59: $04
	ld   a, [hl-]                                    ; $7d5a: $3a
	inc  b                                           ; $7d5b: $04
	add  hl, sp                                      ; $7d5c: $39
	inc  b                                           ; $7d5d: $04
	scf                                              ; $7d5e: $37
	inc  b                                           ; $7d5f: $04
	ld   [hl-], a                                    ; $7d60: $32
	inc  b                                           ; $7d61: $04
	dec  h                                           ; $7d62: $25
	inc  b                                           ; $7d63: $04
	ld   [hl-], a                                    ; $7d64: $32
	inc  b                                           ; $7d65: $04
	scf                                              ; $7d66: $37
	inc  b                                           ; $7d67: $04
	add  hl, sp                                      ; $7d68: $39
	inc  b                                           ; $7d69: $04
	ld   a, [hl-]                                    ; $7d6a: $3a
	inc  b                                           ; $7d6b: $04
	add  hl, sp                                      ; $7d6c: $39
	inc  b                                           ; $7d6d: $04
	scf                                              ; $7d6e: $37
	inc  b                                           ; $7d6f: $04
	ld   [hl-], a                                    ; $7d70: $32
	inc  b                                           ; $7d71: $04
	jr   nz, jr_0fc_7d78                             ; $7d72: $20 $04

	ld   a, [hl+]                                    ; $7d74: $2a
	inc  b                                           ; $7d75: $04
	ld   [hl-], a                                    ; $7d76: $32
	inc  b                                           ; $7d77: $04

jr_0fc_7d78:
	scf                                              ; $7d78: $37
	inc  b                                           ; $7d79: $04
	ld   a, [hl-]                                    ; $7d7a: $3a
	inc  b                                           ; $7d7b: $04
	scf                                              ; $7d7c: $37
	inc  b                                           ; $7d7d: $04
	ld   [hl-], a                                    ; $7d7e: $32
	inc  b                                           ; $7d7f: $04
	ld   a, [hl+]                                    ; $7d80: $2a
	inc  b                                           ; $7d81: $04
	db   $10                                         ; $7d82: $10
	inc  b                                           ; $7d83: $04
	ld   a, [hl+]                                    ; $7d84: $2a
	inc  b                                           ; $7d85: $04
	inc  [hl]                                        ; $7d86: $34
	inc  b                                           ; $7d87: $04
	scf                                              ; $7d88: $37
	inc  b                                           ; $7d89: $04
	ld   a, [hl-]                                    ; $7d8a: $3a
	inc  b                                           ; $7d8b: $04
	scf                                              ; $7d8c: $37
	inc  b                                           ; $7d8d: $04
	inc  [hl]                                        ; $7d8e: $34
	inc  b                                           ; $7d8f: $04
	ld   a, [hl+]                                    ; $7d90: $2a
	inc  b                                           ; $7d91: $04
	add  hl, de                                      ; $7d92: $19
	inc  b                                           ; $7d93: $04
	jr   nc, jr_0fc_7d9a                             ; $7d94: $30 $04

	inc  [hl]                                        ; $7d96: $34
	inc  b                                           ; $7d97: $04
	scf                                              ; $7d98: $37
	inc  b                                           ; $7d99: $04

jr_0fc_7d9a:
	add  hl, sp                                      ; $7d9a: $39
	inc  b                                           ; $7d9b: $04
	scf                                              ; $7d9c: $37
	inc  b                                           ; $7d9d: $04
	inc  [hl]                                        ; $7d9e: $34
	inc  b                                           ; $7d9f: $04
	jr   nc, jr_0fc_7da6                             ; $7da0: $30 $04

	ld   [hl+], a                                    ; $7da2: $22
	inc  b                                           ; $7da3: $04
	jr   nc, jr_0fc_7daa                             ; $7da4: $30 $04

jr_0fc_7da6:
	inc  sp                                          ; $7da6: $33
	inc  b                                           ; $7da7: $04
	ld   [hl], $04                                   ; $7da8: $36 $04

jr_0fc_7daa:
	add  hl, sp                                      ; $7daa: $39
	inc  b                                           ; $7dab: $04
	ld   [hl], $04                                   ; $7dac: $36 $04
	inc  sp                                          ; $7dae: $33
	inc  b                                           ; $7daf: $04
	jr   nc, jr_0fc_7db6                             ; $7db0: $30 $04

	daa                                              ; $7db2: $27
	inc  b                                           ; $7db3: $04
	ld   [hl-], a                                    ; $7db4: $32
	inc  b                                           ; $7db5: $04

jr_0fc_7db6:
	scf                                              ; $7db6: $37
	inc  b                                           ; $7db7: $04
	add  hl, sp                                      ; $7db8: $39
	inc  b                                           ; $7db9: $04
	ld   b, d                                        ; $7dba: $42
	inc  b                                           ; $7dbb: $04
	add  hl, sp                                      ; $7dbc: $39
	inc  b                                           ; $7dbd: $04
	scf                                              ; $7dbe: $37
	inc  b                                           ; $7dbf: $04
	ld   [hl-], a                                    ; $7dc0: $32
	inc  b                                           ; $7dc1: $04
	rla                                              ; $7dc2: $17
	inc  b                                           ; $7dc3: $04
	ld   sp, $3704                                   ; $7dc4: $31 $04 $37
	inc  b                                           ; $7dc7: $04
	add  hl, sp                                      ; $7dc8: $39
	inc  b                                           ; $7dc9: $04
	ld   a, [hl-]                                    ; $7dca: $3a
	inc  b                                           ; $7dcb: $04
	add  hl, sp                                      ; $7dcc: $39
	inc  b                                           ; $7dcd: $04
	scf                                              ; $7dce: $37
	inc  b                                           ; $7dcf: $04
	ld   sp, $2004                                   ; $7dd0: $31 $04 $20
	inc  b                                           ; $7dd3: $04
	add  hl, hl                                      ; $7dd4: $29
	inc  b                                           ; $7dd5: $04
	jr   nc, jr_0fc_7ddc                             ; $7dd6: $30 $04

	dec  [hl]                                        ; $7dd8: $35
	inc  b                                           ; $7dd9: $04
	add  hl, sp                                      ; $7dda: $39
	inc  b                                           ; $7ddb: $04

jr_0fc_7ddc:
	dec  [hl]                                        ; $7ddc: $35
	inc  b                                           ; $7ddd: $04
	jr   nc, jr_0fc_7de4                             ; $7dde: $30 $04

	add  hl, hl                                      ; $7de0: $29
	inc  b                                           ; $7de1: $04
	jr   nz, jr_0fc_7de8                             ; $7de2: $20 $04

jr_0fc_7de4:
	ld   a, [hl+]                                    ; $7de4: $2a
	inc  b                                           ; $7de5: $04
	inc  [hl]                                        ; $7de6: $34
	inc  b                                           ; $7de7: $04

jr_0fc_7de8:
	scf                                              ; $7de8: $37
	inc  b                                           ; $7de9: $04
	ld   a, [hl-]                                    ; $7dea: $3a
	inc  b                                           ; $7deb: $04
	scf                                              ; $7dec: $37
	inc  b                                           ; $7ded: $04
	inc  [hl]                                        ; $7dee: $34
	inc  b                                           ; $7def: $04
	ld   a, [hl+]                                    ; $7df0: $2a
	inc  b                                           ; $7df1: $04
	dec  h                                           ; $7df2: $25
	inc  b                                           ; $7df3: $04
	jr   nc, jr_0fc_7dfa                             ; $7df4: $30 $04

	dec  [hl]                                        ; $7df6: $35
	inc  b                                           ; $7df7: $04
	scf                                              ; $7df8: $37
	inc  b                                           ; $7df9: $04

jr_0fc_7dfa:
	add  hl, sp                                      ; $7dfa: $39
	inc  b                                           ; $7dfb: $04
	scf                                              ; $7dfc: $37
	inc  b                                           ; $7dfd: $04
	dec  [hl]                                        ; $7dfe: $35
	inc  b                                           ; $7dff: $04
	jr   nc, jr_0fc_7e06                             ; $7e00: $30 $04

	dec  d                                           ; $7e02: $15
	inc  b                                           ; $7e03: $04
	jr   nc, jr_0fc_7e0a                             ; $7e04: $30 $04

jr_0fc_7e06:
	dec  [hl]                                        ; $7e06: $35
	inc  b                                           ; $7e07: $04
	scf                                              ; $7e08: $37
	inc  b                                           ; $7e09: $04

jr_0fc_7e0a:
	add  hl, sp                                      ; $7e0a: $39
	inc  b                                           ; $7e0b: $04
	scf                                              ; $7e0c: $37
	inc  b                                           ; $7e0d: $04
	dec  [hl]                                        ; $7e0e: $35
	inc  b                                           ; $7e0f: $04
	jr   nc, jr_0fc_7e16                             ; $7e10: $30 $04

	or   b                                           ; $7e12: $b0
	di                                               ; $7e13: $f3
	rst  $38                                         ; $7e14: $ff
	rst  $38                                         ; $7e15: $ff

jr_0fc_7e16:
	dec  bc                                          ; $7e16: $0b
	nop                                              ; $7e17: $00
	add  hl, bc                                      ; $7e18: $09
	nop                                              ; $7e19: $00
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
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
