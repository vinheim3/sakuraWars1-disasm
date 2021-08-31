; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

	jp   nc, $8c01                                   ; $4000: $d2 $01 $8c

	rst  $38                                         ; $4003: $ff
	ld   [bc], a                                     ; $4004: $02
	nop                                              ; $4005: $00
	rst  $38                                         ; $4006: $ff
	nop                                              ; $4007: $00
	add  c                                           ; $4008: $81
	rst  $38                                         ; $4009: $ff
	nop                                              ; $400a: $00
	cp   $81                                         ; $400b: $fe $81
	rst  $38                                         ; $400d: $ff
	nop                                              ; $400e: $00
	cp   $83                                         ; $400f: $fe $83
	rst  $38                                         ; $4011: $ff
	ld   [bc], a                                     ; $4012: $02
	nop                                              ; $4013: $00
	rst  $38                                         ; $4014: $ff
	nop                                              ; $4015: $00
	add  c                                           ; $4016: $81
	rst  $38                                         ; $4017: $ff
	inc  b                                           ; $4018: $04
	daa                                              ; $4019: $27
	rst  $38                                         ; $401a: $ff
	ld   hl, sp-$01                                  ; $401b: $f8 $ff
	ld   a, b                                        ; $401d: $78
	add  c                                           ; $401e: $81
	rst  $38                                         ; $401f: $ff
	inc  b                                           ; $4020: $04
	or   c                                           ; $4021: $b1
	rst  $38                                         ; $4022: $ff
	ld   d, $ff                                      ; $4023: $16 $ff
	nop                                              ; $4025: $00
	add  c                                           ; $4026: $81
	rst  $38                                         ; $4027: $ff
	inc  c                                           ; $4028: $0c
	db   $f4                                         ; $4029: $f4
	rst  $38                                         ; $402a: $ff
	ccf                                              ; $402b: $3f
	rst  $38                                         ; $402c: $ff
	db   $eb                                         ; $402d: $eb
	rst  $38                                         ; $402e: $ff
	db   $eb                                         ; $402f: $eb
	rst  $38                                         ; $4030: $ff
	ei                                               ; $4031: $fb
	rst  $38                                         ; $4032: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4033: $cf
	rst  $38                                         ; $4034: $ff
	nop                                              ; $4035: $00
	add  c                                           ; $4036: $81
	rst  $38                                         ; $4037: $ff
	inc  c                                           ; $4038: $0c
	add  e                                           ; $4039: $83
	rst  $38                                         ; $403a: $ff
	cp   $ff                                         ; $403b: $fe $ff
	ld   c, [hl]                                     ; $403d: $4e
	rst  $38                                         ; $403e: $ff
	ld   a, a                                        ; $403f: $7f
	rst  $38                                         ; $4040: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4041: $cf
	rst  $38                                         ; $4042: $ff
	ld   a, h                                        ; $4043: $7c
	rst  $38                                         ; $4044: $ff
	nop                                              ; $4045: $00
	add  c                                           ; $4046: $81
	rst  $38                                         ; $4047: $ff
	inc  c                                           ; $4048: $0c
	sbc  h                                           ; $4049: $9c
	rst  $38                                         ; $404a: $ff
	ld   h, e                                        ; $404b: $63
	rst  $38                                         ; $404c: $ff
	ld   h, e                                        ; $404d: $63
	rst  $38                                         ; $404e: $ff
	sbc  h                                           ; $404f: $9c
	rst  $38                                         ; $4050: $ff
	sbc  e                                           ; $4051: $9b
	rst  $38                                         ; $4052: $ff
	ld   h, h                                        ; $4053: $64
	rst  $38                                         ; $4054: $ff
	nop                                              ; $4055: $00
	add  c                                           ; $4056: $81
	rst  $38                                         ; $4057: $ff
	inc  c                                           ; $4058: $0c
	db   $fc                                         ; $4059: $fc
	rst  $38                                         ; $405a: $ff
	inc  sp                                          ; $405b: $33
	rst  $38                                         ; $405c: $ff
	inc  a                                           ; $405d: $3c
	rst  $38                                         ; $405e: $ff
	db   $f4                                         ; $405f: $f4
	rst  $38                                         ; $4060: $ff
	ld   [hl], $ff                                   ; $4061: $36 $ff
	adc  $ff                                         ; $4063: $ce $ff
	nop                                              ; $4065: $00
	add  c                                           ; $4066: $81
	rst  $38                                         ; $4067: $ff
	nop                                              ; $4068: $00
	pop  bc                                          ; $4069: $c1
	add  c                                           ; $406a: $81
	rst  $38                                         ; $406b: $ff
	nop                                              ; $406c: $00
	rst  $20                                         ; $406d: $e7
	add  c                                           ; $406e: $81
	rst  $38                                         ; $406f: $ff
	inc  b                                           ; $4070: $04
	rst  $20                                         ; $4071: $e7
	rst  $38                                         ; $4072: $ff
	ld   a, $ff                                      ; $4073: $3e $ff
	nop                                              ; $4075: $00
	add  c                                           ; $4076: $81
	rst  $38                                         ; $4077: $ff
	inc  c                                           ; $4078: $0c
	adc  c                                           ; $4079: $89
	rst  $38                                         ; $407a: $ff
	sub  $ff                                         ; $407b: $d6 $ff
	ei                                               ; $407d: $fb
	rst  $38                                         ; $407e: $ff
	di                                               ; $407f: $f3
	rst  $38                                         ; $4080: $ff
	push de                                          ; $4081: $d5
	rst  $38                                         ; $4082: $ff
	ld   a, l                                        ; $4083: $7d
	rst  $38                                         ; $4084: $ff
	nop                                              ; $4085: $00
	add  c                                           ; $4086: $81
	rst  $38                                         ; $4087: $ff
	inc  c                                           ; $4088: $0c
	inc  a                                           ; $4089: $3c
	rst  $38                                         ; $408a: $ff
	rst  JumpTable                                         ; $408b: $df
	rst  $38                                         ; $408c: $ff
	rra                                              ; $408d: $1f
	rst  $38                                         ; $408e: $ff
	sbc  a                                           ; $408f: $9f
	rst  $38                                         ; $4090: $ff
	ld   a, a                                        ; $4091: $7f
	rst  $38                                         ; $4092: $ff
	db   $e3                                         ; $4093: $e3
	rst  $38                                         ; $4094: $ff
	nop                                              ; $4095: $00
	add  c                                           ; $4096: $81
	rst  $38                                         ; $4097: $ff
	inc  c                                           ; $4098: $0c
	inc  bc                                          ; $4099: $03
	rst  $38                                         ; $409a: $ff
	inc  bc                                          ; $409b: $03
	rst  $38                                         ; $409c: $ff
	rlca                                             ; $409d: $07
	rst  $38                                         ; $409e: $ff
	rlca                                             ; $409f: $07
	rst  $38                                         ; $40a0: $ff
	rlca                                             ; $40a1: $07
	rst  $38                                         ; $40a2: $ff
	ld   hl, sp-$01                                  ; $40a3: $f8 $ff
	nop                                              ; $40a5: $00
	add  c                                           ; $40a6: $81
	rst  $38                                         ; $40a7: $ff
	ld   [bc], a                                     ; $40a8: $02
	call z, $fcff                                    ; $40a9: $cc $ff $fc
	add  c                                           ; $40ac: $81
	rst  $38                                         ; $40ad: $ff
	ld   b, $b8                                      ; $40ae: $06 $b8
	rst  $38                                         ; $40b0: $ff
	ld   hl, sp-$01                                  ; $40b1: $f8 $ff
	ld   [hl], b                                     ; $40b3: $70
	rst  $38                                         ; $40b4: $ff
	nop                                              ; $40b5: $00
	add  c                                           ; $40b6: $81
	rst  $38                                         ; $40b7: $ff
	inc  c                                           ; $40b8: $0c
	inc  e                                           ; $40b9: $1c
	rst  $38                                         ; $40ba: $ff
	ld   a, a                                        ; $40bb: $7f
	rst  $38                                         ; $40bc: $ff
	ei                                               ; $40bd: $fb
	rst  $38                                         ; $40be: $ff
	ld   l, b                                        ; $40bf: $68
	rst  $38                                         ; $40c0: $ff
	rrca                                             ; $40c1: $0f
	rst  $38                                         ; $40c2: $ff
	nop                                              ; $40c3: $00
	rst  $38                                         ; $40c4: $ff
	nop                                              ; $40c5: $00
	add  c                                           ; $40c6: $81
	rst  $38                                         ; $40c7: $ff
	nop                                              ; $40c8: $00
	ld   sp, hl                                      ; $40c9: $f9
	add  c                                           ; $40ca: $81
	rst  $38                                         ; $40cb: $ff
	ld   [rAUDENA], sp                                 ; $40cc: $08 $26 $ff
	and  $ff                                         ; $40cf: $e6 $ff
	and  $ff                                         ; $40d1: $e6 $ff
	rst  JumpTable                                         ; $40d3: $df
	rst  $38                                         ; $40d4: $ff
	nop                                              ; $40d5: $00
	add  c                                           ; $40d6: $81
	rst  $38                                         ; $40d7: $ff
	nop                                              ; $40d8: $00
	ld   a, a                                        ; $40d9: $7f
	add  e                                           ; $40da: $83
	rst  $38                                         ; $40db: $ff
	ld   b, $7f                                      ; $40dc: $06 $7f
	rst  $38                                         ; $40de: $ff
	ld   a, a                                        ; $40df: $7f
	rst  $38                                         ; $40e0: $ff
	add  b                                           ; $40e1: $80
	rst  $38                                         ; $40e2: $ff
	nop                                              ; $40e3: $00
	adc  e                                           ; $40e4: $8b
	rst  $38                                         ; $40e5: $ff
	ld   [bc], a                                     ; $40e6: $02
	nop                                              ; $40e7: $00
	rst  $38                                         ; $40e8: $ff
	nop                                              ; $40e9: $00
	adc  h                                           ; $40ea: $8c
	rst  $38                                         ; $40eb: $ff
	add  b                                           ; $40ec: $80
	nop                                              ; $40ed: $00
	add  c                                           ; $40ee: $81
	rst  $38                                         ; $40ef: $ff
	nop                                              ; $40f0: $00
	cp   $81                                         ; $40f1: $fe $81
	rst  $38                                         ; $40f3: $ff
	nop                                              ; $40f4: $00
	cp   $84                                         ; $40f5: $fe $84
	rst  $38                                         ; $40f7: $ff
	add  b                                           ; $40f8: $80
	nop                                              ; $40f9: $00
	add  c                                           ; $40fa: $81
	rst  $38                                         ; $40fb: $ff
	inc  b                                           ; $40fc: $04
	daa                                              ; $40fd: $27
	rst  $38                                         ; $40fe: $ff
	ld   hl, sp-$01                                  ; $40ff: $f8 $ff
	ld   a, b                                        ; $4101: $78
	add  c                                           ; $4102: $81
	rst  $38                                         ; $4103: $ff
	inc  b                                           ; $4104: $04
	or   c                                           ; $4105: $b1
	rst  $38                                         ; $4106: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4107: $cf
	ld   h, $00                                      ; $4108: $26 $00
	add  c                                           ; $410a: $81
	rst  $38                                         ; $410b: $ff
	inc  c                                           ; $410c: $0c
	db   $f4                                         ; $410d: $f4
	rst  $38                                         ; $410e: $ff
	ccf                                              ; $410f: $3f
	rst  $38                                         ; $4110: $ff
	db   $eb                                         ; $4111: $eb
	rst  $38                                         ; $4112: $ff
	db   $eb                                         ; $4113: $eb
	rst  $38                                         ; $4114: $ff
	ei                                               ; $4115: $fb
	rst  $38                                         ; $4116: $ff
	cp   e                                           ; $4117: $bb
	adc  e                                           ; $4118: $8b
	nop                                              ; $4119: $00
	add  c                                           ; $411a: $81
	rst  $38                                         ; $411b: $ff
	ld   [$ff83], sp                                 ; $411c: $08 $83 $ff
	cp   $ff                                         ; $411f: $fe $ff
	ld   c, [hl]                                     ; $4121: $4e
	rst  $38                                         ; $4122: $ff
	ld   a, a                                        ; $4123: $7f
	rst  $38                                         ; $4124: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4125: $cf
	add  b                                           ; $4126: $80
	rst  $38                                         ; $4127: $ff
	ld   bc, $007c                                   ; $4128: $01 $7c $00
	add  c                                           ; $412b: $81
	rst  $38                                         ; $412c: $ff
	inc  c                                           ; $412d: $0c
	sbc  h                                           ; $412e: $9c
	rst  $38                                         ; $412f: $ff
	ld   h, e                                        ; $4130: $63
	rst  $38                                         ; $4131: $ff
	ld   h, e                                        ; $4132: $63
	rst  $38                                         ; $4133: $ff
	sbc  h                                           ; $4134: $9c
	rst  $38                                         ; $4135: $ff
	sbc  e                                           ; $4136: $9b
	rst  $38                                         ; $4137: $ff
	cp   $65                                         ; $4138: $fe $65
	nop                                              ; $413a: $00
	add  c                                           ; $413b: $81
	rst  $38                                         ; $413c: $ff
	inc  c                                           ; $413d: $0c
	db   $fc                                         ; $413e: $fc
	rst  $38                                         ; $413f: $ff
	inc  sp                                          ; $4140: $33
	rst  $38                                         ; $4141: $ff
	inc  a                                           ; $4142: $3c
	rst  $38                                         ; $4143: $ff
	db   $f4                                         ; $4144: $f4
	rst  $38                                         ; $4145: $ff
	ld   [hl], $ff                                   ; $4146: $36 $ff
	ld   sp, hl                                      ; $4148: $f9
	ret  z                                           ; $4149: $c8

	nop                                              ; $414a: $00
	add  c                                           ; $414b: $81
	rst  $38                                         ; $414c: $ff
	nop                                              ; $414d: $00
	pop  bc                                          ; $414e: $c1
	add  c                                           ; $414f: $81
	rst  $38                                         ; $4150: $ff
	nop                                              ; $4151: $00
	rst  $20                                         ; $4152: $e7
	add  c                                           ; $4153: $81
	rst  $38                                         ; $4154: $ff
	inc  b                                           ; $4155: $04
	rst  $20                                         ; $4156: $e7
	rst  $38                                         ; $4157: $ff
	ld   a, a                                        ; $4158: $7f
	cp   [hl]                                        ; $4159: $be
	nop                                              ; $415a: $00
	add  c                                           ; $415b: $81
	rst  $38                                         ; $415c: $ff
	inc  c                                           ; $415d: $0c
	adc  c                                           ; $415e: $89
	rst  $38                                         ; $415f: $ff
	sub  $ff                                         ; $4160: $d6 $ff
	ei                                               ; $4162: $fb
	rst  $38                                         ; $4163: $ff
	di                                               ; $4164: $f3
	rst  $38                                         ; $4165: $ff
	push de                                          ; $4166: $d5
	rst  $38                                         ; $4167: $ff
	pop  hl                                          ; $4168: $e1
	ld   h, e                                        ; $4169: $63
	nop                                              ; $416a: $00
	add  c                                           ; $416b: $81
	rst  $38                                         ; $416c: $ff
	inc  c                                           ; $416d: $0c
	inc  a                                           ; $416e: $3c
	rst  $38                                         ; $416f: $ff
	rst  JumpTable                                         ; $4170: $df
	rst  $38                                         ; $4171: $ff
	rra                                              ; $4172: $1f
	rst  $38                                         ; $4173: $ff
	sbc  a                                           ; $4174: $9f
	rst  $38                                         ; $4175: $ff
	ld   a, a                                        ; $4176: $7f
	rst  $38                                         ; $4177: $ff
	sbc  a                                           ; $4178: $9f
	add  e                                           ; $4179: $83
	nop                                              ; $417a: $00
	add  c                                           ; $417b: $81
	rst  $38                                         ; $417c: $ff
	ld   a, [bc]                                     ; $417d: $0a
	inc  bc                                          ; $417e: $03
	rst  $38                                         ; $417f: $ff
	inc  bc                                          ; $4180: $03
	rst  $38                                         ; $4181: $ff
	rlca                                             ; $4182: $07
	rst  $38                                         ; $4183: $ff
	rlca                                             ; $4184: $07
	rst  $38                                         ; $4185: $ff
	rlca                                             ; $4186: $07
	rst  $38                                         ; $4187: $ff
	rlca                                             ; $4188: $07
	add  b                                           ; $4189: $80
	nop                                              ; $418a: $00
	add  c                                           ; $418b: $81
	rst  $38                                         ; $418c: $ff
	ld   [bc], a                                     ; $418d: $02
	call z, $fcff                                    ; $418e: $cc $ff $fc
	add  c                                           ; $4191: $81
	rst  $38                                         ; $4192: $ff
	ld   b, $b8                                      ; $4193: $06 $b8
	rst  $38                                         ; $4195: $ff
	ld   hl, sp-$01                                  ; $4196: $f8 $ff
	ld   a, [$0075]                                  ; $4198: $fa $75 $00
	add  c                                           ; $419b: $81
	rst  $38                                         ; $419c: $ff
	inc  c                                           ; $419d: $0c
	inc  e                                           ; $419e: $1c
	rst  $38                                         ; $419f: $ff
	ld   a, a                                        ; $41a0: $7f
	rst  $38                                         ; $41a1: $ff
	ei                                               ; $41a2: $fb
	rst  $38                                         ; $41a3: $ff
	ld   l, b                                        ; $41a4: $68
	rst  $38                                         ; $41a5: $ff
	rrca                                             ; $41a6: $0f
	rst  $38                                         ; $41a7: $ff
	ld   a, [hl]                                     ; $41a8: $7e
	add  c                                           ; $41a9: $81
	nop                                              ; $41aa: $00
	add  c                                           ; $41ab: $81
	rst  $38                                         ; $41ac: $ff
	nop                                              ; $41ad: $00
	ld   sp, hl                                      ; $41ae: $f9
	add  c                                           ; $41af: $81
	rst  $38                                         ; $41b0: $ff
	ld   [rAUDENA], sp                                 ; $41b1: $08 $26 $ff
	and  $ff                                         ; $41b4: $e6 $ff
	and  $ff                                         ; $41b6: $e6 $ff
	or   l                                           ; $41b8: $b5
	sub  l                                           ; $41b9: $95
	nop                                              ; $41ba: $00
	add  c                                           ; $41bb: $81
	rst  $38                                         ; $41bc: $ff
	nop                                              ; $41bd: $00
	ld   a, a                                        ; $41be: $7f
	add  e                                           ; $41bf: $83
	rst  $38                                         ; $41c0: $ff
	ld   [bc], a                                     ; $41c1: $02
	ld   a, a                                        ; $41c2: $7f
	rst  $38                                         ; $41c3: $ff
	ld   a, a                                        ; $41c4: $7f
	add  b                                           ; $41c5: $80
	rst  $38                                         ; $41c6: $ff
	ld   bc, $0080                                   ; $41c7: $01 $80 $00
	adc  h                                           ; $41ca: $8c
	rst  $38                                         ; $41cb: $ff
	add  b                                           ; $41cc: $80
	nop                                              ; $41cd: $00
	add  c                                           ; $41ce: $81
	rst  $38                                         ; $41cf: $ff
	ld   bc, $ff00                                   ; $41d0: $01 $00 $ff
	adc  c                                           ; $41d3: $89
	nop                                              ; $41d4: $00
	add  c                                           ; $41d5: $81
	rst  $38                                         ; $41d6: $ff
	ld   bc, $ff00                                   ; $41d7: $01 $00 $ff
	adc  b                                           ; $41da: $88
	nop                                              ; $41db: $00
	dec  b                                           ; $41dc: $05
	ld   b, $ff                                      ; $41dd: $06 $ff
	cp   a                                           ; $41df: $bf
	rst  $38                                         ; $41e0: $ff
	ld   b, [hl]                                     ; $41e1: $46
	rst  $38                                         ; $41e2: $ff
	adc  b                                           ; $41e3: $88
	nop                                              ; $41e4: $00
	dec  b                                           ; $41e5: $05
	dec  bc                                          ; $41e6: $0b
	rst  $38                                         ; $41e7: $ff
	ei                                               ; $41e8: $fb
	rst  $38                                         ; $41e9: $ff
	rrca                                             ; $41ea: $0f
	rst  $38                                         ; $41eb: $ff
	adc  b                                           ; $41ec: $88
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	ld   c, h                                        ; $41ef: $4c
	add  c                                           ; $41f0: $81
	rst  $38                                         ; $41f1: $ff
	ld   bc, $ff4c                                   ; $41f2: $01 $4c $ff
	adc  b                                           ; $41f5: $88
	nop                                              ; $41f6: $00
	dec  b                                           ; $41f7: $05
	rst  $20                                         ; $41f8: $e7
	rst  $38                                         ; $41f9: $ff
	db   $fc                                         ; $41fa: $fc
	rst  $38                                         ; $41fb: $ff
	db   $e4                                         ; $41fc: $e4
	rst  $38                                         ; $41fd: $ff
	adc  b                                           ; $41fe: $88
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	rrca                                             ; $4201: $0f
	add  c                                           ; $4202: $81
	rst  $38                                         ; $4203: $ff
	ld   bc, $ff0f                                   ; $4204: $01 $0f $ff
	adc  b                                           ; $4207: $88
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	and  [hl]                                        ; $420a: $a6
	add  c                                           ; $420b: $81
	rst  $38                                         ; $420c: $ff
	ld   bc, $ffa6                                   ; $420d: $01 $a6 $ff
	adc  b                                           ; $4210: $88
	nop                                              ; $4211: $00
	dec  b                                           ; $4212: $05
	ld   d, a                                        ; $4213: $57
	rst  $38                                         ; $4214: $ff
	push af                                          ; $4215: $f5
	rst  $38                                         ; $4216: $ff
	ld   e, l                                        ; $4217: $5d
	rst  $38                                         ; $4218: $ff
	adc  b                                           ; $4219: $88
	nop                                              ; $421a: $00
	dec  b                                           ; $421b: $05
	adc  a                                           ; $421c: $8f
	rst  $38                                         ; $421d: $ff
	or   e                                           ; $421e: $b3
	rst  $38                                         ; $421f: $ff
	jp   $88ff                                       ; $4220: $c3 $ff $88


	nop                                              ; $4223: $00
	dec  b                                           ; $4224: $05
	cp   $ff                                         ; $4225: $fe $ff
	ld   b, c                                        ; $4227: $41
	rst  $38                                         ; $4228: $ff
	ld   b, b                                        ; $4229: $40
	rst  $38                                         ; $422a: $ff
	adc  b                                           ; $422b: $88
	nop                                              ; $422c: $00
	dec  b                                           ; $422d: $05
	or   a                                           ; $422e: $b7
	rst  $38                                         ; $422f: $ff
	ld   a, h                                        ; $4230: $7c
	rst  $38                                         ; $4231: $ff
	inc  [hl]                                        ; $4232: $34
	rst  $38                                         ; $4233: $ff
	adc  b                                           ; $4234: $88
	nop                                              ; $4235: $00
	dec  b                                           ; $4236: $05
	di                                               ; $4237: $f3
	rst  $38                                         ; $4238: $ff
	set  7, a                                        ; $4239: $cb $ff
	rst  ToBoot                                         ; $423b: $c7
	rst  $38                                         ; $423c: $ff
	adc  b                                           ; $423d: $88
	nop                                              ; $423e: $00
	dec  b                                           ; $423f: $05
	ld   d, l                                        ; $4240: $55
	rst  $38                                         ; $4241: $ff
	ld   [hl], l                                     ; $4242: $75
	rst  $38                                         ; $4243: $ff
	rst  JumpTable                                         ; $4244: $df
	rst  $38                                         ; $4245: $ff
	adc  b                                           ; $4246: $88
	nop                                              ; $4247: $00
	nop                                              ; $4248: $00
	add  b                                           ; $4249: $80
	add  c                                           ; $424a: $81
	rst  $38                                         ; $424b: $ff
	ld   bc, $ff80                                   ; $424c: $01 $80 $ff
	adc  c                                           ; $424f: $89
	nop                                              ; $4250: $00
	add  c                                           ; $4251: $81
	rst  $38                                         ; $4252: $ff
	ld   bc, $ff00                                   ; $4253: $01 $00 $ff
	adc  c                                           ; $4256: $89
	nop                                              ; $4257: $00
	sub  c                                           ; $4258: $91
	rst  $38                                         ; $4259: $ff
	nop                                              ; $425a: $00
	cp   $81                                         ; $425b: $fe $81
	rst  $38                                         ; $425d: $ff
	nop                                              ; $425e: $00
	cp   $89                                         ; $425f: $fe $89
	rst  $38                                         ; $4261: $ff
	inc  b                                           ; $4262: $04
	daa                                              ; $4263: $27
	rst  $38                                         ; $4264: $ff
	ld   hl, sp-$01                                  ; $4265: $f8 $ff
	ld   a, b                                        ; $4267: $78
	add  c                                           ; $4268: $81
	rst  $38                                         ; $4269: $ff
	inc  b                                           ; $426a: $04
	or   c                                           ; $426b: $b1
	rst  $38                                         ; $426c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $426d: $cf
	rst  $38                                         ; $426e: $ff
	reti                                             ; $426f: $d9


	add  c                                           ; $4270: $81
	rst  $38                                         ; $4271: $ff
	inc  c                                           ; $4272: $0c
	db   $f4                                         ; $4273: $f4
	rst  $38                                         ; $4274: $ff
	ccf                                              ; $4275: $3f
	rst  $38                                         ; $4276: $ff
	db   $eb                                         ; $4277: $eb
	rst  $38                                         ; $4278: $ff
	db   $eb                                         ; $4279: $eb
	rst  $38                                         ; $427a: $ff
	ei                                               ; $427b: $fb
	rst  $38                                         ; $427c: $ff
	cp   e                                           ; $427d: $bb
	rst  $38                                         ; $427e: $ff
	ld   [hl], h                                     ; $427f: $74
	add  c                                           ; $4280: $81
	rst  $38                                         ; $4281: $ff
	ld   [$ff83], sp                                 ; $4282: $08 $83 $ff
	cp   $ff                                         ; $4285: $fe $ff
	ld   c, [hl]                                     ; $4287: $4e
	rst  $38                                         ; $4288: $ff
	ld   a, a                                        ; $4289: $7f
	rst  $38                                         ; $428a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428b: $cf
	add  c                                           ; $428c: $81
	rst  $38                                         ; $428d: $ff
	nop                                              ; $428e: $00
	add  e                                           ; $428f: $83
	add  c                                           ; $4290: $81
	rst  $38                                         ; $4291: $ff
	inc  c                                           ; $4292: $0c
	sbc  h                                           ; $4293: $9c
	rst  $38                                         ; $4294: $ff
	ld   h, e                                        ; $4295: $63
	rst  $38                                         ; $4296: $ff
	ld   h, e                                        ; $4297: $63
	rst  $38                                         ; $4298: $ff
	sbc  h                                           ; $4299: $9c
	rst  $38                                         ; $429a: $ff
	sbc  e                                           ; $429b: $9b
	rst  $38                                         ; $429c: $ff
	cp   $ff                                         ; $429d: $fe $ff
	sbc  d                                           ; $429f: $9a
	add  c                                           ; $42a0: $81
	rst  $38                                         ; $42a1: $ff
	inc  c                                           ; $42a2: $0c
	db   $fc                                         ; $42a3: $fc
	rst  $38                                         ; $42a4: $ff
	inc  sp                                          ; $42a5: $33
	rst  $38                                         ; $42a6: $ff
	inc  a                                           ; $42a7: $3c
	rst  $38                                         ; $42a8: $ff
	db   $f4                                         ; $42a9: $f4
	rst  $38                                         ; $42aa: $ff
	ld   [hl], $ff                                   ; $42ab: $36 $ff
	ld   sp, hl                                      ; $42ad: $f9
	rst  $38                                         ; $42ae: $ff
	scf                                              ; $42af: $37
	add  c                                           ; $42b0: $81
	rst  $38                                         ; $42b1: $ff
	nop                                              ; $42b2: $00
	pop  bc                                          ; $42b3: $c1
	add  c                                           ; $42b4: $81
	rst  $38                                         ; $42b5: $ff
	nop                                              ; $42b6: $00
	rst  $20                                         ; $42b7: $e7
	add  c                                           ; $42b8: $81
	rst  $38                                         ; $42b9: $ff
	inc  b                                           ; $42ba: $04
	rst  $20                                         ; $42bb: $e7
	rst  $38                                         ; $42bc: $ff
	ld   a, a                                        ; $42bd: $7f
	rst  $38                                         ; $42be: $ff
	ld   b, c                                        ; $42bf: $41
	add  c                                           ; $42c0: $81
	rst  $38                                         ; $42c1: $ff
	inc  c                                           ; $42c2: $0c
	adc  c                                           ; $42c3: $89
	rst  $38                                         ; $42c4: $ff
	sub  $ff                                         ; $42c5: $d6 $ff
	ei                                               ; $42c7: $fb
	rst  $38                                         ; $42c8: $ff
	di                                               ; $42c9: $f3
	rst  $38                                         ; $42ca: $ff
	push de                                          ; $42cb: $d5
	rst  $38                                         ; $42cc: $ff
	pop  hl                                          ; $42cd: $e1
	rst  $38                                         ; $42ce: $ff
	sbc  h                                           ; $42cf: $9c
	add  c                                           ; $42d0: $81
	rst  $38                                         ; $42d1: $ff
	inc  c                                           ; $42d2: $0c
	inc  a                                           ; $42d3: $3c
	rst  $38                                         ; $42d4: $ff
	rst  JumpTable                                         ; $42d5: $df
	rst  $38                                         ; $42d6: $ff
	rra                                              ; $42d7: $1f
	rst  $38                                         ; $42d8: $ff
	sbc  a                                           ; $42d9: $9f
	rst  $38                                         ; $42da: $ff
	ld   a, a                                        ; $42db: $7f
	rst  $38                                         ; $42dc: $ff
	sbc  a                                           ; $42dd: $9f
	rst  $38                                         ; $42de: $ff
	ld   a, h                                        ; $42df: $7c
	add  c                                           ; $42e0: $81
	rst  $38                                         ; $42e1: $ff
	ld   a, [bc]                                     ; $42e2: $0a
	inc  bc                                          ; $42e3: $03
	rst  $38                                         ; $42e4: $ff
	inc  bc                                          ; $42e5: $03
	rst  $38                                         ; $42e6: $ff
	rlca                                             ; $42e7: $07
	rst  $38                                         ; $42e8: $ff
	rlca                                             ; $42e9: $07
	rst  $38                                         ; $42ea: $ff
	rlca                                             ; $42eb: $07
	rst  $38                                         ; $42ec: $ff
	rlca                                             ; $42ed: $07
	add  e                                           ; $42ee: $83
	rst  $38                                         ; $42ef: $ff
	ld   [bc], a                                     ; $42f0: $02
	call z, $fcff                                    ; $42f1: $cc $ff $fc
	add  c                                           ; $42f4: $81
	rst  $38                                         ; $42f5: $ff
	ld   b, $b8                                      ; $42f6: $06 $b8
	rst  $38                                         ; $42f8: $ff
	ld   hl, sp-$01                                  ; $42f9: $f8 $ff
	ld   a, [$8aff]                                  ; $42fb: $fa $ff $8a
	add  c                                           ; $42fe: $81
	rst  $38                                         ; $42ff: $ff
	inc  c                                           ; $4300: $0c
	inc  e                                           ; $4301: $1c
	rst  $38                                         ; $4302: $ff
	ld   a, a                                        ; $4303: $7f

Jump_019_4304:
	rst  $38                                         ; $4304: $ff
	ei                                               ; $4305: $fb
	rst  $38                                         ; $4306: $ff
	ld   l, b                                        ; $4307: $68
	rst  $38                                         ; $4308: $ff
	rrca                                             ; $4309: $0f
	rst  $38                                         ; $430a: $ff
	ld   a, [hl]                                     ; $430b: $7e
	rst  $38                                         ; $430c: $ff
	ld   a, [hl]                                     ; $430d: $7e
	add  c                                           ; $430e: $81
	rst  $38                                         ; $430f: $ff
	nop                                              ; $4310: $00
	ld   sp, hl                                      ; $4311: $f9
	add  c                                           ; $4312: $81
	rst  $38                                         ; $4313: $ff
	ld   [rAUDENA], sp                                 ; $4314: $08 $26 $ff
	and  $ff                                         ; $4317: $e6 $ff
	and  $ff                                         ; $4319: $e6 $ff
	or   l                                           ; $431b: $b5
	rst  $38                                         ; $431c: $ff
	ld   l, d                                        ; $431d: $6a
	add  c                                           ; $431e: $81
	rst  $38                                         ; $431f: $ff
	nop                                              ; $4320: $00
	ld   a, a                                        ; $4321: $7f
	add  e                                           ; $4322: $83
	rst  $38                                         ; $4323: $ff
	ld   [bc], a                                     ; $4324: $02
	ld   a, a                                        ; $4325: $7f
	rst  $38                                         ; $4326: $ff
	ld   a, a                                        ; $4327: $7f
	add  c                                           ; $4328: $81
	rst  $38                                         ; $4329: $ff
	nop                                              ; $432a: $00
	ld   a, a                                        ; $432b: $7f
	and  a                                           ; $432c: $a7
	rst  $38                                         ; $432d: $ff
	nop                                              ; $432e: $00
	cp   $81                                         ; $432f: $fe $81
	rst  $38                                         ; $4331: $ff
	ld   [hl+], a                                    ; $4332: $22
	cp   $ff                                         ; $4333: $fe $ff
	ld   sp, hl                                      ; $4335: $f9

jr_019_4336:
	rst  $38                                         ; $4336: $ff
	cp   a                                           ; $4337: $bf
	rst  $38                                         ; $4338: $ff
	cp   $ff                                         ; $4339: $fe $ff
	rst  $30                                         ; $433b: $f7
	rst  $38                                         ; $433c: $ff
	ld   a, l                                        ; $433d: $7d
	rst  $38                                         ; $433e: $ff
	ei                                               ; $433f: $fb
	rst  $38                                         ; $4340: $ff
	and  $ff                                         ; $4341: $e6 $ff
	cpl                                              ; $4343: $2f
	rst  $38                                         ; $4344: $ff
	db   $f4                                         ; $4345: $f4
	rst  $38                                         ; $4346: $ff
	ei                                               ; $4347: $fb
	rst  $38                                         ; $4348: $ff
	ei                                               ; $4349: $fb
	rst  $38                                         ; $434a: $ff
	db   $eb                                         ; $434b: $eb
	rst  $38                                         ; $434c: $ff
	ld   a, a                                        ; $434d: $7f
	rst  $38                                         ; $434e: $ff
	db   $eb                                         ; $434f: $eb
	rst  $38                                         ; $4350: $ff
	xor  l                                           ; $4351: $ad
	rst  $38                                         ; $4352: $ff
	ld   h, $ff                                      ; $4353: $26 $ff
	or   e                                           ; $4355: $b3
	add  c                                           ; $4356: $81
	rst  $38                                         ; $4357: $ff
	db   $10                                         ; $4358: $10
	adc  $ff                                         ; $4359: $ce $ff
	adc  $ff                                         ; $435b: $ce $ff
	ld   a, a                                        ; $435d: $7f
	rst  $38                                         ; $435e: $ff
	ld   l, a                                        ; $435f: $6f
	rst  $38                                         ; $4360: $ff
	rst  $28                                         ; $4361: $ef
	rst  $38                                         ; $4362: $ff
	or   e                                           ; $4363: $b3
	rst  $38                                         ; $4364: $ff
	jr   @+$01                                       ; $4365: $18 $ff

	db   $fc                                         ; $4367: $fc
	rst  $38                                         ; $4368: $ff
	ld   a, a                                        ; $4369: $7f
	add  e                                           ; $436a: $83
	rst  $38                                         ; $436b: $ff
	nop                                              ; $436c: $00
	db   $fc                                         ; $436d: $fc
	add  c                                           ; $436e: $81
	rst  $38                                         ; $436f: $ff
	ld   [bc], a                                     ; $4370: $02
	sbc  b                                           ; $4371: $98
	rst  $38                                         ; $4372: $ff
	ldh  a, [$81]                                    ; $4373: $f0 $81
	rst  $38                                         ; $4375: $ff
	ld   [bc], a                                     ; $4376: $02
	ldh  a, [c]                                      ; $4377: $f2
	rst  $38                                         ; $4378: $ff
	or   e                                           ; $4379: $b3
	add  c                                           ; $437a: $81
	rst  $38                                         ; $437b: $ff
	nop                                              ; $437c: $00
	ld   a, e                                        ; $437d: $7b
	add  c                                           ; $437e: $81
	rst  $38                                         ; $437f: $ff

Jump_019_4380:
	ld   [bc], a                                     ; $4380: $02
	dec  [hl]                                        ; $4381: $35
	rst  $38                                         ; $4382: $ff
	ld   e, c                                        ; $4383: $59
	add  c                                           ; $4384: $81
	rst  $38                                         ; $4385: $ff
	inc  b                                           ; $4386: $04
	rst  $20                                         ; $4387: $e7
	rst  $38                                         ; $4388: $ff
	ld   h, a                                        ; $4389: $67
	rst  $38                                         ; $438a: $ff
	ld   a, a                                        ; $438b: $7f
	add  c                                           ; $438c: $81
	rst  $38                                         ; $438d: $ff
	jr   jr_019_4336                                 ; $438e: $18 $a6

	rst  $38                                         ; $4390: $ff
	nop                                              ; $4391: $00
	rst  $38                                         ; $4392: $ff
	xor  b                                           ; $4393: $a8
	rst  $38                                         ; $4394: $ff
	push af                                          ; $4395: $f5
	rst  $38                                         ; $4396: $ff
	pop  de                                          ; $4397: $d1
	rst  $38                                         ; $4398: $ff
	db   $eb                                         ; $4399: $eb
	rst  $38                                         ; $439a: $ff
	push af                                          ; $439b: $f5
	rst  $38                                         ; $439c: $ff
	di                                               ; $439d: $f3
	rst  $38                                         ; $439e: $ff
	db   $fd                                         ; $439f: $fd
	rst  $38                                         ; $43a0: $ff
	sbc  h                                           ; $43a1: $9c
	rst  $38                                         ; $43a2: $ff
	ld   [hl], b                                     ; $43a3: $70
	rst  $38                                         ; $43a4: $ff
	or   e                                           ; $43a5: $b3
	rst  $38                                         ; $43a6: $ff
	sbc  a                                           ; $43a7: $9f
	add  e                                           ; $43a8: $83
	rst  $38                                         ; $43a9: $ff
	nop                                              ; $43aa: $00
	db   $db                                         ; $43ab: $db
	add  c                                           ; $43ac: $81
	rst  $38                                         ; $43ad: $ff
	ld   b, $78                                      ; $43ae: $06 $78
	rst  $38                                         ; $43b0: $ff
	ld   bc, $41ff                                   ; $43b1: $01 $ff $41
	rst  $38                                         ; $43b4: $ff
	db   $d3                                         ; $43b5: $d3
	add  c                                           ; $43b6: $81
	rst  $38                                         ; $43b7: $ff
	db   $10                                         ; $43b8: $10
	and  e                                           ; $43b9: $a3
	rst  $38                                         ; $43ba: $ff
	ld   de, $2fff                                   ; $43bb: $11 $ff $2f
	rst  $38                                         ; $43be: $ff
	pop  af                                          ; $43bf: $f1
	rst  $38                                         ; $43c0: $ff
	ld   c, b                                        ; $43c1: $48
	rst  $38                                         ; $43c2: $ff
	ld   a, h                                        ; $43c3: $7c
	rst  $38                                         ; $43c4: $ff
	db   $fc                                         ; $43c5: $fc
	rst  $38                                         ; $43c6: $ff
	db   $fc                                         ; $43c7: $fc
	rst  $38                                         ; $43c8: $ff
	cp   $81                                         ; $43c9: $fe $81
	rst  $38                                         ; $43cb: $ff
	inc  h                                           ; $43cc: $24
	db   $fd                                         ; $43cd: $fd
	rst  $38                                         ; $43ce: $ff
	ret  z                                           ; $43cf: $c8

	rst  $38                                         ; $43d0: $ff
	inc  c                                           ; $43d1: $0c
	rst  $38                                         ; $43d2: $ff
	set  7, a                                        ; $43d3: $cb $ff
	set  7, a                                        ; $43d5: $cb $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d7: $cf
	rst  $38                                         ; $43d8: $ff
	rst  JumpTable                                         ; $43d9: $df
	rst  $38                                         ; $43da: $ff
	xor  a                                           ; $43db: $af
	rst  $38                                         ; $43dc: $ff
	ld   a, a                                        ; $43dd: $7f
	rst  $38                                         ; $43de: $ff
	call z, $aaff                                    ; $43df: $cc $ff $aa
	rst  $38                                         ; $43e2: $ff
	ld   [hl], l                                     ; $43e3: $75
	rst  $38                                         ; $43e4: $ff
	or   l                                           ; $43e5: $b5
	rst  $38                                         ; $43e6: $ff
	dec  [hl]                                        ; $43e7: $35
	rst  $38                                         ; $43e8: $ff
	push af                                          ; $43e9: $f5
	rst  $38                                         ; $43ea: $ff
	db   $fd                                         ; $43eb: $fd
	rst  $38                                         ; $43ec: $ff
	cp   l                                           ; $43ed: $bd
	rst  $38                                         ; $43ee: $ff
	ld   [$7fff], a                                  ; $43ef: $ea $ff $7f
	adc  e                                           ; $43f2: $8b
	rst  $38                                         ; $43f3: $ff
	nop                                              ; $43f4: $00
	ld   a, a                                        ; $43f5: $7f
	sub  b                                           ; $43f6: $90
	rst  $38                                         ; $43f7: $ff
	add  b                                           ; $43f8: $80
	nop                                              ; $43f9: $00
	adc  d                                           ; $43fa: $8a
	rst  $38                                         ; $43fb: $ff
	add  d                                           ; $43fc: $82
	nop                                              ; $43fd: $00
	ld   bc, $feff                                   ; $43fe: $01 $ff $fe
	add  c                                           ; $4401: $81
	rst  $38                                         ; $4402: $ff
	nop                                              ; $4403: $00
	cp   $84                                         ; $4404: $fe $84
	rst  $38                                         ; $4406: $ff
	add  d                                           ; $4407: $82
	nop                                              ; $4408: $00
	dec  b                                           ; $4409: $05
	rst  $38                                         ; $440a: $ff
	daa                                              ; $440b: $27
	rst  $38                                         ; $440c: $ff
	ld   hl, sp-$01                                  ; $440d: $f8 $ff
	ld   a, b                                        ; $440f: $78
	add  c                                           ; $4410: $81
	rst  $38                                         ; $4411: $ff
	inc  bc                                          ; $4412: $03
	or   c                                           ; $4413: $b1
	rst  $38                                         ; $4414: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4415: $cf
	ld   h, $81                                      ; $4416: $26 $81
	nop                                              ; $4418: $00
	inc  c                                           ; $4419: $0c
	rst  $38                                         ; $441a: $ff
	db   $f4                                         ; $441b: $f4
	rst  $38                                         ; $441c: $ff
	ccf                                              ; $441d: $3f
	rst  $38                                         ; $441e: $ff
	db   $eb                                         ; $441f: $eb
	rst  $38                                         ; $4420: $ff
	db   $eb                                         ; $4421: $eb
	rst  $38                                         ; $4422: $ff
	ei                                               ; $4423: $fb
	rst  $38                                         ; $4424: $ff
	cp   e                                           ; $4425: $bb
	adc  e                                           ; $4426: $8b
	add  c                                           ; $4427: $81
	nop                                              ; $4428: $00
	add  hl, bc                                      ; $4429: $09
	rst  $38                                         ; $442a: $ff
	add  e                                           ; $442b: $83
	rst  $38                                         ; $442c: $ff
	cp   $ff                                         ; $442d: $fe $ff
	ld   c, [hl]                                     ; $442f: $4e
	rst  $38                                         ; $4430: $ff
	ld   a, a                                        ; $4431: $7f
	rst  $38                                         ; $4432: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4433: $cf
	add  b                                           ; $4434: $80
	rst  $38                                         ; $4435: $ff
	nop                                              ; $4436: $00
	ld   a, h                                        ; $4437: $7c
	add  c                                           ; $4438: $81
	nop                                              ; $4439: $00
	inc  c                                           ; $443a: $0c
	rst  $38                                         ; $443b: $ff
	sbc  h                                           ; $443c: $9c
	rst  $38                                         ; $443d: $ff
	ld   h, e                                        ; $443e: $63
	rst  $38                                         ; $443f: $ff
	ld   h, e                                        ; $4440: $63
	rst  $38                                         ; $4441: $ff
	sbc  h                                           ; $4442: $9c
	rst  $38                                         ; $4443: $ff
	sbc  e                                           ; $4444: $9b
	rst  $38                                         ; $4445: $ff
	cp   $65                                         ; $4446: $fe $65
	add  c                                           ; $4448: $81
	nop                                              ; $4449: $00
	inc  c                                           ; $444a: $0c
	rst  $38                                         ; $444b: $ff
	db   $fc                                         ; $444c: $fc
	rst  $38                                         ; $444d: $ff
	inc  sp                                          ; $444e: $33
	rst  $38                                         ; $444f: $ff
	inc  a                                           ; $4450: $3c
	rst  $38                                         ; $4451: $ff
	db   $f4                                         ; $4452: $f4
	rst  $38                                         ; $4453: $ff
	ld   [hl], $ff                                   ; $4454: $36 $ff
	ld   sp, hl                                      ; $4456: $f9
	ret  z                                           ; $4457: $c8

	add  c                                           ; $4458: $81
	nop                                              ; $4459: $00
	ld   bc, $c1ff                                   ; $445a: $01 $ff $c1
	add  c                                           ; $445d: $81
	rst  $38                                         ; $445e: $ff
	nop                                              ; $445f: $00
	rst  $20                                         ; $4460: $e7
	add  c                                           ; $4461: $81
	rst  $38                                         ; $4462: $ff
	inc  bc                                          ; $4463: $03
	rst  $20                                         ; $4464: $e7
	rst  $38                                         ; $4465: $ff
	ld   a, a                                        ; $4466: $7f
	cp   [hl]                                        ; $4467: $be
	add  c                                           ; $4468: $81
	nop                                              ; $4469: $00
	inc  c                                           ; $446a: $0c
	rst  $38                                         ; $446b: $ff
	adc  c                                           ; $446c: $89
	rst  $38                                         ; $446d: $ff
	sub  $ff                                         ; $446e: $d6 $ff
	ei                                               ; $4470: $fb
	rst  $38                                         ; $4471: $ff
	di                                               ; $4472: $f3
	rst  $38                                         ; $4473: $ff
	push de                                          ; $4474: $d5
	rst  $38                                         ; $4475: $ff
	pop  hl                                          ; $4476: $e1
	ld   h, e                                        ; $4477: $63
	add  c                                           ; $4478: $81
	nop                                              ; $4479: $00
	inc  c                                           ; $447a: $0c
	rst  $38                                         ; $447b: $ff
	inc  a                                           ; $447c: $3c
	rst  $38                                         ; $447d: $ff
	rst  JumpTable                                         ; $447e: $df
	rst  $38                                         ; $447f: $ff
	rra                                              ; $4480: $1f
	rst  $38                                         ; $4481: $ff

Call_019_4482:
	sbc  a                                           ; $4482: $9f
	rst  $38                                         ; $4483: $ff
	ld   a, a                                        ; $4484: $7f
	rst  $38                                         ; $4485: $ff
	sbc  a                                           ; $4486: $9f
	add  e                                           ; $4487: $83
	add  c                                           ; $4488: $81
	nop                                              ; $4489: $00
	dec  bc                                          ; $448a: $0b
	rst  $38                                         ; $448b: $ff
	inc  bc                                          ; $448c: $03
	rst  $38                                         ; $448d: $ff
	inc  bc                                          ; $448e: $03
	rst  $38                                         ; $448f: $ff
	rlca                                             ; $4490: $07
	rst  $38                                         ; $4491: $ff
	rlca                                             ; $4492: $07
	rst  $38                                         ; $4493: $ff
	rlca                                             ; $4494: $07
	rst  $38                                         ; $4495: $ff
	rlca                                             ; $4496: $07
	add  d                                           ; $4497: $82
	nop                                              ; $4498: $00
	inc  bc                                          ; $4499: $03
	rst  $38                                         ; $449a: $ff
	call z, $fcff                                    ; $449b: $cc $ff $fc
	add  c                                           ; $449e: $81
	rst  $38                                         ; $449f: $ff
	dec  b                                           ; $44a0: $05
	cp   b                                           ; $44a1: $b8
	rst  $38                                         ; $44a2: $ff
	ld   hl, sp-$01                                  ; $44a3: $f8 $ff
	ld   a, [$8175]                                  ; $44a5: $fa $75 $81
	nop                                              ; $44a8: $00
	inc  c                                           ; $44a9: $0c
	rst  $38                                         ; $44aa: $ff
	inc  e                                           ; $44ab: $1c
	rst  $38                                         ; $44ac: $ff
	ld   a, a                                        ; $44ad: $7f
	rst  $38                                         ; $44ae: $ff
	ei                                               ; $44af: $fb
	rst  $38                                         ; $44b0: $ff
	ld   l, b                                        ; $44b1: $68
	rst  $38                                         ; $44b2: $ff
	rrca                                             ; $44b3: $0f
	rst  $38                                         ; $44b4: $ff
	ld   a, [hl]                                     ; $44b5: $7e
	add  c                                           ; $44b6: $81
	add  c                                           ; $44b7: $81
	nop                                              ; $44b8: $00
	ld   bc, $f9ff                                   ; $44b9: $01 $ff $f9
	add  c                                           ; $44bc: $81
	rst  $38                                         ; $44bd: $ff
	rlca                                             ; $44be: $07
	ld   h, $ff                                      ; $44bf: $26 $ff
	and  $ff                                         ; $44c1: $e6 $ff
	and  $ff                                         ; $44c3: $e6 $ff
	or   l                                           ; $44c5: $b5
	sub  l                                           ; $44c6: $95
	add  c                                           ; $44c7: $81
	nop                                              ; $44c8: $00
	ld   bc, $7fff                                   ; $44c9: $01 $ff $7f
	add  e                                           ; $44cc: $83
	rst  $38                                         ; $44cd: $ff
	ld   [bc], a                                     ; $44ce: $02
	ld   a, a                                        ; $44cf: $7f
	rst  $38                                         ; $44d0: $ff
	ld   a, a                                        ; $44d1: $7f
	add  b                                           ; $44d2: $80
	rst  $38                                         ; $44d3: $ff
	nop                                              ; $44d4: $00
	add  b                                           ; $44d5: $80
	add  c                                           ; $44d6: $81
	nop                                              ; $44d7: $00
	adc  d                                           ; $44d8: $8a
	rst  $38                                         ; $44d9: $ff
	add  b                                           ; $44da: $80
	nop                                              ; $44db: $00
	add  e                                           ; $44dc: $83
	rst  $38                                         ; $44dd: $ff
	ld   bc, $ff00                                   ; $44de: $01 $00 $ff
	add  a                                           ; $44e1: $87
	nop                                              ; $44e2: $00
	add  e                                           ; $44e3: $83
	rst  $38                                         ; $44e4: $ff
	ld   bc, $ff00                                   ; $44e5: $01 $00 $ff
	add  b                                           ; $44e8: $80
	nop                                              ; $44e9: $00
	add  d                                           ; $44ea: $82
	ld   bc, $0081                                   ; $44eb: $01 $81 $00
	add  e                                           ; $44ee: $83
	rst  $38                                         ; $44ef: $ff
	ld   bc, $ff00                                   ; $44f0: $01 $00 $ff
	add  b                                           ; $44f3: $80
	nop                                              ; $44f4: $00
	add  b                                           ; $44f5: $80
	ret  c                                           ; $44f6: $d8

	add  b                                           ; $44f7: $80
	rst  JumpTable                                         ; $44f8: $df
	add  b                                           ; $44f9: $80
	ld   e, b                                        ; $44fa: $58
	nop                                              ; $44fb: $00
	nop                                              ; $44fc: $00
	add  e                                           ; $44fd: $83
	rst  $38                                         ; $44fe: $ff
	ld   bc, $ff00                                   ; $44ff: $01 $00 $ff
	add  b                                           ; $4502: $80
	nop                                              ; $4503: $00
	add  b                                           ; $4504: $80
	dec  bc                                          ; $4505: $0b
	add  b                                           ; $4506: $80
	res  0, b                                        ; $4507: $cb $80
	rst  JumpTable                                         ; $4509: $df
	nop                                              ; $450a: $00
	nop                                              ; $450b: $00
	add  e                                           ; $450c: $83
	rst  $38                                         ; $450d: $ff
	ld   bc, $ff00                                   ; $450e: $01 $00 $ff
	add  b                                           ; $4511: $80
	nop                                              ; $4512: $00
	add  b                                           ; $4513: $80
	ld   a, h                                        ; $4514: $7c
	add  b                                           ; $4515: $80
	ld   a, l                                        ; $4516: $7d
	add  b                                           ; $4517: $80
	call z, $0000                                   ; $4518: $cc $00 $00
	add  e                                           ; $451b: $83
	rst  $38                                         ; $451c: $ff
	ld   bc, $ff00                                   ; $451d: $01 $00 $ff
	add  b                                           ; $4520: $80
	nop                                              ; $4521: $00
	add  b                                           ; $4522: $80
	ld   h, e                                        ; $4523: $63
	add  b                                           ; $4524: $80
	rst  $38                                         ; $4525: $ff
	add  b                                           ; $4526: $80
	ld   h, e                                        ; $4527: $63
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	add  e                                           ; $452a: $83
	rst  $38                                         ; $452b: $ff
	ld   bc, $ff00                                   ; $452c: $01 $00 $ff
	add  b                                           ; $452f: $80
	nop                                              ; $4530: $00
	add  b                                           ; $4531: $80
	inc  bc                                          ; $4532: $03
	add  b                                           ; $4533: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4534: $cf
	add  b                                           ; $4535: $80
	inc  c                                           ; $4536: $0c
	nop                                              ; $4537: $00
	nop                                              ; $4538: $00
	add  e                                           ; $4539: $83
	rst  $38                                         ; $453a: $ff
	ld   bc, $ff00                                   ; $453b: $01 $00 $ff
	add  b                                           ; $453e: $80
	nop                                              ; $453f: $00
	add  d                                           ; $4540: $82
	ld   a, $80                                      ; $4541: $3e $80
	ld   h, $00                                      ; $4543: $26 $00
	nop                                              ; $4545: $00
	add  e                                           ; $4546: $83
	rst  $38                                         ; $4547: $ff
	ld   bc, $ff00                                   ; $4548: $01 $00 $ff
	add  b                                           ; $454b: $80
	nop                                              ; $454c: $00
	add  b                                           ; $454d: $80
	halt                                             ; $454e: $76
	add  b                                           ; $454f: $80
	ld   e, a                                        ; $4550: $5f
	add  b                                           ; $4551: $80
	ld   e, e                                        ; $4552: $5b
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	add  e                                           ; $4555: $83
	rst  $38                                         ; $4556: $ff
	ld   bc, $ff00                                   ; $4557: $01 $00 $ff
	add  b                                           ; $455a: $80
	nop                                              ; $455b: $00
	add  b                                           ; $455c: $80
	jp   $e380                                       ; $455d: $c3 $80 $e3


	add  b                                           ; $4560: $80
	inc  bc                                          ; $4561: $03
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	add  e                                           ; $4564: $83
	rst  $38                                         ; $4565: $ff
	ld   bc, $ff00                                   ; $4566: $01 $00 $ff
	add  b                                           ; $4569: $80
	nop                                              ; $456a: $00
	add  b                                           ; $456b: $80
	db   $fc                                         ; $456c: $fc
	add  b                                           ; $456d: $80
	nop                                              ; $456e: $00
	add  b                                           ; $456f: $80
	ld   hl, sp+$00                                  ; $4570: $f8 $00
	nop                                              ; $4572: $00
	add  e                                           ; $4573: $83
	rst  $38                                         ; $4574: $ff
	ld   bc, $ff00                                   ; $4575: $01 $00 $ff
	add  b                                           ; $4578: $80
	nop                                              ; $4579: $00
	add  b                                           ; $457a: $80
	inc  sp                                          ; $457b: $33
	add  d                                           ; $457c: $82
	jr   nc, jr_019_457f                             ; $457d: $30 $00

jr_019_457f:
	nop                                              ; $457f: $00
	add  e                                           ; $4580: $83
	rst  $38                                         ; $4581: $ff
	ld   bc, $ff00                                   ; $4582: $01 $00 $ff
	add  b                                           ; $4585: $80
	nop                                              ; $4586: $00
	add  b                                           ; $4587: $80
	db   $e3                                         ; $4588: $e3
	add  b                                           ; $4589: $80
	ld   h, e                                        ; $458a: $63
	add  b                                           ; $458b: $80
	ld   h, a                                        ; $458c: $67
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	add  e                                           ; $458f: $83
	rst  $38                                         ; $4590: $ff
	ld   bc, $ff00                                   ; $4591: $01 $00 $ff
	add  b                                           ; $4594: $80
	nop                                              ; $4595: $00
	add  d                                           ; $4596: $82
	ld   b, $80                                      ; $4597: $06 $80
	rst  JumpTable                                         ; $4599: $df
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	add  e                                           ; $459c: $83
	rst  $38                                         ; $459d: $ff
	ld   bc, $ff00                                   ; $459e: $01 $00 $ff
	add  b                                           ; $45a1: $80
	nop                                              ; $45a2: $00
	add  h                                           ; $45a3: $84
	add  b                                           ; $45a4: $80
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	add  e                                           ; $45a7: $83
	rst  $38                                         ; $45a8: $ff
	ld   bc, $ff00                                   ; $45a9: $01 $00 $ff
	add  [hl]                                        ; $45ac: $86
	nop                                              ; $45ad: $00
	add  b                                           ; $45ae: $80
	rst  $38                                         ; $45af: $ff
	adc  h                                           ; $45b0: $8c

jr_019_45b1:
	nop                                              ; $45b1: $00
	add  b                                           ; $45b2: $80
	rst  $38                                         ; $45b3: $ff
	add  [hl]                                        ; $45b4: $86
	nop                                              ; $45b5: $00
	add  d                                           ; $45b6: $82
	ld   bc, $0080                                   ; $45b7: $01 $80 $00
	add  b                                           ; $45ba: $80
	rst  $38                                         ; $45bb: $ff
	add  b                                           ; $45bc: $80
	ld   b, [hl]                                     ; $45bd: $46
	add  b                                           ; $45be: $80
	ld   b, a                                        ; $45bf: $47
	add  b                                           ; $45c0: $80
	ld   c, a                                        ; $45c1: $4f
	add  b                                           ; $45c2: $80
	call $c980                                       ; $45c3: $cd $80 $c9
	add  b                                           ; $45c6: $80
	ret  nc                                          ; $45c7: $d0

	add  b                                           ; $45c8: $80
	nop                                              ; $45c9: $00
	add  b                                           ; $45ca: $80
	rst  $38                                         ; $45cb: $ff
	add  b                                           ; $45cc: $80
	rrca                                             ; $45cd: $0f
	add  b                                           ; $45ce: $80
	dec  bc                                          ; $45cf: $0b
	add  b                                           ; $45d0: $80
	rra                                              ; $45d1: $1f
	add  b                                           ; $45d2: $80
	sbc  a                                           ; $45d3: $9f
	add  b                                           ; $45d4: $80
	adc  e                                           ; $45d5: $8b
	add  b                                           ; $45d6: $80
	reti                                             ; $45d7: $d9


	add  b                                           ; $45d8: $80
	nop                                              ; $45d9: $00
	add  b                                           ; $45da: $80
	rst  $38                                         ; $45db: $ff
	add  b                                           ; $45dc: $80
	ld   c, h                                        ; $45dd: $4c
	add  b                                           ; $45de: $80
	ld   a, l                                        ; $45df: $7d
	add  b                                           ; $45e0: $80
	ld   c, h                                        ; $45e1: $4c
	add  b                                           ; $45e2: $80
	call z, Call_019_5c80                            ; $45e3: $cc $80 $5c
	add  b                                           ; $45e6: $80
	ld   c, h                                        ; $45e7: $4c
	add  b                                           ; $45e8: $80
	nop                                              ; $45e9: $00
	add  b                                           ; $45ea: $80
	rst  $38                                         ; $45eb: $ff
	add  b                                           ; $45ec: $80
	db   $e4                                         ; $45ed: $e4
	add  h                                           ; $45ee: $84
	ld   h, h                                        ; $45ef: $64
	add  d                                           ; $45f0: $82
	ld   h, a                                        ; $45f1: $67
	add  b                                           ; $45f2: $80
	nop                                              ; $45f3: $00
	add  b                                           ; $45f4: $80
	rst  $38                                         ; $45f5: $ff
	add  b                                           ; $45f6: $80
	rrca                                             ; $45f7: $0f
	add  b                                           ; $45f8: $80
	ld   [bc], a                                     ; $45f9: $02
	add  d                                           ; $45fa: $82
	ld   c, [hl]                                     ; $45fb: $4e
	add  d                                           ; $45fc: $82
	jp   z, $0080                                    ; $45fd: $ca $80 $00

	add  b                                           ; $4600: $80
	rst  $38                                         ; $4601: $ff
	add  b                                           ; $4602: $80
	and  [hl]                                        ; $4603: $a6
	add  b                                           ; $4604: $80
	cp   [hl]                                        ; $4605: $be
	add  b                                           ; $4606: $80
	ld   h, $82                                      ; $4607: $26 $82
	and  [hl]                                        ; $4609: $a6
	add  b                                           ; $460a: $80
	rst  $38                                         ; $460b: $ff
	add  b                                           ; $460c: $80
	nop                                              ; $460d: $00
	add  b                                           ; $460e: $80
	rst  $38                                         ; $460f: $ff
	add  b                                           ; $4610: $80
	ld   e, l                                        ; $4611: $5d
	add  b                                           ; $4612: $80
	ld   [hl], e                                     ; $4613: $73
	add  b                                           ; $4614: $80
	ld   h, a                                        ; $4615: $67
	add  b                                           ; $4616: $80
	ld   l, l                                        ; $4617: $6d
	add  b                                           ; $4618: $80
	ld   h, c                                        ; $4619: $61
	add  b                                           ; $461a: $80
	ld   h, e                                        ; $461b: $63
	add  b                                           ; $461c: $80
	nop                                              ; $461d: $00
	add  b                                           ; $461e: $80
	rst  $38                                         ; $461f: $ff
	add  b                                           ; $4620: $80
	jp   $a384                                       ; $4621: $c3 $84 $a3


	add  d                                           ; $4624: $82
	add  a                                           ; $4625: $87
	add  b                                           ; $4626: $80
	nop                                              ; $4627: $00
	add  b                                           ; $4628: $80
	rst  $38                                         ; $4629: $ff
	add  b                                           ; $462a: $80
	ld   b, b                                        ; $462b: $40
	add  d                                           ; $462c: $82
	ld   l, h                                        ; $462d: $6c
	add  b                                           ; $462e: $80
	jr   nc, jr_019_45b1                             ; $462f: $30 $80

	sbc  $80                                         ; $4631: $de $80
	ld   c, $80                                      ; $4633: $0e $80
	nop                                              ; $4635: $00
	add  b                                           ; $4636: $80
	rst  $38                                         ; $4637: $ff
	add  b                                           ; $4638: $80
	inc  [hl]                                        ; $4639: $34
	add  b                                           ; $463a: $80
	scf                                              ; $463b: $37
	add  b                                           ; $463c: $80
	inc  [hl]                                        ; $463d: $34
	add  d                                           ; $463e: $82
	dec  [hl]                                        ; $463f: $35
	add  b                                           ; $4640: $80
	scf                                              ; $4641: $37
	add  b                                           ; $4642: $80
	nop                                              ; $4643: $00
	add  b                                           ; $4644: $80
	rst  $38                                         ; $4645: $ff
	add  b                                           ; $4646: $80
	rst  ToBoot                                         ; $4647: $c7
	add  b                                           ; $4648: $80
	di                                               ; $4649: $f3
	add  b                                           ; $464a: $80
	jp   $e380                                       ; $464b: $c3 $80 $e3


	add  b                                           ; $464e: $80
	or   e                                           ; $464f: $b3
	add  b                                           ; $4650: $80
	inc  sp                                          ; $4651: $33
	add  b                                           ; $4652: $80
	nop                                              ; $4653: $00
	add  b                                           ; $4654: $80
	rst  $38                                         ; $4655: $ff
	add  b                                           ; $4656: $80
	rst  JumpTable                                         ; $4657: $df
	add  b                                           ; $4658: $80
	sub  l                                           ; $4659: $95
	add  b                                           ; $465a: $80
	ld   e, a                                        ; $465b: $5f
	add  b                                           ; $465c: $80
	ld   d, l                                        ; $465d: $55
	add  b                                           ; $465e: $80
	ld   d, a                                        ; $465f: $57
	add  b                                           ; $4660: $80
	dec  d                                           ; $4661: $15
	add  b                                           ; $4662: $80
	nop                                              ; $4663: $00
	add  b                                           ; $4664: $80
	rst  $38                                         ; $4665: $ff
	adc  d                                           ; $4666: $8a
	add  b                                           ; $4667: $80
	add  b                                           ; $4668: $80
	nop                                              ; $4669: $00
	add  b                                           ; $466a: $80
	rst  $38                                         ; $466b: $ff
	adc  h                                           ; $466c: $8c
	nop                                              ; $466d: $00
	add  hl, hl                                      ; $466e: $29
	ld   [bc], a                                     ; $466f: $02
	add  d                                           ; $4670: $82
	rst  $38                                         ; $4671: $ff
	inc  c                                           ; $4672: $0c
	ld   sp, hl                                      ; $4673: $f9
	rst  $38                                         ; $4674: $ff
	and  $ff                                         ; $4675: $e6 $ff
	and  $ff                                         ; $4677: $e6 $ff
	ld   sp, hl                                      ; $4679: $f9
	rst  $38                                         ; $467a: $ff
	ld   sp, hl                                      ; $467b: $f9
	rst  $38                                         ; $467c: $ff
	ld   b, $ff                                      ; $467d: $06 $ff
	nop                                              ; $467f: $00
	add  c                                           ; $4680: $81
	rst  $38                                         ; $4681: $ff
	inc  c                                           ; $4682: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4683: $cf
	rst  $38                                         ; $4684: $ff
	inc  sp                                          ; $4685: $33
	rst  $38                                         ; $4686: $ff
	inc  sp                                          ; $4687: $33
	rst  $38                                         ; $4688: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4689: $cf
	rst  $38                                         ; $468a: $ff
	or   e                                           ; $468b: $b3
	rst  $38                                         ; $468c: $ff
	ld   c, h                                        ; $468d: $4c
	rst  $38                                         ; $468e: $ff
	nop                                              ; $468f: $00
	add  e                                           ; $4690: $83
	rst  $38                                         ; $4691: $ff
	nop                                              ; $4692: $00
	call z, $ff81                                    ; $4693: $cc $81 $ff
	ld   b, $33                                      ; $4696: $06 $33
	rst  $38                                         ; $4698: $ff
	inc  sp                                          ; $4699: $33
	rst  $38                                         ; $469a: $ff
	inc  sp                                          ; $469b: $33
	rst  $38                                         ; $469c: $ff
	nop                                              ; $469d: $00
	add  e                                           ; $469e: $83
	rst  $38                                         ; $469f: $ff
	nop                                              ; $46a0: $00
	ld   sp, hl                                      ; $46a1: $f9
	add  c                                           ; $46a2: $81
	rst  $38                                         ; $46a3: $ff
	ld   b, $3f                                      ; $46a4: $06 $3f
	rst  $38                                         ; $46a6: $ff
	ld   e, a                                        ; $46a7: $5f
	rst  $38                                         ; $46a8: $ff
	ld   h, [hl]                                     ; $46a9: $66
	rst  $38                                         ; $46aa: $ff
	nop                                              ; $46ab: $00
	add  l                                           ; $46ac: $85
	rst  $38                                         ; $46ad: $ff
	ld   [$fffe], sp                                 ; $46ae: $08 $fe $ff
	cp   $ff                                         ; $46b1: $fe $ff
	cp   $ff                                         ; $46b3: $fe $ff
	ld   bc, $00ff                                   ; $46b5: $01 $ff $00
	add  e                                           ; $46b8: $83
	rst  $38                                         ; $46b9: $ff
	ld   a, [bc]                                     ; $46ba: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46bb: $cf
	rst  $38                                         ; $46bc: $ff
	ld   sp, $31ff                                   ; $46bd: $31 $ff $31
	rst  $38                                         ; $46c0: $ff
	ld   sp, $feff                                   ; $46c1: $31 $ff $fe
	rst  $38                                         ; $46c4: $ff
	nop                                              ; $46c5: $00
	add  c                                           ; $46c6: $81
	rst  $38                                         ; $46c7: $ff
	nop                                              ; $46c8: $00
	ld   sp, hl                                      ; $46c9: $f9
	add  c                                           ; $46ca: $81
	rst  $38                                         ; $46cb: $ff
	ld   [$ff86], sp                                 ; $46cc: $08 $86 $ff
	add  [hl]                                        ; $46cf: $86
	rst  $38                                         ; $46d0: $ff
	add  $ff                                         ; $46d1: $c6 $ff
	ccf                                              ; $46d3: $3f
	rst  $38                                         ; $46d4: $ff
	nop                                              ; $46d5: $00
	add  c                                           ; $46d6: $81
	rst  $38                                         ; $46d7: $ff
	inc  c                                           ; $46d8: $0c
	cp   $ff                                         ; $46d9: $fe $ff
	ld   sp, hl                                      ; $46db: $f9
	rst  $38                                         ; $46dc: $ff
	ld   a, [de]                                     ; $46dd: $1a
	rst  $38                                         ; $46de: $ff
	rra                                              ; $46df: $1f
	rst  $38                                         ; $46e0: $ff
	ccf                                              ; $46e1: $3f
	rst  $38                                         ; $46e2: $ff
	jp   nz, $00ff                                   ; $46e3: $c2 $ff $00

	add  c                                           ; $46e6: $81
	rst  $38                                         ; $46e7: $ff
	inc  b                                           ; $46e8: $04
	ld   h, b                                        ; $46e9: $60
	rst  $38                                         ; $46ea: $ff
	sbc  e                                           ; $46eb: $9b
	rst  $38                                         ; $46ec: $ff
	rst  JumpTable                                         ; $46ed: $df
	add  c                                           ; $46ee: $81
	rst  $38                                         ; $46ef: $ff
	inc  b                                           ; $46f0: $04
	ld   hl, sp-$01                                  ; $46f1: $f8 $ff
	call c, $00ff                                    ; $46f3: $dc $ff $00
	add  e                                           ; $46f6: $83
	rst  $38                                         ; $46f7: $ff
	nop                                              ; $46f8: $00
	ldh  a, [$81]                                    ; $46f9: $f0 $81
	rst  $38                                         ; $46fb: $ff
	nop                                              ; $46fc: $00
	pop  af                                          ; $46fd: $f1
	add  c                                           ; $46fe: $81
	rst  $38                                         ; $46ff: $ff
	ld   [bc], a                                     ; $4700: $02
	ld   bc, $00ff                                   ; $4701: $01 $ff $00
	add  e                                           ; $4704: $83
	rst  $38                                         ; $4705: $ff
	nop                                              ; $4706: $00
	inc  e                                           ; $4707: $1c
	add  c                                           ; $4708: $81
	rst  $38                                         ; $4709: $ff
	nop                                              ; $470a: $00
	inc  e                                           ; $470b: $1c
	add  c                                           ; $470c: $81
	rst  $38                                         ; $470d: $ff
	ld   [bc], a                                     ; $470e: $02
	nop                                              ; $470f: $00
	rst  $38                                         ; $4710: $ff
	nop                                              ; $4711: $00
	add  e                                           ; $4712: $83
	rst  $38                                         ; $4713: $ff
	inc  c                                           ; $4714: $0c
	rst  $30                                         ; $4715: $f7
	rst  $38                                         ; $4716: $ff
	ld   a, a                                        ; $4717: $7f
	rst  $38                                         ; $4718: $ff
	ld   a, a                                        ; $4719: $7f
	rst  $38                                         ; $471a: $ff
	rst  $28                                         ; $471b: $ef
	rst  $38                                         ; $471c: $ff
	jr   @+$01                                       ; $471d: $18 $ff

	nop                                              ; $471f: $00
	rst  $38                                         ; $4720: $ff
	cp   $81                                         ; $4721: $fe $81
	rst  $38                                         ; $4723: $ff
	inc  c                                           ; $4724: $0c
	inc  a                                           ; $4725: $3c
	rst  $38                                         ; $4726: $ff
	rst  JumpTable                                         ; $4727: $df
	rst  $38                                         ; $4728: $ff
	rra                                              ; $4729: $1f
	rst  $38                                         ; $472a: $ff
	ei                                               ; $472b: $fb
	rst  $38                                         ; $472c: $ff
	ld   b, $ff                                      ; $472d: $06 $ff
	nop                                              ; $472f: $00
	rst  $38                                         ; $4730: $ff
	cp   a                                           ; $4731: $bf
	add  c                                           ; $4732: $81
	rst  $38                                         ; $4733: $ff
	nop                                              ; $4734: $00
	and  b                                           ; $4735: $a0
	add  c                                           ; $4736: $81
	rst  $38                                         ; $4737: $ff
	nop                                              ; $4738: $00
	ldh  [$81], a                                    ; $4739: $e0 $81
	rst  $38                                         ; $473b: $ff
	ld   [bc], a                                     ; $473c: $02
	nop                                              ; $473d: $00
	rst  $38                                         ; $473e: $ff
	nop                                              ; $473f: $00
	add  e                                           ; $4740: $83
	rst  $38                                         ; $4741: $ff
	nop                                              ; $4742: $00
	ld   h, b                                        ; $4743: $60
	add  c                                           ; $4744: $81
	rst  $38                                         ; $4745: $ff
	nop                                              ; $4746: $00
	ld   h, e                                        ; $4747: $63
	add  c                                           ; $4748: $81
	rst  $38                                         ; $4749: $ff
	ld   [bc], a                                     ; $474a: $02
	inc  bc                                          ; $474b: $03
	rst  $38                                         ; $474c: $ff
	nop                                              ; $474d: $00
	add  e                                           ; $474e: $83
	rst  $38                                         ; $474f: $ff
	nop                                              ; $4750: $00
	rrca                                             ; $4751: $0f
	add  c                                           ; $4752: $81
	rst  $38                                         ; $4753: $ff
	ld   b, $3f                                      ; $4754: $06 $3f
	rst  $38                                         ; $4756: $ff
	rst  $28                                         ; $4757: $ef
	rst  $38                                         ; $4758: $ff
	jr   nz, @+$01                                   ; $4759: $20 $ff

	nop                                              ; $475b: $00
	add  c                                           ; $475c: $81
	rst  $38                                         ; $475d: $ff
	ld   [$fff9], sp                                 ; $475e: $08 $f9 $ff
	and  $ff                                         ; $4761: $e6 $ff
	and  $ff                                         ; $4763: $e6 $ff
	ld   sp, hl                                      ; $4765: $f9
	rst  $38                                         ; $4766: $ff
	ld   sp, hl                                      ; $4767: $f9
	add  b                                           ; $4768: $80
	rst  $38                                         ; $4769: $ff
	ld   bc, $0006                                   ; $476a: $01 $06 $00
	add  c                                           ; $476d: $81
	rst  $38                                         ; $476e: $ff
	inc  c                                           ; $476f: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4770: $cf
	rst  $38                                         ; $4771: $ff
	inc  sp                                          ; $4772: $33
	rst  $38                                         ; $4773: $ff
	inc  sp                                          ; $4774: $33
	rst  $38                                         ; $4775: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4776: $cf
	rst  $38                                         ; $4777: $ff
	or   e                                           ; $4778: $b3
	rst  $38                                         ; $4779: $ff
	rst  $28                                         ; $477a: $ef
	ld   e, h                                        ; $477b: $5c
	nop                                              ; $477c: $00
	add  e                                           ; $477d: $83
	rst  $38                                         ; $477e: $ff
	nop                                              ; $477f: $00
	call z, $ff81                                    ; $4780: $cc $81 $ff
	ld   [bc], a                                     ; $4783: $02
	inc  sp                                          ; $4784: $33
	rst  $38                                         ; $4785: $ff
	inc  sp                                          ; $4786: $33
	add  b                                           ; $4787: $80
	rst  $38                                         ; $4788: $ff
	ld   bc, $0033                                   ; $4789: $01 $33 $00
	add  e                                           ; $478c: $83
	rst  $38                                         ; $478d: $ff
	nop                                              ; $478e: $00
	ld   sp, hl                                      ; $478f: $f9
	add  c                                           ; $4790: $81
	rst  $38                                         ; $4791: $ff
	ld   [bc], a                                     ; $4792: $02
	ccf                                              ; $4793: $3f
	rst  $38                                         ; $4794: $ff
	ld   e, a                                        ; $4795: $5f
	add  b                                           ; $4796: $80
	rst  $38                                         ; $4797: $ff
	ld   bc, $0066                                   ; $4798: $01 $66 $00
	add  l                                           ; $479b: $85
	rst  $38                                         ; $479c: $ff
	ld   [bc], a                                     ; $479d: $02
	cp   $ff                                         ; $479e: $fe $ff
	cp   $81                                         ; $47a0: $fe $81
	rst  $38                                         ; $47a2: $ff
	ld   [bc], a                                     ; $47a3: $02
	cp   $01                                         ; $47a4: $fe $01
	nop                                              ; $47a6: $00
	add  e                                           ; $47a7: $83
	rst  $38                                         ; $47a8: $ff
	inc  b                                           ; $47a9: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47aa: $cf
	rst  $38                                         ; $47ab: $ff
	ld   sp, $31ff                                   ; $47ac: $31 $ff $31
	add  c                                           ; $47af: $81
	rst  $38                                         ; $47b0: $ff
	ld   [bc], a                                     ; $47b1: $02
	ld   sp, $00fe                                   ; $47b2: $31 $fe $00
	add  c                                           ; $47b5: $81
	rst  $38                                         ; $47b6: $ff
	nop                                              ; $47b7: $00
	ld   sp, hl                                      ; $47b8: $f9
	add  c                                           ; $47b9: $81
	rst  $38                                         ; $47ba: $ff
	inc  b                                           ; $47bb: $04
	add  [hl]                                        ; $47bc: $86
	rst  $38                                         ; $47bd: $ff
	add  [hl]                                        ; $47be: $86
	rst  $38                                         ; $47bf: $ff
	add  $80                                         ; $47c0: $c6 $80
	rst  $38                                         ; $47c2: $ff
	ld   bc, $003f                                   ; $47c3: $01 $3f $00
	add  c                                           ; $47c6: $81
	rst  $38                                         ; $47c7: $ff
	inc  c                                           ; $47c8: $0c
	cp   $ff                                         ; $47c9: $fe $ff
	ld   sp, hl                                      ; $47cb: $f9
	rst  $38                                         ; $47cc: $ff
	ld   a, [de]                                     ; $47cd: $1a
	rst  $38                                         ; $47ce: $ff
	rra                                              ; $47cf: $1f
	rst  $38                                         ; $47d0: $ff
	ccf                                              ; $47d1: $3f
	rst  $38                                         ; $47d2: $ff
	ld   a, [$00c7]                                  ; $47d3: $fa $c7 $00
	add  c                                           ; $47d6: $81
	rst  $38                                         ; $47d7: $ff
	inc  b                                           ; $47d8: $04
	ld   h, b                                        ; $47d9: $60
	rst  $38                                         ; $47da: $ff
	sbc  e                                           ; $47db: $9b
	rst  $38                                         ; $47dc: $ff
	rst  JumpTable                                         ; $47dd: $df
	add  c                                           ; $47de: $81
	rst  $38                                         ; $47df: $ff
	inc  b                                           ; $47e0: $04
	ld   hl, sp-$01                                  ; $47e1: $f8 $ff
	db   $dd                                         ; $47e3: $dd
	cp   $00                                         ; $47e4: $fe $00
	add  e                                           ; $47e6: $83
	rst  $38                                         ; $47e7: $ff
	nop                                              ; $47e8: $00
	ldh  a, [$81]                                    ; $47e9: $f0 $81
	rst  $38                                         ; $47eb: $ff
	nop                                              ; $47ec: $00
	pop  af                                          ; $47ed: $f1
	add  d                                           ; $47ee: $82
	rst  $38                                         ; $47ef: $ff
	ld   bc, $0001                                   ; $47f0: $01 $01 $00
	add  e                                           ; $47f3: $83

jr_019_47f4:
	rst  $38                                         ; $47f4: $ff
	nop                                              ; $47f5: $00
	inc  e                                           ; $47f6: $1c
	add  c                                           ; $47f7: $81
	rst  $38                                         ; $47f8: $ff
	nop                                              ; $47f9: $00
	inc  e                                           ; $47fa: $1c
	add  d                                           ; $47fb: $82
	rst  $38                                         ; $47fc: $ff
	add  b                                           ; $47fd: $80
	nop                                              ; $47fe: $00
	add  e                                           ; $47ff: $83
	rst  $38                                         ; $4800: $ff
	ld   b, $f7                                      ; $4801: $06 $f7
	rst  $38                                         ; $4803: $ff
	ld   a, a                                        ; $4804: $7f
	rst  $38                                         ; $4805: $ff
	ld   a, a                                        ; $4806: $7f
	rst  $38                                         ; $4807: $ff
	rst  $28                                         ; $4808: $ef
	add  b                                           ; $4809: $80
	rst  $38                                         ; $480a: $ff
	inc  bc                                          ; $480b: $03
	jr   jr_019_480e                                 ; $480c: $18 $00

jr_019_480e:
	rst  $38                                         ; $480e: $ff
	cp   $81                                         ; $480f: $fe $81
	rst  $38                                         ; $4811: $ff
	inc  c                                           ; $4812: $0c
	inc  a                                           ; $4813: $3c
	rst  $38                                         ; $4814: $ff
	rst  JumpTable                                         ; $4815: $df
	rst  $38                                         ; $4816: $ff
	rra                                              ; $4817: $1f
	rst  $38                                         ; $4818: $ff
	ei                                               ; $4819: $fb
	rst  $38                                         ; $481a: $ff
	ccf                                              ; $481b: $3f
	add  $00                                         ; $481c: $c6 $00
	rst  $38                                         ; $481e: $ff
	cp   a                                           ; $481f: $bf
	add  c                                           ; $4820: $81
	rst  $38                                         ; $4821: $ff
	nop                                              ; $4822: $00
	and  b                                           ; $4823: $a0
	add  c                                           ; $4824: $81
	rst  $38                                         ; $4825: $ff
	nop                                              ; $4826: $00

jr_019_4827:
	ldh  [$82], a                                    ; $4827: $e0 $82
	rst  $38                                         ; $4829: $ff
	add  b                                           ; $482a: $80
	nop                                              ; $482b: $00
	add  e                                           ; $482c: $83
	rst  $38                                         ; $482d: $ff
	nop                                              ; $482e: $00
	ld   h, b                                        ; $482f: $60
	add  c                                           ; $4830: $81
	rst  $38                                         ; $4831: $ff
	nop                                              ; $4832: $00
	ld   h, e                                        ; $4833: $63
	add  d                                           ; $4834: $82
	rst  $38                                         ; $4835: $ff
	ld   bc, $0003                                   ; $4836: $01 $03 $00
	add  e                                           ; $4839: $83
	rst  $38                                         ; $483a: $ff
	nop                                              ; $483b: $00
	rrca                                             ; $483c: $0f
	add  c                                           ; $483d: $81
	rst  $38                                         ; $483e: $ff
	ld   b, $3f                                      ; $483f: $06 $3f
	rst  $38                                         ; $4841: $ff
	rst  $28                                         ; $4842: $ef
	rst  $38                                         ; $4843: $ff
	sbc  a                                           ; $4844: $9f
	ld   b, b                                        ; $4845: $40
	ld   c, $81                                      ; $4846: $0e $81
	rst  $38                                         ; $4848: $ff
	ld   bc, $ff0e                                   ; $4849: $01 $0e $ff
	adc  b                                           ; $484c: $88
	nop                                              ; $484d: $00
	dec  b                                           ; $484e: $05
	ld   [hl], b                                     ; $484f: $70
	rst  $38                                         ; $4850: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4851: $cf
	rst  $38                                         ; $4852: $ff
	ld   b, b                                        ; $4853: $40
	rst  $38                                         ; $4854: $ff
	adc  b                                           ; $4855: $88
	nop                                              ; $4856: $00
	dec  b                                           ; $4857: $05
	jr   nc, @+$01                                   ; $4858: $30 $ff

	cp   $ff                                         ; $485a: $fe $ff
	ld   sp, $88ff                                   ; $485c: $31 $ff $88
	nop                                              ; $485f: $00
	dec  b                                           ; $4860: $05
	ld   h, [hl]                                     ; $4861: $66
	rst  $38                                         ; $4862: $ff
	ld   e, a                                        ; $4863: $5f
	rst  $38                                         ; $4864: $ff
	add  $ff                                         ; $4865: $c6 $ff
	adc  c                                           ; $4867: $89
	nop                                              ; $4868: $00
	add  c                                           ; $4869: $81
	rst  $38                                         ; $486a: $ff
	ld   bc, $ff00                                   ; $486b: $01 $00 $ff
	adc  b                                           ; $486e: $88
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00
	jr   jr_019_47f4                                 ; $4871: $18 $81

	rst  $38                                         ; $4873: $ff
	ld   bc, $ff18                                   ; $4874: $01 $18 $ff
	adc  c                                           ; $4877: $89
	nop                                              ; $4878: $00
	inc  b                                           ; $4879: $04
	rst  $38                                         ; $487a: $ff
	and  $ff                                         ; $487b: $e6 $ff
	add  hl, de                                      ; $487d: $19
	rst  $38                                         ; $487e: $ff
	adc  b                                           ; $487f: $88
	nop                                              ; $4880: $00
	dec  b                                           ; $4881: $05
	ret  nz                                          ; $4882: $c0

	rst  $38                                         ; $4883: $ff
	cp   h                                           ; $4884: $bc
	rst  $38                                         ; $4885: $ff
	add  e                                           ; $4886: $83
	rst  $38                                         ; $4887: $ff
	adc  b                                           ; $4888: $88
	nop                                              ; $4889: $00
	dec  b                                           ; $488a: $05
	dec  de                                          ; $488b: $1b
	rst  $38                                         ; $488c: $ff
	ccf                                              ; $488d: $3f
	rst  $38                                         ; $488e: $ff
	db   $db                                         ; $488f: $db
	rst  $38                                         ; $4890: $ff
	adc  b                                           ; $4891: $88
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	ld   bc, $ff81                                   ; $4894: $01 $81 $ff
	ld   bc, $ff01                                   ; $4897: $01 $01 $ff
	adc  c                                           ; $489a: $89
	nop                                              ; $489b: $00
	add  c                                           ; $489c: $81
	rst  $38                                         ; $489d: $ff
	ld   bc, $ff00                                   ; $489e: $01 $00 $ff
	adc  b                                           ; $48a1: $88
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	jr   jr_019_4827                                 ; $48a4: $18 $81

	rst  $38                                         ; $48a6: $ff
	ld   bc, $ff18                                   ; $48a7: $01 $18 $ff
	adc  b                                           ; $48aa: $88
	nop                                              ; $48ab: $00
	dec  b                                           ; $48ac: $05
	and  $ff                                         ; $48ad: $e6 $ff
	rra                                              ; $48af: $1f
	rst  $38                                         ; $48b0: $ff
	ld   b, $ff                                      ; $48b1: $06 $ff
	adc  c                                           ; $48b3: $89
	nop                                              ; $48b4: $00
	add  c                                           ; $48b5: $81
	rst  $38                                         ; $48b6: $ff
	ld   bc, $ff00                                   ; $48b7: $01 $00 $ff
	adc  b                                           ; $48ba: $88
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	inc  bc                                          ; $48bd: $03
	add  c                                           ; $48be: $81
	rst  $38                                         ; $48bf: $ff
	ld   bc, $ff03                                   ; $48c0: $01 $03 $ff
	adc  c                                           ; $48c3: $89
	nop                                              ; $48c4: $00
	add  c                                           ; $48c5: $81
	rst  $38                                         ; $48c6: $ff
	ld   bc, $ff00                                   ; $48c7: $01 $00 $ff
	adc  c                                           ; $48ca: $89
	nop                                              ; $48cb: $00
	add  c                                           ; $48cc: $81
	rst  $38                                         ; $48cd: $ff
	ld   [$fff9], sp                                 ; $48ce: $08 $f9 $ff
	and  $ff                                         ; $48d1: $e6 $ff
	and  $ff                                         ; $48d3: $e6 $ff
	ld   sp, hl                                      ; $48d5: $f9
	rst  $38                                         ; $48d6: $ff
	ld   sp, hl                                      ; $48d7: $f9
	add  c                                           ; $48d8: $81
	rst  $38                                         ; $48d9: $ff
	nop                                              ; $48da: $00
	ld   sp, hl                                      ; $48db: $f9
	add  c                                           ; $48dc: $81
	rst  $38                                         ; $48dd: $ff
	inc  c                                           ; $48de: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48df: $cf
	rst  $38                                         ; $48e0: $ff
	inc  sp                                          ; $48e1: $33
	rst  $38                                         ; $48e2: $ff
	inc  sp                                          ; $48e3: $33
	rst  $38                                         ; $48e4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48e5: $cf
	rst  $38                                         ; $48e6: $ff
	or   e                                           ; $48e7: $b3
	rst  $38                                         ; $48e8: $ff
	rst  $28                                         ; $48e9: $ef
	rst  $38                                         ; $48ea: $ff
	and  e                                           ; $48eb: $a3
	add  e                                           ; $48ec: $83
	rst  $38                                         ; $48ed: $ff
	nop                                              ; $48ee: $00
	call z, $ff81                                    ; $48ef: $cc $81 $ff
	ld   [bc], a                                     ; $48f2: $02
	inc  sp                                          ; $48f3: $33
	rst  $38                                         ; $48f4: $ff
	inc  sp                                          ; $48f5: $33
	add  c                                           ; $48f6: $81
	rst  $38                                         ; $48f7: $ff
	nop                                              ; $48f8: $00
	call z, $ff83                                    ; $48f9: $cc $83 $ff
	nop                                              ; $48fc: $00
	ld   sp, hl                                      ; $48fd: $f9
	add  c                                           ; $48fe: $81
	rst  $38                                         ; $48ff: $ff
	ld   [bc], a                                     ; $4900: $02
	ccf                                              ; $4901: $3f
	rst  $38                                         ; $4902: $ff
	ld   e, a                                        ; $4903: $5f
	add  c                                           ; $4904: $81
	rst  $38                                         ; $4905: $ff
	nop                                              ; $4906: $00
	sbc  c                                           ; $4907: $99
	add  l                                           ; $4908: $85
	rst  $38                                         ; $4909: $ff
	ld   [bc], a                                     ; $490a: $02
	cp   $ff                                         ; $490b: $fe $ff
	cp   $81                                         ; $490d: $fe $81
	rst  $38                                         ; $490f: $ff
	ld   [bc], a                                     ; $4910: $02
	cp   $ff                                         ; $4911: $fe $ff
	cp   $83                                         ; $4913: $fe $83
	rst  $38                                         ; $4915: $ff
	inc  b                                           ; $4916: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4917: $cf
	rst  $38                                         ; $4918: $ff
	ld   sp, $31ff                                   ; $4919: $31 $ff $31
	add  c                                           ; $491c: $81
	rst  $38                                         ; $491d: $ff
	ld   [bc], a                                     ; $491e: $02
	ld   sp, $01ff                                   ; $491f: $31 $ff $01
	add  c                                           ; $4922: $81
	rst  $38                                         ; $4923: $ff
	nop                                              ; $4924: $00
	ld   sp, hl                                      ; $4925: $f9
	add  c                                           ; $4926: $81
	rst  $38                                         ; $4927: $ff
	inc  b                                           ; $4928: $04
	add  [hl]                                        ; $4929: $86
	rst  $38                                         ; $492a: $ff
	add  [hl]                                        ; $492b: $86
	rst  $38                                         ; $492c: $ff
	add  $81                                         ; $492d: $c6 $81
	rst  $38                                         ; $492f: $ff
	nop                                              ; $4930: $00
	ret  nz                                          ; $4931: $c0

	add  c                                           ; $4932: $81
	rst  $38                                         ; $4933: $ff
	inc  c                                           ; $4934: $0c
	cp   $ff                                         ; $4935: $fe $ff
	ld   sp, hl                                      ; $4937: $f9
	rst  $38                                         ; $4938: $ff
	ld   a, [de]                                     ; $4939: $1a
	rst  $38                                         ; $493a: $ff
	rra                                              ; $493b: $1f
	rst  $38                                         ; $493c: $ff
	ccf                                              ; $493d: $3f
	rst  $38                                         ; $493e: $ff
	ld   a, [$38ff]                                  ; $493f: $fa $ff $38
	add  c                                           ; $4942: $81
	rst  $38                                         ; $4943: $ff
	inc  b                                           ; $4944: $04
	ld   h, b                                        ; $4945: $60
	rst  $38                                         ; $4946: $ff
	sbc  e                                           ; $4947: $9b
	rst  $38                                         ; $4948: $ff
	rst  JumpTable                                         ; $4949: $df
	add  c                                           ; $494a: $81
	rst  $38                                         ; $494b: $ff
	inc  b                                           ; $494c: $04
	ld   hl, sp-$01                                  ; $494d: $f8 $ff
	db   $dd                                         ; $494f: $dd
	rst  $38                                         ; $4950: $ff
	ld   bc, $ff83                                   ; $4951: $01 $83 $ff
	nop                                              ; $4954: $00
	ldh  a, [$81]                                    ; $4955: $f0 $81
	rst  $38                                         ; $4957: $ff
	nop                                              ; $4958: $00
	pop  af                                          ; $4959: $f1
	add  e                                           ; $495a: $83
	rst  $38                                         ; $495b: $ff
	nop                                              ; $495c: $00
	cp   $83                                         ; $495d: $fe $83
	rst  $38                                         ; $495f: $ff
	nop                                              ; $4960: $00
	inc  e                                           ; $4961: $1c
	add  c                                           ; $4962: $81
	rst  $38                                         ; $4963: $ff
	nop                                              ; $4964: $00
	inc  e                                           ; $4965: $1c
	adc  c                                           ; $4966: $89
	rst  $38                                         ; $4967: $ff
	ld   b, $f7                                      ; $4968: $06 $f7
	rst  $38                                         ; $496a: $ff
	ld   a, a                                        ; $496b: $7f
	rst  $38                                         ; $496c: $ff
	ld   a, a                                        ; $496d: $7f
	rst  $38                                         ; $496e: $ff
	rst  $28                                         ; $496f: $ef
	add  c                                           ; $4970: $81
	rst  $38                                         ; $4971: $ff
	ld   [bc], a                                     ; $4972: $02
	rst  $20                                         ; $4973: $e7
	rst  $38                                         ; $4974: $ff
	cp   $81                                         ; $4975: $fe $81
	rst  $38                                         ; $4977: $ff
	inc  c                                           ; $4978: $0c
	inc  a                                           ; $4979: $3c
	rst  $38                                         ; $497a: $ff
	rst  JumpTable                                         ; $497b: $df
	rst  $38                                         ; $497c: $ff
	rra                                              ; $497d: $1f
	rst  $38                                         ; $497e: $ff
	ei                                               ; $497f: $fb
	rst  $38                                         ; $4980: $ff
	ccf                                              ; $4981: $3f
	rst  $38                                         ; $4982: $ff
	add  hl, sp                                      ; $4983: $39
	rst  $38                                         ; $4984: $ff
	cp   a                                           ; $4985: $bf
	add  c                                           ; $4986: $81
	rst  $38                                         ; $4987: $ff
	nop                                              ; $4988: $00
	and  b                                           ; $4989: $a0
	add  c                                           ; $498a: $81
	rst  $38                                         ; $498b: $ff
	nop                                              ; $498c: $00
	ldh  [$89], a                                    ; $498d: $e0 $89
	rst  $38                                         ; $498f: $ff
	nop                                              ; $4990: $00
	ld   h, b                                        ; $4991: $60
	add  c                                           ; $4992: $81
	rst  $38                                         ; $4993: $ff
	nop                                              ; $4994: $00
	ld   h, e                                        ; $4995: $63
	add  e                                           ; $4996: $83
	rst  $38                                         ; $4997: $ff
	nop                                              ; $4998: $00
	db   $fc                                         ; $4999: $fc
	add  e                                           ; $499a: $83
	rst  $38                                         ; $499b: $ff
	nop                                              ; $499c: $00
	rrca                                             ; $499d: $0f
	add  c                                           ; $499e: $81
	rst  $38                                         ; $499f: $ff
	ld   b, $3f                                      ; $49a0: $06 $3f
	rst  $38                                         ; $49a2: $ff
	rst  $28                                         ; $49a3: $ef
	rst  $38                                         ; $49a4: $ff
	sbc  a                                           ; $49a5: $9f
	rst  $38                                         ; $49a6: $ff
	or   c                                           ; $49a7: $b1
	add  c                                           ; $49a8: $81
	rst  $38                                         ; $49a9: $ff
	ld   [bc], a                                     ; $49aa: $02
	rst  $20                                         ; $49ab: $e7
	rst  $38                                         ; $49ac: $ff
	rst  $28                                         ; $49ad: $ef
	add  l                                           ; $49ae: $85
	rst  $38                                         ; $49af: $ff
	inc  b                                           ; $49b0: $04
	ld   sp, hl                                      ; $49b1: $f9
	rst  $38                                         ; $49b2: $ff
	adc  a                                           ; $49b3: $8f
	rst  $38                                         ; $49b4: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49b5: $cf
	add  c                                           ; $49b6: $81
	rst  $38                                         ; $49b7: $ff
	nop                                              ; $49b8: $00
	ei                                               ; $49b9: $fb
	add  c                                           ; $49ba: $81
	rst  $38                                         ; $49bb: $ff
	nop                                              ; $49bc: $00
	rst  ToBoot                                         ; $49bd: $c7
	add  c                                           ; $49be: $81
	rst  $38                                         ; $49bf: $ff
	ld   b, $83                                      ; $49c0: $06 $83
	rst  $38                                         ; $49c2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49c3: $cf
	rst  $38                                         ; $49c4: $ff
	cp   $ff                                         ; $49c5: $fe $ff
	cp   $87                                         ; $49c7: $fe $87
	rst  $38                                         ; $49c9: $ff
	ld   b, $cf                                      ; $49ca: $06 $cf
	rst  $38                                         ; $49cc: $ff
	sbc  c                                           ; $49cd: $99
	rst  $38                                         ; $49ce: $ff
	ld   e, a                                        ; $49cf: $5f
	rst  $38                                         ; $49d0: $ff
	ccf                                              ; $49d1: $3f
	add  c                                           ; $49d2: $81
	rst  $38                                         ; $49d3: $ff
	ld   b, $fb                                      ; $49d4: $06 $fb
	rst  $38                                         ; $49d6: $ff
	cp   $ff                                         ; $49d7: $fe $ff
	db   $fd                                         ; $49d9: $fd
	rst  $38                                         ; $49da: $ff
	cp   $83                                         ; $49db: $fe $83
	rst  $38                                         ; $49dd: $ff
	nop                                              ; $49de: $00
	and  $83                                         ; $49df: $e6 $83
	rst  $38                                         ; $49e1: $ff
	inc  c                                           ; $49e2: $0c
	sbc  $ff                                         ; $49e3: $de $ff
	scf                                              ; $49e5: $37
	rst  $38                                         ; $49e6: $ff
	rrca                                             ; $49e7: $0f
	rst  $38                                         ; $49e8: $ff
	rst  $20                                         ; $49e9: $e7
	rst  $38                                         ; $49ea: $ff
	ei                                               ; $49eb: $fb
	rst  $38                                         ; $49ec: $ff
	ld   l, a                                        ; $49ed: $6f
	rst  $38                                         ; $49ee: $ff
	di                                               ; $49ef: $f3
	add  c                                           ; $49f0: $81
	rst  $38                                         ; $49f1: $ff
	inc  b                                           ; $49f2: $04
	add  a                                           ; $49f3: $87
	rst  $38                                         ; $49f4: $ff
	ld   a, a                                        ; $49f5: $7f
	rst  $38                                         ; $49f6: $ff
	add  a                                           ; $49f7: $87
	add  c                                           ; $49f8: $81
	rst  $38                                         ; $49f9: $ff
	nop                                              ; $49fa: $00
	and  $81                                         ; $49fb: $e6 $81
	rst  $38                                         ; $49fd: $ff
	inc  c                                           ; $49fe: $0c
	jp   hl                                          ; $49ff: $e9


	rst  $38                                         ; $4a00: $ff
	cp   $ff                                         ; $4a01: $fe $ff
	adc  [hl]                                        ; $4a03: $8e
	rst  $38                                         ; $4a04: $ff
	pop  af                                          ; $4a05: $f1
	rst  $38                                         ; $4a06: $ff
	adc  [hl]                                        ; $4a07: $8e
	rst  $38                                         ; $4a08: $ff
	ccf                                              ; $4a09: $3f
	rst  $38                                         ; $4a0a: $ff
	cp   h                                           ; $4a0b: $bc
	add  c                                           ; $4a0c: $81
	rst  $38                                         ; $4a0d: $ff
	nop                                              ; $4a0e: $00
	ld   a, [hl]                                     ; $4a0f: $7e
	add  c                                           ; $4a10: $81
	rst  $38                                         ; $4a11: $ff
	inc  c                                           ; $4a12: $0c
	rra                                              ; $4a13: $1f
	rst  $38                                         ; $4a14: $ff
	cp   $ff                                         ; $4a15: $fe $ff
	inc  e                                           ; $4a17: $1c
	rst  $38                                         ; $4a18: $ff
	db   $e4                                         ; $4a19: $e4
	rst  $38                                         ; $4a1a: $ff
	ccf                                              ; $4a1b: $3f
	rst  $38                                         ; $4a1c: $ff
	ei                                               ; $4a1d: $fb
	rst  $38                                         ; $4a1e: $ff
	ld   hl, sp-$7b                                  ; $4a1f: $f8 $85
	rst  $38                                         ; $4a21: $ff
	ld   [bc], a                                     ; $4a22: $02
	daa                                              ; $4a23: $27
	rst  $38                                         ; $4a24: $ff
	cp   $87                                         ; $4a25: $fe $87
	rst  $38                                         ; $4a27: $ff
	nop                                              ; $4a28: $00
	pop  hl                                          ; $4a29: $e1
	add  c                                           ; $4a2a: $81
	rst  $38                                         ; $4a2b: $ff
	nop                                              ; $4a2c: $00
	ldh  [$89], a                                    ; $4a2d: $e0 $89
	rst  $38                                         ; $4a2f: $ff
	nop                                              ; $4a30: $00
	ld   c, $81                                      ; $4a31: $0e $81
	rst  $38                                         ; $4a33: $ff
	ld   [bc], a                                     ; $4a34: $02
	ld   c, $ff                                      ; $4a35: $0e $ff
	rst  $20                                         ; $4a37: $e7
	add  c                                           ; $4a38: $81
	rst  $38                                         ; $4a39: $ff
	nop                                              ; $4a3a: $00
	rst  $10                                         ; $4a3b: $d7
	add  c                                           ; $4a3c: $81
	rst  $38                                         ; $4a3d: $ff
	inc  c                                           ; $4a3e: $0c
	cp   a                                           ; $4a3f: $bf
	rst  $38                                         ; $4a40: $ff
	ld   l, a                                        ; $4a41: $6f
	rst  $38                                         ; $4a42: $ff
	rst  JumpTable                                         ; $4a43: $df
	rst  $38                                         ; $4a44: $ff
	ccf                                              ; $4a45: $3f
	rst  $38                                         ; $4a46: $ff
	add  hl, de                                      ; $4a47: $19
	rst  $38                                         ; $4a48: $ff
	rra                                              ; $4a49: $1f
	rst  $38                                         ; $4a4a: $ff
	push af                                          ; $4a4b: $f5
	add  c                                           ; $4a4c: $81
	rst  $38                                         ; $4a4d: $ff
	ld   b, $ef                                      ; $4a4e: $06 $ef
	rst  $38                                         ; $4a50: $ff
	sbc  e                                           ; $4a51: $9b
	rst  $38                                         ; $4a52: $ff
	rst  $30                                         ; $4a53: $f7
	rst  $38                                         ; $4a54: $ff
	adc  a                                           ; $4a55: $8f
	adc  c                                           ; $4a56: $89
	rst  $38                                         ; $4a57: $ff
	nop                                              ; $4a58: $00
	ret  nz                                          ; $4a59: $c0

	add  c                                           ; $4a5a: $81
	rst  $38                                         ; $4a5b: $ff
	ld   [bc], a                                     ; $4a5c: $02
	ret  nz                                          ; $4a5d: $c0

	rst  $38                                         ; $4a5e: $ff
	db   $fc                                         ; $4a5f: $fc
	add  a                                           ; $4a60: $87
	rst  $38                                         ; $4a61: $ff
	inc  b                                           ; $4a62: $04
	ld   a, $ff                                      ; $4a63: $3e $ff
	ld   sp, hl                                      ; $4a65: $f9
	rst  $38                                         ; $4a66: $ff
	dec  sp                                          ; $4a67: $3b
	sub  b                                           ; $4a68: $90
	rst  $38                                         ; $4a69: $ff
	add  b                                           ; $4a6a: $80
	nop                                              ; $4a6b: $00
	add  hl, bc                                      ; $4a6c: $09
	rst  $38                                         ; $4a6d: $ff
	ld   sp, hl                                      ; $4a6e: $f9
	rst  $38                                         ; $4a6f: $ff
	and  $ff                                         ; $4a70: $e6 $ff
	and  $ff                                         ; $4a72: $e6 $ff
	ld   sp, hl                                      ; $4a74: $f9
	rst  $38                                         ; $4a75: $ff
	ld   sp, hl                                      ; $4a76: $f9
	add  b                                           ; $4a77: $80
	rst  $38                                         ; $4a78: $ff
	nop                                              ; $4a79: $00
	ld   b, $81                                      ; $4a7a: $06 $81
	nop                                              ; $4a7c: $00
	inc  c                                           ; $4a7d: $0c
	rst  $38                                         ; $4a7e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a7f: $cf
	rst  $38                                         ; $4a80: $ff
	inc  sp                                          ; $4a81: $33
	rst  $38                                         ; $4a82: $ff
	inc  sp                                          ; $4a83: $33
	rst  $38                                         ; $4a84: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a85: $cf
	rst  $38                                         ; $4a86: $ff
	or   e                                           ; $4a87: $b3
	rst  $38                                         ; $4a88: $ff
	rst  $28                                         ; $4a89: $ef
	ld   e, h                                        ; $4a8a: $5c
	add  c                                           ; $4a8b: $81
	nop                                              ; $4a8c: $00
	add  c                                           ; $4a8d: $81
	rst  $38                                         ; $4a8e: $ff
	nop                                              ; $4a8f: $00
	call z, $ff81                                    ; $4a90: $cc $81 $ff
	ld   [bc], a                                     ; $4a93: $02
	inc  sp                                          ; $4a94: $33
	rst  $38                                         ; $4a95: $ff
	inc  sp                                          ; $4a96: $33
	add  b                                           ; $4a97: $80
	rst  $38                                         ; $4a98: $ff
	nop                                              ; $4a99: $00
	inc  sp                                          ; $4a9a: $33
	add  c                                           ; $4a9b: $81
	nop                                              ; $4a9c: $00
	add  c                                           ; $4a9d: $81
	rst  $38                                         ; $4a9e: $ff
	nop                                              ; $4a9f: $00
	ld   sp, hl                                      ; $4aa0: $f9
	add  c                                           ; $4aa1: $81
	rst  $38                                         ; $4aa2: $ff

jr_019_4aa3:
	ld   [bc], a                                     ; $4aa3: $02
	ccf                                              ; $4aa4: $3f
	rst  $38                                         ; $4aa5: $ff
	ld   e, a                                        ; $4aa6: $5f
	add  b                                           ; $4aa7: $80
	rst  $38                                         ; $4aa8: $ff
	nop                                              ; $4aa9: $00
	ld   h, [hl]                                     ; $4aaa: $66
	add  c                                           ; $4aab: $81
	nop                                              ; $4aac: $00
	add  e                                           ; $4aad: $83
	rst  $38                                         ; $4aae: $ff
	ld   [bc], a                                     ; $4aaf: $02
	cp   $ff                                         ; $4ab0: $fe $ff
	cp   $81                                         ; $4ab2: $fe $81
	rst  $38                                         ; $4ab4: $ff
	ld   bc, $01fe                                   ; $4ab5: $01 $fe $01
	add  c                                           ; $4ab8: $81
	nop                                              ; $4ab9: $00
	add  c                                           ; $4aba: $81
	rst  $38                                         ; $4abb: $ff
	inc  b                                           ; $4abc: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4abd: $cf
	rst  $38                                         ; $4abe: $ff
	ld   sp, $31ff                                   ; $4abf: $31 $ff $31
	add  c                                           ; $4ac2: $81
	rst  $38                                         ; $4ac3: $ff
	ld   bc, $fe31                                   ; $4ac4: $01 $31 $fe
	add  c                                           ; $4ac7: $81
	nop                                              ; $4ac8: $00
	ld   bc, $f9ff                                   ; $4ac9: $01 $ff $f9
	add  c                                           ; $4acc: $81
	rst  $38                                         ; $4acd: $ff
	inc  b                                           ; $4ace: $04
	add  [hl]                                        ; $4acf: $86
	rst  $38                                         ; $4ad0: $ff
	add  [hl]                                        ; $4ad1: $86
	rst  $38                                         ; $4ad2: $ff
	add  $80                                         ; $4ad3: $c6 $80
	rst  $38                                         ; $4ad5: $ff
	nop                                              ; $4ad6: $00
	ccf                                              ; $4ad7: $3f
	add  c                                           ; $4ad8: $81
	nop                                              ; $4ad9: $00
	inc  c                                           ; $4ada: $0c
	rst  $38                                         ; $4adb: $ff
	cp   $ff                                         ; $4adc: $fe $ff
	ld   sp, hl                                      ; $4ade: $f9
	rst  $38                                         ; $4adf: $ff
	ld   a, [de]                                     ; $4ae0: $1a
	rst  $38                                         ; $4ae1: $ff
	rra                                              ; $4ae2: $1f
	rst  $38                                         ; $4ae3: $ff
	ccf                                              ; $4ae4: $3f
	rst  $38                                         ; $4ae5: $ff
	ld   a, [$81c7]                                  ; $4ae6: $fa $c7 $81
	nop                                              ; $4ae9: $00
	dec  b                                           ; $4aea: $05
	rst  $38                                         ; $4aeb: $ff
	ld   h, b                                        ; $4aec: $60
	rst  $38                                         ; $4aed: $ff
	sbc  e                                           ; $4aee: $9b
	rst  $38                                         ; $4aef: $ff
	rst  JumpTable                                         ; $4af0: $df
	add  c                                           ; $4af1: $81
	rst  $38                                         ; $4af2: $ff
	inc  bc                                          ; $4af3: $03
	ld   hl, sp-$01                                  ; $4af4: $f8 $ff
	db   $dd                                         ; $4af6: $dd
	cp   $81                                         ; $4af7: $fe $81
	nop                                              ; $4af9: $00
	add  c                                           ; $4afa: $81
	rst  $38                                         ; $4afb: $ff
	nop                                              ; $4afc: $00
	ldh  a, [$81]                                    ; $4afd: $f0 $81
	rst  $38                                         ; $4aff: $ff
	nop                                              ; $4b00: $00
	pop  af                                          ; $4b01: $f1
	add  d                                           ; $4b02: $82
	rst  $38                                         ; $4b03: $ff
	nop                                              ; $4b04: $00
	ld   bc, $0081                                   ; $4b05: $01 $81 $00
	add  c                                           ; $4b08: $81
	rst  $38                                         ; $4b09: $ff
	nop                                              ; $4b0a: $00
	inc  e                                           ; $4b0b: $1c
	add  c                                           ; $4b0c: $81
	rst  $38                                         ; $4b0d: $ff
	nop                                              ; $4b0e: $00
	inc  e                                           ; $4b0f: $1c
	add  d                                           ; $4b10: $82
	rst  $38                                         ; $4b11: $ff
	add  d                                           ; $4b12: $82
	nop                                              ; $4b13: $00
	add  c                                           ; $4b14: $81
	rst  $38                                         ; $4b15: $ff
	ld   b, $f7                                      ; $4b16: $06 $f7
	rst  $38                                         ; $4b18: $ff
	ld   a, a                                        ; $4b19: $7f
	rst  $38                                         ; $4b1a: $ff
	ld   a, a                                        ; $4b1b: $7f
	rst  $38                                         ; $4b1c: $ff
	rst  $28                                         ; $4b1d: $ef
	add  b                                           ; $4b1e: $80
	rst  $38                                         ; $4b1f: $ff
	nop                                              ; $4b20: $00
	jr   jr_019_4aa3                                 ; $4b21: $18 $80

	nop                                              ; $4b23: $00
	nop                                              ; $4b24: $00
	ld   bc, $ff81                                   ; $4b25: $01 $81 $ff

jr_019_4b28:
	add  hl, bc                                      ; $4b28: $09
	inc  a                                           ; $4b29: $3c
	rst  $38                                         ; $4b2a: $ff
	rst  JumpTable                                         ; $4b2b: $df
	rst  $38                                         ; $4b2c: $ff
	rra                                              ; $4b2d: $1f
	rst  $38                                         ; $4b2e: $ff
	ei                                               ; $4b2f: $fb
	rst  $38                                         ; $4b30: $ff
	ccf                                              ; $4b31: $3f
	add  $80                                         ; $4b32: $c6 $80
	nop                                              ; $4b34: $00
	nop                                              ; $4b35: $00
	ld   b, b                                        ; $4b36: $40
	add  c                                           ; $4b37: $81
	rst  $38                                         ; $4b38: $ff
	nop                                              ; $4b39: $00
	and  b                                           ; $4b3a: $a0
	add  c                                           ; $4b3b: $81
	rst  $38                                         ; $4b3c: $ff
	nop                                              ; $4b3d: $00
	ldh  [$82], a                                    ; $4b3e: $e0 $82
	rst  $38                                         ; $4b40: $ff
	add  d                                           ; $4b41: $82
	nop                                              ; $4b42: $00
	add  c                                           ; $4b43: $81
	rst  $38                                         ; $4b44: $ff
	nop                                              ; $4b45: $00
	ld   h, b                                        ; $4b46: $60
	add  c                                           ; $4b47: $81
	rst  $38                                         ; $4b48: $ff
	nop                                              ; $4b49: $00
	ld   h, e                                        ; $4b4a: $63
	add  d                                           ; $4b4b: $82
	rst  $38                                         ; $4b4c: $ff
	nop                                              ; $4b4d: $00
	inc  bc                                          ; $4b4e: $03
	add  c                                           ; $4b4f: $81
	nop                                              ; $4b50: $00
	add  c                                           ; $4b51: $81
	rst  $38                                         ; $4b52: $ff
	nop                                              ; $4b53: $00
	rrca                                             ; $4b54: $0f
	add  c                                           ; $4b55: $81
	rst  $38                                         ; $4b56: $ff
	ld   b, $3f                                      ; $4b57: $06 $3f
	rst  $38                                         ; $4b59: $ff
	rst  $28                                         ; $4b5a: $ef
	rst  $38                                         ; $4b5b: $ff
	sbc  a                                           ; $4b5c: $9f
	ld   b, b                                        ; $4b5d: $40
	nop                                              ; $4b5e: $00
	add  e                                           ; $4b5f: $83
	rst  $38                                         ; $4b60: $ff
	ld   bc, $ff00                                   ; $4b61: $01 $00 $ff
	add  b                                           ; $4b64: $80
	nop                                              ; $4b65: $00
	add  b                                           ; $4b66: $80
	ld   b, $80                                      ; $4b67: $06 $80
	rra                                              ; $4b69: $1f
	add  b                                           ; $4b6a: $80
	ld   b, $00                                      ; $4b6b: $06 $00
	nop                                              ; $4b6d: $00
	add  e                                           ; $4b6e: $83
	rst  $38                                         ; $4b6f: $ff
	ld   bc, $ff00                                   ; $4b70: $01 $00 $ff
	add  b                                           ; $4b73: $80
	nop                                              ; $4b74: $00
	add  b                                           ; $4b75: $80
	jr   nc, @-$7e                                   ; $4b76: $30 $80

	db   $fc                                         ; $4b78: $fc
	add  b                                           ; $4b79: $80
	jr   nc, jr_019_4b7c                             ; $4b7a: $30 $00

jr_019_4b7c:
	nop                                              ; $4b7c: $00
	add  e                                           ; $4b7d: $83
	rst  $38                                         ; $4b7e: $ff
	ld   bc, $ff00                                   ; $4b7f: $01 $00 $ff
	add  d                                           ; $4b82: $82
	nop                                              ; $4b83: $00
	add  d                                           ; $4b84: $82
	inc  sp                                          ; $4b85: $33
	nop                                              ; $4b86: $00
	nop                                              ; $4b87: $00
	add  e                                           ; $4b88: $83
	rst  $38                                         ; $4b89: $ff
	ld   bc, $ff00                                   ; $4b8a: $01 $00 $ff
	add  d                                           ; $4b8d: $82
	nop                                              ; $4b8e: $00
	add  d                                           ; $4b8f: $82
	ld   b, $00                                      ; $4b90: $06 $00
	nop                                              ; $4b92: $00
	add  e                                           ; $4b93: $83
	rst  $38                                         ; $4b94: $ff
	ld   bc, $ff00                                   ; $4b95: $01 $00 $ff
	add  h                                           ; $4b98: $84
	nop                                              ; $4b99: $00
	add  b                                           ; $4b9a: $80
	ld   bc, $0000                                   ; $4b9b: $01 $00 $00
	add  e                                           ; $4b9e: $83
	rst  $38                                         ; $4b9f: $ff
	ld   bc, $ff00                                   ; $4ba0: $01 $00 $ff
	add  d                                           ; $4ba3: $82
	nop                                              ; $4ba4: $00
	add  b                                           ; $4ba5: $80
	jr   nc, jr_019_4b28                             ; $4ba6: $30 $80

	cp   $00                                         ; $4ba8: $fe $00
	nop                                              ; $4baa: $00
	add  e                                           ; $4bab: $83
	rst  $38                                         ; $4bac: $ff
	ld   bc, $ff00                                   ; $4bad: $01 $00 $ff
	add  b                                           ; $4bb0: $80
	nop                                              ; $4bb1: $00
	add  d                                           ; $4bb2: $82
	ld   b, $80                                      ; $4bb3: $06 $80
	ld   a, a                                        ; $4bb5: $7f
	nop                                              ; $4bb6: $00
	nop                                              ; $4bb7: $00
	add  e                                           ; $4bb8: $83
	rst  $38                                         ; $4bb9: $ff
	ld   bc, $ff00                                   ; $4bba: $01 $00 $ff
	add  b                                           ; $4bbd: $80
	nop                                              ; $4bbe: $00
	add  b                                           ; $4bbf: $80
	ld   bc, $0780                                   ; $4bc0: $01 $80 $07
	add  b                                           ; $4bc3: $80
	ldh  [c], a                                      ; $4bc4: $e2
	nop                                              ; $4bc5: $00
	nop                                              ; $4bc6: $00
	add  e                                           ; $4bc7: $83
	rst  $38                                         ; $4bc8: $ff
	ld   bc, $ff00                                   ; $4bc9: $01 $00 $ff
	add  b                                           ; $4bcc: $80
	nop                                              ; $4bcd: $00
	add  b                                           ; $4bce: $80
	sbc  a                                           ; $4bcf: $9f
	add  b                                           ; $4bd0: $80
	ei                                               ; $4bd1: $fb
	add  b                                           ; $4bd2: $80
	db   $db                                         ; $4bd3: $db
	nop                                              ; $4bd4: $00
	nop                                              ; $4bd5: $00
	add  e                                           ; $4bd6: $83
	rst  $38                                         ; $4bd7: $ff

jr_019_4bd8:
	ld   bc, $ff00                                   ; $4bd8: $01 $00 $ff
	add  d                                           ; $4bdb: $82
	nop                                              ; $4bdc: $00
	add  d                                           ; $4bdd: $82
	rrca                                             ; $4bde: $0f
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	add  e                                           ; $4be1: $83
	rst  $38                                         ; $4be2: $ff
	ld   bc, $ff00                                   ; $4be3: $01 $00 $ff
	add  d                                           ; $4be6: $82
	nop                                              ; $4be7: $00
	add  d                                           ; $4be8: $82
	db   $e3                                         ; $4be9: $e3
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	add  e                                           ; $4bec: $83
	rst  $38                                         ; $4bed: $ff
	ld   bc, $ff00                                   ; $4bee: $01 $00 $ff
	add  d                                           ; $4bf1: $82
	nop                                              ; $4bf2: $00
	add  b                                           ; $4bf3: $80
	ld   [$8880], sp                                 ; $4bf4: $08 $80 $88
	nop                                              ; $4bf7: $00
	nop                                              ; $4bf8: $00
	add  e                                           ; $4bf9: $83
	rst  $38                                         ; $4bfa: $ff
	ld   bc, $ff00                                   ; $4bfb: $01 $00 $ff
	add  d                                           ; $4bfe: $82
	ld   bc, $c280                                   ; $4bff: $01 $80 $c2
	add  b                                           ; $4c02: $80
	ldh  [c], a                                      ; $4c03: $e2
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	add  e                                           ; $4c06: $83
	rst  $38                                         ; $4c07: $ff
	ld   bc, $ff00                                   ; $4c08: $01 $00 $ff
	add  d                                           ; $4c0b: $82
	ld   b, b                                        ; $4c0c: $40
	add  d                                           ; $4c0d: $82
	rra                                              ; $4c0e: $1f
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	add  e                                           ; $4c11: $83
	rst  $38                                         ; $4c12: $ff
	ld   bc, $ff00                                   ; $4c13: $01 $00 $ff
	add  d                                           ; $4c16: $82
	nop                                              ; $4c17: $00
	add  d                                           ; $4c18: $82
	sbc  a                                           ; $4c19: $9f
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	add  e                                           ; $4c1c: $83
	rst  $38                                         ; $4c1d: $ff
	ld   bc, $ff00                                   ; $4c1e: $01 $00 $ff
	add  d                                           ; $4c21: $82
	nop                                              ; $4c22: $00
	add  d                                           ; $4c23: $82

jr_019_4c24:
	ldh  a, [$80]                                    ; $4c24: $f0 $80
	rst  $38                                         ; $4c26: $ff
	add  b                                           ; $4c27: $80
	ld   c, $80                                      ; $4c28: $0e $80
	ld   d, $86                                      ; $4c2a: $16 $86
	ld   b, $80                                      ; $4c2c: $06 $80
	nop                                              ; $4c2e: $00
	add  b                                           ; $4c2f: $80
	rst  $38                                         ; $4c30: $ff
	add  d                                           ; $4c31: $82
	ld   b, b                                        ; $4c32: $40
	add  d                                           ; $4c33: $82
	ld   b, h                                        ; $4c34: $44
	add  d                                           ; $4c35: $82
	ld   a, h                                        ; $4c36: $7c
	add  b                                           ; $4c37: $80
	nop                                              ; $4c38: $00
	add  b                                           ; $4c39: $80
	rst  $38                                         ; $4c3a: $ff
	add  b                                           ; $4c3b: $80
	ld   sp, $3088                                   ; $4c3c: $31 $88 $30
	add  b                                           ; $4c3f: $80
	nop                                              ; $4c40: $00
	add  b                                           ; $4c41: $80
	rst  $38                                         ; $4c42: $ff
	add  b                                           ; $4c43: $80
	add  $82                                         ; $4c44: $c6 $82
	ld   b, $80                                      ; $4c46: $06 $80
	ld   [bc], a                                     ; $4c48: $02
	add  b                                           ; $4c49: $80
	inc  bc                                          ; $4c4a: $03
	add  b                                           ; $4c4b: $80
	ld   bc, $0080                                   ; $4c4c: $01 $80 $00
	add  b                                           ; $4c4f: $80
	rst  $38                                         ; $4c50: $ff
	add  b                                           ; $4c51: $80
	nop                                              ; $4c52: $00
	add  h                                           ; $4c53: $84
	add  hl, de                                      ; $4c54: $19
	add  b                                           ; $4c55: $80
	jr   c, jr_019_4bd8                              ; $4c56: $38 $80

	ldh  a, [$80]                                    ; $4c58: $f0 $80
	nop                                              ; $4c5a: $00
	add  b                                           ; $4c5b: $80
	rst  $38                                         ; $4c5c: $ff
	add  b                                           ; $4c5d: $80
	inc  e                                           ; $4c5e: $1c
	add  b                                           ; $4c5f: $80
	adc  h                                           ; $4c60: $8c
	add  d                                           ; $4c61: $82
	add  b                                           ; $4c62: $80
	add  b                                           ; $4c63: $80
	ld   hl, sp-$80                                  ; $4c64: $f8 $80
	ld   a, b                                        ; $4c66: $78
	add  b                                           ; $4c67: $80
	nop                                              ; $4c68: $00
	add  b                                           ; $4c69: $80
	rst  $38                                         ; $4c6a: $ff
	add  d                                           ; $4c6b: $82
	add  hl, de                                      ; $4c6c: $19
	add  b                                           ; $4c6d: $80
	rrca                                             ; $4c6e: $0f
	add  b                                           ; $4c6f: $80
	ld   c, $80                                      ; $4c70: $0e $80
	ld   a, a                                        ; $4c72: $7f
	add  b                                           ; $4c73: $80
	ld   [hl], c                                     ; $4c74: $71
	add  b                                           ; $4c75: $80
	nop                                              ; $4c76: $00
	add  b                                           ; $4c77: $80
	rst  $38                                         ; $4c78: $ff
	add  d                                           ; $4c79: $82
	add  e                                           ; $4c7a: $83
	add  d                                           ; $4c7b: $82
	ld   [bc], a                                     ; $4c7c: $02
	add  b                                           ; $4c7d: $80
	ldh  [c], a                                      ; $4c7e: $e2
	add  b                                           ; $4c7f: $80
	db   $e3                                         ; $4c80: $e3
	add  b                                           ; $4c81: $80
	nop                                              ; $4c82: $00
	add  b                                           ; $4c83: $80
	rst  $38                                         ; $4c84: $ff
	add  b                                           ; $4c85: $80
	db   $db                                         ; $4c86: $db
	add  b                                           ; $4c87: $80
	rst  JumpTable                                         ; $4c88: $df
	add  [hl]                                        ; $4c89: $86
	ret  c                                           ; $4c8a: $d8

	add  b                                           ; $4c8b: $80
	nop                                              ; $4c8c: $00
	add  b                                           ; $4c8d: $80
	rst  $38                                         ; $4c8e: $ff
	add  [hl]                                        ; $4c8f: $86
	ld   bc, $1f82                                   ; $4c90: $01 $82 $1f
	add  b                                           ; $4c93: $80
	nop                                              ; $4c94: $00
	add  b                                           ; $4c95: $80
	rst  $38                                         ; $4c96: $ff
	add  [hl]                                        ; $4c97: $86
	nop                                              ; $4c98: $00
	add  d                                           ; $4c99: $82
	pop  af                                          ; $4c9a: $f1
	add  b                                           ; $4c9b: $80
	nop                                              ; $4c9c: $00
	add  b                                           ; $4c9d: $80
	rst  $38                                         ; $4c9e: $ff
	add  b                                           ; $4c9f: $80
	jr   jr_019_4c24                                 ; $4ca0: $18 $82

	jr   nc, jr_019_4c24                             ; $4ca2: $30 $80

	ld   [hl], b                                     ; $4ca4: $70
	add  b                                           ; $4ca5: $80
	ldh  [$80], a                                    ; $4ca6: $e0 $80
	ret  nz                                          ; $4ca8: $c0

	add  b                                           ; $4ca9: $80
	nop                                              ; $4caa: $00
	add  b                                           ; $4cab: $80
	rst  $38                                         ; $4cac: $ff
	add  b                                           ; $4cad: $80
	ld   b, $82                                      ; $4cae: $06 $82
	inc  c                                           ; $4cb0: $0c
	add  b                                           ; $4cb1: $80
	inc  e                                           ; $4cb2: $1c
	add  b                                           ; $4cb3: $80
	ld   a, b                                        ; $4cb4: $78
	add  b                                           ; $4cb5: $80
	ld   [hl], b                                     ; $4cb6: $70
	add  b                                           ; $4cb7: $80
	nop                                              ; $4cb8: $00
	add  b                                           ; $4cb9: $80
	rst  $38                                         ; $4cba: $ff
	add  [hl]                                        ; $4cbb: $86
	nop                                              ; $4cbc: $00
	add  d                                           ; $4cbd: $82
	ccf                                              ; $4cbe: $3f
	add  b                                           ; $4cbf: $80
	nop                                              ; $4cc0: $00
	add  b                                           ; $4cc1: $80
	rst  $38                                         ; $4cc2: $ff
	add  [hl]                                        ; $4cc3: $86
	inc  bc                                          ; $4cc4: $03
	add  b                                           ; $4cc5: $80
	jp   nz, $c480                                   ; $4cc6: $c2 $80 $c4

	add  b                                           ; $4cc9: $80
	nop                                              ; $4cca: $00
	add  b                                           ; $4ccb: $80
	rst  $38                                         ; $4ccc: $ff
	adc  h                                           ; $4ccd: $8c
	nop                                              ; $4cce: $00


RleXorTileData_ResetData::
	db $51, $02, $82, $00, $16, $40, $00, $20, $00, $10, $00, $08, $00, $04, $00, $02, $00, $02, $00, $04, $00, $08, $00, $10, $00, $20, $00, $40, $8d, $00, $0a, $60
	db $00, $18, $00, $06, $00, $06, $00, $18, $00, $60, $97, $00, $02, $7e, $00, $7e, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
	db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
	db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $8f, $00, $0b, $3f, $00, $7f, $3f, $ff, $f8, $ff, $f0, $ff, $e4, $fc, $f8, $81, $fb, $02
	db $93, $ff, $00, $80, $fe, $08, $fc, $1c, $f8, $08, $e0, $38, $60, $40, $e0, $80, $c0, $01, $f7, $ff, $82, $00, $80, $07, $80, $08, $02, $13, $10, $14, $81, $13
	db $0d, $fb, $fc, $02, $00, $01, $06, $e6, $ee, $1e, $0e, $d6, $76, $56, $f6, $80, $d6, $00, $9e, $83, $ff, $06, $f8, $ff, $f0, $ff, $e4, $fc, $f8, $81, $fb, $00
	db $6c, $80, $ff, $80, $fe, $08, $fc, $1c, $f8, $08, $e0, $38, $60, $40, $e0, $80, $c0, $00, $08, $83, $00, $80, $07, $80, $08, $02, $13, $10, $14, $81, $13, $00
	db $04, $80, $00, $80, $02, $08, $06, $e6, $ee, $1e, $0e, $d6, $76, $56, $f6, $80, $d6, $00, $1e, $80, $01, $80, $03, $80, $07, $80, $0f, $80, $1f, $80, $3f, $80
	db $7f, $92, $ff, $80, $fe, $80, $fc, $80, $f8, $80, $f0, $80, $e0, $80, $c0, $80, $80, $8e, $00, $81, $ff, $06, $f8, $ff, $f0, $ff, $e7, $ff, $cf, $83, $ff, $00
	db $df, $80, $ff, $03, $fe, $01, $ff, $00, $80, $f8, $80, $f0, $80, $e0, $80, $c0, $80, $80, $81, $00, $80, $ff, $89, $00, $80, $01, $03, $03, $fc, $ff, $00, $80
	db $0f, $80, $1f, $80, $3f, $80, $7f, $01, $ff, $68, $80, $fb, $07, $ff, $fa, $fe, $e4, $f8, $f7, $f0, $f7, $80, $e0, $80, $c0, $01, $80, $c8, $81, $c0, $80, $00
	db $04, $18, $00, $f0, $00, $e0, $83, $00, $00, $17, $80, $13, $07, $17, $12, $16, $0c, $0f, $00, $18, $1f, $80, $3f, $80, $7f, $01, $ff, $37, $81, $d6, $03, $16
	db $36, $2e, $ee, $80, $1e, $84, $fe, $00, $69, $80, $fb, $09, $ff, $fa, $fe, $e4, $f8, $f7, $f0, $f7, $e0, $a0, $80, $40, $01, $00, $08, $81, $c0, $80, $00, $04
	db $18, $00, $f0, $00, $e0, $83, $00, $00, $17, $80, $13, $07, $17, $12, $16, $0c, $0f, $00, $18, $1f, $80, $3f, $80, $7f, $01, $00, $c8, $81, $d6, $03, $16, $36
	db $2e, $ee, $80, $1e, $80, $fe, $04, $ff, $fc, $fe, $00, $03, $81, $ff, $02, $00, $ff, $00, $87, $ff, $00, $7f, $8e, $80, $80, $81, $80, $83, $80, $87, $80, $8f
	db $80, $9f, $80, $bf, $94, $ff, $80, $fe, $80, $fc, $80, $f8, $80, $f0, $80, $e0, $80, $c0, $01, $80, $00, $82, $fe, $80, $fc, $80, $f8, $80, $f0, $80, $e0, $80
	db $c0, $80, $80, $80, $00, $80, $02, $80, $06, $80, $0e, $80, $1e, $80, $3e, $80, $7e, $8f, $fe, $00, $de, $80, $ff, $80, $fe, $80, $fc, $80, $f8, $80, $f0, $82
	db $e0, $80, $a0, $8e, $20, $80, $21, $80, $23, $80, $27, $80, $2f, $82, $3f, $80, $7f, $92, $ff, $80, $fe, $07, $fc, $cc, $f8, $e0, $f8, $f7, $e0, $e7, $80, $c0
	db $80, $80, $87, $00, $02, $ff, $00, $ff, $82, $00, $80, $01, $80, $03, $80, $07, $80, $0f, $03, $1f, $e0, $00, $ff, $80, $7f, $89, $ff, $80, $00, $85, $ff, $80
	db $fe, $80, $fc, $80, $f8, $03, $f0, $0f, $00, $ff, $80, $c0, $01, $80, $84, $83, $fb, $80, $f7, $80, $ef, $80, $1f, $82, $ff, $91, $fb, $80, $fa, $82, $f8, $80
	db $f0, $80, $e0, $80, $c0, $80, $80, $8e, $00, $80, $01, $82, $03, $80, $0b, $80, $1b, $80, $3b, $80, $7b, $00, $fb, $84, $00, $04, $c0, $00, $e0, $00, $30, $81
	db $00, $02, $70, $00, $e0, $81, $00, $02, $80, $00, $80, $81, $00, $00, $80, $84, $00, $00, $ff, $8c, $00, $80, $ff, $00, $00, $80, $03, $80, $07, $80, $0f, $80
	db $1f, $80, $3f, $80, $7f, $03, $ff, $00, $ff, $00, $8b, $ff, $02, $00, $ff, $00, $80, $fe, $80, $fc, $80, $f8, $80, $f0, $80, $e0, $80, $c0, $80, $80, $80, $01
	db $80, $03, $80, $07, $80, $0f, $80, $1f, $80, $3f, $80, $7f, $80, $00, $8c, $ff, $80, $00, $80, $ff, $80, $fe, $80, $fc, $80, $f8, $80, $f0, $80, $e0, $80, $c0
	db $01, $00, $ff, $8d, $00, $80, $81, $80, $42, $80, $24, $82, $18, $80, $24, $80, $42, $80, $81, $00, $ff, $80, $01, $04, $03, $e3, $e7, $17, $0f, $80, $17, $00
	db $1b, $80, $3b, $80, $7b, $00, $fb, $86, $00, $04, $80, $00, $04, $00, $06, $87, $00, $04, $d2, $00, $70, $00, $20, $89, $00, $14, $38, $00, $38, $00, $fe, $00
	db $fa, $00, $0c, $00, $18, $00, $38, $00, $60, $00, $c0, $00, $0e, $00, $86, $83, $00, $84, $0e, $80, $0f, $80, $07, $80, $00, $00, $ff, $81, $00, $00, $83, $81
	db $7c, $80, $1c, $80, $fc, $80, $f8, $80, $00, $00, $ff, $81, $00, $00, $ff, $83, $00, $00, $10, $81, $00, $06, $ee, $00, $ee, $00, $60, $00, $70, $81, $00, $00
	db $0a, $81, $00, $02, $2a, $00, $70, $81, $00, $02, $d8, $00, $88, $85, $00, $08, $fe, $00, $f6, $00, $18, $00, $30, $00, $20, $85, $00, $04, $38, $00, $6c, $00
	db $c6, $81, $00, $00, $92, $81, $00, $00, $0a, $81, $00, $08, $76, $00, $7c, $00, $fe, $00, $f6, $00, $08, $8b, $00, $02, $80, $00, $80, $85, $00, $02, $7c, $00
	db $38, $81, $00, $02, $e0, $00, $a4, $83, $00, $00, $20, $81, $00, $06, $de, $00, $de, $00, $cc, $00, $ec, $81, $00, $0c, $02, $00, $90, $00, $d8, $00, $48, $00
	db $8d, $00, $c7, $00, $48, $81, $00, $0c, $01, $00, $40, $00, $ce, $00, $8e, $00, $80, $00, $1e, $00, $9f, $83, $00, $04, $02, $00, $e0, $00, $e0, $81, $00, $02
	db $f0, $00, $f2, $87, $00, $06, $07, $00, $07, $00, $07, $00, $07, $83, $00, $00, $80, $81, $00, $06, $77, $00, $77, $00, $73, $00, $f3, $83, $00, $00, $82, $81
	db $00, $02, $75, $00, $75, $81, $00, $00, $82, $83, $00, $0a, $01, $00, $23, $00, $b6, $00, $c0, $00, $04, $00, $50, $83, $00, $00, $84, $81, $00, $02, $3a, $00
	db $3a, $81, $00, $00, $14, $81, $00, $06, $e0, $00, $60, $00, $30, $00, $20, $83, $00, $06, $88, $00, $0c, $00, $80, $00, $06, $81, $00, $00, $02, $83, $00, $00
	db $20, $83, $00, $04, $30, $00, $1c, $00, $0c, $83, $00, $00, $92, $83, $00, $04, $30, $00, $c6, $00, $64, $83, $00, $00, $08, $83, $00, $04, $18, $00, $30, $00
	db $20, $83, $00, $02, $7e, $00, $7e, $8b, $00, $02, $14, $00, $1c, $81, $00, $04, $18, $00, $30, $00, $20, $83, $00, $0a, $30, $00, $60, $00, $c0, $00, $10, $00
	db $fe, $00, $7e, $83, $00, $0a, $0f, $00, $47, $00, $07, $00, $c7, $00, $01, $00, $89, $83, $00, $0a, $81, $00, $03, $00, $06, $00, $0c, $00, $07, $00, $8f, $83
	db $00, $00, $02, $81, $00, $06, $20, $00, $d3, $00, $e1, $00, $10, $85, $00, $08, $03, $00, $17, $00, $30, $00, $e7, $00, $c3, $83, $00, $00, $84, $81, $00, $06
	db $47, $00, $63, $00, $b1, $00, $11, $83, $00, $00, $82, $83, $00, $02, $06, $00, $84, $85, $00, $02, $50, $00, $10, $83, $00, $02, $c0, $00, $80, $83, $00, $0a
	db $84, $00, $18, $00, $3a, $00, $02, $00, $fc, $00, $58, $83, $00, $00, $ff, $81, $00, $01, $ff, $00, $80, $38, $86, $39, $00, $ff, $81, $00, $01, $ff, $00, $80
	db $1c, $86, $9c, $00, $ff, $81, $00, $01, $ff, $00, $80, $0f, $80, $1f, $80, $19, $82, $39, $00, $ff, $81, $00, $01, $ff, $00, $80, $01, $82, $81, $82, $c1, $00
	db $ff, $81, $00, $01, $ff, $00, $82, $ff, $82, $c3, $81, $ff, $81, $00, $01, $ff, $00, $80, $07, $86, $87, $00, $ff, $81, $00, $01, $ff, $00, $80, $0e, $82, $8e
	db $80, $ce, $80, $6e, $00, $ff, $81, $00, $01, $ff, $00, $82, $1f, $84, $07, $00, $ff, $81, $00, $01, $ff, $00, $82, $c3, $84, $03, $00, $ff, $81, $00, $01, $ff
	db $00, $80, $87, $82, $c7, $80, $e7, $80, $b7, $00, $ff, $81, $00, $01, $ff, $00, $80, $07, $80, $0f, $84, $0e, $00, $ff, $81, $00, $01, $ff, $00, $80, $f8, $80
	db $fc, $82, $1c, $80, $00, $82, $07, $84, $87, $80, $00, $00, $ff, $81, $00, $01, $91, $6e, $80, $3e, $82, $1e, $80, $0e, $80, $00, $00, $ff, $81, $00, $00, $f8
	db $83, $07, $82, $1f, $80, $00, $00, $ff, $81, $00, $00, $fc, $83, $03, $82, $c3, $80, $00, $00, $ff, $81, $00, $01, $c4, $3b, $80, $1b, $80, $1e, $80, $0e, $80
	db $0c, $80, $00, $00, $ff, $81, $00, $01, $23, $dc, $80, $d8, $80, $78, $80, $70, $80, $30, $80, $00, $00, $ff, $81, $00, $01, $c6, $39, $82, $7f, $82, $70, $80
	db $00, $00, $ff, $81, $00, $01, $3e, $c1, $86, $e1, $80, $00, $00, $ff, $82, $00, $00, $ff, $82, $c7, $82, $c3, $80, $00, $00, $ff, $81, $00, $01, $48, $b7, $80
	db $9f, $82, $8f, $80, $87, $80, $00, $00, $ff, $85, $00, $00, $3f, $89, $00, $00, $3f, $81, $00, $00, $ff, $89, $00, $00, $c0, $8d, $00, $00, $3f, $94, $fc, $80
	db $f8, $80, $f0, $80, $e0, $80, $c0, $80, $80, $80, $3f, $80, $3e, $80, $3c, $80, $38, $80, $30, $80, $20, $81, $00, $00, $ff, $bd, $00



	ld   a, [bc]                                     ; $532a: $0a
	ld   [bc], a                                     ; $532b: $02
	add  l                                           ; $532c: $85
	nop                                              ; $532d: $00
	inc  c                                           ; $532e: $0c
	ld   bc, $0200                                   ; $532f: $01 $00 $02
	nop                                              ; $5332: $00
	inc  b                                           ; $5333: $04
	ld   bc, $0a09                                   ; $5334: $01 $09 $0a
	dec  bc                                          ; $5337: $0b
	ld   a, [bc]                                     ; $5338: $0a
	ld   e, $10                                      ; $5339: $1e $10
	ld   e, $82                                      ; $533b: $1e $82
	ld   d, $01                                      ; $533d: $16 $01
	inc  c                                           ; $533f: $0c

jr_019_5340:
	ld   a, [de]                                     ; $5340: $1a
	add  b                                           ; $5341: $80
	dec  bc                                          ; $5342: $0b
	ld   bc, $0507                                   ; $5343: $01 $07 $05
	add  d                                           ; $5346: $82
	nop                                              ; $5347: $00
	ld   [de], a                                     ; $5348: $12
	inc  c                                           ; $5349: $0c
	inc  de                                          ; $534a: $13
	daa                                              ; $534b: $27
	ld   b, a                                        ; $534c: $47
	sub  c                                           ; $534d: $91
	ld   de, $7353                                   ; $534e: $11 $53 $73
	add  b                                           ; $5351: $80
	db   $e4                                         ; $5352: $e4
	sub  b                                           ; $5353: $90
	ld   e, h                                        ; $5354: $5c
	inc  hl                                          ; $5355: $23
	ld   [hl-], a                                    ; $5356: $32
	ld   c, h                                        ; $5357: $4c
	and  $ec                                         ; $5358: $e6 $ec
	db   $ed                                         ; $535a: $ed
	adc  c                                           ; $535b: $89
	add  e                                           ; $535c: $83
	db   $dd                                         ; $535d: $dd
	dec  b                                           ; $535e: $05
	cp   a                                           ; $535f: $bf
	ld   l, [hl]                                     ; $5360: $6e
	db   $db                                         ; $5361: $db
	or   a                                           ; $5362: $b7
	rst  $38                                         ; $5363: $ff
	db   $db                                         ; $5364: $db
	add  c                                           ; $5365: $81
	nop                                              ; $5366: $00
	add  b                                           ; $5367: $80
	cp   h                                           ; $5368: $bc
	add  b                                           ; $5369: $80
	cp   $1a                                         ; $536a: $fe $1a
	rst  $38                                         ; $536c: $ff
	dec  a                                           ; $536d: $3d
	ccf                                              ; $536e: $3f
	inc  c                                           ; $536f: $0c
	ld   c, d                                        ; $5370: $4a
	ld   e, [hl]                                     ; $5371: $5e
	sub  [hl]                                        ; $5372: $96
	db $38, $a2

	ld   [hl], e                                     ; $5375: $73
	ld   d, e                                        ; $5376: $53
	jp   $f3cb                                       ; $5377: $c3 $cb $f3


	or   e                                           ; $537a: $b3
	and  c                                           ; $537b: $a1
	add  d                                           ; $537c: $82
	sub  [hl]                                        ; $537d: $96
	add  h                                           ; $537e: $84
	adc  h                                           ; $537f: $8c
	add  h                                           ; $5380: $84
	and  [hl]                                        ; $5381: $a6
	ld   b, d                                        ; $5382: $42
	and  b                                           ; $5383: $a0
	nop                                              ; $5384: $00
	adc  c                                           ; $5385: $89
	ld   [hl], l                                     ; $5386: $75
	add  b                                           ; $5387: $80
	dec  hl                                          ; $5388: $2b
	add  b                                           ; $5389: $80
	ld   bc, $0098                                   ; $538a: $01 $98 $00
	ld   [bc], a                                     ; $538d: $02
	ld   hl, sp-$78                                  ; $538e: $f8 $88
	add  b                                           ; $5390: $80
	add  b                                           ; $5391: $80
	ret  nz                                          ; $5392: $c0

	nop                                              ; $5393: $00
	ldh  a, [$9a]                                    ; $5394: $f0 $9a
	nop                                              ; $5396: $00
	rrca                                             ; $5397: $0f
	rra                                              ; $5398: $1f
	nop                                              ; $5399: $00
	jr   nz, jr_019_539c                             ; $539a: $20 $00

jr_019_539c:
	ld   d, b                                        ; $539c: $50
	jr   nc, jr_019_5340                             ; $539d: $30 $a1

	ld   a, a                                        ; $539f: $7f
	ld   a, c                                        ; $53a0: $79
	ld   a, a                                        ; $53a1: $7f
	halt                                             ; $53a2: $76
	ld   a, [hl]                                     ; $53a3: $7e
	inc  c                                           ; $53a4: $0c
	ld   a, h                                        ; $53a5: $7c
	ld   a, l                                        ; $53a6: $7d
	ld   a, h                                        ; $53a7: $7c
	add  b                                           ; $53a8: $80
	ld   a, b                                        ; $53a9: $78
	inc  b                                           ; $53aa: $04
	ld   [bc], a                                     ; $53ab: $02
	nop                                              ; $53ac: $00
	adc  h                                           ; $53ad: $8c
	nop                                              ; $53ae: $00
	ld   [hl], b                                     ; $53af: $70
	adc  a                                           ; $53b0: $8f
	nop                                              ; $53b1: $00
	inc  c                                           ; $53b2: $0c
	ld   a, a                                        ; $53b3: $7f
	jr   nz, jr_019_53b8                             ; $53b4: $20 $02

	cpl                                              ; $53b6: $2f
	adc  l                                           ; $53b7: $8d

jr_019_53b8:
	ld   d, l                                        ; $53b8: $55
	sbc  c                                           ; $53b9: $99
	dec  l                                           ; $53ba: $2d
	inc  a                                           ; $53bb: $3c
	dec  e                                           ; $53bc: $1d
	ld   a, d                                        ; $53bd: $7a
	ld   a, [hl-]                                    ; $53be: $3a
	ld   a, [hl]                                     ; $53bf: $7e
	add  e                                           ; $53c0: $83
	nop                                              ; $53c1: $00
	nop                                              ; $53c2: $00
	ld   bc, $008b                                   ; $53c3: $01 $8b $00
	ld   [de], a                                     ; $53c6: $12
	rst  $38                                         ; $53c7: $ff
	nop                                              ; $53c8: $00
	db   $10                                         ; $53c9: $10
	rst  $38                                         ; $53ca: $ff
	db   $ed                                         ; $53cb: $ed
	xor  $ec                                         ; $53cc: $ee $ec
	rst  $28                                         ; $53ce: $ef
	rrca                                             ; $53cf: $0f
	ldh  [rIF], a                                    ; $53d0: $e0 $0f
	nop                                              ; $53d2: $00
	ldh  a, [$e0]                                    ; $53d3: $f0 $e0
	ld   b, b                                        ; $53d5: $40
	jr   nz, jr_019_53b8                             ; $53d6: $20 $e0

	ret  nz                                          ; $53d8: $c0

	and  b                                           ; $53d9: $a0
	adc  e                                           ; $53da: $8b
	nop                                              ; $53db: $00
	ld   [bc], a                                     ; $53dc: $02

jr_019_53dd:
	rst  $30                                         ; $53dd: $f7
	ld   c, $06                                      ; $53de: $0e $06
	add  b                                           ; $53e0: $80
	cp   $80                                         ; $53e1: $fe $80
	nop                                              ; $53e3: $00
	add  b                                           ; $53e4: $80
	cp   $01                                         ; $53e5: $fe $01
	nop                                              ; $53e7: $00
	rst  $38                                         ; $53e8: $ff
	sub  l                                           ; $53e9: $95
	nop                                              ; $53ea: $00
	ld   b, $01                                      ; $53eb: $06 $01
	nop                                              ; $53ed: $00
	ld   [bc], a                                     ; $53ee: $02
	ld   bc, $0305                                   ; $53ef: $01 $05 $03
	ld   [bc], a                                     ; $53f2: $02
	add  b                                           ; $53f3: $80
	inc  bc                                          ; $53f4: $03
	nop                                              ; $53f5: $00
	ld   bc, $0080                                   ; $53f6: $01 $80 $00
	nop                                              ; $53f9: $00
	rlca                                             ; $53fa: $07
	adc  e                                           ; $53fb: $8b
	nop                                              ; $53fc: $00
	ld   [$003f], sp                                 ; $53fd: $08 $3f $00
	ld   [hl], h                                     ; $5400: $74
	ld   [hl], $ae                                   ; $5401: $36 $ae
	ld   l, [hl]                                     ; $5403: $6e
	ld   l, $ee                                      ; $5404: $2e $ee
	ld   e, [hl]                                     ; $5406: $5e

jr_019_5407:
	add  l                                           ; $5407: $85
	sbc  $02                                         ; $5408: $de $02
	inc  bc                                          ; $540a: $03
	nop                                              ; $540b: $00
	cp   $8b                                         ; $540c: $fe $8b
	nop                                              ; $540e: $00
	dec  b                                           ; $540f: $05
	rst  $38                                         ; $5410: $ff
	nop                                              ; $5411: $00
	inc  e                                           ; $5412: $1c

jr_019_5413:
	rra                                              ; $5413: $1f
	ld   [hl], l                                     ; $5414: $75
	ld   [hl], a                                     ; $5415: $77
	add  b                                           ; $5416: $80
	ld   a, e                                        ; $5417: $7b
	nop                                              ; $5418: $00

jr_019_5419:
	ld   a, d                                        ; $5419: $7a
	add  e                                           ; $541a: $83
	ld   a, e                                        ; $541b: $7b
	add  b                                           ; $541c: $80
	ld   a, b                                        ; $541d: $78
	ld   [bc], a                                     ; $541e: $02
	add  b                                           ; $541f: $80
	nop                                              ; $5420: $00
	ld   a, a                                        ; $5421: $7f
	adc  e                                           ; $5422: $8b
	nop                                              ; $5423: $00
	ld   [de], a                                     ; $5424: $12

jr_019_5425:
	add  b                                           ; $5425: $80
	nop                                              ; $5426: $00
	ld   b, b                                        ; $5427: $40
	add  b                                           ; $5428: $80
	and  b                                           ; $5429: $a0
	ret  nz                                          ; $542a: $c0

	ret  nc                                          ; $542b: $d0

	ldh  [$f8], a                                    ; $542c: $e0 $f8
	ldh  a, [$66]                                    ; $542e: $f0 $66
	db   $f4                                         ; $5430: $f4
	or   l                                           ; $5431: $b5
	or   $46                                         ; $5432: $f6 $46
	halt                                             ; $5434: $76
	ld   b, $00                                      ; $5435: $06 $00
	rst  $38                                         ; $5437: $ff
	add  a                                           ; $5438: $87

jr_019_5439:
	nop                                              ; $5439: $00
	ld   [bc], a                                     ; $543a: $02
	ld   bc, $0200                                   ; $543b: $01 $00 $02
	add  b                                           ; $543e: $80
	nop                                              ; $543f: $00
	inc  bc                                          ; $5440: $03
	ld   bc, $0105                                   ; $5441: $01 $05 $01
	add  hl, bc                                      ; $5444: $09
	add  c                                           ; $5445: $81
	inc  bc                                          ; $5446: $03
	ld   [bc], a                                     ; $5447: $02
	dec  de                                          ; $5448: $1b
	dec  bc                                          ; $5449: $0b
	inc  e                                           ; $544a: $1c
	adc  l                                           ; $544b: $8d
	nop                                              ; $544c: $00
	inc  b                                           ; $544d: $04
	add  b                                           ; $544e: $80
	nop                                              ; $544f: $00
	ret  nz                                          ; $5450: $c0

	add  b                                           ; $5451: $80
	nop                                              ; $5452: $00
	adc  c                                           ; $5453: $89
	add  b                                           ; $5454: $80
	nop                                              ; $5455: $00
	ld   b, b                                        ; $5456: $40
	adc  l                                           ; $5457: $8d
	nop                                              ; $5458: $00
	nop                                              ; $5459: $00
	jr   jr_019_53dd                                 ; $545a: $18 $81

	ldh  a, [$0c]                                    ; $545c: $f0 $0c
	ld   hl, sp-$20                                  ; $545e: $f8 $e0
	ret  nz                                          ; $5460: $c0

	ldh  [$f0], a                                    ; $5461: $e0 $f0
	ret  nz                                          ; $5463: $c0

	add  b                                           ; $5464: $80
	ret  nz                                          ; $5465: $c0

jr_019_5466:
	ldh  [$80], a                                    ; $5466: $e0 $80
	nop                                              ; $5468: $00
	add  b                                           ; $5469: $80
	ld   b, b                                        ; $546a: $40
	adc  l                                           ; $546b: $8d

jr_019_546c:
	nop                                              ; $546c: $00
	ld   bc, $3768                                   ; $546d: $01 $68 $37
	add  d                                           ; $5470: $82
	dec  sp                                          ; $5471: $3b
	ld   a, [bc]                                     ; $5472: $0a
	dec  e                                           ; $5473: $1d
	dec  a                                           ; $5474: $3d
	db   $dd                                         ; $5475: $dd
	ld   a, l                                        ; $5476: $7d
	dec  e                                           ; $5477: $1d
	ld   a, l                                        ; $5478: $7d
	ld   e, l                                        ; $5479: $5d
	dec  a                                           ; $547a: $3d
	cp   l                                           ; $547b: $bd
	dec  a                                           ; $547c: $3d
	ld   e, a                                        ; $547d: $5f
	rst  $38                                         ; $547e: $ff
	nop                                              ; $547f: $00
	db   $f4                                         ; $5480: $f4
	nop                                              ; $5481: $00
	add  b                                           ; $5482: $80
	jr   nc, @-$7e                                   ; $5483: $30 $80

	jr   c, jr_019_5407                              ; $5485: $38 $80

	inc  a                                           ; $5487: $3c
	add  b                                           ; $5488: $80
	ld   a, $80                                      ; $5489: $3e $80
	ccf                                              ; $548b: $3f
	add  b                                           ; $548c: $80
	ld   a, $80                                      ; $548d: $3e $80
	inc  a                                           ; $548f: $3c
	add  b                                           ; $5490: $80
	jr   c, jr_019_5413                              ; $5491: $38 $80

	jr   nc, jr_019_5425                             ; $5493: $30 $90

	nop                                              ; $5495: $00
	add  b                                           ; $5496: $80
	jr   nc, jr_019_5419                             ; $5497: $30 $80

	inc  a                                           ; $5499: $3c
	add  b                                           ; $549a: $80
	ccf                                              ; $549b: $3f
	add  b                                           ; $549c: $80
	inc  a                                           ; $549d: $3c
	add  b                                           ; $549e: $80
	jr   nc, jr_019_5439                             ; $549f: $30 $98

	nop                                              ; $54a1: $00
	add  b                                           ; $54a2: $80
	ccf                                              ; $54a3: $3f
	rst  $38                                         ; $54a4: $ff
	nop                                              ; $54a5: $00
	rst  $38                                         ; $54a6: $ff
	nop                                              ; $54a7: $00
	rst  $38                                         ; $54a8: $ff
	nop                                              ; $54a9: $00
	rst  $38                                         ; $54aa: $ff
	nop                                              ; $54ab: $00
	rst  $38                                         ; $54ac: $ff
	nop                                              ; $54ad: $00
	rst  $38                                         ; $54ae: $ff
	nop                                              ; $54af: $00
	rst  $38                                         ; $54b0: $ff
	nop                                              ; $54b1: $00
	rst  $38                                         ; $54b2: $ff
	nop                                              ; $54b3: $00
	rst  $38                                         ; $54b4: $ff
	nop                                              ; $54b5: $00
	and  a                                           ; $54b6: $a7
	nop                                              ; $54b7: $00
	add  d                                           ; $54b8: $82
	rst  $38                                         ; $54b9: $ff
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	add  c                                           ; $54bc: $81
	rst  $38                                         ; $54bd: $ff
	add  d                                           ; $54be: $82
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	rst  $38                                         ; $54c1: $ff
	add  l                                           ; $54c2: $85
	nop                                              ; $54c3: $00
	inc  b                                           ; $54c4: $04
	ld   bc, $0200                                   ; $54c5: $01 $00 $02
	nop                                              ; $54c8: $00
	inc  b                                           ; $54c9: $04
	add  c                                           ; $54ca: $81
	nop                                              ; $54cb: $00
	ld   b, $04                                      ; $54cc: $06 $04
	nop                                              ; $54ce: $00
	inc  e                                           ; $54cf: $1c
	nop                                              ; $54d0: $00
	ld   h, b                                        ; $54d1: $60
	nop                                              ; $54d2: $00
	add  b                                           ; $54d3: $80
	add  a                                           ; $54d4: $87
	nop                                              ; $54d5: $00
	ld   [bc], a                                     ; $54d6: $02
	jr   c, jr_019_54d9                              ; $54d7: $38 $00

jr_019_54d9:
	jr   c, jr_019_5466                              ; $54d9: $38 $8b

	nop                                              ; $54db: $00
	ld   b, $ff                                      ; $54dc: $06 $ff
	nop                                              ; $54de: $00
	add  b                                           ; $54df: $80
	nop                                              ; $54e0: $00
	ld   b, b                                        ; $54e1: $40
	nop                                              ; $54e2: $00
	jr   nz, jr_019_546c                             ; $54e3: $20 $87

	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	ldh  [$81], a                                    ; $54e7: $e0 $81
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	ld   bc, $0085                                   ; $54eb: $01 $85 $00
	ld   b, $03                                      ; $54ee: $06 $03
	ld   bc, $0305                                   ; $54f0: $01 $05 $03
	ld   a, [hl-]                                    ; $54f3: $3a
	nop                                              ; $54f4: $00
	ret  nz                                          ; $54f5: $c0

	add  b                                           ; $54f6: $80
	nop                                              ; $54f7: $00
	dec  c                                           ; $54f8: $0d
	ld   hl, sp-$80                                  ; $54f9: $f8 $80
	rst  $38                                         ; $54fb: $ff
	ld   a, b                                        ; $54fc: $78
	rst  $38                                         ; $54fd: $ff
	ld   a, a                                        ; $54fe: $7f
	rst  $38                                         ; $54ff: $ff
	ld   a, [hl]                                     ; $5500: $7e
	cp   $fc                                         ; $5501: $fe $fc
	db   $fd                                         ; $5503: $fd
	ld   bc, $0100                                   ; $5504: $01 $00 $01
	add  c                                           ; $5507: $81
	nop                                              ; $5508: $00
	ld   a, [bc]                                     ; $5509: $0a
	ld   b, d                                        ; $550a: $42
	ret  nz                                          ; $550b: $c0

	inc  e                                           ; $550c: $1c
	rst  $38                                         ; $550d: $ff
	and  b                                           ; $550e: $a0
	rst  $38                                         ; $550f: $ff
	jr   c, @+$01                                    ; $5510: $38 $ff

	rst  ToBoot                                         ; $5512: $c7
	rst  $38                                         ; $5513: $ff
	ccf                                              ; $5514: $3f
	add  e                                           ; $5515: $83
	nop                                              ; $5516: $00
	ld   a, [bc]                                     ; $5517: $0a
	ld   [$1000], sp                                 ; $5518: $08 $00 $10
	call z, $de6d                                    ; $551b: $cc $6d $de
	ld   d, l                                        ; $551e: $55
	db   $dd                                         ; $551f: $dd
	adc  a                                           ; $5520: $8f
	cp   a                                           ; $5521: $bf
	rst  JumpTable                                         ; $5522: $df
	add  l                                           ; $5523: $85
	nop                                              ; $5524: $00
	inc  b                                           ; $5525: $04
	add  b                                           ; $5526: $80
	ld   a, a                                        ; $5527: $7f
	nop                                              ; $5528: $00
	rst  $38                                         ; $5529: $ff
	nop                                              ; $552a: $00
	add  d                                           ; $552b: $82
	rst  $38                                         ; $552c: $ff
	add  [hl]                                        ; $552d: $86
	nop                                              ; $552e: $00
	rlca                                             ; $552f: $07
	rst  $38                                         ; $5530: $ff
	ld   bc, $03ff                                   ; $5531: $01 $ff $03
	rst  $38                                         ; $5534: $ff
	pop  af                                          ; $5535: $f1
	rst  $38                                         ; $5536: $ff
	di                                               ; $5537: $f3
	add  l                                           ; $5538: $85
	nop                                              ; $5539: $00
	add  hl, bc                                      ; $553a: $09
	ld   a, $7e                                      ; $553b: $3e $7e
	sub  l                                           ; $553d: $95
	ld   a, a                                        ; $553e: $7f
	jr   z, jr_019_55c0                              ; $553f: $28 $7f

	ld   a, l                                        ; $5541: $7d
	ld   a, a                                        ; $5542: $7f
	sub  a                                           ; $5543: $97
	scf                                              ; $5544: $37
	add  d                                           ; $5545: $82
	dec  sp                                          ; $5546: $3b
	ld   b, $1d                                      ; $5547: $06 $1d
	dec  a                                           ; $5549: $3d
	db   $dd                                         ; $554a: $dd
	ld   a, l                                        ; $554b: $7d
	dec  e                                           ; $554c: $1d
	ld   a, l                                        ; $554d: $7d
	db   $dd                                         ; $554e: $dd
	add  c                                           ; $554f: $81
	dec  a                                           ; $5550: $3d
	nop                                              ; $5551: $00
	ld   e, a                                        ; $5552: $5f
	adc  l                                           ; $5553: $8d
	rst  $38                                         ; $5554: $ff
	add  b                                           ; $5555: $80
	db   $fd                                         ; $5556: $fd
	adc  h                                           ; $5557: $8c
	rst  $38                                         ; $5558: $ff
	db   $10                                         ; $5559: $10
	rst  $30                                         ; $555a: $f7
	ldh  a, [$e0]                                    ; $555b: $f0 $e0
	ldh  a, [$d8]                                    ; $555d: $f0 $d8
	ldh  [$c0], a                                    ; $555f: $e0 $c0
	ldh  [$90], a                                    ; $5561: $e0 $90
	ret  nz                                          ; $5563: $c0

	add  b                                           ; $5564: $80
	ret  nz                                          ; $5565: $c0

	and  b                                           ; $5566: $a0
	add  b                                           ; $5567: $80
	nop                                              ; $5568: $00
	add  b                                           ; $5569: $80
	ld   b, b                                        ; $556a: $40
	add  c                                           ; $556b: $81
	nop                                              ; $556c: $00
	add  d                                           ; $556d: $82
	rst  $38                                         ; $556e: $ff
	ld   bc, $ff00                                   ; $556f: $01 $00 $ff
	add  b                                           ; $5572: $80
	xor  d                                           ; $5573: $aa
	add  b                                           ; $5574: $80
	ld   d, l                                        ; $5575: $55
	add  b                                           ; $5576: $80
	nop                                              ; $5577: $00
	nop                                              ; $5578: $00
	ldh  a, [$81]                                    ; $5579: $f0 $81
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	inc  b                                           ; $557d: $04
	add  c                                           ; $557e: $81
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	ld   c, $81                                      ; $5581: $0e $81
	nop                                              ; $5583: $00
	inc  b                                           ; $5584: $04
	rlca                                             ; $5585: $07
	nop                                              ; $5586: $00
	ld   [bc], a                                     ; $5587: $02
	nop                                              ; $5588: $00
	rst  $38                                         ; $5589: $ff
	adc  e                                           ; $558a: $8b
	nop                                              ; $558b: $00
	ld   [bc], a                                     ; $558c: $02
	and  b                                           ; $558d: $a0
	nop                                              ; $558e: $00
	ld   e, a                                        ; $558f: $5f
	add  l                                           ; $5590: $85
	nop                                              ; $5591: $00
	add  b                                           ; $5592: $80
	ld   [bc], a                                     ; $5593: $02
	add  h                                           ; $5594: $84
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	ldh  [$83], a                                    ; $5597: $e0 $83
	nop                                              ; $5599: $00
	ld   [bc], a                                     ; $559a: $02
	jr   nz, jr_019_559d                             ; $559b: $20 $00

jr_019_559d:
	ld   b, b                                        ; $559d: $40
	add  c                                           ; $559e: $81
	nop                                              ; $559f: $00
	inc  c                                           ; $55a0: $0c
	ld   b, b                                        ; $55a1: $40
	nop                                              ; $55a2: $00
	ld   b, b                                        ; $55a3: $40
	nop                                              ; $55a4: $00
	adc  h                                           ; $55a5: $8c
	rlca                                             ; $55a6: $07
	inc  de                                          ; $55a7: $13
	rrca                                             ; $55a8: $0f
	daa                                              ; $55a9: $27
	rra                                              ; $55aa: $1f
	ld   a, a                                        ; $55ab: $7f
	ccf                                              ; $55ac: $3f
	rrca                                             ; $55ad: $0f
	add  e                                           ; $55ae: $83
	ccf                                              ; $55af: $3f
	add  b                                           ; $55b0: $80
	cpl                                              ; $55b1: $2f
	ld   [bc], a                                     ; $55b2: $02
	ld   e, h                                        ; $55b3: $5c
	rst  $38                                         ; $55b4: $ff
	db   $fc                                         ; $55b5: $fc
	adc  a                                           ; $55b6: $8f
	rst  $38                                         ; $55b7: $ff
	add  b                                           ; $55b8: $80
	rst  $30                                         ; $55b9: $f7
	add  b                                           ; $55ba: $80
	xor  $80                                         ; $55bb: $ee $80
	rst  JumpTable                                         ; $55bd: $df
	add  b                                           ; $55be: $80
	cp   a                                           ; $55bf: $bf

jr_019_55c0:
	add  b                                           ; $55c0: $80
	ld   a, a                                        ; $55c1: $7f
	add  b                                           ; $55c2: $80
	cp   $80                                         ; $55c3: $fe $80
	cp   a                                           ; $55c5: $bf
	add  d                                           ; $55c6: $82
	ld   a, a                                        ; $55c7: $7f
	add  d                                           ; $55c8: $82
	rst  $38                                         ; $55c9: $ff
	add  b                                           ; $55ca: $80
	db   $fc                                         ; $55cb: $fc
	inc  b                                           ; $55cc: $04
	add  e                                           ; $55cd: $83
	add  b                                           ; $55ce: $80
	ld   [hl], h                                     ; $55cf: $74
	ld   [hl], b                                     ; $55d0: $70
	ld   hl, sp-$79                                  ; $55d1: $f8 $87
	rst  $38                                         ; $55d3: $ff
	add  b                                           ; $55d4: $80
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	rst  $38                                         ; $55d7: $ff
	add  c                                           ; $55d8: $81
	nop                                              ; $55d9: $00
	ld   [bc], a                                     ; $55da: $02
	db   $10                                         ; $55db: $10
	rst  $38                                         ; $55dc: $ff
	rst  $28                                         ; $55dd: $ef
	add  e                                           ; $55de: $83
	rst  $38                                         ; $55df: $ff
	add  b                                           ; $55e0: $80
	ldh  a, [rSC]                                    ; $55e1: $f0 $02
	rrca                                             ; $55e3: $0f
	nop                                              ; $55e4: $00
	ldh  a, [$81]                                    ; $55e5: $f0 $81
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	add  b                                           ; $55e9: $80
	add  l                                           ; $55ea: $85
	ld   a, a                                        ; $55eb: $7f
	add  b                                           ; $55ec: $80
	ld   a, $02                                      ; $55ed: $3e $02
	add  c                                           ; $55ef: $81
	nop                                              ; $55f0: $00
	ld   a, [hl]                                     ; $55f1: $7e
	add  c                                           ; $55f2: $81
	nop                                              ; $55f3: $00
	ld   bc, $3d62                                   ; $55f4: $01 $62 $3d
	add  b                                           ; $55f7: $80
	ld   a, $80                                      ; $55f8: $3e $80
	ccf                                              ; $55fa: $3f
	add  d                                           ; $55fb: $82
	dec  a                                           ; $55fc: $3d
	add  d                                           ; $55fd: $82
	ld   a, $80                                      ; $55fe: $3e $80
	ccf                                              ; $5600: $3f
	ld   bc, $df7f                                   ; $5601: $01 $7f $df
	add  b                                           ; $5604: $80
	rst  $28                                         ; $5605: $ef
	add  b                                           ; $5606: $80
	ld   h, a                                        ; $5607: $67
	add  b                                           ; $5608: $80
	add  b                                           ; $5609: $80
	nop                                              ; $560a: $00
	sbc  a                                           ; $560b: $9f
	add  c                                           ; $560c: $81
	rst  JumpTable                                         ; $560d: $df
	add  b                                           ; $560e: $80
	ret  nz                                          ; $560f: $c0

	ld   [bc], a                                     ; $5610: $02
	ld   c, a                                        ; $5611: $4f
	ccf                                              ; $5612: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5613: $cf
	add  e                                           ; $5614: $83
	rst  $38                                         ; $5615: $ff
	add  b                                           ; $5616: $80
	nop                                              ; $5617: $00
	add  d                                           ; $5618: $82
	cp   $80                                         ; $5619: $fe $80
	nop                                              ; $561b: $00
	add  b                                           ; $561c: $80
	db   $fc                                         ; $561d: $fc
	nop                                              ; $561e: $00
	ccf                                              ; $561f: $3f
	add  e                                           ; $5620: $83
	add  b                                           ; $5621: $80
	dec  bc                                          ; $5622: $0b
	ret  nz                                          ; $5623: $c0

	nop                                              ; $5624: $00
	add  b                                           ; $5625: $80
	nop                                              ; $5626: $00
	add  b                                           ; $5627: $80
	nop                                              ; $5628: $00
	ret  nz                                          ; $5629: $c0

	add  b                                           ; $562a: $80
	nop                                              ; $562b: $00
	add  b                                           ; $562c: $80
	jr   nz, jr_019_566e                             ; $562d: $20 $3f

	add  b                                           ; $562f: $80
	ld   a, $09                                      ; $5630: $3e $09
	dec  e                                           ; $5632: $1d
	dec  a                                           ; $5633: $3d
	inc  e                                           ; $5634: $1c
	dec  a                                           ; $5635: $3d
	dec  de                                          ; $5636: $1b
	dec  sp                                          ; $5637: $3b
	jr   jr_019_5675                                 ; $5638: $18 $3b

	dec  de                                          ; $563a: $1b
	dec  sp                                          ; $563b: $3b
	add  b                                           ; $563c: $80
	scf                                              ; $563d: $37
	db   $10                                         ; $563e: $10
	sbc  l                                           ; $563f: $9d
	ld   a, a                                        ; $5640: $7f
	ld   e, a                                        ; $5641: $5f
	rst  $38                                         ; $5642: $ff
	cp   a                                           ; $5643: $bf
	rst  $38                                         ; $5644: $ff
	ld   a, a                                        ; $5645: $7f
	rst  $38                                         ; $5646: $ff
	db   $fd                                         ; $5647: $fd
	rst  $38                                         ; $5648: $ff
	pop  hl                                          ; $5649: $e1
	rst  $28                                         ; $564a: $ef
	set  3, a                                        ; $564b: $cb $df
	sub  a                                           ; $564d: $97
	cp   a                                           ; $564e: $bf
	call z, $fc80                                    ; $564f: $cc $80 $fc
	add  c                                           ; $5652: $81
	db   $fd                                         ; $5653: $fd
	nop                                              ; $5654: $00
	ld   hl, sp-$7f                                  ; $5655: $f8 $81
	ei                                               ; $5657: $fb
	add  b                                           ; $5658: $80
	rst  $38                                         ; $5659: $ff
	nop                                              ; $565a: $00
	pop  af                                          ; $565b: $f1
	add  c                                           ; $565c: $81
	rst  $30                                         ; $565d: $f7
	ld   [bc], a                                     ; $565e: $02
	dec  de                                          ; $565f: $1b
	ret  nz                                          ; $5660: $c0

	ld   d, b                                        ; $5661: $50
	add  c                                           ; $5662: $81
	ldh  [rSC], a                                    ; $5663: $e0 $02
	and  b                                           ; $5665: $a0
	ldh  [$e8], a                                    ; $5666: $e0 $e8
	add  e                                           ; $5668: $83
	ldh  a, [rSC]                                    ; $5669: $f0 $02
	ret  nc                                          ; $566b: $d0

	ldh  a, [$e8]                                    ; $566c: $f0 $e8

jr_019_566e:
	add  l                                           ; $566e: $85
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	ld   bc, $0081                                   ; $5671: $01 $81 $00
	nop                                              ; $5674: $00

jr_019_5675:
	ld   [bc], a                                     ; $5675: $02
	add  c                                           ; $5676: $81
	ld   bc, $3208                                   ; $5677: $01 $08 $32
	rra                                              ; $567a: $1f
	ld   e, a                                        ; $567b: $5f
	ccf                                              ; $567c: $3f
	xor  a                                           ; $567d: $af
	ld   a, a                                        ; $567e: $7f
	ld   e, a                                        ; $567f: $5f
	ld   a, a                                        ; $5680: $7f
	ccf                                              ; $5681: $3f
	add  c                                           ; $5682: $81
	rst  $38                                         ; $5683: $ff
	nop                                              ; $5684: $00
	ld   a, a                                        ; $5685: $7f
	sub  c                                           ; $5686: $91
	rst  $38                                         ; $5687: $ff
	inc  b                                           ; $5688: $04
	rst  JumpTable                                         ; $5689: $df
	rst  $38                                         ; $568a: $ff
	rst  JumpTable                                         ; $568b: $df
	rst  $38                                         ; $568c: $ff
	cp   a                                           ; $568d: $bf
	add  c                                           ; $568e: $81
	rst  $38                                         ; $568f: $ff
	nop                                              ; $5690: $00
	cp   a                                           ; $5691: $bf
	add  l                                           ; $5692: $85
	rst  $38                                         ; $5693: $ff
	nop                                              ; $5694: $00
	pop  af                                          ; $5695: $f1
	add  e                                           ; $5696: $83
	db   $fc                                         ; $5697: $fc
	ld   [bc], a                                     ; $5698: $02
	db   $f4                                         ; $5699: $f4
	db   $fc                                         ; $569a: $fc
	db   $fd                                         ; $569b: $fd
	add  l                                           ; $569c: $85
	cp   $00                                         ; $569d: $fe $00
	ld   sp, hl                                      ; $569f: $f9
	adc  a                                           ; $56a0: $8f
	nop                                              ; $56a1: $00
	ld   [bc], a                                     ; $56a2: $02
	ld   bc, $0200                                   ; $56a3: $01 $00 $02
	add  b                                           ; $56a6: $80
	nop                                              ; $56a7: $00
	inc  bc                                          ; $56a8: $03
	ld   bc, $0105                                   ; $56a9: $01 $05 $01
	add  hl, bc                                      ; $56ac: $09
	add  c                                           ; $56ad: $81
	inc  bc                                          ; $56ae: $03
	inc  b                                           ; $56af: $04
	dec  de                                          ; $56b0: $1b
	dec  bc                                          ; $56b1: $0b
	db   $fc                                         ; $56b2: $fc
	ld   a, a                                        ; $56b3: $7f
	ld   e, a                                        ; $56b4: $5f
	add  c                                           ; $56b5: $81
	rst  $38                                         ; $56b6: $ff
	nop                                              ; $56b7: $00
	cp   a                                           ; $56b8: $bf
	add  e                                           ; $56b9: $83
	rst  $38                                         ; $56ba: $ff
	nop                                              ; $56bb: $00
	ld   a, a                                        ; $56bc: $7f
	or   c                                           ; $56bd: $b1
	rst  $38                                         ; $56be: $ff
	nop                                              ; $56bf: $00
	db   $fc                                         ; $56c0: $fc
	add  c                                           ; $56c1: $81
	rst  $38                                         ; $56c2: $ff
	nop                                              ; $56c3: $00
	db   $fd                                         ; $56c4: $fd
	adc  c                                           ; $56c5: $89
	rst  $38                                         ; $56c6: $ff
	ld   bc, $37b2                                   ; $56c7: $01 $b2 $37
	add  b                                           ; $56ca: $80
	ld   [hl], $12                                   ; $56cb: $36 $12
	call z, $654d                            ; $56cd: $cc $4d $65
	ld   l, e                                        ; $56d0: $6b
	ld   l, [hl]                                     ; $56d1: $6e
	ld   l, a                                        ; $56d2: $6f
	ld   l, l                                        ; $56d3: $6d
	ld   l, a                                        ; $56d4: $6f
	ld   h, e                                        ; $56d5: $63
	ld   l, a                                        ; $56d6: $6f
	sub  e                                           ; $56d7: $93
	rra                                              ; $56d8: $1f
	sub  a                                           ; $56d9: $97
	ld   a, a                                        ; $56da: $7f
	ld   e, a                                        ; $56db: $5f
	rst  $38                                         ; $56dc: $ff
	cp   a                                           ; $56dd: $bf
	rst  $38                                         ; $56de: $ff
	ld   a, a                                        ; $56df: $7f
	add  a                                           ; $56e0: $87
	rst  $38                                         ; $56e1: $ff
	ld   [bc], a                                     ; $56e2: $02
	ei                                               ; $56e3: $fb
	rst  $38                                         ; $56e4: $ff
	di                                               ; $56e5: $f3
	add  c                                           ; $56e6: $81
	rst  $38                                         ; $56e7: $ff
	ld   [bc], a                                     ; $56e8: $02
	rst  $30                                         ; $56e9: $f7
	rst  $38                                         ; $56ea: $ff
	rst  $28                                         ; $56eb: $ef
	add  c                                           ; $56ec: $81
	rst  $38                                         ; $56ed: $ff
	ld   b, $ef                                      ; $56ee: $06 $ef
	rst  $38                                         ; $56f0: $ff
	rst  JumpTable                                         ; $56f1: $df
	rst  $38                                         ; $56f2: $ff
	rst  ToBoot                                         ; $56f3: $c7
	ldh  a, [$f4]                                    ; $56f4: $f0 $f4
	add  l                                           ; $56f6: $85
	ld   hl, sp+$00                                  ; $56f7: $f8 $00
	add  sp, -$7f                                    ; $56f9: $e8 $81
	ld   hl, sp+$04                                  ; $56fb: $f8 $04
	ld   a, [$f4fc]                                  ; $56fd: $fa $fc $f4
	inc  bc                                          ; $5700: $03
	add  hl, bc                                      ; $5701: $09
	add  c                                           ; $5702: $81
	rlca                                             ; $5703: $07
	nop                                              ; $5704: $00
	inc  de                                          ; $5705: $13
	add  c                                           ; $5706: $81
	rrca                                             ; $5707: $0f
	ld   b, $27                                      ; $5708: $06 $27
	rra                                              ; $570a: $1f
	ld   e, a                                        ; $570b: $5f
	ccf                                              ; $570c: $3f
	cpl                                              ; $570d: $2f
	ccf                                              ; $570e: $3f
	ld   e, a                                        ; $570f: $5f
	xor  l                                           ; $5710: $ad
	rst  $38                                         ; $5711: $ff
	nop                                              ; $5712: $00
	ld   hl, sp-$7e                                  ; $5713: $f8 $82
	cp   $01                                         ; $5715: $fe $01
	rst  $38                                         ; $5717: $ff
	ei                                               ; $5718: $fb
	add  a                                           ; $5719: $87
	rst  $38                                         ; $571a: $ff
	nop                                              ; $571b: $00
	db   $fc                                         ; $571c: $fc
	add  c                                           ; $571d: $81
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	add  b                                           ; $5720: $80
	adc  c                                           ; $5721: $89
	nop                                              ; $5722: $00
	ld   [bc], a                                     ; $5723: $02
	sub  a                                           ; $5724: $97
	rrca                                             ; $5725: $0f
	ld   [hl], $81                                   ; $5726: $36 $81
	rla                                              ; $5728: $17
	inc  b                                           ; $5729: $04
	ld   [hl], a                                     ; $572a: $77
	ccf                                              ; $572b: $3f
	dec  l                                           ; $572c: $2d
	cpl                                              ; $572d: $2f
	rst  $28                                         ; $572e: $ef
	add  b                                           ; $572f: $80
	ld   l, a                                        ; $5730: $6f
	inc  bc                                          ; $5731: $03
	ld   a, a                                        ; $5732: $7f
	ld   e, e                                        ; $5733: $5b
	ld   e, a                                        ; $5734: $5f
	rst  $20                                         ; $5735: $e7
	sub  c                                           ; $5736: $91
	rst  $38                                         ; $5737: $ff
	inc  c                                           ; $5738: $0c
	cp   $ff                                         ; $5739: $fe $ff
	cp   $ff                                         ; $573b: $fe $ff
	db   $fd                                         ; $573d: $fd
	rst  $38                                         ; $573e: $ff
	db   $fd                                         ; $573f: $fd
	rst  $38                                         ; $5740: $ff
	di                                               ; $5741: $f3
	rst  $30                                         ; $5742: $f7
	di                                               ; $5743: $f3
	rst  $38                                         ; $5744: $ff
	rst  $30                                         ; $5745: $f7
	sbc  l                                           ; $5746: $9d
	rst  $38                                         ; $5747: $ff
	nop                                              ; $5748: $00
	cp   [hl]                                        ; $5749: $be
	add  l                                           ; $574a: $85
	rst  $38                                         ; $574b: $ff
	nop                                              ; $574c: $00
	cp   $85                                         ; $574d: $fe $85
	rst  $38                                         ; $574f: $ff
	nop                                              ; $5750: $00
	cp   [hl]                                        ; $5751: $be
	add  l                                           ; $5752: $85
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	ld   bc, $0081                                   ; $5755: $01 $81 $00
	nop                                              ; $5758: $00
	ld   bc, $0081                                   ; $5759: $01 $81 $00
	ld   b, $39                                      ; $575c: $06 $39
	rst  JumpTable                                         ; $575e: $df
	sbc  a                                           ; $575f: $9f
	cp   a                                           ; $5760: $bf
	or   a                                           ; $5761: $b7
	cp   a                                           ; $5762: $bf
	ccf                                              ; $5763: $3f
	add  c                                           ; $5764: $81
	ld   a, a                                        ; $5765: $7f
	nop                                              ; $5766: $00
	ld   l, a                                        ; $5767: $6f
	add  b                                           ; $5768: $80
	ld   a, a                                        ; $5769: $7f
	add  c                                           ; $576a: $81
	rst  $38                                         ; $576b: $ff
	nop                                              ; $576c: $00
	rra                                              ; $576d: $1f
	adc  l                                           ; $576e: $8d
	rst  $38                                         ; $576f: $ff
	inc  bc                                          ; $5770: $03
	rst  $20                                         ; $5771: $e7
	rst  $28                                         ; $5772: $ef
	rst  $20                                         ; $5773: $e7
	rst  $38                                         ; $5774: $ff
	add  b                                           ; $5775: $80
	rst  JumpTable                                         ; $5776: $df
	inc  b                                           ; $5777: $04
	sbc  a                                           ; $5778: $9f
	cp   a                                           ; $5779: $bf
	xor  a                                           ; $577a: $af
	cp   a                                           ; $577b: $bf
	ccf                                              ; $577c: $3f
	add  c                                           ; $577d: $81
	ld   a, a                                        ; $577e: $7f
	ld   [bc], a                                     ; $577f: $02
	ld   e, a                                        ; $5780: $5f
	ld   a, a                                        ; $5781: $7f
	cp   a                                           ; $5782: $bf
	sbc  l                                           ; $5783: $9d
	rst  $38                                         ; $5784: $ff
	nop                                              ; $5785: $00
	cp   a                                           ; $5786: $bf
	add  c                                           ; $5787: $81
	rst  $38                                         ; $5788: $ff
	nop                                              ; $5789: $00
	ld   a, a                                        ; $578a: $7f
	adc  c                                           ; $578b: $89
	rst  $38                                         ; $578c: $ff
	nop                                              ; $578d: $00
	rst  JumpTable                                         ; $578e: $df
	adc  l                                           ; $578f: $8d
	ret  nz                                          ; $5790: $c0

	nop                                              ; $5791: $00
	inc  c                                           ; $5792: $0c
	add  c                                           ; $5793: $81
	dec  de                                          ; $5794: $1b
	dec  b                                           ; $5795: $05
	add  hl, de                                      ; $5796: $19
	dec  de                                          ; $5797: $1b
	rlca                                             ; $5798: $07
	rra                                              ; $5799: $1f
	dec  de                                          ; $579a: $1b
	rra                                              ; $579b: $1f
	add  b                                           ; $579c: $80
	ccf                                              ; $579d: $3f
	dec  b                                           ; $579e: $05
	ld   e, a                                        ; $579f: $5f
	ccf                                              ; $57a0: $3f
	dec  a                                           ; $57a1: $3d
	ccf                                              ; $57a2: $3f
	inc  [hl]                                        ; $57a3: $34
	add  b                                           ; $57a4: $80
	add  b                                           ; $57a5: $80
	call z, $ae80                                    ; $57a6: $cc $80 $ae
	add  b                                           ; $57a9: $80
	db   $dd                                         ; $57aa: $dd
	add  b                                           ; $57ab: $80
	cp   [hl]                                        ; $57ac: $be
	ld   bc, $fded                                   ; $57ad: $01 $ed $fd
	add  b                                           ; $57b0: $80
	cp   $80                                         ; $57b1: $fe $80
	rst  $38                                         ; $57b3: $ff
	ld   bc, $7f6f                                   ; $57b4: $01 $6f $7f
	add  b                                           ; $57b7: $80
	nop                                              ; $57b8: $00
	dec  b                                           ; $57b9: $05
	ld   l, e                                        ; $57ba: $6b
	ld   h, e                                        ; $57bb: $63
	inc  hl                                          ; $57bc: $23
	ld   h, e                                        ; $57bd: $63
	pop  de                                          ; $57be: $d1
	jp   Jump_019_4380                               ; $57bf: $c3 $80 $43


	add  b                                           ; $57c2: $80
	jp   Jump_019_4380                               ; $57c3: $c3 $80 $43


	ld   bc, $c19b                                   ; $57c6: $01 $9b $c1
	add  b                                           ; $57c9: $80
	inc  bc                                          ; $57ca: $03
	add  b                                           ; $57cb: $80
	ld   b, e                                        ; $57cc: $43
	add  b                                           ; $57cd: $80
	and  e                                           ; $57ce: $a3
	add  b                                           ; $57cf: $80
	db   $d3                                         ; $57d0: $d3
	add  b                                           ; $57d1: $80
	xor  e                                           ; $57d2: $ab
	add  b                                           ; $57d3: $80
	rst  $30                                         ; $57d4: $f7
	add  b                                           ; $57d5: $80
	db   $eb                                         ; $57d6: $eb
	nop                                              ; $57d7: $00
	cp   c                                           ; $57d8: $b9
	add  c                                           ; $57d9: $81
	db   $fc                                         ; $57da: $fc
	nop                                              ; $57db: $00
	call c, $fc89                                    ; $57dc: $dc $89 $fc
	ld   bc, $0065                                   ; $57df: $01 $65 $00
	add  b                                           ; $57e2: $80
	ld   d, b                                        ; $57e3: $50
	add  b                                           ; $57e4: $80
	xor  d                                           ; $57e5: $aa
	add  b                                           ; $57e6: $80
	ld   hl, sp+$00                                  ; $57e7: $f8 $00
	nop                                              ; $57e9: $00
	add  c                                           ; $57ea: $81
	rst  $38                                         ; $57eb: $ff
	add  d                                           ; $57ec: $82
	nop                                              ; $57ed: $00
	ld   bc, $00ff                                   ; $57ee: $01 $ff $00
	add  b                                           ; $57f1: $80
	ld   b, l                                        ; $57f2: $45
	add  b                                           ; $57f3: $80
	xor  d                                           ; $57f4: $aa
	add  c                                           ; $57f5: $81
	nop                                              ; $57f6: $00
	add  c                                           ; $57f7: $81
	rst  $38                                         ; $57f8: $ff
	add  d                                           ; $57f9: $82
	nop                                              ; $57fa: $00
	ld   bc, $00ff                                   ; $57fb: $01 $ff $00
	add  b                                           ; $57fe: $80
	ld   d, l                                        ; $57ff: $55

Call_019_5800:
	add  b                                           ; $5800: $80
	ld   a, [hl+]                                    ; $5801: $2a
	add  b                                           ; $5802: $80
	rst  $38                                         ; $5803: $ff
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	add  c                                           ; $5806: $81
	rst  $38                                         ; $5807: $ff
	add  d                                           ; $5808: $82
	nop                                              ; $5809: $00
	nop                                              ; $580a: $00
	inc  bc                                          ; $580b: $03
	add  c                                           ; $580c: $81
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	inc  bc                                          ; $580f: $03
	adc  c                                           ; $5810: $89
	nop                                              ; $5811: $00
	ld   bc, $07f8                                   ; $5812: $01 $f8 $07
	add  b                                           ; $5815: $80
	ld   bc, $0080                                   ; $5816: $01 $80 $00
	ld   a, [bc]                                     ; $5819: $0a
	ret  nz                                          ; $581a: $c0

	nop                                              ; $581b: $00
	jr   nc, jr_019_581e                             ; $581c: $30 $00

jr_019_581e:
	ld   [$0400], sp                                 ; $581e: $08 $00 $04
	nop                                              ; $5821: $00
	inc  bc                                          ; $5822: $03
	nop                                              ; $5823: $00
	ld   bc, $fe83                                   ; $5824: $01 $83 $fe
	nop                                              ; $5827: $00
	ld   a, h                                        ; $5828: $7c
	add  c                                           ; $5829: $81
	ld   a, l                                        ; $582a: $7d

jr_019_582b:
	add  b                                           ; $582b: $80
	dec  e                                           ; $582c: $1d
	add  b                                           ; $582d: $80
	inc  bc                                          ; $582e: $03
	ld   [bc], a                                     ; $582f: $02
	ld   de, $3718                                   ; $5830: $11 $18 $37
	add  e                                           ; $5833: $83
	rst  $38                                         ; $5834: $ff
	nop                                              ; $5835: $00
	cp   a                                           ; $5836: $bf
	add  l                                           ; $5837: $85
	rst  $38                                         ; $5838: $ff
	ld   bc, $0f8f                                   ; $5839: $01 $8f $0f
	sub  [hl]                                        ; $583c: $96
	rst  $38                                         ; $583d: $ff
	nop                                              ; $583e: $00
	cp   $83                                         ; $583f: $fe $83
	rst  $38                                         ; $5841: $ff
	ld   [bc], a                                     ; $5842: $02
	db   $fd                                         ; $5843: $fd
	db   $fc                                         ; $5844: $fc
	ccf                                              ; $5845: $3f
	add  a                                           ; $5846: $87
	rst  $38                                         ; $5847: $ff
	add  b                                           ; $5848: $80
	db   $fc                                         ; $5849: $fc
	inc  b                                           ; $584a: $04
	pop  af                                          ; $584b: $f1
	ldh  a, [$c0]                                    ; $584c: $f0 $c0
	nop                                              ; $584e: $00
	ld   e, $88                                      ; $584f: $1e $88
	ret  nz                                          ; $5851: $c0

	ld   bc, $e000                                   ; $5852: $01 $00 $e0
	add  c                                           ; $5855: $81
	nop                                              ; $5856: $00
	ld   [$077c], sp                                 ; $5857: $08 $7c $07
	ld   [hl], a                                     ; $585a: $77
	rlca                                             ; $585b: $07
	inc  b                                           ; $585c: $04
	nop                                              ; $585d: $00
	ld   c, $00                                      ; $585e: $0e $00
	ld   bc, $0083                                   ; $5860: $01 $83 $00
	ld   [bc], a                                     ; $5863: $02
	ld   bc, $3100                                   ; $5864: $01 $00 $31
	add  c                                           ; $5867: $81
	rst  $38                                         ; $5868: $ff
	inc  c                                           ; $5869: $0c
	rst  $28                                         ; $586a: $ef
	rst  $38                                         ; $586b: $ff
	jr   nz, jr_019_586e                             ; $586c: $20 $00

jr_019_586e:
	sbc  e                                           ; $586e: $9b
	nop                                              ; $586f: $00
	inc  l                                           ; $5870: $2c
	nop                                              ; $5871: $00
	ret  nz                                          ; $5872: $c0

	nop                                              ; $5873: $00
	sbc  b                                           ; $5874: $98
	nop                                              ; $5875: $00
	halt                                             ; $5876: $76
	add  e                                           ; $5877: $83
	jp   Jump_019_4304                               ; $5878: $c3 $04 $43


	inc  bc                                          ; $587b: $03
	ld   h, d                                        ; $587c: $62
	nop                                              ; $587d: $00
	rlca                                             ; $587e: $07
	add  e                                           ; $587f: $83
	nop                                              ; $5880: $00

jr_019_5881:
	ld   bc, $ff80                                   ; $5881: $01 $80 $ff
	add  b                                           ; $5884: $80
	ei                                               ; $5885: $fb
	add  b                                           ; $5886: $80
	rst  $38                                         ; $5887: $ff
	add  b                                           ; $5888: $80
	ret  nz                                          ; $5889: $c0

	ld   [bc], a                                     ; $588a: $02
	jr   c, jr_019_588d                              ; $588b: $38 $00

jr_019_588d:
	jp   $0083                                       ; $588d: $c3 $83 $00


	nop                                              ; $5890: $00
	ld   h, d                                        ; $5891: $62
	add  d                                           ; $5892: $82
	db   $fc                                         ; $5893: $fc
	dec  bc                                          ; $5894: $0b
	ld   hl, sp+$62                                  ; $5895: $f8 $62
	nop                                              ; $5897: $00
	ld   a, [$8500]                                  ; $5898: $fa $00 $85
	nop                                              ; $589b: $00
	jp   nz, $6100                           ; $589c: $c2 $00 $61

jr_019_589f:
	nop                                              ; $589f: $00
	jr   nz, jr_019_582b                             ; $58a0: $20 $89

	nop                                              ; $58a2: $00
	dec  b                                           ; $58a3: $05
	add  b                                           ; $58a4: $80
	nop                                              ; $58a5: $00
	ld   h, b                                        ; $58a6: $60
	nop                                              ; $58a7: $00
	rra                                              ; $58a8: $1f
	nop                                              ; $58a9: $00
	add  b                                           ; $58aa: $80
	ld   d, c                                        ; $58ab: $51
	add  b                                           ; $58ac: $80
	xor  d                                           ; $58ad: $aa
	add  b                                           ; $58ae: $80
	db   $fc                                         ; $58af: $fc
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	add  c                                           ; $58b2: $81
	rst  $38                                         ; $58b3: $ff
	add  d                                           ; $58b4: $82
	nop                                              ; $58b5: $00
	ld   bc, $00ff                                   ; $58b6: $01 $ff $00
	add  b                                           ; $58b9: $80
	ld   d, l                                        ; $58ba: $55
	add  b                                           ; $58bb: $80
	add  d                                           ; $58bc: $82
	add  b                                           ; $58bd: $80
	inc  a                                           ; $58be: $3c
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	add  c                                           ; $58c1: $81
	rst  $38                                         ; $58c2: $ff
	add  d                                           ; $58c3: $82
	nop                                              ; $58c4: $00
	ld   bc, $00ff                                   ; $58c5: $01 $ff $00
	add  b                                           ; $58c8: $80
	ld   de, $aa80                                   ; $58c9: $11 $80 $aa
	add  b                                           ; $58cc: $80
	inc  bc                                          ; $58cd: $03
	nop                                              ; $58ce: $00
	nop                                              ; $58cf: $00
	add  c                                           ; $58d0: $81
	rst  $38                                         ; $58d1: $ff
	add  l                                           ; $58d2: $85
	nop                                              ; $58d3: $00
	add  b                                           ; $58d4: $80
	rlca                                             ; $58d5: $07
	add  d                                           ; $58d6: $82
	ld   b, $80                                      ; $58d7: $06 $80
	rlca                                             ; $58d9: $07
	add  h                                           ; $58da: $84
	ld   b, $80                                      ; $58db: $06 $80
	nop                                              ; $58dd: $00
	add  b                                           ; $58de: $80
	sbc  [hl]                                        ; $58df: $9e
	add  d                                           ; $58e0: $82
	ld   e, c                                        ; $58e1: $59
	add  b                                           ; $58e2: $80
	sbc  [hl]                                        ; $58e3: $9e
	add  h                                           ; $58e4: $84
	add  hl, de                                      ; $58e5: $19
	add  b                                           ; $58e6: $80
	nop                                              ; $58e7: $00
	add  b                                           ; $58e8: $80
	ld   a, h                                        ; $58e9: $7c
	add  d                                           ; $58ea: $82
	ld   h, c                                        ; $58eb: $61
	add  b                                           ; $58ec: $80
	ld   a, b                                        ; $58ed: $78
	add  b                                           ; $58ee: $80
	ld   h, b                                        ; $58ef: $60
	add  b                                           ; $58f0: $80
	ld   h, c                                        ; $58f1: $61
	add  b                                           ; $58f2: $80
	ld   a, h                                        ; $58f3: $7c
	add  b                                           ; $58f4: $80
	nop                                              ; $58f5: $00
	add  b                                           ; $58f6: $80
	db   $e3                                         ; $58f7: $e3
	add  b                                           ; $58f8: $80
	sub  [hl]                                        ; $58f9: $96
	add  b                                           ; $58fa: $80
	add  [hl]                                        ; $58fb: $86
	add  b                                           ; $58fc: $80
	db   $e3                                         ; $58fd: $e3
	add  b                                           ; $58fe: $80
	jr   nc, jr_019_5881                             ; $58ff: $30 $80

	inc  [hl]                                        ; $5901: $34
	add  b                                           ; $5902: $80
	db   $e3                                         ; $5903: $e3
	add  b                                           ; $5904: $80
	nop                                              ; $5905: $00
	add  b                                           ; $5906: $80
	add  b                                           ; $5907: $80
	add  b                                           ; $5908: $80
	ld   b, b                                        ; $5909: $40
	add  b                                           ; $590a: $80
	nop                                              ; $590b: $00
	add  b                                           ; $590c: $80
	add  b                                           ; $590d: $80
	add  d                                           ; $590e: $82
	ret  nz                                          ; $590f: $c0

	add  b                                           ; $5910: $80
	add  b                                           ; $5911: $80
	add  b                                           ; $5912: $80
	nop                                              ; $5913: $00
	add  b                                           ; $5914: $80
	ld   b, $88                                      ; $5915: $06 $88
	inc  c                                           ; $5917: $0c
	add  b                                           ; $5918: $80
	ld   b, $80                                      ; $5919: $06 $80
	nop                                              ; $591b: $00
	add  b                                           ; $591c: $80
	jr   c, jr_019_589f                              ; $591d: $38 $80

	ld   l, h                                        ; $591f: $6c
	add  d                                           ; $5920: $82
	add  $80                                         ; $5921: $c6 $80
	cp   $82                                         ; $5923: $fe $82
	add  $80                                         ; $5925: $c6 $80
	nop                                              ; $5927: $00
	add  b                                           ; $5928: $80
	ret  nz                                          ; $5929: $c0

	adc  b                                           ; $592a: $88
	ld   h, b                                        ; $592b: $60
	add  b                                           ; $592c: $80
	ret  nz                                          ; $592d: $c0

	add  b                                           ; $592e: $80
	nop                                              ; $592f: $00
	add  b                                           ; $5930: $80
	inc  a                                           ; $5931: $3c
	add  d                                           ; $5932: $82
	ld   [hl-], a                                    ; $5933: $32
	add  b                                           ; $5934: $80
	inc  a                                           ; $5935: $3c
	add  d                                           ; $5936: $82
	ld   [hl-], a                                    ; $5937: $32
	add  b                                           ; $5938: $80
	inc  a                                           ; $5939: $3c
	add  b                                           ; $593a: $80
	nop                                              ; $593b: $00
	add  b                                           ; $593c: $80
	res  1, b                                        ; $593d: $cb $88
	ret                                              ; $593f: $c9


	add  b                                           ; $5940: $80

Jump_019_5941:
jr_019_5941:
	ld   [hl], c                                     ; $5941: $71
	add  b                                           ; $5942: $80
	nop                                              ; $5943: $00
	add  b                                           ; $5944: $80
	rst  $28                                         ; $5945: $ef
	adc  d                                           ; $5946: $8a
	add  [hl]                                        ; $5947: $86
	add  b                                           ; $5948: $80

jr_019_5949:
	nop                                              ; $5949: $00
	add  b                                           ; $594a: $80
	sbc  h                                           ; $594b: $9c
	adc  b                                           ; $594c: $88
	ld   [hl-], a                                    ; $594d: $32
	add  b                                           ; $594e: $80
	inc  e                                           ; $594f: $1c
	add  b                                           ; $5950: $80
	nop                                              ; $5951: $00
	add  b                                           ; $5952: $80
	adc  b                                           ; $5953: $88
	add  b                                           ; $5954: $80
	ret  z                                           ; $5955: $c8

	add  d                                           ; $5956: $82
	add  sp, -$80                                    ; $5957: $e8 $80
	ret  c                                           ; $5959: $d8

	add  c                                           ; $595a: $81
	ret  z                                           ; $595b: $c8

	inc  b                                           ; $595c: $04
	ld   c, b                                        ; $595d: $48
	nop                                              ; $595e: $00
	ret  nz                                          ; $595f: $c0

	add  b                                           ; $5960: $80
	nop                                              ; $5961: $00
	adc  a                                           ; $5962: $8f
	add  b                                           ; $5963: $80
	nop                                              ; $5964: $00
	ldh  [$81], a                                    ; $5965: $e0 $81
	ret  nz                                          ; $5967: $c0

	nop                                              ; $5968: $00
	add  b                                           ; $5969: $80
	add  e                                           ; $596a: $83
	ret  nz                                          ; $596b: $c0

	nop                                              ; $596c: $00
	jr   nz, @+$01                                   ; $596d: $20 $ff

	nop                                              ; $596f: $00
	db   $fc                                         ; $5970: $fc
	nop                                              ; $5971: $00
	db   $d3                                         ; $5972: $d3
	ld   [bc], a                                     ; $5973: $02
	adc  b                                           ; $5974: $88
	nop                                              ; $5975: $00
	add  b                                           ; $5976: $80
	rlca                                             ; $5977: $07
	inc  b                                           ; $5978: $04
	inc  b                                           ; $5979: $04
	rlca                                             ; $597a: $07
	ld   b, $07                                      ; $597b: $06 $07
	ld   [bc], a                                     ; $597d: $02
	add  a                                           ; $597e: $87
	nop                                              ; $597f: $00
	add  b                                           ; $5980: $80
	rst  $38                                         ; $5981: $ff
	inc  b                                           ; $5982: $04
	ld   bc, $03ff                                   ; $5983: $01 $ff $03
	rst  $38                                         ; $5986: $ff
	ld   [bc], a                                     ; $5987: $02
	add  a                                           ; $5988: $87
	nop                                              ; $5989: $00
	add  b                                           ; $598a: $80
	rst  $38                                         ; $598b: $ff
	inc  b                                           ; $598c: $04
	nop                                              ; $598d: $00
	rst  $38                                         ; $598e: $ff
	nop                                              ; $598f: $00
	rst  $38                                         ; $5990: $ff
	dec  b                                           ; $5991: $05
	adc  l                                           ; $5992: $8d
	rlca                                             ; $5993: $07
	nop                                              ; $5994: $00
	ld   e, b                                        ; $5995: $58
	add  e                                           ; $5996: $83
	ld   a, [hl]                                     ; $5997: $7e
	ld   b, $de                                      ; $5998: $06 $de
	cp   $16                                         ; $599a: $fe $16
	cp   $10                                         ; $599c: $fe $10
	db   $fc                                         ; $599e: $fc
	ld   d, b                                        ; $599f: $50
	add  c                                           ; $59a0: $81
	ld   [hl], b                                     ; $59a1: $70
	nop                                              ; $59a2: $00
	dec  h                                           ; $59a3: $25
	add  a                                           ; $59a4: $87
	rlca                                             ; $59a5: $07
	ld   [$0705], sp                                 ; $59a6: $08 $05 $07
	inc  b                                           ; $59a9: $04

jr_019_59aa:
	rlca                                             ; $59aa: $07
	ld   b, $07                                      ; $59ab: $06 $07
	ld   [hl], d                                     ; $59ad: $72
	ld   [hl], b                                     ; $59ae: $70
	adc  b                                           ; $59af: $88
	add  e                                           ; $59b0: $83
	ld   hl, sp+$01                                  ; $59b1: $f8 $01
	jr   nz, jr_019_5a25                             ; $59b3: $20 $70

	add  b                                           ; $59b5: $80
	ldh  a, [$03]                                    ; $59b6: $f0 $03
	jr   nc, jr_019_59aa                             ; $59b8: $30 $f0

	db   $10                                         ; $59ba: $10
	ldh  a, [$92]                                    ; $59bb: $f0 $92
	nop                                              ; $59bd: $00
	add  b                                           ; $59be: $80
	jr   nz, jr_019_5941                             ; $59bf: $20 $80

	ld   d, b                                        ; $59c1: $50
	add  b                                           ; $59c2: $80
	jr   nz, jr_019_5949                             ; $59c3: $20 $84

	nop                                              ; $59c5: $00
	add  b                                           ; $59c6: $80
	rst  $38                                         ; $59c7: $ff
	nop                                              ; $59c8: $00
	add  b                                           ; $59c9: $80
	add  c                                           ; $59ca: $81
	rst  $38                                         ; $59cb: $ff
	ld   bc, $ffe0                                   ; $59cc: $01 $e0 $ff
	add  [hl]                                        ; $59cf: $86
	ldh  a, [rSC]                                    ; $59d0: $f0 $02
	sbc  a                                           ; $59d2: $9f
	rst  $38                                         ; $59d3: $ff
	nop                                              ; $59d4: $00
	add  c                                           ; $59d5: $81
	rst  $38                                         ; $59d6: $ff
	ld   bc, $ff00                                   ; $59d7: $01 $00 $ff
	add  d                                           ; $59da: $82
	nop                                              ; $59db: $00
	add  b                                           ; $59dc: $80
	sbc  h                                           ; $59dd: $9c
	add  b                                           ; $59de: $80
	sub  h                                           ; $59df: $94
	add  b                                           ; $59e0: $80
	rst  $38                                         ; $59e1: $ff
	nop                                              ; $59e2: $00
	nop                                              ; $59e3: $00
	add  c                                           ; $59e4: $81
	rst  $38                                         ; $59e5: $ff
	ld   bc, $ff00                                   ; $59e6: $01 $00 $ff
	add  d                                           ; $59e9: $82
	nop                                              ; $59ea: $00
	add  d                                           ; $59eb: $82
	ld   [de], a                                     ; $59ec: $12
	add  b                                           ; $59ed: $80
	rst  $38                                         ; $59ee: $ff
	nop                                              ; $59ef: $00
	nop                                              ; $59f0: $00
	add  c                                           ; $59f1: $81
	rst  $38                                         ; $59f2: $ff
	ld   bc, $ff00                                   ; $59f3: $01 $00 $ff
	add  d                                           ; $59f6: $82
	nop                                              ; $59f7: $00
	add  b                                           ; $59f8: $80
	ld   b, $80                                      ; $59f9: $06 $80
	ld   bc, $ff80                                   ; $59fb: $01 $80 $ff
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	add  c                                           ; $5a00: $81
	rst  $38                                         ; $5a01: $ff
	ld   bc, $ff00                                   ; $5a02: $01 $00 $ff
	add  d                                           ; $5a05: $82
	nop                                              ; $5a06: $00
	add  b                                           ; $5a07: $80
	ld   bc, $1980                                   ; $5a08: $01 $80 $19
	ld   bc, $f393                                   ; $5a0b: $01 $93 $f3
	add  h                                           ; $5a0e: $84
	ldh  a, [$80]                                    ; $5a0f: $f0 $80
	di                                               ; $5a11: $f3
	add  d                                           ; $5a12: $82
	ldh  a, [$80]                                    ; $5a13: $f0 $80
	ldh  a, [c]                                      ; $5a15: $f2
	ld   bc, $ff9f                                   ; $5a16: $01 $9f $ff
	add  b                                           ; $5a19: $80
	push de                                          ; $5a1a: $d5
	add  b                                           ; $5a1b: $80
	rst  $30                                         ; $5a1c: $f7
	add  b                                           ; $5a1d: $80
	adc  b                                           ; $5a1e: $88
	add  b                                           ; $5a1f: $80
	cp   $80                                         ; $5a20: $fe $80
	adc  b                                           ; $5a22: $88
	add  b                                           ; $5a23: $80
	sbc  h                                           ; $5a24: $9c

jr_019_5a25:
	add  b                                           ; $5a25: $80
	xor  d                                           ; $5a26: $aa
	add  h                                           ; $5a27: $84
	nop                                              ; $5a28: $00
	add  b                                           ; $5a29: $80
	db   $e4                                         ; $5a2a: $e4
	add  b                                           ; $5a2b: $80
	xor  a                                           ; $5a2c: $af
	add  b                                           ; $5a2d: $80
	and  l                                           ; $5a2e: $a5
	add  b                                           ; $5a2f: $80
	push hl                                          ; $5a30: $e5
	add  b                                           ; $5a31: $80
	and  l                                           ; $5a32: $a5
	add  h                                           ; $5a33: $84
	nop                                              ; $5a34: $00
	add  b                                           ; $5a35: $80
	add  hl, bc                                      ; $5a36: $09
	add  b                                           ; $5a37: $80
	dec  bc                                          ; $5a38: $0b
	add  b                                           ; $5a39: $80
	add  hl, bc                                      ; $5a3a: $09
	add  b                                           ; $5a3b: $80
	ld   de, $1780                                   ; $5a3c: $11 $80 $17
	add  [hl]                                        ; $5a3f: $86

jr_019_5a40:
	nop                                              ; $5a40: $00
	add  b                                           ; $5a41: $80
	add  b                                           ; $5a42: $80
	add  b                                           ; $5a43: $80
	rlca                                             ; $5a44: $07
	add  b                                           ; $5a45: $80
	ld   a, [bc]                                     ; $5a46: $0a
	add  b                                           ; $5a47: $80
	jp   nc, $0086                                   ; $5a48: $d2 $86 $00

	add  b                                           ; $5a4b: $80
	ld   bc, $0980                                   ; $5a4c: $01 $80 $09
	add  b                                           ; $5a4f: $80
	sub  c                                           ; $5a50: $91
	add  b                                           ; $5a51: $80
	ld   e, [hl]                                     ; $5a52: $5e
	adc  b                                           ; $5a53: $88
	nop                                              ; $5a54: $00
	add  b                                           ; $5a55: $80
	ldh  [c], a                                      ; $5a56: $e2
	add  b                                           ; $5a57: $80
	ld   [hl+], a                                    ; $5a58: $22
	add  b                                           ; $5a59: $80
	cpl                                              ; $5a5a: $2f
	adc  d                                           ; $5a5b: $8a
	nop                                              ; $5a5c: $00
	add  b                                           ; $5a5d: $80
	rrca                                             ; $5a5e: $0f
	add  b                                           ; $5a5f: $80
	ldh  [$88], a                                    ; $5a60: $e0 $88
	nop                                              ; $5a62: $00
	add  b                                           ; $5a63: $80
	inc  b                                           ; $5a64: $04
	add  b                                           ; $5a65: $80
	db   $e4                                         ; $5a66: $e4
	add  b                                           ; $5a67: $80
	inc  h                                           ; $5a68: $24
	adc  b                                           ; $5a69: $88
	nop                                              ; $5a6a: $00
	add  b                                           ; $5a6b: $80
	ld   b, b                                        ; $5a6c: $40
	add  b                                           ; $5a6d: $80
	ld   c, a                                        ; $5a6e: $4f
	add  b                                           ; $5a6f: $80
	ld   b, b                                        ; $5a70: $40
	adc  b                                           ; $5a71: $88

jr_019_5a72:
	nop                                              ; $5a72: $00
	add  b                                           ; $5a73: $80
	ld   bc, $e180                                   ; $5a74: $01 $80 $e1
	add  b                                           ; $5a77: $80
	ld   hl, $0088                                   ; $5a78: $21 $88 $00
	add  d                                           ; $5a7b: $82
	inc  b                                           ; $5a7c: $04
	add  b                                           ; $5a7d: $80
	db   $e4                                         ; $5a7e: $e4
	add  h                                           ; $5a7f: $84
	nop                                              ; $5a80: $00
	add  d                                           ; $5a81: $82
	dec  b                                           ; $5a82: $05
	add  b                                           ; $5a83: $80
	ld   b, a                                        ; $5a84: $47
	add  b                                           ; $5a85: $80
	ld   c, c                                        ; $5a86: $49
	add  b                                           ; $5a87: $80
	ld   b, c                                        ; $5a88: $41
	adc  b                                           ; $5a89: $88
	nop                                              ; $5a8a: $00
	add  b                                           ; $5a8b: $80
	ret  nz                                          ; $5a8c: $c0

	add  b                                           ; $5a8d: $80
	add  hl, bc                                      ; $5a8e: $09
	add  b                                           ; $5a8f: $80
	ld   [$0084], sp                                 ; $5a90: $08 $84 $00
	add  b                                           ; $5a93: $80
	ld   [bc], a                                     ; $5a94: $02
	add  b                                           ; $5a95: $80
	rrca                                             ; $5a96: $0f
	add  b                                           ; $5a97: $80
	ld   [bc], a                                     ; $5a98: $02
	add  b                                           ; $5a99: $80
	rst  $28                                         ; $5a9a: $ef
	add  b                                           ; $5a9b: $80
	cpl                                              ; $5a9c: $2f
	add  h                                           ; $5a9d: $84
	nop                                              ; $5a9e: $00
	add  b                                           ; $5a9f: $80
	ld   [hl], b                                     ; $5aa0: $70
	add  b                                           ; $5aa1: $80
	ld   d, b                                        ; $5aa2: $50
	add  b                                           ; $5aa3: $80
	adc  b                                           ; $5aa4: $88
	add  b                                           ; $5aa5: $80
	ld   [hl], b                                     ; $5aa6: $70
	add  b                                           ; $5aa7: $80
	ld   d, e                                        ; $5aa8: $53
	adc  b                                           ; $5aa9: $88
	nop                                              ; $5aaa: $00
	add  d                                           ; $5aab: $82
	inc  b                                           ; $5aac: $04
	add  b                                           ; $5aad: $80
	jp   nz, $008c                                   ; $5aae: $c2 $8c $00

	add  b                                           ; $5ab1: $80
	db   $10                                         ; $5ab2: $10
	add  b                                           ; $5ab3: $80
	and  b                                           ; $5ab4: $a0
	add  b                                           ; $5ab5: $80
	push hl                                          ; $5ab6: $e5
	add  b                                           ; $5ab7: $80
	cp   a                                           ; $5ab8: $bf
	add  [hl]                                        ; $5ab9: $86
	xor  d                                           ; $5aba: $aa
	add  b                                           ; $5abb: $80
	nop                                              ; $5abc: $00
	add  b                                           ; $5abd: $80
	jr   nc, jr_019_5a40                             ; $5abe: $30 $80

	rla                                              ; $5ac0: $17
	add  b                                           ; $5ac1: $80
	sub  b                                           ; $5ac2: $90
	add  d                                           ; $5ac3: $82
	sub  d                                           ; $5ac4: $92
	add  b                                           ; $5ac5: $80
	sub  b                                           ; $5ac6: $90
	add  b                                           ; $5ac7: $80
	sub  c                                           ; $5ac8: $91
	add  b                                           ; $5ac9: $80
	nop                                              ; $5aca: $00
	add  b                                           ; $5acb: $80
	sub  d                                           ; $5acc: $92
	add  b                                           ; $5acd: $80
	jp   nc, $9282                                   ; $5ace: $d2 $82 $92

	add  b                                           ; $5ad1: $80
	sub  h                                           ; $5ad2: $94
	add  b                                           ; $5ad3: $80
	adc  h                                           ; $5ad4: $8c
	add  b                                           ; $5ad5: $80
	add  b                                           ; $5ad6: $80
	add  b                                           ; $5ad7: $80
	nop                                              ; $5ad8: $00
	add  b                                           ; $5ad9: $80
	ld   d, d                                        ; $5ada: $52
	add  b                                           ; $5adb: $80
	ld   e, [hl]                                     ; $5adc: $5e
	add  d                                           ; $5add: $82
	ld   d, d                                        ; $5ade: $52
	add  b                                           ; $5adf: $80
	ld   e, [hl]                                     ; $5ae0: $5e
	add  b                                           ; $5ae1: $80
	add  b                                           ; $5ae2: $80
	add  d                                           ; $5ae3: $82
	nop                                              ; $5ae4: $00
	add  b                                           ; $5ae5: $80
	ld   [hl+], a                                    ; $5ae6: $22
	add  b                                           ; $5ae7: $80
	xor  [hl]                                        ; $5ae8: $ae
	add  b                                           ; $5ae9: $80
	and  e                                           ; $5aea: $a3
	add  b                                           ; $5aeb: $80
	dec  h                                           ; $5aec: $25
	add  b                                           ; $5aed: $80
	add  hl, hl                                      ; $5aee: $29
	add  b                                           ; $5aef: $80
	jr   z, jr_019_5a72                              ; $5af0: $28 $80

	rst  ToBoot                                         ; $5af2: $c7
	add  d                                           ; $5af3: $82
	nop                                              ; $5af4: $00
	add  b                                           ; $5af5: $80
	ret  nz                                          ; $5af6: $c0

	add  b                                           ; $5af7: $80
	ld   [bc], a                                     ; $5af8: $02
	add  d                                           ; $5af9: $82
	ld   bc, $0080                                   ; $5afa: $01 $80 $00
	add  b                                           ; $5afd: $80
	ldh  [$80], a                                    ; $5afe: $e0 $80
	nop                                              ; $5b00: $00
	add  b                                           ; $5b01: $80
	inc  h                                           ; $5b02: $24
	add  b                                           ; $5b03: $80
	ld   b, h                                        ; $5b04: $44
	add  b                                           ; $5b05: $80
	ld   b, b                                        ; $5b06: $40
	add  b                                           ; $5b07: $80
	add  b                                           ; $5b08: $80
	add  b                                           ; $5b09: $80
	nop                                              ; $5b0a: $00
	add  b                                           ; $5b0b: $80
	add  b                                           ; $5b0c: $80
	add  b                                           ; $5b0d: $80
	add  c                                           ; $5b0e: $81
	add  b                                           ; $5b0f: $80
	nop                                              ; $5b10: $00
	add  b                                           ; $5b11: $80
	ld   b, b                                        ; $5b12: $40
	add  [hl]                                        ; $5b13: $86
	ld   b, c                                        ; $5b14: $41
	add  b                                           ; $5b15: $80
	add  c                                           ; $5b16: $81
	add  b                                           ; $5b17: $80
	ld   [bc], a                                     ; $5b18: $02
	add  b                                           ; $5b19: $80
	nop                                              ; $5b1a: $00
	add  b                                           ; $5b1b: $80
	ld   hl, $4180                                   ; $5b1c: $21 $80 $41
	add  b                                           ; $5b1f: $80
	add  c                                           ; $5b20: $81
	add  b                                           ; $5b21: $80
	rlca                                             ; $5b22: $07
	add  d                                           ; $5b23: $82
	add  hl, bc                                      ; $5b24: $09
	add  b                                           ; $5b25: $80
	ld   b, $80                                      ; $5b26: $06 $80
	nop                                              ; $5b28: $00
	add  b                                           ; $5b29: $80
	inc  b                                           ; $5b2a: $04
	add  b                                           ; $5b2b: $80
	ld   b, $82                                      ; $5b2c: $06 $82

jr_019_5b2e:
	nop                                              ; $5b2e: $00
	add  b                                           ; $5b2f: $80
	add  b                                           ; $5b30: $80
	add  b                                           ; $5b31: $80
	ld   b, b                                        ; $5b32: $40
	add  b                                           ; $5b33: $80
	ld   hl, $0080                                   ; $5b34: $21 $80 $00
	add  b                                           ; $5b37: $80
	ld   c, a                                        ; $5b38: $4f
	add  h                                           ; $5b39: $84
	ld   b, d                                        ; $5b3a: $42
	add  b                                           ; $5b3b: $80
	ld   b, h                                        ; $5b3c: $44
	add  b                                           ; $5b3d: $80
	add  h                                           ; $5b3e: $84
	add  b                                           ; $5b3f: $80
	ld   [$0080], sp                                 ; $5b40: $08 $80 $00
	add  b                                           ; $5b43: $80
	add  sp, -$7c                                    ; $5b44: $e8 $84
	adc  b                                           ; $5b46: $88
	add  b                                           ; $5b47: $80
	xor  b                                           ; $5b48: $a8
	add  b                                           ; $5b49: $80
	xor  c                                           ; $5b4a: $a9
	add  b                                           ; $5b4b: $80
	db   $e4                                         ; $5b4c: $e4
	add  b                                           ; $5b4d: $80
	nop                                              ; $5b4e: $00
	add  b                                           ; $5b4f: $80
	ld   [bc], a                                     ; $5b50: $02
	add  b                                           ; $5b51: $80
	rrca                                             ; $5b52: $0f
	add  b                                           ; $5b53: $80
	inc  bc                                          ; $5b54: $03
	add  b                                           ; $5b55: $80
	nop                                              ; $5b56: $00
	add  b                                           ; $5b57: $80
	rrca                                             ; $5b58: $0f
	add  b                                           ; $5b59: $80
	nop                                              ; $5b5a: $00
	add  b                                           ; $5b5b: $80
	pop  hl                                          ; $5b5c: $e1
	add  b                                           ; $5b5d: $80
	nop                                              ; $5b5e: $00
	add  b                                           ; $5b5f: $80
	inc  h                                           ; $5b60: $24
	add  b                                           ; $5b61: $80
	ret  nc                                          ; $5b62: $d0

	add  b                                           ; $5b63: $80
	ldh  [$80], a                                    ; $5b64: $e0 $80
	add  b                                           ; $5b66: $80
	add  b                                           ; $5b67: $80
	ldh  a, [$80]                                    ; $5b68: $f0 $80
	add  b                                           ; $5b6a: $80
	add  b                                           ; $5b6b: $80

jr_019_5b6c:
	add  c                                           ; $5b6c: $81
	add  b                                           ; $5b6d: $80
	nop                                              ; $5b6e: $00
	add  b                                           ; $5b6f: $80
	ld   [hl+], a                                    ; $5b70: $22
	add  d                                           ; $5b71: $82
	ld   de, $1282                                   ; $5b72: $11 $82 $12
	add  b                                           ; $5b75: $80
	ld   [hl+], a                                    ; $5b76: $22
	add  b                                           ; $5b77: $80
	pop  bc                                          ; $5b78: $c1
	add  b                                           ; $5b79: $80
	nop                                              ; $5b7a: $00
	add  b                                           ; $5b7b: $80
	ld   h, b                                        ; $5b7c: $60
	add  b                                           ; $5b7d: $80
	add  b                                           ; $5b7e: $80
	add  h                                           ; $5b7f: $84
	nop                                              ; $5b80: $00
	add  b                                           ; $5b81: $80
	ld   [bc], a                                     ; $5b82: $02
	add  b                                           ; $5b83: $80
	pop  af                                          ; $5b84: $f1
	add  [hl]                                        ; $5b85: $86
	nop                                              ; $5b86: $00
	add  b                                           ; $5b87: $80
	ld   e, [hl]                                     ; $5b88: $5e
	add  b                                           ; $5b89: $80
	ld   d, d                                        ; $5b8a: $52
	add  b                                           ; $5b8b: $80
	cp   [hl]                                        ; $5b8c: $be
	add  b                                           ; $5b8d: $80
	ld   [hl-], a                                    ; $5b8e: $32
	add  b                                           ; $5b8f: $80
	ld   e, [hl]                                     ; $5b90: $5e
	add  h                                           ; $5b91: $84
	nop                                              ; $5b92: $00
	add  d                                           ; $5b93: $82
	db   $10                                         ; $5b94: $10
	add  b                                           ; $5b95: $80
	inc  e                                           ; $5b96: $1c
	add  b                                           ; $5b97: $80
	db   $10                                         ; $5b98: $10
	add  b                                           ; $5b99: $80
	ld   a, h                                        ; $5b9a: $7c
	add  [hl]                                        ; $5b9b: $86
	nop                                              ; $5b9c: $00
	add  b                                           ; $5b9d: $80
	ld   a, [bc]                                     ; $5b9e: $0a
	add  b                                           ; $5b9f: $80
	ld   c, d                                        ; $5ba0: $4a
	add  b                                           ; $5ba1: $80
	ld   b, h                                        ; $5ba2: $44
	add  b                                           ; $5ba3: $80
	ldh  a, [c]                                      ; $5ba4: $f2
	add  [hl]                                        ; $5ba5: $86
	nop                                              ; $5ba6: $00
	add  b                                           ; $5ba7: $80
	jr   nc, jr_019_5b2e                             ; $5ba8: $30 $84

	db   $10                                         ; $5baa: $10
	adc  b                                           ; $5bab: $88
	nop                                              ; $5bac: $00
	add  h                                           ; $5bad: $84
	ld   b, h                                        ; $5bae: $44
	adc  b                                           ; $5baf: $88
	nop                                              ; $5bb0: $00
	add  b                                           ; $5bb1: $80
	db   $10                                         ; $5bb2: $10
	add  b                                           ; $5bb3: $80
	cp   $80                                         ; $5bb4: $fe $80

jr_019_5bb6:
	db   $10                                         ; $5bb6: $10
	adc  b                                           ; $5bb7: $88
	nop                                              ; $5bb8: $00
	add  b                                           ; $5bb9: $80
	ld   [$fe80], sp                                 ; $5bba: $08 $80 $fe
	add  b                                           ; $5bbd: $80
	ld   [$0084], sp                                 ; $5bbe: $08 $84 $00
	add  b                                           ; $5bc1: $80
	dec  d                                           ; $5bc2: $15
	add  b                                           ; $5bc3: $80
	push af                                          ; $5bc4: $f5
	add  b                                           ; $5bc5: $80
	ccf                                              ; $5bc6: $3f
	add  b                                           ; $5bc7: $80
	dec  [hl]                                        ; $5bc8: $35
	add  b                                           ; $5bc9: $80
	rst  $38                                         ; $5bca: $ff
	add  [hl]                                        ; $5bcb: $86
	nop                                              ; $5bcc: $00
	add  b                                           ; $5bcd: $80
	cpl                                              ; $5bce: $2f
	add  b                                           ; $5bcf: $80
	ld   [hl+], a                                    ; $5bd0: $22
	add  b                                           ; $5bd1: $80
	ld   a, d                                        ; $5bd2: $7a
	add  b                                           ; $5bd3: $80
	ld   [hl+], a                                    ; $5bd4: $22
	add  [hl]                                        ; $5bd5: $86
	nop                                              ; $5bd6: $00
	add  b                                           ; $5bd7: $80

jr_019_5bd8:
	add  b                                           ; $5bd8: $80
	add  d                                           ; $5bd9: $82
	adc  b                                           ; $5bda: $88
	add  b                                           ; $5bdb: $80

jr_019_5bdc:
	cp   e                                           ; $5bdc: $bb
	adc  d                                           ; $5bdd: $8a
	nop                                              ; $5bde: $00
	add  b                                           ; $5bdf: $80
	daa                                              ; $5be0: $27
	add  b                                           ; $5be1: $80
	jr   nz, jr_019_5b6c                             ; $5be2: $20 $88

	nop                                              ; $5be4: $00
	add  b                                           ; $5be5: $80
	db   $10                                         ; $5be6: $10
	add  b                                           ; $5be7: $80
	sub  c                                           ; $5be8: $91
	add  b                                           ; $5be9: $80
	cp   h                                           ; $5bea: $bc
	adc  b                                           ; $5beb: $88
	nop                                              ; $5bec: $00
	add  b                                           ; $5bed: $80
	ld   a, $80                                      ; $5bee: $3e $80
	inc  b                                           ; $5bf0: $04
	add  b                                           ; $5bf1: $80
	adc  b                                           ; $5bf2: $88
	add  h                                           ; $5bf3: $84
	nop                                              ; $5bf4: $00
	add  b                                           ; $5bf5: $80
	ld   [hl+], a                                    ; $5bf6: $22
	add  b                                           ; $5bf7: $80
	inc  d                                           ; $5bf8: $14
	add  b                                           ; $5bf9: $80
	ld   a, a                                        ; $5bfa: $7f
	add  b                                           ; $5bfb: $80
	nop                                              ; $5bfc: $00
	add  b                                           ; $5bfd: $80
	ld   [hl], l                                     ; $5bfe: $75
	add  [hl]                                        ; $5bff: $86
	nop                                              ; $5c00: $00
	add  b                                           ; $5c01: $80
	sbc  [hl]                                        ; $5c02: $9e
	add  b                                           ; $5c03: $80
	add  d                                           ; $5c04: $82
	add  d                                           ; $5c05: $82
	add  b                                           ; $5c06: $80
	add  h                                           ; $5c07: $84

jr_019_5c08:
	nop                                              ; $5c08: $00
	adc  b                                           ; $5c09: $88
	ld   b, h                                        ; $5c0a: $44
	add  b                                           ; $5c0b: $80
	ret  nz                                          ; $5c0c: $c0

	add  b                                           ; $5c0d: $80
	ld   a, [hl]                                     ; $5c0e: $7e
	add  b                                           ; $5c0f: $80
	ld   b, h                                        ; $5c10: $44
	add  b                                           ; $5c11: $80
	ld   a, [hl]                                     ; $5c12: $7e
	add  b                                           ; $5c13: $80
	ld   b, h                                        ; $5c14: $44
	add  b                                           ; $5c15: $80
	ld   d, h                                        ; $5c16: $54
	add  b                                           ; $5c17: $80
	ld   c, h                                        ; $5c18: $4c
	add  b                                           ; $5c19: $80
	nop                                              ; $5c1a: $00
	add  h                                           ; $5c1b: $84
	ld   b, h                                        ; $5c1c: $44
	add  b                                           ; $5c1d: $80
	ld   a, h                                        ; $5c1e: $7c
	add  b                                           ; $5c1f: $80
	nop                                              ; $5c20: $00
	add  d                                           ; $5c21: $82
	xor  d                                           ; $5c22: $aa
	add  b                                           ; $5c23: $80
	nop                                              ; $5c24: $00
	add  h                                           ; $5c25: $84
	ld   c, d                                        ; $5c26: $4a
	add  d                                           ; $5c27: $82
	ld   c, b                                        ; $5c28: $48
	add  b                                           ; $5c29: $80
	adc  b                                           ; $5c2a: $88
	add  b                                           ; $5c2b: $80
	db   $10                                         ; $5c2c: $10
	add  b                                           ; $5c2d: $80
	nop                                              ; $5c2e: $00
	add  d                                           ; $5c2f: $82
	db   $10                                         ; $5c30: $10
	add  d                                           ; $5c31: $82
	jr   z, jr_019_5bb6                              ; $5c32: $28 $82

	ld   b, h                                        ; $5c34: $44
	add  b                                           ; $5c35: $80
	add  d                                           ; $5c36: $82
	add  b                                           ; $5c37: $80
	nop                                              ; $5c38: $00
	add  b                                           ; $5c39: $80
	ld   b, h                                        ; $5c3a: $44
	add  b                                           ; $5c3b: $80
	ld   h, h                                        ; $5c3c: $64
	add  h                                           ; $5c3d: $84
	inc  b                                           ; $5c3e: $04
	add  b                                           ; $5c3f: $80
	ld   [$1080], sp                                 ; $5c40: $08 $80 $10
	add  b                                           ; $5c43: $80
	nop                                              ; $5c44: $00
	add  b                                           ; $5c45: $80
	cp   $82                                         ; $5c46: $fe $82
	db   $10                                         ; $5c48: $10
	add  b                                           ; $5c49: $80
	ld   [hl], b                                     ; $5c4a: $70
	add  b                                           ; $5c4b: $80
	sbc  b                                           ; $5c4c: $98
	add  b                                           ; $5c4d: $80
	sub  h                                           ; $5c4e: $94
	add  b                                           ; $5c4f: $80
	ld   h, d                                        ; $5c50: $62
	add  b                                           ; $5c51: $80
	nop                                              ; $5c52: $00
	add  b                                           ; $5c53: $80
	jr   c, jr_019_5bd8                              ; $5c54: $38 $82

	ld   c, b                                        ; $5c56: $48
	add  b                                           ; $5c57: $80

jr_019_5c58:
	jr   c, jr_019_5bdc                              ; $5c58: $38 $82

	ld   [$1080], sp                                 ; $5c5a: $08 $80 $10
	add  b                                           ; $5c5d: $80

jr_019_5c5e:
	nop                                              ; $5c5e: $00
	add  b                                           ; $5c5f: $80
	sub  l                                           ; $5c60: $95
	add  b                                           ; $5c61: $80
	rst  $38                                         ; $5c62: $ff
	add  d                                           ; $5c63: $82
	inc  h                                           ; $5c64: $24
	add  b                                           ; $5c65: $80
	ccf                                              ; $5c66: $3f
	add  b                                           ; $5c67: $80
	inc  h                                           ; $5c68: $24
	add  b                                           ; $5c69: $80

jr_019_5c6a:
	call nz, $0080                                   ; $5c6a: $c4 $80 $00
	add  h                                           ; $5c6d: $84
	ld   [hl+], a                                    ; $5c6e: $22
	add  b                                           ; $5c6f: $80
	ld   a, [de]                                     ; $5c70: $1a
	add  b                                           ; $5c71: $80
	inc  b                                           ; $5c72: $04
	add  b                                           ; $5c73: $80
	nop                                              ; $5c74: $00
	add  b                                           ; $5c75: $80
	inc  bc                                          ; $5c76: $03
	add  b                                           ; $5c77: $80
	nop                                              ; $5c78: $00
	add  b                                           ; $5c79: $80
	adc  l                                           ; $5c7a: $8d
	add  b                                           ; $5c7b: $80
	adc  c                                           ; $5c7c: $89
	add  d                                           ; $5c7d: $82
	sbc  c                                           ; $5c7e: $99
	add  d                                           ; $5c7f: $82

Call_019_5c80:
	xor  c                                           ; $5c80: $a9
	add  b                                           ; $5c81: $80
	ld   [$0080], sp                                 ; $5c82: $08 $80 $00
	adc  b                                           ; $5c85: $88
	jr   nz, jr_019_5c08                             ; $5c86: $20 $80

	inc  h                                           ; $5c88: $24
	add  b                                           ; $5c89: $80
	sub  e                                           ; $5c8a: $93
	add  b                                           ; $5c8b: $80
	nop                                              ; $5c8c: $00
	add  b                                           ; $5c8d: $80
	db   $10                                         ; $5c8e: $10
	add  d                                           ; $5c8f: $82
	ld   hl, $0780                                   ; $5c90: $21 $80 $07
	add  d                                           ; $5c93: $82
	add  hl, bc                                      ; $5c94: $09
	add  b                                           ; $5c95: $80
	add  a                                           ; $5c96: $87
	add  b                                           ; $5c97: $80
	nop                                              ; $5c98: $00
	add  b                                           ; $5c99: $80
	db   $10                                         ; $5c9a: $10
	add  b                                           ; $5c9b: $80
	ld   e, $80                                      ; $5c9c: $1e $80
	ld   hl, $0180                                   ; $5c9e: $21 $80 $01
	add  b                                           ; $5ca1: $80
	add  hl, bc                                      ; $5ca2: $09
	add  b                                           ; $5ca3: $80
	sub  l                                           ; $5ca4: $95
	add  b                                           ; $5ca5: $80
	ld   e, $80                                      ; $5ca6: $1e $80
	nop                                              ; $5ca8: $00
	add  b                                           ; $5ca9: $80
	ld   d, l                                        ; $5caa: $55
	add  b                                           ; $5cab: $80
	ld   [hl], l                                     ; $5cac: $75
	add  b                                           ; $5cad: $80
	ld   d, l                                        ; $5cae: $55
	add  b                                           ; $5caf: $80
	ld   [hl], l                                     ; $5cb0: $75
	add  d                                           ; $5cb1: $82
	ld   d, c                                        ; $5cb2: $51
	add  b                                           ; $5cb3: $80
	ld   d, e                                        ; $5cb4: $53
	add  b                                           ; $5cb5: $80
	nop                                              ; $5cb6: $00
	add  h                                           ; $5cb7: $84
	add  b                                           ; $5cb8: $80
	add  b                                           ; $5cb9: $80
	sub  b                                           ; $5cba: $90
	add  b                                           ; $5cbb: $80
	ld   c, [hl]                                     ; $5cbc: $4e
	add  h                                           ; $5cbd: $84
	nop                                              ; $5cbe: $00
	add  h                                           ; $5cbf: $84
	inc  b                                           ; $5cc0: $04
	add  b                                           ; $5cc1: $80
	ld   [$1080], sp                                 ; $5cc2: $08 $80 $10
	adc  h                                           ; $5cc5: $8c
	nop                                              ; $5cc6: $00
	add  b                                           ; $5cc7: $80
	ld   a, [hl]                                     ; $5cc8: $7e
	add  h                                           ; $5cc9: $84
	ld   b, d                                        ; $5cca: $42
	adc  h                                           ; $5ccb: $8c
	nop                                              ; $5ccc: $00
	add  b                                           ; $5ccd: $80
	add  b                                           ; $5cce: $80
	add  d                                           ; $5ccf: $82
	nop                                              ; $5cd0: $00
	add  b                                           ; $5cd1: $80
	ld   a, [bc]                                     ; $5cd2: $0a
	add  b                                           ; $5cd3: $80
	ld   a, [hl+]                                    ; $5cd4: $2a
	add  h                                           ; $5cd5: $84
	jr   nz, jr_019_5c58                             ; $5cd6: $20 $80

	jr   nc, jr_019_5c5e                             ; $5cd8: $30 $84

	nop                                              ; $5cda: $00
	adc  b                                           ; $5cdb: $88
	ld   b, b                                        ; $5cdc: $40
	add  h                                           ; $5cdd: $84
	nop                                              ; $5cde: $00
	add  d                                           ; $5cdf: $82
	db   $10                                         ; $5ce0: $10
	add  b                                           ; $5ce1: $80
	ld   e, $82                                      ; $5ce2: $1e $82
	db   $10                                         ; $5ce4: $10
	add  h                                           ; $5ce5: $84
	nop                                              ; $5ce6: $00
	add  b                                           ; $5ce7: $80
	jr   c, jr_019_5c6a                              ; $5ce8: $38 $80

	nop                                              ; $5cea: $00
	add  b                                           ; $5ceb: $80
	ld   a, h                                        ; $5cec: $7c
	add  b                                           ; $5ced: $80
	add  d                                           ; $5cee: $82
	add  b                                           ; $5cef: $80
	ld   [bc], a                                     ; $5cf0: $02
	add  b                                           ; $5cf1: $80
	ld   [de], a                                     ; $5cf2: $12
	add  b                                           ; $5cf3: $80
	rla                                              ; $5cf4: $17
	add  b                                           ; $5cf5: $80
	dec  h                                           ; $5cf6: $25
	add  b                                           ; $5cf7: $80
	ld   l, c                                        ; $5cf8: $69
	add  [hl]                                        ; $5cf9: $86
	ld   hl, $1f80                                   ; $5cfa: $21 $80 $1f
	add  b                                           ; $5cfd: $80
	call nz, $0480                                   ; $5cfe: $c4 $80 $04
	add  b                                           ; $5d01: $80
	rlca                                             ; $5d02: $07
	add  b                                           ; $5d03: $80
	call nz, $0880                                   ; $5d04: $c4 $80 $08
	add  b                                           ; $5d07: $80
	ret  z                                           ; $5d08: $c8

	add  b                                           ; $5d09: $80
	db   $10                                         ; $5d0a: $10
	add  b                                           ; $5d0b: $80
	rst  ToBoot                                         ; $5d0c: $c7
	add  b                                           ; $5d0d: $80
	ld   bc, $1980                                   ; $5d0e: $01 $80 $19
	add  b                                           ; $5d11: $80

jr_019_5d12:
	add  a                                           ; $5d12: $87
	add  b                                           ; $5d13: $80
	add  c                                           ; $5d14: $81
	add  b                                           ; $5d15: $80
	adc  c                                           ; $5d16: $89
	add  b                                           ; $5d17: $80
	adc  d                                           ; $5d18: $8a
	add  b                                           ; $5d19: $80
	sub  d                                           ; $5d1a: $92
	ld   bc, $cfc9                                   ; $5d1b: $01 $c9 $cf
	add  d                                           ; $5d1e: $82
	rrca                                             ; $5d1f: $0f
	add  b                                           ; $5d20: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d21: $cf
	add  h                                           ; $5d22: $84
	rrca                                             ; $5d23: $0f
	add  b                                           ; $5d24: $80
	adc  a                                           ; $5d25: $8f
	ld   bc, $f197                                   ; $5d26: $01 $97 $f1
	add  h                                           ; $5d29: $84
	ldh  a, [$80]                                    ; $5d2a: $f0 $80
	rst  $38                                         ; $5d2c: $ff
	nop                                              ; $5d2d: $00
	ldh  [$81], a                                    ; $5d2e: $e0 $81
	rst  $38                                         ; $5d30: $ff
	ld   bc, $ff80                                   ; $5d31: $01 $80 $ff
	add  b                                           ; $5d34: $80
	ret                                              ; $5d35: $c9


	add  b                                           ; $5d36: $80
	adc  b                                           ; $5d37: $88
	add  d                                           ; $5d38: $82
	nop                                              ; $5d39: $00
	add  b                                           ; $5d3a: $80
	rst  $38                                         ; $5d3b: $ff
	nop                                              ; $5d3c: $00
	nop                                              ; $5d3d: $00
	add  c                                           ; $5d3e: $81
	rst  $38                                         ; $5d3f: $ff
	ld   bc, $ff00                                   ; $5d40: $01 $00 $ff
	add  d                                           ; $5d43: $82
	ld   hl, $0082                                   ; $5d44: $21 $82 $00
	add  b                                           ; $5d47: $80
	rst  $38                                         ; $5d48: $ff
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	add  c                                           ; $5d4b: $81
	rst  $38                                         ; $5d4c: $ff
	ld   bc, $ff00                                   ; $5d4d: $01 $00 $ff
	add  b                                           ; $5d50: $80
	db   $10                                         ; $5d51: $10
	add  b                                           ; $5d52: $80
	inc  bc                                          ; $5d53: $03
	add  d                                           ; $5d54: $82
	nop                                              ; $5d55: $00
	add  b                                           ; $5d56: $80
	rst  $38                                         ; $5d57: $ff
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	add  c                                           ; $5d5a: $81
	rst  $38                                         ; $5d5b: $ff
	ld   bc, $ff00                                   ; $5d5c: $01 $00 $ff
	add  b                                           ; $5d5f: $80
	sub  a                                           ; $5d60: $97
	add  b                                           ; $5d61: $80
	sub  h                                           ; $5d62: $94
	add  d                                           ; $5d63: $82
	nop                                              ; $5d64: $00
	add  b                                           ; $5d65: $80
	rst  $38                                         ; $5d66: $ff
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	add  c                                           ; $5d69: $81
	rst  $38                                         ; $5d6a: $ff
	inc  bc                                          ; $5d6b: $03
	nop                                              ; $5d6c: $00
	rst  $38                                         ; $5d6d: $ff
	ret                                              ; $5d6e: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d6f: $cf
	add  b                                           ; $5d70: $80
	ld   c, a                                        ; $5d71: $4f
	add  d                                           ; $5d72: $82
	rrca                                             ; $5d73: $0f
	add  b                                           ; $5d74: $80
	rst  $38                                         ; $5d75: $ff
	nop                                              ; $5d76: $00
	rlca                                             ; $5d77: $07
	add  c                                           ; $5d78: $81
	rst  $38                                         ; $5d79: $ff
	ld   bc, $ff01                                   ; $5d7a: $01 $01 $ff
	add  [hl]                                        ; $5d7d: $86
	ld   b, d                                        ; $5d7e: $42
	add  b                                           ; $5d7f: $80
	ld   a, [hl]                                     ; $5d80: $7e
	add  h                                           ; $5d81: $84
	nop                                              ; $5d82: $00

jr_019_5d83:
	add  b                                           ; $5d83: $80
	ld   a, [hl]                                     ; $5d84: $7e
	adc  h                                           ; $5d85: $8c
	nop                                              ; $5d86: $00
	add  b                                           ; $5d87: $80
	inc  l                                           ; $5d88: $2c
	add  b                                           ; $5d89: $80
	ld   [hl+], a                                    ; $5d8a: $22
	add  h                                           ; $5d8b: $84
	jr   nz, jr_019_5d12                             ; $5d8c: $20 $84

	nop                                              ; $5d8e: $00
	add  d                                           ; $5d8f: $82
	ld   b, b                                        ; $5d90: $40
	add  b                                           ; $5d91: $80
	ld   b, d                                        ; $5d92: $42
	add  b                                           ; $5d93: $80
	inc  h                                           ; $5d94: $24
	add  b                                           ; $5d95: $80
	jr   @-$7a                                       ; $5d96: $18 $84

	nop                                              ; $5d98: $00
	add  b                                           ; $5d99: $80
	db   $10                                         ; $5d9a: $10
	add  b                                           ; $5d9b: $80
	ld   [hl], b                                     ; $5d9c: $70
	add  b                                           ; $5d9d: $80
	sbc  b                                           ; $5d9e: $98
	add  b                                           ; $5d9f: $80
	sub  h                                           ; $5da0: $94
	add  b                                           ; $5da1: $80
	ld   h, d                                        ; $5da2: $62
	add  h                                           ; $5da3: $84
	nop                                              ; $5da4: $00
	add  d                                           ; $5da5: $82
	ld   [bc], a                                     ; $5da6: $02
	add  b                                           ; $5da7: $80
	inc  b                                           ; $5da8: $04
	add  b                                           ; $5da9: $80
	ld   [$1080], sp                                 ; $5daa: $08 $80 $10
	add  h                                           ; $5dad: $84
	nop                                              ; $5dae: $00
	nop                                              ; $5daf: $00
	rst  $38                                         ; $5db0: $ff
	add  e                                           ; $5db1: $83
	nop                                              ; $5db2: $00
	ld   b, $55                                      ; $5db3: $06 $55
	nop                                              ; $5db5: $00
	rst  $38                                         ; $5db6: $ff
	nop                                              ; $5db7: $00
	rst  $38                                         ; $5db8: $ff
	nop                                              ; $5db9: $00
	xor  d                                           ; $5dba: $aa
	add  c                                           ; $5dbb: $81
	nop                                              ; $5dbc: $00
	add  b                                           ; $5dbd: $80
	rrca                                             ; $5dbe: $0f
	nop                                              ; $5dbf: $00
	rra                                              ; $5dc0: $1f
	add  b                                           ; $5dc1: $80
	db   $10                                         ; $5dc2: $10
	dec  b                                           ; $5dc3: $05
	ld   de, $1310                                   ; $5dc4: $11 $10 $13
	ld   de, $1417                                   ; $5dc7: $11 $17 $14
	add  b                                           ; $5dca: $80
	rla                                              ; $5dcb: $17
	add  c                                           ; $5dcc: $81
	db   $10                                         ; $5dcd: $10
	ld   [bc], a                                     ; $5dce: $02
	rst  $38                                         ; $5dcf: $ff
	ldh  a, [$f8]                                    ; $5dd0: $f0 $f8
	add  b                                           ; $5dd2: $80
	ld   [$8805], sp                                 ; $5dd3: $08 $05 $88
	ld   [$88c8], sp                                 ; $5dd6: $08 $c8 $88
	add  sp, $28                                     ; $5dd9: $e8 $28
	add  b                                           ; $5ddb: $80
	add  sp, -$7f                                    ; $5ddc: $e8 $81
	ld   [$ef10], sp                                 ; $5dde: $08 $10 $ef
	rra                                              ; $5de1: $1f
	ccf                                              ; $5de2: $3f
	ld   hl, $2320                                   ; $5de3: $21 $20 $23
	ld   hl, $2327                                   ; $5de6: $21 $27 $23
	cpl                                              ; $5de9: $2f
	dec  hl                                          ; $5dea: $2b
	daa                                              ; $5deb: $27
	dec  h                                           ; $5dec: $25
	inc  hl                                          ; $5ded: $23
	ld   [hl+], a                                    ; $5dee: $22
	ld   hl, $80e1                                   ; $5def: $21 $e1 $80
	ldh  [$80], a                                    ; $5df2: $e0 $80
	add  b                                           ; $5df4: $80
	add  b                                           ; $5df5: $80
	add  e                                           ; $5df6: $83

jr_019_5df7:
	add  b                                           ; $5df7: $80
	add  a                                           ; $5df8: $87

jr_019_5df9:
	add  d                                           ; $5df9: $82
	add  [hl]                                        ; $5dfa: $86
	add  b                                           ; $5dfb: $80
	add  e                                           ; $5dfc: $83
	ld   bc, $4080                                   ; $5dfd: $01 $80 $40
	add  b                                           ; $5e00: $80
	jr   nz, jr_019_5d83                             ; $5e01: $20 $80

	ccf                                              ; $5e03: $3f
	add  b                                           ; $5e04: $80
	rra                                              ; $5e05: $1f
	inc  bc                                          ; $5e06: $03
	nop                                              ; $5e07: $00
	jr   nz, jr_019_5e0a                             ; $5e08: $20 $00

jr_019_5e0a:
	rra                                              ; $5e0a: $1f
	add  e                                           ; $5e0b: $83
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	rst  $38                                         ; $5e0e: $ff
	add  b                                           ; $5e0f: $80
	nop                                              ; $5e10: $00
	add  b                                           ; $5e11: $80
	ldh  [$80], a                                    ; $5e12: $e0 $80
	ldh  a, [rTIMA]                                  ; $5e14: $f0 $05
	rla                                              ; $5e16: $17
	inc  d                                           ; $5e17: $14
	rla                                              ; $5e18: $17
	push af                                          ; $5e19: $f5
	inc  de                                          ; $5e1a: $13
	ld   [de], a                                     ; $5e1b: $12
	add  b                                           ; $5e1c: $80
	ld   de, $1080                                   ; $5e1d: $11 $80 $10
	add  b                                           ; $5e20: $80
	rra                                              ; $5e21: $1f
	add  b                                           ; $5e22: $80
	rrca                                             ; $5e23: $0f
	inc  bc                                          ; $5e24: $03
	nop                                              ; $5e25: $00
	stop                                             ; $5e26: $10 $00
	rrca                                             ; $5e28: $0f
	add  l                                           ; $5e29: $85
	nop                                              ; $5e2a: $00
	add  c                                           ; $5e2b: $81
	ld   hl, sp-$80                                  ; $5e2c: $f8 $80
	ldh  a, [$03]                                    ; $5e2e: $f0 $03
	nop                                              ; $5e30: $00
	ld   [$f000], sp                                 ; $5e31: $08 $00 $f0
	add  l                                           ; $5e34: $85
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	rst  $38                                         ; $5e37: $ff
	add  b                                           ; $5e38: $80
	rlca                                             ; $5e39: $07
	add  b                                           ; $5e3a: $80
	ld   bc, $c180                                   ; $5e3b: $01 $80 $c1
	add  b                                           ; $5e3e: $80
	pop  hl                                          ; $5e3f: $e1
	add  d                                           ; $5e40: $82
	ld   hl, $c180                                   ; $5e41: $21 $80 $c1
	add  b                                           ; $5e44: $80
	ld   bc, $0080                                   ; $5e45: $01 $80 $00
	add  b                                           ; $5e48: $80
	rlca                                             ; $5e49: $07
	add  b                                           ; $5e4a: $80
	rrca                                             ; $5e4b: $0f
	dec  b                                           ; $5e4c: $05
	add  sp, $28                                     ; $5e4d: $e8 $28
	add  sp, -$51                                    ; $5e4f: $e8 $af
	ret  z                                           ; $5e51: $c8

	ld   c, b                                        ; $5e52: $48

jr_019_5e53:
	add  b                                           ; $5e53: $80
	adc  b                                           ; $5e54: $88
	ld   bc, $f008                                   ; $5e55: $01 $08 $f0
	add  e                                           ; $5e58: $83
	nop                                              ; $5e59: $00
	add  d                                           ; $5e5a: $82
	ld   b, h                                        ; $5e5b: $44
	add  b                                           ; $5e5c: $80
	cp   $82                                         ; $5e5d: $fe $82
	ld   b, h                                        ; $5e5f: $44
	add  h                                           ; $5e60: $84
	nop                                              ; $5e61: $00
	add  b                                           ; $5e62: $80
	ld   [bc], a                                     ; $5e63: $02
	add  b                                           ; $5e64: $80
	inc  b                                           ; $5e65: $04
	add  b                                           ; $5e66: $80
	ld   [$1880], sp                                 ; $5e67: $08 $80 $18
	add  b                                           ; $5e6a: $80
	jr   z, @-$7a                                    ; $5e6b: $28 $84

	nop                                              ; $5e6d: $00
	add  [hl]                                        ; $5e6e: $86
	jr   nz, @-$7e                                   ; $5e6f: $20 $80

	jr   nc, jr_019_5df9                             ; $5e71: $30 $86

	nop                                              ; $5e73: $00
	add  b                                           ; $5e74: $80
	jr   c, jr_019_5df7                              ; $5e75: $38 $80

	ld   d, h                                        ; $5e77: $54
	add  d                                           ; $5e78: $82
	sub  d                                           ; $5e79: $92
	add  h                                           ; $5e7a: $84
	inc  b                                           ; $5e7b: $04
	add  b                                           ; $5e7c: $80
	ld   [$1080], sp                                 ; $5e7d: $08 $80 $10
	add  h                                           ; $5e80: $84
	nop                                              ; $5e81: $00
	add  b                                           ; $5e82: $80
	ret  z                                           ; $5e83: $c8

	add  [hl]                                        ; $5e84: $86
	ld   [$0082], sp                                 ; $5e85: $08 $82 $00
	add  b                                           ; $5e88: $80
	ld   [$2c80], sp                                 ; $5e89: $08 $80 $2c
	add  b                                           ; $5e8c: $80
	ld   [hl+], a                                    ; $5e8d: $22
	add  h                                           ; $5e8e: $84
	jr   nz, @-$7c                                   ; $5e8f: $20 $82

	nop                                              ; $5e91: $00
	add  b                                           ; $5e92: $80
	ld   b, $84                                      ; $5e93: $06 $84
	sub  d                                           ; $5e95: $92
	add  b                                           ; $5e96: $80
	and  d                                           ; $5e97: $a2
	add  b                                           ; $5e98: $80
	ld   h, h                                        ; $5e99: $64
	add  h                                           ; $5e9a: $84
	nop                                              ; $5e9b: $00

jr_019_5e9c:
	add  b                                           ; $5e9c: $80
	ld   [hl], b                                     ; $5e9d: $70
	add  b                                           ; $5e9e: $80
	inc  hl                                          ; $5e9f: $23
	add  b                                           ; $5ea0: $80
	ld   [hl], l                                     ; $5ea1: $75
	add  b                                           ; $5ea2: $80
	dec  l                                           ; $5ea3: $2d
	add  b                                           ; $5ea4: $80
	ld   [hl+], a                                    ; $5ea5: $22
	add  b                                           ; $5ea6: $80
	ld   [hl], l                                     ; $5ea7: $75
	add  b                                           ; $5ea8: $80
	ld   l, d                                        ; $5ea9: $6a
	add  b                                           ; $5eaa: $80
	ld   h, [hl]                                     ; $5eab: $66
	add  b                                           ; $5eac: $80
	jr   c, @-$7e                                    ; $5ead: $38 $80

	ld   a, $80                                      ; $5eaf: $3e $80
	add  hl, bc                                      ; $5eb1: $09
	add  d                                           ; $5eb2: $82
	ld   a, $82                                      ; $5eb3: $3e $82
	cp   [hl]                                        ; $5eb5: $be
	add  b                                           ; $5eb6: $80
	adc  b                                           ; $5eb7: $88
	add  d                                           ; $5eb8: $82
	add  b                                           ; $5eb9: $80
	add  b                                           ; $5eba: $80
	ldh  [$88], a                                    ; $5ebb: $e0 $88
	and  b                                           ; $5ebd: $a0
	add  b                                           ; $5ebe: $80
	ld   hl, $2280                                   ; $5ebf: $21 $80 $22
	add  b                                           ; $5ec2: $80
	inc  h                                           ; $5ec3: $24
	adc  b                                           ; $5ec4: $88
	nop                                              ; $5ec5: $00
	add  b                                           ; $5ec6: $80
	ld   a, $80                                      ; $5ec7: $3e $80
	add  hl, bc                                      ; $5ec9: $09
	add  b                                           ; $5eca: $80
	ld   a, $88                                      ; $5ecb: $3e $88
	nop                                              ; $5ecd: $00
	add  b                                           ; $5ece: $80
	and  b                                           ; $5ecf: $a0
	add  b                                           ; $5ed0: $80
	jr   nz, jr_019_5e53                             ; $5ed1: $20 $80

	ld   h, b                                        ; $5ed3: $60
	adc  d                                           ; $5ed4: $8a
	nop                                              ; $5ed5: $00
	add  b                                           ; $5ed6: $80
	ld   bc, $0302                                   ; $5ed7: $01 $02 $03
	ld   [bc], a                                     ; $5eda: $02
	ld   b, $81                                      ; $5edb: $06 $81
	inc  b                                           ; $5edd: $04
	nop                                              ; $5ede: $00
	inc  c                                           ; $5edf: $0c
	add  d                                           ; $5ee0: $82
	ld   [$0984], sp                                 ; $5ee1: $08 $84 $09
	add  b                                           ; $5ee4: $80
	dec  c                                           ; $5ee5: $0d
	add  b                                           ; $5ee6: $80
	ld   b, $06                                      ; $5ee7: $06 $06
	inc  bc                                          ; $5ee9: $03
	dec  bc                                          ; $5eea: $0b
	ld   bc, $0005                                   ; $5eeb: $01 $05 $00
	inc  bc                                          ; $5eee: $03
	nop                                              ; $5eef: $00
	add  b                                           ; $5ef0: $80
	ld   a, [hl]                                     ; $5ef1: $7e
	db   $10                                         ; $5ef2: $10
	rst  $38                                         ; $5ef3: $ff
	sbc  c                                           ; $5ef4: $99
	add  c                                           ; $5ef5: $81
	inc  a                                           ; $5ef6: $3c
	jr   @+$80                                       ; $5ef7: $18 $7e

	ld   h, [hl]                                     ; $5ef9: $66
	ld   a, [hl]                                     ; $5efa: $7e
	inc  a                                           ; $5efb: $3c
	rst  $38                                         ; $5efc: $ff
	db   $db                                         ; $5efd: $db
	rst  $20                                         ; $5efe: $e7
	ld   h, [hl]                                     ; $5eff: $66
	rst  $38                                         ; $5f00: $ff
	jp   $81ff                                       ; $5f01: $c3 $ff $81


	add  b                                           ; $5f04: $80
	rst  $38                                         ; $5f05: $ff
	ld   bc, $42c3                                   ; $5f06: $01 $c3 $42
	add  b                                           ; $5f09: $80
	jp   $8180                                       ; $5f0a: $c3 $80 $81


	add  b                                           ; $5f0d: $80
	rst  $38                                         ; $5f0e: $ff
	add  b                                           ; $5f0f: $80
	ld   a, [hl]                                     ; $5f10: $7e
	ld   [bc], a                                     ; $5f11: $02
	nop                                              ; $5f12: $00
	rst  $38                                         ; $5f13: $ff
	nop                                              ; $5f14: $00
	add  b                                           ; $5f15: $80
	daa                                              ; $5f16: $27
	add  b                                           ; $5f17: $80
	push af                                          ; $5f18: $f5
	add  b                                           ; $5f19: $80
	jr   z, jr_019_5e9c                              ; $5f1a: $28 $80

	rst  $30                                         ; $5f1c: $f7
	add  b                                           ; $5f1d: $80
	push af                                          ; $5f1e: $f5
	add  b                                           ; $5f1f: $80
	ld   [hl+], a                                    ; $5f20: $22
	add  b                                           ; $5f21: $80
	db   $fd                                         ; $5f22: $fd
	add  h                                           ; $5f23: $84
	nop                                              ; $5f24: $00
	add  b                                           ; $5f25: $80
	add  b                                           ; $5f26: $80
	add  b                                           ; $5f27: $80
	nop                                              ; $5f28: $00
	add  b                                           ; $5f29: $80
	inc  a                                           ; $5f2a: $3c
	add  b                                           ; $5f2b: $80
	ld   b, d                                        ; $5f2c: $42
	add  b                                           ; $5f2d: $80
	ld   bc, $3e80                                   ; $5f2e: $01 $80 $3e
	add  b                                           ; $5f31: $80
	ld   [$ff80], sp                                 ; $5f32: $08 $80 $ff
	add  b                                           ; $5f35: $80
	ld   [$1880], sp                                 ; $5f36: $08 $80 $18
	add  h                                           ; $5f39: $84
	nop                                              ; $5f3a: $00
	add  h                                           ; $5f3b: $84
	ld   bc, $0280                                   ; $5f3c: $01 $80 $02
	add  b                                           ; $5f3f: $80
	inc  e                                           ; $5f40: $1c
	add  [hl]                                        ; $5f41: $86
	nop                                              ; $5f42: $00
	add  b                                           ; $5f43: $80
	ld   bc, $0380                                   ; $5f44: $01 $80 $03
	nop                                              ; $5f47: $00
	rlca                                             ; $5f48: $07
	add  c                                           ; $5f49: $81
	dec  b                                           ; $5f4a: $05
	nop                                              ; $5f4b: $00
	dec  c                                           ; $5f4c: $0d
	add  e                                           ; $5f4d: $83
	add  hl, bc                                      ; $5f4e: $09
	ld   bc, $7e78                                   ; $5f4f: $01 $78 $7e
	add  b                                           ; $5f52: $80
	rst  $38                                         ; $5f53: $ff
	ld   [bc], a                                     ; $5f54: $02
	ld   bc, $80ff                                   ; $5f55: $01 $ff $80
	add  b                                           ; $5f58: $80
	rst  $38                                         ; $5f59: $ff
	add  b                                           ; $5f5a: $80
	jp   $ff06                                       ; $5f5b: $c3 $06 $ff


	add  b                                           ; $5f5e: $80
	rst  $38                                         ; $5f5f: $ff
	add  b                                           ; $5f60: $80
	rst  $38                                         ; $5f61: $ff
	add  c                                           ; $5f62: $81
	nop                                              ; $5f63: $00
	add  b                                           ; $5f64: $80
	add  b                                           ; $5f65: $80
	ld   [bc], a                                     ; $5f66: $02
	ret  nz                                          ; $5f67: $c0

	ld   b, b                                        ; $5f68: $40
	ld   h, b                                        ; $5f69: $60
	add  c                                           ; $5f6a: $81
	and  b                                           ; $5f6b: $a0
	nop                                              ; $5f6c: $00
	or   b                                           ; $5f6d: $b0
	add  b                                           ; $5f6e: $80
	sub  b                                           ; $5f6f: $90
	add  b                                           ; $5f70: $80
	db   $10                                         ; $5f71: $10
	ld   bc, $1e90                                   ; $5f72: $01 $90 $1e
	add  b                                           ; $5f75: $80
	jp   $ff03                                       ; $5f76: $c3 $03 $ff


	add  b                                           ; $5f79: $80
	rst  $38                                         ; $5f7a: $ff
	ld   bc, $fe80                                   ; $5f7b: $01 $80 $fe
	add  b                                           ; $5f7e: $80
	nop                                              ; $5f7f: $00
	add  b                                           ; $5f80: $80
	rst  $38                                         ; $5f81: $ff
	add  b                                           ; $5f82: $80
	ld   a, [hl]                                     ; $5f83: $7e
	ld   bc, $0f00                                   ; $5f84: $01 $00 $0f
	add  d                                           ; $5f87: $82
	sub  b                                           ; $5f88: $90
	add  b                                           ; $5f89: $80
	jr   nc, @-$7e                                   ; $5f8a: $30 $80

	ld   h, b                                        ; $5f8c: $60
	dec  b                                           ; $5f8d: $05
	ret  nz                                          ; $5f8e: $c0

	ret  nc                                          ; $5f8f: $d0

	add  b                                           ; $5f90: $80
	and  b                                           ; $5f91: $a0
	nop                                              ; $5f92: $00
	ret  nz                                          ; $5f93: $c0

	rst  $38                                         ; $5f94: $ff
	nop                                              ; $5f95: $00
	rst  $38                                         ; $5f96: $ff
	nop                                              ; $5f97: $00
	rst  $38                                         ; $5f98: $ff
	nop                                              ; $5f99: $00
	rst  $38                                         ; $5f9a: $ff
	nop                                              ; $5f9b: $00
	rst  $38                                         ; $5f9c: $ff
	nop                                              ; $5f9d: $00
	rst  $38                                         ; $5f9e: $ff
	nop                                              ; $5f9f: $00
	rst  $38                                         ; $5fa0: $ff
	nop                                              ; $5fa1: $00
	rst  $38                                         ; $5fa2: $ff
	nop                                              ; $5fa3: $00
	rst  $38                                         ; $5fa4: $ff
	nop                                              ; $5fa5: $00
	rst  $38                                         ; $5fa6: $ff
	nop                                              ; $5fa7: $00
	rst  $38                                         ; $5fa8: $ff
	nop                                              ; $5fa9: $00
	rst  $38                                         ; $5faa: $ff
	nop                                              ; $5fab: $00
	rst  $38                                         ; $5fac: $ff
	nop                                              ; $5fad: $00
	rst  $38                                         ; $5fae: $ff
	nop                                              ; $5faf: $00
	or   c                                           ; $5fb0: $b1
	nop                                              ; $5fb1: $00


RleXorTileData_SaveScreenBank1_8800::
	db $c7, $01, $01, $ff, $00, $80, $ff, $80, $80, $00, $7f, $81, $00, $01, $ff, $80, $80, $ff, $80, $00, $00, $ff, $ff, $00, $8d, $00, $00, $ff, $80, $00, $00, $ff
	db $83, $00, $02, $7e, $00, $7c, $81, $00, $01, $02, $ff, $80, $00, $0c, $ff, $00, $02, $00, $47, $00, $07, $00, $3c, $00, $3e, $00, $42, $83, $00, $05, $7c, $00
	db $7e, $00, $ff, $00, $80, $ff, $80, $00, $00, $bf, $83, $00, $05, $7e, $00, $3e, $00, $ff, $00, $80, $ff, $80, $00, $80, $ff, $80, $00, $0d, $ff, $00, $28, $00
	db $80, $00, $29, $00, $33, $00, $70, $00, $c2, $ff, $80, $00, $00, $ff, $83, $00, $07, $f3, $00, $bb, $00, $03, $00, $4b, $ff, $80, $00, $02, $ff, $00, $28, $81
	db $00, $07, $d8, $00, $f0, $00, $f4, $00, $f4, $ff, $80, $00, $00, $ff, $81, $00, $09, $04, $00, $03, $00, $03, $00, $02, $00, $06, $ff, $80, $00, $00, $ff, $83
	db $00, $07, $c0, $00, $84, $00, $0e, $00, $4a, $ff, $80, $00, $00, $ff, $83, $00, $02, $1f, $00, $1f, $82, $00, $00, $ff, $80, $00, $0d, $ff, $00, $01, $00, $23
	db $00, $83, $00, $1e, $00, $1f, $00, $a0, $ff, $80, $00, $00, $ff, $81, $00, $02, $80, $00, $80, $81, $00, $02, $40, $00, $e1, $81, $40, $80, $c0, $00, $a1, $81
	db $80, $01, $bf, $80, $80, $ff, $80, $00, $00, $fd, $81, $00, $07, $03, $00, $f9, $00, $f8, $00, $ff, $00, $80, $ff, $80, $00, $00, $b7, $81, $00, $07, $c0, $00
	db $b9, $00, $31, $00, $ff, $00, $80, $ff, $80, $00, $02, $bc, $00, $03, $81, $00, $05, $c0, $00, $80, $00, $ff, $00, $80, $ff, $80, $00, $02, $16, $00, $e9, $81
	db $00, $05, $03, $00, $03, $00, $ff, $00, $80, $ff, $80, $00, $06, $2e, $00, $91, $00, $c0, $00, $80, $81, $00, $01, $ff, $00, $80, $ff, $80, $00, $0b, $ff, $00
	db $80, $00, $c0, $00, $5f, $00, $1f, $00, $ff, $00, $80, $ff, $80, $00, $00, $5f, $83, $00, $05, $3f, $00, $9f, $00, $ff, $00, $80, $ff, $80, $00, $02, $c0, $00
	db $3f, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $80, $ff, $80, $00, $02, $ff, $00, $05, $81, $00, $07, $1e, $00, $19, $00, $19, $00, $1b, $ff, $80, $00, $02
	db $ff, $00, $41, $81, $00, $07, $86, $00, $86, $00, $8e, $00, $cf, $ff, $80, $00, $00, $ff, $83, $00, $07, $c7, $00, $c7, $00, $e3, $00, $e3, $ff, $80, $00, $00
	db $ff, $81, $00, $09, $81, $00, $71, $00, $70, $00, $01, $00, $81, $ff, $80, $00, $00, $ff, $81, $00, $09, $e0, $00, $a3, $00, $c3, $00, $63, $00, $e3, $ff, $80
	db $00, $02, $ff, $00, $28, $81, $00, $07, $d8, $00, $f0, $00, $f1, $00, $f1, $ff, $80, $00, $00, $ff, $8a, $00, $00, $ff, $80, $00, $00, $ff, $81, $00, $13, $80
	db $00, $78, $00, $70, $00, $40, $00, $ca, $00, $09, $00, $01, $00, $18, $00, $12, $00, $ff, $00, $80, $ff, $80, $00, $0b, $bd, $00, $86, $00, $8b, $00, $07, $00
	db $48, $00, $ff, $00, $80, $ff, $80, $00, $0b, $fb, $00, $47, $00, $a3, $00, $c1, $00, $21, $00, $ff, $00, $80, $ff, $80, $00, $06, $7d, $00, $02, $00, $01, $00
	db $81, $81, $00, $01, $ff, $00, $80, $ff, $80, $00, $0b, $ef, $00, $c0, $00, $e0, $00, $d1, $00, $e1, $00, $ff, $00, $80, $ff, $80, $00, $00, $bf, $83, $00, $05
	db $c0, $00, $80, $00, $ff, $00, $80, $ff, $80, $00, $02, $06, $00, $f9, $85, $00, $01, $ff, $00, $80, $ff, $80, $00, $0b, $c7, $00, $30, $00, $18, $00, $70, $00
	db $60, $00, $ff, $00, $80, $ff, $80, $00, $00, $ff, $84, $00, $80, $ff, $87, $00, $80, $20, $80, $50, $00, $00, $80, $ff, $00, $0f, $80, $2f, $81, $0f, $02, $07
	db $03, $04, $80, $0a, $80, $15, $00, $00, $80, $ff, $80, $c1, $80, $e3, $81, $f7, $01, $75, $82, $80, $01, $80, $82, $00, $00, $80, $ff, $00, $f8, $82, $fb, $02
	db $f7, $ff, $f0, $84, $00, $80, $ff, $80, $07, $80, $03, $82, $01, $8e, $08, $a4, $00, $80, $0f, $80, $1f, $80, $3f, $80, $7f, $80, $bf, $84, $00, $80, $e0, $80
	db $c0, $80, $c3, $80, $87, $80, $8f, $00, $00, $80, $20, $80, $50, $80, $a8, $01, $10, $f0, $80, $e0, $80, $e1, $80, $e2, $01, $e4, $04, $80, $0a, $80, $15, $80
	db $0a, $80, $44, $80, $20, $80, $40, $80, $a0, $09, $80, $87, $07, $03, $05, $07, $10, $1f, $0e, $3f, $80, $ff, $04, $3f, $ff, $bf, $ff, $bf, $80, $f7, $13, $e7
	db $e5, $cb, $c9, $1c, $5c, $7e, $5d, $ff, $ef, $fb, $87, $8f, $87, $f7, $f1, $e1, $e8, $c8, $c0, $80, $38, $80, $7e, $82, $ff, $02, $fe, $7c, $82, $80, $01, $80
	db $82, $80, $15, $80, $48, $80, $a3, $01, $73, $f3, $80, $ff, $00, $80, $80, $fc, $80, $3c, $80, $1c, $88, $00, $00, $08, $80, $28, $80, $58, $80, $a8, $80, $58
	db $80, $28, $80, $09, $80, $0a, $00, $08, $8f, $00, $80, $20, $80, $50, $80, $a8, $80, $50, $80, $20, $80, $01, $81, $00, $80, $1f, $04, $1e, $1b, $3d, $32, $0a
	db $80, $44, $80, $20, $80, $40, $80, $a0, $00, $00, $80, $0f, $83, $1f, $09, $5b, $57, $33, $23, $03, $04, $24, $20, $02, $e2, $80, $e3, $01, $e6, $c6, $80, $df
	db $0f, $d3, $93, $81, $71, $37, $7f, $f9, $ff, $bc, $c6, $45, $c7, $c6, $ee, $ef, $ff, $80, $fe, $80, $ff, $0b, $7d, $ff, $fb, $bf, $38, $1f, $1e, $1f, $1e, $38
	db $28, $10, $81, $00, $80, $3c, $80, $78, $80, $f8, $80, $1c, $80, $3e, $00, $7f, $80, $ff, $81, $7f, $80, $77, $0a, $63, $6f, $0c, $82, $fe, $7d, $3d, $bc, $8e
	db $1b, $15, $80, $48, $80, $a3, $80, $f3, $80, $ff, $90, $00, $80, $01, $82, $00, $80, $40, $80, $82, $84, $00, $80, $20, $80, $50, $80, $a8, $80, $50, $04, $20
	db $3c, $1d, $79, $7a, $80, $fa, $00, $02, $80, $42, $80, $a2, $80, $5f, $80, $17, $80, $71, $80, $f3, $80, $ff, $80, $82, $80, $00, $80, $82, $04, $10, $17, $47
	db $5f, $9f, $80, $bf, $04, $ff, $7f, $bf, $bd, $03, $80, $01, $05, $83, $82, $15, $f5, $e8, $c8, $80, $e3, $01, $b3, $f3, $80, $8f, $00, $80, $80, $7f, $81, $ff
	db $06, $fe, $7f, $7a, $1c, $18, $03, $13, $80, $17, $01, $1f, $0f, $80, $01, $80, $11, $80, $39, $80, $7c, $80, $38, $80, $93, $80, $c7, $80, $ef, $82, $ff, $0c
	db $fe, $ff, $fd, $f4, $78, $53, $a3, $93, $d3, $df, $ff, $62, $82, $80, $01, $80, $82, $80, $15, $80, $48, $80, $a0, $80, $f3, $80, $ff, $85, $00, $80, $07, $80
	db $1f, $80, $3f, $80, $7f, $02, $bf, $3f, $80, $82, $00, $03, $10, $f0, $e0, $c0, $80, $c2, $01, $d1, $91, $80, $b0, $00, $80, $83, $00, $00, $20, $81, $00, $10
	db $de, $00, $de, $00, $1a, $00, $5c, $00, $c0, $00, $0c, $00, $18, $00, $e6, $00, $54, $8f, $00, $04, $80, $00, $08, $00, $0c, $83, $00, $04, $04, $00, $c0, $00
	db $40, $89, $00, $02, $7e, $00, $3c, $83, $00, $02, $3c, $00, $3c, $83, $00, $04, $3c, $00, $3c, $00, $42, $89, $00, $06, $7e, $00, $3c, $00, $3c, $00, $3c, $81
	db $00, $02, $3c, $00, $3c, $81, $00, $04, $3c, $00, $3c, $00, $42, $8b, $00, $04, $80, $00, $04, $00, $06, $87, $00, $04, $d2, $00, $70, $00, $20, $8d, $00, $08
	db $30, $00, $30, $00, $78, $00, $fc, $00, $80, $81, $00, $04, $0c, $00, $18, $00, $10, $89, $00, $08, $38, $00, $38, $00, $7c, $00, $fe, $00, $80, $83, $00, $06
	db $06, $00, $0c, $00, $18, $00, $10, $8d, $00, $10, $30, $00, $30, $00, $fc, $00, $f4, $00, $18, $00, $20, $00, $60, $00, $cc, $00, $9c, $89, $00, $14, $38, $00
	db $38, $00, $fe, $00, $fa, $00, $0c, $00, $18, $00, $38, $00, $60, $00, $c0, $00, $0e, $00, $86, $8d, $00, $00, $28, $81, $00, $06, $d4, $00, $dc, $00, $58, $00
	db $dc, $81, $00, $02, $cc, $00, $68, $89, $00, $00, $24, $81, $00, $08, $da, $00, $de, $00, $1c, $00, $5e, $00, $c0, $83, $00, $02, $c6, $00, $64, $89, $00, $06
	db $40, $00, $04, $00, $b6, $00, $b8, $83, $00, $00, $02, $81, $00, $04, $c0, $00, $98, $00, $10, $a9, $00, $00, $20, $81, $00, $10, $de, $00, $de, $00, $1a, $00
	db $5c, $00, $c0, $00, $0c, $00, $18, $00, $e6, $00, $54, $8f, $00, $04, $80, $00, $08, $00, $0c, $83, $00, $04, $04, $00, $c0, $00, $40, $89, $00, $02, $7e, $00
	db $3c, $83, $00, $02, $3c, $00, $3c, $83, $00, $04, $3c, $00, $3c, $00, $42, $89, $00, $06, $7e, $00, $3c, $00, $3c, $00, $3c, $81, $00, $02, $3c, $00, $3c, $81
	db $00, $04, $3c, $00, $3c, $00, $42, $8b, $00, $04, $80, $00, $04, $00, $06, $87, $00, $04, $d2, $00, $70, $00, $20, $8d, $00, $08, $30, $00, $30, $00, $78, $00
	db $fc, $00, $80, $81, $00, $04, $0c, $00, $18, $00, $10, $89, $00, $08, $38, $00, $38, $00, $7c, $00, $fe, $00, $80, $83, $00, $06, $06, $00, $0c, $00, $18, $00
	db $10, $8d, $00, $10, $30, $00, $30, $00, $fc, $00, $f4, $00, $18, $00, $20, $00, $60, $00, $cc, $00, $9c, $83, $00



	and  a                                           ; $65c9: $a7
	ld   bc, $0300                                   ; $65ca: $01 $00 $03
	add  c                                           ; $65cd: $81
	ld   bc, $0500                                   ; $65ce: $01 $00 $05
	add  l                                           ; $65d1: $85
	inc  bc                                          ; $65d2: $03
	inc  b                                           ; $65d3: $04
	inc  c                                           ; $65d4: $0c
	rlca                                             ; $65d5: $07
	nop                                              ; $65d6: $00
	rlca                                             ; $65d7: $07
	ld   [$009d], sp                                 ; $65d8: $08 $9d $00
	ld   [bc], a                                     ; $65db: $02
	rrca                                             ; $65dc: $0f
	rlca                                             ; $65dd: $07
	rla                                              ; $65de: $17
	add  c                                           ; $65df: $81
	rrca                                             ; $65e0: $0f
	nop                                              ; $65e1: $00
	cpl                                              ; $65e2: $2f
	add  c                                           ; $65e3: $81
	rra                                              ; $65e4: $1f
	ld   [bc], a                                     ; $65e5: $02
	ld   e, a                                        ; $65e6: $5f
	rra                                              ; $65e7: $1f
	sbc  a                                           ; $65e8: $9f
	add  b                                           ; $65e9: $80
	ld   l, a                                        ; $65ea: $6f
	ld   bc, $0cf3                                   ; $65eb: $01 $f3 $0c
	add  l                                           ; $65ee: $85
	nop                                              ; $65ef: $00
	add  b                                           ; $65f0: $80
	db   $10                                         ; $65f1: $10
	add  b                                           ; $65f2: $80
	rrca                                             ; $65f3: $0f
	add  b                                           ; $65f4: $80
	ld   bc, $00a0                                   ; $65f5: $01 $a0 $00
	inc  b                                           ; $65f8: $04
	ret  c                                           ; $65f9: $d8

	add  b                                           ; $65fa: $80
	add  a                                           ; $65fb: $87
	adc  b                                           ; $65fc: $88
	xor  b                                           ; $65fd: $a8
	add  b                                           ; $65fe: $80
	adc  a                                           ; $65ff: $8f
	add  b                                           ; $6600: $80
	rst  JumpTable                                         ; $6601: $df
	dec  b                                           ; $6602: $05
	rst  $38                                         ; $6603: $ff
	ldh  [rIE], a                                    ; $6604: $e0 $ff
	sbc  a                                           ; $6606: $9f
	rst  $38                                         ; $6607: $ff
	ld   a, a                                        ; $6608: $7f
	add  b                                           ; $6609: $80
	db   $fc                                         ; $660a: $fc
	adc  l                                           ; $660b: $8d
	nop                                              ; $660c: $00
	add  d                                           ; $660d: $82
	db $20, $88

	nop                                              ; $6610: $00
	add  b                                           ; $6611: $80
	inc  bc                                          ; $6612: $03
	sub  d                                           ; $6613: $92
	nop                                              ; $6614: $00

jr_019_6615:
	inc  c                                           ; $6615: $0c
	ret  nz                                          ; $6616: $c0

	nop                                              ; $6617: $00
	jr   nz, @-$3e                                   ; $6618: $20 $c0

	ret  nc                                          ; $661a: $d0

	ldh  [$6f], a                                    ; $661b: $e0 $6f
	ldh  a, [$90]                                    ; $661d: $f0 $90
	rst  $30                                         ; $661f: $f7
	rst  $20                                         ; $6620: $e7
	ld   sp, $9b3e                                   ; $6621: $31 $3e $9b
	nop                                              ; $6624: $00
	add  b                                           ; $6625: $80
	ret  nz                                          ; $6626: $c0

	nop                                              ; $6627: $00
	rst  $38                                         ; $6628: $ff
	add  b                                           ; $6629: $80
	cp   $80                                         ; $662a: $fe $80
	xor  $01                                         ; $662c: $ee $01
	cp   $ff                                         ; $662e: $fe $ff
	add  b                                           ; $6630: $80
	db   $fc                                         ; $6631: $fc
	rlca                                             ; $6632: $07
	inc  e                                           ; $6633: $1c
	db   $fc                                         ; $6634: $fc
	ldh  [$7c], a                                    ; $6635: $e0 $7c
	db   $fc                                         ; $6637: $fc
	adc  h                                           ; $6638: $8c
	cp   h                                           ; $6639: $bc
	ld   c, [hl]                                     ; $663a: $4e
	xor  c                                           ; $663b: $a9
	nop                                              ; $663c: $00
	ld   b, $f0                                      ; $663d: $06 $f0
	nop                                              ; $663f: $00
	ld   c, $f0                                      ; $6640: $0e $f0
	add  c                                           ; $6642: $81

jr_019_6643:
	ld   h, a                                        ; $6643: $67
	cpl                                              ; $6644: $2f

jr_019_6645:
	add  b                                           ; $6645: $80
	or   b                                           ; $6646: $b0
	ld   [bc], a                                     ; $6647: $02
	inc  sp                                          ; $6648: $33
	rst  $10                                         ; $6649: $d7
	jr   @-$7e                                       ; $664a: $18 $80

	add  hl, de                                      ; $664c: $19
	ld   bc, $0f2b                                   ; $664d: $01 $2b $0f
	add  b                                           ; $6650: $80
	ld   c, $02                                      ; $6651: $0e $02
	ld   de, $0f01                                   ; $6653: $11 $01 $0f
	adc  l                                           ; $6656: $8d
	nop                                              ; $6657: $00
	add  b                                           ; $6658: $80
	db   $10                                         ; $6659: $10
	add  d                                           ; $665a: $82
	ld   [$0482], sp                                 ; $665b: $08 $82 $04
	sub  h                                           ; $665e: $94
	nop                                              ; $665f: $00
	db   $10                                         ; $6660: $10
	add  b                                           ; $6661: $80
	nop                                              ; $6662: $00
	ld   h, b                                        ; $6663: $60
	add  b                                           ; $6664: $80
	sbc  b                                           ; $6665: $98
	and  b                                           ; $6666: $a0
	and  h                                           ; $6667: $a4
	cp   b                                           ; $6668: $b8
	cp   d                                           ; $6669: $ba
	cp   h                                           ; $666a: $bc
	call $f27e                                       ; $666b: $cd $7e $f2

jr_019_666e:
	rst  $38                                         ; $666e: $ff
	db   $fd                                         ; $666f: $fd
	sbc  a                                           ; $6670: $9f
	sbc  [hl]                                        ; $6671: $9e
	sbc  e                                           ; $6672: $9b
	nop                                              ; $6673: $00
	add  b                                           ; $6674: $80
	ld   h, b                                        ; $6675: $60
	sbc  d                                           ; $6676: $9a
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	add  b                                           ; $6679: $80
	add  c                                           ; $667a: $81
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	ld   b, b                                        ; $667d: $40
	add  c                                           ; $667e: $81
	add  b                                           ; $667f: $80
	ld   [bc], a                                     ; $6680: $02
	jr   nz, jr_019_6643                             ; $6681: $20 $c0

	add  b                                           ; $6683: $80

jr_019_6684:
	add  e                                           ; $6684: $83
	ret  nz                                          ; $6685: $c0

	inc  b                                           ; $6686: $04
	ld   hl, sp-$20                                  ; $6687: $f8 $e0
	sbc  h                                           ; $6689: $9c
	adc  b                                           ; $668a: $88
	db   $ec                                         ; $668b: $ec
	sbc  e                                           ; $668c: $9b
	nop                                              ; $668d: $00
	add  b                                           ; $668e: $80
	stop                                             ; $668f: $10 $00
	db   $e4                                         ; $6691: $e4
	add  b                                           ; $6692: $80
	jr   z, jr_019_6615                              ; $6693: $28 $80

jr_019_6695:
	jr   c, jr_019_669a                              ; $6695: $38 $03

	jr   @-$3a                                       ; $6697: $18 $c4

	ld   b, b                                        ; $6699: $40

jr_019_669a:
	ld   b, h                                        ; $669a: $44
	add  b                                           ; $669b: $80
	ld   b, b                                        ; $669c: $40
	ld   [$da44], sp                                 ; $669d: $08 $44 $da
	ld   e, [hl]                                     ; $66a0: $5e
	cp   h                                           ; $66a1: $bc
	ld   a, $b8                                      ; $66a2: $3e $b8
	ld   [$0646], sp                                 ; $66a4: $08 $46 $06
	add  b                                           ; $66a7: $80
	inc  b                                           ; $66a8: $04
	nop                                              ; $66a9: $00
	ld   a, [de]                                     ; $66aa: $1a

jr_019_66ab:
	add  e                                           ; $66ab: $83
	ld   [bc], a                                     ; $66ac: $02
	dec  b                                           ; $66ad: $05
	ret  nz                                          ; $66ae: $c0

	add  b                                           ; $66af: $80
	sbc  h                                           ; $66b0: $9c
	add  b                                           ; $66b1: $80
	jp   c, $8210                                    ; $66b2: $da $10 $82

jr_019_66b5:
	nop                                              ; $66b5: $00
	add  h                                           ; $66b6: $84
	add  b                                           ; $66b7: $80
	add  b                                           ; $66b8: $80
	nop                                              ; $66b9: $00
	add  b                                           ; $66ba: $80
	add  b                                           ; $66bb: $80
	add  b                                           ; $66bc: $80
	jr   nc, @-$7c                                   ; $66bd: $30 $82

	ld   [hl], b                                     ; $66bf: $70
	add  h                                           ; $66c0: $84
	ld   l, b                                        ; $66c1: $68
	add  b                                           ; $66c2: $80
	jr   z, jr_019_6645                              ; $66c3: $28 $80

	dec  [hl]                                        ; $66c5: $35
	rrca                                             ; $66c6: $0f
	ld   h, l                                        ; $66c7: $65
	add  b                                           ; $66c8: $80
	ld   a, [hl-]                                    ; $66c9: $3a
	nop                                              ; $66ca: $00
	rra                                              ; $66cb: $1f
	nop                                              ; $66cc: $00
	ldh  [rP1], a                                    ; $66cd: $e0 $00
	ldh  a, [rLCDC]                                  ; $66cf: $f0 $40
	ld   [hl], b                                     ; $66d1: $70
	nop                                              ; $66d2: $00
	jr   jr_019_6695                                 ; $66d3: $18 $c0

	jr   nc, jr_019_66df                             ; $66d5: $30 $08

	add  b                                           ; $66d7: $80
	add  b                                           ; $66d8: $80
	ld   b, $f0                                      ; $66d9: $06 $f0
	db   $10                                         ; $66db: $10
	ld   e, b                                        ; $66dc: $58
	nop                                              ; $66dd: $00
	ld   a, b                                        ; $66de: $78

jr_019_66df:
	nop                                              ; $66df: $00
	ret  nz                                          ; $66e0: $c0

	add  l                                           ; $66e1: $85
	nop                                              ; $66e2: $00
	add  b                                           ; $66e3: $80
	ld   a, [de]                                     ; $66e4: $1a
	add  d                                           ; $66e5: $82
	nop                                              ; $66e6: $00
	add  b                                           ; $66e7: $80
	ret  nz                                          ; $66e8: $c0

	add  b                                           ; $66e9: $80
	jr   nz, @-$7e                                   ; $66ea: $20 $80

	jr   jr_019_666e                                 ; $66ec: $18 $80

	nop                                              ; $66ee: $00
	add  b                                           ; $66ef: $80
	ldh  a, [$80]                                    ; $66f0: $f0 $80
	ld   a, h                                        ; $66f2: $7c
	add  b                                           ; $66f3: $80
	inc  c                                           ; $66f4: $0c
	add  b                                           ; $66f5: $80
	ld   b, b                                        ; $66f6: $40
	add  b                                           ; $66f7: $80
	jr   nz, jr_019_6684                             ; $66f8: $20 $8a

	nop                                              ; $66fa: $00
	ld   [$1018], sp                                 ; $66fb: $08 $18 $10
	jr   nc, jr_019_6760                             ; $66fe: $30 $60

	xor  $40                                         ; $6700: $ee $40
	ld   [$0200], sp                                 ; $6702: $08 $00 $02
	add  c                                           ; $6705: $81
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	db   $fc                                         ; $6708: $fc
	adc  [hl]                                        ; $6709: $8e
	nop                                              ; $670a: $00
	add  b                                           ; $670b: $80
	ld   bc, $0082                                   ; $670c: $01 $82 $00
	add  b                                           ; $670f: $80
	ld   bc, $0680                                   ; $6710: $01 $80 $06
	sbc  h                                           ; $6713: $9c
	nop                                              ; $6714: $00
	rrca                                             ; $6715: $0f
	inc  bc                                          ; $6716: $03
	ld   [bc], a                                     ; $6717: $02
	rrca                                             ; $6718: $0f
	add  hl, bc                                      ; $6719: $09
	ccf                                              ; $671a: $3f
	daa                                              ; $671b: $27
	rst  $38                                         ; $671c: $ff
	db   $fc                                         ; $671d: $fc
	cp   a                                           ; $671e: $bf
	sub  d                                           ; $671f: $92
	ld   a, a                                        ; $6720: $7f
	inc  c                                           ; $6721: $0c
	rst  $38                                         ; $6722: $ff
	cp   c                                           ; $6723: $b9
	xor  $ea                                         ; $6724: $ee $ea
	add  b                                           ; $6726: $80
	inc  c                                           ; $6727: $0c
	add  b                                           ; $6728: $80
	jr   jr_019_66ab                                 ; $6729: $18 $80

	db   $10                                         ; $672b: $10
	add  b                                           ; $672c: $80
	nop                                              ; $672d: $00
	add  d                                           ; $672e: $82
	db   $10                                         ; $672f: $10
	add  d                                           ; $6730: $82
	jr   jr_019_66b5                                 ; $6731: $18 $82

	inc  c                                           ; $6733: $0c
	ld   bc, $0a0e                                   ; $6734: $01 $0e $0a
	add  b                                           ; $6737: $80
	ld   c, $81                                      ; $6738: $0e $81
	rrca                                             ; $673a: $0f
	nop                                              ; $673b: $00
	dec  c                                           ; $673c: $0d
	add  l                                           ; $673d: $85
	rrca                                             ; $673e: $0f
	nop                                              ; $673f: $00
	ld   a, [bc]                                     ; $6740: $0a
	adc  a                                           ; $6741: $8f
	rlca                                             ; $6742: $07
	nop                                              ; $6743: $00
	dec  b                                           ; $6744: $05
	add  [hl]                                        ; $6745: $86
	inc  bc                                          ; $6746: $03
	add  b                                           ; $6747: $80
	inc  hl                                          ; $6748: $23
	add  b                                           ; $6749: $80
	dec  sp                                          ; $674a: $3b
	dec  b                                           ; $674b: $05
	rra                                              ; $674c: $1f
	rla                                              ; $674d: $17
	rra                                              ; $674e: $1f
	inc  de                                          ; $674f: $13
	rra                                              ; $6750: $1f
	dec  e                                           ; $6751: $1d
	add  d                                           ; $6752: $82
	rrca                                             ; $6753: $0f
	ld   de, $071f                                   ; $6754: $11 $1f $07
	ld   a, a                                        ; $6757: $7f
	rra                                              ; $6758: $1f
	rst  $38                                         ; $6759: $ff
	ld   a, a                                        ; $675a: $7f
	rst  $38                                         ; $675b: $ff
	rst  $30                                         ; $675c: $f7
	rst  $38                                         ; $675d: $ff
	cpl                                              ; $675e: $2f
	rst  $38                                         ; $675f: $ff

jr_019_6760:
	dec  e                                           ; $6760: $1d
	rst  $38                                         ; $6761: $ff
	or   e                                           ; $6762: $b3
	rst  $38                                         ; $6763: $ff
	ld   a, a                                        ; $6764: $7f
	sbc  a                                           ; $6765: $9f
	sub  a                                           ; $6766: $97
	add  b                                           ; $6767: $80
	rra                                              ; $6768: $1f
	add  b                                           ; $6769: $80
	daa                                              ; $676a: $27
	ld   bc, $0507                                   ; $676b: $01 $07 $05
	add  c                                           ; $676e: $81
	rrca                                             ; $676f: $0f
	nop                                              ; $6770: $00
	inc  c                                           ; $6771: $0c
	add  [hl]                                        ; $6772: $86
	nop                                              ; $6773: $00
	add  d                                           ; $6774: $82
	inc  b                                           ; $6775: $04
	add  d                                           ; $6776: $82
	inc  c                                           ; $6777: $0c
	add  c                                           ; $6778: $81
	inc  e                                           ; $6779: $1c
	nop                                              ; $677a: $00
	inc  d                                           ; $677b: $14
	add  c                                           ; $677c: $81
	cp   h                                           ; $677d: $bc
	nop                                              ; $677e: $00
	xor  h                                           ; $677f: $ac
	add  c                                           ; $6780: $81
	db   $fc                                         ; $6781: $fc
	nop                                              ; $6782: $00
	call nc, $f881                                   ; $6783: $d4 $81 $f8
	ld   [bc], a                                     ; $6786: $02
	cp   b                                           ; $6787: $b8
	ld   hl, sp+$78                                  ; $6788: $f8 $78
	add  e                                           ; $678a: $83
	ld   hl, sp+$02                                  ; $678b: $f8 $02
	add  sp, -$10                                    ; $678d: $e8 $f0
	ld   hl, sp-$7f                                  ; $678f: $f8 $81
	ldh  a, [rSB]                                    ; $6791: $f0 $01
	db   $f4                                         ; $6793: $f4
	ld   hl, sp-$80                                  ; $6794: $f8 $80
	db   $fc                                         ; $6796: $fc
	ld   d, $f4                                      ; $6797: $16 $f4
	db   $fc                                         ; $6799: $fc
	db   $f4                                         ; $679a: $f4
	db   $fc                                         ; $679b: $fc
	call c, $e4fc                                    ; $679c: $dc $fc $e4
	db   $fd                                         ; $679f: $fd
	db   $fc                                         ; $67a0: $fc
	rst  $38                                         ; $67a1: $ff
	db   $dd                                         ; $67a2: $dd
	rst  $38                                         ; $67a3: $ff
	and  d                                           ; $67a4: $a2
	rst  $38                                         ; $67a5: $ff
	xor  [hl]                                        ; $67a6: $ae
	rst  $38                                         ; $67a7: $ff
	ld   e, h                                        ; $67a8: $5c
	rst  $38                                         ; $67a9: $ff
	di                                               ; $67aa: $f3
	cp   $5e                                         ; $67ab: $fe $5e
	db   $fc                                         ; $67ad: $fc
	cp   h                                           ; $67ae: $bc
	add  c                                           ; $67af: $81
	db   $fc                                         ; $67b0: $fc
	nop                                              ; $67b1: $00
	add  h                                           ; $67b2: $84
	add  c                                           ; $67b3: $81
	db   $fc                                         ; $67b4: $fc
	nop                                              ; $67b5: $00
	db   $f4                                         ; $67b6: $f4
	add  d                                           ; $67b7: $82
	db   $ec                                         ; $67b8: $ec
	add  b                                           ; $67b9: $80
	db   $e4                                         ; $67ba: $e4
	add  c                                           ; $67bb: $81
	ldh  [rSB], a                                    ; $67bc: $e0 $01
	ldh  a, [$e0]                                    ; $67be: $f0 $e0
	add  b                                           ; $67c0: $80
	ldh  a, [rSC]                                    ; $67c1: $f0 $02
	ret  c                                           ; $67c3: $d8

	ldh  a, [rAUD2LOW]                               ; $67c4: $f0 $18
	add  b                                           ; $67c6: $80
	ld   [$3a0f], sp                                 ; $67c7: $08 $0f $3a
	ld   a, [de]                                     ; $67ca: $1a
	ld   a, h                                        ; $67cb: $7c
	inc  a                                           ; $67cc: $3c
	ld   hl, sp+$58                                  ; $67cd: $f8 $58
	ldh  a, [$b0]                                    ; $67cf: $f0 $b0
	ldh  [$60], a                                    ; $67d1: $e0 $60
	rst  $38                                         ; $67d3: $ff
	rlca                                             ; $67d4: $07
	cp   $c6                                         ; $67d5: $fe $c6
	ld   hl, sp+$38                                  ; $67d7: $f8 $38
	add  b                                           ; $67d9: $80
	ret  nz                                          ; $67da: $c0

	ret                                              ; $67db: $c9


	nop                                              ; $67dc: $00
	inc  b                                           ; $67dd: $04
	db   $e3                                         ; $67de: $e3
	rst  $38                                         ; $67df: $ff
	sbc  $ff                                         ; $67e0: $de $ff
	dec  a                                           ; $67e2: $3d
	adc  c                                           ; $67e3: $89
	rst  $38                                         ; $67e4: $ff
	ld   bc, $fa02                                   ; $67e5: $01 $02 $fa
	add  c                                           ; $67e8: $81
	ld   hl, sp-$80                                  ; $67e9: $f8 $80
	db   $fd                                         ; $67eb: $fd
	add  a                                           ; $67ec: $87
	rst  $38                                         ; $67ed: $ff
	add  b                                           ; $67ee: $80
	pop  hl                                          ; $67ef: $e1
	ld   de, $f979                                   ; $67f0: $11 $79 $f9
	sbc  a                                           ; $67f3: $9f
	rst  $38                                         ; $67f4: $ff
	rst  $28                                         ; $67f5: $ef
	rst  $38                                         ; $67f6: $ff
	rst  $30                                         ; $67f7: $f7
	rst  $38                                         ; $67f8: $ff

jr_019_67f9:
	ei                                               ; $67f9: $fb
	rst  $38                                         ; $67fa: $ff
	db   $fd                                         ; $67fb: $fd
	rst  $38                                         ; $67fc: $ff
	cp   $ff                                         ; $67fd: $fe $ff
	ld   a, c                                        ; $67ff: $79

Call_019_6800:
	rst  $38                                         ; $6800: $ff
	ei                                               ; $6801: $fb
	rst  $38                                         ; $6802: $ff
	add  b                                           ; $6803: $80
	cp   $03                                         ; $6804: $fe $03
	cp   a                                           ; $6806: $bf
	rst  $38                                         ; $6807: $ff
	db   $fc                                         ; $6808: $fc
	cp   $80                                         ; $6809: $fe $80
	db   $fd                                         ; $680b: $fd
	add  b                                           ; $680c: $80
	cp   $03                                         ; $680d: $fe $03
	cp   a                                           ; $680f: $bf
	rst  $38                                         ; $6810: $ff
	ld   a, [hl-]                                    ; $6811: $3a
	xor  d                                           ; $6812: $aa
	add  b                                           ; $6813: $80
	ld   b, b                                        ; $6814: $40
	ld   bc, $a0b0                                   ; $6815: $01 $b0 $a0
	add  b                                           ; $6818: $80
	ld   b, b                                        ; $6819: $40
	add  b                                           ; $681a: $80
	add  b                                           ; $681b: $80
	add  b                                           ; $681c: $80
	ld   b, b                                        ; $681d: $40
	add  b                                           ; $681e: $80
	add  b                                           ; $681f: $80
	add  b                                           ; $6820: $80
	ld   b, b                                        ; $6821: $40
	add  b                                           ; $6822: $80
	xor  d                                           ; $6823: $aa
	add  b                                           ; $6824: $80
	dec  b                                           ; $6825: $05
	add  b                                           ; $6826: $80
	nop                                              ; $6827: $00
	add  b                                           ; $6828: $80
	ld   b, b                                        ; $6829: $40
	inc  bc                                          ; $682a: $03
	and  b                                           ; $682b: $a0
	ldh  [rP1], a                                    ; $682c: $e0 $00
	ld   b, b                                        ; $682e: $40
	add  b                                           ; $682f: $80
	nop                                              ; $6830: $00
	add  b                                           ; $6831: $80
	ld   [bc], a                                     ; $6832: $02
	ld   a, [bc]                                     ; $6833: $0a
	cp   a                                           ; $6834: $bf
	and  c                                           ; $6835: $a1
	ld   b, c                                        ; $6836: $41
	ld   d, b                                        ; $6837: $50
	and  h                                           ; $6838: $a4
	and  b                                           ; $6839: $a0
	ld   [de], a                                     ; $683a: $12
	db   $10                                         ; $683b: $10
	ld   bc, $0c00                                   ; $683c: $01 $00 $0c
	add  c                                           ; $683f: $81
	nop                                              ; $6840: $00
	add  b                                           ; $6841: $80
	add  b                                           ; $6842: $80

jr_019_6843:
	nop                                              ; $6843: $00
	ei                                               ; $6844: $fb
	add  b                                           ; $6845: $80
	rst  $38                                         ; $6846: $ff
	add  b                                           ; $6847: $80
	ld   a, a                                        ; $6848: $7f
	add  b                                           ; $6849: $80
	rra                                              ; $684a: $1f
	add  b                                           ; $684b: $80
	rrca                                             ; $684c: $0f
	add  b                                           ; $684d: $80
	inc  bc                                          ; $684e: $03
	ld   b, $40                                      ; $684f: $06 $40
	ret  nz                                          ; $6851: $c0

	jr   nc, jr_019_68c4                             ; $6852: $30 $70

	inc  e                                           ; $6854: $1c
	ld   [hl], h                                     ; $6855: $74
	ld   d, a                                        ; $6856: $57
	add  b                                           ; $6857: $80
	xor  e                                           ; $6858: $ab
	add  b                                           ; $6859: $80
	push af                                          ; $685a: $f5
	add  b                                           ; $685b: $80
	ld   a, [$fd80]                                  ; $685c: $fa $80 $fd
	add  c                                           ; $685f: $81
	rst  $38                                         ; $6860: $ff
	add  b                                           ; $6861: $80
	ccf                                              ; $6862: $3f
	dec  b                                           ; $6863: $05
	rrca                                             ; $6864: $0f
	inc  c                                           ; $6865: $0c
	or   h                                           ; $6866: $b4
	or   [hl]                                        ; $6867: $b6
	ld   a, [de]                                     ; $6868: $1a
	dec  de                                          ; $6869: $1b
	add  b                                           ; $686a: $80
	cp   l                                           ; $686b: $bd
	nop                                              ; $686c: $00
	cp   $80                                         ; $686d: $fe $80
	rst  $38                                         ; $686f: $ff
	nop                                              ; $6870: $00
	cp   $83                                         ; $6871: $fe $83
	rst  $38                                         ; $6873: $ff
	add  b                                           ; $6874: $80
	jr   jr_019_67f9                                 ; $6875: $18 $82

	nop                                              ; $6877: $00
	add  b                                           ; $6878: $80
	and  b                                           ; $6879: $a0
	add  hl, bc                                      ; $687a: $09
	call nc, $2a54                                   ; $687b: $d4 $54 $2a
	ld   l, d                                        ; $687e: $6a
	dec  [hl]                                        ; $687f: $35
	or   l                                           ; $6880: $b5
	cp   d                                           ; $6881: $ba
	jp   c, $0121                                    ; $6882: $da $21 $01

	add  b                                           ; $6885: $80
	nop                                              ; $6886: $00
	add  b                                           ; $6887: $80
	jr   nc, jr_019_688a                             ; $6888: $30 $00

jr_019_688a:
	ld   c, b                                        ; $688a: $48
	add  c                                           ; $688b: $81
	ld   a, b                                        ; $688c: $78
	ld   bc, $3000                                   ; $688d: $01 $00 $30
	add  b                                           ; $6890: $80
	nop                                              ; $6891: $00
	add  b                                           ; $6892: $80
	and  b                                           ; $6893: $a0
	dec  b                                           ; $6894: $05
	ld   d, d                                        ; $6895: $52
	ld   d, b                                        ; $6896: $50
	xor  e                                           ; $6897: $ab
	xor  b                                           ; $6898: $a8
	dec  d                                           ; $6899: $15
	inc  d                                           ; $689a: $14
	add  d                                           ; $689b: $82
	nop                                              ; $689c: $00
	ld   d, $04                                      ; $689d: $16 $04
	nop                                              ; $689f: $00
	rlca                                             ; $68a0: $07
	ld   bc, $0003                                   ; $68a1: $01 $03 $00
	ld   bc, $8000                                   ; $68a4: $01 $00 $80
	nop                                              ; $68a7: $00
	ldh  [rP1], a                                    ; $68a8: $e0 $00
	ld   a, b                                        ; $68aa: $78
	nop                                              ; $68ab: $00
	ld   e, $00                                      ; $68ac: $1e $00
	rlca                                             ; $68ae: $07
	nop                                              ; $68af: $00
	ld   bc, $c000                                   ; $68b0: $01 $00 $c0
	ld   b, b                                        ; $68b3: $40
	add  b                                           ; $68b4: $80
	add  e                                           ; $68b5: $83
	nop                                              ; $68b6: $00
	add  d                                           ; $68b7: $82
	ld   bc, $8106                                   ; $68b8: $01 $06 $81
	ld   bc, $00e0                                   ; $68bb: $01 $e0 $00
	ld   e, b                                        ; $68be: $58
	nop                                              ; $68bf: $00
	jr   c, jr_019_6843                              ; $68c0: $38 $81

	nop                                              ; $68c2: $00
	add  b                                           ; $68c3: $80

jr_019_68c4:
	ldh  [rP1], a                                    ; $68c4: $e0 $00
	db   $10                                         ; $68c6: $10
	add  e                                           ; $68c7: $83
	ldh  a, [rSB]                                    ; $68c8: $f0 $01
	nop                                              ; $68ca: $00
	ldh  [$80], a                                    ; $68cb: $e0 $80
	nop                                              ; $68cd: $00
	ld   [$7fff], sp                                 ; $68ce: $08 $ff $7f
	rst  $38                                         ; $68d1: $ff
	ccf                                              ; $68d2: $3f
	ld   a, a                                        ; $68d3: $7f
	rrca                                             ; $68d4: $0f
	ccf                                              ; $68d5: $3f
	inc  bc                                          ; $68d6: $03
	di                                               ; $68d7: $f3
	add  b                                           ; $68d8: $80
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	rst  $38                                         ; $68db: $ff
	add  b                                           ; $68dc: $80
	ld   a, a                                        ; $68dd: $7f
	add  b                                           ; $68de: $80
	ld   [bc], a                                     ; $68df: $02
	ld   bc, $fc00                                   ; $68e0: $01 $00 $fc
	add  b                                           ; $68e3: $80
	db   $fd                                         ; $68e4: $fd
	nop                                              ; $68e5: $00
	cp   $81                                         ; $68e6: $fe $81
	ld   a, [$fc00]                                  ; $68e8: $fa $00 $fc
	add  e                                           ; $68eb: $83
	push af                                          ; $68ec: $f5
	ld   [bc], a                                     ; $68ed: $02
	ld   [hl], l                                     ; $68ee: $75
	push af                                          ; $68ef: $f5
	ld   [hl], c                                     ; $68f0: $71
	add  b                                           ; $68f1: $80
	ccf                                              ; $68f2: $3f
	add  b                                           ; $68f3: $80
	ld   b, e                                        ; $68f4: $43
	add  b                                           ; $68f5: $80
	db   $fc                                         ; $68f6: $fc
	add  a                                           ; $68f7: $87
	rst  $38                                         ; $68f8: $ff
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	add  c                                           ; $68fb: $81
	ldh  a, [rSC]                                    ; $68fc: $f0 $02
	db   $10                                         ; $68fe: $10
	rra                                              ; $68ff: $1f
	nop                                              ; $6900: $00
	add  b                                           ; $6901: $80
	ldh  [$80], a                                    ; $6902: $e0 $80
	rst  $38                                         ; $6904: $ff
	add  b                                           ; $6905: $80
	rst  $30                                         ; $6906: $f7
	add  c                                           ; $6907: $81
	rst  $28                                         ; $6908: $ef
	ld   b, $1f                                      ; $6909: $06 $1f
	ld   d, $06                                      ; $690b: $16 $06
	ld   hl, $9b41                                   ; $690d: $21 $41 $9b
	dec  de                                          ; $6910: $1b
	add  b                                           ; $6911: $80
	ld   h, d                                        ; $6912: $62
	add  b                                           ; $6913: $80
	db   $fc                                         ; $6914: $fc
	dec  bc                                          ; $6915: $0b
	rst  $38                                         ; $6916: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6917: $cf
	db   $fc                                         ; $6918: $fc
	ld   sp, $00fd                                   ; $6919: $31 $fd $00
	ld   b, $1e                                      ; $691c: $06 $1e
	sbc  c                                           ; $691e: $99
	pop  hl                                          ; $691f: $e1
	ld   h, [hl]                                     ; $6920: $66
	add  [hl]                                        ; $6921: $86
	add  b                                           ; $6922: $80
	sbc  [hl]                                        ; $6923: $9e
	ld   bc, $3dbd                                   ; $6924: $01 $bd $3d
	add  b                                           ; $6927: $80
	inc  bc                                          ; $6928: $03
	ld   [bc], a                                     ; $6929: $02
	db   $fc                                         ; $692a: $fc
	rst  $38                                         ; $692b: $ff
	inc  bc                                          ; $692c: $03
	add  b                                           ; $692d: $80
	ld   b, $13                                      ; $692e: $06 $13
	add  c                                           ; $6930: $81
	ld   bc, $06c6                                   ; $6931: $01 $c6 $06
	ld   h, d                                        ; $6934: $62
	ld   [bc], a                                     ; $6935: $02
	jr   nc, jr_019_6938                             ; $6936: $30 $00

jr_019_6938:
	jr   jr_019_693a                                 ; $6938: $18 $00

jr_019_693a:
	adc  h                                           ; $693a: $8c
	add  d                                           ; $693b: $82
	ld   b, l                                        ; $693c: $45
	ld   b, b                                        ; $693d: $40
	pop  bc                                          ; $693e: $c1
	ret  nz                                          ; $693f: $c0

	inc  bc                                          ; $6940: $03
	nop                                              ; $6941: $00
	pop  bc                                          ; $6942: $c1
	ret  nz                                          ; $6943: $c0

	add  b                                           ; $6944: $80
	add  b                                           ; $6945: $80
	add  [hl]                                        ; $6946: $86
	nop                                              ; $6947: $00
	ld   [de], a                                     ; $6948: $12
	rra                                              ; $6949: $1f
	ld   c, $1e                                      ; $694a: $0e $1e
	rlca                                             ; $694c: $07
	adc  a                                           ; $694d: $8f
	ld   bc, $00c7                                   ; $694e: $01 $c7 $00
	ld   h, c                                        ; $6951: $61
	nop                                              ; $6952: $00
	jr   nc, jr_019_6955                             ; $6953: $30 $00

jr_019_6955:
	jr   jr_019_6957                                 ; $6955: $18 $00

jr_019_6957:
	inc  c                                           ; $6957: $0c
	ld   [bc], a                                     ; $6958: $02
	ld   hl, sp+$03                                  ; $6959: $f8 $03
	ld   [bc], a                                     ; $695b: $02
	add  b                                           ; $695c: $80
	add  b                                           ; $695d: $80
	add  b                                           ; $695e: $80
	ldh  [rTIMA], a                                  ; $695f: $e0 $05
	ld   a, b                                        ; $6961: $78
	ld   hl, sp+$3e                                  ; $6962: $f8 $3e
	ld   a, [hl]                                     ; $6964: $7e
	rra                                              ; $6965: $1f

jr_019_6966:
	ccf                                              ; $6966: $3f
	add  c                                           ; $6967: $81
	rrca                                             ; $6968: $0f
	ld   hl, $ffef                                   ; $6969: $21 $ef $ff
	ld   e, a                                        ; $696c: $5f
	rst  $38                                         ; $696d: $ff
	adc  a                                           ; $696e: $8f
	rst  $38                                         ; $696f: $ff
	dec  d                                           ; $6970: $15
	ccf                                              ; $6971: $3f
	ld   [$000f], sp                                 ; $6972: $08 $0f $00
	inc  bc                                          ; $6975: $03
	nop                                              ; $6976: $00
	add  c                                           ; $6977: $81
	add  b                                           ; $6978: $80
	ldh  [$e2], a                                    ; $6979: $e0 $e2
	db   $ed                                         ; $697b: $ed
	xor  $f6                                         ; $697c: $ee $f6
	rst  $30                                         ; $697e: $f7
	ld   sp, hl                                      ; $697f: $f9
	ei                                               ; $6980: $fb
	cp   $bc                                         ; $6981: $fe $bc
	rst  $38                                         ; $6983: $ff
	dec  d                                           ; $6984: $15
	rst  $38                                         ; $6985: $ff
	nop                                              ; $6986: $00
	rst  $38                                         ; $6987: $ff
	ret  nz                                          ; $6988: $c0

	ld   a, a                                        ; $6989: $7f
	cp   [hl]                                        ; $698a: $be
	ld   d, h                                        ; $698b: $54
	add  b                                           ; $698c: $80
	xor  d                                           ; $698d: $aa
	add  b                                           ; $698e: $80
	ld   d, l                                        ; $698f: $55
	dec  b                                           ; $6990: $05
	ld   a, [bc]                                     ; $6991: $0a
	ld   a, [$fd05]                                  ; $6992: $fa $05 $fd
	ldh  a, [c]                                      ; $6995: $f2
	ld   a, [$ff80]                                  ; $6996: $fa $80 $ff
	inc  bc                                          ; $6999: $03
	ld   d, l                                        ; $699a: $55
	rst  $38                                         ; $699b: $ff
	xor  d                                           ; $699c: $aa
	nop                                              ; $699d: $00
	add  b                                           ; $699e: $80
	xor  d                                           ; $699f: $aa
	add  b                                           ; $69a0: $80
	ld   d, l                                        ; $69a1: $55
	rla                                              ; $69a2: $17
	xor  d                                           ; $69a3: $aa
	ld   a, [hl+]                                    ; $69a4: $2a
	push af                                          ; $69a5: $f5
	dec  d                                           ; $69a6: $15
	jp   c, $cd8a                                    ; $69a7: $da $8a $cd

jr_019_69aa:
	pop  hl                                          ; $69aa: $e1
	ld   b, d                                        ; $69ab: $42
	ldh  a, [$4c]                                    ; $69ac: $f0 $4c
	ld   [hl+], a                                    ; $69ae: $22
	cp   b                                           ; $69af: $b8
	add  hl, de                                      ; $69b0: $19
	dec  e                                           ; $69b1: $1d
	ld   b, h                                        ; $69b2: $44
	add  [hl]                                        ; $69b3: $86
	and  d                                           ; $69b4: $a2
	ld   d, e                                        ; $69b5: $53
	ld   d, c                                        ; $69b6: $51
	cp   c                                           ; $69b7: $b9
	xor  b                                           ; $69b8: $a8
	ld   e, h                                        ; $69b9: $5c
	ld   d, h                                        ; $69ba: $54
	add  b                                           ; $69bb: $80
	xor  h                                           ; $69bc: $ac
	ld   de, $001b                                   ; $69bd: $11 $1b $00
	sub  d                                           ; $69c0: $92
	add  b                                           ; $69c1: $80
	ld   c, c                                        ; $69c2: $49
	ret  nz                                          ; $69c3: $c0

	db   $f4                                         ; $69c4: $f4
	jr   nc, @+$7c                                   ; $69c5: $30 $7a

	jr   jr_019_6966                                 ; $69c7: $18 $9d

	xor  h                                           ; $69c9: $ac
	adc  $56                                         ; $69ca: $ce $56
	ld   c, a                                        ; $69cc: $4f
	ld   c, e                                        ; $69cd: $4b
	adc  [hl]                                        ; $69ce: $8e
	ld   [bc], a                                     ; $69cf: $02
	add  b                                           ; $69d0: $80
	rlca                                             ; $69d1: $07
	add  b                                           ; $69d2: $80
	ld   [bc], a                                     ; $69d3: $02
	dec  bc                                          ; $69d4: $0b
	add  b                                           ; $69d5: $80
	nop                                              ; $69d6: $00
	ld   b, b                                        ; $69d7: $40
	nop                                              ; $69d8: $00
	jr   nz, jr_019_69db                             ; $69d9: $20 $00

jr_019_69db:
	add  b                                           ; $69db: $80
	nop                                              ; $69dc: $00
	stop                                             ; $69dd: $10 $00
	ld   [hl], a                                     ; $69df: $77
	nop                                              ; $69e0: $00
	add  b                                           ; $69e1: $80
	inc  bc                                          ; $69e2: $03
	dec  b                                           ; $69e3: $05
	ld   [$c007], sp                                 ; $69e4: $08 $07 $c0
	rlca                                             ; $69e7: $07
	adc  b                                           ; $69e8: $88
	add  b                                           ; $69e9: $80
	add  b                                           ; $69ea: $80
	add  e                                           ; $69eb: $83
	inc  b                                           ; $69ec: $04
	ld   h, e                                        ; $69ed: $63
	jp   $1b9b                                       ; $69ee: $c3 $9b $1b


	db   $e3                                         ; $69f1: $e3
	add  b                                           ; $69f2: $80
	push af                                          ; $69f3: $f5
	add  b                                           ; $69f4: $80
	ld   [hl], l                                     ; $69f5: $75
	rlca                                             ; $69f6: $07
	push af                                          ; $69f7: $f5
	ld   [hl], l                                     ; $69f8: $75
	push af                                          ; $69f9: $f5
	ld   [hl], l                                     ; $69fa: $75
	push af                                          ; $69fb: $f5
	pop  af                                          ; $69fc: $f1
	ld   [hl], c                                     ; $69fd: $71
	ld   [hl], l                                     ; $69fe: $75
	add  c                                           ; $69ff: $81
	push af                                          ; $6a00: $f5
	ld   a, [bc]                                     ; $6a01: $0a
	pop  af                                          ; $6a02: $f1
	sbc  a                                           ; $6a03: $9f
	rst  $38                                         ; $6a04: $ff
	ld   b, e                                        ; $6a05: $43
	ld   c, a                                        ; $6a06: $4f
	ld   l, c                                        ; $6a07: $69
	ld   c, c                                        ; $6a08: $49
	ld   c, l                                        ; $6a09: $4d
	ld   l, c                                        ; $6a0a: $69
	ld   c, c                                        ; $6a0b: $49
	ld   c, l                                        ; $6a0c: $4d
	add  e                                           ; $6a0d: $83
	ld   c, c                                        ; $6a0e: $49
	nop                                              ; $6a0f: $00
	inc  h                                           ; $6a10: $24
	add  e                                           ; $6a11: $83
	rst  JumpTable                                         ; $6a12: $df
	nop                                              ; $6a13: $00
	db   $dd                                         ; $6a14: $dd
	add  e                                           ; $6a15: $83
	rst  JumpTable                                         ; $6a16: $df
	add  b                                           ; $6a17: $80
	call c, $df02                                    ; $6a18: $dc $02 $df
	ei                                               ; $6a1b: $fb
	inc  bc                                          ; $6a1c: $03
	add  c                                           ; $6a1d: $81
	ei                                               ; $6a1e: $fb
	nop                                              ; $6a1f: $00
	rst  $30                                         ; $6a20: $f7
	add  d                                           ; $6a21: $82
	or   $80                                         ; $6a22: $f6 $80
	db   $f4                                         ; $6a24: $f4
	nop                                              ; $6a25: $00
	ldh  a, [$80]                                    ; $6a26: $f0 $80
	jr   nc, jr_019_69aa                             ; $6a28: $30 $80

	ret  nz                                          ; $6a2a: $c0

	nop                                              ; $6a2b: $00
	ld   hl, sp-$80                                  ; $6a2c: $f8 $80
	db   $fc                                         ; $6a2e: $fc
	adc  h                                           ; $6a2f: $8c
	nop                                              ; $6a30: $00
	add  b                                           ; $6a31: $80
	rlca                                             ; $6a32: $07
	add  b                                           ; $6a33: $80
	inc  bc                                          ; $6a34: $03
	add  d                                           ; $6a35: $82
	ld   bc, $0081                                   ; $6a36: $01 $81 $00
	rrca                                             ; $6a39: $0f
	ld   bc, $0100                                   ; $6a3a: $01 $00 $01
	nop                                              ; $6a3d: $00
	ld   a, a                                        ; $6a3e: $7f
	nop                                              ; $6a3f: $00
	ldh  [rP1], a                                    ; $6a40: $e0 $00
	ld   a, b                                        ; $6a42: $78
	nop                                              ; $6a43: $00
	ld   e, $00                                      ; $6a44: $1e $00
	add  a                                           ; $6a46: $87
	add  b                                           ; $6a47: $80
	ld   d, c                                        ; $6a48: $51
	ld   d, b                                        ; $6a49: $50
	add  b                                           ; $6a4a: $80
	xor  d                                           ; $6a4b: $aa
	add  b                                           ; $6a4c: $80
	push af                                          ; $6a4d: $f5
	ld   [bc], a                                     ; $6a4e: $02
	inc  bc                                          ; $6a4f: $03
	nop                                              ; $6a50: $00
	inc  bc                                          ; $6a51: $03
	add  e                                           ; $6a52: $83
	nop                                              ; $6a53: $00
	dec  c                                           ; $6a54: $0d
	add  b                                           ; $6a55: $80
	nop                                              ; $6a56: $00
	ldh  a, [rP1]                                    ; $6a57: $f0 $00
	ld   a, a                                        ; $6a59: $7f
	nop                                              ; $6a5a: $00
	ld   d, b                                        ; $6a5b: $50
	ld   e, a                                        ; $6a5c: $5f
	dec  d                                           ; $6a5d: $15
	dec  c                                           ; $6a5e: $0d
	and  $06                                         ; $6a5f: $e6 $06
	push hl                                          ; $6a61: $e5
	dec  b                                           ; $6a62: $05
	add  b                                           ; $6a63: $80
	ld   b, $80                                      ; $6a64: $06 $80
	rlca                                             ; $6a66: $07
	ld   [bc], a                                     ; $6a67: $02
	daa                                              ; $6a68: $27
	rlca                                             ; $6a69: $07
	rst  ToBoot                                         ; $6a6a: $c7
	add  b                                           ; $6a6b: $80
	rlca                                             ; $6a6c: $07
	add  b                                           ; $6a6d: $80
	add  a                                           ; $6a6e: $87
	inc  de                                          ; $6a6f: $13
	ld   hl, sp+$78                                  ; $6a70: $f8 $78
	ld   a, [hl]                                     ; $6a72: $7e
	ld   a, $3f                                      ; $6a73: $3e $3f
	adc  a                                           ; $6a75: $8f
	adc  e                                           ; $6a76: $8b
	inc  bc                                          ; $6a77: $03
	dec  b                                           ; $6a78: $05
	add  c                                           ; $6a79: $81
	add  d                                           ; $6a7a: $82
	jp   z, $97cb                                    ; $6a7b: $ca $cb $97

	sub  e                                           ; $6a7e: $93
	xor  $1f                                         ; $6a7f: $ee $1f
	inc  c                                           ; $6a81: $0c

jr_019_6a82:
	rlca                                             ; $6a82: $07
	ld   bc, $0080                                   ; $6a83: $01 $80 $00
	add  b                                           ; $6a86: $80
	ret  nz                                          ; $6a87: $c0

	add  b                                           ; $6a88: $80
	ldh  a, [$80]                                    ; $6a89: $f0 $80
	ld   a, b                                        ; $6a8b: $78
	add  b                                           ; $6a8c: $80
	sbc  l                                           ; $6a8d: $9d
	ld   b, $ee                                      ; $6a8e: $06 $ee
	cp   e                                           ; $6a90: $bb
	rst  $38                                         ; $6a91: $ff
	dec  d                                           ; $6a92: $15
	rst  $38                                         ; $6a93: $ff
	cp   b                                           ; $6a94: $b8
	ld   hl, sp-$7d                                  ; $6a95: $f8 $83
	nop                                              ; $6a97: $00
	ld   a, [bc]                                     ; $6a98: $0a
	inc  bc                                          ; $6a99: $03
	add  e                                           ; $6a9a: $83
	add  b                                           ; $6a9b: $80
	nop                                              ; $6a9c: $00
	db   $e4                                         ; $6a9d: $e4
	or   h                                           ; $6a9e: $b4
	ld   hl, sp+$50                                  ; $6a9f: $f8 $50
	db   $fc                                         ; $6aa1: $fc
	ld   a, d                                        ; $6aa2: $7a
	ld   a, [hl]                                     ; $6aa3: $7e
	add  b                                           ; $6aa4: $80
	ld   e, $0e                                      ; $6aa5: $1e $0e
	rrca                                             ; $6aa7: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa8: $cf
	rst  ToBoot                                         ; $6aa9: $c7
	rst  $20                                         ; $6aaa: $e7
	db   $e3                                         ; $6aab: $e3
	di                                               ; $6aac: $f3
	pop  af                                          ; $6aad: $f1
	add  hl, sp                                      ; $6aae: $39
	or   d                                           ; $6aaf: $b2
	ld   d, [hl]                                     ; $6ab0: $56
	sbc  c                                           ; $6ab1: $99
	dec  hl                                          ; $6ab2: $2b
	ld   l, l                                        ; $6ab3: $6d
	dec  [hl]                                        ; $6ab4: $35
	ld   [hl], $80                                   ; $6ab5: $36 $80
	rra                                              ; $6ab7: $1f
	add  b                                           ; $6ab8: $80
	rrca                                             ; $6ab9: $0f
	nop                                              ; $6aba: $00
	rlca                                             ; $6abb: $07
	add  b                                           ; $6abc: $80
	add  a                                           ; $6abd: $87
	inc  bc                                          ; $6abe: $03
	ld   h, a                                        ; $6abf: $67
	db   $e3                                         ; $6ac0: $e3
	sub  a                                           ; $6ac1: $97
	dec  l                                           ; $6ac2: $2d
	add  b                                           ; $6ac3: $80
	dec  h                                           ; $6ac4: $25
	ld   bc, $1633                                   ; $6ac5: $01 $33 $16
	add  d                                           ; $6ac8: $82
	sbc  [hl]                                        ; $6ac9: $9e
	ld   [$dd58], sp                                 ; $6aca: $08 $58 $dd
	sbc  l                                           ; $6acd: $9d
	db   $dd                                         ; $6ace: $dd
	reti                                             ; $6acf: $d9


	ei                                               ; $6ad0: $fb
	or   h                                           ; $6ad1: $b4
	add  b                                           ; $6ad2: $80
	ret  z                                           ; $6ad3: $c8

	add  b                                           ; $6ad4: $80
	ret  nz                                          ; $6ad5: $c0

	add  a                                           ; $6ad6: $87
	ldh  [$03], a                                    ; $6ad7: $e0 $03
	add  sp, -$20                                    ; $6ad9: $e8 $e0
	ld   bc, $800e                                   ; $6adb: $01 $0e $80
	ld   [bc], a                                     ; $6ade: $02
	ld   c, $1c                                      ; $6adf: $0e $1c
	nop                                              ; $6ae1: $00
	ld   [hl], d                                     ; $6ae2: $72
	nop                                              ; $6ae3: $00
	db   $fd                                         ; $6ae4: $fd
	ld   [hl], b                                     ; $6ae5: $70
	rst  $38                                         ; $6ae6: $ff
	db   $fc                                         ; $6ae7: $fc
	ldh  a, [c]                                      ; $6ae8: $f2
	or   $e4                                         ; $6ae9: $f6 $e4
	xor  $e5                                         ; $6aeb: $ee $e5
	db   $e3                                         ; $6aed: $e3
	adc  e                                           ; $6aee: $8b
	add  b                                           ; $6aef: $80
	di                                               ; $6af0: $f3
	dec  bc                                          ; $6af1: $0b
	ei                                               ; $6af2: $fb
	cp   c                                           ; $6af3: $b9
	db   $fd                                         ; $6af4: $fd
	ld   e, h                                        ; $6af5: $5c
	ld   a, [hl]                                     ; $6af6: $7e
	xor  [hl]                                        ; $6af7: $ae
	ccf                                              ; $6af8: $3f
	ld   d, a                                        ; $6af9: $57
	rra                                              ; $6afa: $1f
	dec  hl                                          ; $6afb: $2b
	rrca                                             ; $6afc: $0f
	jr   jr_019_6a82                                 ; $6afd: $18 $83

	push af                                          ; $6aff: $f5
	add  b                                           ; $6b00: $80
	pop  af                                          ; $6b01: $f1
	add  c                                           ; $6b02: $81
	push af                                          ; $6b03: $f5
	add  hl, bc                                      ; $6b04: $09
	ld   [hl], l                                     ; $6b05: $75
	push af                                          ; $6b06: $f5
	or   h                                           ; $6b07: $b4
	di                                               ; $6b08: $f3
	db   $d3                                         ; $6b09: $d3
	ld   a, h                                        ; $6b0a: $7c
	ld   l, c                                        ; $6b0b: $69
	add  hl, bc                                      ; $6b0c: $09
	dec  c                                           ; $6b0d: $0d
	ld   bc, $a180                                   ; $6b0e: $01 $80 $a1
	add  d                                           ; $6b11: $82
	xor  e                                           ; $6b12: $ab
	add  b                                           ; $6b13: $80
	call Call_019_7180                               ; $6b14: $cd $80 $71
	dec  b                                           ; $6b17: $05
	rrca                                             ; $6b18: $0f
	ld   c, $f7                                      ; $6b19: $0e $f7
	or   $f4                                         ; $6b1b: $f6 $f4
	push af                                          ; $6b1d: $f5
	add  b                                           ; $6b1e: $80
	db   $eb                                         ; $6b1f: $eb
	add  b                                           ; $6b20: $80
	rst  $20                                         ; $6b21: $e7
	add  b                                           ; $6b22: $80
	rst  $28                                         ; $6b23: $ef
	ld   bc, $d5d7                                   ; $6b24: $01 $d7 $d5

jr_019_6b27:
	add  c                                           ; $6b27: $81
	rst  JumpTable                                         ; $6b28: $df
	ld   a, [bc]                                     ; $6b29: $0a
	cpl                                              ; $6b2a: $2f
	nop                                              ; $6b2b: $00
	cp   $00                                         ; $6b2c: $fe $00
	rst  $38                                         ; $6b2e: $ff
	ldh  [$ee], a                                    ; $6b2f: $e0 $ee
	ldh  [hScriptOpcodeParams+2], a                                    ; $6b31: $e0 $a2
	and  b                                           ; $6b33: $a0
	pop  hl                                          ; $6b34: $e1
	add  c                                           ; $6b35: $81
	ret  nz                                          ; $6b36: $c0

	ld   [bc], a                                     ; $6b37: $02
	jp   nz, $8280                                   ; $6b38: $c2 $80 $82

	add  l                                           ; $6b3b: $85
	nop                                              ; $6b3c: $00
	ld   a, [de]                                     ; $6b3d: $1a
	add  b                                           ; $6b3e: $80
	nop                                              ; $6b3f: $00
	ld   h, e                                        ; $6b40: $63
	nop                                              ; $6b41: $00
	ld   a, h                                        ; $6b42: $7c
	nop                                              ; $6b43: $00
	rst  JumpTable                                         ; $6b44: $df
	nop                                              ; $6b45: $00
	ld   c, b                                        ; $6b46: $48
	nop                                              ; $6b47: $00
	add  hl, bc                                      ; $6b48: $09
	nop                                              ; $6b49: $00
	add  [hl]                                        ; $6b4a: $86
	nop                                              ; $6b4b: $00
	cp   b                                           ; $6b4c: $b8
	nop                                              ; $6b4d: $00
	jp   $0c00                                       ; $6b4e: $c3 $00 $0c


	nop                                              ; $6b51: $00
	jr   nc, jr_019_6b54                             ; $6b52: $30 $00

jr_019_6b54:
	ret  nz                                          ; $6b54: $c0

	nop                                              ; $6b55: $00
	ld   bc, $fffe                                   ; $6b56: $01 $fe $ff
	add  b                                           ; $6b59: $80
	ccf                                              ; $6b5a: $3f
	add  b                                           ; $6b5b: $80
	jp   $fc80                                       ; $6b5c: $c3 $80 $fc


	add  l                                           ; $6b5f: $85
	rst  $38                                         ; $6b60: $ff
	add  b                                           ; $6b61: $80
	xor  e                                           ; $6b62: $ab
	nop                                              ; $6b63: $00
	rst  $38                                         ; $6b64: $ff
	add  d                                           ; $6b65: $82
	cp   $80                                         ; $6b66: $fe $80
	ld   a, [hl]                                     ; $6b68: $7e
	add  b                                           ; $6b69: $80
	ld   a, $80                                      ; $6b6a: $3e $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b6c: $cf
	add  b                                           ; $6b6d: $80
	db   $e3                                         ; $6b6e: $e3
	add  b                                           ; $6b6f: $80
	ld   hl, sp-$80                                  ; $6b70: $f8 $80
	daa                                              ; $6b72: $27
	add  b                                           ; $6b73: $80
	ld   [hl], e                                     ; $6b74: $73
	add  b                                           ; $6b75: $80
	ld   a, e                                        ; $6b76: $7b
	add  b                                           ; $6b77: $80
	ld   a, l                                        ; $6b78: $7d
	add  b                                           ; $6b79: $80
	ld   a, [hl]                                     ; $6b7a: $7e
	add  b                                           ; $6b7b: $80
	ccf                                              ; $6b7c: $3f
	add  b                                           ; $6b7d: $80
	sbc  a                                           ; $6b7e: $9f
	dec  b                                           ; $6b7f: $05
	ldh  [rHDMA4], a                                 ; $6b80: $e0 $54
	ld   c, b                                        ; $6b82: $48
	xor  h                                           ; $6b83: $ac
	xor  a                                           ; $6b84: $af
	rst  $38                                         ; $6b85: $ff
	add  b                                           ; $6b86: $80
	ld   hl, sp-$80                                  ; $6b87: $f8 $80
	rst  $38                                         ; $6b89: $ff
	add  b                                           ; $6b8a: $80
	rrca                                             ; $6b8b: $0f
	add  b                                           ; $6b8c: $80
	cp   $02                                         ; $6b8d: $fe $02
	ld   hl, sp-$06                                  ; $6b8f: $f8 $fa
	push af                                          ; $6b91: $f5
	add  c                                           ; $6b92: $81
	rst  $30                                         ; $6b93: $f7
	add  b                                           ; $6b94: $80
	inc  bc                                          ; $6b95: $03

jr_019_6b96:
	add  b                                           ; $6b96: $80
	rra                                              ; $6b97: $1f
	ld   b, $f0                                      ; $6b98: $06 $f0
	pop  af                                          ; $6b9a: $f1
	add  b                                           ; $6b9b: $80
	adc  [hl]                                        ; $6b9c: $8e
	db   $10                                         ; $6b9d: $10
	ld   h, b                                        ; $6b9e: $60
	add  b                                           ; $6b9f: $80
	add  b                                           ; $6ba0: $80
	ld   d, l                                        ; $6ba1: $55
	nop                                              ; $6ba2: $00
	rst  $38                                         ; $6ba3: $ff
	add  b                                           ; $6ba4: $80
	jr   c, jr_019_6b27                              ; $6ba5: $38 $80

	jp   $ff80                                       ; $6ba7: $c3 $80 $ff


	inc  b                                           ; $6baa: $04
	rrca                                             ; $6bab: $0f
	ei                                               ; $6bac: $fb
	dec  bc                                          ; $6bad: $0b
	rla                                              ; $6bae: $17
	ld   d, $80                                      ; $6baf: $16 $80
	ld   l, $02                                      ; $6bb1: $2e $02
	ld   d, [hl]                                     ; $6bb3: $56
	ld   d, a                                        ; $6bb4: $57
	rst  $38                                         ; $6bb5: $ff
	add  b                                           ; $6bb6: $80
	inc  e                                           ; $6bb7: $1c
	ld   [bc], a                                     ; $6bb8: $02
	sbc  a                                           ; $6bb9: $9f
	sub  a                                           ; $6bba: $97
	rst  ToBoot                                         ; $6bbb: $c7
	add  b                                           ; $6bbc: $80
	add  e                                           ; $6bbd: $83
	ld   c, $29                                      ; $6bbe: $0e $29
	ld   bc, $0014                                   ; $6bc0: $01 $14 $00
	inc  c                                           ; $6bc3: $0c
	nop                                              ; $6bc4: $00
	add  d                                           ; $6bc5: $82
	ld   [bc], a                                     ; $6bc6: $02
	ld   h, a                                        ; $6bc7: $67
	ei                                               ; $6bc8: $fb
	db   $e3                                         ; $6bc9: $e3
	ccf                                              ; $6bca: $3f
	inc  a                                           ; $6bcb: $3c
	rst  $38                                         ; $6bcc: $ff
	db   $fd                                         ; $6bcd: $fd
	add  c                                           ; $6bce: $81
	rst  $38                                         ; $6bcf: $ff
	ld   bc, $7f7e                                   ; $6bd0: $01 $7e $7f
	add  b                                           ; $6bd3: $80
	ld   hl, sp-$80                                  ; $6bd4: $f8 $80
	cp   h                                           ; $6bd6: $bc
	and  l                                           ; $6bd7: $a5
	ld   [bc], a                                     ; $6bd8: $02
	nop                                              ; $6bd9: $00
	rst  $38                                         ; $6bda: $ff
	adc  b                                           ; $6bdb: $88
	nop                                              ; $6bdc: $00
	dec  b                                           ; $6bdd: $05
	rlca                                             ; $6bde: $07
	inc  b                                           ; $6bdf: $04
	rlca                                             ; $6be0: $07
	ld   b, $07                                      ; $6be1: $06 $07
	dec  b                                           ; $6be3: $05
	adc  b                                           ; $6be4: $88
	nop                                              ; $6be5: $00
	dec  b                                           ; $6be6: $05
	rst  $38                                         ; $6be7: $ff
	ld   [bc], a                                     ; $6be8: $02
	rst  $38                                         ; $6be9: $ff
	ld   b, $ff                                      ; $6bea: $06 $ff
	ei                                               ; $6bec: $fb
	adc  b                                           ; $6bed: $88
	nop                                              ; $6bee: $00
	dec  b                                           ; $6bef: $05
	rst  $38                                         ; $6bf0: $ff
	nop                                              ; $6bf1: $00
	rst  $38                                         ; $6bf2: $ff
	nop                                              ; $6bf3: $00
	rst  $38                                         ; $6bf4: $ff
	db   $fd                                         ; $6bf5: $fd
	adc  l                                           ; $6bf6: $8d
	rlca                                             ; $6bf7: $07
	nop                                              ; $6bf8: $00
	and  b                                           ; $6bf9: $a0
	add  e                                           ; $6bfa: $83
	ld   a, [hl]                                     ; $6bfb: $7e
	ld   b, $de                                      ; $6bfc: $06 $de
	cp   $16                                         ; $6bfe: $fe $16
	cp   $10                                         ; $6c00: $fe $10
	db   $fc                                         ; $6c02: $fc
	ld   d, b                                        ; $6c03: $50
	add  c                                           ; $6c04: $81
	ld   [hl], b                                     ; $6c05: $70
	nop                                              ; $6c06: $00
	jr   nz, jr_019_6b96                             ; $6c07: $20 $8d

	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	db   $fd                                         ; $6c0b: $fd
	add  a                                           ; $6c0c: $87
	rlca                                             ; $6c0d: $07
	ld   [$0705], sp                                 ; $6c0e: $08 $05 $07
	inc  b                                           ; $6c11: $04

jr_019_6c12:
	rlca                                             ; $6c12: $07
	ld   b, $07                                      ; $6c13: $06 $07
	adc  d                                           ; $6c15: $8a
	ld   [hl], b                                     ; $6c16: $70
	adc  b                                           ; $6c17: $88
	add  e                                           ; $6c18: $83
	ld   hl, sp+$01                                  ; $6c19: $f8 $01
	jr   nz, jr_019_6c8d                             ; $6c1b: $20 $70

	add  b                                           ; $6c1d: $80
	ldh  a, [rDIV]                                   ; $6c1e: $f0 $04
	jr   nc, jr_019_6c12                             ; $6c20: $30 $f0

	db   $10                                         ; $6c22: $10
	ldh  a, [rIE]                                    ; $6c23: $f0 $ff
	adc  b                                           ; $6c25: $88
	nop                                              ; $6c26: $00
	inc  bc                                          ; $6c27: $03
	ldh  [rAUD4LEN], a                               ; $6c28: $e0 $20
	ldh  [$60], a                                    ; $6c2a: $e0 $60
	adc  a                                           ; $6c2c: $8f
	ldh  [rDIV], a                                   ; $6c2d: $e0 $04
	and  b                                           ; $6c2f: $a0
	rst  $38                                         ; $6c30: $ff
	nop                                              ; $6c31: $00
	rst  $38                                         ; $6c32: $ff
	nop                                              ; $6c33: $00
	add  b                                           ; $6c34: $80
	rst  $38                                         ; $6c35: $ff
	add  h                                           ; $6c36: $84
	nop                                              ; $6c37: $00
	rlca                                             ; $6c38: $07
	rst  $38                                         ; $6c39: $ff
	add  b                                           ; $6c3a: $80
	rst  $38                                         ; $6c3b: $ff
	add  b                                           ; $6c3c: $80
	rst  $38                                         ; $6c3d: $ff
	nop                                              ; $6c3e: $00
	rst  $38                                         ; $6c3f: $ff
	nop                                              ; $6c40: $00
	add  b                                           ; $6c41: $80
	rst  $38                                         ; $6c42: $ff
	add  h                                           ; $6c43: $84
	nop                                              ; $6c44: $00
	ld   [bc], a                                     ; $6c45: $02
	rst  $38                                         ; $6c46: $ff
	nop                                              ; $6c47: $00
	rst  $38                                         ; $6c48: $ff
	sub  d                                           ; $6c49: $92
	nop                                              ; $6c4a: $00
	ld   b, $55                                      ; $6c4b: $06 $55
	nop                                              ; $6c4d: $00
	rst  $38                                         ; $6c4e: $ff
	nop                                              ; $6c4f: $00
	rst  $38                                         ; $6c50: $ff
	nop                                              ; $6c51: $00
	xor  d                                           ; $6c52: $aa
	add  a                                           ; $6c53: $87
	nop                                              ; $6c54: $00
	ld   b, $aa                                      ; $6c55: $06 $aa
	nop                                              ; $6c57: $00
	rst  $38                                         ; $6c58: $ff
	nop                                              ; $6c59: $00
	rst  $38                                         ; $6c5a: $ff
	nop                                              ; $6c5b: $00
	ld   d, l                                        ; $6c5c: $55
	add  h                                           ; $6c5d: $84
	nop                                              ; $6c5e: $00
	inc  bc                                          ; $6c5f: $03
	rst  $38                                         ; $6c60: $ff
	nop                                              ; $6c61: $00
	rst  $38                                         ; $6c62: $ff
	nop                                              ; $6c63: $00
	add  b                                           ; $6c64: $80
	rst  $38                                         ; $6c65: $ff
	add  h                                           ; $6c66: $84
	nop                                              ; $6c67: $00
	rlca                                             ; $6c68: $07
	rst  $38                                         ; $6c69: $ff
	add  b                                           ; $6c6a: $80
	rst  $38                                         ; $6c6b: $ff
	add  b                                           ; $6c6c: $80
	rst  $38                                         ; $6c6d: $ff
	nop                                              ; $6c6e: $00
	rst  $38                                         ; $6c6f: $ff
	nop                                              ; $6c70: $00
	add  b                                           ; $6c71: $80
	rst  $38                                         ; $6c72: $ff
	add  h                                           ; $6c73: $84
	nop                                              ; $6c74: $00
	ld   b, $ff                                      ; $6c75: $06 $ff
	nop                                              ; $6c77: $00
	rst  $38                                         ; $6c78: $ff
	ld   a, a                                        ; $6c79: $7f
	rst  $38                                         ; $6c7a: $ff
	ldh  [rIE], a                                    ; $6c7b: $e0 $ff
	add  [hl]                                        ; $6c7d: $86
	ldh  a, [$80]                                    ; $6c7e: $f0 $80
	di                                               ; $6c80: $f3
	add  b                                           ; $6c81: $80
	ldh  a, [$03]                                    ; $6c82: $f0 $03
	ld   h, b                                        ; $6c84: $60
	rst  $38                                         ; $6c85: $ff
	nop                                              ; $6c86: $00
	rst  $38                                         ; $6c87: $ff
	add  d                                           ; $6c88: $82
	nop                                              ; $6c89: $00
	add  b                                           ; $6c8a: $80
	sbc  h                                           ; $6c8b: $9c
	add  b                                           ; $6c8c: $80

jr_019_6c8d:
	sub  h                                           ; $6c8d: $94
	add  b                                           ; $6c8e: $80
	rst  $38                                         ; $6c8f: $ff
	add  b                                           ; $6c90: $80
	push de                                          ; $6c91: $d5
	inc  bc                                          ; $6c92: $03
	nop                                              ; $6c93: $00
	rst  $38                                         ; $6c94: $ff
	nop                                              ; $6c95: $00
	rst  $38                                         ; $6c96: $ff
	add  d                                           ; $6c97: $82
	nop                                              ; $6c98: $00
	add  h                                           ; $6c99: $84
	ld   [de], a                                     ; $6c9a: $12
	add  b                                           ; $6c9b: $80
	rla                                              ; $6c9c: $17
	inc  bc                                          ; $6c9d: $03
	nop                                              ; $6c9e: $00
	rst  $38                                         ; $6c9f: $ff
	nop                                              ; $6ca0: $00
	rst  $38                                         ; $6ca1: $ff
	add  d                                           ; $6ca2: $82
	nop                                              ; $6ca3: $00
	add  b                                           ; $6ca4: $80
	ld   b, $80                                      ; $6ca5: $06 $80
	ld   bc, $1f80                                   ; $6ca7: $01 $80 $1f
	add  b                                           ; $6caa: $80
	call nz, $0003                                   ; $6cab: $c4 $03 $00
	rst  $38                                         ; $6cae: $ff
	nop                                              ; $6caf: $00
	rst  $38                                         ; $6cb0: $ff
	add  d                                           ; $6cb1: $82
	nop                                              ; $6cb2: $00
	add  b                                           ; $6cb3: $80
	ld   bc, $1980                                   ; $6cb4: $01 $80 $19
	add  b                                           ; $6cb7: $80
	rst  ToBoot                                         ; $6cb8: $c7
	add  c                                           ; $6cb9: $81
	ld   bc, $ff02                                   ; $6cba: $01 $02 $ff
	rlca                                             ; $6cbd: $07
	rst  $38                                         ; $6cbe: $ff
	add  [hl]                                        ; $6cbf: $86
	rrca                                             ; $6cc0: $0f
	add  b                                           ; $6cc1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cc2: $cf
	add  b                                           ; $6cc3: $80
	rrca                                             ; $6cc4: $0f
	nop                                              ; $6cc5: $00
	sub  [hl]                                        ; $6cc6: $96
	add  c                                           ; $6cc7: $81
	ldh  a, [$80]                                    ; $6cc8: $f0 $80
	di                                               ; $6cca: $f3
	add  d                                           ; $6ccb: $82
	ldh  a, [$80]                                    ; $6ccc: $f0 $80
	ldh  a, [c]                                      ; $6cce: $f2
	add  b                                           ; $6ccf: $80
	pop  af                                          ; $6cd0: $f1
	add  b                                           ; $6cd1: $80
	ldh  a, [rSB]                                    ; $6cd2: $f0 $01
	sub  a                                           ; $6cd4: $97
	rst  $30                                         ; $6cd5: $f7
	add  b                                           ; $6cd6: $80
	adc  b                                           ; $6cd7: $88
	add  b                                           ; $6cd8: $80
	cp   $80                                         ; $6cd9: $fe $80
	adc  b                                           ; $6cdb: $88
	add  b                                           ; $6cdc: $80
	sbc  h                                           ; $6cdd: $9c
	add  b                                           ; $6cde: $80
	xor  d                                           ; $6cdf: $aa
	add  b                                           ; $6ce0: $80
	ret                                              ; $6ce1: $c9


	add  b                                           ; $6ce2: $80
	adc  b                                           ; $6ce3: $88
	add  b                                           ; $6ce4: $80

jr_019_6ce5:
	dec  h                                           ; $6ce5: $25
	add  b                                           ; $6ce6: $80
	ld   l, c                                        ; $6ce7: $69
	adc  d                                           ; $6ce8: $8a
	ld   hl, $0480                                   ; $6ce9: $21 $80 $04
	add  b                                           ; $6cec: $80
	rlca                                             ; $6ced: $07
	add  b                                           ; $6cee: $80
	call nz, $0880                                   ; $6cef: $c4 $80 $08
	add  b                                           ; $6cf2: $80
	ret  z                                           ; $6cf3: $c8

	add  d                                           ; $6cf4: $82
	db   $10                                         ; $6cf5: $10
	add  b                                           ; $6cf6: $80
	inc  bc                                          ; $6cf7: $03
	add  b                                           ; $6cf8: $80
	add  hl, de                                      ; $6cf9: $19
	add  b                                           ; $6cfa: $80
	add  a                                           ; $6cfb: $87
	add  b                                           ; $6cfc: $80
	add  c                                           ; $6cfd: $81
	add  b                                           ; $6cfe: $80
	adc  c                                           ; $6cff: $89
	add  b                                           ; $6d00: $80
	adc  d                                           ; $6d01: $8a
	add  b                                           ; $6d02: $80
	sub  d                                           ; $6d03: $92
	add  b                                           ; $6d04: $80
	sub  a                                           ; $6d05: $97
	add  b                                           ; $6d06: $80
	sub  h                                           ; $6d07: $94
	ld   bc, $0f09                                   ; $6d08: $01 $09 $0f
	add  b                                           ; $6d0b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d0c: $cf
	add  h                                           ; $6d0d: $84
	rrca                                             ; $6d0e: $0f
	add  b                                           ; $6d0f: $80
	adc  a                                           ; $6d10: $8f
	add  b                                           ; $6d11: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d12: $cf
	add  b                                           ; $6d13: $80
	ld   c, a                                        ; $6d14: $4f
	nop                                              ; $6d15: $00
	sub  [hl]                                        ; $6d16: $96
	add  c                                           ; $6d17: $81
	ldh  a, [$80]                                    ; $6d18: $f0 $80
	rst  $38                                         ; $6d1a: $ff
	nop                                              ; $6d1b: $00
	ldh  [$81], a                                    ; $6d1c: $e0 $81
	rst  $38                                         ; $6d1e: $ff

jr_019_6d1f:
	ld   bc, $ff80                                   ; $6d1f: $01 $80 $ff
	add  [hl]                                        ; $6d22: $86

jr_019_6d23:
	nop                                              ; $6d23: $00
	add  b                                           ; $6d24: $80
	rst  $38                                         ; $6d25: $ff
	nop                                              ; $6d26: $00

jr_019_6d27:
	nop                                              ; $6d27: $00
	add  c                                           ; $6d28: $81
	rst  $38                                         ; $6d29: $ff
	ld   bc, $ff00                                   ; $6d2a: $01 $00 $ff
	add  h                                           ; $6d2d: $84
	nop                                              ; $6d2e: $00
	add  b                                           ; $6d2f: $80
	ld   [$170b], sp                                 ; $6d30: $08 $0b $17
	rra                                              ; $6d33: $1f
	jr   z, jr_019_6d75                              ; $6d34: $28 $3f

	ld   e, a                                        ; $6d36: $5f
	ld   a, a                                        ; $6d37: $7f
	rra                                              ; $6d38: $1f
	ccf                                              ; $6d39: $3f
	ld   [$001f], sp                                 ; $6d3a: $08 $1f $00
	ld   [$0080], sp                                 ; $6d3d: $08 $80 $00
	add  b                                           ; $6d40: $80
	ld   a, h                                        ; $6d41: $7c
	add  b                                           ; $6d42: $80
	db   $10                                         ; $6d43: $10
	add  b                                           ; $6d44: $80
	cp   $80                                         ; $6d45: $fe $80
	jp   c, $b680                                    ; $6d47: $da $80 $b6

	add  b                                           ; $6d4a: $80
	jp   c, Jump_019_7c80                            ; $6d4b: $da $80 $7c

	add  d                                           ; $6d4e: $82
	nop                                              ; $6d4f: $00
	add  d                                           ; $6d50: $82
	jr   nz, @-$7e                                   ; $6d51: $20 $80

	cp   $84                                         ; $6d53: $fe $84
	ld   [hl+], a                                    ; $6d55: $22
	add  d                                           ; $6d56: $82
	ld   a, [bc]                                     ; $6d57: $0a
	add  b                                           ; $6d58: $80
	nop                                              ; $6d59: $00
	add  b                                           ; $6d5a: $80
	cp   $80                                         ; $6d5b: $fe $80
	ld   [$1080], sp                                 ; $6d5d: $08 $80 $10
	add  d                                           ; $6d60: $82
	jr   nz, jr_019_6ce5                             ; $6d61: $20 $82

	ld   a, [bc]                                     ; $6d63: $0a
	add  b                                           ; $6d64: $80
	ld   h, b                                        ; $6d65: $60
	add  b                                           ; $6d66: $80
	ld   [de], a                                     ; $6d67: $12
	add  b                                           ; $6d68: $80
	ld   [bc], a                                     ; $6d69: $02
	add  b                                           ; $6d6a: $80
	ld   h, d                                        ; $6d6b: $62
	add  b                                           ; $6d6c: $80
	ld   [de], a                                     ; $6d6d: $12
	add  b                                           ; $6d6e: $80
	ld   [bc], a                                     ; $6d6f: $02
	add  [hl]                                        ; $6d70: $86
	nop                                              ; $6d71: $00
	add  d                                           ; $6d72: $82
	ld   b, b                                        ; $6d73: $40
	add  b                                           ; $6d74: $80

jr_019_6d75:
	ld   e, h                                        ; $6d75: $5c
	add  b                                           ; $6d76: $80

jr_019_6d77:
	db   $e4                                         ; $6d77: $e4
	add  h                                           ; $6d78: $84
	nop                                              ; $6d79: $00
	add  b                                           ; $6d7a: $80
	jp   nz, $2280                                   ; $6d7b: $c2 $80 $22

	add  h                                           ; $6d7e: $84
	ld   [bc], a                                     ; $6d7f: $02
	add  b                                           ; $6d80: $80
	inc  b                                           ; $6d81: $04
	add  b                                           ; $6d82: $80
	ld   a, [de]                                     ; $6d83: $1a
	add  b                                           ; $6d84: $80
	inc  d                                           ; $6d85: $14
	add  b                                           ; $6d86: $80

jr_019_6d87:
	cp   $82                                         ; $6d87: $fe $82
	db   $10                                         ; $6d89: $10
	add  b                                           ; $6d8a: $80

jr_019_6d8b:
	ld   d, h                                        ; $6d8b: $54
	add  b                                           ; $6d8c: $80
	ld   d, d                                        ; $6d8d: $52
	adc  d                                           ; $6d8e: $8a
	nop                                              ; $6d8f: $00
	add  b                                           ; $6d90: $80
	add  b                                           ; $6d91: $80
	add  b                                           ; $6d92: $80
	ld   a, [hl]                                     ; $6d93: $7e
	add  d                                           ; $6d94: $82
	nop                                              ; $6d95: $00
	add  d                                           ; $6d96: $82
	ld   [$4886], sp                                 ; $6d97: $08 $86 $48
	add  d                                           ; $6d9a: $82
	nop                                              ; $6d9b: $00
	add  d                                           ; $6d9c: $82
	jr   nz, jr_019_6d1f                             ; $6d9d: $20 $80

	cp   $80                                         ; $6d9f: $fe $80
	jr   nz, jr_019_6d23                             ; $6da1: $20 $80

	db   $ec                                         ; $6da3: $ec
	add  b                                           ; $6da4: $80
	jr   nc, jr_019_6d27                             ; $6da5: $30 $80

	nop                                              ; $6da7: $00
	add  b                                           ; $6da8: $80
	jr   nz, @-$7e                                   ; $6da9: $20 $80

	ret  z                                           ; $6dab: $c8

	add  b                                           ; $6dac: $80
	add  sp, -$80                                    ; $6dad: $e8 $80
	ld   e, [hl]                                     ; $6daf: $5e
	add  h                                           ; $6db0: $84
	ld   [$0082], a                                  ; $6db1: $ea $82 $00
	add  b                                           ; $6db4: $80
	ld   b, b                                        ; $6db5: $40
	add  b                                           ; $6db6: $80
	ld   b, h                                        ; $6db7: $44
	add  b                                           ; $6db8: $80
	ldh  a, [c]                                      ; $6db9: $f2
	add  h                                           ; $6dba: $84
	ld   c, d                                        ; $6dbb: $4a
	add  d                                           ; $6dbc: $82
	nop                                              ; $6dbd: $00
	adc  d                                           ; $6dbe: $8a
	ld   b, b                                        ; $6dbf: $40
	add  h                                           ; $6dc0: $84
	nop                                              ; $6dc1: $00
	add  b                                           ; $6dc2: $80
	cp   $80                                         ; $6dc3: $fe $80
	ld   [$1080], sp                                 ; $6dc5: $08 $80 $10
	add  d                                           ; $6dc8: $82
	jr   nz, @-$7c                                   ; $6dc9: $20 $82

	nop                                              ; $6dcb: $00
	add  b                                           ; $6dcc: $80

jr_019_6dcd:
	ld   h, b                                        ; $6dcd: $60
	add  b                                           ; $6dce: $80

jr_019_6dcf:
	ld   [de], a                                     ; $6dcf: $12
	add  b                                           ; $6dd0: $80
	ld   [bc], a                                     ; $6dd1: $02
	add  b                                           ; $6dd2: $80
	ld   h, d                                        ; $6dd3: $62
	add  b                                           ; $6dd4: $80
	ld   [de], a                                     ; $6dd5: $12
	add  b                                           ; $6dd6: $80
	ld   [bc], a                                     ; $6dd7: $02
	add  [hl]                                        ; $6dd8: $86
	nop                                              ; $6dd9: $00
	add  d                                           ; $6dda: $82
	ld   b, b                                        ; $6ddb: $40
	add  b                                           ; $6ddc: $80

jr_019_6ddd:
	ld   e, h                                        ; $6ddd: $5c
	add  b                                           ; $6dde: $80
	db   $e4                                         ; $6ddf: $e4
	add  b                                           ; $6de0: $80

jr_019_6de1:
	nop                                              ; $6de1: $00
	add  b                                           ; $6de2: $80
	ld   a, h                                        ; $6de3: $7c
	add  b                                           ; $6de4: $80
	xor  d                                           ; $6de5: $aa
	add  b                                           ; $6de6: $80
	ld   l, h                                        ; $6de7: $6c
	add  b                                           ; $6de8: $80
	cp   $84                                         ; $6de9: $fe $84
	nop                                              ; $6deb: $00
	add  d                                           ; $6dec: $82
	ld   [hl+], a                                    ; $6ded: $22
	add  d                                           ; $6dee: $82
	ld   b, d                                        ; $6def: $42
	add  b                                           ; $6df0: $80
	adc  h                                           ; $6df1: $8c
	add  h                                           ; $6df2: $84
	nop                                              ; $6df3: $00
	add  d                                           ; $6df4: $82
	jr   nz, jr_019_6d77                             ; $6df5: $20 $80

	db   $10                                         ; $6df7: $10
	add  b                                           ; $6df8: $80
	inc  c                                           ; $6df9: $0c
	add  [hl]                                        ; $6dfa: $86
	nop                                              ; $6dfb: $00
	add  d                                           ; $6dfc: $82
	inc  b                                           ; $6dfd: $04
	add  b                                           ; $6dfe: $80
	ld   [$3080], sp                                 ; $6dff: $08 $80 $30
	add  [hl]                                        ; $6e02: $86
	nop                                              ; $6e03: $00
	add  b                                           ; $6e04: $80

jr_019_6e05:
	jr   z, jr_019_6d87                              ; $6e05: $28 $80

	jr   nz, jr_019_6d8b                             ; $6e07: $20 $82

	db   $10                                         ; $6e09: $10
	add  [hl]                                        ; $6e0a: $86
	nop                                              ; $6e0b: $00
	add  d                                           ; $6e0c: $82
	inc  b                                           ; $6e0d: $04
	add  b                                           ; $6e0e: $80
	ld   [$3080], sp                                 ; $6e0f: $08 $80 $30
	add  [hl]                                        ; $6e12: $86
	nop                                              ; $6e13: $00
	add  d                                           ; $6e14: $82
	sub  d                                           ; $6e15: $92
	add  d                                           ; $6e16: $82
	db   $10                                         ; $6e17: $10
	sub  [hl]                                        ; $6e18: $96
	nop                                              ; $6e19: $00
	add  d                                           ; $6e1a: $82
	ld   c, b                                        ; $6e1b: $48
	add  b                                           ; $6e1c: $80
	ld   c, d                                        ; $6e1d: $4a
	add  b                                           ; $6e1e: $80
	adc  h                                           ; $6e1f: $8c
	add  [hl]                                        ; $6e20: $86
	nop                                              ; $6e21: $00
	add  b                                           ; $6e22: $80
	ld   d, b                                        ; $6e23: $50
	add  b                                           ; $6e24: $80
	sub  b                                           ; $6e25: $90
	add  b                                           ; $6e26: $80
	add  b                                           ; $6e27: $80
	add  b                                           ; $6e28: $80

jr_019_6e29:
	ld   a, [hl]                                     ; $6e29: $7e
	add  [hl]                                        ; $6e2a: $86
	nop                                              ; $6e2b: $00
	add  b                                           ; $6e2c: $80
	ld   [$4a80], a                                  ; $6e2d: $ea $80 $4a
	add  b                                           ; $6e30: $80

jr_019_6e31:
	ldh  a, [c]                                      ; $6e31: $f2
	add  b                                           ; $6e32: $80
	ld   d, d                                        ; $6e33: $52
	add  b                                           ; $6e34: $80
	and  $84                                         ; $6e35: $e6 $84
	nop                                              ; $6e37: $00
	add  d                                           ; $6e38: $82
	ld   c, b                                        ; $6e39: $48
	add  b                                           ; $6e3a: $80
	adc  b                                           ; $6e3b: $88
	add  b                                           ; $6e3c: $80
	db   $10                                         ; $6e3d: $10
	add  [hl]                                        ; $6e3e: $86
	nop                                              ; $6e3f: $00
	add  b                                           ; $6e40: $80
	ld   b, b                                        ; $6e41: $40
	add  b                                           ; $6e42: $80
	ld   b, d                                        ; $6e43: $42
	add  b                                           ; $6e44: $80
	inc  h                                           ; $6e45: $24
	add  b                                           ; $6e46: $80
	jr   jr_019_6dcf                                 ; $6e47: $18 $86

	nop                                              ; $6e49: $00
	add  d                                           ; $6e4a: $82
	jr   nz, jr_019_6dcd                             ; $6e4b: $20 $80

jr_019_6e4d:
	db   $10                                         ; $6e4d: $10
	add  b                                           ; $6e4e: $80

jr_019_6e4f:
	inc  c                                           ; $6e4f: $0c
	add  [hl]                                        ; $6e50: $86
	nop                                              ; $6e51: $00
	add  d                                           ; $6e52: $82
	inc  b                                           ; $6e53: $04
	add  b                                           ; $6e54: $80
	ld   [$3080], sp                                 ; $6e55: $08 $80 $30
	add  [hl]                                        ; $6e58: $86
	nop                                              ; $6e59: $00
	add  b                                           ; $6e5a: $80
	jr   z, jr_019_6ddd                              ; $6e5b: $28 $80

	jr   nz, jr_019_6de1                             ; $6e5d: $20 $82

	db   $10                                         ; $6e5f: $10
	add  [hl]                                        ; $6e60: $86
	nop                                              ; $6e61: $00
	add  b                                           ; $6e62: $80

jr_019_6e63:
	ld   a, [bc]                                     ; $6e63: $0a
	add  b                                           ; $6e64: $80
	ld   a, [de]                                     ; $6e65: $1a
	add  b                                           ; $6e66: $80
	db   $10                                         ; $6e67: $10
	add  b                                           ; $6e68: $80
	cp   $82                                         ; $6e69: $fe $82
	db   $10                                         ; $6e6b: $10
	add  b                                           ; $6e6c: $80
	ld   d, h                                        ; $6e6d: $54
	add  b                                           ; $6e6e: $80
	ld   d, d                                        ; $6e6f: $52
	add  h                                           ; $6e70: $84
	nop                                              ; $6e71: $00
	add  b                                           ; $6e72: $80
	jp   nz, $2280                                   ; $6e73: $c2 $80 $22

	add  h                                           ; $6e76: $84
	ld   [bc], a                                     ; $6e77: $02
	add  d                                           ; $6e78: $82
	nop                                              ; $6e79: $00
	add  b                                           ; $6e7a: $80
	ld   a, h                                        ; $6e7b: $7c
	add  [hl]                                        ; $6e7c: $86

jr_019_6e7d:
	db   $10                                         ; $6e7d: $10
	add  b                                           ; $6e7e: $80
	ld   a, h                                        ; $6e7f: $7c
	add  b                                           ; $6e80: $80
	nop                                              ; $6e81: $00
	add  b                                           ; $6e82: $80
	jr   nz, jr_019_6e05                             ; $6e83: $20 $80

	ld   a, [$aa80]                                  ; $6e85: $fa $80 $aa
	add  b                                           ; $6e88: $80
	ld   a, [$2a80]                                  ; $6e89: $fa $80 $2a
	add  b                                           ; $6e8c: $80
	ld   a, d                                        ; $6e8d: $7a
	add  b                                           ; $6e8e: $80
	ld   a, [hl+]                                    ; $6e8f: $2a
	add  d                                           ; $6e90: $82
	nop                                              ; $6e91: $00
	add  [hl]                                        ; $6e92: $86
	ld   b, h                                        ; $6e93: $44
	add  b                                           ; $6e94: $80
	ld   h, h                                        ; $6e95: $64
	add  b                                           ; $6e96: $80
	inc  b                                           ; $6e97: $04
	add  d                                           ; $6e98: $82
	nop                                              ; $6e99: $00
	add  d                                           ; $6e9a: $82
	db   $10                                         ; $6e9b: $10
	add  b                                           ; $6e9c: $80
	cp   $80                                         ; $6e9d: $fe $80
	db   $10                                         ; $6e9f: $10
	add  b                                           ; $6ea0: $80
	cp   $80                                         ; $6ea1: $fe $80
	db   $10                                         ; $6ea3: $10
	add  [hl]                                        ; $6ea4: $86
	nop                                              ; $6ea5: $00
	add  d                                           ; $6ea6: $82
	jr   nz, jr_019_6e29                             ; $6ea7: $20 $80

	inc  a                                           ; $6ea9: $3c
	add  b                                           ; $6eaa: $80
	jr   nz, @-$7c                                   ; $6eab: $20 $82

	nop                                              ; $6ead: $00
	add  b                                           ; $6eae: $80
	jr   c, jr_019_6e31                              ; $6eaf: $38 $80

	nop                                              ; $6eb1: $00
	add  b                                           ; $6eb2: $80
	ld   a, h                                        ; $6eb3: $7c
	add  b                                           ; $6eb4: $80
	add  d                                           ; $6eb5: $82
	add  d                                           ; $6eb6: $82
	ld   [bc], a                                     ; $6eb7: $02
	add  d                                           ; $6eb8: $82
	nop                                              ; $6eb9: $00
	add  d                                           ; $6eba: $82
	add  h                                           ; $6ebb: $84
	add  b                                           ; $6ebc: $80
	cp   [hl]                                        ; $6ebd: $be
	add  h                                           ; $6ebe: $84
	add  h                                           ; $6ebf: $84
	add  b                                           ; $6ec0: $80
	nop                                              ; $6ec1: $00
	add  h                                           ; $6ec2: $84
	db   $10                                         ; $6ec3: $10
	add  b                                           ; $6ec4: $80
	cp   $82                                         ; $6ec5: $fe $82
	db   $10                                         ; $6ec7: $10
	add  b                                           ; $6ec8: $80
	jr   z, jr_019_6e4d                              ; $6ec9: $28 $82

	nop                                              ; $6ecb: $00
	add  d                                           ; $6ecc: $82
	jr   nz, jr_019_6e4f                             ; $6ecd: $20 $80

	cp   $80                                         ; $6ecf: $fe $80
	db   $10                                         ; $6ed1: $10
	add  b                                           ; $6ed2: $80
	cp   $80                                         ; $6ed3: $fe $80
	inc  b                                           ; $6ed5: $04
	add  d                                           ; $6ed6: $82
	nop                                              ; $6ed7: $00
	add  b                                           ; $6ed8: $80
	inc  b                                           ; $6ed9: $04
	add  b                                           ; $6eda: $80
	ld   [$1080], sp                                 ; $6edb: $08 $80 $10
	add  b                                           ; $6ede: $80
	jr   nz, jr_019_6e63                             ; $6edf: $20 $82

	ld   b, b                                        ; $6ee1: $40
	add  d                                           ; $6ee2: $82

jr_019_6ee3:
	nop                                              ; $6ee3: $00
	add  b                                           ; $6ee4: $80
	ld   b, b                                        ; $6ee5: $40
	add  b                                           ; $6ee6: $80
	ld   b, h                                        ; $6ee7: $44
	add  b                                           ; $6ee8: $80
	ldh  a, [c]                                      ; $6ee9: $f2
	add  b                                           ; $6eea: $80
	ld   b, b                                        ; $6eeb: $40
	add  d                                           ; $6eec: $82
	add  h                                           ; $6eed: $84
	adc  d                                           ; $6eee: $8a
	nop                                              ; $6eef: $00
	add  b                                           ; $6ef0: $80

jr_019_6ef1:
	ld   [hl], b                                     ; $6ef1: $70
	add  b                                           ; $6ef2: $80

jr_019_6ef3:
	adc  b                                           ; $6ef3: $88
	add  d                                           ; $6ef4: $82
	nop                                              ; $6ef5: $00
	add  b                                           ; $6ef6: $80
	inc  h                                           ; $6ef7: $24
	add  b                                           ; $6ef8: $80
	ld   [hl+], a                                    ; $6ef9: $22
	add  d                                           ; $6efa: $82
	jr   nz, jr_019_6e7d                             ; $6efb: $20 $80

	inc  a                                           ; $6efd: $3c
	add  b                                           ; $6efe: $80
	ld   b, d                                        ; $6eff: $42
	add  b                                           ; $6f00: $80
	nop                                              ; $6f01: $00
	add  b                                           ; $6f02: $80
	ld   a, [bc]                                     ; $6f03: $0a
	add  b                                           ; $6f04: $80
	ld   c, d                                        ; $6f05: $4a
	adc  b                                           ; $6f06: $88
	ld   b, b                                        ; $6f07: $40
	add  d                                           ; $6f08: $82
	sub  d                                           ; $6f09: $92
	add  d                                           ; $6f0a: $82
	db   $10                                         ; $6f0b: $10
	add  [hl]                                        ; $6f0c: $86
	nop                                              ; $6f0d: $00
	add  d                                           ; $6f0e: $82
	inc  b                                           ; $6f0f: $04
	add  b                                           ; $6f10: $80
	ld   [$3080], sp                                 ; $6f11: $08 $80 $30
	add  [hl]                                        ; $6f14: $86
	nop                                              ; $6f15: $00
	add  b                                           ; $6f16: $80
	db   $10                                         ; $6f17: $10
	add  b                                           ; $6f18: $80
	inc  d                                           ; $6f19: $14
	add  b                                           ; $6f1a: $80
	ld   [de], a                                     ; $6f1b: $12
	add  b                                           ; $6f1c: $80
	db   $10                                         ; $6f1d: $10
	add  b                                           ; $6f1e: $80
	cp   $84                                         ; $6f1f: $fe $84
	nop                                              ; $6f21: $00
	add  b                                           ; $6f22: $80
	ld   a, [$0a80]                                  ; $6f23: $fa $80 $0a
	add  b                                           ; $6f26: $80

jr_019_6f27:
	ld   [hl], d                                     ; $6f27: $72
	add  b                                           ; $6f28: $80
	ld   d, d                                        ; $6f29: $52
	add  b                                           ; $6f2a: $80
	halt                                             ; $6f2b: $76
	add  h                                           ; $6f2c: $84
	nop                                              ; $6f2d: $00
	add  d                                           ; $6f2e: $82
	inc  b                                           ; $6f2f: $04
	add  b                                           ; $6f30: $80
	ld   [$1080], sp                                 ; $6f31: $08 $80 $10
	add  [hl]                                        ; $6f34: $86
	nop                                              ; $6f35: $00
	add  b                                           ; $6f36: $80
	ld   [hl], b                                     ; $6f37: $70
	add  b                                           ; $6f38: $80
	sbc  b                                           ; $6f39: $98
	add  b                                           ; $6f3a: $80
	sub  h                                           ; $6f3b: $94
	add  b                                           ; $6f3c: $80
	ld   h, d                                        ; $6f3d: $62
	add  [hl]                                        ; $6f3e: $86

jr_019_6f3f:
	nop                                              ; $6f3f: $00
	add  b                                           ; $6f40: $80
	ld   h, b                                        ; $6f41: $60
	add  b                                           ; $6f42: $80

jr_019_6f43:
	or   b                                           ; $6f43: $b0
	add  b                                           ; $6f44: $80

jr_019_6f45:
	xor  b                                           ; $6f45: $a8
	add  b                                           ; $6f46: $80
	ld   b, b                                        ; $6f47: $40
	add  [hl]                                        ; $6f48: $86
	nop                                              ; $6f49: $00
	add  b                                           ; $6f4a: $80
	ld   [bc], a                                     ; $6f4b: $02
	add  b                                           ; $6f4c: $80
	inc  b                                           ; $6f4d: $04
	add  b                                           ; $6f4e: $80
	ld   [$1080], sp                                 ; $6f4f: $08 $80 $10
	add  [hl]                                        ; $6f52: $86
	nop                                              ; $6f53: $00
	add  b                                           ; $6f54: $80
	sbc  h                                           ; $6f55: $9c
	add  b                                           ; $6f56: $80
	and  [hl]                                        ; $6f57: $a6
	add  b                                           ; $6f58: $80
	and  h                                           ; $6f59: $a4
	add  b                                           ; $6f5a: $80

jr_019_6f5b:
	ld   e, b                                        ; $6f5b: $58
	add  [hl]                                        ; $6f5c: $86
	nop                                              ; $6f5d: $00
	add  d                                           ; $6f5e: $82
	jr   z, jr_019_6ee3                              ; $6f5f: $28 $82

	ld   b, h                                        ; $6f61: $44
	add  b                                           ; $6f62: $80
	add  d                                           ; $6f63: $82
	add  [hl]                                        ; $6f64: $86
	nop                                              ; $6f65: $00
	add  b                                           ; $6f66: $80
	add  b                                           ; $6f67: $80
	add  b                                           ; $6f68: $80
	ld   b, b                                        ; $6f69: $40
	add  b                                           ; $6f6a: $80

jr_019_6f6b:
	jr   c, jr_019_6ef3                              ; $6f6b: $38 $86

	nop                                              ; $6f6d: $00
	add  b                                           ; $6f6e: $80
	jr   nz, jr_019_6ef1                             ; $6f6f: $20 $80

	db   $10                                         ; $6f71: $10
	add  b                                           ; $6f72: $80
	ld   [$0480], sp                                 ; $6f73: $08 $80 $04
	add  [hl]                                        ; $6f76: $86
	nop                                              ; $6f77: $00
	add  b                                           ; $6f78: $80
	inc  e                                           ; $6f79: $1c
	add  b                                           ; $6f7a: $80
	inc  h                                           ; $6f7b: $24
	add  b                                           ; $6f7c: $80
	ld   h, $80                                      ; $6f7d: $26 $80
	inc  e                                           ; $6f7f: $1c
	add  [hl]                                        ; $6f80: $86
	nop                                              ; $6f81: $00
	add  d                                           ; $6f82: $82
	inc  b                                           ; $6f83: $04
	add  b                                           ; $6f84: $80
	ld   [$3080], sp                                 ; $6f85: $08 $80 $30
	add  [hl]                                        ; $6f88: $86
	nop                                              ; $6f89: $00
	add  h                                           ; $6f8a: $84
	ld   [bc], a                                     ; $6f8b: $02
	add  b                                           ; $6f8c: $80
	inc  a                                           ; $6f8d: $3c
	add  [hl]                                        ; $6f8e: $86
	nop                                              ; $6f8f: $00
	add  b                                           ; $6f90: $80
	ld   b, b                                        ; $6f91: $40
	add  b                                           ; $6f92: $80
	ld   b, d                                        ; $6f93: $42
	add  b                                           ; $6f94: $80
	inc  h                                           ; $6f95: $24
	add  b                                           ; $6f96: $80
	jr   jr_019_6f27                                 ; $6f97: $18 $8e

	nop                                              ; $6f99: $00
	add  d                                           ; $6f9a: $82
	ld   c, b                                        ; $6f9b: $48
	add  b                                           ; $6f9c: $80
	ld   a, b                                        ; $6f9d: $78
	add  b                                           ; $6f9e: $80
	db   $e4                                         ; $6f9f: $e4
	add  d                                           ; $6fa0: $82
	nop                                              ; $6fa1: $00
	add  b                                           ; $6fa2: $80
	ld   b, b                                        ; $6fa3: $40
	add  b                                           ; $6fa4: $80
	ld   b, h                                        ; $6fa5: $44
	add  b                                           ; $6fa6: $80
	ldh  a, [c]                                      ; $6fa7: $f2
	add  b                                           ; $6fa8: $80
	ld   b, b                                        ; $6fa9: $40
	add  d                                           ; $6faa: $82
	add  h                                           ; $6fab: $84
	add  h                                           ; $6fac: $84
	nop                                              ; $6fad: $00
	add  b                                           ; $6fae: $80
	add  b                                           ; $6faf: $80
	add  b                                           ; $6fb0: $80
	add  h                                           ; $6fb1: $84
	add  h                                           ; $6fb2: $84
	add  d                                           ; $6fb3: $82
	add  d                                           ; $6fb4: $82

jr_019_6fb5:
	nop                                              ; $6fb5: $00
	add  d                                           ; $6fb6: $82
	add  b                                           ; $6fb7: $80
	add  b                                           ; $6fb8: $80
	ld   b, d                                        ; $6fb9: $42
	add  b                                           ; $6fba: $80
	ld   c, h                                        ; $6fbb: $4c
	add  b                                           ; $6fbc: $80
	jr   nc, jr_019_6f3f                             ; $6fbd: $30 $80

jr_019_6fbf:
	jr   nz, jr_019_6f43                             ; $6fbf: $20 $82

	nop                                              ; $6fc1: $00
	add  d                                           ; $6fc2: $82
	jr   nz, jr_019_6f45                             ; $6fc3: $20 $80

	db   $ec                                         ; $6fc5: $ec
	add  b                                           ; $6fc6: $80
	inc  [hl]                                        ; $6fc7: $34
	add  b                                           ; $6fc8: $80
	inc  h                                           ; $6fc9: $24
	add  b                                           ; $6fca: $80

jr_019_6fcb:
	ld   h, h                                        ; $6fcb: $64
	add  d                                           ; $6fcc: $82
	nop                                              ; $6fcd: $00
	add  d                                           ; $6fce: $82
	ld   c, b                                        ; $6fcf: $48
	add  b                                           ; $6fd0: $80

jr_019_6fd1:
	cp   $82                                         ; $6fd1: $fe $82
	ld   c, b                                        ; $6fd3: $48
	add  b                                           ; $6fd4: $80
	ld   b, b                                        ; $6fd5: $40
	add  d                                           ; $6fd6: $82
	nop                                              ; $6fd7: $00
	add  h                                           ; $6fd8: $84
	jr   nz, jr_019_6f5b                             ; $6fd9: $20 $80

	ld   b, b                                        ; $6fdb: $40
	add  b                                           ; $6fdc: $80
	ld   [hl], b                                     ; $6fdd: $70
	add  b                                           ; $6fde: $80
	ld   c, b                                        ; $6fdf: $48
	add  d                                           ; $6fe0: $82
	nop                                              ; $6fe1: $00
	add  d                                           ; $6fe2: $82

jr_019_6fe3:
	jr   jr_019_6f6b                                 ; $6fe3: $18 $86

	inc  h                                           ; $6fe5: $24
	add  b                                           ; $6fe6: $80
	ld   a, [bc]                                     ; $6fe7: $0a
	add  b                                           ; $6fe8: $80
	ld   a, [de]                                     ; $6fe9: $1a
	add  b                                           ; $6fea: $80
	db   $10                                         ; $6feb: $10
	add  b                                           ; $6fec: $80
	cp   $82                                         ; $6fed: $fe $82
	db   $10                                         ; $6fef: $10
	add  b                                           ; $6ff0: $80
	ld   d, h                                        ; $6ff1: $54
	add  b                                           ; $6ff2: $80
	ld   d, d                                        ; $6ff3: $52
	add  h                                           ; $6ff4: $84
	nop                                              ; $6ff5: $00
	add  b                                           ; $6ff6: $80
	ld   a, h                                        ; $6ff7: $7c
	add  d                                           ; $6ff8: $82
	ld   b, h                                        ; $6ff9: $44
	add  b                                           ; $6ffa: $80
	and  h                                           ; $6ffb: $a4
	add  b                                           ; $6ffc: $80
	inc  d                                           ; $6ffd: $14
	add  h                                           ; $6ffe: $84
	nop                                              ; $6fff: $00

Jump_019_7000:
	add  b                                           ; $7000: $80
	jp   nz, $2280                                   ; $7001: $c2 $80 $22

	add  h                                           ; $7004: $84
	ld   [bc], a                                     ; $7005: $02
	add  b                                           ; $7006: $80
	nop                                              ; $7007: $00
	add  b                                           ; $7008: $80
	adc  b                                           ; $7009: $88
	add  b                                           ; $700a: $80
	ld   e, [hl]                                     ; $700b: $5e
	add  b                                           ; $700c: $80
	ld   c, b                                        ; $700d: $48
	add  b                                           ; $700e: $80
	ld   e, $80                                      ; $700f: $1e $80
	ld   [$3e80], a                                  ; $7011: $ea $80 $3e
	add  b                                           ; $7014: $80
	ld   a, [hl+]                                    ; $7015: $2a
	add  b                                           ; $7016: $80
	nop                                              ; $7017: $00
	add  d                                           ; $7018: $82
	ld   b, b                                        ; $7019: $40
	add  b                                           ; $701a: $80
	ld   e, [hl]                                     ; $701b: $5e
	add  b                                           ; $701c: $80
	db   $e4                                         ; $701d: $e4
	add  d                                           ; $701e: $82
	ld   b, h                                        ; $701f: $44
	add  b                                           ; $7020: $80
	ld   h, h                                        ; $7021: $64
	add  d                                           ; $7022: $82
	nop                                              ; $7023: $00
	add  [hl]                                        ; $7024: $86
	db   $10                                         ; $7025: $10
	add  b                                           ; $7026: $80
	cp   $80                                         ; $7027: $fe $80
	db   $10                                         ; $7029: $10
	add  b                                           ; $702a: $80
	nop                                              ; $702b: $00
	add  b                                           ; $702c: $80
	db   $10                                         ; $702d: $10
	add  b                                           ; $702e: $80
	cp   $80                                         ; $702f: $fe $80
	add  d                                           ; $7031: $82
	add  b                                           ; $7032: $80
	jr   c, jr_019_6fb5                              ; $7033: $38 $80

	ld   [$1080], sp                                 ; $7035: $08 $80 $10
	add  b                                           ; $7038: $80
	ld   [$0082], sp                                 ; $7039: $08 $82 $00
	add  d                                           ; $703c: $82
	jr   nz, jr_019_6fbf                             ; $703d: $20 $80

	db   $fc                                         ; $703f: $fc
	add  d                                           ; $7040: $82
	db   $10                                         ; $7041: $10
	add  b                                           ; $7042: $80
	cp   $80                                         ; $7043: $fe $80
	inc  h                                           ; $7045: $24
	add  b                                           ; $7046: $80

jr_019_7047:
	jr   z, jr_019_6fcb                              ; $7047: $28 $82

	jr   nz, jr_019_6fd1                             ; $7049: $20 $86

	nop                                              ; $704b: $00
	add  b                                           ; $704c: $80

jr_019_704d:
	inc  e                                           ; $704d: $1c
	add  b                                           ; $704e: $80
	inc  h                                           ; $704f: $24
	add  b                                           ; $7050: $80
	ld   h, $80                                      ; $7051: $26 $80
	inc  e                                           ; $7053: $1c
	add  [hl]                                        ; $7054: $86

jr_019_7055:
	nop                                              ; $7055: $00
	add  d                                           ; $7056: $82
	add  d                                           ; $7057: $82
	add  b                                           ; $7058: $80
	ld   d, b                                        ; $7059: $50
	add  b                                           ; $705a: $80
	jr   nz, jr_019_6fe3                             ; $705b: $20 $86

	nop                                              ; $705d: $00
	add  h                                           ; $705e: $84
	ld   b, b                                        ; $705f: $40
	add  b                                           ; $7060: $80
	ld   a, $86                                      ; $7061: $3e $86
	nop                                              ; $7063: $00
	add  b                                           ; $7064: $80
	ld   h, h                                        ; $7065: $64
	add  d                                           ; $7066: $82
	and  h                                           ; $7067: $a4
	add  b                                           ; $7068: $80
	ld   [hl+], a                                    ; $7069: $22
	add  [hl]                                        ; $706a: $86
	nop                                              ; $706b: $00
	add  h                                           ; $706c: $84
	ld   b, b                                        ; $706d: $40
	add  b                                           ; $706e: $80
	inc  a                                           ; $706f: $3c
	add  [hl]                                        ; $7070: $86
	nop                                              ; $7071: $00
	add  b                                           ; $7072: $80
	ld   c, b                                        ; $7073: $48
	add  d                                           ; $7074: $82
	adc  d                                           ; $7075: $8a
	add  b                                           ; $7076: $80
	add  h                                           ; $7077: $84
	add  [hl]                                        ; $7078: $86
	nop                                              ; $7079: $00
	add  b                                           ; $707a: $80
	ld   a, [hl]                                     ; $707b: $7e
	add  h                                           ; $707c: $84
	ld   b, d                                        ; $707d: $42
	add  [hl]                                        ; $707e: $86
	nop                                              ; $707f: $00
	add  d                                           ; $7080: $82
	sub  d                                           ; $7081: $92
	add  d                                           ; $7082: $82
	db   $10                                         ; $7083: $10
	add  [hl]                                        ; $7084: $86
	nop                                              ; $7085: $00
	add  d                                           ; $7086: $82
	ld   [$1080], sp                                 ; $7087: $08 $80 $10
	add  b                                           ; $708a: $80
	jr   nz, @-$78                                   ; $708b: $20 $86

	nop                                              ; $708d: $00
	add  d                                           ; $708e: $82
	inc  b                                           ; $708f: $04
	add  b                                           ; $7090: $80
	ld   [$3080], sp                                 ; $7091: $08 $80 $30
	add  [hl]                                        ; $7094: $86
	nop                                              ; $7095: $00
	add  b                                           ; $7096: $80
	ld   e, [hl]                                     ; $7097: $5e
	add  b                                           ; $7098: $80
	ld   c, b                                        ; $7099: $48
	add  b                                           ; $709a: $80
	ld   e, [hl]                                     ; $709b: $5e
	add  b                                           ; $709c: $80
	add  sp, -$80                                    ; $709d: $e8 $80
	sbc  [hl]                                        ; $709f: $9e
	add  h                                           ; $70a0: $84
	nop                                              ; $70a1: $00
	add  b                                           ; $70a2: $80
	call nz, Call_019_4482                           ; $70a3: $c4 $82 $44
	add  b                                           ; $70a6: $80
	ld   d, h                                        ; $70a7: $54
	add  b                                           ; $70a8: $80
	ret  z                                           ; $70a9: $c8

	add  h                                           ; $70aa: $84
	nop                                              ; $70ab: $00
	adc  b                                           ; $70ac: $88
	db   $10                                         ; $70ad: $10
	add  h                                           ; $70ae: $84
	nop                                              ; $70af: $00
	add  b                                           ; $70b0: $80
	ld   a, [hl]                                     ; $70b1: $7e
	add  d                                           ; $70b2: $82
	ld   [$2880], sp                                 ; $70b3: $08 $80 $28
	add  b                                           ; $70b6: $80
	db   $10                                         ; $70b7: $10
	add  h                                           ; $70b8: $84
	nop                                              ; $70b9: $00
	add  [hl]                                        ; $70ba: $86
	ld   [$0092], sp                                 ; $70bb: $08 $92 $00
	add  b                                           ; $70be: $80
	add  b                                           ; $70bf: $80
	add  b                                           ; $70c0: $80
	ld   a, [hl]                                     ; $70c1: $7e
	add  d                                           ; $70c2: $82
	nop                                              ; $70c3: $00
	add  d                                           ; $70c4: $82
	jr   nz, jr_019_7047                             ; $70c5: $20 $80

	db   $fc                                         ; $70c7: $fc
	add  b                                           ; $70c8: $80
	jr   nz, jr_019_704d                             ; $70c9: $20 $82

	ld   b, b                                        ; $70cb: $40
	add  d                                           ; $70cc: $82
	nop                                              ; $70cd: $00
	add  d                                           ; $70ce: $82
	db   $10                                         ; $70cf: $10
	add  b                                           ; $70d0: $80
	cp   $82                                         ; $70d1: $fe $82
	jr   nz, jr_019_7055                             ; $70d3: $20 $80

	ld   a, [hl]                                     ; $70d5: $7e
	add  h                                           ; $70d6: $84
	nop                                              ; $70d7: $00
	add  b                                           ; $70d8: $80
	sbc  [hl]                                        ; $70d9: $9e
	add  b                                           ; $70da: $80
	add  d                                           ; $70db: $82
	add  h                                           ; $70dc: $84
	add  b                                           ; $70dd: $80
	add  d                                           ; $70de: $82
	nop                                              ; $70df: $00
	add  d                                           ; $70e0: $82
	db   $10                                         ; $70e1: $10
	add  b                                           ; $70e2: $80
	cp   $80                                         ; $70e3: $fe $80
	db   $10                                         ; $70e5: $10
	add  b                                           ; $70e6: $80
	ld   [hl], b                                     ; $70e7: $70
	add  b                                           ; $70e8: $80
	sub  b                                           ; $70e9: $90
	add  [hl]                                        ; $70ea: $86
	nop                                              ; $70eb: $00
	inc  b                                           ; $70ec: $04
	rlca                                             ; $70ed: $07
	nop                                              ; $70ee: $00
	rrca                                             ; $70ef: $0f
	rlca                                             ; $70f0: $07
	dec  b                                           ; $70f1: $05
	add  c                                           ; $70f2: $81
	rlca                                             ; $70f3: $07
	add  hl, bc                                      ; $70f4: $09
	dec  c                                           ; $70f5: $0d
	nop                                              ; $70f6: $00
	inc  e                                           ; $70f7: $1c
	nop                                              ; $70f8: $00
	ld   l, $0c                                      ; $70f9: $2e $0c
	db   $fc                                         ; $70fb: $fc
	inc  a                                           ; $70fc: $3c
	rst  $38                                         ; $70fd: $ff
	cp   $80                                         ; $70fe: $fe $80
	ld   a, [hl]                                     ; $7100: $7e
	add  b                                           ; $7101: $80
	rst  $38                                         ; $7102: $ff
	add  b                                           ; $7103: $80
	db   $fd                                         ; $7104: $fd
	nop                                              ; $7105: $00
	rst  $38                                         ; $7106: $ff
	adc  c                                           ; $7107: $89
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	add  b                                           ; $710a: $80
	add  c                                           ; $710b: $81
	nop                                              ; $710c: $00
	ld   [bc], a                                     ; $710d: $02
	add  c                                           ; $710e: $81
	nop                                              ; $710f: $00
	inc  bc                                          ; $7110: $03
	add  c                                           ; $7111: $81
	ld   bc, $0202                                   ; $7112: $01 $02 $02
	nop                                              ; $7115: $00
	ld   bc, $0085                                   ; $7116: $01 $85 $00
	ld   bc, $7d86                                   ; $7119: $01 $86 $7d
	add  b                                           ; $711c: $80
	ld   e, l                                        ; $711d: $5d
	ld   bc, $6367                                   ; $711e: $01 $67 $63
	add  b                                           ; $7121: $80
	ld   a, h                                        ; $7122: $7c
	ld   [$7b79], sp                                 ; $7123: $08 $79 $7b
	cp   d                                           ; $7126: $ba
	dec  sp                                          ; $7127: $3b
	ld   c, a                                        ; $7128: $4f
	dec  c                                           ; $7129: $0d
	ld   sp, $0300                                   ; $712a: $31 $00 $03
	add  c                                           ; $712d: $81
	ld   hl, sp+$0d                                  ; $712e: $f8 $0d
	db   $ec                                         ; $7130: $ec
	ldh  [$98], a                                    ; $7131: $e0 $98
	add  b                                           ; $7133: $80
	ld   h, b                                        ; $7134: $60
	nop                                              ; $7135: $00
	ret  nz                                          ; $7136: $c0

	add  b                                           ; $7137: $80
	nop                                              ; $7138: $00
	add  b                                           ; $7139: $80
	ret  nz                                          ; $713a: $c0

	nop                                              ; $713b: $00
	add  b                                           ; $713c: $80
	nop                                              ; $713d: $00
	add  b                                           ; $713e: $80
	ld   [$f40b], sp                                 ; $713f: $08 $0b $f4
	db   $fc                                         ; $7142: $fc
	adc  d                                           ; $7143: $8a
	cp   $fd                                         ; $7144: $fe $fd
	rst  $38                                         ; $7146: $ff
	db   $fc                                         ; $7147: $fc
	cp   $88                                         ; $7148: $fe $88
	db   $fc                                         ; $714a: $fc
	nop                                              ; $714b: $00
	ld   [$00ce], sp                                 ; $714c: $08 $ce $00
	add  b                                           ; $714f: $80
	db   $fc                                         ; $7150: $fc
	add  b                                           ; $7151: $80
	sub  b                                           ; $7152: $90
	add  d                                           ; $7153: $82
	db   $10                                         ; $7154: $10
	add  b                                           ; $7155: $80
	cp   $84                                         ; $7156: $fe $84
	nop                                              ; $7158: $00
	add  d                                           ; $7159: $82
	ld   h, d                                        ; $715a: $62
	add  b                                           ; $715b: $80
	and  d                                           ; $715c: $a2
	add  b                                           ; $715d: $80
	ld   [hl+], a                                    ; $715e: $22
	add  b                                           ; $715f: $80
	ld   a, $84                                      ; $7160: $3e $84
	nop                                              ; $7162: $00
	add  d                                           ; $7163: $82
	add  b                                           ; $7164: $80
	add  b                                           ; $7165: $80
	sub  b                                           ; $7166: $90
	add  b                                           ; $7167: $80
	ld   c, [hl]                                     ; $7168: $4e
	add  [hl]                                        ; $7169: $86
	nop                                              ; $716a: $00
	add  b                                           ; $716b: $80
	sub  b                                           ; $716c: $90
	add  b                                           ; $716d: $80
	ld   [hl], b                                     ; $716e: $70
	add  b                                           ; $716f: $80
	db   $10                                         ; $7170: $10
	add  b                                           ; $7171: $80
	jr   nz, @-$78                                   ; $7172: $20 $86

	nop                                              ; $7174: $00
	ld   a, [bc]                                     ; $7175: $0a
	ld   [$0907], sp                                 ; $7176: $08 $07 $09
	ld   bc, $0383                                   ; $7179: $01 $83 $03
	dec  b                                           ; $717c: $05
	ld   bc, $0002                                   ; $717d: $01 $02 $00

Call_019_7180:
	ld   bc, $0081                                   ; $7180: $01 $81 $00
	dec  c                                           ; $7183: $0d
	add  b                                           ; $7184: $80
	nop                                              ; $7185: $00
	ld   d, $ef                                      ; $7186: $16 $ef
	cp   $fd                                         ; $7188: $fe $fd
	push af                                          ; $718a: $f5
	rst  $38                                         ; $718b: $ff
	cp   $ff                                         ; $718c: $fe $ff
	db   $f4                                         ; $718e: $f4
	cp   $07                                         ; $718f: $fe $07
	inc  bc                                          ; $7191: $03
	add  b                                           ; $7192: $80
	ld   a, a                                        ; $7193: $7f
	add  b                                           ; $7194: $80
	ld   [hl], e                                     ; $7195: $73
	nop                                              ; $7196: $00
	ld   a, a                                        ; $7197: $7f
	add  c                                           ; $7198: $81
	nop                                              ; $7199: $00
	inc  bc                                          ; $719a: $03
	ld   [hl], b                                     ; $719b: $70
	nop                                              ; $719c: $00
	ld   l, b                                        ; $719d: $68
	ld   [hl], b                                     ; $719e: $70
	add  b                                           ; $719f: $80
	ldh  a, [rTAC]                                   ; $71a0: $f0 $07
	jr   jr_019_71a4                                 ; $71a2: $18 $00

jr_019_71a4:
	ld   a, b                                        ; $71a4: $78
	nop                                              ; $71a5: $00
	db   $f4                                         ; $71a6: $f4
	adc  b                                           ; $71a7: $88
	db   $f4                                         ; $71a8: $f4
	nop                                              ; $71a9: $00
	add  b                                           ; $71aa: $80
	ld   bc, $0382                                   ; $71ab: $01 $82 $03
	add  b                                           ; $71ae: $80
	ld   bc, $0084                                   ; $71af: $01 $84 $00
	add  b                                           ; $71b2: $80
	ld   a, [hl]                                     ; $71b3: $7e
	add  [hl]                                        ; $71b4: $86
	rst  $38                                         ; $71b5: $ff
	add  b                                           ; $71b6: $80
	ld   a, [hl]                                     ; $71b7: $7e
	add  h                                           ; $71b8: $84
	nop                                              ; $71b9: $00
	add  b                                           ; $71ba: $80
	add  b                                           ; $71bb: $80
	add  d                                           ; $71bc: $82
	ret  nz                                          ; $71bd: $c0

	add  b                                           ; $71be: $80
	add  b                                           ; $71bf: $80
	add  [hl]                                        ; $71c0: $86
	nop                                              ; $71c1: $00
	add  b                                           ; $71c2: $80
	jr   nz, @-$7e                                   ; $71c3: $20 $80

	ld   d, b                                        ; $71c5: $50
	add  b                                           ; $71c6: $80
	jr   nz, @+$01                                   ; $71c7: $20 $ff

	nop                                              ; $71c9: $00
	rst  $38                                         ; $71ca: $ff
	nop                                              ; $71cb: $00
	rst  $38                                         ; $71cc: $ff
	nop                                              ; $71cd: $00
	rst  $38                                         ; $71ce: $ff
	nop                                              ; $71cf: $00
	rst  $38                                         ; $71d0: $ff
	nop                                              ; $71d1: $00
	rst  $38                                         ; $71d2: $ff
	nop                                              ; $71d3: $00
	rst  $38                                         ; $71d4: $ff
	nop                                              ; $71d5: $00
	rst  $38                                         ; $71d6: $ff
	nop                                              ; $71d7: $00
	rst  $38                                         ; $71d8: $ff
	nop                                              ; $71d9: $00
	rst  $38                                         ; $71da: $ff
	nop                                              ; $71db: $00
	rst  $38                                         ; $71dc: $ff
	nop                                              ; $71dd: $00
	rst  $38                                         ; $71de: $ff
	nop                                              ; $71df: $00
	cp   d                                           ; $71e0: $ba
	nop                                              ; $71e1: $00
	sbc  h                                           ; $71e2: $9c
	ld   bc, $fc00                                   ; $71e3: $01 $00 $fc
	add  c                                           ; $71e6: $81
	rst  $38                                         ; $71e7: $ff
	nop                                              ; $71e8: $00
	db   $fd                                         ; $71e9: $fd
	add  l                                           ; $71ea: $85
	rst  $38                                         ; $71eb: $ff
	nop                                              ; $71ec: $00
	cp   $81                                         ; $71ed: $fe $81
	rst  $38                                         ; $71ef: $ff
	ld   [bc], a                                     ; $71f0: $02
	rrca                                             ; $71f1: $0f
	rst  $38                                         ; $71f2: $ff
	rst  $28                                         ; $71f3: $ef
	add  c                                           ; $71f4: $81
	rst  $38                                         ; $71f5: $ff
	inc  b                                           ; $71f6: $04
	rst  JumpTable                                         ; $71f7: $df
	rst  $38                                         ; $71f8: $ff
	cp   a                                           ; $71f9: $bf
	rst  $38                                         ; $71fa: $ff
	ld   a, a                                        ; $71fb: $7f
	add  b                                           ; $71fc: $80
	rst  $38                                         ; $71fd: $ff
	add  b                                           ; $71fe: $80
	cp   $21                                         ; $71ff: $fe $21
	db   $fc                                         ; $7201: $fc
	ld   a, [$e2e0]                                  ; $7202: $fa $e0 $e2
	ret  nz                                          ; $7205: $c0

	set  0, b                                        ; $7206: $cb $c0
	rst  $10                                         ; $7208: $d7
	add  b                                           ; $7209: $80
	adc  c                                           ; $720a: $89
	nop                                              ; $720b: $00
	cpl                                              ; $720c: $2f
	nop                                              ; $720d: $00
	ld   e, [hl]                                     ; $720e: $5e
	nop                                              ; $720f: $00
	and  a                                           ; $7210: $a7
	nop                                              ; $7211: $00
	call nz, Call_019_7d00                           ; $7212: $c4 $00 $7d
	nop                                              ; $7215: $00

jr_019_7216:
	ldh  a, [c]                                      ; $7216: $f2
	nop                                              ; $7217: $00
	sub  b                                           ; $7218: $90
	nop                                              ; $7219: $00
	db   $e4                                         ; $721a: $e4
	ld   bc, $03c9                                   ; $721b: $01 $c9 $03
	ld   b, e                                        ; $721e: $43
	inc  bc                                          ; $721f: $03
	sub  e                                           ; $7220: $93
	ld   bc, $859e                                   ; $7221: $01 $9e $85
	rst  $38                                         ; $7224: $ff
	nop                                              ; $7225: $00
	ld   a, a                                        ; $7226: $7f
	add  [hl]                                        ; $7227: $86
	rst  $38                                         ; $7228: $ff
	add  b                                           ; $7229: $80
	cp   $80                                         ; $722a: $fe $80
	db   $fc                                         ; $722c: $fc
	add  b                                           ; $722d: $80
	ld   sp, hl                                      ; $722e: $f9
	add  b                                           ; $722f: $80
	di                                               ; $7230: $f3
	add  b                                           ; $7231: $80
	and  $80                                         ; $7232: $e6 $80
	adc  $80                                         ; $7234: $ce $80
	cp   h                                           ; $7236: $bc
	ld   hl, $037c                                   ; $7237: $21 $7c $03
	nop                                              ; $723a: $00
	add  b                                           ; $723b: $80
	nop                                              ; $723c: $00
	ld   b, $00                                      ; $723d: $06 $00
	ld   sp, hl                                      ; $723f: $f9
	nop                                              ; $7240: $00
	ld   a, h                                        ; $7241: $7c
	nop                                              ; $7242: $00
	add  h                                           ; $7243: $84
	nop                                              ; $7244: $00
	ei                                               ; $7245: $fb
	nop                                              ; $7246: $00
	ldh  a, [rP1]                                    ; $7247: $f0 $00
	add  d                                           ; $7249: $82
	ld   c, $4e                                      ; $724a: $0e $4e
	ld   c, $86                                      ; $724c: $0e $86
	ld   b, $22                                      ; $724e: $06 $22
	ld   [bc], a                                     ; $7250: $02
	ld   d, b                                        ; $7251: $50
	nop                                              ; $7252: $00
	ld   [$2600], sp                                 ; $7253: $08 $00 $26
	nop                                              ; $7256: $00
	ld   de, $8f80                                   ; $7257: $11 $80 $8f
	add  b                                           ; $725a: $80
	push hl                                          ; $725b: $e5
	rlca                                             ; $725c: $07
	db   $e4                                         ; $725d: $e4
	db   $ec                                         ; $725e: $ec
	add  sp, -$17                                    ; $725f: $e8 $e9
	add  sp, -$1d                                    ; $7261: $e8 $e3
	ldh  [$e6], a                                    ; $7263: $e0 $e6
	add  b                                           ; $7265: $80
	ld   h, b                                        ; $7266: $60
	add  hl, de                                      ; $7267: $19
	jr   nz, jr_019_7216                             ; $7268: $20 $ac

	nop                                              ; $726a: $00
	add  h                                           ; $726b: $84
	nop                                              ; $726c: $00
	inc  a                                           ; $726d: $3c
	nop                                              ; $726e: $00
	ldh  a, [rP1]                                    ; $726f: $f0 $00
	pop  bc                                          ; $7271: $c1
	db   $10                                         ; $7272: $10
	inc  de                                          ; $7273: $13
	jr   nz, jr_019_729c                             ; $7274: $20 $26

	nop                                              ; $7276: $00
	inc  e                                           ; $7277: $1c
	ld   bc, $0329                                   ; $7278: $01 $29 $03
	inc  de                                          ; $727b: $13
	ld   [bc], a                                     ; $727c: $02
	ld   h, d                                        ; $727d: $62
	add  hl, bc                                      ; $727e: $09
	ret                                              ; $727f: $c9


	inc  e                                           ; $7280: $1c
	sbc  h                                           ; $7281: $9c
	add  b                                           ; $7282: $80
	ld   e, $80                                      ; $7283: $1e $80
	ld   e, [hl]                                     ; $7285: $5e
	ld   b, $dc                                      ; $7286: $06 $dc
	db   $dd                                         ; $7288: $dd
	ret  c                                           ; $7289: $d8

	jp   c, $e2d0                                    ; $728a: $da $d0 $e2

	ld   bc, $0081                                   ; $728d: $01 $81 $00
	ld   bc, $5202                                   ; $7290: $01 $02 $52
	add  b                                           ; $7293: $80
	inc  b                                           ; $7294: $04
	ld   b, c                                        ; $7295: $41
	rlca                                             ; $7296: $07
	and  a                                           ; $7297: $a7
	rrca                                             ; $7298: $0f
	ld   c, a                                        ; $7299: $4f
	rlca                                             ; $729a: $07
	add  a                                           ; $729b: $87

jr_019_729c:
	ld   a, [bc]                                     ; $729c: $0a
	call z, $1ec0                                    ; $729d: $cc $c0 $1e
	nop                                              ; $72a0: $00
	ld   a, b                                        ; $72a1: $78
	nop                                              ; $72a2: $00
	ld   h, a                                        ; $72a3: $67
	nop                                              ; $72a4: $00
	ld   h, $00                                      ; $72a5: $26 $00
	ld   [bc], a                                     ; $72a7: $02
	nop                                              ; $72a8: $00
	ld   h, b                                        ; $72a9: $60
	nop                                              ; $72aa: $00
	dec  a                                           ; $72ab: $3d
	nop                                              ; $72ac: $00
	adc  [hl]                                        ; $72ad: $8e
	nop                                              ; $72ae: $00
	sub  b                                           ; $72af: $90
	nop                                              ; $72b0: $00
	rra                                              ; $72b1: $1f
	nop                                              ; $72b2: $00
	cp   b                                           ; $72b3: $b8
	nop                                              ; $72b4: $00
	ld   c, c                                        ; $72b5: $49
	nop                                              ; $72b6: $00
	sub  d                                           ; $72b7: $92
	nop                                              ; $72b8: $00
	db   $e4                                         ; $72b9: $e4
	nop                                              ; $72ba: $00
	ret                                              ; $72bb: $c9


	nop                                              ; $72bc: $00
	db   $fd                                         ; $72bd: $fd
	ret  nz                                          ; $72be: $c0

	sub  l                                           ; $72bf: $95
	add  b                                           ; $72c0: $80
	ld   a, [bc]                                     ; $72c1: $0a
	nop                                              ; $72c2: $00
	jr   nz, jr_019_72c5                             ; $72c3: $20 $00

jr_019_72c5:
	ld   d, l                                        ; $72c5: $55
	nop                                              ; $72c6: $00
	jr   nz, jr_019_72c9                             ; $72c7: $20 $00

jr_019_72c9:
	adc  d                                           ; $72c9: $8a
	nop                                              ; $72ca: $00
	ld   d, l                                        ; $72cb: $55
	ld   bc, $0f58                                   ; $72cc: $01 $58 $0f
	ld   c, a                                        ; $72cf: $4f
	inc  e                                           ; $72d0: $1c
	sbc  l                                           ; $72d1: $9d
	jr   c, jr_019_730e                              ; $72d2: $38 $3a

	jr   nc, jr_019_730b                             ; $72d4: $30 $35

	ld   h, b                                        ; $72d6: $60
	ld   h, [hl]                                     ; $72d7: $66
	add  b                                           ; $72d8: $80
	ld   h, b                                        ; $72d9: $60
	add  b                                           ; $72da: $80
	ld   [hl], b                                     ; $72db: $70
	add  b                                           ; $72dc: $80
	ld   a, h                                        ; $72dd: $7c
	dec  h                                           ; $72de: $25
	nop                                              ; $72df: $00
	ld   bc, $ff00                                   ; $72e0: $01 $00 $ff
	nop                                              ; $72e3: $00
	cp   $00                                         ; $72e4: $fe $00
	ccf                                              ; $72e6: $3f
	nop                                              ; $72e7: $00
	ld   sp, $3c00                                   ; $72e8: $31 $00 $3c
	nop                                              ; $72eb: $00
	db   $fd                                         ; $72ec: $fd
	nop                                              ; $72ed: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ee: $cf
	nop                                              ; $72ef: $00
	rst  $38                                         ; $72f0: $ff
	nop                                              ; $72f1: $00
	rst  $38                                         ; $72f2: $ff
	nop                                              ; $72f3: $00
	ld   a, [hl]                                     ; $72f4: $7e
	nop                                              ; $72f5: $00
	cp   $00                                         ; $72f6: $fe $00
	adc  h                                           ; $72f8: $8c
	nop                                              ; $72f9: $00
	ld   [de], a                                     ; $72fa: $12
	nop                                              ; $72fb: $00
	ld   l, [hl]                                     ; $72fc: $6e
	nop                                              ; $72fd: $00
	adc  a                                           ; $72fe: $8f
	nop                                              ; $72ff: $00
	ld   hl, sp+$00                                  ; $7300: $f8 $00
	inc  bc                                          ; $7302: $03
	nop                                              ; $7303: $00
	inc  b                                           ; $7304: $04
	add  b                                           ; $7305: $80
	ld   [hl], b                                     ; $7306: $70
	add  b                                           ; $7307: $80
	di                                               ; $7308: $f3
	add  b                                           ; $7309: $80
	rst  $38                                         ; $730a: $ff

jr_019_730b:
	add  d                                           ; $730b: $82
	ld   a, a                                        ; $730c: $7f
	add  d                                           ; $730d: $82

jr_019_730e:
	ccf                                              ; $730e: $3f
	add  b                                           ; $730f: $80
	ld   a, a                                        ; $7310: $7f
	adc  h                                           ; $7311: $8c
	rst  $38                                         ; $7312: $ff
	add  b                                           ; $7313: $80
	cp   $84                                         ; $7314: $fe $84
	db   $fc                                         ; $7316: $fc
	add  b                                           ; $7317: $80
	rst  $38                                         ; $7318: $ff
	ld   bc, $fffe                                   ; $7319: $01 $fe $ff
	add  b                                           ; $731c: $80
	db   $fc                                         ; $731d: $fc
	add  hl, de                                      ; $731e: $19
	ret  nz                                          ; $731f: $c0

	pop  bc                                          ; $7320: $c1
	nop                                              ; $7321: $00
	ccf                                              ; $7322: $3f
	nop                                              ; $7323: $00
	ld   sp, hl                                      ; $7324: $f9
	nop                                              ; $7325: $00
	ret                                              ; $7326: $c9


	nop                                              ; $7327: $00
	inc  de                                          ; $7328: $13
	nop                                              ; $7329: $00
	inc  l                                           ; $732a: $2c
	nop                                              ; $732b: $00
	ret  z                                           ; $732c: $c8

	nop                                              ; $732d: $00
	ld   hl, sp+$00                                  ; $732e: $f8 $00
	rra                                              ; $7330: $1f
	nop                                              ; $7331: $00
	rst  $38                                         ; $7332: $ff
	nop                                              ; $7333: $00
	ldh  [rP1], a                                    ; $7334: $e0 $00
	ld   b, $00                                      ; $7336: $06 $00
	dec  b                                           ; $7338: $05
	add  b                                           ; $7339: $80
	ld   h, b                                        ; $733a: $60
	rlca                                             ; $733b: $07
	ld   [hl], b                                     ; $733c: $70
	or   e                                           ; $733d: $b3
	nop                                              ; $733e: $00
	rst  ToBoot                                         ; $733f: $c7
	nop                                              ; $7340: $00
	ld   hl, sp+$00                                  ; $7341: $f8 $00
	rst  $38                                         ; $7343: $ff
	add  c                                           ; $7344: $81
	nop                                              ; $7345: $00
	ld   b, $07                                      ; $7346: $06 $07
	ld   a, a                                        ; $7348: $7f
	ld   [hl], a                                     ; $7349: $77
	ccf                                              ; $734a: $3f
	cp   a                                           ; $734b: $bf
	rra                                              ; $734c: $1f
	ld   l, a                                        ; $734d: $6f
	add  b                                           ; $734e: $80
	cp   $80                                         ; $734f: $fe $80
	db   $fd                                         ; $7351: $fd
	adc  b                                           ; $7352: $88
	rst  $38                                         ; $7353: $ff
	add  b                                           ; $7354: $80
	ldh  a, [$80]                                    ; $7355: $f0 $80
	ld   sp, hl                                      ; $7357: $f9
	add  b                                           ; $7358: $80
	ei                                               ; $7359: $fb
	ld   bc, $f1f0                                   ; $735a: $01 $f0 $f1
	add  b                                           ; $735d: $80
	di                                               ; $735e: $f3
	nop                                              ; $735f: $00
	rst  $38                                         ; $7360: $ff
	add  c                                           ; $7361: $81
	cp   $03                                         ; $7362: $fe $03
	nop                                              ; $7364: $00
	ld   bc, $19ff                                   ; $7365: $01 $ff $19
	add  c                                           ; $7368: $81
	ld   bc, $e906                                   ; $7369: $01 $06 $e9
	ld   bc, $00f1                                   ; $736c: $01 $f1 $00
	ld   [bc], a                                     ; $736f: $02
	nop                                              ; $7370: $00
	db   $fd                                         ; $7371: $fd
	add  c                                           ; $7372: $81
	nop                                              ; $7373: $00
	inc  bc                                          ; $7374: $03
	rst  $38                                         ; $7375: $ff
	nop                                              ; $7376: $00
	ld   b, b                                        ; $7377: $40
	ret  nz                                          ; $7378: $c0

	add  b                                           ; $7379: $80
	ldh  [$81], a                                    ; $737a: $e0 $81
	cp   $00                                         ; $737c: $fe $00
	ld   a, [hl]                                     ; $737e: $7e
	add  b                                           ; $737f: $80
	ld   a, $00                                      ; $7380: $3e $00
	sbc  [hl]                                        ; $7382: $9e
	add  c                                           ; $7383: $81
	ld   e, $0a                                      ; $7384: $1e $0a
	sbc  [hl]                                        ; $7386: $9e
	ld   e, $08                                      ; $7387: $1e $08
	nop                                              ; $7389: $00
	rla                                              ; $738a: $17
	nop                                              ; $738b: $00
	ld   bc, $8680                                   ; $738c: $01 $80 $86
	add  b                                           ; $738f: $80
	sbc  b                                           ; $7390: $98
	add  b                                           ; $7391: $80
	add  b                                           ; $7392: $80
	add  b                                           ; $7393: $80
	add  h                                           ; $7394: $84
	add  b                                           ; $7395: $80
	db   $fc                                         ; $7396: $fc
	inc  bc                                          ; $7397: $03
	cp   $3e                                         ; $7398: $fe $3e
	rlca                                             ; $739a: $07
	rst  ToBoot                                         ; $739b: $c7
	add  b                                           ; $739c: $80
	rra                                              ; $739d: $1f
	add  b                                           ; $739e: $80
	ld   a, $03                                      ; $739f: $3e $03
	ldh  a, [$f3]                                    ; $73a1: $f0 $f3
	ldh  [$e3], a                                    ; $73a3: $e0 $e3
	add  b                                           ; $73a5: $80
	ld   hl, sp-$7f                                  ; $73a6: $f8 $81
	rst  $38                                         ; $73a8: $ff
	ld   [$c0f9], sp                                 ; $73a9: $08 $f9 $c0
	jp   c, $ac80                                    ; $73ac: $da $80 $ac

	nop                                              ; $73af: $00
	ldh  a, [$03]                                    ; $73b0: $f0 $03
	jp   $0f80                                       ; $73b2: $c3 $80 $0f


	add  b                                           ; $73b5: $80
	cpl                                              ; $73b6: $2f
	add  b                                           ; $73b7: $80
	rst  $28                                         ; $73b8: $ef
	add  b                                           ; $73b9: $80
	xor  $80                                         ; $73ba: $ee $80
	inc  c                                           ; $73bc: $0c
	add  b                                           ; $73bd: $80
	dec  h                                           ; $73be: $25
	add  b                                           ; $73bf: $80
	or   [hl]                                        ; $73c0: $b6
	dec  d                                           ; $73c1: $15
	or   b                                           ; $73c2: $b0
	or   c                                           ; $73c3: $b1
	ret  nc                                          ; $73c4: $d0

	rst  $10                                         ; $73c5: $d7
	ret  nz                                          ; $73c6: $c0

	sbc  $80                                         ; $73c7: $de $80
	ld   hl, sp+$00                                  ; $73c9: $f8 $00
	ld   l, h                                        ; $73cb: $6c
	nop                                              ; $73cc: $00
	inc  d                                           ; $73cd: $14
	nop                                              ; $73ce: $00
	dec  hl                                          ; $73cf: $2b
	nop                                              ; $73d0: $00
	ld   d, d                                        ; $73d1: $52
	nop                                              ; $73d2: $00
	ldh  [rP1], a                                    ; $73d3: $e0 $00
	add  b                                           ; $73d5: $80
	jr   c, jr_019_7411                              ; $73d6: $38 $39

	add  b                                           ; $73d8: $80
	cp   h                                           ; $73d9: $bc
	ld   bc, $21de                                   ; $73da: $01 $de $21
	add  h                                           ; $73dd: $84
	rst  $38                                         ; $73de: $ff
	add  c                                           ; $73df: $81
	ld   a, a                                        ; $73e0: $7f
	inc  bc                                          ; $73e1: $03
	rra                                              ; $73e2: $1f
	ld   [hl], a                                     ; $73e3: $77
	rst  $28                                         ; $73e4: $ef
	ld   hl, sp-$80                                  ; $73e5: $f8 $80
	db   $fc                                         ; $73e7: $fc
	ld   bc, $e767                                   ; $73e8: $01 $67 $e7
	add  b                                           ; $73eb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ec: $cf
	ld   [bc], a                                     ; $73ed: $02
	adc  a                                           ; $73ee: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ef: $cf
	rst  JumpTable                                         ; $73f0: $df
	add  b                                           ; $73f1: $80
	sbc  a                                           ; $73f2: $9f
	add  b                                           ; $73f3: $80
	rra                                              ; $73f4: $1f
	add  b                                           ; $73f5: $80
	ccf                                              ; $73f6: $3f
	add  c                                           ; $73f7: $81
	ld   a, a                                        ; $73f8: $7f
	ld   l, $9c                                      ; $73f9: $2e $9c
	ld   [hl], b                                     ; $73fb: $70
	ld   [hl], e                                     ; $73fc: $73
	ld   a, b                                        ; $73fd: $78
	ld   a, e                                        ; $73fe: $7b
	ldh  a, [rIE]                                    ; $73ff: $f0 $ff
	ret  nz                                          ; $7401: $c0

	call $e7e0                                       ; $7402: $cd $e0 $e7
	ret  nz                                          ; $7405: $c0

	sbc  $80                                         ; $7406: $de $80
	ld   sp, hl                                      ; $7408: $f9
	nop                                              ; $7409: $00
	ld   d, [hl]                                     ; $740a: $56
	nop                                              ; $740b: $00
	pop  af                                          ; $740c: $f1
	nop                                              ; $740d: $00
	ret  c                                           ; $740e: $d8

	nop                                              ; $740f: $00
	ld   [hl], d                                     ; $7410: $72

jr_019_7411:
	nop                                              ; $7411: $00
	ldh  [rP1], a                                    ; $7412: $e0 $00
	sub  h                                           ; $7414: $94
	ld   bc, $0129                                   ; $7415: $01 $29 $01
	pop  de                                          ; $7418: $d1
	inc  bc                                          ; $7419: $03
	db   $e3                                         ; $741a: $e3
	ld   bc, $1f81                                   ; $741b: $01 $81 $1f
	rst  JumpTable                                         ; $741e: $df
	rrca                                             ; $741f: $0f
	cpl                                              ; $7420: $2f
	inc  bc                                          ; $7421: $03
	inc  de                                          ; $7422: $13
	nop                                              ; $7423: $00
	ld   c, h                                        ; $7424: $4c
	nop                                              ; $7425: $00
	inc  hl                                          ; $7426: $23
	nop                                              ; $7427: $00
	rra                                              ; $7428: $1f
	add  b                                           ; $7429: $80
	add  b                                           ; $742a: $80
	adc  b                                           ; $742b: $88
	rst  $38                                         ; $742c: $ff
	add  b                                           ; $742d: $80
	ld   a, a                                        ; $742e: $7f
	add  d                                           ; $742f: $82
	ccf                                              ; $7430: $3f
	add  b                                           ; $7431: $80
	ld   hl, sp+$03                                  ; $7432: $f8 $03
	ldh  a, [$cf]                                    ; $7434: $f0 $cf
	rst  $38                                         ; $7436: $ff
	ccf                                              ; $7437: $3f
	add  a                                           ; $7438: $87
	rst  $38                                         ; $7439: $ff
	inc  b                                           ; $743a: $04
	ret  nz                                          ; $743b: $c0

	ld   bc, $0fcd                                   ; $743c: $01 $cd $0f
	db   $fd                                         ; $743f: $fd
	add  c                                           ; $7440: $81
	rst  $38                                         ; $7441: $ff
	nop                                              ; $7442: $00
	cp   $85                                         ; $7443: $fe $85
	rst  $38                                         ; $7445: $ff
	ld   [bc], a                                     ; $7446: $02
	ld   bc, $f9f8                                   ; $7447: $01 $f8 $f9
	add  b                                           ; $744a: $80
	db   $fc                                         ; $744b: $fc
	add  b                                           ; $744c: $80
	cp   $87                                         ; $744d: $fe $87
	rst  $38                                         ; $744f: $ff
	inc  bc                                          ; $7450: $03
	ld   h, b                                        ; $7451: $60
	rra                                              ; $7452: $1f
	sbc  a                                           ; $7453: $9f
	rra                                              ; $7454: $1f
	add  b                                           ; $7455: $80
	ccf                                              ; $7456: $3f
	ld   [bc], a                                     ; $7457: $02
	jr   c, @+$01                                    ; $7458: $38 $ff

	rst  ToBoot                                         ; $745a: $c7
	add  l                                           ; $745b: $85
	rst  $38                                         ; $745c: $ff
	ld   bc, $c03f                                   ; $745d: $01 $3f $c0
	add  b                                           ; $7460: $80
	ldh  a, [rSC]                                    ; $7461: $f0 $02
	db   $fc                                         ; $7463: $fc
	cp   $fc                                         ; $7464: $fe $fc
	add  d                                           ; $7466: $82
	cp   $01                                         ; $7467: $fe $01
	rst  $38                                         ; $7469: $ff
	cp   $81                                         ; $746a: $fe $81
	rst  $38                                         ; $746c: $ff
	nop                                              ; $746d: $00
	cp   $85                                         ; $746e: $fe $85
	rst  $38                                         ; $7470: $ff
	nop                                              ; $7471: $00
	ld   a, [hl]                                     ; $7472: $7e
	add  c                                           ; $7473: $81
	rst  $38                                         ; $7474: $ff
	nop                                              ; $7475: $00
	cp   a                                           ; $7476: $bf
	add  c                                           ; $7477: $81
	rst  $38                                         ; $7478: $ff
	nop                                              ; $7479: $00
	ret  nz                                          ; $747a: $c0

	add  b                                           ; $747b: $80
	nop                                              ; $747c: $00
	add  d                                           ; $747d: $82
	rst  $38                                         ; $747e: $ff
	add  b                                           ; $747f: $80
	ld   c, a                                        ; $7480: $4f
	add  b                                           ; $7481: $80
	rst  $28                                         ; $7482: $ef
	ld   bc, $77f7                                   ; $7483: $01 $f7 $77
	add  c                                           ; $7486: $81
	rst  $38                                         ; $7487: $ff
	nop                                              ; $7488: $00
	ld   bc, $7e80                                   ; $7489: $01 $80 $7e
	adc  e                                           ; $748c: $8b
	cp   $00                                         ; $748d: $fe $00
	add  b                                           ; $748f: $80
	adc  [hl]                                        ; $7490: $8e
	cp   $80                                         ; $7491: $fe $80
	db   $ec                                         ; $7493: $ec
	add  b                                           ; $7494: $80
	rst  $28                                         ; $7495: $ef
	add  [hl]                                        ; $7496: $86
	rst  $30                                         ; $7497: $f7
	add  d                                           ; $7498: $82
	ei                                               ; $7499: $fb
	add  b                                           ; $749a: $80
	ld   c, $80                                      ; $749b: $0e $80
	xor  $84                                         ; $749d: $ee $84
	rst  $30                                         ; $749f: $f7
	add  h                                           ; $74a0: $84
	ei                                               ; $74a1: $fb
	add  b                                           ; $74a2: $80
	rst  $28                                         ; $74a3: $ef

jr_019_74a4:
	add  b                                           ; $74a4: $80
	ld   l, a                                        ; $74a5: $6f
	add  b                                           ; $74a6: $80
	scf                                              ; $74a7: $37
	add  b                                           ; $74a8: $80
	dec  sp                                          ; $74a9: $3b
	add  b                                           ; $74aa: $80
	cp   e                                           ; $74ab: $bb
	add  d                                           ; $74ac: $82
	sbc  l                                           ; $74ad: $9d
	inc  bc                                          ; $74ae: $03
	adc  $cf                                         ; $74af: $ce $cf
	add  sp, -$17                                    ; $74b1: $e8 $e9
	add  b                                           ; $74b3: $80
	db   $f4                                         ; $74b4: $f4
	add  b                                           ; $74b5: $80
	ei                                               ; $74b6: $fb
	add  b                                           ; $74b7: $80
	db   $fd                                         ; $74b8: $fd
	add  b                                           ; $74b9: $80
	cp   $83                                         ; $74ba: $fe $83
	rst  $38                                         ; $74bc: $ff
	ld   [bc], a                                     ; $74bd: $02
	rra                                              ; $74be: $1f
	rst  $38                                         ; $74bf: $ff
	ld   e, a                                        ; $74c0: $5f
	add  c                                           ; $74c1: $81
	rst  $38                                         ; $74c2: $ff
	nop                                              ; $74c3: $00
	cp   a                                           ; $74c4: $bf
	adc  b                                           ; $74c5: $88
	rst  $38                                         ; $74c6: $ff
	add  b                                           ; $74c7: $80
	inc  c                                           ; $74c8: $0c
	add  b                                           ; $74c9: $80
	cp   $89                                         ; $74ca: $fe $89
	rst  $38                                         ; $74cc: $ff
	ld   [bc], a                                     ; $74cd: $02
	ccf                                              ; $74ce: $3f
	rlca                                             ; $74cf: $07
	rst  ToBoot                                         ; $74d0: $c7
	add  b                                           ; $74d1: $80
	rrca                                             ; $74d2: $0f
	add  b                                           ; $74d3: $80
	rra                                              ; $74d4: $1f
	adc  b                                           ; $74d5: $88
	rst  $38                                         ; $74d6: $ff
	add  b                                           ; $74d7: $80
	ret  nz                                          ; $74d8: $c0

	adc  h                                           ; $74d9: $8c
	rst  $38                                         ; $74da: $ff
	add  b                                           ; $74db: $80
	ccf                                              ; $74dc: $3f
	adc  e                                           ; $74dd: $8b
	rst  $38                                         ; $74de: $ff
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	adc  l                                           ; $74e1: $8d
	rst  $38                                         ; $74e2: $ff
	adc  b                                           ; $74e3: $88
	cp   $84                                         ; $74e4: $fe $84
	rst  $38                                         ; $74e6: $ff

jr_019_74e7:
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	add  [hl]                                        ; $74e9: $86
	cp   $80                                         ; $74ea: $fe $80
	rst  $38                                         ; $74ec: $ff
	add  h                                           ; $74ed: $84
	ld   a, a                                        ; $74ee: $7f
	add  [hl]                                        ; $74ef: $86
	rst  $38                                         ; $74f0: $ff
	add  [hl]                                        ; $74f1: $86
	ld   a, a                                        ; $74f2: $7f
	add  [hl]                                        ; $74f3: $86
	ei                                               ; $74f4: $fb
	adc  h                                           ; $74f5: $8c
	db   $fd                                         ; $74f6: $fd
	adc  b                                           ; $74f7: $88
	cp   $80                                         ; $74f8: $fe $80
	adc  $82                                         ; $74fa: $ce $82
	rst  $28                                         ; $74fc: $ef
	add  d                                           ; $74fd: $82
	rst  $20                                         ; $74fe: $e7
	add  d                                           ; $74ff: $82
	di                                               ; $7500: $f3
	add  b                                           ; $7501: $80
	pop  af                                          ; $7502: $f1
	add  b                                           ; $7503: $80
	rst  $38                                         ; $7504: $ff
	add  d                                           ; $7505: $82
	ld   a, a                                        ; $7506: $7f
	add  d                                           ; $7507: $82
	cp   a                                           ; $7508: $bf
	add  d                                           ; $7509: $82
	rst  JumpTable                                         ; $750a: $df
	add  b                                           ; $750b: $80
	db   $eb                                         ; $750c: $eb
	add  b                                           ; $750d: $80
	xor  $80                                         ; $750e: $ee $80
	rst  $28                                         ; $7510: $ef
	add  d                                           ; $7511: $82
	rst  $30                                         ; $7512: $f7
	add  l                                           ; $7513: $85
	ei                                               ; $7514: $fb
	ld   bc, $ff04                                   ; $7515: $01 $04 $ff
	adc  h                                           ; $7518: $8c
	ld   a, a                                        ; $7519: $7f
	adc  [hl]                                        ; $751a: $8e
	cp   $80                                         ; $751b: $fe $80
	nop                                              ; $751d: $00
	ld   [bc], a                                     ; $751e: $02
	di                                               ; $751f: $f3
	nop                                              ; $7520: $00
	jr   c, jr_019_74a4                              ; $7521: $38 $81

	nop                                              ; $7523: $00
	inc  bc                                          ; $7524: $03
	jr   c, jr_019_7527                              ; $7525: $38 $00

jr_019_7527:
	jr   nc, jr_019_7529                             ; $7527: $30 $00

jr_019_7529:
	add  d                                           ; $7529: $82
	jr   jr_019_7530                                 ; $752a: $18 $04

	jp   $cf00                                       ; $752c: $c3 $00 $cf


	nop                                              ; $752f: $00

jr_019_7530:
	db   $e3                                         ; $7530: $e3
	add  c                                           ; $7531: $81
	nop                                              ; $7532: $00
	ld   [bc], a                                     ; $7533: $02
	db   $e3                                         ; $7534: $e3
	nop                                              ; $7535: $00
	db   $e3                                         ; $7536: $e3
	add  c                                           ; $7537: $81
	nop                                              ; $7538: $00
	ld   [hl+], a                                    ; $7539: $22
	inc  bc                                          ; $753a: $03
	nop                                              ; $753b: $00
	cpl                                              ; $753c: $2f
	nop                                              ; $753d: $00
	sbc  h                                           ; $753e: $9c
	nop                                              ; $753f: $00
	xor  [hl]                                        ; $7540: $ae
	nop                                              ; $7541: $00
	ld   [bc], a                                     ; $7542: $02
	nop                                              ; $7543: $00
	inc  l                                           ; $7544: $2c
	nop                                              ; $7545: $00
	ld   a, [de]                                     ; $7546: $1a
	nop                                              ; $7547: $00
	jr   nz, jr_019_754a                             ; $7548: $20 $00

jr_019_754a:
	cp   d                                           ; $754a: $ba
	nop                                              ; $754b: $00
	sbc  e                                           ; $754c: $9b
	rlca                                             ; $754d: $07
	ld   [hl], e                                     ; $754e: $73
	inc  bc                                          ; $754f: $03
	cp   e                                           ; $7550: $bb
	inc  bc                                          ; $7551: $03
	dec  bc                                          ; $7552: $0b
	inc  bc                                          ; $7553: $03
	or   a                                           ; $7554: $b7
	rlca                                             ; $7555: $07
	ld   l, e                                        ; $7556: $6b
	inc  bc                                          ; $7557: $03
	add  e                                           ; $7558: $83
	inc  bc                                          ; $7559: $03
	db   $eb                                         ; $755a: $eb
	inc  bc                                          ; $755b: $03
	ld   [hl], b                                     ; $755c: $70
	add  b                                           ; $755d: $80
	ld   a, [hl]                                     ; $755e: $7e
	ld   bc, $7d7c                                   ; $755f: $01 $7c $7d
	add  b                                           ; $7562: $80
	ld   a, h                                        ; $7563: $7c
	add  b                                           ; $7564: $80
	jr   nc, jr_019_74e7                             ; $7565: $30 $80

	inc  b                                           ; $7567: $04
	add  b                                           ; $7568: $80
	inc  c                                           ; $7569: $0c
	ld   bc, $1d1c                                   ; $756a: $01 $1c $1d
	add  b                                           ; $756d: $80
	inc  a                                           ; $756e: $3c
	dec  b                                           ; $756f: $05
	db   $10                                         ; $7570: $10
	rst  $10                                         ; $7571: $d7
	nop                                              ; $7572: $00
	ld   c, d                                        ; $7573: $4a
	nop                                              ; $7574: $00
	dec  d                                           ; $7575: $15
	add  b                                           ; $7576: $80
	ld   [bc], a                                     ; $7577: $02
	dec  c                                           ; $7578: $0d
	nop                                              ; $7579: $00
	rlca                                             ; $757a: $07
	nop                                              ; $757b: $00
	rlca                                             ; $757c: $07
	nop                                              ; $757d: $00
	ld   b, b                                        ; $757e: $40
	ld   [bc], a                                     ; $757f: $02
	jp   c, Jump_019_5941                            ; $7580: $da $41 $59

	ld   bc, $0195                                   ; $7583: $01 $95 $01
	ld   b, c                                        ; $7586: $41
	add  l                                           ; $7587: $85
	ld   bc, $1506                                   ; $7588: $01 $06 $15
	ld   bc, $f0d9                                   ; $758b: $01 $d9 $f0
	rst  $30                                         ; $758e: $f7
	ldh  a, [$f1]                                    ; $758f: $f0 $f1
	add  c                                           ; $7591: $81
	ldh  a, [rSC]                                    ; $7592: $f0 $02
	pop  af                                          ; $7594: $f1
	ldh  a, [$f1]                                    ; $7595: $f0 $f1
	add  c                                           ; $7597: $81
	ldh  a, [rTMA]                                   ; $7598: $f0 $06
	pop  af                                          ; $759a: $f1
	ldh  a, [$f7]                                    ; $759b: $f0 $f7
	nop                                              ; $759d: $00
	sbc  c                                           ; $759e: $99
	nop                                              ; $759f: $00
	ret  nz                                          ; $75a0: $c0

	add  c                                           ; $75a1: $81
	nop                                              ; $75a2: $00
	ld   [bc], a                                     ; $75a3: $02
	ret  nz                                          ; $75a4: $c0

	nop                                              ; $75a5: $00
	ret  nz                                          ; $75a6: $c0

	add  c                                           ; $75a7: $81
	nop                                              ; $75a8: $00
	ld   b, $d7                                      ; $75a9: $06 $d7
	nop                                              ; $75ab: $00
	adc  [hl]                                        ; $75ac: $8e
	nop                                              ; $75ad: $00
	ld   a, l                                        ; $75ae: $7d
	nop                                              ; $75af: $00
	ld   c, l                                        ; $75b0: $4d
	add  b                                           ; $75b1: $80
	nop                                              ; $75b2: $00
	add  a                                           ; $75b3: $87
	ld   b, $04                                      ; $75b4: $06 $04
	ld   [hl], $00                                   ; $75b6: $36 $00
	di                                               ; $75b8: $f3
	nop                                              ; $75b9: $00
	dec  [hl]                                        ; $75ba: $35
	add  b                                           ; $75bb: $80
	nop                                              ; $75bc: $00
	add  h                                           ; $75bd: $84
	db   $10                                         ; $75be: $10
	add  hl, bc                                      ; $75bf: $09
	nop                                              ; $75c0: $00
	dec  b                                           ; $75c1: $05
	nop                                              ; $75c2: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c3: $cf
	inc  c                                           ; $75c4: $0c
	sub  l                                           ; $75c5: $95
	inc  b                                           ; $75c6: $04
	ret  z                                           ; $75c7: $c8

	nop                                              ; $75c8: $00
	inc  b                                           ; $75c9: $04
	add  c                                           ; $75ca: $81
	nop                                              ; $75cb: $00
	rlca                                             ; $75cc: $07
	ld   b, $00                                      ; $75cd: $06 $00
	ld   [bc], a                                     ; $75cf: $02
	nop                                              ; $75d0: $00
	ret  nz                                          ; $75d1: $c0

	nop                                              ; $75d2: $00
	ld   h, a                                        ; $75d3: $67
	cp   $8c                                         ; $75d4: $fe $8c
	rst  $38                                         ; $75d6: $ff
	add  b                                           ; $75d7: $80
	jr   @-$72                                       ; $75d8: $18 $8c

	rst  $38                                         ; $75da: $ff
	add  b                                           ; $75db: $80
	nop                                              ; $75dc: $00
	adc  h                                           ; $75dd: $8c
	rst  $38                                         ; $75de: $ff
	add  b                                           ; $75df: $80
	ld   bc, $ff8c                                   ; $75e0: $01 $8c $ff
	add  b                                           ; $75e3: $80
	ld   b, $02                                      ; $75e4: $06 $02
	db   $fc                                         ; $75e6: $fc
	db   $fd                                         ; $75e7: $fd
	ld   sp, hl                                      ; $75e8: $f9
	add  d                                           ; $75e9: $82
	ei                                               ; $75ea: $fb
	ld   bc, $fefa                                   ; $75eb: $01 $fa $fe
	add  b                                           ; $75ee: $80
	db   $fc                                         ; $75ef: $fc
	add  c                                           ; $75f0: $81
	db   $fd                                         ; $75f1: $fd
	nop                                              ; $75f2: $00
	ld   bc, $7c80                                   ; $75f3: $01 $80 $7c
	add  d                                           ; $75f6: $82
	cp   $80                                         ; $75f7: $fe $80
	ccf                                              ; $75f9: $3f
	add  b                                           ; $75fa: $80
	ld   a, a                                        ; $75fb: $7f
	add  d                                           ; $75fc: $82
	cp   $80                                         ; $75fd: $fe $80
	db   $fd                                         ; $75ff: $fd
	add  b                                           ; $7600: $80
	ld   [bc], a                                     ; $7601: $02
	add  d                                           ; $7602: $82
	rst  $38                                         ; $7603: $ff
	add  d                                           ; $7604: $82
	ld   a, a                                        ; $7605: $7f
	add  h                                           ; $7606: $84
	rst  $38                                         ; $7607: $ff
	add  b                                           ; $7608: $80
	ld   bc, $fb8c                                   ; $7609: $01 $8c $fb
	add  b                                           ; $760c: $80
	ldh  a, [$8c]                                    ; $760d: $f0 $8c
	rst  $38                                         ; $760f: $ff
	add  b                                           ; $7610: $80
	jr   nz, @-$78                                   ; $7611: $20 $86

	ld   a, c                                        ; $7613: $79
	add  h                                           ; $7614: $84
	cp   c                                           ; $7615: $b9
	add  b                                           ; $7616: $80
	add  [hl]                                        ; $7617: $86
	add  [hl]                                        ; $7618: $86
	rst  $28                                         ; $7619: $ef
	add  h                                           ; $761a: $84
	rst  JumpTable                                         ; $761b: $df
	ld   bc, $0908                                   ; $761c: $01 $08 $09
	add  [hl]                                        ; $761f: $86
	db   $ed                                         ; $7620: $ed
	add  e                                           ; $7621: $83
	xor  l                                           ; $7622: $ad
	nop                                              ; $7623: $00
	ld   d, e                                        ; $7624: $53
	adc  c                                           ; $7625: $89
	rst  $38                                         ; $7626: $ff
	add  b                                           ; $7627: $80
	cp   $0c                                         ; $7628: $fe $0c
	db   $fc                                         ; $762a: $fc
	db   $fd                                         ; $762b: $fd
	ld   sp, hl                                      ; $762c: $f9
	ei                                               ; $762d: $fb
	di                                               ; $762e: $f3
	rst  $30                                         ; $762f: $f7
	rst  $20                                         ; $7630: $e7
	rst  $28                                         ; $7631: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7632: $cf
	rst  JumpTable                                         ; $7633: $df
	sbc  a                                           ; $7634: $9f
	cp   a                                           ; $7635: $bf
	ccf                                              ; $7636: $3f
	add  b                                           ; $7637: $80
	ld   a, a                                        ; $7638: $7f
	add  d                                           ; $7639: $82
	rst  $38                                         ; $763a: $ff
	add  b                                           ; $763b: $80
	db   $fd                                         ; $763c: $fd
	add  h                                           ; $763d: $84
	ei                                               ; $763e: $fb
	add  d                                           ; $763f: $82
	rst  $30                                         ; $7640: $f7
	add  d                                           ; $7641: $82
	rst  $28                                         ; $7642: $ef
	adc  [hl]                                        ; $7643: $8e
	ei                                               ; $7644: $fb
	add  d                                           ; $7645: $82
	cp   c                                           ; $7646: $b9
	adc  d                                           ; $7647: $8a
	cp   h                                           ; $7648: $bc
	adc  h                                           ; $7649: $8c
	rst  JumpTable                                         ; $764a: $df
	ld   bc, $9e9f                                   ; $764b: $01 $9f $9e
	add  c                                           ; $764e: $81
	call $cc00                                       ; $764f: $cd $00 $cc
	add  h                                           ; $7652: $84
	adc  $80                                         ; $7653: $ce $80
	xor  $80                                         ; $7655: $ee $80
	and  $01                                         ; $7657: $e6 $01
	db   $e4                                         ; $7659: $e4
	inc  e                                           ; $765a: $1c
	add  c                                           ; $765b: $81
	ei                                               ; $765c: $fb
	ld   [bc], a                                     ; $765d: $02
	di                                               ; $765e: $f3
	rst  $30                                         ; $765f: $f7
	rst  $20                                         ; $7660: $e7
	add  c                                           ; $7661: $81
	rst  $28                                         ; $7662: $ef
	nop                                              ; $7663: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7664: $cf
	add  c                                           ; $7665: $81
	rst  JumpTable                                         ; $7666: $df
	ld   [bc], a                                     ; $7667: $02
	sbc  a                                           ; $7668: $9f
	cp   a                                           ; $7669: $bf
	ccf                                              ; $766a: $3f
	add  b                                           ; $766b: $80
	rst  $28                                         ; $766c: $ef
	add  h                                           ; $766d: $84
	rst  JumpTable                                         ; $766e: $df
	add  d                                           ; $766f: $82
	cp   a                                           ; $7670: $bf
	add  d                                           ; $7671: $82
	ccf                                              ; $7672: $3f
	add  b                                           ; $7673: $80
	ei                                               ; $7674: $fb
	adc  b                                           ; $7675: $88
	di                                               ; $7676: $f3
	add  d                                           ; $7677: $82
	db   $e3                                         ; $7678: $e3
	add  b                                           ; $7679: $80
	nop                                              ; $767a: $00
	add  d                                           ; $767b: $82
	rst  $38                                         ; $767c: $ff
	dec  b                                           ; $767d: $05
	nop                                              ; $767e: $00
	ld   a, a                                        ; $767f: $7f
	nop                                              ; $7680: $00
	ccf                                              ; $7681: $3f
	nop                                              ; $7682: $00
	rra                                              ; $7683: $1f
	add  c                                           ; $7684: $81
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	ld   hl, $7e80                                   ; $7687: $21 $80 $7e
	add  c                                           ; $768a: $81
	cp   $06                                         ; $768b: $fe $06
	add  b                                           ; $768d: $80
	nop                                              ; $768e: $00
	rst  $38                                         ; $768f: $ff
	nop                                              ; $7690: $00
	rst  $38                                         ; $7691: $ff
	nop                                              ; $7692: $00
	rst  $38                                         ; $7693: $ff

jr_019_7694:
	add  c                                           ; $7694: $81
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	rst  $38                                         ; $7697: $ff
	add  h                                           ; $7698: $84
	cp   $09                                         ; $7699: $fe $09
	nop                                              ; $769b: $00
	rst  $38                                         ; $769c: $ff
	nop                                              ; $769d: $00
	rst  $38                                         ; $769e: $ff
	nop                                              ; $769f: $00
	rst  $38                                         ; $76a0: $ff
	nop                                              ; $76a1: $00
	ld   [bc], a                                     ; $76a2: $02
	nop                                              ; $76a3: $00
	db   $fd                                         ; $76a4: $fd
	add  h                                           ; $76a5: $84
	rst  $38                                         ; $76a6: $ff
	add  hl, bc                                      ; $76a7: $09
	nop                                              ; $76a8: $00
	rst  $38                                         ; $76a9: $ff
	nop                                              ; $76aa: $00
	rst  $38                                         ; $76ab: $ff
	nop                                              ; $76ac: $00
	rst  $38                                         ; $76ad: $ff
	nop                                              ; $76ae: $00
	ld   b, h                                        ; $76af: $44
	nop                                              ; $76b0: $00
	cp   e                                           ; $76b1: $bb
	add  b                                           ; $76b2: $80
	db   $ec                                         ; $76b3: $ec
	add  b                                           ; $76b4: $80
	rst  $28                                         ; $76b5: $ef
	add  b                                           ; $76b6: $80
	rst  $30                                         ; $76b7: $f7
	dec  b                                           ; $76b8: $05
	nop                                              ; $76b9: $00
	rst  $38                                         ; $76ba: $ff
	nop                                              ; $76bb: $00
	rst  $38                                         ; $76bc: $ff
	nop                                              ; $76bd: $00
	rst  $38                                         ; $76be: $ff
	add  c                                           ; $76bf: $81
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	rst  $38                                         ; $76c2: $ff
	add  b                                           ; $76c3: $80
	ld   c, $80                                      ; $76c4: $0e $80
	xor  $80                                         ; $76c6: $ee $80
	rst  $30                                         ; $76c8: $f7
	dec  b                                           ; $76c9: $05
	nop                                              ; $76ca: $00
	rst  $38                                         ; $76cb: $ff
	nop                                              ; $76cc: $00
	rst  $38                                         ; $76cd: $ff
	nop                                              ; $76ce: $00
	rst  $38                                         ; $76cf: $ff
	add  c                                           ; $76d0: $81
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	rst  $38                                         ; $76d3: $ff
	add  b                                           ; $76d4: $80
	rst  $28                                         ; $76d5: $ef
	add  b                                           ; $76d6: $80
	ld   l, a                                        ; $76d7: $6f
	add  b                                           ; $76d8: $80
	scf                                              ; $76d9: $37
	dec  bc                                          ; $76da: $0b
	nop                                              ; $76db: $00
	rst  $38                                         ; $76dc: $ff
	nop                                              ; $76dd: $00
	rst  $38                                         ; $76de: $ff
	nop                                              ; $76df: $00
	rst  $38                                         ; $76e0: $ff
	nop                                              ; $76e1: $00
	ld   a, $00                                      ; $76e2: $3e $00
	ret  nz                                          ; $76e4: $c0

	add  sp, -$17                                    ; $76e5: $e8 $e9
	add  b                                           ; $76e7: $80
	db   $f4                                         ; $76e8: $f4
	add  b                                           ; $76e9: $80
	ei                                               ; $76ea: $fb
	dec  b                                           ; $76eb: $05
	nop                                              ; $76ec: $00
	cp   $00                                         ; $76ed: $fe $00
	db   $fc                                         ; $76ef: $fc
	nop                                              ; $76f0: $00
	ld   hl, sp-$7f                                  ; $76f1: $f8 $81
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	and  l                                           ; $76f5: $a5
	adc  l                                           ; $76f6: $8d
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	and  b                                           ; $76f9: $a0
	adc  l                                           ; $76fa: $8d
	nop                                              ; $76fb: $00
	inc  d                                           ; $76fc: $14
	rrca                                             ; $76fd: $0f
	nop                                              ; $76fe: $00
	rrca                                             ; $76ff: $0f
	nop                                              ; $7700: $00
	rrca                                             ; $7701: $0f
	nop                                              ; $7702: $00
	rrca                                             ; $7703: $0f
	nop                                              ; $7704: $00
	rrca                                             ; $7705: $0f
	nop                                              ; $7706: $00
	rrca                                             ; $7707: $0f
	nop                                              ; $7708: $00
	rrca                                             ; $7709: $0f
	nop                                              ; $770a: $00
	ld   b, $00                                      ; $770b: $06 $00
	ld   hl, $5400                                   ; $770d: $21 $00 $54
	nop                                              ; $7710: $00
	jr   c, jr_019_7694                              ; $7711: $38 $81

	nop                                              ; $7713: $00
	ld   [bc], a                                     ; $7714: $02
	jr   c, jr_019_7717                              ; $7715: $38 $00

jr_019_7717:
	ld   d, h                                        ; $7717: $54
	add  c                                           ; $7718: $81
	nop                                              ; $7719: $00
	inc  b                                           ; $771a: $04
	ld   h, d                                        ; $771b: $62
	nop                                              ; $771c: $00
	ld   b, l                                        ; $771d: $45
	nop                                              ; $771e: $00
	rlca                                             ; $771f: $07
	add  c                                           ; $7720: $81
	nop                                              ; $7721: $00
	ld   [bc], a                                     ; $7722: $02
	rlca                                             ; $7723: $07
	nop                                              ; $7724: $00
	rlca                                             ; $7725: $07
	add  c                                           ; $7726: $81
	nop                                              ; $7727: $00
	inc  b                                           ; $7728: $04
	rlca                                             ; $7729: $07
	nop                                              ; $772a: $00
	rrca                                             ; $772b: $0f
	nop                                              ; $772c: $00
	and  d                                           ; $772d: $a2
	add  c                                           ; $772e: $81
	nop                                              ; $772f: $00
	ld   b, $1c                                      ; $7730: $06 $1c
	nop                                              ; $7732: $00
	inc  e                                           ; $7733: $1c
	nop                                              ; $7734: $00
	inc  e                                           ; $7735: $1c
	nop                                              ; $7736: $00
	inc  e                                           ; $7737: $1c
	add  c                                           ; $7738: $81
	nop                                              ; $7739: $00
	ld   [bc], a                                     ; $773a: $02
	add  b                                           ; $773b: $80
	nop                                              ; $773c: $00
	ld   [bc], a                                     ; $773d: $02
	add  e                                           ; $773e: $83
	nop                                              ; $773f: $00
	ld   b, $20                                      ; $7740: $06 $20
	nop                                              ; $7742: $00
	rst  $38                                         ; $7743: $ff
	nop                                              ; $7744: $00
	rst  $38                                         ; $7745: $ff
	nop                                              ; $7746: $00
	rst  $38                                         ; $7747: $ff
	add  b                                           ; $7748: $80
	nop                                              ; $7749: $00
	ld   bc, $46bc                                   ; $774a: $01 $bc $46
	add  l                                           ; $774d: $85
	nop                                              ; $774e: $00
	inc  b                                           ; $774f: $04
	ld   hl, sp+$00                                  ; $7750: $f8 $00
	db   $fc                                         ; $7752: $fc
	nop                                              ; $7753: $00
	cp   $80                                         ; $7754: $fe $80
	nop                                              ; $7756: $00
	inc  bc                                          ; $7757: $03
	sbc  a                                           ; $7758: $9f
	ld   l, a                                        ; $7759: $6f
	nop                                              ; $775a: $00
	rrca                                             ; $775b: $0f
	add  c                                           ; $775c: $81
	nop                                              ; $775d: $00
	inc  c                                           ; $775e: $0c
	ld   [bc], a                                     ; $775f: $02
	nop                                              ; $7760: $00
	rlca                                             ; $7761: $07
	nop                                              ; $7762: $00
	rrca                                             ; $7763: $0f
	nop                                              ; $7764: $00
	ld   c, $00                                      ; $7765: $0e $00
	dec  c                                           ; $7767: $0d
	nop                                              ; $7768: $00
	add  a                                           ; $7769: $87
	nop                                              ; $776a: $00
	adc  [hl]                                        ; $776b: $8e
	add  c                                           ; $776c: $81
	nop                                              ; $776d: $00
	ld   a, [bc]                                     ; $776e: $0a
	ld   [$3600], sp                                 ; $776f: $08 $00 $36
	nop                                              ; $7772: $00
	ld   [hl], $00                                   ; $7773: $36 $00
	ld   [hl], $00                                   ; $7775: $36 $00
	inc  d                                           ; $7777: $14
	nop                                              ; $7778: $00
	ld   a, [hl+]                                    ; $7779: $2a
	add  e                                           ; $777a: $83
	nop                                              ; $777b: $00
	inc  c                                           ; $777c: $0c
	rrca                                             ; $777d: $0f
	nop                                              ; $777e: $00
	rrca                                             ; $777f: $0f
	nop                                              ; $7780: $00
	ld   c, $00                                      ; $7781: $0e $00
	inc  c                                           ; $7783: $0c
	nop                                              ; $7784: $00
	ld   c, $00                                      ; $7785: $0e $00
	ld   c, d                                        ; $7787: $4a
	nop                                              ; $7788: $00
	ld   b, [hl]                                     ; $7789: $46
	add  c                                           ; $778a: $81
	nop                                              ; $778b: $00
	ld   a, [bc]                                     ; $778c: $0a
	cp   [hl]                                        ; $778d: $be
	nop                                              ; $778e: $00
	inc  a                                           ; $778f: $3c
	nop                                              ; $7790: $00
	jr   c, jr_019_7793                              ; $7791: $38 $00

jr_019_7793:
	jr   nc, jr_019_7795                             ; $7793: $30 $00

jr_019_7795:
	jr   c, jr_019_7797                              ; $7795: $38 $00

jr_019_7797:
	ld   c, l                                        ; $7797: $4d
	add  b                                           ; $7798: $80
	rst  $30                                         ; $7799: $f7
	add  a                                           ; $779a: $87
	or   $00                                         ; $779b: $f6 $00
	rst  $30                                         ; $779d: $f7
	add  c                                           ; $779e: $81
	db   $ed                                         ; $779f: $ed
	ld   bc, $7f93                                   ; $77a0: $01 $93 $7f
	adc  h                                           ; $77a3: $8c
	rst  $38                                         ; $77a4: $ff
	inc  b                                           ; $77a5: $04
	ldh  a, [rP1]                                    ; $77a6: $f0 $00
	dec  c                                           ; $77a8: $0d
	nop                                              ; $77a9: $00
	ld   [$0083], sp                                 ; $77aa: $08 $83 $00

jr_019_77ad:
	nop                                              ; $77ad: $00
	ld   a, [bc]                                     ; $77ae: $0a
	add  c                                           ; $77af: $81
	nop                                              ; $77b0: $00
	ld   [$000f], sp                                 ; $77b1: $08 $0f $00
	and  l                                           ; $77b4: $a5
	nop                                              ; $77b5: $00
	sub  h                                           ; $77b6: $94
	nop                                              ; $77b7: $00
	xor  d                                           ; $77b8: $aa
	nop                                              ; $77b9: $00
	ld   a, $81                                      ; $77ba: $3e $81
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	xor  d                                           ; $77be: $aa
	add  c                                           ; $77bf: $81
	nop                                              ; $77c0: $00
	ld   [bc], a                                     ; $77c1: $02
	pop  bc                                          ; $77c2: $c1
	nop                                              ; $77c3: $00
	pop  bc                                          ; $77c4: $c1
	adc  e                                           ; $77c5: $8b
	nop                                              ; $77c6: $00
	inc  c                                           ; $77c7: $0c
	ldh  a, [rP1]                                    ; $77c8: $f0 $00
	rst  $30                                         ; $77ca: $f7
	nop                                              ; $77cb: $00
	inc  bc                                          ; $77cc: $03
	nop                                              ; $77cd: $00
	inc  bc                                          ; $77ce: $03
	nop                                              ; $77cf: $00
	inc  bc                                          ; $77d0: $03
	nop                                              ; $77d1: $00
	inc  bc                                          ; $77d2: $03
	nop                                              ; $77d3: $00
	rlca                                             ; $77d4: $07
	add  e                                           ; $77d5: $83
	nop                                              ; $77d6: $00
	and  c                                           ; $77d7: $a1
	ld   bc, $0084                                   ; $77d8: $01 $84 $00
	ld   [bc], a                                     ; $77db: $02
	ld   bc, $0300                                   ; $77dc: $01 $00 $03
	add  l                                           ; $77df: $85
	ld   bc, $0202                                   ; $77e0: $01 $02 $02
	nop                                              ; $77e3: $00
	ld   bc, $008b                                   ; $77e4: $01 $8b $00
	ld   b, $01                                      ; $77e7: $06 $01
	nop                                              ; $77e9: $00
	ld   [bc], a                                     ; $77ea: $02
	ld   bc, $030d                                   ; $77eb: $01 $0d $03
	inc  de                                          ; $77ee: $13
	add  b                                           ; $77ef: $80

jr_019_77f0:
	ld   c, $0d                                      ; $77f0: $0e $0d
	ld   [$006b], sp                                 ; $77f2: $08 $6b $00
	rst  $38                                         ; $77f5: $ff
	ld   a, h                                        ; $77f6: $7c
	ld   a, a                                        ; $77f7: $7f
	ld   [hl], e                                     ; $77f8: $73
	sub  e                                           ; $77f9: $93
	ld   bc, $0163                                   ; $77fa: $01 $63 $01
	ld   [bc], a                                     ; $77fd: $02
	nop                                              ; $77fe: $00
	ld   bc, $0087                                   ; $77ff: $01 $87 $00
	add  hl, bc                                      ; $7802: $09
	rrca                                             ; $7803: $0f
	nop                                              ; $7804: $00
	jr   nc, @+$11                                   ; $7805: $30 $0f

	ld   a, a                                        ; $7807: $7f
	inc  a                                           ; $7808: $3c
	ccf                                              ; $7809: $3f
	jr   nc, jr_019_77f0                             ; $780a: $30 $e4

	ld   l, b                                        ; $780c: $68
	add  b                                           ; $780d: $80
	ld   e, h                                        ; $780e: $5c
	ld   a, [de]                                     ; $780f: $1a
	scf                                              ; $7810: $37
	inc  a                                           ; $7811: $3c
	cp   l                                           ; $7812: $bd
	ld   a, [hl-]                                    ; $7813: $3a
	ld   d, h                                        ; $7814: $54
	ld   d, $4f                                      ; $7815: $16 $4f
	rrca                                             ; $7817: $0f
	add  [hl]                                        ; $7818: $86
	ld   [hl], a                                     ; $7819: $77
	or   a                                           ; $781a: $b7
	rst  $30                                         ; $781b: $f7
	di                                               ; $781c: $f3
	res  7, e                                        ; $781d: $cb $bb
	xor  e                                           ; $781f: $ab
	ld   l, c                                        ; $7820: $69
	ld   [hl], c                                     ; $7821: $71
	ld   l, c                                        ; $7822: $69
	ld   h, l                                        ; $7823: $65
	ld   d, h                                        ; $7824: $54
	ld   d, [hl]                                     ; $7825: $56
	sub  d                                           ; $7826: $92
	ld   a, [de]                                     ; $7827: $1a
	ld   e, d                                        ; $7828: $5a
	ld   a, [de]                                     ; $7829: $1a
	jr   z, jr_019_77ad                              ; $782a: $28 $81

	dec  c                                           ; $782c: $0d
	ld   [bc], a                                     ; $782d: $02
	inc  d                                           ; $782e: $14
	ld   b, $0a                                      ; $782f: $06 $0a
	add  b                                           ; $7831: $80
	ld   [bc], a                                     ; $7832: $02
	ld   bc, $0503                                   ; $7833: $01 $03 $05
	add  c                                           ; $7836: $81
	ld   bc, $0401                                   ; $7837: $01 $01 $04
	nop                                              ; $783a: $00
	add  b                                           ; $783b: $80
	inc  bc                                          ; $783c: $03
	ld   [$0509], sp                                 ; $783d: $08 $09 $05
	inc  d                                           ; $7840: $14
	ld   c, $2e                                      ; $7841: $0e $2e
	ld   c, $4f                                      ; $7843: $0e $4f
	ld   d, $94                                      ; $7845: $16 $94
	add  b                                           ; $7847: $80
	ld   e, e                                        ; $7848: $5b
	inc  b                                           ; $7849: $04
	db   $eb                                         ; $784a: $eb
	dec  b                                           ; $784b: $05
	db   $ed                                         ; $784c: $ed
	ld   [hl], h                                     ; $784d: $74
	ld   [hl], l                                     ; $784e: $75
	add  b                                           ; $784f: $80
	dec  [hl]                                        ; $7850: $35
	dec  b                                           ; $7851: $05
	or   c                                           ; $7852: $b1
	dec  [hl]                                        ; $7853: $35
	and  l                                           ; $7854: $a5
	jr   nz, @-$6f                                   ; $7855: $20 $8f

	add  b                                           ; $7857: $80
	add  d                                           ; $7858: $82
	ldh  [rSC], a                                    ; $7859: $e0 $02
	stop                                             ; $785b: $10 $00
	ldh  [$89], a                                    ; $785d: $e0 $89
	nop                                              ; $785f: $00
	rrca                                             ; $7860: $0f
	add  c                                           ; $7861: $81
	nop                                              ; $7862: $00
	ld   b, d                                        ; $7863: $42
	ld   bc, $8100                                   ; $7864: $01 $00 $81
	add  d                                           ; $7867: $82
	add  b                                           ; $7868: $80
	add  d                                           ; $7869: $82
	add  b                                           ; $786a: $80
	add  l                                           ; $786b: $85
	inc  bc                                          ; $786c: $03
	nop                                              ; $786d: $00
	add  e                                           ; $786e: $83
	and  h                                           ; $786f: $a4
	pop  bc                                          ; $7870: $c1
	add  b                                           ; $7871: $80
	ld   b, b                                        ; $7872: $40
	ld   bc, $6357                                   ; $7873: $01 $57 $63
	add  b                                           ; $7876: $80
	and  e                                           ; $7877: $a3
	ld   [bc], a                                     ; $7878: $02
	xor  e                                           ; $7879: $ab
	or   e                                           ; $787a: $b3
	ld   d, e                                        ; $787b: $53
	add  b                                           ; $787c: $80
	db   $d3                                         ; $787d: $d3
	ld   b, $db                                      ; $787e: $06 $db
	xor  e                                           ; $7880: $ab
	db   $eb                                         ; $7881: $eb
	ld   b, a                                        ; $7882: $47
	nop                                              ; $7883: $00
	ret  nz                                          ; $7884: $c0

	nop                                              ; $7885: $00
	add  b                                           ; $7886: $80
	ld   bc, $8f80                                   ; $7887: $01 $80 $8f
	ld   [$bebf], sp                                 ; $788a: $08 $bf $be
	cp   a                                           ; $788d: $bf
	cp   c                                           ; $788e: $b9
	cp   [hl]                                        ; $788f: $be
	and  b                                           ; $7890: $a0
	cp   c                                           ; $7891: $b9
	nop                                              ; $7892: $00
	ldh  [$87], a                                    ; $7893: $e0 $87
	nop                                              ; $7895: $00
	inc  bc                                          ; $7896: $03
	ld   bc, $0f00                                   ; $7897: $01 $00 $0f
	ld   bc, $0782                                   ; $789a: $01 $82 $07
	dec  b                                           ; $789d: $05
	rla                                              ; $789e: $17
	rlca                                             ; $789f: $07
	ei                                               ; $78a0: $fb
	dec  de                                          ; $78a1: $1b
	ld   a, d                                        ; $78a2: $7a
	ld   a, e                                        ; $78a3: $7b
	add  b                                           ; $78a4: $80
	ld   a, l                                        ; $78a5: $7d
	rrca                                             ; $78a6: $0f
	cp   e                                           ; $78a7: $bb
	ld   a, $29                                      ; $78a8: $3e $29
	ccf                                              ; $78aa: $3f
	ld   d, l                                        ; $78ab: $55
	inc  e                                           ; $78ac: $1c
	jr   c, jr_019_78bd                              ; $78ad: $38 $0e

	ld   a, [de]                                     ; $78af: $1a
	ld   bc, $0005                                   ; $78b0: $01 $05 $00
	ld   e, $0c                                      ; $78b3: $1e $0c
	rrca                                             ; $78b5: $0f
	ld   c, $80                                      ; $78b6: $0e $80
	rrca                                             ; $78b8: $0f
	ld   [$0f2f], sp                                 ; $78b9: $08 $2f $0f
	rst  $10                                         ; $78bc: $d7

jr_019_78bd:
	scf                                              ; $78bd: $37
	db   $db                                         ; $78be: $db
	inc  bc                                          ; $78bf: $03
	inc  c                                           ; $78c0: $0c
	inc  b                                           ; $78c1: $04
	dec  b                                           ; $78c2: $05
	add  c                                           ; $78c3: $81
	inc  b                                           ; $78c4: $04
	nop                                              ; $78c5: $00
	ld   a, [de]                                     ; $78c6: $1a
	add  e                                           ; $78c7: $83
	ld   [$0080], sp                                 ; $78c8: $08 $80 $00
	dec  b                                           ; $78cb: $05
	inc  a                                           ; $78cc: $3c
	jr   jr_019_78ee                                 ; $78cd: $18 $1f

	jr   jr_019_7934                                 ; $78cf: $18 $63

	inc  hl                                          ; $78d1: $23
	add  b                                           ; $78d2: $80
	dec  sp                                          ; $78d3: $3b
	add  b                                           ; $78d4: $80
	inc  [hl]                                        ; $78d5: $34
	add  b                                           ; $78d6: $80
	scf                                              ; $78d7: $37
	nop                                              ; $78d8: $00
	or   $81                                         ; $78d9: $f6 $81
	halt                                             ; $78db: $76
	nop                                              ; $78dc: $00
	ld   l, a                                        ; $78dd: $6f
	add  c                                           ; $78de: $81
	ld   l, [hl]                                     ; $78df: $6e
	inc  bc                                          ; $78e0: $03
	adc  h                                           ; $78e1: $8c
	inc  c                                           ; $78e2: $0c
	ld   l, h                                        ; $78e3: $6c
	inc  c                                           ; $78e4: $0c
	add  b                                           ; $78e5: $80
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	ld   e, $a3                                      ; $78e8: $1e $a3
	nop                                              ; $78ea: $00
	dec  bc                                          ; $78eb: $0b
	rlca                                             ; $78ec: $07
	nop                                              ; $78ed: $00

jr_019_78ee:
	rrca                                             ; $78ee: $0f
	rlca                                             ; $78ef: $07
	ccf                                              ; $78f0: $3f
	rrca                                             ; $78f1: $0f
	rst  $38                                         ; $78f2: $ff
	ccf                                              ; $78f3: $3f
	ld   a, [hl]                                     ; $78f4: $7e
	ld   a, a                                        ; $78f5: $7f
	ld   a, l                                        ; $78f6: $7d

jr_019_78f7:
	ld   a, a                                        ; $78f7: $7f
	add  b                                           ; $78f8: $80
	ld   a, [hl]                                     ; $78f9: $7e
	ld   [bc], a                                     ; $78fa: $02
	and  h                                           ; $78fb: $a4
	cp   [hl]                                        ; $78fc: $be
	and  $8d                                         ; $78fd: $e6 $8d
	nop                                              ; $78ff: $00
	rlca                                             ; $7900: $07
	ld   a, a                                        ; $7901: $7f
	add  h                                           ; $7902: $84
	ld   [hl], h                                     ; $7903: $74
	ld   b, $ae                                      ; $7904: $06 $ae
	ld   [hl+], a                                    ; $7906: $22
	ld   b, a                                        ; $7907: $47
	ld   b, b                                        ; $7908: $40
	add  h                                           ; $7909: $84
	ret  nz                                          ; $790a: $c0

	add  b                                           ; $790b: $80
	jr   nc, jr_019_790e                             ; $790c: $30 $00

jr_019_790e:
	ld   [bc], a                                     ; $790e: $02
	adc  l                                           ; $790f: $8d
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	db   $f4                                         ; $7912: $f4
	add  b                                           ; $7913: $80
	jp   $3307                                       ; $7914: $c3 $07 $33


	db   $fd                                         ; $7917: $fd
	ld   bc, $0139                                   ; $7918: $01 $39 $01
	ld   [bc], a                                     ; $791b: $02
	nop                                              ; $791c: $00
	ld   bc, $0083                                   ; $791d: $01 $83 $00
	ld   [bc], a                                     ; $7920: $02
	db   $fc                                         ; $7921: $fc
	ld   a, b                                        ; $7922: $78
	ld   a, d                                        ; $7923: $7a
	add  c                                           ; $7924: $81
	db   $fc                                         ; $7925: $fc
	nop                                              ; $7926: $00
	db   $fd                                         ; $7927: $fd
	add  b                                           ; $7928: $80
	ld   hl, sp-$80                                  ; $7929: $f8 $80
	add  a                                           ; $792b: $87
	add  b                                           ; $792c: $80
	ld   a, a                                        ; $792d: $7f
	add  b                                           ; $792e: $80
	pop  bc                                          ; $792f: $c1
	ld   bc, $41be                                   ; $7930: $01 $be $41
	add  d                                           ; $7933: $82

jr_019_7934:
	nop                                              ; $7934: $00
	add  b                                           ; $7935: $80
	rrca                                             ; $7936: $0f
	add  d                                           ; $7937: $82
	db   $10                                         ; $7938: $10
	sub  b                                           ; $7939: $90
	nop                                              ; $793a: $00
	add  b                                           ; $793b: $80
	rlca                                             ; $793c: $07
	sbc  a                                           ; $793d: $9f
	nop                                              ; $793e: $00
	ld   bc, $807e                                   ; $793f: $01 $7e $80
	add  b                                           ; $7942: $80
	db   $fc                                         ; $7943: $fc
	ld   [$f8c2], sp                                 ; $7944: $08 $c2 $f8
	db   $fc                                         ; $7947: $fc
	ldh  a, [$f8]                                    ; $7948: $f0 $f8
	ldh  [$30], a                                    ; $794a: $e0 $30
	nop                                              ; $794c: $00
	ldh  [$89], a                                    ; $794d: $e0 $89
	nop                                              ; $794f: $00

jr_019_7950:
	inc  c                                           ; $7950: $0c
	add  b                                           ; $7951: $80
	nop                                              ; $7952: $00
	ld   b, b                                        ; $7953: $40
	add  b                                           ; $7954: $80
	and  b                                           ; $7955: $a0
	ret  nz                                          ; $7956: $c0

	ret  nc                                          ; $7957: $d0

	ld   h, b                                        ; $7958: $60
	ld   l, b                                        ; $7959: $68
	jr   nc, jr_019_7950                             ; $795a: $30 $f4

	ret  c                                           ; $795c: $d8

	dec  de                                          ; $795d: $1b
	add  b                                           ; $795e: $80
	inc  c                                           ; $795f: $0c
	add  b                                           ; $7960: $80
	ld   [$eb80], a                                  ; $7961: $ea $80 $eb
	ld   bc, $dadb                                   ; $7964: $01 $db $da
	add  b                                           ; $7967: $80
	ld   [hl], $01                                   ; $7968: $36 $01
	adc  $30                                         ; $796a: $ce $30
	sub  e                                           ; $796c: $93
	nop                                              ; $796d: $00
	add  b                                           ; $796e: $80
	jr   c, jr_019_78f7                              ; $796f: $38 $86

	nop                                              ; $7971: $00
	ld   d, $3e                                      ; $7972: $16 $3e
	sbc  $bf                                         ; $7974: $de $bf
	and  a                                           ; $7976: $a7
	rra                                              ; $7977: $1f
	add  hl, de                                      ; $7978: $19
	ld   h, a                                        ; $7979: $67
	ld   b, $19                                      ; $797a: $06 $19
	ld   bc, $0006                                   ; $797c: $01 $06 $00
	inc  bc                                          ; $797f: $03
	ld   bc, $0387                                   ; $7980: $01 $87 $03
	dec  de                                          ; $7983: $1b
	inc  bc                                          ; $7984: $03
	inc  hl                                          ; $7985: $23
	dec  de                                          ; $7986: $1b
	ld   e, d                                        ; $7987: $5a
	inc  sp                                          ; $7988: $33
	and  d                                           ; $7989: $a2
	add  b                                           ; $798a: $80
	ld   [hl], b                                     ; $798b: $70
	nop                                              ; $798c: $00
	ld   [hl], d                                     ; $798d: $72
	add  b                                           ; $798e: $80
	ld   [hl], l                                     ; $798f: $75
	inc  b                                           ; $7990: $04
	pop  hl                                          ; $7991: $e1
	ld   sp, $3637                                   ; $7992: $31 $37 $36
	ld   c, a                                        ; $7995: $4f
	sub  c                                           ; $7996: $91
	nop                                              ; $7997: $00
	ld   b, $80                                      ; $7998: $06 $80
	nop                                              ; $799a: $00
	ld   hl, sp-$80                                  ; $799b: $f8 $80
	ld   b, a                                        ; $799d: $47
	ld   e, b                                        ; $799e: $58
	cp   b                                           ; $799f: $b8
	add  c                                           ; $79a0: $81
	cpl                                              ; $79a1: $2f
	ld   b, $4f                                      ; $79a2: $06 $4f
	rrca                                             ; $79a4: $0f
	db   $10                                         ; $79a5: $10
	rst  JumpTable                                         ; $79a6: $df
	rst  ToBoot                                         ; $79a7: $c7
	rst  JumpTable                                         ; $79a8: $df
	ld   hl, sp-$7c                                  ; $79a9: $f8 $84
	xor  $06                                         ; $79ab: $ee $06
	and  $ee                                         ; $79ad: $e6 $ee
	ldh  [c], a                                      ; $79af: $e2
	and  $e0                                         ; $79b0: $e6 $e0
	and  e                                           ; $79b2: $a3
	and  b                                           ; $79b3: $a0
	add  b                                           ; $79b4: $80
	ret  nz                                          ; $79b5: $c0

	ld   bc, $b0b8                                   ; $79b6: $01 $b8 $b0
	add  b                                           ; $79b9: $80
	add  b                                           ; $79ba: $80
	add  b                                           ; $79bb: $80
	jr   nc, @+$03                                   ; $79bc: $30 $01

	ld   [$8300], sp                                 ; $79be: $08 $00 $83
	ldh  [$1f], a                                    ; $79c1: $e0 $1f
	nop                                              ; $79c3: $00
	or   b                                           ; $79c4: $b0
	nop                                              ; $79c5: $00
	add  b                                           ; $79c6: $80
	nop                                              ; $79c7: $00
	ret  nz                                          ; $79c8: $c0

	nop                                              ; $79c9: $00
	jr   nz, jr_019_79cc                             ; $79ca: $20 $00

jr_019_79cc:
	ld   b, b                                        ; $79cc: $40
	nop                                              ; $79cd: $00
	ld   h, b                                        ; $79ce: $60
	nop                                              ; $79cf: $00
	ldh  a, [$e0]                                    ; $79d0: $f0 $e0
	ld   hl, sp-$10                                  ; $79d2: $f8 $f0
	inc  a                                           ; $79d4: $3c
	jr   c, jr_019_79e5                              ; $79d5: $38 $0e

	call z, $32c3                                    ; $79d7: $cc $c3 $32
	ld   [hl], b                                     ; $79da: $70
	ld   c, h                                        ; $79db: $4c
	call c, $b7d3                                    ; $79dc: $dc $d3 $b7
	or   h                                           ; $79df: $b4
	ld   l, l                                        ; $79e0: $6d
	ld   l, h                                        ; $79e1: $6c
	cp   $85                                         ; $79e2: $fe $85
	nop                                              ; $79e4: $00

jr_019_79e5:
	inc  c                                           ; $79e5: $0c

jr_019_79e6:
	ldh  [rP1], a                                    ; $79e6: $e0 $00
	db   $10                                         ; $79e8: $10
	ldh  [$e8], a                                    ; $79e9: $e0 $e8
	ret  nc                                          ; $79eb: $d0

	call nc, $bab8                                   ; $79ec: $d4 $b8 $ba
	ld   a, h                                        ; $79ef: $7c
	dec  a                                           ; $79f0: $3d
	ld   a, d                                        ; $79f1: $7a
	jp   c, $f680                                    ; $79f2: $da $80 $f6

	add  hl, bc                                      ; $79f5: $09
	db   $ed                                         ; $79f6: $ed
	push hl                                          ; $79f7: $e5
	db   $eb                                         ; $79f8: $eb
	db   $e3                                         ; $79f9: $e3
	db   $eb                                         ; $79fa: $eb
	dec  bc                                          ; $79fb: $0b
	ld   [$04ee], a                                  ; $79fc: $ea $ee $04
	or   $81                                         ; $79ff: $f6 $81
	ld   b, $04                                      ; $7a01: $06 $04
	dec  bc                                          ; $7a03: $0b
	inc  bc                                          ; $7a04: $03
	inc  b                                           ; $7a05: $04
	nop                                              ; $7a06: $00
	inc  bc                                          ; $7a07: $03
	sbc  a                                           ; $7a08: $9f
	nop                                              ; $7a09: $00
	ld   [bc], a                                     ; $7a0a: $02
	add  b                                           ; $7a0b: $80
	nop                                              ; $7a0c: $00
	ret  nz                                          ; $7a0d: $c0

	add  e                                           ; $7a0e: $83
	nop                                              ; $7a0f: $00
	rlca                                             ; $7a10: $07
	and  b                                           ; $7a11: $a0
	ld   b, b                                        ; $7a12: $40
	db   $10                                         ; $7a13: $10
	and  b                                           ; $7a14: $a0
	ld   [$8810], sp                                 ; $7a15: $08 $10 $88
	add  b                                           ; $7a18: $80
	add  d                                           ; $7a19: $82
	ldh  [rSC], a                                    ; $7a1a: $e0 $02
	ld   b, b                                        ; $7a1c: $40
	add  b                                           ; $7a1d: $80
	ret  nz                                          ; $7a1e: $c0

	add  c                                           ; $7a1f: $81
	nop                                              ; $7a20: $00
	rlca                                             ; $7a21: $07
	ret  nz                                          ; $7a22: $c0

	nop                                              ; $7a23: $00
	jr   nz, jr_019_79e6                             ; $7a24: $20 $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $7a26: $f0 $a0
	ret  c                                           ; $7a28: $d8

	ld   d, b                                        ; $7a29: $50
	add  b                                           ; $7a2a: $80
	ldh  [$80], a                                    ; $7a2b: $e0 $80
	db   $10                                         ; $7a2d: $10
	add  b                                           ; $7a2e: $80
	jr   nc, jr_019_7a37                             ; $7a2f: $30 $06

	jr   z, @+$22                                    ; $7a31: $28 $20

	sub  b                                           ; $7a33: $90
	add  b                                           ; $7a34: $80
	ld   h, b                                        ; $7a35: $60
	nop                                              ; $7a36: $00

jr_019_7a37:
	add  b                                           ; $7a37: $80
	add  l                                           ; $7a38: $85
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	rst  $38                                         ; $7a3b: $ff
	add  e                                           ; $7a3c: $83
	nop                                              ; $7a3d: $00
	ld   a, [bc]                                     ; $7a3e: $0a
	inc  bc                                          ; $7a3f: $03
	nop                                              ; $7a40: $00
	inc  b                                           ; $7a41: $04
	nop                                              ; $7a42: $00
	inc  b                                           ; $7a43: $04
	nop                                              ; $7a44: $00
	inc  bc                                          ; $7a45: $03
	nop                                              ; $7a46: $00
	ld   bc, $0100                                   ; $7a47: $01 $00 $01
	adc  l                                           ; $7a4a: $8d
	nop                                              ; $7a4b: $00
	inc  bc                                          ; $7a4c: $03
	ld   a, h                                        ; $7a4d: $7c
	ld   a, l                                        ; $7a4e: $7d
	ld   a, c                                        ; $7a4f: $79
	ld   a, d                                        ; $7a50: $7a
	add  b                                           ; $7a51: $80
	ld   a, [$7a03]                                  ; $7a52: $fa $03 $7a
	ld   a, [$f573]                                  ; $7a55: $fa $73 $f5
	add  b                                           ; $7a58: $80
	ld   [hl], l                                     ; $7a59: $75
	add  c                                           ; $7a5a: $81
	push af                                          ; $7a5b: $f5
	ld   de, $1cf1                                   ; $7a5c: $11 $f1 $1c
	sbc  a                                           ; $7a5f: $9f
	rst  $28                                         ; $7a60: $ef
	ld   l, a                                        ; $7a61: $6f
	push af                                          ; $7a62: $f5
	rst  $30                                         ; $7a63: $f7
	db   $e3                                         ; $7a64: $e3
	ei                                               ; $7a65: $fb
	ld   sp, hl                                      ; $7a66: $f9
	db   $fd                                         ; $7a67: $fd
	db   $ed                                         ; $7a68: $ed
	cp   $f6                                         ; $7a69: $fe $f6
	rst  $38                                         ; $7a6b: $ff
	ei                                               ; $7a6c: $fb
	rst  $38                                         ; $7a6d: $ff
	inc  bc                                          ; $7a6e: $03
	add  b                                           ; $7a6f: $80
	ld   hl, sp-$80                                  ; $7a70: $f8 $80
	cp   $84                                         ; $7a72: $fe $84
	rst  $38                                         ; $7a74: $ff
	add  b                                           ; $7a75: $80
	ld   a, b                                        ; $7a76: $78
	add  b                                           ; $7a77: $80
	add  a                                           ; $7a78: $87
	add  b                                           ; $7a79: $80
	rst  $38                                         ; $7a7a: $ff
	sub  [hl]                                        ; $7a7b: $96
	nop                                              ; $7a7c: $00
	add  h                                           ; $7a7d: $84

jr_019_7a7e:
	ld   bc, $0086                                   ; $7a7e: $01 $86 $00
	add  d                                           ; $7a81: $82
	add  b                                           ; $7a82: $80
	add  d                                           ; $7a83: $82
	ret  nz                                          ; $7a84: $c0

	ld   [bc], a                                     ; $7a85: $02
	and  b                                           ; $7a86: $a0
	cp   a                                           ; $7a87: $bf
	rra                                              ; $7a88: $1f
	add  b                                           ; $7a89: $80
	ld   c, $93                                      ; $7a8a: $0e $93
	nop                                              ; $7a8c: $00
	add  b                                           ; $7a8d: $80
	ld   bc, $0382                                   ; $7a8e: $01 $82 $03
	add  b                                           ; $7a91: $80
	rlca                                             ; $7a92: $07
	add  d                                           ; $7a93: $82
	nop                                              ; $7a94: $00
	add  b                                           ; $7a95: $80
	ld   d, b                                        ; $7a96: $50
	add  h                                           ; $7a97: $84
	ldh  a, [$81]                                    ; $7a98: $f0 $81
	ldh  [rSC], a                                    ; $7a9a: $e0 $02
	pop  hl                                          ; $7a9c: $e1
	nop                                              ; $7a9d: $00
	ld   bc, $0085                                   ; $7a9e: $01 $85 $00
	ld   [$0010], sp                                 ; $7aa1: $08 $10 $00
	stop                                             ; $7aa4: $10 $00
	ld   [$0800], sp                                 ; $7aa6: $08 $00 $08
	nop                                              ; $7aa9: $00
	add  b                                           ; $7aaa: $80
	add  c                                           ; $7aab: $81
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00

jr_019_7aae:
	ret  nz                                          ; $7aae: $c0

	add  c                                           ; $7aaf: $81
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	ld   h, b                                        ; $7ab2: $60
	add  c                                           ; $7ab3: $81
	nop                                              ; $7ab4: $00
	inc  bc                                          ; $7ab5: $03
	jr   nc, jr_019_7ab8                             ; $7ab6: $30 $00

jr_019_7ab8:
	pop  af                                          ; $7ab8: $f1
	db   $ed                                         ; $7ab9: $ed
	add  b                                           ; $7aba: $80
	db   $ec                                         ; $7abb: $ec
	nop                                              ; $7abc: $00
	call z, $d180                                    ; $7abd: $cc $80 $d1
	add  b                                           ; $7ac0: $80
	db   $dd                                         ; $7ac1: $dd
	add  b                                           ; $7ac2: $80
	jp   c, $db01                                    ; $7ac3: $da $01 $db

	sbc  e                                           ; $7ac6: $9b
	add  c                                           ; $7ac7: $81
	cp   e                                           ; $7ac8: $bb
	inc  b                                           ; $7ac9: $04
	rst  ToBoot                                         ; $7aca: $c7
	db   $fd                                         ; $7acb: $fd
	ld   a, d                                        ; $7acc: $7a
	ld   a, e                                        ; $7acd: $7b
	scf                                              ; $7ace: $37
	add  c                                           ; $7acf: $81
	or   a                                           ; $7ad0: $b7
	nop                                              ; $7ad1: $00
	xor  a                                           ; $7ad2: $af
	add  b                                           ; $7ad3: $80
	cpl                                              ; $7ad4: $2f
	ld   bc, $efaf                                   ; $7ad5: $01 $af $ef
	add  c                                           ; $7ad8: $81
	ld   l, a                                        ; $7ad9: $6f
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	add  c                                           ; $7adc: $81
	rst  $38                                         ; $7add: $ff
	ld   [bc], a                                     ; $7ade: $02
	ld   a, a                                        ; $7adf: $7f
	rst  $38                                         ; $7ae0: $ff
	cp   a                                           ; $7ae1: $bf
	add  c                                           ; $7ae2: $81
	rst  $38                                         ; $7ae3: $ff
	ld   [bc], a                                     ; $7ae4: $02
	rst  JumpTable                                         ; $7ae5: $df
	rst  $38                                         ; $7ae6: $ff
	rst  $28                                         ; $7ae7: $ef
	add  b                                           ; $7ae8: $80
	rst  $38                                         ; $7ae9: $ff
	ld   bc, $0efe                                   ; $7aea: $01 $fe $0e
	add  b                                           ; $7aed: $80
	ld   a, a                                        ; $7aee: $7f
	inc  bc                                          ; $7aef: $03
	ld   h, b                                        ; $7af0: $60
	ld   l, a                                        ; $7af1: $6f
	ld   c, a                                        ; $7af2: $4f
	ld   d, b                                        ; $7af3: $50
	add  b                                           ; $7af4: $80
	sub  b                                           ; $7af5: $90
	ld   bc, $c7d7                                   ; $7af6: $01 $d7 $c7
	add  b                                           ; $7af9: $80
	rst  $20                                         ; $7afa: $e7
	add  b                                           ; $7afb: $80
	jr   c, jr_019_7a7e                              ; $7afc: $38 $80

	rst  ToBoot                                         ; $7afe: $c7
	adc  c                                           ; $7aff: $89
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	ld   bc, $0081                                   ; $7b02: $01 $81 $00
	nop                                              ; $7b05: $00
	ld   bc, $0087                                   ; $7b06: $01 $87 $00
	nop                                              ; $7b09: $00
	add  b                                           ; $7b0a: $80
	add  c                                           ; $7b0b: $81
	nop                                              ; $7b0c: $00
	ld   [bc], a                                     ; $7b0d: $02
	ld   b, b                                        ; $7b0e: $40
	nop                                              ; $7b0f: $00
	ret  nz                                          ; $7b10: $c0

	adc  e                                           ; $7b11: $8b
	nop                                              ; $7b12: $00
	ld   [bc], a                                     ; $7b13: $02
	ld   bc, $0100                                   ; $7b14: $01 $00 $01
	adc  e                                           ; $7b17: $8b
	nop                                              ; $7b18: $00
	ld   [bc], a                                     ; $7b19: $02
	ld   [$0800], sp                                 ; $7b1a: $08 $00 $08
	add  l                                           ; $7b1d: $85
	nop                                              ; $7b1e: $00
	ld   [$0080], sp                                 ; $7b1f: $08 $80 $00
	ret  nz                                          ; $7b22: $c0

	nop                                              ; $7b23: $00
	jr   nz, jr_019_7b26                             ; $7b24: $20 $00

jr_019_7b26:
	stop                                             ; $7b26: $10 $00
	ld   [hl], b                                     ; $7b28: $70
	add  d                                           ; $7b29: $82
	nop                                              ; $7b2a: $00
	add  b                                           ; $7b2b: $80
	jr   c, jr_019_7aae                              ; $7b2c: $38 $80

	inc  c                                           ; $7b2e: $0c
	add  b                                           ; $7b2f: $80
	inc  b                                           ; $7b30: $04
	add  h                                           ; $7b31: $84
	nop                                              ; $7b32: $00
	add  b                                           ; $7b33: $80
	rlca                                             ; $7b34: $07
	add  b                                           ; $7b35: $80
	ld   b, $8a                                      ; $7b36: $06 $8a
	nop                                              ; $7b38: $00
	add  b                                           ; $7b39: $80
	ret  nz                                          ; $7b3a: $c0

	adc  a                                           ; $7b3b: $8f
	nop                                              ; $7b3c: $00
	add  b                                           ; $7b3d: $80
	ld   [$0c80], sp                                 ; $7b3e: $08 $80 $0c
	add  b                                           ; $7b41: $80
	ld   c, $80                                      ; $7b42: $0e $80
	inc  b                                           ; $7b44: $04
	add  d                                           ; $7b45: $82
	nop                                              ; $7b46: $00
	ld   [bc], a                                     ; $7b47: $02
	ld   [$0c00], sp                                 ; $7b48: $08 $00 $0c
	add  c                                           ; $7b4b: $81
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	ld   b, $81                                      ; $7b4e: $06 $81
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	inc  bc                                          ; $7b52: $03
	add  c                                           ; $7b53: $81
	nop                                              ; $7b54: $00
	ld   [$0001], sp                                 ; $7b55: $08 $01 $00
	pop  de                                          ; $7b58: $d1
	db   $ed                                         ; $7b59: $ed
	push de                                          ; $7b5a: $d5
	push af                                          ; $7b5b: $f5
	db   $f4                                         ; $7b5c: $f4
	or   $6a                                         ; $7b5d: $f6 $6a
	add  b                                           ; $7b5f: $80
	ld   a, d                                        ; $7b60: $7a
	ld   bc, $357b                                   ; $7b61: $01 $7b $35
	add  c                                           ; $7b64: $81
	cp   l                                           ; $7b65: $bd
	ld   [bc], a                                     ; $7b66: $02
	ld   a, [de]                                     ; $7b67: $1a
	ld   e, [hl]                                     ; $7b68: $5e
	ld   b, e                                        ; $7b69: $43
	add  c                                           ; $7b6a: $81
	or   a                                           ; $7b6b: $b7
	ld   bc, $c6f7                                   ; $7b6c: $01 $f7 $c6
	add  b                                           ; $7b6f: $80
	sub  $01                                         ; $7b70: $d6 $01
	ld   d, [hl]                                     ; $7b72: $56
	ld   d, b                                        ; $7b73: $50
	add  b                                           ; $7b74: $80
	ld   h, h                                        ; $7b75: $64
	ld   bc, $b333                                   ; $7b76: $01 $33 $b3
	add  b                                           ; $7b79: $80
	cp   h                                           ; $7b7a: $bc
	nop                                              ; $7b7b: $00
	rst  JumpTable                                         ; $7b7c: $df
	add  c                                           ; $7b7d: $81
	ld   e, a                                        ; $7b7e: $5f
	add  d                                           ; $7b7f: $82
	rst  JumpTable                                         ; $7b80: $df
	add  b                                           ; $7b81: $80
	or   c                                           ; $7b82: $b1
	add  b                                           ; $7b83: $80
	ld   l, $01                                      ; $7b84: $2e $01
	ld   c, $0f                                      ; $7b86: $0e $0f
	add  b                                           ; $7b88: $80
	dec  sp                                          ; $7b89: $3b
	nop                                              ; $7b8a: $00
	pop  af                                          ; $7b8b: $f1
	add  d                                           ; $7b8c: $82
	db   $fd                                         ; $7b8d: $fd
	add  c                                           ; $7b8e: $81
	ei                                               ; $7b8f: $fb
	ld   bc, $f7eb                                   ; $7b90: $01 $eb $f7
	add  c                                           ; $7b93: $81
	rla                                              ; $7b94: $17
	inc  bc                                          ; $7b95: $03
	ld   h, a                                        ; $7b96: $67
	rst  $20                                         ; $7b97: $e7
	scf                                              ; $7b98: $37
	or   a                                           ; $7b99: $b7
	add  b                                           ; $7b9a: $80
	ld   hl, sp-$7f                                  ; $7b9b: $f8 $81
	rst  $38                                         ; $7b9d: $ff
	add  b                                           ; $7b9e: $80
	ldh  [$82], a                                    ; $7b9f: $e0 $82

jr_019_7ba1:
	ldh  a, [$82]                                    ; $7ba1: $f0 $82
	ld   hl, sp+$03                                  ; $7ba3: $f8 $03
	db   $fc                                         ; $7ba5: $fc
	inc  a                                           ; $7ba6: $3c
	jr   c, jr_019_7ba1                              ; $7ba7: $38 $f8

	add  b                                           ; $7ba9: $80
	ldh  [$88], a                                    ; $7baa: $e0 $88
	nop                                              ; $7bac: $00
	ld   b, $79                                      ; $7bad: $06 $79
	nop                                              ; $7baf: $00
	pop  hl                                          ; $7bb0: $e1
	nop                                              ; $7bb1: $00
	jr   jr_019_7bb4                                 ; $7bb2: $18 $00

jr_019_7bb4:
	ld   b, b                                        ; $7bb4: $40
	add  c                                           ; $7bb5: $81
	nop                                              ; $7bb6: $00
	add  b                                           ; $7bb7: $80
	ld   [bc], a                                     ; $7bb8: $02
	nop                                              ; $7bb9: $00
	ld   hl, $0181                                   ; $7bba: $21 $81 $01
	ld   b, $27                                      ; $7bbd: $06 $27
	nop                                              ; $7bbf: $00
	inc  b                                           ; $7bc0: $04
	nop                                              ; $7bc1: $00
	add  d                                           ; $7bc2: $82
	nop                                              ; $7bc3: $00
	ld   b, c                                        ; $7bc4: $41
	add  l                                           ; $7bc5: $85
	nop                                              ; $7bc6: $00
	add  b                                           ; $7bc7: $80
	add  c                                           ; $7bc8: $81
	db   $10                                         ; $7bc9: $10
	rst  $38                                         ; $7bca: $ff
	nop                                              ; $7bcb: $00
	ld   b, b                                        ; $7bcc: $40
	nop                                              ; $7bcd: $00
	ld   h, b                                        ; $7bce: $60
	nop                                              ; $7bcf: $00
	jr   nc, jr_019_7bd2                             ; $7bd0: $30 $00

jr_019_7bd2:
	cp   b                                           ; $7bd2: $b8
	nop                                              ; $7bd3: $00
	ld   a, h                                        ; $7bd4: $7c
	nop                                              ; $7bd5: $00
	ld   a, [hl-]                                    ; $7bd6: $3a
	nop                                              ; $7bd7: $00
	add  hl, de                                      ; $7bd8: $19
	nop                                              ; $7bd9: $00
	rst  $30                                         ; $7bda: $f7
	adc  c                                           ; $7bdb: $89
	nop                                              ; $7bdc: $00
	add  b                                           ; $7bdd: $80
	ld   [bc], a                                     ; $7bde: $02
	add  b                                           ; $7bdf: $80
	ld   c, $8b                                      ; $7be0: $0e $8b
	nop                                              ; $7be2: $00
	add  b                                           ; $7be3: $80
	ld   b, b                                        ; $7be4: $40
	add  b                                           ; $7be5: $80
	ret  nz                                          ; $7be6: $c0

	adc  e                                           ; $7be7: $8b
	nop                                              ; $7be8: $00
	dec  de                                          ; $7be9: $1b
	ld   bc, $9d00                                   ; $7bea: $01 $00 $9d
	ld   e, h                                        ; $7bed: $5c
	ld   [$63ab], sp                                 ; $7bee: $08 $ab $63
	rlca                                             ; $7bf1: $07

jr_019_7bf2:
	rst  $38                                         ; $7bf2: $ff
	ld   sp, hl                                      ; $7bf3: $f9
	rst  $38                                         ; $7bf4: $ff
	cp   $01                                         ; $7bf5: $fe $01
	rst  $38                                         ; $7bf7: $ff
	cp   $ff                                         ; $7bf8: $fe $ff
	add  b                                           ; $7bfa: $80
	nop                                              ; $7bfb: $00
	ld   a, h                                        ; $7bfc: $7c
	inc  bc                                          ; $7bfd: $03
	rrca                                             ; $7bfe: $0f
	ld   l, a                                        ; $7bff: $6f

jr_019_7c00:
	ld   h, a                                        ; $7c00: $67
	or   a                                           ; $7c01: $b7

jr_019_7c02:
	or   b                                           ; $7c02: $b0
	or   e                                           ; $7c03: $b3
	cp   a                                           ; $7c04: $bf
	dec  c                                           ; $7c05: $0d
	add  b                                           ; $7c06: $80
	db   $e4                                         ; $7c07: $e4
	dec  bc                                          ; $7c08: $0b
	inc  bc                                          ; $7c09: $03

jr_019_7c0a:
	ldh  [c], a                                      ; $7c0a: $e2
	db   $10                                         ; $7c0b: $10

jr_019_7c0c:
	ld   [bc], a                                     ; $7c0c: $02
	ld   c, $ff                                      ; $7c0d: $0e $ff
	di                                               ; $7c0f: $f3
	rst  $38                                         ; $7c10: $ff
	adc  [hl]                                        ; $7c11: $8e
	cp   $78                                         ; $7c12: $fe $78
	ld   hl, sp-$80                                  ; $7c14: $f8 $80
	ret  nz                                          ; $7c16: $c0

	add  h                                           ; $7c17: $84
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	ccf                                              ; $7c1a: $3f
	add  b                                           ; $7c1b: $80
	rla                                              ; $7c1c: $17
	inc  bc                                          ; $7c1d: $03
	dec  de                                          ; $7c1e: $1b
	cp   e                                           ; $7c1f: $bb
	dec  bc                                          ; $7c20: $0b
	adc  e                                           ; $7c21: $8b
	add  b                                           ; $7c22: $80
	dec  bc                                          ; $7c23: $0b
	ld   [$1909], sp                                 ; $7c24: $08 $09 $19
	ld   [bc], a                                     ; $7c27: $02
	ld   b, [hl]                                     ; $7c28: $46

jr_019_7c29:
	rlca                                             ; $7c29: $07
	ld   b, a                                        ; $7c2a: $47
	rlca                                             ; $7c2b: $07
	db   $f4                                         ; $7c2c: $f4
	ld   hl, sp-$7e                                  ; $7c2d: $f8 $82
	ldh  a, [rSC]                                    ; $7c2f: $f0 $02
	call nz, $f4c0                                   ; $7c31: $c4 $c0 $f4

jr_019_7c34:
	add  b                                           ; $7c34: $80
	ldh  a, [rSB]                                    ; $7c35: $f0 $01
	ld   [hl], b                                     ; $7c37: $70
	ld   a, a                                        ; $7c38: $7f
	add  b                                           ; $7c39: $80
	add  b                                           ; $7c3a: $80
	ld   bc, $3fc0                                   ; $7c3b: $01 $c0 $3f
	add  c                                           ; $7c3e: $81
	nop                                              ; $7c3f: $00
	ld   c, $08                                      ; $7c40: $0e $08
	nop                                              ; $7c42: $00
	ld   [$0100], sp                                 ; $7c43: $08 $00 $01
	nop                                              ; $7c46: $00
	ld   a, $00                                      ; $7c47: $3e $00
	pop  bc                                          ; $7c49: $c1
	nop                                              ; $7c4a: $00
	ld   c, $00                                      ; $7c4b: $0e $00
	ld   de, $1101                                   ; $7c4d: $11 $01 $11
	adc  e                                           ; $7c50: $8b
	ld   bc, $7101                                   ; $7c51: $01 $01 $71
	add  c                                           ; $7c54: $81
	add  b                                           ; $7c55: $80
	pop  bc                                          ; $7c56: $c1
	add  b                                           ; $7c57: $80
	di                                               ; $7c58: $f3
	adc  b                                           ; $7c59: $88
	rst  $38                                         ; $7c5a: $ff
	inc  bc                                          ; $7c5b: $03
	call nz, $e4c0                                   ; $7c5c: $c4 $c0 $e4
	ldh  [$80], a                                    ; $7c5f: $e0 $80
	ldh  a, [$80]                                    ; $7c61: $f0 $80
	ld   hl, sp-$80                                  ; $7c63: $f8 $80
	db   $fc                                         ; $7c65: $fc
	add  b                                           ; $7c66: $80
	cp   $82                                         ; $7c67: $fe $82
	rst  $38                                         ; $7c69: $ff
	inc  b                                           ; $7c6a: $04
	ld   a, a                                        ; $7c6b: $7f
	nop                                              ; $7c6c: $00
	ld   b, b                                        ; $7c6d: $40
	nop                                              ; $7c6e: $00
	jr   nz, jr_019_7bf2                             ; $7c6f: $20 $81

	nop                                              ; $7c71: $00
	add  hl, bc                                      ; $7c72: $09
	stop                                             ; $7c73: $10 $00
	jr   z, jr_019_7c97                              ; $7c75: $28 $20

	inc  [hl]                                        ; $7c77: $34
	jr   nc, jr_019_7c34                             ; $7c78: $30 $ba

	cp   b                                           ; $7c7a: $b8
	cp   $00                                         ; $7c7b: $fe $00
	add  b                                           ; $7c7d: $80
	jr   nz, jr_019_7c00                             ; $7c7e: $20 $80

Jump_019_7c80:
	jr   nc, jr_019_7c02                             ; $7c80: $30 $80

	db   $10                                         ; $7c82: $10
	add  [hl]                                        ; $7c83: $86
	nop                                              ; $7c84: $00
	add  b                                           ; $7c85: $80
	inc  e                                           ; $7c86: $1c
	add  d                                           ; $7c87: $82
	jr   c, jr_019_7c0a                              ; $7c88: $38 $80

	jr   nc, jr_019_7c0c                             ; $7c8a: $30 $80

	db   $10                                         ; $7c8c: $10
	add  l                                           ; $7c8d: $85
	nop                                              ; $7c8e: $00
	add  b                                           ; $7c8f: $80
	ret  nz                                          ; $7c90: $c0

	add  b                                           ; $7c91: $80
	ldh  [$80], a                                    ; $7c92: $e0 $80
	ret  nz                                          ; $7c94: $c0

	sub  l                                           ; $7c95: $95
	nop                                              ; $7c96: $00

jr_019_7c97:
	add  b                                           ; $7c97: $80
	inc  c                                           ; $7c98: $0c
	ld   [$007f], sp                                 ; $7c99: $08 $7f $00
	ret  nz                                          ; $7c9c: $c0

	nop                                              ; $7c9d: $00
	ld   bc, $8e00                                   ; $7c9e: $01 $00 $8e
	nop                                              ; $7ca1: $00
	jr   nc, jr_019_7c29                             ; $7ca2: $30 $85

	nop                                              ; $7ca4: $00
	ld   bc, $03f1                                   ; $7ca5: $01 $f1 $03
	add  b                                           ; $7ca8: $80
	inc  sp                                          ; $7ca9: $33
	dec  b                                           ; $7caa: $05
	pop  af                                          ; $7cab: $f1
	rst  $30                                         ; $7cac: $f7
	db   $f4                                         ; $7cad: $f4
	ret  nz                                          ; $7cae: $c0

	push af                                          ; $7caf: $f5
	dec  [hl]                                        ; $7cb0: $35
	add  b                                           ; $7cb1: $80
	db   $ed                                         ; $7cb2: $ed
	add  b                                           ; $7cb3: $80
	ld   [$0280], a                                  ; $7cb4: $ea $80 $02
	rlca                                             ; $7cb7: $07
	ld   a, a                                        ; $7cb8: $7f
	nop                                              ; $7cb9: $00
	rlca                                             ; $7cba: $07
	nop                                              ; $7cbb: $00
	jr   c, jr_019_7cbe                              ; $7cbc: $38 $00

jr_019_7cbe:
	ld   c, b                                        ; $7cbe: $48
	ld   [$a880], sp                                 ; $7cbf: $08 $80 $a8
	add  b                                           ; $7cc2: $80
	and  l                                           ; $7cc3: $a5
	add  b                                           ; $7cc4: $80
	xor  l                                           ; $7cc5: $ad
	add  b                                           ; $7cc6: $80
	db   $d3                                         ; $7cc7: $d3
	ld   bc, $0700                                   ; $7cc8: $01 $00 $07
	add  b                                           ; $7ccb: $80
	ld   l, a                                        ; $7ccc: $6f
	add  b                                           ; $7ccd: $80
	rst  $20                                         ; $7cce: $e7
	nop                                              ; $7ccf: $00
	rst  $10                                         ; $7cd0: $d7
	add  b                                           ; $7cd1: $80
	db   $db                                         ; $7cd2: $db
	add  b                                           ; $7cd3: $80
	call c, $df00                                    ; $7cd4: $dc $00 $df
	add  b                                           ; $7cd7: $80
	cp   a                                           ; $7cd8: $bf
	inc  bc                                          ; $7cd9: $03
	or   a                                           ; $7cda: $b7
	cp   h                                           ; $7cdb: $bc
	ei                                               ; $7cdc: $fb
	nop                                              ; $7cdd: $00
	add  d                                           ; $7cde: $82
	ret  nz                                          ; $7cdf: $c0

	inc  b                                           ; $7ce0: $04
	ldh  a, [$e0]                                    ; $7ce1: $f0 $e0
	rst  $20                                         ; $7ce3: $e7
	ldh  a, [$f8]                                    ; $7ce4: $f0 $f8
	add  b                                           ; $7ce6: $80
	rlca                                             ; $7ce7: $07
	add  b                                           ; $7ce8: $80
	add  b                                           ; $7ce9: $80
	ld   bc, $08f7                                   ; $7cea: $01 $f7 $08
	add  e                                           ; $7ced: $83
	nop                                              ; $7cee: $00
	inc  b                                           ; $7cef: $04
	stop                                             ; $7cf0: $10 $00
	rla                                              ; $7cf2: $17
	nop                                              ; $7cf3: $00
	ld   hl, sp-$80                                  ; $7cf4: $f8 $80
	nop                                              ; $7cf6: $00
	add  hl, bc                                      ; $7cf7: $09
	rlca                                             ; $7cf8: $07
	rra                                              ; $7cf9: $1f
	ld   h, [hl]                                     ; $7cfa: $66
	sbc  [hl]                                        ; $7cfb: $9e
	nop                                              ; $7cfc: $00
	and  b                                           ; $7cfd: $a0
	nop                                              ; $7cfe: $00
	add  b                                           ; $7cff: $80

Call_019_7d00:
	nop                                              ; $7d00: $00
	ret  nz                                          ; $7d01: $c0

	add  a                                           ; $7d02: $87
	nop                                              ; $7d03: $00
	ld   [bc], a                                     ; $7d04: $02
	ld   bc, $0100                                   ; $7d05: $01 $00 $01
	adc  c                                           ; $7d08: $89
	nop                                              ; $7d09: $00
	ld   [$0001], sp                                 ; $7d0a: $08 $01 $00
	ld   bc, $c000                                   ; $7d0d: $01 $00 $c0
	nop                                              ; $7d10: $00
	jr   c, jr_019_7d13                              ; $7d11: $38 $00

jr_019_7d13:
	add  a                                           ; $7d13: $87
	add  c                                           ; $7d14: $81
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	ld   b, b                                        ; $7d17: $40
	add  c                                           ; $7d18: $81
	nop                                              ; $7d19: $00
	add  b                                           ; $7d1a: $80
	ld   [bc], a                                     ; $7d1b: $02
	nop                                              ; $7d1c: $00
	ld   hl, $0181                                   ; $7d1d: $21 $81 $01
	ld   [bc], a                                     ; $7d20: $02
	ld   h, c                                        ; $7d21: $61
	ld   bc, $8181                                   ; $7d22: $01 $81 $81
	ld   bc, $0382                                   ; $7d25: $01 $82 $03
	add  b                                           ; $7d28: $80
	rlca                                             ; $7d29: $07
	sbc  b                                           ; $7d2a: $98
	rst  $38                                         ; $7d2b: $ff
	add  hl, bc                                      ; $7d2c: $09
	rst  $28                                         ; $7d2d: $ef
	rst  $38                                         ; $7d2e: $ff
	rst  $20                                         ; $7d2f: $e7
	rst  $38                                         ; $7d30: $ff
	ldh  [c], a                                      ; $7d31: $e2
	rst  $38                                         ; $7d32: $ff
	db   $ec                                         ; $7d33: $ec
	ld   hl, sp-$03                                  ; $7d34: $f8 $fd
	db   $fc                                         ; $7d36: $fc
	add  d                                           ; $7d37: $82
	cp   $80                                         ; $7d38: $fe $80
	rst  $38                                         ; $7d3a: $ff
	ld   b, $fb                                      ; $7d3b: $06 $fb
	rst  $38                                         ; $7d3d: $ff
	ld   sp, hl                                      ; $7d3e: $f9
	rst  $38                                         ; $7d3f: $ff
	add  sp, -$01                                    ; $7d40: $e8 $ff
	ld   [$0083], a                                  ; $7d42: $ea $83 $00
	nop                                              ; $7d45: $00
	add  b                                           ; $7d46: $80
	add  d                                           ; $7d47: $82
	nop                                              ; $7d48: $00
	dec  b                                           ; $7d49: $05
	ld   b, b                                        ; $7d4a: $40
	ret  nz                                          ; $7d4b: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $7d4c: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $7d4e: $e0 $a0
	add  l                                           ; $7d50: $85
	nop                                              ; $7d51: $00
	add  b                                           ; $7d52: $80
	ld   bc, $030e                                   ; $7d53: $01 $0e $03
	ld   [bc], a                                     ; $7d56: $02
	ld   b, $04                                      ; $7d57: $06 $04
	inc  c                                           ; $7d59: $0c
	add  hl, bc                                      ; $7d5a: $09
	jr   jr_019_7d6f                                 ; $7d5b: $18 $12

	jr   nc, jr_019_7d83                             ; $7d5d: $30 $24

	ld   h, b                                        ; $7d5f: $60
	ld   c, b                                        ; $7d60: $48
	ret  nz                                          ; $7d61: $c0

	sub  b                                           ; $7d62: $90
	add  b                                           ; $7d63: $80
	add  b                                           ; $7d64: $80
	jr   nz, jr_019_7d6c                             ; $7d65: $20 $05

	ld   b, b                                        ; $7d67: $40
	nop                                              ; $7d68: $00
	ret  nz                                          ; $7d69: $c0

	ld   d, b                                        ; $7d6a: $50
	ret  nz                                          ; $7d6b: $c0

jr_019_7d6c:
	ldh  a, [$89]                                    ; $7d6c: $f0 $89
	nop                                              ; $7d6e: $00

jr_019_7d6f:
	add  b                                           ; $7d6f: $80

jr_019_7d70:
	add  b                                           ; $7d70: $80
	add  b                                           ; $7d71: $80
	ret  nz                                          ; $7d72: $c0

	add  b                                           ; $7d73: $80
	rst  $28                                         ; $7d74: $ef
	add  b                                           ; $7d75: $80
	ld   [hl], b                                     ; $7d76: $70
	add  b                                           ; $7d77: $80
	cp   a                                           ; $7d78: $bf
	ld   b, $0e                                      ; $7d79: $06 $0e
	adc  $b1                                         ; $7d7b: $ce $b1
	add  b                                           ; $7d7d: $80
	inc  c                                           ; $7d7e: $0c
	nop                                              ; $7d7f: $00
	dec  b                                           ; $7d80: $05
	add  b                                           ; $7d81: $80
	inc  bc                                          ; $7d82: $03

jr_019_7d83:
	ld   [bc], a                                     ; $7d83: $02
	ld   [bc], a                                     ; $7d84: $02
	and  c                                           ; $7d85: $a1
	ld   e, e                                        ; $7d86: $5b
	add  b                                           ; $7d87: $80
	ld   [$4d80], a                                  ; $7d88: $ea $80 $4d
	add  b                                           ; $7d8b: $80
	ld   a, $0b                                      ; $7d8c: $3e $0b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d8e: $cf
	rrca                                             ; $7d8f: $0f
	inc  sp                                          ; $7d90: $33
	inc  bc                                          ; $7d91: $03
	call z, $f300                                    ; $7d92: $cc $00 $f3
	ret  nz                                          ; $7d95: $c0

	rrca                                             ; $7d96: $0f
	ld   a, b                                        ; $7d97: $78
	ld   hl, sp-$41                                  ; $7d98: $f8 $bf
	add  b                                           ; $7d9a: $80
	or   b                                           ; $7d9b: $b0
	rlca                                             ; $7d9c: $07
	jr   c, @+$7a                                    ; $7d9d: $38 $78

	cp   h                                           ; $7d9f: $bc
	db   $fc                                         ; $7da0: $fc
	rst  JumpTable                                         ; $7da1: $df
	rst  $38                                         ; $7da2: $ff
	ldh  [rIE], a                                    ; $7da3: $e0 $ff
	add  b                                           ; $7da5: $80
	nop                                              ; $7da6: $00
	db   $10                                         ; $7da7: $10
	jr   c, jr_019_7d70                              ; $7da8: $38 $c6

	rrca                                             ; $7daa: $0f
	inc  c                                           ; $7dab: $0c
	rra                                              ; $7dac: $1f
	jr   jr_019_7dee                                 ; $7dad: $18 $3f

	ld   sp, $637f                                   ; $7daf: $31 $7f $63
	cp   $c6                                         ; $7db2: $fe $c6
	ld   c, c                                        ; $7db4: $49
	add  c                                           ; $7db5: $81
	ld   e, [hl]                                     ; $7db6: $5e
	ld   e, b                                        ; $7db7: $58
	ld   e, $8b                                      ; $7db8: $1e $8b
	nop                                              ; $7dba: $00
	ld   [bc], a                                     ; $7dbb: $02
	ld   bc, $0100                                   ; $7dbc: $01 $00 $01
	adc  c                                           ; $7dbf: $89
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	add  b                                           ; $7dc2: $80
	add  c                                           ; $7dc3: $81
	nop                                              ; $7dc4: $00
	xor  l                                           ; $7dc5: $ad
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	adc  $91                                         ; $7dc8: $ce $91
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	cp   [hl]                                        ; $7dcc: $be
	adc  c                                           ; $7dcd: $89
	nop                                              ; $7dce: $00
	ld   [bc], a                                     ; $7dcf: $02
	cp   [hl]                                        ; $7dd0: $be
	dec  [hl]                                        ; $7dd1: $35
	rlca                                             ; $7dd2: $07
	adc  l                                           ; $7dd3: $8d
	nop                                              ; $7dd4: $00
	ld   [bc], a                                     ; $7dd5: $02
	ld   h, e                                        ; $7dd6: $63
	ld   l, [hl]                                     ; $7dd7: $6e
	add  c                                           ; $7dd8: $81
	adc  c                                           ; $7dd9: $89
	nop                                              ; $7dda: $00
	dec  bc                                          ; $7ddb: $0b
	cp   [hl]                                        ; $7ddc: $be
	inc  sp                                          ; $7ddd: $33
	ld   a, c                                        ; $7dde: $79
	ld   bc, $0103                                   ; $7ddf: $01 $03 $01
	rrca                                             ; $7de2: $0f
	ld   bc, $0103                                   ; $7de3: $01 $03 $01
	rlca                                             ; $7de6: $07
	inc  c                                           ; $7de7: $0c
	add  l                                           ; $7de8: $85
	nop                                              ; $7de9: $00
	ld   bc, $bf4f                                   ; $7dea: $01 $4f $bf
	adc  c                                           ; $7ded: $89

jr_019_7dee:
	nop                                              ; $7dee: $00
	dec  bc                                          ; $7def: $0b
	cp   [hl]                                        ; $7df0: $be
	inc  sp                                          ; $7df1: $33
	ld   l, c                                        ; $7df2: $69
	ld   bc, $0103                                   ; $7df3: $01 $03 $01
	rrca                                             ; $7df6: $0f
	ld   bc, $0103                                   ; $7df7: $01 $03 $01
	rlca                                             ; $7dfa: $07
	inc  e                                           ; $7dfb: $1c
	add  l                                           ; $7dfc: $85
	nop                                              ; $7dfd: $00
	ld   bc, $bf4f                                   ; $7dfe: $01 $4f $bf
	adc  c                                           ; $7e01: $89
	nop                                              ; $7e02: $00
	ld   [bc], a                                     ; $7e03: $02
	cp   [hl]                                        ; $7e04: $be
	inc  sp                                          ; $7e05: $33
	ld   a, l                                        ; $7e06: $7d
	adc  [hl]                                        ; $7e07: $8e
	nop                                              ; $7e08: $00
	ld   bc, $bf4f                                   ; $7e09: $01 $4f $bf
	adc  c                                           ; $7e0c: $89
	nop                                              ; $7e0d: $00
	rlca                                             ; $7e0e: $07
	cp   [hl]                                        ; $7e0f: $be
	inc  sp                                          ; $7e10: $33
	ld   a, l                                        ; $7e11: $7d
	jr   nz, jr_019_7e15                             ; $7e12: $20 $01

	inc  bc                                          ; $7e14: $03

jr_019_7e15:
	ld   bc, $8923                                   ; $7e15: $01 $23 $89
	nop                                              ; $7e18: $00
	ld   bc, $bf4f                                   ; $7e19: $01 $4f $bf
	adc  c                                           ; $7e1c: $89
	nop                                              ; $7e1d: $00
	rlca                                             ; $7e1e: $07
	cp   [hl]                                        ; $7e1f: $be
	inc  sp                                          ; $7e20: $33
	ld   a, l                                        ; $7e21: $7d
	jr   nc, jr_019_7e25                             ; $7e22: $30 $01

	inc  bc                                          ; $7e24: $03

jr_019_7e25:
	ld   bc, $8933                                   ; $7e25: $01 $33 $89
	nop                                              ; $7e28: $00
	ld   bc, $bf4f                                   ; $7e29: $01 $4f $bf
	adc  c                                           ; $7e2c: $89
	nop                                              ; $7e2d: $00
	ld   [bc], a                                     ; $7e2e: $02
	cp   [hl]                                        ; $7e2f: $be
	inc  sp                                          ; $7e30: $33
	ld   a, l                                        ; $7e31: $7d
	adc  [hl]                                        ; $7e32: $8e
	nop                                              ; $7e33: $00
	ld   bc, $bf4f                                   ; $7e34: $01 $4f $bf
	adc  c                                           ; $7e37: $89
	nop                                              ; $7e38: $00
	ld   [bc], a                                     ; $7e39: $02
	cp   [hl]                                        ; $7e3a: $be
	jr   nc, jr_019_7e3e                             ; $7e3b: $30 $01

	adc  [hl]                                        ; $7e3d: $8e

jr_019_7e3e:
	nop                                              ; $7e3e: $00
	ld   bc, $bf30                                   ; $7e3f: $01 $30 $bf
	adc  c                                           ; $7e42: $89
	nop                                              ; $7e43: $00
	ld   [bc], a                                     ; $7e44: $02
	cp   [hl]                                        ; $7e45: $be
	inc  sp                                          ; $7e46: $33
	ld   a, l                                        ; $7e47: $7d
	adc  [hl]                                        ; $7e48: $8e
	nop                                              ; $7e49: $00
	ld   bc, $bf4f                                   ; $7e4a: $01 $4f $bf
	adc  c                                           ; $7e4d: $89
	nop                                              ; $7e4e: $00
	ld   [bc], a                                     ; $7e4f: $02
	cp   [hl]                                        ; $7e50: $be
	inc  sp                                          ; $7e51: $33
	ld   a, l                                        ; $7e52: $7d
	adc  [hl]                                        ; $7e53: $8e
	nop                                              ; $7e54: $00
	ld   bc, $bf4f                                   ; $7e55: $01 $4f $bf
	adc  c                                           ; $7e58: $89
	nop                                              ; $7e59: $00
	ld   a, [bc]                                     ; $7e5a: $0a
	cp   [hl]                                        ; $7e5b: $be
	inc  sp                                          ; $7e5c: $33
	ld   d, c                                        ; $7e5d: $51
	ld   bc, $0103                                   ; $7e5e: $01 $03 $01
	rlca                                             ; $7e61: $07
	ld   bc, $0103                                   ; $7e62: $01 $03 $01
	dec  hl                                          ; $7e65: $2b
	add  [hl]                                        ; $7e66: $86
	nop                                              ; $7e67: $00
	ld   bc, $bf4f                                   ; $7e68: $01 $4f $bf
	adc  c                                           ; $7e6b: $89
	nop                                              ; $7e6c: $00
	ld   a, [bc]                                     ; $7e6d: $0a
	cp   [hl]                                        ; $7e6e: $be
	inc  sp                                          ; $7e6f: $33
	ld   b, c                                        ; $7e70: $41
	ld   bc, $0103                                   ; $7e71: $01 $03 $01
	rlca                                             ; $7e74: $07
	ld   bc, $0103                                   ; $7e75: $01 $03 $01
	dec  sp                                          ; $7e78: $3b
	add  [hl]                                        ; $7e79: $86
	nop                                              ; $7e7a: $00
	ld   bc, $bf4f                                   ; $7e7b: $01 $4f $bf
	adc  c                                           ; $7e7e: $89
	nop                                              ; $7e7f: $00
	ld   [bc], a                                     ; $7e80: $02
	cp   [hl]                                        ; $7e81: $be
	inc  sp                                          ; $7e82: $33
	ld   a, l                                        ; $7e83: $7d
	add  a                                           ; $7e84: $87
	nop                                              ; $7e85: $00
	ld   bc, $0301                                   ; $7e86: $01 $01 $03
	add  d                                           ; $7e89: $82
	nop                                              ; $7e8a: $00
	ld   [bc], a                                     ; $7e8b: $02
	ld   bc, $bf4c                                   ; $7e8c: $01 $4c $bf
	adc  c                                           ; $7e8f: $89
	nop                                              ; $7e90: $00
	dec  bc                                          ; $7e91: $0b
	cp   [hl]                                        ; $7e92: $be
	inc  sp                                          ; $7e93: $33
	ld   e, c                                        ; $7e94: $59
	ld   bc, $0103                                   ; $7e95: $01 $03 $01
	ld   a, [hl+]                                    ; $7e98: $2a
	dec  h                                           ; $7e99: $25
	ld   bc, $0103                                   ; $7e9a: $01 $03 $01
	dec  hl                                          ; $7e9d: $2b
	add  b                                           ; $7e9e: $80
	ld   de, $0082                                   ; $7e9f: $11 $82 $00
	ld   [bc], a                                     ; $7ea2: $02
	inc  de                                          ; $7ea3: $13
	ld   e, h                                        ; $7ea4: $5c
	cp   a                                           ; $7ea5: $bf
	adc  c                                           ; $7ea6: $89
	nop                                              ; $7ea7: $00
	dec  bc                                          ; $7ea8: $0b
	cp   [hl]                                        ; $7ea9: $be
	inc  sp                                          ; $7eaa: $33
	ld   c, c                                        ; $7eab: $49
	ld   bc, $0103                                   ; $7eac: $01 $03 $01
	ld   a, [hl+]                                    ; $7eaf: $2a
	dec  h                                           ; $7eb0: $25
	ld   bc, $0103                                   ; $7eb1: $01 $03 $01
	dec  sp                                          ; $7eb4: $3b
	add  b                                           ; $7eb5: $80
	ld   de, $0082                                   ; $7eb6: $11 $82 $00
	ld   [bc], a                                     ; $7eb9: $02
	inc  de                                          ; $7eba: $13
	ld   e, h                                        ; $7ebb: $5c
	cp   a                                           ; $7ebc: $bf
	adc  c                                           ; $7ebd: $89
	nop                                              ; $7ebe: $00
	ld   [bc], a                                     ; $7ebf: $02
	cp   [hl]                                        ; $7ec0: $be
	ld   e, [hl]                                     ; $7ec1: $5e
	db   $10                                         ; $7ec2: $10
	add  a                                           ; $7ec3: $87
	nop                                              ; $7ec4: $00
	ld   bc, $100e                                   ; $7ec5: $01 $0e $10
	add  d                                           ; $7ec8: $82
	nop                                              ; $7ec9: $00
	ld   [bc], a                                     ; $7eca: $02
	ld   de, $bf40                                   ; $7ecb: $11 $40 $bf
	adc  c                                           ; $7ece: $89
	nop                                              ; $7ecf: $00
	ld   [bc], a                                     ; $7ed0: $02
	cp   [hl]                                        ; $7ed1: $be
	ld   a, $2e                                      ; $7ed2: $3e $2e
	adc  [hl]                                        ; $7ed4: $8e
	nop                                              ; $7ed5: $00
	ld   bc, $af01                                   ; $7ed6: $01 $01 $af
	adc  c                                           ; $7ed9: $89
	nop                                              ; $7eda: $00
	ld   [bc], a                                     ; $7edb: $02
	cp   [hl]                                        ; $7edc: $be
	jr   nc, jr_019_7ee0                             ; $7edd: $30 $01

	add  h                                           ; $7edf: $84

jr_019_7ee0:
	nop                                              ; $7ee0: $00
	ld   [bc], a                                     ; $7ee1: $02
	dec  c                                           ; $7ee2: $0d
	ld   b, $0b                                      ; $7ee3: $06 $0b
	add  l                                           ; $7ee5: $85
	nop                                              ; $7ee6: $00
	ld   bc, $bf30                                   ; $7ee7: $01 $30 $bf
	adc  c                                           ; $7eea: $89
	nop                                              ; $7eeb: $00
	ld   bc, $4ebe                                   ; $7eec: $01 $be $4e
	add  l                                           ; $7eef: $85
	nop                                              ; $7ef0: $00
	ld   [bc], a                                     ; $7ef1: $02
	ld   [hl], a                                     ; $7ef2: $77
	ld   c, $79                                      ; $7ef3: $0e $79
	add  l                                           ; $7ef5: $85
	nop                                              ; $7ef6: $00
	ld   bc, $bf4f                                   ; $7ef7: $01 $4f $bf
	adc  c                                           ; $7efa: $89
	nop                                              ; $7efb: $00
	ld   [bc], a                                     ; $7efc: $02
	cp   [hl]                                        ; $7efd: $be
	jr   nc, jr_019_7f01                             ; $7efe: $30 $01

	add  e                                           ; $7f00: $83

jr_019_7f01:
	nop                                              ; $7f01: $00
	inc  b                                           ; $7f02: $04
	dec  c                                           ; $7f03: $0d
	ld   bc, $0700                                   ; $7f04: $01 $00 $07
	dec  bc                                          ; $7f07: $0b
	add  h                                           ; $7f08: $84
	nop                                              ; $7f09: $00
	ld   bc, $bf30                                   ; $7f0a: $01 $30 $bf
	adc  c                                           ; $7f0d: $89
	nop                                              ; $7f0e: $00
	ld   bc, $4ebe                                   ; $7f0f: $01 $be $4e
	add  h                                           ; $7f12: $84
	nop                                              ; $7f13: $00
	inc  b                                           ; $7f14: $04
	ld   [hl], a                                     ; $7f15: $77
	rrca                                             ; $7f16: $0f
	nop                                              ; $7f17: $00
	ld   bc, $8479                                   ; $7f18: $01 $79 $84
	nop                                              ; $7f1b: $00
	ld   bc, $bf4f                                   ; $7f1c: $01 $4f $bf
	adc  c                                           ; $7f1f: $89
	nop                                              ; $7f20: $00
	ld   bc, $4ebe                                   ; $7f21: $01 $be $4e
	add  e                                           ; $7f24: $83
	nop                                              ; $7f25: $00
	ld   bc, $0172                                   ; $7f26: $01 $72 $01
	add  c                                           ; $7f29: $81
	nop                                              ; $7f2a: $00
	ld   bc, $7407                                   ; $7f2b: $01 $07 $74
	add  e                                           ; $7f2e: $83
	nop                                              ; $7f2f: $00
	ld   bc, $bf4f                                   ; $7f30: $01 $4f $bf
	adc  c                                           ; $7f33: $89
	nop                                              ; $7f34: $00
	ld   [bc], a                                     ; $7f35: $02
	cp   [hl]                                        ; $7f36: $be
	jr   nc, jr_019_7f3a                             ; $7f37: $30 $01

	add  d                                           ; $7f39: $82

jr_019_7f3a:
	nop                                              ; $7f3a: $00
	ld   bc, $750a                                   ; $7f3b: $01 $0a $75
	add  c                                           ; $7f3e: $81
	nop                                              ; $7f3f: $00
	ld   bc, $0976                                   ; $7f40: $01 $76 $09
	add  e                                           ; $7f43: $83
	nop                                              ; $7f44: $00
	ld   bc, $bf30                                   ; $7f45: $01 $30 $bf
	adc  c                                           ; $7f48: $89
	nop                                              ; $7f49: $00
	ld   bc, $4ebe                                   ; $7f4a: $01 $be $4e
	add  e                                           ; $7f4d: $83
	nop                                              ; $7f4e: $00
	add  b                                           ; $7f4f: $80
	ld   [hl], l                                     ; $7f50: $75
	add  c                                           ; $7f51: $81
	nop                                              ; $7f52: $00
	add  b                                           ; $7f53: $80
	halt                                             ; $7f54: $76
	add  e                                           ; $7f55: $83
	nop                                              ; $7f56: $00
	ld   bc, $bf4f                                   ; $7f57: $01 $4f $bf
	adc  c                                           ; $7f5a: $89
	nop                                              ; $7f5b: $00
	ld   bc, $4ebe                                   ; $7f5c: $01 $be $4e
	add  e                                           ; $7f5f: $83
	nop                                              ; $7f60: $00
	ld   bc, $0f77                                   ; $7f61: $01 $77 $0f
	add  c                                           ; $7f64: $81
	nop                                              ; $7f65: $00
	ld   bc, $7901                                   ; $7f66: $01 $01 $79
	add  e                                           ; $7f69: $83
	nop                                              ; $7f6a: $00
	ld   bc, $bf4f                                   ; $7f6b: $01 $4f $bf
	adc  c                                           ; $7f6e: $89
	nop                                              ; $7f6f: $00
	rlca                                             ; $7f70: $07
	cp   [hl]                                        ; $7f71: $be
	ld   c, [hl]                                     ; $7f72: $4e
	nop                                              ; $7f73: $00
	jr   nc, jr_019_7f77                             ; $7f74: $30 $01

	inc  bc                                          ; $7f76: $03

jr_019_7f77:
	ld   b, b                                        ; $7f77: $40
	ld   bc, $0083                                   ; $7f78: $01 $83 $00
	ld   bc, $7407                                   ; $7f7b: $01 $07 $74
	add  d                                           ; $7f7e: $82
	nop                                              ; $7f7f: $00
	ld   bc, $bf4f                                   ; $7f80: $01 $4f $bf
	adc  c                                           ; $7f83: $89
	nop                                              ; $7f84: $00
	ld   bc, $4ebe                                   ; $7f85: $01 $be $4e
	add  d                                           ; $7f88: $82
	nop                                              ; $7f89: $00
	add  b                                           ; $7f8a: $80
	ld   [hl], l                                     ; $7f8b: $75
	ld   b, $00                                      ; $7f8c: $06 $00
	ld   h, b                                        ; $7f8e: $60
	ld   bc, $0103                                   ; $7f8f: $01 $03 $01
	dec  d                                           ; $7f92: $15
	halt                                             ; $7f93: $76
	add  d                                           ; $7f94: $82
	nop                                              ; $7f95: $00
	ld   bc, $bf4f                                   ; $7f96: $01 $4f $bf
	adc  c                                           ; $7f99: $89
	nop                                              ; $7f9a: $00
	ld   [bc], a                                     ; $7f9b: $02
	cp   [hl]                                        ; $7f9c: $be
	jr   nc, jr_019_7fa0                             ; $7f9d: $30 $01

	add  c                                           ; $7f9f: $81

jr_019_7fa0:
	nop                                              ; $7fa0: $00
	ld   [$750a], sp                                 ; $7fa1: $08 $0a $75
	nop                                              ; $7fa4: $00
	ld   l, b                                        ; $7fa5: $68
	ld   bc, $0103                                   ; $7fa6: $01 $03 $01
	dec  e                                           ; $7fa9: $1d
	add  hl, bc                                      ; $7faa: $09
	add  d                                           ; $7fab: $82
	nop                                              ; $7fac: $00
	ld   bc, $bf30                                   ; $7fad: $01 $30 $bf
	adc  c                                           ; $7fb0: $89
	nop                                              ; $7fb1: $00
	ld   bc, $4ebe                                   ; $7fb2: $01 $be $4e
	add  d                                           ; $7fb5: $82
	nop                                              ; $7fb6: $00
	add  b                                           ; $7fb7: $80
	ld   [hl], l                                     ; $7fb8: $75
	ld   b, $00                                      ; $7fb9: $06 $00
	ld   h, h                                        ; $7fbb: $64
	ld   bc, $0103                                   ; $7fbc: $01 $03 $01
	ld   de, $8276                                   ; $7fbf: $11 $76 $82
	nop                                              ; $7fc2: $00
	ld   bc, $bf4f                                   ; $7fc3: $01 $4f $bf
	adc  c                                           ; $7fc6: $89
	nop                                              ; $7fc7: $00
	ld   bc, $4ebe                                   ; $7fc8: $01 $be $4e
	add  d                                           ; $7fcb: $82
	nop                                              ; $7fcc: $00
	add  b                                           ; $7fcd: $80
	ld   [hl], l                                     ; $7fce: $75
	ld   b, $00                                      ; $7fcf: $06 $00
	ld   l, h                                        ; $7fd1: $6c
	ld   bc, $0103                                   ; $7fd2: $01 $03 $01
	add  hl, de                                      ; $7fd5: $19
	halt                                             ; $7fd6: $76
	add  d                                           ; $7fd7: $82
	nop                                              ; $7fd8: $00
	ld   bc, $bf4f                                   ; $7fd9: $01 $4f $bf
	adc  c                                           ; $7fdc: $89
	nop                                              ; $7fdd: $00
	rlca                                             ; $7fde: $07
	cp   [hl]                                        ; $7fdf: $be
	ld   c, [hl]                                     ; $7fe0: $4e
	inc  l                                           ; $7fe1: $2c
	ld   bc, $0103                                   ; $7fe2: $01 $03 $01
	ld   e, b                                        ; $7fe5: $58
	rrca                                             ; $7fe6: $0f
	add  e                                           ; $7fe7: $83
	nop                                              ; $7fe8: $00
	ld   bc, $7901                                   ; $7fe9: $01 $01 $79
	add  d                                           ; $7fec: $82
	nop                                              ; $7fed: $00
	ld   bc, $bf4f                                   ; $7fee: $01 $4f $bf
	adc  c                                           ; $7ff1: $89
