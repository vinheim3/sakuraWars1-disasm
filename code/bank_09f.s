; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09f", ROMX[$4000], BANK[$9f]

	ld   a, d                                        ; $4000: $7a
	ld   bc, $ff01                                   ; $4001: $01 $01 $ff
	nop                                              ; $4004: $00
	add  b                                           ; $4005: $80
	ld   a, e                                        ; $4006: $7b
	add  b                                           ; $4007: $80
	ld   b, h                                        ; $4008: $44
	ld   b, $48                                      ; $4009: $06 $48
	ld   c, e                                        ; $400b: $4b
	ld   d, e                                        ; $400c: $53
	ld   d, a                                        ; $400d: $57
	daa                                              ; $400e: $27
	cpl                                              ; $400f: $2f
	ld   c, a                                        ; $4010: $4f
	add  l                                           ; $4011: $85
	ld   e, a                                        ; $4012: $5f
	rlca                                             ; $4013: $07
	ccf                                              ; $4014: $3f
	cpl                                              ; $4015: $2f
	ld   e, a                                        ; $4016: $5f
	ld   d, a                                        ; $4017: $57
	ld   c, a                                        ; $4018: $4f
	ld   c, e                                        ; $4019: $4b
	ld   b, a                                        ; $401a: $47
	ld   b, h                                        ; $401b: $44
	add  b                                           ; $401c: $80
	ld   a, e                                        ; $401d: $7b
	add  d                                           ; $401e: $82
	nop                                              ; $401f: $00
	ld   [bc], a                                     ; $4020: $02
	add  b                                           ; $4021: $80
	cp   a                                           ; $4022: $bf
	ccf                                              ; $4023: $3f
	add  b                                           ; $4024: $80
	ld   a, a                                        ; $4025: $7f
	add  d                                           ; $4026: $82
	ei                                               ; $4027: $fb
	add  b                                           ; $4028: $80
	ld   a, [$fb86]                                  ; $4029: $fa $86 $fb
	add  d                                           ; $402c: $82
	ld   a, [$fd80]                                  ; $402d: $fa $80 $fd
	inc  bc                                          ; $4030: $03
	ld   a, a                                        ; $4031: $7f
	rst  $38                                         ; $4032: $ff
	cp   a                                           ; $4033: $bf
	ccf                                              ; $4034: $3f
	add  d                                           ; $4035: $82
	nop                                              ; $4036: $00
	add  d                                           ; $4037: $82
	rst  $38                                         ; $4038: $ff
	add  d                                           ; $4039: $82
	db   $dd                                         ; $403a: $dd
	add  b                                           ; $403b: $80
	dec  c                                           ; $403c: $0d
	add  h                                           ; $403d: $84
	db   $dd                                         ; $403e: $dd
	add  b                                           ; $403f: $80
	dec  e                                           ; $4040: $1d
	add  b                                           ; $4041: $80
	call $de80                                       ; $4042: $cd $80 $de
	add  b                                           ; $4045: $80
	ccf                                              ; $4046: $3f
	add  d                                           ; $4047: $82
	rst  $38                                         ; $4048: $ff
	add  d                                           ; $4049: $82
	nop                                              ; $404a: $00
	add  b                                           ; $404b: $80
	rst  $38                                         ; $404c: $ff
	add  b                                           ; $404d: $80
	xor  a                                           ; $404e: $af
	add  b                                           ; $404f: $80
	xor  l                                           ; $4050: $ad
	add  b                                           ; $4051: $80
	db   $fd                                         ; $4052: $fd
	add  b                                           ; $4053: $80
	db   $fc                                         ; $4054: $fc
	add  b                                           ; $4055: $80
	db   $fd                                         ; $4056: $fd
	add  d                                           ; $4057: $82
	ld   a, [$fb80]                                  ; $4058: $fa $80 $fb
	add  b                                           ; $405b: $80
	db   $eb                                         ; $405c: $eb
	add  b                                           ; $405d: $80
	jp   c, $3d80                                    ; $405e: $da $80 $3d

	add  d                                           ; $4061: $82
	rst  $38                                         ; $4062: $ff
	add  d                                           ; $4063: $82
	nop                                              ; $4064: $00
	add  d                                           ; $4065: $82
	rst  $38                                         ; $4066: $ff
	add  d                                           ; $4067: $82
	db   $dd                                         ; $4068: $dd
	add  b                                           ; $4069: $80
	db   $18, $80                                    ; $406a: $18 $80
	db   $dd                                         ; $406c: $dd
	add  d                                           ; $406d: $82
	xor  l                                           ; $406e: $ad
	add  d                                           ; $406f: $82
	ld   l, l                                        ; $4070: $6d
	add  b                                           ; $4071: $80
	db   $eb                                         ; $4072: $eb
	add  b                                           ; $4073: $80
	rst  JumpTable                                         ; $4074: $df
	add  d                                           ; $4075: $82
	rst  $38                                         ; $4076: $ff
	add  d                                           ; $4077: $82
	nop                                              ; $4078: $00
	add  d                                           ; $4079: $82
	rst  $38                                         ; $407a: $ff
	add  b                                           ; $407b: $80
	db   $fd                                         ; $407c: $fd
	add  b                                           ; $407d: $80
	db   $dd                                         ; $407e: $dd
	add  b                                           ; $407f: $80

Jump_09f_4080:
	ld   l, l                                        ; $4080: $6d

Call_09f_4081:
	add  b                                           ; $4081: $80
	xor  l                                           ; $4082: $ad
	add  b                                           ; $4083: $80
	xor  h                                           ; $4084: $ac
	add  b                                           ; $4085: $80
	xor  e                                           ; $4086: $ab
	add  h                                           ; $4087: $84
	cp   a                                           ; $4088: $bf
	add  b                                           ; $4089: $80
	ld   a, h                                        ; $408a: $7c
	add  d                                           ; $408b: $82
	rst  $38                                         ; $408c: $ff
	add  c                                           ; $408d: $81
	nop                                              ; $408e: $00
	ld   [bc], a                                     ; $408f: $02
	ld   bc, $fcfd                                   ; $4090: $01 $fd $fc
	add  b                                           ; $4093: $80
	cp   $80                                         ; $4094: $fe $80
	cp   a                                           ; $4096: $bf
	add  b                                           ; $4097: $80
	rst  JumpTable                                         ; $4098: $df
	add  d                                           ; $4099: $82
	rst  $38                                         ; $409a: $ff
	add  b                                           ; $409b: $80
	ccf                                              ; $409c: $3f
	add  [hl]                                        ; $409d: $86
	rst  JumpTable                                         ; $409e: $df
	add  b                                           ; $409f: $80
	ccf                                              ; $40a0: $3f
	inc  bc                                          ; $40a1: $03
	cp   $ff                                         ; $40a2: $fe $ff
	db   $fd                                         ; $40a4: $fd
	db   $fc                                         ; $40a5: $fc
	add  c                                           ; $40a6: $81
	nop                                              ; $40a7: $00
	ld   [bc], a                                     ; $40a8: $02
	add  b                                           ; $40a9: $80
	cp   a                                           ; $40aa: $bf
	ccf                                              ; $40ab: $3f
	add  b                                           ; $40ac: $80
	ld   a, a                                        ; $40ad: $7f
	add  d                                           ; $40ae: $82
	rst  $38                                         ; $40af: $ff
	add  b                                           ; $40b0: $80
	db   $fc                                         ; $40b1: $fc
	add  b                                           ; $40b2: $80
	ei                                               ; $40b3: $fb
	adc  b                                           ; $40b4: $88
	rst  $38                                         ; $40b5: $ff
	add  b                                           ; $40b6: $80
	cp   $03                                         ; $40b7: $fe $03
	ld   a, a                                        ; $40b9: $7f
	rst  $38                                         ; $40ba: $ff
	cp   a                                           ; $40bb: $bf
	ccf                                              ; $40bc: $3f
	add  d                                           ; $40bd: $82
	nop                                              ; $40be: $00
	add  [hl]                                        ; $40bf: $86
	rst  $38                                         ; $40c0: $ff
	add  b                                           ; $40c1: $80
	inc  a                                           ; $40c2: $3c
	add  b                                           ; $40c3: $80
	db   $db                                         ; $40c4: $db
	add  [hl]                                        ; $40c5: $86
	rst  $28                                         ; $40c6: $ef
	add  b                                           ; $40c7: $80
	rst  JumpTable                                         ; $40c8: $df
	add  b                                           ; $40c9: $80
	ld   a, $82                                      ; $40ca: $3e $82
	rst  $38                                         ; $40cc: $ff
	add  d                                           ; $40cd: $82
	nop                                              ; $40ce: $00
	add  b                                           ; $40cf: $80
	rst  $38                                         ; $40d0: $ff
	add  b                                           ; $40d1: $80
	xor  a                                           ; $40d2: $af
	add  b                                           ; $40d3: $80
	xor  [hl]                                        ; $40d4: $ae
	add  b                                           ; $40d5: $80
	cp   $80                                         ; $40d6: $fe $80
	jr   c, @-$7e                                    ; $40d8: $38 $80

	rst  JumpTable                                         ; $40da: $df
	add  b                                           ; $40db: $80
	add  sp, -$7e                                    ; $40dc: $e8 $82
	rst  $28                                         ; $40de: $ef
	add  b                                           ; $40df: $80
	db   $eb                                         ; $40e0: $eb
	add  b                                           ; $40e1: $80
	db   $dd                                         ; $40e2: $dd
	add  b                                           ; $40e3: $80
	ld   a, $82                                      ; $40e4: $3e $82
	rst  $38                                         ; $40e6: $ff
	add  d                                           ; $40e7: $82
	nop                                              ; $40e8: $00
	add  d                                           ; $40e9: $82
	rst  $38                                         ; $40ea: $ff
	add  d                                           ; $40eb: $82
	db   $fd                                         ; $40ec: $fd
	add  b                                           ; $40ed: $80
	ld   [$7d80], sp                                 ; $40ee: $08 $80 $7d
	add  b                                           ; $40f1: $80
	dec  c                                           ; $40f2: $0d
	add  b                                           ; $40f3: $80
	db   $dd                                         ; $40f4: $dd
	add  d                                           ; $40f5: $82
	db   $fd                                         ; $40f6: $fd
	add  b                                           ; $40f7: $80
	ei                                               ; $40f8: $fb
	add  b                                           ; $40f9: $80
	ccf                                              ; $40fa: $3f
	add  d                                           ; $40fb: $82
	rst  $38                                         ; $40fc: $ff
	add  d                                           ; $40fd: $82
	nop                                              ; $40fe: $00
	add  b                                           ; $40ff: $80
	rst  $38                                         ; $4100: $ff
	add  b                                           ; $4101: $80
	and  e                                           ; $4102: $a3
	add  b                                           ; $4103: $80
	dec  bc                                          ; $4104: $0b
	add  b                                           ; $4105: $80
	db   $eb                                         ; $4106: $eb
	add  b                                           ; $4107: $80
	dec  hl                                          ; $4108: $2b
	add  b                                           ; $4109: $80
	ret                                              ; $410a: $c9


	add  b                                           ; $410b: $80
	rra                                              ; $410c: $1f
	add  b                                           ; $410d: $80
	pop  hl                                          ; $410e: $e1
	add  b                                           ; $410f: $80
	dec  c                                           ; $4110: $0d
	add  b                                           ; $4111: $80
	ld   c, e                                        ; $4112: $4b
	add  d                                           ; $4113: $82
	ld   d, e                                        ; $4114: $53
	add  b                                           ; $4115: $80
	dec  c                                           ; $4116: $0d
	add  b                                           ; $4117: $80
	rst  $38                                         ; $4118: $ff
	add  d                                           ; $4119: $82
	nop                                              ; $411a: $00
	add  b                                           ; $411b: $80
	rst  $38                                         ; $411c: $ff
	add  b                                           ; $411d: $80
	rst  $30                                         ; $411e: $f7
	add  b                                           ; $411f: $80
	add  b                                           ; $4120: $80
	add  b                                           ; $4121: $80
	cp   [hl]                                        ; $4122: $be
	add  b                                           ; $4123: $80
	rst  $38                                         ; $4124: $ff
	add  b                                           ; $4125: $80
	pop  bc                                          ; $4126: $c1
	add  d                                           ; $4127: $82
	rst  $30                                         ; $4128: $f7
	add  b                                           ; $4129: $80
	pop  de                                          ; $412a: $d1
	add  d                                           ; $412b: $82
	rst  $10                                         ; $412c: $d7
	add  b                                           ; $412d: $80
	and  a                                           ; $412e: $a7
	add  b                                           ; $412f: $80
	cp   b                                           ; $4130: $b8
	add  b                                           ; $4131: $80
	rst  $38                                         ; $4132: $ff
	ld   bc, $ff00                                   ; $4133: $01 $00 $ff
	db   $fd                                         ; $4136: $fd
	nop                                              ; $4137: $00
	inc  b                                           ; $4138: $04
	rst  $38                                         ; $4139: $ff
	nop                                              ; $413a: $00
	add  b                                           ; $413b: $80
	cp   a                                           ; $413c: $bf
	ccf                                              ; $413d: $3f
	add  b                                           ; $413e: $80
	ld   a, a                                        ; $413f: $7f
	sub  d                                           ; $4140: $92
	rst  $38                                         ; $4141: $ff
	inc  bc                                          ; $4142: $03
	ld   a, a                                        ; $4143: $7f
	rst  $38                                         ; $4144: $ff
	cp   a                                           ; $4145: $bf
	ccf                                              ; $4146: $3f
	add  d                                           ; $4147: $82
	nop                                              ; $4148: $00
	add  b                                           ; $4149: $80
	rst  $38                                         ; $414a: $ff
	add  b                                           ; $414b: $80
	rst  JumpTable                                         ; $414c: $df
	add  b                                           ; $414d: $80
	xor  a                                           ; $414e: $af
	add  b                                           ; $414f: $80
	ret  c                                           ; $4150: $d8

	add  b                                           ; $4151: $80
	dec  bc                                          ; $4152: $0b
	add  [hl]                                        ; $4153: $86
	db   $eb                                         ; $4154: $eb
	add  b                                           ; $4155: $80
	db   $db                                         ; $4156: $db
	add  b                                           ; $4157: $80
	cp   e                                           ; $4158: $bb
	add  b                                           ; $4159: $80
	ld   a, b                                        ; $415a: $78
	add  d                                           ; $415b: $82
	rst  $38                                         ; $415c: $ff
	add  d                                           ; $415d: $82
	nop                                              ; $415e: $00
	add  h                                           ; $415f: $84
	rst  $38                                         ; $4160: $ff
	add  b                                           ; $4161: $80
	db   $10                                         ; $4162: $10
	adc  h                                           ; $4163: $8c
	rst  $10                                         ; $4164: $d7
	add  b                                           ; $4165: $80
	db   $10                                         ; $4166: $10
	add  d                                           ; $4167: $82
	rst  $38                                         ; $4168: $ff
	add  d                                           ; $4169: $82
	nop                                              ; $416a: $00
	add  h                                           ; $416b: $84
	rst  $38                                         ; $416c: $ff
	add  b                                           ; $416d: $80
	ccf                                              ; $416e: $3f
	add  d                                           ; $416f: $82
	cp   a                                           ; $4170: $bf
	add  b                                           ; $4171: $80
	xor  a                                           ; $4172: $af
	add  b                                           ; $4173: $80
	or   b                                           ; $4174: $b0
	add  h                                           ; $4175: $84
	cp   a                                           ; $4176: $bf
	add  b                                           ; $4177: $80
	ccf                                              ; $4178: $3f
	add  d                                           ; $4179: $82
	rst  $38                                         ; $417a: $ff
	add  d                                           ; $417b: $82
	nop                                              ; $417c: $00
	add  b                                           ; $417d: $80
	rst  $38                                         ; $417e: $ff
	add  d                                           ; $417f: $82
	cp   $80                                         ; $4180: $fe $80
	ldh  a, [$82]                                    ; $4182: $f0 $82
	rst  $30                                         ; $4184: $f7
	add  b                                           ; $4185: $80
	rst  $28                                         ; $4186: $ef
	add  b                                           ; $4187: $80
	ccf                                              ; $4188: $3f
	add  d                                           ; $4189: $82
	cp   $80                                         ; $418a: $fe $80
	db   $fd                                         ; $418c: $fd
	add  b                                           ; $418d: $80
	ei                                               ; $418e: $fb
	add  d                                           ; $418f: $82
	rst  $38                                         ; $4190: $ff
	add  d                                           ; $4191: $82
	nop                                              ; $4192: $00
	add  b                                           ; $4193: $80
	rst  $38                                         ; $4194: $ff
	add  b                                           ; $4195: $80
	rst  $30                                         ; $4196: $f7
	add  b                                           ; $4197: $80
	ld   b, c                                        ; $4198: $41
	add  b                                           ; $4199: $80
	sbc  l                                           ; $419a: $9d
	add  b                                           ; $419b: $80
	pop  bc                                          ; $419c: $c1
	add  b                                           ; $419d: $80
	ld   e, l                                        ; $419e: $5d
	add  b                                           ; $419f: $80
	add  c                                           ; $41a0: $81
	add  b                                           ; $41a1: $80
	rst  JumpTable                                         ; $41a2: $df
	add  b                                           ; $41a3: $80
	sub  a                                           ; $41a4: $97
	add  b                                           ; $41a5: $80
	sub  l                                           ; $41a6: $95
	add  b                                           ; $41a7: $80
	ld   e, e                                        ; $41a8: $5b
	add  b                                           ; $41a9: $80
	ld   d, e                                        ; $41aa: $53
	add  b                                           ; $41ab: $80
	ld   c, l                                        ; $41ac: $4d
	add  b                                           ; $41ad: $80
	rst  $38                                         ; $41ae: $ff
	add  d                                           ; $41af: $82
	nop                                              ; $41b0: $00
	add  b                                           ; $41b1: $80
	rst  $38                                         ; $41b2: $ff
	add  b                                           ; $41b3: $80
	cp   $80                                         ; $41b4: $fe $80
	ld   a, [$fc80]                                  ; $41b6: $fa $80 $fc
	add  b                                           ; $41b9: $80
	cp   $80                                         ; $41ba: $fe $80
	ld   a, [$fc80]                                  ; $41bc: $fa $80 $fc
	add  b                                           ; $41bf: $80
	cp   $80                                         ; $41c0: $fe $80
	db   $fd                                         ; $41c2: $fd
	add  b                                           ; $41c3: $80
	db   $fc                                         ; $41c4: $fc
	add  d                                           ; $41c5: $82
	ei                                               ; $41c6: $fb
	add  b                                           ; $41c7: $80
	ld   a, [$ff80]                                  ; $41c8: $fa $80 $ff
	add  d                                           ; $41cb: $82
	nop                                              ; $41cc: $00
	add  b                                           ; $41cd: $80
	rst  $38                                         ; $41ce: $ff
	add  b                                           ; $41cf: $80
	rra                                              ; $41d0: $1f
	add  b                                           ; $41d1: $80
	rst  JumpTable                                         ; $41d2: $df
	add  b                                           ; $41d3: $80
	rra                                              ; $41d4: $1f
	add  b                                           ; $41d5: $80
	rst  JumpTable                                         ; $41d6: $df
	add  b                                           ; $41d7: $80
	rrca                                             ; $41d8: $0f
	add  b                                           ; $41d9: $80
	cpl                                              ; $41da: $2f
	add  b                                           ; $41db: $80
	rrca                                             ; $41dc: $0f

jr_09f_41dd:
	add  b                                           ; $41dd: $80
	rst  $38                                         ; $41de: $ff
	add  b                                           ; $41df: $80
	rra                                              ; $41e0: $1f
	add  b                                           ; $41e1: $80
	ld   e, a                                        ; $41e2: $5f
	add  b                                           ; $41e3: $80
	cp   a                                           ; $41e4: $bf
	add  b                                           ; $41e5: $80
	ld   c, a                                        ; $41e6: $4f
	add  b                                           ; $41e7: $80
	rst  $38                                         ; $41e8: $ff
	add  d                                           ; $41e9: $82
	nop                                              ; $41ea: $00
	add  b                                           ; $41eb: $80
	rst  $38                                         ; $41ec: $ff
	add  b                                           ; $41ed: $80
	or   [hl]                                        ; $41ee: $b6
	add  b                                           ; $41ef: $80
	push de                                          ; $41f0: $d5
	add  b                                           ; $41f1: $80
	add  b                                           ; $41f2: $80
	add  b                                           ; $41f3: $80
	cp   [hl]                                        ; $41f4: $be
	add  b                                           ; $41f5: $80
	add  b                                           ; $41f6: $80
	add  b                                           ; $41f7: $80
	db   $dd                                         ; $41f8: $dd
	add  b                                           ; $41f9: $80
	pop  bc                                          ; $41fa: $c1
	add  b                                           ; $41fb: $80
	rst  $30                                         ; $41fc: $f7
	add  b                                           ; $41fd: $80
	pop  bc                                          ; $41fe: $c1
	add  d                                           ; $41ff: $82
	rst  $30                                         ; $4200: $f7
	add  b                                           ; $4201: $80
	add  b                                           ; $4202: $80
	add  b                                           ; $4203: $80
	rst  $38                                         ; $4204: $ff
	add  d                                           ; $4205: $82
	nop                                              ; $4206: $00
	add  b                                           ; $4207: $80
	rst  $38                                         ; $4208: $ff
	add  b                                           ; $4209: $80
	rst  $28                                         ; $420a: $ef
	add  b                                           ; $420b: $80
	ld   bc, $7d80                                   ; $420c: $01 $80 $7d
	add  b                                           ; $420f: $80
	add  e                                           ; $4210: $83
	add  h                                           ; $4211: $84
	rst  $28                                         ; $4212: $ef
	add  b                                           ; $4213: $80
	add  e                                           ; $4214: $83
	add  b                                           ; $4215: $80
	rst  $28                                         ; $4216: $ef
	add  b                                           ; $4217: $80
	db   $eb                                         ; $4218: $eb
	add  b                                           ; $4219: $80
	db   $ed                                         ; $421a: $ed
	add  b                                           ; $421b: $80
	ld   bc, $ff80                                   ; $421c: $01 $80 $ff
	add  d                                           ; $421f: $82
	nop                                              ; $4220: $00
	sbc  d                                           ; $4221: $9a
	rst  $38                                         ; $4222: $ff
	add  c                                           ; $4223: $81
	nop                                              ; $4224: $00
	ld   [bc], a                                     ; $4225: $02
	add  b                                           ; $4226: $80
	cp   a                                           ; $4227: $bf
	ccf                                              ; $4228: $3f
	add  b                                           ; $4229: $80
	ld   a, a                                        ; $422a: $7f
	add  b                                           ; $422b: $80
	rst  $38                                         ; $422c: $ff
	add  b                                           ; $422d: $80
	cp   $82                                         ; $422e: $fe $82
	rst  $38                                         ; $4230: $ff
	add  b                                           ; $4231: $80
	cp   $84                                         ; $4232: $fe $84
	rst  $38                                         ; $4234: $ff
	add  b                                           ; $4235: $80
	cp   $80                                         ; $4236: $fe $80
	rst  $38                                         ; $4238: $ff
	inc  bc                                          ; $4239: $03
	ld   a, a                                        ; $423a: $7f
	rst  $38                                         ; $423b: $ff
	cp   a                                           ; $423c: $bf
	ccf                                              ; $423d: $3f
	add  d                                           ; $423e: $82
	nop                                              ; $423f: $00
	add  h                                           ; $4240: $84
	rst  $38                                         ; $4241: $ff
	add  b                                           ; $4242: $80
	ccf                                              ; $4243: $3f
	add  b                                           ; $4244: $80
	call z, $ff80                                    ; $4245: $cc $80 $ff
	add  b                                           ; $4248: $80
	ccf                                              ; $4249: $3f
	add  b                                           ; $424a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $424b: $cf
	add  d                                           ; $424c: $82
	rst  $38                                         ; $424d: $ff
	add  b                                           ; $424e: $80
	ccf                                              ; $424f: $3f
	add  b                                           ; $4250: $80
	ret  z                                           ; $4251: $c8

	add  d                                           ; $4252: $82
	rst  $38                                         ; $4253: $ff
	add  d                                           ; $4254: $82
	nop                                              ; $4255: $00
	add  d                                           ; $4256: $82
	rst  $38                                         ; $4257: $ff
	add  d                                           ; $4258: $82
	ei                                               ; $4259: $fb
	add  b                                           ; $425a: $80
	jr   jr_09f_41dd                                 ; $425b: $18 $80

	ei                                               ; $425d: $fb
	add  b                                           ; $425e: $80
	rst  $30                                         ; $425f: $f7
	add  h                                           ; $4260: $84
	rst  $38                                         ; $4261: $ff
	add  b                                           ; $4262: $80
	cp   $80                                         ; $4263: $fe $80
	dec  c                                           ; $4265: $0d
	add  d                                           ; $4266: $82
	rst  $38                                         ; $4267: $ff
	add  d                                           ; $4268: $82
	nop                                              ; $4269: $00
	add  b                                           ; $426a: $80
	rst  $38                                         ; $426b: $ff
	add  d                                           ; $426c: $82
	ld   e, a                                        ; $426d: $5f
	add  b                                           ; $426e: $80
	rst  $38                                         ; $426f: $ff
	add  b                                           ; $4270: $80
	rra                                              ; $4271: $1f
	add  b                                           ; $4272: $80
	ld   a, a                                        ; $4273: $7f
	add  b                                           ; $4274: $80
	ld   l, a                                        ; $4275: $6f
	add  b                                           ; $4276: $80
	ld   [hl], b                                     ; $4277: $70
	add  d                                           ; $4278: $82
	ld   a, a                                        ; $4279: $7f
	add  [hl]                                        ; $427a: $86
	rst  $38                                         ; $427b: $ff
	add  d                                           ; $427c: $82
	nop                                              ; $427d: $00
	add  h                                           ; $427e: $84
	rst  $38                                         ; $427f: $ff
	add  d                                           ; $4280: $82
	ei                                               ; $4281: $fb
	add  d                                           ; $4282: $82
	rst  $30                                         ; $4283: $f7
	add  b                                           ; $4284: $80
	cpl                                              ; $4285: $2f
	add  b                                           ; $4286: $80
	xor  $80                                         ; $4287: $ee $80
	rst  JumpTable                                         ; $4289: $df
	add  b                                           ; $428a: $80
	ret  nz                                          ; $428b: $c0

	add  b                                           ; $428c: $80
	rst  JumpTable                                         ; $428d: $df
	add  d                                           ; $428e: $82
	rst  $38                                         ; $428f: $ff
	add  c                                           ; $4290: $81
	nop                                              ; $4291: $00
	ld   [bc], a                                     ; $4292: $02
	ld   bc, $fcfd                                   ; $4293: $01 $fd $fc
	add  b                                           ; $4296: $80
	cp   $8c                                         ; $4297: $fe $8c
	rst  $38                                         ; $4299: $ff
	add  h                                           ; $429a: $84
	ld   a, a                                        ; $429b: $7f
	inc  bc                                          ; $429c: $03
	cp   $ff                                         ; $429d: $fe $ff
	db   $fd                                         ; $429f: $fd
	db   $fc                                         ; $42a0: $fc
	add  d                                           ; $42a1: $82
	nop                                              ; $42a2: $00
	add  b                                           ; $42a3: $80
	rst  $38                                         ; $42a4: $ff
	add  b                                           ; $42a5: $80
	ld   h, c                                        ; $42a6: $61
	add  b                                           ; $42a7: $80
	cp   l                                           ; $42a8: $bd
	add  b                                           ; $42a9: $80
	di                                               ; $42aa: $f3
	add  b                                           ; $42ab: $80
	ld   hl, $a580                                   ; $42ac: $21 $80 $a5
	add  b                                           ; $42af: $80
	and  c                                           ; $42b0: $a1
	add  b                                           ; $42b1: $80
	ld   h, l                                        ; $42b2: $65
	add  b                                           ; $42b3: $80
	ld   h, c                                        ; $42b4: $61
	add  d                                           ; $42b5: $82
	and  l                                           ; $42b6: $a5
	add  b                                           ; $42b7: $80
	cp   a                                           ; $42b8: $bf
	add  b                                           ; $42b9: $80
	ld   b, c                                        ; $42ba: $41
	add  b                                           ; $42bb: $80
	rst  $38                                         ; $42bc: $ff
	add  d                                           ; $42bd: $82
	nop                                              ; $42be: $00
	add  b                                           ; $42bf: $80
	rst  $38                                         ; $42c0: $ff
	add  b                                           ; $42c1: $80
	db   $eb                                         ; $42c2: $eb
	add  b                                           ; $42c3: $80
	ldh  [$80], a                                    ; $42c4: $e0 $80
	rst  JumpTable                                         ; $42c6: $df
	add  b                                           ; $42c7: $80
	sub  b                                           ; $42c8: $90
	add  b                                           ; $42c9: $80
	rst  JumpTable                                         ; $42ca: $df
	add  b                                           ; $42cb: $80
	ret  nc                                          ; $42cc: $d0

	add  b                                           ; $42cd: $80
	rst  JumpTable                                         ; $42ce: $df
	add  b                                           ; $42cf: $80
	ret  nc                                          ; $42d0: $d0

	add  h                                           ; $42d1: $84
	sub  $80                                         ; $42d2: $d6 $80
	ret  nc                                          ; $42d4: $d0

	add  b                                           ; $42d5: $80
	rst  $38                                         ; $42d6: $ff
	rrca                                             ; $42d7: $0f
	nop                                              ; $42d8: $00
	rst  $38                                         ; $42d9: $ff
	nop                                              ; $42da: $00
	ret  nz                                          ; $42db: $c0

	nop                                              ; $42dc: $00
	jr   nz, jr_09f_431f                             ; $42dd: $20 $40

	ld   d, b                                        ; $42df: $50
	ld   h, b                                        ; $42e0: $60
	ld   l, b                                        ; $42e1: $68
	ld   [hl], b                                     ; $42e2: $70
	ld   [hl], h                                     ; $42e3: $74
	ld   a, b                                        ; $42e4: $78
	ld   a, d                                        ; $42e5: $7a
	ld   a, h                                        ; $42e6: $7c
	ld   a, l                                        ; $42e7: $7d
	add  c                                           ; $42e8: $81
	ld   a, [hl]                                     ; $42e9: $7e
	ld   c, $7f                                      ; $42ea: $0e $7f
	ld   a, h                                        ; $42ec: $7c
	ld   a, [hl]                                     ; $42ed: $7e
	ld   a, b                                        ; $42ee: $78
	ld   a, h                                        ; $42ef: $7c
	ld   [hl], b                                     ; $42f0: $70
	ld   a, b                                        ; $42f1: $78
	ld   h, b                                        ; $42f2: $60
	ld   [hl], b                                     ; $42f3: $70
	ld   b, b                                        ; $42f4: $40
	ld   h, b                                        ; $42f5: $60
	nop                                              ; $42f6: $00
	ret  nz                                          ; $42f7: $c0

	nop                                              ; $42f8: $00
	rst  $38                                         ; $42f9: $ff
	add  b                                           ; $42fa: $80
	nop                                              ; $42fb: $00
	add  b                                           ; $42fc: $80
	rst  $38                                         ; $42fd: $ff
	add  b                                           ; $42fe: $80
	db   $db                                         ; $42ff: $db
	add  b                                           ; $4300: $80
	ret  nz                                          ; $4301: $c0

	add  b                                           ; $4302: $80
	and  l                                           ; $4303: $a5
	add  b                                           ; $4304: $80
	db   $ed                                         ; $4305: $ed
	add  b                                           ; $4306: $80
	rst  JumpTable                                         ; $4307: $df
	add  b                                           ; $4308: $80
	ret  nc                                          ; $4309: $d0

	add  b                                           ; $430a: $80
	add  [hl]                                        ; $430b: $86
	add  b                                           ; $430c: $80
	ret  nc                                          ; $430d: $d0

	add  b                                           ; $430e: $80
	add  [hl]                                        ; $430f: $86
	add  b                                           ; $4310: $80
	add  b                                           ; $4311: $80
	add  b                                           ; $4312: $80
	sub  [hl]                                        ; $4313: $96
	add  b                                           ; $4314: $80
	ret  nc                                          ; $4315: $d0

	add  b                                           ; $4316: $80
	rst  $38                                         ; $4317: $ff
	add  c                                           ; $4318: $81
	nop                                              ; $4319: $00
	ld   [bc], a                                     ; $431a: $02
	add  b                                           ; $431b: $80
	cp   a                                           ; $431c: $bf
	ccf                                              ; $431d: $3f
	add  b                                           ; $431e: $80

jr_09f_431f:
	ld   a, a                                        ; $431f: $7f
	add  d                                           ; $4320: $82
	rst  $38                                         ; $4321: $ff
	add  b                                           ; $4322: $80
	db   $fc                                         ; $4323: $fc
	adc  d                                           ; $4324: $8a
	rst  $38                                         ; $4325: $ff
	add  b                                           ; $4326: $80
	cp   $03                                         ; $4327: $fe $03
	ld   a, a                                        ; $4329: $7f
	rst  $38                                         ; $432a: $ff
	cp   a                                           ; $432b: $bf
	ccf                                              ; $432c: $3f
	add  c                                           ; $432d: $81
	nop                                              ; $432e: $00
	ld   [bc], a                                     ; $432f: $02
	ld   bc, $fcfd                                   ; $4330: $01 $fd $fc
	add  b                                           ; $4333: $80
	cp   [hl]                                        ; $4334: $be
	add  b                                           ; $4335: $80
	cp   a                                           ; $4336: $bf
	adc  b                                           ; $4337: $88
	ld   a, a                                        ; $4338: $7f
	add  [hl]                                        ; $4339: $86
	rst  $38                                         ; $433a: $ff
	dec  b                                           ; $433b: $05
	cp   $ff                                         ; $433c: $fe $ff
	db   $fd                                         ; $433e: $fd
	db   $fc                                         ; $433f: $fc
	nop                                              ; $4340: $00
	rst  $38                                         ; $4341: $ff
	rst  $38                                         ; $4342: $ff
	nop                                              ; $4343: $00
	rst  $38                                         ; $4344: $ff
	nop                                              ; $4345: $00
	rst  $38                                         ; $4346: $ff
	nop                                              ; $4347: $00
	rst  $38                                         ; $4348: $ff
	nop                                              ; $4349: $00
	rst  $38                                         ; $434a: $ff
	nop                                              ; $434b: $00
	ld   hl, sp+$00                                  ; $434c: $f8 $00
	dec  de                                          ; $434e: $1b
	ld   bc, $ff07                                   ; $434f: $01 $07 $ff
	ldh  a, [rIE]                                    ; $4352: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4354: $cf
	rst  $38                                         ; $4355: $ff
	cp   a                                           ; $4356: $bf
	sbc  a                                           ; $4357: $9f
	rra                                              ; $4358: $1f
	add  b                                           ; $4359: $80
	ld   a, a                                        ; $435a: $7f
	add  b                                           ; $435b: $80
	rst  $38                                         ; $435c: $ff
	add  b                                           ; $435d: $80
	rst  JumpTable                                         ; $435e: $df
	add  b                                           ; $435f: $80
	cp   a                                           ; $4360: $bf
	add  b                                           ; $4361: $80
	ld   a, b                                        ; $4362: $78
	add  b                                           ; $4363: $80
	add  a                                           ; $4364: $87
	adc  b                                           ; $4365: $88
	rst  $38                                         ; $4366: $ff
	add  b                                           ; $4367: $80
	ei                                               ; $4368: $fb
	dec  bc                                          ; $4369: $0b
	nop                                              ; $436a: $00
	ccf                                              ; $436b: $3f
	rst  $38                                         ; $436c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $436d: $cf
	rst  $38                                         ; $436e: $ff
	rst  $30                                         ; $436f: $f7
	rst  $20                                         ; $4370: $e7
	db   $e3                                         ; $4371: $e3
	ei                                               ; $4372: $fb
	ld   sp, hl                                      ; $4373: $f9
	rst  $38                                         ; $4374: $ff
	cp   $80                                         ; $4375: $fe $80
	rst  $38                                         ; $4377: $ff
	add  b                                           ; $4378: $80
	rst  $28                                         ; $4379: $ef
	ld   de, $ee2f                                   ; $437a: $11 $2f $ee
	xor  [hl]                                        ; $437d: $ae
	push hl                                          ; $437e: $e5
	ret  nc                                          ; $437f: $d0

	ret  nz                                          ; $4380: $c0

	call z, $2340                                    ; $4381: $cc $40 $23
	db   $10                                         ; $4384: $10
	ld   [$4404], sp                                 ; $4385: $08 $04 $44
	ld   h, h                                        ; $4388: $64
	ld   d, d                                        ; $4389: $52
	ld   e, d                                        ; $438a: $5a
	ld   l, [hl]                                     ; $438b: $6e
	ld   l, a                                        ; $438c: $6f
	add  b                                           ; $438d: $80
	ld   e, l                                        ; $438e: $5d
	ld   [bc], a                                     ; $438f: $02
	db   $dd                                         ; $4390: $dd
	sbc  l                                           ; $4391: $9d
	ei                                               ; $4392: $fb
	add  b                                           ; $4393: $80
	dec  de                                          ; $4394: $1b
	inc  bc                                          ; $4395: $03
	inc  de                                          ; $4396: $13
	db   $d3                                         ; $4397: $d3
	ld   bc, $800d                                   ; $4398: $01 $0d $80
	ld   bc, $2002                                   ; $439b: $01 $02 $20
	xor  d                                           ; $439e: $aa
	db   $fd                                         ; $439f: $fd
	add  d                                           ; $43a0: $82
	cp   $80                                         ; $43a1: $fe $80
	db   $db                                         ; $43a3: $db
	add  c                                           ; $43a4: $81
	db   $dd                                         ; $43a5: $dd
	ld   b, $54                                      ; $43a6: $06 $54
	inc  b                                           ; $43a8: $04
	jr   nz, jr_09f_43ce                             ; $43a9: $20 $23

	jr   nz, jr_09f_4406                             ; $43ab: $20 $59

	rst  $30                                         ; $43ad: $f7
	add  b                                           ; $43ae: $80
	ld   a, [$fb02]                                  ; $43af: $fa $02 $fb
	ld   hl, sp+$7e                                  ; $43b2: $f8 $7e
	add  b                                           ; $43b4: $80
	ld   a, b                                        ; $43b5: $78
	inc  bc                                          ; $43b6: $03
	ld   [hl], b                                     ; $43b7: $70
	ld   [hl], e                                     ; $43b8: $73
	nop                                              ; $43b9: $00
	ret  z                                           ; $43ba: $c8

	add  b                                           ; $43bb: $80
	ld   b, $01                                      ; $43bc: $06 $01
	ld   [hl], $da                                   ; $43be: $36 $da
	add  c                                           ; $43c0: $81
	ld   e, d                                        ; $43c1: $5a
	add  [hl]                                        ; $43c2: $86
	ld   d, [hl]                                     ; $43c3: $56
	add  b                                           ; $43c4: $80
	ld   d, $03                                      ; $43c5: $16 $03
	ld   b, d                                        ; $43c7: $42
	ld   c, d                                        ; $43c8: $4a
	rst  $28                                         ; $43c9: $ef
	push hl                                          ; $43ca: $e5
	add  c                                           ; $43cb: $81
	db   $e4                                         ; $43cc: $e4
	nop                                              ; $43cd: $00

jr_09f_43ce:
	and  $80                                         ; $43ce: $e6 $80
	and  [hl]                                        ; $43d0: $a6
	nop                                              ; $43d1: $00
	and  d                                           ; $43d2: $a2
	add  b                                           ; $43d3: $80
	xor  d                                           ; $43d4: $aa
	add  b                                           ; $43d5: $80
	and  d                                           ; $43d6: $a2
	inc  bc                                          ; $43d7: $03
	xor  d                                           ; $43d8: $aa
	ld   [$c640], sp                                 ; $43d9: $08 $40 $c6
	add  b                                           ; $43dc: $80
	and  h                                           ; $43dd: $a4
	add  c                                           ; $43de: $81
	and  [hl]                                        ; $43df: $a6
	nop                                              ; $43e0: $00
	and  d                                           ; $43e1: $a2
	add  c                                           ; $43e2: $81
	xor  d                                           ; $43e3: $aa
	nop                                              ; $43e4: $00
	ld   a, [hl+]                                    ; $43e5: $2a
	add  b                                           ; $43e6: $80
	ld   l, d                                        ; $43e7: $6a
	inc  b                                           ; $43e8: $04
	ld   e, d                                        ; $43e9: $5a
	ld   d, b                                        ; $43ea: $50
	ld   d, c                                        ; $43eb: $51
	ldh  [c], a                                      ; $43ec: $e2
	cp   e                                           ; $43ed: $bb
	add  b                                           ; $43ee: $80
	db   $db                                         ; $43ef: $db
	add  h                                           ; $43f0: $84
	db   $dd                                         ; $43f1: $dd
	add  b                                           ; $43f2: $80
	dec  d                                           ; $43f3: $15
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	add  b                                           ; $43f6: $80
	and  d                                           ; $43f7: $a2
	ld   [bc], a                                     ; $43f8: $02
	ld   [$5a52], sp                                 ; $43f9: $08 $52 $5a
	add  b                                           ; $43fc: $80
	ld   e, e                                        ; $43fd: $5b
	add  h                                           ; $43fe: $84
	ld   l, e                                        ; $43ff: $6b
	add  b                                           ; $4400: $80
	ld   h, a                                        ; $4401: $67
	add  b                                           ; $4402: $80
	ld   l, a                                        ; $4403: $6f
	add  b                                           ; $4404: $80
	rla                                              ; $4405: $17

jr_09f_4406:
	ld   de, $ef0f                                   ; $4406: $11 $0f $ef
	pop  af                                          ; $4409: $f1
	ld   [hl], c                                     ; $440a: $71
	ld   l, [hl]                                     ; $440b: $6e
	nop                                              ; $440c: $00
	ret                                              ; $440d: $c9


	ld   [$042c], sp                                 ; $440e: $08 $2c $04
	sub  [hl]                                        ; $4411: $96
	ld   [bc], a                                     ; $4412: $02
	ld   d, d                                        ; $4413: $52
	sub  b                                           ; $4414: $90
	ld   sp, $7939                                   ; $4415: $31 $39 $79
	ret  z                                           ; $4418: $c8

	add  d                                           ; $4419: $82
	xor  d                                           ; $441a: $aa
	ld   bc, $727a                                   ; $441b: $01 $7a $72
	add  b                                           ; $441e: $80
	ld   a, d                                        ; $441f: $7a
	ld   bc, $33b3                                   ; $4420: $01 $b3 $33
	add  b                                           ; $4423: $80

jr_09f_4424:
	inc  de                                          ; $4424: $13
	inc  c                                           ; $4425: $0c
	add  e                                           ; $4426: $83
	and  e                                           ; $4427: $a3
	xor  b                                           ; $4428: $a8
	ld   b, b                                        ; $4429: $40
	ld   e, c                                        ; $442a: $59
	add  b                                           ; $442b: $80
	and  b                                           ; $442c: $a0
	ret  nz                                          ; $442d: $c0

	add  b                                           ; $442e: $80
	add  h                                           ; $442f: $84
	sub  h                                           ; $4430: $94
	add  b                                           ; $4431: $80
	sbc  [hl]                                        ; $4432: $9e
	add  c                                           ; $4433: $81
	nop                                              ; $4434: $00
	add  b                                           ; $4435: $80
	ld   b, b                                        ; $4436: $40
	inc  bc                                          ; $4437: $03
	rla                                              ; $4438: $17
	sub  [hl]                                        ; $4439: $96
	add  e                                           ; $443a: $83
	add  d                                           ; $443b: $82
	add  d                                           ; $443c: $82
	nop                                              ; $443d: $00
	add  b                                           ; $443e: $80
	ld   bc, $0080                                   ; $443f: $01 $80 $00
	add  b                                           ; $4442: $80
	db   $10                                         ; $4443: $10
	inc  b                                           ; $4444: $04
	jr   jr_09f_444f                                 ; $4445: $18 $08

	ld   l, a                                        ; $4447: $6f
	ld   b, $96                                      ; $4448: $06 $96
	add  b                                           ; $444a: $80
	ld   [bc], a                                     ; $444b: $02
	add  b                                           ; $444c: $80
	ld   c, $04                                      ; $444d: $0e $04

jr_09f_444f:
	ld   c, [hl]                                     ; $444f: $4e
	ld   e, [hl]                                     ; $4450: $5e
	ld   c, $ee                                      ; $4451: $0e $ee
	inc  e                                           ; $4453: $1c
	add  d                                           ; $4454: $82
	inc  c                                           ; $4455: $0c
	inc  d                                           ; $4456: $14
	rst  $38                                         ; $4457: $ff
	ld   e, e                                        ; $4458: $5b
	ld   c, b                                        ; $4459: $48
	ld   e, h                                        ; $445a: $5c
	ld   d, h                                        ; $445b: $54
	ld   e, [hl]                                     ; $445c: $5e
	ld   b, d                                        ; $445d: $42
	or   a                                           ; $445e: $b7
	or   e                                           ; $445f: $b3
	cp   c                                           ; $4460: $b9
	reti                                             ; $4461: $d9


	ld   a, h                                        ; $4462: $7c
	ld   l, h                                        ; $4463: $6c
	ld   a, [hl]                                     ; $4464: $7e
	ld   [hl], a                                     ; $4465: $77
	ld   a, a                                        ; $4466: $7f
	add  $1a                                         ; $4467: $c6 $1a
	ld   e, d                                        ; $4469: $5a
	ld   e, c                                        ; $446a: $59
	reti                                             ; $446b: $d9


	add  b                                           ; $446c: $80
	db   $eb                                         ; $446d: $eb
	add  b                                           ; $446e: $80
	ld   h, a                                        ; $446f: $67
	add  b                                           ; $4470: $80
	sbc  a                                           ; $4471: $9f
	dec  b                                           ; $4472: $05
	ld   a, [hl]                                     ; $4473: $7e
	cp   $78                                         ; $4474: $fe $78
	add  hl, sp                                      ; $4476: $39
	ld   bc, $81c3                                   ; $4477: $01 $c3 $81
	ld   h, e                                        ; $447a: $63
	nop                                              ; $447b: $00
	ld   [hl], e                                     ; $447c: $73
	add  c                                           ; $447d: $81
	ld   d, e                                        ; $447e: $53
	nop                                              ; $447f: $00
	ld   [hl], a                                     ; $4480: $77
	add  c                                           ; $4481: $81
	scf                                              ; $4482: $37
	add  b                                           ; $4483: $80
	or   a                                           ; $4484: $b7
	add  b                                           ; $4485: $80
	ld   d, a                                        ; $4486: $57
	ld   bc, $003f                                   ; $4487: $01 $3f $00
	add  b                                           ; $448a: $80
	jr   nz, jr_09f_44a0                             ; $448b: $20 $13

	ld   h, b                                        ; $448d: $60
	ld   b, b                                        ; $448e: $40
	ld   d, b                                        ; $448f: $50
	ld   b, b                                        ; $4490: $40
	ld   c, h                                        ; $4491: $4c
	ld   b, h                                        ; $4492: $44
	ld   b, [hl]                                     ; $4493: $46
	ld   b, b                                        ; $4494: $40
	ld   b, c                                        ; $4495: $41
	ld   b, d                                        ; $4496: $42
	nop                                              ; $4497: $00
	ld   bc, $08e4                                   ; $4498: $01 $e4 $08
	stop                                             ; $449b: $10 $00
	ld   c, h                                        ; $449d: $4c
	ld   c, b                                        ; $449e: $48
	inc  b                                           ; $449f: $04

jr_09f_44a0:
	nop                                              ; $44a0: $00
	add  b                                           ; $44a1: $80
	jr   jr_09f_4424                                 ; $44a2: $18 $80

	nop                                              ; $44a4: $00
	dec  b                                           ; $44a5: $05
	ld   bc, wType0AnimSpriteXPosRelativeTo                                   ; $44a6: $01 $00 $c6
	ld   bc, $08c9                                   ; $44a9: $01 $c9 $08
	add  b                                           ; $44ac: $80
	jr   jr_09f_44b5                                 ; $44ad: $18 $06

	ld   a, [de]                                     ; $44af: $1a
	ld   [de], a                                     ; $44b0: $12
	ld   [hl-], a                                    ; $44b1: $32
	ld   [hl+], a                                    ; $44b2: $22
	ld   h, [hl]                                     ; $44b3: $66
	ld   b, [hl]                                     ; $44b4: $46

jr_09f_44b5:
	add  $80                                         ; $44b5: $c6 $80
	ld   b, $80                                      ; $44b7: $06 $80
	add  [hl]                                        ; $44b9: $86
	inc  bc                                          ; $44ba: $03
	add  h                                           ; $44bb: $84
	add  c                                           ; $44bc: $81
	sub  e                                           ; $44bd: $93
	ld   d, a                                        ; $44be: $57
	add  b                                           ; $44bf: $80
	scf                                              ; $44c0: $37
	ld   bc, $7636                                   ; $44c1: $01 $36 $76
	add  b                                           ; $44c4: $80
	ld   h, a                                        ; $44c5: $67
	add  b                                           ; $44c6: $80
	ld   h, [hl]                                     ; $44c7: $66
	ld   [bc], a                                     ; $44c8: $02
	ld   h, a                                        ; $44c9: $67
	ld   h, [hl]                                     ; $44ca: $66
	ld   d, a                                        ; $44cb: $57
	add  b                                           ; $44cc: $80
	sub  $02                                         ; $44cd: $d6 $02
	ld   [hl], $e7                                   ; $44cf: $36 $e7
	rst  $30                                         ; $44d1: $f7
	add  b                                           ; $44d2: $80
	di                                               ; $44d3: $f3
	add  b                                           ; $44d4: $80
	inc  sp                                          ; $44d5: $33
	inc  bc                                          ; $44d6: $03
	ld   [hl], c                                     ; $44d7: $71
	or   c                                           ; $44d8: $b1
	ldh  a, [$30]                                    ; $44d9: $f0 $30
	add  b                                           ; $44db: $80
	or   b                                           ; $44dc: $b0
	inc  bc                                          ; $44dd: $03
	ld   [hl-], a                                    ; $44de: $32
	ld   [hl], d                                     ; $44df: $72
	or   $4a                                         ; $44e0: $f6 $4a
	add  c                                           ; $44e2: $81
	nop                                              ; $44e3: $00
	add  b                                           ; $44e4: $80
	jr   nz, jr_09f_44e7                             ; $44e5: $20 $00

jr_09f_44e7:
	ld   a, [hl]                                     ; $44e7: $7e
	add  c                                           ; $44e8: $81
	ld   [hl], b                                     ; $44e9: $70
	inc  b                                           ; $44ea: $04
	ld   a, a                                        ; $44eb: $7f
	ld   a, b                                        ; $44ec: $78
	ld   h, e                                        ; $44ed: $63
	ld   a, h                                        ; $44ee: $7c
	dec  e                                           ; $44ef: $1d
	add  b                                           ; $44f0: $80
	ld   a, [hl]                                     ; $44f1: $7e
	ld   [bc], a                                     ; $44f2: $02
	rst  ToBoot                                         ; $44f3: $c7
	ld   b, a                                        ; $44f4: $47
	ld   a, a                                        ; $44f5: $7f
	add  b                                           ; $44f6: $80
	ccf                                              ; $44f7: $3f
	add  b                                           ; $44f8: $80
	rra                                              ; $44f9: $1f
	ld   bc, $0001                                   ; $44fa: $01 $01 $00
	add  b                                           ; $44fd: $80
	ld   [bc], a                                     ; $44fe: $02
	inc  b                                           ; $44ff: $04
	add  e                                           ; $4500: $83
	nop                                              ; $4501: $00
	add  $00                                         ; $4502: $c6 $00
	sbc  l                                           ; $4504: $9d
	add  c                                           ; $4505: $81
	add  b                                           ; $4506: $80
	nop                                              ; $4507: $00
	ldh  a, [$81]                                    ; $4508: $f0 $81
	stop                                             ; $450a: $10 $00
	add  sp, -$80                                    ; $450c: $e8 $80
	inc  h                                           ; $450e: $24
	ld   b, $26                                      ; $450f: $06 $26
	add  $6e                                         ; $4511: $c6 $6e
	ld   l, $6e                                      ; $4513: $2e $6e
	ld   h, a                                        ; $4515: $67
	sub  $80                                         ; $4516: $d6 $80
	rst  $10                                         ; $4518: $d7
	ld   [bc], a                                     ; $4519: $02
	sub  $b7                                         ; $451a: $d6 $b7
	or   b                                           ; $451c: $b0
	add  b                                           ; $451d: $80
	cp   b                                           ; $451e: $b8
	add  b                                           ; $451f: $80
	cp   [hl]                                        ; $4520: $be
	add  b                                           ; $4521: $80
	sbc  [hl]                                        ; $4522: $9e
	add  b                                           ; $4523: $80
	sbc  a                                           ; $4524: $9f
	inc  bc                                          ; $4525: $03
	ld   l, a                                        ; $4526: $6f
	sbc  b                                           ; $4527: $98
	or   a                                           ; $4528: $b7
	or   e                                           ; $4529: $b3
	add  b                                           ; $452a: $80
	ld   [hl], e                                     ; $452b: $73
	ld   bc, $03f3                                   ; $452c: $01 $f3 $03
	add  b                                           ; $452f: $80
	dec  bc                                          ; $4530: $0b
	ld   bc, $f9fb                                   ; $4531: $01 $fb $f9
	add  b                                           ; $4534: $80
	db   $dd                                         ; $4535: $dd
	inc  bc                                          ; $4536: $03
	ld   e, l                                        ; $4537: $5d
	ld   a, l                                        ; $4538: $7d
	ld   l, l                                        ; $4539: $6d
	call z, $3f82                                    ; $453a: $cc $82 $3f
	add  h                                           ; $453d: $84
	sbc  a                                           ; $453e: $9f
	add  d                                           ; $453f: $82
	xor  a                                           ; $4540: $af
	dec  bc                                          ; $4541: $0b
	or   a                                           ; $4542: $b7
	ld   l, l                                        ; $4543: $6d
	nop                                              ; $4544: $00
	ld   c, $01                                      ; $4545: $0e $01
	ld   [hl], c                                     ; $4547: $71
	add  c                                           ; $4548: $81
	xor  l                                           ; $4549: $ad
	jp   $c7db                                       ; $454a: $c3 $db $c7


	rst  $10                                         ; $454d: $d7
	add  b                                           ; $454e: $80
	rst  $20                                         ; $454f: $e7
	add  c                                           ; $4550: $81
	rst  $28                                         ; $4551: $ef
	nop                                              ; $4552: $00
	pop  hl                                          ; $4553: $e1
	add  e                                           ; $4554: $83
	xor  $00                                         ; $4555: $ee $00
	db   $ec                                         ; $4557: $ec
	add  l                                           ; $4558: $85
	db   $ed                                         ; $4559: $ed
	ld   [bc], a                                     ; $455a: $02
	jp   hl                                          ; $455b: $e9


	db   $eb                                         ; $455c: $eb
	db   $e3                                         ; $455d: $e3
	adc  h                                           ; $455e: $8c
	rst  $38                                         ; $455f: $ff
	ld   bc, $02fe                                   ; $4560: $01 $fe $02
	add  c                                           ; $4563: $81
	inc  bc                                          ; $4564: $03
	add  h                                           ; $4565: $84
	rlca                                             ; $4566: $07
	nop                                              ; $4567: $00
	rrca                                             ; $4568: $0f
	add  c                                           ; $4569: $81
	ld   c, $06                                      ; $456a: $0e $06
	ld   e, $1d                                      ; $456c: $1e $1d
	db   $fd                                         ; $456e: $fd
	ld   l, a                                        ; $456f: $6f
	ld   h, a                                        ; $4570: $67
	ld   l, a                                        ; $4571: $6f
	ld   h, e                                        ; $4572: $63
	add  c                                           ; $4573: $81
	ld   [hl], a                                     ; $4574: $77
	inc  bc                                          ; $4575: $03
	ld   a, c                                        ; $4576: $79
	ld   a, e                                        ; $4577: $7b
	ld   a, d                                        ; $4578: $7a
	ld   a, e                                        ; $4579: $7b
	add  d                                           ; $457a: $82
	ld   a, l                                        ; $457b: $7d
	nop                                              ; $457c: $00
	ld   d, b                                        ; $457d: $50
	add  c                                           ; $457e: $81
	xor  [hl]                                        ; $457f: $ae
	ld   bc, $d79e                                   ; $4580: $01 $9e $d7
	add  b                                           ; $4583: $80
	rst  $20                                         ; $4584: $e7
	ld   [bc], a                                     ; $4585: $02
	or   a                                           ; $4586: $b7
	rst  $30                                         ; $4587: $f7
	ld   [hl], a                                     ; $4588: $77
	add  e                                           ; $4589: $83
	rst  $30                                         ; $458a: $f7
	nop                                              ; $458b: $00
	add  a                                           ; $458c: $87
	add  b                                           ; $458d: $80
	or   a                                           ; $458e: $b7
	ld   bc, $7bbb                                   ; $458f: $01 $bb $7b
	add  b                                           ; $4592: $80
	ld   e, e                                        ; $4593: $5b
	ld   bc, $1d5d                                   ; $4594: $01 $5d $1d
	add  b                                           ; $4597: $80
	sbc  l                                           ; $4598: $9d
	add  b                                           ; $4599: $80
	sbc  [hl]                                        ; $459a: $9e
	add  d                                           ; $459b: $82
	sbc  $82                                         ; $459c: $de $82
	rst  JumpTable                                         ; $459e: $df
	add  d                                           ; $459f: $82
	cp   a                                           ; $45a0: $bf
	add  d                                           ; $45a1: $82
	ld   a, a                                        ; $45a2: $7f
	add  c                                           ; $45a3: $81
	rst  $38                                         ; $45a4: $ff
	nop                                              ; $45a5: $00
	rst  $30                                         ; $45a6: $f7
	add  e                                           ; $45a7: $83
	db   $eb                                         ; $45a8: $eb
	nop                                              ; $45a9: $00
	db   $e3                                         ; $45aa: $e3
	add  h                                           ; $45ab: $84
	rst  $20                                         ; $45ac: $e7
	add  d                                           ; $45ad: $82
	rst  $10                                         ; $45ae: $d7
	inc  b                                           ; $45af: $04
	cp   $fa                                         ; $45b0: $fe $fa
	db   $fd                                         ; $45b2: $fd
	db   $f4                                         ; $45b3: $f4
	db   $fd                                         ; $45b4: $fd
	add  b                                           ; $45b5: $80
	ld   sp, hl                                      ; $45b6: $f9
	add  b                                           ; $45b7: $80
	ei                                               ; $45b8: $fb
	ld   [bc], a                                     ; $45b9: $02
	or   $f7                                         ; $45ba: $f6 $f7
	push af                                          ; $45bc: $f5
	add  b                                           ; $45bd: $80
	or   $03                                         ; $45be: $f6 $03
	push af                                          ; $45c0: $f5
	ld   sp, $fb3b                                   ; $45c1: $31 $3b $fb
	add  b                                           ; $45c4: $80
	cp   $80                                         ; $45c5: $fe $80
	db   $fc                                         ; $45c7: $fc
	add  b                                           ; $45c8: $80
	ldh  a, [rP1]                                    ; $45c9: $f0 $00
	nop                                              ; $45cb: $00
	add  h                                           ; $45cc: $84
	ld   h, b                                        ; $45cd: $60
	nop                                              ; $45ce: $00
	dec  e                                           ; $45cf: $1d
	add  c                                           ; $45d0: $81
	ld   a, l                                        ; $45d1: $7d
	nop                                              ; $45d2: $00
	ld   e, l                                        ; $45d3: $5d
	add  c                                           ; $45d4: $81
	ld   a, l                                        ; $45d5: $7d
	add  h                                           ; $45d6: $84
	ld   a, e                                        ; $45d7: $7b
	inc  b                                           ; $45d8: $04
	dec  sp                                          ; $45d9: $3b
	ld   a, e                                        ; $45da: $7b
	ldh  a, [$f7]                                    ; $45db: $f0 $f7
	db   $eb                                         ; $45dd: $eb
	add  c                                           ; $45de: $81
	rst  $28                                         ; $45df: $ef
	inc  bc                                          ; $45e0: $03
	db   $ed                                         ; $45e1: $ed
	rst  $28                                         ; $45e2: $ef
	xor  $ef                                         ; $45e3: $ee $ef
	add  d                                           ; $45e5: $82
	rst  JumpTable                                         ; $45e6: $df
	add  b                                           ; $45e7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45e8: $cf
	nop                                              ; $45e9: $00
	nop                                              ; $45ea: $00
	add  d                                           ; $45eb: $82
	db   $fd                                         ; $45ec: $fd
	add  c                                           ; $45ed: $81
	ei                                               ; $45ee: $fb
	ld   [bc], a                                     ; $45ef: $02
	ld   a, a                                        ; $45f0: $7f
	rst  $30                                         ; $45f1: $f7
	sbc  h                                           ; $45f2: $9c
	add  c                                           ; $45f3: $81
	rst  $28                                         ; $45f4: $ef
	add  b                                           ; $45f5: $80
	rst  JumpTable                                         ; $45f6: $df
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	add  e                                           ; $45f9: $83
	rst  $38                                         ; $45fa: $ff
	ld   bc, $fffe                                   ; $45fb: $01 $fe $ff
	add  b                                           ; $45fe: $80
	cp   $00                                         ; $45ff: $fe $00
	inc  bc                                          ; $4601: $03
	add  c                                           ; $4602: $81
	db   $fd                                         ; $4603: $fd
	add  b                                           ; $4604: $80
	ei                                               ; $4605: $fb
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	add  d                                           ; $4608: $82
	cp   a                                           ; $4609: $bf
	add  d                                           ; $460a: $82
	ld   a, a                                        ; $460b: $7f
	ld   bc, $00ff                                   ; $460c: $01 $ff $00
	add  e                                           ; $460f: $83
	rst  $38                                         ; $4610: $ff
	ld   [bc], a                                     ; $4611: $02
	nop                                              ; $4612: $00
	di                                               ; $4613: $f3
	db   $e3                                         ; $4614: $e3
	add  c                                           ; $4615: $81
	rst  $30                                         ; $4616: $f7
	ld   [bc], a                                     ; $4617: $02
	rst  $10                                         ; $4618: $d7
	rst  $30                                         ; $4619: $f7
	cpl                                              ; $461a: $2f
	add  c                                           ; $461b: $81
	rst  $28                                         ; $461c: $ef
	ld   bc, $dfdb                                   ; $461d: $01 $db $df
	add  b                                           ; $4620: $80
	cp   a                                           ; $4621: $bf
	ld   [bc], a                                     ; $4622: $02
	ld   bc, $fcfe                                   ; $4623: $01 $fe $fc
	adc  e                                           ; $4626: $8b
	cp   $00                                         ; $4627: $fe $00
	sbc  [hl]                                        ; $4629: $9e
	add  c                                           ; $462a: $81
	ld   h, b                                        ; $462b: $60
	add  h                                           ; $462c: $84
	ld   h, c                                        ; $462d: $61
	add  b                                           ; $462e: $80
	ld   [hl], c                                     ; $462f: $71
	add  b                                           ; $4630: $80
	ld   a, c                                        ; $4631: $79
	add  b                                           ; $4632: $80
	add  hl, sp                                      ; $4633: $39
	add  b                                           ; $4634: $80
	ei                                               ; $4635: $fb
	add  h                                           ; $4636: $84
	rst  $30                                         ; $4637: $f7
	add  d                                           ; $4638: $82
	rst  $38                                         ; $4639: $ff
	add  d                                           ; $463a: $82
	cp   $80                                         ; $463b: $fe $80
	or   a                                           ; $463d: $b7
	add  b                                           ; $463e: $80
	or   b                                           ; $463f: $b0

jr_09f_4640:
	ld   bc, $b0b7                                   ; $4640: $01 $b7 $b0
	add  h                                           ; $4643: $84
	ld   [hl], b                                     ; $4644: $70
	add  b                                           ; $4645: $80
	ldh  a, [rSB]                                    ; $4646: $f0 $01
	rst  $20                                         ; $4648: $e7
	ldh  [$80], a                                    ; $4649: $e0 $80
	cp   a                                           ; $464b: $bf
	add  b                                           ; $464c: $80
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	rst  $38                                         ; $464f: $ff
	add  a                                           ; $4650: $87
	nop                                              ; $4651: $00
	ld   bc, $00ff                                   ; $4652: $01 $ff $00
	add  b                                           ; $4655: $80
	rst  $30                                         ; $4656: $f7
	add  b                                           ; $4657: $80
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	rst  $38                                         ; $465a: $ff
	add  a                                           ; $465b: $87
	nop                                              ; $465c: $00
	ld   bc, $00ff                                   ; $465d: $01 $ff $00

jr_09f_4660:
	add  b                                           ; $4660: $80
	rst  $38                                         ; $4661: $ff
	add  b                                           ; $4662: $80
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	rst  $38                                         ; $4665: $ff
	add  a                                           ; $4666: $87
	nop                                              ; $4667: $00
	ld   [bc], a                                     ; $4668: $02
	rst  $38                                         ; $4669: $ff
	nop                                              ; $466a: $00
	ld   a, $81                                      ; $466b: $3e $81
	ccf                                              ; $466d: $3f
	nop                                              ; $466e: $00
	ld   e, [hl]                                     ; $466f: $5e
	add  c                                           ; $4670: $81
	ld   e, a                                        ; $4671: $5f
	add  d                                           ; $4672: $82
	cpl                                              ; $4673: $2f
	add  b                                           ; $4674: $80
	rla                                              ; $4675: $17
	add  b                                           ; $4676: $80
	ld   b, $00                                      ; $4677: $06 $00
	nop                                              ; $4679: $00
	add  l                                           ; $467a: $85
	cp   $08                                         ; $467b: $fe $08
	ld   l, [hl]                                     ; $467d: $6e
	cp   $ea                                         ; $467e: $fe $ea
	sbc  $d6                                         ; $4680: $de $d6
	cp   [hl]                                        ; $4682: $be

jr_09f_4683:
	ld   a, [hl+]                                    ; $4683: $2a

jr_09f_4684:
	ld   a, [hl]                                     ; $4684: $7e
	sbc  c                                           ; $4685: $99
	rst  $38                                         ; $4686: $ff
	nop                                              ; $4687: $00
	rst  $38                                         ; $4688: $ff
	nop                                              ; $4689: $00
	rst  $38                                         ; $468a: $ff
	nop                                              ; $468b: $00
	rst  $38                                         ; $468c: $ff
	nop                                              ; $468d: $00
	rst  $38                                         ; $468e: $ff
	nop                                              ; $468f: $00
	rst  $38                                         ; $4690: $ff
	nop                                              ; $4691: $00
	rst  $38                                         ; $4692: $ff
	nop                                              ; $4693: $00
	rst  $38                                         ; $4694: $ff
	nop                                              ; $4695: $00
	push hl                                          ; $4696: $e5
	nop                                              ; $4697: $00
	di                                               ; $4698: $f3
	nop                                              ; $4699: $00
	add  b                                           ; $469a: $80

jr_09f_469b:
	nop                                              ; $469b: $00
	inc  c                                           ; $469c: $0c
	jr   nc, jr_09f_46b7                             ; $469d: $30 $18

	ld   d, h                                        ; $469f: $54
	inc  b                                           ; $46a0: $04
	sub  b                                           ; $46a1: $90
	inc  h                                           ; $46a2: $24
	inc  b                                           ; $46a3: $04
	ld   d, h                                        ; $46a4: $54
	inc  c                                           ; $46a5: $0c
	ret  c                                           ; $46a6: $d8

	db   $fc                                         ; $46a7: $fc
	adc  h                                           ; $46a8: $8c
	jr   c, jr_09f_4640                              ; $46a9: $38 $95

	nop                                              ; $46ab: $00
	add  b                                           ; $46ac: $80
	ld   b, $0a                                      ; $46ad: $06 $0a
	ccf                                              ; $46af: $3f
	ld   sp, $2239                                   ; $46b0: $31 $39 $22
	db   $10                                         ; $46b3: $10
	add  hl, bc                                      ; $46b4: $09
	dec  d                                           ; $46b5: $15
	inc  d                                           ; $46b6: $14

jr_09f_46b7:
	rlca                                             ; $46b7: $07
	inc  c                                           ; $46b8: $0c
	ld   b, $8d                                      ; $46b9: $06 $8d
	nop                                              ; $46bb: $00
	inc  c                                           ; $46bc: $0c
	jr   nc, jr_09f_46d7                             ; $46bd: $30 $18

	ld   e, b                                        ; $46bf: $58
	jr   nc, @-$12                                   ; $46c0: $30 $ec

	ld   e, h                                        ; $46c2: $5c
	jr   jr_09f_46f9                                 ; $46c3: $18 $34

	ld   c, h                                        ; $46c5: $4c
	ret  c                                           ; $46c6: $d8

	db   $fc                                         ; $46c7: $fc
	adc  h                                           ; $46c8: $8c
	jr   c, jr_09f_4660                              ; $46c9: $38 $95

	nop                                              ; $46cb: $00
	add  b                                           ; $46cc: $80
	ld   b, $80                                      ; $46cd: $06 $80
	ccf                                              ; $46cf: $3f
	ld   [$233d], sp                                 ; $46d0: $08 $3d $23
	add  hl, de                                      ; $46d3: $19
	ld   [$1416], sp                                 ; $46d4: $08 $16 $14

jr_09f_46d7:
	rlca                                             ; $46d7: $07
	inc  c                                           ; $46d8: $0c
	ld   b, $8d                                      ; $46d9: $06 $8d
	nop                                              ; $46db: $00
	dec  b                                           ; $46dc: $05
	jr   nc, jr_09f_46f7                             ; $46dd: $30 $18

	ld   e, b                                        ; $46df: $58
	jr   nc, @-$0e                                   ; $46e0: $30 $f0

	ld   [hl], b                                     ; $46e2: $70
	add  b                                           ; $46e3: $80
	ld   [hl], d                                     ; $46e4: $72
	inc  b                                           ; $46e5: $04
	jr   c, jr_09f_4684                              ; $46e6: $38 $9c

	add  sp, -$4c                                    ; $46e8: $e8 $b4
	jr   c, jr_09f_4683                              ; $46ea: $38 $97

	nop                                              ; $46ec: $00
	add  b                                           ; $46ed: $80
	inc  bc                                          ; $46ee: $03
	add  b                                           ; $46ef: $80
	scf                                              ; $46f0: $37
	ld   b, $1e                                      ; $46f1: $06 $1e
	rrca                                             ; $46f3: $0f
	inc  c                                           ; $46f4: $0c
	ld   d, $03                                      ; $46f5: $16 $03

jr_09f_46f7:
	ld   c, $06                                      ; $46f7: $0e $06

jr_09f_46f9:
	adc  e                                           ; $46f9: $8b
	nop                                              ; $46fa: $00
	add  b                                           ; $46fb: $80
	ld   [$2005], sp                                 ; $46fc: $08 $05 $20
	ld   h, b                                        ; $46ff: $60
	ld   h, $64                                      ; $4700: $26 $64
	ld   [bc], a                                     ; $4702: $02
	nop                                              ; $4703: $00
	add  b                                           ; $4704: $80
	jr   jr_09f_469b                                 ; $4705: $18 $94

	nop                                              ; $4707: $00
	add  b                                           ; $4708: $80
	ld   [$7080], sp                                 ; $4709: $08 $80 $70
	inc  bc                                          ; $470c: $03
	halt                                             ; $470d: $76
	ld   d, d                                        ; $470e: $52
	nop                                              ; $470f: $00
	inc  h                                           ; $4710: $24
	add  b                                           ; $4711: $80
	nop                                              ; $4712: $00
	add  b                                           ; $4713: $80
	db   $10                                         ; $4714: $10
	rst  $38                                         ; $4715: $ff
	nop                                              ; $4716: $00
	rst  $38                                         ; $4717: $ff
	nop                                              ; $4718: $00
	rst  $38                                         ; $4719: $ff
	nop                                              ; $471a: $00
	rst  $38                                         ; $471b: $ff
	nop                                              ; $471c: $00
	rst  $38                                         ; $471d: $ff
	nop                                              ; $471e: $00
	rst  $38                                         ; $471f: $ff
	nop                                              ; $4720: $00
	sbc  b                                           ; $4721: $98
	nop                                              ; $4722: $00
	inc  b                                           ; $4723: $04
	ld   de, $1e00                                   ; $4724: $11 $00 $1e
	nop                                              ; $4727: $00
	rrca                                             ; $4728: $0f
	add  e                                           ; $4729: $83
	nop                                              ; $472a: $00
	inc  c                                           ; $472b: $0c
	ld   bc, $0300                                   ; $472c: $01 $00 $03
	ld   bc, $0307                                   ; $472f: $01 $07 $03
	ld   c, $06                                      ; $4732: $0e $06
	inc  e                                           ; $4734: $1c
	inc  c                                           ; $4735: $0c
	ld   e, $00                                      ; $4736: $1e $00
	inc  bc                                          ; $4738: $03
	add  c                                           ; $4739: $81
	ld   bc, $0707                                   ; $473a: $01 $07 $07
	inc  bc                                          ; $473d: $03
	rra                                              ; $473e: $1f
	rlca                                             ; $473f: $07
	ld   a, a                                        ; $4740: $7f
	rra                                              ; $4741: $1f
	rst  $38                                         ; $4742: $ff
	ld   a, a                                        ; $4743: $7f
	add  b                                           ; $4744: $80
	rra                                              ; $4745: $1f
	dec  b                                           ; $4746: $05
	db   $dd                                         ; $4747: $dd
	dec  e                                           ; $4748: $1d
	ld   a, e                                        ; $4749: $7b
	dec  sp                                          ; $474a: $3b
	rst  $30                                         ; $474b: $f7
	ld   [hl], a                                     ; $474c: $77
	add  b                                           ; $474d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $474e: $cf
	add  b                                           ; $474f: $80
	sbc  [hl]                                        ; $4750: $9e
	add  b                                           ; $4751: $80
	ld   a, $82                                      ; $4752: $3e $82
	ld   a, l                                        ; $4754: $7d
	inc  bc                                          ; $4755: $03
	rst  $28                                         ; $4756: $ef
	ldh  [$78], a                                    ; $4757: $e0 $78
	ld   [hl], b                                     ; $4759: $70
	add  b                                           ; $475a: $80
	ldh  a, [rTIMA]                                  ; $475b: $f0 $05
	db   $fc                                         ; $475d: $fc
	ld   hl, sp-$02                                  ; $475e: $f8 $fe
	db   $fc                                         ; $4760: $fc
	rst  $38                                         ; $4761: $ff
	cp   $83                                         ; $4762: $fe $83
	rst  $38                                         ; $4764: $ff
	sbc  c                                           ; $4765: $99
	nop                                              ; $4766: $00
	ld   [bc], a                                     ; $4767: $02
	add  b                                           ; $4768: $80
	nop                                              ; $4769: $00
	ret  nz                                          ; $476a: $c0

jr_09f_476b:
	add  c                                           ; $476b: $81
	add  b                                           ; $476c: $80
	nop                                              ; $476d: $00
	ld   b, b                                        ; $476e: $40
	add  c                                           ; $476f: $81
	nop                                              ; $4770: $00
	ld   b, $80                                      ; $4771: $06 $80
	nop                                              ; $4773: $00
	add  b                                           ; $4774: $80
	nop                                              ; $4775: $00
	ret  nz                                          ; $4776: $c0

	add  b                                           ; $4777: $80
	ldh  [$81], a                                    ; $4778: $e0 $81
	ret  nz                                          ; $477a: $c0

	ld   b, $f5                                      ; $477b: $06 $f5
	ld   [$1034], sp                                 ; $477d: $08 $34 $10
	dec  bc                                          ; $4780: $0b
	ld   bc, $8111                                   ; $4781: $01 $11 $81
	ld   bc, $2700                                   ; $4784: $01 $00 $27
	add  c                                           ; $4787: $81
	inc  bc                                          ; $4788: $03
	add  b                                           ; $4789: $80
	ld   [bc], a                                     ; $478a: $02
	ld   b, $0e                                      ; $478b: $06 $0e
	ld   b, $05                                      ; $478d: $06 $05
	inc  b                                           ; $478f: $04
	ld   [bc], a                                     ; $4790: $02
	nop                                              ; $4791: $00
	inc  b                                           ; $4792: $04
	add  c                                           ; $4793: $81
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	ld   [$0083], sp                                 ; $4796: $08 $83 $00
	nop                                              ; $4799: $00
	inc  b                                           ; $479a: $04
	add  c                                           ; $479b: $81
	ei                                               ; $479c: $fb
	add  b                                           ; $479d: $80
	rst  $30                                         ; $479e: $f7
	add  b                                           ; $479f: $80
	rst  $20                                         ; $47a0: $e7
	add  b                                           ; $47a1: $80
	add  $80                                         ; $47a2: $c6 $80
	adc  [hl]                                        ; $47a4: $8e
	rlca                                             ; $47a5: $07
	inc  l                                           ; $47a6: $2c
	dec  c                                           ; $47a7: $0d
	ld   c, l                                        ; $47a8: $4d
	dec  c                                           ; $47a9: $0d
	adc  b                                           ; $47aa: $88
	add  hl, bc                                      ; $47ab: $09
	inc  h                                           ; $47ac: $24
	inc  b                                           ; $47ad: $04
	add  d                                           ; $47ae: $82
	ld   d, $80                                      ; $47af: $16 $80
	ld   [de], a                                     ; $47b1: $12
	add  b                                           ; $47b2: $80
	inc  b                                           ; $47b3: $04
	dec  b                                           ; $47b4: $05
	ld   d, $06                                      ; $47b5: $16 $06
	ld   [hl+], a                                    ; $47b7: $22
	ld   [bc], a                                     ; $47b8: $02
	rra                                              ; $47b9: $1f
	ldh  [$80], a                                    ; $47ba: $e0 $80
	jr   nz, jr_09f_47c0                             ; $47bc: $20 $02

	ld   b, b                                        ; $47be: $40
	nop                                              ; $47bf: $00

jr_09f_47c0:
	ldh  [$81], a                                    ; $47c0: $e0 $81
	add  b                                           ; $47c2: $80
	ld   [bc], a                                     ; $47c3: $02
	sub  b                                           ; $47c4: $90
	add  b                                           ; $47c5: $80

jr_09f_47c6:
	ldh  [$81], a                                    ; $47c6: $e0 $81
	ret  nz                                          ; $47c8: $c0

	ld   bc, $e0f0                                   ; $47c9: $01 $f0 $e0
	add  b                                           ; $47cc: $80
	ld   h, b                                        ; $47cd: $60
	ld   b, $b8                                      ; $47ce: $06 $b8
	jr   nc, jr_09f_4812                             ; $47d0: $30 $40

	nop                                              ; $47d2: $00
	inc  [hl]                                        ; $47d3: $34
	nop                                              ; $47d4: $00
	inc  c                                           ; $47d5: $0c
	add  e                                           ; $47d6: $83
	nop                                              ; $47d7: $00
	inc  bc                                          ; $47d8: $03
	di                                               ; $47d9: $f3
	call z, $cccd                                    ; $47da: $cc $cd $cc
	add  c                                           ; $47dd: $81
	call nz, $8403                                   ; $47de: $c4 $03 $84
	adc  d                                           ; $47e1: $8a
	add  b                                           ; $47e2: $80
	call nz, Call_09f_4081                           ; $47e3: $c4 $81 $40
	add  b                                           ; $47e6: $80
	jr   nz, jr_09f_47e9                             ; $47e7: $20 $00

jr_09f_47e9:
	jr   nc, jr_09f_476b                             ; $47e9: $30 $80

	nop                                              ; $47eb: $00
	add  e                                           ; $47ec: $83
	add  b                                           ; $47ed: $80
	nop                                              ; $47ee: $00
	and  b                                           ; $47ef: $a0
	add  e                                           ; $47f0: $83
	ret  nz                                          ; $47f1: $c0

	ld   [bc], a                                     ; $47f2: $02
	ret  nc                                          ; $47f3: $d0

	jr   nz, jr_09f_47c6                             ; $47f4: $20 $d0

	adc  c                                           ; $47f6: $89
	nop                                              ; $47f7: $00
	inc  d                                           ; $47f8: $14
	rlca                                             ; $47f9: $07
	nop                                              ; $47fa: $00
	ld   [$1b07], sp                                 ; $47fb: $08 $07 $1b
	rrca                                             ; $47fe: $0f
	inc  c                                           ; $47ff: $0c
	rrca                                             ; $4800: $0f
	stop                                             ; $4801: $10 $00
	ld   [$0800], sp                                 ; $4803: $08 $00 $08
	inc  bc                                          ; $4806: $03
	ld   bc, $1406                                   ; $4807: $01 $06 $14
	inc  c                                           ; $480a: $0c
	ld   [$170c], sp                                 ; $480b: $08 $0c $17
	add  a                                           ; $480e: $87
	nop                                              ; $480f: $00
	ld   b, $03                                      ; $4810: $06 $03

jr_09f_4812:
	nop                                              ; $4812: $00
	call z, Call_09f_7b03                            ; $4813: $cc $03 $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4816: $cf
	ld   a, b                                        ; $4817: $78
	sub  a                                           ; $4818: $97
	nop                                              ; $4819: $00
	ld   b, $c1                                      ; $481a: $06 $c1
	nop                                              ; $481c: $00
	ld   [hl+], a                                    ; $481d: $22
	pop  bc                                          ; $481e: $c1
	db   $dd                                         ; $481f: $dd
	db   $e3                                         ; $4820: $e3
	inc  e                                           ; $4821: $1c
	adc  l                                           ; $4822: $8d
	nop                                              ; $4823: $00
	ld   [bc], a                                     ; $4824: $02
	dec  c                                           ; $4825: $0d
	ld   [bc], a                                     ; $4826: $02
	nop                                              ; $4827: $00
	add  l                                           ; $4828: $85
	inc  b                                           ; $4829: $04
	ld   [de], a                                     ; $482a: $12
	add  h                                           ; $482b: $84
	dec  b                                           ; $482c: $05
	ld   d, l                                        ; $482d: $55
	adc  e                                           ; $482e: $8b
	xor  e                                           ; $482f: $ab
	rst  ToBoot                                         ; $4830: $c7
	ret  z                                           ; $4831: $c8

	ldh  [$e8], a                                    ; $4832: $e0 $e8
	ld   [hl], b                                     ; $4834: $70
	ld   [hl], h                                     ; $4835: $74
	sbc  b                                           ; $4836: $98
	ld   a, [$0d0c]                                  ; $4837: $fa $0c $0d
	ld   c, $4e                                      ; $483a: $0e $4e
	ld   [bc], a                                     ; $483c: $02
	ld   b, d                                        ; $483d: $42
	add  c                                           ; $483e: $81
	dec  c                                           ; $483f: $0d
	nop                                              ; $4840: $00
	ld   l, l                                        ; $4841: $6d
	add  b                                           ; $4842: $80
	add  $80                                         ; $4843: $c6 $80
	ld   l, b                                        ; $4845: $68
	add  b                                           ; $4846: $80
	ld   l, a                                        ; $4847: $6f
	nop                                              ; $4848: $00
	scf                                              ; $4849: $37
	add  c                                           ; $484a: $81
	or   a                                           ; $484b: $b7
	nop                                              ; $484c: $00
	sbc  e                                           ; $484d: $9b
	add  c                                           ; $484e: $81
	db   $db                                         ; $484f: $db
	ld   bc, $f2cd                                   ; $4850: $01 $cd $f2
	sbc  a                                           ; $4853: $9f
	nop                                              ; $4854: $00
	ld   b, $f0                                      ; $4855: $06 $f0
	nop                                              ; $4857: $00
	inc  c                                           ; $4858: $0c
	ldh  a, [$f2]                                    ; $4859: $f0 $f2
	db   $fc                                         ; $485b: $fc
	db   $fd                                         ; $485c: $fd
	add  b                                           ; $485d: $80
	cp   $83                                         ; $485e: $fe $83
	rst  $38                                         ; $4860: $ff
	adc  b                                           ; $4861: $88
	nop                                              ; $4862: $00
	inc  b                                           ; $4863: $04
	add  b                                           ; $4864: $80
	nop                                              ; $4865: $00
	ld   b, b                                        ; $4866: $40
	add  b                                           ; $4867: $80
	ldh  [$81], a                                    ; $4868: $e0 $81
	ret  nz                                          ; $486a: $c0

	ld   [bc], a                                     ; $486b: $02
	ret  c                                           ; $486c: $d8

	ret  nz                                          ; $486d: $c0

	db   $e4                                         ; $486e: $e4
	add  b                                           ; $486f: $80
	add  sp, $06                                     ; $4870: $e8 $06
	ld   hl, sp-$28                                  ; $4872: $f8 $d8
	ld   hl, sp-$48                                  ; $4874: $f8 $b8
	ld   hl, sp-$01                                  ; $4876: $f8 $ff
	db   $fc                                         ; $4878: $fc
	add  b                                           ; $4879: $80
	ld   a, [$1802]                                  ; $487a: $fa $02 $18
	ld   [$842a], sp                                 ; $487d: $08 $2a $84
	ld   a, [de]                                     ; $4880: $1a
	nop                                              ; $4881: $00
	ld   [de], a                                     ; $4882: $12
	add  b                                           ; $4883: $80
	inc  de                                          ; $4884: $13
	nop                                              ; $4885: $00
	ld   d, e                                        ; $4886: $53
	add  c                                           ; $4887: $81
	inc  sp                                          ; $4888: $33
	nop                                              ; $4889: $00
	ld   [hl], $81                                   ; $488a: $36 $81
	scf                                              ; $488c: $37
	inc  c                                           ; $488d: $0c
	dec  [hl]                                        ; $488e: $35
	scf                                              ; $488f: $37
	dec  [hl]                                        ; $4890: $35
	scf                                              ; $4891: $37
	dec  [hl]                                        ; $4892: $35
	scf                                              ; $4893: $37
	dec  [hl]                                        ; $4894: $35
	scf                                              ; $4895: $37
	or   l                                           ; $4896: $b5
	ld   [hl], a                                     ; $4897: $77
	ld   [hl], l                                     ; $4898: $75
	ld   [hl], a                                     ; $4899: $77
	adc  [hl]                                        ; $489a: $8e
	adc  l                                           ; $489b: $8d
	nop                                              ; $489c: $00
	inc  b                                           ; $489d: $04
	rlca                                             ; $489e: $07
	ld   sp, hl                                      ; $489f: $f9
	ld   h, c                                        ; $48a0: $61
	ld   h, e                                        ; $48a1: $63
	inc  bc                                          ; $48a2: $03
	add  b                                           ; $48a3: $80
	rlca                                             ; $48a4: $07
	add  b                                           ; $48a5: $80
	rrca                                             ; $48a6: $0f
	add  b                                           ; $48a7: $80
	rra                                              ; $48a8: $1f
	add  b                                           ; $48a9: $80
	ccf                                              ; $48aa: $3f
	add  c                                           ; $48ab: $81
	ld   a, a                                        ; $48ac: $7f
	dec  bc                                          ; $48ad: $0b
	add  hl, de                                      ; $48ae: $19
	nop                                              ; $48af: $00
	add  h                                           ; $48b0: $84
	jr   nz, jr_09f_48db                             ; $48b1: $20 $28

	ld   h, b                                        ; $48b3: $60
	ld   d, h                                        ; $48b4: $54
	ret  nz                                          ; $48b5: $c0

	pop  de                                          ; $48b6: $d1
	ret  nz                                          ; $48b7: $c0

	adc  b                                           ; $48b8: $88
	add  b                                           ; $48b9: $80
	add  b                                           ; $48ba: $80
	nop                                              ; $48bb: $00
	add  b                                           ; $48bc: $80
	jr   nz, jr_09f_48bf                             ; $48bd: $20 $00

jr_09f_48bf:
	ld   hl, sp-$73                                  ; $48bf: $f8 $8d
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	ret  nz                                          ; $48c3: $c0

	add  e                                           ; $48c4: $83
	add  b                                           ; $48c5: $80
	dec  bc                                          ; $48c6: $0b
	and  b                                           ; $48c7: $a0
	ret  nz                                          ; $48c8: $c0

	ret  nc                                          ; $48c9: $d0

	ld   b, b                                        ; $48ca: $40
	ld   e, b                                        ; $48cb: $58
	ld   d, b                                        ; $48cc: $50
	ld   c, h                                        ; $48cd: $4c
	ld   l, b                                        ; $48ce: $68
	ld   l, [hl]                                     ; $48cf: $6e
	ld   l, h                                        ; $48d0: $6c
	ld   h, a                                        ; $48d1: $67
	halt                                             ; $48d2: $76
	add  b                                           ; $48d3: $80
	ld   [hl], a                                     ; $48d4: $77
	nop                                              ; $48d5: $00
	ld   [hl], e                                     ; $48d6: $73
	add  c                                           ; $48d7: $81
	ld   a, e                                        ; $48d8: $7b
	nop                                              ; $48d9: $00
	ld   a, c                                        ; $48da: $79

jr_09f_48db:
	add  c                                           ; $48db: $81
	dec  a                                           ; $48dc: $3d
	nop                                              ; $48dd: $00
	inc  a                                           ; $48de: $3c
	add  b                                           ; $48df: $80
	ld   e, [hl]                                     ; $48e0: $5e
	ld   bc, $a05f                                   ; $48e1: $01 $5f $a0
	adc  l                                           ; $48e4: $8d
	nop                                              ; $48e5: $00
	ld   [bc], a                                     ; $48e6: $02
	rst  $38                                         ; $48e7: $ff
	ld   [hl], a                                     ; $48e8: $77
	rst  $30                                         ; $48e9: $f7
	add  b                                           ; $48ea: $80
	cp   e                                           ; $48eb: $bb
	ld   bc, $fdbd                                   ; $48ec: $01 $bd $fd
	add  b                                           ; $48ef: $80
	db   $dd                                         ; $48f0: $dd
	ld   bc, $fede                                   ; $48f1: $01 $de $fe
	add  e                                           ; $48f4: $83
	xor  $00                                         ; $48f5: $ee $00
	pop  af                                          ; $48f7: $f1
	adc  l                                           ; $48f8: $8d
	nop                                              ; $48f9: $00
	inc  c                                           ; $48fa: $0c
	add  b                                           ; $48fb: $80
	nop                                              ; $48fc: $00
	ld   b, b                                        ; $48fd: $40
	add  b                                           ; $48fe: $80
	or   b                                           ; $48ff: $b0
	ret  nz                                          ; $4900: $c0

	ret  z                                           ; $4901: $c8

	ldh  a, [$f4]                                    ; $4902: $f0 $f4
	ld   hl, sp-$06                                  ; $4904: $f8 $fa
	db   $fc                                         ; $4906: $fc
	db   $fd                                         ; $4907: $fd
	add  b                                           ; $4908: $80

jr_09f_4909:
	cp   $00                                         ; $4909: $fe $00
	rst  $38                                         ; $490b: $ff
	sbc  h                                           ; $490c: $9c
	nop                                              ; $490d: $00
	ld   a, [bc]                                     ; $490e: $0a
	ret  nz                                          ; $490f: $c0

	nop                                              ; $4910: $00
	dec  sp                                          ; $4911: $3b
	ld   [hl], a                                     ; $4912: $77
	ld   [hl], l                                     ; $4913: $75
	ld   [hl], a                                     ; $4914: $77
	ld   [hl], l                                     ; $4915: $75
	ld   [hl], a                                     ; $4916: $77
	ld   [hl], l                                     ; $4917: $75
	ld   [hl], a                                     ; $4918: $77
	ld   [hl], l                                     ; $4919: $75
	add  l                                           ; $491a: $85
	ld   [hl], a                                     ; $491b: $77
	add  b                                           ; $491c: $80
	ld   a, a                                        ; $491d: $7f
	rrca                                             ; $491e: $0f
	ld   a, e                                        ; $491f: $7b
	ld   a, a                                        ; $4920: $7f
	ld   a, e                                        ; $4921: $7b
	ld   a, a                                        ; $4922: $7f
	ld   a, e                                        ; $4923: $7b
	ld   a, a                                        ; $4924: $7f
	ld   a, e                                        ; $4925: $7b
	ld   a, a                                        ; $4926: $7f
	ld   a, e                                        ; $4927: $7b
	ld   a, a                                        ; $4928: $7f
	ld   a, e                                        ; $4929: $7b
	ld   a, a                                        ; $492a: $7f
	ld   a, e                                        ; $492b: $7b
	ld   a, a                                        ; $492c: $7f
	ld   e, b                                        ; $492d: $58
	xor  a                                           ; $492e: $af
	add  b                                           ; $492f: $80
	and  a                                           ; $4930: $a7
	ld   b, $eb                                      ; $4931: $06 $eb
	db   $e3                                         ; $4933: $e3
	push hl                                          ; $4934: $e5
	pop  hl                                          ; $4935: $e1
	ldh  [c], a                                      ; $4936: $e2
	ldh  [$f9], a                                    ; $4937: $e0 $f9
	add  c                                           ; $4939: $81
	ldh  a, [$84]                                    ; $493a: $f0 $84
	or   b                                           ; $493c: $b0
	nop                                              ; $493d: $00
	cp   h                                           ; $493e: $bc
	add  e                                           ; $493f: $83
	cp   b                                           ; $4940: $b8
	rlca                                             ; $4941: $07
	sub  h                                           ; $4942: $94
	sub  b                                           ; $4943: $90
	adc  b                                           ; $4944: $88
	add  b                                           ; $4945: $80
	sub  b                                           ; $4946: $90
	add  b                                           ; $4947: $80
	jr   nz, jr_09f_4909                             ; $4948: $20 $bf

	add  b                                           ; $494a: $80
	rst  JumpTable                                         ; $494b: $df
	add  b                                           ; $494c: $80
	rst  $38                                         ; $494d: $ff
	add  b                                           ; $494e: $80
	cp   $80                                         ; $494f: $fe $80
	rst  $38                                         ; $4951: $ff
	add  b                                           ; $4952: $80
	ld   a, e                                        ; $4953: $7b
	inc  bc                                          ; $4954: $03
	add  a                                           ; $4955: $87
	rlca                                             ; $4956: $07
	ld   e, e                                        ; $4957: $5b
	dec  de                                          ; $4958: $1b
	add  b                                           ; $4959: $80
	dec  e                                           ; $495a: $1d
	nop                                              ; $495b: $00
	ld   l, $81                                      ; $495c: $2e $81
	ld   c, $00                                      ; $495e: $0e $00
	ld   d, $81                                      ; $4960: $16 $81
	ld   b, $00                                      ; $4962: $06 $00
	ld   a, [bc]                                     ; $4964: $0a
	add  c                                           ; $4965: $81
	ld   [bc], a                                     ; $4966: $02
	inc  bc                                          ; $4967: $03
	inc  b                                           ; $4968: $04
	nop                                              ; $4969: $00
	jp   $80bf                                       ; $496a: $c3 $bf $80


	sbc  a                                           ; $496d: $9f
	inc  b                                           ; $496e: $04
	adc  a                                           ; $496f: $8f
	xor  a                                           ; $4970: $af
	and  e                                           ; $4971: $a3
	or   e                                           ; $4972: $b3
	or   b                                           ; $4973: $b0
	add  b                                           ; $4974: $80
	call c, $ff83                                    ; $4975: $dc $83 $ff
	adc  a                                           ; $4978: $8f
	nop                                              ; $4979: $00
	nop                                              ; $497a: $00
	rst  $38                                         ; $497b: $ff
	add  b                                           ; $497c: $80
	ld   sp, hl                                      ; $497d: $f9
	add  b                                           ; $497e: $80
	ldh  a, [$80]                                    ; $497f: $f0 $80
	ldh  [$80], a                                    ; $4981: $e0 $80
	ret  nz                                          ; $4983: $c0

	add  c                                           ; $4984: $81
	nop                                              ; $4985: $00
	add  b                                           ; $4986: $80
	ret  nz                                          ; $4987: $c0

	ld   bc, $07f8                                   ; $4988: $01 $f8 $07
	adc  l                                           ; $498b: $8d
	nop                                              ; $498c: $00
	nop                                              ; $498d: $00
	ccf                                              ; $498e: $3f
	add  c                                           ; $498f: $81
	sbc  $01                                         ; $4990: $de $01
	sbc  [hl]                                        ; $4992: $9e
	cp   h                                           ; $4993: $bc
	add  b                                           ; $4994: $80
	inc  a                                           ; $4995: $3c
	ld   [bc], a                                     ; $4996: $02
	dec  a                                           ; $4997: $3d
	inc  a                                           ; $4998: $3c
	ld   a, $83                                      ; $4999: $3e $83
	ld   a, b                                        ; $499b: $78
	nop                                              ; $499c: $00
	ld   a, h                                        ; $499d: $7c
	add  l                                           ; $499e: $85
	ldh  a, [rP1]                                    ; $499f: $f0 $00
	ld   hl, sp-$7b                                  ; $49a1: $f8 $85
	ldh  [rDIV], a                                   ; $49a3: $e0 $04
	cpl                                              ; $49a5: $2f
	rst  $38                                         ; $49a6: $ff
	call z, $f3ff                                    ; $49a7: $cc $ff $f3
	add  c                                           ; $49aa: $81
	rst  $38                                         ; $49ab: $ff
	add  b                                           ; $49ac: $80
	ld   a, a                                        ; $49ad: $7f
	inc  b                                           ; $49ae: $04
	cp   a                                           ; $49af: $bf
	ccf                                              ; $49b0: $3f
	ld   b, e                                        ; $49b1: $43
	inc  bc                                          ; $49b2: $03
	scf                                              ; $49b3: $37
	add  c                                           ; $49b4: $81
	rlca                                             ; $49b5: $07
	ld   [bc], a                                     ; $49b6: $02
	rla                                              ; $49b7: $17
	rlca                                             ; $49b8: $07
	ld   c, $83                                      ; $49b9: $0e $83
	rrca                                             ; $49bb: $0f
	ld   [bc], a                                     ; $49bc: $02
	dec  a                                           ; $49bd: $3d
	rra                                              ; $49be: $1f
	dec  de                                          ; $49bf: $1b
	add  c                                           ; $49c0: $81
	rra                                              ; $49c1: $1f
	inc  b                                           ; $49c2: $04
	ret  c                                           ; $49c3: $d8

	ret  nz                                          ; $49c4: $c0

	ret  nc                                          ; $49c5: $d0

	ldh  [$e8], a                                    ; $49c6: $e0 $e8
	add  l                                           ; $49c8: $85
	ldh  a, [rP1]                                    ; $49c9: $f0 $00
	ld   hl, sp-$7e                                  ; $49cb: $f8 $82
	ldh  [$81], a                                    ; $49cd: $e0 $81
	ret  nz                                          ; $49cf: $c0

	nop                                              ; $49d0: $00
	ldh  [$81], a                                    ; $49d1: $e0 $81
	and  b                                           ; $49d3: $a0
	ld   [bc], a                                     ; $49d4: $02
	ldh  [$60], a                                    ; $49d5: $e0 $60
	ret  nc                                          ; $49d7: $d0

	add  e                                           ; $49d8: $83
	ret  nz                                          ; $49d9: $c0

	nop                                              ; $49da: $00
	ldh  [$bd], a                                    ; $49db: $e0 $bd
	nop                                              ; $49dd: $00
	jp   $0000                                      ; $49de: $c3 $00 $00


	ld   bc, $0081                                   ; $49e1: $01 $81 $00
	nop                                              ; $49e4: $00
	inc  bc                                          ; $49e5: $03
	add  c                                           ; $49e6: $81
	ld   bc, $0700                                   ; $49e7: $01 $00 $07
	add  e                                           ; $49ea: $83
	inc  bc                                          ; $49eb: $03
	nop                                              ; $49ec: $00
	rrca                                             ; $49ed: $0f
	add  c                                           ; $49ee: $81
	rlca                                             ; $49ef: $07
	inc  b                                           ; $49f0: $04
	ld   b, $07                                      ; $49f1: $06 $07
	dec  bc                                          ; $49f3: $0b
	inc  bc                                          ; $49f4: $03
	dec  b                                           ; $49f5: $05
	add  c                                           ; $49f6: $81
	ld   bc, $0300                                   ; $49f7: $01 $00 $03
	add  c                                           ; $49fa: $81
	nop                                              ; $49fb: $00
	dec  c                                           ; $49fc: $0d
	ld   bc, $0700                                   ; $49fd: $01 $00 $07
	nop                                              ; $4a00: $00
	dec  e                                           ; $4a01: $1d
	dec  b                                           ; $4a02: $05
	dec  a                                           ; $4a03: $3d
	dec  e                                           ; $4a04: $1d
	ld   [hl], b                                     ; $4a05: $70
	inc  sp                                          ; $4a06: $33
	cpl                                              ; $4a07: $2f
	inc  l                                           ; $4a08: $2c
	rst  $28                                         ; $4a09: $ef
	ld   l, a                                        ; $4a0a: $6f
	add  b                                           ; $4a0b: $80
	ld   d, a                                        ; $4a0c: $57
	add  b                                           ; $4a0d: $80
	dec  [hl]                                        ; $4a0e: $35
	nop                                              ; $4a0f: $00
	rst  $38                                         ; $4a10: $ff
	sbc  l                                           ; $4a11: $9d
	nop                                              ; $4a12: $00
	inc  c                                           ; $4a13: $0c
	cp   a                                           ; $4a14: $bf
	ld   d, e                                        ; $4a15: $53
	or   e                                           ; $4a16: $b3
	add  hl, hl                                      ; $4a17: $29
	dec  hl                                          ; $4a18: $2b
	jr   z, jr_09f_4a76                              ; $4a19: $28 $5b

	inc  d                                           ; $4a1b: $14
	dec  l                                           ; $4a1c: $2d
	ld   [bc], a                                     ; $4a1d: $02
	ld   e, $00                                      ; $4a1e: $1e $00
	dec  bc                                          ; $4a20: $0b
	add  a                                           ; $4a21: $87
	nop                                              ; $4a22: $00
	ld   [bc], a                                     ; $4a23: $02
	ld   bc, $0200                                   ; $4a24: $01 $00 $02
	add  e                                           ; $4a27: $83
	ld   bc, $050e                                   ; $4a28: $01 $0e $05
	inc  bc                                          ; $4a2b: $03
	ld   a, [bc]                                     ; $4a2c: $0a
	rlca                                             ; $4a2d: $07
	dec  d                                           ; $4a2e: $15
	rrca                                             ; $4a2f: $0f
	dec  hl                                          ; $4a30: $2b
	rra                                              ; $4a31: $1f
	ld   d, a                                        ; $4a32: $57
	ccf                                              ; $4a33: $3f
	xor  a                                           ; $4a34: $af
	ld   a, a                                        ; $4a35: $7f
	ld   e, a                                        ; $4a36: $5f
	rst  $38                                         ; $4a37: $ff
	cp   a                                           ; $4a38: $bf
	add  c                                           ; $4a39: $81
	rst  $38                                         ; $4a3a: $ff
	nop                                              ; $4a3b: $00
	ld   a, a                                        ; $4a3c: $7f
	adc  [hl]                                        ; $4a3d: $8e
	nop                                              ; $4a3e: $00
	ld   de, $7fff                                   ; $4a3f: $11 $ff $7f
	rst  $38                                         ; $4a42: $ff
	cp   [hl]                                        ; $4a43: $be
	cp   $de                                         ; $4a44: $fe $de
	ld   a, [hl]                                     ; $4a46: $7e
	db   $ed                                         ; $4a47: $ed
	dec  a                                           ; $4a48: $3d
	ld   [hl], l                                     ; $4a49: $75
	dec  e                                           ; $4a4a: $1d
	dec  sp                                          ; $4a4b: $3b
	dec  bc                                          ; $4a4c: $0b
	dec  de                                          ; $4a4d: $1b
	inc  bc                                          ; $4a4e: $03
	rrca                                             ; $4a4f: $0f
	nop                                              ; $4a50: $00
	ld   bc, $0081                                   ; $4a51: $01 $81 $00
	nop                                              ; $4a54: $00
	ld   [bc], a                                     ; $4a55: $02
	add  c                                           ; $4a56: $81
	ld   bc, $0512                                   ; $4a57: $01 $12 $05
	inc  bc                                          ; $4a5a: $03
	ld   a, [bc]                                     ; $4a5b: $0a
	rlca                                             ; $4a5c: $07
	dec  b                                           ; $4a5d: $05
	rlca                                             ; $4a5e: $07
	rla                                              ; $4a5f: $17
	rrca                                             ; $4a60: $0f
	dec  hl                                          ; $4a61: $2b
	rra                                              ; $4a62: $1f
	rla                                              ; $4a63: $17
	rra                                              ; $4a64: $1f
	rst  JumpTable                                         ; $4a65: $df
	ccf                                              ; $4a66: $3f
	ld   sp, $c6c1                                   ; $4a67: $31 $c1 $c6
	cp   $04                                         ; $4a6a: $fe $04
	add  c                                           ; $4a6c: $81
	db   $fd                                         ; $4a6d: $fd
	ld   bc, $0001                                   ; $4a6e: $01 $01 $00
	add  b                                           ; $4a71: $80
	ldh  [rSB], a                                    ; $4a72: $e0 $01
	add  c                                           ; $4a74: $81
	add  b                                           ; $4a75: $80

jr_09f_4a76:
	add  b                                           ; $4a76: $80
	nop                                              ; $4a77: $00
	ld   bc, $f8f9                                   ; $4a78: $01 $f9 $f8
	add  b                                           ; $4a7b: $80
	db   $fc                                         ; $4a7c: $fc
	add  b                                           ; $4a7d: $80
	ld   hl, sp-$80                                  ; $4a7e: $f8 $80
	and  $00                                         ; $4a80: $e6 $00
	rst  $38                                         ; $4a82: $ff
	adc  l                                           ; $4a83: $8d
	nop                                              ; $4a84: $00
	ld   bc, $dc23                                   ; $4a85: $01 $23 $dc
	add  b                                           ; $4a88: $80
	ld   e, l                                        ; $4a89: $5d
	add  b                                           ; $4a8a: $80
	ld   l, l                                        ; $4a8b: $6d
	rlca                                             ; $4a8c: $07
	or   l                                           ; $4a8d: $b5
	dec  [hl]                                        ; $4a8e: $35
	ld   d, a                                        ; $4a8f: $57
	rla                                              ; $4a90: $17
	sub  a                                           ; $4a91: $97
	rla                                              ; $4a92: $17
	ld   d, a                                        ; $4a93: $57
	rla                                              ; $4a94: $17
	add  b                                           ; $4a95: $80
	dec  d                                           ; $4a96: $15
	nop                                              ; $4a97: $00
	rst  $38                                         ; $4a98: $ff
	sub  e                                           ; $4a99: $93
	nop                                              ; $4a9a: $00
	ld   b, $80                                      ; $4a9b: $06 $80
	nop                                              ; $4a9d: $00
	ldh  [$80], a                                    ; $4a9e: $e0 $80
	ld   d, b                                        ; $4aa0: $50
	ld   b, b                                        ; $4aa1: $40
	adc  b                                           ; $4aa2: $88
	add  c                                           ; $4aa3: $81
	add  b                                           ; $4aa4: $80
	nop                                              ; $4aa5: $00
	ld   hl, sp-$63                                  ; $4aa6: $f8 $9d
	nop                                              ; $4aa8: $00
	jr   nz, @+$09                                   ; $4aa9: $20 $07

	ld   [bc], a                                     ; $4aab: $02
	inc  bc                                          ; $4aac: $03
	nop                                              ; $4aad: $00
	stop                                             ; $4aae: $10 $00
	ld   sp, $6300                                   ; $4ab0: $31 $00 $63
	nop                                              ; $4ab3: $00
	jp   $9900                                       ; $4ab4: $c3 $00 $99


	nop                                              ; $4ab7: $00
	ld   a, [hl]                                     ; $4ab8: $7e
	nop                                              ; $4ab9: $00
	ld   h, l                                        ; $4aba: $65
	nop                                              ; $4abb: $00
	inc  bc                                          ; $4abc: $03
	nop                                              ; $4abd: $00
	stop                                             ; $4abe: $10 $00
	ld   sp, $6300                                   ; $4ac0: $31 $00 $63
	inc  bc                                          ; $4ac3: $03
	ret  nz                                          ; $4ac4: $c0

	nop                                              ; $4ac5: $00
	sbc  c                                           ; $4ac6: $99
	ld   bc, $1f7f                                   ; $4ac7: $01 $7f $1f
	ld   a, a                                        ; $4aca: $7f
	sub  a                                           ; $4acb: $97
	nop                                              ; $4acc: $00
	ld   b, $03                                      ; $4acd: $06 $03
	nop                                              ; $4acf: $00
	inc  e                                           ; $4ad0: $1c
	inc  bc                                          ; $4ad1: $03
	ld   h, d                                        ; $4ad2: $62
	rra                                              ; $4ad3: $1f
	ld   h, c                                        ; $4ad4: $61
	adc  l                                           ; $4ad5: $8d
	nop                                              ; $4ad6: $00
	ld   [bc], a                                     ; $4ad7: $02
	dec  b                                           ; $4ad8: $05
	ld   [bc], a                                     ; $4ad9: $02
	inc  c                                           ; $4ada: $0c
	add  e                                           ; $4adb: $83
	inc  b                                           ; $4adc: $04
	ld   [$0e3e], sp                                 ; $4add: $08 $3e $0e
	adc  $2e                                         ; $4ae0: $ce $2e
	dec  l                                           ; $4ae2: $2d
	db   $ed                                         ; $4ae3: $ed
	dec  a                                           ; $4ae4: $3d
	db   $dd                                         ; $4ae5: $dd
	rst  $38                                         ; $4ae6: $ff
	adc  l                                           ; $4ae7: $8d
	nop                                              ; $4ae8: $00
	dec  bc                                          ; $4ae9: $0b
	ld   h, b                                        ; $4aea: $60
	add  b                                           ; $4aeb: $80
	ldh  a, [$e0]                                    ; $4aec: $f0 $e0
	ld   hl, sp-$10                                  ; $4aee: $f8 $f0
	db   $fc                                         ; $4af0: $fc
	ld   hl, sp-$02                                  ; $4af1: $f8 $fe
	db   $fc                                         ; $4af3: $fc
	rst  $38                                         ; $4af4: $ff
	cp   $80                                         ; $4af5: $fe $80
	rst  $38                                         ; $4af7: $ff
	add  b                                           ; $4af8: $80
	or   $00                                         ; $4af9: $f6 $00
	rst  $38                                         ; $4afb: $ff
	adc  l                                           ; $4afc: $8d
	nop                                              ; $4afd: $00
	db   $10                                         ; $4afe: $10
	push hl                                          ; $4aff: $e5
	ld   hl, sp-$05                                  ; $4b00: $f8 $fb
	ld   hl, sp-$38                                  ; $4b02: $f8 $c8
	add  sp, -$27                                    ; $4b04: $e8 $d9
	ret  c                                           ; $4b06: $d8

	ei                                               ; $4b07: $fb
	cp   b                                           ; $4b08: $b8
	ei                                               ; $4b09: $fb
	ld   a, b                                        ; $4b0a: $78
	pop  hl                                          ; $4b0b: $e1
	ldh  [$9e], a                                    ; $4b0c: $e0 $9e
	add  b                                           ; $4b0e: $80
	ldh  [$8f], a                                    ; $4b0f: $e0 $8f
	nop                                              ; $4b11: $00
	inc  c                                           ; $4b12: $0c
	ld   bc, $0700                                   ; $4b13: $01 $00 $07
	ld   bc, $070c                                   ; $4b16: $01 $0c $07
	inc  de                                          ; $4b19: $13
	rrca                                             ; $4b1a: $0f
	cpl                                              ; $4b1b: $2f
	rra                                              ; $4b1c: $1f
	ld   e, a                                        ; $4b1d: $5f
	ccf                                              ; $4b1e: $3f
	cp   a                                           ; $4b1f: $bf
	add  b                                           ; $4b20: $80
	ld   a, a                                        ; $4b21: $7f
	add  hl, bc                                      ; $4b22: $09
	rst  $38                                         ; $4b23: $ff
	rst  $30                                         ; $4b24: $f7
	rrca                                             ; $4b25: $0f
	or   $01                                         ; $4b26: $f6 $01
	ld   c, $00                                      ; $4b28: $0e $00
	ld   bc, $0100                                   ; $4b2a: $01 $00 $01
	add  l                                           ; $4b2d: $85
	nop                                              ; $4b2e: $00
	ld   b, $fb                                      ; $4b2f: $06 $fb
	nop                                              ; $4b31: $00
	inc  a                                           ; $4b32: $3c
	ld   hl, sp-$3d                                  ; $4b33: $f8 $c3
	cp   $fc                                         ; $4b35: $fe $fc
	add  b                                           ; $4b37: $80
	cp   $89                                         ; $4b38: $fe $89
	rst  $38                                         ; $4b3a: $ff
	inc  c                                           ; $4b3b: $0c
	rst  JumpTable                                         ; $4b3c: $df
	ccf                                              ; $4b3d: $3f
	sbc  e                                           ; $4b3e: $9b
	rlca                                             ; $4b3f: $07
	dec  sp                                          ; $4b40: $3b
	nop                                              ; $4b41: $00
	inc  b                                           ; $4b42: $04
	nop                                              ; $4b43: $00
	ldh  [c], a                                      ; $4b44: $e2
	nop                                              ; $4b45: $00
	db   $e3                                         ; $4b46: $e3
	nop                                              ; $4b47: $00
	call nz, $0081                                   ; $4b48: $c4 $81 $00
	inc  bc                                          ; $4b4b: $03
	ld   c, b                                        ; $4b4c: $48
	nop                                              ; $4b4d: $00
	ld   sp, $8000                                   ; $4b4e: $31 $00 $80
	ld   c, $02                                      ; $4b51: $0e $02
	ld   a, b                                        ; $4b53: $78

jr_09f_4b54:
	rst  $38                                         ; $4b54: $ff
	add  a                                           ; $4b55: $87
	adc  e                                           ; $4b56: $8b
	rst  $38                                         ; $4b57: $ff
	inc  b                                           ; $4b58: $04
	rst  JumpTable                                         ; $4b59: $df
	ccf                                              ; $4b5a: $3f
	sub  a                                           ; $4b5b: $97
	ld   c, $79                                      ; $4b5c: $0e $79
	adc  c                                           ; $4b5e: $89
	nop                                              ; $4b5f: $00
	inc  b                                           ; $4b60: $04
	add  b                                           ; $4b61: $80
	nop                                              ; $4b62: $00
	ld   b, b                                        ; $4b63: $40
	add  b                                           ; $4b64: $80
	and  b                                           ; $4b65: $a0
	add  c                                           ; $4b66: $81
	ld   b, b                                        ; $4b67: $40
	nop                                              ; $4b68: $00
	ret  nc                                          ; $4b69: $d0

	add  d                                           ; $4b6a: $82
	and  b                                           ; $4b6b: $a0
	ld   bc, $48c0                                   ; $4b6c: $01 $c0 $48
	add  d                                           ; $4b6f: $82
	ld   d, b                                        ; $4b70: $50
	add  b                                           ; $4b71: $80
	ld   h, b                                        ; $4b72: $60
	add  c                                           ; $4b73: $81
	and  b                                           ; $4b74: $a0
	ld   [bc], a                                     ; $4b75: $02
	xor  b                                           ; $4b76: $a8
	ret  nz                                          ; $4b77: $c0

	ret  nc                                          ; $4b78: $d0

	add  b                                           ; $4b79: $80
	ret  nz                                          ; $4b7a: $c0

	dec  b                                           ; $4b7b: $05
	add  b                                           ; $4b7c: $80
	and  b                                           ; $4b7d: $a0
	add  b                                           ; $4b7e: $80
	ret  nz                                          ; $4b7f: $c0

	nop                                              ; $4b80: $00
	add  b                                           ; $4b81: $80
	sbc  a                                           ; $4b82: $9f
	nop                                              ; $4b83: $00
	nop                                              ; $4b84: $00
	ld   hl, sp-$7f                                  ; $4b85: $f8 $81
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	rlca                                             ; $4b89: $07
	add  c                                           ; $4b8a: $81
	nop                                              ; $4b8b: $00
	ld   [$6e0e], sp                                 ; $4b8c: $08 $0e $6e
	ld   a, a                                        ; $4b8f: $7f
	rst  JumpTable                                         ; $4b90: $df
	sbc  $9e                                         ; $4b91: $de $9e
	cp   h                                           ; $4b93: $bc
	inc  a                                           ; $4b94: $3c
	rst  $38                                         ; $4b95: $ff
	sub  c                                           ; $4b96: $91
	nop                                              ; $4b97: $00
	inc  c                                           ; $4b98: $0c
	ld   hl, sp+$00                                  ; $4b99: $f8 $00
	ld   b, $00                                      ; $4b9b: $06 $00
	ld   bc, $d818                                   ; $4b9d: $01 $18 $d8
	add  $ee                                         ; $4ba0: $c6 $ee
	db   $eb                                         ; $4ba2: $eb
	rst  $28                                         ; $4ba3: $ef
	db   $ed                                         ; $4ba4: $ed
	cp   $8d                                         ; $4ba5: $fe $8d
	nop                                              ; $4ba7: $00
	ld   bc, $e41b                                   ; $4ba8: $01 $1b $e4
	add  b                                           ; $4bab: $80
	adc  b                                           ; $4bac: $88
	add  b                                           ; $4bad: $80
	db   $10                                         ; $4bae: $10
	ld   [bc], a                                     ; $4baf: $02
	inc  hl                                          ; $4bb0: $23
	jr   nz, jr_09f_4bbf                             ; $4bb1: $20 $0c

	add  l                                           ; $4bb3: $85
	nop                                              ; $4bb4: $00
	nop                                              ; $4bb5: $00
	ldh  a, [$8d]                                    ; $4bb6: $f0 $8d
	nop                                              ; $4bb8: $00
	inc  bc                                          ; $4bb9: $03
	sbc  a                                           ; $4bba: $9f
	ld   h, c                                        ; $4bbb: $61
	sbc  c                                           ; $4bbc: $99
	sbc  b                                           ; $4bbd: $98
	add  b                                           ; $4bbe: $80

jr_09f_4bbf:
	call nz, Call_09f_7080                           ; $4bbf: $c4 $80 $70
	add  d                                           ; $4bc2: $82
	nop                                              ; $4bc3: $00
	ld   [bc], a                                     ; $4bc4: $02
	inc  bc                                          ; $4bc5: $03
	nop                                              ; $4bc6: $00
	inc  b                                           ; $4bc7: $04
	add  e                                           ; $4bc8: $83
	nop                                              ; $4bc9: $00
	nop                                              ; $4bca: $00
	adc  b                                           ; $4bcb: $88
	add  c                                           ; $4bcc: $81
	add  b                                           ; $4bcd: $80
	ld   [bc], a                                     ; $4bce: $02
	sub  b                                           ; $4bcf: $90
	add  b                                           ; $4bd0: $80
	jr   nz, jr_09f_4b54                             ; $4bd1: $20 $81

	nop                                              ; $4bd3: $00
	nop                                              ; $4bd4: $00
	ld   b, b                                        ; $4bd5: $40
	add  e                                           ; $4bd6: $83
	nop                                              ; $4bd7: $00
	nop                                              ; $4bd8: $00
	add  b                                           ; $4bd9: $80
	sub  e                                           ; $4bda: $93
	nop                                              ; $4bdb: $00
	ld   [bc], a                                     ; $4bdc: $02
	add  b                                           ; $4bdd: $80
	nop                                              ; $4bde: $00
	ld   b, b                                        ; $4bdf: $40
	add  c                                           ; $4be0: $81
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	and  b                                           ; $4be3: $a0
	add  e                                           ; $4be4: $83
	add  b                                           ; $4be5: $80
	add  b                                           ; $4be6: $80
	nop                                              ; $4be7: $00
	nop                                              ; $4be8: $00
	db   $10                                         ; $4be9: $10
	add  e                                           ; $4bea: $83
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	ld   [$0083], sp                                 ; $4bed: $08 $83 $00
	inc  c                                           ; $4bf0: $0c
	ld   [$ccc0], sp                                 ; $4bf1: $08 $c0 $cc
	ldh  a, [$f4]                                    ; $4bf4: $f0 $f4
	ldh  a, [$f8]                                    ; $4bf6: $f0 $f8
	ldh  [$b0], a                                    ; $4bf8: $e0 $b0
	ret  nz                                          ; $4bfa: $c0

	and  b                                           ; $4bfb: $a0
	nop                                              ; $4bfc: $00
	ret  nz                                          ; $4bfd: $c0

	sub  c                                           ; $4bfe: $91
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	ld   bc, $0081                                   ; $4c01: $01 $81 $00
	nop                                              ; $4c04: $00
	ld   [bc], a                                     ; $4c05: $02
	add  l                                           ; $4c06: $85
	ld   bc, $0400                                   ; $4c07: $01 $00 $04
	add  l                                           ; $4c0a: $85
	inc  bc                                          ; $4c0b: $03
	nop                                              ; $4c0c: $00
	ld   [bc], a                                     ; $4c0d: $02
	add  c                                           ; $4c0e: $81
	inc  bc                                          ; $4c0f: $03
	inc  c                                           ; $4c10: $0c
	rlca                                             ; $4c11: $07
	ld   bc, $0003                                   ; $4c12: $01 $03 $00
	jp   nz, $b200                                   ; $4c15: $c2 $00 $b2

	add  b                                           ; $4c18: $80
	inc  e                                           ; $4c19: $1c
	ldh  a, [$e6]                                    ; $4c1a: $f0 $e6
	db   $fc                                         ; $4c1c: $fc
	ld   hl, sp-$80                                  ; $4c1d: $f8 $80
	cp   $80                                         ; $4c1f: $fe $80
	db   $fd                                         ; $4c21: $fd
	dec  b                                           ; $4c22: $05
	di                                               ; $4c23: $f3
	ei                                               ; $4c24: $fb
	rst  $28                                         ; $4c25: $ef
	and  a                                           ; $4c26: $a7
	rst  JumpTable                                         ; $4c27: $df
	sbc  a                                           ; $4c28: $9f
	add  b                                           ; $4c29: $80
	ccf                                              ; $4c2a: $3f
	add  b                                           ; $4c2b: $80
	rst  $38                                         ; $4c2c: $ff
	add  hl, bc                                      ; $4c2d: $09
	cp   $ff                                         ; $4c2e: $fe $ff
	ld   a, h                                        ; $4c30: $7c
	halt                                             ; $4c31: $76
	jr   jr_09f_4c48                                 ; $4c32: $18 $14

	nop                                              ; $4c34: $00
	jr   c, jr_09f_4c37                              ; $4c35: $38 $00

jr_09f_4c37:
	ret  nz                                          ; $4c37: $c0

	adc  e                                           ; $4c38: $8b
	nop                                              ; $4c39: $00
	add  b                                           ; $4c3a: $80
	ld   [bc], a                                     ; $4c3b: $02
	add  hl, bc                                      ; $4c3c: $09
	ld   b, a                                        ; $4c3d: $47
	inc  bc                                          ; $4c3e: $03
	dec  bc                                          ; $4c3f: $0b
	nop                                              ; $4c40: $00
	jp   nz, $0103                                   ; $4c41: $c2 $03 $01

	nop                                              ; $4c44: $00
	inc  h                                           ; $4c45: $24
	nop                                              ; $4c46: $00
	add  b                                           ; $4c47: $80

jr_09f_4c48:
	ld   bc, $0200                                   ; $4c48: $01 $00 $02
	add  c                                           ; $4c4b: $81
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	xor  c                                           ; $4c4e: $a9
	adc  l                                           ; $4c4f: $8d
	nop                                              ; $4c50: $00
	db   $10                                         ; $4c51: $10
	ld   d, d                                        ; $4c52: $52
	add  b                                           ; $4c53: $80
	inc  bc                                          ; $4c54: $03
	nop                                              ; $4c55: $00
	cp   b                                           ; $4c56: $b8
	add  b                                           ; $4c57: $80
	ld   bc, $1c00                                   ; $4c58: $01 $00 $1c
	ret  nz                                          ; $4c5b: $c0

	sbc  $90                                         ; $4c5c: $de $90
	adc  a                                           ; $4c5e: $8f
	ld   hl, sp+$37                                  ; $4c5f: $f8 $37
	db   $fc                                         ; $4c61: $fc
	add  $8b                                         ; $4c62: $c6 $8b
	nop                                              ; $4c64: $00
	add  b                                           ; $4c65: $80
	ld   [bc], a                                     ; $4c66: $02
	add  hl, bc                                      ; $4c67: $09
	ld   b, a                                        ; $4c68: $47
	inc  bc                                          ; $4c69: $03
	dec  bc                                          ; $4c6a: $0b
	nop                                              ; $4c6b: $00
	jp   nz, $0103                                   ; $4c6c: $c2 $03 $01

	nop                                              ; $4c6f: $00
	inc  h                                           ; $4c70: $24
	nop                                              ; $4c71: $00
	add  b                                           ; $4c72: $80
	ld   bc, $0200                                   ; $4c73: $01 $00 $02
	add  c                                           ; $4c76: $81
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	xor  c                                           ; $4c79: $a9
	adc  l                                           ; $4c7a: $8d
	nop                                              ; $4c7b: $00
	db   $10                                         ; $4c7c: $10
	ld   d, d                                        ; $4c7d: $52
	add  b                                           ; $4c7e: $80
	inc  bc                                          ; $4c7f: $03
	nop                                              ; $4c80: $00
	cp   b                                           ; $4c81: $b8
	add  b                                           ; $4c82: $80
	pop  bc                                          ; $4c83: $c1
	ret  nz                                          ; $4c84: $c0

	inc  e                                           ; $4c85: $1c
	nop                                              ; $4c86: $00
	ld   e, $90                                      ; $4c87: $1e $90
	adc  a                                           ; $4c89: $8f
	ld   hl, sp+$37                                  ; $4c8a: $f8 $37
	db   $fd                                         ; $4c8c: $fd
	rst  ToBoot                                         ; $4c8d: $c7
	adc  e                                           ; $4c8e: $8b
	nop                                              ; $4c8f: $00
	add  b                                           ; $4c90: $80
	ld   [bc], a                                     ; $4c91: $02
	add  hl, bc                                      ; $4c92: $09
	ld   b, a                                        ; $4c93: $47
	inc  bc                                          ; $4c94: $03
	dec  bc                                          ; $4c95: $0b
	nop                                              ; $4c96: $00
	jp   nz, $0003                                   ; $4c97: $c2 $03 $00

	ld   bc, $0024                                   ; $4c9a: $01 $24 $00
	add  b                                           ; $4c9d: $80
	ld   bc, $0200                                   ; $4c9e: $01 $00 $02
	add  c                                           ; $4ca1: $81
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	xor  c                                           ; $4ca4: $a9
	adc  l                                           ; $4ca5: $8d
	nop                                              ; $4ca6: $00
	jr   nz, jr_09f_4cfb                             ; $4ca7: $20 $52

	add  b                                           ; $4ca9: $80
	inc  bc                                          ; $4caa: $03
	nop                                              ; $4cab: $00
	cp   b                                           ; $4cac: $b8
	add  b                                           ; $4cad: $80
	ld   b, c                                        ; $4cae: $41
	ret  nz                                          ; $4caf: $c0

	call c, $1e40                                    ; $4cb0: $dc $40 $1e
	db   $10                                         ; $4cb3: $10
	rrca                                             ; $4cb4: $0f
	ld   hl, sp+$37                                  ; $4cb5: $f8 $37
	db   $fd                                         ; $4cb7: $fd
	ld   a, [de]                                     ; $4cb8: $1a
	ld   l, [hl]                                     ; $4cb9: $6e
	inc  c                                           ; $4cba: $0c
	ld   c, a                                        ; $4cbb: $4f
	cpl                                              ; $4cbc: $2f
	daa                                              ; $4cbd: $27
	rst  $10                                         ; $4cbe: $d7
	rra                                              ; $4cbf: $1f
	cpl                                              ; $4cc0: $2f
	inc  c                                           ; $4cc1: $0c
	sbc  h                                           ; $4cc2: $9c
	rlca                                             ; $4cc3: $07
	adc  l                                           ; $4cc4: $8d
	inc  bc                                          ; $4cc5: $03
	dec  b                                           ; $4cc6: $05
	nop                                              ; $4cc7: $00
	inc  bc                                          ; $4cc8: $03
	adc  [hl]                                        ; $4cc9: $8e
	nop                                              ; $4cca: $00
	inc  bc                                          ; $4ccb: $03
	rst  $38                                         ; $4ccc: $ff
	ret  nz                                          ; $4ccd: $c0

	rst  $38                                         ; $4cce: $ff
	ccf                                              ; $4ccf: $3f
	add  b                                           ; $4cd0: $80
	rst  $38                                         ; $4cd1: $ff
	add  b                                           ; $4cd2: $80
	cp   a                                           ; $4cd3: $bf
	rrca                                             ; $4cd4: $0f
	rst  $38                                         ; $4cd5: $ff
	ld   a, $ff                                      ; $4cd6: $3e $ff
	ld   a, $fc                                      ; $4cd8: $3e $fc
	rst  $38                                         ; $4cda: $ff
	ei                                               ; $4cdb: $fb
	cp   $66                                         ; $4cdc: $fe $66
	ld   a, c                                        ; $4cde: $79
	jr   jr_09f_4ce7                                 ; $4cdf: $18 $06

	nop                                              ; $4ce1: $00
	jr   c, jr_09f_4ce4                              ; $4ce2: $38 $00

jr_09f_4ce4:
	ret  nz                                          ; $4ce4: $c0

	add  l                                           ; $4ce5: $85
	nop                                              ; $4ce6: $00

jr_09f_4ce7:
	db   $10                                         ; $4ce7: $10
	db   $dd                                         ; $4ce8: $dd
	ld   l, [hl]                                     ; $4ce9: $6e
	inc  c                                           ; $4cea: $0c
	ld   c, a                                        ; $4ceb: $4f
	cpl                                              ; $4cec: $2f
	daa                                              ; $4ced: $27
	sub  $1f                                         ; $4cee: $d6 $1f
	ld   l, $0d                                      ; $4cf0: $2e $0d
	sbc  l                                           ; $4cf2: $9d
	ld   b, $8c                                      ; $4cf3: $06 $8c
	inc  bc                                          ; $4cf5: $03
	dec  b                                           ; $4cf6: $05
	nop                                              ; $4cf7: $00
	inc  bc                                          ; $4cf8: $03
	adc  [hl]                                        ; $4cf9: $8e
	nop                                              ; $4cfa: $00

jr_09f_4cfb:
	inc  bc                                          ; $4cfb: $03
	rst  $38                                         ; $4cfc: $ff
	ret  nz                                          ; $4cfd: $c0

	rst  $38                                         ; $4cfe: $ff
	ccf                                              ; $4cff: $3f
	add  b                                           ; $4d00: $80
	rst  $38                                         ; $4d01: $ff
	add  b                                           ; $4d02: $80
	ccf                                              ; $4d03: $3f
	rrca                                             ; $4d04: $0f
	cp   a                                           ; $4d05: $bf
	ld   a, $ff                                      ; $4d06: $3e $ff
	ld   a, $fc                                      ; $4d08: $3e $fc
	cp   a                                           ; $4d0a: $bf
	ei                                               ; $4d0b: $fb
	cp   $66                                         ; $4d0c: $fe $66
	ld   a, c                                        ; $4d0e: $79
	jr   jr_09f_4d17                                 ; $4d0f: $18 $06

	nop                                              ; $4d11: $00
	jr   c, jr_09f_4d14                              ; $4d12: $38 $00

jr_09f_4d14:
	ret  nz                                          ; $4d14: $c0

	rst  $38                                         ; $4d15: $ff
	nop                                              ; $4d16: $00

jr_09f_4d17:
	rst  $38                                         ; $4d17: $ff
	nop                                              ; $4d18: $00
	rst  $38                                         ; $4d19: $ff
	nop                                              ; $4d1a: $00
	rst  $38                                         ; $4d1b: $ff
	nop                                              ; $4d1c: $00
	rst  $38                                         ; $4d1d: $ff
	nop                                              ; $4d1e: $00
	rst  $38                                         ; $4d1f: $ff
	nop                                              ; $4d20: $00
	sbc  a                                           ; $4d21: $9f
	nop                                              ; $4d22: $00
	ld   [$8801], sp                                 ; $4d23: $08 $01 $88
	nop                                              ; $4d26: $00
	ld   [$0001], sp                                 ; $4d27: $08 $01 $00
	ld   [bc], a                                     ; $4d2a: $02
	ld   bc, $0305                                   ; $4d2b: $01 $05 $03
	dec  bc                                          ; $4d2e: $0b
	rlca                                             ; $4d2f: $07
	rla                                              ; $4d30: $17
	add  b                                           ; $4d31: $80
	inc  c                                           ; $4d32: $0c
	ld   bc, $2b0b                                   ; $4d33: $01 $0b $2b
	add  b                                           ; $4d36: $80
	rla                                              ; $4d37: $17
	ld   bc, $4f0f                                   ; $4d38: $01 $0f $4f
	add  b                                           ; $4d3b: $80
	rrca                                             ; $4d3c: $0f
	add  c                                           ; $4d3d: $81

jr_09f_4d3e:
	rra                                              ; $4d3e: $1f
	ld   a, [bc]                                     ; $4d3f: $0a
	ld   h, b                                        ; $4d40: $60
	nop                                              ; $4d41: $00
	ld   bc, $0600                                   ; $4d42: $01 $00 $06
	ld   bc, $0719                                   ; $4d45: $01 $19 $07
	ld   h, a                                        ; $4d48: $67
	rra                                              ; $4d49: $1f
	sbc  a                                           ; $4d4a: $9f
	add  b                                           ; $4d4b: $80
	ld   a, h                                        ; $4d4c: $7c
	add  b                                           ; $4d4d: $80
	di                                               ; $4d4e: $f3
	ld   bc, $30cf                                   ; $4d4f: $01 $cf $30
	adc  l                                           ; $4d52: $8d
	nop                                              ; $4d53: $00
	ld   [bc], a                                     ; $4d54: $02
	ccf                                              ; $4d55: $3f
	nop                                              ; $4d56: $00
	ret  nz                                          ; $4d57: $c0

	add  b                                           ; $4d58: $80
	ccf                                              ; $4d59: $3f
	add  b                                           ; $4d5a: $80
	rst  $38                                         ; $4d5b: $ff
	add  b                                           ; $4d5c: $80
	ldh  [$80], a                                    ; $4d5d: $e0 $80
	scf                                              ; $4d5f: $37
	add  d                                           ; $4d60: $82
	rst  $38                                         ; $4d61: $ff
	ld   bc, $08f7                                   ; $4d62: $01 $f7 $08
	adc  l                                           ; $4d65: $8d
	nop                                              ; $4d66: $00
	ld   [bc], a                                     ; $4d67: $02
	ld   hl, sp+$00                                  ; $4d68: $f8 $00
	rlca                                             ; $4d6a: $07
	add  b                                           ; $4d6b: $80
	ld   hl, sp-$80                                  ; $4d6c: $f8 $80
	rst  $38                                         ; $4d6e: $ff
	add  b                                           ; $4d6f: $80
	ld   a, a                                        ; $4d70: $7f
	add  b                                           ; $4d71: $80
	add  e                                           ; $4d72: $83
	add  b                                           ; $4d73: $80
	db   $fc                                         ; $4d74: $fc
	add  c                                           ; $4d75: $81
	rst  $38                                         ; $4d76: $ff
	sub  d                                           ; $4d77: $92
	nop                                              ; $4d78: $00
	ld   [$00c0], sp                                 ; $4d79: $08 $c0 $00
	jr   nc, jr_09f_4d3e                             ; $4d7c: $30 $c0

	call z, $f2f0                                    ; $4d7e: $cc $f0 $f2
	inc  a                                           ; $4d81: $3c
	dec  a                                           ; $4d82: $3d
	add  b                                           ; $4d83: $80
	adc  $01                                         ; $4d84: $ce $01
	di                                               ; $4d86: $f3
	inc  c                                           ; $4d87: $0c
	sbc  c                                           ; $4d88: $99
	nop                                              ; $4d89: $00
	inc  c                                           ; $4d8a: $0c
	add  b                                           ; $4d8b: $80
	nop                                              ; $4d8c: $00
	ld   b, b                                        ; $4d8d: $40
	add  b                                           ; $4d8e: $80
	and  b                                           ; $4d8f: $a0
	ret  nz                                          ; $4d90: $c0

	ret  nc                                          ; $4d91: $d0

	ld   h, b                                        ; $4d92: $60
	ld   l, b                                        ; $4d93: $68
	or   b                                           ; $4d94: $b0
	or   h                                           ; $4d95: $b4
	ret  c                                           ; $4d96: $d8

	jp   c, $ec80                                    ; $4d97: $da $80 $ec

	ld   bc, $f5f4                                   ; $4d9a: $01 $f4 $f5
	add  c                                           ; $4d9d: $81
	ld   a, [$7a08]                                  ; $4d9e: $fa $08 $7a
	ccf                                              ; $4da1: $3f
	ld   a, a                                        ; $4da2: $7f
	ld   e, $3e                                      ; $4da3: $1e $3e
	nop                                              ; $4da5: $00
	jr   jr_09f_4da8                                 ; $4da6: $18 $00

jr_09f_4da8:
	ld   b, $83                                      ; $4da8: $06 $83
	nop                                              ; $4daa: $00
	ld   a, [bc]                                     ; $4dab: $0a
	ld   [bc], a                                     ; $4dac: $02
	nop                                              ; $4dad: $00
	inc  b                                           ; $4dae: $04
	nop                                              ; $4daf: $00
	ld   b, $00                                      ; $4db0: $06 $00
	ld   [bc], a                                     ; $4db2: $02
	nop                                              ; $4db3: $00
	ld   bc, $0200                                   ; $4db4: $01 $00 $02
	add  e                                           ; $4db7: $83
	nop                                              ; $4db8: $00
	ld   [bc], a                                     ; $4db9: $02
	ld   bc, $fe00                                   ; $4dba: $01 $00 $fe
	add  d                                           ; $4dbd: $82
	db   $fc                                         ; $4dbe: $fc
	add  b                                           ; $4dbf: $80
	ld   a, [hl]                                     ; $4dc0: $7e
	add  hl, bc                                      ; $4dc1: $09
	ld   a, $3f                                      ; $4dc2: $3e $3f
	inc  a                                           ; $4dc4: $3c
	ld   a, $30                                      ; $4dc5: $3e $30
	inc  a                                           ; $4dc7: $3c
	nop                                              ; $4dc8: $00
	jr   nc, jr_09f_4dcb                             ; $4dc9: $30 $00

jr_09f_4dcb:
	ld   b, b                                        ; $4dcb: $40
	add  c                                           ; $4dcc: $81
	nop                                              ; $4dcd: $00
	ld   b, $40                                      ; $4dce: $06 $40
	nop                                              ; $4dd0: $00

jr_09f_4dd1:
	ld   b, b                                        ; $4dd1: $40
	nop                                              ; $4dd2: $00
	ld   b, b                                        ; $4dd3: $40
	nop                                              ; $4dd4: $00
	ret  nz                                          ; $4dd5: $c0

	add  c                                           ; $4dd6: $81
	nop                                              ; $4dd7: $00
	ld   [bc], a                                     ; $4dd8: $02
	add  b                                           ; $4dd9: $80
	nop                                              ; $4dda: $00
	add  c                                           ; $4ddb: $81
	add  e                                           ; $4ddc: $83
	nop                                              ; $4ddd: $00
	nop                                              ; $4dde: $00
	ld   bc, $0097                                   ; $4ddf: $01 $97 $00
	nop                                              ; $4de2: $00
	add  b                                           ; $4de3: $80
	add  e                                           ; $4de4: $83
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	add  b                                           ; $4de7: $80
	sbc  l                                           ; $4de8: $9d
	nop                                              ; $4de9: $00
	ld   a, [bc]                                     ; $4dea: $0a
	inc  bc                                          ; $4deb: $03
	nop                                              ; $4dec: $00
	inc  c                                           ; $4ded: $0c
	inc  bc                                          ; $4dee: $03
	rla                                              ; $4def: $17
	ld   b, $2e                                      ; $4df0: $06 $2e
	ld   e, $d6                                      ; $4df2: $1e $d6
	ld   e, $e5                                      ; $4df4: $1e $e5
	adc  a                                           ; $4df6: $8f
	nop                                              ; $4df7: $00
	inc  b                                           ; $4df8: $04
	rrca                                             ; $4df9: $0f
	nop                                              ; $4dfa: $00
	ld   [hl], b                                     ; $4dfb: $70
	rrca                                             ; $4dfc: $0f
	adc  a                                           ; $4dfd: $8f
	add  b                                           ; $4dfe: $80
	ld   a, a                                        ; $4dff: $7f
	add  b                                           ; $4e00: $80
	ld   a, b                                        ; $4e01: $78
	add  b                                           ; $4e02: $80
	ld   b, a                                        ; $4e03: $47
	add  b                                           ; $4e04: $80
	rrca                                             ; $4e05: $0f
	ld   bc, $e01f                                   ; $4e06: $01 $1f $e0
	adc  l                                           ; $4e09: $8d
	nop                                              ; $4e0a: $00
	ld   bc, $020d                                   ; $4e0b: $01 $0d $02
	add  b                                           ; $4e0e: $80
	inc  b                                           ; $4e0f: $04
	add  b                                           ; $4e10: $80
	ld   b, $80                                      ; $4e11: $06 $80
	inc  bc                                          ; $4e13: $03
	add  b                                           ; $4e14: $80
	nop                                              ; $4e15: $00
	ld   b, $30                                      ; $4e16: $06 $30
	nop                                              ; $4e18: $00
	ld   b, b                                        ; $4e19: $40

jr_09f_4e1a:
	rlca                                             ; $4e1a: $07
	add  a                                           ; $4e1b: $87
	daa                                              ; $4e1c: $27
	ret  c                                           ; $4e1d: $d8

	adc  l                                           ; $4e1e: $8d
	nop                                              ; $4e1f: $00
	db   $10                                         ; $4e20: $10
	add  b                                           ; $4e21: $80
	ld   b, b                                        ; $4e22: $40
	nop                                              ; $4e23: $00
	jr   nz, jr_09f_4e26                             ; $4e24: $20 $00

jr_09f_4e26:
	stop                                             ; $4e26: $10 $00

jr_09f_4e28:
	ld   [$00c7], sp                                 ; $4e28: $08 $c7 $00
	ei                                               ; $4e2b: $fb
	inc  bc                                          ; $4e2c: $03
	dec  a                                           ; $4e2d: $3d
	pop  bc                                          ; $4e2e: $c1
	call nz, $0ff0                                   ; $4e2f: $c4 $f0 $0f
	adc  l                                           ; $4e32: $8d
	nop                                              ; $4e33: $00
	inc  bc                                          ; $4e34: $03
	inc  bc                                          ; $4e35: $03
	inc  b                                           ; $4e36: $04
	dec  b                                           ; $4e37: $05
	dec  c                                           ; $4e38: $0d
	add  b                                           ; $4e39: $80
	ld   [$000a], sp                                 ; $4e3a: $08 $0a $00
	db   $10                                         ; $4e3d: $10
	db   $e3                                         ; $4e3e: $e3
	nop                                              ; $4e3f: $00
	cp   a                                           ; $4e40: $bf
	add  b                                           ; $4e41: $80
	ld   a, h                                        ; $4e42: $7c
	nop                                              ; $4e43: $00
	ld   b, b                                        ; $4e44: $40
	rra                                              ; $4e45: $1f
	ldh  [$8d], a                                    ; $4e46: $e0 $8d
	nop                                              ; $4e48: $00
	ld   bc, $a058                                   ; $4e49: $01 $58 $a0
	add  b                                           ; $4e4c: $80
	sub  b                                           ; $4e4d: $90
	add  b                                           ; $4e4e: $80
	jr   nc, jr_09f_4dd1                             ; $4e4f: $30 $80

	ldh  [$80], a                                    ; $4e51: $e0 $80
	add  b                                           ; $4e53: $80
	ld   b, $04                                      ; $4e54: $06 $04
	nop                                              ; $4e56: $00
	ld   [bc], a                                     ; $4e57: $02
	ldh  a, [$f1]                                    ; $4e58: $f0 $f1
	ldh  a, [rIF]                                    ; $4e5a: $f0 $0f
	adc  a                                           ; $4e5c: $8f
	nop                                              ; $4e5d: $00
	inc  b                                           ; $4e5e: $04
	ldh  a, [rP1]                                    ; $4e5f: $f0 $00
	ld   c, $70                                      ; $4e61: $0e $70
	ld   [hl], c                                     ; $4e63: $71
	add  b                                           ; $4e64: $80
	cp   $82                                         ; $4e65: $fe $82
	rst  $38                                         ; $4e67: $ff
	add  c                                           ; $4e68: $81
	cp   $00                                         ; $4e69: $fe $00
	ld   bc, $0093                                   ; $4e6b: $01 $93 $00
	ld   a, [bc]                                     ; $4e6e: $0a
	add  b                                           ; $4e6f: $80
	nop                                              ; $4e70: $00
	ld   [hl], b                                     ; $4e71: $70
	nop                                              ; $4e72: $00
	inc  c                                           ; $4e73: $0c
	jr   nc, jr_09f_4ea1                             ; $4e74: $30 $2b

	inc  a                                           ; $4e76: $3c
	inc  b                                           ; $4e77: $04
	ld   a, [hl]                                     ; $4e78: $7e
	and  c                                           ; $4e79: $a1
	adc  l                                           ; $4e7a: $8d
	nop                                              ; $4e7b: $00
	ld   [bc], a                                     ; $4e7c: $02
	ld   bc, $0200                                   ; $4e7d: $01 $00 $02
	add  h                                           ; $4e80: $84
	ld   bc, $0083                                   ; $4e81: $01 $83 $00
	nop                                              ; $4e84: $00
	ld   [bc], a                                     ; $4e85: $02
	add  e                                           ; $4e86: $83
	nop                                              ; $4e87: $00
	inc  b                                           ; $4e88: $04
	ld   b, $00                                      ; $4e89: $06 $00
	jr   @+$08                                       ; $4e8b: $18 $06

	ld   h, $80                                      ; $4e8d: $26 $80
	ld   a, [de]                                     ; $4e8f: $1a
	add  b                                           ; $4e90: $80
	ld   de, $1880                                   ; $4e91: $11 $80 $18
	inc  bc                                          ; $4e94: $03
	rra                                              ; $4e95: $1f
	ldh  [rP1], a                                    ; $4e96: $e0 $00
	jr   nz, jr_09f_4e1a                             ; $4e98: $20 $80

	add  b                                           ; $4e9a: $80
	add  h                                           ; $4e9b: $84
	ret  nz                                          ; $4e9c: $c0

	add  c                                           ; $4e9d: $81
	add  b                                           ; $4e9e: $80
	nop                                              ; $4e9f: $00
	and  b                                           ; $4ea0: $a0

jr_09f_4ea1:
	add  l                                           ; $4ea1: $85
	nop                                              ; $4ea2: $00
	ld   b, $20                                      ; $4ea3: $06 $20
	nop                                              ; $4ea5: $00

jr_09f_4ea6:
	jr   jr_09f_4e28                                 ; $4ea6: $18 $80

	add  h                                           ; $4ea8: $84
	cp   b                                           ; $4ea9: $b8
	cp   d                                           ; $4eaa: $ba
	add  b                                           ; $4eab: $80
	sbc  b                                           ; $4eac: $98
	ld   bc, $36c8                                   ; $4ead: $01 $c8 $36
	add  b                                           ; $4eb0: $80
	ld   a, h                                        ; $4eb1: $7c
	add  b                                           ; $4eb2: $80
	ldh  a, [$80]                                    ; $4eb3: $f0 $80
	ret  nz                                          ; $4eb5: $c0

	nop                                              ; $4eb6: $00
	nop                                              ; $4eb7: $00
	add  h                                           ; $4eb8: $84
	add  b                                           ; $4eb9: $80
	sub  c                                           ; $4eba: $91
	nop                                              ; $4ebb: $00
	add  b                                           ; $4ebc: $80
	inc  bc                                          ; $4ebd: $03
	sbc  h                                           ; $4ebe: $9c
	nop                                              ; $4ebf: $00
	add  b                                           ; $4ec0: $80
	ldh  a, [$80]                                    ; $4ec1: $f0 $80
	ld   [hl], b                                     ; $4ec3: $70
	ld   bc, $1810                                   ; $4ec4: $01 $10 $18
	add  c                                           ; $4ec7: $81
	ld   [$0b80], sp                                 ; $4ec8: $08 $80 $0b
	add  b                                           ; $4ecb: $80
	inc  bc                                          ; $4ecc: $03
	rst  $38                                         ; $4ecd: $ff
	nop                                              ; $4ece: $00
	rst  $38                                         ; $4ecf: $ff
	nop                                              ; $4ed0: $00
	xor  [hl]                                        ; $4ed1: $ae
	nop                                              ; $4ed2: $00
	ld   bc, $3fc0                                   ; $4ed3: $01 $c0 $3f
	add  b                                           ; $4ed6: $80
	rst  $38                                         ; $4ed7: $ff
	add  b                                           ; $4ed8: $80
	db   $fc                                         ; $4ed9: $fc
	add  b                                           ; $4eda: $80
	di                                               ; $4edb: $f3
	add  b                                           ; $4edc: $80
	ldh  [rTAC], a                                   ; $4edd: $e0 $07
	ret  nz                                          ; $4edf: $c0

	pop  bc                                          ; $4ee0: $c1
	add  c                                           ; $4ee1: $81
	add  a                                           ; $4ee2: $87
	rlca                                             ; $4ee3: $07
	rra                                              ; $4ee4: $1f
	add  sp, -$09                                    ; $4ee5: $e8 $f7
	add  b                                           ; $4ee7: $80
	ei                                               ; $4ee8: $fb
	add  b                                           ; $4ee9: $80
	ldh  a, [$0b]                                    ; $4eea: $f0 $0b
	add  h                                           ; $4eec: $84
	add  b                                           ; $4eed: $80
	dec  de                                          ; $4eee: $1b
	ld   h, b                                        ; $4eef: $60
	ld   [hl], c                                     ; $4ef0: $71
	ldh  [$f5], a                                    ; $4ef1: $e0 $f5
	ldh  [$fb], a                                    ; $4ef3: $e0 $fb
	add  b                                           ; $4ef5: $80
	ld   a, a                                        ; $4ef6: $7f
	rst  $38                                         ; $4ef7: $ff
	add  b                                           ; $4ef8: $80
	ld   sp, hl                                      ; $4ef9: $f9
	add  b                                           ; $4efa: $80
	ld   e, $80                                      ; $4efb: $1e $80
	inc  bc                                          ; $4efd: $03
	nop                                              ; $4efe: $00
	nop                                              ; $4eff: $00
	add  b                                           ; $4f00: $80
	ld   [hl], b                                     ; $4f01: $70
	add  b                                           ; $4f02: $80
	ld   a, [hl]                                     ; $4f03: $7e
	add  b                                           ; $4f04: $80
	ld   a, a                                        ; $4f05: $7f
	ld   [bc], a                                     ; $4f06: $02
	rra                                              ; $4f07: $1f
	ldh  [c], a                                      ; $4f08: $e2
	db   $fd                                         ; $4f09: $fd
	add  b                                           ; $4f0a: $80
	rst  $38                                         ; $4f0b: $ff
	add  b                                           ; $4f0c: $80
	ld   a, a                                        ; $4f0d: $7f
	add  b                                           ; $4f0e: $80
	rra                                              ; $4f0f: $1f
	add  b                                           ; $4f10: $80
	rrca                                             ; $4f11: $0f
	add  b                                           ; $4f12: $80
	rlca                                             ; $4f13: $07
	rrca                                             ; $4f14: $0f
	inc  bc                                          ; $4f15: $03
	add  e                                           ; $4f16: $83
	add  c                                           ; $4f17: $81
	pop  hl                                          ; $4f18: $e1
	ldh  [$7c], a                                    ; $4f19: $e0 $7c
	ld   a, a                                        ; $4f1b: $7f
	ld   [hl], b                                     ; $4f1c: $70
	ld   a, h                                        ; $4f1d: $7c
	ld   c, h                                        ; $4f1e: $4c
	ld   a, l                                        ; $4f1f: $7d
	inc  a                                           ; $4f20: $3c
	cp   e                                           ; $4f21: $bb
	jr   c, jr_09f_4f4a                              ; $4f22: $38 $26

	jr   nz, jr_09f_4ea6                             ; $4f24: $20 $80

	jr   jr_09f_4f2d                                 ; $4f26: $18 $05

	cp   a                                           ; $4f28: $bf
	jr   nc, jr_09f_4fa2                             ; $4f29: $30 $77

	ld   a, a                                        ; $4f2b: $7f
	rst  $38                                         ; $4f2c: $ff

jr_09f_4f2d:
	ld   a, a                                        ; $4f2d: $7f
	add  b                                           ; $4f2e: $80
	ld   h, b                                        ; $4f2f: $60
	ld   [bc], a                                     ; $4f30: $02
	sbc  a                                           ; $4f31: $9f
	rra                                              ; $4f32: $1f
	rst  $38                                         ; $4f33: $ff
	add  b                                           ; $4f34: $80
	ld   a, a                                        ; $4f35: $7f
	nop                                              ; $4f36: $00
	rst  $38                                         ; $4f37: $ff
	add  b                                           ; $4f38: $80
	ret  nz                                          ; $4f39: $c0

	add  b                                           ; $4f3a: $80
	nop                                              ; $4f3b: $00
	inc  bc                                          ; $4f3c: $03
	ldh  [$e3], a                                    ; $4f3d: $e0 $e3
	rst  $38                                         ; $4f3f: $ff
	db   $fc                                         ; $4f40: $fc
	add  b                                           ; $4f41: $80
	ccf                                              ; $4f42: $3f
	add  b                                           ; $4f43: $80
	rst  ToBoot                                         ; $4f44: $c7
	add  b                                           ; $4f45: $80
	ld   hl, sp-$80                                  ; $4f46: $f8 $80
	rst  $38                                         ; $4f48: $ff
	add  b                                           ; $4f49: $80

jr_09f_4f4a:
	cp   $80                                         ; $4f4a: $fe $80
	inc  e                                           ; $4f4c: $1c
	nop                                              ; $4f4d: $00
	nop                                              ; $4f4e: $00
	add  b                                           ; $4f4f: $80
	ldh  a, [$03]                                    ; $4f50: $f0 $03
	ld   [hl], b                                     ; $4f52: $70
	ldh  a, [$90]                                    ; $4f53: $f0 $90
	sbc  b                                           ; $4f55: $98
	add  c                                           ; $4f56: $81
	add  b                                           ; $4f57: $80
	inc  b                                           ; $4f58: $04
	inc  bc                                          ; $4f59: $03
	nop                                              ; $4f5a: $00
	ld   [$0300], sp                                 ; $4f5b: $08 $00 $03
	add  c                                           ; $4f5e: $81
	nop                                              ; $4f5f: $00
	add  b                                           ; $4f60: $80
	ld   hl, sp-$80                                  ; $4f61: $f8 $80
	cp   $88                                         ; $4f63: $fe $88
	rst  $38                                         ; $4f65: $ff
	add  b                                           ; $4f66: $80
	ld   h, a                                        ; $4f67: $67
	add  b                                           ; $4f68: $80
	ld   [hl], a                                     ; $4f69: $77
	add  b                                           ; $4f6a: $80
	dec  sp                                          ; $4f6b: $3b
	add  b                                           ; $4f6c: $80
	sbc  h                                           ; $4f6d: $9c
	add  b                                           ; $4f6e: $80
	rst  $30                                         ; $4f6f: $f7
	add  b                                           ; $4f70: $80
	cp   a                                           ; $4f71: $bf
	add  b                                           ; $4f72: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f73: $cf
	add  b                                           ; $4f74: $80
	ldh  [$0b], a                                    ; $4f75: $e0 $0b
	ld   a, $fe                                      ; $4f77: $3e $fe
	ld   b, d                                        ; $4f79: $42
	cp   $4e                                         ; $4f7a: $fe $4e
	adc  $4e                                         ; $4f7c: $ce $4e
	adc  $76                                         ; $4f7e: $ce $76
	ld   c, $84                                      ; $4f80: $0e $84
	add  b                                           ; $4f82: $80
	add  b                                           ; $4f83: $80
	rst  ToBoot                                         ; $4f84: $c7
	add  b                                           ; $4f85: $80
	inc  e                                           ; $4f86: $1c
	dec  bc                                          ; $4f87: $0b
	ld   sp, hl                                      ; $4f88: $f9
	rst  $38                                         ; $4f89: $ff
	add  l                                           ; $4f8a: $85
	rst  $38                                         ; $4f8b: $ff
	push hl                                          ; $4f8c: $e5
	rst  $20                                         ; $4f8d: $e7
	db   $ed                                         ; $4f8e: $ed
	rst  $28                                         ; $4f8f: $ef
	ret  nz                                          ; $4f90: $c0

	db   $fc                                         ; $4f91: $fc
	ld   b, b                                        ; $4f92: $40
	nop                                              ; $4f93: $00
	add  b                                           ; $4f94: $80
	cp   $80                                         ; $4f95: $fe $80
	ld   a, c                                        ; $4f97: $79
	add  d                                           ; $4f98: $82
	ldh  a, [$80]                                    ; $4f99: $f0 $80
	add  sp, -$80                                    ; $4f9b: $e8 $80
	adc  h                                           ; $4f9d: $8c
	add  b                                           ; $4f9e: $80
	ld   e, $80                                      ; $4f9f: $1e $80
	ccf                                              ; $4fa1: $3f

jr_09f_4fa2:
	add  d                                           ; $4fa2: $82
	rst  $38                                         ; $4fa3: $ff
	add  h                                           ; $4fa4: $84
	nop                                              ; $4fa5: $00
	add  b                                           ; $4fa6: $80
	rlca                                             ; $4fa7: $07
	add  b                                           ; $4fa8: $80
	rra                                              ; $4fa9: $1f
	add  h                                           ; $4faa: $84
	rst  $38                                         ; $4fab: $ff
	ld   bc, $ccd2                                   ; $4fac: $01 $d2 $cc
	add  b                                           ; $4faf: $80
	add  h                                           ; $4fb0: $84
	dec  b                                           ; $4fb1: $05
	ld   b, h                                        ; $4fb2: $44
	inc  b                                           ; $4fb3: $04
	ld   c, $08                                      ; $4fb4: $0e $08
	db   $db                                         ; $4fb6: $db
	inc  bc                                          ; $4fb7: $03
	add  b                                           ; $4fb8: $80
	rrca                                             ; $4fb9: $0f
	add  d                                           ; $4fba: $82
	ccf                                              ; $4fbb: $3f
	ld   bc, $3fbf                                   ; $4fbc: $01 $bf $3f
	add  d                                           ; $4fbf: $82
	ld   a, a                                        ; $4fc0: $7f
	sbc  b                                           ; $4fc1: $98
	rst  $38                                         ; $4fc2: $ff
	add  b                                           ; $4fc3: $80
	db   $fc                                         ; $4fc4: $fc
	add  b                                           ; $4fc5: $80
	cp   $80                                         ; $4fc6: $fe $80
	rst  $38                                         ; $4fc8: $ff
	add  d                                           ; $4fc9: $82
	cp   $00                                         ; $4fca: $fe $00
	db   $fd                                         ; $4fcc: $fd
	add  c                                           ; $4fcd: $81
	db   $fc                                         ; $4fce: $fc
	ld   a, [bc]                                     ; $4fcf: $0a
	ld   a, [$28f8]                                  ; $4fd0: $fa $f8 $28
	ld   [$0848], sp                                 ; $4fd3: $08 $48 $08
	cpl                                              ; $4fd6: $2f
	inc  c                                           ; $4fd7: $0c
	adc  a                                           ; $4fd8: $8f
	rrca                                             ; $4fd9: $0f
	ld   c, a                                        ; $4fda: $4f
	add  c                                           ; $4fdb: $81
	rrca                                             ; $4fdc: $0f
	ld   bc, $0e8e                                   ; $4fdd: $01 $8e $0e
	add  d                                           ; $4fe0: $82
	rrca                                             ; $4fe1: $0f
	add  b                                           ; $4fe2: $80
	ccf                                              ; $4fe3: $3f
	add  b                                           ; $4fe4: $80
	ld   a, a                                        ; $4fe5: $7f
	add  b                                           ; $4fe6: $80
	rst  $38                                         ; $4fe7: $ff
	add  b                                           ; $4fe8: $80
	db   $fd                                         ; $4fe9: $fd
	add  b                                           ; $4fea: $80
	jp   $0f80                                       ; $4feb: $c3 $80 $0f


	add  b                                           ; $4fee: $80
	ccf                                              ; $4fef: $3f
	add  [hl]                                        ; $4ff0: $86
	cp   $86                                         ; $4ff1: $fe $86
	rst  $38                                         ; $4ff3: $ff

jr_09f_4ff4:
	inc  bc                                          ; $4ff4: $03
	ld   b, l                                        ; $4ff5: $45

jr_09f_4ff6:
	add  hl, sp                                      ; $4ff6: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff7: $cf
	ld   c, e                                        ; $4ff8: $4b
	add  b                                           ; $4ff9: $80
	ld   b, e                                        ; $4ffa: $43
	dec  b                                           ; $4ffb: $05
	rst  $28                                         ; $4ffc: $ef
	ld   h, a                                        ; $4ffd: $67
	rst  $20                                         ; $4ffe: $e7
	add  a                                           ; $4fff: $87
	rst  $30                                         ; $5000: $f7

jr_09f_5001:
	rst  $20                                         ; $5001: $e7
	add  d                                           ; $5002: $82
	cp   a                                           ; $5003: $bf
	ld   bc, $1797                                   ; $5004: $01 $97 $17
	add  d                                           ; $5007: $82
	dec  de                                          ; $5008: $1b
	nop                                              ; $5009: $00
	ret                                              ; $500a: $c9


jr_09f_500b:
	add  c                                           ; $500b: $81
	add  hl, bc                                      ; $500c: $09
	ld   bc, $0969                                   ; $500d: $01 $69 $09
	add  b                                           ; $5010: $80
	adc  b                                           ; $5011: $88
	ld   [bc], a                                     ; $5012: $02
	jr   nc, jr_09f_5015                             ; $5013: $30 $00

jr_09f_5015:
	rst  $28                                         ; $5015: $ef
	adc  l                                           ; $5016: $8d
	rst  $38                                         ; $5017: $ff
	ld   de, $f8fa                                   ; $5018: $11 $fa $f8
	db   $f4                                         ; $501b: $f4
	ldh  a, [$f2]                                    ; $501c: $f0 $f2
	ldh  a, [$e8]                                    ; $501e: $f0 $e8
	ldh  [$e4], a                                    ; $5020: $e0 $e4
	ldh  [$d1], a                                    ; $5022: $e0 $d1
	pop  bc                                          ; $5024: $c1
	xor  c                                           ; $5025: $a9
	add  c                                           ; $5026: $81
	inc  de                                          ; $5027: $13
	inc  bc                                          ; $5028: $03
	ld   c, a                                        ; $5029: $4f
	ld   l, a                                        ; $502a: $6f
	add  b                                           ; $502b: $80
	ld   e, a                                        ; $502c: $5f
	add  [hl]                                        ; $502d: $86
	rst  JumpTable                                         ; $502e: $df
	add  b                                           ; $502f: $80
	ret  c                                           ; $5030: $d8

	ld   [bc], a                                     ; $5031: $02
	or   [hl]                                        ; $5032: $b6
	or   b                                           ; $5033: $b0
	ld   sp, hl                                      ; $5034: $f9
	add  a                                           ; $5035: $87
	rst  $38                                         ; $5036: $ff
	add  b                                           ; $5037: $80
	rst  $30                                         ; $5038: $f7
	add  b                                           ; $5039: $80
	rra                                              ; $503a: $1f
	add  b                                           ; $503b: $80
	ccf                                              ; $503c: $3f
	add  h                                           ; $503d: $84
	rst  $38                                         ; $503e: $ff
	add  d                                           ; $503f: $82
	cp   $80                                         ; $5040: $fe $80
	db   $fc                                         ; $5042: $fc
	add  b                                           ; $5043: $80
	ld   hl, sp-$80                                  ; $5044: $f8 $80
	ldh  a, [$84]                                    ; $5046: $f0 $84
	ld   a, [hl]                                     ; $5048: $7e
	add  b                                           ; $5049: $80
	ld   a, h                                        ; $504a: $7c
	add  b                                           ; $504b: $80
	db   $fc                                         ; $504c: $fc
	add  b                                           ; $504d: $80
	ld   sp, hl                                      ; $504e: $f9
	add  b                                           ; $504f: $80
	pop  af                                          ; $5050: $f1
	add  b                                           ; $5051: $80
	db   $e3                                         ; $5052: $e3
	nop                                              ; $5053: $00
	rst  $38                                         ; $5054: $ff
	rst  $38                                         ; $5055: $ff
	nop                                              ; $5056: $00
	rst  $38                                         ; $5057: $ff
	nop                                              ; $5058: $00
	rst  $38                                         ; $5059: $ff
	nop                                              ; $505a: $00
	rst  $38                                         ; $505b: $ff
	nop                                              ; $505c: $00
	xor  c                                           ; $505d: $a9
	nop                                              ; $505e: $00
	ld   [de], a                                     ; $505f: $12

jr_09f_5060:
	ld   bc, $0000                                   ; $5060: $01 $00 $00
	sub  c                                           ; $5063: $91
	rst  $38                                         ; $5064: $ff
	add  b                                           ; $5065: $80
	db   $fc                                         ; $5066: $fc
	add  b                                           ; $5067: $80
	cp   $86                                         ; $5068: $fe $86
	rst  $38                                         ; $506a: $ff
	add  b                                           ; $506b: $80
	rra                                              ; $506c: $1f
	add  b                                           ; $506d: $80
	add  a                                           ; $506e: $87
	add  b                                           ; $506f: $80
	pop  hl                                          ; $5070: $e1
	add  b                                           ; $5071: $80
	jr   nc, jr_09f_4ff4                             ; $5072: $30 $80

	jr   jr_09f_4ff6                                 ; $5074: $18 $80

	adc  h                                           ; $5076: $8c
	add  b                                           ; $5077: $80
	add  $80                                         ; $5078: $c6 $80
	db   $e3                                         ; $507a: $e3
	ld   [bc], a                                     ; $507b: $02
	ret  nz                                          ; $507c: $c0

	nop                                              ; $507d: $00
	jr   nz, jr_09f_5001                             ; $507e: $20 $81

	nop                                              ; $5080: $00
	ld   [bc], a                                     ; $5081: $02
	pop  de                                          ; $5082: $d1
	nop                                              ; $5083: $00
	jr   nc, jr_09f_500b                             ; $5084: $30 $85

	nop                                              ; $5086: $00
	ld   [$f871], sp                                 ; $5087: $08 $71 $f8
	adc  [hl]                                        ; $508a: $8e
	nop                                              ; $508b: $00
	adc  b                                           ; $508c: $88
	nop                                              ; $508d: $00
	ld   d, e                                        ; $508e: $53
	nop                                              ; $508f: $00
	ld   h, [hl]                                     ; $5090: $66
	add  c                                           ; $5091: $81
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	call $0081                                       ; $5094: $cd $81 $00
	ld   [hl+], a                                    ; $5097: $22
	ld   a, c                                        ; $5098: $79
	nop                                              ; $5099: $00
	ld   sp, $cb00                                   ; $509a: $31 $00 $cb
	nop                                              ; $509d: $00
	ld   a, $00                                      ; $509e: $3e $00
	ld   a, h                                        ; $50a0: $7c
	nop                                              ; $50a1: $00
	reti                                             ; $50a2: $d9


	nop                                              ; $50a3: $00
	or   e                                           ; $50a4: $b3
	nop                                              ; $50a5: $00
	ld   h, a                                        ; $50a6: $67
	nop                                              ; $50a7: $00
	inc  b                                           ; $50a8: $04
	nop                                              ; $50a9: $00
	pop  bc                                          ; $50aa: $c1
	nop                                              ; $50ab: $00
	add  b                                           ; $50ac: $80
	nop                                              ; $50ad: $00
	ld   h, b                                        ; $50ae: $60
	nop                                              ; $50af: $00
	ld   hl, sp+$00                                  ; $50b0: $f8 $00
	db   $fc                                         ; $50b2: $fc
	nop                                              ; $50b3: $00
	sub  b                                           ; $50b4: $90
	nop                                              ; $50b5: $00
	ld   d, $00                                      ; $50b6: $16 $00
	ldh  [c], a                                      ; $50b8: $e2
	nop                                              ; $50b9: $00
	add  b                                           ; $50ba: $80
	add  c                                           ; $50bb: $81
	nop                                              ; $50bc: $00
	ld   b, $c0                                      ; $50bd: $06 $c0
	nop                                              ; $50bf: $00
	ld   h, b                                        ; $50c0: $60
	nop                                              ; $50c1: $00
	jr   nc, jr_09f_50c4                             ; $50c2: $30 $00

jr_09f_50c4:
	jr   @-$7d                                       ; $50c4: $18 $81

	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	ld   [$0081], sp                                 ; $50c8: $08 $81 $00
	add  b                                           ; $50cb: $80
	ld   bc, $0086                                   ; $50cc: $01 $86 $00
	add  b                                           ; $50cf: $80
	ld   [$008a], sp                                 ; $50d0: $08 $8a $00
	add  b                                           ; $50d3: $80
	ld   bc, $008a                                   ; $50d4: $01 $8a $00
	add  b                                           ; $50d7: $80
	ld   [$0084], sp                                 ; $50d8: $08 $84 $00
	add  b                                           ; $50db: $80
	jr   nz, jr_09f_5060                             ; $50dc: $20 $82

	nop                                              ; $50de: $00
	add  b                                           ; $50df: $80
	inc  b                                           ; $50e0: $04
	add  d                                           ; $50e1: $82
	nop                                              ; $50e2: $00
	add  b                                           ; $50e3: $80
	ld   bc, $9018                                   ; $50e4: $01 $18 $90
	rrca                                             ; $50e7: $0f
	ld   d, [hl]                                     ; $50e8: $56
	add  [hl]                                        ; $50e9: $86
	and  l                                           ; $50ea: $a5
	call nz, $c0cb                                   ; $50eb: $c4 $cb $c0
	db   $d3                                         ; $50ee: $d3
	ldh  [$e3], a                                    ; $50ef: $e0 $e3

jr_09f_50f1:
	ldh  [$ee], a                                    ; $50f1: $e0 $ee
	pop  hl                                          ; $50f3: $e1
	push hl                                          ; $50f4: $e5
	dec  de                                          ; $50f5: $1b
	inc  b                                           ; $50f6: $04
	nop                                              ; $50f7: $00
	ld   e, b                                        ; $50f8: $58
	nop                                              ; $50f9: $00
	ld   a, a                                        ; $50fa: $7f
	nop                                              ; $50fb: $00
	ld   hl, sp+$07                                  ; $50fc: $f8 $07
	rst  ToBoot                                         ; $50fe: $c7

jr_09f_50ff:
	add  b                                           ; $50ff: $80
	ccf                                              ; $5100: $3f
	add  e                                           ; $5101: $83
	rst  $38                                         ; $5102: $ff
	add  d                                           ; $5103: $82
	nop                                              ; $5104: $00
	ld   b, $c0                                      ; $5105: $06 $c0
	nop                                              ; $5107: $00
	jr   nc, @-$3e                                   ; $5108: $30 $c0

	call z, $f3f0                                    ; $510a: $cc $f0 $f3
	add  b                                           ; $510d: $80
	db   $fc                                         ; $510e: $fc
	add  c                                           ; $510f: $81
	rst  $38                                         ; $5110: $ff
	db   $10                                         ; $5111: $10
	ret  nz                                          ; $5112: $c0

	ccf                                              ; $5113: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5114: $cf
	rrca                                             ; $5115: $0f
	inc  sp                                          ; $5116: $33
	inc  bc                                          ; $5117: $03
	inc  a                                           ; $5118: $3c
	nop                                              ; $5119: $00
	ld   a, $00                                      ; $511a: $3e $00
	cpl                                              ; $511c: $2f
	nop                                              ; $511d: $00
	rst  $30                                         ; $511e: $f7
	nop                                              ; $511f: $00
	ccf                                              ; $5120: $3f
	ret  nz                                          ; $5121: $c0

	ld   a, [hl+]                                    ; $5122: $2a
	sub  e                                           ; $5123: $93
	rst  $38                                         ; $5124: $ff
	add  b                                           ; $5125: $80
	ldh  [$84], a                                    ; $5126: $e0 $84
	rst  $28                                         ; $5128: $ef
	add  b                                           ; $5129: $80
	rst  $30                                         ; $512a: $f7
	add  b                                           ; $512b: $80
	ldh  [$80], a                                    ; $512c: $e0 $80
	ldh  a, [$80]                                    ; $512e: $f0 $80
	add  b                                           ; $5130: $80
	add  b                                           ; $5131: $80
	rlca                                             ; $5132: $07
	add  b                                           ; $5133: $80
	cp   $84                                         ; $5134: $fe $84
	rst  $38                                         ; $5136: $ff
	add  b                                           ; $5137: $80
	add  b                                           ; $5138: $80
	add  b                                           ; $5139: $80
	ld   b, b                                        ; $513a: $40
	add  b                                           ; $513b: $80
	jr   @-$7e                                       ; $513c: $18 $80

	ldh  [$82], a                                    ; $513e: $e0 $82
	nop                                              ; $5140: $00
	add  b                                           ; $5141: $80
	add  b                                           ; $5142: $80
	add  b                                           ; $5143: $80
	ret  nz                                          ; $5144: $c0

	ld   a, [bc]                                     ; $5145: $0a
	db   $ed                                         ; $5146: $ed
	nop                                              ; $5147: $00
	ld   [hl], $00                                   ; $5148: $36 $00
	ld   bc, $ee00                                   ; $514a: $01 $00 $ee
	nop                                              ; $514d: $00
	inc  e                                           ; $514e: $1c
	nop                                              ; $514f: $00
	jr   z, @-$7b                                    ; $5150: $28 $83

	nop                                              ; $5152: $00
	ld   a, [bc]                                     ; $5153: $0a
	ld   [hl], h                                     ; $5154: $74
	nop                                              ; $5155: $00
	inc  e                                           ; $5156: $1c
	nop                                              ; $5157: $00
	cp   b                                           ; $5158: $b8
	nop                                              ; $5159: $00
	ld   e, a                                        ; $515a: $5f
	nop                                              ; $515b: $00
	sub  b                                           ; $515c: $90
	nop                                              ; $515d: $00
	db   $10                                         ; $515e: $10
	add  c                                           ; $515f: $81
	nop                                              ; $5160: $00
	inc  b                                           ; $5161: $04
	ld   [$3900], sp                                 ; $5162: $08 $00 $39
	nop                                              ; $5165: $00
	ld   hl, $0083                                   ; $5166: $21 $83 $00
	inc  b                                           ; $5169: $04
	sub  b                                           ; $516a: $90
	nop                                              ; $516b: $00
	ld   b, b                                        ; $516c: $40
	nop                                              ; $516d: $00
	jr   nz, jr_09f_50f1                             ; $516e: $20 $81

	nop                                              ; $5170: $00
	ld   a, [bc]                                     ; $5171: $0a
	inc  d                                           ; $5172: $14
	nop                                              ; $5173: $00
	add  [hl]                                        ; $5174: $86
	nop                                              ; $5175: $00
	ld   bc, wIsGBC                                   ; $5176: $01 $00 $c2
	nop                                              ; $5179: $00
	ld   h, b                                        ; $517a: $60
	nop                                              ; $517b: $00
	jr   nc, jr_09f_50ff                             ; $517c: $30 $81

	nop                                              ; $517e: $00
	inc  bc                                          ; $517f: $03
	ld   a, [de]                                     ; $5180: $1a
	nop                                              ; $5181: $00
	dec  bc                                          ; $5182: $0b
	nop                                              ; $5183: $00
	add  b                                           ; $5184: $80
	ld   [hl+], a                                    ; $5185: $22
	rlca                                             ; $5186: $07
	push af                                          ; $5187: $f5
	dec  d                                           ; $5188: $15
	ld   a, [de]                                     ; $5189: $1a
	ld   [bc], a                                     ; $518a: $02
	sub  l                                           ; $518b: $95
	ld   de, $0c4e                                   ; $518c: $11 $4e $0c
	add  b                                           ; $518f: $80
	inc  b                                           ; $5190: $04
	inc  bc                                          ; $5191: $03
	daa                                              ; $5192: $27
	ld   b, $5f                                      ; $5193: $06 $5f
	ld   b, b                                        ; $5195: $40
	add  b                                           ; $5196: $80
	ld   [hl+], a                                    ; $5197: $22
	add  b                                           ; $5198: $80
	ld   d, l                                        ; $5199: $55
	add  b                                           ; $519a: $80
	xor  d                                           ; $519b: $aa
	add  b                                           ; $519c: $80
	ld   d, l                                        ; $519d: $55
	add  b                                           ; $519e: $80
	xor  d                                           ; $519f: $aa
	add  b                                           ; $51a0: $80
	ld   d, l                                        ; $51a1: $55
	add  b                                           ; $51a2: $80
	xor  d                                           ; $51a3: $aa
	add  b                                           ; $51a4: $80
	nop                                              ; $51a5: $00
	add  b                                           ; $51a6: $80
	ld   [hl+], a                                    ; $51a7: $22
	add  b                                           ; $51a8: $80
	ld   d, l                                        ; $51a9: $55
	add  b                                           ; $51aa: $80
	xor  d                                           ; $51ab: $aa
	add  b                                           ; $51ac: $80
	ld   d, l                                        ; $51ad: $55
	add  b                                           ; $51ae: $80
	xor  d                                           ; $51af: $aa
	add  b                                           ; $51b0: $80
	ld   d, l                                        ; $51b1: $55
	add  b                                           ; $51b2: $80
	xor  d                                           ; $51b3: $aa
	add  b                                           ; $51b4: $80
	add  b                                           ; $51b5: $80
	add  b                                           ; $51b6: $80
	ld   [hl+], a                                    ; $51b7: $22
	add  b                                           ; $51b8: $80
	ld   d, l                                        ; $51b9: $55
	add  b                                           ; $51ba: $80
	xor  d                                           ; $51bb: $aa
	add  b                                           ; $51bc: $80
	ld   d, l                                        ; $51bd: $55
	add  b                                           ; $51be: $80
	xor  d                                           ; $51bf: $aa
	add  b                                           ; $51c0: $80
	ld   d, l                                        ; $51c1: $55
	add  b                                           ; $51c2: $80
	xor  d                                           ; $51c3: $aa
	db   $10                                         ; $51c4: $10
	ccf                                              ; $51c5: $3f
	rlca                                             ; $51c6: $07
	ld   [hl], a                                     ; $51c7: $77
	ld   bc, $00ff                                   ; $51c8: $01 $ff $00
	rst  JumpTable                                         ; $51cb: $df
	nop                                              ; $51cc: $00
	ld   [hl], a                                     ; $51cd: $77
	nop                                              ; $51ce: $00
	ld   e, $00                                      ; $51cf: $1e $00
	ld   b, $00                                      ; $51d1: $06 $00
	ld   b, $05                                      ; $51d3: $06 $05
	db   $fd                                         ; $51d5: $fd
	add  d                                           ; $51d6: $82
	rst  $38                                         ; $51d7: $ff
	add  d                                           ; $51d8: $82
	ld   a, a                                        ; $51d9: $7f
	sub  e                                           ; $51da: $93
	rst  $38                                         ; $51db: $ff
	inc  c                                           ; $51dc: $0c
	cp   $ff                                         ; $51dd: $fe $ff
	db   $f4                                         ; $51df: $f4
	ldh  [$df], a                                    ; $51e0: $e0 $df
	ldh  a, [rIE]                                    ; $51e2: $f0 $ff
	ld   hl, sp-$41                                  ; $51e4: $f8 $bf
	db   $fc                                         ; $51e6: $fc
	rst  $38                                         ; $51e7: $ff
	cp   $7f                                         ; $51e8: $fe $7f
	add  e                                           ; $51ea: $83
	rst  $38                                         ; $51eb: $ff
	add  b                                           ; $51ec: $80
	ld   a, a                                        ; $51ed: $7f
	add  b                                           ; $51ee: $80
	ccf                                              ; $51ef: $3f
	adc  d                                           ; $51f0: $8a
	rra                                              ; $51f1: $1f
	add  d                                           ; $51f2: $82
	rst  $30                                         ; $51f3: $f7
	add  h                                           ; $51f4: $84
	di                                               ; $51f5: $f3
	add  h                                           ; $51f6: $84
	pop  af                                          ; $51f7: $f1
	adc  [hl]                                        ; $51f8: $8e
	rst  $38                                         ; $51f9: $ff
	add  b                                           ; $51fa: $80
	ldh  [$80], a                                    ; $51fb: $e0 $80
	ldh  a, [$80]                                    ; $51fd: $f0 $80
	ld   hl, sp-$80                                  ; $51ff: $f8 $80
	db   $fc                                         ; $5201: $fc
	add  b                                           ; $5202: $80
	cp   $84                                         ; $5203: $fe $84
	rst  $38                                         ; $5205: $ff
	adc  b                                           ; $5206: $88
	nop                                              ; $5207: $00
	add  b                                           ; $5208: $80
	ret  nz                                          ; $5209: $c0

	add  b                                           ; $520a: $80
	cp   $80                                         ; $520b: $fe $80
	rst  $38                                         ; $520d: $ff
	ld   [bc], a                                     ; $520e: $02
	inc  bc                                          ; $520f: $03
	nop                                              ; $5210: $00
	inc  bc                                          ; $5211: $03
	adc  e                                           ; $5212: $8b
	nop                                              ; $5213: $00
	db   $10                                         ; $5214: $10
	rst  $20                                         ; $5215: $e7
	nop                                              ; $5216: $00
	stop                                             ; $5217: $10 $00
	db   $f4                                         ; $5219: $f4
	nop                                              ; $521a: $00
	ld   [de], a                                     ; $521b: $12
	nop                                              ; $521c: $00
	add  hl, bc                                      ; $521d: $09
	nop                                              ; $521e: $00
	rla                                              ; $521f: $17
	nop                                              ; $5220: $00
	inc  c                                           ; $5221: $0c
	nop                                              ; $5222: $00
	inc  bc                                          ; $5223: $03
	nop                                              ; $5224: $00
	ld   sp, hl                                      ; $5225: $f9
	add  c                                           ; $5226: $81
	nop                                              ; $5227: $00
	inc  c                                           ; $5228: $0c
	ld   a, [bc]                                     ; $5229: $0a
	nop                                              ; $522a: $00
	inc  [hl]                                        ; $522b: $34
	nop                                              ; $522c: $00
	ld   hl, sp+$00                                  ; $522d: $f8 $00
	ret  nz                                          ; $522f: $c0

	nop                                              ; $5230: $00
	inc  bc                                          ; $5231: $03
	nop                                              ; $5232: $00
	rrca                                             ; $5233: $0f
	inc  bc                                          ; $5234: $03
	ld   d, $81                                      ; $5235: $16 $81
	ld   b, $01                                      ; $5237: $06 $01
	daa                                              ; $5239: $27
	rlca                                             ; $523a: $07

jr_09f_523b:
	add  b                                           ; $523b: $80
	rrca                                             ; $523c: $0f
	inc  bc                                          ; $523d: $03
	ld   c, a                                        ; $523e: $4f
	rrca                                             ; $523f: $0f
	adc  a                                           ; $5240: $8f
	rrca                                             ; $5241: $0f
	add  b                                           ; $5242: $80
	adc  a                                           ; $5243: $8f
	add  b                                           ; $5244: $80
	sbc  a                                           ; $5245: $9f
	ld   bc, $55aa                                   ; $5246: $01 $aa $55
	add  b                                           ; $5249: $80
	ld   a, [hl+]                                    ; $524a: $2a
	ld   bc, $55d5                                   ; $524b: $01 $d5 $55
	add  b                                           ; $524e: $80
	ld   l, [hl]                                     ; $524f: $6e
	add  b                                           ; $5250: $80
	ld   e, a                                        ; $5251: $5f
	add  b                                           ; $5252: $80
	ld   a, a                                        ; $5253: $7f
	nop                                              ; $5254: $00
	rst  $38                                         ; $5255: $ff
	add  c                                           ; $5256: $81
	cp   a                                           ; $5257: $bf
	ld   bc, $5595                                   ; $5258: $01 $95 $55
	add  b                                           ; $525b: $80
	xor  d                                           ; $525c: $aa
	add  b                                           ; $525d: $80
	ld   d, l                                        ; $525e: $55
	add  b                                           ; $525f: $80
	xor  $80                                         ; $5260: $ee $80
	cp   a                                           ; $5262: $bf
	add  h                                           ; $5263: $84
	rst  $38                                         ; $5264: $ff
	add  b                                           ; $5265: $80
	ld   d, l                                        ; $5266: $55
	add  b                                           ; $5267: $80
	xor  d                                           ; $5268: $aa
	add  b                                           ; $5269: $80
	ld   d, l                                        ; $526a: $55
	add  b                                           ; $526b: $80
	xor  $80                                         ; $526c: $ee $80
	db   $fd                                         ; $526e: $fd
	add  b                                           ; $526f: $80
	cp   a                                           ; $5270: $bf
	add  d                                           ; $5271: $82
	rst  $38                                         ; $5272: $ff
	ld   b, $0f                                      ; $5273: $06 $0f
	inc  bc                                          ; $5275: $03
	inc  sp                                          ; $5276: $33
	cpl                                              ; $5277: $2f
	ld   l, a                                        ; $5278: $6f
	rra                                              ; $5279: $1f
	sbc  a                                           ; $527a: $9f
	add  c                                           ; $527b: $81
	ld   a, a                                        ; $527c: $7f
	nop                                              ; $527d: $00
	rst  $38                                         ; $527e: $ff
	add  c                                           ; $527f: $81
	ccf                                              ; $5280: $3f
	nop                                              ; $5281: $00
	cp   a                                           ; $5282: $bf
	add  b                                           ; $5283: $80
	ld   a, a                                        ; $5284: $7f
	adc  l                                           ; $5285: $8d
	rst  $38                                         ; $5286: $ff
	nop                                              ; $5287: $00
	db   $fc                                         ; $5288: $fc
	add  c                                           ; $5289: $81
	rst  $38                                         ; $528a: $ff
	nop                                              ; $528b: $00
	ei                                               ; $528c: $fb
	add  c                                           ; $528d: $81
	rst  $38                                         ; $528e: $ff
	nop                                              ; $528f: $00
	rst  $30                                         ; $5290: $f7
	add  c                                           ; $5291: $81
	rst  $38                                         ; $5292: $ff
	nop                                              ; $5293: $00
	rst  $28                                         ; $5294: $ef
	add  c                                           ; $5295: $81
	rst  $38                                         ; $5296: $ff
	nop                                              ; $5297: $00
	rra                                              ; $5298: $1f
	adc  e                                           ; $5299: $8b
	rst  $38                                         ; $529a: $ff
	add  b                                           ; $529b: $80
	cp   $86                                         ; $529c: $fe $86
	rra                                              ; $529e: $1f
	ld   [bc], a                                     ; $529f: $02
	inc  bc                                          ; $52a0: $03
	ccf                                              ; $52a1: $3f
	inc  a                                           ; $52a2: $3c
	add  e                                           ; $52a3: $83
	ccf                                              ; $52a4: $3f
	ld   bc, $f1ce                                   ; $52a5: $01 $ce $f1
	add  h                                           ; $52a8: $84
	ld   hl, sp-$80                                  ; $52a9: $f8 $80
	db   $fc                                         ; $52ab: $fc
	ld   b, $7e                                      ; $52ac: $06 $7e
	cp   $be                                         ; $52ae: $fe $be
	cp   $df                                         ; $52b0: $fe $df
	rst  $38                                         ; $52b2: $ff
	rra                                              ; $52b3: $1f
	add  c                                           ; $52b4: $81
	rst  $38                                         ; $52b5: $ff
	add  [hl]                                        ; $52b6: $86
	nop                                              ; $52b7: $00
	add  b                                           ; $52b8: $80
	jr   nz, jr_09f_523b                             ; $52b9: $20 $80

	ccf                                              ; $52bb: $3f
	add  h                                           ; $52bc: $84
	rst  $38                                         ; $52bd: $ff
	add  b                                           ; $52be: $80
	ccf                                              ; $52bf: $3f
	add  b                                           ; $52c0: $80
	rrca                                             ; $52c1: $0f
	add  d                                           ; $52c2: $82
	nop                                              ; $52c3: $00
	add  b                                           ; $52c4: $80
	add  b                                           ; $52c5: $80
	adc  d                                           ; $52c6: $8a
	rst  $38                                         ; $52c7: $ff
	add  b                                           ; $52c8: $80
	rrca                                             ; $52c9: $0f
	add  b                                           ; $52ca: $80
	rlca                                             ; $52cb: $07
	add  b                                           ; $52cc: $80
	add  b                                           ; $52cd: $80
	add  b                                           ; $52ce: $80
	ret  nz                                          ; $52cf: $c0

	add  h                                           ; $52d0: $84
	ldh  [$84], a                                    ; $52d1: $e0 $84
	ldh  a, [$8e]                                    ; $52d3: $f0 $8e
	nop                                              ; $52d5: $00
	add  b                                           ; $52d6: $80
	rrca                                             ; $52d7: $0f
	add  b                                           ; $52d8: $80
	rra                                              ; $52d9: $1f
	add  b                                           ; $52da: $80
	ld   c, $80                                      ; $52db: $0e $80
	inc  c                                           ; $52dd: $0c
	add  b                                           ; $52de: $80
	nop                                              ; $52df: $00
	rlca                                             ; $52e0: $07
	ccf                                              ; $52e1: $3f
	nop                                              ; $52e2: $00
	ld   b, b                                        ; $52e3: $40
	nop                                              ; $52e4: $00
	add  [hl]                                        ; $52e5: $86
	nop                                              ; $52e6: $00
	and  $1f                                         ; $52e7: $e6 $1f
	add  d                                           ; $52e9: $82
	ccf                                              ; $52ea: $3f
	add  d                                           ; $52eb: $82
	ld   a, a                                        ; $52ec: $7f
	add  b                                           ; $52ed: $80
	ccf                                              ; $52ee: $3f
	dec  c                                           ; $52ef: $0d
	rst  JumpTable                                         ; $52f0: $df
	rra                                              ; $52f1: $1f
	cpl                                              ; $52f2: $2f
	rrca                                             ; $52f3: $0f
	ld   h, d                                        ; $52f4: $62
	sbc  a                                           ; $52f5: $9f
	sbc  b                                           ; $52f6: $98
	adc  a                                           ; $52f7: $8f
	adc  b                                           ; $52f8: $88
	add  a                                           ; $52f9: $87
	add  b                                           ; $52fa: $80
	add  a                                           ; $52fb: $87
	adc  c                                           ; $52fc: $89
	adc  e                                           ; $52fd: $8b
	add  b                                           ; $52fe: $80
	adc  l                                           ; $52ff: $8d
	add  b                                           ; $5300: $80
	sbc  h                                           ; $5301: $9c
	add  b                                           ; $5302: $80
	inc  bc                                          ; $5303: $03
	dec  bc                                          ; $5304: $0b
	ld   [hl+], a                                    ; $5305: $22
	rst  $38                                         ; $5306: $ff
	adc  b                                           ; $5307: $88
	rst  $38                                         ; $5308: $ff
	nop                                              ; $5309: $00
	rst  $38                                         ; $530a: $ff
	adc  b                                           ; $530b: $88
	rst  $38                                         ; $530c: $ff
	ld   e, l                                        ; $530d: $5d
	rst  $38                                         ; $530e: $ff
	ld   a, a                                        ; $530f: $7f
	rst  $38                                         ; $5310: $ff
	add  b                                           ; $5311: $80
	rrca                                             ; $5312: $0f
	add  b                                           ; $5313: $80
	ldh  a, [$0a]                                    ; $5314: $f0 $0a
	ld   [hl+], a                                    ; $5316: $22
	rst  $38                                         ; $5317: $ff
	adc  b                                           ; $5318: $88
	rst  $38                                         ; $5319: $ff
	nop                                              ; $531a: $00
	rst  $38                                         ; $531b: $ff
	adc  b                                           ; $531c: $88
	rst  $38                                         ; $531d: $ff
	ld   e, h                                        ; $531e: $5c
	rst  $38                                         ; $531f: $ff
	ld   a, [hl]                                     ; $5320: $7e
	add  e                                           ; $5321: $83
	rst  $38                                         ; $5322: $ff
	nop                                              ; $5323: $00
	nop                                              ; $5324: $00
	add  a                                           ; $5325: $87
	rst  $38                                         ; $5326: $ff
	nop                                              ; $5327: $00
	cp   $81                                         ; $5328: $fe $81
	rst  $38                                         ; $532a: $ff
	inc  b                                           ; $532b: $04
	db   $fd                                         ; $532c: $fd
	rst  $38                                         ; $532d: $ff
	jp   sRandomSeed                                       ; $532e: $c3 $ff $bf


	add  c                                           ; $5331: $81
	rst  $38                                         ; $5332: $ff
	ld   bc, $ff7f                                   ; $5333: $01 $7f $ff
	add  b                                           ; $5336: $80
	cp   $80                                         ; $5337: $fe $80
	ld   hl, sp-$80                                  ; $5339: $f8 $80
	ldh  a, [$80]                                    ; $533b: $f0 $80
	ret  nz                                          ; $533d: $c0

	add  b                                           ; $533e: $80
	ld   hl, sp-$80                                  ; $533f: $f8 $80
	di                                               ; $5341: $f3
	add  b                                           ; $5342: $80
	rst  ToBoot                                         ; $5343: $c7
	add  b                                           ; $5344: $80
	adc  a                                           ; $5345: $8f
	add  b                                           ; $5346: $80
	rrca                                             ; $5347: $0f
	add  b                                           ; $5348: $80
	ld   l, a                                        ; $5349: $6f
	add  d                                           ; $534a: $82
	rst  $28                                         ; $534b: $ef
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	add  l                                           ; $534e: $85
	rst  $38                                         ; $534f: $ff
	add  l                                           ; $5350: $85
	ldh  a, [rSB]                                    ; $5351: $f0 $01
	pop  af                                          ; $5353: $f1
	cp   $85                                         ; $5354: $fe $85
	rst  $38                                         ; $5356: $ff
	add  l                                           ; $5357: $85
	nop                                              ; $5358: $00
	ld   bc, $00ff                                   ; $5359: $01 $ff $00
	add  l                                           ; $535c: $85
	rst  $38                                         ; $535d: $ff
	add  l                                           ; $535e: $85
	rrca                                             ; $535f: $0f
	ld   bc, $708f                                   ; $5360: $01 $8f $70
	adc  l                                           ; $5363: $8d
	pop  af                                          ; $5364: $f1
	nop                                              ; $5365: $00
	cp   $8d                                         ; $5366: $fe $8d
	rst  $38                                         ; $5368: $ff
	nop                                              ; $5369: $00
	rrca                                             ; $536a: $0f
	adc  l                                           ; $536b: $8d
	add  e                                           ; $536c: $83
	nop                                              ; $536d: $00
	ld   a, h                                        ; $536e: $7c
	add  b                                           ; $536f: $80
	pop  af                                          ; $5370: $f1
	add  e                                           ; $5371: $83
	ldh  a, [$86]                                    ; $5372: $f0 $86
	rst  $38                                         ; $5374: $ff
	nop                                              ; $5375: $00
	nop                                              ; $5376: $00
	add  b                                           ; $5377: $80
	rst  $38                                         ; $5378: $ff
	add  e                                           ; $5379: $83
	nop                                              ; $537a: $00
	nop                                              ; $537b: $00
	rst  $38                                         ; $537c: $ff
	add  d                                           ; $537d: $82
	nop                                              ; $537e: $00
	add  c                                           ; $537f: $81
	rst  $38                                         ; $5380: $ff
	nop                                              ; $5381: $00
	rrca                                             ; $5382: $0f
	add  b                                           ; $5383: $80
	add  e                                           ; $5384: $83
	add  e                                           ; $5385: $83
	inc  bc                                          ; $5386: $03
	nop                                              ; $5387: $00
	di                                               ; $5388: $f3
	add  d                                           ; $5389: $82
	inc  bc                                          ; $538a: $03
	add  c                                           ; $538b: $81
	rst  $38                                         ; $538c: $ff
	rst  $38                                         ; $538d: $ff
	nop                                              ; $538e: $00
	rst  $38                                         ; $538f: $ff
	nop                                              ; $5390: $00
	rst  $38                                         ; $5391: $ff
	nop                                              ; $5392: $00
	rst  $38                                         ; $5393: $ff
	nop                                              ; $5394: $00
	rst  $38                                         ; $5395: $ff
	nop                                              ; $5396: $00
	rst  $38                                         ; $5397: $ff
	nop                                              ; $5398: $00
	ld   hl, sp+$00                                  ; $5399: $f8 $00
	dec  c                                           ; $539b: $0d
	ld   bc, $3f01                                   ; $539c: $01 $01 $3f
	ret  nz                                          ; $539f: $c0

	add  b                                           ; $53a0: $80
	ldh  [$80], a                                    ; $53a1: $e0 $80
	ldh  a, [$80]                                    ; $53a3: $f0 $80
	ld   hl, sp-$80                                  ; $53a5: $f8 $80
	db   $fc                                         ; $53a7: $fc
	nop                                              ; $53a8: $00
	rst  $38                                         ; $53a9: $ff
	add  b                                           ; $53aa: $80
	db   $fc                                         ; $53ab: $fc
	add  b                                           ; $53ac: $80
	ldh  a, [$80]                                    ; $53ad: $f0 $80
	ld   h, b                                        ; $53af: $60
	add  l                                           ; $53b0: $85
	nop                                              ; $53b1: $00
	ld   [bc], a                                     ; $53b2: $02
	rlca                                             ; $53b3: $07

jr_09f_53b4:
	nop                                              ; $53b4: $00
	jr   @-$7b                                       ; $53b5: $18 $83

	nop                                              ; $53b7: $00
	ld   [$00e1], sp                                 ; $53b8: $08 $e1 $00
	ld   bc, $0700                                   ; $53bb: $01 $00 $07
	nop                                              ; $53be: $00
	jr   c, jr_09f_53c1                              ; $53bf: $38 $00

jr_09f_53c1:
	ret  nz                                          ; $53c1: $c0

	sub  l                                           ; $53c2: $95
	nop                                              ; $53c3: $00
	add  b                                           ; $53c4: $80
	ld   bc, $0380                                   ; $53c5: $01 $80 $03
	add  b                                           ; $53c8: $80
	ld   [bc], a                                     ; $53c9: $02
	ld   a, [bc]                                     ; $53ca: $0a
	add  c                                           ; $53cb: $81
	nop                                              ; $53cc: $00
	ld   [bc], a                                     ; $53cd: $02
	nop                                              ; $53ce: $00
	add  h                                           ; $53cf: $84
	nop                                              ; $53d0: $00
	ld   [$0300], sp                                 ; $53d1: $08 $00 $03
	nop                                              ; $53d4: $00
	inc  c                                           ; $53d5: $0c
	adc  l                                           ; $53d6: $8d
	nop                                              ; $53d7: $00
	add  b                                           ; $53d8: $80
	inc  bc                                          ; $53d9: $03
	add  b                                           ; $53da: $80
	ld   bc, $0080                                   ; $53db: $01 $80 $00
	add  b                                           ; $53de: $80
	add  b                                           ; $53df: $80
	add  b                                           ; $53e0: $80
	ret  nz                                          ; $53e1: $c0

	add  b                                           ; $53e2: $80
	ldh  [$80], a                                    ; $53e3: $e0 $80
	ld   hl, sp-$80                                  ; $53e5: $f8 $80
	cp   $86                                         ; $53e7: $fe $86
	rst  $38                                         ; $53e9: $ff
	add  b                                           ; $53ea: $80
	rra                                              ; $53eb: $1f
	add  b                                           ; $53ec: $80
	rlca                                             ; $53ed: $07
	add  b                                           ; $53ee: $80

jr_09f_53ef:
	inc  bc                                          ; $53ef: $03
	add  b                                           ; $53f0: $80
	nop                                              ; $53f1: $00
	add  b                                           ; $53f2: $80
	cp   $80                                         ; $53f3: $fe $80
	rst  $38                                         ; $53f5: $ff
	add  b                                           ; $53f6: $80
	ccf                                              ; $53f7: $3f

jr_09f_53f8:
	add  b                                           ; $53f8: $80
	rra                                              ; $53f9: $1f

jr_09f_53fa:
	add  d                                           ; $53fa: $82
	rrca                                             ; $53fb: $0f
	add  b                                           ; $53fc: $80
	rlca                                             ; $53fd: $07
	add  b                                           ; $53fe: $80
	inc  bc                                          ; $53ff: $03
	add  b                                           ; $5400: $80
	add  b                                           ; $5401: $80
	add  b                                           ; $5402: $80
	rst  $38                                         ; $5403: $ff
	add  b                                           ; $5404: $80
	cp   $80                                         ; $5405: $fe $80
	db   $fc                                         ; $5407: $fc
	add  d                                           ; $5408: $82
	ld   hl, sp-$80                                  ; $5409: $f8 $80
	ldh  a, [$80]                                    ; $540b: $f0 $80
	ret  nz                                          ; $540d: $c0

	add  b                                           ; $540e: $80
	dec  c                                           ; $540f: $0d

jr_09f_5410:
	add  b                                           ; $5410: $80
	ld   c, $80                                      ; $5411: $0e $80
	and  [hl]                                        ; $5413: $a6
	add  b                                           ; $5414: $80
	or   $88                                         ; $5415: $f6 $88
	rst  $38                                         ; $5417: $ff
	add  b                                           ; $5418: $80
	ld   b, $8c                                      ; $5419: $06 $8c
	nop                                              ; $541b: $00
	ld   [$00c6], sp                                 ; $541c: $08 $c6 $00
	add  hl, sp                                      ; $541f: $39
	nop                                              ; $5420: $00
	ld   bc, $0600                                   ; $5421: $01 $00 $06
	nop                                              ; $5424: $00
	ld   hl, sp-$7c                                  ; $5425: $f8 $84
	nop                                              ; $5427: $00
	add  d                                           ; $5428: $82
	rra                                              ; $5429: $1f
	add  b                                           ; $542a: $80
	inc  a                                           ; $542b: $3c
	add  b                                           ; $542c: $80
	jr   nc, jr_09f_53b4                             ; $542d: $30 $85

	nop                                              ; $542f: $00
	ld   b, $3f                                      ; $5430: $06 $3f
	nop                                              ; $5432: $00
	add  hl, sp                                      ; $5433: $39
	nop                                              ; $5434: $00
	rlca                                             ; $5435: $07
	nop                                              ; $5436: $00
	ld   [bc], a                                     ; $5437: $02
	add  c                                           ; $5438: $81
	nop                                              ; $5439: $00

jr_09f_543a:
	ld   [bc], a                                     ; $543a: $02
	ld   [bc], a                                     ; $543b: $02
	nop                                              ; $543c: $00
	ld   bc, $0083                                   ; $543d: $01 $83 $00
	ld   b, $18                                      ; $5440: $06 $18
	nop                                              ; $5442: $00
	rst  ToBoot                                         ; $5443: $c7
	nop                                              ; $5444: $00
	ret  c                                           ; $5445: $d8

	nop                                              ; $5446: $00
	rlca                                             ; $5447: $07
	sub  l                                           ; $5448: $95
	nop                                              ; $5449: $00
	ld   c, $63                                      ; $544a: $0e $63
	nop                                              ; $544c: $00
	ld   b, e                                        ; $544d: $43
	nop                                              ; $544e: $00
	jr   nc, jr_09f_5451                             ; $544f: $30 $00

jr_09f_5451:
	add  sp, $00                                     ; $5451: $e8 $00
	inc  b                                           ; $5453: $04
	nop                                              ; $5454: $00
	jp   $3300                                       ; $5455: $c3 $00 $33


	nop                                              ; $5458: $00
	inc  c                                           ; $5459: $0c
	adc  a                                           ; $545a: $8f
	nop                                              ; $545b: $00
	inc  c                                           ; $545c: $0c
	and  $00                                         ; $545d: $e6 $00
	sub  a                                           ; $545f: $97
	nop                                              ; $5460: $00
	ld   l, c                                        ; $5461: $69
	nop                                              ; $5462: $00
	stop                                             ; $5463: $10 $00
	ld   [$8000], sp                                 ; $5465: $08 $00 $80
	nop                                              ; $5468: $00
	add  b                                           ; $5469: $80
	sbc  d                                           ; $546a: $9a
	nop                                              ; $546b: $00
	add  b                                           ; $546c: $80
	jr   nc, jr_09f_53ef                             ; $546d: $30 $80

	ld   [hl], b                                     ; $546f: $70
	add  b                                           ; $5470: $80
	ld   a, b                                        ; $5471: $78
	inc  bc                                          ; $5472: $03
	db   $fc                                         ; $5473: $fc
	ld   a, h                                        ; $5474: $7c
	sbc  b                                           ; $5475: $98
	jr   jr_09f_53f8                                 ; $5476: $18 $80

	jr   nc, jr_09f_53fa                             ; $5478: $30 $80

	ld   [hl], b                                     ; $547a: $70
	add  b                                           ; $547b: $80
	ld   h, b                                        ; $547c: $60
	add  h                                           ; $547d: $84
	ret  nz                                          ; $547e: $c0

	add  h                                           ; $547f: $84
	add  b                                           ; $5480: $80
	add  b                                           ; $5481: $80
	ld   b, b                                        ; $5482: $40
	sub  a                                           ; $5483: $97
	nop                                              ; $5484: $00
	inc  b                                           ; $5485: $04
	ldh  a, [rIE]                                    ; $5486: $f0 $ff
	adc  a                                           ; $5488: $8f
	db   $fc                                         ; $5489: $fc
	ld   a, h                                        ; $548a: $7c
	add  b                                           ; $548b: $80
	ret  nz                                          ; $548c: $c0

	add  b                                           ; $548d: $80
	jr   nc, jr_09f_5410                             ; $548e: $30 $80

	ret  nz                                          ; $5490: $c0

	add  e                                           ; $5491: $83
	nop                                              ; $5492: $00
	ld   [bc], a                                     ; $5493: $02
	or   b                                           ; $5494: $b0
	nop                                              ; $5495: $00
	or   b                                           ; $5496: $b0
	add  d                                           ; $5497: $82
	nop                                              ; $5498: $00
	add  b                                           ; $5499: $80
	ld   [hl], h                                     ; $549a: $74
	add  b                                           ; $549b: $80
	ld   bc, $0000                                   ; $549c: $01 $00 $00
	add  b                                           ; $549f: $80
	jr   nc, @+$08                                   ; $54a0: $30 $06

	inc  h                                           ; $54a2: $24
	dec  h                                           ; $54a3: $25
	ld   sp, $2838                                   ; $54a4: $31 $38 $28
	jr   nc, jr_09f_54b9                             ; $54a7: $30 $10

	adc  c                                           ; $54a9: $89
	nop                                              ; $54aa: $00
	rlca                                             ; $54ab: $07
	ld   [$0c00], sp                                 ; $54ac: $08 $00 $0c
	nop                                              ; $54af: $00
	ld   bc, $4400                                   ; $54b0: $01 $00 $44
	ld   b, c                                        ; $54b3: $41
	add  b                                           ; $54b4: $80
	ld   [hl+], a                                    ; $54b5: $22
	nop                                              ; $54b6: $00
	jr   z, jr_09f_543a                              ; $54b7: $28 $81

jr_09f_54b9:
	xor  b                                           ; $54b9: $a8
	ld   bc, $4888                                   ; $54ba: $01 $88 $48
	add  b                                           ; $54bd: $80
	ld   c, c                                        ; $54be: $49
	add  b                                           ; $54bf: $80
	ld   d, h                                        ; $54c0: $54
	ld   bc, $0242                                   ; $54c1: $01 $42 $02
	adc  a                                           ; $54c4: $8f
	nop                                              ; $54c5: $00
	add  d                                           ; $54c6: $82
	db   $10                                         ; $54c7: $10
	add  b                                           ; $54c8: $80
	ld   b, b                                        ; $54c9: $40
	add  b                                           ; $54ca: $80
	ld   bc, $0084                                   ; $54cb: $01 $84 $00
	add  b                                           ; $54ce: $80
	db   $10                                         ; $54cf: $10
	add  d                                           ; $54d0: $82
	nop                                              ; $54d1: $00
	add  b                                           ; $54d2: $80
	ld   b, b                                        ; $54d3: $40
	add  b                                           ; $54d4: $80
	inc  c                                           ; $54d5: $0c
	dec  b                                           ; $54d6: $05
	nop                                              ; $54d7: $00
	ldh  a, [rP1]                                    ; $54d8: $f0 $00
	rst  $38                                         ; $54da: $ff
	nop                                              ; $54db: $00
	ldh  a, [$81]                                    ; $54dc: $f0 $81
	nop                                              ; $54de: $00
	ld   c, $07                                      ; $54df: $0e $07
	nop                                              ; $54e1: $00
	ei                                               ; $54e2: $fb
	nop                                              ; $54e3: $00
	dec  c                                           ; $54e4: $0d
	nop                                              ; $54e5: $00
	ld   d, $00                                      ; $54e6: $16 $00
	ld   l, b                                        ; $54e8: $68
	nop                                              ; $54e9: $00
	or   b                                           ; $54ea: $b0
	nop                                              ; $54eb: $00
	ld   b, b                                        ; $54ec: $40
	nop                                              ; $54ed: $00

jr_09f_54ee:
	add  b                                           ; $54ee: $80
	adc  l                                           ; $54ef: $8d
	nop                                              ; $54f0: $00
	ld   a, [bc]                                     ; $54f1: $0a
	ld   bc, $0100                                   ; $54f2: $01 $00 $01
	nop                                              ; $54f5: $00
	jr   jr_09f_54f8                                 ; $54f6: $18 $00

jr_09f_54f8:
	jr   jr_09f_54fa                                 ; $54f8: $18 $00

jr_09f_54fa:
	ld   bc, $0100                                   ; $54fa: $01 $00 $01
	add  b                                           ; $54fd: $80
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	ld   b, $80                                      ; $5500: $06 $80
	ld   [bc], a                                     ; $5502: $02
	ld   a, [bc]                                     ; $5503: $0a
	ld   d, [hl]                                     ; $5504: $56
	ld   d, d                                        ; $5505: $52
	ld   h, d                                        ; $5506: $62
	ldh  [c], a                                      ; $5507: $e2
	ld   [bc], a                                     ; $5508: $02
	add  d                                           ; $5509: $82
	ld   [bc], a                                     ; $550a: $02
	nop                                              ; $550b: $00
	stop                                             ; $550c: $10 $00
	inc  de                                          ; $550e: $13
	add  e                                           ; $550f: $83
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	inc  b                                           ; $5512: $04
	add  l                                           ; $5513: $85
	nop                                              ; $5514: $00
	ld   [bc], a                                     ; $5515: $02
	add  hl, bc                                      ; $5516: $09
	nop                                              ; $5517: $00
	ld   [$8080], sp                                 ; $5518: $08 $80 $80
	add  c                                           ; $551b: $81
	nop                                              ; $551c: $00
	ld   a, [bc]                                     ; $551d: $0a
	ld   [bc], a                                     ; $551e: $02
	nop                                              ; $551f: $00
	inc  b                                           ; $5520: $04
	ld   b, b                                        ; $5521: $40
	ld   h, b                                        ; $5522: $60
	ld   b, b                                        ; $5523: $40
	and  b                                           ; $5524: $a0
	nop                                              ; $5525: $00
	ld   bc, $c100                                   ; $5526: $01 $00 $c1
	sub  l                                           ; $5529: $95
	nop                                              ; $552a: $00
	ld   [$000e], sp                                 ; $552b: $08 $0e $00
	ld   bc, $0300                                   ; $552e: $01 $00 $03
	nop                                              ; $5531: $00
	dec  bc                                          ; $5532: $0b
	nop                                              ; $5533: $00
	rlca                                             ; $5534: $07
	sub  a                                           ; $5535: $97
	nop                                              ; $5536: $00

jr_09f_5537:
	ld   d, $04                                      ; $5537: $16 $04
	nop                                              ; $5539: $00
	ld   a, [bc]                                     ; $553a: $0a
	nop                                              ; $553b: $00
	ld   de, $9f00                                   ; $553c: $11 $00 $9f
	nop                                              ; $553f: $00
	ld   b, b                                        ; $5540: $40
	nop                                              ; $5541: $00
	jr   nz, jr_09f_5544                             ; $5542: $20 $00

jr_09f_5544:
	stop                                             ; $5544: $10 $00
	ld   [$0400], sp                                 ; $5546: $08 $00 $04
	nop                                              ; $5549: $00
	ld   [bc], a                                     ; $554a: $02
	nop                                              ; $554b: $00
	ld   bc, $ff00                                   ; $554c: $01 $00 $ff
	adc  [hl]                                        ; $554f: $8e
	nop                                              ; $5550: $00
	ld   [bc], a                                     ; $5551: $02
	ldh  a, [$f8]                                    ; $5552: $f0 $f8
	add  sp, -$80                                    ; $5554: $e8 $80
	db   $ec                                         ; $5556: $ec
	add  b                                           ; $5557: $80
	rst  $28                                         ; $5558: $ef
	ld   [bc], a                                     ; $5559: $02
	and  $f6                                         ; $555a: $e6 $f6
	ldh  a, [$80]                                    ; $555c: $f0 $80
	ld   hl, sp-$7f                                  ; $555e: $f8 $81
	db   $fd                                         ; $5560: $fd
	nop                                              ; $5561: $00
	dec  a                                           ; $5562: $3d
	add  d                                           ; $5563: $82
	inc  a                                           ; $5564: $3c
	nop                                              ; $5565: $00
	jr   c, jr_09f_54ee                              ; $5566: $38 $86

	jr   @+$04                                       ; $5568: $18 $02

	ld   [$f000], sp                                 ; $556a: $08 $00 $f0
	add  b                                           ; $556d: $80
	pop  af                                          ; $556e: $f1
	add  b                                           ; $556f: $80
	ld   sp, hl                                      ; $5570: $f9
	inc  bc                                          ; $5571: $03
	ld   hl, sp-$05                                  ; $5572: $f8 $fb
	jr   c, jr_09f_55b1                              ; $5574: $38 $3b

	add  b                                           ; $5576: $80
	db   $10                                         ; $5577: $10
	sub  h                                           ; $5578: $94
	nop                                              ; $5579: $00
	dec  b                                           ; $557a: $05
	sbc  b                                           ; $557b: $98
	ret  c                                           ; $557c: $d8

	db   $10                                         ; $557d: $10
	jr   nc, jr_09f_5580                             ; $557e: $30 $00

jr_09f_5580:
	ld   h, b                                        ; $5580: $60
	sub  c                                           ; $5581: $91
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	ld   bc, $0080                                   ; $5584: $01 $80 $00
	inc  bc                                          ; $5587: $03
	inc  b                                           ; $5588: $04
	ld   [hl], $00                                   ; $5589: $36 $00
	ld   [hl-], a                                    ; $558b: $32
	add  b                                           ; $558c: $80
	add  b                                           ; $558d: $80
	ld   bc, $0100                                   ; $558e: $01 $00 $01
	add  b                                           ; $5591: $80
	ld   [bc], a                                     ; $5592: $02
	add  b                                           ; $5593: $80
	ld   b, $80                                      ; $5594: $06 $80
	ld   c, $02                                      ; $5596: $0e $02
	inc  e                                           ; $5598: $1c
	db   $fc                                         ; $5599: $fc
	ldh  [c], a                                      ; $559a: $e2
	add  b                                           ; $559b: $80
	ld   a, [$7e01]                                  ; $559c: $fa $01 $7e
	ld   a, h                                        ; $559f: $7c
	add  b                                           ; $55a0: $80
	ld   a, $80                                      ; $55a1: $3e $80
	rra                                              ; $55a3: $1f
	add  h                                           ; $55a4: $84
	rlca                                             ; $55a5: $07
	add  b                                           ; $55a6: $80
	inc  bc                                          ; $55a7: $03
	add  b                                           ; $55a8: $80
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	rst  $38                                         ; $55ab: $ff

jr_09f_55ac:
	add  e                                           ; $55ac: $83
	nop                                              ; $55ad: $00
	inc  b                                           ; $55ae: $04
	ldh  [rAUD4LEN], a                               ; $55af: $e0 $20

jr_09f_55b1:
	inc  a                                           ; $55b1: $3c
	call nz, $80c7                                   ; $55b2: $c4 $c7 $80
	jr   jr_09f_5537                                 ; $55b5: $18 $80

	rlca                                             ; $55b7: $07
	add  h                                           ; $55b8: $84
	nop                                              ; $55b9: $00
	dec  b                                           ; $55ba: $05
	rlca                                             ; $55bb: $07
	add  a                                           ; $55bc: $87
	adc  a                                           ; $55bd: $8f
	rst  $28                                         ; $55be: $ef
	rst  $20                                         ; $55bf: $e7
	rst  $38                                         ; $55c0: $ff
	add  b                                           ; $55c1: $80
	ei                                               ; $55c2: $fb
	nop                                              ; $55c3: $00
	ld   hl, sp-$80                                  ; $55c4: $f8 $80
	ldh  a, [rP1]                                    ; $55c6: $f0 $00
	rst  $38                                         ; $55c8: $ff
	add  e                                           ; $55c9: $83
	nop                                              ; $55ca: $00
	inc  b                                           ; $55cb: $04
	ld   bc, $0e00                                   ; $55cc: $01 $00 $0e
	ld   bc, $80f1                                   ; $55cf: $01 $f1 $80
	rrca                                             ; $55d2: $0f
	add  b                                           ; $55d3: $80
	rst  $38                                         ; $55d4: $ff
	add  b                                           ; $55d5: $80
	ccf                                              ; $55d6: $3f
	adc  a                                           ; $55d7: $8f
	nop                                              ; $55d8: $00
	inc  c                                           ; $55d9: $0c
	ld   [bc], a                                     ; $55da: $02
	nop                                              ; $55db: $00
	inc  c                                           ; $55dc: $0c
	nop                                              ; $55dd: $00
	ld   [de], a                                     ; $55de: $12
	nop                                              ; $55df: $00
	rra                                              ; $55e0: $1f
	ret  nz                                          ; $55e1: $c0

	call z, $e1e0                                    ; $55e2: $cc $e0 $e1
	ldh  [$ec], a                                    ; $55e5: $e0 $ec
	add  b                                           ; $55e7: $80
	ldh  a, [rTMA]                                   ; $55e8: $f0 $06
	ld   hl, sp+$3b                                  ; $55ea: $f8 $3b
	inc  a                                           ; $55ec: $3c
	dec  e                                           ; $55ed: $1d
	ld   e, $0e                                      ; $55ee: $1e $0e
	rrca                                             ; $55f0: $0f
	add  b                                           ; $55f1: $80
	rlca                                             ; $55f2: $07
	add  b                                           ; $55f3: $80
	inc  bc                                          ; $55f4: $03
	inc  b                                           ; $55f5: $04
	ld   a, b                                        ; $55f6: $78
	nop                                              ; $55f7: $00
	or   $00                                         ; $55f8: $f6 $00
	ld   [hl], c                                     ; $55fa: $71
	add  a                                           ; $55fb: $87
	nop                                              ; $55fc: $00
	ld   b, $40                                      ; $55fd: $06 $40
	nop                                              ; $55ff: $00
	ldh  a, [rP1]                                    ; $5600: $f0 $00
	rlc  b                                           ; $5602: $cb $00
	adc  h                                           ; $5604: $8c
	add  c                                           ; $5605: $81
	nop                                              ; $5606: $00
	inc  b                                           ; $5607: $04
	cp   c                                           ; $5608: $b9
	nop                                              ; $5609: $00
	add  hl, bc                                      ; $560a: $09
	db   $10                                         ; $560b: $10
	ld   d, a                                        ; $560c: $57
	add  b                                           ; $560d: $80
	sbc  b                                           ; $560e: $98
	add  b                                           ; $560f: $80
	cp   a                                           ; $5610: $bf
	nop                                              ; $5611: $00
	rst  JumpTable                                         ; $5612: $df
	add  b                                           ; $5613: $80

jr_09f_5614:
	ld   e, a                                        ; $5614: $5f
	add  b                                           ; $5615: $80

jr_09f_5616:
	rra                                              ; $5616: $1f
	inc  bc                                          ; $5617: $03

jr_09f_5618:
	ccf                                              ; $5618: $3f
	rra                                              ; $5619: $1f
	ccf                                              ; $561a: $3f
	rra                                              ; $561b: $1f
	add  b                                           ; $561c: $80
	rrca                                             ; $561d: $0f
	inc  bc                                          ; $561e: $03
	ld   h, a                                        ; $561f: $67
	rlca                                             ; $5620: $07
	sub  e                                           ; $5621: $93
	inc  bc                                          ; $5622: $03
	add  b                                           ; $5623: $80
	ld   bc, $2e04                                   ; $5624: $01 $04 $2e
	nop                                              ; $5627: $00
	add  hl, de                                      ; $5628: $19

jr_09f_5629:
	nop                                              ; $5629: $00
	jr   jr_09f_55ac                                 ; $562a: $18 $80

	rlca                                             ; $562c: $07
	add  b                                           ; $562d: $80
	rrca                                             ; $562e: $0f
	nop                                              ; $562f: $00
	nop                                              ; $5630: $00
	add  b                                           ; $5631: $80
	ld   b, $82                                      ; $5632: $06 $82
	inc  bc                                          ; $5634: $03
	add  b                                           ; $5635: $80
	ld   bc, $5b04                                   ; $5636: $01 $04 $5b
	nop                                              ; $5639: $00
	ld   b, [hl]                                     ; $563a: $46

jr_09f_563b:
	nop                                              ; $563b: $00
	inc  bc                                          ; $563c: $03
	add  b                                           ; $563d: $80
	ret  nz                                          ; $563e: $c0

	inc  bc                                          ; $563f: $03
	ld   b, b                                        ; $5640: $40
	ld   e, a                                        ; $5641: $5f
	ld   h, c                                        ; $5642: $61
	ld   l, e                                        ; $5643: $6b
	add  c                                           ; $5644: $81
	db   $eb                                         ; $5645: $eb
	add  b                                           ; $5646: $80
	and  $00                                         ; $5647: $e6 $00
	ldh  [$8f], a                                    ; $5649: $e0 $8f
	nop                                              ; $564b: $00
	add  h                                           ; $564c: $84
	ld   bc, $0384                                   ; $564d: $01 $84 $03
	add  b                                           ; $5650: $80
	ld   [bc], a                                     ; $5651: $02
	add  b                                           ; $5652: $80
	ld   bc, $0280                                   ; $5653: $01 $80 $02
	add  b                                           ; $5656: $80
	inc  bc                                          ; $5657: $03
	add  b                                           ; $5658: $80
	ld   [bc], a                                     ; $5659: $02
	add  [hl]                                        ; $565a: $86
	nop                                              ; $565b: $00
	add  d                                           ; $565c: $82
	ld   bc, $0280                                   ; $565d: $01 $80 $02
	add  b                                           ; $5660: $80
	ld   c, $82                                      ; $5661: $0e $82
	rrca                                             ; $5663: $0f
	add  b                                           ; $5664: $80
	dec  e                                           ; $5665: $1d
	add  b                                           ; $5666: $80
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	inc  bc                                          ; $5669: $03
	add  c                                           ; $566a: $81
	inc  a                                           ; $566b: $3c
	ld   bc, $7838                                   ; $566c: $01 $38 $78
	add  b                                           ; $566f: $80
	nop                                              ; $5670: $00
	add  hl, bc                                      ; $5671: $09
	add  b                                           ; $5672: $80
	nop                                              ; $5673: $00
	add  b                                           ; $5674: $80
	nop                                              ; $5675: $00
	ld   b, b                                        ; $5676: $40
	nop                                              ; $5677: $00
	jr   nz, jr_09f_567a                             ; $5678: $20 $00

jr_09f_567a:
	rra                                              ; $567a: $1f
	inc  bc                                          ; $567b: $03
	add  d                                           ; $567c: $82
	db   $e3                                         ; $567d: $e3
	nop                                              ; $567e: $00
	jp   $c782                                       ; $567f: $c3 $82 $c7


	add  b                                           ; $5682: $80
	adc  $03                                         ; $5683: $ce $03
	call z, $888c                                    ; $5685: $cc $8c $88
	ld   [$009d], sp                                 ; $5688: $08 $9d $00
	add  d                                           ; $568b: $82
	add  b                                           ; $568c: $80
	add  d                                           ; $568d: $82
	ret  nz                                          ; $568e: $c0

	add  d                                           ; $568f: $82
	ld   h, b                                        ; $5690: $60
	add  d                                           ; $5691: $82
	jr   nc, jr_09f_5614                             ; $5692: $30 $80

	jr   c, jr_09f_5616                              ; $5694: $38 $80

	jr   jr_09f_5618                                 ; $5696: $18 $80

	inc  e                                           ; $5698: $1c
	add  b                                           ; $5699: $80
	inc  c                                           ; $569a: $0c
	add  d                                           ; $569b: $82
	ld   c, $82                                      ; $569c: $0e $82
	rlca                                             ; $569e: $07
	adc  [hl]                                        ; $569f: $8e
	nop                                              ; $56a0: $00
	ld   [bc], a                                     ; $56a1: $02
	jr   jr_09f_56a4                                 ; $56a2: $18 $00

jr_09f_56a4:
	jr   jr_09f_5629                                 ; $56a4: $18 $83

	nop                                              ; $56a6: $00
	add  b                                           ; $56a7: $80
	ld   b, $82                                      ; $56a8: $06 $82
	inc  bc                                          ; $56aa: $03
	add  b                                           ; $56ab: $80
	ld   bc, $008e                                   ; $56ac: $01 $8e $00
	ld   [bc], a                                     ; $56af: $02
	ldh  [rAUD2LOW], a                               ; $56b0: $e0 $18
	add  b                                           ; $56b2: $80
	add  e                                           ; $56b3: $83
	nop                                              ; $56b4: $00
	ld   [bc], a                                     ; $56b5: $02
	ld   h, b                                        ; $56b6: $60
	nop                                              ; $56b7: $00
	jr   jr_09f_563b                                 ; $56b8: $18 $81

	nop                                              ; $56ba: $00
	add  b                                           ; $56bb: $80
	add  b                                           ; $56bc: $80
	rst  $38                                         ; $56bd: $ff
	nop                                              ; $56be: $00
	rst  $38                                         ; $56bf: $ff
	nop                                              ; $56c0: $00
	rst  $38                                         ; $56c1: $ff
	nop                                              ; $56c2: $00
	rst  $38                                         ; $56c3: $ff
	nop                                              ; $56c4: $00
	rst  $38                                         ; $56c5: $ff
	nop                                              ; $56c6: $00
	rst  $38                                         ; $56c7: $ff
	nop                                              ; $56c8: $00
	xor  b                                           ; $56c9: $a8
	nop                                              ; $56ca: $00
	xor  e                                           ; $56cb: $ab
	nop                                              ; $56cc: $00
	adc  [hl]                                        ; $56cd: $8e
	nop                                              ; $56ce: $00
	inc  bc                                          ; $56cf: $03
	inc  l                                           ; $56d0: $2c
	ret  nc                                          ; $56d1: $d0

	sub  $d4                                         ; $56d2: $d6 $d4
	add  b                                           ; $56d4: $80
	ret  c                                           ; $56d5: $d8

	add  b                                           ; $56d6: $80
	ld   l, b                                        ; $56d7: $68
	ld   [$24a4], sp                                 ; $56d8: $08 $a4 $24
	ld   c, e                                        ; $56db: $4b
	ld   [bc], a                                     ; $56dc: $02
	inc  a                                           ; $56dd: $3c
	nop                                              ; $56de: $00
	ld   a, [bc]                                     ; $56df: $0a
	nop                                              ; $56e0: $00
	ld   bc, $0081                                   ; $56e1: $01 $81 $00
	nop                                              ; $56e4: $00
	ld   bc, $0083                                   ; $56e5: $01 $83 $00
	ld   c, $02                                      ; $56e8: $0e $02
	ld   bc, $0100                                   ; $56ea: $01 $00 $01
	dec  b                                           ; $56ed: $05
	inc  bc                                          ; $56ee: $03
	add  hl, bc                                      ; $56ef: $09
	rlca                                             ; $56f0: $07
	ld   [bc], a                                     ; $56f1: $02
	rlca                                             ; $56f2: $07
	dec  d                                           ; $56f3: $15
	ld   c, $0b                                      ; $56f4: $0e $0b
	dec  c                                           ; $56f6: $0d
	inc  l                                           ; $56f7: $2c
	add  b                                           ; $56f8: $80
	dec  e                                           ; $56f9: $1d
	ld   bc, $5b1b                                   ; $56fa: $01 $1b $5b
	add  d                                           ; $56fd: $82
	dec  sp                                          ; $56fe: $3b
	ld   bc, $2737                                   ; $56ff: $01 $37 $27
	add  l                                           ; $5702: $85
	scf                                              ; $5703: $37
	inc  c                                           ; $5704: $0c
	halt                                             ; $5705: $76
	rla                                              ; $5706: $17
	rra                                              ; $5707: $1f
	dec  de                                          ; $5708: $1b
	dec  hl                                          ; $5709: $2b
	dec  bc                                          ; $570a: $0b
	rrca                                             ; $570b: $0f
	add  hl, bc                                      ; $570c: $09
	ld   de, $0e01                                   ; $570d: $11 $01 $0e
	nop                                              ; $5710: $00
	dec  b                                           ; $5711: $05
	add  a                                           ; $5712: $87
	nop                                              ; $5713: $00
	ld   b, $07                                      ; $5714: $06 $07
	ld   bc, $0709                                   ; $5716: $01 $09 $07
	rla                                              ; $5719: $17
	rrca                                             ; $571a: $0f
	cpl                                              ; $571b: $2f
	add  b                                           ; $571c: $80
	rra                                              ; $571d: $1f
	ld   bc, $5b1b                                   ; $571e: $01 $1b $5b
	add  b                                           ; $5721: $80
	scf                                              ; $5722: $37
	inc  bc                                          ; $5723: $03
	inc  l                                           ; $5724: $2c
	xor  h                                           ; $5725: $ac
	ld   d, e                                        ; $5726: $53
	xor  h                                           ; $5727: $ac
	and  l                                           ; $5728: $a5
	nop                                              ; $5729: $00
	ld   [bc], a                                     ; $572a: $02
	ld   bc, $0200                                   ; $572b: $01 $00 $02
	add  c                                           ; $572e: $81
	ld   bc, $0400                                   ; $572f: $01 $00 $04
	add  e                                           ; $5732: $83
	inc  bc                                          ; $5733: $03
	nop                                              ; $5734: $00
	add  hl, bc                                      ; $5735: $09
	add  l                                           ; $5736: $85
	rlca                                             ; $5737: $07
	nop                                              ; $5738: $00
	inc  bc                                          ; $5739: $03
	add  e                                           ; $573a: $83
	rlca                                             ; $573b: $07
	add  [hl]                                        ; $573c: $86
	inc  bc                                          ; $573d: $03
	nop                                              ; $573e: $00
	add  hl, bc                                      ; $573f: $09
	add  c                                           ; $5740: $81
	ld   bc, $0080                                   ; $5741: $01 $80 $00
	nop                                              ; $5744: $00
	rlca                                             ; $5745: $07
	adc  e                                           ; $5746: $8b
	nop                                              ; $5747: $00
	inc  c                                           ; $5748: $0c
	inc  bc                                          ; $5749: $03
	nop                                              ; $574a: $00
	inc  c                                           ; $574b: $0c
	inc  bc                                          ; $574c: $03
	jr   nc, jr_09f_575e                             ; $574d: $30 $0f

	ld   b, e                                        ; $574f: $43
	ccf                                              ; $5750: $3f
	adc  a                                           ; $5751: $8f
	ld   a, a                                        ; $5752: $7f
	ccf                                              ; $5753: $3f
	rst  $38                                         ; $5754: $ff
	ld   a, a                                        ; $5755: $7f
	add  h                                           ; $5756: $84
	rst  $38                                         ; $5757: $ff
	add  l                                           ; $5758: $85
	nop                                              ; $5759: $00
	ld   [$0003], sp                                 ; $575a: $08 $03 $00
	inc  e                                           ; $575d: $1c

jr_09f_575e:
	nop                                              ; $575e: $00
	ldh  [rP1], a                                    ; $575f: $e0 $00
	db   $10                                         ; $5761: $10
	ldh  a, [$1f]                                    ; $5762: $f0 $1f
	adc  l                                           ; $5764: $8d
	nop                                              ; $5765: $00
	dec  b                                           ; $5766: $05
	ld   bc, $0700                                   ; $5767: $01 $00 $07
	ld   bc, $030b                                   ; $576a: $01 $0b $03
	add  b                                           ; $576d: $80
	ld   b, $01                                      ; $576e: $06 $01

jr_09f_5770:
	ld   d, $06                                      ; $5770: $16 $06
	add  d                                           ; $5772: $82
	rlca                                             ; $5773: $07
	nop                                              ; $5774: $00
	inc  hl                                          ; $5775: $23
	add  e                                           ; $5776: $83
	inc  bc                                          ; $5777: $03
	ld   [bc], a                                     ; $5778: $02
	ld   b, c                                        ; $5779: $41
	ld   bc, $8381                                   ; $577a: $01 $81 $83
	ld   bc, $0083                                   ; $577d: $01 $83 $00
	add  l                                           ; $5780: $85
	rst  $38                                         ; $5781: $ff
	nop                                              ; $5782: $00
	ld   a, a                                        ; $5783: $7f
	add  b                                           ; $5784: $80
	rst  $38                                         ; $5785: $ff
	dec  d                                           ; $5786: $15
	rst  $28                                         ; $5787: $ef
	ld   l, a                                        ; $5788: $6f
	rra                                              ; $5789: $1f
	rst  JumpTable                                         ; $578a: $df
	rst  $38                                         ; $578b: $ff
	ld   e, a                                        ; $578c: $5f
	ld   a, a                                        ; $578d: $7f
	cp   a                                           ; $578e: $bf
	ccf                                              ; $578f: $3f
	rrca                                             ; $5790: $0f
	rra                                              ; $5791: $1f
	add  a                                           ; $5792: $87
	rrca                                             ; $5793: $0f
	inc  de                                          ; $5794: $13
	rla                                              ; $5795: $17
	dec  de                                          ; $5796: $1b
	add  hl, de                                      ; $5797: $19
	sbc  l                                           ; $5798: $9d
	inc  e                                           ; $5799: $1c
	ld   c, [hl]                                     ; $579a: $4e
	ld   c, $ae                                      ; $579b: $0e $ae
	add  b                                           ; $579d: $80
	ld   h, b                                        ; $579e: $60
	ld   bc, $b9e0                                   ; $579f: $01 $e0 $b9
	add  e                                           ; $57a2: $83
	ldh  a, [rP1]                                    ; $57a3: $f0 $00
	call c, $f881                                    ; $57a5: $dc $81 $f8
	inc  b                                           ; $57a8: $04
	ld   sp, hl                                      ; $57a9: $f9
	ld   hl, sp-$18                                  ; $57aa: $f8 $e8
	ld   hl, sp-$01                                  ; $57ac: $f8 $ff
	add  d                                           ; $57ae: $82
	db   $fc                                         ; $57af: $fc
	ld   [bc], a                                     ; $57b0: $02
	ld   a, h                                        ; $57b1: $7c
	db   $fc                                         ; $57b2: $fc
	cp   h                                           ; $57b3: $bc
	add  b                                           ; $57b4: $80
	db   $fc                                         ; $57b5: $fc
	nop                                              ; $57b6: $00
	dec  sp                                          ; $57b7: $3b
	add  c                                           ; $57b8: $81
	ld   hl, sp+$04                                  ; $57b9: $f8 $04
	call $2000                                       ; $57bb: $cd $00 $20
	ret  nz                                          ; $57be: $c0

	ret  nc                                          ; $57bf: $d0

	add  c                                           ; $57c0: $81
	ldh  [rP1], a                                    ; $57c1: $e0 $00
	add  sp, -$7f                                    ; $57c3: $e8 $81
	ldh  a, [rP1]                                    ; $57c5: $f0 $00
	db   $f4                                         ; $57c7: $f4
	add  c                                           ; $57c8: $81
	ld   a, b                                        ; $57c9: $78
	db   $10                                         ; $57ca: $10
	ld   a, d                                        ; $57cb: $7a
	cp   h                                           ; $57cc: $bc

jr_09f_57cd:
	cp   c                                           ; $57cd: $b9
	cp   [hl]                                        ; $57ce: $be
	cp   b                                           ; $57cf: $b8
	rst  JumpTable                                         ; $57d0: $df
	sbc  $ef                                         ; $57d1: $de $ef
	set  5, a                                        ; $57d3: $cb $ef
	ei                                               ; $57d5: $fb
	rst  $30                                         ; $57d6: $f7
	push de                                          ; $57d7: $d5
	ei                                               ; $57d8: $fb
	ld   h, e                                        ; $57d9: $63
	db   $db                                         ; $57da: $db
	xor  l                                           ; $57db: $ad
	add  c                                           ; $57dc: $81
	nop                                              ; $57dd: $00
	ld   [$0080], sp                                 ; $57de: $08 $80 $00
	ld   b, b                                        ; $57e1: $40
	add  b                                           ; $57e2: $80
	and  b                                           ; $57e3: $a0
	ret  nz                                          ; $57e4: $c0

	ld   b, b                                        ; $57e5: $40
	ret  nz                                          ; $57e6: $c0

	sub  b                                           ; $57e7: $90
	add  c                                           ; $57e8: $81
	ldh  [rP1], a                                    ; $57e9: $e0 $00
	jr   z, jr_09f_5770                              ; $57eb: $28 $83

	ldh  a, [rP1]                                    ; $57ed: $f0 $00
	db   $f4                                         ; $57ef: $f4
	add  b                                           ; $57f0: $80
	ld   hl, sp-$7f                                  ; $57f1: $f8 $81
	ld   a, b                                        ; $57f3: $78
	nop                                              ; $57f4: $00
	ld   [hl], b                                     ; $57f5: $70
	add  b                                           ; $57f6: $80
	ld   a, b                                        ; $57f7: $78
	add  c                                           ; $57f8: $81
	cp   b                                           ; $57f9: $b8
	inc  b                                           ; $57fa: $04
	and  h                                           ; $57fb: $a4
	or   b                                           ; $57fc: $b0
	db   $10                                         ; $57fd: $10
	or   b                                           ; $57fe: $b0
	xor  b                                           ; $57ff: $a8
	add  c                                           ; $5800: $81
	and  b                                           ; $5801: $a0
	inc  b                                           ; $5802: $04
	sub  b                                           ; $5803: $90
	add  b                                           ; $5804: $80
	and  b                                           ; $5805: $a0
	add  b                                           ; $5806: $80
	ld   b, b                                        ; $5807: $40
	add  c                                           ; $5808: $81
	nop                                              ; $5809: $00
	nop                                              ; $580a: $00
	add  b                                           ; $580b: $80
	sbc  e                                           ; $580c: $9b
	nop                                              ; $580d: $00
	ld   bc, $5da2                                   ; $580e: $01 $a2 $5d
	add  b                                           ; $5811: $80
	ld   a, [hl-]                                    ; $5812: $3a
	add  b                                           ; $5813: $80
	jr   c, @+$1c                                    ; $5814: $38 $1a

	ld   [hl], l                                     ; $5816: $75
	ld   [hl], b                                     ; $5817: $70
	xor  $e0                                         ; $5818: $ee $e0
	call nc, $20c0                                   ; $581a: $d4 $c0 $20
	nop                                              ; $581d: $00
	ld   b, b                                        ; $581e: $40
	nop                                              ; $581f: $00
	stop                                             ; $5820: $10 $00
	add  c                                           ; $5822: $81
	nop                                              ; $5823: $00
	inc  sp                                          ; $5824: $33
	ld   bc, $0347                                   ; $5825: $01 $47 $03

jr_09f_5828:
	xor  [hl]                                        ; $5828: $ae
	ld   b, $7c                                      ; $5829: $06 $7c
	ld   c, $7b                                      ; $582b: $0e $7b
	inc  a                                           ; $582d: $3c
	push hl                                          ; $582e: $e5
	ldh  a, [rAUD1SWEEP]                             ; $582f: $f0 $10
	add  b                                           ; $5831: $80
	cp   $01                                         ; $5832: $fe $01
	db   $fc                                         ; $5834: $fc
	rst  $38                                         ; $5835: $ff
	add  b                                           ; $5836: $80
	ld   hl, sp+$09                                  ; $5837: $f8 $09
	ldh  a, [$f3]                                    ; $5839: $f0 $f3
	ldh  [$f0], a                                    ; $583b: $e0 $f0
	ret  nc                                          ; $583d: $d0

	pop  af                                          ; $583e: $f1
	jr   nc, jr_09f_58b3                             ; $583f: $30 $72

	ld   [hl], b                                     ; $5841: $70
	db   $fc                                         ; $5842: $fc
	add  c                                           ; $5843: $81
	nop                                              ; $5844: $00
	inc  b                                           ; $5845: $04
	add  b                                           ; $5846: $80
	nop                                              ; $5847: $00
	ld   b, b                                        ; $5848: $40
	add  b                                           ; $5849: $80
	jr   nz, jr_09f_57cd                             ; $584a: $20 $81

	ret  nz                                          ; $584c: $c0

	inc  b                                           ; $584d: $04
	ld   b, b                                        ; $584e: $40
	ret  nz                                          ; $584f: $c0

	ret  nc                                          ; $5850: $d0

	ldh  [rAUD4LEN], a                               ; $5851: $e0 $20
	add  e                                           ; $5853: $83
	ldh  [$0a], a                                    ; $5854: $e0 $0a
	ret  z                                           ; $5856: $c8

	ldh  a, [$f4]                                    ; $5857: $f0 $f4
	ldh  a, [$f7]                                    ; $5859: $f0 $f7
	db   $f4                                         ; $585b: $f4
	db   $e4                                         ; $585c: $e4
	rst  $30                                         ; $585d: $f7
	push af                                          ; $585e: $f5
	rst  $30                                         ; $585f: $f7
	cp   $89                                         ; $5860: $fe $89
	nop                                              ; $5862: $00
	ld   a, [bc]                                     ; $5863: $0a
	ret  nz                                          ; $5864: $c0

	nop                                              ; $5865: $00
	jr   nc, jr_09f_5828                             ; $5866: $30 $c0

	adc  [hl]                                        ; $5868: $8e
	ldh  a, [rSTAT]                                  ; $5869: $f0 $41
	cp   $f2                                         ; $586b: $fe $f2
	rst  $38                                         ; $586d: $ff
	db   $fc                                         ; $586e: $fc
	adc  b                                           ; $586f: $88
	rst  $38                                         ; $5870: $ff
	add  hl, bc                                      ; $5871: $09
	nop                                              ; $5872: $00
	add  b                                           ; $5873: $80
	nop                                              ; $5874: $00
	ld   b, b                                        ; $5875: $40
	add  b                                           ; $5876: $80
	and  b                                           ; $5877: $a0
	ret  nz                                          ; $5878: $c0

	db   $10                                         ; $5879: $10
	ldh  [$c8], a                                    ; $587a: $e0 $c8
	add  c                                           ; $587c: $81
	ldh  a, [rP1]                                    ; $587d: $f0 $00
	db   $e4                                         ; $587f: $e4
	add  c                                           ; $5880: $81
	ld   hl, sp+$00                                  ; $5881: $f8 $00
	ldh  a, [c]                                      ; $5883: $f2
	add  e                                           ; $5884: $83
	db   $fc                                         ; $5885: $fc
	nop                                              ; $5886: $00
	ld   sp, hl                                      ; $5887: $f9
	add  l                                           ; $5888: $85
	cp   $09                                         ; $5889: $fe $09
	ld   a, [$1800]                                  ; $588b: $fa $00 $18
	ld   b, $26                                      ; $588e: $06 $26
	ld   e, $5e                                      ; $5890: $1e $5e
	ld   a, $be                                      ; $5892: $3e $be
	ld   a, [hl]                                     ; $5894: $7e
	add  b                                           ; $5895: $80
	ld   a, h                                        ; $5896: $7c
	ld   [bc], a                                     ; $5897: $02
	ld   a, d                                        ; $5898: $7a
	ld   a, b                                        ; $5899: $78
	ld   a, h                                        ; $589a: $7c
	add  b                                           ; $589b: $80
	ldh  a, [c]                                      ; $589c: $f2
	add  b                                           ; $589d: $80
	rst  $28                                         ; $589e: $ef
	add  c                                           ; $589f: $81
	rst  $38                                         ; $58a0: $ff
	ld   b, $fd                                      ; $58a1: $06 $fd
	ld   a, h                                        ; $58a3: $7c
	ld   a, d                                        ; $58a4: $7a
	ld   a, c                                        ; $58a5: $79
	ld   a, l                                        ; $58a6: $7d
	ld   a, a                                        ; $58a7: $7f
	rst  $38                                         ; $58a8: $ff
	add  c                                           ; $58a9: $81
	ccf                                              ; $58aa: $3f
	ld   bc, $e659                                   ; $58ab: $01 $59 $e6
	add  b                                           ; $58ae: $80
	add  hl, sp                                      ; $58af: $39
	inc  c                                           ; $58b0: $0c
	rst  ToBoot                                         ; $58b1: $c7
	rlca                                             ; $58b2: $07

jr_09f_58b3:
	jr   nc, jr_09f_58b5                             ; $58b3: $30 $00

jr_09f_58b5:
	inc  bc                                          ; $58b5: $03
	nop                                              ; $58b6: $00
	inc  e                                           ; $58b7: $1c
	nop                                              ; $58b8: $00
	jr   nc, jr_09f_58bb                             ; $58b9: $30 $00

jr_09f_58bb:
	ld   b, b                                        ; $58bb: $40
	nop                                              ; $58bc: $00
	ld   h, b                                        ; $58bd: $60
	adc  l                                           ; $58be: $8d
	nop                                              ; $58bf: $00
	ld   b, $8c                                      ; $58c0: $06 $8c
	ld   [hl], b                                     ; $58c2: $70
	call z, $30c0                                    ; $58c3: $cc $c0 $30
	nop                                              ; $58c6: $00
	ret  nz                                          ; $58c7: $c0

	sub  a                                           ; $58c8: $97
	nop                                              ; $58c9: $00
	inc  b                                           ; $58ca: $04
	inc  hl                                          ; $58cb: $23
	nop                                              ; $58cc: $00
	ld   h, b                                        ; $58cd: $60
	nop                                              ; $58ce: $00
	ld   b, $81                                      ; $58cf: $06 $81
	ld   [bc], a                                     ; $58d1: $02
	add  b                                           ; $58d2: $80
	nop                                              ; $58d3: $00
	ld   bc, $020a                                   ; $58d4: $01 $0a $02
	add  d                                           ; $58d7: $82
	inc  bc                                          ; $58d8: $03
	inc  e                                           ; $58d9: $1c
	ld   h, e                                        ; $58da: $63
	inc  bc                                          ; $58db: $03
	dec  b                                           ; $58dc: $05
	ld   bc, $010d                                   ; $58dd: $01 $0d $01
	or   c                                           ; $58e0: $b1
	ld   bc, $01cd                                   ; $58e1: $01 $cd $01
	ld   l, [hl]                                     ; $58e4: $6e
	nop                                              ; $58e5: $00
	ld   a, $00                                      ; $58e6: $3e $00
	ld   a, [bc]                                     ; $58e8: $0a
	nop                                              ; $58e9: $00
	jr   jr_09f_58f2                                 ; $58ea: $18 $06

	inc  [hl]                                        ; $58ec: $34
	rla                                              ; $58ed: $17
	inc  de                                          ; $58ee: $13
	rla                                              ; $58ef: $17
	ld   [hl], a                                     ; $58f0: $77
	scf                                              ; $58f1: $37

jr_09f_58f2:
	rst  $30                                         ; $58f2: $f7
	ld   [hl], a                                     ; $58f3: $77
	ld   h, a                                        ; $58f4: $67
	ld   [hl], a                                     ; $58f5: $77
	rst  $10                                         ; $58f6: $d7
	add  c                                           ; $58f7: $81
	rst  $30                                         ; $58f8: $f7
	ld   [bc], a                                     ; $58f9: $02
	or   a                                           ; $58fa: $b7
	rst  $30                                         ; $58fb: $f7
	ld   [hl], a                                     ; $58fc: $77
	add  b                                           ; $58fd: $80
	rrca                                             ; $58fe: $0f
	rlca                                             ; $58ff: $07
	pop  af                                          ; $5900: $f1
	ei                                               ; $5901: $fb
	ld   c, $05                                      ; $5902: $0e $05
	jp   $e9ca                                       ; $5904: $c3 $ca $e9


	pop  hl                                          ; $5907: $e1
	add  b                                           ; $5908: $80
	ld   b, [hl]                                     ; $5909: $46
	dec  h                                           ; $590a: $25
	rst  $38                                         ; $590b: $ff
	ld   [$f6f1], a                                  ; $590c: $ea $f1 $f6
	ldh  a, [c]                                      ; $590f: $f2
	jp   nz, $c9ee                                   ; $5910: $c2 $ee $c9

	call c, $e8b9                                    ; $5913: $dc $b9 $e8
	rst  ToBoot                                         ; $5916: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5917: $cf
	ret  nz                                          ; $5918: $c0

	adc  $ae                                         ; $5919: $ce $ae
	rst  $28                                         ; $591b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $591c: $cf
	rst  $38                                         ; $591d: $ff
	db   $eb                                         ; $591e: $eb
	sbc  l                                           ; $591f: $9d
	adc  c                                           ; $5920: $89
	rst  $38                                         ; $5921: $ff
	jp   $dbff                                       ; $5922: $c3 $ff $db


	rst  $38                                         ; $5925: $ff
	rst  $20                                         ; $5926: $e7
	rst  $38                                         ; $5927: $ff
	ld   a, a                                        ; $5928: $7f
	rst  $38                                         ; $5929: $ff
	ccf                                              ; $592a: $3f
	ld   a, [hl]                                     ; $592b: $7e
	ldh  [c], a                                      ; $592c: $e2
	nop                                              ; $592d: $00

jr_09f_592e:
	ld   h, b                                        ; $592e: $60
	nop                                              ; $592f: $00
	ld   b, $83                                      ; $5930: $06 $83
	ld   [bc], a                                     ; $5932: $02
	ld   bc, $0008                                   ; $5933: $01 $08 $00
	add  d                                           ; $5936: $82
	inc  bc                                          ; $5937: $03
	inc  e                                           ; $5938: $1c
	ld   h, e                                        ; $5939: $63
	inc  bc                                          ; $593a: $03
	dec  b                                           ; $593b: $05
	ld   bc, $010d                                   ; $593c: $01 $0d $01
	or   c                                           ; $593f: $b1
	ld   bc, $01cd                                   ; $5940: $01 $cd $01
	ld   l, [hl]                                     ; $5943: $6e
	nop                                              ; $5944: $00
	ld   a, $00                                      ; $5945: $3e $00
	ld   a, [bc]                                     ; $5947: $0a
	nop                                              ; $5948: $00
	jr   jr_09f_5951                                 ; $5949: $18 $06

	inc  [hl]                                        ; $594b: $34
	rla                                              ; $594c: $17
	inc  de                                          ; $594d: $13
	rla                                              ; $594e: $17
	ld   [hl], a                                     ; $594f: $77
	scf                                              ; $5950: $37

jr_09f_5951:
	rst  $30                                         ; $5951: $f7
	ld   [hl], a                                     ; $5952: $77
	ld   h, a                                        ; $5953: $67
	ld   [hl], a                                     ; $5954: $77
	rst  $10                                         ; $5955: $d7
	add  c                                           ; $5956: $81
	rst  $30                                         ; $5957: $f7
	ld   [bc], a                                     ; $5958: $02
	or   a                                           ; $5959: $b7
	rst  $30                                         ; $595a: $f7
	ld   [hl], a                                     ; $595b: $77
	add  b                                           ; $595c: $80
	rrca                                             ; $595d: $0f
	rlca                                             ; $595e: $07
	pop  af                                          ; $595f: $f1
	di                                               ; $5960: $f3
	cp   $f5                                         ; $5961: $fe $f5
	rrca                                             ; $5963: $0f
	inc  b                                           ; $5964: $04
	add  e                                           ; $5965: $83
	add  c                                           ; $5966: $81
	add  b                                           ; $5967: $80
	ld   b, h                                        ; $5968: $44
	dec  b                                           ; $5969: $05
	rst  $38                                         ; $596a: $ff
	inc  hl                                          ; $596b: $23
	nop                                              ; $596c: $00
	ld   h, b                                        ; $596d: $60
	nop                                              ; $596e: $00
	ld   b, $83                                      ; $596f: $06 $83
	ld   [bc], a                                     ; $5971: $02
	ld   bc, $0008                                   ; $5972: $01 $08 $00
	add  d                                           ; $5975: $82
	inc  bc                                          ; $5976: $03
	inc  e                                           ; $5977: $1c
	ld   h, e                                        ; $5978: $63
	inc  bc                                          ; $5979: $03
	dec  b                                           ; $597a: $05
	ld   bc, $010d                                   ; $597b: $01 $0d $01
	or   c                                           ; $597e: $b1
	ld   bc, $01cd                                   ; $597f: $01 $cd $01
	ld   l, [hl]                                     ; $5982: $6e
	nop                                              ; $5983: $00
	ld   a, $00                                      ; $5984: $3e $00
	ld   a, [bc]                                     ; $5986: $0a
	nop                                              ; $5987: $00
	jr   jr_09f_5990                                 ; $5988: $18 $06

	inc  [hl]                                        ; $598a: $34
	rla                                              ; $598b: $17
	inc  de                                          ; $598c: $13
	rla                                              ; $598d: $17
	ld   [hl], a                                     ; $598e: $77
	scf                                              ; $598f: $37

jr_09f_5990:
	rst  $30                                         ; $5990: $f7
	ld   [hl], a                                     ; $5991: $77
	ld   h, a                                        ; $5992: $67
	ld   [hl], a                                     ; $5993: $77
	rst  $10                                         ; $5994: $d7
	add  c                                           ; $5995: $81
	rst  $30                                         ; $5996: $f7
	ld   [bc], a                                     ; $5997: $02
	or   a                                           ; $5998: $b7
	rst  $30                                         ; $5999: $f7
	ld   [hl], a                                     ; $599a: $77
	add  b                                           ; $599b: $80
	rrca                                             ; $599c: $0f
	rlca                                             ; $599d: $07
	pop  af                                          ; $599e: $f1
	di                                               ; $599f: $f3
	cp   $fd                                         ; $59a0: $fe $fd
	rst  $38                                         ; $59a2: $ff
	cp   l                                           ; $59a3: $bd
	ld   a, a                                        ; $59a4: $7f
	inc  a                                           ; $59a5: $3c
	add  b                                           ; $59a6: $80
	nop                                              ; $59a7: $00
	nop                                              ; $59a8: $00
	rst  $38                                         ; $59a9: $ff
	adc  [hl]                                        ; $59aa: $8e
	nop                                              ; $59ab: $00
	jr   nc, jr_09f_592e                             ; $59ac: $30 $80

	nop                                              ; $59ae: $00
	ld   a, a                                        ; $59af: $7f
	add  b                                           ; $59b0: $80
	rra                                              ; $59b1: $1f
	nop                                              ; $59b2: $00
	sbc  a                                           ; $59b3: $9f
	ld   b, b                                        ; $59b4: $40
	ld   b, l                                        ; $59b5: $45
	ld   hl, sp-$0b                                  ; $59b6: $f8 $f5
	ldh  a, [$c9]                                    ; $59b8: $f0 $c9
	add  $b7                                         ; $59ba: $c6 $b7
	adc  a                                           ; $59bc: $8f
	jp   c, $f6f1                                    ; $59bd: $da $f1 $f6

	ldh  a, [c]                                      ; $59c0: $f2
	jp   nz, $c9ee                                   ; $59c1: $c2 $ee $c9

	call c, $e8b9                                    ; $59c4: $dc $b9 $e8
	rst  ToBoot                                         ; $59c7: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59c8: $cf
	ret  nz                                          ; $59c9: $c0

	adc  $ae                                         ; $59ca: $ce $ae
	rst  $28                                         ; $59cc: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59cd: $cf
	rst  $38                                         ; $59ce: $ff
	di                                               ; $59cf: $f3
	adc  l                                           ; $59d0: $8d
	sbc  l                                           ; $59d1: $9d
	rst  JumpTable                                         ; $59d2: $df
	jp   $e7ff                                       ; $59d3: $c3 $ff $e7


	rst  $38                                         ; $59d6: $ff
	rst  $20                                         ; $59d7: $e7
	rst  $38                                         ; $59d8: $ff
	ld   a, a                                        ; $59d9: $7f
	rst  $38                                         ; $59da: $ff
	ccf                                              ; $59db: $3f
	ld   a, [hl]                                     ; $59dc: $7e
	pop  bc                                          ; $59dd: $c1
	rst  $38                                         ; $59de: $ff
	nop                                              ; $59df: $00
	rst  $38                                         ; $59e0: $ff
	nop                                              ; $59e1: $00
	rst  $38                                         ; $59e2: $ff
	nop                                              ; $59e3: $00
	rst  $38                                         ; $59e4: $ff
	nop                                              ; $59e5: $00
	rst  $38                                         ; $59e6: $ff
	nop                                              ; $59e7: $00
	rst  $38                                         ; $59e8: $ff
	nop                                              ; $59e9: $00
	rst  $38                                         ; $59ea: $ff
	nop                                              ; $59eb: $00
	rst  $38                                         ; $59ec: $ff
	nop                                              ; $59ed: $00
	sub  l                                           ; $59ee: $95
	nop                                              ; $59ef: $00
	cp   h                                           ; $59f0: $bc
	nop                                              ; $59f1: $00
	adc  d                                           ; $59f2: $8a
	nop                                              ; $59f3: $00
	inc  b                                           ; $59f4: $04
	inc  b                                           ; $59f5: $04
	nop                                              ; $59f6: $00
	ld   [bc], a                                     ; $59f7: $02
	nop                                              ; $59f8: $00
	inc  b                                           ; $59f9: $04
	add  b                                           ; $59fa: $80
	dec  b                                           ; $59fb: $05
	dec  c                                           ; $59fc: $0d
	ld   bc, $6202                                   ; $59fd: $01 $02 $62
	ld   b, d                                        ; $5a00: $42
	jr   jr_09f_5a0d                                 ; $5a01: $18 $0a

	inc  c                                           ; $5a03: $0c
	ld   h, $06                                      ; $5a04: $26 $06
	rla                                              ; $5a06: $17
	ld   b, a                                        ; $5a07: $47
	inc  bc                                          ; $5a08: $03
	inc  hl                                          ; $5a09: $23
	ld   l, a                                        ; $5a0a: $6f
	add  d                                           ; $5a0b: $82
	nop                                              ; $5a0c: $00

jr_09f_5a0d:
	nop                                              ; $5a0d: $00
	ld   [bc], a                                     ; $5a0e: $02
	add  c                                           ; $5a0f: $81
	nop                                              ; $5a10: $00
	inc  bc                                          ; $5a11: $03
	dec  b                                           ; $5a12: $05
	ld   b, c                                        ; $5a13: $41
	ld   bc, $8060                                   ; $5a14: $01 $60 $80
	ld   b, b                                        ; $5a17: $40
	ld   b, $10                                      ; $5a18: $06 $10
	nop                                              ; $5a1a: $00
	ld   [$8202], sp                                 ; $5a1b: $08 $02 $82
	and  d                                           ; $5a1e: $a2
	ldh  [c], a                                      ; $5a1f: $e2
	add  b                                           ; $5a20: $80
	or   $80                                         ; $5a21: $f6 $80
	ld   [hl], a                                     ; $5a23: $77
	add  d                                           ; $5a24: $82
	ld   a, a                                        ; $5a25: $7f
	add  c                                           ; $5a26: $81
	rst  $38                                         ; $5a27: $ff
	add  [hl]                                        ; $5a28: $86
	nop                                              ; $5a29: $00
	ld   b, $44                                      ; $5a2a: $06 $44
	ld   b, b                                        ; $5a2c: $40
	ld   c, b                                        ; $5a2d: $48
	nop                                              ; $5a2e: $00
	sub  c                                           ; $5a2f: $91
	add  l                                           ; $5a30: $85
	and  a                                           ; $5a31: $a7
	add  d                                           ; $5a32: $82
	ld   [bc], a                                     ; $5a33: $02
	add  b                                           ; $5a34: $80
	add  h                                           ; $5a35: $84
	add  b                                           ; $5a36: $80
	ret  z                                           ; $5a37: $c8

	add  b                                           ; $5a38: $80
	reti                                             ; $5a39: $d9


	add  b                                           ; $5a3a: $80
	db   $d3                                         ; $5a3b: $d3
	add  c                                           ; $5a3c: $81
	rst  $38                                         ; $5a3d: $ff
	add  b                                           ; $5a3e: $80
	halt                                             ; $5a3f: $76
	adc  b                                           ; $5a40: $88
	nop                                              ; $5a41: $00
	ld   b, $82                                      ; $5a42: $06 $82
	sub  b                                           ; $5a44: $90
	add  h                                           ; $5a45: $84
	ld   [hl+], a                                    ; $5a46: $22
	ld   a, [bc]                                     ; $5a47: $0a
	ld   d, b                                        ; $5a48: $50
	ld   de, $0084                                   ; $5a49: $11 $84 $00
	add  b                                           ; $5a4c: $80
	db   $10                                         ; $5a4d: $10
	add  b                                           ; $5a4e: $80
	ld   [hl], c                                     ; $5a4f: $71
	add  b                                           ; $5a50: $80
	ei                                               ; $5a51: $fb
	add  b                                           ; $5a52: $80
	sbc  $0b                                         ; $5a53: $de $0b
	ld   a, a                                        ; $5a55: $7f
	ld   [bc], a                                     ; $5a56: $02
	db   $10                                         ; $5a57: $10
	inc  h                                           ; $5a58: $24
	ld   b, d                                        ; $5a59: $42
	ld   a, [bc]                                     ; $5a5a: $0a
	ld   [de], a                                     ; $5a5b: $12
	db   $10                                         ; $5a5c: $10
	add  c                                           ; $5a5d: $81
	add  b                                           ; $5a5e: $80
	ld   b, $04                                      ; $5a5f: $06 $04
	add  b                                           ; $5a61: $80
	ld   [$0980], sp                                 ; $5a62: $08 $80 $09
	ld   [bc], a                                     ; $5a65: $02
	sub  c                                           ; $5a66: $91
	ld   de, $8201                                   ; $5a67: $11 $01 $82
	nop                                              ; $5a6a: $00
	add  c                                           ; $5a6b: $81
	ld   bc, $0305                                   ; $5a6c: $01 $05 $03
	ld   [bc], a                                     ; $5a6f: $02
	inc  b                                           ; $5a70: $04
	dec  b                                           ; $5a71: $05
	add  hl, bc                                      ; $5a72: $09
	ld   [$1280], sp                                 ; $5a73: $08 $80 $12
	add  d                                           ; $5a76: $82
	inc  b                                           ; $5a77: $04
	add  b                                           ; $5a78: $80
	ld   [$0081], sp                                 ; $5a79: $08 $81 $00
	nop                                              ; $5a7c: $00
	ld   b, b                                        ; $5a7d: $40
	add  h                                           ; $5a7e: $84
	ld   b, d                                        ; $5a7f: $42
	add  b                                           ; $5a80: $80
	ld   b, b                                        ; $5a81: $40
	ld   b, $43                                      ; $5a82: $06 $43
	ld   c, [hl]                                     ; $5a84: $4e
	ld   c, h                                        ; $5a85: $4c
	ld   b, [hl]                                     ; $5a86: $46
	ld   c, [hl]                                     ; $5a87: $4e
	ld   e, d                                        ; $5a88: $5a
	ld   d, d                                        ; $5a89: $52
	add  c                                           ; $5a8a: $81
	ld   l, d                                        ; $5a8b: $6a

jr_09f_5a8c:
	inc  h                                           ; $5a8c: $24
	ld   l, e                                        ; $5a8d: $6b
	ld   [hl], h                                     ; $5a8e: $74
	halt                                             ; $5a8f: $76
	ld   c, b                                        ; $5a90: $48
	ld   b, b                                        ; $5a91: $40
	ld   a, b                                        ; $5a92: $78
	ld   [hl], h                                     ; $5a93: $74
	ld   h, b                                        ; $5a94: $60
	ld   l, b                                        ; $5a95: $68
	nop                                              ; $5a96: $00
	stop                                             ; $5a97: $10 $00
	jr   nz, jr_09f_5a9b                             ; $5a99: $20 $00

jr_09f_5a9b:
	jr   nc, jr_09f_5a9d                             ; $5a9b: $30 $00

jr_09f_5a9d:
	ld   c, $30                                      ; $5a9d: $0e $30
	cp   a                                           ; $5a9f: $bf
	add  b                                           ; $5aa0: $80
	adc  a                                           ; $5aa1: $8f
	add  b                                           ; $5aa2: $80
	and  b                                           ; $5aa3: $a0
	add  b                                           ; $5aa4: $80
	jp   $ee00                                       ; $5aa5: $c3 $00 $ee


	nop                                              ; $5aa8: $00
	db   $fc                                         ; $5aa9: $fc
	nop                                              ; $5aaa: $00
	ldh  a, [rP1]                                    ; $5aab: $f0 $00
	add  b                                           ; $5aad: $80
	nop                                              ; $5aae: $00
	rst  $38                                         ; $5aaf: $ff
	nop                                              ; $5ab0: $00
	add  b                                           ; $5ab1: $80
	add  c                                           ; $5ab2: $81
	nop                                              ; $5ab3: $00
	nop                                              ; $5ab4: $00
	add  b                                           ; $5ab5: $80

jr_09f_5ab6:
	adc  e                                           ; $5ab6: $8b
	nop                                              ; $5ab7: $00
	dec  b                                           ; $5ab8: $05
	ret  c                                           ; $5ab9: $d8

	nop                                              ; $5aba: $00
	ld   h, $18                                      ; $5abb: $26 $18
	rra                                              ; $5abd: $1f
	ld   d, $80                                      ; $5abe: $16 $80
	rla                                              ; $5ac0: $17
	nop                                              ; $5ac1: $00
	inc  de                                          ; $5ac2: $13
	add  b                                           ; $5ac3: $80
	dec  hl                                          ; $5ac4: $2b
	ld   bc, $976b                                   ; $5ac5: $01 $6b $97
	add  l                                           ; $5ac8: $85
	nop                                              ; $5ac9: $00
	inc  [hl]                                        ; $5aca: $34
	add  b                                           ; $5acb: $80
	nop                                              ; $5acc: $00
	ldh  [$80], a                                    ; $5acd: $e0 $80
	ld   hl, sp-$20                                  ; $5acf: $f8 $e0
	cp   $f8                                         ; $5ad1: $fe $f8
	rst  $38                                         ; $5ad3: $ff
	nop                                              ; $5ad4: $00
	add  c                                           ; $5ad5: $81
	nop                                              ; $5ad6: $00
	ld   h, b                                        ; $5ad7: $60
	add  b                                           ; $5ad8: $80
	sub  b                                           ; $5ad9: $90
	ld   h, b                                        ; $5ada: $60
	db   $ec                                         ; $5adb: $ec
	db   $10                                         ; $5adc: $10
	ld   [hl], d                                     ; $5add: $72
	inc  c                                           ; $5ade: $0c
	dec  e                                           ; $5adf: $1d
	ld   [bc], a                                     ; $5ae0: $02
	ld   c, $01                                      ; $5ae1: $0e $01
	ld   [bc], a                                     ; $5ae3: $02
	nop                                              ; $5ae4: $00
	ret  nz                                          ; $5ae5: $c0

	nop                                              ; $5ae6: $00
	ldh  [$c0], a                                    ; $5ae7: $e0 $c0
	ld   hl, sp-$20                                  ; $5ae9: $f8 $e0
	db   $fc                                         ; $5aeb: $fc
	ld   hl, sp-$02                                  ; $5aec: $f8 $fe
	db   $fc                                         ; $5aee: $fc
	ld   a, a                                        ; $5aef: $7f
	ld   a, [hl]                                     ; $5af0: $7e
	jr   jr_09f_5a8c                                 ; $5af1: $18 $99

	add  c                                           ; $5af3: $81
	ld   h, [hl]                                     ; $5af4: $66
	rst  $20                                         ; $5af5: $e7
	jr   c, jr_09f_5ab6                              ; $5af6: $38 $be

	ld   h, b                                        ; $5af8: $60
	ld   a, b                                        ; $5af9: $78
	ret  nz                                          ; $5afa: $c0

	ldh  [$80], a                                    ; $5afb: $e0 $80
	ret  nz                                          ; $5afd: $c0

	nop                                              ; $5afe: $00
	add  b                                           ; $5aff: $80
	adc  l                                           ; $5b00: $8d
	nop                                              ; $5b01: $00
	ld   [bc], a                                     ; $5b02: $02
	add  b                                           ; $5b03: $80
	nop                                              ; $5b04: $00
	ld   b, b                                        ; $5b05: $40
	add  b                                           ; $5b06: $80

jr_09f_5b07:
	add  b                                           ; $5b07: $80
	add  b                                           ; $5b08: $80
	nop                                              ; $5b09: $00
	ld   bc, sGlobalFlags1                                   ; $5b0a: $01 $80 $a0
	add  l                                           ; $5b0d: $85
	ret  nz                                          ; $5b0e: $c0

	inc  b                                           ; $5b0f: $04
	ld   d, b                                        ; $5b10: $50
	ldh  [hScriptOpcodeParams], a                                    ; $5b11: $e0 $a0
	ldh  [$df], a                                    ; $5b13: $e0 $df
	add  b                                           ; $5b15: $80
	inc  c                                           ; $5b16: $0c
	rrca                                             ; $5b17: $0f
	add  hl, bc                                      ; $5b18: $09
	add  hl, de                                      ; $5b19: $19
	inc  de                                          ; $5b1a: $13
	inc  sp                                          ; $5b1b: $33
	daa                                              ; $5b1c: $27
	ld   h, a                                        ; $5b1d: $67
	ld   c, h                                        ; $5b1e: $4c
	call z, $d390                                    ; $5b1f: $cc $90 $d3
	nop                                              ; $5b22: $00
	ld   l, a                                        ; $5b23: $6f
	nop                                              ; $5b24: $00
	ld   a, a                                        ; $5b25: $7f
	nop                                              ; $5b26: $00
	ld   a, h                                        ; $5b27: $7c
	add  l                                           ; $5b28: $85
	nop                                              ; $5b29: $00
	ld   b, $80                                      ; $5b2a: $06 $80
	nop                                              ; $5b2c: $00
	ld   bc, $0700                                   ; $5b2d: $01 $00 $07
	nop                                              ; $5b30: $00
	ld   d, [hl]                                     ; $5b31: $56
	add  c                                           ; $5b32: $81
	nop                                              ; $5b33: $00
	add  b                                           ; $5b34: $80
	add  b                                           ; $5b35: $80
	ld   c, $c0                                      ; $5b36: $0e $c0
	ld   b, b                                        ; $5b38: $40
	ldh  [rAUD4LEN], a                               ; $5b39: $e0 $20
	cp   c                                           ; $5b3b: $b9
	ld   c, c                                        ; $5b3c: $49
	rst  $38                                         ; $5b3d: $ff
	nop                                              ; $5b3e: $00
	db   $dd                                         ; $5b3f: $dd
	nop                                              ; $5b40: $00
	jr   nc, jr_09f_5b43                             ; $5b41: $30 $00

jr_09f_5b43:
	add  b                                           ; $5b43: $80
	nop                                              ; $5b44: $00
	ld   h, [hl]                                     ; $5b45: $66
	add  e                                           ; $5b46: $83
	nop                                              ; $5b47: $00
	ld   [bc], a                                     ; $5b48: $02
	inc  c                                           ; $5b49: $0c
	nop                                              ; $5b4a: $00
	ld   b, b                                        ; $5b4b: $40
	add  c                                           ; $5b4c: $81
	nop                                              ; $5b4d: $00
	rlca                                             ; $5b4e: $07
	inc  b                                           ; $5b4f: $04
	inc  bc                                          ; $5b50: $03
	ld   sp, $4c0d                                   ; $5b51: $31 $0d $4c
	jr   nc, jr_09f_5b07                             ; $5b54: $30 $b1

	ld   b, c                                        ; $5b56: $41
	add  b                                           ; $5b57: $80
	ld   b, l                                        ; $5b58: $45
	ld   bc, $26c6                                   ; $5b59: $01 $c6 $26
	add  d                                           ; $5b5c: $82
	inc  hl                                          ; $5b5d: $23
	ld   a, [bc]                                     ; $5b5e: $0a
	and  e                                           ; $5b5f: $a3
	jr   nz, @+$23                                   ; $5b60: $20 $21

	and  b                                           ; $5b62: $a0
	xor  b                                           ; $5b63: $a8
	jr   nz, @+$25                                   ; $5b64: $20 $23

	jr   nz, @+$26                                   ; $5b66: $20 $24

	jr   nz, @+$28                                   ; $5b68: $20 $26

	add  c                                           ; $5b6a: $81
	jr   nz, jr_09f_5b77                             ; $5b6b: $20 $0a

	and  b                                           ; $5b6d: $a0
	jr   nz, jr_09f_5bc4                             ; $5b6e: $20 $54

	nop                                              ; $5b70: $00
	inc  bc                                          ; $5b71: $03
	nop                                              ; $5b72: $00
	inc  c                                           ; $5b73: $0c
	ld   bc, $0a11                                   ; $5b74: $01 $11 $0a

jr_09f_5b77:
	ld   [$1480], a                                  ; $5b77: $ea $80 $14
	rlca                                             ; $5b7a: $07
	call nz, $34f4                                   ; $5b7b: $c4 $f4 $34
	db   $e4                                         ; $5b7e: $e4
	add  sp, -$17                                    ; $5b7f: $e8 $e9
	ld   [$8009], sp                                 ; $5b81: $08 $09 $80
	ld   [$0903], sp                                 ; $5b84: $08 $03 $09
	dec  bc                                          ; $5b87: $0b
	ld   [$8309], sp                                 ; $5b88: $08 $09 $83
	ld   [$6802], sp                                 ; $5b8b: $08 $02 $68
	ld   [$8574], sp                                 ; $5b8e: $08 $74 $85
	nop                                              ; $5b91: $00
	inc  c                                           ; $5b92: $0c
	inc  bc                                          ; $5b93: $03
	nop                                              ; $5b94: $00
	inc  e                                           ; $5b95: $1c
	inc  bc                                          ; $5b96: $03
	ld   h, e                                        ; $5b97: $63
	inc  e                                           ; $5b98: $1c
	sbc  a                                           ; $5b99: $9f
	ld   h, e                                        ; $5b9a: $63
	ld   a, a                                        ; $5b9b: $7f
	add  b                                           ; $5b9c: $80
	ldh  [rP1], a                                    ; $5b9d: $e0 $00
	add  b                                           ; $5b9f: $80

jr_09f_5ba0:
	adc  c                                           ; $5ba0: $89
	nop                                              ; $5ba1: $00
	ld   b, $01                                      ; $5ba2: $06 $01
	nop                                              ; $5ba4: $00
	ld   [bc], a                                     ; $5ba5: $02
	ld   bc, $0205                                   ; $5ba6: $01 $05 $02
	dec  bc                                          ; $5ba9: $0b
	add  c                                           ; $5baa: $81
	dec  b                                           ; $5bab: $05
	nop                                              ; $5bac: $00
	dec  d                                           ; $5bad: $15

jr_09f_5bae:
	add  c                                           ; $5bae: $81
	dec  b                                           ; $5baf: $05
	nop                                              ; $5bb0: $00
	dec  [hl]                                        ; $5bb1: $35
	add  l                                           ; $5bb2: $85
	dec  d                                           ; $5bb3: $15
	nop                                              ; $5bb4: $00
	ld   [hl], l                                     ; $5bb5: $75
	add  c                                           ; $5bb6: $81
	dec  [hl]                                        ; $5bb7: $35
	ld   b, $34                                      ; $5bb8: $06 $34
	ld   [hl], $26                                   ; $5bba: $36 $26
	add  hl, hl                                      ; $5bbc: $29
	add  hl, bc                                      ; $5bbd: $09
	ld   b, $79                                      ; $5bbe: $06 $79
	rst  $38                                         ; $5bc0: $ff
	nop                                              ; $5bc1: $00
	rst  $38                                         ; $5bc2: $ff
	nop                                              ; $5bc3: $00

jr_09f_5bc4:
	rst  $38                                         ; $5bc4: $ff
	nop                                              ; $5bc5: $00
	ldh  [rP1], a                                    ; $5bc6: $e0 $00
	ld   a, [de]                                     ; $5bc8: $1a
	add  b                                           ; $5bc9: $80
	nop                                              ; $5bca: $00
	ret  nz                                          ; $5bcb: $c0

	nop                                              ; $5bcc: $00
	ldh  a, [rP1]                                    ; $5bcd: $f0 $00
	rst  $38                                         ; $5bcf: $ff
	nop                                              ; $5bd0: $00
	db   $dd                                         ; $5bd1: $dd
	ld   [$0099], sp                                 ; $5bd2: $08 $99 $00
	dec  b                                           ; $5bd5: $05
	nop                                              ; $5bd6: $00
	ld   a, [bc]                                     ; $5bd7: $0a
	nop                                              ; $5bd8: $00
	inc  d                                           ; $5bd9: $14
	nop                                              ; $5bda: $00
	dec  hl                                          ; $5bdb: $2b
	nop                                              ; $5bdc: $00
	ld   e, h                                        ; $5bdd: $5c
	nop                                              ; $5bde: $00
	ret  nc                                          ; $5bdf: $d0

	inc  bc                                          ; $5be0: $03
	ld   h, e                                        ; $5be1: $63
	inc  c                                           ; $5be2: $0c
	xor  h                                           ; $5be3: $ac
	add  b                                           ; $5be4: $80
	ld   c, $07                                      ; $5be5: $0e $07
	ld   bc, $0121                                   ; $5be7: $01 $21 $01
	pop  bc                                          ; $5bea: $c1
	ld   [hl+], a                                    ; $5beb: $22
	jp   nz, $8c0c                                   ; $5bec: $c2 $0c $8c

	add  b                                           ; $5bef: $80
	ld   [hl], b                                     ; $5bf0: $70
	add  b                                           ; $5bf1: $80
	add  b                                           ; $5bf2: $80
	dec  bc                                          ; $5bf3: $0b
	nop                                              ; $5bf4: $00
	inc  bc                                          ; $5bf5: $03
	jr   nz, jr_09f_5c19                             ; $5bf6: $20 $21

	and  d                                           ; $5bf8: $a2
	xor  d                                           ; $5bf9: $aa
	ld   a, [hl+]                                    ; $5bfa: $2a
	add  hl, hl                                      ; $5bfb: $29
	jr   z, jr_09f_5c2a                              ; $5bfc: $28 $2c

	inc  h                                           ; $5bfe: $24
	ld   [hl+], a                                    ; $5bff: $22
	add  c                                           ; $5c00: $81
	jr   nz, jr_09f_5c09                             ; $5c01: $20 $06

	and  b                                           ; $5c03: $a0
	xor  b                                           ; $5c04: $a8
	ld   a, [hl]                                     ; $5c05: $7e
	jr   jr_09f_5ba0                                 ; $5c06: $18 $98

	db   $10                                         ; $5c08: $10

jr_09f_5c09:
	halt                                             ; $5c09: $76
	add  b                                           ; $5c0a: $80
	ld   [hl-], a                                    ; $5c0b: $32
	add  c                                           ; $5c0c: $81
	ld   [hl+], a                                    ; $5c0d: $22

jr_09f_5c0e:
	ld   [bc], a                                     ; $5c0e: $02
	ld   l, $04                                      ; $5c0f: $2e $04
	ld   b, h                                        ; $5c11: $44
	add  c                                           ; $5c12: $81
	inc  b                                           ; $5c13: $04
	ld   [bc], a                                     ; $5c14: $02
	or   b                                           ; $5c15: $b0
	inc  de                                          ; $5c16: $13
	ld   e, a                                        ; $5c17: $5f
	add  l                                           ; $5c18: $85

jr_09f_5c19:
	cpl                                              ; $5c19: $2f
	ld   bc, $2faf                                   ; $5c1a: $01 $af $2f
	add  b                                           ; $5c1d: $80
	ld   l, $80                                      ; $5c1e: $2e $80
	add  hl, hl                                      ; $5c20: $29
	nop                                              ; $5c21: $00
	jr   nz, @-$7b                                   ; $5c22: $20 $83

	add  b                                           ; $5c24: $80
	add  b                                           ; $5c25: $80
	add  c                                           ; $5c26: $81
	add  b                                           ; $5c27: $80
	inc  bc                                          ; $5c28: $03
	add  b                                           ; $5c29: $80

jr_09f_5c2a:
	ld   c, $80                                      ; $5c2a: $0e $80
	jr   c, jr_09f_5bae                              ; $5c2c: $38 $80

	di                                               ; $5c2e: $f3
	ld   bc, $09e1                                   ; $5c2f: $01 $e1 $09
	add  c                                           ; $5c32: $81
	ld   [$0902], sp                                 ; $5c33: $08 $02 $09

jr_09f_5c36:
	dec  bc                                          ; $5c36: $0b
	ld   a, [bc]                                     ; $5c37: $0a
	add  h                                           ; $5c38: $84
	dec  bc                                          ; $5c39: $0b
	ld   [bc], a                                     ; $5c3a: $02
	ld   l, e                                        ; $5c3b: $6b
	dec  bc                                          ; $5c3c: $0b
	rrca                                             ; $5c3d: $0f
	add  c                                           ; $5c3e: $81
	sub  b                                           ; $5c3f: $90
	ld   bc, $2018                                   ; $5c40: $01 $18 $20
	add  d                                           ; $5c43: $82
	and  b                                           ; $5c44: $a0
	ld   [bc], a                                     ; $5c45: $02
	jr   nc, jr_09f_5c88                             ; $5c46: $30 $40

	ld   b, h                                        ; $5c48: $44
	add  c                                           ; $5c49: $81
	ld   b, b                                        ; $5c4a: $40
	ld   [bc], a                                     ; $5c4b: $02
	xor  h                                           ; $5c4c: $ac
	nop                                              ; $5c4d: $00
	jr   @-$7a                                       ; $5c4e: $18 $84

	ld   [$0008], sp                                 ; $5c50: $08 $08 $00
	stop                                             ; $5c53: $10 $00
	ld   bc, $0a08                                   ; $5c55: $01 $08 $0a
	add  hl, de                                      ; $5c58: $19
	ld   l, d                                        ; $5c59: $6a
	cpl                                              ; $5c5a: $2f
	add  b                                           ; $5c5b: $80
	inc  l                                           ; $5c5c: $2c
	ld   bc, $1323                                   ; $5c5d: $01 $23 $13
	add  b                                           ; $5c60: $80
	ld   d, $02                                      ; $5c61: $16 $02
	jr   @+$2a                                       ; $5c63: $18 $28

	cp   b                                           ; $5c65: $b8
	add  b                                           ; $5c66: $80
	ld   e, b                                        ; $5c67: $58
	dec  de                                          ; $5c68: $1b
	sbc  b                                           ; $5c69: $98
	add  b                                           ; $5c6a: $80
	inc  hl                                          ; $5c6b: $23
	ld   e, l                                        ; $5c6c: $5d
	ld   a, [hl]                                     ; $5c6d: $7e
	call c, $11dd                                    ; $5c6e: $dc $dd $11
	inc  de                                          ; $5c71: $13
	inc  hl                                          ; $5c72: $23
	inc  l                                           ; $5c73: $2c
	rrca                                             ; $5c74: $0f
	jr   jr_09f_5c93                                 ; $5c75: $18 $1c

	ld   h, b                                        ; $5c77: $60
	ld   a, b                                        ; $5c78: $78
	ret  nz                                          ; $5c79: $c0

	ldh  [rP1], a                                    ; $5c7a: $e0 $00
	ld   a, $cc                                      ; $5c7c: $3e $cc
	db   $fd                                         ; $5c7e: $fd
	add  d                                           ; $5c7f: $82
	adc  $01                                         ; $5c80: $ce $01
	add  e                                           ; $5c82: $83
	nop                                              ; $5c83: $00
	ld   bc, $0086                                   ; $5c84: $01 $86 $00
	add  b                                           ; $5c87: $80

jr_09f_5c88:
	ld   [$1880], sp                                 ; $5c88: $08 $80 $18
	add  b                                           ; $5c8b: $80
	jr   c, jr_09f_5c0e                              ; $5c8c: $38 $80

	ld   [hl], b                                     ; $5c8e: $70
	add  c                                           ; $5c8f: $81
	ldh  a, [rDIV]                                   ; $5c90: $f0 $04
	ld   [hl], b                                     ; $5c92: $70

jr_09f_5c93:
	ld   h, b                                        ; $5c93: $60
	jr   nz, jr_09f_5c36                             ; $5c94: $20 $a0

	sbc  [hl]                                        ; $5c96: $9e
	add  c                                           ; $5c97: $81
	ld   h, l                                        ; $5c98: $65
	inc  b                                           ; $5c99: $04
	push af                                          ; $5c9a: $f5
	dec  b                                           ; $5c9b: $05
	ld   h, h                                        ; $5c9c: $64
	inc  b                                           ; $5c9d: $04
	ld   d, $81                                      ; $5c9e: $16 $81
	ld   a, [bc]                                     ; $5ca0: $0a
	add  c                                           ; $5ca1: $81
	ld   [$0a01], sp                                 ; $5ca2: $08 $01 $0a
	pop  af                                          ; $5ca5: $f1
	add  h                                           ; $5ca6: $84
	ld   c, b                                        ; $5ca7: $48
	add  c                                           ; $5ca8: $81
	adc  b                                           ; $5ca9: $88
	nop                                              ; $5caa: $00
	cp   b                                           ; $5cab: $b8
	add  c                                           ; $5cac: $81
	xor  b                                           ; $5cad: $a8
	ld   [bc], a                                     ; $5cae: $02
	xor  [hl]                                        ; $5caf: $ae
	xor  h                                           ; $5cb0: $ac
	ld   [hl], l                                     ; $5cb1: $75
	add  b                                           ; $5cb2: $80
	ld   de, $3183                                   ; $5cb3: $11 $83 $31
	ld   [bc], a                                     ; $5cb6: $02
	add  hl, hl                                      ; $5cb7: $29

jr_09f_5cb8:
	ld   h, c                                        ; $5cb8: $61
	ld   h, l                                        ; $5cb9: $65
	add  c                                           ; $5cba: $81
	ld   h, d                                        ; $5cbb: $62
	add  b                                           ; $5cbc: $80
	ld   d, d                                        ; $5cbd: $52
	db   $10                                         ; $5cbe: $10
	jp   c, Jump_09f_6756                            ; $5cbf: $da $56 $67

	ld   l, h                                        ; $5cc2: $6c
	ld   c, a                                        ; $5cc3: $4f
	ld   e, b                                        ; $5cc4: $58
	ld   e, d                                        ; $5cc5: $5a
	ld   e, c                                        ; $5cc6: $59
	ld   e, l                                        ; $5cc7: $5d
	ld   d, c                                        ; $5cc8: $51
	db   $d3                                         ; $5cc9: $d3
	ret  nc                                          ; $5cca: $d0

	ld   d, c                                        ; $5ccb: $51
	ld   d, b                                        ; $5ccc: $50
	db   $10                                         ; $5ccd: $10
	or   b                                           ; $5cce: $b0
	ld   c, b                                        ; $5ccf: $48
	add  c                                           ; $5cd0: $81
	nop                                              ; $5cd1: $00
	ld   [bc], a                                     ; $5cd2: $02
	add  b                                           ; $5cd3: $80
	nop                                              ; $5cd4: $00
	ld   b, b                                        ; $5cd5: $40
	add  c                                           ; $5cd6: $81
	add  b                                           ; $5cd7: $80
	ld   [bc], a                                     ; $5cd8: $02
	ret  nz                                          ; $5cd9: $c0

	nop                                              ; $5cda: $00
	add  b                                           ; $5cdb: $80
	adc  b                                           ; $5cdc: $88
	nop                                              ; $5cdd: $00
	add  b                                           ; $5cde: $80
	inc  b                                           ; $5cdf: $04
	add  b                                           ; $5ce0: $80
	ld   b, $83                                      ; $5ce1: $06 $83
	rlca                                             ; $5ce3: $07
	ld   [bc], a                                     ; $5ce4: $02
	ld   b, $00                                      ; $5ce5: $06 $00
	ld   bc, $0081                                   ; $5ce7: $01 $81 $00
	ld   d, $01                                      ; $5cea: $16 $01
	nop                                              ; $5cec: $00
	ld   [bc], a                                     ; $5ced: $02
	ld   bc, $0305                                   ; $5cee: $01 $05 $03
	dec  bc                                          ; $5cf1: $0b
	add  [hl]                                        ; $5cf2: $86
	sub  a                                           ; $5cf3: $97
	adc  h                                           ; $5cf4: $8c
	ld   l, l                                        ; $5cf5: $6d
	ld   h, [hl]                                     ; $5cf6: $66
	rst  $20                                         ; $5cf7: $e7
	jr   c, jr_09f_5cb8                              ; $5cf8: $38 $be

	ld   h, b                                        ; $5cfa: $60
	ld   a, b                                        ; $5cfb: $78
	ret  nz                                          ; $5cfc: $c0

	ldh  [$80], a                                    ; $5cfd: $e0 $80
	ret  nz                                          ; $5cff: $c0

	nop                                              ; $5d00: $00
	add  b                                           ; $5d01: $80
	add  b                                           ; $5d02: $80
	rlca                                             ; $5d03: $07
	add  b                                           ; $5d04: $80
	rra                                              ; $5d05: $1f
	rst  $38                                         ; $5d06: $ff
	nop                                              ; $5d07: $00
	rst  $38                                         ; $5d08: $ff
	nop                                              ; $5d09: $00
	rst  $38                                         ; $5d0a: $ff
	nop                                              ; $5d0b: $00
	rst  $38                                         ; $5d0c: $ff
	nop                                              ; $5d0d: $00
	rst  $38                                         ; $5d0e: $ff
	nop                                              ; $5d0f: $00
	sbc  b                                           ; $5d10: $98
	nop                                              ; $5d11: $00
	ld   [$9600], a                                  ; $5d12: $ea $00 $96
	nop                                              ; $5d15: $00
	ld   [$0001], sp                                 ; $5d16: $08 $01 $00
	ld   [bc], a                                     ; $5d19: $02
	ld   bc, $0304                                   ; $5d1a: $01 $04 $03
	ld   [bc], a                                     ; $5d1d: $02
	inc  bc                                          ; $5d1e: $03
	inc  b                                           ; $5d1f: $04
	adc  c                                           ; $5d20: $89
	nop                                              ; $5d21: $00
	dec  bc                                          ; $5d22: $0b
	inc  bc                                          ; $5d23: $03
	nop                                              ; $5d24: $00
	rrca                                             ; $5d25: $0f
	inc  bc                                          ; $5d26: $03
	rra                                              ; $5d27: $1f
	rrca                                             ; $5d28: $0f
	ccf                                              ; $5d29: $3f
	rra                                              ; $5d2a: $1f
	ld   a, a                                        ; $5d2b: $7f
	ccf                                              ; $5d2c: $3f
	rst  $38                                         ; $5d2d: $ff
	ld   a, a                                        ; $5d2e: $7f
	add  b                                           ; $5d2f: $80
	db   $fc                                         ; $5d30: $fc
	ld   b, $f0                                      ; $5d31: $06 $f0
	di                                               ; $5d33: $f3
	db   $e3                                         ; $5d34: $e3
	rst  $28                                         ; $5d35: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d36: $cf
	rst  JumpTable                                         ; $5d37: $df
	ldh  [$87], a                                    ; $5d38: $e0 $87
	nop                                              ; $5d3a: $00
	dec  b                                           ; $5d3b: $05
	ld   bc, $f700                                   ; $5d3c: $01 $00 $f7
	ld   bc, $c7cf                                   ; $5d3f: $01 $cf $c7
	add  b                                           ; $5d42: $80
	xor  a                                           ; $5d43: $af
	add  b                                           ; $5d44: $80
	rst  JumpTable                                         ; $5d45: $df
	add  b                                           ; $5d46: $80
	cp   a                                           ; $5d47: $bf
	add  b                                           ; $5d48: $80
	rst  $38                                         ; $5d49: $ff
	add  b                                           ; $5d4a: $80
	nop                                              ; $5d4b: $00
	ld   bc, $1fe0                                   ; $5d4c: $01 $e0 $1f
	add  d                                           ; $5d4f: $82
	ccf                                              ; $5d50: $3f
	adc  b                                           ; $5d51: $88
	nop                                              ; $5d52: $00
	dec  b                                           ; $5d53: $05
	ldh  a, [rP1]                                    ; $5d54: $f0 $00
	db   $fc                                         ; $5d56: $fc
	ldh  a, [rIE]                                    ; $5d57: $f0 $ff
	db   $fc                                         ; $5d59: $fc
	add  [hl]                                        ; $5d5a: $86
	rst  $38                                         ; $5d5b: $ff
	add  b                                           ; $5d5c: $80
	dec  a                                           ; $5d5d: $3d
	ld   [bc], a                                     ; $5d5e: $02
	ld   b, $c6                                      ; $5d5f: $06 $c6
	ret  nz                                          ; $5d61: $c0

	add  b                                           ; $5d62: $80
	ld   hl, sp+$13                                  ; $5d63: $f8 $13
	cp   $c1                                         ; $5d65: $fe $c1
	nop                                              ; $5d67: $00
	ldh  a, [$c0]                                    ; $5d68: $f0 $c0
	ld   hl, sp-$10                                  ; $5d6a: $f8 $f0
	db   $fc                                         ; $5d6c: $fc
	ld   hl, sp-$02                                  ; $5d6d: $f8 $fe
	db   $fc                                         ; $5d6f: $fc
	rst  $30                                         ; $5d70: $f7
	cp   $f2                                         ; $5d71: $fe $f2
	cp   $f2                                         ; $5d73: $fe $f2
	cp   $f7                                         ; $5d75: $fe $f7
	db   $eb                                         ; $5d77: $eb
	ld   l, e                                        ; $5d78: $6b
	add  b                                           ; $5d79: $80
	ld   c, a                                        ; $5d7a: $4f
	add  b                                           ; $5d7b: $80
	ld   b, a                                        ; $5d7c: $47
	add  b                                           ; $5d7d: $80
	ld   d, a                                        ; $5d7e: $57
	add  c                                           ; $5d7f: $81
	ld   e, a                                        ; $5d80: $5f
	add  c                                           ; $5d81: $81
	sbc  a                                           ; $5d82: $9f
	ld   bc, $7fbf                                   ; $5d83: $01 $bf $7f
	add  e                                           ; $5d86: $83
	nop                                              ; $5d87: $00
	nop                                              ; $5d88: $00
	ret  nz                                          ; $5d89: $c0

	add  e                                           ; $5d8a: $83
	add  b                                           ; $5d8b: $80
	nop                                              ; $5d8c: $00
	ldh  [$83], a                                    ; $5d8d: $e0 $83
	ret  nz                                          ; $5d8f: $c0

	nop                                              ; $5d90: $00
	ldh  a, [$81]                                    ; $5d91: $f0 $81
	ldh  [$80], a                                    ; $5d93: $e0 $80
	ret  nz                                          ; $5d95: $c0

	nop                                              ; $5d96: $00
	ret  c                                           ; $5d97: $d8

	add  c                                           ; $5d98: $81
	ret  nc                                          ; $5d99: $d0

	add  b                                           ; $5d9a: $80
	ldh  [rP1], a                                    ; $5d9b: $e0 $00
	db   $ec                                         ; $5d9d: $ec
	add  c                                           ; $5d9e: $81
	add  sp, $05                                     ; $5d9f: $e8 $05
	ret  nc                                          ; $5da1: $d0

	ldh  a, [$72]                                    ; $5da2: $f0 $72
	ldh  a, [$d0]                                    ; $5da4: $f0 $d0
	ldh  a, [$80]                                    ; $5da6: $f0 $80
	ret  nc                                          ; $5da8: $d0

	ld   bc, $d0d1                                   ; $5da9: $01 $d1 $d0
	add  b                                           ; $5dac: $80
	ret  c                                           ; $5dad: $d8

	ld   bc, $d858                                   ; $5dae: $01 $58 $d8
	add  d                                           ; $5db1: $82
	ld   l, b                                        ; $5db2: $68
	add  b                                           ; $5db3: $80
	ld   h, b                                        ; $5db4: $60
	add  [hl]                                        ; $5db5: $86
	and  b                                           ; $5db6: $a0
	add  b                                           ; $5db7: $80
	add  b                                           ; $5db8: $80
	inc  b                                           ; $5db9: $04
	ldh  a, [c]                                      ; $5dba: $f2
	rlca                                             ; $5dbb: $07
	ld   b, $07                                      ; $5dbc: $06 $07
	inc  bc                                          ; $5dbe: $03
	add  c                                           ; $5dbf: $81
	rlca                                             ; $5dc0: $07
	add  d                                           ; $5dc1: $82
	ld   b, $80                                      ; $5dc2: $06 $80
	dec  b                                           ; $5dc4: $05
	add  b                                           ; $5dc5: $80
	inc  bc                                          ; $5dc6: $03
	rlca                                             ; $5dc7: $07
	ld   b, $07                                      ; $5dc8: $06 $07
	inc  e                                           ; $5dca: $1c
	rrca                                             ; $5dcb: $0f
	add  hl, bc                                      ; $5dcc: $09
	rrca                                             ; $5dcd: $0f
	jr   nc, jr_09f_5de5                             ; $5dce: $30 $15

	add  b                                           ; $5dd0: $80
	dec  bc                                          ; $5dd1: $0b
	ld   bc, $2b6a                                   ; $5dd2: $01 $6a $2b
	add  b                                           ; $5dd5: $80
	dec  de                                          ; $5dd6: $1b
	add  b                                           ; $5dd7: $80
	rla                                              ; $5dd8: $17
	add  d                                           ; $5dd9: $82
	dec  d                                           ; $5dda: $15
	add  b                                           ; $5ddb: $80
	dec  h                                           ; $5ddc: $25
	dec  b                                           ; $5ddd: $05
	ld   b, c                                        ; $5dde: $41
	ld   bc, $0111                                   ; $5ddf: $01 $11 $01
	inc  [hl]                                        ; $5de2: $34
	inc  b                                           ; $5de3: $04
	add  b                                           ; $5de4: $80

jr_09f_5de5:
	inc  c                                           ; $5de5: $0c
	add  b                                           ; $5de6: $80
	ld   [$3901], sp                                 ; $5de7: $08 $01 $39
	add  hl, de                                      ; $5dea: $19
	add  b                                           ; $5deb: $80
	rla                                              ; $5dec: $17
	ld   bc, $3676                                   ; $5ded: $01 $76 $36
	add  b                                           ; $5df0: $80
	ld   l, $08                                      ; $5df1: $2e $08
	adc  $6e                                         ; $5df3: $ce $6e
	ld   e, $7e                                      ; $5df5: $1e $7e
	ld   a, [$3dfe]                                  ; $5df7: $fa $fe $3d
	db   $fd                                         ; $5dfa: $fd
	ld   a, d                                        ; $5dfb: $7a
	add  e                                           ; $5dfc: $83
	nop                                              ; $5dfd: $00
	nop                                              ; $5dfe: $00
	ld   [bc], a                                     ; $5dff: $02
	add  c                                           ; $5e00: $81
	ld   bc, $0703                                   ; $5e01: $01 $03 $07
	inc  bc                                          ; $5e04: $03
	ld   [bc], a                                     ; $5e05: $02
	inc  bc                                          ; $5e06: $03
	add  b                                           ; $5e07: $80
	ld   [bc], a                                     ; $5e08: $02
	nop                                              ; $5e09: $00
	ld   c, $81                                      ; $5e0a: $0e $81
	ld   b, $00                                      ; $5e0c: $06 $00
	dec  b                                           ; $5e0e: $05
	add  e                                           ; $5e0f: $83
	inc  b                                           ; $5e10: $04
	nop                                              ; $5e11: $00
	ld   a, [bc]                                     ; $5e12: $0a
	add  e                                           ; $5e13: $83
	nop                                              ; $5e14: $00
	ld   [$bdee], sp                                 ; $5e15: $08 $ee $bd
	dec  l                                           ; $5e18: $2d
	cp   l                                           ; $5e19: $bd
	xor  l                                           ; $5e1a: $ad
	cp   l                                           ; $5e1b: $bd
	ld   e, c                                        ; $5e1c: $59
	ld   a, c                                        ; $5e1d: $79
	ld   [hl], b                                     ; $5e1e: $70
	add  c                                           ; $5e1f: $81
	ld   a, b                                        ; $5e20: $78
	add  b                                           ; $5e21: $80
	ld   e, b                                        ; $5e22: $58
	nop                                              ; $5e23: $00
	ld   e, c                                        ; $5e24: $59
	add  c                                           ; $5e25: $81
	ld   e, b                                        ; $5e26: $58
	ld   [$5052], sp                                 ; $5e27: $08 $52 $50
	ld   h, h                                        ; $5e2a: $64
	ld   h, b                                        ; $5e2b: $60
	xor  b                                           ; $5e2c: $a8
	jr   nz, jr_09f_5e32                             ; $5e2d: $20 $03

	nop                                              ; $5e2f: $00
	inc  c                                           ; $5e30: $0c
	add  b                                           ; $5e31: $80

jr_09f_5e32:
	inc  bc                                          ; $5e32: $03
	add  b                                           ; $5e33: $80
	rra                                              ; $5e34: $1f
	inc  bc                                          ; $5e35: $03
	ccf                                              ; $5e36: $3f
	rra                                              ; $5e37: $1f
	and  c                                           ; $5e38: $a1
	ld   h, c                                        ; $5e39: $61
	add  e                                           ; $5e3a: $83
	ld   h, b                                        ; $5e3b: $60
	add  b                                           ; $5e3c: $80
	ld   b, b                                        ; $5e3d: $40
	ld   [bc], a                                     ; $5e3e: $02
	inc  sp                                          ; $5e3f: $33
	nop                                              ; $5e40: $00
	call z, $0089                                    ; $5e41: $cc $89 $00
	ld   [bc], a                                     ; $5e44: $02
	ldh  a, [rP1]                                    ; $5e45: $f0 $00
	rrca                                             ; $5e47: $0f
	add  b                                           ; $5e48: $80
	ldh  a, [$85]                                    ; $5e49: $f0 $85
	rst  $38                                         ; $5e4b: $ff
	ld   [$7fbf], sp                                 ; $5e4c: $08 $bf $7f
	ccf                                              ; $5e4f: $3f
	rra                                              ; $5e50: $1f
	rst  $30                                         ; $5e51: $f7
	rrca                                             ; $5e52: $0f
	dec  d                                           ; $5e53: $15
	inc  bc                                          ; $5e54: $03
	ld   bc, $0680                                   ; $5e55: $01 $80 $06
	add  b                                           ; $5e58: $80
	rlca                                             ; $5e59: $07
	add  b                                           ; $5e5a: $80
	nop                                              ; $5e5b: $00
	add  d                                           ; $5e5c: $82
	rlca                                             ; $5e5d: $07
	inc  bc                                          ; $5e5e: $03
	inc  bc                                          ; $5e5f: $03
	inc  sp                                          ; $5e60: $33
	inc  b                                           ; $5e61: $04
	call nz, $3780                                   ; $5e62: $c4 $80 $37
	add  b                                           ; $5e65: $80
	rst  $30                                         ; $5e66: $f7
	dec  bc                                          ; $5e67: $0b
	rst  $38                                         ; $5e68: $ff
	ld   b, $07                                      ; $5e69: $06 $07
	inc  b                                           ; $5e6b: $04
	ld   b, $08                                      ; $5e6c: $06 $08
	dec  c                                           ; $5e6e: $0d
	ld   de, $731b                                   ; $5e6f: $11 $1b $73
	ld   h, [hl]                                     ; $5e72: $66
	and  $80                                         ; $5e73: $e6 $80
	sbc  [hl]                                        ; $5e75: $9e
	add  b                                           ; $5e76: $80
	ld   a, [hl]                                     ; $5e77: $7e
	add  b                                           ; $5e78: $80
	db   $fc                                         ; $5e79: $fc
	ld   bc, $fd00                                   ; $5e7a: $01 $00 $fd
	add  c                                           ; $5e7d: $81
	dec  a                                           ; $5e7e: $3d
	dec  bc                                          ; $5e7f: $0b
	dec  sp                                          ; $5e80: $3b
	dec  de                                          ; $5e81: $1b
	db   $e3                                         ; $5e82: $e3
	inc  bc                                          ; $5e83: $03
	db   $f4                                         ; $5e84: $f4
	inc  b                                           ; $5e85: $04
	jr   nc, jr_09f_5e8b                             ; $5e86: $30 $03

	inc  hl                                          ; $5e88: $23
	rra                                              ; $5e89: $1f
	adc  d                                           ; $5e8a: $8a

jr_09f_5e8b:
	ld   [hl], l                                     ; $5e8b: $75
	add  h                                           ; $5e8c: $84
	ld   h, h                                        ; $5e8d: $64
	add  b                                           ; $5e8e: $80
	db   $ec                                         ; $5e8f: $ec
	add  b                                           ; $5e90: $80
	add  sp, -$7c                                    ; $5e91: $e8 $84
	ret  z                                           ; $5e93: $c8

	add  b                                           ; $5e94: $80
	ret  nz                                          ; $5e95: $c0

	ld   b, $82                                      ; $5e96: $06 $82
	add  b                                           ; $5e98: $80
	adc  l                                           ; $5e99: $8d
	add  b                                           ; $5e9a: $80
	ld   [$4740], sp                                 ; $5e9b: $08 $40 $47
	add  b                                           ; $5e9e: $80
	cp   b                                           ; $5e9f: $b8
	add  c                                           ; $5ea0: $81
	rst  $38                                         ; $5ea1: $ff
	nop                                              ; $5ea2: $00
	ld   a, [hl]                                     ; $5ea3: $7e
	add  e                                           ; $5ea4: $83
	add  b                                           ; $5ea5: $80
	nop                                              ; $5ea6: $00
	add  d                                           ; $5ea7: $82
	add  c                                           ; $5ea8: $81

jr_09f_5ea9:
	add  b                                           ; $5ea9: $80
	db   $10                                         ; $5eaa: $10
	inc  b                                           ; $5eab: $04
	nop                                              ; $5eac: $00
	ld   [rROMB0], sp                                 ; $5ead: $08 $00 $20
	nop                                              ; $5eb0: $00
	stop                                             ; $5eb1: $10 $00
	ldh  [$80], a                                    ; $5eb3: $e0 $80
	or   b                                           ; $5eb5: $b0
	ret  nz                                          ; $5eb6: $c0

	ld   e, b                                        ; $5eb7: $58
	ld   b, b                                        ; $5eb8: $40
	ld   [hl], a                                     ; $5eb9: $77
	ld   b, b                                        ; $5eba: $40
	nop                                              ; $5ebb: $00
	add  b                                           ; $5ebc: $80
	ccf                                              ; $5ebd: $3f
	add  c                                           ; $5ebe: $81
	rst  $38                                         ; $5ebf: $ff
	adc  b                                           ; $5ec0: $88
	nop                                              ; $5ec1: $00
	ld   a, [bc]                                     ; $5ec2: $0a
	ldh  [rP1], a                                    ; $5ec3: $e0 $00
	ld   hl, sp-$20                                  ; $5ec5: $f8 $e0
	db   $fc                                         ; $5ec7: $fc
	ld   hl, sp-$06                                  ; $5ec8: $f8 $fa
	db   $fc                                         ; $5eca: $fc
	ld   hl, sp-$04                                  ; $5ecb: $f8 $fc
	db   $fd                                         ; $5ecd: $fd
	add  c                                           ; $5ece: $81
	cp   $00                                         ; $5ecf: $fe $00
	ld   a, [$fe80]                                  ; $5ed1: $fa $80 $fe
	add  e                                           ; $5ed4: $83

jr_09f_5ed5:
	rst  $38                                         ; $5ed5: $ff
	nop                                              ; $5ed6: $00
	ld   hl, sp-$79                                  ; $5ed7: $f8 $87
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	add  b                                           ; $5edb: $80
	adc  c                                           ; $5edc: $89
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	ld   b, b                                        ; $5edf: $40
	add  a                                           ; $5ee0: $87
	add  b                                           ; $5ee1: $80
	nop                                              ; $5ee2: $00
	ld   b, b                                        ; $5ee3: $40
	add  c                                           ; $5ee4: $81
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	ld   bc, $0083                                   ; $5ee7: $01 $83 $00
	nop                                              ; $5eea: $00
	inc  bc                                          ; $5eeb: $03
	adc  c                                           ; $5eec: $89
	ld   bc, $0700                                   ; $5eed: $01 $00 $07
	add  e                                           ; $5ef0: $83
	inc  bc                                          ; $5ef1: $03
	inc  b                                           ; $5ef2: $04
	ld   c, $07                                      ; $5ef3: $0e $07
	dec  b                                           ; $5ef5: $05
	rlca                                             ; $5ef6: $07
	inc  c                                           ; $5ef7: $0c
	add  e                                           ; $5ef8: $83
	nop                                              ; $5ef9: $00
	add  b                                           ; $5efa: $80
	add  b                                           ; $5efb: $80
	inc  b                                           ; $5efc: $04
	and  e                                           ; $5efd: $a3
	inc  hl                                          ; $5efe: $23
	rst  $28                                         ; $5eff: $ef
	inc  c                                           ; $5f00: $0c
	inc  e                                           ; $5f01: $1c
	add  b                                           ; $5f02: $80
	inc  sp                                          ; $5f03: $33
	add  b                                           ; $5f04: $80
	ccf                                              ; $5f05: $3f
	ld   bc, $3f00                                   ; $5f06: $01 $00 $3f
	add  c                                           ; $5f09: $81
	ld   a, $17                                      ; $5f0a: $3e $17
	ld   e, $1f                                      ; $5f0c: $1e $1f
	and  b                                           ; $5f0e: $a0
	nop                                              ; $5f0f: $00
	sbc  a                                           ; $5f10: $9f
	nop                                              ; $5f11: $00
	ld   bc, $4100                                   ; $5f12: $01 $00 $41
	nop                                              ; $5f15: $00
	ret  nz                                          ; $5f16: $c0

	nop                                              ; $5f17: $00
	ldh  [rLCDC], a                                  ; $5f18: $e0 $40
	ld   [hl], b                                     ; $5f1a: $70
	jr   nz, jr_09f_5ed5                             ; $5f1b: $20 $b8

	jr   nc, jr_09f_5f26                             ; $5f1d: $30 $07

	nop                                              ; $5f1f: $00
	ld   c, a                                        ; $5f20: $4f
	jr   nc, jr_09f_5f23                             ; $5f21: $30 $00

jr_09f_5f23:
	ret  nz                                          ; $5f23: $c0

	adc  b                                           ; $5f24: $88
	nop                                              ; $5f25: $00

jr_09f_5f26:
	add  b                                           ; $5f26: $80
	jr   nz, jr_09f_5ea9                             ; $5f27: $20 $80

	ld   h, b                                        ; $5f29: $60
	add  c                                           ; $5f2a: $81
	ld   hl, sp+$01                                  ; $5f2b: $f8 $01
	ld   [$fff0], sp                                 ; $5f2d: $08 $f0 $ff
	nop                                              ; $5f30: $00
	rst  $38                                         ; $5f31: $ff
	nop                                              ; $5f32: $00

jr_09f_5f33:
	db   $db                                         ; $5f33: $db
	nop                                              ; $5f34: $00
	inc  b                                           ; $5f35: $04
	db   $10                                         ; $5f36: $10
	cpl                                              ; $5f37: $2f
	rra                                              ; $5f38: $1f
	ld   c, a                                        ; $5f39: $4f
	ld   c, d                                        ; $5f3a: $4a
	add  b                                           ; $5f3b: $80
	ld   b, b                                        ; $5f3c: $40
	nop                                              ; $5f3d: $00
	jp   z, $a280                                    ; $5f3e: $ca $80 $a2

	ld   [bc], a                                     ; $5f41: $02
	and  c                                           ; $5f42: $a1
	or   b                                           ; $5f43: $b0
	inc  h                                           ; $5f44: $24
	add  c                                           ; $5f45: $81
	jr   nz, jr_09f_5f4f                             ; $5f46: $20 $07

	sbc  c                                           ; $5f48: $99
	and  b                                           ; $5f49: $a0
	cpl                                              ; $5f4a: $2f
	ld   h, e                                        ; $5f4b: $63
	ld   a, a                                        ; $5f4c: $7f
	ld   l, a                                        ; $5f4d: $6f
	ld   a, a                                        ; $5f4e: $7f

jr_09f_5f4f:
	rra                                              ; $5f4f: $1f
	add  b                                           ; $5f50: $80
	ld   a, a                                        ; $5f51: $7f
	add  b                                           ; $5f52: $80
	ei                                               ; $5f53: $fb
	add  b                                           ; $5f54: $80
	rst  $30                                         ; $5f55: $f7
	inc  bc                                          ; $5f56: $03
	rst  $28                                         ; $5f57: $ef
	xor  a                                           ; $5f58: $af
	ld   b, b                                        ; $5f59: $40
	nop                                              ; $5f5a: $00
	adc  b                                           ; $5f5b: $88
	rst  $38                                         ; $5f5c: $ff
	add  d                                           ; $5f5d: $82
	rst  $30                                         ; $5f5e: $f7
	add  hl, bc                                      ; $5f5f: $09
	nop                                              ; $5f60: $00
	ld   a, [hl]                                     ; $5f61: $7e
	cp   $8f                                         ; $5f62: $fe $8f
	rst  $38                                         ; $5f64: $ff
	di                                               ; $5f65: $f3
	rst  $38                                         ; $5f66: $ff
	db   $fd                                         ; $5f67: $fd
	rst  $38                                         ; $5f68: $ff
	cp   $82                                         ; $5f69: $fe $82
	rst  $38                                         ; $5f6b: $ff
	add  b                                           ; $5f6c: $80
	ld   a, [$3f86]                                  ; $5f6d: $fa $86 $3f
	add  b                                           ; $5f70: $80
	cp   a                                           ; $5f71: $bf
	add  d                                           ; $5f72: $82
	ccf                                              ; $5f73: $3f
	add  b                                           ; $5f74: $80
	scf                                              ; $5f75: $37
	nop                                              ; $5f76: $00
	ld   a, a                                        ; $5f77: $7f
	add  c                                           ; $5f78: $81
	nop                                              ; $5f79: $00
	ld   bc, $0080                                   ; $5f7a: $01 $80 $00
	add  b                                           ; $5f7d: $80
	inc  b                                           ; $5f7e: $04
	add  h                                           ; $5f7f: $84

Jump_09f_5f80:
	inc  c                                           ; $5f80: $0c
	inc  bc                                          ; $5f81: $03
	inc  e                                           ; $5f82: $1c
	jr   jr_09f_5f8c                                 ; $5f83: $18 $07

	inc  bc                                          ; $5f85: $03
	add  b                                           ; $5f86: $80
	ld   bc, $008a                                   ; $5f87: $01 $8a $00
	add  b                                           ; $5f8a: $80
	add  b                                           ; $5f8b: $80

jr_09f_5f8c:
	ld   [$04c4], sp                                 ; $5f8c: $08 $c4 $04
	xor  l                                           ; $5f8f: $ad
	ld   c, l                                        ; $5f90: $4d
	rra                                              ; $5f91: $1f
	inc  l                                           ; $5f92: $2c
	dec  d                                           ; $5f93: $15
	ld   [bc], a                                     ; $5f94: $02
	inc  b                                           ; $5f95: $04
	add  e                                           ; $5f96: $83
	nop                                              ; $5f97: $00
	add  b                                           ; $5f98: $80
	ccf                                              ; $5f99: $3f
	inc  b                                           ; $5f9a: $04
	ld   a, a                                        ; $5f9b: $7f
	ld   [hl], b                                     ; $5f9c: $70
	di                                               ; $5f9d: $f3
	inc  c                                           ; $5f9e: $0c
	ldh  a, [$87]                                    ; $5f9f: $f0 $87
	nop                                              ; $5fa1: $00
	add  b                                           ; $5fa2: $80
	db   $fc                                         ; $5fa3: $fc
	ld   [bc], a                                     ; $5fa4: $02
	ldh  a, [$30]                                    ; $5fa5: $f0 $30
	ret  nz                                          ; $5fa7: $c0

	add  a                                           ; $5fa8: $87
	nop                                              ; $5fa9: $00
	ld   [bc], a                                     ; $5faa: $02
	ccf                                              ; $5fab: $3f
	ld   c, $31                                      ; $5fac: $0e $31
	add  l                                           ; $5fae: $85
	nop                                              ; $5faf: $00
	add  b                                           ; $5fb0: $80
	jr   nz, jr_09f_5f33                             ; $5fb1: $20 $80

	ld   h, b                                        ; $5fb3: $60
	add  c                                           ; $5fb4: $81
	ld   hl, sp+$02                                  ; $5fb5: $f8 $02
	ld   [$18ec], sp                                 ; $5fb7: $08 $ec $18
	add  b                                           ; $5fba: $80
	jr   c, jr_09f_5fc0                              ; $5fbb: $38 $03

	ld   a, h                                        ; $5fbd: $7c
	ld   b, b                                        ; $5fbe: $40
	ld   e, a                                        ; $5fbf: $5f

jr_09f_5fc0:
	ld   e, b                                        ; $5fc0: $58
	add  b                                           ; $5fc1: $80
	ld   c, a                                        ; $5fc2: $4f
	add  b                                           ; $5fc3: $80
	jp   $ff04                                       ; $5fc4: $c3 $04 $ff


	and  e                                           ; $5fc7: $a3
	db   $e3                                         ; $5fc8: $e3
	ld   h, a                                        ; $5fc9: $67
	rst  $20                                         ; $5fca: $e7
	add  l                                           ; $5fcb: $85
	nop                                              ; $5fcc: $00
	add  hl, bc                                      ; $5fcd: $09
	ret  nz                                          ; $5fce: $c0

	nop                                              ; $5fcf: $00
	ldh  a, [$c0]                                    ; $5fd0: $f0 $c0
	db   $fd                                         ; $5fd2: $fd
	pop  af                                          ; $5fd3: $f1
	set  1, c                                        ; $5fd4: $cb $c9
	cp   $00                                         ; $5fd6: $fe $00
	add  b                                           ; $5fd8: $80
	ld   [$1882], sp                                 ; $5fd9: $08 $82 $18
	add  b                                           ; $5fdc: $80
	inc  a                                           ; $5fdd: $3c
	ld   e, $f8                                      ; $5fde: $1e $f8
	add  sp, -$1f                                    ; $5fe0: $e8 $e1
	ret  nc                                          ; $5fe2: $d0

	rst  ToBoot                                         ; $5fe3: $c7
	pop  bc                                          ; $5fe4: $c1
	daa                                              ; $5fe5: $27
	nop                                              ; $5fe6: $00
	inc  bc                                          ; $5fe7: $03
	nop                                              ; $5fe8: $00
	rlca                                             ; $5fe9: $07
	nop                                              ; $5fea: $00
	rrca                                             ; $5feb: $0f
	ld   [bc], a                                     ; $5fec: $02
	ld   d, $11                                      ; $5fed: $16 $11
	halt                                             ; $5fef: $76
	nop                                              ; $5ff0: $00
	sbc  e                                           ; $5ff1: $9b
	ld   [bc], a                                     ; $5ff2: $02
	sbc  [hl]                                        ; $5ff3: $9e
	or   b                                           ; $5ff4: $b0
	sub  b                                           ; $5ff5: $90
	ld   de, $00b6                                   ; $5ff6: $11 $b6 $00
	sbc  b                                           ; $5ff9: $98
	ld   b, b                                        ; $5ffa: $40
	ldh  [rP1], a                                    ; $5ffb: $e0 $00
	ret  nz                                          ; $5ffd: $c0

	add  c                                           ; $5ffe: $81
	nop                                              ; $5fff: $00
	ld   [$3cfc], sp                                 ; $6000: $08 $fc $3c
	ccf                                              ; $6003: $3f
	rrca                                             ; $6004: $0f
	adc  $30                                         ; $6005: $ce $30
	dec  c                                           ; $6007: $0d
	ld   [bc], a                                     ; $6008: $02
	ld   bc, $0087                                   ; $6009: $01 $87 $00
	add  b                                           ; $600c: $80
	add  b                                           ; $600d: $80
	add  b                                           ; $600e: $80
	rlca                                             ; $600f: $07
	ld   b, $8f                                      ; $6010: $06 $8f
	rrca                                             ; $6012: $0f

jr_09f_6013:
	rst  $38                                         ; $6013: $ff
	rra                                              ; $6014: $1f
	ld   a, a                                        ; $6015: $7f
	rrca                                             ; $6016: $0f
	rra                                              ; $6017: $1f
	add  c                                           ; $6018: $81
	rlca                                             ; $6019: $07
	nop                                              ; $601a: $00
	rrca                                             ; $601b: $0f
	add  c                                           ; $601c: $81
	inc  bc                                          ; $601d: $03
	nop                                              ; $601e: $00
	inc  b                                           ; $601f: $04
	rst  $38                                         ; $6020: $ff
	nop                                              ; $6021: $00
	rst  $38                                         ; $6022: $ff
	nop                                              ; $6023: $00
	rst  $38                                         ; $6024: $ff
	nop                                              ; $6025: $00
	rst  $38                                         ; $6026: $ff

jr_09f_6027:
	nop                                              ; $6027: $00
	rst  $38                                         ; $6028: $ff
	nop                                              ; $6029: $00
	ret  c                                           ; $602a: $d8

	nop                                              ; $602b: $00
	reti                                             ; $602c: $d9


	nop                                              ; $602d: $00
	adc  h                                           ; $602e: $8c
	nop                                              ; $602f: $00
	inc  bc                                          ; $6030: $03
	ld   a, b                                        ; $6031: $78
	add  b                                           ; $6032: $80
	ld   a, a                                        ; $6033: $7f
	ld   a, b                                        ; $6034: $78
	add  b                                           ; $6035: $80
	inc  c                                           ; $6036: $0c
	add  b                                           ; $6037: $80
	ld   [hl], b                                     ; $6038: $70
	add  b                                           ; $6039: $80
	ld   hl, sp-$80                                  ; $603a: $f8 $80
	ld   a, h                                        ; $603c: $7c
	add  b                                           ; $603d: $80
	add  $80                                         ; $603e: $c6 $80
	jp   $c980                                       ; $6040: $c3 $80 $c9


	nop                                              ; $6043: $00
	rst  $38                                         ; $6044: $ff
	adc  b                                           ; $6045: $88
	nop                                              ; $6046: $00
	inc  b                                           ; $6047: $04
	rrca                                             ; $6048: $0f
	jr   nc, jr_09f_604b                             ; $6049: $30 $00

jr_09f_604b:
	rst  $38                                         ; $604b: $ff
	ccf                                              ; $604c: $3f
	add  b                                           ; $604d: $80
	ld   [hl], b                                     ; $604e: $70
	rlca                                             ; $604f: $07
	ld   l, a                                        ; $6050: $6f
	ld   l, [hl]                                     ; $6051: $6e
	ld   e, $1d                                      ; $6052: $1e $1d
	dec  a                                           ; $6054: $3d
	add  hl, sp                                      ; $6055: $39
	ld   e, c                                        ; $6056: $59
	ld   e, a                                        ; $6057: $5f
	add  b                                           ; $6058: $80
	inc  hl                                          ; $6059: $23
	add  b                                           ; $605a: $80
	ld   b, e                                        ; $605b: $43
	add  b                                           ; $605c: $80
	add  e                                           ; $605d: $83
	nop                                              ; $605e: $00
	rst  $38                                         ; $605f: $ff
	adc  c                                           ; $6060: $89
	nop                                              ; $6061: $00
	rlca                                             ; $6062: $07
	add  b                                           ; $6063: $80
	nop                                              ; $6064: $00
	ret  nz                                          ; $6065: $c0

	add  b                                           ; $6066: $80
	and  b                                           ; $6067: $a0
	add  b                                           ; $6068: $80
	ld   b, b                                        ; $6069: $40
	ld   d, b                                        ; $606a: $50
	add  b                                           ; $606b: $80
	and  b                                           ; $606c: $a0
	rlca                                             ; $606d: $07
	xor  b                                           ; $606e: $a8
	and  b                                           ; $606f: $a0
	call nc, $eed0                                   ; $6070: $d4 $d0 $ee
	db   $ec                                         ; $6073: $ec
	rst  $30                                         ; $6074: $f7
	or   $80                                         ; $6075: $f6 $80
	ei                                               ; $6077: $fb
	nop                                              ; $6078: $00
	rst  $38                                         ; $6079: $ff
	adc  e                                           ; $607a: $8b
	nop                                              ; $607b: $00
	ld   [bc], a                                     ; $607c: $02
	add  b                                           ; $607d: $80
	nop                                              ; $607e: $00
	ret  nz                                          ; $607f: $c0

	add  c                                           ; $6080: $81
	add  b                                           ; $6081: $80
	add  b                                           ; $6082: $80
	nop                                              ; $6083: $00
	add  b                                           ; $6084: $80
	add  b                                           ; $6085: $80
	nop                                              ; $6086: $00
	ldh  [$83], a                                    ; $6087: $e0 $83
	ret  nz                                          ; $6089: $c0

	ld   bc, $e0f0                                   ; $608a: $01 $f0 $e0
	add  d                                           ; $608d: $82
	ld   h, b                                        ; $608e: $60
	add  h                                           ; $608f: $84
	jr   nz, jr_09f_6013                             ; $6090: $20 $81

	db   $10                                         ; $6092: $10
	add  c                                           ; $6093: $81
	nop                                              ; $6094: $00
	add  h                                           ; $6095: $84
	add  b                                           ; $6096: $80
	add  c                                           ; $6097: $81
	ret  nz                                          ; $6098: $c0

	nop                                              ; $6099: $00

jr_09f_609a:
	ret  nc                                          ; $609a: $d0

	add  b                                           ; $609b: $80
	ld   d, b                                        ; $609c: $50
	add  b                                           ; $609d: $80
	ld   h, b                                        ; $609e: $60
	add  d                                           ; $609f: $82
	jr   nz, jr_09f_6027                             ; $60a0: $20 $85

	add  b                                           ; $60a2: $80
	nop                                              ; $60a3: $00
	adc  b                                           ; $60a4: $88
	add  b                                           ; $60a5: $80
	ret  z                                           ; $60a6: $c8

	add  d                                           ; $60a7: $82
	ret  nz                                          ; $60a8: $c0

	add  e                                           ; $60a9: $83
	ret  nc                                          ; $60aa: $d0

	add  c                                           ; $60ab: $81
	call nc, $d882                                   ; $60ac: $d4 $82 $d8
	add  d                                           ; $60af: $82
	sbc  b                                           ; $60b0: $98
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	add  c                                           ; $60b3: $81
	jr   jr_09f_60b6                                 ; $60b4: $18 $00

jr_09f_60b6:
	inc  e                                           ; $60b6: $1c
	add  c                                           ; $60b7: $81
	or   b                                           ; $60b8: $b0
	jr   @-$47                                       ; $60b9: $18 $b7

	ld   h, b                                        ; $60bb: $60
	ld   l, [hl]                                     ; $60bc: $6e
	adc  $de                                         ; $60bd: $ce $de
	sbc  [hl]                                        ; $60bf: $9e
	add  $46                                         ; $60c0: $c6 $46
	adc  $c2                                         ; $60c2: $ce $c2
	ret  nc                                          ; $60c4: $d0

	ret  c                                           ; $60c5: $d8

	ld   [$050c], sp                                 ; $60c6: $08 $0c $05
	ld   h, l                                        ; $60c9: $65
	ld   h, c                                        ; $60ca: $61
	pop  af                                          ; $60cb: $f1
	di                                               ; $60cc: $f3
	ei                                               ; $60cd: $fb
	db   $db                                         ; $60ce: $db
	db   $d3                                         ; $60cf: $d3
	pop  hl                                          ; $60d0: $e1
	ld   h, l                                        ; $60d1: $65
	adc  e                                           ; $60d2: $8b
	add  e                                           ; $60d3: $83
	nop                                              ; $60d4: $00
	ld   [$00c0], sp                                 ; $60d5: $08 $c0 $00
	jr   nz, jr_09f_609a                             ; $60d8: $20 $c0

	ret  nc                                          ; $60da: $d0

	ldh  [$e8], a                                    ; $60db: $e0 $e8
	ldh  a, [rHDMA4]                                 ; $60dd: $f0 $54
	add  c                                           ; $60df: $81
	ld   hl, sp+$00                                  ; $60e0: $f8 $00
	ld   [$fc80], a                                  ; $60e2: $ea $80 $fc
	ld   bc, $b4bc                                   ; $60e5: $01 $bc $b4
	add  l                                           ; $60e8: $85
	cp   h                                           ; $60e9: $bc
	rrca                                             ; $60ea: $0f
	or   h                                           ; $60eb: $b4
	cp   h                                           ; $60ec: $bc
	di                                               ; $60ed: $f3
	nop                                              ; $60ee: $00
	ld   [bc], a                                     ; $60ef: $02
	nop                                              ; $60f0: $00
	inc  b                                           ; $60f1: $04
	nop                                              ; $60f2: $00
	ld   bc, $0309                                   ; $60f3: $01 $09 $03
	inc  de                                          ; $60f6: $13
	ld   a, [bc]                                     ; $60f7: $0a
	ld   a, [hl+]                                    ; $60f8: $2a
	jr   jr_09f_6153                                 ; $60f9: $18 $58

	add  b                                           ; $60fb: $80
	add  hl, sp                                      ; $60fc: $39
	ld   b, $f3                                      ; $60fd: $06 $f3
	ld   [hl], e                                     ; $60ff: $73
	di                                               ; $6100: $f3
	and  e                                           ; $6101: $a3
	and  a                                           ; $6102: $a7
	sub  a                                           ; $6103: $97
	adc  [hl]                                        ; $6104: $8e
	add  b                                           ; $6105: $80
	ld   a, [bc]                                     ; $6106: $0a
	add  c                                           ; $6107: $81
	and  [hl]                                        ; $6108: $a6
	nop                                              ; $6109: $00
	sub  [hl]                                        ; $610a: $96
	add  b                                           ; $610b: $80
	jp   nz, $c003                                   ; $610c: $c2 $03 $c0

	pop  hl                                          ; $610f: $e1
	nop                                              ; $6110: $00
	ld   bc, $0081                                   ; $6111: $01 $81 $00
	nop                                              ; $6114: $00
	inc  bc                                          ; $6115: $03
	add  c                                           ; $6116: $81
	ld   bc, $0700                                   ; $6117: $01 $00 $07
	add  c                                           ; $611a: $81
	inc  bc                                          ; $611b: $03
	add  b                                           ; $611c: $80
	ld   [bc], a                                     ; $611d: $02
	adc  l                                           ; $611e: $8d
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	ld   [$0080], sp                                 ; $6121: $08 $80 $00
	add  [hl]                                        ; $6124: $86
	ld   bc, $0380                                   ; $6125: $01 $80 $03
	add  [hl]                                        ; $6128: $86
	ld   [bc], a                                     ; $6129: $02
	add  b                                           ; $612a: $80
	nop                                              ; $612b: $00
	nop                                              ; $612c: $00
	ld   [$0087], sp                                 ; $612d: $08 $87 $00
	ld   [bc], a                                     ; $6130: $02
	add  hl, sp                                      ; $6131: $39
	ld   b, $07                                      ; $6132: $06 $07
	add  b                                           ; $6134: $80
	sub  a                                           ; $6135: $97
	add  b                                           ; $6136: $80
	rst  $10                                         ; $6137: $d7
	add  d                                           ; $6138: $82
	jp   $c100                                       ; $6139: $c3 $00 $c1


	add  b                                           ; $613c: $80
	pop  de                                          ; $613d: $d1
	ld   bc, $5051                                   ; $613e: $01 $51 $50
	add  d                                           ; $6141: $82
	ld   d, h                                        ; $6142: $54
	add  b                                           ; $6143: $80
	ld   e, d                                        ; $6144: $5a
	add  b                                           ; $6145: $80
	ld   a, [hl+]                                    ; $6146: $2a
	add  b                                           ; $6147: $80
	inc  h                                           ; $6148: $24
	add  b                                           ; $6149: $80
	and  d                                           ; $614a: $a2
	ld   bc, $20a0                                   ; $614b: $01 $a0 $20
	add  b                                           ; $614e: $80
	ld   [de], a                                     ; $614f: $12
	nop                                              ; $6150: $00
	ld   a, h                                        ; $6151: $7c
	add  e                                           ; $6152: $83

jr_09f_6153:
	nop                                              ; $6153: $00
	ld   [bc], a                                     ; $6154: $02
	ld   [bc], a                                     ; $6155: $02
	nop                                              ; $6156: $00
	ld   bc, $0087                                   ; $6157: $01 $87 $00
	nop                                              ; $615a: $00
	ld   bc, $0081                                   ; $615b: $01 $81 $00
	nop                                              ; $615e: $00
	inc  bc                                          ; $615f: $03
	add  c                                           ; $6160: $81
	ld   bc, $0700                                   ; $6161: $01 $00 $07
	add  c                                           ; $6164: $81
	inc  bc                                          ; $6165: $03
	dec  b                                           ; $6166: $05
	rrca                                             ; $6167: $0f
	rlca                                             ; $6168: $07
	ccf                                              ; $6169: $3f
	rrca                                             ; $616a: $0f
	rst  ToBoot                                         ; $616b: $c7
	rlca                                             ; $616c: $07
	add  b                                           ; $616d: $80
	di                                               ; $616e: $f3
	ld   b, $1d                                      ; $616f: $06 $1d
	db   $fd                                         ; $6171: $fd
	and  $fe                                         ; $6172: $e6 $fe
	ld   sp, hl                                      ; $6174: $f9
	rst  $38                                         ; $6175: $ff
	cp   $89                                         ; $6176: $fe $89
	rst  $38                                         ; $6178: $ff
	ld   [$ff7f], sp                                 ; $6179: $08 $7f $ff
	rst  JumpTable                                         ; $617c: $df
	cp   a                                           ; $617d: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $617e: $cf
	rst  JumpTable                                         ; $617f: $df
	ld   h, a                                        ; $6180: $67
	ld   l, a                                        ; $6181: $6f
	ld   hl, sp-$7f                                  ; $6182: $f8 $81
	nop                                              ; $6184: $00
	ld   a, [bc]                                     ; $6185: $0a
	rlca                                             ; $6186: $07
	nop                                              ; $6187: $00
	ld   e, $07                                      ; $6188: $1e $07
	ld   hl, $5f1f                                   ; $618a: $21 $1f $5f
	ccf                                              ; $618d: $3f
	rst  $38                                         ; $618e: $ff
	ld   a, a                                        ; $618f: $7f
	cp   a                                           ; $6190: $bf
	add  c                                           ; $6191: $81
	rst  $38                                         ; $6192: $ff
	nop                                              ; $6193: $00
	ld   a, a                                        ; $6194: $7f
	add  c                                           ; $6195: $81
	rst  $38                                         ; $6196: $ff
	dec  b                                           ; $6197: $05
	db   $fc                                         ; $6198: $fc
	rst  $38                                         ; $6199: $ff
	db   $fd                                         ; $619a: $fd
	rst  $38                                         ; $619b: $ff
	db   $fd                                         ; $619c: $fd
	rst  $38                                         ; $619d: $ff
	add  b                                           ; $619e: $80
	db   $fc                                         ; $619f: $fc
	ld   [bc], a                                     ; $61a0: $02
	db   $fd                                         ; $61a1: $fd
	ld   a, a                                        ; $61a2: $7f
	add  c                                           ; $61a3: $81
	adc  e                                           ; $61a4: $8b
	nop                                              ; $61a5: $00
	ld   b, $01                                      ; $61a6: $06 $01
	nop                                              ; $61a8: $00
	inc  bc                                          ; $61a9: $03
	ld   bc, $0307                                   ; $61aa: $01 $07 $03
	ld   c, $81                                      ; $61ad: $0e $81
	rlca                                             ; $61af: $07
	nop                                              ; $61b0: $00

jr_09f_61b1:
	dec  e                                           ; $61b1: $1d
	add  c                                           ; $61b2: $81
	rrca                                             ; $61b3: $0f
	ld   bc, $1c3f                                   ; $61b4: $01 $3f $1c
	add  b                                           ; $61b7: $80
	ld   e, $18                                      ; $61b8: $1e $18
	ld   e, a                                        ; $61ba: $5f
	add  b                                           ; $61bb: $80
	ld   [hl], b                                     ; $61bc: $70
	ld   h, b                                        ; $61bd: $60
	jr   c, jr_09f_61f0                              ; $61be: $38 $30

	sbc  h                                           ; $61c0: $9c
	jr   jr_09f_61b1                                 ; $61c1: $18 $ee

	inc  c                                           ; $61c3: $0c
	add  a                                           ; $61c4: $87
	ld   d, $03                                      ; $61c5: $16 $03
	dec  bc                                          ; $61c7: $0b
	sub  c                                           ; $61c8: $91
	sub  l                                           ; $61c9: $95
	db   $ec                                         ; $61ca: $ec
	ld   l, [hl]                                     ; $61cb: $6e
	or   $37                                         ; $61cc: $f6 $37
	ld   a, a                                        ; $61ce: $7f
	rra                                              ; $61cf: $1f
	ccf                                              ; $61d0: $3f
	rrca                                             ; $61d1: $0f
	rra                                              ; $61d2: $1f
	add  b                                           ; $61d3: $80
	rlca                                             ; $61d4: $07
	dec  b                                           ; $61d5: $05
	inc  bc                                          ; $61d6: $03
	dec  bc                                          ; $61d7: $0b
	ld   bc, $0005                                   ; $61d8: $01 $05 $00
	inc  b                                           ; $61db: $04
	add  c                                           ; $61dc: $81
	nop                                              ; $61dd: $00
	add  h                                           ; $61de: $84
	ld   [bc], a                                     ; $61df: $02
	rlca                                             ; $61e0: $07
	inc  c                                           ; $61e1: $0c
	inc  b                                           ; $61e2: $04
	add  h                                           ; $61e3: $84
	inc  b                                           ; $61e4: $04
	ret  c                                           ; $61e5: $d8

	adc  b                                           ; $61e6: $88
	add  sp, -$35                                    ; $61e7: $e8 $cb
	add  b                                           ; $61e9: $80
	dec  bc                                          ; $61ea: $0b
	ld   [bc], a                                     ; $61eb: $02
	inc  de                                          ; $61ec: $13
	sub  a                                           ; $61ed: $97
	add  a                                           ; $61ee: $87
	add  b                                           ; $61ef: $80

jr_09f_61f0:
	rst  ToBoot                                         ; $61f0: $c7
	inc  bc                                          ; $61f1: $03
	rst  $20                                         ; $61f2: $e7
	pop  hl                                          ; $61f3: $e1
	jp   hl                                          ; $61f4: $e9


	ldh  [$80], a                                    ; $61f5: $e0 $80
	ret  nz                                          ; $61f7: $c0

	ld   e, $80                                      ; $61f8: $1e $80
	inc  c                                           ; $61fa: $0c
	nop                                              ; $61fb: $00
	ld   b, l                                        ; $61fc: $45
	nop                                              ; $61fd: $00
	jp   z, $1c00                                    ; $61fe: $ca $00 $1c

	nop                                              ; $6201: $00
	stop                                             ; $6202: $10 $00
	ld   [$0900], sp                                 ; $6204: $08 $00 $09
	nop                                              ; $6207: $00
	ld   a, c                                        ; $6208: $79
	nop                                              ; $6209: $00
	inc  [hl]                                        ; $620a: $34
	nop                                              ; $620b: $00
	inc  a                                           ; $620c: $3c
	nop                                              ; $620d: $00
	ld   c, [hl]                                     ; $620e: $4e
	nop                                              ; $620f: $00
	ld   [bc], a                                     ; $6210: $02
	add  b                                           ; $6211: $80
	and  h                                           ; $6212: $a4
	add  b                                           ; $6213: $80
	sbc  b                                           ; $6214: $98
	ret  nz                                          ; $6215: $c0

	ld   b, b                                        ; $6216: $40
	ld   h, b                                        ; $6217: $60
	add  b                                           ; $6218: $80
	jr   nz, @+$2f                                   ; $6219: $20 $2d

	rst  $38                                         ; $621b: $ff
	ld   h, b                                        ; $621c: $60
	ld   d, b                                        ; $621d: $50
	or   b                                           ; $621e: $b0
	sbc  b                                           ; $621f: $98
	ret  z                                           ; $6220: $c8

	adc  $f2                                         ; $6221: $ce $f2
	di                                               ; $6223: $f3
	db   $fc                                         ; $6224: $fc
	db   $dd                                         ; $6225: $dd
	rst  JumpTable                                         ; $6226: $df
	adc  $cf                                         ; $6227: $ce $cf
	and  e                                           ; $6229: $a3
	ld   h, e                                        ; $622a: $63
	and  b                                           ; $622b: $a0
	nop                                              ; $622c: $00
	ldh  a, [rP1]                                    ; $622d: $f0 $00
	ld   e, b                                        ; $622f: $58
	nop                                              ; $6230: $00
	xor  h                                           ; $6231: $ac
	nop                                              ; $6232: $00
	or   $00                                         ; $6233: $f6 $00
	sbc  e                                           ; $6235: $9b
	nop                                              ; $6236: $00
	dec  c                                           ; $6237: $0d
	nop                                              ; $6238: $00
	ld   b, $00                                      ; $6239: $06 $00
	ld   bc, $0602                                   ; $623b: $01 $02 $06
	nop                                              ; $623e: $00
	jr   jr_09f_6251                                 ; $623f: $18 $10

	ld   [hl], b                                     ; $6241: $70
	ld   c, b                                        ; $6242: $48
	pop  de                                          ; $6243: $d1
	ld   hl, $c181                                   ; $6244: $21 $81 $c1
	ld   bc, $8081                                   ; $6247: $01 $81 $80
	ld   bc, $0082                                   ; $624a: $01 $82 $00
	ld   bc, $0002                                   ; $624d: $01 $02 $00
	add  b                                           ; $6250: $80

jr_09f_6251:
	db   $10                                         ; $6251: $10
	add  b                                           ; $6252: $80
	jr   nc, @+$08                                   ; $6253: $30 $06

	ld   a, $30                                      ; $6255: $3e $30
	ldh  a, [rSVBK]                                  ; $6257: $f0 $70
	db   $fc                                         ; $6259: $fc
	jr   nz, jr_09f_62b3                             ; $625a: $20 $57

	rst  $38                                         ; $625c: $ff
	nop                                              ; $625d: $00
	rst  $38                                         ; $625e: $ff
	nop                                              ; $625f: $00
	db   $db                                         ; $6260: $db
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	rst  $38                                         ; $6263: $ff
	add  d                                           ; $6264: $82
	ld   [de], a                                     ; $6265: $12
	add  b                                           ; $6266: $80
	ld   b, d                                        ; $6267: $42
	add  b                                           ; $6268: $80
	ld   b, h                                        ; $6269: $44
	add  b                                           ; $626a: $80
	ld   h, l                                        ; $626b: $65
	add  b                                           ; $626c: $80
	add  hl, hl                                      ; $626d: $29
	add  b                                           ; $626e: $80
	ld   de, $a380                                   ; $626f: $11 $80 $a3
	add  b                                           ; $6272: $80
	add  e                                           ; $6273: $83
	add  b                                           ; $6274: $80
	add  $80                                         ; $6275: $c6 $80
	inc  c                                           ; $6277: $0c
	add  b                                           ; $6278: $80
	db   $10                                         ; $6279: $10
	add  b                                           ; $627a: $80
	nop                                              ; $627b: $00
	add  b                                           ; $627c: $80
	ld   [$0102], sp                                 ; $627d: $08 $02 $01
	ld   a, c                                        ; $6280: $79
	ld   a, b                                        ; $6281: $78
	add  d                                           ; $6282: $82
	nop                                              ; $6283: $00
	add  b                                           ; $6284: $80
	pop  bc                                          ; $6285: $c1
	add  b                                           ; $6286: $80
	ldh  [$80], a                                    ; $6287: $e0 $80
	ldh  a, [c]                                      ; $6289: $f2
	add  b                                           ; $628a: $80
	ld   sp, hl                                      ; $628b: $f9
	add  b                                           ; $628c: $80
	db   $fd                                         ; $628d: $fd
	add  b                                           ; $628e: $80
	cp   $0f                                         ; $628f: $fe $0f
	sbc  a                                           ; $6291: $9f
	nop                                              ; $6292: $00
	ldh  a, [rP1]                                    ; $6293: $f0 $00
	ld   e, b                                        ; $6295: $58
	nop                                              ; $6296: $00
	xor  h                                           ; $6297: $ac
	add  b                                           ; $6298: $80
	halt                                             ; $6299: $76
	ld   h, b                                        ; $629a: $60
	ei                                               ; $629b: $fb
	ldh  a, [$fd]                                    ; $629c: $f0 $fd
	ld   hl, sp-$02                                  ; $629e: $f8 $fe
	db   $fc                                         ; $62a0: $fc
	add  d                                           ; $62a1: $82
	rst  $38                                         ; $62a2: $ff
	nop                                              ; $62a3: $00
	cp   $81                                         ; $62a4: $fe $81
	rst  $38                                         ; $62a6: $ff
	rrca                                             ; $62a7: $0f
	sbc  a                                           ; $62a8: $9f
	rst  $38                                         ; $62a9: $ff
	daa                                              ; $62aa: $27
	ld   a, a                                        ; $62ab: $7f
	sbc  b                                           ; $62ac: $98
	cp   a                                           ; $62ad: $bf
	ld   e, a                                        ; $62ae: $5f
	rst  JumpTable                                         ; $62af: $df
	pop  hl                                          ; $62b0: $e1
	ld   a, [hl]                                     ; $62b1: $7e
	ccf                                              ; $62b2: $3f

jr_09f_62b3:
	cp   a                                           ; $62b3: $bf
	sbc  a                                           ; $62b4: $9f
	rst  JumpTable                                         ; $62b5: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62b6: $cf
	rst  $28                                         ; $62b7: $ef
	add  b                                           ; $62b8: $80
	rst  $30                                         ; $62b9: $f7
	ld   bc, $f3e3                                   ; $62ba: $01 $e3 $f3
	add  b                                           ; $62bd: $80
	ld   sp, hl                                      ; $62be: $f9
	add  hl, bc                                      ; $62bf: $09
	ldh  a, [$f8]                                    ; $62c0: $f0 $f8
	ld   [hl-], a                                    ; $62c2: $32
	ld   [bc], a                                     ; $62c3: $02
	jp   $9f03                                       ; $62c4: $c3 $03 $9f


	add  a                                           ; $62c7: $87
	rst  $10                                         ; $62c8: $d7
	rst  ToBoot                                         ; $62c9: $c7
	add  b                                           ; $62ca: $80
	rst  $20                                         ; $62cb: $e7
	add  b                                           ; $62cc: $80
	rst  $28                                         ; $62cd: $ef
	add  b                                           ; $62ce: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62cf: $cf
	add  b                                           ; $62d0: $80
	adc  a                                           ; $62d1: $8f
	add  b                                           ; $62d2: $80

jr_09f_62d3:
	ld   c, h                                        ; $62d3: $4c
	rlca                                             ; $62d4: $07
	ld   [hl], b                                     ; $62d5: $70
	ld   d, b                                        ; $62d6: $50
	ld   e, $0e                                      ; $62d7: $1e $0e
	adc  h                                           ; $62d9: $8c
	and  h                                           ; $62da: $a4
	add  b                                           ; $62db: $80
	sbc  b                                           ; $62dc: $98
	add  b                                           ; $62dd: $80
	ret  nz                                          ; $62de: $c0

	add  d                                           ; $62df: $82
	ldh  [$0c], a                                    ; $62e0: $e0 $0c
	jr   nz, jr_09f_62d3                             ; $62e2: $20 $ef

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62e4: $cf
	rst  $28                                         ; $62e5: $ef
	rst  $38                                         ; $62e6: $ff
	rst  $30                                         ; $62e7: $f7
	rst  $20                                         ; $62e8: $e7
	rst  $30                                         ; $62e9: $f7
	rst  $38                                         ; $62ea: $ff
	ei                                               ; $62eb: $fb
	ld   sp, hl                                      ; $62ec: $f9
	ei                                               ; $62ed: $fb
	db   $f4                                         ; $62ee: $f4
	add  c                                           ; $62ef: $81
	db   $fd                                         ; $62f0: $fd
	add  b                                           ; $62f1: $80
	db   $fc                                         ; $62f2: $fc
	ld   bc, $fcf8                                   ; $62f3: $01 $f8 $fc
	add  h                                           ; $62f6: $84
	cp   $00                                         ; $62f7: $fe $00
	ld   a, [$fe81]                                  ; $62f9: $fa $81 $fe
	inc  bc                                          ; $62fc: $03
	ld   [hl], h                                     ; $62fd: $74
	db   $fd                                         ; $62fe: $fd
	ld   l, [hl]                                     ; $62ff: $6e
	rra                                              ; $6300: $1f
	add  b                                           ; $6301: $80
	inc  e                                           ; $6302: $1c
	add  hl, bc                                      ; $6303: $09
	inc  sp                                          ; $6304: $33
	jr   nc, jr_09f_6313                             ; $6305: $30 $0c

	nop                                              ; $6307: $00
	db   $10                                         ; $6308: $10
	jr   nz, jr_09f_630b                             ; $6309: $20 $00

jr_09f_630b:
	ld   b, b                                        ; $630b: $40
	nop                                              ; $630c: $00
	add  b                                           ; $630d: $80
	add  b                                           ; $630e: $80
	nop                                              ; $630f: $00
	ld   de, $c13f                                   ; $6310: $11 $3f $c1

jr_09f_6313:
	ld   bc, $f505                                   ; $6313: $01 $05 $f5
	inc  b                                           ; $6316: $04
	ld   l, h                                        ; $6317: $6c
	nop                                              ; $6318: $00
	ld   a, b                                        ; $6319: $78
	nop                                              ; $631a: $00
	inc  a                                           ; $631b: $3c

jr_09f_631c:
	nop                                              ; $631c: $00
	jr   c, jr_09f_631f                              ; $631d: $38 $00

jr_09f_631f:
	inc  e                                           ; $631f: $1c
	nop                                              ; $6320: $00
	xor  c                                           ; $6321: $a9
	dec  h                                           ; $6322: $25
	add  b                                           ; $6323: $80
	dec  b                                           ; $6324: $05
	ld   [bc], a                                     ; $6325: $02
	ld   d, h                                        ; $6326: $54
	sbc  d                                           ; $6327: $9a
	cp   d                                           ; $6328: $ba
	add  b                                           ; $6329: $80
	xor  d                                           ; $632a: $aa
	add  c                                           ; $632b: $81
	sbc  d                                           ; $632c: $9a
	nop                                              ; $632d: $00
	sbc  e                                           ; $632e: $9b
	add  b                                           ; $632f: $80
	add  hl, de                                      ; $6330: $19
	ld   bc, $ef11                                   ; $6331: $01 $11 $ef
	rst  $38                                         ; $6334: $ff
	nop                                              ; $6335: $00
	rst  $38                                         ; $6336: $ff
	nop                                              ; $6337: $00
	rst  $38                                         ; $6338: $ff
	nop                                              ; $6339: $00
	rst  $38                                         ; $633a: $ff
	nop                                              ; $633b: $00
	rst  $38                                         ; $633c: $ff
	nop                                              ; $633d: $00
	rst  $38                                         ; $633e: $ff
	nop                                              ; $633f: $00
	and  a                                           ; $6340: $a7
	nop                                              ; $6341: $00
	add  sp, $00                                     ; $6342: $e8 $00
	add  [hl]                                        ; $6344: $86
	nop                                              ; $6345: $00
	dec  h                                           ; $6346: $25
	inc  bc                                          ; $6347: $03
	nop                                              ; $6348: $00
	inc  c                                           ; $6349: $0c
	inc  bc                                          ; $634a: $03
	db   $10                                         ; $634b: $10
	rrca                                             ; $634c: $0f
	add  hl, bc                                      ; $634d: $09
	dec  b                                           ; $634e: $05
	daa                                              ; $634f: $27
	rra                                              ; $6350: $1f
	ld   e, b                                        ; $6351: $58
	nop                                              ; $6352: $00
	ld   b, b                                        ; $6353: $40
	nop                                              ; $6354: $00
	rrca                                             ; $6355: $0f
	rra                                              ; $6356: $1f
	ld   d, b                                        ; $6357: $50
	jr   nz, jr_09f_63ba                             ; $6358: $20 $60

	nop                                              ; $635a: $00
	inc  de                                          ; $635b: $13
	rra                                              ; $635c: $1f
	dec  de                                          ; $635d: $1b
	rra                                              ; $635e: $1f
	ld   h, a                                        ; $635f: $67
	cpl                                              ; $6360: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6361: $cf
	ld   c, a                                        ; $6362: $4f
	daa                                              ; $6363: $27
	ld   h, a                                        ; $6364: $67
	nop                                              ; $6365: $00
	ld   b, b                                        ; $6366: $40
	adc  c                                           ; $6367: $89
	add  hl, bc                                      ; $6368: $09

jr_09f_6369:
	ld   l, c                                        ; $6369: $69
	dec  bc                                          ; $636a: $0b
	add  hl, bc                                      ; $636b: $09
	dec  bc                                          ; $636c: $0b
	add  b                                           ; $636d: $80
	nop                                              ; $636e: $00
	inc  bc                                          ; $636f: $03
	ld   de, $1801                                   ; $6370: $11 $01 $18
	ld   [$0c80], sp                                 ; $6373: $08 $80 $0c
	ld   [$0010], sp                                 ; $6376: $08 $10 $00
	ld   [de], a                                     ; $6379: $12
	ld   a, [bc]                                     ; $637a: $0a
	inc  h                                           ; $637b: $24
	inc  e                                           ; $637c: $1c
	ld   de, $3e00                                   ; $637d: $11 $00 $3e
	add  l                                           ; $6380: $85
	nop                                              ; $6381: $00
	inc  bc                                          ; $6382: $03
	ld   a, a                                        ; $6383: $7f
	nop                                              ; $6384: $00
	sbc  a                                           ; $6385: $9f
	rra                                              ; $6386: $1f
	add  b                                           ; $6387: $80
	ldh  [$80], a                                    ; $6388: $e0 $80
	ld   sp, hl                                      ; $638a: $f9
	add  b                                           ; $638b: $80
	ld   a, h                                        ; $638c: $7c
	add  b                                           ; $638d: $80
	sbc  e                                           ; $638e: $9b
	ld   bc, $4342                                   ; $638f: $01 $42 $43
	add  b                                           ; $6392: $80
	dec  bc                                          ; $6393: $0b
	ld   bc, $d3d2                                   ; $6394: $01 $d2 $d3
	add  b                                           ; $6397: $80
	nop                                              ; $6398: $00
	add  b                                           ; $6399: $80
	jr   nc, jr_09f_631c                             ; $639a: $30 $80

	ldh  [$80], a                                    ; $639c: $e0 $80
	ret  nc                                          ; $639e: $d0

	add  b                                           ; $639f: $80
	add  sp, $05                                     ; $63a0: $e8 $05
	ret  nc                                          ; $63a2: $d0

	pop  de                                          ; $63a3: $d1
	xor  c                                           ; $63a4: $a9
	xor  b                                           ; $63a5: $a8
	nop                                              ; $63a6: $00
	ld   bc, $3180                                   ; $63a7: $01 $80 $31
	ld   bc, $b2b3                                   ; $63aa: $01 $b3 $b2
	add  b                                           ; $63ad: $80
	or   b                                           ; $63ae: $b0
	add  b                                           ; $63af: $80
	inc  bc                                          ; $63b0: $03
	add  b                                           ; $63b1: $80
	add  b                                           ; $63b2: $80
	add  b                                           ; $63b3: $80
	add  [hl]                                        ; $63b4: $86
	add  b                                           ; $63b5: $80
	ld   [bc], a                                     ; $63b6: $02
	add  b                                           ; $63b7: $80
	inc  c                                           ; $63b8: $0c
	add  b                                           ; $63b9: $80

jr_09f_63ba:
	ld   [$a706], sp                                 ; $63ba: $08 $06 $a7
	add  a                                           ; $63bd: $87
	ld   d, $07                                      ; $63be: $16 $07
	ret                                              ; $63c0: $c9


	nop                                              ; $63c1: $00
	rlca                                             ; $63c2: $07
	add  e                                           ; $63c3: $83
	nop                                              ; $63c4: $00
	add  hl, bc                                      ; $63c5: $09
	ldh  [rP1], a                                    ; $63c6: $e0 $00
	ldh  a, [$e0]                                    ; $63c8: $f0 $e0
	jr   jr_09f_63dc                                 ; $63ca: $18 $10

	or   $f0                                         ; $63cc: $f6 $f0
	rst  $30                                         ; $63ce: $f7
	or   $80                                         ; $63cf: $f6 $80
	ld   a, [bc]                                     ; $63d1: $0a
	dec  b                                           ; $63d2: $05
	ld   [hl], h                                     ; $63d3: $74
	db   $f4                                         ; $63d4: $f4
	ld   h, c                                        ; $63d5: $61
	ldh  [$e1], a                                    ; $63d6: $e0 $e1
	ldh  [$80], a                                    ; $63d8: $e0 $80

jr_09f_63da:
	ld   b, $80                                      ; $63da: $06 $80

jr_09f_63dc:
	ldh  [c], a                                      ; $63dc: $e2
	add  b                                           ; $63dd: $80
	ld   l, b                                        ; $63de: $68
	dec  b                                           ; $63df: $05
	dec  de                                          ; $63e0: $1b
	jr   @+$66                                       ; $63e1: $18 $64

	ldh  [rSVBK], a                                  ; $63e3: $e0 $70
	ldh  a, [$80]                                    ; $63e5: $f0 $80
	jr   nc, jr_09f_6369                             ; $63e7: $30 $80

	add  b                                           ; $63e9: $80
	dec  b                                           ; $63ea: $05
	ld   l, b                                        ; $63eb: $68
	ld   h, b                                        ; $63ec: $60
	stop                                             ; $63ed: $10 $00
	jr   nz, jr_09f_63f1                             ; $63ef: $20 $00

jr_09f_63f1:
	add  b                                           ; $63f1: $80
	add  b                                           ; $63f2: $80
	add  b                                           ; $63f3: $80
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	ld   b, b                                        ; $63f6: $40
	add  c                                           ; $63f7: $81
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	ret  nz                                          ; $63fa: $c0

	add  c                                           ; $63fb: $81
	add  b                                           ; $63fc: $80
	add  b                                           ; $63fd: $80
	nop                                              ; $63fe: $00
	add  b                                           ; $63ff: $80
	add  b                                           ; $6400: $80
	add  b                                           ; $6401: $80
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	ret  nz                                          ; $6404: $c0

	add  a                                           ; $6405: $87
	nop                                              ; $6406: $00
	dec  h                                           ; $6407: $25
	inc  bc                                          ; $6408: $03
	nop                                              ; $6409: $00
	inc  c                                           ; $640a: $0c
	inc  bc                                          ; $640b: $03
	db   $10                                         ; $640c: $10
	rrca                                             ; $640d: $0f
	add  hl, bc                                      ; $640e: $09
	dec  b                                           ; $640f: $05
	cpl                                              ; $6410: $2f
	rra                                              ; $6411: $1f
	ld   d, b                                        ; $6412: $50
	nop                                              ; $6413: $00
	ld   b, b                                        ; $6414: $40
	nop                                              ; $6415: $00
	rrca                                             ; $6416: $0f
	rra                                              ; $6417: $1f
	ld   d, b                                        ; $6418: $50
	jr   nz, @+$62                                   ; $6419: $20 $60

	nop                                              ; $641b: $00
	inc  de                                          ; $641c: $13
	rra                                              ; $641d: $1f
	inc  de                                          ; $641e: $13
	rra                                              ; $641f: $1f
	ld   l, a                                        ; $6420: $6f
	cpl                                              ; $6421: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6422: $cf
	ld   c, a                                        ; $6423: $4f
	daa                                              ; $6424: $27

jr_09f_6425:
	ld   h, a                                        ; $6425: $67
	nop                                              ; $6426: $00
	ld   b, b                                        ; $6427: $40
	adc  c                                           ; $6428: $89
	add  hl, bc                                      ; $6429: $09
	ld   l, c                                        ; $642a: $69
	dec  bc                                          ; $642b: $0b
	add  hl, bc                                      ; $642c: $09
	dec  bc                                          ; $642d: $0b
	add  b                                           ; $642e: $80
	nop                                              ; $642f: $00
	add  b                                           ; $6430: $80
	add  hl, bc                                      ; $6431: $09
	add  b                                           ; $6432: $80
	inc  c                                           ; $6433: $0c
	ld   [$0010], sp                                 ; $6434: $08 $10 $00
	ld   [de], a                                     ; $6437: $12
	ld   a, [bc]                                     ; $6438: $0a
	inc  h                                           ; $6439: $24
	inc  e                                           ; $643a: $1c
	ld   de, $3e00                                   ; $643b: $11 $00 $3e
	add  a                                           ; $643e: $87
	nop                                              ; $643f: $00
	rlca                                             ; $6440: $07
	ld   a, a                                        ; $6441: $7f
	nop                                              ; $6442: $00
	sbc  a                                           ; $6443: $9f
	rra                                              ; $6444: $1f
	ld   h, b                                        ; $6445: $60
	ldh  [$71], a                                    ; $6446: $e0 $71
	pop  af                                          ; $6448: $f1
	add  b                                           ; $6449: $80
	ld   a, b                                        ; $644a: $78
	add  b                                           ; $644b: $80
	sbc  e                                           ; $644c: $9b
	ld   bc, $4342                                   ; $644d: $01 $42 $43
	add  b                                           ; $6450: $80
	dec  bc                                          ; $6451: $0b
	ld   bc, $d3d2                                   ; $6452: $01 $d2 $d3
	add  b                                           ; $6455: $80
	nop                                              ; $6456: $00
	add  b                                           ; $6457: $80
	jr   nc, jr_09f_63da                             ; $6458: $30 $80

	ldh  [$80], a                                    ; $645a: $e0 $80
	ret  nc                                          ; $645c: $d0

	add  b                                           ; $645d: $80
	add  sp, $05                                     ; $645e: $e8 $05
	ret  nc                                          ; $6460: $d0

	pop  de                                          ; $6461: $d1
	xor  c                                           ; $6462: $a9
	xor  b                                           ; $6463: $a8
	nop                                              ; $6464: $00
	ld   bc, $3180                                   ; $6465: $01 $80 $31
	ld   bc, $b2b3                                   ; $6468: $01 $b3 $b2
	add  b                                           ; $646b: $80
	or   b                                           ; $646c: $b0
	add  b                                           ; $646d: $80
	inc  bc                                          ; $646e: $03
	add  b                                           ; $646f: $80
	add  h                                           ; $6470: $84
	add  b                                           ; $6471: $80
	add  d                                           ; $6472: $82
	add  b                                           ; $6473: $80
	inc  c                                           ; $6474: $0c
	add  b                                           ; $6475: $80
	ld   [$a706], sp                                 ; $6476: $08 $06 $a7
	add  a                                           ; $6479: $87
	ld   d, $07                                      ; $647a: $16 $07
	ret                                              ; $647c: $c9


	nop                                              ; $647d: $00
	rlca                                             ; $647e: $07
	add  l                                           ; $647f: $85
	nop                                              ; $6480: $00
	add  hl, bc                                      ; $6481: $09
	ldh  [rP1], a                                    ; $6482: $e0 $00
	ldh  a, [$e0]                                    ; $6484: $f0 $e0
	jr   jr_09f_6498                                 ; $6486: $18 $10

	or   $f0                                         ; $6488: $f6 $f0
	rst  $30                                         ; $648a: $f7
	or   $80                                         ; $648b: $f6 $80
	ld   a, [bc]                                     ; $648d: $0a
	dec  b                                           ; $648e: $05
	inc  [hl]                                        ; $648f: $34
	db   $f4                                         ; $6490: $f4
	ld   hl, $e1e0                                   ; $6491: $21 $e0 $e1
	ldh  [$80], a                                    ; $6494: $e0 $80
	ld   b, $80                                      ; $6496: $06 $80

jr_09f_6498:
	ldh  [c], a                                      ; $6498: $e2
	add  b                                           ; $6499: $80
	ld   l, b                                        ; $649a: $68
	dec  b                                           ; $649b: $05
	dec  de                                          ; $649c: $1b
	jr   jr_09f_6503                                 ; $649d: $18 $64

	ldh  [rSVBK], a                                  ; $649f: $e0 $70
	ldh  a, [$80]                                    ; $64a1: $f0 $80
	jr   nc, jr_09f_6425                             ; $64a3: $30 $80

jr_09f_64a5:
	add  b                                           ; $64a5: $80
	dec  b                                           ; $64a6: $05
	ld   l, b                                        ; $64a7: $68
	ld   h, b                                        ; $64a8: $60
	stop                                             ; $64a9: $10 $00
	jr   nz, jr_09f_64ad                             ; $64ab: $20 $00

jr_09f_64ad:
	add  b                                           ; $64ad: $80
	add  b                                           ; $64ae: $80
	add  b                                           ; $64af: $80
	nop                                              ; $64b0: $00
	ld   [bc], a                                     ; $64b1: $02
	ld   b, b                                        ; $64b2: $40
	nop                                              ; $64b3: $00
	ret  nz                                          ; $64b4: $c0

	add  c                                           ; $64b5: $81
	add  b                                           ; $64b6: $80
	add  b                                           ; $64b7: $80
	nop                                              ; $64b8: $00
	add  b                                           ; $64b9: $80
	add  b                                           ; $64ba: $80
	add  b                                           ; $64bb: $80
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	ret  nz                                          ; $64be: $c0

	add  a                                           ; $64bf: $87
	nop                                              ; $64c0: $00
	jr   nz, jr_09f_64c6                             ; $64c1: $20 $03

	nop                                              ; $64c3: $00
	inc  c                                           ; $64c4: $0c
	inc  bc                                          ; $64c5: $03

jr_09f_64c6:
	db   $10                                         ; $64c6: $10
	rrca                                             ; $64c7: $0f
	add  hl, bc                                      ; $64c8: $09
	dec  b                                           ; $64c9: $05
	cpl                                              ; $64ca: $2f
	rra                                              ; $64cb: $1f
	ld   d, b                                        ; $64cc: $50
	nop                                              ; $64cd: $00
	ld   b, b                                        ; $64ce: $40
	nop                                              ; $64cf: $00
	rrca                                             ; $64d0: $0f
	rra                                              ; $64d1: $1f
	ld   d, b                                        ; $64d2: $50
	jr   nz, jr_09f_6535                             ; $64d3: $20 $60

	nop                                              ; $64d5: $00
	inc  de                                          ; $64d6: $13
	rra                                              ; $64d7: $1f
	ld   d, e                                        ; $64d8: $53
	rra                                              ; $64d9: $1f
	rst  JumpTable                                         ; $64da: $df
	ld   e, a                                        ; $64db: $5f
	cpl                                              ; $64dc: $2f
	ld   l, a                                        ; $64dd: $6f

jr_09f_64de:
	rlca                                             ; $64de: $07
	ld   b, a                                        ; $64df: $47
	add  b                                           ; $64e0: $80
	nop                                              ; $64e1: $00
	ld   l, c                                        ; $64e2: $69
	add  b                                           ; $64e3: $80
	add  hl, bc                                      ; $64e4: $09
	ld   [bc], a                                     ; $64e5: $02
	dec  bc                                          ; $64e6: $0b
	add  hl, bc                                      ; $64e7: $09
	dec  bc                                          ; $64e8: $0b
	add  b                                           ; $64e9: $80
	nop                                              ; $64ea: $00
	add  b                                           ; $64eb: $80
	add  hl, bc                                      ; $64ec: $09
	add  b                                           ; $64ed: $80
	inc  c                                           ; $64ee: $0c
	ld   [$0010], sp                                 ; $64ef: $08 $10 $00
	ld   [de], a                                     ; $64f2: $12
	ld   a, [bc]                                     ; $64f3: $0a
	inc  h                                           ; $64f4: $24
	inc  e                                           ; $64f5: $1c
	ld   de, $3e00                                   ; $64f6: $11 $00 $3e
	add  a                                           ; $64f9: $87
	nop                                              ; $64fa: $00
	rlca                                             ; $64fb: $07
	ld   a, a                                        ; $64fc: $7f
	nop                                              ; $64fd: $00
	sbc  a                                           ; $64fe: $9f
	rra                                              ; $64ff: $1f
	ld   h, b                                        ; $6500: $60
	ldh  [$71], a                                    ; $6501: $e0 $71

jr_09f_6503:
	pop  af                                          ; $6503: $f1
	add  b                                           ; $6504: $80
	ld   a, b                                        ; $6505: $78
	add  b                                           ; $6506: $80
	sbc  e                                           ; $6507: $9b
	ld   bc, $4342                                   ; $6508: $01 $42 $43
	add  b                                           ; $650b: $80
	dec  bc                                          ; $650c: $0b
	ld   bc, $d3d2                                   ; $650d: $01 $d2 $d3
	add  b                                           ; $6510: $80
	nop                                              ; $6511: $00
	add  b                                           ; $6512: $80
	jr   nc, @-$7e                                   ; $6513: $30 $80

	ldh  [$80], a                                    ; $6515: $e0 $80
	ret  nc                                          ; $6517: $d0

	dec  b                                           ; $6518: $05
	add  sp, -$17                                    ; $6519: $e8 $e9
	pop  de                                          ; $651b: $d1
	ret  nc                                          ; $651c: $d0

	xor  b                                           ; $651d: $a8
	xor  c                                           ; $651e: $a9
	add  b                                           ; $651f: $80
	ld   bc, $3101                                   ; $6520: $01 $01 $31
	jr   nc, jr_09f_64a5                             ; $6523: $30 $80

	or   e                                           ; $6525: $b3
	add  b                                           ; $6526: $80
	or   b                                           ; $6527: $b0
	add  b                                           ; $6528: $80
	inc  bc                                          ; $6529: $03
	add  b                                           ; $652a: $80
	add  h                                           ; $652b: $84
	add  b                                           ; $652c: $80
	add  d                                           ; $652d: $82
	add  b                                           ; $652e: $80
	inc  c                                           ; $652f: $0c
	add  b                                           ; $6530: $80
	ld   [$a706], sp                                 ; $6531: $08 $06 $a7
	add  a                                           ; $6534: $87

jr_09f_6535:
	ld   d, $07                                      ; $6535: $16 $07
	ret                                              ; $6537: $c9


	nop                                              ; $6538: $00
	rlca                                             ; $6539: $07
	add  l                                           ; $653a: $85
	nop                                              ; $653b: $00
	add  hl, bc                                      ; $653c: $09
	ldh  [rP1], a                                    ; $653d: $e0 $00
	ldh  a, [$e0]                                    ; $653f: $f0 $e0
	jr   jr_09f_6553                                 ; $6541: $18 $10

	or   $f0                                         ; $6543: $f6 $f0
	rst  $30                                         ; $6545: $f7
	or   $80                                         ; $6546: $f6 $80
	ld   a, [bc]                                     ; $6548: $0a
	dec  b                                           ; $6549: $05
	inc  [hl]                                        ; $654a: $34
	db   $f4                                         ; $654b: $f4
	ld   hl, $e1e0                                   ; $654c: $21 $e0 $e1
	ldh  [$80], a                                    ; $654f: $e0 $80
	ld   b, $80                                      ; $6551: $06 $80

jr_09f_6553:
	ld   [$1880], a                                  ; $6553: $ea $80 $18
	inc  bc                                          ; $6556: $03
	ld   h, a                                        ; $6557: $67
	ldh  [rSVBK], a                                  ; $6558: $e0 $70
	ldh  a, [$80]                                    ; $655a: $f0 $80
	jr   nc, jr_09f_64de                             ; $655c: $30 $80

	add  b                                           ; $655e: $80
	ld   bc, $6068                                   ; $655f: $01 $68 $60
	add  b                                           ; $6562: $80

jr_09f_6563:
	nop                                              ; $6563: $00
	ld   bc, $80b0                                   ; $6564: $01 $b0 $80
	add  b                                           ; $6567: $80
	nop                                              ; $6568: $00
	add  b                                           ; $6569: $80
	add  b                                           ; $656a: $80
	add  b                                           ; $656b: $80
	nop                                              ; $656c: $00
	ld   [bc], a                                     ; $656d: $02
	ld   b, b                                        ; $656e: $40
	nop                                              ; $656f: $00
	ret  nz                                          ; $6570: $c0

	add  c                                           ; $6571: $81
	add  b                                           ; $6572: $80
	add  b                                           ; $6573: $80
	nop                                              ; $6574: $00
	add  b                                           ; $6575: $80
	add  b                                           ; $6576: $80
	add  b                                           ; $6577: $80
	nop                                              ; $6578: $00

jr_09f_6579:
	nop                                              ; $6579: $00
	ret  nz                                          ; $657a: $c0

	adc  c                                           ; $657b: $89
	nop                                              ; $657c: $00
	add  b                                           ; $657d: $80
	ld   bc, $0380                                   ; $657e: $01 $80 $03
	nop                                              ; $6581: $00
	inc  b                                           ; $6582: $04
	add  c                                           ; $6583: $81
	ld   b, $01                                      ; $6584: $06 $01
	nop                                              ; $6586: $00

jr_09f_6587:
	ld   [bc], a                                     ; $6587: $02
	add  c                                           ; $6588: $81
	nop                                              ; $6589: $00
	add  b                                           ; $658a: $80
	inc  bc                                          ; $658b: $03
	dec  b                                           ; $658c: $05
	rrca                                             ; $658d: $0f
	inc  bc                                          ; $658e: $03
	inc  a                                           ; $658f: $3c
	ld   d, b                                        ; $6590: $50
	ldh  [$80], a                                    ; $6591: $e0 $80
	add  a                                           ; $6593: $87
	nop                                              ; $6594: $00
	add  b                                           ; $6595: $80
	ld   h, b                                        ; $6596: $60
	add  d                                           ; $6597: $82
	ld   hl, sp+$0d                                  ; $6598: $f8 $0d
	adc  h                                           ; $659a: $8c
	cp   h                                           ; $659b: $bc
	cp   b                                           ; $659c: $b8
	rst  $38                                         ; $659d: $ff
	ld   c, e                                        ; $659e: $4b
	ld   a, a                                        ; $659f: $7f
	xor  a                                           ; $65a0: $af
	rst  $38                                         ; $65a1: $ff
	rra                                              ; $65a2: $1f
	cp   $4e                                         ; $65a3: $fe $4e
	db   $fc                                         ; $65a5: $fc
	inc  c                                           ; $65a6: $0c
	ld   c, h                                        ; $65a7: $4c
	adc  b                                           ; $65a8: $88
	nop                                              ; $65a9: $00
	add  b                                           ; $65aa: $80
	rlca                                             ; $65ab: $07
	ld   b, $04                                      ; $65ac: $06 $04
	rlca                                             ; $65ae: $07
	ld   [bc], a                                     ; $65af: $02
	rrca                                             ; $65b0: $0f
	ld   [bc], a                                     ; $65b1: $02
	rrca                                             ; $65b2: $0f
	inc  de                                          ; $65b3: $13
	add  b                                           ; $65b4: $80
	rra                                              ; $65b5: $1f
	ld   [bc], a                                     ; $65b6: $02
	jr   @+$06                                       ; $65b7: $18 $04

	inc  c                                           ; $65b9: $0c
	add  b                                           ; $65ba: $80
	ld   bc, $008e                                   ; $65bb: $01 $8e $00
	add  b                                           ; $65be: $80
	ret  nz                                          ; $65bf: $c0

	rrca                                             ; $65c0: $0f
	nop                                              ; $65c1: $00
	ldh  [$60], a                                    ; $65c2: $e0 $60
	ldh  [hScriptOpcodeParams], a                                    ; $65c4: $e0 $a0
	db   $fc                                         ; $65c6: $fc
	ld   b, d                                        ; $65c7: $42
	cp   $ee                                         ; $65c8: $fe $ee
	rst  $38                                         ; $65ca: $ff
	rrca                                             ; $65cb: $0f
	rst  $38                                         ; $65cc: $ff
	ld   de, $0273                                   ; $65cd: $11 $73 $02
	inc  bc                                          ; $65d0: $03
	add  b                                           ; $65d1: $80
	ld   [de], a                                     ; $65d2: $12
	ld   bc, $1c1e                                   ; $65d3: $01 $1e $1c
	add  h                                           ; $65d6: $84
	nop                                              ; $65d7: $00
	add  b                                           ; $65d8: $80
	ld   [bc], a                                     ; $65d9: $02
	add  b                                           ; $65da: $80
	dec  a                                           ; $65db: $3d
	add  b                                           ; $65dc: $80
	ld   [hl], b                                     ; $65dd: $70
	add  b                                           ; $65de: $80
	add  b                                           ; $65df: $80
	add  b                                           ; $65e0: $80
	jr   nc, jr_09f_6563                             ; $65e1: $30 $80

	add  a                                           ; $65e3: $87
	add  b                                           ; $65e4: $80
	add  c                                           ; $65e5: $81
	add  b                                           ; $65e6: $80
	ld   b, d                                        ; $65e7: $42
	add  b                                           ; $65e8: $80
	jr   c, jr_09f_6579                              ; $65e9: $38 $8e

	nop                                              ; $65eb: $00
	add  b                                           ; $65ec: $80
	add  b                                           ; $65ed: $80
	add  d                                           ; $65ee: $82
	ld   b, b                                        ; $65ef: $40
	add  b                                           ; $65f0: $80
	nop                                              ; $65f1: $00
	add  b                                           ; $65f2: $80
	inc  e                                           ; $65f3: $1c
	add  b                                           ; $65f4: $80
	ld   [bc], a                                     ; $65f5: $02
	add  b                                           ; $65f6: $80
	ld   b, e                                        ; $65f7: $43
	add  d                                           ; $65f8: $82
	ld   bc, $0080                                   ; $65f9: $01 $80 $00
	add  b                                           ; $65fc: $80
	add  d                                           ; $65fd: $82
	add  b                                           ; $65fe: $80
	ld   h, d                                        ; $65ff: $62
	add  b                                           ; $6600: $80
	inc  e                                           ; $6601: $1c
	add  l                                           ; $6602: $85
	nop                                              ; $6603: $00
	add  b                                           ; $6604: $80
	jr   nc, jr_09f_6587                             ; $6605: $30 $80

	ld   b, b                                        ; $6607: $40
	add  b                                           ; $6608: $80
	nop                                              ; $6609: $00
	add  b                                           ; $660a: $80
	add  [hl]                                        ; $660b: $86
	add  b                                           ; $660c: $80
	add  c                                           ; $660d: $81
	add  d                                           ; $660e: $82
	add  b                                           ; $660f: $80
	add  b                                           ; $6610: $80
	nop                                              ; $6611: $00
	add  b                                           ; $6612: $80
	jr   c, @-$66                                    ; $6613: $38 $98

	nop                                              ; $6615: $00
	add  b                                           ; $6616: $80
	ld   [bc], a                                     ; $6617: $02
	add  b                                           ; $6618: $80
	ld   b, c                                        ; $6619: $41
	add  d                                           ; $661a: $82
	add  c                                           ; $661b: $81
	add  b                                           ; $661c: $80
	add  d                                           ; $661d: $82
	add  b                                           ; $661e: $80
	nop                                              ; $661f: $00
	inc  b                                           ; $6620: $04
	jr   jr_09f_663d                                 ; $6621: $18 $1a

	nop                                              ; $6623: $00
	rrca                                             ; $6624: $0f
	ld   [bc], a                                     ; $6625: $02
	add  b                                           ; $6626: $80
	ld   a, [bc]                                     ; $6627: $0a
	nop                                              ; $6628: $00
	rrca                                             ; $6629: $0f
	add  b                                           ; $662a: $80
	jp   z, Jump_09f_4080                            ; $662b: $ca $80 $40

	add  l                                           ; $662e: $85
	nop                                              ; $662f: $00
	add  b                                           ; $6630: $80
	jr   nz, @-$6c                                   ; $6631: $20 $92

	nop                                              ; $6633: $00
	ld   [$0050], sp                                 ; $6634: $08 $50 $00
	ret  c                                           ; $6637: $d8

	ld   d, b                                        ; $6638: $50
	ld   [hl], b                                     ; $6639: $70
	ld   d, b                                        ; $663a: $50
	ld   [hl], b                                     ; $663b: $70
	ld   d, b                                        ; $663c: $50

jr_09f_663d:
	ret  c                                           ; $663d: $d8

	sub  l                                           ; $663e: $95
	nop                                              ; $663f: $00
	add  h                                           ; $6640: $84
	jr   nc, @+$01                                   ; $6641: $30 $ff

	nop                                              ; $6643: $00
	rst  $38                                         ; $6644: $ff
	nop                                              ; $6645: $00
	rst  $38                                         ; $6646: $ff
	nop                                              ; $6647: $00
	rst  $38                                         ; $6648: $ff
	nop                                              ; $6649: $00
	rst  $38                                         ; $664a: $ff
	nop                                              ; $664b: $00
	rst  $38                                         ; $664c: $ff
	nop                                              ; $664d: $00
	rst  $38                                         ; $664e: $ff
	nop                                              ; $664f: $00
	rst  $38                                         ; $6650: $ff
	nop                                              ; $6651: $00
	add  sp, $00                                     ; $6652: $e8 $00
	ld   c, e                                        ; $6654: $4b
	ld   bc, $0098                                   ; $6655: $01 $98 $00
	add  b                                           ; $6658: $80
	ld   bc, $0a80                                   ; $6659: $01 $80 $0a
	adc  [hl]                                        ; $665c: $8e
	nop                                              ; $665d: $00
	add  b                                           ; $665e: $80
	ld   bc, $0a80                                   ; $665f: $01 $80 $0a
	add  b                                           ; $6662: $80
	dec  d                                           ; $6663: $15
	add  b                                           ; $6664: $80
	ld   h, $80                                      ; $6665: $26 $80
	dec  bc                                          ; $6667: $0b
	add  b                                           ; $6668: $80
	ld   d, $80                                      ; $6669: $16 $80
	ld   d, l                                        ; $666b: $55
	add  b                                           ; $666c: $80
	xor  e                                           ; $666d: $ab
	add  b                                           ; $666e: $80
	dec  b                                           ; $666f: $05
	adc  b                                           ; $6670: $88
	nop                                              ; $6671: $00
	add  b                                           ; $6672: $80
	dec  b                                           ; $6673: $05
	add  b                                           ; $6674: $80
	nop                                              ; $6675: $00
	add  b                                           ; $6676: $80

jr_09f_6677:
	ld   d, l                                        ; $6677: $55
	add  b                                           ; $6678: $80
	xor  d                                           ; $6679: $aa
	add  b                                           ; $667a: $80
	ld   a, a                                        ; $667b: $7f
	add  b                                           ; $667c: $80
	cp   [hl]                                        ; $667d: $be
	add  b                                           ; $667e: $80
	rst  $30                                         ; $667f: $f7
	add  b                                           ; $6680: $80
	xor  $80                                         ; $6681: $ee $80
	ld   e, c                                        ; $6683: $59
	add  b                                           ; $6684: $80
	ld   [$5580], a                                  ; $6685: $ea $80 $55
	adc  b                                           ; $6688: $88
	nop                                              ; $6689: $00
	add  b                                           ; $668a: $80
	ld   b, b                                        ; $668b: $40
	add  b                                           ; $668c: $80
	ld   a, [bc]                                     ; $668d: $0a
	add  b                                           ; $668e: $80
	ld   d, b                                        ; $668f: $50
	add  b                                           ; $6690: $80
	and  d                                           ; $6691: $a2
	add  b                                           ; $6692: $80
	push de                                          ; $6693: $d5
	add  b                                           ; $6694: $80
	and  d                                           ; $6695: $a2
	add  b                                           ; $6696: $80
	ld   d, l                                        ; $6697: $55
	add  b                                           ; $6698: $80
	adc  b                                           ; $6699: $88
	add  b                                           ; $669a: $80
	ld   d, l                                        ; $669b: $55
	add  b                                           ; $669c: $80
	ld   [bc], a                                     ; $669d: $02
	add  b                                           ; $669e: $80
	ld   b, b                                        ; $669f: $40
	adc  [hl]                                        ; $66a0: $8e

jr_09f_66a1:
	nop                                              ; $66a1: $00
	add  b                                           ; $66a2: $80
	and  b                                           ; $66a3: $a0
	add  b                                           ; $66a4: $80
	ld   d, h                                        ; $66a5: $54
	add  b                                           ; $66a6: $80
	and  d                                           ; $66a7: $a2
	add  b                                           ; $66a8: $80
	ld   d, b                                        ; $66a9: $50
	add  b                                           ; $66aa: $80
	and  d                                           ; $66ab: $a2
	add  b                                           ; $66ac: $80
	ld   b, b                                        ; $66ad: $40
	sbc  h                                           ; $66ae: $9c
	nop                                              ; $66af: $00
	add  b                                           ; $66b0: $80
	ld   bc, $0a80                                   ; $66b1: $01 $80 $0a
	sub  d                                           ; $66b4: $92
	nop                                              ; $66b5: $00
	add  b                                           ; $66b6: $80
	ld   bc, $0080                                   ; $66b7: $01 $80 $00
	add  b                                           ; $66ba: $80
	dec  b                                           ; $66bb: $05
	add  b                                           ; $66bc: $80
	ld   a, [hl+]                                    ; $66bd: $2a
	add  b                                           ; $66be: $80
	ld   d, l                                        ; $66bf: $55
	add  b                                           ; $66c0: $80
	xor  e                                           ; $66c1: $ab
	add  b                                           ; $66c2: $80
	dec  b                                           ; $66c3: $05
	adc  d                                           ; $66c4: $8a
	nop                                              ; $66c5: $00
	add  b                                           ; $66c6: $80
	ld   a, [bc]                                     ; $66c7: $0a
	add  b                                           ; $66c8: $80
	ld   bc, $2a80                                   ; $66c9: $01 $80 $2a
	add  b                                           ; $66cc: $80
	ld   a, l                                        ; $66cd: $7d
	add  b                                           ; $66ce: $80
	xor  d                                           ; $66cf: $aa
	add  b                                           ; $66d0: $80
	rst  $10                                         ; $66d1: $d7
	add  b                                           ; $66d2: $80
	xor  $80                                         ; $66d3: $ee $80
	ld   e, c                                        ; $66d5: $59
	add  b                                           ; $66d6: $80
	ld   [$5580], a                                  ; $66d7: $ea $80 $55
	adc  b                                           ; $66da: $88
	nop                                              ; $66db: $00
	add  b                                           ; $66dc: $80
	ld   d, h                                        ; $66dd: $54
	add  b                                           ; $66de: $80
	nop                                              ; $66df: $00
	add  b                                           ; $66e0: $80
	ld   d, l                                        ; $66e1: $55
	add  b                                           ; $66e2: $80
	xor  d                                           ; $66e3: $aa
	add  b                                           ; $66e4: $80
	push af                                          ; $66e5: $f5
	add  b                                           ; $66e6: $80
	ei                                               ; $66e7: $fb
	add  b                                           ; $66e8: $80
	ld   [hl], a                                     ; $66e9: $77
	add  b                                           ; $66ea: $80
	cp   d                                           ; $66eb: $ba
	add  b                                           ; $66ec: $80
	push af                                          ; $66ed: $f5
	add  b                                           ; $66ee: $80
	xor  d                                           ; $66ef: $aa
	add  b                                           ; $66f0: $80
	ld   b, b                                        ; $66f1: $40
	adc  d                                           ; $66f2: $8a
	nop                                              ; $66f3: $00
	add  b                                           ; $66f4: $80
	jr   z, jr_09f_6677                              ; $66f5: $28 $80

	inc  b                                           ; $66f7: $04
	add  b                                           ; $66f8: $80
	xor  d                                           ; $66f9: $aa
	add  b                                           ; $66fa: $80
	ld   d, l                                        ; $66fb: $55
	add  b                                           ; $66fc: $80
	ld   [$f580], a                                  ; $66fd: $ea $80 $f5
	add  b                                           ; $6700: $80
	add  sp, -$80                                    ; $6701: $e8 $80
	ld   d, h                                        ; $6703: $54
	add  b                                           ; $6704: $80
	jr   nz, jr_09f_66a1                             ; $6705: $20 $9a

	nop                                              ; $6707: $00
	add  b                                           ; $6708: $80
	ld   bc, $0a80                                   ; $6709: $01 $80 $0a
	sub  h                                           ; $670c: $94
	nop                                              ; $670d: $00
	add  b                                           ; $670e: $80
	inc  b                                           ; $670f: $04
	add  b                                           ; $6710: $80
	rrca                                             ; $6711: $0f
	add  b                                           ; $6712: $80
	ld   [hl], $80                                   ; $6713: $36 $80
	ld   d, l                                        ; $6715: $55
	add  b                                           ; $6716: $80
	xor  e                                           ; $6717: $ab
	add  b                                           ; $6718: $80
	dec  b                                           ; $6719: $05
	adc  d                                           ; $671a: $8a
	nop                                              ; $671b: $00
	add  b                                           ; $671c: $80
	ld   a, [bc]                                     ; $671d: $0a
	add  b                                           ; $671e: $80
	nop                                              ; $671f: $00
	add  b                                           ; $6720: $80
	ld   a, [hl+]                                    ; $6721: $2a
	add  b                                           ; $6722: $80
	ld   [hl], a                                     ; $6723: $77
	add  b                                           ; $6724: $80
	xor  d                                           ; $6725: $aa
	add  b                                           ; $6726: $80
	rst  $30                                         ; $6727: $f7
	add  b                                           ; $6728: $80
	xor  $80                                         ; $6729: $ee $80
	ld   e, c                                        ; $672b: $59
	add  b                                           ; $672c: $80
	ld   [$5580], a                                  ; $672d: $ea $80 $55
	add  [hl]                                        ; $6730: $86
	nop                                              ; $6731: $00
	add  b                                           ; $6732: $80
	xor  d                                           ; $6733: $aa
	add  b                                           ; $6734: $80
	nop                                              ; $6735: $00
	add  b                                           ; $6736: $80

jr_09f_6737:
	ld   [hl+], a                                    ; $6737: $22
	add  b                                           ; $6738: $80
	ld   d, h                                        ; $6739: $54
	add  b                                           ; $673a: $80
	xor  d                                           ; $673b: $aa
	add  b                                           ; $673c: $80
	db   $ed                                         ; $673d: $ed
	add  b                                           ; $673e: $80
	xor  d                                           ; $673f: $aa
	add  b                                           ; $6740: $80
	push de                                          ; $6741: $d5
	add  b                                           ; $6742: $80
	ldh  [$80], a                                    ; $6743: $e0 $80
	ld   d, h                                        ; $6745: $54
	add  b                                           ; $6746: $80
	ld   a, [hl+]                                    ; $6747: $2a
	add  b                                           ; $6748: $80
	ld   b, b                                        ; $6749: $40
	add  [hl]                                        ; $674a: $86
	nop                                              ; $674b: $00
	add  b                                           ; $674c: $80
	add  b                                           ; $674d: $80
	add  b                                           ; $674e: $80
	nop                                              ; $674f: $00
	add  b                                           ; $6750: $80
	xor  b                                           ; $6751: $a8
	add  b                                           ; $6752: $80
	nop                                              ; $6753: $00
	add  b                                           ; $6754: $80
	and  d                                           ; $6755: $a2

Jump_09f_6756:
	add  b                                           ; $6756: $80
	ld   d, b                                        ; $6757: $50
	add  b                                           ; $6758: $80
	add  b                                           ; $6759: $80
	add  b                                           ; $675a: $80
	nop                                              ; $675b: $00
	add  b                                           ; $675c: $80
	and  b                                           ; $675d: $a0
	add  b                                           ; $675e: $80
	ld   b, b                                        ; $675f: $40
	sbc  h                                           ; $6760: $9c
	nop                                              ; $6761: $00
	add  b                                           ; $6762: $80
	dec  b                                           ; $6763: $05
	sbc  h                                           ; $6764: $9c
	nop                                              ; $6765: $00
	add  b                                           ; $6766: $80
	ld   d, l                                        ; $6767: $55
	add  b                                           ; $6768: $80
	xor  d                                           ; $6769: $aa
	sub  [hl]                                        ; $676a: $96
	nop                                              ; $676b: $00
	add  b                                           ; $676c: $80
	dec  d                                           ; $676d: $15
	add  b                                           ; $676e: $80
	cp   a                                           ; $676f: $bf
	add  b                                           ; $6770: $80
	ld   a, a                                        ; $6771: $7f
	add  b                                           ; $6772: $80
	xor  d                                           ; $6773: $aa
	sub  d                                           ; $6774: $92
	nop                                              ; $6775: $00
	add  b                                           ; $6776: $80
	inc  b                                           ; $6777: $04
	add  b                                           ; $6778: $80
	cp   d                                           ; $6779: $ba
	add  b                                           ; $677a: $80
	ld   [hl], l                                     ; $677b: $75
	add  b                                           ; $677c: $80
	rst  $38                                         ; $677d: $ff
	add  b                                           ; $677e: $80
	push de                                          ; $677f: $d5
	add  b                                           ; $6780: $80
	xor  d                                           ; $6781: $aa
	sub  h                                           ; $6782: $94
	nop                                              ; $6783: $00
	add  b                                           ; $6784: $80
	and  b                                           ; $6785: $a0
	add  b                                           ; $6786: $80
	ld   b, l                                        ; $6787: $45
	add  b                                           ; $6788: $80
	add  sp, -$80                                    ; $6789: $e8 $80
	ld   d, b                                        ; $678b: $50
	add  b                                           ; $678c: $80
	xor  b                                           ; $678d: $a8
	sbc  d                                           ; $678e: $9a
	nop                                              ; $678f: $00
	add  b                                           ; $6790: $80
	dec  b                                           ; $6791: $05
	sbc  h                                           ; $6792: $9c
	nop                                              ; $6793: $00
	add  b                                           ; $6794: $80
	ld   d, l                                        ; $6795: $55
	add  b                                           ; $6796: $80
	xor  d                                           ; $6797: $aa
	sub  [hl]                                        ; $6798: $96
	nop                                              ; $6799: $00
	add  b                                           ; $679a: $80
	dec  d                                           ; $679b: $15
	add  b                                           ; $679c: $80
	cp   a                                           ; $679d: $bf
	add  b                                           ; $679e: $80
	rst  $10                                         ; $679f: $d7
	add  b                                           ; $67a0: $80
	cp   d                                           ; $67a1: $ba
	sub  d                                           ; $67a2: $92
	nop                                              ; $67a3: $00
	add  b                                           ; $67a4: $80
	inc  b                                           ; $67a5: $04
	add  b                                           ; $67a6: $80
	cp   d                                           ; $67a7: $ba
	add  b                                           ; $67a8: $80
	ld   d, l                                        ; $67a9: $55
	add  b                                           ; $67aa: $80
	ld   a, [$fd80]                                  ; $67ab: $fa $80 $fd
	add  b                                           ; $67ae: $80
	cp   $80                                         ; $67af: $fe $80
	ld   d, h                                        ; $67b1: $54
	adc  [hl]                                        ; $67b2: $8e
	nop                                              ; $67b3: $00
	add  b                                           ; $67b4: $80
	jr   z, jr_09f_6737                              ; $67b5: $28 $80

	nop                                              ; $67b7: $00
	add  b                                           ; $67b8: $80
	adc  b                                           ; $67b9: $88
	add  b                                           ; $67ba: $80
	ld   d, l                                        ; $67bb: $55
	add  b                                           ; $67bc: $80
	xor  d                                           ; $67bd: $aa
	add  b                                           ; $67be: $80
	ld   d, l                                        ; $67bf: $55
	add  b                                           ; $67c0: $80
	xor  b                                           ; $67c1: $a8
	sbc  d                                           ; $67c2: $9a
	nop                                              ; $67c3: $00
	add  b                                           ; $67c4: $80
	dec  b                                           ; $67c5: $05
	sbc  h                                           ; $67c6: $9c
	nop                                              ; $67c7: $00
	add  b                                           ; $67c8: $80
	ld   d, l                                        ; $67c9: $55
	add  b                                           ; $67ca: $80
	xor  d                                           ; $67cb: $aa
	sub  [hl]                                        ; $67cc: $96
	nop                                              ; $67cd: $00
	add  b                                           ; $67ce: $80
	dec  b                                           ; $67cf: $05
	add  b                                           ; $67d0: $80
	jp   c, Jump_09f_5f80                            ; $67d1: $da $80 $5f

	add  b                                           ; $67d4: $80
	xor  d                                           ; $67d5: $aa
	sub  h                                           ; $67d6: $94
	nop                                              ; $67d7: $00
	add  b                                           ; $67d8: $80

jr_09f_67d9:
	ld   [bc], a                                     ; $67d9: $02
	add  b                                           ; $67da: $80
	ld   d, l                                        ; $67db: $55
	add  b                                           ; $67dc: $80
	xor  e                                           ; $67dd: $ab
	add  b                                           ; $67de: $80
	rst  $38                                         ; $67df: $ff
	add  b                                           ; $67e0: $80
	xor  d                                           ; $67e1: $aa
	add  b                                           ; $67e2: $80
	ld   d, h                                        ; $67e3: $54
	sub  d                                           ; $67e4: $92
	nop                                              ; $67e5: $00
	add  b                                           ; $67e6: $80
	xor  b                                           ; $67e7: $a8
	add  b                                           ; $67e8: $80
	call nc, $0880                                   ; $67e9: $d4 $80 $08
	add  b                                           ; $67ec: $80
	ld   d, h                                        ; $67ed: $54
	add  b                                           ; $67ee: $80
	xor  d                                           ; $67ef: $aa
	sub  h                                           ; $67f0: $94
	nop                                              ; $67f1: $00
	ld   [bc], a                                     ; $67f2: $02
	rrca                                             ; $67f3: $0f
	nop                                              ; $67f4: $00
	db   $10                                         ; $67f5: $10
	add  b                                           ; $67f6: $80
	rlca                                             ; $67f7: $07
	rlca                                             ; $67f8: $07
	rrca                                             ; $67f9: $0f
	inc  l                                           ; $67fa: $2c
	rrca                                             ; $67fb: $0f
	inc  c                                           ; $67fc: $0c
	rlca                                             ; $67fd: $07
	ld   b, a                                        ; $67fe: $47
	inc  bc                                          ; $67ff: $03
	ld   a, h                                        ; $6800: $7c
	sub  c                                           ; $6801: $91
	nop                                              ; $6802: $00
	ld   [bc], a                                     ; $6803: $02
	ld   [hl], b                                     ; $6804: $70
	nop                                              ; $6805: $00
	adc  b                                           ; $6806: $88
	add  b                                           ; $6807: $80
	ld   [hl], b                                     ; $6808: $70
	rlca                                             ; $6809: $07
	ld   hl, sp-$0c                                  ; $680a: $f8 $f4
	ld   hl, sp+$02                                  ; $680c: $f8 $02
	db   $fc                                         ; $680e: $fc
	ld   l, [hl]                                     ; $680f: $6e
	ld   hl, sp+$64                                  ; $6810: $f8 $64
	add  [hl]                                        ; $6812: $86

jr_09f_6813:
	nop                                              ; $6813: $00
	add  b                                           ; $6814: $80
	inc  bc                                          ; $6815: $03
	add  b                                           ; $6816: $80
	ld   bc, $0003                                   ; $6817: $01 $03 $00
	rlca                                             ; $681a: $07
	inc  b                                           ; $681b: $04
	inc  c                                           ; $681c: $0c
	add  l                                           ; $681d: $85
	rrca                                             ; $681e: $0f
	add  b                                           ; $681f: $80
	rlca                                             ; $6820: $07
	add  c                                           ; $6821: $81
	inc  bc                                          ; $6822: $03
	ld   bc, $0201                                   ; $6823: $01 $01 $02
	adc  b                                           ; $6826: $88
	nop                                              ; $6827: $00
	add  b                                           ; $6828: $80
	cp   $00                                         ; $6829: $fe $00
	db   $fc                                         ; $682b: $fc
	add  b                                           ; $682c: $80
	ld   sp, hl                                      ; $682d: $f9
	ld   [de], a                                     ; $682e: $12
	ld   [hl], a                                     ; $682f: $77
	ld   a, e                                        ; $6830: $7b
	daa                                              ; $6831: $27
	rla                                              ; $6832: $17
	dec  sp                                          ; $6833: $3b
	db   $db                                         ; $6834: $db
	ld   a, l                                        ; $6835: $7d
	ld   e, l                                        ; $6836: $5d
	db   $eb                                         ; $6837: $eb
	set  6, l                                        ; $6838: $cb $f5
	sub  l                                           ; $683a: $95
	ld   [$348a], a                                  ; $683b: $ea $8a $34
	inc  d                                           ; $683e: $14
	xor  d                                           ; $683f: $aa
	ld   a, [bc]                                     ; $6840: $0a
	and  b                                           ; $6841: $a0
	add  l                                           ; $6842: $85
	nop                                              ; $6843: $00
	rlca                                             ; $6844: $07
	stop                                             ; $6845: $10 $00
	xor  e                                           ; $6847: $ab
	ld   a, [bc]                                     ; $6848: $0a
	and  $50                                         ; $6849: $e6 $50
	xor  b                                           ; $684b: $a8
	xor  a                                           ; $684c: $af
	add  d                                           ; $684d: $82
	rst  $38                                         ; $684e: $ff
	dec  b                                           ; $684f: $05
	ld   d, a                                        ; $6850: $57
	ld   b, e                                        ; $6851: $43
	db   $fd                                         ; $6852: $fd
	adc  b                                           ; $6853: $88
	ld   [hl], c                                     ; $6854: $71
	db   $10                                         ; $6855: $10
	add  b                                           ; $6856: $80
	jr   z, jr_09f_67d9                              ; $6857: $28 $80

	ld   d, b                                        ; $6859: $50
	add  b                                           ; $685a: $80
	and  b                                           ; $685b: $a0
	adc  h                                           ; $685c: $8c
	nop                                              ; $685d: $00
	add  b                                           ; $685e: $80
	add  b                                           ; $685f: $80
	add  b                                           ; $6860: $80
	db   $f4                                         ; $6861: $f4
	add  b                                           ; $6862: $80

jr_09f_6863:
	ld   a, [$fc80]                                  ; $6863: $fa $80 $fc
	add  b                                           ; $6866: $80
	ld   a, [$3c04]                                  ; $6867: $fa $04 $3c
	inc  e                                           ; $686a: $1c
	jr   z, jr_09f_686d                              ; $686b: $28 $00

jr_09f_686d:
	ld   [$0081], sp                                 ; $686d: $08 $81 $00
	ld   [$155d], sp                                 ; $6870: $08 $5d $15
	and  d                                           ; $6873: $a2
	adc  d                                           ; $6874: $8a
	dec  e                                           ; $6875: $1d
	ld   c, l                                        ; $6876: $4d
	rrca                                             ; $6877: $0f
	dec  hl                                          ; $6878: $2b
	dec  bc                                          ; $6879: $0b
	add  b                                           ; $687a: $80
	dec  d                                           ; $687b: $15
	add  b                                           ; $687c: $80
	dec  bc                                          ; $687d: $0b
	add  b                                           ; $687e: $80
	dec  d                                           ; $687f: $15
	ld   c, $0b                                      ; $6880: $0e $0b
	rrca                                             ; $6882: $0f
	dec  de                                          ; $6883: $1b
	cpl                                              ; $6884: $2f
	dec  bc                                          ; $6885: $0b
	ld   a, c                                        ; $6886: $79
	ld   e, l                                        ; $6887: $5d
	cp   $be                                         ; $6888: $fe $be
	sub  l                                           ; $688a: $95
	push de                                          ; $688b: $d5
	xor  b                                           ; $688c: $a8
	jr   z, jr_09f_6863                              ; $688d: $28 $d4

	ld   d, h                                        ; $688f: $54
	add  b                                           ; $6890: $80
	jr   z, jr_09f_6813                              ; $6891: $28 $80

	ld   d, b                                        ; $6893: $50
	add  b                                           ; $6894: $80
	and  b                                           ; $6895: $a0
	add  b                                           ; $6896: $80
	ldh  a, [$80]                                    ; $6897: $f0 $80
	and  b                                           ; $6899: $a0
	nop                                              ; $689a: $00
	ldh  a, [$81]                                    ; $689b: $f0 $81
	ldh  [rSB], a                                    ; $689d: $e0 $01

jr_09f_689f:
	ld   h, b                                        ; $689f: $60
	ld   [hl], b                                     ; $68a0: $70
	add  c                                           ; $68a1: $81
	ld   hl, sp+$02                                  ; $68a2: $f8 $02
	ldh  a, [$f4]                                    ; $68a4: $f0 $f4
	db   $fc                                         ; $68a6: $fc
	add  b                                           ; $68a7: $80
	db   $f4                                         ; $68a8: $f4
	add  b                                           ; $68a9: $80
	xor  h                                           ; $68aa: $ac
	add  b                                           ; $68ab: $80
	ld   e, $80                                      ; $68ac: $1e $80
	ld   a, [hl+]                                    ; $68ae: $2a
	add  b                                           ; $68af: $80
	inc  d                                           ; $68b0: $14
	add  b                                           ; $68b1: $80
	ld   c, $8a                                      ; $68b2: $0e $8a
	nop                                              ; $68b4: $00
	add  b                                           ; $68b5: $80
	ld   bc, $0084                                   ; $68b6: $01 $84 $00
	add  b                                           ; $68b9: $80
	ld   bc, $0280                                   ; $68ba: $01 $80 $02
	add  b                                           ; $68bd: $80
	ld   bc, $0380                                   ; $68be: $01 $80 $03
	add  b                                           ; $68c1: $80
	ld   bc, $0384                                   ; $68c2: $01 $84 $03
	add  b                                           ; $68c5: $80
	rlca                                             ; $68c6: $07
	add  b                                           ; $68c7: $80
	ld   [bc], a                                     ; $68c8: $02
	add  b                                           ; $68c9: $80
	dec  b                                           ; $68ca: $05
	add  b                                           ; $68cb: $80
	ld   [bc], a                                     ; $68cc: $02
	add  b                                           ; $68cd: $80
	dec  b                                           ; $68ce: $05
	add  b                                           ; $68cf: $80
	rlca                                             ; $68d0: $07
	add  b                                           ; $68d1: $80
	dec  b                                           ; $68d2: $05
	add  b                                           ; $68d3: $80
	inc  bc                                          ; $68d4: $03
	add  d                                           ; $68d5: $82
	rlca                                             ; $68d6: $07
	nop                                              ; $68d7: $00
	rrca                                             ; $68d8: $0f
	add  c                                           ; $68d9: $81
	rlca                                             ; $68da: $07
	nop                                              ; $68db: $00
	rla                                              ; $68dc: $17
	add  c                                           ; $68dd: $81
	rrca                                             ; $68de: $0f
	ld   bc, $0010                                   ; $68df: $01 $10 $00
	add  b                                           ; $68e2: $80
	ld   a, [bc]                                     ; $68e3: $0a
	add  b                                           ; $68e4: $80
	ld   l, h                                        ; $68e5: $6c
	inc  d                                           ; $68e6: $14
	xor  $e6                                         ; $68e7: $ee $e6
	ld   [hl], l                                     ; $68e9: $75
	add  hl, hl                                      ; $68ea: $29
	xor  d                                           ; $68eb: $aa
	ld   d, h                                        ; $68ec: $54
	push de                                          ; $68ed: $d5
	ld   l, e                                        ; $68ee: $6b
	db   $eb                                         ; $68ef: $eb
	push de                                          ; $68f0: $d5
	sub  c                                           ; $68f1: $91
	xor  c                                           ; $68f2: $a9
	jp   hl                                          ; $68f3: $e9


	pop  de                                          ; $68f4: $d1
	ld   d, e                                        ; $68f5: $53
	ld   l, c                                        ; $68f6: $69
	db   $eb                                         ; $68f7: $eb
	pop  af                                          ; $68f8: $f1
	ld   [hl], e                                     ; $68f9: $73
	ld   [hl], c                                     ; $68fa: $71
	ld   hl, sp-$7f                                  ; $68fb: $f8 $81
	ldh  [$80], a                                    ; $68fd: $e0 $80
	pop  hl                                          ; $68ff: $e1
	ld   bc, $1404                                   ; $6900: $01 $04 $14
	add  b                                           ; $6903: $80
	ld   a, [bc]                                     ; $6904: $0a
	add  b                                           ; $6905: $80
	inc  b                                           ; $6906: $04
	add  b                                           ; $6907: $80
	add  b                                           ; $6908: $80
	add  b                                           ; $6909: $80
	ld   b, b                                        ; $690a: $40
	add  b                                           ; $690b: $80
	xor  b                                           ; $690c: $a8
	add  b                                           ; $690d: $80
	ld   d, h                                        ; $690e: $54
	add  b                                           ; $690f: $80
	xor  b                                           ; $6910: $a8
	add  b                                           ; $6911: $80
	ld   d, h                                        ; $6912: $54
	add  b                                           ; $6913: $80
	cp   h                                           ; $6914: $bc
	add  b                                           ; $6915: $80
	ld   d, h                                        ; $6916: $54
	add  b                                           ; $6917: $80
	cp   b                                           ; $6918: $b8
	ld   bc, $f8fc                                   ; $6919: $01 $fc $f8
	add  b                                           ; $691c: $80
	jr   c, jr_09f_689f                              ; $691d: $38 $80

	ld   [hl], b                                     ; $691f: $70
	inc  bc                                          ; $6920: $03
	db   $fc                                         ; $6921: $fc
	ld   hl, sp-$1d                                  ; $6922: $f8 $e3
	pop  bc                                          ; $6924: $c1
	add  b                                           ; $6925: $80
	ret  nz                                          ; $6926: $c0

	inc  bc                                          ; $6927: $03
	db   $e3                                         ; $6928: $e3
	pop  bc                                          ; $6929: $c1
	jp   nz, $8080                                   ; $692a: $c2 $80 $80

	add  c                                           ; $692d: $81
	nop                                              ; $692e: $00
	add  l                                           ; $692f: $85
	add  b                                           ; $6930: $80
	add  a                                           ; $6931: $87
	add  b                                           ; $6932: $80
	jp   $c700                                       ; $6933: $c3 $00 $c7


	adc  [hl]                                        ; $6936: $8e
	nop                                              ; $6937: $00
	add  b                                           ; $6938: $80
	ld   d, h                                        ; $6939: $54
	ld   [$a0a8], sp                                 ; $693a: $08 $a8 $a0
	ld   e, b                                        ; $693d: $58
	db   $10                                         ; $693e: $10
	add  sp, $20                                     ; $693f: $e8 $20
	ret  c                                           ; $6941: $d8

	ld   d, b                                        ; $6942: $50
	ldh  a, [$83]                                    ; $6943: $f0 $83
	ldh  [rP1], a                                    ; $6945: $e0 $00
	db   $10                                         ; $6947: $10
	and  a                                           ; $6948: $a7
	nop                                              ; $6949: $00
	ld   [bc], a                                     ; $694a: $02
	ld   a, d                                        ; $694b: $7a
	inc  a                                           ; $694c: $3c
	inc  [hl]                                        ; $694d: $34
	add  c                                           ; $694e: $81
	inc  a                                           ; $694f: $3c
	nop                                              ; $6950: $00
	ld   c, [hl]                                     ; $6951: $4e
	sub  a                                           ; $6952: $97
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	cpl                                              ; $6955: $2f
	add  e                                           ; $6956: $83
	ld   e, $00                                      ; $6957: $1e $00
	ld   sp, $00ff                                   ; $6959: $31 $ff $00
	rst  $38                                         ; $695c: $ff
	nop                                              ; $695d: $00
	rst  $38                                         ; $695e: $ff
	nop                                              ; $695f: $00
	rst  $38                                         ; $6960: $ff
	nop                                              ; $6961: $00
	cp   c                                           ; $6962: $b9
	nop                                              ; $6963: $00
	ld   [hl], $01                                   ; $6964: $36 $01
	sbc  b                                           ; $6966: $98
	nop                                              ; $6967: $00
	add  b                                           ; $6968: $80
	ld   bc, $0a80                                   ; $6969: $01 $80 $0a
	adc  [hl]                                        ; $696c: $8e
	nop                                              ; $696d: $00
	add  b                                           ; $696e: $80
	ld   bc, $0a80                                   ; $696f: $01 $80 $0a
	add  b                                           ; $6972: $80
	dec  d                                           ; $6973: $15
	add  b                                           ; $6974: $80
	ld   h, $80                                      ; $6975: $26 $80
	dec  bc                                          ; $6977: $0b
	add  b                                           ; $6978: $80
	ld   d, $80                                      ; $6979: $16 $80
	ld   d, l                                        ; $697b: $55
	add  b                                           ; $697c: $80
	xor  e                                           ; $697d: $ab
	add  b                                           ; $697e: $80
	dec  b                                           ; $697f: $05
	adc  b                                           ; $6980: $88
	nop                                              ; $6981: $00
	add  b                                           ; $6982: $80
	dec  b                                           ; $6983: $05
	add  b                                           ; $6984: $80
	nop                                              ; $6985: $00
	add  b                                           ; $6986: $80

jr_09f_6987:
	ld   d, l                                        ; $6987: $55
	add  b                                           ; $6988: $80
	xor  d                                           ; $6989: $aa
	add  b                                           ; $698a: $80
	ld   a, a                                        ; $698b: $7f
	add  b                                           ; $698c: $80
	cp   [hl]                                        ; $698d: $be
	add  b                                           ; $698e: $80
	rst  $30                                         ; $698f: $f7
	add  b                                           ; $6990: $80
	xor  $80                                         ; $6991: $ee $80
	ld   e, c                                        ; $6993: $59
	add  b                                           ; $6994: $80
	ld   [$5580], a                                  ; $6995: $ea $80 $55
	adc  b                                           ; $6998: $88
	nop                                              ; $6999: $00
	add  b                                           ; $699a: $80
	ld   b, b                                        ; $699b: $40
	add  b                                           ; $699c: $80
	ld   a, [bc]                                     ; $699d: $0a
	add  b                                           ; $699e: $80
	ld   d, b                                        ; $699f: $50
	add  b                                           ; $69a0: $80
	and  d                                           ; $69a1: $a2
	add  b                                           ; $69a2: $80
	push de                                          ; $69a3: $d5
	add  b                                           ; $69a4: $80
	and  d                                           ; $69a5: $a2
	add  b                                           ; $69a6: $80
	ld   d, l                                        ; $69a7: $55
	add  b                                           ; $69a8: $80
	adc  b                                           ; $69a9: $88
	add  b                                           ; $69aa: $80
	ld   d, l                                        ; $69ab: $55
	add  b                                           ; $69ac: $80
	ld   [bc], a                                     ; $69ad: $02
	add  b                                           ; $69ae: $80
	ld   b, b                                        ; $69af: $40
	adc  [hl]                                        ; $69b0: $8e

jr_09f_69b1:
	nop                                              ; $69b1: $00
	add  b                                           ; $69b2: $80
	and  b                                           ; $69b3: $a0
	add  b                                           ; $69b4: $80
	ld   d, h                                        ; $69b5: $54
	add  b                                           ; $69b6: $80
	and  d                                           ; $69b7: $a2
	add  b                                           ; $69b8: $80
	ld   d, b                                        ; $69b9: $50
	add  b                                           ; $69ba: $80
	and  d                                           ; $69bb: $a2
	add  b                                           ; $69bc: $80
	ld   b, b                                        ; $69bd: $40
	sbc  h                                           ; $69be: $9c
	nop                                              ; $69bf: $00
	add  b                                           ; $69c0: $80
	ld   bc, $0a80                                   ; $69c1: $01 $80 $0a
	sub  d                                           ; $69c4: $92
	nop                                              ; $69c5: $00
	add  b                                           ; $69c6: $80
	ld   bc, $0080                                   ; $69c7: $01 $80 $00
	add  b                                           ; $69ca: $80
	dec  b                                           ; $69cb: $05
	add  b                                           ; $69cc: $80
	ld   a, [hl+]                                    ; $69cd: $2a
	add  b                                           ; $69ce: $80
	ld   d, l                                        ; $69cf: $55
	add  b                                           ; $69d0: $80
	xor  e                                           ; $69d1: $ab
	add  b                                           ; $69d2: $80
	dec  b                                           ; $69d3: $05
	adc  d                                           ; $69d4: $8a
	nop                                              ; $69d5: $00
	add  b                                           ; $69d6: $80
	ld   a, [bc]                                     ; $69d7: $0a
	add  b                                           ; $69d8: $80
	ld   bc, $2a80                                   ; $69d9: $01 $80 $2a
	add  b                                           ; $69dc: $80
	ld   a, l                                        ; $69dd: $7d
	add  b                                           ; $69de: $80
	xor  d                                           ; $69df: $aa
	add  b                                           ; $69e0: $80
	rst  $10                                         ; $69e1: $d7
	add  b                                           ; $69e2: $80
	xor  $80                                         ; $69e3: $ee $80
	ld   e, c                                        ; $69e5: $59
	add  b                                           ; $69e6: $80
	ld   [$5580], a                                  ; $69e7: $ea $80 $55
	adc  b                                           ; $69ea: $88
	nop                                              ; $69eb: $00
	add  b                                           ; $69ec: $80
	ld   d, h                                        ; $69ed: $54
	add  b                                           ; $69ee: $80
	nop                                              ; $69ef: $00
	add  b                                           ; $69f0: $80
	ld   d, l                                        ; $69f1: $55
	add  b                                           ; $69f2: $80
	xor  d                                           ; $69f3: $aa
	add  b                                           ; $69f4: $80
	push af                                          ; $69f5: $f5
	add  b                                           ; $69f6: $80
	ei                                               ; $69f7: $fb
	add  b                                           ; $69f8: $80
	ld   [hl], a                                     ; $69f9: $77
	add  b                                           ; $69fa: $80
	cp   d                                           ; $69fb: $ba
	add  b                                           ; $69fc: $80
	push af                                          ; $69fd: $f5
	add  b                                           ; $69fe: $80
	xor  d                                           ; $69ff: $aa
	add  b                                           ; $6a00: $80
	ld   b, b                                        ; $6a01: $40
	adc  d                                           ; $6a02: $8a
	nop                                              ; $6a03: $00
	add  b                                           ; $6a04: $80
	jr   z, jr_09f_6987                              ; $6a05: $28 $80

	inc  b                                           ; $6a07: $04
	add  b                                           ; $6a08: $80
	xor  d                                           ; $6a09: $aa
	add  b                                           ; $6a0a: $80
	ld   d, l                                        ; $6a0b: $55
	add  b                                           ; $6a0c: $80
	ld   [$f580], a                                  ; $6a0d: $ea $80 $f5
	add  b                                           ; $6a10: $80
	add  sp, -$80                                    ; $6a11: $e8 $80
	ld   d, h                                        ; $6a13: $54
	add  b                                           ; $6a14: $80
	jr   nz, jr_09f_69b1                             ; $6a15: $20 $9a

	nop                                              ; $6a17: $00
	add  b                                           ; $6a18: $80
	ld   bc, $0a80                                   ; $6a19: $01 $80 $0a
	sub  h                                           ; $6a1c: $94
	nop                                              ; $6a1d: $00
	add  b                                           ; $6a1e: $80
	inc  b                                           ; $6a1f: $04
	add  b                                           ; $6a20: $80
	rrca                                             ; $6a21: $0f
	add  b                                           ; $6a22: $80
	ld   [hl], $80                                   ; $6a23: $36 $80
	ld   d, l                                        ; $6a25: $55
	add  b                                           ; $6a26: $80
	xor  e                                           ; $6a27: $ab
	add  b                                           ; $6a28: $80
	dec  b                                           ; $6a29: $05
	adc  d                                           ; $6a2a: $8a
	nop                                              ; $6a2b: $00
	add  b                                           ; $6a2c: $80
	ld   a, [bc]                                     ; $6a2d: $0a
	add  b                                           ; $6a2e: $80
	nop                                              ; $6a2f: $00
	add  b                                           ; $6a30: $80
	ld   a, [hl+]                                    ; $6a31: $2a
	add  b                                           ; $6a32: $80
	ld   [hl], a                                     ; $6a33: $77
	add  b                                           ; $6a34: $80
	xor  d                                           ; $6a35: $aa
	add  b                                           ; $6a36: $80
	rst  $30                                         ; $6a37: $f7
	add  b                                           ; $6a38: $80
	xor  $80                                         ; $6a39: $ee $80
	ld   e, c                                        ; $6a3b: $59
	add  b                                           ; $6a3c: $80
	ld   [$5580], a                                  ; $6a3d: $ea $80 $55
	add  [hl]                                        ; $6a40: $86
	nop                                              ; $6a41: $00
	add  b                                           ; $6a42: $80
	xor  d                                           ; $6a43: $aa
	add  b                                           ; $6a44: $80
	nop                                              ; $6a45: $00
	add  b                                           ; $6a46: $80

jr_09f_6a47:
	ld   [hl+], a                                    ; $6a47: $22
	add  b                                           ; $6a48: $80
	ld   d, h                                        ; $6a49: $54
	add  b                                           ; $6a4a: $80
	xor  d                                           ; $6a4b: $aa
	add  b                                           ; $6a4c: $80
	db   $ed                                         ; $6a4d: $ed
	add  b                                           ; $6a4e: $80
	xor  d                                           ; $6a4f: $aa
	add  b                                           ; $6a50: $80
	push de                                          ; $6a51: $d5
	add  b                                           ; $6a52: $80
	ldh  [$80], a                                    ; $6a53: $e0 $80
	ld   d, h                                        ; $6a55: $54
	add  b                                           ; $6a56: $80
	ld   a, [hl+]                                    ; $6a57: $2a
	add  b                                           ; $6a58: $80
	ld   b, b                                        ; $6a59: $40
	add  [hl]                                        ; $6a5a: $86
	nop                                              ; $6a5b: $00
	add  b                                           ; $6a5c: $80
	add  b                                           ; $6a5d: $80
	add  b                                           ; $6a5e: $80
	nop                                              ; $6a5f: $00
	add  b                                           ; $6a60: $80
	xor  b                                           ; $6a61: $a8
	add  b                                           ; $6a62: $80
	nop                                              ; $6a63: $00
	add  b                                           ; $6a64: $80
	and  d                                           ; $6a65: $a2
	add  b                                           ; $6a66: $80
	ld   d, b                                        ; $6a67: $50
	add  b                                           ; $6a68: $80
	add  b                                           ; $6a69: $80
	add  b                                           ; $6a6a: $80
	nop                                              ; $6a6b: $00
	add  b                                           ; $6a6c: $80
	and  b                                           ; $6a6d: $a0
	add  b                                           ; $6a6e: $80
	ld   b, b                                        ; $6a6f: $40
	sbc  h                                           ; $6a70: $9c
	nop                                              ; $6a71: $00
	add  b                                           ; $6a72: $80
	dec  b                                           ; $6a73: $05
	sbc  h                                           ; $6a74: $9c
	nop                                              ; $6a75: $00
	add  b                                           ; $6a76: $80
	ld   d, l                                        ; $6a77: $55
	add  b                                           ; $6a78: $80
	xor  d                                           ; $6a79: $aa
	sub  [hl]                                        ; $6a7a: $96
	nop                                              ; $6a7b: $00
	add  b                                           ; $6a7c: $80
	dec  d                                           ; $6a7d: $15
	add  b                                           ; $6a7e: $80
	cp   a                                           ; $6a7f: $bf
	add  b                                           ; $6a80: $80
	ld   a, a                                        ; $6a81: $7f
	add  b                                           ; $6a82: $80
	xor  d                                           ; $6a83: $aa
	sub  d                                           ; $6a84: $92
	nop                                              ; $6a85: $00
	add  b                                           ; $6a86: $80
	inc  b                                           ; $6a87: $04
	add  b                                           ; $6a88: $80
	cp   d                                           ; $6a89: $ba
	add  b                                           ; $6a8a: $80
	ld   [hl], l                                     ; $6a8b: $75
	add  b                                           ; $6a8c: $80
	rst  $38                                         ; $6a8d: $ff
	add  b                                           ; $6a8e: $80
	push de                                          ; $6a8f: $d5
	add  b                                           ; $6a90: $80
	xor  d                                           ; $6a91: $aa
	sub  h                                           ; $6a92: $94
	nop                                              ; $6a93: $00
	add  b                                           ; $6a94: $80
	and  b                                           ; $6a95: $a0
	add  b                                           ; $6a96: $80
	ld   b, l                                        ; $6a97: $45
	add  b                                           ; $6a98: $80
	add  sp, -$80                                    ; $6a99: $e8 $80
	ld   d, b                                        ; $6a9b: $50
	add  b                                           ; $6a9c: $80
	xor  b                                           ; $6a9d: $a8
	sbc  d                                           ; $6a9e: $9a
	nop                                              ; $6a9f: $00
	add  b                                           ; $6aa0: $80
	dec  b                                           ; $6aa1: $05
	sbc  h                                           ; $6aa2: $9c
	nop                                              ; $6aa3: $00
	add  b                                           ; $6aa4: $80
	ld   d, l                                        ; $6aa5: $55
	add  b                                           ; $6aa6: $80
	xor  d                                           ; $6aa7: $aa
	sub  [hl]                                        ; $6aa8: $96
	nop                                              ; $6aa9: $00
	add  b                                           ; $6aaa: $80
	dec  d                                           ; $6aab: $15
	add  b                                           ; $6aac: $80
	cp   a                                           ; $6aad: $bf
	add  b                                           ; $6aae: $80
	rst  $10                                         ; $6aaf: $d7
	add  b                                           ; $6ab0: $80
	cp   d                                           ; $6ab1: $ba

jr_09f_6ab2:
	sub  d                                           ; $6ab2: $92
	nop                                              ; $6ab3: $00
	add  b                                           ; $6ab4: $80
	inc  b                                           ; $6ab5: $04
	add  b                                           ; $6ab6: $80
	cp   d                                           ; $6ab7: $ba
	add  b                                           ; $6ab8: $80
	ld   d, l                                        ; $6ab9: $55
	add  b                                           ; $6aba: $80
	ld   a, [$fd80]                                  ; $6abb: $fa $80 $fd
	add  b                                           ; $6abe: $80
	cp   $80                                         ; $6abf: $fe $80
	ld   d, h                                        ; $6ac1: $54
	adc  [hl]                                        ; $6ac2: $8e
	nop                                              ; $6ac3: $00
	add  b                                           ; $6ac4: $80
	jr   z, jr_09f_6a47                              ; $6ac5: $28 $80

	nop                                              ; $6ac7: $00
	add  b                                           ; $6ac8: $80
	adc  b                                           ; $6ac9: $88
	add  b                                           ; $6aca: $80
	ld   d, l                                        ; $6acb: $55
	add  b                                           ; $6acc: $80
	xor  d                                           ; $6acd: $aa
	add  b                                           ; $6ace: $80
	ld   d, l                                        ; $6acf: $55
	add  b                                           ; $6ad0: $80
	xor  b                                           ; $6ad1: $a8
	sbc  d                                           ; $6ad2: $9a
	nop                                              ; $6ad3: $00
	add  b                                           ; $6ad4: $80
	dec  b                                           ; $6ad5: $05
	sbc  h                                           ; $6ad6: $9c
	nop                                              ; $6ad7: $00
	add  b                                           ; $6ad8: $80
	ld   d, l                                        ; $6ad9: $55
	add  b                                           ; $6ada: $80
	xor  d                                           ; $6adb: $aa
	sub  [hl]                                        ; $6adc: $96
	nop                                              ; $6add: $00
	add  b                                           ; $6ade: $80
	dec  b                                           ; $6adf: $05
	add  b                                           ; $6ae0: $80
	jp   c, Jump_09f_5f80                            ; $6ae1: $da $80 $5f

	add  b                                           ; $6ae4: $80
	xor  d                                           ; $6ae5: $aa
	sub  h                                           ; $6ae6: $94
	nop                                              ; $6ae7: $00
	add  b                                           ; $6ae8: $80
	ld   [bc], a                                     ; $6ae9: $02
	add  b                                           ; $6aea: $80
	ld   d, l                                        ; $6aeb: $55
	add  b                                           ; $6aec: $80
	xor  e                                           ; $6aed: $ab
	add  b                                           ; $6aee: $80
	rst  $38                                         ; $6aef: $ff
	add  b                                           ; $6af0: $80
	xor  d                                           ; $6af1: $aa
	add  b                                           ; $6af2: $80
	ld   d, h                                        ; $6af3: $54
	sub  d                                           ; $6af4: $92
	nop                                              ; $6af5: $00
	add  b                                           ; $6af6: $80
	xor  b                                           ; $6af7: $a8
	add  b                                           ; $6af8: $80
	call nc, $0880                                   ; $6af9: $d4 $80 $08
	add  b                                           ; $6afc: $80
	ld   d, h                                        ; $6afd: $54
	add  b                                           ; $6afe: $80
	xor  d                                           ; $6aff: $aa
	adc  c                                           ; $6b00: $89
	nop                                              ; $6b01: $00
	add  b                                           ; $6b02: $80
	ld   bc, $0380                                   ; $6b03: $01 $80 $03
	add  h                                           ; $6b06: $84
	rlca                                             ; $6b07: $07
	add  b                                           ; $6b08: $80
	ld   [bc], a                                     ; $6b09: $02
	add  b                                           ; $6b0a: $80
	dec  b                                           ; $6b0b: $05
	add  b                                           ; $6b0c: $80
	ld   [bc], a                                     ; $6b0d: $02
	add  b                                           ; $6b0e: $80
	ld   bc, $0205                                   ; $6b0f: $01 $05 $02
	inc  bc                                          ; $6b12: $03
	ld   [bc], a                                     ; $6b13: $02
	inc  b                                           ; $6b14: $04
	inc  bc                                          ; $6b15: $03
	inc  b                                           ; $6b16: $04
	add  [hl]                                        ; $6b17: $86
	nop                                              ; $6b18: $00
	add  b                                           ; $6b19: $80
	ldh  a, [$80]                                    ; $6b1a: $f0 $80

jr_09f_6b1c:
	ld   hl, sp-$80                                  ; $6b1c: $f8 $80
	db   $fc                                         ; $6b1e: $fc
	add  b                                           ; $6b1f: $80
	cp   $83                                         ; $6b20: $fe $83
	rst  $38                                         ; $6b22: $ff
	ld   [bc], a                                     ; $6b23: $02
	ei                                               ; $6b24: $fb
	cp   d                                           ; $6b25: $ba
	or   d                                           ; $6b26: $b2
	add  b                                           ; $6b27: $80
	ld   d, b                                        ; $6b28: $50
	dec  b                                           ; $6b29: $05
	ldh  a, [hScriptOpcodeParams+4]                                    ; $6b2a: $f0 $a4
	nop                                              ; $6b2c: $00
	ld   hl, sp-$80                                  ; $6b2d: $f8 $80
	jr   nz, jr_09f_6ab2                             ; $6b2f: $20 $81

	nop                                              ; $6b31: $00
	add  b                                           ; $6b32: $80
	ld   bc, $0280                                   ; $6b33: $01 $80 $02
	add  b                                           ; $6b36: $80
	nop                                              ; $6b37: $00
	add  b                                           ; $6b38: $80
	ld   [bc], a                                     ; $6b39: $02
	dec  d                                           ; $6b3a: $15
	dec  b                                           ; $6b3b: $05
	inc  b                                           ; $6b3c: $04
	inc  bc                                          ; $6b3d: $03
	nop                                              ; $6b3e: $00
	rlca                                             ; $6b3f: $07
	nop                                              ; $6b40: $00
	rrca                                             ; $6b41: $0f
	nop                                              ; $6b42: $00
	rrca                                             ; $6b43: $0f
	nop                                              ; $6b44: $00
	rrca                                             ; $6b45: $0f
	nop                                              ; $6b46: $00
	inc  e                                           ; $6b47: $1c
	nop                                              ; $6b48: $00
	ld   [$3100], sp                                 ; $6b49: $08 $00 $31
	nop                                              ; $6b4c: $00
	dec  sp                                          ; $6b4d: $3b
	nop                                              ; $6b4e: $00
	ld   l, e                                        ; $6b4f: $6b
	ld   a, a                                        ; $6b50: $7f
	add  b                                           ; $6b51: $80
	rst  $38                                         ; $6b52: $ff
	add  b                                           ; $6b53: $80
	ld   d, a                                        ; $6b54: $57
	add  b                                           ; $6b55: $80
	cp   a                                           ; $6b56: $bf
	add  hl, bc                                      ; $6b57: $09
	dec  d                                           ; $6b58: $15
	inc  d                                           ; $6b59: $14
	adc  a                                           ; $6b5a: $8f
	adc  [hl]                                        ; $6b5b: $8e
	ld   bc, $a300                                   ; $6b5c: $01 $00 $a3
	and  d                                           ; $6b5f: $a2
	push de                                          ; $6b60: $d5
	ld   d, l                                        ; $6b61: $55
	add  b                                           ; $6b62: $80
	ld   [hl+], a                                    ; $6b63: $22
	inc  de                                          ; $6b64: $13
	push de                                          ; $6b65: $d5
	ld   d, l                                        ; $6b66: $55
	ld   [$d76a], a                                  ; $6b67: $ea $6a $d7
	ld   d, a                                        ; $6b6a: $57
	ld   a, [$df7a]                                  ; $6b6b: $fa $7a $df
	ld   e, a                                        ; $6b6e: $5f
	cp   a                                           ; $6b6f: $bf
	ccf                                              ; $6b70: $3f
	ld   d, h                                        ; $6b71: $54
	ret  nz                                          ; $6b72: $c0

	cp   $e8                                         ; $6b73: $fe $e8
	push af                                          ; $6b75: $f5
	or   $af                                         ; $6b76: $f6 $af
	xor  [hl]                                        ; $6b78: $ae
	add  b                                           ; $6b79: $80
	rst  $10                                         ; $6b7a: $d7
	ld   bc, $babe                                   ; $6b7b: $01 $be $ba
	add  b                                           ; $6b7e: $80
	ld   e, c                                        ; $6b7f: $59
	inc  bc                                          ; $6b80: $03
	ld   d, $10                                      ; $6b81: $16 $10
	ld   [bc], a                                     ; $6b83: $02
	nop                                              ; $6b84: $00
	add  b                                           ; $6b85: $80
	add  b                                           ; $6b86: $80
	add  b                                           ; $6b87: $80
	ld   d, b                                        ; $6b88: $50
	add  b                                           ; $6b89: $80
	and  b                                           ; $6b8a: $a0
	inc  bc                                          ; $6b8b: $03
	ld   d, b                                        ; $6b8c: $50
	ld   b, b                                        ; $6b8d: $40
	or   b                                           ; $6b8e: $b0
	add  b                                           ; $6b8f: $80
	add  b                                           ; $6b90: $80
	ret  nz                                          ; $6b91: $c0

	ld   [bc], a                                     ; $6b92: $02
	ret  nc                                          ; $6b93: $d0

	ret  nz                                          ; $6b94: $c0

	jr   nc, jr_09f_6b1c                             ; $6b95: $30 $85

	nop                                              ; $6b97: $00
	add  d                                           ; $6b98: $82
	add  b                                           ; $6b99: $80
	add  b                                           ; $6b9a: $80
	ret  nz                                          ; $6b9b: $c0

	add  b                                           ; $6b9c: $80
	and  b                                           ; $6b9d: $a0
	add  b                                           ; $6b9e: $80
	ld   d, b                                        ; $6b9f: $50
	add  b                                           ; $6ba0: $80
	jr   c, jr_09f_6ba8                              ; $6ba1: $38 $05

	ld   e, h                                        ; $6ba3: $5c
	inc  e                                           ; $6ba4: $1c
	ld   l, d                                        ; $6ba5: $6a
	ld   a, [bc]                                     ; $6ba6: $0a
	dec  h                                           ; $6ba7: $25

jr_09f_6ba8:
	dec  b                                           ; $6ba8: $05
	add  b                                           ; $6ba9: $80
	ld   hl, $4204                                   ; $6baa: $21 $04 $42
	ld   [bc], a                                     ; $6bad: $02
	db   $ec                                         ; $6bae: $ec
	inc  l                                           ; $6baf: $2c
	add  b                                           ; $6bb0: $80
	add  c                                           ; $6bb1: $81
	nop                                              ; $6bb2: $00
	inc  bc                                          ; $6bb3: $03
	ld   bc, $0100                                   ; $6bb4: $01 $00 $01
	nop                                              ; $6bb7: $00
	add  b                                           ; $6bb8: $80
	ld   bc, $0086                                   ; $6bb9: $01 $86 $00
	add  b                                           ; $6bbc: $80
	ld   [bc], a                                     ; $6bbd: $02
	add  b                                           ; $6bbe: $80
	ld   bc, $0280                                   ; $6bbf: $01 $80 $02
	add  b                                           ; $6bc2: $80
	ld   bc, $0080                                   ; $6bc3: $01 $80 $00
	add  d                                           ; $6bc6: $82
	ld   bc, $5780                                   ; $6bc7: $01 $80 $57
	inc  bc                                          ; $6bca: $03
	xor  a                                           ; $6bcb: $af
	cpl                                              ; $6bcc: $2f
	ld   [hl], l                                     ; $6bcd: $75
	push af                                          ; $6bce: $f5
	add  b                                           ; $6bcf: $80
	xor  d                                           ; $6bd0: $aa
	add  b                                           ; $6bd1: $80
	push de                                          ; $6bd2: $d5
	add  b                                           ; $6bd3: $80
	adc  e                                           ; $6bd4: $8b
	add  b                                           ; $6bd5: $80
	ld   bc, $0080                                   ; $6bd6: $01 $80 $00
	add  b                                           ; $6bd9: $80
	ld   d, b                                        ; $6bda: $50
	add  b                                           ; $6bdb: $80
	jr   nz, jr_09f_6beb                             ; $6bdc: $20 $0d

	ld   d, l                                        ; $6bde: $55
	ld   b, l                                        ; $6bdf: $45
	cp   d                                           ; $6be0: $ba
	add  d                                           ; $6be1: $82
	ld   a, l                                        ; $6be2: $7d
	ld   b, l                                        ; $6be3: $45
	cp   a                                           ; $6be4: $bf
	and  e                                           ; $6be5: $a3
	ld   e, e                                        ; $6be6: $5b
	ld   b, c                                        ; $6be7: $41
	cp   c                                           ; $6be8: $b9
	and  b                                           ; $6be9: $a0
	ld   [hl], b                                     ; $6bea: $70

jr_09f_6beb:
	ld   b, b                                        ; $6beb: $40
	add  b                                           ; $6bec: $80
	ret  nz                                          ; $6bed: $c0

	dec  bc                                          ; $6bee: $0b
	ret                                              ; $6bef: $c9


	ret  nz                                          ; $6bf0: $c0

	sub  [hl]                                        ; $6bf1: $96
	add  b                                           ; $6bf2: $80
	ldh  a, [$c0]                                    ; $6bf3: $f0 $c0
	or   b                                           ; $6bf5: $b0
	and  b                                           ; $6bf6: $a0
	ret  nc                                          ; $6bf7: $d0

	ret  nz                                          ; $6bf8: $c0

	or   b                                           ; $6bf9: $b0
	and  b                                           ; $6bfa: $a0
	add  b                                           ; $6bfb: $80
	ld   d, b                                        ; $6bfc: $50
	add  b                                           ; $6bfd: $80
	xor  h                                           ; $6bfe: $ac
	add  b                                           ; $6bff: $80
	ld   d, h                                        ; $6c00: $54
	add  b                                           ; $6c01: $80
	cp   [hl]                                        ; $6c02: $be
	inc  bc                                          ; $6c03: $03
	ld   [hl], a                                     ; $6c04: $77
	halt                                             ; $6c05: $76
	cp   a                                           ; $6c06: $bf

jr_09f_6c07:
	cp   [hl]                                        ; $6c07: $be
	add  b                                           ; $6c08: $80
	rst  $38                                         ; $6c09: $ff
	add  b                                           ; $6c0a: $80
	ld   a, [$5004]                                  ; $6c0b: $fa $04 $50
	nop                                              ; $6c0e: $00
	sub  b                                           ; $6c0f: $90
	nop                                              ; $6c10: $00
	ret  nz                                          ; $6c11: $c0

	sub  e                                           ; $6c12: $93
	nop                                              ; $6c13: $00
	add  b                                           ; $6c14: $80
	add  b                                           ; $6c15: $80
	add  b                                           ; $6c16: $80
	nop                                              ; $6c17: $00
	add  b                                           ; $6c18: $80
	add  b                                           ; $6c19: $80
	db   $10                                         ; $6c1a: $10
	push de                                          ; $6c1b: $d5
	ld   b, b                                        ; $6c1c: $40
	ccf                                              ; $6c1d: $3f
	add  b                                           ; $6c1e: $80
	xor  $40                                         ; $6c1f: $ee $40
	inc  l                                           ; $6c21: $2c
	and  b                                           ; $6c22: $a0
	ld   c, b                                        ; $6c23: $48
	nop                                              ; $6c24: $00
	ld   [$5ea0], a                                  ; $6c25: $ea $a0 $5e
	db   $10                                         ; $6c28: $10
	cp   [hl]                                        ; $6c29: $be
	and  b                                           ; $6c2a: $a0
	ld   e, d                                        ; $6c2b: $5a
	adc  l                                           ; $6c2c: $8d
	nop                                              ; $6c2d: $00
	add  b                                           ; $6c2e: $80
	ld   [hl], l                                     ; $6c2f: $75
	inc  bc                                          ; $6c30: $03
	ld   l, d                                        ; $6c31: $6a
	ld   a, [hl+]                                    ; $6c32: $2a
	ld   d, b                                        ; $6c33: $50
	db   $10                                         ; $6c34: $10
	add  b                                           ; $6c35: $80
	ld   [bc], a                                     ; $6c36: $02
	add  b                                           ; $6c37: $80
	dec  b                                           ; $6c38: $05
	ld   b, $02                                      ; $6c39: $06 $02
	nop                                              ; $6c3b: $00
	inc  bc                                          ; $6c3c: $03
	nop                                              ; $6c3d: $00
	ld   [bc], a                                     ; $6c3e: $02
	nop                                              ; $6c3f: $00
	inc  bc                                          ; $6c40: $03
	adc  l                                           ; $6c41: $8d
	nop                                              ; $6c42: $00
	dec  c                                           ; $6c43: $0d
	ld   b, b                                        ; $6c44: $40
	nop                                              ; $6c45: $00
	ldh  [hScriptOpcodeParams], a                                    ; $6c46: $e0 $a0
	ld   h, b                                        ; $6c48: $60
	ld   b, b                                        ; $6c49: $40
	sub  b                                           ; $6c4a: $90
	or   b                                           ; $6c4b: $b0
	ld   [hl], b                                     ; $6c4c: $70
	ld   h, b                                        ; $6c4d: $60
	xor  b                                           ; $6c4e: $a8
	cp   b                                           ; $6c4f: $b8
	ld   e, b                                        ; $6c50: $58
	ld   d, b                                        ; $6c51: $50
	add  b                                           ; $6c52: $80
	or   b                                           ; $6c53: $b0
	nop                                              ; $6c54: $00
	ld   [$00a7], sp                                 ; $6c55: $08 $a7 $00
	ld   [bc], a                                     ; $6c58: $02
	call nz, $3878                                   ; $6c59: $c4 $78 $38
	add  c                                           ; $6c5c: $81
	ld   a, b                                        ; $6c5d: $78
	nop                                              ; $6c5e: $00
	db   $fc                                         ; $6c5f: $fc
	sub  a                                           ; $6c60: $97
	nop                                              ; $6c61: $00
	ld   b, $3d                                      ; $6c62: $06 $3d
	ld   e, $5e                                      ; $6c64: $1e $5e
	ld   e, $19                                      ; $6c66: $1e $19
	inc  a                                           ; $6c68: $3c
	ld   b, [hl]                                     ; $6c69: $46
	rst  $38                                         ; $6c6a: $ff
	nop                                              ; $6c6b: $00
	rst  $38                                         ; $6c6c: $ff
	nop                                              ; $6c6d: $00
	rst  $38                                         ; $6c6e: $ff
	nop                                              ; $6c6f: $00
	rst  $38                                         ; $6c70: $ff
	nop                                              ; $6c71: $00
	reti                                             ; $6c72: $d9


	nop                                              ; $6c73: $00
	call nc, $8200                                   ; $6c74: $d4 $00 $82
	nop                                              ; $6c77: $00
	add  hl, bc                                      ; $6c78: $09
	inc  bc                                          ; $6c79: $03
	nop                                              ; $6c7a: $00
	rlca                                             ; $6c7b: $07
	inc  bc                                          ; $6c7c: $03
	rrca                                             ; $6c7d: $0f
	rlca                                             ; $6c7e: $07
	dec  e                                           ; $6c7f: $1d
	dec  c                                           ; $6c80: $0d
	add  hl, sp                                      ; $6c81: $39
	add  hl, de                                      ; $6c82: $19
	add  c                                           ; $6c83: $81
	jr   jr_09f_6c07                                 ; $6c84: $18 $81

	dec  de                                          ; $6c86: $1b
	inc  bc                                          ; $6c87: $03
	inc  de                                          ; $6c88: $13
	ld   [de], a                                     ; $6c89: $12
	inc  de                                          ; $6c8a: $13
	ld   de, $0780                                   ; $6c8b: $11 $80 $07
	add  b                                           ; $6c8e: $80
	rrca                                             ; $6c8f: $0f
	rlca                                             ; $6c90: $07
	dec  d                                           ; $6c91: $15
	dec  e                                           ; $6c92: $1d
	ld   bc, $0d1b                                   ; $6c93: $01 $1b $0d
	rra                                              ; $6c96: $1f
	rst  $38                                         ; $6c97: $ff
	ccf                                              ; $6c98: $3f
	add  b                                           ; $6c99: $80
	cp   $82                                         ; $6c9a: $fe $82
	rst  $38                                         ; $6c9c: $ff
	add  b                                           ; $6c9d: $80
	ldh  [rP1], a                                    ; $6c9e: $e0 $00
	nop                                              ; $6ca0: $00
	add  b                                           ; $6ca1: $80
	rra                                              ; $6ca2: $1f
	add  d                                           ; $6ca3: $82
	rst  $38                                         ; $6ca4: $ff
	ld   [bc], a                                     ; $6ca5: $02
	ret  nz                                          ; $6ca6: $c0

	rst  $38                                         ; $6ca7: $ff
	ccf                                              ; $6ca8: $3f
	add  b                                           ; $6ca9: $80
	rst  $38                                         ; $6caa: $ff
	add  b                                           ; $6cab: $80
	db   $dd                                         ; $6cac: $dd
	rlca                                             ; $6cad: $07
	or   l                                           ; $6cae: $b5
	and  h                                           ; $6caf: $a4
	cp   d                                           ; $6cb0: $ba
	nop                                              ; $6cb1: $00
	pop  bc                                          ; $6cb2: $c1
	nop                                              ; $6cb3: $00
	ld   [hl], l                                     ; $6cb4: $75

jr_09f_6cb5:
	rra                                              ; $6cb5: $1f
	add  b                                           ; $6cb6: $80
	ccf                                              ; $6cb7: $3f
	add  b                                           ; $6cb8: $80
	ld   a, a                                        ; $6cb9: $7f
	add  d                                           ; $6cba: $82
	rst  $38                                         ; $6cbb: $ff
	add  b                                           ; $6cbc: $80
	rlca                                             ; $6cbd: $07
	inc  bc                                          ; $6cbe: $03
	ldh  a, [$08]                                    ; $6cbf: $f0 $08
	nop                                              ; $6cc1: $00
	rlca                                             ; $6cc2: $07
	add  b                                           ; $6cc3: $80
	inc  bc                                          ; $6cc4: $03
	inc  bc                                          ; $6cc5: $03
	ei                                               ; $6cc6: $fb
	inc  bc                                          ; $6cc7: $03
	rst  $38                                         ; $6cc8: $ff
	ld   hl, sp-$80                                  ; $6cc9: $f8 $80
	rst  $38                                         ; $6ccb: $ff
	add  b                                           ; $6ccc: $80
	ld   a, e                                        ; $6ccd: $7b
	dec  bc                                          ; $6cce: $0b
	ld   l, e                                        ; $6ccf: $6b
	ld   b, e                                        ; $6cd0: $43
	ld   b, l                                        ; $6cd1: $45
	nop                                              ; $6cd2: $00
	ld   [$c341], sp                                 ; $6cd3: $08 $41 $c3
	ldh  [$fe], a                                    ; $6cd6: $e0 $fe
	ld   hl, sp-$01                                  ; $6cd8: $f8 $ff
	cp   $80                                         ; $6cda: $fe $80
	rst  $38                                         ; $6cdc: $ff
	inc  c                                           ; $6cdd: $0c
	cp   [hl]                                        ; $6cde: $be
	cp   a                                           ; $6cdf: $bf
	sbc  [hl]                                        ; $6ce0: $9e
	sbc  a                                           ; $6ce1: $9f
	set  1, a                                        ; $6ce2: $cb $cf
	inc  c                                           ; $6ce4: $0c
	rrca                                             ; $6ce5: $0f
	ld   c, $cf                                      ; $6ce6: $0e $cf
	set  5, a                                        ; $6ce8: $cb $ef
	db   $ed                                         ; $6cea: $ed
	add  b                                           ; $6ceb: $80
	rst  $28                                         ; $6cec: $ef
	add  hl, bc                                      ; $6ced: $09
	cpl                                              ; $6cee: $2f
	xor  a                                           ; $6cef: $af
	adc  a                                           ; $6cf0: $8f
	rst  ToBoot                                         ; $6cf1: $c7
	ld   b, a                                        ; $6cf2: $47
	ld   h, a                                        ; $6cf3: $67
	daa                                              ; $6cf4: $27
	scf                                              ; $6cf5: $37
	or   a                                           ; $6cf6: $b7
	cp   a                                           ; $6cf7: $bf
	add  e                                           ; $6cf8: $83
	nop                                              ; $6cf9: $00
	ld   b, $80                                      ; $6cfa: $06 $80
	nop                                              ; $6cfc: $00
	ret  nz                                          ; $6cfd: $c0

	add  b                                           ; $6cfe: $80
	ld   h, b                                        ; $6cff: $60
	ret  nz                                          ; $6d00: $c0

	or   b                                           ; $6d01: $b0
	add  c                                           ; $6d02: $81
	ldh  [rDIV], a                                   ; $6d03: $e0 $04
	ld   h, b                                        ; $6d05: $60
	ldh  [hScriptOpcodeParams], a                                    ; $6d06: $e0 $a0
	ldh  [$f8], a                                    ; $6d08: $e0 $f8
	adc  c                                           ; $6d0a: $89
	ldh  a, [rP1]                                    ; $6d0b: $f0 $00
	and  l                                           ; $6d0d: $a5
	add  b                                           ; $6d0e: $80
	ld   a, $03                                      ; $6d0f: $3e $03
	ld   [hl], $fa                                   ; $6d11: $36 $fa
	ld   l, [hl]                                     ; $6d13: $6e
	ld   l, h                                        ; $6d14: $6c
	add  b                                           ; $6d15: $80
	ld   l, l                                        ; $6d16: $6d
	add  b                                           ; $6d17: $80
	ld   l, h                                        ; $6d18: $6c
	ld   [bc], a                                     ; $6d19: $02
	ld   l, l                                        ; $6d1a: $6d
	xor  l                                           ; $6d1b: $ad
	dec  l                                           ; $6d1c: $2d

jr_09f_6d1d:
	add  b                                           ; $6d1d: $80
	dec  h                                           ; $6d1e: $25
	ld   b, $4b                                      ; $6d1f: $06 $4b
	ld   a, [bc]                                     ; $6d21: $0a
	db   $10                                         ; $6d22: $10
	ld   de, $3371                                   ; $6d23: $11 $71 $33
	dec  hl                                          ; $6d26: $2b
	add  e                                           ; $6d27: $83
	add  hl, hl                                      ; $6d28: $29
	inc  b                                           ; $6d29: $04
	add  hl, bc                                      ; $6d2a: $09
	jr   z, jr_09f_6d1d                              ; $6d2b: $28 $f0

	ld   [hl], b                                     ; $6d2d: $70
	ld   h, d                                        ; $6d2e: $62
	add  b                                           ; $6d2f: $80
	jr   jr_09f_6cb5                                 ; $6d30: $18 $83

	ld   e, d                                        ; $6d32: $5a
	ld   [bc], a                                     ; $6d33: $02
	ld   a, [de]                                     ; $6d34: $1a
	ld   a, [bc]                                     ; $6d35: $0a
	adc  b                                           ; $6d36: $88
	add  b                                           ; $6d37: $80
	inc  h                                           ; $6d38: $24
	rlca                                             ; $6d39: $07
	inc  a                                           ; $6d3a: $3c
	ld   e, [hl]                                     ; $6d3b: $5e
	inc  a                                           ; $6d3c: $3c
	cp   l                                           ; $6d3d: $bd
	inc  b                                           ; $6d3e: $04
	ld   hl, sp-$70                                  ; $6d3f: $f8 $90
	ldh  a, [$85]                                    ; $6d41: $f0 $85
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	ld   bc, $0081                                   ; $6d45: $01 $81 $00
	inc  b                                           ; $6d48: $04
	db   $db                                         ; $6d49: $db
	and  c                                           ; $6d4a: $a1
	and  d                                           ; $6d4b: $a2
	and  [hl]                                        ; $6d4c: $a6
	and  d                                           ; $6d4d: $a2
	add  c                                           ; $6d4e: $81
	xor  d                                           ; $6d4f: $aa
	nop                                              ; $6d50: $00
	adc  b                                           ; $6d51: $88
	add  b                                           ; $6d52: $80
	ret  nz                                          ; $6d53: $c0

	add  hl, bc                                      ; $6d54: $09
	adc  $c8                                         ; $6d55: $ce $c8
	jp   hl                                          ; $6d57: $e9


	pop  bc                                          ; $6d58: $c1
	pop  af                                          ; $6d59: $f1
	sbc  b                                           ; $6d5a: $98
	and  c                                           ; $6d5b: $a1
	ld   c, $18                                      ; $6d5c: $0e $18
	rrca                                             ; $6d5e: $0f
	add  e                                           ; $6d5f: $83
	nop                                              ; $6d60: $00
	add  b                                           ; $6d61: $80
	add  b                                           ; $6d62: $80
	add  d                                           ; $6d63: $82
	ret  nz                                          ; $6d64: $c0

	inc  bc                                          ; $6d65: $03
	adc  b                                           ; $6d66: $88
	ld   d, a                                        ; $6d67: $57
	sub  a                                           ; $6d68: $97
	or   a                                           ; $6d69: $b7
	add  b                                           ; $6d6a: $80
	sub  a                                           ; $6d6b: $97
	add  b                                           ; $6d6c: $80
	ld   b, a                                        ; $6d6d: $47
	add  b                                           ; $6d6e: $80
	daa                                              ; $6d6f: $27
	ld   [bc], a                                     ; $6d70: $02
	rla                                              ; $6d71: $17
	rst  $10                                         ; $6d72: $d7
	rst  ToBoot                                         ; $6d73: $c7
	add  b                                           ; $6d74: $80
	ld   h, a                                        ; $6d75: $67
	add  b                                           ; $6d76: $80
	rst  $30                                         ; $6d77: $f7
	ld   bc, $b737                                   ; $6d78: $01 $37 $b7
	add  b                                           ; $6d7b: $80
	rst  $30                                         ; $6d7c: $f7
	ld   bc, $7577                                   ; $6d7d: $01 $77 $75
	add  b                                           ; $6d80: $80
	dec  [hl]                                        ; $6d81: $35
	add  e                                           ; $6d82: $83
	ld   [hl], l                                     ; $6d83: $75
	ld   [bc], a                                     ; $6d84: $02
	push af                                          ; $6d85: $f5
	db   $e4                                         ; $6d86: $e4
	ld   d, $81                                      ; $6d87: $16 $81
	ldh  a, [rP1]                                    ; $6d89: $f0 $00
	db   $fc                                         ; $6d8b: $fc
	add  c                                           ; $6d8c: $81
	ld   hl, sp-$7c                                  ; $6d8d: $f8 $84
	add  sp, $00                                     ; $6d8f: $e8 $00
	ld   [$e881], a                                  ; $6d91: $ea $81 $e8
	nop                                              ; $6d94: $00
	ldh  [$81], a                                    ; $6d95: $e0 $81
	add  sp, $06                                     ; $6d97: $e8 $06
	ret  z                                           ; $6d99: $c8

	add  sp, -$17                                    ; $6d9a: $e8 $e9
	add  sp, -$20                                    ; $6d9c: $e8 $e0
	add  sp, -$78                                    ; $6d9e: $e8 $88
	add  c                                           ; $6da0: $81
	add  sp, $00                                     ; $6da1: $e8 $00
	cp   a                                           ; $6da3: $bf
	sbc  c                                           ; $6da4: $99
	nop                                              ; $6da5: $00
	inc  b                                           ; $6da6: $04
	jr   c, jr_09f_6da9                              ; $6da7: $38 $00

jr_09f_6da9:
	ld   b, $00                                      ; $6da9: $06 $00
	pop  de                                          ; $6dab: $d1
	add  b                                           ; $6dac: $80
	ld   d, b                                        ; $6dad: $50
	add  b                                           ; $6dae: $80
	ld   [hl], b                                     ; $6daf: $70
	add  c                                           ; $6db0: $81
	ld   d, b                                        ; $6db1: $50
	nop                                              ; $6db2: $00
	db   $10                                         ; $6db3: $10
	add  l                                           ; $6db4: $85
	ld   d, b                                        ; $6db5: $50
	nop                                              ; $6db6: $00
	sub  b                                           ; $6db7: $90
	add  c                                           ; $6db8: $81
	db   $10                                         ; $6db9: $10
	inc  b                                           ; $6dba: $04
	ld   e, d                                        ; $6dbb: $5a
	jr   jr_09f_6de6                                 ; $6dbc: $18 $28

	ld   [$8111], sp                                 ; $6dbe: $08 $11 $81
	nop                                              ; $6dc1: $00
	ld   b, $0b                                      ; $6dc2: $06 $0b
	nop                                              ; $6dc4: $00
	ld   hl, sp+$07                                  ; $6dc5: $f8 $07
	add  a                                           ; $6dc7: $87
	ld   a, a                                        ; $6dc8: $7f
	rst  $38                                         ; $6dc9: $ff
	add  b                                           ; $6dca: $80
	ld   a, a                                        ; $6dcb: $7f
	dec  c                                           ; $6dcc: $0d
	ccf                                              ; $6dcd: $3f
	ld   l, a                                        ; $6dce: $6f
	rrca                                             ; $6dcf: $0f
	rra                                              ; $6dd0: $1f
	rlca                                             ; $6dd1: $07
	dec  b                                           ; $6dd2: $05
	ld   bc, $0002                                   ; $6dd3: $01 $02 $00
	inc  bc                                          ; $6dd6: $03
	nop                                              ; $6dd7: $00
	dec  de                                          ; $6dd8: $1b
	nop                                              ; $6dd9: $00
	and  c                                           ; $6dda: $a1
	add  b                                           ; $6ddb: $80
	ld   [bc], a                                     ; $6ddc: $02
	dec  b                                           ; $6ddd: $05
	inc  bc                                          ; $6dde: $03
	dec  bc                                          ; $6ddf: $0b
	ld   bc, $0a31                                   ; $6de0: $01 $31 $0a
	jp   z, $3b80                                    ; $6de3: $ca $80 $3b

jr_09f_6de6:
	add  b                                           ; $6de6: $80
	rst  $30                                         ; $6de7: $f7
	add  c                                           ; $6de8: $81
	rst  $38                                         ; $6de9: $ff
	add  d                                           ; $6dea: $82
	cp   $80                                         ; $6deb: $fe $80
	db   $fc                                         ; $6ded: $fc
	inc  de                                          ; $6dee: $13
	ei                                               ; $6def: $fb
	ld   hl, sp-$11                                  ; $6df0: $f8 $ef
	ldh  [$fc], a                                    ; $6df2: $e0 $fc
	ret  nz                                          ; $6df4: $c0

	ldh  a, [rP1]                                    ; $6df5: $f0 $00
	rst  ToBoot                                         ; $6df7: $c7
	nop                                              ; $6df8: $00
	rst  $38                                         ; $6df9: $ff
	nop                                              ; $6dfa: $00
	ld   hl, sp+$00                                  ; $6dfb: $f8 $00
	rlca                                             ; $6dfd: $07
	nop                                              ; $6dfe: $00
	rst  $38                                         ; $6dff: $ff
	nop                                              ; $6e00: $00
	ld   hl, sp+$00                                  ; $6e01: $f8 $00
	add  b                                           ; $6e03: $80
	add  b                                           ; $6e04: $80
	add  b                                           ; $6e05: $80
	ldh  [rP1], a                                    ; $6e06: $e0 $00
	ld   a, [$e480]                                  ; $6e08: $fa $80 $e4
	add  b                                           ; $6e0b: $80
	call nz, $8480                                   ; $6e0c: $c4 $80 $84
	ld   [bc], a                                     ; $6e0f: $02
	inc  b                                           ; $6e10: $04
	inc  c                                           ; $6e11: $0c
	adc  l                                           ; $6e12: $8d
	add  b                                           ; $6e13: $80
	adc  c                                           ; $6e14: $89
	add  b                                           ; $6e15: $80
	adc  e                                           ; $6e16: $8b
	ld   bc, $2bab                                   ; $6e17: $01 $ab $2b
	add  b                                           ; $6e1a: $80
	sub  d                                           ; $6e1b: $92
	add  b                                           ; $6e1c: $80
	sub  [hl]                                        ; $6e1d: $96
	add  b                                           ; $6e1e: $80
	ld   d, $06                                      ; $6e1f: $16 $06
	inc  d                                           ; $6e21: $14
	call nc, $acec                                   ; $6e22: $d4 $ec $ac
	and  b                                           ; $6e25: $a0
	and  d                                           ; $6e26: $a2
	add  d                                           ; $6e27: $82
	add  b                                           ; $6e28: $80
	adc  a                                           ; $6e29: $8f
	dec  b                                           ; $6e2a: $05
	cp   a                                           ; $6e2b: $bf
	sub  a                                           ; $6e2c: $97
	add  sp, $68                                     ; $6e2d: $e8 $68
	add  sp, -$58                                    ; $6e2f: $e8 $a8
	add  e                                           ; $6e31: $83
	add  sp, $02                                     ; $6e32: $e8 $02
	ld   l, c                                        ; $6e34: $69
	ld   l, b                                        ; $6e35: $68
	ld   d, d                                        ; $6e36: $52
	add  c                                           ; $6e37: $81
	ld   d, b                                        ; $6e38: $50
	ld   b, $44                                      ; $6e39: $06 $44
	ld   b, b                                        ; $6e3b: $40
	ld   c, b                                        ; $6e3c: $48
	ld   b, b                                        ; $6e3d: $40
	stop                                             ; $6e3e: $10 $00
	ld   h, b                                        ; $6e40: $60
	add  c                                           ; $6e41: $81
	nop                                              ; $6e42: $00
	ld   b, $80                                      ; $6e43: $06 $80
	nop                                              ; $6e45: $00
	ret  nz                                          ; $6e46: $c0

	nop                                              ; $6e47: $00
	inc  a                                           ; $6e48: $3c
	ret  nz                                          ; $6e49: $c0

	call nz, $0081                                   ; $6e4a: $c4 $81 $00
	ld   bc, $0006                                   ; $6e4d: $01 $06 $00
	add  b                                           ; $6e50: $80
	inc  a                                           ; $6e51: $3c
	add  b                                           ; $6e52: $80
	db   $fc                                         ; $6e53: $fc
	ld   [bc], a                                     ; $6e54: $02
	inc  a                                           ; $6e55: $3c
	db   $fc                                         ; $6e56: $fc
	cp   h                                           ; $6e57: $bc
	add  c                                           ; $6e58: $81
	db   $fc                                         ; $6e59: $fc
	inc  bc                                          ; $6e5a: $03
	add  b                                           ; $6e5b: $80
	ldh  [$e2], a                                    ; $6e5c: $e0 $e2
	nop                                              ; $6e5e: $00
	add  b                                           ; $6e5f: $80
	ldh  [$0b], a                                    ; $6e60: $e0 $0b
	ld   [hl], b                                     ; $6e62: $70
	ldh  a, [$3a]                                    ; $6e63: $f0 $3a
	ld   hl, sp-$24                                  ; $6e65: $f8 $dc
	db   $fc                                         ; $6e67: $fc
	and  a                                           ; $6e68: $a7
	cp   $22                                         ; $6e69: $fe $22
	cp   $02                                         ; $6e6b: $fe $02
	and  $80                                         ; $6e6d: $e6 $80
	add  d                                           ; $6e6f: $82
	ld   [bc], a                                     ; $6e70: $02
	ld   bc, $0200                                   ; $6e71: $01 $00 $02
	adc  c                                           ; $6e74: $89
	nop                                              ; $6e75: $00
	ld   bc, $8082                                   ; $6e76: $01 $82 $80
	add  b                                           ; $6e79: $80
	ret  nz                                          ; $6e7a: $c0

	add  b                                           ; $6e7b: $80
	ldh  a, [$80]                                    ; $6e7c: $f0 $80
	ld   hl, sp+$01                                  ; $6e7e: $f8 $01
	ld   sp, hl                                      ; $6e80: $f9
	ld   hl, sp-$80                                  ; $6e81: $f8 $80

jr_09f_6e83:
	db   $fc                                         ; $6e83: $fc
	add  b                                           ; $6e84: $80
	cp   $00                                         ; $6e85: $fe $00
	rst  $38                                         ; $6e87: $ff
	add  l                                           ; $6e88: $85
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	ld   bc, $0083                                   ; $6e8b: $01 $83 $00
	nop                                              ; $6e8e: $00
	inc  bc                                          ; $6e8f: $03
	add  c                                           ; $6e90: $81
	ld   bc, $0706                                   ; $6e91: $01 $06 $07
	inc  bc                                          ; $6e94: $03
	rrca                                             ; $6e95: $0f
	rlca                                             ; $6e96: $07
	jr   @+$11                                       ; $6e97: $18 $0f

	scf                                              ; $6e99: $37
	add  b                                           ; $6e9a: $80
	jr   jr_09f_6ea2                                 ; $6e9b: $18 $05

	db   $10                                         ; $6e9d: $10
	jr   nz, jr_09f_6ea0                             ; $6e9e: $20 $00

jr_09f_6ea0:
	stop                                             ; $6ea0: $10 $00

jr_09f_6ea2:
	ld   [$0081], sp                                 ; $6ea2: $08 $81 $00
	add  b                                           ; $6ea5: $80
	ld   [bc], a                                     ; $6ea6: $02
	ld   d, $0e                                      ; $6ea7: $16 $0e
	ld   b, $04                                      ; $6ea9: $06 $04
	dec  b                                           ; $6eab: $05
	add  hl, bc                                      ; $6eac: $09
	ld   bc, $0105                                   ; $6ead: $01 $05 $01
	dec  b                                           ; $6eb0: $05
	inc  bc                                          ; $6eb1: $03
	dec  bc                                          ; $6eb2: $0b
	inc  bc                                          ; $6eb3: $03
	inc  de                                          ; $6eb4: $13
	rlca                                             ; $6eb5: $07
	rrca                                             ; $6eb6: $0f
	dec  bc                                          ; $6eb7: $0b
	dec  sp                                          ; $6eb8: $3b
	dec  de                                          ; $6eb9: $1b
	rra                                              ; $6eba: $1f
	dec  e                                           ; $6ebb: $1d
	ld   a, a                                        ; $6ebc: $7f
	ld   a, $ff                                      ; $6ebd: $3e $ff
	add  d                                           ; $6ebf: $82
	ld   a, a                                        ; $6ec0: $7f
	add  b                                           ; $6ec1: $80
	add  b                                           ; $6ec2: $80

jr_09f_6ec3:
	add  hl, bc                                      ; $6ec3: $09
	nop                                              ; $6ec4: $00
	ld   b, b                                        ; $6ec5: $40
	nop                                              ; $6ec6: $00
	ld   [hl], b                                     ; $6ec7: $70
	ld   d, b                                        ; $6ec8: $50
	ld   e, b                                        ; $6ec9: $58
	ld   b, b                                        ; $6eca: $40
	ld   b, [hl]                                     ; $6ecb: $46
	ld   b, d                                        ; $6ecc: $42
	ld   b, e                                        ; $6ecd: $43
	add  b                                           ; $6ece: $80
	ld   b, c                                        ; $6ecf: $41
	rrca                                             ; $6ed0: $0f
	ld   b, d                                        ; $6ed1: $42
	ld   e, d                                        ; $6ed2: $5a
	ld   bc, $00a3                                   ; $6ed3: $01 $a3 $00
	ld   bc, $0a00                                   ; $6ed6: $01 $00 $0a
	nop                                              ; $6ed9: $00
	dec  sp                                          ; $6eda: $3b
	nop                                              ; $6edb: $00
	pop  af                                          ; $6edc: $f1
	nop                                              ; $6edd: $00
	call z, $0800                                    ; $6ede: $cc $00 $08
	adc  c                                           ; $6ee1: $89
	nop                                              ; $6ee2: $00
	add  b                                           ; $6ee3: $80
	jr   nz, jr_09f_6ee6                             ; $6ee4: $20 $00

jr_09f_6ee6:
	ld   [hl], b                                     ; $6ee6: $70
	add  c                                           ; $6ee7: $81
	jr   nc, @+$07                                   ; $6ee8: $30 $05

	ld   b, b                                        ; $6eea: $40
	nop                                              ; $6eeb: $00
	sub  b                                           ; $6eec: $90
	ld   [$0098], sp                                 ; $6eed: $08 $98 $00
	add  b                                           ; $6ef0: $80
	jr   nz, jr_09f_6e83                             ; $6ef1: $20 $90

	nop                                              ; $6ef3: $00
	add  b                                           ; $6ef4: $80
	jr   nz, jr_09f_6ef7                             ; $6ef5: $20 $00

jr_09f_6ef7:
	ld   [hl], b                                     ; $6ef7: $70
	add  c                                           ; $6ef8: $81
	jr   nc, @+$0a                                   ; $6ef9: $30 $08

	ld   b, b                                        ; $6efb: $40
	nop                                              ; $6efc: $00
	xor  b                                           ; $6efd: $a8
	ld   [hl], b                                     ; $6efe: $70
	ld   c, b                                        ; $6eff: $48
	ret  c                                           ; $6f00: $d8

	ld   [$3070], sp                                 ; $6f01: $08 $70 $30
	adc  c                                           ; $6f04: $89
	nop                                              ; $6f05: $00
	add  hl, bc                                      ; $6f06: $09
	inc  bc                                          ; $6f07: $03
	nop                                              ; $6f08: $00
	rlca                                             ; $6f09: $07
	inc  bc                                          ; $6f0a: $03
	rrca                                             ; $6f0b: $0f
	rlca                                             ; $6f0c: $07
	dec  e                                           ; $6f0d: $1d
	dec  c                                           ; $6f0e: $0d
	add  hl, sp                                      ; $6f0f: $39
	add  hl, de                                      ; $6f10: $19
	add  b                                           ; $6f11: $80
	jr   jr_09f_6f15                                 ; $6f12: $18 $01

	add  hl, de                                      ; $6f14: $19

jr_09f_6f15:
	ld   a, [de]                                     ; $6f15: $1a
	add  b                                           ; $6f16: $80
	jr   jr_09f_6f1c                                 ; $6f17: $18 $03

	ld   de, $1310                                   ; $6f19: $11 $10 $13

jr_09f_6f1c:
	ld   de, $0780                                   ; $6f1c: $11 $80 $07
	add  b                                           ; $6f1f: $80
	rrca                                             ; $6f20: $0f
	ld   a, [bc]                                     ; $6f21: $0a
	dec  e                                           ; $6f22: $1d
	dec  d                                           ; $6f23: $15
	inc  de                                          ; $6f24: $13
	add  hl, bc                                      ; $6f25: $09
	ld   l, h                                        ; $6f26: $6c
	ld   [hl+], a                                    ; $6f27: $22
	ld   a, [hl+]                                    ; $6f28: $2a
	ld   [hl+], a                                    ; $6f29: $22
	ld   a, [$6c6e]                                  ; $6f2a: $fa $6e $6c
	add  b                                           ; $6f2d: $80
	ld   l, l                                        ; $6f2e: $6d
	add  b                                           ; $6f2f: $80
	ld   l, h                                        ; $6f30: $6c
	ld   [bc], a                                     ; $6f31: $02
	ld   l, l                                        ; $6f32: $6d
	xor  l                                           ; $6f33: $ad
	dec  l                                           ; $6f34: $2d
	add  b                                           ; $6f35: $80
	dec  h                                           ; $6f36: $25
	ld   b, $4b                                      ; $6f37: $06 $4b
	ld   a, [bc]                                     ; $6f39: $0a
	ld   de, $7010                                   ; $6f3a: $11 $10 $70
	ld   [hl-], a                                    ; $6f3d: $32
	ld   a, [hl+]                                    ; $6f3e: $2a
	add  c                                           ; $6f3f: $81
	jr   z, jr_09f_6ec3                              ; $6f40: $28 $81

	add  hl, hl                                      ; $6f42: $29
	ld   [$d008], sp                                 ; $6f43: $08 $08 $d0
	ld   d, b                                        ; $6f46: $50
	rst  ToBoot                                         ; $6f47: $c7
	ldh  [$fe], a                                    ; $6f48: $e0 $fe
	ld   hl, sp-$01                                  ; $6f4a: $f8 $ff
	cp   $80                                         ; $6f4c: $fe $80
	rst  $38                                         ; $6f4e: $ff
	ld   b, $bf                                      ; $6f4f: $06 $bf
	cp   [hl]                                        ; $6f51: $be
	sbc  [hl]                                        ; $6f52: $9e
	sbc  a                                           ; $6f53: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f54: $cf
	rrc  e                                           ; $6f55: $cb $0b
	add  b                                           ; $6f57: $80

jr_09f_6f58:
	ld   [$c980], sp                                 ; $6f58: $08 $80 $c9
	add  b                                           ; $6f5b: $80
	db   $ed                                         ; $6f5c: $ed
	add  b                                           ; $6f5d: $80
	rst  $28                                         ; $6f5e: $ef
	add  hl, bc                                      ; $6f5f: $09
	cpl                                              ; $6f60: $2f
	xor  a                                           ; $6f61: $af
	adc  a                                           ; $6f62: $8f
	rst  ToBoot                                         ; $6f63: $c7
	ld   b, a                                        ; $6f64: $47
	ld   h, a                                        ; $6f65: $67
	daa                                              ; $6f66: $27
	scf                                              ; $6f67: $37
	or   a                                           ; $6f68: $b7
	cp   a                                           ; $6f69: $bf
	rst  $38                                         ; $6f6a: $ff
	nop                                              ; $6f6b: $00
	rst  $38                                         ; $6f6c: $ff
	nop                                              ; $6f6d: $00
	rst  $38                                         ; $6f6e: $ff
	nop                                              ; $6f6f: $00
	rst  $38                                         ; $6f70: $ff
	nop                                              ; $6f71: $00
	rst  $38                                         ; $6f72: $ff
	nop                                              ; $6f73: $00
	rst  $38                                         ; $6f74: $ff
	nop                                              ; $6f75: $00
	rst  $38                                         ; $6f76: $ff
	nop                                              ; $6f77: $00
	rst  $38                                         ; $6f78: $ff
	nop                                              ; $6f79: $00
	rst  $38                                         ; $6f7a: $ff
	nop                                              ; $6f7b: $00
	or   h                                           ; $6f7c: $b4
	nop                                              ; $6f7d: $00
	ldh  a, [c]                                      ; $6f7e: $f2
	nop                                              ; $6f7f: $00
	ld   bc, $f708                                   ; $6f80: $01 $08 $f7
	add  [hl]                                        ; $6f83: $86
	rst  $38                                         ; $6f84: $ff
	add  b                                           ; $6f85: $80
	ld   a, a                                        ; $6f86: $7f
	add  b                                           ; $6f87: $80
	rst  JumpTable                                         ; $6f88: $df
	add  b                                           ; $6f89: $80
	cp   a                                           ; $6f8a: $bf
	add  b                                           ; $6f8b: $80
	add  a                                           ; $6f8c: $87
	add  b                                           ; $6f8d: $80
	ccf                                              ; $6f8e: $3f
	add  b                                           ; $6f8f: $80
	cp   $84                                         ; $6f90: $fe $84
	rst  $38                                         ; $6f92: $ff
	add  d                                           ; $6f93: $82
	cp   a                                           ; $6f94: $bf
	add  b                                           ; $6f95: $80
	add  b                                           ; $6f96: $80
	add  b                                           ; $6f97: $80
	db   $fc                                         ; $6f98: $fc
	add  b                                           ; $6f99: $80
	ld   a, $80                                      ; $6f9a: $3e $80
	sbc  a                                           ; $6f9c: $9f
	add  b                                           ; $6f9d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f9e: $cf
	add  b                                           ; $6f9f: $80
	rst  $20                                         ; $6fa0: $e7
	add  b                                           ; $6fa1: $80
	di                                               ; $6fa2: $f3
	add  b                                           ; $6fa3: $80
	ei                                               ; $6fa4: $fb
	db   $10                                         ; $6fa5: $10
	rst  $38                                         ; $6fa6: $ff
	nop                                              ; $6fa7: $00
	add  b                                           ; $6fa8: $80
	nop                                              ; $6fa9: $00
	ld   [hl], b                                     ; $6faa: $70
	nop                                              ; $6fab: $00
	cp   b                                           ; $6fac: $b8
	add  b                                           ; $6fad: $80
	db   $ec                                         ; $6fae: $ec
	ret  nz                                          ; $6faf: $c0

	or   $e0                                         ; $6fb0: $f6 $e0
	ldh  [c], a                                      ; $6fb2: $e2
	ldh  [$f8], a                                    ; $6fb3: $e0 $f8
	ldh  a, [$f8]                                    ; $6fb5: $f0 $f8
	adc  l                                           ; $6fb7: $8d
	nop                                              ; $6fb8: $00
	ld   [bc], a                                     ; $6fb9: $02
	ld   c, b                                        ; $6fba: $48
	or   a                                           ; $6fbb: $b7
	ld   l, l                                        ; $6fbc: $6d
	add  b                                           ; $6fbd: $80
	dec  l                                           ; $6fbe: $2d
	ld   bc, $bd0d                                   ; $6fbf: $01 $0d $bd
	add  b                                           ; $6fc2: $80
	inc  d                                           ; $6fc3: $14
	add  b                                           ; $6fc4: $80
	pop  bc                                          ; $6fc5: $c1
	add  b                                           ; $6fc6: $80
	ret  nz                                          ; $6fc7: $c0

	ld   [bc], a                                     ; $6fc8: $02
	call c, $9998                                    ; $6fc9: $dc $98 $99
	add  b                                           ; $6fcc: $80
	cp   a                                           ; $6fcd: $bf
	add  e                                           ; $6fce: $83
	rst  JumpTable                                         ; $6fcf: $df
	inc  bc                                          ; $6fd0: $03
	adc  $cc                                         ; $6fd1: $ce $cc
	ld   d, h                                        ; $6fd3: $54
	ld   h, h                                        ; $6fd4: $64
	add  b                                           ; $6fd5: $80
	jr   nz, jr_09f_6f58                             ; $6fd6: $20 $80

	add  h                                           ; $6fd8: $84
	ld   bc, $bfad                                   ; $6fd9: $01 $ad $bf
	add  d                                           ; $6fdc: $82
	rst  $38                                         ; $6fdd: $ff
	dec  b                                           ; $6fde: $05
	ei                                               ; $6fdf: $fb
	ld   sp, hl                                      ; $6fe0: $f9
	jp   hl                                          ; $6fe1: $e9


	ld   [$80a0], a                                  ; $6fe2: $ea $a0 $80
	add  b                                           ; $6fe5: $80
	inc  d                                           ; $6fe6: $14
	add  b                                           ; $6fe7: $80
	sub  [hl]                                        ; $6fe8: $96
	ld   bc, $fbde                                   ; $6fe9: $01 $de $fb
	add  l                                           ; $6fec: $85
	ld   hl, sp+$00                                  ; $6fed: $f8 $00
	cp   $81                                         ; $6fef: $fe $81
	db   $fc                                         ; $6ff1: $fc
	add  b                                           ; $6ff2: $80
	call c, $3f01                                    ; $6ff3: $dc $01 $3f
	ld   a, $80                                      ; $6ff6: $3e $80
	sbc  c                                           ; $6ff8: $99
	add  d                                           ; $6ff9: $82
	or   b                                           ; $6ffa: $b0
	ld   bc, $b0b2                                   ; $6ffb: $01 $b2 $b0
	add  b                                           ; $6ffe: $80
	jr   nc, @-$7e                                   ; $6fff: $30 $80

	db   $10                                         ; $7001: $10
	dec  b                                           ; $7002: $05
	and  d                                           ; $7003: $a2
	nop                                              ; $7004: $00
	ld   d, a                                        ; $7005: $57
	ld   bc, $ee18                                   ; $7006: $01 $18 $ee
	add  d                                           ; $7009: $82
	ld   h, [hl]                                     ; $700a: $66
	add  b                                           ; $700b: $80
	ld   [hl], d                                     ; $700c: $72
	add  h                                           ; $700d: $84
	ld   [hl-], a                                    ; $700e: $32
	inc  bc                                          ; $700f: $03
	add  d                                           ; $7010: $82
	ld   [bc], a                                     ; $7011: $02
	ld   e, [hl]                                     ; $7012: $5e
	sbc  $80                                         ; $7013: $de $80
	rst  JumpTable                                         ; $7015: $df

jr_09f_7016:
	add  b                                           ; $7016: $80
	rst  $28                                         ; $7017: $ef
	add  b                                           ; $7018: $80
	ld   l, [hl]                                     ; $7019: $6e
	add  h                                           ; $701a: $84
	ld   h, [hl]                                     ; $701b: $66
	add  b                                           ; $701c: $80
	ld   h, h                                        ; $701d: $64
	add  b                                           ; $701e: $80
	halt                                             ; $701f: $76
	add  b                                           ; $7020: $80
	ld   l, [hl]                                     ; $7021: $6e
	add  b                                           ; $7022: $80
	ld   c, [hl]                                     ; $7023: $4e
	add  b                                           ; $7024: $80
	inc  e                                           ; $7025: $1c
	ld   bc, $3839                                   ; $7026: $01 $39 $38
	add  b                                           ; $7029: $80
	ld   [hl], b                                     ; $702a: $70
	add  b                                           ; $702b: $80
	ld   h, h                                        ; $702c: $64
	add  b                                           ; $702d: $80
	inc  c                                           ; $702e: $0c
	nop                                              ; $702f: $00
	cp   $9d                                         ; $7030: $fe $9d
	nop                                              ; $7032: $00
	ld   b, $1f                                      ; $7033: $06 $1f
	nop                                              ; $7035: $00
	stop                                             ; $7036: $10 $00
	ld   a, [bc]                                     ; $7038: $0a
	nop                                              ; $7039: $00
	inc  b                                           ; $703a: $04
	add  l                                           ; $703b: $85
	nop                                              ; $703c: $00
	inc  bc                                          ; $703d: $03
	inc  bc                                          ; $703e: $03
	ld   bc, $609c                                   ; $703f: $01 $9c $60
	add  b                                           ; $7042: $80
	nop                                              ; $7043: $00
	dec  c                                           ; $7044: $0d
	jr   jr_09f_7047                                 ; $7045: $18 $00

jr_09f_7047:
	dec  d                                           ; $7047: $15
	ld   bc, $0018                                   ; $7048: $01 $18 $00
	adc  b                                           ; $704b: $88
	add  b                                           ; $704c: $80
	adc  b                                           ; $704d: $88
	add  b                                           ; $704e: $80
	sbc  h                                           ; $704f: $9c
	add  b                                           ; $7050: $80
	inc  bc                                          ; $7051: $03
	ld   [$3880], sp                                 ; $7052: $08 $80 $38
	add  b                                           ; $7055: $80
	ret  z                                           ; $7056: $c8

	ld   bc, $9094                                   ; $7057: $01 $94 $90
	add  b                                           ; $705a: $80
	jr   nc, jr_09f_7060                             ; $705b: $30 $03

	ld   l, b                                        ; $705d: $68
	ld   h, b                                        ; $705e: $60
	ret  nc                                          ; $705f: $d0

jr_09f_7060:
	ret  nz                                          ; $7060: $c0

	add  b                                           ; $7061: $80
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	ldh  [$9b], a                                    ; $7064: $e0 $9b
	nop                                              ; $7066: $00
	ld   [bc], a                                     ; $7067: $02
	add  b                                           ; $7068: $80
	nop                                              ; $7069: $00
	add  d                                           ; $706a: $82
	add  l                                           ; $706b: $85
	ld   bc, $0700                                   ; $706c: $01 $00 $07
	add  c                                           ; $706f: $81
	inc  bc                                          ; $7070: $03
	inc  bc                                          ; $7071: $03
	cpl                                              ; $7072: $2f
	rlca                                             ; $7073: $07
	and  $06                                         ; $7074: $e6 $06
	add  b                                           ; $7076: $80
	add  b                                           ; $7077: $80
	ld   b, $90                                      ; $7078: $06 $90
	add  b                                           ; $707a: $80
	and  b                                           ; $707b: $a0
	add  b                                           ; $707c: $80
	or   b                                           ; $707d: $b0
	add  b                                           ; $707e: $80
	adc  b                                           ; $707f: $88

Call_09f_7080:
	add  c                                           ; $7080: $81
	add  b                                           ; $7081: $80
	dec  b                                           ; $7082: $05
	add  d                                           ; $7083: $82
	add  b                                           ; $7084: $80
	ld   b, e                                        ; $7085: $43
	nop                                              ; $7086: $00
	ld   h, [hl]                                     ; $7087: $66
	nop                                              ; $7088: $00
	add  b                                           ; $7089: $80
	add  b                                           ; $708a: $80
	ld   [bc], a                                     ; $708b: $02
	sub  c                                           ; $708c: $91
	add  b                                           ; $708d: $80
	sbc  [hl]                                        ; $708e: $9e
	add  e                                           ; $708f: $83
	sub  b                                           ; $7090: $90
	add  b                                           ; $7091: $80
	db   $10                                         ; $7092: $10
	add  b                                           ; $7093: $80
	jr   nc, jr_09f_7016                             ; $7094: $30 $80

	nop                                              ; $7096: $00
	add  b                                           ; $7097: $80
	ld   [bc], a                                     ; $7098: $02
	add  d                                           ; $7099: $82
	ld   [hl+], a                                    ; $709a: $22
	add  h                                           ; $709b: $84
	inc  de                                          ; $709c: $13
	add  b                                           ; $709d: $80
	dec  de                                          ; $709e: $1b
	add  b                                           ; $709f: $80
	nop                                              ; $70a0: $00
	ld   bc, $00fe                                   ; $70a1: $01 $fe $00
	add  c                                           ; $70a4: $81
	cp   $06                                         ; $70a5: $fe $06
	ld   hl, sp-$05                                  ; $70a7: $f8 $fb
	ld   h, b                                        ; $70a9: $60
	ld   a, h                                        ; $70aa: $7c
	ld   e, $fd                                      ; $70ab: $1e $fd
	db   $fc                                         ; $70ad: $fc
	add  b                                           ; $70ae: $80
	ld   [$f60c], sp                                 ; $70af: $08 $0c $f6
	ld   b, $1e                                      ; $70b2: $06 $1e
	ld   c, $7c                                      ; $70b4: $0e $7c
	inc  e                                           ; $70b6: $1c
	db   $fc                                         ; $70b7: $fc
	ld   a, h                                        ; $70b8: $7c
	ldh  a, [$d1]                                    ; $70b9: $f0 $d1
	pop  hl                                          ; $70bb: $e1
	inc  bc                                          ; $70bc: $03
	jp   $0780                                       ; $70bd: $c3 $80 $07


	ld   [de], a                                     ; $70c0: $12
	ccf                                              ; $70c1: $3f
	ld   e, h                                        ; $70c2: $5c
	nop                                              ; $70c3: $00
	ld   a, a                                        ; $70c4: $7f
	nop                                              ; $70c5: $00
	dec  e                                           ; $70c6: $1d
	inc  bc                                          ; $70c7: $03
	dec  b                                           ; $70c8: $05
	rst  $38                                         ; $70c9: $ff
	rst  $30                                         ; $70ca: $f7
	rst  $38                                         ; $70cb: $ff
	rst  $28                                         ; $70cc: $ef
	rst  $38                                         ; $70cd: $ff
	rst  JumpTable                                         ; $70ce: $df
	rst  $38                                         ; $70cf: $ff
	ccf                                              ; $70d0: $3f
	rst  $38                                         ; $70d1: $ff
	ld   de, $8000                                   ; $70d2: $11 $00 $80
	ld   b, b                                        ; $70d5: $40
	add  d                                           ; $70d6: $82
	ret  nz                                          ; $70d7: $c0

	ld   bc, $c0d2                                   ; $70d8: $01 $d2 $c0
	add  h                                           ; $70db: $84
	and  b                                           ; $70dc: $a0
	nop                                              ; $70dd: $00
	ld   a, [de]                                     ; $70de: $1a
	add  e                                           ; $70df: $83
	add  hl, de                                      ; $70e0: $19
	add  b                                           ; $70e1: $80
	dec  e                                           ; $70e2: $1d
	add  d                                           ; $70e3: $82
	inc  a                                           ; $70e4: $3c
	add  b                                           ; $70e5: $80
	cp   h                                           ; $70e6: $bc
	add  b                                           ; $70e7: $80
	cp   [hl]                                        ; $70e8: $be
	add  hl, bc                                      ; $70e9: $09
	add  a                                           ; $70ea: $87
	db   $10                                         ; $70eb: $10
	ret  c                                           ; $70ec: $d8

	add  b                                           ; $70ed: $80
	ld   l, b                                        ; $70ee: $68
	ld   d, b                                        ; $70ef: $50
	and  a                                           ; $70f0: $a7
	xor  b                                           ; $70f1: $a8
	ld   d, b                                        ; $70f2: $50
	ld   d, l                                        ; $70f3: $55
	add  b                                           ; $70f4: $80
	xor  c                                           ; $70f5: $a9
	ld   bc, $5455                                   ; $70f6: $01 $55 $54
	add  b                                           ; $70f9: $80
	xor  b                                           ; $70fa: $a8
	dec  bc                                          ; $70fb: $0b
	ld   a, h                                        ; $70fc: $7c
	inc  bc                                          ; $70fd: $03
	ld   h, d                                        ; $70fe: $62
	ld   b, $64                                      ; $70ff: $06 $64
	inc  c                                           ; $7101: $0c
	adc  b                                           ; $7102: $88
	ld   e, b                                        ; $7103: $58
	ld   d, b                                        ; $7104: $50
	or   b                                           ; $7105: $b0
	and  e                                           ; $7106: $a3
	ld   h, e                                        ; $7107: $63
	add  b                                           ; $7108: $80
	ld   l, a                                        ; $7109: $6f
	nop                                              ; $710a: $00
	ld   a, a                                        ; $710b: $7f
	add  b                                           ; $710c: $80
	rst  $38                                         ; $710d: $ff
	ld   [bc], a                                     ; $710e: $02
	ldh  a, [$30]                                    ; $710f: $f0 $30
	ccf                                              ; $7111: $3f
	add  b                                           ; $7112: $80
	rra                                              ; $7113: $1f
	add  b                                           ; $7114: $80
	ld   a, a                                        ; $7115: $7f
	add  [hl]                                        ; $7116: $86
	rst  $38                                         ; $7117: $ff
	ld   [$3ffc], sp                                 ; $7118: $08 $fc $3f
	dec  a                                           ; $711b: $3d

jr_09f_711c:
	pop  bc                                          ; $711c: $c1
	add  $fe                                         ; $711d: $c6 $fe
	ld   sp, hl                                      ; $711f: $f9
	rst  $38                                         ; $7120: $ff
	cp   $85                                         ; $7121: $fe $85
	rst  $38                                         ; $7123: $ff
	ld   bc, $ff00                                   ; $7124: $01 $00 $ff
	add  b                                           ; $7127: $80
	ldh  [$80], a                                    ; $7128: $e0 $80
	dec  e                                           ; $712a: $1d
	add  b                                           ; $712b: $80
	cp   $04                                         ; $712c: $fe $04
	ld   a, [hl]                                     ; $712e: $7e
	cp   $82                                         ; $712f: $fe $82
	cp   $fc                                         ; $7131: $fe $fc
	add  c                                           ; $7133: $81
	rst  $38                                         ; $7134: $ff
	ld   [bc], a                                     ; $7135: $02
	sbc  h                                           ; $7136: $9c
	ld   h, b                                        ; $7137: $60
	db   $e4                                         ; $7138: $e4
	add  e                                           ; $7139: $83
	ldh  [rSC], a                                    ; $713a: $e0 $02
	ret  nz                                          ; $713c: $c0

	ldh  [rAUD4LEN], a                               ; $713d: $e0 $20
	add  b                                           ; $713f: $80
	ldh  [$03], a                                    ; $7140: $e0 $03
	ld   h, b                                        ; $7142: $60
	ld   l, d                                        ; $7143: $6a
	ld   h, b                                        ; $7144: $60
	db   $d3                                         ; $7145: $d3
	add  d                                           ; $7146: $82
	cp   d                                           ; $7147: $ba
	add  c                                           ; $7148: $81
	cp   h                                           ; $7149: $bc
	ld   [bc], a                                     ; $714a: $02
	cp   l                                           ; $714b: $bd
	or   l                                           ; $714c: $b5
	push af                                          ; $714d: $f5
	add  b                                           ; $714e: $80
	db   $f4                                         ; $714f: $f4
	add  b                                           ; $7150: $80
	ldh  a, [$0c]                                    ; $7151: $f0 $0c
	ldh  [$b7], a                                    ; $7153: $e0 $b7
	ld   d, l                                        ; $7155: $55
	xor  l                                           ; $7156: $ad
	xor  e                                           ; $7157: $ab
	ld   a, e                                        ; $7158: $7b
	rlca                                             ; $7159: $07
	add  [hl]                                        ; $715a: $86
	ld   [hl], c                                     ; $715b: $71
	jr   nc, jr_09f_711c                             ; $715c: $30 $be

	adc  [hl]                                        ; $715e: $8e
	adc  a                                           ; $715f: $8f
	add  b                                           ; $7160: $80
	ret  nz                                          ; $7161: $c0

	ld   [bc], a                                     ; $7162: $02
	ldh  [$60], a                                    ; $7163: $e0 $60
	ld   a, a                                        ; $7165: $7f
	add  c                                           ; $7166: $81
	rst  $38                                         ; $7167: $ff
	inc  bc                                          ; $7168: $03
	ld   bc, $feff                                   ; $7169: $01 $ff $fe
	rst  $38                                         ; $716c: $ff
	add  c                                           ; $716d: $81
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	rst  $38                                         ; $7170: $ff
	add  b                                           ; $7171: $80
	nop                                              ; $7172: $00
	add  b                                           ; $7173: $80
	ccf                                              ; $7174: $3f
	add  h                                           ; $7175: $84
	rst  $38                                         ; $7176: $ff
	ld   [bc], a                                     ; $7177: $02
	rra                                              ; $7178: $1f
	rst  $38                                         ; $7179: $ff
	rra                                              ; $717a: $1f
	add  b                                           ; $717b: $80
	ld   a, a                                        ; $717c: $7f
	add  c                                           ; $717d: $81
	rst  $38                                         ; $717e: $ff
	ld   [$fe8f], sp                                 ; $717f: $08 $8f $fe
	adc  [hl]                                        ; $7182: $8e
	rst  $38                                         ; $7183: $ff
	rst  $28                                         ; $7184: $ef
	rst  JumpTable                                         ; $7185: $df
	rst  $10                                         ; $7186: $d7
	rst  JumpTable                                         ; $7187: $df
	rst  $38                                         ; $7188: $ff
	add  c                                           ; $7189: $81
	cp   a                                           ; $718a: $bf
	nop                                              ; $718b: $00
	ei                                               ; $718c: $fb
	add  c                                           ; $718d: $81
	ld   a, a                                        ; $718e: $7f
	ld   [bc], a                                     ; $718f: $02
	add  e                                           ; $7190: $83
	add  c                                           ; $7191: $81
	ld   bc, $ff8d                                   ; $7192: $01 $8d $ff
	nop                                              ; $7195: $00
	ldh  a, [c]                                      ; $7196: $f2
	add  d                                           ; $7197: $82
	ld   l, l                                        ; $7198: $6d
	add  c                                           ; $7199: $81
	ld   c, l                                        ; $719a: $4d
	add  e                                           ; $719b: $83
	ld   c, c                                        ; $719c: $49
	nop                                              ; $719d: $00
	add  hl, bc                                      ; $719e: $09
	add  b                                           ; $719f: $80
	add  hl, de                                      ; $71a0: $19
	nop                                              ; $71a1: $00
	rst  $38                                         ; $71a2: $ff
	add  d                                           ; $71a3: $82
	ldh  [$80], a                                    ; $71a4: $e0 $80
	ldh  [c], a                                      ; $71a6: $e2
	add  b                                           ; $71a7: $80
	db   $e3                                         ; $71a8: $e3
	add  b                                           ; $71a9: $80
	db   $eb                                         ; $71aa: $eb
	add  e                                           ; $71ab: $83
	rst  $28                                         ; $71ac: $ef
	nop                                              ; $71ad: $00
	db   $10                                         ; $71ae: $10
	add  b                                           ; $71af: $80
	nop                                              ; $71b0: $00
	ld   [bc], a                                     ; $71b1: $02
	ld   a, a                                        ; $71b2: $7f
	inc  e                                           ; $71b3: $1c
	sbc  h                                           ; $71b4: $9c
	add  b                                           ; $71b5: $80
	ret  nz                                          ; $71b6: $c0

	add  b                                           ; $71b7: $80
	rst  ToBoot                                         ; $71b8: $c7
	add  h                                           ; $71b9: $84
	rst  $38                                         ; $71ba: $ff
	add  b                                           ; $71bb: $80
	pop  bc                                          ; $71bc: $c1
	add  b                                           ; $71bd: $80
	sbc  a                                           ; $71be: $9f
	add  b                                           ; $71bf: $80

jr_09f_71c0:
	ccf                                              ; $71c0: $3f
	add  d                                           ; $71c1: $82
	rst  $38                                         ; $71c2: $ff
	db   $10                                         ; $71c3: $10
	cp   $ff                                         ; $71c4: $fe $ff
	ld   sp, hl                                      ; $71c6: $f9
	rst  $38                                         ; $71c7: $ff

jr_09f_71c8:
	rst  $20                                         ; $71c8: $e7
	rst  $38                                         ; $71c9: $ff
	pop  hl                                          ; $71ca: $e1
	rst  $38                                         ; $71cb: $ff
	ld   sp, hl                                      ; $71cc: $f9
	rst  $38                                         ; $71cd: $ff
	rst  $30                                         ; $71ce: $f7
	rst  $38                                         ; $71cf: $ff
	rst  $28                                         ; $71d0: $ef
	rst  $38                                         ; $71d1: $ff
	sbc  a                                           ; $71d2: $9f
	rst  $38                                         ; $71d3: $ff
	ld   a, a                                        ; $71d4: $7f
	add  e                                           ; $71d5: $83
	rst  $38                                         ; $71d6: $ff
	ld   a, [bc]                                     ; $71d7: $0a
	ldh  a, [$fc]                                    ; $71d8: $f0 $fc
	db   $ed                                         ; $71da: $ed
	ld   hl, sp-$02                                  ; $71db: $f8 $fe
	ldh  a, [$d8]                                    ; $71dd: $f0 $d8
	ret  nz                                          ; $71df: $c0

	jr   nc, jr_09f_71e2                             ; $71e0: $30 $00

jr_09f_71e2:
	ld   b, b                                        ; $71e2: $40
	add  e                                           ; $71e3: $83
	nop                                              ; $71e4: $00
	ld   [bc], a                                     ; $71e5: $02
	ld   bc, $8100                                   ; $71e6: $01 $00 $81
	adc  e                                           ; $71e9: $8b
	nop                                              ; $71ea: $00
	db   $10                                         ; $71eb: $10
	rst  $38                                         ; $71ec: $ff
	cp   $f1                                         ; $71ed: $fe $f1
	ld   a, a                                        ; $71ef: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71f0: $cf
	ccf                                              ; $71f1: $3f
	ld   c, a                                        ; $71f2: $4f
	rrca                                             ; $71f3: $0f
	daa                                              ; $71f4: $27
	rlca                                             ; $71f5: $07
	inc  de                                          ; $71f6: $13
	inc  bc                                          ; $71f7: $03
	ld   [$0500], sp                                 ; $71f8: $08 $00 $05
	nop                                              ; $71fb: $00
	db   $e4                                         ; $71fc: $e4
	add  b                                           ; $71fd: $80
	sbc  c                                           ; $71fe: $99
	nop                                              ; $71ff: $00
	add  hl, de                                      ; $7200: $19
	add  b                                           ; $7201: $80
	dec  de                                          ; $7202: $1b
	add  h                                           ; $7203: $84
	inc  de                                          ; $7204: $13
	add  d                                           ; $7205: $82
	inc  sp                                          ; $7206: $33
	nop                                              ; $7207: $00
	rst  $38                                         ; $7208: $ff
	add  b                                           ; $7209: $80
	rst  $28                                         ; $720a: $ef
	add  a                                           ; $720b: $87
	rst  $38                                         ; $720c: $ff
	add  d                                           ; $720d: $82
	ei                                               ; $720e: $fb
	ld   bc, $ff00                                   ; $720f: $01 $00 $ff
	add  b                                           ; $7212: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7213: $cf
	add  b                                           ; $7214: $80
	ccf                                              ; $7215: $3f
	ld   c, $7e                                      ; $7216: $0e $7e
	ld   a, a                                        ; $7218: $7f
	db   $fd                                         ; $7219: $fd
	rst  $38                                         ; $721a: $ff
	ei                                               ; $721b: $fb
	rst  $38                                         ; $721c: $ff
	rst  ToBoot                                         ; $721d: $c7
	rst  $38                                         ; $721e: $ff
	ccf                                              ; $721f: $3f
	rst  $38                                         ; $7220: $ff
	ccf                                              ; $7221: $3f
	rst  $38                                         ; $7222: $ff
	cp   a                                           ; $7223: $bf
	rst  $38                                         ; $7224: $ff
	ld   a, a                                        ; $7225: $7f
	sub  a                                           ; $7226: $97
	rst  $38                                         ; $7227: $ff
	add  b                                           ; $7228: $80
	cp   $02                                         ; $7229: $fe $02
	ld   a, a                                        ; $722b: $7f
	nop                                              ; $722c: $00
	ret  nz                                          ; $722d: $c0

	add  c                                           ; $722e: $81
	add  b                                           ; $722f: $80
	nop                                              ; $7230: $00
	and  b                                           ; $7231: $a0
	add  c                                           ; $7232: $81
	add  b                                           ; $7233: $80
	ld   b, $70                                      ; $7234: $06 $70
	nop                                              ; $7236: $00
	ld   [$8000], sp                                 ; $7237: $08 $00 $80
	nop                                              ; $723a: $00
	jr   jr_09f_71c0                                 ; $723b: $18 $83

	nop                                              ; $723d: $00
	ld   b, $70                                      ; $723e: $06 $70
	nop                                              ; $7240: $00
	ld   c, $00                                      ; $7241: $0e $00
	ld   b, c                                        ; $7243: $41
	nop                                              ; $7244: $00
	jr   nz, jr_09f_71c8                             ; $7245: $20 $81

	nop                                              ; $7247: $00
	inc  c                                           ; $7248: $0c

jr_09f_7249:
	dec  l                                           ; $7249: $2d
	nop                                              ; $724a: $00
	inc  c                                           ; $724b: $0c
	nop                                              ; $724c: $00
	ld   bc, $2000                                   ; $724d: $01 $00 $20
	nop                                              ; $7250: $00
	stop                                             ; $7251: $10 $00
	adc  [hl]                                        ; $7253: $8e
	nop                                              ; $7254: $00
	ld   a, [hl]                                     ; $7255: $7e
	add  c                                           ; $7256: $81
	nop                                              ; $7257: $00
	add  d                                           ; $7258: $82
	inc  sp                                          ; $7259: $33
	add  d                                           ; $725a: $82
	inc  hl                                          ; $725b: $23
	add  d                                           ; $725c: $82
	daa                                              ; $725d: $27
	add  d                                           ; $725e: $82
	rlca                                             ; $725f: $07
	add  b                                           ; $7260: $80
	ei                                               ; $7261: $fb
	add  b                                           ; $7262: $80
	di                                               ; $7263: $f3
	add  b                                           ; $7264: $80
	ldh  a, [c]                                      ; $7265: $f2
	add  d                                           ; $7266: $82
	or   $80                                         ; $7267: $f6 $80
	and  $80                                         ; $7269: $e6 $80
	db   $e4                                         ; $726b: $e4
	add  b                                           ; $726c: $80
	call z, $ff00                                    ; $726d: $cc $00 $ff
	rst  $38                                         ; $7270: $ff
	nop                                              ; $7271: $00
	rst  $38                                         ; $7272: $ff
	nop                                              ; $7273: $00
	rst  $38                                         ; $7274: $ff
	nop                                              ; $7275: $00
	rst  $38                                         ; $7276: $ff
	nop                                              ; $7277: $00
	rst  $38                                         ; $7278: $ff
	nop                                              ; $7279: $00
	rst  $38                                         ; $727a: $ff
	nop                                              ; $727b: $00
	rst  $38                                         ; $727c: $ff
	nop                                              ; $727d: $00
	rst  $38                                         ; $727e: $ff
	nop                                              ; $727f: $00
	push bc                                          ; $7280: $c5
	nop                                              ; $7281: $00
	ldh  [c], a                                      ; $7282: $e2
	nop                                              ; $7283: $00
	adc  d                                           ; $7284: $8a
	nop                                              ; $7285: $00
	inc  b                                           ; $7286: $04
	rlca                                             ; $7287: $07
	ld   [$000e], sp                                 ; $7288: $08 $0e $00
	ld   bc, $0080                                   ; $728b: $01 $80 $00
	dec  c                                           ; $728e: $0d
	rlca                                             ; $728f: $07
	nop                                              ; $7290: $00
	jr   @+$1e                                       ; $7291: $18 $1c

	inc  b                                           ; $7293: $04
	ld   [$0e10], sp                                 ; $7294: $08 $10 $0e
	rrca                                             ; $7297: $0f
	ld   hl, $4c00                                   ; $7298: $21 $00 $4c
	inc  c                                           ; $729b: $0c
	ld   a, a                                        ; $729c: $7f
	add  h                                           ; $729d: $84
	nop                                              ; $729e: $00
	ld   a, [bc]                                     ; $729f: $0a

jr_09f_72a0:
	ld   [bc], a                                     ; $72a0: $02
	inc  bc                                          ; $72a1: $03
	nop                                              ; $72a2: $00
	ld   bc, $f000                                   ; $72a3: $01 $00 $f0
	ld   [$2224], sp                                 ; $72a6: $08 $24 $22
	sbc  b                                           ; $72a9: $98
	sbc  c                                           ; $72aa: $99
	add  b                                           ; $72ab: $80
	inc  c                                           ; $72ac: $0c
	inc  c                                           ; $72ad: $0c
	ld   h, $2e                                      ; $72ae: $26 $2e
	ld   a, [bc]                                     ; $72b0: $0a
	rla                                              ; $72b1: $17
	dec  d                                           ; $72b2: $15
	dec  bc                                          ; $72b3: $0b
	ld   [bc], a                                     ; $72b4: $02
	adc  e                                           ; $72b5: $8b
	ld   b, $c5                                      ; $72b6: $06 $c5
	ld   h, c                                        ; $72b8: $61
	ld   hl, $87fe                                   ; $72b9: $21 $fe $87
	nop                                              ; $72bc: $00
	add  hl, bc                                      ; $72bd: $09
	add  b                                           ; $72be: $80
	nop                                              ; $72bf: $00
	ret  nz                                          ; $72c0: $c0

	add  d                                           ; $72c1: $82
	ret  nz                                          ; $72c2: $c0

	ld   h, b                                        ; $72c3: $60
	ld   e, c                                        ; $72c4: $59
	ld   b, b                                        ; $72c5: $40
	and  h                                           ; $72c6: $a4
	jr   nz, jr_09f_7249                             ; $72c7: $20 $80

	ld   sp, $1105                                   ; $72c9: $31 $05 $11
	ld   sp, $3322                                   ; $72cc: $31 $22 $33
	and  b                                           ; $72cf: $a0
	or   e                                           ; $72d0: $b3
	add  b                                           ; $72d1: $80
	and  d                                           ; $72d2: $a2
	ld   [bc], a                                     ; $72d3: $02
	add  [hl]                                        ; $72d4: $86
	and  h                                           ; $72d5: $a4
	rst  $38                                         ; $72d6: $ff
	add  b                                           ; $72d7: $80
	nop                                              ; $72d8: $00
	inc  b                                           ; $72d9: $04
	add  b                                           ; $72da: $80
	ld   [hl], b                                     ; $72db: $70
	nop                                              ; $72dc: $00
	ld   [$8000], sp                                 ; $72dd: $08 $00 $80
	jr   nc, jr_09f_72eb                             ; $72e0: $30 $09

	ld   h, h                                        ; $72e2: $64
	ld   h, b                                        ; $72e3: $60
	ld   c, d                                        ; $72e4: $4a
	ld   c, b                                        ; $72e5: $48
	inc  a                                           ; $72e6: $3c
	dec  a                                           ; $72e7: $3d
	ld   [hl], b                                     ; $72e8: $70
	ld   b, b                                        ; $72e9: $40
	or   b                                           ; $72ea: $b0

jr_09f_72eb:
	add  b                                           ; $72eb: $80
	add  b                                           ; $72ec: $80
	ld   c, $03                                      ; $72ed: $0e $03
	xor  c                                           ; $72ef: $a9
	ld   sp, hl                                      ; $72f0: $f9
	ld   d, b                                        ; $72f1: $50
	ldh  a, [$80]                                    ; $72f2: $f0 $80
	rst  $38                                         ; $72f4: $ff
	ld   bc, $f0e0                                   ; $72f5: $01 $e0 $f0
	add  b                                           ; $72f8: $80
	xor  $00                                         ; $72f9: $ee $00
	rra                                              ; $72fb: $1f
	add  b                                           ; $72fc: $80
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	add  b                                           ; $72ff: $80
	add  e                                           ; $7300: $83
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	ld   b, b                                        ; $7303: $40
	add  b                                           ; $7304: $80
	nop                                              ; $7305: $00
	add  b                                           ; $7306: $80
	add  b                                           ; $7307: $80
	ld   bc, $4060                                   ; $7308: $01 $60 $40
	add  d                                           ; $730b: $82
	nop                                              ; $730c: $00
	ld   bc, $9080                                   ; $730d: $01 $80 $90
	add  b                                           ; $7310: $80
	ld   d, b                                        ; $7311: $50
	add  b                                           ; $7312: $80
	jr   nz, jr_09f_7317                             ; $7313: $20 $02

	jr   nc, @+$22                                   ; $7315: $30 $20

jr_09f_7317:
	ld   h, b                                        ; $7317: $60
	add  b                                           ; $7318: $80
	jr   nz, jr_09f_72a0                             ; $7319: $20 $85

	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	ret  nz                                          ; $731d: $c0

	add  l                                           ; $731e: $85
	add  b                                           ; $731f: $80
	nop                                              ; $7320: $00
	ld   b, b                                        ; $7321: $40
	add  c                                           ; $7322: $81
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	add  b                                           ; $7325: $80
	adc  e                                           ; $7326: $8b
	nop                                              ; $7327: $00
	ld   bc, $f93e                                   ; $7328: $01 $3e $f9
	add  b                                           ; $732b: $80
	ld   a, [$f906]                                  ; $732c: $fa $06 $f9
	ld   hl, sp-$06                                  ; $732f: $f8 $fa
	ld   hl, sp-$04                                  ; $7331: $f8 $fc
	ldh  a, [$b0]                                    ; $7333: $f0 $b0
	add  b                                           ; $7335: $80
	ldh  a, [rSB]                                    ; $7336: $f0 $01
	ldh  [$60], a                                    ; $7338: $e0 $60
	add  b                                           ; $733a: $80
	ret  nz                                          ; $733b: $c0

	ld   bc, $9490                                   ; $733c: $01 $90 $94
	add  b                                           ; $733f: $80
	jr   nc, jr_09f_7346                             ; $7340: $30 $04

	ld   [hl], b                                     ; $7342: $70
	ld   [hl], e                                     ; $7343: $73
	ldh  a, [$f3]                                    ; $7344: $f0 $f3

jr_09f_7346:
	db   $e3                                         ; $7346: $e3
	add  c                                           ; $7347: $81
	pop  hl                                          ; $7348: $e1
	add  b                                           ; $7349: $80
	add  c                                           ; $734a: $81
	ld   bc, $ff01                                   ; $734b: $01 $01 $ff
	add  l                                           ; $734e: $85
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	add  b                                           ; $7351: $80
	add  c                                           ; $7352: $81
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	ld   b, b                                        ; $7355: $40
	add  c                                           ; $7356: $81
	add  b                                           ; $7357: $80
	ld   b, $a0                                      ; $7358: $06 $a0
	ret  nz                                          ; $735a: $c0

	ret  nc                                          ; $735b: $d0

	ldh  [$ec], a                                    ; $735c: $e0 $ec
	ldh  a, [$f3]                                    ; $735e: $f0 $f3
	add  b                                           ; $7360: $80
	ld   hl, sp-$7b                                  ; $7361: $f8 $85
	db   $fd                                         ; $7363: $fd
	nop                                              ; $7364: $00
	ld   [bc], a                                     ; $7365: $02
	add  l                                           ; $7366: $85
	nop                                              ; $7367: $00
	inc  bc                                          ; $7368: $03
	ld   hl, sp+$00                                  ; $7369: $f8 $00
	ld   a, a                                        ; $736b: $7f
	ld   hl, sp-$7c                                  ; $736c: $f8 $84
	rst  $38                                         ; $736e: $ff
	nop                                              ; $736f: $00
	cp   a                                           ; $7370: $bf
	add  a                                           ; $7371: $87
	rst  $38                                         ; $7372: $ff
	nop                                              ; $7373: $00
	cp   a                                           ; $7374: $bf
	add  c                                           ; $7375: $81
	rst  $38                                         ; $7376: $ff
	nop                                              ; $7377: $00
	ld   a, a                                        ; $7378: $7f
	add  a                                           ; $7379: $87
	nop                                              ; $737a: $00
	rlca                                             ; $737b: $07
	add  b                                           ; $737c: $80
	nop                                              ; $737d: $00
	ld   hl, sp-$80                                  ; $737e: $f8 $80
	cp   $f8                                         ; $7380: $fe $f8
	rst  $38                                         ; $7382: $ff
	cp   $8c                                         ; $7383: $fe $8c
	rst  $38                                         ; $7385: $ff
	add  hl, bc                                      ; $7386: $09
	ld   a, a                                        ; $7387: $7f
	nop                                              ; $7388: $00
	ldh  [$80], a                                    ; $7389: $e0 $80
	ld   hl, sp-$20                                  ; $738b: $f8 $e0
	cp   $f8                                         ; $738d: $fe $f8
	rst  $38                                         ; $738f: $ff
	cp   $82                                         ; $7390: $fe $82
	rst  $38                                         ; $7392: $ff
	add  b                                           ; $7393: $80
	db   $fd                                         ; $7394: $fd
	add  b                                           ; $7395: $80
	ei                                               ; $7396: $fb
	add  b                                           ; $7397: $80
	rst  $30                                         ; $7398: $f7
	add  b                                           ; $7399: $80
	rst  $28                                         ; $739a: $ef
	ld   a, [bc]                                     ; $739b: $0a
	xor  $ef                                         ; $739c: $ee $ef
	db   $dd                                         ; $739e: $dd
	rst  JumpTable                                         ; $739f: $df
	cp   e                                           ; $73a0: $bb
	cp   a                                           ; $73a1: $bf
	or   a                                           ; $73a2: $b7
	cp   a                                           ; $73a3: $bf
	ld   l, a                                        ; $73a4: $6f
	ld   a, a                                        ; $73a5: $7f
	ldh  [$87], a                                    ; $73a6: $e0 $87
	nop                                              ; $73a8: $00
	ld   [bc], a                                     ; $73a9: $02
	add  b                                           ; $73aa: $80
	nop                                              ; $73ab: $00
	ret  nz                                          ; $73ac: $c0

	add  e                                           ; $73ad: $83
	add  b                                           ; $73ae: $80
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	add  e                                           ; $73b1: $83
	add  b                                           ; $73b2: $80
	nop                                              ; $73b3: $00
	ret  nz                                          ; $73b4: $c0

	add  l                                           ; $73b5: $85
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	add  b                                           ; $73b8: $80
	add  l                                           ; $73b9: $85
	nop                                              ; $73ba: $00
	inc  bc                                          ; $73bb: $03
	ld   bc, $0200                                   ; $73bc: $01 $00 $02
	nop                                              ; $73bf: $00
	add  b                                           ; $73c0: $80
	ld   bc, $0303                                   ; $73c1: $01 $03 $03
	dec  b                                           ; $73c4: $05
	inc  b                                           ; $73c5: $04
	ld   [bc], a                                     ; $73c6: $02
	add  b                                           ; $73c7: $80
	nop                                              ; $73c8: $00
	add  c                                           ; $73c9: $81
	inc  bc                                          ; $73ca: $03
	ld   bc, $0405                                   ; $73cb: $01 $05 $04
	add  c                                           ; $73ce: $81
	nop                                              ; $73cf: $00
	add  c                                           ; $73d0: $81
	ld   bc, $0001                                   ; $73d1: $01 $01 $00
	ld   h, b                                        ; $73d4: $60
	add  c                                           ; $73d5: $81
	rra                                              ; $73d6: $1f
	ld   bc, $7fff                                   ; $73d7: $01 $ff $7f
	add  b                                           ; $73da: $80
	ld   l, a                                        ; $73db: $6f
	add  h                                           ; $73dc: $84
	ld   c, a                                        ; $73dd: $4f
	ld   bc, $2faf                                   ; $73de: $01 $af $2f
	add  b                                           ; $73e1: $80
	scf                                              ; $73e2: $37
	ld   [$1757], sp                                 ; $73e3: $08 $57 $17
	daa                                              ; $73e6: $27
	rlca                                             ; $73e7: $07
	inc  de                                          ; $73e8: $13
	inc  bc                                          ; $73e9: $03
	dec  bc                                          ; $73ea: $0b
	inc  bc                                          ; $73eb: $03
	dec  b                                           ; $73ec: $05
	add  c                                           ; $73ed: $81
	ld   bc, $0202                                   ; $73ee: $01 $02 $02
	nop                                              ; $73f1: $00
	ld   bc, $0083                                   ; $73f2: $01 $83 $00
	ld   c, $01                                      ; $73f5: $0e $01
	nop                                              ; $73f7: $00
	ld   [bc], a                                     ; $73f8: $02
	nop                                              ; $73f9: $00
	inc  b                                           ; $73fa: $04
	ld   [bc], a                                     ; $73fb: $02
	ld   a, [bc]                                     ; $73fc: $0a
	ld   b, $16                                      ; $73fd: $06 $16
	ld   c, $2f                                      ; $73ff: $0e $2f
	dec  e                                           ; $7401: $1d
	ld   e, l                                        ; $7402: $5d
	dec  a                                           ; $7403: $3d
	cp   h                                           ; $7404: $bc
	add  b                                           ; $7405: $80
	ld   a, h                                        ; $7406: $7c
	nop                                              ; $7407: $00
	db   $fc                                         ; $7408: $fc
	add  l                                           ; $7409: $85
	db   $fd                                         ; $740a: $fd
	ld   bc, $07f9                                   ; $740b: $01 $f9 $07
	add  c                                           ; $740e: $81
	nop                                              ; $740f: $00
	dec  b                                           ; $7410: $05
	ld   bc, $0e00                                   ; $7411: $01 $00 $0e
	nop                                              ; $7414: $00
	db   $fd                                         ; $7415: $fd
	dec  c                                           ; $7416: $0d
	add  d                                           ; $7417: $82
	ei                                               ; $7418: $fb
	add  d                                           ; $7419: $82
	rst  $30                                         ; $741a: $f7
	add  d                                           ; $741b: $82
	rst  $28                                         ; $741c: $ef
	inc  b                                           ; $741d: $04
	sbc  $df                                         ; $741e: $de $df
	db   $dd                                         ; $7420: $dd
	rst  JumpTable                                         ; $7421: $df
	cp   e                                           ; $7422: $bb
	add  c                                           ; $7423: $81
	cp   a                                           ; $7424: $bf
	ld   [bc], a                                     ; $7425: $02
	set  1, a                                        ; $7426: $cb $cf
	db   $fc                                         ; $7428: $fc
	add  a                                           ; $7429: $87
	nop                                              ; $742a: $00
	dec  b                                           ; $742b: $05
	rlca                                             ; $742c: $07
	nop                                              ; $742d: $00
	ccf                                              ; $742e: $3f
	rlca                                             ; $742f: $07
	rst  $38                                         ; $7430: $ff
	ccf                                              ; $7431: $3f
	adc  [hl]                                        ; $7432: $8e
	rst  $38                                         ; $7433: $ff
	ld   [$00fc], sp                                 ; $7434: $08 $fc $00
	rlca                                             ; $7437: $07
	inc  bc                                          ; $7438: $03
	rra                                              ; $7439: $1f
	rlca                                             ; $743a: $07
	ccf                                              ; $743b: $3f
	rra                                              ; $743c: $1f
	ld   l, a                                        ; $743d: $6f
	add  c                                           ; $743e: $81
	cpl                                              ; $743f: $2f
	nop                                              ; $7440: $00
	xor  a                                           ; $7441: $af
	add  e                                           ; $7442: $83
	ld   l, a                                        ; $7443: $6f
	nop                                              ; $7444: $00
	ld   h, a                                        ; $7445: $67
	add  e                                           ; $7446: $83
	ld   l, a                                        ; $7447: $6f
	jr   @+$5d                                       ; $7448: $18 $5b

	ld   [hl], a                                     ; $744a: $77
	ld   [hl], l                                     ; $744b: $75
	ld   [hl], a                                     ; $744c: $77
	ld   a, [hl]                                     ; $744d: $7e
	ld   a, e                                        ; $744e: $7b
	ld   l, e                                        ; $744f: $6b
	ld   [hl], e                                     ; $7450: $73
	ld   b, h                                        ; $7451: $44
	ld   b, b                                        ; $7452: $40
	ldh  [hScriptOpcodeParams], a                                    ; $7453: $e0 $a0
	jr   nc, @+$12                                   ; $7455: $30 $10

	jr   jr_09f_74c1                                 ; $7457: $18 $68

	ld   c, h                                        ; $7459: $4c
	ld   d, h                                        ; $745a: $54
	ld   b, l                                        ; $745b: $45
	dec  bc                                          ; $745c: $0b
	and  e                                           ; $745d: $a3
	and  [hl]                                        ; $745e: $a6
	ldh  [c], a                                      ; $745f: $e2
	pop  bc                                          ; $7460: $c1
	ldh  [$8f], a                                    ; $7461: $e0 $8f
	nop                                              ; $7463: $00
	add  c                                           ; $7464: $81
	ld   bc, $000a                                   ; $7465: $01 $0a $00
	ld   [bc], a                                     ; $7468: $02
	nop                                              ; $7469: $00
	inc  b                                           ; $746a: $04
	ld   bc, $1319                                   ; $746b: $01 $19 $13
	di                                               ; $746e: $f3
	rrca                                             ; $746f: $0f
	add  hl, bc                                      ; $7470: $09
	ld   sp, hl                                      ; $7471: $f9
	rst  $38                                         ; $7472: $ff
	nop                                              ; $7473: $00
	rst  $38                                         ; $7474: $ff
	nop                                              ; $7475: $00
	rst  $38                                         ; $7476: $ff
	nop                                              ; $7477: $00
	adc  e                                           ; $7478: $8b
	nop                                              ; $7479: $00
	add  hl, bc                                      ; $747a: $09
	db   $10                                         ; $747b: $10
	ldh  [$f8], a                                    ; $747c: $e0 $f8
	ldh  a, [$fc]                                    ; $747e: $f0 $fc
	ld   hl, sp-$02                                  ; $7480: $f8 $fe
	db   $fc                                         ; $7482: $fc
	ld   a, l                                        ; $7483: $7d
	ld   a, h                                        ; $7484: $7c
	add  b                                           ; $7485: $80
	inc  a                                           ; $7486: $3c
	add  b                                           ; $7487: $80
	jr   c, jr_09f_7495                              ; $7488: $38 $0b

	or   e                                           ; $748a: $b3
	or   b                                           ; $748b: $b0
	rst  $38                                         ; $748c: $ff
	nop                                              ; $748d: $00
	rrca                                             ; $748e: $0f
	inc  bc                                          ; $748f: $03
	rra                                              ; $7490: $1f
	rrca                                             ; $7491: $0f
	ld   a, a                                        ; $7492: $7f
	rra                                              ; $7493: $1f
	cp   a                                           ; $7494: $bf

jr_09f_7495:
	ccf                                              ; $7495: $3f
	add  b                                           ; $7496: $80
	ld   e, $82                                      ; $7497: $1e $82
	ld   c, $00                                      ; $7499: $0e $00
	pop  bc                                          ; $749b: $c1
	add  c                                           ; $749c: $81
	ret  nz                                          ; $749d: $c0

	add  b                                           ; $749e: $80
	add  b                                           ; $749f: $80
	nop                                              ; $74a0: $00
	inc  bc                                          ; $74a1: $03
	add  c                                           ; $74a2: $81
	ld   bc, $0980                                   ; $74a3: $01 $80 $09
	ld   bc, $1115                                   ; $74a6: $01 $15 $11
	add  b                                           ; $74a9: $80
	ld   [hl], e                                     ; $74aa: $73
	nop                                              ; $74ab: $00
	cp   [hl]                                        ; $74ac: $be
	add  c                                           ; $74ad: $81
	ld   b, c                                        ; $74ae: $41
	add  b                                           ; $74af: $80
	pop  bc                                          ; $74b0: $c1
	inc  de                                          ; $74b1: $13
	ret                                              ; $74b2: $c9


	pop  bc                                          ; $74b3: $c1
	ret  c                                           ; $74b4: $d8

	ret  nz                                          ; $74b5: $c0

	di                                               ; $74b6: $f3
	jp   $83e3                                       ; $74b7: $c3 $e3 $83


	add  l                                           ; $74ba: $85
	ld   b, c                                        ; $74bb: $41
	ei                                               ; $74bc: $fb
	add  b                                           ; $74bd: $80
	rst  ToBoot                                         ; $74be: $c7
	add  $a6                                         ; $74bf: $c6 $a6

jr_09f_74c1:
	and  h                                           ; $74c1: $a4
	inc  [hl]                                        ; $74c2: $34
	jr   nc, jr_09f_74d8                             ; $74c3: $30 $13

	inc  d                                           ; $74c5: $14
	add  b                                           ; $74c6: $80
	add  h                                           ; $74c7: $84
	ld   bc, $e8e3                                   ; $74c8: $01 $e3 $e8
	add  b                                           ; $74cb: $80
	ldh  [rSB], a                                    ; $74cc: $e0 $01
	ld   [$8024], sp                                 ; $74ce: $08 $24 $80
	inc  hl                                          ; $74d1: $23
	dec  b                                           ; $74d2: $05
	dec  l                                           ; $74d3: $2d
	ld   c, l                                        ; $74d4: $4d
	ld   e, h                                        ; $74d5: $5c
	inc  e                                           ; $74d6: $1c
	sub  b                                           ; $74d7: $90

jr_09f_74d8:
	ld   d, b                                        ; $74d8: $50
	add  b                                           ; $74d9: $80
	ld   b, e                                        ; $74da: $43
	add  c                                           ; $74db: $81
	rst  ToBoot                                         ; $74dc: $c7
	ld   [bc], a                                     ; $74dd: $02
	ld   b, a                                        ; $74de: $47
	xor  h                                           ; $74df: $ac
	db   $e3                                         ; $74e0: $e3
	add  b                                           ; $74e1: $80
	rst  ToBoot                                         ; $74e2: $c7
	add  b                                           ; $74e3: $80
	add  a                                           ; $74e4: $87
	inc  b                                           ; $74e5: $04
	rra                                              ; $74e6: $1f
	rrca                                             ; $74e7: $0f
	adc  a                                           ; $74e8: $8f
	adc  e                                           ; $74e9: $8b
	xor  e                                           ; $74ea: $ab
	add  b                                           ; $74eb: $80
	adc  e                                           ; $74ec: $8b
	inc  b                                           ; $74ed: $04
	adc  l                                           ; $74ee: $8d
	ld   c, l                                        ; $74ef: $4d
	ld   c, $76                                      ; $74f0: $0e $76
	push af                                          ; $74f2: $f5
	add  d                                           ; $74f3: $82
	pop  af                                          ; $74f4: $f1
	nop                                              ; $74f5: $00
	di                                               ; $74f6: $f3
	add  c                                           ; $74f7: $81
	ldh  a, [$82]                                    ; $74f8: $f0 $82
	ldh  [rSC], a                                    ; $74fa: $e0 $02
	jp   nz, $03c1                                   ; $74fc: $c2 $c1 $03

	add  e                                           ; $74ff: $83
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	ld   bc, $0085                                   ; $7502: $01 $85 $00
	add  b                                           ; $7505: $80
	add  b                                           ; $7506: $80
	rlca                                             ; $7507: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7508: $cf
	ld   [bc], a                                     ; $7509: $02
	ldh  a, [c]                                      ; $750a: $f2
	ld   bc, $0f31                                   ; $750b: $01 $31 $0f
	add  e                                           ; $750e: $83
	inc  bc                                          ; $750f: $03
	add  d                                           ; $7510: $82
	ld   bc, $4000                                   ; $7511: $01 $00 $40
	add  c                                           ; $7514: $81
	add  b                                           ; $7515: $80
	ld   bc, $c182                                   ; $7516: $01 $82 $c1
	add  h                                           ; $7519: $84
	ret  nz                                          ; $751a: $c0

	nop                                              ; $751b: $00
	jp   nz, $c081                                   ; $751c: $c2 $81 $c0

	add  d                                           ; $751f: $82
	ldh  [rSC], a                                    ; $7520: $e0 $02
	ld   [hl-], a                                    ; $7522: $32
	ret  nz                                          ; $7523: $c0

	ret  nc                                          ; $7524: $d0

	add  b                                           ; $7525: $80
	pop  bc                                          ; $7526: $c1
	dec  b                                           ; $7527: $05
	jp   $93bf                                       ; $7528: $c3 $bf $93


	inc  de                                          ; $752b: $13
	ld   c, $4e                                      ; $752c: $0e $4e
	add  b                                           ; $752e: $80
	ld   b, $04                                      ; $752f: $06 $04
	ld   [bc], a                                     ; $7531: $02
	ld   [hl+], a                                    ; $7532: $22
	inc  b                                           ; $7533: $04
	ld   c, e                                        ; $7534: $4b
	rrca                                             ; $7535: $0f
	add  e                                           ; $7536: $83
	ld   c, $01                                      ; $7537: $0e $01
	ld   l, $2d                                      ; $7539: $2e $2d
	add  b                                           ; $753b: $80
	inc  l                                           ; $753c: $2c
	ld   bc, $6a6c                                   ; $753d: $01 $6c $6a
	add  c                                           ; $7540: $81
	ld   l, b                                        ; $7541: $68
	ld   [bc], a                                     ; $7542: $02
	inc  bc                                          ; $7543: $03
	rra                                              ; $7544: $1f
	sbc  a                                           ; $7545: $9f
	add  e                                           ; $7546: $83
	rra                                              ; $7547: $1f
	add  b                                           ; $7548: $80
	ld   a, $80                                      ; $7549: $3e $80
	inc  a                                           ; $754b: $3c
	add  b                                           ; $754c: $80
	ld   a, b                                        ; $754d: $78
	add  b                                           ; $754e: $80
	ld   h, b                                        ; $754f: $60
	ld   [$42c7], sp                                 ; $7550: $08 $c7 $42
	rlc  b                                           ; $7553: $cb $00
	ld   a, [hl]                                     ; $7555: $7e
	nop                                              ; $7556: $00
	jr   nc, jr_09f_7559                             ; $7557: $30 $00

jr_09f_7559:
	ld   bc, $0081                                   ; $7559: $01 $81 $00
	nop                                              ; $755c: $00
	ld   [bc], a                                     ; $755d: $02
	add  c                                           ; $755e: $81
	ld   bc, wBGP                                   ; $755f: $01 $04 $c2
	nop                                              ; $7562: $00
	add  b                                           ; $7563: $80
	nop                                              ; $7564: $00
	add  b                                           ; $7565: $80
	add  c                                           ; $7566: $81
	ld   b, b                                        ; $7567: $40
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	add  l                                           ; $756a: $85
	add  b                                           ; $756b: $80
	add  b                                           ; $756c: $80
	nop                                              ; $756d: $00
	add  h                                           ; $756e: $84
	inc  b                                           ; $756f: $04
	add  b                                           ; $7570: $80
	inc  c                                           ; $7571: $0c
	add  d                                           ; $7572: $82
	ld   c, $80                                      ; $7573: $0e $80
	rra                                              ; $7575: $1f
	rst  $38                                         ; $7576: $ff
	nop                                              ; $7577: $00
	rst  $38                                         ; $7578: $ff
	nop                                              ; $7579: $00
	rst  $38                                         ; $757a: $ff
	nop                                              ; $757b: $00
	rst  $38                                         ; $757c: $ff
	nop                                              ; $757d: $00
	rst  $38                                         ; $757e: $ff
	nop                                              ; $757f: $00
	jp   hl                                          ; $7580: $e9


	nop                                              ; $7581: $00
	adc  h                                           ; $7582: $8c
	rst  $38                                         ; $7583: $ff
	jr   @+$01                                       ; $7584: $18 $ff

	jr   jr_09f_75e7                                 ; $7586: $18 $5f

	db   $10                                         ; $7588: $10
	ccf                                              ; $7589: $3f
	ld   [hl+], a                                    ; $758a: $22
	scf                                              ; $758b: $37
	ld   [hl+], a                                    ; $758c: $22
	ld   l, a                                        ; $758d: $6f
	ld   [hl+], a                                    ; $758e: $22
	ld   l, a                                        ; $758f: $6f
	ld   b, d                                        ; $7590: $42
	rst  ToBoot                                         ; $7591: $c7
	ld   l, h                                        ; $7592: $6c
	rst  $38                                         ; $7593: $ff
	ld   d, [hl]                                     ; $7594: $56
	rst  $38                                         ; $7595: $ff
	ld   l, e                                        ; $7596: $6b
	rst  $38                                         ; $7597: $ff
	ld   [hl], a                                     ; $7598: $77
	rst  $38                                         ; $7599: $ff
	call nz, $8083                                   ; $759a: $c4 $83 $80
	add  b                                           ; $759d: $80
	add  b                                           ; $759e: $80
	add  b                                           ; $759f: $80
	add  b                                           ; $75a0: $80
	add  b                                           ; $75a1: $80
	ld   hl, sp-$01                                  ; $75a2: $f8 $ff
	xor  b                                           ; $75a4: $a8
	rst  $38                                         ; $75a5: $ff
	call c, $acff                                    ; $75a6: $dc $ff $ac
	rst  $38                                         ; $75a9: $ff
	push af                                          ; $75aa: $f5
	rrca                                             ; $75ab: $0f
	dec  a                                           ; $75ac: $3d
	rlca                                             ; $75ad: $07
	dec  e                                           ; $75ae: $1d
	rlca                                             ; $75af: $07
	dec  e                                           ; $75b0: $1d
	rlca                                             ; $75b1: $07
	ld   a, [bc]                                     ; $75b2: $0a
	cp   $06                                         ; $75b3: $fe $06
	cp   $02                                         ; $75b5: $fe $02
	or   $02                                         ; $75b7: $f6 $02
	ld   a, [$da12]                                  ; $75b9: $fa $12 $da
	ld   [de], a                                     ; $75bc: $12
	jp   nc, $ea0a                                   ; $75bd: $d2 $0a $ea

	ld   a, [bc]                                     ; $75c0: $0a
	xor  $42                                         ; $75c1: $ee $42
	jp   $d382                                       ; $75c3: $c3 $82 $d3


	add  a                                           ; $75c6: $87
	push af                                          ; $75c7: $f5
	rlca                                             ; $75c8: $07
	push af                                          ; $75c9: $f5
	ld   b, $fd                                      ; $75ca: $06 $fd
	rrca                                             ; $75cc: $0f
	ld   hl, sp+$4e                                  ; $75cd: $f8 $4e
	ld   sp, hl                                      ; $75cf: $f9
	ld   c, c                                        ; $75d0: $49
	rst  $38                                         ; $75d1: $ff
	add  b                                           ; $75d2: $80
	add  b                                           ; $75d3: $80
	add  b                                           ; $75d4: $80
	add  b                                           ; $75d5: $80
	add  b                                           ; $75d6: $80
	add  b                                           ; $75d7: $80
	add  b                                           ; $75d8: $80
	add  b                                           ; $75d9: $80
	add  b                                           ; $75da: $80
	add  b                                           ; $75db: $80
	add  b                                           ; $75dc: $80
	add  b                                           ; $75dd: $80
	add  b                                           ; $75de: $80
	ret  nz                                          ; $75df: $c0

	add  sp, -$10                                    ; $75e0: $e8 $f0
	dec  c                                           ; $75e2: $0d
	rlca                                             ; $75e3: $07
	dec  c                                           ; $75e4: $0d
	rlca                                             ; $75e5: $07
	rrca                                             ; $75e6: $0f

jr_09f_75e7:
	rlca                                             ; $75e7: $07
	rrca                                             ; $75e8: $0f
	rlca                                             ; $75e9: $07
	rlca                                             ; $75ea: $07
	dec  c                                           ; $75eb: $0d
	rrca                                             ; $75ec: $0f
	add  hl, de                                      ; $75ed: $19
	rrca                                             ; $75ee: $0f
	ld   bc, $0f17                                   ; $75ef: $01 $17 $0f
	ld   a, [bc]                                     ; $75f2: $0a
	adc  $0e                                         ; $75f3: $ce $0e
	ld   c, [hl]                                     ; $75f5: $4e
	ld   b, $0e                                      ; $75f6: $06 $0e
	ld   b, $0e                                      ; $75f8: $06 $0e
	ld   b, $56                                      ; $75fa: $06 $56
	ld   [bc], a                                     ; $75fc: $02
	sub  $82                                         ; $75fd: $d6 $82
	xor  $82                                         ; $75ff: $ee $82
	xor  $8f                                         ; $7601: $ee $8f
	ld   hl, sp-$61                                  ; $7603: $f8 $9f
	pop  af                                          ; $7605: $f1
	dec  de                                          ; $7606: $1b
	rst  $30                                         ; $7607: $f7
	rra                                              ; $7608: $1f
	db   $fd                                         ; $7609: $fd
	dec  a                                           ; $760a: $3d
	jp   hl                                          ; $760b: $e9


	dec  a                                           ; $760c: $3d
	push hl                                          ; $760d: $e5
	ld   a, [hl]                                     ; $760e: $7e
	pop  hl                                          ; $760f: $e1
	ld   a, h                                        ; $7610: $7c
	ldh  [hScriptOpcodeParams+4], a                                    ; $7611: $e0 $a4
	ld   e, h                                        ; $7613: $5c
	ret  c                                           ; $7614: $d8

	ldh  [hScriptOpcodeParams], a                                    ; $7615: $e0 $a0
	or   b                                           ; $7617: $b0
	ldh  [$c0], a                                    ; $7618: $e0 $c0
	ldh  [rLCDC], a                                  ; $761a: $e0 $40
	ret  nz                                          ; $761c: $c0

	ret  nz                                          ; $761d: $c0

	add  b                                           ; $761e: $80
	ret  nz                                          ; $761f: $c0

	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	rra                                              ; $7622: $1f
	jr   jr_09f_7643                                 ; $7623: $18 $1e

	daa                                              ; $7625: $27
	ccf                                              ; $7626: $3f
	rrca                                             ; $7627: $0f
	ld   c, $06                                      ; $7628: $0e $06
	rlca                                             ; $762a: $07
	rlca                                             ; $762b: $07
	rlca                                             ; $762c: $07
	dec  b                                           ; $762d: $05
	ld   [bc], a                                     ; $762e: $02
	rlca                                             ; $762f: $07
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	add  d                                           ; $7632: $82
	cp   $c6                                         ; $7633: $fe $c6
	cp   $c6                                         ; $7635: $fe $c6
	cp   $c6                                         ; $7637: $fe $c6
	cp   $e2                                         ; $7639: $fe $e2
	ld   a, [hl]                                     ; $763b: $7e
	ld   h, d                                        ; $763c: $62
	ld   a, [hl]                                     ; $763d: $7e
	ldh  [c], a                                      ; $763e: $e2
	ld   a, $f2                                      ; $763f: $3e $f2
	ld   [hl], $7c                                   ; $7641: $36 $7c

jr_09f_7643:
	ldh  a, [$7c]                                    ; $7643: $f0 $7c
	ld   [hl], b                                     ; $7645: $70
	ld   a, [hl]                                     ; $7646: $7e
	ld   d, b                                        ; $7647: $50
	ld   a, [hl]                                     ; $7648: $7e
	ret  nc                                          ; $7649: $d0

	ld   a, [hl]                                     ; $764a: $7e
	ld   hl, sp+$7f                                  ; $764b: $f8 $7f
	ld   hl, sp+$7f                                  ; $764d: $f8 $7f
	db   $fc                                         ; $764f: $fc
	ld   e, a                                        ; $7650: $5f
	db   $fc                                         ; $7651: $fc
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	ld   bc, $0300                                   ; $7654: $01 $00 $03
	ld   bc, $0103                                   ; $7657: $01 $03 $01
	inc  bc                                          ; $765a: $03
	ld   bc, $0000                                   ; $765b: $01 $00 $00
	rlca                                             ; $765e: $07
	inc  b                                           ; $765f: $04
	add  e                                           ; $7660: $83
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	add  b                                           ; $7668: $80
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	ret  nz                                          ; $766e: $c0

	add  b                                           ; $766f: $80
	ld   bc, $5200                                   ; $7670: $01 $00 $52
	ld   [hl], $7a                                   ; $7673: $36 $7a
	ld   a, [de]                                     ; $7675: $1a
	ld   a, d                                        ; $7676: $7a
	ld   a, [de]                                     ; $7677: $1a
	ld   e, d                                        ; $7678: $5a
	ld   a, [hl-]                                    ; $7679: $3a
	ld   e, d                                        ; $767a: $5a
	ld   a, [hl-]                                    ; $767b: $3a
	cp   d                                           ; $767c: $ba
	ld   a, [hl]                                     ; $767d: $7e
	ld   a, [$fa7e]                                  ; $767e: $fa $7e $fa
	cp   $5f                                         ; $7681: $fe $5f
	cp   $57                                         ; $7683: $fe $57
	rst  $38                                         ; $7685: $ff
	ld   d, a                                        ; $7686: $57
	cp   $4b                                         ; $7687: $fe $4b
	cp   $ab                                         ; $7689: $fe $ab
	cp   $b7                                         ; $768b: $fe $b7
	cp   $bb                                         ; $768d: $fe $bb
	cp   $bf                                         ; $768f: $fe $bf
	cp   $81                                         ; $7691: $fe $81
	nop                                              ; $7693: $00
	ret  nz                                          ; $7694: $c0

	nop                                              ; $7695: $00
	and  b                                           ; $7696: $a0
	ret  nz                                          ; $7697: $c0

	ldh  a, [$60]                                    ; $7698: $f0 $60
	db   $fc                                         ; $769a: $fc
	jr   @+$01                                       ; $769b: $18 $ff

	rlca                                             ; $769d: $07
	cp   h                                           ; $769e: $bc
	inc  bc                                          ; $769f: $03
	adc  a                                           ; $76a0: $8f
	nop                                              ; $76a1: $00
	add  e                                           ; $76a2: $83
	ld   bc, $0307                                   ; $76a3: $01 $07 $03
	rrca                                             ; $76a6: $0f
	rrca                                             ; $76a7: $0f
	ccf                                              ; $76a8: $3f
	rra                                              ; $76a9: $1f
	rst  $38                                         ; $76aa: $ff
	ld   l, a                                        ; $76ab: $6f
	call $8d8f                                       ; $76ac: $cd $8f $8d
	rrca                                             ; $76af: $0f
	dec  c                                           ; $76b0: $0d
	rrca                                             ; $76b1: $0f
	cp   $ba                                         ; $76b2: $fe $ba
	cp   $da                                         ; $76b4: $fe $da
	cp   $da                                         ; $76b6: $fe $da
	cp   $7a                                         ; $76b8: $fe $7a
	cp   $76                                         ; $76ba: $fe $76
	cp   $36                                         ; $76bc: $fe $36
	cp   $ae                                         ; $76be: $fe $ae
	cp   $de                                         ; $76c0: $fe $de
	rst  $38                                         ; $76c2: $ff
	db   $db                                         ; $76c3: $db
	cp   $fe                                         ; $76c4: $fe $fe
	rst  $38                                         ; $76c6: $ff
	rst  $38                                         ; $76c7: $ff
	ld   a, l                                        ; $76c8: $7d
	rst  $38                                         ; $76c9: $ff
	ld   a, $ff                                      ; $76ca: $3e $ff
	dec  de                                          ; $76cc: $1b
	rst  $38                                         ; $76cd: $ff
	inc  c                                           ; $76ce: $0c
	rst  $38                                         ; $76cf: $ff
	inc  b                                           ; $76d0: $04
	rst  $38                                         ; $76d1: $ff
	nop                                              ; $76d2: $00
	add  b                                           ; $76d3: $80
	ret  nz                                          ; $76d4: $c0

	ret  nz                                          ; $76d5: $c0

	jr   nz, jr_09f_76f8                             ; $76d6: $20 $20

	sub  b                                           ; $76d8: $90
	sub  b                                           ; $76d9: $90
	ret  z                                           ; $76da: $c8

	ret  z                                           ; $76db: $c8

	inc  h                                           ; $76dc: $24
	db   $e4                                         ; $76dd: $e4
	ld   [de], a                                     ; $76de: $12
	ldh  a, [c]                                      ; $76df: $f2
	add  hl, bc                                      ; $76e0: $09
	ld   sp, hl                                      ; $76e1: $f9
	inc  c                                           ; $76e2: $0c
	rrca                                             ; $76e3: $0f
	ld   c, $0f                                      ; $76e4: $0e $0f
	ld   c, $0f                                      ; $76e6: $0e $0f
	dec  bc                                          ; $76e8: $0b
	dec  bc                                          ; $76e9: $0b
	dec  hl                                          ; $76ea: $2b
	dec  bc                                          ; $76eb: $0b
	ld   l, e                                        ; $76ec: $6b
	dec  bc                                          ; $76ed: $0b
	ld   [hl], a                                     ; $76ee: $77
	rla                                              ; $76ef: $17
	rst  $30                                         ; $76f0: $f7
	rla                                              ; $76f1: $17
	cp   $ba                                         ; $76f2: $fe $ba
	cp   $fa                                         ; $76f4: $fe $fa
	cp   $72                                         ; $76f6: $fe $72

jr_09f_76f8:
	cp   $e6                                         ; $76f8: $fe $e6
	cp   $de                                         ; $76fa: $fe $de
	cp   $fe                                         ; $76fc: $fe $fe
	cp   $ee                                         ; $76fe: $fe $ee
	cp   $fe                                         ; $7700: $fe $fe
	ld   b, d                                        ; $7702: $42
	jp   $d382                                       ; $7703: $c3 $82 $d3


	add  a                                           ; $7706: $87
	push af                                          ; $7707: $f5
	rlca                                             ; $7708: $07
	push af                                          ; $7709: $f5
	ld   b, $fd                                      ; $770a: $06 $fd
	rrca                                             ; $770c: $0f
	ld   hl, sp+$4f                                  ; $770d: $f8 $4f
	ld   hl, sp+$4f                                  ; $770f: $f8 $4f
	ld   hl, sp-$80                                  ; $7711: $f8 $80
	add  b                                           ; $7713: $80
	add  b                                           ; $7714: $80
	add  b                                           ; $7715: $80
	add  b                                           ; $7716: $80
	add  b                                           ; $7717: $80
	add  b                                           ; $7718: $80
	add  b                                           ; $7719: $80
	add  b                                           ; $771a: $80
	add  b                                           ; $771b: $80
	add  b                                           ; $771c: $80
	add  b                                           ; $771d: $80
	add  b                                           ; $771e: $80
	add  b                                           ; $771f: $80
	add  b                                           ; $7720: $80
	ret  nz                                          ; $7721: $c0

	dec  c                                           ; $7722: $0d
	rlca                                             ; $7723: $07
	dec  c                                           ; $7724: $0d
	rlca                                             ; $7725: $07
	rrca                                             ; $7726: $0f
	rlca                                             ; $7727: $07
	rrca                                             ; $7728: $0f
	rlca                                             ; $7729: $07
	rlca                                             ; $772a: $07
	dec  c                                           ; $772b: $0d
	rrca                                             ; $772c: $0f
	add  hl, de                                      ; $772d: $19
	rrca                                             ; $772e: $0f
	ld   bc, $011f                                   ; $772f: $01 $1f $01
	adc  a                                           ; $7732: $8f
	ei                                               ; $7733: $fb
	sub  a                                           ; $7734: $97
	db   $fc                                         ; $7735: $fc
	rra                                              ; $7736: $1f
	pop  af                                          ; $7737: $f1
	dec  de                                          ; $7738: $1b
	rst  $30                                         ; $7739: $f7
	dec  a                                           ; $773a: $3d
	rst  $38                                         ; $773b: $ff
	dec  a                                           ; $773c: $3d
	push hl                                          ; $773d: $e5
	ld   a, [hl]                                     ; $773e: $7e
	pop  hl                                          ; $773f: $e1
	ld   a, h                                        ; $7740: $7c
	ldh  [$f8], a                                    ; $7741: $e0 $f8
	ldh  a, [$fc]                                    ; $7743: $f0 $fc
	inc  c                                           ; $7745: $0c
	ret  nc                                          ; $7746: $d0

	ldh  [$b0], a                                    ; $7747: $e0 $b0
	or   b                                           ; $7749: $b0
	ret  nz                                          ; $774a: $c0

	ldh  [$e0], a                                    ; $774b: $e0 $e0
	ld   b, b                                        ; $774d: $40
	ret  nc                                          ; $774e: $d0

	ldh  [rP1], a                                    ; $774f: $e0 $00
	nop                                              ; $7751: $00
	rrca                                             ; $7752: $0f
	rra                                              ; $7753: $1f
	rra                                              ; $7754: $1f
	jr   nc, @+$40                                   ; $7755: $30 $3e

	rlca                                             ; $7757: $07
	ld   c, $0e                                      ; $7758: $0e $0e
	rlca                                             ; $775a: $07
	rlca                                             ; $775b: $07
	rlca                                             ; $775c: $07
	dec  b                                           ; $775d: $05
	rlca                                             ; $775e: $07
	rrca                                             ; $775f: $0f
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	add  d                                           ; $7762: $82
	cp   $c6                                         ; $7763: $fe $c6
	cp   $c6                                         ; $7765: $fe $c6
	cp   $c6                                         ; $7767: $fe $c6
	cp   $62                                         ; $7769: $fe $62
	cp   $62                                         ; $776b: $fe $62
	ld   a, [hl]                                     ; $776d: $7e
	ld   h, d                                        ; $776e: $62
	cp   [hl]                                        ; $776f: $be
	ldh  a, [c]                                      ; $7770: $f2
	ld   [hl], $42                                   ; $7771: $36 $42
	jp   $d382                                       ; $7773: $c3 $82 $d3


	add  a                                           ; $7776: $87
	push af                                          ; $7777: $f5
	rlca                                             ; $7778: $07
	push af                                          ; $7779: $f5
	ld   b, $fd                                      ; $777a: $06 $fd
	rrca                                             ; $777c: $0f
	ld   hl, sp+$48                                  ; $777d: $f8 $48
	rst  $38                                         ; $777f: $ff
	ld   c, a                                        ; $7780: $4f
	ld   sp, hl                                      ; $7781: $f9
	dec  c                                           ; $7782: $0d
	rlca                                             ; $7783: $07
	dec  c                                           ; $7784: $0d
	rlca                                             ; $7785: $07
	rrca                                             ; $7786: $0f
	rlca                                             ; $7787: $07
	rrca                                             ; $7788: $0f
	rlca                                             ; $7789: $07
	rlca                                             ; $778a: $07
	dec  c                                           ; $778b: $0d
	rrca                                             ; $778c: $0f
	add  hl, de                                      ; $778d: $19
	rrca                                             ; $778e: $0f
	ld   bc, $031f                                   ; $778f: $01 $1f $03
	add  sp, $70                                     ; $7792: $e8 $70
	sub  $ec                                         ; $7794: $d6 $ec
	xor  h                                           ; $7796: $ac
	or   b                                           ; $7797: $b0
	ldh  a, [$c0]                                    ; $7798: $f0 $c0
	ldh  [rLCDC], a                                  ; $779a: $e0 $40
	ret  nz                                          ; $779c: $c0

	ret  nz                                          ; $779d: $c0

	add  b                                           ; $779e: $80
	ret  nz                                          ; $779f: $c0

	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	scf                                              ; $77a2: $37
	inc  c                                           ; $77a3: $0c
	ld   a, $1b                                      ; $77a4: $3e $1b
	rra                                              ; $77a6: $1f
	cpl                                              ; $77a7: $2f
	ld   c, $06                                      ; $77a8: $0e $06
	rlca                                             ; $77aa: $07
	rlca                                             ; $77ab: $07
	rlca                                             ; $77ac: $07
	dec  b                                           ; $77ad: $05
	ld   [bc], a                                     ; $77ae: $02
	rlca                                             ; $77af: $07
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	ld   bc, $0300                                   ; $77b4: $01 $00 $03
	ld   bc, $0103                                   ; $77b7: $01 $03 $01
	inc  bc                                          ; $77ba: $03
	ld   bc, $0000                                   ; $77bb: $01 $00 $00
	rlca                                             ; $77be: $07
	inc  b                                           ; $77bf: $04
	add  [hl]                                        ; $77c0: $86
	nop                                              ; $77c1: $00
	add  e                                           ; $77c2: $83
	nop                                              ; $77c3: $00
	ret  nz                                          ; $77c4: $c0

	nop                                              ; $77c5: $00
	and  b                                           ; $77c6: $a0
	ret  nz                                          ; $77c7: $c0

	ldh  a, [$60]                                    ; $77c8: $f0 $60
	db   $fc                                         ; $77ca: $fc
	jr   @+$01                                       ; $77cb: $18 $ff

	rlca                                             ; $77cd: $07
	cp   h                                           ; $77ce: $bc
	inc  bc                                          ; $77cf: $03
	adc  a                                           ; $77d0: $8f
	nop                                              ; $77d1: $00
	inc  bc                                          ; $77d2: $03
	ld   bc, $0307                                   ; $77d3: $01 $07 $03
	rrca                                             ; $77d6: $0f
	rrca                                             ; $77d7: $0f
	ccf                                              ; $77d8: $3f
	rra                                              ; $77d9: $1f
	rst  $38                                         ; $77da: $ff
	ld   l, a                                        ; $77db: $6f
	call $8d8f                                       ; $77dc: $cd $8f $8d
	rrca                                             ; $77df: $0f
	dec  c                                           ; $77e0: $0d
	rrca                                             ; $77e1: $0f
	ld   b, d                                        ; $77e2: $42
	jp   $d382                                       ; $77e3: $c3 $82 $d3


	add  a                                           ; $77e6: $87
	push af                                          ; $77e7: $f5
	rlca                                             ; $77e8: $07
	push af                                          ; $77e9: $f5
	ld   b, $fd                                      ; $77ea: $06 $fd
	rrca                                             ; $77ec: $0f
	ld   hl, sp+$4f                                  ; $77ed: $f8 $4f
	ld   hl, sp+$4f                                  ; $77ef: $f8 $4f
	ld   hl, sp-$80                                  ; $77f1: $f8 $80
	add  b                                           ; $77f3: $80
	add  b                                           ; $77f4: $80
	add  b                                           ; $77f5: $80
	add  b                                           ; $77f6: $80
	add  b                                           ; $77f7: $80
	add  b                                           ; $77f8: $80
	add  b                                           ; $77f9: $80
	add  b                                           ; $77fa: $80
	add  b                                           ; $77fb: $80
	add  b                                           ; $77fc: $80
	add  b                                           ; $77fd: $80
	add  b                                           ; $77fe: $80
	add  b                                           ; $77ff: $80
	add  h                                           ; $7800: $84
	call c, $070d                                    ; $7801: $dc $0d $07
	dec  c                                           ; $7804: $0d
	rlca                                             ; $7805: $07
	rrca                                             ; $7806: $0f
	rlca                                             ; $7807: $07
	rrca                                             ; $7808: $0f
	rlca                                             ; $7809: $07
	rlca                                             ; $780a: $07
	dec  c                                           ; $780b: $0d
	rrca                                             ; $780c: $0f
	add  hl, de                                      ; $780d: $19
	rrca                                             ; $780e: $0f
	ld   bc, $3917                                   ; $780f: $01 $17 $39
	adc  l                                           ; $7812: $8d
	ei                                               ; $7813: $fb
	sub  a                                           ; $7814: $97
	cp   $1f                                         ; $7815: $fe $1f
	di                                               ; $7817: $f3
	dec  de                                          ; $7818: $1b
	rst  $30                                         ; $7819: $f7
	dec  a                                           ; $781a: $3d
	db   $fd                                         ; $781b: $fd
	dec  a                                           ; $781c: $3d
	push hl                                          ; $781d: $e5
	ld   a, [hl]                                     ; $781e: $7e
	pop  hl                                          ; $781f: $e1
	ld   a, h                                        ; $7820: $7c
	ldh  [$ec], a                                    ; $7821: $e0 $ec
	ldh  a, [$f8]                                    ; $7823: $f0 $f8
	nop                                              ; $7825: $00
	add  b                                           ; $7826: $80
	ldh  a, [hScriptOpcodeParams]                                    ; $7827: $f0 $a0
	or   b                                           ; $7829: $b0
	ldh  [$c0], a                                    ; $782a: $e0 $c0
	ret  nz                                          ; $782c: $c0

	ld   b, b                                        ; $782d: $40
	ret  nz                                          ; $782e: $c0

	ldh  [rP1], a                                    ; $782f: $e0 $00
	nop                                              ; $7831: $00
	dec  [hl]                                        ; $7832: $35
	rrca                                             ; $7833: $0f
	rra                                              ; $7834: $1f
	ld   bc, $0f16                                   ; $7835: $01 $16 $0f
	ld   c, $0e                                      ; $7838: $0e $0e
	rlca                                             ; $783a: $07
	rlca                                             ; $783b: $07
	rlca                                             ; $783c: $07
	dec  b                                           ; $783d: $05
	ld   b, $0f                                      ; $783e: $06 $0f
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
	ret  nz                                          ; $7882: $c0

	rst  $38                                         ; $7883: $ff
	add  b                                           ; $7884: $80
	rst  $38                                         ; $7885: $ff
	nop                                              ; $7886: $00
	rst  $38                                         ; $7887: $ff
	ld   bc, $81ff                                   ; $7888: $01 $ff $81
	rst  $38                                         ; $788b: $ff
	ld   [bc], a                                     ; $788c: $02
	rst  $38                                         ; $788d: $ff
	ld   b, $ff                                      ; $788e: $06 $ff
	inc  b                                           ; $7890: $04
	xor  $00                                         ; $7891: $ee $00
	rst  $38                                         ; $7893: $ff
	ld   b, c                                        ; $7894: $41
	rst  $38                                         ; $7895: $ff
	ret  nz                                          ; $7896: $c0

	rst  $38                                         ; $7897: $ff
	add  e                                           ; $7898: $83
	rst  $38                                         ; $7899: $ff
	rlca                                             ; $789a: $07
	cp   $17                                         ; $789b: $fe $17
	db   $fc                                         ; $789d: $fc
	ld   d, $fc                                      ; $789e: $16 $fc
	ld   d, $9c                                      ; $78a0: $16 $9c
	ldh  [rIE], a                                    ; $78a2: $e0 $ff
	ldh  [rIE], a                                    ; $78a4: $e0 $ff
	ret  nz                                          ; $78a6: $c0

	rst  $38                                         ; $78a7: $ff
	ldh  a, [rIE]                                    ; $78a8: $f0 $ff
	ld   hl, sp-$21                                  ; $78aa: $f8 $df
	jr   c, jr_09f_78bd                              ; $78ac: $38 $0f

	inc  e                                           ; $78ae: $1c
	rrca                                             ; $78af: $0f
	inc  e                                           ; $78b0: $1c
	ld   c, $0e                                      ; $78b1: $0e $0e
	cp   $06                                         ; $78b3: $fe $06
	cp   $02                                         ; $78b5: $fe $02
	cp   $42                                         ; $78b7: $fe $42
	cp   $22                                         ; $78b9: $fe $22
	cp   $22                                         ; $78bb: $fe $22

jr_09f_78bd:
	cp   $12                                         ; $78bd: $fe $12
	sbc  $12                                         ; $78bf: $de $12
	sbc  $0c                                         ; $78c1: $de $0c
	call z, $9d08                                    ; $78c3: $cc $08 $9d
	jr   jr_09f_7907                                 ; $78c6: $18 $3f

	jr   @-$3f                                       ; $78c8: $18 $bf

	add  hl, de                                      ; $78ca: $19
	rst  $38                                         ; $78cb: $ff
	dec  sp                                          ; $78cc: $3b
	rst  $28                                         ; $78cd: $ef
	ccf                                              ; $78ce: $3f
	rst  $28                                         ; $78cf: $ef
	ld   l, h                                        ; $78d0: $6c
	ei                                               ; $78d1: $fb
	inc  l                                           ; $78d2: $2c
	jr   c, jr_09f_7901                              ; $78d3: $38 $2c

	ld   hl, sp+$2c                                  ; $78d5: $f8 $2c
	ld   hl, sp+$2c                                  ; $78d7: $f8 $2c
	ld   hl, sp+$7c                                  ; $78d9: $f8 $7c
	ret  c                                           ; $78db: $d8

	ld   a, h                                        ; $78dc: $7c
	ret  c                                           ; $78dd: $d8

	call c, $aae8                                    ; $78de: $dc $e8 $aa
	db   $f4                                         ; $78e1: $f4
	inc  e                                           ; $78e2: $1c
	rrca                                             ; $78e3: $0f
	inc  e                                           ; $78e4: $1c
	rrca                                             ; $78e5: $0f
	ld   e, $0f                                      ; $78e6: $1e $0f
	ld   e, $0b                                      ; $78e8: $1e $0b
	ld   e, $0b                                      ; $78ea: $1e $0b
	ld   e, $0b                                      ; $78ec: $1e $0b
	ld   l, $13                                      ; $78ee: $2e $13
	ccf                                              ; $78f0: $3f
	rra                                              ; $78f1: $1f
	ld   [de], a                                     ; $78f2: $12
	ld   e, $0a                                      ; $78f3: $1e $0a
	xor  d                                           ; $78f5: $aa
	ld   a, [bc]                                     ; $78f6: $0a
	ld   [$fa0a], a                                  ; $78f7: $ea $0a $fa
	ld   a, [bc]                                     ; $78fa: $0a
	ld   a, [$fe8a]                                  ; $78fb: $fa $8a $fe
	sbc  [hl]                                        ; $78fe: $9e
	cp   $9e                                         ; $78ff: $fe $9e

jr_09f_7901:
	cp   $7d                                         ; $7901: $fe $7d
	db   $e3                                         ; $7903: $e3
	xor  $e7                                         ; $7904: $ee $e7
	db   $fc                                         ; $7906: $fc

jr_09f_7907:
	ld   [$9bf3], a                                  ; $7907: $ea $f3 $9b
	xor  e                                           ; $790a: $ab
	db   $d3                                         ; $790b: $d3
	ldh  a, [c]                                      ; $790c: $f2
	jp   $c3f6                                       ; $790d: $c3 $f6 $c3


	ei                                               ; $7910: $fb
	ld   b, b                                        ; $7911: $40
	sbc  $e0                                         ; $7912: $de $e0
	ld   a, b                                        ; $7914: $78
	ldh  [$60], a                                    ; $7915: $e0 $60
	ret  nz                                          ; $7917: $c0

	ldh  [$c0], a                                    ; $7918: $e0 $c0
	ld   h, b                                        ; $791a: $60
	ret  nz                                          ; $791b: $c0

	add  b                                           ; $791c: $80
	ld   b, b                                        ; $791d: $40
	ld   b, b                                        ; $791e: $40
	add  b                                           ; $791f: $80
	add  b                                           ; $7920: $80
	nop                                              ; $7921: $00
	ld   a, d                                        ; $7922: $7a
	daa                                              ; $7923: $27
	ld   l, a                                        ; $7924: $6f
	ld   b, $49                                      ; $7925: $06 $49
	rra                                              ; $7927: $1f
	inc  de                                          ; $7928: $13
	dec  bc                                          ; $7929: $0b
	rrca                                             ; $792a: $0f
	ld   c, $0f                                      ; $792b: $0e $0f
	ld   c, $0b                                      ; $792d: $0e $0b
	ld   c, $1c                                      ; $792f: $0e $1c
	ld   a, [bc]                                     ; $7931: $0a
	cp   $fe                                         ; $7932: $fe $fe
	cp   $7e                                         ; $7934: $fe $7e
	adc  [hl]                                        ; $7936: $8e
	ld   a, $9e                                      ; $7937: $3e $9e
	adc  [hl]                                        ; $7939: $8e
	sbc  $8e                                         ; $793a: $de $8e
	ld   d, [hl]                                     ; $793c: $56
	ld   c, [hl]                                     ; $793d: $4e
	ld   [hl], $4e                                   ; $793e: $36 $4e
	ld   e, d                                        ; $7940: $5a

jr_09f_7941:
	ld   c, $f8                                      ; $7941: $0e $f8
	ret  nz                                          ; $7943: $c0

	ret  c                                           ; $7944: $d8

	ldh  [$fa], a                                    ; $7945: $e0 $fa
	jr   nz, jr_09f_7941                             ; $7947: $20 $f8

	and  b                                           ; $7949: $a0
	db   $fc                                         ; $794a: $fc
	ldh  [$6c], a                                    ; $794b: $e0 $6c
	ldh  a, [$bc]                                    ; $794d: $f0 $bc
	ldh  a, [$be]                                    ; $794f: $f0 $be
	ld   hl, sp+$00                                  ; $7951: $f8 $00
	nop                                              ; $7953: $00
	ld   b, h                                        ; $7954: $44
	nop                                              ; $7955: $00
	ld   c, $01                                      ; $7956: $0e $01
	dec  c                                           ; $7958: $0d
	inc  bc                                          ; $7959: $03
	add  [hl]                                        ; $795a: $86
	nop                                              ; $795b: $00
	jr   jr_09f_795e                                 ; $795c: $18 $00

jr_09f_795e:
	jr   @+$0f                                       ; $795e: $18 $0d

	inc  c                                           ; $7960: $0c
	nop                                              ; $7961: $00
	add  hl, bc                                      ; $7962: $09
	ld   b, $00                                      ; $7963: $06 $00
	nop                                              ; $7965: $00
	stop                                             ; $7966: $10 $00
	ld   bc, $0000                                   ; $7968: $01 $00 $00
	nop                                              ; $796b: $00
	ld   [$8000], sp                                 ; $796c: $08 $00 $80
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	ld   e, $0a                                      ; $7972: $1e $0a
	ld   [hl], $1a                                   ; $7974: $36 $1a
	ld   a, $12                                      ; $7976: $3e $12
	ld   a, $12                                      ; $7978: $3e $12
	ld   l, $36                                      ; $797a: $2e $36
	ld   a, [hl]                                     ; $797c: $7e
	ld   l, $7e                                      ; $797d: $2e $7e
	ld   a, [hl]                                     ; $797f: $7e
	cp   $7e                                         ; $7980: $fe $7e
	cp   [hl]                                        ; $7982: $be
	db   $fc                                         ; $7983: $fc
	rst  $38                                         ; $7984: $ff
	cp   $df                                         ; $7985: $fe $df
	rst  JumpTable                                         ; $7987: $df
	rlca                                             ; $7988: $07
	ld   b, $03                                      ; $7989: $06 $03
	ld   [bc], a                                     ; $798b: $02
	inc  bc                                          ; $798c: $03
	ld   [bc], a                                     ; $798d: $02
	inc  bc                                          ; $798e: $03
	ld   [bc], a                                     ; $798f: $02
	inc  bc                                          ; $7990: $03
	ld   [bc], a                                     ; $7991: $02
	ld   b, $00                                      ; $7992: $06 $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	add  b                                           ; $7996: $80
	nop                                              ; $7997: $00
	ret  nz                                          ; $7998: $c0

	add  b                                           ; $7999: $80
	ldh  [rLCDC], a                                  ; $799a: $e0 $40
	pop  af                                          ; $799c: $f1
	jr   nc, @+$01                                   ; $799d: $30 $ff

	rrca                                             ; $799f: $0f
	sbc  h                                           ; $79a0: $9c
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	ld   bc, $0601                                   ; $79a4: $01 $01 $06
	inc  bc                                          ; $79a7: $03
	ld   e, $0f                                      ; $79a8: $1e $0f
	ld   a, a                                        ; $79aa: $7f
	ccf                                              ; $79ab: $3f
	call c, $10dc                                    ; $79ac: $dc $dc $10
	db   $10                                         ; $79af: $10
	db   $10                                         ; $79b0: $10
	db   $10                                         ; $79b1: $10
	cp   $fe                                         ; $79b2: $fe $fe
	xor  $fe                                         ; $79b4: $ee $fe
	xor  $fe                                         ; $79b6: $ee $fe
	xor  $fe                                         ; $79b8: $ee $fe
	cp   [hl]                                        ; $79ba: $be
	cp   [hl]                                        ; $79bb: $be
	ld   b, $06                                      ; $79bc: $06 $06
	ld   [bc], a                                     ; $79be: $02
	ld   [bc], a                                     ; $79bf: $02
	ld   [bc], a                                     ; $79c0: $02
	ld   [bc], a                                     ; $79c1: $02
	ccf                                              ; $79c2: $3f
	ld   a, $5f                                      ; $79c3: $3e $5f
	ld   a, h                                        ; $79c5: $7c
	sbc  a                                           ; $79c6: $9f
	ld   hl, sp-$72                                  ; $79c7: $f8 $8e

jr_09f_79c9:
	ld   hl, sp+$06                                  ; $79c9: $f8 $06
	cp   $03                                         ; $79cb: $fe $03
	rst  $38                                         ; $79cd: $ff
	ld   bc, $00ff                                   ; $79ce: $01 $ff $00
	rst  $38                                         ; $79d1: $ff
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
	add  b                                           ; $79de: $80
	add  b                                           ; $79df: $80
	ret  nz                                          ; $79e0: $c0

	ret  nz                                          ; $79e1: $c0

	jr   @+$1a                                       ; $79e2: $18 $18

	ld   e, $1e                                      ; $79e4: $1e $1e
	dec  e                                           ; $79e6: $1d
	rra                                              ; $79e7: $1f
	inc  e                                           ; $79e8: $1c
	rrca                                             ; $79e9: $0f
	jr   jr_09f_79fb                                 ; $79ea: $18 $0f

	jr   c, jr_09f_7a0d                              ; $79ec: $38 $1f

	jr   nc, @+$41                                   ; $79ee: $30 $3f

	ld   [hl], b                                     ; $79f0: $70
	ld   a, a                                        ; $79f1: $7f
	ld   [bc], a                                     ; $79f2: $02
	ld   [bc], a                                     ; $79f3: $02
	ld   [bc], a                                     ; $79f4: $02
	ld   [bc], a                                     ; $79f5: $02
	ld   [bc], a                                     ; $79f6: $02
	ld   [bc], a                                     ; $79f7: $02
	add  d                                           ; $79f8: $82
	add  d                                           ; $79f9: $82
	ld   b, d                                        ; $79fa: $42

jr_09f_79fb:
	jp   nz, $e262                                   ; $79fb: $c2 $62 $e2

	ld   [hl], d                                     ; $79fe: $72
	ldh  a, [c]                                      ; $79ff: $f2
	ld   a, [hl]                                     ; $7a00: $7e
	cp   $0c                                         ; $7a01: $fe $0c
	call z, $9d08                                    ; $7a03: $cc $08 $9d
	jr   jr_09f_7a47                                 ; $7a06: $18 $3f

	jr   jr_09f_79c9                                 ; $7a08: $18 $bf

	add  hl, de                                      ; $7a0a: $19
	rst  $38                                         ; $7a0b: $ff
	dec  sp                                          ; $7a0c: $3b

jr_09f_7a0d:
	rst  $28                                         ; $7a0d: $ef
	ccf                                              ; $7a0e: $3f
	rst  $28                                         ; $7a0f: $ef
	ld   l, h                                        ; $7a10: $6c
	di                                               ; $7a11: $f3
	inc  l                                           ; $7a12: $2c
	jr   c, jr_09f_7a41                              ; $7a13: $38 $2c

	ld   hl, sp+$2c                                  ; $7a15: $f8 $2c
	ld   hl, sp+$2c                                  ; $7a17: $f8 $2c
	ld   hl, sp+$7c                                  ; $7a19: $f8 $7c
	ret  c                                           ; $7a1b: $d8

	ld   a, h                                        ; $7a1c: $7c
	ret  c                                           ; $7a1d: $d8

	call z, $baf8                                    ; $7a1e: $cc $f8 $ba
	db   $e4                                         ; $7a21: $e4
	inc  e                                           ; $7a22: $1c
	rrca                                             ; $7a23: $0f
	inc  e                                           ; $7a24: $1c
	rrca                                             ; $7a25: $0f
	ld   e, $0f                                      ; $7a26: $1e $0f
	ld   e, $0b                                      ; $7a28: $1e $0b
	ld   e, $0b                                      ; $7a2a: $1e $0b
	ld   e, $0b                                      ; $7a2c: $1e $0b
	ld   l, $17                                      ; $7a2e: $2e $17
	dec  sp                                          ; $7a30: $3b
	rra                                              ; $7a31: $1f
	ld   a, l                                        ; $7a32: $7d
	db   $e3                                         ; $7a33: $e3
	and  $ed                                         ; $7a34: $e6 $ed
	db   $f4                                         ; $7a36: $f4
	ld   [$93eb], a                                  ; $7a37: $ea $eb $93
	or   e                                           ; $7a3a: $b3
	jp   $c3f2                                       ; $7a3b: $c3 $f2 $c3


	or   $c3                                         ; $7a3e: $f6 $c3
	ei                                               ; $7a40: $fb

jr_09f_7a41:
	ld   b, b                                        ; $7a41: $40
	sbc  $e0                                         ; $7a42: $de $e0
	ld   a, b                                        ; $7a44: $78
	ldh  [$60], a                                    ; $7a45: $e0 $60

jr_09f_7a47:
	ret  nz                                          ; $7a47: $c0

	ldh  [$c0], a                                    ; $7a48: $e0 $c0
	ld   h, b                                        ; $7a4a: $60
	ret  nz                                          ; $7a4b: $c0

	add  b                                           ; $7a4c: $80
	ld   b, b                                        ; $7a4d: $40
	ld   b, b                                        ; $7a4e: $40
	add  b                                           ; $7a4f: $80
	add  b                                           ; $7a50: $80
	nop                                              ; $7a51: $00
	ld   e, d                                        ; $7a52: $5a
	daa                                              ; $7a53: $27
	ld   l, [hl]                                     ; $7a54: $6e
	rrca                                             ; $7a55: $0f
	ld   c, b                                        ; $7a56: $48
	rla                                              ; $7a57: $17
	inc  de                                          ; $7a58: $13

jr_09f_7a59:
	ld   a, [bc]                                     ; $7a59: $0a
	rrca                                             ; $7a5a: $0f
	ld   c, $0f                                      ; $7a5b: $0e $0f
	ld   c, $0b                                      ; $7a5d: $0e $0b
	ld   c, $1c                                      ; $7a5f: $0e $1c
	ld   a, [bc]                                     ; $7a61: $0a
	cp   $fe                                         ; $7a62: $fe $fe
	cp   $7e                                         ; $7a64: $fe $7e
	ld   c, $be                                      ; $7a66: $0e $be
	sbc  [hl]                                        ; $7a68: $9e
	adc  [hl]                                        ; $7a69: $8e
	sbc  $4e                                         ; $7a6a: $de $4e
	ld   d, [hl]                                     ; $7a6c: $56
	ld   c, [hl]                                     ; $7a6d: $4e
	halt                                             ; $7a6e: $76
	ld   c, $5a                                      ; $7a6f: $0e $5a
	ld   c, $00                                      ; $7a71: $0e $00
	nop                                              ; $7a73: $00
	ld   b, h                                        ; $7a74: $44
	nop                                              ; $7a75: $00
	ld   c, $01                                      ; $7a76: $0e $01
	dec  c                                           ; $7a78: $0d
	inc  bc                                          ; $7a79: $03
	add  [hl]                                        ; $7a7a: $86
	nop                                              ; $7a7b: $00
	add  hl, bc                                      ; $7a7c: $09
	db   $10                                         ; $7a7d: $10
	ld   d, $09                                      ; $7a7e: $16 $09
	inc  c                                           ; $7a80: $0c
	nop                                              ; $7a81: $00
	add  hl, bc                                      ; $7a82: $09
	ld   b, $00                                      ; $7a83: $06 $00
	nop                                              ; $7a85: $00
	stop                                             ; $7a86: $10 $00
	ld   bc, $0000                                   ; $7a88: $01 $00 $00
	nop                                              ; $7a8b: $00
	adc  b                                           ; $7a8c: $88
	nop                                              ; $7a8d: $00
	add  b                                           ; $7a8e: $80
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	inc  c                                           ; $7a92: $0c
	call z, $9d08                                    ; $7a93: $cc $08 $9d
	jr   jr_09f_7ad7                                 ; $7a96: $18 $3f

	jr   jr_09f_7a59                                 ; $7a98: $18 $bf

	add  hl, de                                      ; $7a9a: $19
	rst  $38                                         ; $7a9b: $ff
	dec  sp                                          ; $7a9c: $3b
	rst  $28                                         ; $7a9d: $ef
	cpl                                              ; $7a9e: $2f
	rst  $38                                         ; $7a9f: $ff
	ld   a, l                                        ; $7aa0: $7d
	db   $eb                                         ; $7aa1: $eb
	inc  l                                           ; $7aa2: $2c
	jr   c, jr_09f_7ad1                              ; $7aa3: $38 $2c

	ld   hl, sp+$2c                                  ; $7aa5: $f8 $2c
	ld   hl, sp+$2c                                  ; $7aa7: $f8 $2c
	ld   hl, sp+$7c                                  ; $7aa9: $f8 $7c
	ret  c                                           ; $7aab: $d8

	ld   a, h                                        ; $7aac: $7c
	ret  c                                           ; $7aad: $d8

	db   $fc                                         ; $7aae: $fc
	ret  z                                           ; $7aaf: $c8

	ld   a, [$1ce4]                                  ; $7ab0: $fa $e4 $1c
	rrca                                             ; $7ab3: $0f
	inc  e                                           ; $7ab4: $1c
	rrca                                             ; $7ab5: $0f
	ld   e, $0f                                      ; $7ab6: $1e $0f
	ld   e, $0b                                      ; $7ab8: $1e $0b
	ld   e, $0b                                      ; $7aba: $1e $0b
	ld   e, $0b                                      ; $7abc: $1e $0b
	ld   l, $13                                      ; $7abe: $2e $13
	ccf                                              ; $7ac0: $3f
	inc  bc                                          ; $7ac1: $03
	sbc  $f0                                         ; $7ac2: $de $f0
	ld   a, b                                        ; $7ac4: $78
	ldh  [$60], a                                    ; $7ac5: $e0 $60
	ret  nz                                          ; $7ac7: $c0

	ldh  [$c0], a                                    ; $7ac8: $e0 $c0
	ld   h, b                                        ; $7aca: $60
	ret  nz                                          ; $7acb: $c0

	add  b                                           ; $7acc: $80
	ld   b, b                                        ; $7acd: $40
	ld   b, b                                        ; $7ace: $40
	add  b                                           ; $7acf: $80
	add  b                                           ; $7ad0: $80

jr_09f_7ad1:
	nop                                              ; $7ad1: $00
	ld   a, d                                        ; $7ad2: $7a
	rrca                                             ; $7ad3: $0f
	ld   a, a                                        ; $7ad4: $7f
	ld   [hl], $49                                   ; $7ad5: $36 $49

jr_09f_7ad7:
	rra                                              ; $7ad7: $1f
	inc  de                                          ; $7ad8: $13
	dec  bc                                          ; $7ad9: $0b
	rrca                                             ; $7ada: $0f
	ld   c, $0f                                      ; $7adb: $0e $0f
	ld   c, $0b                                      ; $7add: $0e $0b
	ld   c, $1c                                      ; $7adf: $0e $1c
	ld   a, [bc]                                     ; $7ae1: $0a
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	ld   b, h                                        ; $7ae4: $44
	nop                                              ; $7ae5: $00
	ld   c, $01                                      ; $7ae6: $0e $01
	dec  c                                           ; $7ae8: $0d
	inc  bc                                          ; $7ae9: $03
	add  [hl]                                        ; $7aea: $86
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	inc  e                                           ; $7aee: $1c
	add  hl, bc                                      ; $7aef: $09
	inc  c                                           ; $7af0: $0c
	nop                                              ; $7af1: $00
	inc  c                                           ; $7af2: $0c
	call z, $9d08                                    ; $7af3: $cc $08 $9d
	jr   jr_09f_7b37                                 ; $7af6: $18 $3f

	jr   @-$3f                                       ; $7af8: $18 $bf

	add  hl, de                                      ; $7afa: $19
	rst  $38                                         ; $7afb: $ff
	dec  sp                                          ; $7afc: $3b
	rst  $28                                         ; $7afd: $ef
	ccf                                              ; $7afe: $3f
	rst  $28                                         ; $7aff: $ef
	ld   a, a                                        ; $7b00: $7f
	rst  $20                                         ; $7b01: $e7
	inc  l                                           ; $7b02: $2c

Call_09f_7b03:
	jr   c, jr_09f_7b31                              ; $7b03: $38 $2c

	ld   hl, sp+$2c                                  ; $7b05: $f8 $2c
	ld   hl, sp+$2c                                  ; $7b07: $f8 $2c
	ld   hl, sp+$7c                                  ; $7b09: $f8 $7c
	ret  c                                           ; $7b0b: $d8

	ld   a, h                                        ; $7b0c: $7c
	ret  c                                           ; $7b0d: $d8

	call z, $baf8                                    ; $7b0e: $cc $f8 $ba
	db   $e4                                         ; $7b11: $e4
	inc  e                                           ; $7b12: $1c
	rrca                                             ; $7b13: $0f
	inc  e                                           ; $7b14: $1c
	rrca                                             ; $7b15: $0f
	ld   e, $0f                                      ; $7b16: $1e $0f
	ld   e, $0b                                      ; $7b18: $1e $0b
	ld   e, $0b                                      ; $7b1a: $1e $0b
	ld   e, $0b                                      ; $7b1c: $1e $0b
	ld   l, $33                                      ; $7b1e: $2e $33
	ccf                                              ; $7b20: $3f
	rra                                              ; $7b21: $1f
	ld   h, [hl]                                     ; $7b22: $66
	db   $fd                                         ; $7b23: $fd
	rst  $28                                         ; $7b24: $ef
	db   $e3                                         ; $7b25: $e3
	db   $fc                                         ; $7b26: $fc
	and  $fb                                         ; $7b27: $e6 $fb
	adc  e                                           ; $7b29: $8b
	or   e                                           ; $7b2a: $b3
	db   $db                                         ; $7b2b: $db
	ldh  [c], a                                      ; $7b2c: $e2
	db   $d3                                         ; $7b2d: $d3
	or   $c3                                         ; $7b2e: $f6 $c3
	ei                                               ; $7b30: $fb

jr_09f_7b31:
	ld   b, b                                        ; $7b31: $40
	sbc  $20                                         ; $7b32: $de $20
	ld   hl, sp-$20                                  ; $7b34: $f8 $e0
	ld   h, b                                        ; $7b36: $60

jr_09f_7b37:
	ret  nz                                          ; $7b37: $c0

	ldh  [$c0], a                                    ; $7b38: $e0 $c0
	ld   h, b                                        ; $7b3a: $60
	ret  nz                                          ; $7b3b: $c0

	add  b                                           ; $7b3c: $80
	ld   b, b                                        ; $7b3d: $40
	ld   b, b                                        ; $7b3e: $40
	add  b                                           ; $7b3f: $80
	add  b                                           ; $7b40: $80
	nop                                              ; $7b41: $00
	ld   a, e                                        ; $7b42: $7b
	rlca                                             ; $7b43: $07
	ld   l, a                                        ; $7b44: $6f
	ld   b, $59                                      ; $7b45: $06 $59
	ld   c, $03                                      ; $7b47: $0e $03
	dec  de                                          ; $7b49: $1b
	rrca                                             ; $7b4a: $0f
	rrca                                             ; $7b4b: $0f
	rrca                                             ; $7b4c: $0f
	ld   c, $0b                                      ; $7b4d: $0e $0b
	ld   c, $1c                                      ; $7b4f: $0e $1c
	ld   a, [bc]                                     ; $7b51: $0a
	cp   $fe                                         ; $7b52: $fe $fe
	cp   $fe                                         ; $7b54: $fe $fe
	adc  [hl]                                        ; $7b56: $8e
	ld   a, $9e                                      ; $7b57: $3e $9e
	ld   c, $de                                      ; $7b59: $0e $de
	adc  [hl]                                        ; $7b5b: $8e
	ld   d, [hl]                                     ; $7b5c: $56
	adc  $36                                         ; $7b5d: $ce $36
	ld   c, [hl]                                     ; $7b5f: $4e
	ld   e, d                                        ; $7b60: $5a
	ld   c, $00                                      ; $7b61: $0e $00
	nop                                              ; $7b63: $00
	ld   b, h                                        ; $7b64: $44
	nop                                              ; $7b65: $00
	ld   c, $01                                      ; $7b66: $0e $01
	dec  c                                           ; $7b68: $0d

jr_09f_7b69:
	inc  bc                                          ; $7b69: $03
	add  [hl]                                        ; $7b6a: $86
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	ld   a, [de]                                     ; $7b6e: $1a
	dec  c                                           ; $7b6f: $0d
	inc  c                                           ; $7b70: $0c
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
	pop  hl                                          ; $7b82: $e1
	nop                                              ; $7b83: $00
	add  b                                           ; $7b84: $80
	add  b                                           ; $7b85: $80
	add  b                                           ; $7b86: $80
	ld   b, b                                        ; $7b87: $40
	add  b                                           ; $7b88: $80
	add  b                                           ; $7b89: $80
	add  b                                           ; $7b8a: $80
	ld   b, b                                        ; $7b8b: $40
	add  b                                           ; $7b8c: $80
	add  b                                           ; $7b8d: $80
	add  b                                           ; $7b8e: $80
	ld   b, b                                        ; $7b8f: $40
	add  b                                           ; $7b90: $80
	and  b                                           ; $7b91: $a0
	add  b                                           ; $7b92: $80
	ld   d, b                                        ; $7b93: $50
	dec  h                                           ; $7b94: $25
	xor  d                                           ; $7b95: $aa
	rst  $38                                         ; $7b96: $ff
	nop                                              ; $7b97: $00
	rst  $38                                         ; $7b98: $ff
	ld   d, l                                        ; $7b99: $55
	cp   $de                                         ; $7b9a: $fe $de
	db   $dd                                         ; $7b9c: $dd
	xor  c                                           ; $7b9d: $a9
	xor  b                                           ; $7b9e: $a8
	ld   d, h                                        ; $7b9f: $54
	ld   d, l                                        ; $7ba0: $55
	ld   b, $00                                      ; $7ba1: $06 $00
	inc  c                                           ; $7ba3: $0c
	nop                                              ; $7ba4: $00

jr_09f_7ba5:
	add  a                                           ; $7ba5: $87
	rrca                                             ; $7ba6: $0f
	rra                                              ; $7ba7: $1f
	jr   jr_09f_7b69                                 ; $7ba8: $18 $bf

	jr   nz, jr_09f_7ba5                             ; $7baa: $20 $f9

	nop                                              ; $7bac: $00
	ldh  [c], a                                      ; $7bad: $e2
	ld   bc, $434d                                   ; $7bae: $01 $4d $43
	sub  e                                           ; $7bb1: $93
	adc  h                                           ; $7bb2: $8c
	xor  [hl]                                        ; $7bb3: $ae
	sub  c                                           ; $7bb4: $91
	db   $d3                                         ; $7bb5: $d3
	ld   h, b                                        ; $7bb6: $60
	ld   d, b                                        ; $7bb7: $50
	ld   [hl], b                                     ; $7bb8: $70
	jr   c, @+$7a                                    ; $7bb9: $38 $78

	add  b                                           ; $7bbb: $80
	ld   a, $08                                      ; $7bbc: $3e $08
	inc  c                                           ; $7bbe: $0c
	adc  h                                           ; $7bbf: $8c
	add  e                                           ; $7bc0: $83
	jr   nc, jr_09f_7c02                             ; $7bc1: $30 $3f

	jp   $8cfc                                       ; $7bc3: $c3 $fc $8c


	rst  $38                                         ; $7bc6: $ff
	add  e                                           ; $7bc7: $83
	ld   a, a                                        ; $7bc8: $7f
	inc  de                                          ; $7bc9: $13
	rra                                              ; $7bca: $1f
	ccf                                              ; $7bcb: $3f
	rrca                                             ; $7bcc: $0f
	rra                                              ; $7bcd: $1f
	rlca                                             ; $7bce: $07
	rst  $28                                         ; $7bcf: $ef
	ld   de, $0a07                                   ; $7bd0: $11 $07 $0a
	inc  bc                                          ; $7bd3: $03
	ld   hl, sp-$61                                  ; $7bd4: $f8 $9f
	cp   a                                           ; $7bd6: $bf
	rst  $20                                         ; $7bd7: $e7
	ld   c, a                                        ; $7bd8: $4f
	ld   a, b                                        ; $7bd9: $78
	sub  b                                           ; $7bda: $90
	sbc  [hl]                                        ; $7bdb: $9e
	add  $c7                                         ; $7bdc: $c6 $c7
	add  b                                           ; $7bde: $80
	pop  af                                          ; $7bdf: $f1
	add  b                                           ; $7be0: $80
	db   $fc                                         ; $7be1: $fc
	add  b                                           ; $7be2: $80
	cp   $21                                         ; $7be3: $fe $21
	rst  $38                                         ; $7be5: $ff
	adc  b                                           ; $7be6: $88
	ld   hl, sp+$03                                  ; $7be7: $f8 $03
	ld   c, h                                        ; $7be9: $4c
	ret  nz                                          ; $7bea: $c0

	ld   hl, sp+$08                                  ; $7beb: $f8 $08
	inc  c                                           ; $7bed: $0c
	or   h                                           ; $7bee: $b4
	or   [hl]                                        ; $7bef: $b6
	ret  c                                           ; $7bf0: $d8

	ld   d, a                                        ; $7bf1: $57
	ld   h, b                                        ; $7bf2: $60
	ld   bc, $ef00                                   ; $7bf3: $01 $00 $ef
	inc  bc                                          ; $7bf6: $03
	ld   a, a                                        ; $7bf7: $7f
	nop                                              ; $7bf8: $00
	ld   b, e                                        ; $7bf9: $43
	nop                                              ; $7bfa: $00
	or   b                                           ; $7bfb: $b0
	nop                                              ; $7bfc: $00
	ld   c, h                                        ; $7bfd: $4c
	db   $10                                         ; $7bfe: $10
	ld   [hl-], a                                    ; $7bff: $32
	inc  c                                           ; $7c00: $0c
	dec  e                                           ; $7c01: $1d

jr_09f_7c02:
	ld   b, $86                                      ; $7c02: $06 $86
	rlca                                             ; $7c04: $07
	rla                                              ; $7c05: $17
	sbc  a                                           ; $7c06: $9f
	add  b                                           ; $7c07: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c08: $cf
	ld   b, $e7                                      ; $7c09: $06 $e7
	ld   h, a                                        ; $7c0b: $67
	di                                               ; $7c0c: $f3
	inc  de                                          ; $7c0d: $13
	ld   a, c                                        ; $7c0e: $79
	ld   bc, $8118                                   ; $7c0f: $01 $18 $81
	nop                                              ; $7c12: $00
	ld   [bc], a                                     ; $7c13: $02
	add  b                                           ; $7c14: $80
	nop                                              ; $7c15: $00
	ld   a, a                                        ; $7c16: $7f
	add  b                                           ; $7c17: $80
	cp   $80                                         ; $7c18: $fe $80
	db   $fd                                         ; $7c1a: $fd
	add  b                                           ; $7c1b: $80
	ld   a, [$f680]                                  ; $7c1c: $fa $80 $f6
	ld   [$f4f5], sp                                 ; $7c1f: $08 $f5 $f4
	db   $ec                                         ; $7c22: $ec
	ld   l, a                                        ; $7c23: $6f
	ld   l, c                                        ; $7c24: $69
	ld   l, h                                        ; $7c25: $6c
	ld   h, b                                        ; $7c26: $60
	rst  $20                                         ; $7c27: $e7
	ld   e, [hl]                                     ; $7c28: $5e
	add  b                                           ; $7c29: $80
	ld   e, $03                                      ; $7c2a: $1e $03
	ld   e, l                                        ; $7c2c: $5d
	call c, $ac9c                                    ; $7c2d: $dc $9c $ac
	add  b                                           ; $7c30: $80
	call z, $ac80                                    ; $7c31: $cc $80 $ac
	add  b                                           ; $7c34: $80
	ret  z                                           ; $7c35: $c8

	add  b                                           ; $7c36: $80
	xor  b                                           ; $7c37: $a8
	ld   bc, $a0b0                                   ; $7c38: $01 $b0 $a0
	add  b                                           ; $7c3b: $80
	ld   d, b                                        ; $7c3c: $50
	ld   bc, $28a8                                   ; $7c3d: $01 $a8 $28
	add  b                                           ; $7c40: $80
	ld   d, h                                        ; $7c41: $54
	add  b                                           ; $7c42: $80
	jr   z, @+$03                                    ; $7c43: $28 $01

	call nc, $8014                                   ; $7c45: $d4 $14 $80
	ld   a, [hl+]                                    ; $7c48: $2a
	add  b                                           ; $7c49: $80
	dec  d                                           ; $7c4a: $15
	ld   bc, $07bf                                   ; $7c4b: $01 $bf $07
	add  b                                           ; $7c4e: $80
	rst  $30                                         ; $7c4f: $f7
	nop                                              ; $7c50: $00
	rst  $38                                         ; $7c51: $ff
	add  c                                           ; $7c52: $81
	ei                                               ; $7c53: $fb
	ld   c, $fe                                      ; $7c54: $0e $fe
	db   $fc                                         ; $7c56: $fc
	ld   d, h                                        ; $7c57: $54
	db   $fc                                         ; $7c58: $fc
	nop                                              ; $7c59: $00
	db   $fc                                         ; $7c5a: $fc
	nop                                              ; $7c5b: $00
	db   $fc                                         ; $7c5c: $fc
	ld   h, l                                        ; $7c5d: $65
	inc  bc                                          ; $7c5e: $03
	ld   [hl], e                                     ; $7c5f: $73
	ld   [bc], a                                     ; $7c60: $02
	ld   b, a                                        ; $7c61: $47
	inc  b                                           ; $7c62: $04
	ld   [bc], a                                     ; $7c63: $02
	add  a                                           ; $7c64: $87
	nop                                              ; $7c65: $00
	ld   [bc], a                                     ; $7c66: $02
	add  b                                           ; $7c67: $80
	nop                                              ; $7c68: $00
	add  b                                           ; $7c69: $80
	adc  e                                           ; $7c6a: $8b
	nop                                              ; $7c6b: $00
	inc  b                                           ; $7c6c: $04
	rrca                                             ; $7c6d: $0f
	inc  b                                           ; $7c6e: $04
	dec  e                                           ; $7c6f: $1d
	rrca                                             ; $7c70: $0f
	ld   [hl], $81                                   ; $7c71: $36 $81
	rra                                              ; $7c73: $1f
	nop                                              ; $7c74: $00
	ld   a, a                                        ; $7c75: $7f
	add  c                                           ; $7c76: $81
	ccf                                              ; $7c77: $3f
	ld   d, $f7                                      ; $7c78: $16 $f7
	ld   a, a                                        ; $7c7a: $7f
	ld   a, b                                        ; $7c7b: $78
	ld   a, a                                        ; $7c7c: $7f
	add  b                                           ; $7c7d: $80
	rst  $38                                         ; $7c7e: $ff
	ccf                                              ; $7c7f: $3f
	ld   a, a                                        ; $7c80: $7f
	sbc  a                                           ; $7c81: $9f
	cp   a                                           ; $7c82: $bf
	ld   c, a                                        ; $7c83: $4f
	rst  JumpTable                                         ; $7c84: $df
	and  a                                           ; $7c85: $a7
	rst  $28                                         ; $7c86: $ef
	jp   $e9f7                                       ; $7c87: $c3 $f7 $e9


	ei                                               ; $7c8a: $fb
	inc  e                                           ; $7c8b: $1c
	db   $fd                                         ; $7c8c: $fd
	ld   l, a                                        ; $7c8d: $6f
	add  b                                           ; $7c8e: $80
	ret  nz                                          ; $7c8f: $c0

	add  c                                           ; $7c90: $81
	ldh  [$03], a                                    ; $7c91: $e0 $03
	ret  nc                                          ; $7c93: $d0

	ret  nz                                          ; $7c94: $c0

	add  b                                           ; $7c95: $80
	ret  nz                                          ; $7c96: $c0

	add  b                                           ; $7c97: $80
	ret  c                                           ; $7c98: $d8

	inc  c                                           ; $7c99: $0c
	sbc  h                                           ; $7c9a: $9c
	cp   h                                           ; $7c9b: $bc
	ld   a, $be                                      ; $7c9c: $3e $be
	ld   h, a                                        ; $7c9e: $67
	inc  hl                                          ; $7c9f: $23
	rst  $10                                         ; $7ca0: $d7
	ld   de, $181b                                   ; $7ca1: $11 $1b $18
	add  hl, bc                                      ; $7ca4: $09
	ld   [$8168], sp                                 ; $7ca5: $08 $68 $81
	ld   [$0080], sp                                 ; $7ca8: $08 $80 $00
	dec  bc                                          ; $7cab: $0b
	jr   nz, jr_09f_7cae                             ; $7cac: $20 $00

jr_09f_7cae:
	add  b                                           ; $7cae: $80
	nop                                              ; $7caf: $00
	ld   b, b                                        ; $7cb0: $40
	add  b                                           ; $7cb1: $80
	add  c                                           ; $7cb2: $81
	pop  bc                                          ; $7cb3: $c1
	jp   $c703                                       ; $7cb4: $c3 $03 $c7


	rlca                                             ; $7cb7: $07
	add  c                                           ; $7cb8: $81
	rrca                                             ; $7cb9: $0f
	ld   b, $0e                                      ; $7cba: $06 $0e
	ld   e, $1c                                      ; $7cbc: $1e $1c
	ld   a, [hl-]                                    ; $7cbe: $3a
	ld   hl, $0028                                   ; $7cbf: $21 $28 $00
	add  b                                           ; $7cc2: $80
	pop  bc                                          ; $7cc3: $c1
	ld   bc, $c2d2                                   ; $7cc4: $01 $d2 $c2
	add  b                                           ; $7cc7: $80
	pop  bc                                          ; $7cc8: $c1
	rlca                                             ; $7cc9: $07
	ldh  [c], a                                      ; $7cca: $e2
	add  d                                           ; $7ccb: $82
	push bc                                          ; $7ccc: $c5
	dec  b                                           ; $7ccd: $05
	adc  d                                           ; $7cce: $8a
	ld   a, [bc]                                     ; $7ccf: $0a
	ret  c                                           ; $7cd0: $d8

	ret  z                                           ; $7cd1: $c8

	add  b                                           ; $7cd2: $80
	and  b                                           ; $7cd3: $a0
	add  b                                           ; $7cd4: $80
	ret  nz                                          ; $7cd5: $c0

	ld   bc, $90a0                                   ; $7cd6: $01 $a0 $90
	add  b                                           ; $7cd9: $80
	jp   nz, $8280                                   ; $7cda: $c2 $80 $82

	add  b                                           ; $7cdd: $80
	add  $01                                         ; $7cde: $c6 $01
	and  $86                                         ; $7ce0: $e6 $86
	add  b                                           ; $7ce2: $80
	ld   a, [hl+]                                    ; $7ce3: $2a
	add  b                                           ; $7ce4: $80
	dec  d                                           ; $7ce5: $15
	add  b                                           ; $7ce6: $80
	ld   a, [hl+]                                    ; $7ce7: $2a
	add  b                                           ; $7ce8: $80
	dec  d                                           ; $7ce9: $15
	add  b                                           ; $7cea: $80
	ld   a, [hl+]                                    ; $7ceb: $2a
	add  b                                           ; $7cec: $80
	dec  d                                           ; $7ced: $15
	ld   bc, $2aea                                   ; $7cee: $01 $ea $2a
	add  b                                           ; $7cf1: $80
	ld   d, l                                        ; $7cf2: $55
	inc  c                                           ; $7cf3: $0c
	sub  $fc                                         ; $7cf4: $d6 $fc
	ld   d, h                                        ; $7cf6: $54
	db   $fc                                         ; $7cf7: $fc
	push hl                                          ; $7cf8: $e5
	push af                                          ; $7cf9: $f5
	db   $fd                                         ; $7cfa: $fd
	db   $ec                                         ; $7cfb: $ec
	db   $fc                                         ; $7cfc: $fc
	cp   $01                                         ; $7cfd: $fe $01
	nop                                              ; $7cff: $00
	rst  $38                                         ; $7d00: $ff
	add  c                                           ; $7d01: $81
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	rst  $38                                         ; $7d04: $ff
	add  e                                           ; $7d05: $83
	nop                                              ; $7d06: $00
	add  b                                           ; $7d07: $80
	add  b                                           ; $7d08: $80
	add  b                                           ; $7d09: $80
	ret  nz                                          ; $7d0a: $c0

	ld   bc, $60e0                                   ; $7d0b: $01 $e0 $60
	add  b                                           ; $7d0e: $80
	ld   [hl], c                                     ; $7d0f: $71
	ld   [bc], a                                     ; $7d10: $02
	ld   a, a                                        ; $7d11: $7f
	ccf                                              ; $7d12: $3f
	ret  nz                                          ; $7d13: $c0

	add  l                                           ; $7d14: $85
	nop                                              ; $7d15: $00
	add  b                                           ; $7d16: $80
	rlca                                             ; $7d17: $07
	add  b                                           ; $7d18: $80
	ccf                                              ; $7d19: $3f
	add  d                                           ; $7d1a: $82
	rst  $38                                         ; $7d1b: $ff
	nop                                              ; $7d1c: $00
	add  b                                           ; $7d1d: $80
	add  c                                           ; $7d1e: $81
	ld   a, a                                        ; $7d1f: $7f
	nop                                              ; $7d20: $00
	cp   a                                           ; $7d21: $bf
	add  c                                           ; $7d22: $81
	ccf                                              ; $7d23: $3f
	add  b                                           ; $7d24: $80
	cp   b                                           ; $7d25: $b8
	nop                                              ; $7d26: $00
	add  b                                           ; $7d27: $80
	add  b                                           ; $7d28: $80
	add  $81                                         ; $7d29: $c6 $81
	call c, $2001                                    ; $7d2b: $dc $01 $20
	db   $fc                                         ; $7d2e: $fc
	add  b                                           ; $7d2f: $80
	ldh  a, [$80]                                    ; $7d30: $f0 $80
	ret  nz                                          ; $7d32: $c0

	add  a                                           ; $7d33: $87
	nop                                              ; $7d34: $00
	ld   [$b030], sp                                 ; $7d35: $08 $30 $b0
	rst  $38                                         ; $7d38: $ff
	rra                                              ; $7d39: $1f
	ld   a, a                                        ; $7d3a: $7f
	ld   h, $3f                                      ; $7d3b: $26 $3f
	add  hl, de                                      ; $7d3d: $19
	rra                                              ; $7d3e: $1f
	add  b                                           ; $7d3f: $80
	rlca                                             ; $7d40: $07
	add  b                                           ; $7d41: $80
	ld   bc, $0082                                   ; $7d42: $01 $82 $00
	ld   [bc], a                                     ; $7d45: $02
	add  b                                           ; $7d46: $80
	cp   a                                           ; $7d47: $bf
	ccf                                              ; $7d48: $3f
	add  c                                           ; $7d49: $81
	ld   a, a                                        ; $7d4a: $7f
	add  b                                           ; $7d4b: $80
	ld   a, [hl]                                     ; $7d4c: $7e
	add  b                                           ; $7d4d: $80
	ld   [hl], b                                     ; $7d4e: $70
	add  b                                           ; $7d4f: $80
	ld   b, b                                        ; $7d50: $40
	add  b                                           ; $7d51: $80
	ld   bc, $4f03                                   ; $7d52: $01 $03 $4f
	adc  a                                           ; $7d55: $8f
	ld   b, b                                        ; $7d56: $40
	nop                                              ; $7d57: $00
	add  d                                           ; $7d58: $82
	add  b                                           ; $7d59: $80
	add  h                                           ; $7d5a: $84
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	rst  $38                                         ; $7d5d: $ff
	add  b                                           ; $7d5e: $80
	cp   $03                                         ; $7d5f: $fe $03
	db   $fd                                         ; $7d61: $fd
	dec  e                                           ; $7d62: $1d
	ld   a, [de]                                     ; $7d63: $1a
	ld   a, [hl-]                                    ; $7d64: $3a

jr_09f_7d65:
	add  b                                           ; $7d65: $80
	ld   [hl], $07                                   ; $7d66: $36 $07
	ld   h, $67                                      ; $7d68: $26 $67
	ld   l, l                                        ; $7d6a: $6d
	ld   l, a                                        ; $7d6b: $6f
	ld   h, e                                        ; $7d6c: $63
	rst  $28                                         ; $7d6d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d6e: $cf
	rst  $38                                         ; $7d6f: $ff
	add  b                                           ; $7d70: $80
	ccf                                              ; $7d71: $3f
	ld   bc, $80bf                                   ; $7d72: $01 $bf $80
	add  c                                           ; $7d75: $81
	nop                                              ; $7d76: $00
	add  b                                           ; $7d77: $80
	xor  d                                           ; $7d78: $aa
	add  b                                           ; $7d79: $80
	push de                                          ; $7d7a: $d5
	add  b                                           ; $7d7b: $80
	ld   a, [$fc80]                                  ; $7d7c: $fa $80 $fc
	add  b                                           ; $7d7f: $80
	cp   $80                                         ; $7d80: $fe $80
	db   $fc                                         ; $7d82: $fc
	add  hl, bc                                      ; $7d83: $09
	ld   sp, $4f0e                                   ; $7d84: $31 $0e $4f
	ld   [$121a], sp                                 ; $7d87: $08 $1a $12
	dec  d                                           ; $7d8a: $15
	dec  b                                           ; $7d8b: $05
	xor  d                                           ; $7d8c: $aa
	ld   a, [bc]                                     ; $7d8d: $0a
	add  b                                           ; $7d8e: $80
	dec  d                                           ; $7d8f: $15

jr_09f_7d90:
	inc  bc                                          ; $7d90: $03
	ld   l, d                                        ; $7d91: $6a
	ld   a, [hl+]                                    ; $7d92: $2a
	push de                                          ; $7d93: $d5
	ld   d, l                                        ; $7d94: $55
	add  d                                           ; $7d95: $82
	nop                                              ; $7d96: $00
	add  b                                           ; $7d97: $80
	xor  d                                           ; $7d98: $aa
	add  b                                           ; $7d99: $80
	ld   d, l                                        ; $7d9a: $55
	add  b                                           ; $7d9b: $80
	xor  d                                           ; $7d9c: $aa
	add  b                                           ; $7d9d: $80
	ld   d, l                                        ; $7d9e: $55
	add  b                                           ; $7d9f: $80
	xor  d                                           ; $7da0: $aa
	add  b                                           ; $7da1: $80
	ld   d, l                                        ; $7da2: $55
	dec  b                                           ; $7da3: $05
	ret  nz                                          ; $7da4: $c0

	rst  JumpTable                                         ; $7da5: $df
	rst  $38                                         ; $7da6: $ff
	rst  $28                                         ; $7da7: $ef
	rst  $38                                         ; $7da8: $ff
	ldh  a, [$88]                                    ; $7da9: $f0 $88
	rst  $38                                         ; $7dab: $ff
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	add  b                                           ; $7dae: $80
	rst  $38                                         ; $7daf: $ff
	add  b                                           ; $7db0: $80
	cp   $02                                         ; $7db1: $fe $02
	dec  a                                           ; $7db3: $3d
	rst  $38                                         ; $7db4: $ff
	jp   nz, $fe80                                   ; $7db5: $c2 $80 $fe

	ld   b, $fc                                      ; $7db8: $06 $fc
	db   $fd                                         ; $7dba: $fd
	ld   a, [$f4f8]                                  ; $7dbb: $fa $f8 $f4
	ldh  a, [rTAC]                                   ; $7dbe: $f0 $07
	add  b                                           ; $7dc0: $80
	xor  b                                           ; $7dc1: $a8
	add  d                                           ; $7dc2: $82
	ld   [hl], b                                     ; $7dc3: $70
	add  b                                           ; $7dc4: $80
	ldh  [$80], a                                    ; $7dc5: $e0 $80
	pop  hl                                          ; $7dc7: $e1
	ld   b, $c1                                      ; $7dc8: $06 $c1
	ld   bc, $4303                                   ; $7dca: $01 $03 $43
	inc  bc                                          ; $7dcd: $03
	add  e                                           ; $7dce: $83
	ld   a, h                                        ; $7dcf: $7c
	add  b                                           ; $7dd0: $80
	ld   c, h                                        ; $7dd1: $4c
	inc  bc                                          ; $7dd2: $03
	ld   b, b                                        ; $7dd3: $40
	ret  nz                                          ; $7dd4: $c0

	jp   nz, $82c0                                   ; $7dd5: $c2 $c0 $82

	add  b                                           ; $7dd8: $80
	nop                                              ; $7dd9: $00
	ld   bc, $0081                                   ; $7dda: $01 $81 $00
	inc  b                                           ; $7ddd: $04
	rst  $38                                         ; $7dde: $ff
	inc  e                                           ; $7ddf: $1c
	db   $10                                         ; $7de0: $10
	inc  de                                          ; $7de1: $13
	jr   jr_09f_7d65                                 ; $7de2: $18 $81

	ld   [$0c00], sp                                 ; $7de4: $08 $00 $0c
	add  c                                           ; $7de7: $81
	inc  b                                           ; $7de8: $04
	nop                                              ; $7de9: $00
	ld   b, $81                                      ; $7dea: $06 $81
	ld   [bc], a                                     ; $7dec: $02
	nop                                              ; $7ded: $00
	inc  bc                                          ; $7dee: $03
	add  b                                           ; $7def: $80
	ccf                                              ; $7df0: $3f
	inc  b                                           ; $7df1: $04
	sbc  b                                           ; $7df2: $98
	ld   e, b                                        ; $7df3: $58
	rlca                                             ; $7df4: $07
	daa                                              ; $7df5: $27
	rra                                              ; $7df6: $1f
	add  c                                           ; $7df7: $81
	rrca                                             ; $7df8: $0f
	dec  b                                           ; $7df9: $05
	inc  c                                           ; $7dfa: $0c
	rra                                              ; $7dfb: $1f
	db   $10                                         ; $7dfc: $10
	ld   a, l                                        ; $7dfd: $7d
	ld   bc, $808f                                   ; $7dfe: $01 $8f $80
	ei                                               ; $7e01: $fb
	add  b                                           ; $7e02: $80
	inc  b                                           ; $7e03: $04
	add  b                                           ; $7e04: $80
	di                                               ; $7e05: $f3
	ld   b, $e7                                      ; $7e06: $06 $e7
	ei                                               ; $7e08: $fb
	add  e                                           ; $7e09: $83
	add  sp, $08                                     ; $7e0a: $e8 $08
	or   b                                           ; $7e0c: $b0
	jr   nc, jr_09f_7d90                             ; $7e0d: $30 $81

	ret  nz                                          ; $7e0f: $c0

	ld   b, $bf                                      ; $7e10: $06 $bf
	adc  a                                           ; $7e12: $8f
	rrca                                             ; $7e13: $0f
	rlca                                             ; $7e14: $07
	rst  $30                                         ; $7e15: $f7
	ei                                               ; $7e16: $fb
	di                                               ; $7e17: $f3
	add  b                                           ; $7e18: $80
	db   $e3                                         ; $7e19: $e3
	nop                                              ; $7e1a: $00
	ld   bc, $0583                                   ; $7e1b: $01 $83 $05
	ld   bc, $fa06                                   ; $7e1e: $01 $06 $fa
	add  b                                           ; $7e21: $80
	db   $fd                                         ; $7e22: $fd
	add  b                                           ; $7e23: $80
	ld   a, [$f580]                                  ; $7e24: $fa $80 $f5
	add  b                                           ; $7e27: $80
	ld   a, [$fd80]                                  ; $7e28: $fa $80 $fd
	add  b                                           ; $7e2b: $80
	ld   a, [$f580]                                  ; $7e2c: $fa $80 $f5
	add  b                                           ; $7e2f: $80
	ld   a, [hl+]                                    ; $7e30: $2a
	add  b                                           ; $7e31: $80
	ld   d, l                                        ; $7e32: $55
	add  b                                           ; $7e33: $80
	ld   a, [hl+]                                    ; $7e34: $2a
	add  b                                           ; $7e35: $80
	ld   d, l                                        ; $7e36: $55
	add  b                                           ; $7e37: $80
	ld   a, [hl+]                                    ; $7e38: $2a
	add  b                                           ; $7e39: $80
	ld   d, l                                        ; $7e3a: $55
	add  b                                           ; $7e3b: $80
	ld   a, [hl+]                                    ; $7e3c: $2a
	add  b                                           ; $7e3d: $80
	ld   d, l                                        ; $7e3e: $55
	add  b                                           ; $7e3f: $80
	xor  d                                           ; $7e40: $aa
	add  b                                           ; $7e41: $80
	ld   d, l                                        ; $7e42: $55
	add  b                                           ; $7e43: $80
	xor  d                                           ; $7e44: $aa
	add  b                                           ; $7e45: $80
	ld   d, l                                        ; $7e46: $55
	add  b                                           ; $7e47: $80
	xor  d                                           ; $7e48: $aa
	add  b                                           ; $7e49: $80
	ld   d, l                                        ; $7e4a: $55
	add  b                                           ; $7e4b: $80
	xor  d                                           ; $7e4c: $aa
	add  b                                           ; $7e4d: $80
	ld   d, l                                        ; $7e4e: $55
	ld   bc, $ff00                                   ; $7e4f: $01 $00 $ff
	add  h                                           ; $7e52: $84
	nop                                              ; $7e53: $00
	add  c                                           ; $7e54: $81
	rst  $38                                         ; $7e55: $ff
	add  c                                           ; $7e56: $81
	nop                                              ; $7e57: $00
	add  b                                           ; $7e58: $80
	rst  $38                                         ; $7e59: $ff
	ld   bc, $8971                                   ; $7e5a: $01 $71 $89
	add  h                                           ; $7e5d: $84
	add  hl, bc                                      ; $7e5e: $09
	add  c                                           ; $7e5f: $81
	ld   sp, hl                                      ; $7e60: $f9
	add  c                                           ; $7e61: $81
	ld   bc, $ff81                                   ; $7e62: $01 $81 $ff
	rst  $38                                         ; $7e65: $ff
	nop                                              ; $7e66: $00
	rst  $38                                         ; $7e67: $ff
	nop                                              ; $7e68: $00
	rst  $38                                         ; $7e69: $ff
	nop                                              ; $7e6a: $00
	rst  $38                                         ; $7e6b: $ff
	nop                                              ; $7e6c: $00
	rst  $38                                         ; $7e6d: $ff
	nop                                              ; $7e6e: $00
	rst  $38                                         ; $7e6f: $ff
	nop                                              ; $7e70: $00
	rst  $38                                         ; $7e71: $ff
	nop                                              ; $7e72: $00
	rst  $38                                         ; $7e73: $ff
	nop                                              ; $7e74: $00
	rst  $38                                         ; $7e75: $ff
	nop                                              ; $7e76: $00
	db   $f4                                         ; $7e77: $f4
	nop                                              ; $7e78: $00
	jp   nz, $12fe                                   ; $7e79: $c2 $fe $12

	ld   [hl], $22                                   ; $7e7c: $36 $22
	ld   l, [hl]                                     ; $7e7e: $6e
	ld   a, [hl+]                                    ; $7e7f: $2a
	ld   l, a                                        ; $7e80: $6f
	ld   c, d                                        ; $7e81: $4a
	rst  JumpTable                                         ; $7e82: $df
	ld   d, d                                        ; $7e83: $52
	rst  JumpTable                                         ; $7e84: $df
	ld   d, e                                        ; $7e85: $53
	rst  JumpTable                                         ; $7e86: $df
	ld   d, l                                        ; $7e87: $55
	rst  $10                                         ; $7e88: $d7
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	inc  b                                           ; $7e8c: $04
	ld   [bc], a                                     ; $7e8d: $02
	ld   b, $01                                      ; $7e8e: $06 $01
	inc  bc                                          ; $7e90: $03
	ld   bc, $0001                                   ; $7e91: $01 $01 $00
	add  b                                           ; $7e94: $80
	nop                                              ; $7e95: $00
	add  b                                           ; $7e96: $80
	nop                                              ; $7e97: $00
	ret  nz                                          ; $7e98: $c0

	ld   h, b                                        ; $7e99: $60
	ld   hl, sp+$18                                  ; $7e9a: $f8 $18
	ccf                                              ; $7e9c: $3f
	inc  b                                           ; $7e9d: $04
	rrca                                             ; $7e9e: $0f
	inc  bc                                          ; $7e9f: $03
	add  e                                           ; $7ea0: $83
	add  b                                           ; $7ea1: $80
	pop  bc                                          ; $7ea2: $c1
	ret  nz                                          ; $7ea3: $c0

	ldh  a, [$60]                                    ; $7ea4: $f0 $60
	db   $fc                                         ; $7ea6: $fc
	jr   nc, jr_09f_7f28                             ; $7ea7: $30 $7f

	ld   [bc], a                                     ; $7ea9: $02
	ld   a, [hl]                                     ; $7eaa: $7e
	ld   [bc], a                                     ; $7eab: $02
	sbc  [hl]                                        ; $7eac: $9e
	ld   b, $e6                                      ; $7ead: $06 $e6
	ld   [bc], a                                     ; $7eaf: $02
	ldh  a, [c]                                      ; $7eb0: $f2
	add  d                                           ; $7eb1: $82
	ld   a, [$7e4a]                                  ; $7eb2: $fa $4a $7e
	ld   h, $3e                                      ; $7eb5: $26 $3e
	ld   [de], a                                     ; $7eb7: $12
	ld   e, $55                                      ; $7eb8: $1e $55
	ld   [hl], a                                     ; $7eba: $77
	ld   d, l                                        ; $7ebb: $55
	ld   [hl], a                                     ; $7ebc: $77
	ld   d, l                                        ; $7ebd: $55
	ld   a, a                                        ; $7ebe: $7f
	ld   d, [hl]                                     ; $7ebf: $56
	rst  $38                                         ; $7ec0: $ff
	sub  $ff                                         ; $7ec1: $d6 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ec3: $cf
	db   $fd                                         ; $7ec4: $fd
	xor  a                                           ; $7ec5: $af
	db   $fd                                         ; $7ec6: $fd
	ld   [hl], l                                     ; $7ec7: $75
	call c, $c100                                    ; $7ec8: $dc $00 $c1
	nop                                              ; $7ecb: $00
	ldh  [$80], a                                    ; $7ecc: $e0 $80
	ldh  [$80], a                                    ; $7ece: $e0 $80
	ldh  a, [$c0]                                    ; $7ed0: $f0 $c0
	ld   hl, sp-$20                                  ; $7ed2: $f8 $e0
	db   $fc                                         ; $7ed4: $fc
	ldh  a, [$9e]                                    ; $7ed5: $f0 $9e
	cp   b                                           ; $7ed7: $b8
	adc  a                                           ; $7ed8: $8f
	ld   [hl-], a                                    ; $7ed9: $32
	ld   a, a                                        ; $7eda: $7f
	add  hl, de                                      ; $7edb: $19
	cp   a                                           ; $7edc: $bf
	inc  e                                           ; $7edd: $1c
	rst  $38                                         ; $7ede: $ff
	inc  e                                           ; $7edf: $1c
	ld   a, a                                        ; $7ee0: $7f
	ld   c, $7f                                      ; $7ee1: $0e $7f
	rrca                                             ; $7ee3: $0f
	dec  sp                                          ; $7ee4: $3b
	rrca                                             ; $7ee5: $0f
	add  hl, sp                                      ; $7ee6: $39
	dec  c                                           ; $7ee7: $0d
	jr   c, @+$0c                                    ; $7ee8: $38 $0a

	adc  [hl]                                        ; $7eea: $8e
	ld   c, $ce                                      ; $7eeb: $0e $ce
	add  [hl]                                        ; $7eed: $86
	and  $46                                         ; $7eee: $e6 $46
	or   $62                                         ; $7ef0: $f6 $62
	ld   a, [$fa32]                                  ; $7ef2: $fa $32 $fa
	ld   [de], a                                     ; $7ef5: $12
	cp   $9a                                         ; $7ef6: $fe $9a
	cp   $fd                                         ; $7ef8: $fe $fd
	adc  h                                           ; $7efa: $8c
	rst  $38                                         ; $7efb: $ff
	add  a                                           ; $7efc: $87
	cp   $9a                                         ; $7efd: $fe $9a
	rst  $30                                         ; $7eff: $f7
	and  e                                           ; $7f00: $a3
	rst  $20                                         ; $7f01: $e7
	add  a                                           ; $7f02: $87
	rst  $28                                         ; $7f03: $ef
	adc  h                                           ; $7f04: $8c
	db   $ec                                         ; $7f05: $ec
	add  b                                           ; $7f06: $80
	ld   [hl], e                                     ; $7f07: $73
	pop  bc                                          ; $7f08: $c1
	call z, $fe47                                    ; $7f09: $cc $47 $fe
	di                                               ; $7f0c: $f3
	ccf                                              ; $7f0d: $3f
	dec  c                                           ; $7f0e: $0d
	rst  $38                                         ; $7f0f: $ff
	ldh  [c], a                                      ; $7f10: $e2
	pop  af                                          ; $7f11: $f1
	ldh  a, [$d0]                                    ; $7f12: $f0 $d0
	ret  nc                                          ; $7f14: $d0

	ldh  a, [$b0]                                    ; $7f15: $f0 $b0
	ldh  [$c0], a                                    ; $7f17: $e0 $c0
	rrca                                             ; $7f19: $0f
	sbc  e                                           ; $7f1a: $9b
	inc  c                                           ; $7f1b: $0c
	call c, $db0f                                    ; $7f1c: $dc $0f $db
	adc  a                                           ; $7f1f: $8f
	rst  $38                                         ; $7f20: $ff
	adc  $7e                                         ; $7f21: $ce $7e
	rst  JumpTable                                         ; $7f23: $df
	ld   [hl], l                                     ; $7f24: $75
	ld   [hl], a                                     ; $7f25: $77
	scf                                              ; $7f26: $37
	ld   [hl], b                                     ; $7f27: $70

jr_09f_7f28:
	jr   nc, @-$34                                   ; $7f28: $30 $ca

	ld   a, [hl]                                     ; $7f2a: $7e
	adc  $7e                                         ; $7f2b: $ce $7e
	xor  $3e                                         ; $7f2d: $ee $3e
	and  $be                                         ; $7f2f: $e6 $be
	and  $be                                         ; $7f31: $e6 $be
	ld   h, [hl]                                     ; $7f33: $66
	ld   a, [hl]                                     ; $7f34: $7e
	ld   [$ea7a], a                                  ; $7f35: $ea $7a $ea
	ld   a, d                                        ; $7f38: $7a
	db   $f4                                         ; $7f39: $f4
	db   $e4                                         ; $7f3a: $e4
	ld   hl, sp+$38                                  ; $7f3b: $f8 $38
	ld   hl, sp-$80                                  ; $7f3d: $f8 $80
	db   $fc                                         ; $7f3f: $fc
	nop                                              ; $7f40: $00
	db   $fc                                         ; $7f41: $fc
	add  b                                           ; $7f42: $80
	db   $fc                                         ; $7f43: $fc
	nop                                              ; $7f44: $00
	db   $fc                                         ; $7f45: $fc
	nop                                              ; $7f46: $00
	cp   $c0                                         ; $7f47: $fe $c0
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
	ld   h, b                                        ; $7f59: $60
	jr   nz, @+$43                                   ; $7f5a: $20 $41

	ld   b, c                                        ; $7f5c: $41
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	ld   de, $3110                                   ; $7f5f: $11 $10 $31

jr_09f_7f62:
	db   $10                                         ; $7f62: $10
	ld   sp, $e301                                   ; $7f63: $31 $01 $e3
	ld   h, c                                        ; $7f66: $61
	inc  bc                                          ; $7f67: $03
	ld   [bc], a                                     ; $7f68: $02
	sub  $76                                         ; $7f69: $d6 $76
	or   $e6                                         ; $7f6b: $f6 $e6
	ldh  a, [c]                                      ; $7f6d: $f2
	jp   nz, $82f2                                   ; $7f6e: $c2 $f2 $82

	ldh  a, [c]                                      ; $7f71: $f2
	add  d                                           ; $7f72: $82
	ld   a, [$fa02]                                  ; $7f73: $fa $02 $fa
	ld   [bc], a                                     ; $7f76: $02
	cp   $02                                         ; $7f77: $fe $02
	ld   a, [hl]                                     ; $7f79: $7e
	ret  nz                                          ; $7f7a: $c0

	rst  $38                                         ; $7f7b: $ff
	call nz, $c37f                                   ; $7f7c: $c4 $7f $c3
	rst  $38                                         ; $7f7f: $ff
	ret  nz                                          ; $7f80: $c0

	ccf                                              ; $7f81: $3f
	ld   hl, sp+$07                                  ; $7f82: $f8 $07
	rst  $38                                         ; $7f84: $ff
	ret  nz                                          ; $7f85: $c0

	db   $fc                                         ; $7f86: $fc
	ld   hl, sp-$02                                  ; $7f87: $f8 $fe
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	add  b                                           ; $7f8d: $80
	nop                                              ; $7f8e: $00
	ldh  [$c0], a                                    ; $7f8f: $e0 $c0
	db   $fc                                         ; $7f91: $fc
	jr   c, @+$01                                    ; $7f92: $38 $ff

	add  a                                           ; $7f94: $87
	ld   a, [hl]                                     ; $7f95: $7e
	ld   a, e                                        ; $7f96: $7b
	ld   b, $07                                      ; $7f97: $06 $07
	ld   b, a                                        ; $7f99: $47
	rlca                                             ; $7f9a: $07
	ld   [$3008], sp                                 ; $7f9b: $08 $08 $30
	db   $10                                         ; $7f9e: $10
	ld   h, b                                        ; $7f9f: $60
	jr   nz, jr_09f_7f62                             ; $7fa0: $20 $c0

	ret  nz                                          ; $7fa2: $c0

	ret  nz                                          ; $7fa3: $c0

	ret  nz                                          ; $7fa4: $c0

	ld   h, b                                        ; $7fa5: $60
	ldh  [hScriptOpcodeParams+3], a                                    ; $7fa6: $e0 $a3
	and  e                                           ; $7fa8: $a3
	cp   $02                                         ; $7fa9: $fe $02
	cp   $c2                                         ; $7fab: $fe $c2
	ld   a, $22                                      ; $7fad: $3e $22
	ld   e, $12                                      ; $7faf: $1e $12
	ld   e, $1a                                      ; $7fb1: $1e $1a
	ld   d, $1e                                      ; $7fb3: $16 $1e
	ld   d, $1e                                      ; $7fb5: $16 $1e
	ld   [$07ee], a                                  ; $7fb7: $ea $ee $07
	rst  $38                                         ; $7fba: $ff
	ldh  [rIE], a                                    ; $7fbb: $e0 $ff
	ld   hl, sp-$01                                  ; $7fbd: $f8 $ff
	db   $fc                                         ; $7fbf: $fc
	rst  $38                                         ; $7fc0: $ff
	rst  $38                                         ; $7fc1: $ff
	rst  $38                                         ; $7fc2: $ff
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	inc  bc                                          ; $7fc9: $03
	inc  bc                                          ; $7fca: $03
	db   $fd                                         ; $7fcb: $fd
	rst  $38                                         ; $7fcc: $ff
	inc  bc                                          ; $7fcd: $03
	cp   $03                                         ; $7fce: $fe $03
	cp   $c3                                         ; $7fd0: $fe $c3
	cp   $bf                                         ; $7fd2: $fe $bf
	cp   [hl]                                        ; $7fd4: $be
	jp   hl                                          ; $7fd5: $e9


	jp   hl                                          ; $7fd6: $e9


	push hl                                          ; $7fd7: $e5
	push hl                                          ; $7fd8: $e5
	ccf                                              ; $7fd9: $3f
	ccf                                              ; $7fda: $3f
	rst  JumpTable                                         ; $7fdb: $df
	rst  $38                                         ; $7fdc: $ff
	rst  JumpTable                                         ; $7fdd: $df
	ld   a, a                                        ; $7fde: $7f
	rst  JumpTable                                         ; $7fdf: $df
	rst  $38                                         ; $7fe0: $ff
	rst  $28                                         ; $7fe1: $ef
	rst  $28                                         ; $7fe2: $ef
	rst  ToBoot                                         ; $7fe3: $c7
	ld   b, a                                        ; $7fe4: $47
	and  a                                           ; $7fe5: $a7
	and  a                                           ; $7fe6: $a7
	rla                                              ; $7fe7: $17
	rla                                              ; $7fe8: $17
	ld   [$f6ea], a                                  ; $7fe9: $ea $ea $f6
	or   $fe                                         ; $7fec: $f6 $fe
	cp   $fe                                         ; $7fee: $fe $fe
	cp   $fe                                         ; $7ff0: $fe $fe
	cp   $fe                                         ; $7ff2: $fe $fe
	cp   $fe                                         ; $7ff4: $fe $fe
	cp   $fe                                         ; $7ff6: $fe $fe
	cp   $00                                         ; $7ff8: $fe $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
