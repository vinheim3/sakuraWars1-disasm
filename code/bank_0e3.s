; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e3", ROMX[$4000], BANK[$e3]

	adc  b                                           ; $4000: $88
	adc  b                                           ; $4001: $88
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	adc  b                                           ; $4006: $88
	adc  b                                           ; $4007: $88
	adc  b                                           ; $4008: $88
	adc  b                                           ; $4009: $88
	adc  b                                           ; $400a: $88
	adc  b                                           ; $400b: $88
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	adc  b                                           ; $401b: $88
	adc  b                                           ; $401c: $88
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	ld   a, b                                        ; $4029: $78
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	add  a                                           ; $402d: $87
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  b                                           ; $4030: $88
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	adc  b                                           ; $403d: $88
	adc  b                                           ; $403e: $88
	adc  b                                           ; $403f: $88
	ld   a, b                                        ; $4040: $78
	adc  b                                           ; $4041: $88
	add  a                                           ; $4042: $87
	adc  b                                           ; $4043: $88
	adc  b                                           ; $4044: $88
	ld   a, b                                        ; $4045: $78
	adc  b                                           ; $4046: $88
	adc  b                                           ; $4047: $88
	adc  b                                           ; $4048: $88
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	adc  b                                           ; $404c: $88
	adc  b                                           ; $404d: $88
	adc  b                                           ; $404e: $88
	adc  b                                           ; $404f: $88
	adc  b                                           ; $4050: $88
	adc  b                                           ; $4051: $88
	adc  b                                           ; $4052: $88
	adc  b                                           ; $4053: $88
	adc  b                                           ; $4054: $88
	adc  b                                           ; $4055: $88
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  b                                           ; $4058: $88
	adc  b                                           ; $4059: $88
	adc  b                                           ; $405a: $88
	adc  b                                           ; $405b: $88
	adc  b                                           ; $405c: $88
	adc  b                                           ; $405d: $88
	adc  b                                           ; $405e: $88
	adc  b                                           ; $405f: $88
	adc  b                                           ; $4060: $88
	adc  b                                           ; $4061: $88
	adc  b                                           ; $4062: $88
	adc  b                                           ; $4063: $88
	adc  b                                           ; $4064: $88
	adc  b                                           ; $4065: $88
	adc  b                                           ; $4066: $88
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	adc  b                                           ; $4069: $88
	adc  b                                           ; $406a: $88
	adc  b                                           ; $406b: $88
	adc  b                                           ; $406c: $88
	adc  b                                           ; $406d: $88
	adc  b                                           ; $406e: $88
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	adc  b                                           ; $4071: $88
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	adc  b                                           ; $4074: $88
	adc  b                                           ; $4075: $88
	adc  b                                           ; $4076: $88
	adc  b                                           ; $4077: $88
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	adc  b                                           ; $407a: $88
	adc  b                                           ; $407b: $88
	adc  b                                           ; $407c: $88
	adc  b                                           ; $407d: $88
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	adc  b                                           ; $4080: $88
	adc  b                                           ; $4081: $88
	adc  b                                           ; $4082: $88
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	adc  b                                           ; $4089: $88
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	adc  c                                           ; $4091: $89
	adc  b                                           ; $4092: $88
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	adc  b                                           ; $409a: $88
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	adc  b                                           ; $40a4: $88
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	adc  b                                           ; $40a9: $88
	adc  b                                           ; $40aa: $88
	adc  b                                           ; $40ab: $88
	adc  b                                           ; $40ac: $88
	adc  b                                           ; $40ad: $88
	adc  b                                           ; $40ae: $88
	adc  b                                           ; $40af: $88
	adc  b                                           ; $40b0: $88
	adc  b                                           ; $40b1: $88
	adc  b                                           ; $40b2: $88
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	adc  b                                           ; $40b5: $88
	adc  b                                           ; $40b6: $88
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	adc  b                                           ; $40b9: $88
	adc  b                                           ; $40ba: $88
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  b                                           ; $40bd: $88
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	adc  b                                           ; $40c1: $88
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	adc  b                                           ; $40c7: $88
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  b                                           ; $40ca: $88
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	adc  b                                           ; $40cd: $88
	adc  b                                           ; $40ce: $88
	adc  b                                           ; $40cf: $88
	adc  b                                           ; $40d0: $88
	adc  b                                           ; $40d1: $88
	adc  b                                           ; $40d2: $88
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	sbc  c                                           ; $40d6: $99
	sbc  e                                           ; $40d7: $9b
	adc  c                                           ; $40d8: $89
	xor  d                                           ; $40d9: $aa
	rst  $10                                         ; $40da: $d7
	sbc  h                                           ; $40db: $9c
	jp   z, $ac59                                    ; $40dc: $ca $59 $ac

	or   a                                           ; $40df: $b7
	ld   l, b                                        ; $40e0: $68
	ld   a, d                                        ; $40e1: $7a
	sbc  b                                           ; $40e2: $98
	cp   e                                           ; $40e3: $bb
	cp   d                                           ; $40e4: $ba
	xor  d                                           ; $40e5: $aa
	sbc  h                                           ; $40e6: $9c
	ld   a, b                                        ; $40e7: $78
	and  l                                           ; $40e8: $a5
	ld   [hl], h                                     ; $40e9: $74
	ld   h, l                                        ; $40ea: $65
	ld   b, [hl]                                     ; $40eb: $46
	sbc  h                                           ; $40ec: $9c
	or   a                                           ; $40ed: $b7
	xor  d                                           ; $40ee: $aa
	adc  e                                           ; $40ef: $8b
	ld   [hl], l                                     ; $40f0: $75
	ld   d, [hl]                                     ; $40f1: $56
	ld   [hl], l                                     ; $40f2: $75
	ld   b, a                                        ; $40f3: $47
	and  [hl]                                        ; $40f4: $a6
	ld   h, [hl]                                     ; $40f5: $66
	ld   h, [hl]                                     ; $40f6: $66
	ld   h, l                                        ; $40f7: $65
	ld   h, [hl]                                     ; $40f8: $66
	ld   h, a                                        ; $40f9: $67
	ld   h, [hl]                                     ; $40fa: $66
	ld   h, a                                        ; $40fb: $67
	ld   a, b                                        ; $40fc: $78
	ld   [hl], a                                     ; $40fd: $77
	add  a                                           ; $40fe: $87
	ld   a, b                                        ; $40ff: $78
	add  a                                           ; $4100: $87
	ld   a, b                                        ; $4101: $78
	adc  b                                           ; $4102: $88
	sbc  b                                           ; $4103: $98
	adc  b                                           ; $4104: $88
	sbc  d                                           ; $4105: $9a
	adc  b                                           ; $4106: $88
	adc  d                                           ; $4107: $8a
	adc  c                                           ; $4108: $89
	ld   [hl], a                                     ; $4109: $77
	sbc  b                                           ; $410a: $98
	add  a                                           ; $410b: $87
	add  a                                           ; $410c: $87
	adc  b                                           ; $410d: $88
	ld   h, a                                        ; $410e: $67
	ld   h, a                                        ; $410f: $67
	ld   [hl], l                                     ; $4110: $75
	ld   b, l                                        ; $4111: $45
	inc  sp                                          ; $4112: $33
	ld   b, c                                        ; $4113: $41
	ld   de, $0111                                   ; $4114: $11 $11 $01
	ld   de, $1111                                   ; $4117: $11 $11 $11
	ld   e, e                                        ; $411a: $5b
	call $ffef                                       ; $411b: $cd $ef $ff
	cp   $ff                                         ; $411e: $fe $ff
	rst  $38                                         ; $4120: $ff
	db   $db                                         ; $4121: $db
	cp   l                                           ; $4122: $bd
	db   $fc                                         ; $4123: $fc
	xor  e                                           ; $4124: $ab
	rst  $28                                         ; $4125: $ef
	rst  $28                                         ; $4126: $ef
	call z, $a8ff                                    ; $4127: $cc $ff $a8
	xor  b                                           ; $412a: $a8
	xor  c                                           ; $412b: $a9
	ld   h, l                                        ; $412c: $65
	ld   a, c                                        ; $412d: $79
	add  [hl]                                        ; $412e: $86
	inc  sp                                          ; $412f: $33
	ld   sp, $1111                                   ; $4130: $31 $11 $11
	ld   de, $1111                                   ; $4133: $11 $11 $11
	ld   de, $df26                                   ; $4136: $11 $26 $df
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $38                                         ; $413b: $ff
	jp   c, wBaseScriptAddr                                    ; $413c: $da $8a $cb

	xor  e                                           ; $413f: $ab
	rst  JumpTable                                         ; $4140: $df
	cp   $dc                                         ; $4141: $fe $dc
	rst  JumpTable                                         ; $4143: $df
	db   $eb                                         ; $4144: $eb
	cp   h                                           ; $4145: $bc
	call z, $bbba                                    ; $4146: $cc $ba $bb
	sbc  $bb                                         ; $4149: $de $bb
	cp   e                                           ; $414b: $bb
	cp   b                                           ; $414c: $b8
	ld   d, e                                        ; $414d: $53
	inc  sp                                          ; $414e: $33
	ld   hl, $1111                                   ; $414f: $21 $11 $11
	ld   de, $1111                                   ; $4152: $11 $11 $11
	ld   de, $bf15                                   ; $4155: $11 $15 $bf
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	or   l                                           ; $415b: $b5
	adc  h                                           ; $415c: $8c
	call z, $cfbb                                    ; $415d: $cc $bb $cf
	db   $fd                                         ; $4160: $fd
	set  1, l                                        ; $4161: $cb $cd
	xor  b                                           ; $4163: $a8
	adc  h                                           ; $4164: $8c
	rst  $38                                         ; $4165: $ff
	jp   z, $dbcd                                    ; $4166: $ca $cd $db

	xor  c                                           ; $4169: $a9
	xor  h                                           ; $416a: $ac
	ret  z                                           ; $416b: $c8

	ld   [hl], a                                     ; $416c: $77
	ld   h, [hl]                                     ; $416d: $66
	ld   h, l                                        ; $416e: $65
	ld   [hl-], a                                    ; $416f: $32
	ld   de, $1111                                   ; $4170: $11 $11 $11
	ld   de, $1111                                   ; $4173: $11 $11 $11
	ld   de, rAUDENA                                   ; $4176: $11 $26 $ff
	db   $fd                                         ; $4179: $fd
	rst  $38                                         ; $417a: $ff
	ei                                               ; $417b: $fb
	ld   h, h                                        ; $417c: $64
	ld   l, b                                        ; $417d: $68
	cp   [hl]                                        ; $417e: $be
	db   $ed                                         ; $417f: $ed
	rst  JumpTable                                         ; $4180: $df
	db   $fc                                         ; $4181: $fc
	xor  d                                           ; $4182: $aa
	sbc  c                                           ; $4183: $99
	sbc  c                                           ; $4184: $99
	adc  d                                           ; $4185: $8a
	adc  $ff                                         ; $4186: $ce $ff
	db   $db                                         ; $4188: $db
	db   $ed                                         ; $4189: $ed
	and  a                                           ; $418a: $a7
	adc  c                                           ; $418b: $89
	xor  d                                           ; $418c: $aa
	add  a                                           ; $418d: $87
	adc  b                                           ; $418e: $88
	ld   [hl], a                                     ; $418f: $77
	ld   h, [hl]                                     ; $4190: $66
	ld   d, d                                        ; $4191: $52
	ld   de, $1111                                   ; $4192: $11 $11 $11
	ld   de, $1111                                   ; $4195: $11 $11 $11
	ld   de, $ff16                                   ; $4198: $11 $16 $ff
	cp   $dd                                         ; $419b: $fe $dd
	cp   c                                           ; $419d: $b9
	halt                                             ; $419e: $76
	ld   a, d                                        ; $419f: $7a
	rst  JumpTable                                         ; $41a0: $df
	db   $fc                                         ; $41a1: $fc
	cp   [hl]                                        ; $41a2: $be
	jp   z, $8987                                    ; $41a3: $ca $87 $89

	cp   e                                           ; $41a6: $bb
	cp   e                                           ; $41a7: $bb
	call z, $bded                                    ; $41a8: $cc $ed $bd
	db   $eb                                         ; $41ab: $eb
	xor  b                                           ; $41ac: $a8
	ld   l, b                                        ; $41ad: $68
	cp   e                                           ; $41ae: $bb
	xor  d                                           ; $41af: $aa
	cp   d                                           ; $41b0: $ba
	cp   e                                           ; $41b1: $bb
	add  l                                           ; $41b2: $85
	ld   b, h                                        ; $41b3: $44
	ld   b, d                                        ; $41b4: $42
	ld   de, $1111                                   ; $41b5: $11 $11 $11
	ld   [de], a                                     ; $41b8: $12
	ld   de, $1111                                   ; $41b9: $11 $11 $11
	ld   h, $ef                                      ; $41bc: $26 $ef
	rst  $28                                         ; $41be: $ef
	db   $db                                         ; $41bf: $db
	sub  a                                           ; $41c0: $97
	add  l                                           ; $41c1: $85
	ld   l, b                                        ; $41c2: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41c3: $cf
	db   $fc                                         ; $41c4: $fc
	set  1, d                                        ; $41c5: $cb $ca
	add  a                                           ; $41c7: $87
	ld   l, b                                        ; $41c8: $68
	cp   h                                           ; $41c9: $bc
	res  7, e                                        ; $41ca: $cb $bb
	call c, $bacb                                    ; $41cc: $dc $cb $ba
	call c, $88ab                                    ; $41cf: $dc $ab $88
	xor  e                                           ; $41d2: $ab
	xor  c                                           ; $41d3: $a9
	xor  c                                           ; $41d4: $a9
	sbc  b                                           ; $41d5: $98
	ld   [hl], a                                     ; $41d6: $77
	ld   d, h                                        ; $41d7: $54
	ld   b, h                                        ; $41d8: $44
	ld   hl, $1111                                   ; $41d9: $21 $11 $11
	ld   de, $1111                                   ; $41dc: $11 $11 $11
	ld   de, $cf15                                   ; $41df: $11 $15 $cf
	xor  $bb                                         ; $41e2: $ee $bb
	cp   c                                           ; $41e4: $b9
	ld   h, h                                        ; $41e5: $64
	ld   c, d                                        ; $41e6: $4a
	rst  JumpTable                                         ; $41e7: $df
	db   $eb                                         ; $41e8: $eb
	cp   h                                           ; $41e9: $bc
	cp   h                                           ; $41ea: $bc
	and  a                                           ; $41eb: $a7
	ld   a, b                                        ; $41ec: $78
	cp   h                                           ; $41ed: $bc
	call z, $ccbb                                    ; $41ee: $cc $bb $cc
	cp   c                                           ; $41f1: $b9
	xor  d                                           ; $41f2: $aa
	sbc  d                                           ; $41f3: $9a
	xor  d                                           ; $41f4: $aa
	cp   d                                           ; $41f5: $ba
	xor  e                                           ; $41f6: $ab
	xor  c                                           ; $41f7: $a9
	sbc  d                                           ; $41f8: $9a
	adc  b                                           ; $41f9: $88
	sbc  c                                           ; $41fa: $99
	add  [hl]                                        ; $41fb: $86
	ld   d, [hl]                                     ; $41fc: $56
	ld   d, e                                        ; $41fd: $53
	ld   b, e                                        ; $41fe: $43
	ld   [hl+], a                                    ; $41ff: $22
	inc  de                                          ; $4200: $13
	ld   hl, $1111                                   ; $4201: $21 $11 $11
	ld   de, $8e13                                   ; $4204: $11 $13 $8e
	db   $fd                                         ; $4207: $fd
	cp   e                                           ; $4208: $bb
	cp   b                                           ; $4209: $b8
	ld   h, h                                        ; $420a: $64
	ld   b, a                                        ; $420b: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $420c: $cf
	db   $fd                                         ; $420d: $fd
	res  7, e                                        ; $420e: $cb $bb
	sbc  b                                           ; $4210: $98
	ld   [hl], a                                     ; $4211: $77
	sbc  e                                           ; $4212: $9b
	cp   e                                           ; $4213: $bb
	call z, $cccc                                    ; $4214: $cc $cc $cc
	xor  d                                           ; $4217: $aa
	sbc  c                                           ; $4218: $99
	adc  c                                           ; $4219: $89
	xor  d                                           ; $421a: $aa
	xor  d                                           ; $421b: $aa
	xor  d                                           ; $421c: $aa
	xor  d                                           ; $421d: $aa
	adc  b                                           ; $421e: $88
	adc  c                                           ; $421f: $89
	sub  a                                           ; $4220: $97
	halt                                             ; $4221: $76
	ld   h, l                                        ; $4222: $65
	ld   d, [hl]                                     ; $4223: $56
	ld   d, h                                        ; $4224: $54
	ld   d, h                                        ; $4225: $54
	ld   hl, $1111                                   ; $4226: $21 $11 $11
	ld   de, $2811                                   ; $4229: $11 $11 $28
	xor  l                                           ; $422c: $ad
	jp   c, $87ab                                    ; $422d: $da $ab $87

	ld   d, h                                        ; $4230: $54
	ld   e, d                                        ; $4231: $5a
	sbc  $db                                         ; $4232: $de $db
	cp   e                                           ; $4234: $bb
	res  2, a                                        ; $4235: $cb $97
	ld   a, b                                        ; $4237: $78
	xor  e                                           ; $4238: $ab
	xor  e                                           ; $4239: $ab
	xor  e                                           ; $423a: $ab
	call z, $9aba                                    ; $423b: $cc $ba $9a
	sbc  c                                           ; $423e: $99
	sbc  b                                           ; $423f: $98
	adc  b                                           ; $4240: $88
	sbc  d                                           ; $4241: $9a
	cp   e                                           ; $4242: $bb
	xor  c                                           ; $4243: $a9
	sbc  c                                           ; $4244: $99
	sbc  b                                           ; $4245: $98
	ld   [hl], a                                     ; $4246: $77
	ld   a, b                                        ; $4247: $78
	sub  a                                           ; $4248: $97
	ld   h, [hl]                                     ; $4249: $66
	ld   [hl], a                                     ; $424a: $77
	ld   d, l                                        ; $424b: $55
	ld   d, l                                        ; $424c: $55
	ld   d, h                                        ; $424d: $54
	ld   [hl-], a                                    ; $424e: $32
	ld   [hl+], a                                    ; $424f: $22
	inc  [hl]                                        ; $4250: $34
	ld   de, $9d23                                   ; $4251: $11 $23 $9d
	cp   c                                           ; $4254: $b9
	adc  b                                           ; $4255: $88
	sbc  c                                           ; $4256: $99
	halt                                             ; $4257: $76
	ld   e, b                                        ; $4258: $58
	cp   [hl]                                        ; $4259: $be
	db   $eb                                         ; $425a: $eb
	xor  c                                           ; $425b: $a9
	xor  d                                           ; $425c: $aa
	sbc  c                                           ; $425d: $99
	adc  c                                           ; $425e: $89
	sbc  e                                           ; $425f: $9b
	cp   e                                           ; $4260: $bb
	sbc  c                                           ; $4261: $99
	xor  e                                           ; $4262: $ab
	cp   d                                           ; $4263: $ba

Jump_0e3_4264:
	xor  b                                           ; $4264: $a8
	sbc  d                                           ; $4265: $9a
	sbc  b                                           ; $4266: $98
	adc  b                                           ; $4267: $88
	adc  c                                           ; $4268: $89
	xor  c                                           ; $4269: $a9
	sbc  c                                           ; $426a: $99
	adc  b                                           ; $426b: $88
	adc  b                                           ; $426c: $88
	ld   a, b                                        ; $426d: $78
	ld   [hl], a                                     ; $426e: $77
	ld   [hl], a                                     ; $426f: $77
	ld   [hl], a                                     ; $4270: $77
	adc  c                                           ; $4271: $89
	sbc  b                                           ; $4272: $98
	ld   a, b                                        ; $4273: $78
	add  a                                           ; $4274: $87
	ld   a, b                                        ; $4275: $78
	ld   [hl], a                                     ; $4276: $77
	ld   [hl], a                                     ; $4277: $77
	ld   a, b                                        ; $4278: $78
	halt                                             ; $4279: $76
	ld   h, l                                        ; $427a: $65
	ld   d, [hl]                                     ; $427b: $56
	ld   h, [hl]                                     ; $427c: $66
	ld   d, [hl]                                     ; $427d: $56
	ld   h, l                                        ; $427e: $65
	ld   d, h                                        ; $427f: $54
	ld   b, l                                        ; $4280: $45
	ld   h, a                                        ; $4281: $67
	adc  c                                           ; $4282: $89
	sbc  c                                           ; $4283: $99
	cp   c                                           ; $4284: $b9
	adc  b                                           ; $4285: $88

Call_0e3_4286:
	sbc  b                                           ; $4286: $98
	sbc  e                                           ; $4287: $9b
	xor  d                                           ; $4288: $aa
	xor  e                                           ; $4289: $ab
	cp   d                                           ; $428a: $ba
	sbc  b                                           ; $428b: $98
	sbc  b                                           ; $428c: $98
	sbc  c                                           ; $428d: $99
	sbc  b                                           ; $428e: $98
	sbc  b                                           ; $428f: $98
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  c                                           ; $4292: $89
	sbc  b                                           ; $4293: $98
	sbc  b                                           ; $4294: $98
	add  a                                           ; $4295: $87
	add  a                                           ; $4296: $87

Call_0e3_4297:
	ld   a, b                                        ; $4297: $78
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	ld   a, b                                        ; $429b: $78
	ld   [hl], a                                     ; $429c: $77
	ld   [hl], a                                     ; $429d: $77
	adc  b                                           ; $429e: $88
	ld   [hl], a                                     ; $429f: $77
	ld   [hl], a                                     ; $42a0: $77
	ld   [hl], a                                     ; $42a1: $77
	add  a                                           ; $42a2: $87
	ld   a, b                                        ; $42a3: $78
	adc  b                                           ; $42a4: $88
	add  a                                           ; $42a5: $87
	ld   [hl], a                                     ; $42a6: $77
	ld   a, b                                        ; $42a7: $78
	add  a                                           ; $42a8: $87
	ld   a, c                                        ; $42a9: $79
	sbc  b                                           ; $42aa: $98
	adc  b                                           ; $42ab: $88
	sbc  b                                           ; $42ac: $98
	adc  b                                           ; $42ad: $88
	adc  c                                           ; $42ae: $89
	adc  b                                           ; $42af: $88
	sbc  b                                           ; $42b0: $98
	sbc  b                                           ; $42b1: $98
	sbc  c                                           ; $42b2: $99
	sbc  c                                           ; $42b3: $99
	adc  b                                           ; $42b4: $88
	sbc  b                                           ; $42b5: $98
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	ld   a, b                                        ; $42ba: $78
	adc  b                                           ; $42bb: $88
	ld   a, b                                        ; $42bc: $78
	ld   [hl], a                                     ; $42bd: $77
	ld   [hl], a                                     ; $42be: $77
	ld   [hl], a                                     ; $42bf: $77
	ld   [hl], a                                     ; $42c0: $77
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	ld   [hl], a                                     ; $42c3: $77
	ld   [hl], a                                     ; $42c4: $77
	halt                                             ; $42c5: $76
	ld   [hl], a                                     ; $42c6: $77
	ld   [hl], a                                     ; $42c7: $77
	ld   [hl], a                                     ; $42c8: $77
	ld   [hl], a                                     ; $42c9: $77
	ld   [hl], a                                     ; $42ca: $77
	ld   a, b                                        ; $42cb: $78
	adc  c                                           ; $42cc: $89
	adc  b                                           ; $42cd: $88
	sbc  b                                           ; $42ce: $98
	adc  b                                           ; $42cf: $88
	adc  c                                           ; $42d0: $89
	adc  c                                           ; $42d1: $89
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	sbc  b                                           ; $42d4: $98
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	sbc  b                                           ; $42d8: $98
	adc  b                                           ; $42d9: $88
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	sbc  b                                           ; $42dd: $98
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	ld   a, b                                        ; $42e0: $78
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	adc  b                                           ; $42f2: $88
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  b                                           ; $42f5: $88
	ld   de, $1111                                   ; $42f6: $11 $11 $11
	ld   de, $1111                                   ; $42f9: $11 $11 $11
	ld   de, $1111                                   ; $42fc: $11 $11 $11
	ld   de, $1111                                   ; $42ff: $11 $11 $11
	ld   de, $1111                                   ; $4302: $11 $11 $11
	ld   de, $4800                                   ; $4305: $11 $00 $48
	ld   de, $1111                                   ; $4308: $11 $11 $11
	ld   de, $1111                                   ; $430b: $11 $11 $11
	ld   de, $1111                                   ; $430e: $11 $11 $11
	ld   de, $5413                                   ; $4311: $11 $13 $54
	ld   d, h                                        ; $4314: $54
	ld   d, h                                        ; $4315: $54
	ld   b, c                                        ; $4316: $41
	rra                                              ; $4317: $1f
	rst  $38                                         ; $4318: $ff
	pop  af                                          ; $4319: $f1
	ld   de, $1311                                   ; $431a: $11 $11 $13
	or   c                                           ; $431d: $b1
	ld   de, $dd1c                                   ; $431e: $11 $1c $dd
	call z, $c1dd                                    ; $4321: $cc $dd $c1
	ld   de, $1111                                   ; $4324: $11 $11 $11
	ld   de, $1111                                   ; $4327: $11 $11 $11
	ld   de, $1111                                   ; $432a: $11 $11 $11
	ld   de, $1111                                   ; $432d: $11 $11 $11
	ld   de, $5411                                   ; $4330: $11 $11 $54
	ld   b, h                                        ; $4333: $44
	or   e                                           ; $4334: $b3
	ld   de, $5454                                   ; $4335: $11 $54 $54
	ld   h, a                                        ; $4338: $67
	ld   [hl], d                                     ; $4339: $72
	ld   de, $1111                                   ; $433a: $11 $11 $11
	ld   de, $1112                                   ; $433d: $11 $12 $11
	ld   [de], a                                     ; $4340: $12
	ld   de, $1111                                   ; $4341: $11 $11 $11
	ld   h, [hl]                                     ; $4344: $66
	halt                                             ; $4345: $76
	add  e                                           ; $4346: $83
	ld   de, $8888                                   ; $4347: $11 $88 $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	adc  b                                           ; $434c: $88
	adc  b                                           ; $434d: $88
	adc  b                                           ; $434e: $88
	adc  c                                           ; $434f: $89
	sbc  c                                           ; $4350: $99
	sbc  c                                           ; $4351: $99
	sbc  c                                           ; $4352: $99
	sbc  c                                           ; $4353: $99
	sbc  c                                           ; $4354: $99
	sbc  c                                           ; $4355: $99
	sbc  c                                           ; $4356: $99
	sbc  b                                           ; $4357: $98
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	add  a                                           ; $435c: $87
	ld   [hl], a                                     ; $435d: $77
	ld   [hl], a                                     ; $435e: $77
	ld   [hl], a                                     ; $435f: $77
	ld   [hl], a                                     ; $4360: $77
	ld   [hl], a                                     ; $4361: $77
	ld   [hl], a                                     ; $4362: $77
	ld   [hl], a                                     ; $4363: $77
	ld   [hl], a                                     ; $4364: $77
	ld   [hl], a                                     ; $4365: $77
	ld   [hl], a                                     ; $4366: $77
	ld   [hl], a                                     ; $4367: $77
	ld   [hl], a                                     ; $4368: $77
	ld   a, b                                        ; $4369: $78
	adc  b                                           ; $436a: $88
	adc  c                                           ; $436b: $89
	adc  c                                           ; $436c: $89
	sbc  c                                           ; $436d: $99
	xor  c                                           ; $436e: $a9
	sbc  d                                           ; $436f: $9a
	xor  d                                           ; $4370: $aa
	xor  d                                           ; $4371: $aa
	cp   e                                           ; $4372: $bb
	xor  d                                           ; $4373: $aa
	xor  d                                           ; $4374: $aa

Jump_0e3_4375:
	xor  d                                           ; $4375: $aa
	sbc  c                                           ; $4376: $99
	xor  c                                           ; $4377: $a9
	sbc  b                                           ; $4378: $98
	sbc  b                                           ; $4379: $98
	add  a                                           ; $437a: $87
	ld   [hl], a                                     ; $437b: $77
	halt                                             ; $437c: $76
	ld   h, [hl]                                     ; $437d: $66
	ld   h, l                                        ; $437e: $65
	ld   d, l                                        ; $437f: $55
	ld   b, h                                        ; $4380: $44
	ld   b, e                                        ; $4381: $43
	inc  sp                                          ; $4382: $33
	inc  sp                                          ; $4383: $33
	inc  hl                                          ; $4384: $23
	inc  sp                                          ; $4385: $33
	ld   b, h                                        ; $4386: $44
	ld   d, [hl]                                     ; $4387: $56
	ld   a, b                                        ; $4388: $78
	adc  c                                           ; $4389: $89
	xor  d                                           ; $438a: $aa
	xor  e                                           ; $438b: $ab
	call z, $decc                                    ; $438c: $cc $cc $de
	xor  $ff                                         ; $438f: $ee $ff
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	rst  $38                                         ; $4393: $ff
	cp   $ec                                         ; $4394: $fe $ec

Jump_0e3_4396:
	res  5, c                                        ; $4396: $cb $a9
	sub  a                                           ; $4398: $97
	ld   h, [hl]                                     ; $4399: $66
	ld   d, h                                        ; $439a: $54
	ld   [hl-], a                                    ; $439b: $32
	ld   de, $1111                                   ; $439c: $11 $11 $11
	ld   de, $1111                                   ; $439f: $11 $11 $11
	ld   de, $4513                                   ; $43a2: $11 $13 $45
	ld   h, a                                        ; $43a5: $67
	adc  c                                           ; $43a6: $89
	sbc  e                                           ; $43a7: $9b
	cp   e                                           ; $43a8: $bb
	call $efee                                       ; $43a9: $cd $ee $ef
	xor  $ef                                         ; $43ac: $ee $ef
	cp   $ef                                         ; $43ae: $fe $ef
	rst  $38                                         ; $43b0: $ff
	rst  $38                                         ; $43b1: $ff
	rst  $28                                         ; $43b2: $ef
	db   $ed                                         ; $43b3: $ed
	res  7, c                                        ; $43b4: $cb $b9
	adc  b                                           ; $43b6: $88
	halt                                             ; $43b7: $76
	ld   h, l                                        ; $43b8: $65
	ld   b, h                                        ; $43b9: $44
	ld   [hl-], a                                    ; $43ba: $32
	ld   hl, $1111                                   ; $43bb: $21 $11 $11
	ld   de, $1111                                   ; $43be: $11 $11 $11
	ld   de, $5623                                   ; $43c1: $11 $23 $56
	ld   [hl], a                                     ; $43c4: $77
	adc  c                                           ; $43c5: $89
	xor  d                                           ; $43c6: $aa
	xor  d                                           ; $43c7: $aa
	cp   h                                           ; $43c8: $bc
	db   $dd                                         ; $43c9: $dd
	xor  $ee                                         ; $43ca: $ee $ee
	rst  $28                                         ; $43cc: $ef
	xor  $ff                                         ; $43cd: $ee $ff
	rst  $38                                         ; $43cf: $ff
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	db   $ed                                         ; $43d2: $ed
	call z, $99b9                                    ; $43d3: $cc $b9 $99
	halt                                             ; $43d6: $76
	ld   h, l                                        ; $43d7: $65
	ld   b, e                                        ; $43d8: $43
	ld   hl, $1111                                   ; $43d9: $21 $11 $11
	ld   de, $1111                                   ; $43dc: $11 $11 $11
	ld   de, $3411                                   ; $43df: $11 $11 $34
	ld   h, [hl]                                     ; $43e2: $66
	ld   a, b                                        ; $43e3: $78
	adc  d                                           ; $43e4: $8a
	xor  e                                           ; $43e5: $ab
	cp   e                                           ; $43e6: $bb
	db   $dd                                         ; $43e7: $dd
	sbc  $ef                                         ; $43e8: $de $ef
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	rst  $38                                         ; $43ec: $ff
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	rst  $38                                         ; $43f0: $ff
	db   $ec                                         ; $43f1: $ec
	cp   e                                           ; $43f2: $bb
	xor  b                                           ; $43f3: $a8
	add  a                                           ; $43f4: $87
	ld   h, l                                        ; $43f5: $65
	ld   b, e                                        ; $43f6: $43
	ld   [hl-], a                                    ; $43f7: $32
	ld   de, $1111                                   ; $43f8: $11 $11 $11
	ld   de, $1111                                   ; $43fb: $11 $11 $11
	ld   de, $4513                                   ; $43fe: $11 $13 $45
	ld   h, a                                        ; $4401: $67
	adc  c                                           ; $4402: $89
	sbc  d                                           ; $4403: $9a
	xor  e                                           ; $4404: $ab
	cp   l                                           ; $4405: $bd
	sbc  $ef                                         ; $4406: $de $ef
	rst  $38                                         ; $4408: $ff
	rst  $28                                         ; $4409: $ef
	rst  $38                                         ; $440a: $ff
	rst  $38                                         ; $440b: $ff
	rst  $38                                         ; $440c: $ff
	rst  $38                                         ; $440d: $ff
	rst  $38                                         ; $440e: $ff
	db   $ed                                         ; $440f: $ed
	db   $db                                         ; $4410: $db
	xor  d                                           ; $4411: $aa
	sbc  b                                           ; $4412: $98
	halt                                             ; $4413: $76
	ld   d, h                                        ; $4414: $54
	ld   [hl-], a                                    ; $4415: $32
	ld   hl, $1111                                   ; $4416: $21 $11 $11
	ld   de, $1111                                   ; $4419: $11 $11 $11
	ld   de, $2411                                   ; $441c: $11 $11 $24
	ld   h, a                                        ; $441f: $67
	adc  c                                           ; $4420: $89
	xor  e                                           ; $4421: $ab
	cp   e                                           ; $4422: $bb
	call $eede                                       ; $4423: $cd $de $ee
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	rst  $38                                         ; $4428: $ff
	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	cp   $db                                         ; $442d: $fe $db
	jp   z, $6698                                    ; $442f: $ca $98 $66

	ld   d, h                                        ; $4432: $54
	inc  hl                                          ; $4433: $23
	ld   de, $1111                                   ; $4434: $11 $11 $11
	ld   de, $1111                                   ; $4437: $11 $11 $11
	ld   de, $2311                                   ; $443a: $11 $11 $23
	ld   b, a                                        ; $443d: $47
	adc  c                                           ; $443e: $89
	sbc  d                                           ; $443f: $9a
	jp   z, $cecc                                    ; $4440: $ca $cc $ce

	xor  $ff                                         ; $4443: $ee $ff
	rst  $38                                         ; $4445: $ff
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	cp   $ff                                         ; $444a: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $444c: $cf
	sbc  e                                           ; $444d: $9b
	xor  b                                           ; $444e: $a8
	ld   h, a                                        ; $444f: $67
	ld   d, h                                        ; $4450: $54
	ld   d, c                                        ; $4451: $51
	ld   sp, $1111                                   ; $4452: $31 $11 $11
	ld   de, $1111                                   ; $4455: $11 $11 $11
	ld   de, $1311                                   ; $4458: $11 $11 $13
	ld   b, [hl]                                     ; $445b: $46
	adc  b                                           ; $445c: $88
	xor  d                                           ; $445d: $aa
	cp   e                                           ; $445e: $bb
	cp   e                                           ; $445f: $bb
	adc  $ee                                         ; $4460: $ce $ee
	rst  $28                                         ; $4462: $ef
	rst  $38                                         ; $4463: $ff
	rst  $38                                         ; $4464: $ff
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	rst  $38                                         ; $4468: $ff
	db   $fd                                         ; $4469: $fd
	ei                                               ; $446a: $fb
	reti                                             ; $446b: $d9


	cp   e                                           ; $446c: $bb
	ld   c, d                                        ; $446d: $4a
	ld   d, e                                        ; $446e: $53
	add  c                                           ; $446f: $81
	ld   b, c                                        ; $4470: $41
	inc  de                                          ; $4471: $13
	ld   de, $1111                                   ; $4472: $11 $11 $11
	ld   de, $1111                                   ; $4475: $11 $11 $11
	inc  de                                          ; $4478: $13
	ld   b, l                                        ; $4479: $45
	adc  b                                           ; $447a: $88
	sbc  e                                           ; $447b: $9b
	cp   e                                           ; $447c: $bb
	xor  l                                           ; $447d: $ad
	adc  $de                                         ; $447e: $ce $de
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	rst  $38                                         ; $4484: $ff
	rst  JumpTable                                         ; $4485: $df
	cp   $ff                                         ; $4486: $fe $ff
	rst  JumpTable                                         ; $4488: $df
	cp   e                                           ; $4489: $bb
	xor  c                                           ; $448a: $a9
	ld   a, c                                        ; $448b: $79
	ld   [hl], e                                     ; $448c: $73
	ld   d, d                                        ; $448d: $52
	ld   sp, $1111                                   ; $448e: $31 $11 $11
	ld   de, $1111                                   ; $4491: $11 $11 $11
	ld   de, $3211                                   ; $4494: $11 $11 $32
	ld   c, b                                        ; $4497: $48
	ld   a, c                                        ; $4498: $79
	xor  d                                           ; $4499: $aa
	cp   e                                           ; $449a: $bb
	call z, $cfcf                                    ; $449b: $cc $cf $cf
	rst  JumpTable                                         ; $449e: $df
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	rst  $38                                         ; $44a1: $ff
	rst  $28                                         ; $44a2: $ef
	rst  $38                                         ; $44a3: $ff
	cp   $fd                                         ; $44a4: $fe $fd
	cp   $ca                                         ; $44a6: $fe $ca
	sbc  d                                           ; $44a8: $9a
	and  h                                           ; $44a9: $a4
	ld   h, a                                        ; $44aa: $67
	dec  d                                           ; $44ab: $15
	ld   hl, $1111                                   ; $44ac: $21 $11 $11
	ld   de, $1111                                   ; $44af: $11 $11 $11
	ld   de, $5321                                   ; $44b2: $11 $21 $53
	ld   c, d                                        ; $44b5: $4a
	ld   l, d                                        ; $44b6: $6a
	adc  h                                           ; $44b7: $8c
	jp   z, $eedb                                    ; $44b8: $ca $db $ee

	rst  JumpTable                                         ; $44bb: $df
	rst  JumpTable                                         ; $44bc: $df
	db   $fd                                         ; $44bd: $fd
	db   $fd                                         ; $44be: $fd
	rst  $38                                         ; $44bf: $ff
	rst  JumpTable                                         ; $44c0: $df
	rst  JumpTable                                         ; $44c1: $df
	rst  $38                                         ; $44c2: $ff
	db   $fc                                         ; $44c3: $fc
	rst  $30                                         ; $44c4: $f7
	sbc  $7a                                         ; $44c5: $de $7a
	dec  [hl]                                        ; $44c7: $35
	sub  d                                           ; $44c8: $92
	ld   b, c                                        ; $44c9: $41
	ld   de, $1111                                   ; $44ca: $11 $11 $11
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	ld   de, $2523                                   ; $44d0: $11 $23 $25
	sbc  c                                           ; $44d3: $99
	add  a                                           ; $44d4: $87
	ld   [$bcbf], a                                  ; $44d5: $ea $bf $bc
	rst  JumpTable                                         ; $44d8: $df
	cp   a                                           ; $44d9: $bf
	rst  $38                                         ; $44da: $ff
	db   $fd                                         ; $44db: $fd
	cp   $ff                                         ; $44dc: $fe $ff
	rst  $38                                         ; $44de: $ff
	rst  JumpTable                                         ; $44df: $df
	ei                                               ; $44e0: $fb
	ei                                               ; $44e1: $fb
	db   $eb                                         ; $44e2: $eb
	ld   a, [hl]                                     ; $44e3: $7e
	ld   b, a                                        ; $44e4: $47
	ld   [hl], e                                     ; $44e5: $73
	ld   d, c                                        ; $44e6: $51
	ld   hl, $1321                                   ; $44e7: $21 $21 $13
	ld   de, $1111                                   ; $44ea: $11 $11 $11
	ld   hl, $1516                                   ; $44ed: $21 $16 $15
	ld   l, e                                        ; $44f0: $6b
	ld   [hl], l                                     ; $44f1: $75
	ld   sp, hl                                      ; $44f2: $f9
	ld   [$7faf], a                                  ; $44f3: $ea $af $7f
	call $fdff                                       ; $44f6: $cd $ff $fd
	rst  $38                                         ; $44f9: $ff
	rst  $38                                         ; $44fa: $ff
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	rst  $38                                         ; $44fd: $ff
	rst  $28                                         ; $44fe: $ef
	adc  c                                           ; $44ff: $89
	or   $d7                                         ; $4500: $f6 $d7
	dec  d                                           ; $4502: $15
	ld   b, e                                        ; $4503: $43
	ld   de, $1111                                   ; $4504: $11 $11 $11
	ld   de, $1115                                   ; $4507: $11 $15 $11
	ld   de, $7571                                   ; $450a: $11 $71 $75
	ld   l, l                                        ; $450d: $6d
	ld   l, l                                        ; $450e: $6d
	xor  [hl]                                        ; $450f: $ae
	ld   sp, hl                                      ; $4510: $f9
	db   $fd                                         ; $4511: $fd
	cp   $df                                         ; $4512: $fe $df
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	rst  $28                                         ; $4516: $ef
	db   $fc                                         ; $4517: $fc
	cp   $ff                                         ; $4518: $fe $ff
	rst  $38                                         ; $451a: $ff
	cp   h                                           ; $451b: $bc
	adc  h                                           ; $451c: $8c
	ld   d, e                                        ; $451d: $53
	pop  bc                                          ; $451e: $c1
	inc  d                                           ; $451f: $14
	ld   de, $1111                                   ; $4520: $11 $11 $11
	ld   de, $1111                                   ; $4523: $11 $11 $11
	ld   de, $1514                                   ; $4526: $11 $14 $15
	or   a                                           ; $4529: $b7
	jp   z, $feed                                    ; $452a: $ca $ed $fe

	rst  JumpTable                                         ; $452d: $df
	rst  JumpTable                                         ; $452e: $df
	rst  $28                                         ; $452f: $ef
	cp   $ff                                         ; $4530: $fe $ff
	rst  $38                                         ; $4532: $ff
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	db   $fc                                         ; $4535: $fc
	rst  $28                                         ; $4536: $ef
	call z, Call_0e3_723b                            ; $4537: $cc $3b $72
	ld   b, c                                        ; $453a: $41
	ld   b, c                                        ; $453b: $41
	ld   de, $1111                                   ; $453c: $11 $11 $11
	ld   de, $1211                                   ; $453f: $11 $11 $12
	inc  d                                           ; $4542: $14
	ld   d, c                                        ; $4543: $51
	adc  e                                           ; $4544: $8b
	rst  ToBoot                                         ; $4545: $c7
	rst  JumpTable                                         ; $4546: $df
	xor  $ef                                         ; $4547: $ee $ef
	rst  $38                                         ; $4549: $ff
	cp   $ff                                         ; $454a: $fe $ff
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	rst  $38                                         ; $4550: $ff
	db   $fd                                         ; $4551: $fd
	ld   a, [hl]                                     ; $4552: $7e
	pop  bc                                          ; $4553: $c1
	pop  hl                                          ; $4554: $e1
	ld   d, $11                                      ; $4555: $16 $11
	ld   de, $1111                                   ; $4557: $11 $11 $11
	ld   de, $1111                                   ; $455a: $11 $11 $11
	ld   de, $bd62                                   ; $455d: $11 $62 $bd
	call c, $ffdf                                    ; $4560: $dc $df $ff
	rst  $38                                         ; $4563: $ff
	rst  $38                                         ; $4564: $ff
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	db   $fd                                         ; $456b: $fd
	cp   h                                           ; $456c: $bc
	sbc  a                                           ; $456d: $9f
	add  hl, de                                      ; $456e: $19
	ld   b, c                                        ; $456f: $41
	and  c                                           ; $4570: $a1
	ld   de, $1111                                   ; $4571: $11 $11 $11
	ld   de, $1111                                   ; $4574: $11 $11 $11
	ld   a, [de]                                     ; $4577: $1a
	inc  e                                           ; $4578: $1c
	db   $ed                                         ; $4579: $ed
	adc  $fd                                         ; $457a: $ce $fd
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	rst  $38                                         ; $4582: $ff
	rst  $38                                         ; $4583: $ff
	rst  $38                                         ; $4584: $ff

Call_0e3_4585:
	cp   a                                           ; $4585: $bf
	ld   l, c                                        ; $4586: $69
	pop  hl                                          ; $4587: $e1
	inc  de                                          ; $4588: $13
	ld   de, $1111                                   ; $4589: $11 $11 $11
	ld   de, $1111                                   ; $458c: $11 $11 $11
	ld   de, $1911                                   ; $458f: $11 $11 $19
	adc  a                                           ; $4592: $8f
	db   $ed                                         ; $4593: $ed
	rst  $38                                         ; $4594: $ff
	rst  $38                                         ; $4595: $ff
	rst  $38                                         ; $4596: $ff
	rst  $38                                         ; $4597: $ff
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	rst  $38                                         ; $459b: $ff
	rst  $38                                         ; $459c: $ff
	rst  $28                                         ; $459d: $ef
	ld   sp, hl                                      ; $459e: $f9
	or   a                                           ; $459f: $b7
	ld   h, h                                        ; $45a0: $64
	ld   de, $1111                                   ; $45a1: $11 $11 $11
	ld   de, $1111                                   ; $45a4: $11 $11 $11
	ld   de, $1111                                   ; $45a7: $11 $11 $11
	rla                                              ; $45aa: $17
	adc  a                                           ; $45ab: $8f
	rst  $38                                         ; $45ac: $ff
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	rst  $38                                         ; $45b0: $ff
	rst  $38                                         ; $45b1: $ff
	rst  $38                                         ; $45b2: $ff
	rst  $38                                         ; $45b3: $ff
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	ld   sp, hl                                      ; $45b6: $f9
	ld   sp, hl                                      ; $45b7: $f9
	inc  h                                           ; $45b8: $24
	dec  d                                           ; $45b9: $15
	ld   de, $1111                                   ; $45ba: $11 $11 $11
	ld   de, $1111                                   ; $45bd: $11 $11 $11
	ld   de, $4211                                   ; $45c0: $11 $11 $42
	adc  a                                           ; $45c3: $8f
	rst  $38                                         ; $45c4: $ff
	rst  $38                                         ; $45c5: $ff
	rst  $38                                         ; $45c6: $ff
	rst  $38                                         ; $45c7: $ff
	rst  $38                                         ; $45c8: $ff
	rst  $38                                         ; $45c9: $ff
	rst  $38                                         ; $45ca: $ff
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	rst  $38                                         ; $45cd: $ff
	xor  e                                           ; $45ce: $ab
	and  h                                           ; $45cf: $a4
	ld   hl, $1111                                   ; $45d0: $21 $11 $11
	ld   de, $1111                                   ; $45d3: $11 $11 $11
	ld   de, $1111                                   ; $45d6: $11 $11 $11
	dec  d                                           ; $45d9: $15
	inc  e                                           ; $45da: $1c
	rst  $38                                         ; $45db: $ff
	rst  $38                                         ; $45dc: $ff
	rst  $38                                         ; $45dd: $ff
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	rst  $38                                         ; $45e0: $ff
	rst  $38                                         ; $45e1: $ff
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	rst  $38                                         ; $45e4: $ff
	cp   h                                           ; $45e5: $bc
	sub  $21                                         ; $45e6: $d6 $21
	ld   b, c                                        ; $45e8: $41
	ld   de, $1111                                   ; $45e9: $11 $11 $11
	ld   de, $1111                                   ; $45ec: $11 $11 $11
	ld   de, $1413                                   ; $45ef: $11 $13 $14
	rst  $38                                         ; $45f2: $ff
	rst  $38                                         ; $45f3: $ff
	rst  $38                                         ; $45f4: $ff
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	rst  $38                                         ; $45f9: $ff
	rst  $38                                         ; $45fa: $ff
	rst  $38                                         ; $45fb: $ff
	ret                                              ; $45fc: $c9


	push af                                          ; $45fd: $f5
	ld   [de], a                                     ; $45fe: $12
	ld   de, $1111                                   ; $45ff: $11 $11 $11
	ld   de, $1111                                   ; $4602: $11 $11 $11
	ld   de, $1111                                   ; $4605: $11 $11 $11
	ld   b, [hl]                                     ; $4608: $46
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	rst  $28                                         ; $4612: $ef
	db   $f4                                         ; $4613: $f4
	ld   a, b                                        ; $4614: $78
	ld   de, $1111                                   ; $4615: $11 $11 $11
	ld   de, $1111                                   ; $4618: $11 $11 $11
	ld   de, $1111                                   ; $461b: $11 $11 $11
	inc  de                                          ; $461e: $13
	ld   l, a                                        ; $461f: $6f
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	rst  $38                                         ; $4623: $ff
	rst  $38                                         ; $4624: $ff
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	db   $fd                                         ; $4627: $fd
	cp   a                                           ; $4628: $bf
	db   $f4                                         ; $4629: $f4
	dec  sp                                          ; $462a: $3b
	ld   d, c                                        ; $462b: $51
	ld   de, $1111                                   ; $462c: $11 $11 $11
	ld   de, $1111                                   ; $462f: $11 $11 $11
	ld   de, $1411                                   ; $4632: $11 $11 $14
	add  [hl]                                        ; $4635: $86
	rst  $38                                         ; $4636: $ff
	rst  $38                                         ; $4637: $ff
	rst  $38                                         ; $4638: $ff
	rst  $38                                         ; $4639: $ff
	rst  $38                                         ; $463a: $ff
	rst  $38                                         ; $463b: $ff
	rst  $38                                         ; $463c: $ff
	rst  $38                                         ; $463d: $ff
	or   [hl]                                        ; $463e: $b6
	ld   a, [$8123]                                  ; $463f: $fa $23 $81
	ld   de, $1111                                   ; $4642: $11 $11 $11
	ld   de, $1111                                   ; $4645: $11 $11 $11
	ld   de, $3111                                   ; $4648: $11 $11 $31
	sbc  a                                           ; $464b: $9f
	rst  $38                                         ; $464c: $ff
	rst  $38                                         ; $464d: $ff
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	rst  $38                                         ; $4652: $ff
	ld   a, [$719a]                                  ; $4653: $fa $9a $71
	inc  de                                          ; $4656: $13
	ld   de, $1111                                   ; $4657: $11 $11 $11
	ld   de, $1111                                   ; $465a: $11 $11 $11
	ld   de, $1111                                   ; $465d: $11 $11 $11
	ld   h, [hl]                                     ; $4660: $66
	ld   a, a                                        ; $4661: $7f
	rst  $38                                         ; $4662: $ff
	rst  $38                                         ; $4663: $ff
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	rst  $38                                         ; $4668: $ff
	ret                                              ; $4669: $c9


	ld   h, c                                        ; $466a: $61
	ld   sp, $1111                                   ; $466b: $31 $11 $11
	ld   de, $1111                                   ; $466e: $11 $11 $11
	ld   de, $1111                                   ; $4671: $11 $11 $11
	ld   de, $7f12                                   ; $4674: $11 $12 $7f
	rst  $38                                         ; $4677: $ff
	rst  $38                                         ; $4678: $ff
	rst  $38                                         ; $4679: $ff
	rst  $38                                         ; $467a: $ff
	rst  $38                                         ; $467b: $ff
	rst  $38                                         ; $467c: $ff
	rst  $38                                         ; $467d: $ff
	ld   sp, hl                                      ; $467e: $f9
	sbc  c                                           ; $467f: $99
	ld   de, $1112                                   ; $4680: $11 $12 $11
	ld   de, $1111                                   ; $4683: $11 $11 $11
	ld   de, $1111                                   ; $4686: $11 $11 $11
	ld   de, $3711                                   ; $4689: $11 $11 $37
	xor  a                                           ; $468c: $af
	rst  $38                                         ; $468d: $ff
	rst  $38                                         ; $468e: $ff
	rst  $38                                         ; $468f: $ff
	rst  $38                                         ; $4690: $ff
	rst  $38                                         ; $4691: $ff
	rst  $38                                         ; $4692: $ff
	rst  $38                                         ; $4693: $ff
	push de                                          ; $4694: $d5
	ld   d, c                                        ; $4695: $51
	ld   de, $1121                                   ; $4696: $11 $21 $11
	ld   de, $1111                                   ; $4699: $11 $11 $11
	ld   de, $1111                                   ; $469c: $11 $11 $11
	ld   de, $7615                                   ; $469f: $11 $15 $76
	rst  $38                                         ; $46a2: $ff
	rst  $38                                         ; $46a3: $ff
	rst  $38                                         ; $46a4: $ff
	rst  $38                                         ; $46a5: $ff
	rst  $38                                         ; $46a6: $ff
	rst  $38                                         ; $46a7: $ff
	rst  $38                                         ; $46a8: $ff
	db   $fc                                         ; $46a9: $fc
	add  d                                           ; $46aa: $82
	dec  de                                          ; $46ab: $1b
	sub  c                                           ; $46ac: $91
	ld   d, $f1                                      ; $46ad: $16 $f1
	rra                                              ; $46af: $1f
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	ld   de, $1111                                   ; $46b3: $11 $11 $11
	ld   d, $14                                      ; $46b6: $16 $14
	rst  JumpTable                                         ; $46b8: $df
	rst  $38                                         ; $46b9: $ff
	rst  $38                                         ; $46ba: $ff
	rst  $38                                         ; $46bb: $ff
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	xor  $fd                                         ; $46c0: $ee $fd
	xor  a                                           ; $46c2: $af
	ld   sp, $4191                                   ; $46c3: $31 $91 $41
	ld   b, c                                        ; $46c6: $41
	rla                                              ; $46c7: $17
	ld   de, $1115                                   ; $46c8: $11 $15 $11
	or   c                                           ; $46cb: $b1
	ld   [de], a                                     ; $46cc: $12
	ld   de, $4411                                   ; $46cd: $11 $11 $44
	ld   e, h                                        ; $46d0: $5c
	reti                                             ; $46d1: $d9


	rst  $38                                         ; $46d2: $ff
	rst  $38                                         ; $46d3: $ff
	rst  $38                                         ; $46d4: $ff
	rst  $38                                         ; $46d5: $ff
	rst  $38                                         ; $46d6: $ff
	sbc  d                                           ; $46d7: $9a
	rst  $38                                         ; $46d8: $ff
	db   $fd                                         ; $46d9: $fd
	xor  e                                           ; $46da: $ab
	ld   a, [$a13c]                                  ; $46db: $fa $3c $a1
	add  hl, de                                      ; $46de: $19
	pop  af                                          ; $46df: $f1
	rra                                              ; $46e0: $1f
	ld   h, c                                        ; $46e1: $61
	ld   a, b                                        ; $46e2: $78
	ld   [hl], c                                     ; $46e3: $71
	dec  d                                           ; $46e4: $15
	ld   [hl], c                                     ; $46e5: $71
	rla                                              ; $46e6: $17
	ld   h, c                                        ; $46e7: $61
	dec  d                                           ; $46e8: $15
	ld   [hl], h                                     ; $46e9: $74
	ld   e, b                                        ; $46ea: $58
	add  a                                           ; $46eb: $87
	ld   a, [hl-]                                    ; $46ec: $3a
	ret  z                                           ; $46ed: $c8

	ld   l, b                                        ; $46ee: $68
	or   a                                           ; $46ef: $b7
	sbc  $9e                                         ; $46f0: $de $9e
	db   $ec                                         ; $46f2: $ec
	sbc  $d9                                         ; $46f3: $de $d9
	cp   a                                           ; $46f5: $bf
	rst  $10                                         ; $46f6: $d7
	adc  l                                           ; $46f7: $8d
	jp   hl                                          ; $46f8: $e9


	ld   a, b                                        ; $46f9: $78

Call_0e3_46fa:
	or   [hl]                                        ; $46fa: $b6
	adc  e                                           ; $46fb: $8b
	ld   b, h                                        ; $46fc: $44
	sbc  b                                           ; $46fd: $98
	dec  h                                           ; $46fe: $25
	ld   d, h                                        ; $46ff: $54
	ld   [hl], h                                     ; $4700: $74
	dec  h                                           ; $4701: $25
	ld   h, e                                        ; $4702: $63
	scf                                              ; $4703: $37
	ld   d, e                                        ; $4704: $53
	ld   [hl], a                                     ; $4705: $77
	ld   e, b                                        ; $4706: $58
	halt                                             ; $4707: $76
	sbc  c                                           ; $4708: $99
	sbc  c                                           ; $4709: $99
	xor  d                                           ; $470a: $aa
	cp   h                                           ; $470b: $bc
	xor  d                                           ; $470c: $aa
	xor  e                                           ; $470d: $ab
	xor  e                                           ; $470e: $ab
	cp   b                                           ; $470f: $b8
	xor  c                                           ; $4710: $a9
	sbc  c                                           ; $4711: $99
	sub  [hl]                                        ; $4712: $96
	ld   a, e                                        ; $4713: $7b
	ld   h, h                                        ; $4714: $64
	sbc  b                                           ; $4715: $98
	ld   h, $95                                      ; $4716: $26 $95
	scf                                              ; $4718: $37
	add  [hl]                                        ; $4719: $86
	ld   b, a                                        ; $471a: $47
	add  [hl]                                        ; $471b: $86
	ld   [hl], a                                     ; $471c: $77
	adc  b                                           ; $471d: $88
	sbc  c                                           ; $471e: $99
	xor  c                                           ; $471f: $a9
	xor  e                                           ; $4720: $ab
	sbc  c                                           ; $4721: $99
	sbc  e                                           ; $4722: $9b
	sbc  d                                           ; $4723: $9a
	xor  c                                           ; $4724: $a9
	sbc  b                                           ; $4725: $98
	sbc  b                                           ; $4726: $98
	adc  c                                           ; $4727: $89
	add  a                                           ; $4728: $87
	ld   [hl], a                                     ; $4729: $77
	ld   [hl], a                                     ; $472a: $77
	ld   h, [hl]                                     ; $472b: $66
	halt                                             ; $472c: $76
	ld   h, [hl]                                     ; $472d: $66
	ld   h, [hl]                                     ; $472e: $66
	ld   h, [hl]                                     ; $472f: $66
	ld   [hl], a                                     ; $4730: $77
	ld   h, a                                        ; $4731: $67
	ld   [hl], a                                     ; $4732: $77
	ld   a, b                                        ; $4733: $78
	adc  c                                           ; $4734: $89
	adc  c                                           ; $4735: $89
	adc  c                                           ; $4736: $89
	sbc  c                                           ; $4737: $99
	sbc  c                                           ; $4738: $99
	sbc  c                                           ; $4739: $99
	sbc  c                                           ; $473a: $99
	sbc  c                                           ; $473b: $99
	sbc  b                                           ; $473c: $98
	adc  b                                           ; $473d: $88
	adc  b                                           ; $473e: $88
	adc  b                                           ; $473f: $88
	ld   [hl], a                                     ; $4740: $77
	ld   [hl], a                                     ; $4741: $77
	ld   [hl], a                                     ; $4742: $77
	ld   [hl], a                                     ; $4743: $77
	ld   [hl], a                                     ; $4744: $77
	ld   h, a                                        ; $4745: $67
	ld   [hl], a                                     ; $4746: $77
	ld   [hl], a                                     ; $4747: $77
	ld   [hl], a                                     ; $4748: $77
	ld   a, b                                        ; $4749: $78
	ld   a, b                                        ; $474a: $78
	adc  c                                           ; $474b: $89
	sbc  b                                           ; $474c: $98
	adc  b                                           ; $474d: $88
	sbc  c                                           ; $474e: $99
	sbc  b                                           ; $474f: $98
	adc  b                                           ; $4750: $88
	adc  b                                           ; $4751: $88
	adc  c                                           ; $4752: $89
	adc  c                                           ; $4753: $89
	adc  b                                           ; $4754: $88
	sbc  b                                           ; $4755: $98
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	ld   [hl], a                                     ; $4758: $77
	ld   [hl], a                                     ; $4759: $77
	ld   [hl], a                                     ; $475a: $77
	ld   [hl], a                                     ; $475b: $77
	ld   [hl], a                                     ; $475c: $77
	halt                                             ; $475d: $76
	ld   [hl], a                                     ; $475e: $77
	ld   [hl], a                                     ; $475f: $77
	ld   [hl], a                                     ; $4760: $77
	ld   [hl], a                                     ; $4761: $77
	ld   a, b                                        ; $4762: $78
	adc  b                                           ; $4763: $88
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  c                                           ; $4767: $89
	sbc  b                                           ; $4768: $98
	sbc  c                                           ; $4769: $99
	sbc  c                                           ; $476a: $99
	sbc  b                                           ; $476b: $98
	adc  c                                           ; $476c: $89
	adc  b                                           ; $476d: $88
	adc  c                                           ; $476e: $89
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	add  a                                           ; $4771: $87
	ld   [hl], a                                     ; $4772: $77
	ld   [hl], a                                     ; $4773: $77
	ld   [hl], a                                     ; $4774: $77
	ld   [hl], a                                     ; $4775: $77
	ld   [hl], a                                     ; $4776: $77
	ld   [hl], a                                     ; $4777: $77
	ld   [hl], a                                     ; $4778: $77
	ld   [hl], a                                     ; $4779: $77
	ld   [hl], a                                     ; $477a: $77
	ld   [hl], a                                     ; $477b: $77
	adc  b                                           ; $477c: $88
	adc  b                                           ; $477d: $88
	adc  b                                           ; $477e: $88
	adc  c                                           ; $477f: $89
	adc  b                                           ; $4780: $88
	adc  c                                           ; $4781: $89
	adc  b                                           ; $4782: $88
	sbc  c                                           ; $4783: $99
	sbc  b                                           ; $4784: $98
	adc  b                                           ; $4785: $88
	adc  c                                           ; $4786: $89
	adc  c                                           ; $4787: $89
	sbc  b                                           ; $4788: $98
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	ld   a, b                                        ; $478b: $78
	add  a                                           ; $478c: $87
	ld   [hl], a                                     ; $478d: $77
	ld   [hl], a                                     ; $478e: $77
	add  a                                           ; $478f: $87
	ld   [hl], a                                     ; $4790: $77
	ld   [hl], a                                     ; $4791: $77
	ld   a, b                                        ; $4792: $78
	ld   [hl], a                                     ; $4793: $77
	adc  b                                           ; $4794: $88
	ld   a, b                                        ; $4795: $78
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	adc  b                                           ; $4798: $88
	adc  c                                           ; $4799: $89
	sbc  c                                           ; $479a: $99
	adc  b                                           ; $479b: $88
	sbc  b                                           ; $479c: $98
	adc  b                                           ; $479d: $88
	sbc  c                                           ; $479e: $99
	sbc  c                                           ; $479f: $99
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	adc  b                                           ; $47a3: $88
	adc  b                                           ; $47a4: $88
	ld   [hl], a                                     ; $47a5: $77
	ld   [hl], a                                     ; $47a6: $77
	add  a                                           ; $47a7: $87
	ld   [hl], a                                     ; $47a8: $77
	ld   a, b                                        ; $47a9: $78
	add  a                                           ; $47aa: $87
	ld   a, b                                        ; $47ab: $78
	sub  a                                           ; $47ac: $97
	ld   a, b                                        ; $47ad: $78
	sbc  b                                           ; $47ae: $98
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  c                                           ; $47b1: $89
	adc  b                                           ; $47b2: $88
	sbc  c                                           ; $47b3: $99
	sbc  c                                           ; $47b4: $99
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	adc  b                                           ; $47c0: $88
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  b                                           ; $47c7: $88
	adc  c                                           ; $47c8: $89
	adc  b                                           ; $47c9: $88
	adc  b                                           ; $47ca: $88
	sbc  b                                           ; $47cb: $98
	adc  b                                           ; $47cc: $88
	adc  c                                           ; $47cd: $89
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	adc  b                                           ; $47d5: $88
	adc  b                                           ; $47d6: $88
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	adc  b                                           ; $47e2: $88
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	adc  b                                           ; $47e5: $88
	adc  b                                           ; $47e6: $88
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	adc  b                                           ; $4802: $88
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	adc  b                                           ; $4805: $88
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	adc  b                                           ; $4809: $88
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	adc  b                                           ; $480c: $88
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	adc  b                                           ; $4816: $88
	adc  b                                           ; $4817: $88
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  b                                           ; $481a: $88
	adc  b                                           ; $481b: $88
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	adc  b                                           ; $4820: $88
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  b                                           ; $4823: $88
	adc  b                                           ; $4824: $88
	adc  b                                           ; $4825: $88
	adc  b                                           ; $4826: $88
	adc  b                                           ; $4827: $88
	adc  b                                           ; $4828: $88
	adc  b                                           ; $4829: $88
	adc  b                                           ; $482a: $88
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	adc  b                                           ; $482d: $88
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	adc  b                                           ; $4833: $88
	adc  b                                           ; $4834: $88
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  b                                           ; $483a: $88
	adc  b                                           ; $483b: $88
	adc  b                                           ; $483c: $88
	adc  b                                           ; $483d: $88
	adc  b                                           ; $483e: $88
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	sbc  c                                           ; $4841: $99
	cp   d                                           ; $4842: $ba
	halt                                             ; $4843: $76
	ld   l, d                                        ; $4844: $6a
	cp   c                                           ; $4845: $b9
	ld   [hl], l                                     ; $4846: $75
	ld   l, d                                        ; $4847: $6a
	and  a                                           ; $4848: $a7
	ld   d, a                                        ; $4849: $57
	cp   c                                           ; $484a: $b9
	ld   [hl], a                                     ; $484b: $77
	sbc  d                                           ; $484c: $9a
	sbc  c                                           ; $484d: $99
	add  a                                           ; $484e: $87
	adc  l                                           ; $484f: $8d
	or   [hl]                                        ; $4850: $b6
	ld   a, h                                        ; $4851: $7c
	sub  a                                           ; $4852: $97
	ld   a, b                                        ; $4853: $78
	sub  a                                           ; $4854: $97
	adc  e                                           ; $4855: $8b
	or   l                                           ; $4856: $b5
	daa                                              ; $4857: $27
	call c, Call_0e3_6b62                            ; $4858: $dc $62 $6b
	and  a                                           ; $485b: $a7
	ld   d, l                                        ; $485c: $55
	adc  a                                           ; $485d: $8f
	call nc, $fd18                                   ; $485e: $d4 $18 $fd
	ld   sp, $a57e                                   ; $4861: $31 $7e $a5
	ld   e, b                                        ; $4864: $58
	rst  $38                                         ; $4865: $ff
	rst  $38                                         ; $4866: $ff
	sbc  c                                           ; $4867: $99
	sbc  h                                           ; $4868: $9c
	and  l                                           ; $4869: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $486a: $cf
	ld   sp, $b16f                                   ; $486b: $31 $6f $b1
	dec  d                                           ; $486e: $15
	rst  JumpTable                                         ; $486f: $df
	add  h                                           ; $4870: $84
	ld   e, b                                        ; $4871: $58
	add  [hl]                                        ; $4872: $86
	halt                                             ; $4873: $76
	ld   b, d                                        ; $4874: $42
	dec  sp                                          ; $4875: $3b
	rst  $38                                         ; $4876: $ff
	and  $26                                         ; $4877: $e6 $26
	rst  JumpTable                                         ; $4879: $df
	ld   d, c                                        ; $487a: $51
	ld   e, $c3                                      ; $487b: $1e $c3
	scf                                              ; $487d: $37
	cp   h                                           ; $487e: $bc
	ld   h, e                                        ; $487f: $63
	ld   c, h                                        ; $4880: $4c
	or   $14                                         ; $4881: $f6 $14
	sbc  a                                           ; $4883: $9f
	push af                                          ; $4884: $f5
	inc  h                                           ; $4885: $24
	xor  h                                           ; $4886: $ac
	ld   [hl], c                                     ; $4887: $71
	ld   [de], a                                     ; $4888: $12
	rla                                              ; $4889: $17
	ld   b, c                                        ; $488a: $41
	inc  de                                          ; $488b: $13
	sbc  d                                           ; $488c: $9a
	ld   d, c                                        ; $488d: $51
	rst  JumpTable                                         ; $488e: $df
	di                                               ; $488f: $f3
	add  hl, de                                      ; $4890: $19
	rst  $10                                         ; $4891: $d7
	ld   [de], a                                     ; $4892: $12
	ld   a, [hl]                                     ; $4893: $7e
	sub  $58                                         ; $4894: $d6 $58
	rst  $38                                         ; $4896: $ff
	or   a                                           ; $4897: $b7
	halt                                             ; $4898: $76
	sbc  h                                           ; $4899: $9c
	add  e                                           ; $489a: $83
	inc  de                                          ; $489b: $13
	halt                                             ; $489c: $76
	ld   sp, $cc37                                   ; $489d: $31 $37 $cc
	add  h                                           ; $48a0: $84
	ld   l, h                                        ; $48a1: $6c
	rst  $38                                         ; $48a2: $ff
	ld   [hl], l                                     ; $48a3: $75
	ld   a, h                                        ; $48a4: $7c
	ret  c                                           ; $48a5: $d8

	inc  sp                                          ; $48a6: $33
	ld   h, a                                        ; $48a7: $67
	ld   [hl], e                                     ; $48a8: $73
	inc  hl                                          ; $48a9: $23
	ld   l, d                                        ; $48aa: $6a
	ld   a, e                                        ; $48ab: $7b
	add  h                                           ; $48ac: $84
	adc  e                                           ; $48ad: $8b
	and  h                                           ; $48ae: $a4
	ld   e, c                                        ; $48af: $59
	cp   $94                                         ; $48b0: $fe $94
	ld   l, c                                        ; $48b2: $69
	rst  ToBoot                                         ; $48b3: $c7
	ld   de, $b76f                                   ; $48b4: $11 $6f $b7
	adc  a                                           ; $48b7: $8f
	db   $fd                                         ; $48b8: $fd
	add  a                                           ; $48b9: $87
	rst  $38                                         ; $48ba: $ff
	rst  $20                                         ; $48bb: $e7
	ld   l, e                                        ; $48bc: $6b
	cp   a                                           ; $48bd: $bf
	sub  c                                           ; $48be: $91
	ld   a, $ff                                      ; $48bf: $3e $ff
	ld   b, c                                        ; $48c1: $41
	ld   a, d                                        ; $48c2: $7a
	and  l                                           ; $48c3: $a5
	ld   de, $2311                                   ; $48c4: $11 $11 $23
	ld   de, $1111                                   ; $48c7: $11 $11 $11
	ld   de, $8d22                                   ; $48ca: $11 $22 $8d
	rst  $38                                         ; $48cd: $ff
	rst  $38                                         ; $48ce: $ff
	rst  $38                                         ; $48cf: $ff
	rst  $38                                         ; $48d0: $ff
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	db   $fd                                         ; $48d3: $fd
	add  a                                           ; $48d4: $87
	ld   h, e                                        ; $48d5: $63
	ld   de, $4478                                   ; $48d6: $11 $78 $44
	ld   d, c                                        ; $48d9: $51
	ld   de, $1111                                   ; $48da: $11 $11 $11
	ld   de, $1111                                   ; $48dd: $11 $11 $11
	ld   de, $ffff                                   ; $48e0: $11 $ff $ff
	rst  $38                                         ; $48e3: $ff
	rst  $38                                         ; $48e4: $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	rst  $38                                         ; $48e7: $ff
	sub  l                                           ; $48e8: $95
	ld   l, b                                        ; $48e9: $68
	sbc  h                                           ; $48ea: $9c
	cp   $ec                                         ; $48eb: $fe $ec
	db   $eb                                         ; $48ed: $eb
	ld   sp, $1111                                   ; $48ee: $31 $11 $11
	ld   de, $1111                                   ; $48f1: $11 $11 $11
	ld   de, $ff1e                                   ; $48f4: $11 $1e $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	rst  $38                                         ; $48fa: $ff
	rst  $38                                         ; $48fb: $ff
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
	rst  $30                                         ; $4902: $f7
	ld   de, $1111                                   ; $4903: $11 $11 $11
	ld   de, $1111                                   ; $4906: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4909: $11 $11 $ff
	rst  $38                                         ; $490c: $ff
	rst  $38                                         ; $490d: $ff
	rst  $38                                         ; $490e: $ff
	rst  $38                                         ; $490f: $ff
	rst  $28                                         ; $4910: $ef
	rst  $38                                         ; $4911: $ff
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	db   $fc                                         ; $4916: $fc
	inc  h                                           ; $4917: $24
	ld   [hl], a                                     ; $4918: $77
	ld   hl, $1111                                   ; $4919: $21 $11 $11
	ld   de, $1111                                   ; $491c: $11 $11 $11
	ld   de, $bf11                                   ; $491f: $11 $11 $bf
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	call $ffff                                       ; $4926: $cd $ff $ff
	rst  $38                                         ; $4929: $ff
	rst  $38                                         ; $492a: $ff
	rst  $38                                         ; $492b: $ff
	ld   d, c                                        ; $492c: $51
	call z, $1111                                    ; $492d: $cc $11 $11
	ld   de, $1111                                   ; $4930: $11 $11 $11
	ld   de, $1111                                   ; $4933: $11 $11 $11
	ld   de, $ff1f                                   ; $4936: $11 $1f $ff
	rst  $38                                         ; $4939: $ff
	rst  $38                                         ; $493a: $ff
	rst  $38                                         ; $493b: $ff
	sbc  c                                           ; $493c: $99
	rst  $38                                         ; $493d: $ff
	rst  $38                                         ; $493e: $ff
	db   $fc                                         ; $493f: $fc
	rst  $38                                         ; $4940: $ff
	rst  $38                                         ; $4941: $ff
	ld   de, $64df                                   ; $4942: $11 $df $64
	ld   de, $1111                                   ; $4945: $11 $11 $11
	ld   de, $1111                                   ; $4948: $11 $11 $11
	ld   de, $1d11                                   ; $494b: $11 $11 $1d
	rst  $38                                         ; $494e: $ff
	rst  $38                                         ; $494f: $ff
	rst  $38                                         ; $4950: $ff
	rst  $38                                         ; $4951: $ff
	db   $fc                                         ; $4952: $fc
	rst  $38                                         ; $4953: $ff
	rst  $38                                         ; $4954: $ff
	rst  $38                                         ; $4955: $ff
	rst  $38                                         ; $4956: $ff
	rst  JumpTable                                         ; $4957: $df
	ld   a, [$41ce]                                  ; $4958: $fa $ce $41
	ld   b, c                                        ; $495b: $41
	ld   de, $1111                                   ; $495c: $11 $11 $11
	ld   de, $1111                                   ; $495f: $11 $11 $11
	ld   h, c                                        ; $4962: $61
	ld   de, $df14                                   ; $4963: $11 $14 $df
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	add  sp, -$01                                    ; $4969: $e8 $ff
	rst  $38                                         ; $496b: $ff
	rst  $38                                         ; $496c: $ff
	rst  $38                                         ; $496d: $ff
	rst  $38                                         ; $496e: $ff
	push af                                          ; $496f: $f5
	rst  ToBoot                                         ; $4970: $c7
	ld   d, $53                                      ; $4971: $16 $53
	ld   de, $1111                                   ; $4973: $11 $11 $11
	ld   de, $1112                                   ; $4976: $11 $12 $11
	ld   de, $1111                                   ; $4979: $11 $11 $11
	rst  $38                                         ; $497c: $ff
	rst  $38                                         ; $497d: $ff
	rst  $38                                         ; $497e: $ff
	rst  $38                                         ; $497f: $ff
	xor  d                                           ; $4980: $aa
	rst  $38                                         ; $4981: $ff
	rst  $38                                         ; $4982: $ff
	rst  $38                                         ; $4983: $ff
	rst  $38                                         ; $4984: $ff
	rst  $38                                         ; $4985: $ff
	db   $fc                                         ; $4986: $fc
	ld   a, [$9119]                                  ; $4987: $fa $19 $91
	adc  $51                                         ; $498a: $ce $51
	ld   de, $1111                                   ; $498c: $11 $11 $11
	ld   de, $1111                                   ; $498f: $11 $11 $11
	ld   [hl], c                                     ; $4992: $71
	ld   de, $f6ff                                   ; $4993: $11 $ff $f6
	rst  $38                                         ; $4996: $ff
	rst  $38                                         ; $4997: $ff
	ld   hl, sp+$3f                                  ; $4998: $f8 $3f
	rst  $38                                         ; $499a: $ff
	ld   l, [hl]                                     ; $499b: $6e

Jump_0e3_499c:
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	db   $fc                                         ; $499e: $fc
	ld   e, h                                        ; $499f: $5c
	push af                                          ; $49a0: $f5
	add  hl, de                                      ; $49a1: $19
	or   $ab                                         ; $49a2: $f6 $ab
	ld   de, $1111                                   ; $49a4: $11 $11 $11
	ld   de, $5111                                   ; $49a7: $11 $11 $51
	ld   de, $6f11                                   ; $49aa: $11 $11 $6f
	or   $ef                                         ; $49ad: $f6 $ef
	rst  $38                                         ; $49af: $ff
	inc  h                                           ; $49b0: $24
	rst  $28                                         ; $49b1: $ef
	rst  $38                                         ; $49b2: $ff
	call nc, $ffff                                   ; $49b3: $d4 $ff $ff
	dec  a                                           ; $49b6: $3d
	rst  $38                                         ; $49b7: $ff
	db   $fd                                         ; $49b8: $fd
	ld   de, $faaf                                   ; $49b9: $11 $af $fa
	ld   de, $1111                                   ; $49bc: $11 $11 $11
	ld   de, $1111                                   ; $49bf: $11 $11 $11
	ld   de, $f111                                   ; $49c2: $11 $11 $f1
	rra                                              ; $49c5: $1f
	ld   l, a                                        ; $49c6: $6f
	db   $fc                                         ; $49c7: $fc
	rst  $38                                         ; $49c8: $ff
	dec  de                                          ; $49c9: $1b
	rst  $38                                         ; $49ca: $ff
	rst  $38                                         ; $49cb: $ff
	ei                                               ; $49cc: $fb
	rst  $38                                         ; $49cd: $ff
	rst  $38                                         ; $49ce: $ff
	inc  l                                           ; $49cf: $2c
	db   $fc                                         ; $49d0: $fc
	xor  [hl]                                        ; $49d1: $ae
	ld   a, h                                        ; $49d2: $7c
	ld   sp, hl                                      ; $49d3: $f9
	inc  l                                           ; $49d4: $2c
	sub  c                                           ; $49d5: $91
	ld   h, e                                        ; $49d6: $63
	ld   de, $6111                                   ; $49d7: $11 $11 $61
	ld   de, $f211                                   ; $49da: $11 $11 $f2
	ld   de, $f91e                                   ; $49dd: $11 $1e $f9
	rrca                                             ; $49e0: $0f
	rst  $38                                         ; $49e1: $ff
	rst  $38                                         ; $49e2: $ff
	jr   @+$01                                       ; $49e3: $18 $ff

	rst  $30                                         ; $49e5: $f7
	rst  $38                                         ; $49e6: $ff
	rst  $38                                         ; $49e7: $ff
	db   $dd                                         ; $49e8: $dd
	ld   l, [hl]                                     ; $49e9: $6e
	rst  $38                                         ; $49ea: $ff
	dec  h                                           ; $49eb: $25
	cp   [hl]                                        ; $49ec: $be
	ret                                              ; $49ed: $c9


	ld   e, b                                        ; $49ee: $58
	ld   h, c                                        ; $49ef: $61
	ld   de, $1111                                   ; $49f0: $11 $11 $11
	ld   de, $1511                                   ; $49f3: $11 $11 $15
	ld   de, $3f11                                   ; $49f6: $11 $11 $3f
	db   $fc                                         ; $49f9: $fc
	xor  a                                           ; $49fa: $af
	rst  $38                                         ; $49fb: $ff
	ld   hl, sp+$1f                                  ; $49fc: $f8 $1f
	rst  $38                                         ; $49fe: $ff
	rst  $30                                         ; $49ff: $f7
	rst  JumpTable                                         ; $4a00: $df
	rst  $28                                         ; $4a01: $ef
	cp   $ff                                         ; $4a02: $fe $ff
	ei                                               ; $4a04: $fb
	ld   de, $ed3a                                   ; $4a05: $11 $3a $ed
	xor  b                                           ; $4a08: $a8
	ld   [hl], e                                     ; $4a09: $73
	ld   de, $1111                                   ; $4a0a: $11 $11 $11
	ld   de, $1111                                   ; $4a0d: $11 $11 $11
	ld   de, $1fe1                                   ; $4a10: $11 $e1 $1f
	jp   nc, $ff5f                                   ; $4a13: $d2 $5f $ff

	rst  $30                                         ; $4a16: $f7
	rst  $38                                         ; $4a17: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a18: $cf
	db   $f4                                         ; $4a19: $f4
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	and  d                                           ; $4a1c: $a2
	rst  $38                                         ; $4a1d: $ff
	rst  $38                                         ; $4a1e: $ff
	ld   [de], a                                     ; $4a1f: $12
	ei                                               ; $4a20: $fb
	xor  h                                           ; $4a21: $ac
	ld   d, l                                        ; $4a22: $55
	ld   d, e                                        ; $4a23: $53
	ld   h, l                                        ; $4a24: $65
	ld   de, $1111                                   ; $4a25: $11 $11 $11
	ld   de, $1911                                   ; $4a28: $11 $11 $19
	ld   de, $1fea                                   ; $4a2b: $11 $ea $1f
	sub  c                                           ; $4a2e: $91
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	ld   de, $ffff                                   ; $4a31: $11 $ff $ff
	ld   l, a                                        ; $4a34: $6f
	db   $fc                                         ; $4a35: $fc
	rst  $38                                         ; $4a36: $ff
	add  hl, de                                      ; $4a37: $19
	cp   $f5                                         ; $4a38: $fe $f5
	rra                                              ; $4a3a: $1f
	rst  $20                                         ; $4a3b: $e7
	ld   [hl], c                                     ; $4a3c: $71
	sbc  a                                           ; $4a3d: $9f
	pop  af                                          ; $4a3e: $f1
	ld   sp, $1115                                   ; $4a3f: $31 $15 $11
	ld   de, $111a                                   ; $4a42: $11 $1a $11
	ld   de, $111c                                   ; $4a45: $11 $1c $11
	db   $f4                                         ; $4a48: $f4
	rst  JumpTable                                         ; $4a49: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a4a: $cf
	or   $ff                                         ; $4a4b: $f6 $ff
	ld   l, a                                        ; $4a4d: $6f
	db   $fc                                         ; $4a4e: $fc
	rst  $38                                         ; $4a4f: $ff
	cp   l                                           ; $4a50: $bd
	ld   a, [$9edf]                                  ; $4a51: $fa $df $9e
	db   $fd                                         ; $4a54: $fd
	ei                                               ; $4a55: $fb
	add  hl, hl                                      ; $4a56: $29
	cp   c                                           ; $4a57: $b9
	ei                                               ; $4a58: $fb
	inc  hl                                          ; $4a59: $23
	xor  e                                           ; $4a5a: $ab
	ld   sp, $1111                                   ; $4a5b: $31 $11 $11
	ld   de, $1111                                   ; $4a5e: $11 $11 $11
	ld   de, $1146                                   ; $4a61: $11 $46 $11
	ccf                                              ; $4a64: $3f
	ei                                               ; $4a65: $fb
	ld   a, [de]                                     ; $4a66: $1a
	rst  $38                                         ; $4a67: $ff
	jp   z, $ffaf                                    ; $4a68: $ca $af $ff

	cp   $ff                                         ; $4a6b: $fe $ff
	rst  $38                                         ; $4a6d: $ff
	ld   b, l                                        ; $4a6e: $45
	cp   a                                           ; $4a6f: $bf
	ei                                               ; $4a70: $fb
	ld   e, a                                        ; $4a71: $5f
	db   $fd                                         ; $4a72: $fd
	jp   z, Jump_0e3_7da6                            ; $4a73: $ca $a6 $7d

	sub  c                                           ; $4a76: $91
	ld   [de], a                                     ; $4a77: $12
	ld   de, $1111                                   ; $4a78: $11 $11 $11
	ld   de, $1111                                   ; $4a7b: $11 $11 $11
	ld   de, $ef11                                   ; $4a7e: $11 $11 $ef
	and  e                                           ; $4a81: $a3
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	ld   c, h                                        ; $4a84: $4c
	rst  JumpTable                                         ; $4a85: $df
	or   $8f                                         ; $4a86: $f6 $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a88: $cf
	di                                               ; $4a89: $f3
	rst  $10                                         ; $4a8a: $d7
	rst  $38                                         ; $4a8b: $ff
	ld   h, a                                        ; $4a8c: $67
	xor  h                                           ; $4a8d: $ac
	rst  $38                                         ; $4a8e: $ff
	ld   a, c                                        ; $4a8f: $79
	ld   c, c                                        ; $4a90: $49
	ei                                               ; $4a91: $fb
	ld   de, $5119                                   ; $4a92: $11 $19 $51
	ld   de, $1111                                   ; $4a95: $11 $11 $11
	ld   de, $1711                                   ; $4a98: $11 $11 $17
	ld   de, $f57f                                   ; $4a9b: $11 $7f $f5
	ld   e, a                                        ; $4a9e: $5f
	and  $ef                                         ; $4a9f: $e6 $ef
	ld   hl, sp-$01                                  ; $4aa1: $f8 $ff
	and  e                                           ; $4aa3: $a3
	rst  $38                                         ; $4aa4: $ff
	cp   $6f                                         ; $4aa5: $fe $6f
	db   $ec                                         ; $4aa7: $ec
	rst  $30                                         ; $4aa8: $f7
	ld   c, a                                        ; $4aa9: $4f
	rst  JumpTable                                         ; $4aaa: $df
	rst  $30                                         ; $4aab: $f7
	reti                                             ; $4aac: $d9


	adc  a                                           ; $4aad: $8f
	ld   d, d                                        ; $4aae: $52
	ld   h, h                                        ; $4aaf: $64
	ld   [hl], c                                     ; $4ab0: $71
	inc  de                                          ; $4ab1: $13
	ld   de, $1111                                   ; $4ab2: $11 $11 $11
	ld   de, $0411                                   ; $4ab5: $11 $11 $04
	ld   de, $b29f                                   ; $4ab8: $11 $9f $b2
	rst  JumpTable                                         ; $4abb: $df
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	ld   a, l                                        ; $4abe: $7d
	rst  $38                                         ; $4abf: $ff
	cp   a                                           ; $4ac0: $bf
	rst  $28                                         ; $4ac1: $ef
	cp   $f9                                         ; $4ac2: $fe $f9
	cp   a                                           ; $4ac4: $bf
	cp   $5a                                         ; $4ac5: $fe $5a
	ei                                               ; $4ac7: $fb
	xor  [hl]                                        ; $4ac8: $ae
	call $a3cd                                       ; $4ac9: $cd $cd $a3
	ld   d, l                                        ; $4acc: $55
	ld   de, $1111                                   ; $4acd: $11 $11 $11
	ld   de, $1111                                   ; $4ad0: $11 $11 $11
	ld   de, $1311                                   ; $4ad3: $11 $11 $13
	sub  c                                           ; $4ad6: $91
	ld   c, a                                        ; $4ad7: $4f
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	ld   a, [$9cff]                                  ; $4ada: $fa $ff $9c
	sbc  $fa                                         ; $4add: $de $fa
	rst  $28                                         ; $4adf: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae0: $cf
	rst  $38                                         ; $4ae1: $ff
	ei                                               ; $4ae2: $fb
	rst  $28                                         ; $4ae3: $ef
	sbc  h                                           ; $4ae4: $9c
	set  1, d                                        ; $4ae5: $cb $ca
	cp   e                                           ; $4ae7: $bb
	sbc  c                                           ; $4ae8: $99
	add  h                                           ; $4ae9: $84
	inc  sp                                          ; $4aea: $33
	ld   sp, $1111                                   ; $4aeb: $31 $11 $11
	ld   de, $1111                                   ; $4aee: $11 $11 $11
	ld   de, $3211                                   ; $4af1: $11 $11 $32
	ld   e, e                                        ; $4af4: $5b
	rst  $28                                         ; $4af5: $ef
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	cp   $ce                                         ; $4af8: $fe $ce
	rst  $38                                         ; $4afa: $ff
	xor  $ff                                         ; $4afb: $ee $ff
	cp   $dc                                         ; $4afd: $fe $dc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aff: $cf
	db   $fd                                         ; $4b00: $fd
	call $ccdd                                       ; $4b01: $cd $dd $cc
	cp   d                                           ; $4b04: $ba
	cp   c                                           ; $4b05: $b9
	ld   h, l                                        ; $4b06: $65
	ld   h, h                                        ; $4b07: $64
	ld   sp, $1111                                   ; $4b08: $31 $11 $11
	ld   de, $1111                                   ; $4b0b: $11 $11 $11
	ld   de, $1111                                   ; $4b0e: $11 $11 $11
	dec  de                                          ; $4b11: $1b
	ld   h, h                                        ; $4b12: $64
	rst  $38                                         ; $4b13: $ff
	ld   sp, hl                                      ; $4b14: $f9
	rst  $38                                         ; $4b15: $ff
	db   $fd                                         ; $4b16: $fd
	db   $eb                                         ; $4b17: $eb
	rst  $38                                         ; $4b18: $ff
	db   $ed                                         ; $4b19: $ed
	ld   l, a                                        ; $4b1a: $6f
	ei                                               ; $4b1b: $fb
	cp   c                                           ; $4b1c: $b9
	rst  $38                                         ; $4b1d: $ff
	sbc  $cd                                         ; $4b1e: $de $cd
	db   $fd                                         ; $4b20: $fd
	xor  c                                           ; $4b21: $a9
	call z, $8777                                    ; $4b22: $cc $77 $87
	ld   d, e                                        ; $4b25: $53
	ld   [hl-], a                                    ; $4b26: $32
	ld   de, $1111                                   ; $4b27: $11 $11 $11
	ld   de, $1111                                   ; $4b2a: $11 $11 $11
	ld   de, $2a11                                   ; $4b2d: $11 $11 $2a
	add  l                                           ; $4b30: $85
	rst  $38                                         ; $4b31: $ff
	rst  $38                                         ; $4b32: $ff
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	rst  $38                                         ; $4b35: $ff
	cp   $fa                                         ; $4b36: $fe $fa
	ld   l, d                                        ; $4b38: $6a
	cp   l                                           ; $4b39: $bd
	ret                                              ; $4b3a: $c9


	rst  JumpTable                                         ; $4b3b: $df
	cp   $cf                                         ; $4b3c: $fe $cf
	db   $fd                                         ; $4b3e: $fd
	db   $eb                                         ; $4b3f: $eb
	sbc  c                                           ; $4b40: $99
	xor  c                                           ; $4b41: $a9
	ld   b, e                                        ; $4b42: $43
	ld   h, [hl]                                     ; $4b43: $66
	ld   sp, $1112                                   ; $4b44: $31 $12 $11
	ld   de, $1111                                   ; $4b47: $11 $11 $11
	ld   de, $1111                                   ; $4b4a: $11 $11 $11
	dec  d                                           ; $4b4d: $15
	ld   c, d                                        ; $4b4e: $4a
	xor  l                                           ; $4b4f: $ad
	cp   $ff                                         ; $4b50: $fe $ff
	rst  $38                                         ; $4b52: $ff
	rst  JumpTable                                         ; $4b53: $df
	rst  $38                                         ; $4b54: $ff
	rst  $30                                         ; $4b55: $f7
	cp   l                                           ; $4b56: $bd
	xor  c                                           ; $4b57: $a9
	ld   a, h                                        ; $4b58: $7c
	db   $db                                         ; $4b59: $db
	call $efff                                       ; $4b5a: $cd $ff $ef
	rst  JumpTable                                         ; $4b5d: $df
	db   $eb                                         ; $4b5e: $eb
	xor  d                                           ; $4b5f: $aa
	ld   [hl], l                                     ; $4b60: $75
	ld   b, h                                        ; $4b61: $44
	ld   sp, $2112                                   ; $4b62: $31 $12 $21
	ld   de, $1111                                   ; $4b65: $11 $11 $11
	ld   de, $1111                                   ; $4b68: $11 $11 $11
	ld   [de], a                                     ; $4b6b: $12
	dec  d                                           ; $4b6c: $15
	ld   l, b                                        ; $4b6d: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b6e: $cf
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	cp   $ec                                         ; $4b73: $fe $ec
	res  3, b                                        ; $4b75: $cb $98
	sbc  e                                           ; $4b77: $9b
	sbc  c                                           ; $4b78: $99
	xor  l                                           ; $4b79: $ad
	db   $fd                                         ; $4b7a: $fd
	rst  JumpTable                                         ; $4b7b: $df
	rst  $38                                         ; $4b7c: $ff
	db   $ec                                         ; $4b7d: $ec
	jp   z, Jump_0e3_4396                            ; $4b7e: $ca $96 $43

	inc  sp                                          ; $4b81: $33
	ld   de, $1111                                   ; $4b82: $11 $11 $11
	ld   de, $1111                                   ; $4b85: $11 $11 $11
	ld   de, $2311                                   ; $4b88: $11 $11 $23
	dec  h                                           ; $4b8b: $25
	ld   l, d                                        ; $4b8c: $6a
	cp   e                                           ; $4b8d: $bb
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	rst  $38                                         ; $4b92: $ff
	db   $ec                                         ; $4b93: $ec
	res  3, c                                        ; $4b94: $cb $99
	sbc  b                                           ; $4b96: $98
	ld   a, c                                        ; $4b97: $79
	xor  e                                           ; $4b98: $ab
	xor  h                                           ; $4b99: $ac
	rst  $38                                         ; $4b9a: $ff
	rst  $28                                         ; $4b9b: $ef
	cp   $cb                                         ; $4b9c: $fe $cb
	cp   d                                           ; $4b9e: $ba
	ld   [hl], l                                     ; $4b9f: $75
	ld   d, d                                        ; $4ba0: $52
	ld   de, $1111                                   ; $4ba1: $11 $11 $11
	ld   de, $1111                                   ; $4ba4: $11 $11 $11
	ld   de, $1311                                   ; $4ba7: $11 $11 $13
	inc  sp                                          ; $4baa: $33
	ld   l, c                                        ; $4bab: $69
	sbc  d                                           ; $4bac: $9a
	rst  JumpTable                                         ; $4bad: $df
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	rst  $38                                         ; $4bb2: $ff
	db   $ed                                         ; $4bb3: $ed
	xor  c                                           ; $4bb4: $a9
	cp   b                                           ; $4bb5: $b8
	adc  b                                           ; $4bb6: $88
	sbc  e                                           ; $4bb7: $9b
	xor  d                                           ; $4bb8: $aa
	adc  $ff                                         ; $4bb9: $ce $ff
	rst  $28                                         ; $4bbb: $ef
	db   $fc                                         ; $4bbc: $fc
	xor  e                                           ; $4bbd: $ab
	sub  [hl]                                        ; $4bbe: $96
	ld   b, e                                        ; $4bbf: $43
	ld   hl, $1111                                   ; $4bc0: $21 $11 $11
	ld   de, $1111                                   ; $4bc3: $11 $11 $11
	ld   [de], a                                     ; $4bc6: $12
	ld   de, $6513                                   ; $4bc7: $11 $13 $65
	ld   e, c                                        ; $4bca: $59
	xor  h                                           ; $4bcb: $ac
	db   $ed                                         ; $4bcc: $ed
	rst  $38                                         ; $4bcd: $ff
	rst  $38                                         ; $4bce: $ff
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	db   $fd                                         ; $4bd1: $fd
	call c, $89cb                                    ; $4bd2: $dc $cb $89
	sbc  c                                           ; $4bd5: $99
	xor  c                                           ; $4bd6: $a9
	cp   h                                           ; $4bd7: $bc
	call $feef                                       ; $4bd8: $cd $ef $fe
	xor  $db                                         ; $4bdb: $ee $db
	add  [hl]                                        ; $4bdd: $86
	ld   b, h                                        ; $4bde: $44
	ld   hl, $1111                                   ; $4bdf: $21 $11 $11
	ld   de, $1111                                   ; $4be2: $11 $11 $11
	ld   de, $1112                                   ; $4be5: $11 $12 $11
	daa                                              ; $4be8: $27
	halt                                             ; $4be9: $76
	adc  d                                           ; $4bea: $8a
	db   $dd                                         ; $4beb: $dd
	rst  $28                                         ; $4bec: $ef
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	call c, $98cb                                    ; $4bf1: $dc $cb $98
	adc  c                                           ; $4bf4: $89
	sbc  c                                           ; $4bf5: $99
	xor  c                                           ; $4bf6: $a9
	cp   h                                           ; $4bf7: $bc
	sbc  $ef                                         ; $4bf8: $de $ef
	cp   $da                                         ; $4bfa: $fe $da
	sbc  b                                           ; $4bfc: $98
	ld   h, h                                        ; $4bfd: $64
	ld   b, e                                        ; $4bfe: $43
	ld   de, $1111                                   ; $4bff: $11 $11 $11
	ld   de, $1111                                   ; $4c02: $11 $11 $11
	ld   de, $2212                                   ; $4c05: $11 $12 $22
	ld   d, a                                        ; $4c08: $57
	sbc  b                                           ; $4c09: $98
	cp   [hl]                                        ; $4c0a: $be
	xor  $ff                                         ; $4c0b: $ee $ff
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	sbc  $b9                                         ; $4c10: $de $b9
	xor  c                                           ; $4c12: $a9
	sub  a                                           ; $4c13: $97
	ld   l, c                                        ; $4c14: $69
	sbc  e                                           ; $4c15: $9b
	xor  d                                           ; $4c16: $aa
	xor  $ff                                         ; $4c17: $ee $ff
	rst  $38                                         ; $4c19: $ff
	xor  $d8                                         ; $4c1a: $ee $d8
	ld   [hl], l                                     ; $4c1c: $75
	ld   d, h                                        ; $4c1d: $54
	ld   de, $1111                                   ; $4c1e: $11 $11 $11
	ld   de, $1111                                   ; $4c21: $11 $11 $11
	ld   de, $2111                                   ; $4c24: $11 $11 $21
	inc  de                                          ; $4c27: $13
	ld   e, b                                        ; $4c28: $58
	sbc  d                                           ; $4c29: $9a
	sbc  h                                           ; $4c2a: $9c
	rst  $38                                         ; $4c2b: $ff
	rst  $38                                         ; $4c2c: $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	db   $ec                                         ; $4c30: $ec
	cp   d                                           ; $4c31: $ba
	sbc  c                                           ; $4c32: $99
	sub  a                                           ; $4c33: $97
	add  a                                           ; $4c34: $87
	xor  h                                           ; $4c35: $ac
	xor  e                                           ; $4c36: $ab
	adc  $ff                                         ; $4c37: $ce $ff
	cp   $de                                         ; $4c39: $fe $de
	jp   z, Jump_0e3_4375                            ; $4c3b: $ca $75 $43

	ld   hl, $1111                                   ; $4c3e: $21 $11 $11
	ld   de, $1111                                   ; $4c41: $11 $11 $11
	ld   de, $2111                                   ; $4c44: $11 $11 $21
	inc  h                                           ; $4c47: $24
	ld   e, b                                        ; $4c48: $58
	cp   d                                           ; $4c49: $ba
	cp   e                                           ; $4c4a: $bb
	rst  $38                                         ; $4c4b: $ff
	rst  $38                                         ; $4c4c: $ff
	rst  $38                                         ; $4c4d: $ff
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	db   $db                                         ; $4c50: $db
	xor  e                                           ; $4c51: $ab
	and  a                                           ; $4c52: $a7
	ld   [hl], a                                     ; $4c53: $77
	adc  c                                           ; $4c54: $89
	sbc  d                                           ; $4c55: $9a
	cp   e                                           ; $4c56: $bb
	rst  $28                                         ; $4c57: $ef
	rst  $38                                         ; $4c58: $ff
	rst  $38                                         ; $4c59: $ff
	db   $dd                                         ; $4c5a: $dd
	cp   b                                           ; $4c5b: $b8
	ld   [hl], l                                     ; $4c5c: $75
	ld   b, e                                        ; $4c5d: $43
	ld   de, $1111                                   ; $4c5e: $11 $11 $11
	ld   de, $1111                                   ; $4c61: $11 $11 $11
	ld   de, $2211                                   ; $4c64: $11 $11 $22
	inc  h                                           ; $4c67: $24
	ld   a, d                                        ; $4c68: $7a
	xor  d                                           ; $4c69: $aa
	call $ffff                                       ; $4c6a: $cd $ff $ff
	rst  $38                                         ; $4c6d: $ff
	rst  $38                                         ; $4c6e: $ff
	db   $fd                                         ; $4c6f: $fd
	db   $db                                         ; $4c70: $db
	xor  d                                           ; $4c71: $aa
	sbc  b                                           ; $4c72: $98
	add  a                                           ; $4c73: $87
	sbc  d                                           ; $4c74: $9a
	cp   h                                           ; $4c75: $bc
	cp   h                                           ; $4c76: $bc
	rst  $28                                         ; $4c77: $ef
	rst  $38                                         ; $4c78: $ff
	cp   $ec                                         ; $4c79: $fe $ec
	cp   c                                           ; $4c7b: $b9
	ld   [hl], l                                     ; $4c7c: $75
	ld   [hl-], a                                    ; $4c7d: $32
	ld   de, $1111                                   ; $4c7e: $11 $11 $11
	ld   de, $1111                                   ; $4c81: $11 $11 $11
	ld   de, $1111                                   ; $4c84: $11 $11 $11
	inc  de                                          ; $4c87: $13
	ld   l, b                                        ; $4c88: $68
	xor  e                                           ; $4c89: $ab
	cp   [hl]                                        ; $4c8a: $be
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	rst  $38                                         ; $4c8d: $ff
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	cp   c                                           ; $4c90: $b9
	add  a                                           ; $4c91: $87
	ld   [hl], a                                     ; $4c92: $77
	ld   h, a                                        ; $4c93: $67
	ld   a, b                                        ; $4c94: $78
	xor  h                                           ; $4c95: $ac
	sbc  $ef                                         ; $4c96: $de $ef
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	db   $fd                                         ; $4c9a: $fd
	xor  c                                           ; $4c9b: $a9
	add  a                                           ; $4c9c: $87
	ld   b, c                                        ; $4c9d: $41
	ld   de, $1111                                   ; $4c9e: $11 $11 $11
	ld   de, $1111                                   ; $4ca1: $11 $11 $11
	ld   de, $1111                                   ; $4ca4: $11 $11 $11
	ld   de, $9b36                                   ; $4ca7: $11 $36 $9b
	call z, $ffdf                                    ; $4caa: $cc $df $ff
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	db   $db                                         ; $4cb0: $db
	xor  b                                           ; $4cb1: $a8
	ld   [hl], a                                     ; $4cb2: $77
	ld   h, a                                        ; $4cb3: $67
	ld   a, b                                        ; $4cb4: $78
	xor  d                                           ; $4cb5: $aa
	adc  $de                                         ; $4cb6: $ce $de
	rst  $38                                         ; $4cb8: $ff
	rst  $38                                         ; $4cb9: $ff
	rst  $38                                         ; $4cba: $ff
	res  2, a                                        ; $4cbb: $cb $97
	ld   h, h                                        ; $4cbd: $64
	ld   sp, $1111                                   ; $4cbe: $31 $11 $11
	ld   de, $1111                                   ; $4cc1: $11 $11 $11
	ld   de, $1111                                   ; $4cc4: $11 $11 $11
	ld   de, $4622                                   ; $4cc7: $11 $22 $46
	ld   a, d                                        ; $4cca: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ccb: $cf
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	db   $ed                                         ; $4cd0: $ed
	jp   z, Jump_0e3_7688                            ; $4cd1: $ca $88 $76

	ld   d, [hl]                                     ; $4cd4: $56
	ld   a, c                                        ; $4cd5: $79
	sbc  e                                           ; $4cd6: $9b
	sbc  $ff                                         ; $4cd7: $de $ff
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	db   $fd                                         ; $4cdb: $fd
	res  2, a                                        ; $4cdc: $cb $97
	ld   d, h                                        ; $4cde: $54
	ld   sp, $1111                                   ; $4cdf: $31 $11 $11
	ld   de, $1111                                   ; $4ce2: $11 $11 $11
	ld   de, $1111                                   ; $4ce5: $11 $11 $11
	ld   de, $6835                                   ; $4ce8: $11 $35 $68
	sbc  h                                           ; $4ceb: $9c
	xor  $ff                                         ; $4cec: $ee $ff
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	db   $fd                                         ; $4cf0: $fd
	call z, $87aa                                    ; $4cf1: $cc $aa $87
	halt                                             ; $4cf4: $76
	ld   a, b                                        ; $4cf5: $78
	adc  d                                           ; $4cf6: $8a
	cp   h                                           ; $4cf7: $bc
	xor  $ff                                         ; $4cf8: $ee $ff
	rst  $38                                         ; $4cfa: $ff
	xor  $dd                                         ; $4cfb: $ee $dd
	res  2, a                                        ; $4cfd: $cb $97
	ld   h, h                                        ; $4cff: $64
	ld   b, e                                        ; $4d00: $43
	ld   [hl+], a                                    ; $4d01: $22
	ld   de, $1111                                   ; $4d02: $11 $11 $11
	ld   de, $1111                                   ; $4d05: $11 $11 $11
	ld   de, $1411                                   ; $4d08: $11 $11 $14
	ld   l, b                                        ; $4d0b: $68
	call z, $ffdf                                    ; $4d0c: $cc $df $ff
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff
	sbc  $cb                                         ; $4d11: $de $cb
	cp   d                                           ; $4d13: $ba
	sbc  b                                           ; $4d14: $98
	ld   [hl], a                                     ; $4d15: $77
	ld   [hl], a                                     ; $4d16: $77
	xor  e                                           ; $4d17: $ab
	cp   l                                           ; $4d18: $bd
	rst  $28                                         ; $4d19: $ef
	xor  $ef                                         ; $4d1a: $ee $ef
	db   $dd                                         ; $4d1c: $dd
	call c, $badb                                    ; $4d1d: $dc $db $ba
	add  a                                           ; $4d20: $87
	ld   d, e                                        ; $4d21: $53
	ld   [hl-], a                                    ; $4d22: $32
	inc  [hl]                                        ; $4d23: $34
	ld   [hl+], a                                    ; $4d24: $22
	ld   de, $1111                                   ; $4d25: $11 $11 $11
	ld   de, $1111                                   ; $4d28: $11 $11 $11
	inc  bc                                          ; $4d2b: $03
	ld   l, c                                        ; $4d2c: $69
	sbc  d                                           ; $4d2d: $9a
	call $ffff                                       ; $4d2e: $cd $ff $ff
	rst  $38                                         ; $4d31: $ff
	db   $ed                                         ; $4d32: $ed
	cp   e                                           ; $4d33: $bb
	cp   d                                           ; $4d34: $ba
	cp   c                                           ; $4d35: $b9
	adc  c                                           ; $4d36: $89
	sbc  d                                           ; $4d37: $9a
	sbc  e                                           ; $4d38: $9b
	cp   e                                           ; $4d39: $bb
	call c, $eede                                    ; $4d3a: $dc $de $ee
	db   $ed                                         ; $4d3d: $ed
	call z, $bbcc                                    ; $4d3e: $cc $cc $bb
	cp   c                                           ; $4d41: $b9
	sub  a                                           ; $4d42: $97
	ld   d, h                                        ; $4d43: $54
	inc  sp                                          ; $4d44: $33
	ld   [hl-], a                                    ; $4d45: $32
	ld   de, $1111                                   ; $4d46: $11 $11 $11
	ld   de, $1111                                   ; $4d49: $11 $11 $11
	ld   de, $6935                                   ; $4d4c: $11 $35 $69
	sbc  h                                           ; $4d4f: $9c
	call $ffff                                       ; $4d50: $cd $ff $ff
	xor  $ed                                         ; $4d53: $ee $ed
	res  5, d                                        ; $4d55: $cb $aa
	xor  d                                           ; $4d57: $aa
	xor  c                                           ; $4d58: $a9
	xor  d                                           ; $4d59: $aa
	sbc  e                                           ; $4d5a: $9b
	cp   e                                           ; $4d5b: $bb
	call c, $cedd                                    ; $4d5c: $dc $dd $ce
	xor  $dc                                         ; $4d5f: $ee $dc
	call z, $bbcc                                    ; $4d61: $cc $cc $bb
	sbc  b                                           ; $4d64: $98
	ld   [hl], l                                     ; $4d65: $75
	inc  sp                                          ; $4d66: $33
	ld   [hl+], a                                    ; $4d67: $22
	ld   de, $1111                                   ; $4d68: $11 $11 $11
	ld   de, $1111                                   ; $4d6b: $11 $11 $11
	ld   de, $6824                                   ; $4d6e: $11 $24 $68
	sbc  d                                           ; $4d71: $9a
	call $ffef                                       ; $4d72: $cd $ef $ff
	cp   $dc                                         ; $4d75: $fe $dc
	set  1, e                                        ; $4d77: $cb $cb
	xor  c                                           ; $4d79: $a9
	adc  c                                           ; $4d7a: $89
	sbc  c                                           ; $4d7b: $99
	xor  d                                           ; $4d7c: $aa
	call z, $ccbc                                    ; $4d7d: $cc $bc $cc
	db   $dd                                         ; $4d80: $dd
	cp   $ed                                         ; $4d81: $fe $ed
	db   $db                                         ; $4d83: $db
	cp   h                                           ; $4d84: $bc
	res  5, b                                        ; $4d85: $cb $a8
	ld   [hl], l                                     ; $4d87: $75
	ld   b, e                                        ; $4d88: $43
	inc  sp                                          ; $4d89: $33
	ld   hl, $1111                                   ; $4d8a: $21 $11 $11
	ld   de, $1111                                   ; $4d8d: $11 $11 $11
	ld   de, $3611                                   ; $4d90: $11 $11 $36
	sbc  d                                           ; $4d93: $9a
	cp   h                                           ; $4d94: $bc
	adc  $ef                                         ; $4d95: $ce $ef
	rst  $38                                         ; $4d97: $ff
	xor  $dc                                         ; $4d98: $ee $dc
	call c, $98cb                                    ; $4d9a: $dc $cb $98
	adc  c                                           ; $4d9d: $89
	sbc  c                                           ; $4d9e: $99
	xor  h                                           ; $4d9f: $ac
	xor  h                                           ; $4da0: $ac
	call $ffed                                       ; $4da1: $cd $ed $ff
	db   $ed                                         ; $4da4: $ed
	call z, $cabb                                    ; $4da5: $cc $bb $ca
	xor  c                                           ; $4da8: $a9
	halt                                             ; $4da9: $76
	ld   b, h                                        ; $4daa: $44
	ld   b, h                                        ; $4dab: $44
	ld   b, e                                        ; $4dac: $43
	ld   [hl-], a                                    ; $4dad: $32
	ld   de, $1111                                   ; $4dae: $11 $11 $11
	ld   de, $1111                                   ; $4db1: $11 $11 $11
	ld   [de], a                                     ; $4db4: $12
	ld   b, l                                        ; $4db5: $45
	ld   a, b                                        ; $4db6: $78
	sbc  e                                           ; $4db7: $9b
	sbc  $ee                                         ; $4db8: $de $ee
	cp   $dd                                         ; $4dba: $fe $dd
	call z, $badb                                    ; $4dbc: $cc $db $ba
	sbc  c                                           ; $4dbf: $99
	adc  c                                           ; $4dc0: $89
	cp   e                                           ; $4dc1: $bb
	cp   e                                           ; $4dc2: $bb
	cp   h                                           ; $4dc3: $bc
	db   $dd                                         ; $4dc4: $dd
	db   $ed                                         ; $4dc5: $ed
	db   $dd                                         ; $4dc6: $dd
	call z, $cbcc                                    ; $4dc7: $cc $cc $cb
	xor  e                                           ; $4dca: $ab
	sub  a                                           ; $4dcb: $97
	ld   h, [hl]                                     ; $4dcc: $66
	ld   h, [hl]                                     ; $4dcd: $66
	ld   d, l                                        ; $4dce: $55
	ld   b, e                                        ; $4dcf: $43
	ld   [hl-], a                                    ; $4dd0: $32
	ld   [hl+], a                                    ; $4dd1: $22
	ld   hl, $2211                                   ; $4dd2: $21 $11 $22
	ld   de, $1111                                   ; $4dd5: $11 $11 $11
	inc  hl                                          ; $4dd8: $23
	ld   b, l                                        ; $4dd9: $45
	ld   h, a                                        ; $4dda: $67
	sbc  e                                           ; $4ddb: $9b
	call $eecd                                       ; $4ddc: $cd $cd $ee
	cp   $dd                                         ; $4ddf: $fe $dd
	res  7, d                                        ; $4de1: $cb $ba
	cp   d                                           ; $4de3: $ba
	adc  c                                           ; $4de4: $89
	adc  c                                           ; $4de5: $89
	xor  h                                           ; $4de6: $ac
	res  5, d                                        ; $4de7: $cb $aa
	call $dddd                                       ; $4de9: $cd $dd $dd
	cp   e                                           ; $4dec: $bb
	res  5, c                                        ; $4ded: $cb $a9
	add  a                                           ; $4def: $87
	ld   h, l                                        ; $4df0: $65
	ld   d, l                                        ; $4df1: $55
	ld   h, [hl]                                     ; $4df2: $66
	ld   h, h                                        ; $4df3: $64
	ld   [hl-], a                                    ; $4df4: $32
	inc  [hl]                                        ; $4df5: $34
	ld   d, l                                        ; $4df6: $55
	ld   b, e                                        ; $4df7: $43
	ld   hl, $2322                                   ; $4df8: $21 $22 $23
	ld   hl, $2312                                   ; $4dfb: $21 $12 $23
	dec  [hl]                                        ; $4dfe: $35
	ld   h, a                                        ; $4dff: $67
	add  a                                           ; $4e00: $87
	adc  d                                           ; $4e01: $8a
	cp   l                                           ; $4e02: $bd
	set  1, l                                        ; $4e03: $cb $cd
	sbc  $db                                         ; $4e05: $de $db
	cp   e                                           ; $4e07: $bb
	cp   e                                           ; $4e08: $bb
	cp   d                                           ; $4e09: $ba
	xor  e                                           ; $4e0a: $ab
	xor  d                                           ; $4e0b: $aa
	xor  d                                           ; $4e0c: $aa
	cp   d                                           ; $4e0d: $ba
	cp   e                                           ; $4e0e: $bb
	cp   d                                           ; $4e0f: $ba
	xor  c                                           ; $4e10: $a9
	sbc  d                                           ; $4e11: $9a
	xor  d                                           ; $4e12: $aa
	sbc  b                                           ; $4e13: $98
	add  a                                           ; $4e14: $87
	ld   a, b                                        ; $4e15: $78
	add  a                                           ; $4e16: $87
	ld   h, [hl]                                     ; $4e17: $66
	ld   h, a                                        ; $4e18: $67
	ld   [hl], a                                     ; $4e19: $77
	ld   h, l                                        ; $4e1a: $65
	ld   d, l                                        ; $4e1b: $55
	ld   h, [hl]                                     ; $4e1c: $66
	ld   h, [hl]                                     ; $4e1d: $66
	ld   h, l                                        ; $4e1e: $65
	ld   h, [hl]                                     ; $4e1f: $66
	ld   h, [hl]                                     ; $4e20: $66
	ld   h, [hl]                                     ; $4e21: $66
	ld   d, l                                        ; $4e22: $55
	ld   d, [hl]                                     ; $4e23: $56
	ld   h, [hl]                                     ; $4e24: $66
	ld   h, [hl]                                     ; $4e25: $66
	ld   h, [hl]                                     ; $4e26: $66
	ld   [hl], a                                     ; $4e27: $77
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	sbc  c                                           ; $4e2a: $99
	adc  c                                           ; $4e2b: $89
	xor  d                                           ; $4e2c: $aa
	xor  e                                           ; $4e2d: $ab
	xor  d                                           ; $4e2e: $aa
	xor  e                                           ; $4e2f: $ab
	cp   e                                           ; $4e30: $bb
	cp   e                                           ; $4e31: $bb
	xor  e                                           ; $4e32: $ab
	cp   e                                           ; $4e33: $bb
	xor  d                                           ; $4e34: $aa
	xor  d                                           ; $4e35: $aa
	cp   d                                           ; $4e36: $ba
	xor  d                                           ; $4e37: $aa
	xor  d                                           ; $4e38: $aa
	sbc  d                                           ; $4e39: $9a
	sbc  c                                           ; $4e3a: $99
	sbc  c                                           ; $4e3b: $99
	sbc  c                                           ; $4e3c: $99
	sbc  b                                           ; $4e3d: $98
	ld   [hl], a                                     ; $4e3e: $77
	adc  c                                           ; $4e3f: $89
	add  a                                           ; $4e40: $87
	ld   [hl], a                                     ; $4e41: $77
	ld   [hl], a                                     ; $4e42: $77
	adc  b                                           ; $4e43: $88
	ld   [hl], a                                     ; $4e44: $77
	ld   [hl], a                                     ; $4e45: $77
	adc  b                                           ; $4e46: $88
	add  a                                           ; $4e47: $87
	ld   [hl], a                                     ; $4e48: $77
	ld   a, b                                        ; $4e49: $78
	adc  b                                           ; $4e4a: $88
	add  a                                           ; $4e4b: $87
	ld   [hl], a                                     ; $4e4c: $77
	ld   [hl], a                                     ; $4e4d: $77
	add  a                                           ; $4e4e: $87
	ld   [hl], a                                     ; $4e4f: $77
	ld   [hl], a                                     ; $4e50: $77
	adc  b                                           ; $4e51: $88
	ld   [hl], a                                     ; $4e52: $77
	ld   [hl], a                                     ; $4e53: $77
	adc  b                                           ; $4e54: $88
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	sbc  b                                           ; $4e57: $98
	adc  b                                           ; $4e58: $88
	adc  b                                           ; $4e59: $88
	adc  c                                           ; $4e5a: $89
	sbc  c                                           ; $4e5b: $99
	sbc  c                                           ; $4e5c: $99
	sbc  c                                           ; $4e5d: $99
	sbc  c                                           ; $4e5e: $99
	sbc  c                                           ; $4e5f: $99
	sbc  c                                           ; $4e60: $99
	sbc  b                                           ; $4e61: $98
	adc  b                                           ; $4e62: $88
	sbc  c                                           ; $4e63: $99
	sbc  c                                           ; $4e64: $99
	sbc  b                                           ; $4e65: $98
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  b                                           ; $4e69: $88
	adc  b                                           ; $4e6a: $88
	adc  c                                           ; $4e6b: $89
	sbc  b                                           ; $4e6c: $98
	sbc  c                                           ; $4e6d: $99
	sbc  c                                           ; $4e6e: $99
	sbc  c                                           ; $4e6f: $99
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	adc  b                                           ; $4e72: $88
	adc  b                                           ; $4e73: $88
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	add  a                                           ; $4e78: $87
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	adc  b                                           ; $4e7b: $88
	adc  b                                           ; $4e7c: $88
	adc  b                                           ; $4e7d: $88
	adc  b                                           ; $4e7e: $88
	adc  b                                           ; $4e7f: $88
	adc  b                                           ; $4e80: $88
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	ld   a, b                                        ; $4e88: $78
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	ld   a, b                                        ; $4e8b: $78
	adc  b                                           ; $4e8c: $88
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  b                                           ; $4e9c: $88
	adc  b                                           ; $4e9d: $88
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	adc  b                                           ; $4ea3: $88
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	ld   a, b                                        ; $4ea7: $78
	add  a                                           ; $4ea8: $87
	ld   [hl], a                                     ; $4ea9: $77
	ld   [hl], a                                     ; $4eaa: $77
	ld   [hl], a                                     ; $4eab: $77
	ld   [hl], a                                     ; $4eac: $77
	ld   [hl], a                                     ; $4ead: $77
	ld   [hl], a                                     ; $4eae: $77
	ld   [hl], a                                     ; $4eaf: $77
	ld   [hl], a                                     ; $4eb0: $77
	ld   [hl], a                                     ; $4eb1: $77
	ld   [hl], a                                     ; $4eb2: $77
	adc  b                                           ; $4eb3: $88
	ld   [hl], a                                     ; $4eb4: $77
	adc  b                                           ; $4eb5: $88
	ld   [hl], a                                     ; $4eb6: $77
	ld   [hl], a                                     ; $4eb7: $77
	ld   [hl], a                                     ; $4eb8: $77
	ld   [hl], a                                     ; $4eb9: $77
	ld   [hl], a                                     ; $4eba: $77
	ld   [hl], a                                     ; $4ebb: $77
	ld   [hl], a                                     ; $4ebc: $77
	ld   [hl], a                                     ; $4ebd: $77
	ld   [hl], a                                     ; $4ebe: $77
	ld   [hl], a                                     ; $4ebf: $77
	ld   a, b                                        ; $4ec0: $78
	adc  b                                           ; $4ec1: $88
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	add  a                                           ; $4ecb: $87
	adc  b                                           ; $4ecc: $88
	ld   [hl], a                                     ; $4ecd: $77
	adc  b                                           ; $4ece: $88
	ld   [hl], a                                     ; $4ecf: $77
	ld   [hl], a                                     ; $4ed0: $77
	ld   [hl], a                                     ; $4ed1: $77
	ld   [hl], a                                     ; $4ed2: $77
	ld   [hl], a                                     ; $4ed3: $77
	ld   [hl], a                                     ; $4ed4: $77
	ld   [hl], a                                     ; $4ed5: $77
	ld   [hl], a                                     ; $4ed6: $77
	ld   [hl], a                                     ; $4ed7: $77
	ld   [hl], a                                     ; $4ed8: $77
	ld   [hl], a                                     ; $4ed9: $77
	ld   [hl], a                                     ; $4eda: $77
	ld   [hl], a                                     ; $4edb: $77
	ld   [hl], a                                     ; $4edc: $77
	ld   [hl], a                                     ; $4edd: $77
	ld   [hl], a                                     ; $4ede: $77
	add  a                                           ; $4edf: $87
	ld   [hl], a                                     ; $4ee0: $77
	ld   [hl], a                                     ; $4ee1: $77
	ld   [hl], a                                     ; $4ee2: $77
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	adc  b                                           ; $4eea: $88
	adc  b                                           ; $4eeb: $88
	adc  b                                           ; $4eec: $88
	adc  b                                           ; $4eed: $88
	adc  b                                           ; $4eee: $88
	adc  b                                           ; $4eef: $88
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	adc  b                                           ; $4ef2: $88
	adc  b                                           ; $4ef3: $88
	adc  b                                           ; $4ef4: $88
	adc  b                                           ; $4ef5: $88
	adc  b                                           ; $4ef6: $88
	adc  b                                           ; $4ef7: $88
	adc  b                                           ; $4ef8: $88
	adc  b                                           ; $4ef9: $88
	adc  b                                           ; $4efa: $88
	adc  b                                           ; $4efb: $88
	adc  b                                           ; $4efc: $88
	adc  b                                           ; $4efd: $88
	adc  b                                           ; $4efe: $88
	adc  b                                           ; $4eff: $88
	adc  b                                           ; $4f00: $88
	adc  b                                           ; $4f01: $88
	adc  b                                           ; $4f02: $88
	adc  b                                           ; $4f03: $88
	adc  b                                           ; $4f04: $88
	adc  b                                           ; $4f05: $88
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	adc  b                                           ; $4f08: $88
	adc  b                                           ; $4f09: $88
	adc  b                                           ; $4f0a: $88
	adc  b                                           ; $4f0b: $88
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  b                                           ; $4f11: $88
	adc  b                                           ; $4f12: $88
	adc  b                                           ; $4f13: $88
	adc  b                                           ; $4f14: $88
	adc  b                                           ; $4f15: $88
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	adc  b                                           ; $4f18: $88
	adc  b                                           ; $4f19: $88
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
	adc  b                                           ; $4f1d: $88
	adc  c                                           ; $4f1e: $89
	sub  a                                           ; $4f1f: $97
	sbc  d                                           ; $4f20: $9a
	ld   [hl], a                                     ; $4f21: $77
	adc  c                                           ; $4f22: $89
	ld   a, b                                        ; $4f23: $78
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	add  a                                           ; $4f26: $87
	adc  b                                           ; $4f27: $88
	adc  b                                           ; $4f28: $88
	adc  b                                           ; $4f29: $88
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  b                                           ; $4f2f: $88
	adc  b                                           ; $4f30: $88
	adc  b                                           ; $4f31: $88
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	adc  b                                           ; $4f36: $88
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	adc  b                                           ; $4f3b: $88
	adc  b                                           ; $4f3c: $88
	adc  b                                           ; $4f3d: $88
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	adc  b                                           ; $4f40: $88
	adc  b                                           ; $4f41: $88
	adc  b                                           ; $4f42: $88
	adc  b                                           ; $4f43: $88
	adc  b                                           ; $4f44: $88
	adc  b                                           ; $4f45: $88
	adc  b                                           ; $4f46: $88
	adc  b                                           ; $4f47: $88
	adc  b                                           ; $4f48: $88
	adc  b                                           ; $4f49: $88
	adc  b                                           ; $4f4a: $88
	adc  b                                           ; $4f4b: $88
	adc  b                                           ; $4f4c: $88
	adc  b                                           ; $4f4d: $88
	adc  b                                           ; $4f4e: $88
	adc  b                                           ; $4f4f: $88
	adc  b                                           ; $4f50: $88
	adc  b                                           ; $4f51: $88
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	adc  b                                           ; $4f55: $88
	adc  b                                           ; $4f56: $88
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	sbc  b                                           ; $4f5a: $98
	adc  b                                           ; $4f5b: $88
	adc  b                                           ; $4f5c: $88
	adc  b                                           ; $4f5d: $88
	adc  b                                           ; $4f5e: $88
	adc  b                                           ; $4f5f: $88
	sbc  d                                           ; $4f60: $9a
	ld   l, e                                        ; $4f61: $6b
	add  d                                           ; $4f62: $82
	jp   z, $8985                                    ; $4f63: $ca $85 $89

	sbc  d                                           ; $4f66: $9a
	ld   b, [hl]                                     ; $4f67: $46
	xor  d                                           ; $4f68: $aa
	ld   b, a                                        ; $4f69: $47
	sub  [hl]                                        ; $4f6a: $96
	ld   [hl], a                                     ; $4f6b: $77
	xor  d                                           ; $4f6c: $aa
	ld   d, [hl]                                     ; $4f6d: $56
	cp   b                                           ; $4f6e: $b8
	ld   l, e                                        ; $4f6f: $6b
	and  c                                           ; $4f70: $a1
	jp   c, $931b                                    ; $4f71: $da $1b $93

	call $f716                                       ; $4f74: $cd $16 $f7
	ld   e, [hl]                                     ; $4f77: $5e
	ld   h, h                                        ; $4f78: $64
	add  $7b                                         ; $4f79: $c6 $7b
	add  e                                           ; $4f7b: $83
	ret                                              ; $4f7c: $c9


	ld   a, [hl-]                                    ; $4f7d: $3a
	ld   [hl], l                                     ; $4f7e: $75
	ld   a, c                                        ; $4f7f: $79
	ld   h, a                                        ; $4f80: $67
	sub  [hl]                                        ; $4f81: $96
	ld   a, c                                        ; $4f82: $79
	xor  c                                           ; $4f83: $a9
	ld   a, c                                        ; $4f84: $79
	add  a                                           ; $4f85: $87
	xor  e                                           ; $4f86: $ab
	ld   a, c                                        ; $4f87: $79
	sub  a                                           ; $4f88: $97
	and  a                                           ; $4f89: $a7
	ld   [hl], a                                     ; $4f8a: $77
	ld   d, a                                        ; $4f8b: $57
	ld   h, [hl]                                     ; $4f8c: $66
	sub  a                                           ; $4f8d: $97
	ld   l, b                                        ; $4f8e: $68
	ld   [hl], a                                     ; $4f8f: $77
	ld   a, c                                        ; $4f90: $79
	ld   l, b                                        ; $4f91: $68
	sub  l                                           ; $4f92: $95
	sbc  c                                           ; $4f93: $99
	ld   a, c                                        ; $4f94: $79
	adc  b                                           ; $4f95: $88
	ld   a, c                                        ; $4f96: $79
	ld   [hl], a                                     ; $4f97: $77
	adc  c                                           ; $4f98: $89
	adc  c                                           ; $4f99: $89
	ld   [hl], a                                     ; $4f9a: $77
	add  a                                           ; $4f9b: $87
	add  [hl]                                        ; $4f9c: $86
	ld   a, b                                        ; $4f9d: $78
	ld   [hl], a                                     ; $4f9e: $77
	sbc  b                                           ; $4f9f: $98
	ld   a, c                                        ; $4fa0: $79
	ld   [hl], a                                     ; $4fa1: $77
	sub  a                                           ; $4fa2: $97
	ld   a, c                                        ; $4fa3: $79
	ld   [hl], a                                     ; $4fa4: $77
	sub  a                                           ; $4fa5: $97
	ld   a, b                                        ; $4fa6: $78
	add  a                                           ; $4fa7: $87
	sub  a                                           ; $4fa8: $97
	adc  b                                           ; $4fa9: $88
	adc  c                                           ; $4faa: $89
	ld   a, c                                        ; $4fab: $79
	ld   [hl], a                                     ; $4fac: $77
	sub  [hl]                                        ; $4fad: $96
	xor  d                                           ; $4fae: $aa
	ld   e, c                                        ; $4faf: $59
	sub  [hl]                                        ; $4fb0: $96
	sbc  b                                           ; $4fb1: $98
	ld   l, d                                        ; $4fb2: $6a
	ld   [hl], a                                     ; $4fb3: $77
	sub  a                                           ; $4fb4: $97
	adc  b                                           ; $4fb5: $88
	ld   a, c                                        ; $4fb6: $79
	ld   [hl], a                                     ; $4fb7: $77
	and  a                                           ; $4fb8: $a7
	ld   a, e                                        ; $4fb9: $7b
	ld   h, [hl]                                     ; $4fba: $66
	or   a                                           ; $4fbb: $b7
	ld   a, b                                        ; $4fbc: $78
	ld   a, b                                        ; $4fbd: $78
	and  a                                           ; $4fbe: $a7
	ld   a, d                                        ; $4fbf: $7a
	ld   e, d                                        ; $4fc0: $5a
	add  [hl]                                        ; $4fc1: $86
	or   [hl]                                        ; $4fc2: $b6
	ld   a, e                                        ; $4fc3: $7b
	halt                                             ; $4fc4: $76
	and  [hl]                                        ; $4fc5: $a6
	ld   a, h                                        ; $4fc6: $7c
	ld   h, a                                        ; $4fc7: $67
	and  a                                           ; $4fc8: $a7
	adc  b                                           ; $4fc9: $88
	ld   [hl], a                                     ; $4fca: $77
	adc  c                                           ; $4fcb: $89
	ld   a, d                                        ; $4fcc: $7a
	add  a                                           ; $4fcd: $87
	sub  a                                           ; $4fce: $97
	adc  c                                           ; $4fcf: $89
	ld   a, c                                        ; $4fd0: $79
	ld   a, c                                        ; $4fd1: $79
	sub  [hl]                                        ; $4fd2: $96
	xor  b                                           ; $4fd3: $a8
	ld   a, b                                        ; $4fd4: $78
	ld   a, b                                        ; $4fd5: $78
	add  a                                           ; $4fd6: $87
	sbc  e                                           ; $4fd7: $9b
	ld   a, c                                        ; $4fd8: $79
	sub  l                                           ; $4fd9: $95
	cp   b                                           ; $4fda: $b8
	ld   l, e                                        ; $4fdb: $6b
	ld   a, b                                        ; $4fdc: $78
	sub  [hl]                                        ; $4fdd: $96
	sbc  b                                           ; $4fde: $98
	add  a                                           ; $4fdf: $87
	ld   a, d                                        ; $4fe0: $7a
	halt                                             ; $4fe1: $76
	xor  d                                           ; $4fe2: $aa
	ld   l, c                                        ; $4fe3: $69
	ld   a, b                                        ; $4fe4: $78
	or   a                                           ; $4fe5: $b7
	sbc  b                                           ; $4fe6: $98
	adc  c                                           ; $4fe7: $89
	sub  a                                           ; $4fe8: $97
	sbc  b                                           ; $4fe9: $98
	ld   e, e                                        ; $4fea: $5b
	ld   l, b                                        ; $4feb: $68
	add  [hl]                                        ; $4fec: $86
	sub  a                                           ; $4fed: $97
	sbc  b                                           ; $4fee: $98
	ld   a, c                                        ; $4fef: $79
	sbc  b                                           ; $4ff0: $98
	adc  d                                           ; $4ff1: $8a
	add  a                                           ; $4ff2: $87
	rst  ToBoot                                         ; $4ff3: $c7
	ld   c, d                                        ; $4ff4: $4a
	and  l                                           ; $4ff5: $a5
	ld   a, e                                        ; $4ff6: $7b
	ld   e, d                                        ; $4ff7: $5a
	or   l                                           ; $4ff8: $b5
	and  a                                           ; $4ff9: $a7
	ld   l, e                                        ; $4ffa: $6b
	sub  [hl]                                        ; $4ffb: $96
	sbc  c                                           ; $4ffc: $99
	ld   l, d                                        ; $4ffd: $6a
	ld   [hl], a                                     ; $4ffe: $77
	and  a                                           ; $4fff: $a7
	sbc  c                                           ; $5000: $99
	adc  d                                           ; $5001: $8a
	ld   l, b                                        ; $5002: $68
	and  a                                           ; $5003: $a7
	sbc  c                                           ; $5004: $99
	sub  a                                           ; $5005: $97
	sub  a                                           ; $5006: $97
	adc  b                                           ; $5007: $88
	sbc  b                                           ; $5008: $98
	ld   e, e                                        ; $5009: $5b
	ld   e, e                                        ; $500a: $5b
	and  l                                           ; $500b: $a5
	ld   a, d                                        ; $500c: $7a
	halt                                             ; $500d: $76
	or   [hl]                                        ; $500e: $b6
	ld   a, d                                        ; $500f: $7a
	ld   a, b                                        ; $5010: $78
	and  a                                           ; $5011: $a7
	sub  a                                           ; $5012: $97
	adc  e                                           ; $5013: $8b
	ld   e, e                                        ; $5014: $5b
	and  h                                           ; $5015: $a4
	cp   b                                           ; $5016: $b8
	ld   [hl], a                                     ; $5017: $77
	and  l                                           ; $5018: $a5
	sbc  d                                           ; $5019: $9a
	ld   a, $67                                      ; $501a: $3e $67
	add  $8b                                         ; $501c: $c6 $8b
	ld   [hl], h                                     ; $501e: $74
	push de                                          ; $501f: $d5
	ld   e, l                                        ; $5020: $5d
	dec  sp                                          ; $5021: $3b
	sub  l                                           ; $5022: $95
	cp   d                                           ; $5023: $ba
	ld   [hl], l                                     ; $5024: $75
	rst  ToBoot                                         ; $5025: $c7
	ld   e, d                                        ; $5026: $5a
	ld   a, c                                        ; $5027: $79
	adc  c                                           ; $5028: $89
	and  a                                           ; $5029: $a7
	ld   a, c                                        ; $502a: $79
	ld   a, e                                        ; $502b: $7b
	ld   h, a                                        ; $502c: $67
	and  l                                           ; $502d: $a5
	or   a                                           ; $502e: $b7
	ld   a, b                                        ; $502f: $78
	ld   e, l                                        ; $5030: $5d
	ld   h, h                                        ; $5031: $64
	or   l                                           ; $5032: $b5
	or   a                                           ; $5033: $b7
	ld   a, b                                        ; $5034: $78
	xor  c                                           ; $5035: $a9
	ld   e, h                                        ; $5036: $5c
	ld   a, [hl-]                                    ; $5037: $3a
	or   e                                           ; $5038: $b3
	xor  b                                           ; $5039: $a8
	sub  l                                           ; $503a: $95
	adc  d                                           ; $503b: $8a
	ld   l, c                                        ; $503c: $69
	ld   a, h                                        ; $503d: $7c
	add  hl, sp                                      ; $503e: $39
	call nc, Call_0e3_75a8                           ; $503f: $d4 $a8 $75
	or   l                                           ; $5042: $b5
	ld   e, h                                        ; $5043: $5c
	ld   c, d                                        ; $5044: $4a
	and  a                                           ; $5045: $a7
	and  [hl]                                        ; $5046: $a6
	sbc  b                                           ; $5047: $98
	ld   a, c                                        ; $5048: $79
	adc  c                                           ; $5049: $89
	ld   l, b                                        ; $504a: $68
	sub  a                                           ; $504b: $97
	add  a                                           ; $504c: $87
	ld   l, b                                        ; $504d: $68
	push bc                                          ; $504e: $c5
	sub  l                                           ; $504f: $95
	xor  d                                           ; $5050: $aa
	add  [hl]                                        ; $5051: $86
	ld   a, l                                        ; $5052: $7d
	rra                                              ; $5053: $1f
	ld   h, $f1                                      ; $5054: $26 $f1
	add  $a6                                         ; $5056: $c6 $a6
	sbc  e                                           ; $5058: $9b
	rra                                              ; $5059: $1f
	ld   b, a                                        ; $505a: $47
	pop  af                                          ; $505b: $f1
	cp   d                                           ; $505c: $ba
	ld   a, [hl-]                                    ; $505d: $3a
	ldh  [c], a                                      ; $505e: $e2
	adc  [hl]                                        ; $505f: $8e
	ld   a, [de]                                     ; $5060: $1a
	or   h                                           ; $5061: $b4
	sbc  c                                           ; $5062: $99
	ld   e, c                                        ; $5063: $59
	or   c                                           ; $5064: $b1
	rst  $10                                         ; $5065: $d7
	ld   e, a                                        ; $5066: $5f
	ld   h, h                                        ; $5067: $64
	xor  d                                           ; $5068: $aa
	ld   c, e                                        ; $5069: $4b
	ld   b, a                                        ; $506a: $47
	push hl                                          ; $506b: $e5
	ld   e, h                                        ; $506c: $5c
	ld   [hl], e                                     ; $506d: $73
	add  sp, $2f                                     ; $506e: $e8 $2f
	and  c                                           ; $5070: $a1
	xor  e                                           ; $5071: $ab
	add  d                                           ; $5072: $82
	jp   c, Jump_0e3_786c                            ; $5073: $da $6c $78

	ld   c, [hl]                                     ; $5076: $4e
	ld   b, l                                        ; $5077: $45
	push bc                                          ; $5078: $c5
	add  a                                           ; $5079: $87
	sbc  c                                           ; $507a: $99
	add  a                                           ; $507b: $87
	ld   l, h                                        ; $507c: $6c
	ld   d, a                                        ; $507d: $57
	or   h                                           ; $507e: $b4
	ret  z                                           ; $507f: $c8

	ld   h, a                                        ; $5080: $67
	adc  e                                           ; $5081: $8b
	dec  l                                           ; $5082: $2d
	ld   e, b                                        ; $5083: $58
	call nz, $96c6                                   ; $5084: $c4 $c6 $96
	xor  d                                           ; $5087: $aa
	ld   c, e                                        ; $5088: $4b
	ld   h, [hl]                                     ; $5089: $66
	jp   Jump_0e3_499c                               ; $508a: $c3 $9c $49


	and  l                                           ; $508d: $a5
	xor  d                                           ; $508e: $aa
	dec  sp                                          ; $508f: $3b
	and  l                                           ; $5090: $a5
	sbc  b                                           ; $5091: $98
	add  a                                           ; $5092: $87
	sub  a                                           ; $5093: $97
	sub  a                                           ; $5094: $97
	adc  e                                           ; $5095: $8b
	ld   e, e                                        ; $5096: $5b
	ld   e, c                                        ; $5097: $59
	and  h                                           ; $5098: $a4
	sub  [hl]                                        ; $5099: $96
	call nz, Call_0e3_7a99                           ; $509a: $c4 $99 $7a
	ld   a, b                                        ; $509d: $78
	ld   l, h                                        ; $509e: $6c
	ld   l, d                                        ; $509f: $6a
	sub  l                                           ; $50a0: $95
	or   a                                           ; $50a1: $b7
	sub  a                                           ; $50a2: $97
	sub  a                                           ; $50a3: $97
	ld   a, e                                        ; $50a4: $7b
	ld   c, c                                        ; $50a5: $49
	sub  l                                           ; $50a6: $95
	or   [hl]                                        ; $50a7: $b6
	sbc  b                                           ; $50a8: $98
	add  a                                           ; $50a9: $87
	sbc  d                                           ; $50aa: $9a
	ld   c, e                                        ; $50ab: $4b
	ld   [hl], a                                     ; $50ac: $77
	and  a                                           ; $50ad: $a7
	ld   a, b                                        ; $50ae: $78
	sub  a                                           ; $50af: $97
	adc  b                                           ; $50b0: $88
	sbc  b                                           ; $50b1: $98
	ld   a, b                                        ; $50b2: $78
	ld   [hl], a                                     ; $50b3: $77
	sbc  b                                           ; $50b4: $98
	adc  c                                           ; $50b5: $89
	sub  [hl]                                        ; $50b6: $96
	sbc  c                                           ; $50b7: $99
	ld   l, b                                        ; $50b8: $68
	ld   a, b                                        ; $50b9: $78
	adc  b                                           ; $50ba: $88
	adc  b                                           ; $50bb: $88
	adc  b                                           ; $50bc: $88
	sub  a                                           ; $50bd: $97
	add  a                                           ; $50be: $87
	ld   a, c                                        ; $50bf: $79
	sbc  b                                           ; $50c0: $98
	adc  b                                           ; $50c1: $88
	adc  c                                           ; $50c2: $89
	ld   a, b                                        ; $50c3: $78
	sub  a                                           ; $50c4: $97
	adc  c                                           ; $50c5: $89
	adc  b                                           ; $50c6: $88
	add  a                                           ; $50c7: $87
	adc  c                                           ; $50c8: $89
	ld   a, b                                        ; $50c9: $78
	add  a                                           ; $50ca: $87
	sub  a                                           ; $50cb: $97
	adc  c                                           ; $50cc: $89
	add  a                                           ; $50cd: $87
	adc  b                                           ; $50ce: $88
	ld   a, c                                        ; $50cf: $79
	ld   a, b                                        ; $50d0: $78
	adc  b                                           ; $50d1: $88
	add  a                                           ; $50d2: $87
	ld   a, d                                        ; $50d3: $7a
	sub  [hl]                                        ; $50d4: $96
	add  a                                           ; $50d5: $87
	ld   a, c                                        ; $50d6: $79
	add  a                                           ; $50d7: $87
	add  a                                           ; $50d8: $87
	ld   l, c                                        ; $50d9: $69
	adc  b                                           ; $50da: $88
	ld   a, b                                        ; $50db: $78
	ld   a, c                                        ; $50dc: $79
	add  a                                           ; $50dd: $87
	adc  b                                           ; $50de: $88
	add  a                                           ; $50df: $87
	adc  b                                           ; $50e0: $88
	adc  c                                           ; $50e1: $89
	adc  b                                           ; $50e2: $88
	ld   a, b                                        ; $50e3: $78
	adc  c                                           ; $50e4: $89
	adc  b                                           ; $50e5: $88
	sub  a                                           ; $50e6: $97
	add  a                                           ; $50e7: $87
	adc  b                                           ; $50e8: $88
	ld   [hl], a                                     ; $50e9: $77
	adc  c                                           ; $50ea: $89
	add  a                                           ; $50eb: $87
	adc  c                                           ; $50ec: $89
	add  a                                           ; $50ed: $87
	ld   a, b                                        ; $50ee: $78
	adc  b                                           ; $50ef: $88
	ld   [hl], a                                     ; $50f0: $77
	ld   a, b                                        ; $50f1: $78
	adc  b                                           ; $50f2: $88
	add  a                                           ; $50f3: $87
	add  a                                           ; $50f4: $87
	adc  b                                           ; $50f5: $88
	ld   a, b                                        ; $50f6: $78
	add  a                                           ; $50f7: $87
	adc  b                                           ; $50f8: $88
	ld   a, b                                        ; $50f9: $78
	add  a                                           ; $50fa: $87
	adc  b                                           ; $50fb: $88
	ld   a, b                                        ; $50fc: $78
	adc  b                                           ; $50fd: $88
	adc  b                                           ; $50fe: $88
	adc  b                                           ; $50ff: $88
	adc  b                                           ; $5100: $88
	adc  b                                           ; $5101: $88
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	add  a                                           ; $5106: $87
	adc  b                                           ; $5107: $88
	adc  b                                           ; $5108: $88
	adc  b                                           ; $5109: $88
	adc  b                                           ; $510a: $88
	adc  b                                           ; $510b: $88
	adc  b                                           ; $510c: $88
	adc  b                                           ; $510d: $88
	adc  b                                           ; $510e: $88
	adc  b                                           ; $510f: $88
	adc  b                                           ; $5110: $88
	adc  b                                           ; $5111: $88
	adc  b                                           ; $5112: $88
	adc  b                                           ; $5113: $88
	adc  b                                           ; $5114: $88
	adc  b                                           ; $5115: $88
	adc  b                                           ; $5116: $88
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	adc  b                                           ; $5119: $88
	adc  b                                           ; $511a: $88
	adc  b                                           ; $511b: $88
	adc  b                                           ; $511c: $88
	adc  b                                           ; $511d: $88
	adc  b                                           ; $511e: $88
	adc  b                                           ; $511f: $88
	adc  b                                           ; $5120: $88
	adc  b                                           ; $5121: $88
	adc  b                                           ; $5122: $88
	adc  b                                           ; $5123: $88
	adc  b                                           ; $5124: $88
	adc  b                                           ; $5125: $88
	adc  b                                           ; $5126: $88
	adc  b                                           ; $5127: $88
	adc  b                                           ; $5128: $88
	adc  b                                           ; $5129: $88
	adc  b                                           ; $512a: $88
	adc  b                                           ; $512b: $88
	adc  b                                           ; $512c: $88
	adc  b                                           ; $512d: $88
	adc  b                                           ; $512e: $88
	adc  b                                           ; $512f: $88
	adc  b                                           ; $5130: $88
	adc  b                                           ; $5131: $88
	adc  b                                           ; $5132: $88
	adc  b                                           ; $5133: $88
	adc  b                                           ; $5134: $88
	adc  b                                           ; $5135: $88
	adc  b                                           ; $5136: $88
	adc  b                                           ; $5137: $88
	adc  b                                           ; $5138: $88
	adc  b                                           ; $5139: $88
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	adc  b                                           ; $513d: $88
	adc  b                                           ; $513e: $88
	adc  b                                           ; $513f: $88
	adc  b                                           ; $5140: $88
	adc  b                                           ; $5141: $88
	adc  b                                           ; $5142: $88
	adc  b                                           ; $5143: $88
	adc  b                                           ; $5144: $88
	adc  b                                           ; $5145: $88
	adc  b                                           ; $5146: $88
	adc  b                                           ; $5147: $88
	adc  b                                           ; $5148: $88
	adc  b                                           ; $5149: $88
	adc  b                                           ; $514a: $88
	adc  b                                           ; $514b: $88
	adc  b                                           ; $514c: $88
	adc  b                                           ; $514d: $88
	adc  b                                           ; $514e: $88
	adc  b                                           ; $514f: $88
	adc  b                                           ; $5150: $88
	adc  b                                           ; $5151: $88
	adc  b                                           ; $5152: $88
	adc  b                                           ; $5153: $88
	adc  b                                           ; $5154: $88
	adc  b                                           ; $5155: $88
	adc  b                                           ; $5156: $88
	adc  b                                           ; $5157: $88
	adc  b                                           ; $5158: $88
	adc  b                                           ; $5159: $88
	adc  b                                           ; $515a: $88
	adc  b                                           ; $515b: $88
	adc  b                                           ; $515c: $88
	adc  b                                           ; $515d: $88
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	adc  b                                           ; $5160: $88
	adc  b                                           ; $5161: $88
	adc  b                                           ; $5162: $88
	adc  b                                           ; $5163: $88
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	adc  b                                           ; $5166: $88
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	adc  b                                           ; $5169: $88
	adc  b                                           ; $516a: $88
	adc  b                                           ; $516b: $88
	adc  b                                           ; $516c: $88
	adc  b                                           ; $516d: $88
	adc  b                                           ; $516e: $88
	adc  b                                           ; $516f: $88
	adc  b                                           ; $5170: $88
	adc  b                                           ; $5171: $88
	adc  b                                           ; $5172: $88
	adc  b                                           ; $5173: $88
	adc  b                                           ; $5174: $88
	adc  b                                           ; $5175: $88
	adc  b                                           ; $5176: $88
	adc  b                                           ; $5177: $88
	adc  b                                           ; $5178: $88
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
	adc  b                                           ; $517c: $88
	adc  b                                           ; $517d: $88
	adc  b                                           ; $517e: $88
	adc  b                                           ; $517f: $88
	adc  b                                           ; $5180: $88
	adc  b                                           ; $5181: $88
	adc  b                                           ; $5182: $88
	adc  b                                           ; $5183: $88
	adc  b                                           ; $5184: $88
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	adc  b                                           ; $5187: $88
	adc  b                                           ; $5188: $88
	adc  b                                           ; $5189: $88
	adc  b                                           ; $518a: $88
	adc  b                                           ; $518b: $88
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88
	adc  b                                           ; $5197: $88
	adc  b                                           ; $5198: $88
	adc  b                                           ; $5199: $88
	adc  b                                           ; $519a: $88
	adc  b                                           ; $519b: $88
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	adc  b                                           ; $519e: $88
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	adc  c                                           ; $51a4: $89
	adc  b                                           ; $51a5: $88
	adc  b                                           ; $51a6: $88
	adc  b                                           ; $51a7: $88
	adc  b                                           ; $51a8: $88
	adc  b                                           ; $51a9: $88
	adc  b                                           ; $51aa: $88
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  b                                           ; $51b0: $88
	adc  b                                           ; $51b1: $88
	adc  b                                           ; $51b2: $88
	adc  b                                           ; $51b3: $88
	adc  b                                           ; $51b4: $88
	adc  b                                           ; $51b5: $88
	adc  b                                           ; $51b6: $88
	adc  b                                           ; $51b7: $88
	adc  b                                           ; $51b8: $88
	adc  b                                           ; $51b9: $88
	ld   a, c                                        ; $51ba: $79
	adc  b                                           ; $51bb: $88
	sbc  b                                           ; $51bc: $98
	adc  b                                           ; $51bd: $88
	adc  b                                           ; $51be: $88
	adc  b                                           ; $51bf: $88
	adc  b                                           ; $51c0: $88
	adc  b                                           ; $51c1: $88
	adc  b                                           ; $51c2: $88
	adc  b                                           ; $51c3: $88
	adc  b                                           ; $51c4: $88
	adc  b                                           ; $51c5: $88
	adc  b                                           ; $51c6: $88
	adc  b                                           ; $51c7: $88
	adc  b                                           ; $51c8: $88
	adc  b                                           ; $51c9: $88
	adc  b                                           ; $51ca: $88
	adc  b                                           ; $51cb: $88
	adc  b                                           ; $51cc: $88
	cp   b                                           ; $51cd: $b8
	ld   l, e                                        ; $51ce: $6b
	cp   e                                           ; $51cf: $bb
	halt                                             ; $51d0: $76
	and  a                                           ; $51d1: $a7
	sbc  b                                           ; $51d2: $98
	adc  d                                           ; $51d3: $8a
	add  sp, $4a                                     ; $51d4: $e8 $4a
	adc  c                                           ; $51d6: $89
	ret  z                                           ; $51d7: $c8

	ld   e, c                                        ; $51d8: $59
	sbc  d                                           ; $51d9: $9a
	cp   b                                           ; $51da: $b8
	xor  c                                           ; $51db: $a9
	ld   h, [hl]                                     ; $51dc: $66
	ld   e, d                                        ; $51dd: $5a
	xor  c                                           ; $51de: $a9
	add  a                                           ; $51df: $87
	xor  a                                           ; $51e0: $af
	add  l                                           ; $51e1: $85
	call z, Call_0e3_7997                            ; $51e2: $cc $97 $79
	call c, Call_0e3_7964                            ; $51e5: $dc $64 $79
	xor  d                                           ; $51e8: $aa
	sub  h                                           ; $51e9: $94
	xor  l                                           ; $51ea: $ad
	sbc  d                                           ; $51eb: $9a
	ld   e, b                                        ; $51ec: $58
	add  $7d                                         ; $51ed: $c6 $7d
	sbc  c                                           ; $51ef: $99
	reti                                             ; $51f0: $d9


	adc  c                                           ; $51f1: $89
	sub  d                                           ; $51f2: $92
	ld   a, [hl]                                     ; $51f3: $7e
	ld   l, h                                        ; $51f4: $6c
	sbc  h                                           ; $51f5: $9c
	rst  $30                                         ; $51f6: $f7
	and  e                                           ; $51f7: $a3
	rla                                              ; $51f8: $17
	ld   [hl], h                                     ; $51f9: $74
	ld   [de], a                                     ; $51fa: $12
	ld   [hl], a                                     ; $51fb: $77
	and  a                                           ; $51fc: $a7
	dec  d                                           ; $51fd: $15
	add  a                                           ; $51fe: $87
	ld   hl, $5635                                   ; $51ff: $21 $35 $56
	ld   b, e                                        ; $5202: $43
	ld   h, a                                        ; $5203: $67
	ld   h, l                                        ; $5204: $65
	ld   b, l                                        ; $5205: $45
	add  a                                           ; $5206: $87
	ld   d, l                                        ; $5207: $55
	adc  e                                           ; $5208: $8b
	ld   a, b                                        ; $5209: $78
	ld   a, c                                        ; $520a: $79
	xor  b                                           ; $520b: $a8
	sub  a                                           ; $520c: $97
	ld   l, e                                        ; $520d: $6b
	cp   b                                           ; $520e: $b8
	xor  c                                           ; $520f: $a9
	ld   l, d                                        ; $5210: $6a
	xor  b                                           ; $5211: $a8
	ld   b, e                                        ; $5212: $43
	ld   b, e                                        ; $5213: $43
	ld   sp, $1111                                   ; $5214: $31 $11 $11
	ld   de, $1111                                   ; $5217: $11 $11 $11
	ld   de, $1311                                   ; $521a: $11 $11 $13
	rst  $38                                         ; $521d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $521e: $cf
	rst  $38                                         ; $521f: $ff
	rst  $38                                         ; $5220: $ff
	rst  $38                                         ; $5221: $ff
	rst  $38                                         ; $5222: $ff
	rst  $38                                         ; $5223: $ff
	cp   $fe                                         ; $5224: $fe $fe
	cp   d                                           ; $5226: $ba
	rst  $38                                         ; $5227: $ff
	db   $eb                                         ; $5228: $eb
	xor  e                                           ; $5229: $ab
	and  l                                           ; $522a: $a5
	ld   de, $1111                                   ; $522b: $11 $11 $11
	ld   de, $1111                                   ; $522e: $11 $11 $11
	ld   de, $9f11                                   ; $5231: $11 $11 $9f
	rst  $38                                         ; $5234: $ff
	rst  $38                                         ; $5235: $ff
	rst  $38                                         ; $5236: $ff
	rst  $38                                         ; $5237: $ff
	rst  $38                                         ; $5238: $ff
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	rst  $38                                         ; $523c: $ff
	rst  $38                                         ; $523d: $ff
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	jp   c, $1121                                    ; $5240: $da $21 $11

	ld   de, $1111                                   ; $5243: $11 $11 $11
	ld   de, $1111                                   ; $5246: $11 $11 $11
	ld   de, $ef14                                   ; $5249: $11 $14 $ef
	rst  $38                                         ; $524c: $ff
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	rst  $38                                         ; $5251: $ff
	rst  $38                                         ; $5252: $ff
	rst  JumpTable                                         ; $5253: $df
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	ei                                               ; $5257: $fb
	ld   h, l                                        ; $5258: $65
	ld   b, c                                        ; $5259: $41
	ld   de, $1111                                   ; $525a: $11 $11 $11
	ld   de, $1111                                   ; $525d: $11 $11 $11
	ld   de, $8111                                   ; $5260: $11 $11 $81
	rst  $28                                         ; $5263: $ef
	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	rst  JumpTable                                         ; $5266: $df
	rst  $38                                         ; $5267: $ff
	db   $dd                                         ; $5268: $dd
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	xor  a                                           ; $526b: $af
	rst  $38                                         ; $526c: $ff
	xor  $ff                                         ; $526d: $ee $ff
	sub  $11                                         ; $526f: $d6 $11
	ld   h, [hl]                                     ; $5271: $66
	ld   de, $4111                                   ; $5272: $11 $11 $41
	ld   de, $1111                                   ; $5275: $11 $11 $11
	ld   de, $1342                                   ; $5278: $11 $42 $13
	rst  $38                                         ; $527b: $ff
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	rst  $38                                         ; $527e: $ff
	db   $f4                                         ; $527f: $f4
	xor  a                                           ; $5280: $af
	rst  $38                                         ; $5281: $ff
	cp   a                                           ; $5282: $bf
	rst  $38                                         ; $5283: $ff
	rst  $38                                         ; $5284: $ff
	cp   $ff                                         ; $5285: $fe $ff
	sub  d                                           ; $5287: $92
	add  e                                           ; $5288: $83
	ld   d, c                                        ; $5289: $51
	ld   de, $1146                                   ; $528a: $11 $46 $11
	ld   de, $1111                                   ; $528d: $11 $11 $11
	ld   de, $1131                                   ; $5290: $11 $31 $11
	rst  $38                                         ; $5293: $ff
	rst  $38                                         ; $5294: $ff
	rst  $38                                         ; $5295: $ff
	rst  $38                                         ; $5296: $ff
	rst  $38                                         ; $5297: $ff
	ld   e, d                                        ; $5298: $5a
	rst  $38                                         ; $5299: $ff
	rst  $38                                         ; $529a: $ff
	rst  $38                                         ; $529b: $ff
	rst  $38                                         ; $529c: $ff
	rst  $38                                         ; $529d: $ff
	rst  $38                                         ; $529e: $ff
	ld   d, a                                        ; $529f: $57
	or   l                                           ; $52a0: $b5
	adc  e                                           ; $52a1: $8b
	inc  h                                           ; $52a2: $24
	ld   b, l                                        ; $52a3: $45
	sub  c                                           ; $52a4: $91
	ld   de, $1111                                   ; $52a5: $11 $11 $11
	ld   de, $1111                                   ; $52a8: $11 $11 $11
	ld   de, $f84f                                   ; $52ab: $11 $4f $f8
	rst  $38                                         ; $52ae: $ff
	ld   c, a                                        ; $52af: $4f
	rst  $38                                         ; $52b0: $ff
	di                                               ; $52b1: $f3
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	rst  JumpTable                                         ; $52b6: $df
	db   $db                                         ; $52b7: $db
	jp   c, Jump_0e3_7f32                            ; $52b8: $da $32 $7f

	pop  af                                          ; $52bb: $f1
	inc  e                                           ; $52bc: $1c
	ld   hl, $1111                                   ; $52bd: $21 $11 $11
	ld   hl, $b511                                   ; $52c0: $21 $11 $b5
	ld   de, $a81a                                   ; $52c3: $11 $1a $a8
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff
	rst  $38                                         ; $52c8: $ff
	rst  JumpTable                                         ; $52c9: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ca: $cf
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	rst  $38                                         ; $52cd: $ff
	cp   a                                           ; $52ce: $bf
	rst  $30                                         ; $52cf: $f7
	db   $fd                                         ; $52d0: $fd
	ld   [$642c], a                                  ; $52d1: $ea $2c $64
	push bc                                          ; $52d4: $c5
	ld   d, [hl]                                     ; $52d5: $56
	ld   de, $1111                                   ; $52d6: $11 $11 $11
	ld   de, $1111                                   ; $52d9: $11 $11 $11
	ld   de, $1f21                                   ; $52dc: $11 $21 $1f
	push af                                          ; $52df: $f5
	rst  $38                                         ; $52e0: $ff
	rst  $38                                         ; $52e1: $ff
	cpl                                              ; $52e2: $2f
	rst  $30                                         ; $52e3: $f7
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	rst  $28                                         ; $52e6: $ef
	rst  $38                                         ; $52e7: $ff
	rst  $38                                         ; $52e8: $ff
	db   $fd                                         ; $52e9: $fd
	ei                                               ; $52ea: $fb
	ld   l, a                                        ; $52eb: $6f
	ld   d, h                                        ; $52ec: $54
	pop  bc                                          ; $52ed: $c1
	ld   h, a                                        ; $52ee: $67
	ld   c, c                                        ; $52ef: $49
	ld   de, $1111                                   ; $52f0: $11 $11 $11
	ld   de, $5811                                   ; $52f3: $11 $11 $58
	ld   de, $3f11                                   ; $52f6: $11 $11 $3f
	adc  a                                           ; $52f9: $8f
	ei                                               ; $52fa: $fb
	rst  $38                                         ; $52fb: $ff
	db   $ec                                         ; $52fc: $ec
	rst  $28                                         ; $52fd: $ef
	db   $fc                                         ; $52fe: $fc
	rst  $38                                         ; $52ff: $ff
	rst  $38                                         ; $5300: $ff
	rst  $38                                         ; $5301: $ff
	cp   a                                           ; $5302: $bf
	rst  $38                                         ; $5303: $ff
	add  hl, sp                                      ; $5304: $39
	db   $fc                                         ; $5305: $fc
	or   [hl]                                        ; $5306: $b6
	ld   d, d                                        ; $5307: $52
	ld   c, d                                        ; $5308: $4a
	ld   hl, $1111                                   ; $5309: $21 $11 $11
	ld   de, $1111                                   ; $530c: $11 $11 $11
	ld   de, $1511                                   ; $530f: $11 $11 $15
	rst  $38                                         ; $5312: $ff
	add  h                                           ; $5313: $84
	rst  $38                                         ; $5314: $ff
	xor  d                                           ; $5315: $aa
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	rst  $38                                         ; $5318: $ff
	rst  $38                                         ; $5319: $ff
	cp   $af                                         ; $531a: $fe $af
	rst  $38                                         ; $531c: $ff
	add  sp, $5b                                     ; $531d: $e8 $5b
	cp   c                                           ; $531f: $b9
	add  d                                           ; $5320: $82
	db   $dd                                         ; $5321: $dd
	ld   [de], a                                     ; $5322: $12
	ld   de, $1111                                   ; $5323: $11 $11 $11
	ld   de, $1111                                   ; $5326: $11 $11 $11
	ld   de, $1111                                   ; $5329: $11 $11 $11
	call $f4ff                                       ; $532c: $cd $ff $f4
	rst  $38                                         ; $532f: $ff
	rst  $38                                         ; $5330: $ff
	ld   e, d                                        ; $5331: $5a
	rst  $38                                         ; $5332: $ff
	rst  $38                                         ; $5333: $ff
	rst  $38                                         ; $5334: $ff
	rst  JumpTable                                         ; $5335: $df
	ld   sp, hl                                      ; $5336: $f9
	ld   sp, hl                                      ; $5337: $f9
	ld   a, [hl]                                     ; $5338: $7e
	ld   c, d                                        ; $5339: $4a
	db   $e4                                         ; $533a: $e4
	ld   h, c                                        ; $533b: $61
	ld   d, $21                                      ; $533c: $16 $21
	ld   de, $1111                                   ; $533e: $11 $11 $11
	ld   de, $2111                                   ; $5341: $11 $11 $21
	add  hl, de                                      ; $5344: $19
	sub  l                                           ; $5345: $95
	ld   e, d                                        ; $5346: $5a
	rst  $38                                         ; $5347: $ff
	ld   c, l                                        ; $5348: $4d
	db   $fd                                         ; $5349: $fd
	adc  a                                           ; $534a: $8f
	rst  $38                                         ; $534b: $ff
	ei                                               ; $534c: $fb
	rst  $38                                         ; $534d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $534e: $cf
	rst  JumpTable                                         ; $534f: $df
	rst  $38                                         ; $5350: $ff
	ld   a, [$985a]                                  ; $5351: $fa $5a $98
	add  h                                           ; $5354: $84
	rst  $28                                         ; $5355: $ef
	ld   de, $3113                                   ; $5356: $11 $13 $31
	ld   de, $1111                                   ; $5359: $11 $11 $11
	ld   de, $1125                                   ; $535c: $11 $25 $11
	rra                                              ; $535f: $1f
	di                                               ; $5360: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5361: $cf
	rst  $38                                         ; $5362: $ff
	rst  $38                                         ; $5363: $ff
	cp   h                                           ; $5364: $bc
	rst  $38                                         ; $5365: $ff
	rst  $28                                         ; $5366: $ef
	rst  $38                                         ; $5367: $ff
	rst  $38                                         ; $5368: $ff
	rst  $38                                         ; $5369: $ff
	rst  $38                                         ; $536a: $ff
	xor  b                                           ; $536b: $a8
	cp   d                                           ; $536c: $ba
	ei                                               ; $536d: $fb
	ld   b, l                                        ; $536e: $45
	ld   e, e                                        ; $536f: $5b
	ld   d, c                                        ; $5370: $51
	ld   de, $1111                                   ; $5371: $11 $11 $11
	ld   de, $1111                                   ; $5374: $11 $11 $11
	inc  d                                           ; $5377: $14
	ld   de, $bb5c                                   ; $5378: $11 $5c $bb
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	cp   a                                           ; $537d: $bf
	rst  $38                                         ; $537e: $ff
	db   $fc                                         ; $537f: $fc
	ld   e, a                                        ; $5380: $5f
	rst  $38                                         ; $5381: $ff
	or   $ff                                         ; $5382: $f6 $ff
	rst  $38                                         ; $5384: $ff
	cpl                                              ; $5385: $2f
	ld   sp, hl                                      ; $5386: $f9
	add  d                                           ; $5387: $82
	adc  h                                           ; $5388: $8c
	ld   h, [hl]                                     ; $5389: $66
	ld   de, $1141                                   ; $538a: $11 $41 $11
	inc  de                                          ; $538d: $13
	ld   de, $1111                                   ; $538e: $11 $11 $11
	ld   de, $5e11                                   ; $5391: $11 $11 $5e
	ei                                               ; $5394: $fb
	rst  $38                                         ; $5395: $ff
	rst  $38                                         ; $5396: $ff

Jump_0e3_5397:
	rst  $28                                         ; $5397: $ef
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	ei                                               ; $539b: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $539c: $cf
	rst  $38                                         ; $539d: $ff
	rst  $38                                         ; $539e: $ff
	rst  $38                                         ; $539f: $ff
	ld   [$b178], a                                  ; $53a0: $ea $78 $b1
	dec  d                                           ; $53a3: $15
	and  e                                           ; $53a4: $a3
	ld   de, $1111                                   ; $53a5: $11 $11 $11
	ld   de, $1111                                   ; $53a8: $11 $11 $11
	ld   de, $a719                                   ; $53ab: $11 $19 $a7
	rst  $38                                         ; $53ae: $ff
	rst  $38                                         ; $53af: $ff
	rst  $38                                         ; $53b0: $ff
	rst  $38                                         ; $53b1: $ff
	cp   $ef                                         ; $53b2: $fe $ef
	rst  $38                                         ; $53b4: $ff
	rst  $38                                         ; $53b5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53b6: $cf
	rst  $38                                         ; $53b7: $ff
	rst  $28                                         ; $53b8: $ef
	rst  $38                                         ; $53b9: $ff
	ld   [$7396], a                                  ; $53ba: $ea $96 $73
	ld   [de], a                                     ; $53bd: $12
	ld   de, $1111                                   ; $53be: $11 $11 $11
	ld   sp, $1111                                   ; $53c1: $31 $11 $11
	ld   de, $1311                                   ; $53c4: $11 $11 $13
	jr   @+$01                                       ; $53c7: $18 $ff

	cp   a                                           ; $53c9: $bf
	rst  $38                                         ; $53ca: $ff
	rst  $38                                         ; $53cb: $ff
	rst  $38                                         ; $53cc: $ff
	cp   $7c                                         ; $53cd: $fe $7c
	rst  $38                                         ; $53cf: $ff
	xor  e                                           ; $53d0: $ab
	rst  $38                                         ; $53d1: $ff
	db   $fd                                         ; $53d2: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53d3: $cf
	rst  $38                                         ; $53d4: $ff
	ld   d, h                                        ; $53d5: $54
	sub  [hl]                                        ; $53d6: $96
	ld   de, $1111                                   ; $53d7: $11 $11 $11
	ld   de, $1111                                   ; $53da: $11 $11 $11
	ld   de, $1311                                   ; $53dd: $11 $11 $13
	ld   de, $ef9f                                   ; $53e0: $11 $9f $ef
	rst  $38                                         ; $53e3: $ff
	rst  $38                                         ; $53e4: $ff
	rst  $38                                         ; $53e5: $ff
	rst  $38                                         ; $53e6: $ff
	db   $fd                                         ; $53e7: $fd
	rst  $38                                         ; $53e8: $ff
	adc  e                                           ; $53e9: $8b
	ret  z                                           ; $53ea: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53eb: $cf
	cp   $ff                                         ; $53ec: $fe $ff
	db   $ec                                         ; $53ee: $ec
	db   $fc                                         ; $53ef: $fc
	ld   d, e                                        ; $53f0: $53
	ld   sp, $1111                                   ; $53f1: $31 $11 $11
	ld   de, $1111                                   ; $53f4: $11 $11 $11
	ld   de, $1111                                   ; $53f7: $11 $11 $11
	add  hl, de                                      ; $53fa: $19
	ld   hl, $ffff                                   ; $53fb: $21 $ff $ff
	rst  $38                                         ; $53fe: $ff
	rst  $38                                         ; $53ff: $ff
	rst  $38                                         ; $5400: $ff
	rst  $38                                         ; $5401: $ff
	db   $ed                                         ; $5402: $ed
	adc  $b9                                         ; $5403: $ce $b9
	sbc  h                                           ; $5405: $9c
	cp   $bd                                         ; $5406: $fe $bd
	rst  $38                                         ; $5408: $ff
	jp   hl                                          ; $5409: $e9


	xor  e                                           ; $540a: $ab
	ld   d, c                                        ; $540b: $51
	inc  de                                          ; $540c: $13
	ld   de, $1111                                   ; $540d: $11 $11 $11
	ld   de, $1111                                   ; $5410: $11 $11 $11
	ld   de, $7d11                                   ; $5413: $11 $11 $7d
	xor  $ff                                         ; $5416: $ee $ff
	rst  $38                                         ; $5418: $ff
	rst  $38                                         ; $5419: $ff
	rst  $28                                         ; $541a: $ef
	rst  $38                                         ; $541b: $ff
	rst  $38                                         ; $541c: $ff
	db   $fd                                         ; $541d: $fd
	ret  z                                           ; $541e: $c8

	ld   l, e                                        ; $541f: $6b
	jp   c, $fd7d                                    ; $5420: $da $7d $fd

	call z, $73c9                                    ; $5423: $cc $c9 $73
	inc  de                                          ; $5426: $13
	ld   de, $1111                                   ; $5427: $11 $11 $11
	ld   de, $1111                                   ; $542a: $11 $11 $11
	ld   de, $9619                                   ; $542d: $11 $19 $96
	ld   a, a                                        ; $5430: $7f
	rst  $38                                         ; $5431: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5432: $cf
	rst  $38                                         ; $5433: $ff
	rst  $38                                         ; $5434: $ff
	rst  $38                                         ; $5435: $ff
	db   $fc                                         ; $5436: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5437: $cf
	and  $6b                                         ; $5438: $e6 $6b
	reti                                             ; $543a: $d9


	adc  [hl]                                        ; $543b: $8e
	db   $dd                                         ; $543c: $dd
	db   $db                                         ; $543d: $db
	xor  e                                           ; $543e: $ab
	and  h                                           ; $543f: $a4
	inc  d                                           ; $5440: $14
	ld   hl, $1111                                   ; $5441: $21 $11 $11
	ld   de, $1111                                   ; $5444: $11 $11 $11
	ld   de, $8801                                   ; $5447: $11 $01 $88
	rst  JumpTable                                         ; $544a: $df
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	cp   $b6                                         ; $5451: $fe $b6
	sbc  e                                           ; $5453: $9b
	add  a                                           ; $5454: $87
	sbc  h                                           ; $5455: $9c
	cp   h                                           ; $5456: $bc
	jp   z, $87dd                                    ; $5457: $ca $dd $87

	halt                                             ; $545a: $76
	ld   b, c                                        ; $545b: $41
	ld   de, $1111                                   ; $545c: $11 $11 $11
	ld   de, $1111                                   ; $545f: $11 $11 $11
	inc  sp                                          ; $5462: $33
	add  hl, de                                      ; $5463: $19
	adc  $ff                                         ; $5464: $ce $ff
	rst  $38                                         ; $5466: $ff
	rst  $38                                         ; $5467: $ff
	rst  $38                                         ; $5468: $ff
	rst  $38                                         ; $5469: $ff
	rst  $38                                         ; $546a: $ff
	db   $fc                                         ; $546b: $fc
	jp   c, $9988                                    ; $546c: $da $88 $99

	ld   e, d                                        ; $546f: $5a
	jp   c, $ccad                                    ; $5470: $da $ad $cc

	cp   e                                           ; $5473: $bb

Call_0e3_5474:
	ld   [hl], a                                     ; $5474: $77
	ld   [hl], d                                     ; $5475: $72
	ld   de, $1111                                   ; $5476: $11 $11 $11
	ld   de, $1111                                   ; $5479: $11 $11 $11
	ld   de, $4c33                                   ; $547c: $11 $33 $4c
	db   $fd                                         ; $547f: $fd
	rst  $38                                         ; $5480: $ff
	rst  $38                                         ; $5481: $ff
	rst  $38                                         ; $5482: $ff
	rst  $38                                         ; $5483: $ff
	rst  $38                                         ; $5484: $ff
	rst  $38                                         ; $5485: $ff
	db   $fc                                         ; $5486: $fc
	cp   e                                           ; $5487: $bb
	ld   l, d                                        ; $5488: $6a
	sub  l                                           ; $5489: $95
	sbc  e                                           ; $548a: $9b
	and  a                                           ; $548b: $a7
	xor  l                                           ; $548c: $ad
	cp   e                                           ; $548d: $bb
	xor  c                                           ; $548e: $a9
	sbc  c                                           ; $548f: $99
	ld   h, e                                        ; $5490: $63
	ld   sp, $1111                                   ; $5491: $31 $11 $11
	ld   de, $1111                                   ; $5494: $11 $11 $11
	ld   de, $4a22                                   ; $5497: $11 $22 $4a
	db   $fd                                         ; $549a: $fd
	cp   a                                           ; $549b: $bf
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	rst  $38                                         ; $549e: $ff
	rst  $38                                         ; $549f: $ff
	rst  $38                                         ; $54a0: $ff
	db   $fc                                         ; $54a1: $fc
	xor  l                                           ; $54a2: $ad
	and  a                                           ; $54a3: $a7
	adc  c                                           ; $54a4: $89
	sub  a                                           ; $54a5: $97
	adc  c                                           ; $54a6: $89
	sbc  e                                           ; $54a7: $9b
	cp   d                                           ; $54a8: $ba
	xor  e                                           ; $54a9: $ab
	sub  l                                           ; $54aa: $95
	ld   d, a                                        ; $54ab: $57
	ld   hl, $1111                                   ; $54ac: $21 $11 $11
	ld   de, $1111                                   ; $54af: $11 $11 $11
	ld   de, $5411                                   ; $54b2: $11 $11 $54
	ld   h, a                                        ; $54b5: $67
	rst  JumpTable                                         ; $54b6: $df
	cp   a                                           ; $54b7: $bf
	rst  $38                                         ; $54b8: $ff
	rst  $38                                         ; $54b9: $ff
	rst  $38                                         ; $54ba: $ff
	rst  $38                                         ; $54bb: $ff
	rst  $38                                         ; $54bc: $ff
	db   $fc                                         ; $54bd: $fc
	ld   a, d                                        ; $54be: $7a
	ret                                              ; $54bf: $c9


	ld   l, c                                        ; $54c0: $69
	cp   c                                           ; $54c1: $b9
	cp   c                                           ; $54c2: $b9
	res  7, e                                        ; $54c3: $cb $bb
	ld   a, c                                        ; $54c5: $79
	add  a                                           ; $54c6: $87
	inc  hl                                          ; $54c7: $23
	add  d                                           ; $54c8: $82
	ld   [de], a                                     ; $54c9: $12
	ld   hl, $1111                                   ; $54ca: $21 $11 $11
	ld   de, $4111                                   ; $54cd: $11 $11 $41
	rla                                              ; $54d0: $17
	and  e                                           ; $54d1: $a3
	ld   e, h                                        ; $54d2: $5c
	cp   d                                           ; $54d3: $ba
	rst  JumpTable                                         ; $54d4: $df
	rst  $28                                         ; $54d5: $ef
	rst  $38                                         ; $54d6: $ff
	rst  $38                                         ; $54d7: $ff
	db   $fd                                         ; $54d8: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d9: $cf
	sbc  b                                           ; $54da: $98
	ld   sp, hl                                      ; $54db: $f9
	adc  e                                           ; $54dc: $8b
	cp   c                                           ; $54dd: $b9
	ld   l, l                                        ; $54de: $6d
	add  $8a                                         ; $54df: $c6 $8a
	or   [hl]                                        ; $54e1: $b6
	sbc  e                                           ; $54e2: $9b
	ld   c, b                                        ; $54e3: $48
	add  h                                           ; $54e4: $84
	inc  hl                                          ; $54e5: $23
	ld   [hl], c                                     ; $54e6: $71
	ld   h, $23                                      ; $54e7: $26 $23
	ld   [bc], a                                     ; $54e9: $02
	ld   de, $1451                                   ; $54ea: $11 $51 $14
	ld   h, e                                        ; $54ed: $63
	scf                                              ; $54ee: $37
	ld   c, e                                        ; $54ef: $4b
	rst  $10                                         ; $54f0: $d7
	ld   a, [hl]                                     ; $54f1: $7e
	ei                                               ; $54f2: $fb
	rst  $28                                         ; $54f3: $ef
	db   $fd                                         ; $54f4: $fd
	rst  $28                                         ; $54f5: $ef
	rst  JumpTable                                         ; $54f6: $df
	adc  $bd                                         ; $54f7: $ce $bd
	rst  $20                                         ; $54f9: $e7
	cp   l                                           ; $54fa: $bd
	ld   l, h                                        ; $54fb: $6c
	and  [hl]                                        ; $54fc: $a6
	sbc  e                                           ; $54fd: $9b
	jp   nz, Jump_0e3_55bd                           ; $54fe: $c2 $bd $55

	adc  b                                           ; $5501: $88
	daa                                              ; $5502: $27
	ld   [hl], d                                     ; $5503: $72
	daa                                              ; $5504: $27
	ld   d, c                                        ; $5505: $51
	ld   h, $22                                      ; $5506: $26 $22
	ld   b, h                                        ; $5508: $44
	ld   h, $44                                      ; $5509: $26 $44
	ld   [hl], h                                     ; $550b: $74
	ld   h, l                                        ; $550c: $65
	or   l                                           ; $550d: $b5
	ld   l, d                                        ; $550e: $6a
	ld   l, d                                        ; $550f: $6a
	sbc  e                                           ; $5510: $9b
	sbc  h                                           ; $5511: $9c
	db   $fc                                         ; $5512: $fc
	sbc  a                                           ; $5513: $9f
	cp   $bc                                         ; $5514: $fe $bc
	db   $fc                                         ; $5516: $fc
	call z, $c8bb                                    ; $5517: $cc $bb $c8
	sbc  b                                           ; $551a: $98
	sbc  h                                           ; $551b: $9c
	ld   l, b                                        ; $551c: $68
	sub  a                                           ; $551d: $97
	halt                                             ; $551e: $76
	ld   h, l                                        ; $551f: $65
	xor  b                                           ; $5520: $a8
	ld   [hl], $56                                   ; $5521: $36 $56
	ld   [hl], l                                     ; $5523: $75
	ld   [hl], d                                     ; $5524: $72
	ld   e, e                                        ; $5525: $5b
	inc  [hl]                                        ; $5526: $34
	ld   d, a                                        ; $5527: $57
	ld   b, l                                        ; $5528: $45
	ld   d, h                                        ; $5529: $54
	xor  b                                           ; $552a: $a8
	ld   [hl], h                                     ; $552b: $74
	cp   c                                           ; $552c: $b9
	ld   b, a                                        ; $552d: $47
	sbc  d                                           ; $552e: $9a
	ld   a, e                                        ; $552f: $7b
	ld   e, l                                        ; $5530: $5d
	rst  $20                                         ; $5531: $e7
	xor  b                                           ; $5532: $a8
	db   $eb                                         ; $5533: $eb
	jp   z, $a54f                                    ; $5534: $ca $4f $a5

	sbc  e                                           ; $5537: $9b
	pop  af                                          ; $5538: $f1
	xor  l                                           ; $5539: $ad
	ld   l, [hl]                                     ; $553a: $6e
	dec  de                                          ; $553b: $1b
	bit  0, c                                        ; $553c: $cb $41
	di                                               ; $553e: $f3
	and  h                                           ; $553f: $a4
	ld   c, c                                        ; $5540: $49
	cp   d                                           ; $5541: $ba
	rla                                              ; $5542: $17
	ret  z                                           ; $5543: $c8

	rla                                              ; $5544: $17
	or   h                                           ; $5545: $b4
	add  a                                           ; $5546: $87
	dec  [hl]                                        ; $5547: $35
	ld   [$f519], a                                  ; $5548: $ea $19 $f5
	ld   e, c                                        ; $554b: $59
	push de                                          ; $554c: $d5
	and  [hl]                                        ; $554d: $a6
	ld   l, e                                        ; $554e: $6b
	ld   a, e                                        ; $554f: $7b
	rra                                              ; $5550: $1f
	pop  de                                          ; $5551: $d1
	xor  e                                           ; $5552: $ab
	ld   h, a                                        ; $5553: $67
	and  l                                           ; $5554: $a5
	sbc  [hl]                                        ; $5555: $9e
	ld   b, a                                        ; $5556: $47
	cp   c                                           ; $5557: $b9
	pop  bc                                          ; $5558: $c1
	or   l                                           ; $5559: $b5
	sbc  d                                           ; $555a: $9a
	ld   c, h                                        ; $555b: $4c
	ld   e, [hl]                                     ; $555c: $5e
	ld   a, c                                        ; $555d: $79
	ld   d, a                                        ; $555e: $57
	pop  af                                          ; $555f: $f1
	ld   a, d                                        ; $5560: $7a
	add  l                                           ; $5561: $85
	add  a                                           ; $5562: $87
	ld   l, h                                        ; $5563: $6c
	ld   a, [hl+]                                    ; $5564: $2a
	and  [hl]                                        ; $5565: $a6
	jp   $8c98                                       ; $5566: $c3 $98 $8c


	ld   e, c                                        ; $5569: $59
	ld   l, h                                        ; $556a: $6c
	ld   d, l                                        ; $556b: $55
	and  l                                           ; $556c: $a5
	sub  l                                           ; $556d: $95
	add  d                                           ; $556e: $82
	sbc  e                                           ; $556f: $9b
	ld   a, b                                        ; $5570: $78
	ld   l, h                                        ; $5571: $6c
	ld   d, a                                        ; $5572: $57
	ld   [hl], d                                     ; $5573: $72
	ld   a, [$981c]                                  ; $5574: $fa $1c $98
	dec  sp                                          ; $5577: $3b
	ld   e, b                                        ; $5578: $58
	pop  de                                          ; $5579: $d1
	push af                                          ; $557a: $f5
	xor  d                                           ; $557b: $aa
	ld   a, [de]                                     ; $557c: $1a
	xor  b                                           ; $557d: $a8
	ld   e, d                                        ; $557e: $5a
	add  h                                           ; $557f: $84
	add  sp, $56                                     ; $5580: $e8 $56
	call z, $8829                                    ; $5582: $cc $29 $88
	ld   [hl], a                                     ; $5585: $77
	or   c                                           ; $5586: $b1
	db   $dd                                         ; $5587: $dd
	dec  e                                           ; $5588: $1d
	dec  sp                                          ; $5589: $3b
	sub  a                                           ; $558a: $97
	ld   h, h                                        ; $558b: $64
	pop  af                                          ; $558c: $f1
	and  l                                           ; $558d: $a5
	adc  c                                           ; $558e: $89
	ld   l, e                                        ; $558f: $6b
	ld   a, [hl+]                                    ; $5590: $2a
	sub  [hl]                                        ; $5591: $96
	adc  c                                           ; $5592: $89
	or   a                                           ; $5593: $b7
	ld   c, h                                        ; $5594: $4c
	ld   l, d                                        ; $5595: $6a
	halt                                             ; $5596: $76

Jump_0e3_5597:
	adc  c                                           ; $5597: $89
	sub  d                                           ; $5598: $92
	jp   hl                                          ; $5599: $e9


	halt                                             ; $559a: $76
	sbc  c                                           ; $559b: $99
	ccf                                              ; $559c: $3f
	ld   a, [hl-]                                    ; $559d: $3a
	sub  [hl]                                        ; $559e: $96
	pop  bc                                          ; $559f: $c1
	rst  $10                                         ; $55a0: $d7
	ld   l, h                                        ; $55a1: $6c
	dec  a                                           ; $55a2: $3d
	ld   e, b                                        ; $55a3: $58
	and  e                                           ; $55a4: $a3
	sbc  c                                           ; $55a5: $99
	pop  bc                                          ; $55a6: $c1
	add  $4f                                         ; $55a7: $c6 $4f
	dec  de                                          ; $55a9: $1b
	or   e                                           ; $55aa: $b3
	call nc, Call_0e3_737b                           ; $55ab: $d4 $7b $73
	sbc  [hl]                                        ; $55ae: $9e
	add  hl, de                                      ; $55af: $19
	push bc                                          ; $55b0: $c5
	ld   a, d                                        ; $55b1: $7a
	sub  e                                           ; $55b2: $93
	push de                                          ; $55b3: $d5
	or   [hl]                                        ; $55b4: $b6
	ld   c, a                                        ; $55b5: $4f
	ld   [hl], c                                     ; $55b6: $71
	xor  [hl]                                        ; $55b7: $ae
	add  hl, sp                                      ; $55b8: $39
	ld   h, a                                        ; $55b9: $67
	xor  l                                           ; $55ba: $ad
	ld   h, $f1                                      ; $55bb: $26 $f1

Jump_0e3_55bd:
	sbc  b                                           ; $55bd: $98
	ld   l, $77                                      ; $55be: $2e $77
	add  $e4                                         ; $55c0: $c6 $e4
	sub  l                                           ; $55c2: $95
	xor  c                                           ; $55c3: $a9
	inc  l                                           ; $55c4: $2c
	inc  a                                           ; $55c5: $3c
	or   d                                           ; $55c6: $b2
	ld   l, e                                        ; $55c7: $6b
	adc  h                                           ; $55c8: $8c
	daa                                              ; $55c9: $27
	ret  z                                           ; $55ca: $c8

	add  d                                           ; $55cb: $82
	rst  $10                                         ; $55cc: $d7
	and  e                                           ; $55cd: $a3
	ld   e, a                                        ; $55ce: $5f
	ld   a, [de]                                     ; $55cf: $1a
	add  [hl]                                        ; $55d0: $86
	rst  ToBoot                                         ; $55d1: $c7
	pop  hl                                          ; $55d2: $e1
	db   $ec                                         ; $55d3: $ec
	dec  e                                           ; $55d4: $1d
	ld   a, $65                                      ; $55d5: $3e $65
	jp   nz, Jump_0e3_77e6                           ; $55d7: $c2 $e6 $77

	ld   a, a                                        ; $55da: $7f
	scf                                              ; $55db: $37
	sbc  h                                           ; $55dc: $9c
	dec  [hl]                                        ; $55dd: $35
	ldh  a, [c]                                      ; $55de: $f2
	rst  $10                                         ; $55df: $d7
	rra                                              ; $55e0: $1f
	ld   h, a                                        ; $55e1: $67
	and  c                                           ; $55e2: $a1
	or   $68                                         ; $55e3: $f6 $68
	ld   a, e                                        ; $55e5: $7b
	ld   c, [hl]                                     ; $55e6: $4e
	ld   a, [de]                                     ; $55e7: $1a
	jp   $d5c4                                       ; $55e8: $c3 $c4 $d5


	ld   a, l                                        ; $55eb: $7d
	dec  sp                                          ; $55ec: $3b
	ld   [hl], a                                     ; $55ed: $77
	ld   a, c                                        ; $55ee: $79
	or   l                                           ; $55ef: $b5
	rst  ToBoot                                         ; $55f0: $c7
	ld   a, e                                        ; $55f1: $7b
	rra                                              ; $55f2: $1f
	ld   b, c                                        ; $55f3: $41
	db   $f4                                         ; $55f4: $f4
	sub  l                                           ; $55f5: $95
	pop  hl                                          ; $55f6: $e1
	xor  h                                           ; $55f7: $ac
	ld   e, $1d                                      ; $55f8: $1e $1d
	ld   [hl], h                                     ; $55fa: $74
	push de                                          ; $55fb: $d5
	ld   l, e                                        ; $55fc: $6b
	and  h                                           ; $55fd: $a4
	ld   a, [hl]                                     ; $55fe: $7e
	add  hl, de                                      ; $55ff: $19
	jp   nc, $87c5                                   ; $5600: $d2 $c5 $87

	ld   a, c                                        ; $5603: $79
	sub  l                                           ; $5604: $95
	sbc  l                                           ; $5605: $9d
	dec  e                                           ; $5606: $1d
	pop  bc                                          ; $5607: $c1
	cp   c                                           ; $5608: $b9
	ld   a, c                                        ; $5609: $79
	and  l                                           ; $560a: $a5
	or   l                                           ; $560b: $b5
	sbc  e                                           ; $560c: $9b
	dec  l                                           ; $560d: $2d
	ld   [hl], a                                     ; $560e: $77
	ld   a, c                                        ; $560f: $79
	sub  [hl]                                        ; $5610: $96
	and  l                                           ; $5611: $a5
	sbc  b                                           ; $5612: $98
	sbc  c                                           ; $5613: $99
	ld   h, a                                        ; $5614: $67
	or   l                                           ; $5615: $b5
	adc  h                                           ; $5616: $8c
	ld   e, d                                        ; $5617: $5a
	sub  l                                           ; $5618: $95
	ret  z                                           ; $5619: $c8

	ld   e, e                                        ; $561a: $5b
	adc  d                                           ; $561b: $8a
	dec  sp                                          ; $561c: $3b
	and  c                                           ; $561d: $a1
	rst  $10                                         ; $561e: $d7
	ld   l, c                                        ; $561f: $69
	add  a                                           ; $5620: $87
	and  [hl]                                        ; $5621: $a6
	adc  c                                           ; $5622: $89
	ld   a, b                                        ; $5623: $78
	adc  c                                           ; $5624: $89
	ld   a, d                                        ; $5625: $7a
	ld   l, c                                        ; $5626: $69
	add  [hl]                                        ; $5627: $86
	sbc  b                                           ; $5628: $98
	ld   a, d                                        ; $5629: $7a
	ld   e, b                                        ; $562a: $58
	or   l                                           ; $562b: $b5
	ld   a, e                                        ; $562c: $7b
	add  hl, sp                                      ; $562d: $39
	jp   nz, Jump_0e3_58aa                           ; $562e: $c2 $aa $58

	or   e                                           ; $5631: $b3
	or   [hl]                                        ; $5632: $b6
	ld   a, d                                        ; $5633: $7a
	ld   e, e                                        ; $5634: $5b
	ld   e, e                                        ; $5635: $5b
	ld   c, d                                        ; $5636: $4a
	ld   [hl], l                                     ; $5637: $75
	and  [hl]                                        ; $5638: $a6
	ld   h, a                                        ; $5639: $67
	and  h                                           ; $563a: $a4
	push bc                                          ; $563b: $c5
	and  [hl]                                        ; $563c: $a6
	ld   e, l                                        ; $563d: $5d
	ld   e, c                                        ; $563e: $59
	ld   a, e                                        ; $563f: $7b
	ld   e, d                                        ; $5640: $5a
	ld   e, d                                        ; $5641: $5a
	sub  [hl]                                        ; $5642: $96
	jp   Jump_0e3_59a9                               ; $5643: $c3 $a9 $59


	or   l                                           ; $5646: $b5
	sbc  c                                           ; $5647: $99
	ld   e, c                                        ; $5648: $59
	add  [hl]                                        ; $5649: $86
	and  [hl]                                        ; $564a: $a6
	adc  d                                           ; $564b: $8a
	ld   e, e                                        ; $564c: $5b
	ccf                                              ; $564d: $3f
	ld   d, [hl]                                     ; $564e: $56
	add  $95                                         ; $564f: $c6 $95
	or   [hl]                                        ; $5651: $b6
	sub  [hl]                                        ; $5652: $96
	push bc                                          ; $5653: $c5
	add  a                                           ; $5654: $87
	ld   a, c                                        ; $5655: $79
	ld   e, h                                        ; $5656: $5c
	ld   c, d                                        ; $5657: $4a
	ld   a, d                                        ; $5658: $7a
	ld   a, b                                        ; $5659: $78
	adc  b                                           ; $565a: $88
	sub  l                                           ; $565b: $95
	or   [hl]                                        ; $565c: $b6
	adc  d                                           ; $565d: $8a
	ld   d, a                                        ; $565e: $57
	or   [hl]                                        ; $565f: $b6
	ld   a, d                                        ; $5660: $7a
	ld   [hl], a                                     ; $5661: $77
	and  a                                           ; $5662: $a7
	adc  b                                           ; $5663: $88
	sub  [hl]                                        ; $5664: $96
	sbc  c                                           ; $5665: $99
	ld   a, c                                        ; $5666: $79
	ld   l, d                                        ; $5667: $6a
	ld   a, b                                        ; $5668: $78
	adc  c                                           ; $5669: $89
	add  a                                           ; $566a: $87
	adc  d                                           ; $566b: $8a
	ld   l, c                                        ; $566c: $69
	ld   a, b                                        ; $566d: $78
	sub  [hl]                                        ; $566e: $96
	or   l                                           ; $566f: $b5
	or   [hl]                                        ; $5670: $b6
	sbc  c                                           ; $5671: $99
	ld   l, d                                        ; $5672: $6a
	ld   l, c                                        ; $5673: $69
	ld   a, b                                        ; $5674: $78
	ld   a, d                                        ; $5675: $7a
	ld   a, b                                        ; $5676: $78
	sub  a                                           ; $5677: $97
	ld   a, d                                        ; $5678: $7a
	ld   [hl], a                                     ; $5679: $77
	sub  [hl]                                        ; $567a: $96
	sbc  c                                           ; $567b: $99
	ld   [hl], a                                     ; $567c: $77
	adc  b                                           ; $567d: $88
	add  [hl]                                        ; $567e: $86
	sub  a                                           ; $567f: $97
	adc  c                                           ; $5680: $89
	ld   a, d                                        ; $5681: $7a
	ld   e, c                                        ; $5682: $59
	ld   a, d                                        ; $5683: $7a
	ld   a, b                                        ; $5684: $78
	add  l                                           ; $5685: $85
	rst  ToBoot                                         ; $5686: $c7
	ld   l, c                                        ; $5687: $69
	add  a                                           ; $5688: $87
	sbc  b                                           ; $5689: $98
	add  a                                           ; $568a: $87
	and  [hl]                                        ; $568b: $a6
	sbc  b                                           ; $568c: $98
	ld   a, c                                        ; $568d: $79
	add  a                                           ; $568e: $87
	adc  c                                           ; $568f: $89
	ld   l, d                                        ; $5690: $6a
	ld   [hl], a                                     ; $5691: $77
	or   [hl]                                        ; $5692: $b6
	ld   l, e                                        ; $5693: $6b
	ld   h, a                                        ; $5694: $67
	and  [hl]                                        ; $5695: $a6
	adc  c                                           ; $5696: $89
	ld   [hl], a                                     ; $5697: $77
	sub  a                                           ; $5698: $97
	sbc  c                                           ; $5699: $99
	ld   a, b                                        ; $569a: $78
	adc  b                                           ; $569b: $88
	ld   a, d                                        ; $569c: $7a
	add  a                                           ; $569d: $87
	sub  a                                           ; $569e: $97
	sbc  b                                           ; $569f: $98
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	ld   a, b                                        ; $56a2: $78
	ld   a, b                                        ; $56a3: $78
	add  a                                           ; $56a4: $87
	sbc  b                                           ; $56a5: $98
	ld   a, c                                        ; $56a6: $79
	adc  b                                           ; $56a7: $88
	adc  c                                           ; $56a8: $89
	sbc  c                                           ; $56a9: $99
	ld   [hl], a                                     ; $56aa: $77
	sbc  b                                           ; $56ab: $98
	sbc  c                                           ; $56ac: $99
	adc  c                                           ; $56ad: $89
	sub  a                                           ; $56ae: $97
	sbc  c                                           ; $56af: $99
	ld   l, c                                        ; $56b0: $69
	add  a                                           ; $56b1: $87
	adc  b                                           ; $56b2: $88
	adc  b                                           ; $56b3: $88
	add  a                                           ; $56b4: $87
	sbc  b                                           ; $56b5: $98
	sbc  b                                           ; $56b6: $98
	adc  c                                           ; $56b7: $89
	adc  b                                           ; $56b8: $88
	adc  b                                           ; $56b9: $88
	adc  c                                           ; $56ba: $89
	add  a                                           ; $56bb: $87
	sub  a                                           ; $56bc: $97
	ld   a, c                                        ; $56bd: $79
	add  a                                           ; $56be: $87
	sbc  b                                           ; $56bf: $98
	adc  b                                           ; $56c0: $88
	sbc  c                                           ; $56c1: $99
	sbc  b                                           ; $56c2: $98
	sbc  b                                           ; $56c3: $98
	adc  c                                           ; $56c4: $89
	adc  b                                           ; $56c5: $88
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	add  a                                           ; $56c9: $87
	adc  b                                           ; $56ca: $88
	sbc  b                                           ; $56cb: $98
	adc  b                                           ; $56cc: $88
	ld   a, b                                        ; $56cd: $78
	sbc  b                                           ; $56ce: $98
	sbc  b                                           ; $56cf: $98
	adc  c                                           ; $56d0: $89
	sbc  b                                           ; $56d1: $98
	adc  b                                           ; $56d2: $88
	adc  c                                           ; $56d3: $89
	adc  b                                           ; $56d4: $88
	adc  b                                           ; $56d5: $88
	adc  c                                           ; $56d6: $89
	adc  b                                           ; $56d7: $88
	sbc  b                                           ; $56d8: $98
	adc  b                                           ; $56d9: $88
	adc  c                                           ; $56da: $89
	adc  b                                           ; $56db: $88
	sbc  b                                           ; $56dc: $98
	adc  c                                           ; $56dd: $89
	adc  b                                           ; $56de: $88
	sbc  b                                           ; $56df: $98
	sbc  b                                           ; $56e0: $98
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	sbc  c                                           ; $56e3: $99
	adc  c                                           ; $56e4: $89
	adc  c                                           ; $56e5: $89
	adc  b                                           ; $56e6: $88
	sbc  c                                           ; $56e7: $99
	adc  b                                           ; $56e8: $88
	adc  b                                           ; $56e9: $88
	sbc  c                                           ; $56ea: $99
	adc  b                                           ; $56eb: $88
	sbc  b                                           ; $56ec: $98
	adc  c                                           ; $56ed: $89
	adc  c                                           ; $56ee: $89
	adc  b                                           ; $56ef: $88
	sbc  c                                           ; $56f0: $99
	adc  b                                           ; $56f1: $88
	sbc  b                                           ; $56f2: $98
	adc  b                                           ; $56f3: $88
	adc  b                                           ; $56f4: $88
	adc  b                                           ; $56f5: $88
	adc  c                                           ; $56f6: $89
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	sbc  b                                           ; $56f9: $98
	adc  b                                           ; $56fa: $88
	adc  b                                           ; $56fb: $88
	adc  c                                           ; $56fc: $89
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88
	sbc  b                                           ; $56ff: $98
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	adc  b                                           ; $5702: $88
	sbc  b                                           ; $5703: $98
	adc  b                                           ; $5704: $88
	sbc  b                                           ; $5705: $98
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	sbc  b                                           ; $570c: $98
	adc  c                                           ; $570d: $89
	sbc  b                                           ; $570e: $98
	sbc  b                                           ; $570f: $98
	adc  c                                           ; $5710: $89
	ld   a, c                                        ; $5711: $79
	adc  b                                           ; $5712: $88
	sbc  b                                           ; $5713: $98
	adc  c                                           ; $5714: $89
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	adc  b                                           ; $5719: $88
	adc  b                                           ; $571a: $88
	adc  b                                           ; $571b: $88
	adc  b                                           ; $571c: $88
	adc  b                                           ; $571d: $88
	adc  b                                           ; $571e: $88
	adc  b                                           ; $571f: $88
	adc  b                                           ; $5720: $88
	adc  b                                           ; $5721: $88
	adc  b                                           ; $5722: $88
	adc  b                                           ; $5723: $88
	adc  b                                           ; $5724: $88
	adc  b                                           ; $5725: $88
	adc  b                                           ; $5726: $88
	adc  b                                           ; $5727: $88
	adc  b                                           ; $5728: $88
	adc  b                                           ; $5729: $88
	adc  b                                           ; $572a: $88
	adc  b                                           ; $572b: $88
	adc  b                                           ; $572c: $88
	adc  b                                           ; $572d: $88
	adc  b                                           ; $572e: $88
	adc  b                                           ; $572f: $88
	adc  b                                           ; $5730: $88
	adc  b                                           ; $5731: $88
	adc  b                                           ; $5732: $88
	adc  b                                           ; $5733: $88
	adc  b                                           ; $5734: $88
	adc  b                                           ; $5735: $88
	adc  b                                           ; $5736: $88
	adc  b                                           ; $5737: $88
	adc  b                                           ; $5738: $88
	adc  b                                           ; $5739: $88
	adc  b                                           ; $573a: $88
	adc  b                                           ; $573b: $88
	adc  b                                           ; $573c: $88
	adc  b                                           ; $573d: $88
	adc  b                                           ; $573e: $88
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	adc  b                                           ; $5746: $88
	adc  b                                           ; $5747: $88
	adc  b                                           ; $5748: $88
	adc  b                                           ; $5749: $88
	adc  b                                           ; $574a: $88
	adc  b                                           ; $574b: $88
	add  a                                           ; $574c: $87
	add  a                                           ; $574d: $87
	adc  b                                           ; $574e: $88
	adc  d                                           ; $574f: $8a
	sbc  d                                           ; $5750: $9a
	jp   c, $69a9                                    ; $5751: $da $a9 $69

	and  a                                           ; $5754: $a7
	adc  c                                           ; $5755: $89
	ld   h, a                                        ; $5756: $67
	adc  b                                           ; $5757: $88
	and  a                                           ; $5758: $a7
	halt                                             ; $5759: $76
	ld   a, d                                        ; $575a: $7a
	add  [hl]                                        ; $575b: $86
	sub  a                                           ; $575c: $97
	ld   h, a                                        ; $575d: $67
	ld   l, b                                        ; $575e: $68
	add  [hl]                                        ; $575f: $86
	ld   [hl], a                                     ; $5760: $77
	adc  b                                           ; $5761: $88
	add  a                                           ; $5762: $87
	ld   a, b                                        ; $5763: $78
	adc  b                                           ; $5764: $88
	adc  c                                           ; $5765: $89
	adc  b                                           ; $5766: $88
	add  [hl]                                        ; $5767: $86
	ld   [hl], a                                     ; $5768: $77
	add  a                                           ; $5769: $87
	ld   d, a                                        ; $576a: $57
	ld   e, e                                        ; $576b: $5b
	cp   b                                           ; $576c: $b8
	sbc  b                                           ; $576d: $98
	ld   d, [hl]                                     ; $576e: $56
	and  a                                           ; $576f: $a7
	ld   h, [hl]                                     ; $5770: $66
	ld   l, b                                        ; $5771: $68
	ld   h, a                                        ; $5772: $67
	ld   [hl], a                                     ; $5773: $77
	add  [hl]                                        ; $5774: $86
	adc  b                                           ; $5775: $88
	jp   z, $986a                                    ; $5776: $ca $6a $98

	ld   a, b                                        ; $5779: $78
	sbc  c                                           ; $577a: $99
	xor  e                                           ; $577b: $ab
	jp   z, $c34a                                    ; $577c: $ca $4a $c3

	sbc  c                                           ; $577f: $99
	ld   a, c                                        ; $5780: $79
	ld   e, d                                        ; $5781: $5a
	ld   [hl], a                                     ; $5782: $77
	ret                                              ; $5783: $c9


	sbc  c                                           ; $5784: $99
	cp   a                                           ; $5785: $bf
	ret  c                                           ; $5786: $d8

	adc  c                                           ; $5787: $89
	xor  d                                           ; $5788: $aa
	ld   l, b                                        ; $5789: $68
	ld   b, [hl]                                     ; $578a: $46
	sub  l                                           ; $578b: $95
	and  a                                           ; $578c: $a7
	ld   [hl], a                                     ; $578d: $77
	add  l                                           ; $578e: $85
	ld   a, $bb                                      ; $578f: $3e $bb
	cp   c                                           ; $5791: $b9
	cp   h                                           ; $5792: $bc
	sub  e                                           ; $5793: $93
	ld   d, l                                        ; $5794: $55
	ld   b, h                                        ; $5795: $44
	ld   de, $4645                                   ; $5796: $11 $45 $46
	ld   c, b                                        ; $5799: $48
	xor  c                                           ; $579a: $a9
	adc  d                                           ; $579b: $8a
	jp   z, Jump_0e3_76a5                            ; $579c: $ca $a5 $76

	ld   d, a                                        ; $579f: $57
	inc  d                                           ; $57a0: $14
	ld   b, l                                        ; $57a1: $45
	ld   b, d                                        ; $57a2: $42
	and  a                                           ; $57a3: $a7
	ld   l, b                                        ; $57a4: $68
	adc  h                                           ; $57a5: $8c
	xor  b                                           ; $57a6: $a8
	ld   a, b                                        ; $57a7: $78
	xor  b                                           ; $57a8: $a8
	ld   e, b                                        ; $57a9: $58
	sbc  b                                           ; $57aa: $98
	ld   [hl], h                                     ; $57ab: $74
	sbc  b                                           ; $57ac: $98
	ld   a, b                                        ; $57ad: $78
	ld   e, b                                        ; $57ae: $58
	adc  b                                           ; $57af: $88
	ld   d, l                                        ; $57b0: $55
	sbc  c                                           ; $57b1: $99
	halt                                             ; $57b2: $76
	ld   a, b                                        ; $57b3: $78
	sub  l                                           ; $57b4: $95
	ld   h, a                                        ; $57b5: $67
	adc  b                                           ; $57b6: $88
	ld   b, e                                        ; $57b7: $43
	ld   e, b                                        ; $57b8: $58
	ld   h, d                                        ; $57b9: $62
	ld   b, [hl]                                     ; $57ba: $46
	and  l                                           ; $57bb: $a5
	ld   [de], a                                     ; $57bc: $12
	adc  d                                           ; $57bd: $8a
	ld   de, $815b                                   ; $57be: $11 $5b $81
	dec  hl                                          ; $57c1: $2b
	or   e                                           ; $57c2: $b3
	add  hl, hl                                      ; $57c3: $29
	sbc  e                                           ; $57c4: $9b
	ret  z                                           ; $57c5: $c8

	ld   l, h                                        ; $57c6: $6c
	rst  $38                                         ; $57c7: $ff
	adc  e                                           ; $57c8: $8b
	rst  $38                                         ; $57c9: $ff
	sbc  h                                           ; $57ca: $9c
	rst  $38                                         ; $57cb: $ff
	ld   a, [$febc]                                  ; $57cc: $fa $bc $fe
	ld   c, b                                        ; $57cf: $48
	db   $fd                                         ; $57d0: $fd
	ld   [hl], l                                     ; $57d1: $75
	ld   a, c                                        ; $57d2: $79
	add  d                                           ; $57d3: $82
	dec  d                                           ; $57d4: $15
	ld   d, c                                        ; $57d5: $51
	ld   de, $1111                                   ; $57d6: $11 $11 $11
	ld   de, $1111                                   ; $57d9: $11 $11 $11
	inc  l                                           ; $57dc: $2c
	ld   h, c                                        ; $57dd: $61
	xor  a                                           ; $57de: $af
	db   $fc                                         ; $57df: $fc
	rst  $28                                         ; $57e0: $ef
	rst  $38                                         ; $57e1: $ff
	rst  $38                                         ; $57e2: $ff
	rst  $38                                         ; $57e3: $ff
	db   $fc                                         ; $57e4: $fc
	rst  $38                                         ; $57e5: $ff
	or   $6e                                         ; $57e6: $f6 $6e
	db   $fd                                         ; $57e8: $fd
	sbc  b                                           ; $57e9: $98
	rst  $38                                         ; $57ea: $ff
	reti                                             ; $57eb: $d9


	xor  a                                           ; $57ec: $af
	jp   nz, $2111                                   ; $57ed: $c2 $11 $21

	ld   de, $1111                                   ; $57f0: $11 $11 $11
	ld   de, $1111                                   ; $57f3: $11 $11 $11
	sbc  h                                           ; $57f6: $9c
	dec  hl                                          ; $57f7: $2b
	rst  $38                                         ; $57f8: $ff
	cp   a                                           ; $57f9: $bf
	rst  $38                                         ; $57fa: $ff
	rst  $38                                         ; $57fb: $ff
	rst  $38                                         ; $57fc: $ff
	rst  $38                                         ; $57fd: $ff
	db   $db                                         ; $57fe: $db
	rst  $38                                         ; $57ff: $ff
	xor  d                                           ; $5800: $aa
	rst  JumpTable                                         ; $5801: $df
	call $fffe                                       ; $5802: $cd $fe $ff
	rst  JumpTable                                         ; $5805: $df
	rst  ToBoot                                         ; $5806: $c7
	ld   d, l                                        ; $5807: $55
	ld   sp, $1111                                   ; $5808: $31 $11 $11
	ld   de, $1111                                   ; $580b: $11 $11 $11
	ld   de, $2911                                   ; $580e: $11 $11 $29
	scf                                              ; $5811: $37
	cp   a                                           ; $5812: $bf
	rst  $38                                         ; $5813: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5814: $cf
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	rst  JumpTable                                         ; $5819: $df
	ei                                               ; $581a: $fb
	ld   a, d                                        ; $581b: $7a
	rst  $28                                         ; $581c: $ef
	jp   z, $cdff                                    ; $581d: $ca $ff $cd

	rst  $28                                         ; $5820: $ef
	push bc                                          ; $5821: $c5
	ld   d, [hl]                                     ; $5822: $56
	ld   sp, $1111                                   ; $5823: $31 $11 $11
	ld   de, $1111                                   ; $5826: $11 $11 $11
	ld   de, $1111                                   ; $5829: $11 $11 $11
	xor  h                                           ; $582c: $ac
	ld   a, a                                        ; $582d: $7f
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	rst  $38                                         ; $5833: $ff
	db   $fc                                         ; $5834: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5835: $cf
	ret                                              ; $5836: $c9


	xor  $db                                         ; $5837: $ee $db
	rst  JumpTable                                         ; $5839: $df
	xor  $db                                         ; $583a: $ee $db
	jp   z, $1162                                    ; $583c: $ca $62 $11

	ld   de, $1111                                   ; $583f: $11 $11 $11
	ld   de, $1111                                   ; $5842: $11 $11 $11
	dec  d                                           ; $5845: $15
	ld   de, $13cf                                   ; $5846: $11 $cf $13
	rst  $38                                         ; $5849: $ff
	sbc  a                                           ; $584a: $9f
	rst  $38                                         ; $584b: $ff
	rst  $38                                         ; $584c: $ff
	rst  $38                                         ; $584d: $ff
	rst  $38                                         ; $584e: $ff
	cp   $fc                                         ; $584f: $fe $fc
	cp   d                                           ; $5851: $ba
	call c, $9fdb                                    ; $5852: $dc $db $9f
	db   $fd                                         ; $5855: $fd
	call Call_0e3_46fa                               ; $5856: $cd $fa $46
	ld   sp, $1111                                   ; $5859: $31 $11 $11
	ld   de, $1111                                   ; $585c: $11 $11 $11
	ld   de, $1111                                   ; $585f: $11 $11 $11
	ld   a, [de]                                     ; $5862: $1a
	and  a                                           ; $5863: $a7
	rst  $28                                         ; $5864: $ef
	rst  $38                                         ; $5865: $ff
	rst  $38                                         ; $5866: $ff
	rst  $38                                         ; $5867: $ff
	rst  $38                                         ; $5868: $ff
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	sbc  [hl]                                        ; $586b: $9e
	xor  e                                           ; $586c: $ab
	add  sp, -$72                                    ; $586d: $e8 $8e
	ei                                               ; $586f: $fb
	sbc  a                                           ; $5870: $9f
	db   $fd                                         ; $5871: $fd
	sbc  e                                           ; $5872: $9b
	reti                                             ; $5873: $d9


	ld   de, $1151                                   ; $5874: $11 $51 $11
	ld   de, $1111                                   ; $5877: $11 $11 $11
	ld   de, $1111                                   ; $587a: $11 $11 $11
	ld   hl, $fb15                                   ; $587d: $21 $15 $fb
	adc  a                                           ; $5880: $8f
	rst  $38                                         ; $5881: $ff
	rst  $38                                         ; $5882: $ff
	rst  $38                                         ; $5883: $ff
	rst  $38                                         ; $5884: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5885: $cf
	rst  $38                                         ; $5886: $ff
	ld   a, b                                        ; $5887: $78
	db   $fd                                         ; $5888: $fd
	cp   d                                           ; $5889: $ba
	cp   a                                           ; $588a: $bf
	db   $fc                                         ; $588b: $fc
	xor  l                                           ; $588c: $ad
	ei                                               ; $588d: $fb
	ld   l, d                                        ; $588e: $6a
	and  d                                           ; $588f: $a2
	ld   [de], a                                     ; $5890: $12
	ld   de, $1111                                   ; $5891: $11 $11 $11
	ld   de, $1111                                   ; $5894: $11 $11 $11
	ld   de, $1211                                   ; $5897: $11 $11 $12
	rra                                              ; $589a: $1f
	push hl                                          ; $589b: $e5
	rst  $38                                         ; $589c: $ff
	rst  $38                                         ; $589d: $ff
	rst  $38                                         ; $589e: $ff
	rst  $38                                         ; $589f: $ff
	rst  $28                                         ; $58a0: $ef
	rst  $38                                         ; $58a1: $ff
	db   $e4                                         ; $58a2: $e4
	rst  JumpTable                                         ; $58a3: $df
	ret  c                                           ; $58a4: $d8

	ld   l, a                                        ; $58a5: $6f
	db   $fc                                         ; $58a6: $fc
	db   $db                                         ; $58a7: $db
	rst  $38                                         ; $58a8: $ff
	or   a                                           ; $58a9: $b7

Jump_0e3_58aa:
	adc  e                                           ; $58aa: $8b
	ld   [hl], d                                     ; $58ab: $72
	ld   [de], a                                     ; $58ac: $12
	ld   de, $1111                                   ; $58ad: $11 $11 $11
	ld   de, $1111                                   ; $58b0: $11 $11 $11
	ld   de, $a811                                   ; $58b3: $11 $11 $a8
	rla                                              ; $58b6: $17
	rst  $38                                         ; $58b7: $ff
	db   $fd                                         ; $58b8: $fd
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	rst  $38                                         ; $58bb: $ff
	rst  $38                                         ; $58bc: $ff
	call $97ef                                       ; $58bd: $cd $ef $97
	db   $fd                                         ; $58c0: $fd
	cp   e                                           ; $58c1: $bb
	cp   a                                           ; $58c2: $bf
	cp   $dc                                         ; $58c3: $fe $dc
	db   $ec                                         ; $58c5: $ec
	halt                                             ; $58c6: $76
	ld   b, e                                        ; $58c7: $43
	ld   de, $1111                                   ; $58c8: $11 $11 $11
	ld   de, $1111                                   ; $58cb: $11 $11 $11
	ld   de, $1111                                   ; $58ce: $11 $11 $11
	ld   d, $fe                                      ; $58d1: $16 $fe
	ld   a, a                                        ; $58d3: $7f
	rst  $38                                         ; $58d4: $ff
	rst  $38                                         ; $58d5: $ff
	rst  $38                                         ; $58d6: $ff
	rst  $38                                         ; $58d7: $ff
	rst  $38                                         ; $58d8: $ff
	ld   sp, hl                                      ; $58d9: $f9
	call c, $aded                                    ; $58da: $dc $ed $ad
	cp   e                                           ; $58dd: $bb
	db   $dd                                         ; $58de: $dd
	rst  $28                                         ; $58df: $ef
	db   $fd                                         ; $58e0: $fd
	cp   d                                           ; $58e1: $ba
	and  a                                           ; $58e2: $a7
	ld   b, d                                        ; $58e3: $42
	ld   de, $1111                                   ; $58e4: $11 $11 $11
	ld   de, $1111                                   ; $58e7: $11 $11 $11
	ld   de, $1131                                   ; $58ea: $11 $31 $11
	sbc  e                                           ; $58ed: $9b
	sbc  e                                           ; $58ee: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ef: $cf
	rst  $38                                         ; $58f0: $ff
	rst  $38                                         ; $58f1: $ff
	rst  $38                                         ; $58f2: $ff
	rst  $38                                         ; $58f3: $ff
	rst  $38                                         ; $58f4: $ff
	db   $fd                                         ; $58f5: $fd
	sbc  c                                           ; $58f6: $99
	db   $fc                                         ; $58f7: $fc
	adc  e                                           ; $58f8: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f9: $cf
	jp   z, $fced                                    ; $58fa: $ca $ed $fc

	xor  d                                           ; $58fd: $aa
	sbc  c                                           ; $58fe: $99
	ld   b, c                                        ; $58ff: $41
	ld   [de], a                                     ; $5900: $12
	ld   de, $1111                                   ; $5901: $11 $11 $11
	ld   de, $1111                                   ; $5904: $11 $11 $11
	ld   de, $1722                                   ; $5907: $11 $22 $17
	rst  $38                                         ; $590a: $ff
	cp   d                                           ; $590b: $ba
	rst  $38                                         ; $590c: $ff
	rst  $38                                         ; $590d: $ff
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	rst  $28                                         ; $5910: $ef
	rst  $38                                         ; $5911: $ff
	ld   [hl], a                                     ; $5912: $77
	db   $dd                                         ; $5913: $dd
	or   [hl]                                        ; $5914: $b6
	adc  a                                           ; $5915: $8f
	db   $eb                                         ; $5916: $eb
	cp   h                                           ; $5917: $bc
	rst  $38                                         ; $5918: $ff
	xor  d                                           ; $5919: $aa
	xor  c                                           ; $591a: $a9
	ld   d, c                                        ; $591b: $51
	ld   [de], a                                     ; $591c: $12
	ld   de, $1111                                   ; $591d: $11 $11 $11
	ld   de, $1111                                   ; $5920: $11 $11 $11
	ld   de, $6412                                   ; $5923: $11 $12 $64
	ld   a, a                                        ; $5926: $7f
	db   $db                                         ; $5927: $db
	rst  $28                                         ; $5928: $ef
	rst  $38                                         ; $5929: $ff
	rst  $38                                         ; $592a: $ff
	rst  $38                                         ; $592b: $ff
	rst  $38                                         ; $592c: $ff
	db   $fd                                         ; $592d: $fd
	db   $ec                                         ; $592e: $ec
	xor  c                                           ; $592f: $a9
	sbc  d                                           ; $5930: $9a
	ret                                              ; $5931: $c9


	sbc  d                                           ; $5932: $9a
	cp   h                                           ; $5933: $bc
	sbc  c                                           ; $5934: $99
	xor  b                                           ; $5935: $a8
	sub  [hl]                                        ; $5936: $96
	ld   d, [hl]                                     ; $5937: $56
	ld   b, e                                        ; $5938: $43
	ld   de, $1231                                   ; $5939: $11 $31 $12
	ld   [de], a                                     ; $593c: $12
	ld   de, $3231                                   ; $593d: $11 $31 $32
	inc  [hl]                                        ; $5940: $34
	dec  h                                           ; $5941: $25
	ld   h, l                                        ; $5942: $65
	ld   a, b                                        ; $5943: $78
	ld   a, c                                        ; $5944: $79
	adc  d                                           ; $5945: $8a
	cp   e                                           ; $5946: $bb
	sbc  $df                                         ; $5947: $de $df
	xor  $fb                                         ; $5949: $ee $fb
	db   $fc                                         ; $594b: $fc
	cp   [hl]                                        ; $594c: $be
	sbc  $ba                                         ; $594d: $de $ba
	res  7, h                                        ; $594f: $cb $bc
	sbc  d                                           ; $5951: $9a
	jp   z, $bcb9                                    ; $5952: $ca $b9 $bc

	xor  c                                           ; $5955: $a9
	sbc  c                                           ; $5956: $99
	sbc  b                                           ; $5957: $98
	adc  b                                           ; $5958: $88
	ld   [hl], a                                     ; $5959: $77
	ld   d, a                                        ; $595a: $57
	ld   h, a                                        ; $595b: $67
	ld   h, [hl]                                     ; $595c: $66
	ld   d, [hl]                                     ; $595d: $56
	ld   h, l                                        ; $595e: $65
	ld   [hl], l                                     ; $595f: $75
	add  [hl]                                        ; $5960: $86
	ld   d, a                                        ; $5961: $57
	add  [hl]                                        ; $5962: $86
	add  [hl]                                        ; $5963: $86
	ld   l, d                                        ; $5964: $6a
	ld   l, c                                        ; $5965: $69
	ld   [hl], a                                     ; $5966: $77
	sbc  c                                           ; $5967: $99
	adc  c                                           ; $5968: $89
	xor  d                                           ; $5969: $aa
	ret                                              ; $596a: $c9


	xor  e                                           ; $596b: $ab
	xor  e                                           ; $596c: $ab
	cp   d                                           ; $596d: $ba
	res  5, e                                        ; $596e: $cb $ab
	res  5, d                                        ; $5970: $cb $aa
	sbc  d                                           ; $5972: $9a
	sbc  c                                           ; $5973: $99
	adc  c                                           ; $5974: $89
	adc  b                                           ; $5975: $88
	sub  l                                           ; $5976: $95
	ld   a, b                                        ; $5977: $78
	ld   [hl], a                                     ; $5978: $77
	ld   [hl], l                                     ; $5979: $75
	ld   h, a                                        ; $597a: $67
	ld   a, b                                        ; $597b: $78
	ld   e, b                                        ; $597c: $58
	ld   d, l                                        ; $597d: $55
	ld   h, h                                        ; $597e: $64
	add  l                                           ; $597f: $85
	ld   h, h                                        ; $5980: $64
	ld   [hl], l                                     ; $5981: $75
	ld   d, a                                        ; $5982: $57
	ld   b, a                                        ; $5983: $47
	ld   h, [hl]                                     ; $5984: $66
	ld   d, [hl]                                     ; $5985: $56
	add  [hl]                                        ; $5986: $86
	ld   [hl], a                                     ; $5987: $77
	ld   c, b                                        ; $5988: $48
	ld   [hl], a                                     ; $5989: $77
	add  [hl]                                        ; $598a: $86
	sbc  c                                           ; $598b: $99
	and  a                                           ; $598c: $a7
	cp   e                                           ; $598d: $bb
	sbc  e                                           ; $598e: $9b
	sbc  d                                           ; $598f: $9a
	cp   d                                           ; $5990: $ba
	xor  e                                           ; $5991: $ab
	xor  l                                           ; $5992: $ad
	sbc  b                                           ; $5993: $98
	cp   c                                           ; $5994: $b9
	ret  c                                           ; $5995: $d8

	adc  c                                           ; $5996: $89
	ld   a, e                                        ; $5997: $7b
	add  a                                           ; $5998: $87
	ld   l, c                                        ; $5999: $69
	halt                                             ; $599a: $76
	ld   h, [hl]                                     ; $599b: $66
	or   l                                           ; $599c: $b5
	sub  h                                           ; $599d: $94
	ld   [hl], a                                     ; $599e: $77
	jr   c, jr_0e3_59b7                              ; $599f: $38 $16

	add  l                                           ; $59a1: $85
	ld   b, e                                        ; $59a2: $43
	ld   d, e                                        ; $59a3: $53
	ld   sp, $4332                                   ; $59a4: $31 $32 $43
	dec  h                                           ; $59a7: $25
	ld   l, c                                        ; $59a8: $69

Jump_0e3_59a9:
	ld   [hl], a                                     ; $59a9: $77
	adc  h                                           ; $59aa: $8c
	cp   e                                           ; $59ab: $bb
	db   $ed                                         ; $59ac: $ed
	db   $ec                                         ; $59ad: $ec
	rst  $38                                         ; $59ae: $ff
	call $cadd                                       ; $59af: $cd $dd $ca
	db   $db                                         ; $59b2: $db
	cp   h                                           ; $59b3: $bc
	xor  c                                           ; $59b4: $a9
	cp   d                                           ; $59b5: $ba
	and  a                                           ; $59b6: $a7

jr_0e3_59b7:
	ld   l, c                                        ; $59b7: $69
	and  [hl]                                        ; $59b8: $a6
	dec  h                                           ; $59b9: $25
	ld   d, [hl]                                     ; $59ba: $56
	ld   b, c                                        ; $59bb: $41
	ld   b, h                                        ; $59bc: $44
	ld   b, d                                        ; $59bd: $42
	ld   de, $1111                                   ; $59be: $11 $11 $11
	ld   de, $1411                                   ; $59c1: $11 $11 $14
	ld   d, h                                        ; $59c4: $54
	ld   a, b                                        ; $59c5: $78
	cp   h                                           ; $59c6: $bc
	rst  JumpTable                                         ; $59c7: $df
	rst  $38                                         ; $59c8: $ff
	rst  $38                                         ; $59c9: $ff
	rst  $38                                         ; $59ca: $ff
	rst  $38                                         ; $59cb: $ff
	rst  $38                                         ; $59cc: $ff
	db   $ec                                         ; $59cd: $ec
	xor  $ca                                         ; $59ce: $ee $ca
	xor  l                                           ; $59d0: $ad
	cp   c                                           ; $59d1: $b9
	and  a                                           ; $59d2: $a7
	call z, $8897                                    ; $59d3: $cc $97 $88
	ld   d, l                                        ; $59d6: $55
	inc  sp                                          ; $59d7: $33
	ld   hl, $1111                                   ; $59d8: $21 $11 $11
	ld   de, $1111                                   ; $59db: $11 $11 $11
	ld   de, $4226                                   ; $59de: $11 $26 $42
	cp   a                                           ; $59e1: $bf
	rst  $28                                         ; $59e2: $ef
	rst  $38                                         ; $59e3: $ff
	rst  $38                                         ; $59e4: $ff
	rst  $38                                         ; $59e5: $ff
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	db   $eb                                         ; $59e9: $eb
	sbc  c                                           ; $59ea: $99
	cp   d                                           ; $59eb: $ba
	sbc  c                                           ; $59ec: $99
	xor  h                                           ; $59ed: $ac
	db   $db                                         ; $59ee: $db
	cp   e                                           ; $59ef: $bb
	xor  c                                           ; $59f0: $a9
	halt                                             ; $59f1: $76
	ld   d, e                                        ; $59f2: $53
	ld   de, $1111                                   ; $59f3: $11 $11 $11
	ld   de, $1111                                   ; $59f6: $11 $11 $11
	ld   de, $ab26                                   ; $59f9: $11 $26 $ab
	rst  $28                                         ; $59fc: $ef
	rst  $38                                         ; $59fd: $ff
	rst  $38                                         ; $59fe: $ff
	rst  $38                                         ; $59ff: $ff
	rst  $38                                         ; $5a00: $ff
	rst  $38                                         ; $5a01: $ff
	rst  $38                                         ; $5a02: $ff
	rst  $28                                         ; $5a03: $ef
	cp   b                                           ; $5a04: $b8
	sbc  e                                           ; $5a05: $9b
	cp   d                                           ; $5a06: $ba
	sbc  h                                           ; $5a07: $9c
	xor  $fe                                         ; $5a08: $ee $fe
	call z, Call_0e3_74ba                            ; $5a0a: $cc $ba $74
	ld   hl, $1111                                   ; $5a0d: $21 $11 $11
	ld   de, $1111                                   ; $5a10: $11 $11 $11
	ld   de, $9c13                                   ; $5a13: $11 $13 $9c
	rst  JumpTable                                         ; $5a16: $df
	rst  $38                                         ; $5a17: $ff
	rst  $38                                         ; $5a18: $ff
	rst  $38                                         ; $5a19: $ff
	rst  $38                                         ; $5a1a: $ff
	rst  $38                                         ; $5a1b: $ff
	rst  $38                                         ; $5a1c: $ff
	db   $fc                                         ; $5a1d: $fc
	add  [hl]                                        ; $5a1e: $86
	ld   a, c                                        ; $5a1f: $79
	add  a                                           ; $5a20: $87
	ld   a, e                                        ; $5a21: $7b
	sbc  $ef                                         ; $5a22: $de $ef
	rst  $38                                         ; $5a24: $ff
	jp   c, $53a7                                    ; $5a25: $da $a7 $53

	ld   de, $1111                                   ; $5a28: $11 $11 $11
	ld   de, $1111                                   ; $5a2b: $11 $11 $11
	ld   de, $ff38                                   ; $5a2e: $11 $38 $ff
	rst  $38                                         ; $5a31: $ff
	rst  $38                                         ; $5a32: $ff
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	rst  $38                                         ; $5a35: $ff
	rst  $38                                         ; $5a36: $ff
	db   $ec                                         ; $5a37: $ec
	add  l                                           ; $5a38: $85
	ld   b, l                                        ; $5a39: $45
	ld   h, [hl]                                     ; $5a3a: $66
	ld   h, a                                        ; $5a3b: $67
	cp   [hl]                                        ; $5a3c: $be
	rst  $38                                         ; $5a3d: $ff
	rst  $38                                         ; $5a3e: $ff
	cp   $c9                                         ; $5a3f: $fe $c9
	ld   h, e                                        ; $5a41: $63
	ld   de, $1111                                   ; $5a42: $11 $11 $11
	ld   de, $1111                                   ; $5a45: $11 $11 $11
	ld   de, $bf47                                   ; $5a48: $11 $47 $bf
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	rst  $38                                         ; $5a4d: $ff
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	rst  $38                                         ; $5a50: $ff
	ld   a, [$3485]                                  ; $5a51: $fa $85 $34
	ld   b, h                                        ; $5a54: $44
	ld   b, [hl]                                     ; $5a55: $46
	xor  h                                           ; $5a56: $ac
	xor  $ff                                         ; $5a57: $ee $ff
	rst  $38                                         ; $5a59: $ff
	jp   c, $2186                                    ; $5a5a: $da $86 $21

	ld   de, $1111                                   ; $5a5d: $11 $11 $11
	ld   de, $1111                                   ; $5a60: $11 $11 $11
	rla                                              ; $5a63: $17
	rst  $28                                         ; $5a64: $ef
	rst  $38                                         ; $5a65: $ff
	rst  $38                                         ; $5a66: $ff
	rst  $38                                         ; $5a67: $ff
	rst  $38                                         ; $5a68: $ff
	rst  $38                                         ; $5a69: $ff
	rst  $38                                         ; $5a6a: $ff
	db   $db                                         ; $5a6b: $db
	ld   [hl], l                                     ; $5a6c: $75
	ld   b, d                                        ; $5a6d: $42
	inc  sp                                          ; $5a6e: $33
	ld   b, [hl]                                     ; $5a6f: $46
	adc  e                                           ; $5a70: $8b
	rst  JumpTable                                         ; $5a71: $df
	rst  $38                                         ; $5a72: $ff
	rst  $38                                         ; $5a73: $ff
	db   $eb                                         ; $5a74: $eb
	sub  [hl]                                        ; $5a75: $96
	ld   sp, $1111                                   ; $5a76: $31 $11 $11
	ld   de, $1111                                   ; $5a79: $11 $11 $11
	ld   de, $af14                                   ; $5a7c: $11 $14 $af
	rst  $38                                         ; $5a7f: $ff
	rst  $38                                         ; $5a80: $ff
	rst  $38                                         ; $5a81: $ff
	rst  $38                                         ; $5a82: $ff
	rst  $38                                         ; $5a83: $ff
	rst  $38                                         ; $5a84: $ff
	db   $fc                                         ; $5a85: $fc
	add  [hl]                                        ; $5a86: $86
	ld   b, d                                        ; $5a87: $42
	ld   [hl+], a                                    ; $5a88: $22
	inc  h                                           ; $5a89: $24
	ld   l, b                                        ; $5a8a: $68
	cp   l                                           ; $5a8b: $bd
	rst  $28                                         ; $5a8c: $ef
	rst  $38                                         ; $5a8d: $ff
	cp   $b8                                         ; $5a8e: $fe $b8
	ld   h, d                                        ; $5a90: $62
	ld   de, $1111                                   ; $5a91: $11 $11 $11
	ld   de, $1111                                   ; $5a94: $11 $11 $11
	ld   de, $ef59                                   ; $5a97: $11 $59 $ef
	rst  $38                                         ; $5a9a: $ff
	rst  $38                                         ; $5a9b: $ff
	rst  $38                                         ; $5a9c: $ff
	rst  $38                                         ; $5a9d: $ff
	rst  $38                                         ; $5a9e: $ff
	rst  $38                                         ; $5a9f: $ff
	cp   c                                           ; $5aa0: $b9
	ld   h, h                                        ; $5aa1: $64
	ld   hl, $5712                                   ; $5aa2: $21 $12 $57
	adc  c                                           ; $5aa5: $89
	xor  h                                           ; $5aa6: $ac
	rst  $38                                         ; $5aa7: $ff
	rst  $38                                         ; $5aa8: $ff
	jp   c, $2175                                    ; $5aa9: $da $75 $21

	ld   de, $1111                                   ; $5aac: $11 $11 $11
	ld   de, $1111                                   ; $5aaf: $11 $11 $11
	ld   d, $bf                                      ; $5ab2: $16 $bf
	rst  $38                                         ; $5ab4: $ff
	rst  $38                                         ; $5ab5: $ff
	rst  $38                                         ; $5ab6: $ff
	rst  $38                                         ; $5ab7: $ff
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	db   $fc                                         ; $5aba: $fc
	ld   [hl], l                                     ; $5abb: $75
	inc  sp                                          ; $5abc: $33
	ld   hl, $5813                                   ; $5abd: $21 $13 $58
	cp   l                                           ; $5ac0: $bd
	rst  $28                                         ; $5ac1: $ef
	rst  $38                                         ; $5ac2: $ff
	cp   $ca                                         ; $5ac3: $fe $ca
	ld   h, d                                        ; $5ac5: $62
	ld   de, $1111                                   ; $5ac6: $11 $11 $11
	ld   de, $1111                                   ; $5ac9: $11 $11 $11
	ld   de, $df38                                   ; $5acc: $11 $38 $df
	rst  $38                                         ; $5acf: $ff
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	rst  $38                                         ; $5ad2: $ff
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	jp   c, $2164                                    ; $5ad5: $da $64 $21

	ld   de, $7924                                   ; $5ad8: $11 $24 $79
	cp   e                                           ; $5adb: $bb
	rst  JumpTable                                         ; $5adc: $df
	rst  $38                                         ; $5add: $ff
	db   $fd                                         ; $5ade: $fd
	xor  b                                           ; $5adf: $a8
	ld   d, d                                        ; $5ae0: $52
	ld   de, $1111                                   ; $5ae1: $11 $11 $11
	ld   de, $1111                                   ; $5ae4: $11 $11 $11
	ld   de, $ef6a                                   ; $5ae7: $11 $6a $ef
	rst  $38                                         ; $5aea: $ff
	rst  $38                                         ; $5aeb: $ff
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	jp   c, $3364                                    ; $5af0: $da $64 $33

	inc  sp                                          ; $5af3: $33
	ld   b, l                                        ; $5af4: $45
	ld   a, d                                        ; $5af5: $7a
	cp   l                                           ; $5af6: $bd
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	db   $fd                                         ; $5af9: $fd
	and  a                                           ; $5afa: $a7
	ld   d, c                                        ; $5afb: $51
	ld   de, $1111                                   ; $5afc: $11 $11 $11
	ld   de, $1111                                   ; $5aff: $11 $11 $11
	ld   de, $cf48                                   ; $5b02: $11 $48 $cf
	rst  $38                                         ; $5b05: $ff
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	rst  $38                                         ; $5b08: $ff
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	db   $eb                                         ; $5b0b: $eb
	ld   [hl], l                                     ; $5b0c: $75
	ld   b, e                                        ; $5b0d: $43
	inc  sp                                          ; $5b0e: $33
	ld   b, l                                        ; $5b0f: $45
	ld   l, c                                        ; $5b10: $69
	cp   l                                           ; $5b11: $bd
	rst  $38                                         ; $5b12: $ff
	rst  $38                                         ; $5b13: $ff
	db   $fd                                         ; $5b14: $fd
	ret                                              ; $5b15: $c9


	ld   h, e                                        ; $5b16: $63
	ld   de, $1111                                   ; $5b17: $11 $11 $11
	ld   de, $1111                                   ; $5b1a: $11 $11 $11
	ld   de, $9c15                                   ; $5b1d: $11 $15 $9c
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	rst  $38                                         ; $5b22: $ff
	rst  $38                                         ; $5b23: $ff
	rst  $38                                         ; $5b24: $ff
	rst  $38                                         ; $5b25: $ff
	cp   $b7                                         ; $5b26: $fe $b7
	ld   b, e                                        ; $5b28: $43
	inc  hl                                          ; $5b29: $23
	ld   b, l                                        ; $5b2a: $45
	ld   d, [hl]                                     ; $5b2b: $56
	adc  d                                           ; $5b2c: $8a
	sbc  $ff                                         ; $5b2d: $de $ff
	rst  $38                                         ; $5b2f: $ff
	db   $db                                         ; $5b30: $db
	sub  a                                           ; $5b31: $97
	ld   b, c                                        ; $5b32: $41
	ld   de, $1111                                   ; $5b33: $11 $11 $11
	ld   de, $1111                                   ; $5b36: $11 $11 $11
	ld   de, $df39                                   ; $5b39: $11 $39 $df
	rst  $38                                         ; $5b3c: $ff
	rst  $38                                         ; $5b3d: $ff
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	rst  $38                                         ; $5b40: $ff
	rst  $38                                         ; $5b41: $ff
	db   $fc                                         ; $5b42: $fc
	sub  [hl]                                        ; $5b43: $96
	ld   b, e                                        ; $5b44: $43
	inc  sp                                          ; $5b45: $33
	ld   d, [hl]                                     ; $5b46: $56
	adc  d                                           ; $5b47: $8a
	call z, $ffee                                    ; $5b48: $cc $ee $ff
	rst  $38                                         ; $5b4b: $ff
	db   $db                                         ; $5b4c: $db
	ld   [hl], h                                     ; $5b4d: $74
	ld   de, $1111                                   ; $5b4e: $11 $11 $11
	ld   de, $1111                                   ; $5b51: $11 $11 $11
	ld   de, $3711                                   ; $5b54: $11 $11 $37
	cp   [hl]                                        ; $5b57: $be
	rst  $38                                         ; $5b58: $ff
	rst  $38                                         ; $5b59: $ff
	rst  $38                                         ; $5b5a: $ff
	rst  $38                                         ; $5b5b: $ff
	rst  $38                                         ; $5b5c: $ff
	rst  $38                                         ; $5b5d: $ff
	cp   $b7                                         ; $5b5e: $fe $b7
	ld   h, l                                        ; $5b60: $65
	ld   d, [hl]                                     ; $5b61: $56
	ld   a, b                                        ; $5b62: $78
	sbc  d                                           ; $5b63: $9a
	cp   l                                           ; $5b64: $bd
	rst  JumpTable                                         ; $5b65: $df
	rst  $38                                         ; $5b66: $ff
	rst  $38                                         ; $5b67: $ff
	jp   z, $2185                                    ; $5b68: $ca $85 $21

	ld   de, $1111                                   ; $5b6b: $11 $11 $11
	ld   de, $1111                                   ; $5b6e: $11 $11 $11
	ld   de, $6912                                   ; $5b71: $11 $12 $69
	cp   a                                           ; $5b74: $bf
	rst  $38                                         ; $5b75: $ff
	rst  $38                                         ; $5b76: $ff
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	rst  $38                                         ; $5b79: $ff
	rst  $38                                         ; $5b7a: $ff
	db   $fd                                         ; $5b7b: $fd
	and  a                                           ; $5b7c: $a7
	ld   d, h                                        ; $5b7d: $54
	ld   b, [hl]                                     ; $5b7e: $46
	ld   a, b                                        ; $5b7f: $78
	xor  h                                           ; $5b80: $ac
	call z, $ffee                                    ; $5b81: $cc $ee $ff
	rst  $38                                         ; $5b84: $ff
	ret                                              ; $5b85: $c9


	ld   h, e                                        ; $5b86: $63
	ld   de, $1111                                   ; $5b87: $11 $11 $11
	ld   de, $1111                                   ; $5b8a: $11 $11 $11
	ld   de, $1211                                   ; $5b8d: $11 $11 $12
	ld   e, b                                        ; $5b90: $58
	rst  JumpTable                                         ; $5b91: $df
	rst  $38                                         ; $5b92: $ff
	rst  $38                                         ; $5b93: $ff
	rst  $38                                         ; $5b94: $ff
	rst  $38                                         ; $5b95: $ff
	rst  $38                                         ; $5b96: $ff
	rst  $38                                         ; $5b97: $ff
	db   $fd                                         ; $5b98: $fd
	xor  b                                           ; $5b99: $a8
	ld   h, l                                        ; $5b9a: $65
	ld   d, [hl]                                     ; $5b9b: $56
	ld   a, d                                        ; $5b9c: $7a
	cp   l                                           ; $5b9d: $bd
	xor  $fe                                         ; $5b9e: $ee $fe
	cp   $ee                                         ; $5ba0: $fe $ee
	cp   d                                           ; $5ba2: $ba
	ld   h, e                                        ; $5ba3: $63
	ld   de, $1111                                   ; $5ba4: $11 $11 $11
	ld   de, $1111                                   ; $5ba7: $11 $11 $11
	ld   de, $1111                                   ; $5baa: $11 $11 $11
	dec  d                                           ; $5bad: $15
	sbc  l                                           ; $5bae: $9d
	rst  $38                                         ; $5baf: $ff
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	rst  $38                                         ; $5bb2: $ff
	rst  $38                                         ; $5bb3: $ff
	rst  $38                                         ; $5bb4: $ff
	rst  $38                                         ; $5bb5: $ff
	db   $db                                         ; $5bb6: $db
	sub  a                                           ; $5bb7: $97
	ld   h, [hl]                                     ; $5bb8: $66
	ld   a, c                                        ; $5bb9: $79
	xor  e                                           ; $5bba: $ab
	xor  $ff                                         ; $5bbb: $ee $ff
	xor  $dd                                         ; $5bbd: $ee $dd
	call c, $3197                                    ; $5bbf: $dc $97 $31
	ld   de, $1111                                   ; $5bc2: $11 $11 $11
	ld   de, $1111                                   ; $5bc5: $11 $11 $11
	ld   de, $1111                                   ; $5bc8: $11 $11 $11
	dec  d                                           ; $5bcb: $15
	sbc  h                                           ; $5bcc: $9c
	rst  $38                                         ; $5bcd: $ff
	rst  $38                                         ; $5bce: $ff
	rst  $38                                         ; $5bcf: $ff
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	rst  $38                                         ; $5bd3: $ff
	jp   c, Jump_0e3_6686                            ; $5bd4: $da $86 $66

	adc  d                                           ; $5bd7: $8a
	cp   l                                           ; $5bd8: $bd
	xor  $ff                                         ; $5bd9: $ee $ff
	rst  $28                                         ; $5bdb: $ef
	db   $ed                                         ; $5bdc: $ed
	res  2, l                                        ; $5bdd: $cb $95
	ld   hl, $1111                                   ; $5bdf: $21 $11 $11
	ld   de, $1111                                   ; $5be2: $11 $11 $11
	ld   de, $1111                                   ; $5be5: $11 $11 $11
	ld   de, $5912                                   ; $5be8: $11 $12 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5beb: $cf
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	rst  $38                                         ; $5bf0: $ff
	rst  $38                                         ; $5bf1: $ff
	db   $db                                         ; $5bf2: $db
	add  [hl]                                        ; $5bf3: $86
	ld   h, [hl]                                     ; $5bf4: $66
	ld   a, b                                        ; $5bf5: $78
	cp   l                                           ; $5bf6: $bd
	rst  $38                                         ; $5bf7: $ff
	rst  $38                                         ; $5bf8: $ff
	rst  $38                                         ; $5bf9: $ff
	db   $ed                                         ; $5bfa: $ed
	xor  c                                           ; $5bfb: $a9
	add  [hl]                                        ; $5bfc: $86
	ld   b, e                                        ; $5bfd: $43
	ld   de, $1111                                   ; $5bfe: $11 $11 $11
	ld   de, $1111                                   ; $5c01: $11 $11 $11
	ld   de, $1111                                   ; $5c04: $11 $11 $11
	ld   de, $6a13                                   ; $5c07: $11 $13 $6a
	rst  $28                                         ; $5c0a: $ef
	rst  $38                                         ; $5c0b: $ff
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	db   $fd                                         ; $5c10: $fd
	cp   c                                           ; $5c11: $b9
	ld   h, a                                        ; $5c12: $67
	adc  d                                           ; $5c13: $8a
	rst  JumpTable                                         ; $5c14: $df
	rst  $38                                         ; $5c15: $ff
	rst  $38                                         ; $5c16: $ff
	rst  $38                                         ; $5c17: $ff
	db   $fd                                         ; $5c18: $fd
	xor  b                                           ; $5c19: $a8
	ld   h, l                                        ; $5c1a: $65
	ld   d, l                                        ; $5c1b: $55
	ld   d, h                                        ; $5c1c: $54
	ld   hl, $2311                                   ; $5c1d: $21 $11 $23
	ld   hl, $1111                                   ; $5c20: $21 $11 $11
	ld   de, $1111                                   ; $5c23: $11 $11 $11
	ld   de, $6a45                                   ; $5c26: $11 $45 $6a
	rst  JumpTable                                         ; $5c29: $df
	rst  $38                                         ; $5c2a: $ff
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	rst  $38                                         ; $5c2d: $ff
	xor  $ff                                         ; $5c2e: $ee $ff
	db   $dd                                         ; $5c30: $dd
	jp   z, $ffbd                                    ; $5c31: $ca $bd $ff

	rst  $38                                         ; $5c34: $ff
	cp   $ee                                         ; $5c35: $fe $ee
	cp   d                                           ; $5c37: $ba
	halt                                             ; $5c38: $76
	ld   [hl], a                                     ; $5c39: $77
	sbc  d                                           ; $5c3a: $9a
	adc  c                                           ; $5c3b: $89
	ld   [hl], l                                     ; $5c3c: $75
	ld   b, h                                        ; $5c3d: $44
	ld   b, e                                        ; $5c3e: $43
	ld   de, $1111                                   ; $5c3f: $11 $11 $11
	ld   de, $1111                                   ; $5c42: $11 $11 $11
	ld   de, $4313                                   ; $5c45: $11 $13 $43
	ld   e, c                                        ; $5c48: $59
	rst  JumpTable                                         ; $5c49: $df
	rst  $38                                         ; $5c4a: $ff
	rst  $38                                         ; $5c4b: $ff
	cp   $ef                                         ; $5c4c: $fe $ef
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	cp   $dd                                         ; $5c50: $fe $dd
	call $dfdc                                       ; $5c52: $cd $dc $df
	rst  $38                                         ; $5c55: $ff
	db   $ed                                         ; $5c56: $ed
	xor  b                                           ; $5c57: $a8
	adc  c                                           ; $5c58: $89
	sbc  d                                           ; $5c59: $9a
	xor  c                                           ; $5c5a: $a9
	add  a                                           ; $5c5b: $87
	halt                                             ; $5c5c: $76
	ld   d, e                                        ; $5c5d: $53
	ld   hl, $1111                                   ; $5c5e: $21 $11 $11
	ld   de, $1111                                   ; $5c61: $11 $11 $11
	ld   de, $1111                                   ; $5c64: $11 $11 $11
	dec  d                                           ; $5c67: $15
	adc  [hl]                                        ; $5c68: $8e
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	rst  $28                                         ; $5c6b: $ef
	db   $fd                                         ; $5c6c: $fd
	db   $fd                                         ; $5c6d: $fd
	rst  $28                                         ; $5c6e: $ef
	rst  $38                                         ; $5c6f: $ff
	cp   $cd                                         ; $5c70: $fe $cd
	adc  $ed                                         ; $5c72: $ce $ed
	db   $fd                                         ; $5c74: $fd
	adc  $ca                                         ; $5c75: $ce $ca
	xor  c                                           ; $5c77: $a9
	sbc  d                                           ; $5c78: $9a
	sbc  d                                           ; $5c79: $9a
	cp   d                                           ; $5c7a: $ba
	sbc  b                                           ; $5c7b: $98
	ld   [hl], a                                     ; $5c7c: $77
	ld   d, e                                        ; $5c7d: $53
	ld   de, $1111                                   ; $5c7e: $11 $11 $11
	ld   de, $1111                                   ; $5c81: $11 $11 $11
	ld   de, $1111                                   ; $5c84: $11 $11 $11
	ld   de, $ff3c                                   ; $5c87: $11 $3c $ff
	rst  $38                                         ; $5c8a: $ff
	rst  $38                                         ; $5c8b: $ff
	rst  $38                                         ; $5c8c: $ff
	db   $db                                         ; $5c8d: $db
	rst  $38                                         ; $5c8e: $ff
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	call c, $cbde                                    ; $5c91: $dc $de $cb
	db   $dd                                         ; $5c94: $dd
	rst  $28                                         ; $5c95: $ef
	db   $db                                         ; $5c96: $db
	add  a                                           ; $5c97: $87
	adc  e                                           ; $5c98: $8b
	cp   h                                           ; $5c99: $bc
	jp   z, Jump_0e3_6797                            ; $5c9a: $ca $97 $67

	ld   d, h                                        ; $5c9d: $54
	ld   b, c                                        ; $5c9e: $41
	ld   de, $1111                                   ; $5c9f: $11 $11 $11
	ld   de, $1111                                   ; $5ca2: $11 $11 $11
	ld   [de], a                                     ; $5ca5: $12
	ld   de, $3711                                   ; $5ca6: $11 $11 $37
	rst  $38                                         ; $5ca9: $ff
	rst  $38                                         ; $5caa: $ff
	db   $fc                                         ; $5cab: $fc
	rst  $38                                         ; $5cac: $ff
	rst  $28                                         ; $5cad: $ef
	cp   a                                           ; $5cae: $bf
	rst  $38                                         ; $5caf: $ff
	rst  $38                                         ; $5cb0: $ff
	cp   d                                           ; $5cb1: $ba
	set  5, l                                        ; $5cb2: $cb $ed
	rst  JumpTable                                         ; $5cb4: $df
	db   $fc                                         ; $5cb5: $fc
	jp   c, $ba8a                                    ; $5cb6: $da $8a $ba

	cp   c                                           ; $5cb9: $b9
	sbc  e                                           ; $5cba: $9b
	adc  c                                           ; $5cbb: $89
	and  [hl]                                        ; $5cbc: $a6
	ld   d, h                                        ; $5cbd: $54
	ld   de, $1111                                   ; $5cbe: $11 $11 $11
	ld   de, $1113                                   ; $5cc1: $11 $13 $11
	ld   de, $1111                                   ; $5cc4: $11 $11 $11
	ld   de, $ff19                                   ; $5cc7: $11 $19 $ff
	rst  $38                                         ; $5cca: $ff
	db   $fd                                         ; $5ccb: $fd
	db   $fd                                         ; $5ccc: $fd
	cp   $bf                                         ; $5ccd: $fe $bf
	rst  $28                                         ; $5ccf: $ef
	rst  $38                                         ; $5cd0: $ff
	rst  $38                                         ; $5cd1: $ff
	xor  e                                           ; $5cd2: $ab
	db   $ec                                         ; $5cd3: $ec
	rst  $28                                         ; $5cd4: $ef
	adc  $db                                         ; $5cd5: $ce $db
	cp   d                                           ; $5cd7: $ba
	adc  b                                           ; $5cd8: $88
	sbc  d                                           ; $5cd9: $9a
	res  7, e                                        ; $5cda: $cb $bb
	sub  [hl]                                        ; $5cdc: $96
	ld   d, d                                        ; $5cdd: $52
	ld   de, $1111                                   ; $5cde: $11 $11 $11
	ld   de, $1111                                   ; $5ce1: $11 $11 $11
	ld   de, $1112                                   ; $5ce4: $11 $12 $11
	ld   sp, $ef3d                                   ; $5ce7: $31 $3d $ef
	db   $fd                                         ; $5cea: $fd
	cp   $cf                                         ; $5ceb: $fe $cf
	ret  c                                           ; $5ced: $d8

	call c, $ffff                                    ; $5cee: $dc $ff $ff
	db   $fc                                         ; $5cf1: $fc
	sbc  l                                           ; $5cf2: $9d
	call c, $bcdc                                    ; $5cf3: $dc $dc $bc
	db   $ec                                         ; $5cf6: $ec
	cp   c                                           ; $5cf7: $b9
	adc  d                                           ; $5cf8: $8a
	xor  c                                           ; $5cf9: $a9
	db   $db                                         ; $5cfa: $db
	ld   [hl], a                                     ; $5cfb: $77
	ld   h, [hl]                                     ; $5cfc: $66
	ld   h, e                                        ; $5cfd: $63
	ld   hl, $1111                                   ; $5cfe: $21 $11 $11
	ld   de, $1111                                   ; $5d01: $11 $11 $11
	ld   de, $1111                                   ; $5d04: $11 $11 $11
	ld   [de], a                                     ; $5d07: $12
	rst  $28                                         ; $5d08: $ef
	rst  $38                                         ; $5d09: $ff
	db   $fc                                         ; $5d0a: $fc
	db   $fc                                         ; $5d0b: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d0c: $cf
	sbc  c                                           ; $5d0d: $99
	rst  $38                                         ; $5d0e: $ff
	rst  $38                                         ; $5d0f: $ff
	rst  $38                                         ; $5d10: $ff
	ei                                               ; $5d11: $fb
	call $caab                                       ; $5d12: $cd $ab $ca
	xor  $9b                                         ; $5d15: $ee $9b
	xor  b                                           ; $5d17: $a8
	jp   c, Jump_0e3_769d                            ; $5d18: $da $9d $76

	sub  [hl]                                        ; $5d1b: $96
	ld   h, a                                        ; $5d1c: $67
	inc  de                                          ; $5d1d: $13
	ld   hl, $1111                                   ; $5d1e: $21 $11 $11
	ld   de, $1121                                   ; $5d21: $11 $21 $11
	ld   de, $1511                                   ; $5d24: $11 $11 $15
	ld   a, a                                        ; $5d27: $7f
	rst  $38                                         ; $5d28: $ff
	rst  $38                                         ; $5d29: $ff
	ld   a, [hl]                                     ; $5d2a: $7e
	ld   a, [$efdb]                                  ; $5d2b: $fa $db $ef
	rst  $38                                         ; $5d2e: $ff
	ld   sp, hl                                      ; $5d2f: $f9
	xor  [hl]                                        ; $5d30: $ae
	adc  a                                           ; $5d31: $8f
	ei                                               ; $5d32: $fb
	db   $fc                                         ; $5d33: $fc
	sbc  [hl]                                        ; $5d34: $9e
	or   a                                           ; $5d35: $b7
	ret  z                                           ; $5d36: $c8

	xor  a                                           ; $5d37: $af
	xor  d                                           ; $5d38: $aa
	push bc                                          ; $5d39: $c5
	ld   b, a                                        ; $5d3a: $47
	ld   d, h                                        ; $5d3b: $54
	ld   b, c                                        ; $5d3c: $41
	ld   de, $1111                                   ; $5d3d: $11 $11 $11
	ld   de, $1111                                   ; $5d40: $11 $11 $11
	ld   de, $5615                                   ; $5d43: $11 $15 $56
	rst  $28                                         ; $5d46: $ef
	rst  $38                                         ; $5d47: $ff
	rst  $28                                         ; $5d48: $ef
	sub  $bf                                         ; $5d49: $d6 $bf
	rst  JumpTable                                         ; $5d4b: $df
	rst  $38                                         ; $5d4c: $ff
	rst  $38                                         ; $5d4d: $ff
	rst  $28                                         ; $5d4e: $ef
	ld   a, e                                        ; $5d4f: $7b
	ei                                               ; $5d50: $fb
	db   $ed                                         ; $5d51: $ed
	cp   l                                           ; $5d52: $bd
	xor  l                                           ; $5d53: $ad
	add  sp, $79                                     ; $5d54: $e8 $79
	adc  e                                           ; $5d56: $8b
	jp   hl                                          ; $5d57: $e9


	ld   d, e                                        ; $5d58: $53
	scf                                              ; $5d59: $37
	ld   [hl], h                                     ; $5d5a: $74
	ld   de, $1111                                   ; $5d5b: $11 $11 $11
	ld   de, $1111                                   ; $5d5e: $11 $11 $11
	ld   de, $5c13                                   ; $5d61: $11 $13 $5c
	cp   a                                           ; $5d64: $bf
	push de                                          ; $5d65: $d5
	rst  $38                                         ; $5d66: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d67: $cf
	jp   z, $ffff                                    ; $5d68: $ca $ff $ff

	cp   a                                           ; $5d6b: $bf
	rst  $38                                         ; $5d6c: $ff
	rst  $38                                         ; $5d6d: $ff
	and  a                                           ; $5d6e: $a7
	adc  a                                           ; $5d6f: $8f
	rst  $38                                         ; $5d70: $ff
	jp   z, $dc87                                    ; $5d71: $ca $87 $dc

	adc  b                                           ; $5d74: $88
	ld   b, l                                        ; $5d75: $45
	ld   a, c                                        ; $5d76: $79
	or   h                                           ; $5d77: $b4
	ld   de, $1111                                   ; $5d78: $11 $11 $11
	ld   de, $1113                                   ; $5d7b: $11 $13 $11
	ld   de, $1211                                   ; $5d7e: $11 $11 $12
	sbc  $df                                         ; $5d81: $de $df
	rst  $38                                         ; $5d83: $ff
	push bc                                          ; $5d84: $c5
	jp   c, $efff                                    ; $5d85: $da $ff $ef

	rst  $30                                         ; $5d88: $f7
	rst  $38                                         ; $5d89: $ff
	rst  $28                                         ; $5d8a: $ef
	ld   l, e                                        ; $5d8b: $6b
	ld   a, [$7bfd]                                  ; $5d8c: $fa $fd $7b
	ld   l, e                                        ; $5d8f: $6b
	rst  $30                                         ; $5d90: $f7
	xor  e                                           ; $5d91: $ab
	ld   l, h                                        ; $5d92: $6c
	and  e                                           ; $5d93: $a3
	ld   d, c                                        ; $5d94: $51
	inc  de                                          ; $5d95: $13
	ld   de, $2511                                   ; $5d96: $11 $11 $25
	inc  de                                          ; $5d99: $13
	ld   de, $1211                                   ; $5d9a: $11 $11 $12
	dec  d                                           ; $5d9d: $15
	ld   e, e                                        ; $5d9e: $5b
	ld   hl, sp-$11                                  ; $5d9f: $f8 $ef
	sub  a                                           ; $5da1: $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da2: $cf
	cp   $fb                                         ; $5da3: $fe $fb
	adc  a                                           ; $5da5: $8f
	rst  $38                                         ; $5da6: $ff
	cp   $f8                                         ; $5da7: $fe $f8
	rst  JumpTable                                         ; $5da9: $df
	adc  l                                           ; $5daa: $8d
	sub  e                                           ; $5dab: $93
	jp   c, Jump_0e3_79de                            ; $5dac: $da $de $79

	sub  a                                           ; $5daf: $97
	sbc  c                                           ; $5db0: $99
	ld   de, $1111                                   ; $5db1: $11 $11 $11
	ld   [de], a                                     ; $5db4: $12
	ld   de, $11a1                                   ; $5db5: $11 $a1 $11
	ld   de, $a411                                   ; $5db8: $11 $11 $a4
	ld   a, a                                        ; $5dbb: $7f
	xor  a                                           ; $5dbc: $af
	db   $fd                                         ; $5dbd: $fd
	or   l                                           ; $5dbe: $b5
	rst  $28                                         ; $5dbf: $ef
	rst  $38                                         ; $5dc0: $ff
	and  $fd                                         ; $5dc1: $e6 $fd
	rst  $38                                         ; $5dc3: $ff
	xor  l                                           ; $5dc4: $ad
	db   $dd                                         ; $5dc5: $dd
	cp   $94                                         ; $5dc6: $fe $94
	ld   d, [hl]                                     ; $5dc8: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dc9: $cf
	sbc  d                                           ; $5dca: $9a
	sub  [hl]                                        ; $5dcb: $96
	and  h                                           ; $5dcc: $a4
	ld   h, c                                        ; $5dcd: $61
	ld   [de], a                                     ; $5dce: $12
	ld   de, $3451                                   ; $5dcf: $11 $51 $34
	inc  h                                           ; $5dd2: $24
	ld   de, $2a11                                   ; $5dd3: $11 $11 $2a
	inc  [hl]                                        ; $5dd6: $34
	rst  ToBoot                                         ; $5dd7: $c7
	sbc  a                                           ; $5dd8: $9f
	db   $fd                                         ; $5dd9: $fd
	sbc  a                                           ; $5dda: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ddb: $cf
	rst  $28                                         ; $5ddc: $ef
	rst  $30                                         ; $5ddd: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dde: $cf
	rst  $38                                         ; $5ddf: $ff
	db   $f4                                         ; $5de0: $f4
	reti                                             ; $5de1: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5de2: $cf
	sbc  b                                           ; $5de3: $98
	add  c                                           ; $5de4: $81
	sbc  [hl]                                        ; $5de5: $9e
	cp   l                                           ; $5de6: $bd
	halt                                             ; $5de7: $76
	sub  h                                           ; $5de8: $94
	ld   b, c                                        ; $5de9: $41
	ld   de, $3311                                   ; $5dea: $11 $11 $33
	ld   e, d                                        ; $5ded: $5a
	ld   sp, $1c11                                   ; $5dee: $31 $11 $1c
	add  hl, sp                                      ; $5df1: $39
	ld   h, c                                        ; $5df2: $61
	ld   a, d                                        ; $5df3: $7a
	db   $fd                                         ; $5df4: $fd
	rra                                              ; $5df5: $1f
	db   $fd                                         ; $5df6: $fd
	rst  $38                                         ; $5df7: $ff
	ld   d, c                                        ; $5df8: $51
	rst  $38                                         ; $5df9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dfa: $cf
	and  $fb                                         ; $5dfb: $e6 $fb
	ld   hl, sp+$1c                                  ; $5dfd: $f8 $1c
	ld   e, a                                        ; $5dff: $5f
	ld   hl, sp+$65                                  ; $5e00: $f8 $65
	xor  c                                           ; $5e02: $a9
	sbc  b                                           ; $5e03: $98
	ld   de, $1143                                   ; $5e04: $11 $43 $11
	dec  d                                           ; $5e07: $15
	and  [hl]                                        ; $5e08: $a6
	ld   hl, $8311                                   ; $5e09: $21 $11 $83
	ld   [hl], c                                     ; $5e0c: $71
	rra                                              ; $5e0d: $1f
	add  $61                                         ; $5e0e: $c6 $61
	ld   c, a                                        ; $5e10: $4f
	rst  $38                                         ; $5e11: $ff
	ld   de, $ffd6                                   ; $5e12: $11 $d6 $ff
	ld   e, e                                        ; $5e15: $5b
	sbc  a                                           ; $5e16: $9f
	db   $fc                                         ; $5e17: $fc
	sub  [hl]                                        ; $5e18: $96
	dec  e                                           ; $5e19: $1d
	db   $fc                                         ; $5e1a: $fc
	or   $57                                         ; $5e1b: $f6 $57
	ld   c, d                                        ; $5e1d: $4a
	ld   d, e                                        ; $5e1e: $53
	ld   [hl], h                                     ; $5e1f: $74
	ld   h, h                                        ; $5e20: $64
	ld   de, $6546                                   ; $5e21: $11 $46 $65
	ld   de, $a715                                   ; $5e24: $11 $15 $a7
	ld   b, d                                        ; $5e27: $42
	inc  de                                          ; $5e28: $13
	rst  JumpTable                                         ; $5e29: $df
	or   l                                           ; $5e2a: $b5
	ld   a, [de]                                     ; $5e2b: $1a
	db   $fc                                         ; $5e2c: $fc
	sbc  $19                                         ; $5e2d: $de $19
	rst  $38                                         ; $5e2f: $ff
	push af                                          ; $5e30: $f5
	ld   h, a                                        ; $5e31: $67
	sbc  a                                           ; $5e32: $9f
	ei                                               ; $5e33: $fb
	and  h                                           ; $5e34: $a4
	ld   a, l                                        ; $5e35: $7d
	cp   b                                           ; $5e36: $b8
	ld   h, e                                        ; $5e37: $63
	ld   l, c                                        ; $5e38: $69
	ld   a, d                                        ; $5e39: $7a
	ld   b, c                                        ; $5e3a: $41
	ld   [hl], e                                     ; $5e3b: $73
	ld   d, $14                                      ; $5e3c: $16 $14
	ld   d, [hl]                                     ; $5e3e: $56
	sub  d                                           ; $5e3f: $92
	ld   d, c                                        ; $5e40: $51
	rra                                              ; $5e41: $1f
	add  sp, -$7f                                    ; $5e42: $e8 $81
	ld   l, a                                        ; $5e44: $6f
	rst  $38                                         ; $5e45: $ff
	ld   hl, $ff6a                                   ; $5e46: $21 $6a $ff
	sub  e                                           ; $5e49: $93
	ld   e, $ff                                      ; $5e4a: $1e $ff
	push hl                                          ; $5e4c: $e5
	ld   c, c                                        ; $5e4d: $49
	cp   [hl]                                        ; $5e4e: $be
	ret  z                                           ; $5e4f: $c8

	add  a                                           ; $5e50: $87
	ld   a, c                                        ; $5e51: $79
	ld   d, [hl]                                     ; $5e52: $56
	add  a                                           ; $5e53: $87
	sub  [hl]                                        ; $5e54: $96
	ld   hl, $975a                                   ; $5e55: $21 $5a $97
	ld   sp, $a614                                   ; $5e58: $31 $14 $a6
	dec  h                                           ; $5e5b: $25
	cpl                                              ; $5e5c: $2f
	or   $61                                         ; $5e5d: $f6 $61
	ld   e, l                                        ; $5e5f: $5d
	ld   a, a                                        ; $5e60: $7f
	or   e                                           ; $5e61: $b3
	push hl                                          ; $5e62: $e5
	sbc  a                                           ; $5e63: $9f
	ld   a, l                                        ; $5e64: $7d
	db   $e3                                         ; $5e65: $e3
	cp   c                                           ; $5e66: $b9
	sbc  a                                           ; $5e67: $9f
	ld   l, b                                        ; $5e68: $68
	sub  h                                           ; $5e69: $94
	db   $db                                         ; $5e6a: $db
	adc  d                                           ; $5e6b: $8a
	inc  hl                                          ; $5e6c: $23
	adc  b                                           ; $5e6d: $88
	cp   b                                           ; $5e6e: $b8
	ld   b, h                                        ; $5e6f: $44
	dec  d                                           ; $5e70: $15
	and  [hl]                                        ; $5e71: $a6
	add  a                                           ; $5e72: $87
	add  hl, hl                                      ; $5e73: $29
	and  l                                           ; $5e74: $a5
	sub  a                                           ; $5e75: $97
	ld   b, [hl]                                     ; $5e76: $46
	ld   a, b                                        ; $5e77: $78
	ld   [$477a], a                                  ; $5e78: $ea $7a $47
	sbc  d                                           ; $5e7b: $9a
	ei                                               ; $5e7c: $fb
	xor  c                                           ; $5e7d: $a9
	ld   e, b                                        ; $5e7e: $58
	sbc  h                                           ; $5e7f: $9c
	sub  a                                           ; $5e80: $97
	add  [hl]                                        ; $5e81: $86
	xor  l                                           ; $5e82: $ad
	cp   d                                           ; $5e83: $ba
	ld   d, h                                        ; $5e84: $54
	ld   a, h                                        ; $5e85: $7c
	rst  ToBoot                                         ; $5e86: $c7
	ld   h, l                                        ; $5e87: $65
	ld   b, a                                        ; $5e88: $47
	add  a                                           ; $5e89: $87
	add  a                                           ; $5e8a: $87
	sbc  b                                           ; $5e8b: $98
	ld   a, h                                        ; $5e8c: $7c
	add  a                                           ; $5e8d: $87
	ld   h, c                                        ; $5e8e: $61
	ld   h, a                                        ; $5e8f: $67
	xor  a                                           ; $5e90: $af
	add  a                                           ; $5e91: $87
	ld   [hl], l                                     ; $5e92: $75
	xor  l                                           ; $5e93: $ad
	add  a                                           ; $5e94: $87
	sub  l                                           ; $5e95: $95
	sbc  e                                           ; $5e96: $9b
	adc  d                                           ; $5e97: $8a
	ld   a, d                                        ; $5e98: $7a
	sbc  c                                           ; $5e99: $99
	push bc                                          ; $5e9a: $c5
	adc  d                                           ; $5e9b: $8a
	add  hl, hl                                      ; $5e9c: $29
	ld   h, [hl]                                     ; $5e9d: $66
	jp   hl                                          ; $5e9e: $e9


	xor  c                                           ; $5e9f: $a9
	ld   d, $87                                      ; $5ea0: $16 $87
	rst  $10                                         ; $5ea2: $d7
	ld   c, d                                        ; $5ea3: $4a
	adc  d                                           ; $5ea4: $8a
	or   l                                           ; $5ea5: $b5
	ld   b, [hl]                                     ; $5ea6: $46
	ld   e, d                                        ; $5ea7: $5a
	or   a                                           ; $5ea8: $b7
	cp   b                                           ; $5ea9: $b8
	ld   l, e                                        ; $5eaa: $6b
	ld   c, b                                        ; $5eab: $48
	rst  ToBoot                                         ; $5eac: $c7
	and  $1b                                         ; $5ead: $e6 $1b
	ld   e, d                                        ; $5eaf: $5a
	push hl                                          ; $5eb0: $e5
	xor  c                                           ; $5eb1: $a9
	ld   e, e                                        ; $5eb2: $5b
	ld   d, h                                        ; $5eb3: $54
	and  h                                           ; $5eb4: $a4
	sbc  h                                           ; $5eb5: $9c
	adc  h                                           ; $5eb6: $8c
	ld   h, l                                        ; $5eb7: $65
	ld   [hl], l                                     ; $5eb8: $75
	adc  b                                           ; $5eb9: $88
	adc  d                                           ; $5eba: $8a
	sbc  d                                           ; $5ebb: $9a
	and  [hl]                                        ; $5ebc: $a6
	ld   [hl], a                                     ; $5ebd: $77
	adc  e                                           ; $5ebe: $8b
	adc  e                                           ; $5ebf: $8b
	sub  l                                           ; $5ec0: $95
	or   [hl]                                        ; $5ec1: $b6
	ld   a, e                                        ; $5ec2: $7b
	adc  d                                           ; $5ec3: $8a
	xor  c                                           ; $5ec4: $a9
	sub  l                                           ; $5ec5: $95
	halt                                             ; $5ec6: $76
	ld   c, b                                        ; $5ec7: $48
	ld   a, c                                        ; $5ec8: $79
	jp   c, Jump_0e3_5597                            ; $5ec9: $da $97 $55

	adc  c                                           ; $5ecc: $89
	sub  a                                           ; $5ecd: $97
	ld   l, c                                        ; $5ece: $69
	sbc  c                                           ; $5ecf: $99
	sub  h                                           ; $5ed0: $94
	ld   l, b                                        ; $5ed1: $68
	ld   a, e                                        ; $5ed2: $7b
	sbc  b                                           ; $5ed3: $98
	add  a                                           ; $5ed4: $87
	xor  b                                           ; $5ed5: $a8
	ld   l, b                                        ; $5ed6: $68
	ld   l, b                                        ; $5ed7: $68
	or   a                                           ; $5ed8: $b7
	adc  c                                           ; $5ed9: $89
	ld   l, c                                        ; $5eda: $69
	xor  b                                           ; $5edb: $a8
	sbc  c                                           ; $5edc: $99
	adc  b                                           ; $5edd: $88
	ld   h, a                                        ; $5ede: $67
	add  [hl]                                        ; $5edf: $86
	sbc  c                                           ; $5ee0: $99
	adc  c                                           ; $5ee1: $89
	add  a                                           ; $5ee2: $87
	sub  a                                           ; $5ee3: $97
	ld   h, [hl]                                     ; $5ee4: $66
	ld   h, a                                        ; $5ee5: $67
	adc  b                                           ; $5ee6: $88
	sbc  b                                           ; $5ee7: $98
	adc  b                                           ; $5ee8: $88
	add  a                                           ; $5ee9: $87
	ld   h, a                                        ; $5eea: $67
	ld   l, c                                        ; $5eeb: $69
	or   a                                           ; $5eec: $b7
	add  a                                           ; $5eed: $87
	ld   l, d                                        ; $5eee: $6a
	sbc  d                                           ; $5eef: $9a
	sub  l                                           ; $5ef0: $95
	ld   a, c                                        ; $5ef1: $79
	ld   a, c                                        ; $5ef2: $79
	sbc  b                                           ; $5ef3: $98
	sbc  b                                           ; $5ef4: $98
	sbc  b                                           ; $5ef5: $98
	sbc  c                                           ; $5ef6: $99
	ld   l, b                                        ; $5ef7: $68
	sub  a                                           ; $5ef8: $97
	xor  b                                           ; $5ef9: $a8
	ld   a, b                                        ; $5efa: $78
	ld   a, b                                        ; $5efb: $78
	sbc  b                                           ; $5efc: $98
	sub  a                                           ; $5efd: $97
	adc  c                                           ; $5efe: $89
	ld   [hl], a                                     ; $5eff: $77
	ld   a, b                                        ; $5f00: $78
	adc  c                                           ; $5f01: $89
	adc  c                                           ; $5f02: $89
	sbc  b                                           ; $5f03: $98
	add  a                                           ; $5f04: $87
	ld   a, b                                        ; $5f05: $78
	ld   a, b                                        ; $5f06: $78
	add  a                                           ; $5f07: $87
	sbc  c                                           ; $5f08: $99
	adc  c                                           ; $5f09: $89
	sub  a                                           ; $5f0a: $97
	adc  b                                           ; $5f0b: $88
	adc  b                                           ; $5f0c: $88
	ld   [hl], a                                     ; $5f0d: $77
	sub  a                                           ; $5f0e: $97
	adc  c                                           ; $5f0f: $89
	adc  c                                           ; $5f10: $89
	sbc  c                                           ; $5f11: $99
	sbc  b                                           ; $5f12: $98
	adc  b                                           ; $5f13: $88
	ld   a, c                                        ; $5f14: $79
	ld   [hl], a                                     ; $5f15: $77
	add  a                                           ; $5f16: $87
	adc  d                                           ; $5f17: $8a
	adc  c                                           ; $5f18: $89
	adc  b                                           ; $5f19: $88
	sbc  b                                           ; $5f1a: $98
	ld   [hl], a                                     ; $5f1b: $77
	ld   [hl], a                                     ; $5f1c: $77
	adc  b                                           ; $5f1d: $88
	add  [hl]                                        ; $5f1e: $86
	adc  b                                           ; $5f1f: $88
	adc  c                                           ; $5f20: $89
	adc  b                                           ; $5f21: $88
	add  a                                           ; $5f22: $87
	ld   [hl], a                                     ; $5f23: $77
	ld   a, b                                        ; $5f24: $78
	sbc  b                                           ; $5f25: $98
	adc  b                                           ; $5f26: $88
	ld   a, d                                        ; $5f27: $7a
	and  a                                           ; $5f28: $a7
	adc  b                                           ; $5f29: $88
	ld   a, c                                        ; $5f2a: $79
	sub  a                                           ; $5f2b: $97
	adc  b                                           ; $5f2c: $88
	ld   a, c                                        ; $5f2d: $79
	sbc  c                                           ; $5f2e: $99
	sbc  c                                           ; $5f2f: $99
	add  a                                           ; $5f30: $87
	adc  b                                           ; $5f31: $88
	adc  b                                           ; $5f32: $88
	add  a                                           ; $5f33: $87
	ld   a, c                                        ; $5f34: $79
	sbc  b                                           ; $5f35: $98
	sbc  b                                           ; $5f36: $98
	sbc  b                                           ; $5f37: $98
	ld   a, c                                        ; $5f38: $79
	adc  b                                           ; $5f39: $88
	sub  a                                           ; $5f3a: $97
	ld   a, b                                        ; $5f3b: $78
	adc  b                                           ; $5f3c: $88
	adc  b                                           ; $5f3d: $88
	adc  c                                           ; $5f3e: $89
	adc  b                                           ; $5f3f: $88
	add  a                                           ; $5f40: $87
	ld   [hl], a                                     ; $5f41: $77
	ld   a, b                                        ; $5f42: $78
	sbc  b                                           ; $5f43: $98
	adc  b                                           ; $5f44: $88
	ld   a, c                                        ; $5f45: $79
	sbc  c                                           ; $5f46: $99
	sbc  b                                           ; $5f47: $98
	ld   [hl], a                                     ; $5f48: $77
	ld   [hl], a                                     ; $5f49: $77
	ld   [hl], a                                     ; $5f4a: $77
	adc  b                                           ; $5f4b: $88
	adc  b                                           ; $5f4c: $88
	sbc  c                                           ; $5f4d: $99
	sub  a                                           ; $5f4e: $97
	ld   a, b                                        ; $5f4f: $78
	adc  b                                           ; $5f50: $88
	adc  b                                           ; $5f51: $88
	adc  b                                           ; $5f52: $88
	adc  c                                           ; $5f53: $89
	adc  b                                           ; $5f54: $88
	adc  b                                           ; $5f55: $88
	adc  b                                           ; $5f56: $88
	ld   a, b                                        ; $5f57: $78
	add  a                                           ; $5f58: $87
	adc  c                                           ; $5f59: $89
	adc  b                                           ; $5f5a: $88
	sub  a                                           ; $5f5b: $97
	adc  c                                           ; $5f5c: $89
	adc  b                                           ; $5f5d: $88
	add  a                                           ; $5f5e: $87
	adc  b                                           ; $5f5f: $88
	ld   a, b                                        ; $5f60: $78
	adc  b                                           ; $5f61: $88
	adc  b                                           ; $5f62: $88
	adc  b                                           ; $5f63: $88
	adc  b                                           ; $5f64: $88
	adc  b                                           ; $5f65: $88
	adc  b                                           ; $5f66: $88
	adc  b                                           ; $5f67: $88
	adc  b                                           ; $5f68: $88
	adc  b                                           ; $5f69: $88
	adc  b                                           ; $5f6a: $88
	adc  b                                           ; $5f6b: $88
	adc  b                                           ; $5f6c: $88
	adc  b                                           ; $5f6d: $88
	adc  b                                           ; $5f6e: $88
	adc  b                                           ; $5f6f: $88
	adc  b                                           ; $5f70: $88
	adc  b                                           ; $5f71: $88
	adc  b                                           ; $5f72: $88
	adc  b                                           ; $5f73: $88
	adc  b                                           ; $5f74: $88
	adc  b                                           ; $5f75: $88
	adc  b                                           ; $5f76: $88
	adc  b                                           ; $5f77: $88
	adc  b                                           ; $5f78: $88
	adc  b                                           ; $5f79: $88
	adc  b                                           ; $5f7a: $88
	adc  b                                           ; $5f7b: $88
	adc  b                                           ; $5f7c: $88
	adc  b                                           ; $5f7d: $88
	adc  b                                           ; $5f7e: $88
	adc  b                                           ; $5f7f: $88
	adc  b                                           ; $5f80: $88
	adc  b                                           ; $5f81: $88
	adc  b                                           ; $5f82: $88
	adc  b                                           ; $5f83: $88
	adc  b                                           ; $5f84: $88
	adc  b                                           ; $5f85: $88
	adc  b                                           ; $5f86: $88
	adc  b                                           ; $5f87: $88
	ld   de, $1111                                   ; $5f88: $11 $11 $11
	ld   de, $1111                                   ; $5f8b: $11 $11 $11
	ld   de, $1111                                   ; $5f8e: $11 $11 $11
	ld   de, $1111                                   ; $5f91: $11 $11 $11
	ld   de, $1111                                   ; $5f94: $11 $11 $11
	ld   de, $1111                                   ; $5f97: $11 $11 $11
	ld   de, $1111                                   ; $5f9a: $11 $11 $11
	ld   de, $1111                                   ; $5f9d: $11 $11 $11
	ld   de, $1111                                   ; $5fa0: $11 $11 $11
	ld   de, $1111                                   ; $5fa3: $11 $11 $11
	ld   de, $1111                                   ; $5fa6: $11 $11 $11
	ld   de, $1111                                   ; $5fa9: $11 $11 $11
	ld   de, $1111                                   ; $5fac: $11 $11 $11
	ld   de, $1111                                   ; $5faf: $11 $11 $11
	nop                                              ; $5fb2: $00
	ld   c, b                                        ; $5fb3: $48
	ld   de, $1111                                   ; $5fb4: $11 $11 $11
	ld   de, $1111                                   ; $5fb7: $11 $11 $11
	ld   de, $1111                                   ; $5fba: $11 $11 $11
	ld   de, $5413                                   ; $5fbd: $11 $13 $54
	ld   d, h                                        ; $5fc0: $54
	ld   d, h                                        ; $5fc1: $54
	ld   b, c                                        ; $5fc2: $41
	rra                                              ; $5fc3: $1f
	rst  $38                                         ; $5fc4: $ff
	pop  af                                          ; $5fc5: $f1
	ld   de, $1511                                   ; $5fc6: $11 $11 $15
	ld   de, $1c11                                   ; $5fc9: $11 $11 $1c
	db   $dd                                         ; $5fcc: $dd
	call z, $c1dd                                    ; $5fcd: $cc $dd $c1
	ld   de, $1111                                   ; $5fd0: $11 $11 $11
	ld   de, $1111                                   ; $5fd3: $11 $11 $11
	ld   de, $1111                                   ; $5fd6: $11 $11 $11
	ld   de, $1111                                   ; $5fd9: $11 $11 $11
	ld   de, $5411                                   ; $5fdc: $11 $11 $54
	ld   b, h                                        ; $5fdf: $44
	push af                                          ; $5fe0: $f5
	ld   de, $5454                                   ; $5fe1: $11 $54 $54
	ld   h, a                                        ; $5fe4: $67
	ld   [hl], d                                     ; $5fe5: $72
	ld   de, $1111                                   ; $5fe6: $11 $11 $11
	ld   de, $1112                                   ; $5fe9: $11 $12 $11
	ld   [de], a                                     ; $5fec: $12
	ld   de, $1111                                   ; $5fed: $11 $11 $11
	ld   h, [hl]                                     ; $5ff0: $66
	halt                                             ; $5ff1: $76
	push hl                                          ; $5ff2: $e5
	ld   de, $8988                                   ; $5ff3: $11 $88 $89
	xor  c                                           ; $5ff6: $a9
	adc  b                                           ; $5ff7: $88
	add  a                                           ; $5ff8: $87
	ld   a, b                                        ; $5ff9: $78
	adc  d                                           ; $5ffa: $8a
	sbc  c                                           ; $5ffb: $99
	sub  a                                           ; $5ffc: $97
	ld   [hl], a                                     ; $5ffd: $77
	ld   [hl], a                                     ; $5ffe: $77
	ld   a, b                                        ; $5fff: $78
	ld   a, c                                        ; $6000: $79
	sbc  d                                           ; $6001: $9a
	cp   b                                           ; $6002: $b8
	halt                                             ; $6003: $76
	ld   a, d                                        ; $6004: $7a
	cp   e                                           ; $6005: $bb
	cp   h                                           ; $6006: $bc
	xor  c                                           ; $6007: $a9
	ld   [hl], l                                     ; $6008: $75
	ld   b, h                                        ; $6009: $44
	ld   d, l                                        ; $600a: $55
	ld   h, a                                        ; $600b: $67
	ld   [hl], a                                     ; $600c: $77
	ld   h, [hl]                                     ; $600d: $66
	ld   h, [hl]                                     ; $600e: $66
	ld   a, b                                        ; $600f: $78
	adc  c                                           ; $6010: $89
	sbc  c                                           ; $6011: $99
	add  a                                           ; $6012: $87
	ld   [hl], a                                     ; $6013: $77
	ld   h, a                                        ; $6014: $67
	ld   [hl], a                                     ; $6015: $77
	add  a                                           ; $6016: $87
	halt                                             ; $6017: $76
	ld   a, c                                        ; $6018: $79
	sbc  c                                           ; $6019: $99
	xor  b                                           ; $601a: $a8
	ld   [hl], l                                     ; $601b: $75
	ld   b, l                                        ; $601c: $45
	ld   h, a                                        ; $601d: $67
	sbc  c                                           ; $601e: $99
	cp   d                                           ; $601f: $ba
	sub  a                                           ; $6020: $97
	ld   h, [hl]                                     ; $6021: $66
	ld   l, b                                        ; $6022: $68
	sbc  c                                           ; $6023: $99
	sbc  b                                           ; $6024: $98
	ld   [hl], a                                     ; $6025: $77
	ld   h, [hl]                                     ; $6026: $66
	ld   a, c                                        ; $6027: $79
	sbc  c                                           ; $6028: $99
	add  a                                           ; $6029: $87
	halt                                             ; $602a: $76
	ld   [hl], a                                     ; $602b: $77
	ld   [hl], a                                     ; $602c: $77
	adc  c                                           ; $602d: $89
	sbc  c                                           ; $602e: $99
	adc  b                                           ; $602f: $88
	sbc  b                                           ; $6030: $98
	sbc  b                                           ; $6031: $98
	halt                                             ; $6032: $76
	halt                                             ; $6033: $76
	halt                                             ; $6034: $76
	ld   h, a                                        ; $6035: $67
	adc  c                                           ; $6036: $89
	xor  c                                           ; $6037: $a9
	add  a                                           ; $6038: $87
	adc  b                                           ; $6039: $88
	add  a                                           ; $603a: $87
	ld   a, c                                        ; $603b: $79
	xor  c                                           ; $603c: $a9
	xor  c                                           ; $603d: $a9
	halt                                             ; $603e: $76
	adc  b                                           ; $603f: $88
	sbc  d                                           ; $6040: $9a
	add  a                                           ; $6041: $87
	ld   h, l                                        ; $6042: $65
	ld   h, a                                        ; $6043: $67
	sbc  c                                           ; $6044: $99
	sbc  d                                           ; $6045: $9a
	add  a                                           ; $6046: $87
	ld   h, a                                        ; $6047: $67
	adc  b                                           ; $6048: $88
	xor  e                                           ; $6049: $ab
	xor  c                                           ; $604a: $a9
	ld   [hl], a                                     ; $604b: $77
	ld   h, [hl]                                     ; $604c: $66
	ld   a, b                                        ; $604d: $78
	sbc  b                                           ; $604e: $98
	ld   [hl], a                                     ; $604f: $77
	ld   a, b                                        ; $6050: $78
	xor  e                                           ; $6051: $ab
	add  a                                           ; $6052: $87
	adc  c                                           ; $6053: $89
	xor  e                                           ; $6054: $ab
	sub  a                                           ; $6055: $97
	halt                                             ; $6056: $76
	ld   h, l                                        ; $6057: $65
	ld   l, b                                        ; $6058: $68
	xor  d                                           ; $6059: $aa
	xor  c                                           ; $605a: $a9
	sub  a                                           ; $605b: $97
	ld   l, c                                        ; $605c: $69
	xor  c                                           ; $605d: $a9
	xor  d                                           ; $605e: $aa
	adc  b                                           ; $605f: $88
	ld   h, [hl]                                     ; $6060: $66
	ld   d, [hl]                                     ; $6061: $56
	ld   l, c                                        ; $6062: $69
	xor  d                                           ; $6063: $aa
	xor  b                                           ; $6064: $a8
	sbc  b                                           ; $6065: $98
	adc  c                                           ; $6066: $89
	add  a                                           ; $6067: $87
	ld   [hl], a                                     ; $6068: $77
	ld   a, e                                        ; $6069: $7b
	xor  $ca                                         ; $606a: $ee $ca
	add  [hl]                                        ; $606c: $86
	ld   h, a                                        ; $606d: $67
	ld   h, l                                        ; $606e: $65
	ld   h, a                                        ; $606f: $67
	add  [hl]                                        ; $6070: $86
	ld   d, l                                        ; $6071: $55
	ld   h, [hl]                                     ; $6072: $66
	ld   l, d                                        ; $6073: $6a
	cp   b                                           ; $6074: $b8
	ld   d, l                                        ; $6075: $55
	inc  sp                                          ; $6076: $33
	ld   d, [hl]                                     ; $6077: $56
	cp   l                                           ; $6078: $bd
	jp   z, $3663                                    ; $6079: $ca $63 $36

	xor  l                                           ; $607c: $ad
	jp   z, $1262                                    ; $607d: $ca $62 $12

	ld   l, d                                        ; $6080: $6a
	rst  $28                                         ; $6081: $ef
	db   $fd                                         ; $6082: $fd
	xor  d                                           ; $6083: $aa
	cp   [hl]                                        ; $6084: $be
	rst  $38                                         ; $6085: $ff
	rst  $38                                         ; $6086: $ff
	ret                                              ; $6087: $c9


	ld   [hl], h                                     ; $6088: $74
	ld   a, c                                        ; $6089: $79
	and  [hl]                                        ; $608a: $a6
	dec  [hl]                                        ; $608b: $35
	ld   h, a                                        ; $608c: $67
	ld   h, [hl]                                     ; $608d: $66
	ld   l, b                                        ; $608e: $68
	call z, $11c6                                    ; $608f: $cc $c6 $11
	ld   de, $1111                                   ; $6092: $11 $11 $11
	ld   de, $1211                                   ; $6095: $11 $11 $12
	adc  l                                           ; $6098: $8d
	rst  $38                                         ; $6099: $ff
	rst  $38                                         ; $609a: $ff
	rst  $38                                         ; $609b: $ff
	rst  $38                                         ; $609c: $ff
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	db   $fc                                         ; $609f: $fc
	cp   d                                           ; $60a0: $ba
	sub  a                                           ; $60a1: $97
	ld   a, c                                        ; $60a2: $79
	xor  c                                           ; $60a3: $a9
	xor  c                                           ; $60a4: $a9
	add  l                                           ; $60a5: $85
	ld   b, e                                        ; $60a6: $43
	ld   [hl-], a                                    ; $60a7: $32
	inc  sp                                          ; $60a8: $33
	ld   sp, $1111                                   ; $60a9: $31 $11 $11
	ld   de, $1111                                   ; $60ac: $11 $11 $11
	ld   [de], a                                     ; $60af: $12
	sbc  a                                           ; $60b0: $9f
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	ld   a, [$0142]                                  ; $60b7: $fa $42 $01
	dec  [hl]                                        ; $60ba: $35
	adc  c                                           ; $60bb: $89
	xor  b                                           ; $60bc: $a8
	ld   d, d                                        ; $60bd: $52
	ld   de, $1132                                   ; $60be: $11 $32 $11
	ld   de, $1111                                   ; $60c1: $11 $11 $11
	ld   de, $1311                                   ; $60c4: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c7: $cf
	rst  $38                                         ; $60c8: $ff
	rst  $38                                         ; $60c9: $ff
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	rst  $38                                         ; $60cc: $ff
	rst  $38                                         ; $60cd: $ff
	jp   hl                                          ; $60ce: $e9


	ld   b, c                                        ; $60cf: $41
	ld   [de], a                                     ; $60d0: $12
	ld   l, b                                        ; $60d1: $68
	cp   l                                           ; $60d2: $bd
	jp   z, $1161                                    ; $60d3: $ca $61 $11

	ld   de, $1111                                   ; $60d6: $11 $11 $11
	ld   de, $1111                                   ; $60d9: $11 $11 $11
	ld   b, [hl]                                     ; $60dc: $46
	cp   a                                           ; $60dd: $bf
	rst  $38                                         ; $60de: $ff
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	db   $db                                         ; $60e5: $db
	xor  b                                           ; $60e6: $a8
	ld   [hl], h                                     ; $60e7: $74
	ld   h, a                                        ; $60e8: $67
	ld   b, l                                        ; $60e9: $45
	ld   d, c                                        ; $60ea: $51
	ld   de, $1111                                   ; $60eb: $11 $11 $11
	ld   de, $1111                                   ; $60ee: $11 $11 $11
	ld   de, $af11                                   ; $60f1: $11 $11 $af
	rst  $38                                         ; $60f4: $ff
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	rst  $38                                         ; $60f7: $ff
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	cp   h                                           ; $60fc: $bc
	and  a                                           ; $60fd: $a7
	ld   [hl], e                                     ; $60fe: $73
	ld   [hl-], a                                    ; $60ff: $32
	ld   de, $1111                                   ; $6100: $11 $11 $11
	ld   de, $1111                                   ; $6103: $11 $11 $11
	ld   de, $1111                                   ; $6106: $11 $11 $11
	ld   a, [hl]                                     ; $6109: $7e
	rst  $38                                         ; $610a: $ff
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	rst  $38                                         ; $610e: $ff
	rst  $38                                         ; $610f: $ff
	rst  $38                                         ; $6110: $ff
	db   $fd                                         ; $6111: $fd
	and  [hl]                                        ; $6112: $a6
	ld   de, $1311                                   ; $6113: $11 $11 $13
	ld   b, e                                        ; $6116: $43
	ld   de, $1111                                   ; $6117: $11 $11 $11
	ld   de, $1111                                   ; $611a: $11 $11 $11
	ld   de, $1f11                                   ; $611d: $11 $11 $1f
	rst  $38                                         ; $6120: $ff
	rst  $38                                         ; $6121: $ff
	rst  $38                                         ; $6122: $ff
	rst  $38                                         ; $6123: $ff
	rst  $38                                         ; $6124: $ff
	rst  $38                                         ; $6125: $ff
	rst  $38                                         ; $6126: $ff
	ld   sp, hl                                      ; $6127: $f9
	ld   [hl], e                                     ; $6128: $73
	inc  h                                           ; $6129: $24
	inc  b                                           ; $612a: $04
	ld   h, d                                        ; $612b: $62
	ld   sp, $1111                                   ; $612c: $31 $11 $11
	ld   de, $1111                                   ; $612f: $11 $11 $11
	ld   de, $1211                                   ; $6132: $11 $11 $12
	rst  $28                                         ; $6135: $ef
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	rst  $38                                         ; $6138: $ff
	rst  $38                                         ; $6139: $ff
	cp   $ff                                         ; $613a: $fe $ff
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff
	or   a                                           ; $613e: $b7
	ld   d, e                                        ; $613f: $53
	inc  hl                                          ; $6140: $23
	dec  [hl]                                        ; $6141: $35
	ld   d, c                                        ; $6142: $51
	ld   de, $1111                                   ; $6143: $11 $11 $11
	ld   de, $1111                                   ; $6146: $11 $11 $11
	ld   de, $8f21                                   ; $6149: $11 $21 $8f
	rst  $38                                         ; $614c: $ff
	rst  $38                                         ; $614d: $ff
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	rst  $38                                         ; $6153: $ff
	ld   d, e                                        ; $6154: $53
	ld   b, c                                        ; $6155: $41
	ld   [de], a                                     ; $6156: $12
	ld   h, $51                                      ; $6157: $26 $51
	ld   de, $1111                                   ; $6159: $11 $11 $11
	ld   de, $1111                                   ; $615c: $11 $11 $11
	ld   de, $5e16                                   ; $615f: $11 $16 $5e
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	rst  $38                                         ; $6164: $ff
	rst  $38                                         ; $6165: $ff
	rst  $38                                         ; $6166: $ff
	rst  $38                                         ; $6167: $ff
	rst  $38                                         ; $6168: $ff
	db   $dd                                         ; $6169: $dd
	ld   a, [$1255]                                  ; $616a: $fa $55 $12
	ld   hl, $1113                                   ; $616d: $21 $13 $11
	ld   de, $1111                                   ; $6170: $11 $11 $11
	ld   de, $1111                                   ; $6173: $11 $11 $11
	ld   de, $ff5a                                   ; $6176: $11 $5a $ff
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	rst  $38                                         ; $617c: $ff
	rst  $38                                         ; $617d: $ff
	rst  $38                                         ; $617e: $ff
	rst  $38                                         ; $617f: $ff
	ret                                              ; $6180: $c9


	ld   h, h                                        ; $6181: $64
	ld   sp, $1113                                   ; $6182: $31 $13 $11
	ld   de, $1111                                   ; $6185: $11 $11 $11
	ld   de, $1111                                   ; $6188: $11 $11 $11
	ld   de, $1511                                   ; $618b: $11 $11 $15
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	rst  $38                                         ; $6190: $ff
	rst  $38                                         ; $6191: $ff
	rst  $38                                         ; $6192: $ff
	rst  $38                                         ; $6193: $ff
	rst  $38                                         ; $6194: $ff
	rst  $38                                         ; $6195: $ff
	ld   hl, sp+$45                                  ; $6196: $f8 $45
	ld   de, $6855                                   ; $6198: $11 $55 $68
	ld   d, c                                        ; $619b: $51
	ld   de, $1111                                   ; $619c: $11 $11 $11
	ld   de, $1111                                   ; $619f: $11 $11 $11
	ld   de, $af16                                   ; $61a2: $11 $16 $af
	rst  $38                                         ; $61a5: $ff
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	rst  $38                                         ; $61aa: $ff
	rst  $38                                         ; $61ab: $ff
	reti                                             ; $61ac: $d9


	ld   [hl], l                                     ; $61ad: $75
	ld   b, h                                        ; $61ae: $44
	inc  [hl]                                        ; $61af: $34
	ld   b, d                                        ; $61b0: $42
	ld   de, $1111                                   ; $61b1: $11 $11 $11
	ld   de, $1111                                   ; $61b4: $11 $11 $11
	ld   de, $1111                                   ; $61b7: $11 $11 $11

Call_0e3_61ba:
	ld   d, $cf                                      ; $61ba: $16 $cf
	rst  $38                                         ; $61bc: $ff
	rst  $38                                         ; $61bd: $ff
	rst  $38                                         ; $61be: $ff
	rst  $38                                         ; $61bf: $ff
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	jp   z, $3464                                    ; $61c3: $ca $64 $34

	inc  [hl]                                        ; $61c6: $34
	ld   d, h                                        ; $61c7: $54
	ld   [hl-], a                                    ; $61c8: $32
	ld   de, $1111                                   ; $61c9: $11 $11 $11
	ld   de, $1111                                   ; $61cc: $11 $11 $11
	ld   de, $4911                                   ; $61cf: $11 $11 $49
	rst  JumpTable                                         ; $61d2: $df
	rst  $38                                         ; $61d3: $ff
	rst  $38                                         ; $61d4: $ff
	rst  $38                                         ; $61d5: $ff
	rst  $38                                         ; $61d6: $ff
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	cp   $b9                                         ; $61d9: $fe $b9
	add  a                                           ; $61db: $87
	ld   h, l                                        ; $61dc: $65
	ld   d, h                                        ; $61dd: $54
	ld   b, h                                        ; $61de: $44
	inc  sp                                          ; $61df: $33
	ld   [hl-], a                                    ; $61e0: $32
	ld   hl, $1111                                   ; $61e1: $21 $11 $11
	ld   de, $1111                                   ; $61e4: $11 $11 $11
	ld   de, $4811                                   ; $61e7: $11 $11 $48
	rst  $28                                         ; $61ea: $ef
	rst  $38                                         ; $61eb: $ff
	rst  $38                                         ; $61ec: $ff
	rst  $38                                         ; $61ed: $ff
	rst  $38                                         ; $61ee: $ff
	rst  $38                                         ; $61ef: $ff
	rst  $38                                         ; $61f0: $ff
	ld   [$4476], a                                  ; $61f1: $ea $76 $44
	ld   b, l                                        ; $61f4: $45
	ld   h, [hl]                                     ; $61f5: $66
	ld   h, l                                        ; $61f6: $65
	ld   d, h                                        ; $61f7: $54
	ld   [hl-], a                                    ; $61f8: $32
	ld   de, $1111                                   ; $61f9: $11 $11 $11
	ld   de, $7735                                   ; $61fc: $11 $35 $77
	ld   [hl], l                                     ; $61ff: $75
	ld   [hl-], a                                    ; $6200: $32
	ld   [de], a                                     ; $6201: $12
	dec  [hl]                                        ; $6202: $35
	ld   a, d                                        ; $6203: $7a
	cp   h                                           ; $6204: $bc
	db   $dd                                         ; $6205: $dd
	rst  $38                                         ; $6206: $ff
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	jp   c, $8a88                                    ; $620a: $da $88 $8a

	adc  $dc                                         ; $620d: $ce $dc
	add  h                                           ; $620f: $84
	ld   de, $4b11                                   ; $6210: $11 $11 $4b
	rst  $28                                         ; $6213: $ef
	cp   $b6                                         ; $6214: $fe $b6
	ld   hl, $2411                                   ; $6216: $21 $11 $24
	ld   d, h                                        ; $6219: $54
	ld   b, d                                        ; $621a: $42
	ld   bc, $1211                                   ; $621b: $01 $11 $12
	ld   b, l                                        ; $621e: $45
	ld   h, a                                        ; $621f: $67
	ld   a, b                                        ; $6220: $78
	sbc  d                                           ; $6221: $9a
	cp   h                                           ; $6222: $bc
	sbc  $ef                                         ; $6223: $de $ef
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	rst  $38                                         ; $6227: $ff
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	call c, $a9cc                                    ; $622a: $dc $cc $a9
	ld   [hl], l                                     ; $622d: $75
	ld   b, e                                        ; $622e: $43
	inc  [hl]                                        ; $622f: $34
	ld   b, l                                        ; $6230: $45
	ld   h, [hl]                                     ; $6231: $66
	ld   d, l                                        ; $6232: $55
	ld   b, e                                        ; $6233: $43
	inc  sp                                          ; $6234: $33
	ld   b, l                                        ; $6235: $45
	ld   a, b                                        ; $6236: $78
	sbc  c                                           ; $6237: $99
	sbc  c                                           ; $6238: $99
	ld   [hl], a                                     ; $6239: $77
	ld   h, [hl]                                     ; $623a: $66
	ld   h, a                                        ; $623b: $67
	adc  d                                           ; $623c: $8a
	xor  d                                           ; $623d: $aa
	sbc  c                                           ; $623e: $99
	add  a                                           ; $623f: $87
	ld   [hl], a                                     ; $6240: $77
	ld   a, c                                        ; $6241: $79
	sbc  e                                           ; $6242: $9b
	cp   d                                           ; $6243: $ba
	xor  c                                           ; $6244: $a9
	sbc  b                                           ; $6245: $98
	adc  b                                           ; $6246: $88
	adc  c                                           ; $6247: $89
	sbc  d                                           ; $6248: $9a
	xor  d                                           ; $6249: $aa
	sbc  c                                           ; $624a: $99
	ld   [hl], a                                     ; $624b: $77
	ld   [hl], a                                     ; $624c: $77
	adc  b                                           ; $624d: $88
	sbc  d                                           ; $624e: $9a
	xor  c                                           ; $624f: $a9
	sbc  b                                           ; $6250: $98
	ld   [hl], a                                     ; $6251: $77
	ld   a, b                                        ; $6252: $78
	adc  d                                           ; $6253: $8a
	sbc  d                                           ; $6254: $9a
	xor  d                                           ; $6255: $aa
	sbc  c                                           ; $6256: $99
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	sbc  c                                           ; $6259: $99
	adc  b                                           ; $625a: $88
	ld   [hl], a                                     ; $625b: $77
	ld   h, [hl]                                     ; $625c: $66
	ld   d, l                                        ; $625d: $55
	ld   d, l                                        ; $625e: $55
	ld   h, [hl]                                     ; $625f: $66
	ld   h, [hl]                                     ; $6260: $66
	ld   h, [hl]                                     ; $6261: $66
	ld   h, [hl]                                     ; $6262: $66
	ld   h, a                                        ; $6263: $67
	ld   [hl], a                                     ; $6264: $77
	adc  b                                           ; $6265: $88
	sbc  c                                           ; $6266: $99
	sbc  c                                           ; $6267: $99
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	sbc  d                                           ; $626a: $9a
	sbc  d                                           ; $626b: $9a
	xor  d                                           ; $626c: $aa
	sbc  d                                           ; $626d: $9a
	sbc  c                                           ; $626e: $99
	adc  b                                           ; $626f: $88
	adc  c                                           ; $6270: $89
	adc  c                                           ; $6271: $89
	adc  b                                           ; $6272: $88
	ld   [hl], a                                     ; $6273: $77
	ld   [hl], a                                     ; $6274: $77
	ld   [hl], a                                     ; $6275: $77
	ld   [hl], a                                     ; $6276: $77
	ld   [hl], a                                     ; $6277: $77
	ld   [hl], a                                     ; $6278: $77
	ld   [hl], a                                     ; $6279: $77
	ld   [hl], a                                     ; $627a: $77
	adc  c                                           ; $627b: $89
	adc  c                                           ; $627c: $89
	sbc  c                                           ; $627d: $99
	adc  b                                           ; $627e: $88
	sbc  c                                           ; $627f: $99
	adc  b                                           ; $6280: $88
	adc  c                                           ; $6281: $89
	adc  b                                           ; $6282: $88
	sbc  b                                           ; $6283: $98
	adc  b                                           ; $6284: $88
	adc  b                                           ; $6285: $88
	adc  b                                           ; $6286: $88
	adc  b                                           ; $6287: $88
	adc  b                                           ; $6288: $88
	ld   [hl], a                                     ; $6289: $77
	ld   [hl], a                                     ; $628a: $77
	ld   [hl], a                                     ; $628b: $77
	ld   [hl], a                                     ; $628c: $77
	ld   [hl], a                                     ; $628d: $77
	ld   [hl], a                                     ; $628e: $77
	ld   [hl], a                                     ; $628f: $77
	ld   [hl], a                                     ; $6290: $77
	ld   [hl], a                                     ; $6291: $77
	ld   a, b                                        ; $6292: $78
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	adc  b                                           ; $6295: $88
	adc  c                                           ; $6296: $89
	sbc  b                                           ; $6297: $98
	adc  b                                           ; $6298: $88
	adc  b                                           ; $6299: $88
	adc  b                                           ; $629a: $88
	adc  b                                           ; $629b: $88
	adc  b                                           ; $629c: $88
	adc  b                                           ; $629d: $88
	adc  c                                           ; $629e: $89
	sbc  b                                           ; $629f: $98
	adc  b                                           ; $62a0: $88
	adc  b                                           ; $62a1: $88
	adc  b                                           ; $62a2: $88
	add  a                                           ; $62a3: $87
	ld   [hl], a                                     ; $62a4: $77
	ld   [hl], a                                     ; $62a5: $77
	ld   [hl], a                                     ; $62a6: $77
	ld   [hl], a                                     ; $62a7: $77
	adc  b                                           ; $62a8: $88
	adc  b                                           ; $62a9: $88
	add  a                                           ; $62aa: $87
	ld   [hl], a                                     ; $62ab: $77
	ld   [hl], a                                     ; $62ac: $77
	adc  b                                           ; $62ad: $88
	adc  b                                           ; $62ae: $88
	adc  b                                           ; $62af: $88
	adc  b                                           ; $62b0: $88
	adc  b                                           ; $62b1: $88
	adc  b                                           ; $62b2: $88
	adc  c                                           ; $62b3: $89
	sbc  c                                           ; $62b4: $99
	sbc  b                                           ; $62b5: $98
	adc  b                                           ; $62b6: $88
	adc  b                                           ; $62b7: $88
	adc  b                                           ; $62b8: $88
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	adc  b                                           ; $62bb: $88
	adc  b                                           ; $62bc: $88
	ld   [hl], a                                     ; $62bd: $77
	adc  b                                           ; $62be: $88
	adc  b                                           ; $62bf: $88
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	adc  b                                           ; $62c3: $88
	adc  b                                           ; $62c4: $88
	adc  b                                           ; $62c5: $88
	adc  b                                           ; $62c6: $88
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	adc  b                                           ; $62ca: $88
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	adc  b                                           ; $62ce: $88
	adc  b                                           ; $62cf: $88
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	add  a                                           ; $62da: $87
	ld   [hl], a                                     ; $62db: $77
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	adc  b                                           ; $62de: $88
	adc  b                                           ; $62df: $88
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	adc  b                                           ; $62e2: $88
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	adc  b                                           ; $62e9: $88
	adc  b                                           ; $62ea: $88
	adc  b                                           ; $62eb: $88
	adc  b                                           ; $62ec: $88
	adc  b                                           ; $62ed: $88
	adc  b                                           ; $62ee: $88
	adc  b                                           ; $62ef: $88
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	adc  b                                           ; $62f5: $88
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	adc  b                                           ; $62ff: $88
	adc  b                                           ; $6300: $88
	adc  b                                           ; $6301: $88
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	adc  b                                           ; $630f: $88
	adc  b                                           ; $6310: $88
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	adc  b                                           ; $6317: $88
	adc  b                                           ; $6318: $88
	adc  b                                           ; $6319: $88
	adc  b                                           ; $631a: $88
	adc  b                                           ; $631b: $88
	adc  b                                           ; $631c: $88
	adc  b                                           ; $631d: $88
	adc  b                                           ; $631e: $88
	adc  b                                           ; $631f: $88
	adc  b                                           ; $6320: $88
	adc  b                                           ; $6321: $88
	adc  b                                           ; $6322: $88
	adc  c                                           ; $6323: $89
	sbc  c                                           ; $6324: $99
	sbc  b                                           ; $6325: $98
	adc  b                                           ; $6326: $88
	adc  b                                           ; $6327: $88
	adc  b                                           ; $6328: $88
	adc  b                                           ; $6329: $88
	adc  b                                           ; $632a: $88
	adc  b                                           ; $632b: $88
	adc  b                                           ; $632c: $88
	adc  b                                           ; $632d: $88
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	adc  b                                           ; $6331: $88
	adc  b                                           ; $6332: $88
	adc  b                                           ; $6333: $88
	adc  b                                           ; $6334: $88
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	adc  b                                           ; $6338: $88
	adc  b                                           ; $6339: $88
	adc  b                                           ; $633a: $88
	adc  b                                           ; $633b: $88
	adc  b                                           ; $633c: $88
	adc  b                                           ; $633d: $88
	adc  b                                           ; $633e: $88
	adc  b                                           ; $633f: $88
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	adc  b                                           ; $6349: $88
	adc  b                                           ; $634a: $88
	adc  b                                           ; $634b: $88
	adc  b                                           ; $634c: $88
	adc  b                                           ; $634d: $88
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	adc  b                                           ; $6350: $88
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	adc  b                                           ; $635f: $88
	adc  b                                           ; $6360: $88
	adc  b                                           ; $6361: $88
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	adc  b                                           ; $6366: $88
	adc  b                                           ; $6367: $88
	adc  b                                           ; $6368: $88
	adc  b                                           ; $6369: $88
	adc  b                                           ; $636a: $88
	adc  b                                           ; $636b: $88
	adc  b                                           ; $636c: $88
	sbc  c                                           ; $636d: $99
	sbc  d                                           ; $636e: $9a
	sub  a                                           ; $636f: $97
	add  a                                           ; $6370: $87
	ld   [hl], a                                     ; $6371: $77
	ld   a, e                                        ; $6372: $7b
	cp   h                                           ; $6373: $bc
	xor  c                                           ; $6374: $a9
	halt                                             ; $6375: $76
	ld   [hl], a                                     ; $6376: $77
	sbc  b                                           ; $6377: $98
	sbc  c                                           ; $6378: $99
	add  [hl]                                        ; $6379: $86
	ld   d, h                                        ; $637a: $54
	ld   b, l                                        ; $637b: $45
	ld   h, a                                        ; $637c: $67
	adc  c                                           ; $637d: $89
	sbc  c                                           ; $637e: $99
	sbc  c                                           ; $637f: $99
	adc  c                                           ; $6380: $89
	xor  d                                           ; $6381: $aa
	cp   e                                           ; $6382: $bb
	xor  c                                           ; $6383: $a9
	add  a                                           ; $6384: $87
	ld   h, [hl]                                     ; $6385: $66
	ld   h, a                                        ; $6386: $67
	ld   a, b                                        ; $6387: $78
	add  a                                           ; $6388: $87
	halt                                             ; $6389: $76
	ld   h, [hl]                                     ; $638a: $66
	ld   h, [hl]                                     ; $638b: $66
	ld   a, b                                        ; $638c: $78
	adc  b                                           ; $638d: $88
	adc  b                                           ; $638e: $88
	adc  b                                           ; $638f: $88
	ld   a, b                                        ; $6390: $78
	adc  b                                           ; $6391: $88
	sbc  c                                           ; $6392: $99
	sbc  b                                           ; $6393: $98
	sbc  b                                           ; $6394: $98
	add  a                                           ; $6395: $87
	halt                                             ; $6396: $76
	ld   [hl], a                                     ; $6397: $77
	ld   a, b                                        ; $6398: $78
	adc  b                                           ; $6399: $88
	sbc  c                                           ; $639a: $99
	sbc  c                                           ; $639b: $99
	adc  c                                           ; $639c: $89
	sbc  b                                           ; $639d: $98
	sbc  b                                           ; $639e: $98
	adc  b                                           ; $639f: $88
	sbc  b                                           ; $63a0: $98
	adc  c                                           ; $63a1: $89
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	ld   a, b                                        ; $63a4: $78
	sbc  e                                           ; $63a5: $9b
	cp   d                                           ; $63a6: $ba
	add  a                                           ; $63a7: $87
	ld   h, a                                        ; $63a8: $67
	sbc  c                                           ; $63a9: $99
	xor  c                                           ; $63aa: $a9
	cp   c                                           ; $63ab: $b9
	halt                                             ; $63ac: $76
	ld   d, [hl]                                     ; $63ad: $56
	ld   h, a                                        ; $63ae: $67
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	add  a                                           ; $63b3: $87
	halt                                             ; $63b4: $76
	ld   h, [hl]                                     ; $63b5: $66
	ld   d, l                                        ; $63b6: $55
	ld   h, a                                        ; $63b7: $67
	sbc  c                                           ; $63b8: $99
	sbc  b                                           ; $63b9: $98
	halt                                             ; $63ba: $76
	ld   h, [hl]                                     ; $63bb: $66
	ld   a, b                                        ; $63bc: $78
	sbc  c                                           ; $63bd: $99
	adc  b                                           ; $63be: $88
	halt                                             ; $63bf: $76
	ld   h, l                                        ; $63c0: $65
	ld   h, [hl]                                     ; $63c1: $66
	ld   h, a                                        ; $63c2: $67
	ld   a, b                                        ; $63c3: $78
	xor  d                                           ; $63c4: $aa
	xor  d                                           ; $63c5: $aa
	adc  b                                           ; $63c6: $88
	ld   [hl], a                                     ; $63c7: $77
	ld   [hl], a                                     ; $63c8: $77
	adc  b                                           ; $63c9: $88
	adc  c                                           ; $63ca: $89
	sbc  c                                           ; $63cb: $99
	halt                                             ; $63cc: $76
	ld   h, [hl]                                     ; $63cd: $66
	ld   a, b                                        ; $63ce: $78
	adc  c                                           ; $63cf: $89
	sbc  c                                           ; $63d0: $99
	add  a                                           ; $63d1: $87
	ld   h, [hl]                                     ; $63d2: $66
	adc  d                                           ; $63d3: $8a
	cp   d                                           ; $63d4: $ba
	xor  c                                           ; $63d5: $a9
	sbc  c                                           ; $63d6: $99
	halt                                             ; $63d7: $76
	ld   d, [hl]                                     ; $63d8: $56
	sbc  d                                           ; $63d9: $9a
	xor  c                                           ; $63da: $a9
	ld   [hl], a                                     ; $63db: $77
	ld   d, l                                        ; $63dc: $55
	ld   h, [hl]                                     ; $63dd: $66
	ld   h, [hl]                                     ; $63de: $66
	ld   h, [hl]                                     ; $63df: $66
	ld   h, a                                        ; $63e0: $67
	adc  b                                           ; $63e1: $88
	sbc  c                                           ; $63e2: $99
	sbc  d                                           ; $63e3: $9a
	xor  c                                           ; $63e4: $a9
	sub  a                                           ; $63e5: $97
	adc  c                                           ; $63e6: $89
	sbc  b                                           ; $63e7: $98
	add  a                                           ; $63e8: $87
	ld   a, c                                        ; $63e9: $79
	sbc  c                                           ; $63ea: $99
	xor  d                                           ; $63eb: $aa
	xor  b                                           ; $63ec: $a8
	ld   [hl], l                                     ; $63ed: $75
	ld   d, [hl]                                     ; $63ee: $56
	ld   l, b                                        ; $63ef: $68
	sbc  c                                           ; $63f0: $99
	halt                                             ; $63f1: $76
	ld   b, h                                        ; $63f2: $44
	ld   b, h                                        ; $63f3: $44
	ld   d, [hl]                                     ; $63f4: $56
	ld   [hl], a                                     ; $63f5: $77
	ld   d, h                                        ; $63f6: $54
	inc  [hl]                                        ; $63f7: $34
	ld   d, a                                        ; $63f8: $57
	cp   [hl]                                        ; $63f9: $be
	db   $fd                                         ; $63fa: $fd
	xor  b                                           ; $63fb: $a8
	ld   h, a                                        ; $63fc: $67
	xor  h                                           ; $63fd: $ac
	cp   $ff                                         ; $63fe: $fe $ff
	call z, $dfbc                                    ; $6400: $cc $bc $df
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	ld   sp, hl                                      ; $6405: $f9
	ld   de, $1111                                   ; $6406: $11 $11 $11
	inc  hl                                          ; $6409: $23
	ld   hl, $1111                                   ; $640a: $21 $11 $11
	ld   de, $5535                                   ; $640d: $11 $35 $55
	ld   l, d                                        ; $6410: $6a
	rst  JumpTable                                         ; $6411: $df
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	rst  $38                                         ; $6414: $ff
	rst  $38                                         ; $6415: $ff
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	db   $ec                                         ; $6418: $ec
	sbc  c                                           ; $6419: $99
	sbc  c                                           ; $641a: $99
	xor  d                                           ; $641b: $aa
	add  l                                           ; $641c: $85
	ld   de, $1111                                   ; $641d: $11 $11 $11
	ld   de, $1111                                   ; $6420: $11 $11 $11
	inc  de                                          ; $6423: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6424: $cf
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	rst  $38                                         ; $6427: $ff
	rst  $38                                         ; $6428: $ff
	rst  $38                                         ; $6429: $ff
	db   $fc                                         ; $642a: $fc
	add  l                                           ; $642b: $85
	ld   l, c                                        ; $642c: $69
	cp   a                                           ; $642d: $bf
	rst  $38                                         ; $642e: $ff
	cp   $a7                                         ; $642f: $fe $a7
	ld   d, h                                        ; $6431: $54
	ld   sp, $1111                                   ; $6432: $31 $11 $11
	ld   de, $1211                                   ; $6435: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6438: $cf
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	rst  $38                                         ; $643b: $ff
	rst  $38                                         ; $643c: $ff
	rst  $38                                         ; $643d: $ff
	jp   nz, $1111                                   ; $643e: $c2 $11 $11

	ld   e, a                                        ; $6441: $5f
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	rst  $38                                         ; $6444: $ff
	jp   c, $1175                                    ; $6445: $da $75 $11

	ld   de, $1111                                   ; $6448: $11 $11 $11
	ld   de, $ffef                                   ; $644b: $11 $ef $ff
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	add  c                                           ; $6452: $81
	ld   de, $1a11                                   ; $6453: $11 $11 $1a
	rst  $38                                         ; $6456: $ff
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	rst  $38                                         ; $6459: $ff
	add  c                                           ; $645a: $81
	ld   de, $1111                                   ; $645b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $645e: $11 $11 $ff
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	and  $11                                         ; $6465: $e6 $11
	ld   de, $1f11                                   ; $6467: $11 $11 $1f
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	ld   hl, sp+$11                                  ; $646d: $f8 $11
	ld   de, $1111                                   ; $646f: $11 $11 $11
	ld   de, $ff1f                                   ; $6472: $11 $1f $ff
	rst  $38                                         ; $6475: $ff
	rst  $38                                         ; $6476: $ff
	ei                                               ; $6477: $fb
	ld   [hl], d                                     ; $6478: $72
	ld   de, $1111                                   ; $6479: $11 $11 $11
	inc  d                                           ; $647c: $14
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	ld   d, c                                        ; $6481: $51
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6485: $11 $13 $ff
	rst  $38                                         ; $6488: $ff
	rst  $38                                         ; $6489: $ff
	rst  $38                                         ; $648a: $ff
	ld   de, $1111                                   ; $648b: $11 $11 $11
	ld   de, $cf11                                   ; $648e: $11 $11 $cf
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	pop  af                                          ; $6494: $f1
	ld   de, $1111                                   ; $6495: $11 $11 $11
	ld   de, $5f11                                   ; $6498: $11 $11 $5f
	rst  $38                                         ; $649b: $ff
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	pop  de                                          ; $649e: $d1
	ld   de, $1111                                   ; $649f: $11 $11 $11
	ld   de, $ff3f                                   ; $64a2: $11 $3f $ff
	rst  $38                                         ; $64a5: $ff
	rst  $38                                         ; $64a6: $ff
	cp   $21                                         ; $64a7: $fe $21
	ld   de, $1111                                   ; $64a9: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $64ac: $11 $11 $ff
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	ld   sp, hl                                      ; $64b1: $f9
	ld   de, $1111                                   ; $64b2: $11 $11 $11
	ld   de, $ff38                                   ; $64b5: $11 $38 $ff
	rst  $38                                         ; $64b8: $ff
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	ld   h, d                                        ; $64bb: $62
	ld   de, $1111                                   ; $64bc: $11 $11 $11
	ld   de, $1311                                   ; $64bf: $11 $11 $13
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	ld   [hl], c                                     ; $64c5: $71
	ld   de, $1211                                   ; $64c6: $11 $11 $12
	ld   [hl+], a                                    ; $64c9: $22
	ld   a, l                                        ; $64ca: $7d
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	rst  $38                                         ; $64cd: $ff
	ld   a, [$2522]                                  ; $64ce: $fa $22 $25
	add  l                                           ; $64d1: $85
	ld   sp, $1111                                   ; $64d2: $31 $11 $11
	ld   de, $ff9f                                   ; $64d5: $11 $9f $ff
	rst  $38                                         ; $64d8: $ff
	push af                                          ; $64d9: $f5
	ld   d, e                                        ; $64da: $53
	ld   de, $1121                                   ; $64db: $11 $21 $11
	rla                                              ; $64de: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64df: $cf
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	and  [hl]                                        ; $64e3: $a6
	add  a                                           ; $64e4: $87
	sbc  e                                           ; $64e5: $9b
	ld   h, c                                        ; $64e6: $61
	ld   de, $1111                                   ; $64e7: $11 $11 $11
	ld   d, $ff                                      ; $64ea: $16 $ff
	rst  $38                                         ; $64ec: $ff
	rst  $38                                         ; $64ed: $ff
	add  l                                           ; $64ee: $85
	ld   sp, $1111                                   ; $64ef: $31 $11 $11
	ld   [de], a                                     ; $64f2: $12
	adc  [hl]                                        ; $64f3: $8e
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	db   $fc                                         ; $64f7: $fc
	halt                                             ; $64f8: $76
	ld   d, a                                        ; $64f9: $57
	add  l                                           ; $64fa: $85
	ld   hl, $1111                                   ; $64fb: $21 $11 $11
	ld   de, $ff2d                                   ; $64fe: $11 $2d $ff
	rst  $38                                         ; $6501: $ff
	ld   sp, hl                                      ; $6502: $f9
	inc  sp                                          ; $6503: $33
	ld   de, $1311                                   ; $6504: $11 $11 $13
	ld   c, c                                        ; $6507: $49
	rst  $28                                         ; $6508: $ef
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $20                                         ; $650c: $e7
	halt                                             ; $650d: $76
	ld   l, e                                        ; $650e: $6b
	and  [hl]                                        ; $650f: $a6
	ld   hl, $1111                                   ; $6510: $21 $11 $11
	ld   de, $ff2b                                   ; $6513: $11 $2b $ff
	rst  $38                                         ; $6516: $ff
	rst  $20                                         ; $6517: $e7
	ld   d, h                                        ; $6518: $54
	ld   [de], a                                     ; $6519: $12
	ld   hl, $7b44                                   ; $651a: $21 $44 $7b
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	db   $eb                                         ; $6521: $eb
	xor  b                                           ; $6522: $a8
	sbc  d                                           ; $6523: $9a
	add  [hl]                                        ; $6524: $86
	ld   de, $1111                                   ; $6525: $11 $11 $11
	ld   de, $ff19                                   ; $6528: $11 $19 $ff
	rst  $38                                         ; $652b: $ff
	add  sp, $64                                     ; $652c: $e8 $64
	inc  de                                          ; $652e: $13
	dec  [hl]                                        ; $652f: $35
	ld   [hl], a                                     ; $6530: $77
	sbc  e                                           ; $6531: $9b
	rst  $28                                         ; $6532: $ef
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	db   $fd                                         ; $6536: $fd
	xor  b                                           ; $6537: $a8
	sbc  c                                           ; $6538: $99
	xor  b                                           ; $6539: $a8
	ld   sp, $1111                                   ; $653a: $31 $11 $11
	ld   de, $af14                                   ; $653d: $11 $14 $af
	rst  $38                                         ; $6540: $ff
	jp   hl                                          ; $6541: $e9


	ld   [hl], a                                     ; $6542: $77
	ld   b, [hl]                                     ; $6543: $46
	add  a                                           ; $6544: $87
	sub  a                                           ; $6545: $97
	ld   a, b                                        ; $6546: $78
	xor  l                                           ; $6547: $ad
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	db   $db                                         ; $654c: $db
	cp   e                                           ; $654d: $bb
	cp   c                                           ; $654e: $b9
	ld   h, c                                        ; $654f: $61
	ld   de, $1111                                   ; $6550: $11 $11 $11
	ld   de, $ce28                                   ; $6553: $11 $28 $ce
	rst  $38                                         ; $6556: $ff
	cp   e                                           ; $6557: $bb
	xor  c                                           ; $6558: $a9
	sbc  c                                           ; $6559: $99
	adc  b                                           ; $655a: $88
	halt                                             ; $655b: $76
	ld   a, c                                        ; $655c: $79
	rst  JumpTable                                         ; $655d: $df
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	db   $fd                                         ; $6562: $fd
	res  0, h                                        ; $6563: $cb $84
	ld   de, $1111                                   ; $6565: $11 $11 $11
	ld   de, $5a11                                   ; $6568: $11 $11 $5a
	sbc  $fd                                         ; $656b: $de $fd
	call z, $a9aa                                    ; $656d: $cc $aa $a9
	xor  b                                           ; $6570: $a8
	ld   [hl], a                                     ; $6571: $77
	adc  d                                           ; $6572: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6573: $cf
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	rst  $38                                         ; $6577: $ff
	cp   $ca                                         ; $6578: $fe $ca
	ld   h, c                                        ; $657a: $61
	ld   de, $1111                                   ; $657b: $11 $11 $11
	ld   de, $4611                                   ; $657e: $11 $11 $46
	adc  e                                           ; $6581: $8b
	cp   e                                           ; $6582: $bb
	cp   e                                           ; $6583: $bb
	call $ecdf                                       ; $6584: $cd $df $ec
	cp   d                                           ; $6587: $ba
	sbc  d                                           ; $6588: $9a
	xor  h                                           ; $6589: $ac
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	db   $ed                                         ; $658e: $ed
	call c, Call_0e3_4297                            ; $658f: $dc $97 $42
	ld   de, $1111                                   ; $6592: $11 $11 $11
	ld   de, $1111                                   ; $6595: $11 $11 $11
	ld   de, $6924                                   ; $6598: $11 $24 $69
	sbc  e                                           ; $659b: $9b
	cp   e                                           ; $659c: $bb
	cp   e                                           ; $659d: $bb
	cp   l                                           ; $659e: $bd
	sbc  $ff                                         ; $659f: $de $ff
	rst  $38                                         ; $65a1: $ff
	rst  $38                                         ; $65a2: $ff
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	rst  $38                                         ; $65a5: $ff
	cp   $cb                                         ; $65a6: $fe $cb
	xor  b                                           ; $65a8: $a8
	ld   h, h                                        ; $65a9: $64
	ld   hl, $1111                                   ; $65aa: $21 $11 $11
	ld   de, $1111                                   ; $65ad: $11 $11 $11
	ld   [de], a                                     ; $65b0: $12
	ld   b, [hl]                                     ; $65b1: $46
	adc  b                                           ; $65b2: $88
	adc  c                                           ; $65b3: $89
	sbc  h                                           ; $65b4: $9c
	adc  $ff                                         ; $65b5: $ce $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	rst  $38                                         ; $65ba: $ff
	rst  $38                                         ; $65bb: $ff
	rst  $38                                         ; $65bc: $ff
	rst  $38                                         ; $65bd: $ff
	db   $ed                                         ; $65be: $ed
	xor  b                                           ; $65bf: $a8
	ld   d, d                                        ; $65c0: $52
	ld   de, $1111                                   ; $65c1: $11 $11 $11
	ld   de, $1111                                   ; $65c4: $11 $11 $11
	ld   [de], a                                     ; $65c7: $12
	ld   d, [hl]                                     ; $65c8: $56
	ld   a, b                                        ; $65c9: $78
	ld   a, b                                        ; $65ca: $78
	cp   e                                           ; $65cb: $bb
	rst  JumpTable                                         ; $65cc: $df
	rst  $38                                         ; $65cd: $ff
	rst  $38                                         ; $65ce: $ff
	rst  $38                                         ; $65cf: $ff
	rst  $38                                         ; $65d0: $ff
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	rst  $38                                         ; $65d3: $ff
	cp   $ca                                         ; $65d4: $fe $ca
	sub  [hl]                                        ; $65d6: $96
	ld   sp, $1111                                   ; $65d7: $31 $11 $11
	ld   de, $1111                                   ; $65da: $11 $11 $11
	ld   de, $3511                                   ; $65dd: $11 $11 $35
	ld   h, [hl]                                     ; $65e0: $66
	ld   a, c                                        ; $65e1: $79
	cp   l                                           ; $65e2: $bd
	rst  $38                                         ; $65e3: $ff
	rst  $38                                         ; $65e4: $ff
	rst  $38                                         ; $65e5: $ff
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	cp   $db                                         ; $65eb: $fe $db
	sub  a                                           ; $65ed: $97
	ld   b, c                                        ; $65ee: $41
	ld   de, $1111                                   ; $65ef: $11 $11 $11
	ld   de, $1111                                   ; $65f2: $11 $11 $11
	ld   de, $7735                                   ; $65f5: $11 $35 $77
	adc  c                                           ; $65f8: $89
	adc  $ff                                         ; $65f9: $ce $ff
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	rst  $38                                         ; $65fd: $ff
	rst  $38                                         ; $65fe: $ff
	rst  $38                                         ; $65ff: $ff
	rst  $38                                         ; $6600: $ff
	rst  $38                                         ; $6601: $ff
	rst  $38                                         ; $6602: $ff
	db   $ec                                         ; $6603: $ec
	ret                                              ; $6604: $c9


	ld   h, e                                        ; $6605: $63
	ld   de, $1111                                   ; $6606: $11 $11 $11
	ld   de, $1111                                   ; $6609: $11 $11 $11
	ld   de, $6813                                   ; $660c: $11 $13 $68
	sbc  c                                           ; $660f: $99
	xor  h                                           ; $6610: $ac
	rst  $28                                         ; $6611: $ef
	rst  $38                                         ; $6612: $ff
	rst  $38                                         ; $6613: $ff
	rst  $38                                         ; $6614: $ff
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	db   $fd                                         ; $661a: $fd
	jp   z, $2195                                    ; $661b: $ca $95 $21

	ld   de, $1111                                   ; $661e: $11 $11 $11
	ld   de, $1111                                   ; $6621: $11 $11 $11
	ld   de, $8936                                   ; $6624: $11 $36 $89
	sbc  d                                           ; $6627: $9a
	adc  $ff                                         ; $6628: $ce $ff
	rst  $38                                         ; $662a: $ff
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	call c, Call_0e3_75ba                            ; $6632: $dc $ba $75
	ld   hl, $1111                                   ; $6635: $21 $11 $11
	ld   de, $1111                                   ; $6638: $11 $11 $11
	ld   de, $5812                                   ; $663b: $11 $12 $58
	adc  c                                           ; $663e: $89
	sbc  h                                           ; $663f: $9c
	rst  JumpTable                                         ; $6640: $df
	rst  $38                                         ; $6641: $ff
	rst  $38                                         ; $6642: $ff
	rst  $38                                         ; $6643: $ff
	rst  $38                                         ; $6644: $ff
	rst  $38                                         ; $6645: $ff
	rst  $38                                         ; $6646: $ff
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	db   $dd                                         ; $664a: $dd
	jp   z, $1174                                    ; $664b: $ca $74 $11

	ld   de, $1111                                   ; $664e: $11 $11 $11
	ld   de, $1111                                   ; $6651: $11 $11 $11
	ld   [de], a                                     ; $6654: $12
	ld   e, b                                        ; $6655: $58
	sbc  c                                           ; $6656: $99
	xor  h                                           ; $6657: $ac
	rst  $28                                         ; $6658: $ef
	rst  $38                                         ; $6659: $ff
	rst  $38                                         ; $665a: $ff
	rst  $38                                         ; $665b: $ff
	rst  $38                                         ; $665c: $ff
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
	db   $ec                                         ; $6662: $ec
	ret                                              ; $6663: $c9


	add  l                                           ; $6664: $85
	ld   de, $1111                                   ; $6665: $11 $11 $11
	ld   de, $1111                                   ; $6668: $11 $11 $11
	ld   de, $6812                                   ; $666b: $11 $12 $68
	sbc  c                                           ; $666e: $99
	xor  h                                           ; $666f: $ac
	rst  JumpTable                                         ; $6670: $df
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	rst  $38                                         ; $6678: $ff
	rst  $38                                         ; $6679: $ff
	db   $ed                                         ; $667a: $ed
	res  2, [hl]                                     ; $667b: $cb $96
	ld   hl, $1111                                   ; $667d: $21 $11 $11
	ld   de, $1111                                   ; $6680: $11 $11 $11
	ld   de, $3711                                   ; $6683: $11 $11 $37

Jump_0e3_6686:
	sbc  c                                           ; $6686: $99
	xor  d                                           ; $6687: $aa
	sbc  $ff                                         ; $6688: $de $ff
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	xor  $cb                                         ; $6692: $ee $cb
	xor  b                                           ; $6694: $a8
	ld   d, c                                        ; $6695: $51
	ld   de, $1111                                   ; $6696: $11 $11 $11
	ld   de, $1111                                   ; $6699: $11 $11 $11
	ld   de, $9b15                                   ; $669c: $11 $15 $9b
	cp   h                                           ; $669f: $bc
	rst  JumpTable                                         ; $66a0: $df
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	rst  $38                                         ; $66a8: $ff

Jump_0e3_66a9:
	rst  $38                                         ; $66a9: $ff
	db   $db                                         ; $66aa: $db
	sub  a                                           ; $66ab: $97
	ld   h, d                                        ; $66ac: $62
	ld   de, $1111                                   ; $66ad: $11 $11 $11
	ld   de, $1311                                   ; $66b0: $11 $11 $13
	ld   de, $9e43                                   ; $66b3: $11 $43 $9e
	rst  JumpTable                                         ; $66b6: $df
	db   $fc                                         ; $66b7: $fc
	or   a                                           ; $66b8: $b7
	adc  h                                           ; $66b9: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66ba: $cf
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	rst  $38                                         ; $66c1: $ff
	and  a                                           ; $66c2: $a7
	ld   h, d                                        ; $66c3: $62
	ld   de, $1111                                   ; $66c4: $11 $11 $11
	ld   de, $5e11                                   ; $66c7: $11 $11 $5e
	rst  $38                                         ; $66ca: $ff
	rst  $38                                         ; $66cb: $ff
	or   h                                           ; $66cc: $b4
	ld   d, c                                        ; $66cd: $51
	jr   c, jr_0e3_66f8                              ; $66ce: $38 $28

	ld   [hl], l                                     ; $66d0: $75
	cp   l                                           ; $66d1: $bd
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	and  h                                           ; $66d5: $a4
	ld   d, h                                        ; $66d6: $54
	ld   e, c                                        ; $66d7: $59
	cp   h                                           ; $66d8: $bc
	rst  $28                                         ; $66d9: $ef
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	db   $e3                                         ; $66dc: $e3
	ld   de, $1111                                   ; $66dd: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $66e0: $11 $11 $ff
	rst  $38                                         ; $66e3: $ff
	rst  $38                                         ; $66e4: $ff
	ld   h, c                                        ; $66e5: $61
	ld   de, $1911                                   ; $66e6: $11 $11 $19
	call c, $ffff                                    ; $66e9: $dc $ff $ff
	rst  $38                                         ; $66ec: $ff
	di                                               ; $66ed: $f3
	ld   de, $5e11                                   ; $66ee: $11 $11 $5e
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	db   $fc                                         ; $66f4: $fc
	ld   de, $1111                                   ; $66f5: $11 $11 $11

jr_0e3_66f8:
	ld   de, $1f11                                   ; $66f8: $11 $11 $1f
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	ldh  a, [c]                                      ; $66fd: $f2
	ld   de, $5611                                   ; $66fe: $11 $11 $56
	sbc  a                                           ; $6701: $9f
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	rst  $38                                         ; $6704: $ff
	push af                                          ; $6705: $f5
	ld   de, $8d11                                   ; $6706: $11 $11 $8d
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	rst  $38                                         ; $670b: $ff
	rst  $38                                         ; $670c: $ff
	ld   h, c                                        ; $670d: $61
	ld   de, $1111                                   ; $670e: $11 $11 $11
	ld   de, $af11                                   ; $6711: $11 $11 $af
	rst  $38                                         ; $6714: $ff
	ld   a, [$1111]                                  ; $6715: $fa $11 $11
	rla                                              ; $6718: $17
	ld   a, [$ffff]                                  ; $6719: $fa $ff $ff
	rst  $38                                         ; $671c: $ff
	ld   sp, hl                                      ; $671d: $f9
	ld   de, $6f11                                   ; $671e: $11 $11 $6f
	rst  $38                                         ; $6721: $ff
	rst  $38                                         ; $6722: $ff
	rst  $38                                         ; $6723: $ff
	rst  $38                                         ; $6724: $ff
	di                                               ; $6725: $f3
	ld   de, $1111                                   ; $6726: $11 $11 $11
	ld   de, $1111                                   ; $6729: $11 $11 $11
	rst  $38                                         ; $672c: $ff
	rst  $38                                         ; $672d: $ff
	and  c                                           ; $672e: $a1
	ld   de, $1f11                                   ; $672f: $11 $11 $1f
	sbc  e                                           ; $6732: $9b
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	ld   d, c                                        ; $6736: $51
	ld   de, $ff68                                   ; $6737: $11 $68 $ff
	xor  a                                           ; $673a: $af
	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	cp   $11                                         ; $673d: $fe $11
	ld   de, $1111                                   ; $673f: $11 $11 $11
	ld   de, $1f11                                   ; $6742: $11 $11 $1f
	rst  $38                                         ; $6745: $ff
	ei                                               ; $6746: $fb
	ld   de, $1111                                   ; $6747: $11 $11 $11
	ld   sp, hl                                      ; $674a: $f9
	xor  a                                           ; $674b: $af
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	di                                               ; $674e: $f3
	ld   de, $4e28                                   ; $674f: $11 $28 $4e
	ret  c                                           ; $6752: $d8

	rst  $38                                         ; $6753: $ff
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	sub  c                                           ; $6756: $91
	ld   de, $1111                                   ; $6757: $11 $11 $11
	ld   de, $1111                                   ; $675a: $11 $11 $11
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	pop  af                                          ; $675f: $f1
	ld   de, $1e11                                   ; $6760: $11 $11 $1e
	jp   z, $ffff                                    ; $6763: $ca $ff $ff

	rst  $38                                         ; $6766: $ff
	ld   d, d                                        ; $6767: $52
	inc  d                                           ; $6768: $14
	ld   b, c                                        ; $6769: $41
	adc  d                                           ; $676a: $8a
	cp   a                                           ; $676b: $bf
	rst  $38                                         ; $676c: $ff
	rst  $38                                         ; $676d: $ff
	rst  $30                                         ; $676e: $f7
	ld   de, $1111                                   ; $676f: $11 $11 $11
	ld   de, $1111                                   ; $6772: $11 $11 $11
	rra                                              ; $6775: $1f
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	ld   de, $2111                                   ; $6778: $11 $11 $21
	ei                                               ; $677b: $fb
	sbc  a                                           ; $677c: $9f
	rst  $38                                         ; $677d: $ff
	rst  $38                                         ; $677e: $ff
	push af                                          ; $677f: $f5
	ld   b, c                                        ; $6780: $41
	inc  hl                                          ; $6781: $23
	jr   @-$32                                       ; $6782: $18 $cc

	rst  $38                                         ; $6784: $ff
	rst  $38                                         ; $6785: $ff
	rst  $38                                         ; $6786: $ff
	ld   d, c                                        ; $6787: $51
	ld   de, $1111                                   ; $6788: $11 $11 $11
	ld   de, $1111                                   ; $678b: $11 $11 $11
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
	pop  bc                                          ; $6790: $c1
	ld   de, $1e31                                   ; $6791: $11 $31 $1e
	ld   a, c                                        ; $6794: $79
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff

Jump_0e3_6797:
	cp   $64                                         ; $6797: $fe $64
	ld   [de], a                                     ; $6799: $12
	ld   de, $ff8a                                   ; $679a: $11 $8a $ff
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	call nc, $1111                                   ; $679f: $d4 $11 $11
	ld   de, $1111                                   ; $67a2: $11 $11 $11
	ld   de, $ff2f                                   ; $67a5: $11 $2f $ff
	pop  af                                          ; $67a8: $f1
	ld   de, $111c                                   ; $67a9: $11 $1c $11
	or   h                                           ; $67ac: $b4
	rst  $38                                         ; $67ad: $ff
	rst  $38                                         ; $67ae: $ff
	rst  $38                                         ; $67af: $ff
	rst  ToBoot                                         ; $67b0: $c7
	ld   de, $1b31                                   ; $67b1: $11 $31 $1b
	rst  $38                                         ; $67b4: $ff
	rst  $38                                         ; $67b5: $ff
	rst  $38                                         ; $67b6: $ff
	ld   sp, hl                                      ; $67b7: $f9
	ld   hl, $1111                                   ; $67b8: $21 $11 $11
	ld   de, $1111                                   ; $67bb: $11 $11 $11
	rra                                              ; $67be: $1f
	rst  $38                                         ; $67bf: $ff
	ei                                               ; $67c0: $fb
	ld   de, $8119                                   ; $67c1: $11 $19 $81
	dec  d                                           ; $67c4: $15
	xor  a                                           ; $67c5: $af
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	ld   sp, hl                                      ; $67c8: $f9
	ld   d, c                                        ; $67c9: $51
	ld   hl, $ef15                                   ; $67ca: $21 $15 $ef
	rst  $38                                         ; $67cd: $ff
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	sub  d                                           ; $67d0: $92
	ld   de, $1111                                   ; $67d1: $11 $11 $11
	ld   de, $1a11                                   ; $67d4: $11 $11 $1a
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	ld   de, $c115                                   ; $67d9: $11 $15 $c1
	inc  de                                          ; $67dc: $13
	cp   a                                           ; $67dd: $bf
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	rst  $38                                         ; $67e0: $ff
	jp   nz, $1111                                   ; $67e1: $c2 $11 $11

	rst  JumpTable                                         ; $67e4: $df
	rst  $38                                         ; $67e5: $ff
	rst  $38                                         ; $67e6: $ff
	rst  $38                                         ; $67e7: $ff
	push af                                          ; $67e8: $f5
	ld   de, $1111                                   ; $67e9: $11 $11 $11
	ld   de, $1511                                   ; $67ec: $11 $11 $15
	rst  $38                                         ; $67ef: $ff
	rst  $38                                         ; $67f0: $ff
	ld   h, c                                        ; $67f1: $61
	inc  hl                                          ; $67f2: $23
	ld   h, c                                        ; $67f3: $61
	ld   de, $ffaf                                   ; $67f4: $11 $af $ff
	rst  $38                                         ; $67f7: $ff
	rst  $38                                         ; $67f8: $ff
	push af                                          ; $67f9: $f5
	ld   de, $9e11                                   ; $67fa: $11 $11 $9e
	rst  $38                                         ; $67fd: $ff
	rst  $38                                         ; $67fe: $ff
	rst  $38                                         ; $67ff: $ff
	ei                                               ; $6800: $fb
	ld   de, $1111                                   ; $6801: $11 $11 $11
	ld   de, $1111                                   ; $6804: $11 $11 $11
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	or   a                                           ; $6809: $b7
	ld   d, l                                        ; $680a: $55
	ld   d, c                                        ; $680b: $51
	ld   de, $ff7f                                   ; $680c: $11 $7f $ff
	rst  $38                                         ; $680f: $ff
	rst  $38                                         ; $6810: $ff
	ld   a, [$1111]                                  ; $6811: $fa $11 $11
	add  hl, sp                                      ; $6814: $39
	rst  $38                                         ; $6815: $ff
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	ld   sp, $1111                                   ; $6819: $31 $11 $11
	ld   de, $1111                                   ; $681c: $11 $11 $11
	rst  $38                                         ; $681f: $ff
	rst  $38                                         ; $6820: $ff
	ei                                               ; $6821: $fb
	or   a                                           ; $6822: $b7
	ld   hl, $2e11                                   ; $6823: $21 $11 $2e
	rst  $38                                         ; $6826: $ff
	rst  $38                                         ; $6827: $ff
	rst  $38                                         ; $6828: $ff
	rst  $38                                         ; $6829: $ff
	ld   sp, $1111                                   ; $682a: $31 $11 $11
	ld   l, l                                        ; $682d: $6d
	rst  $38                                         ; $682e: $ff
	rst  $38                                         ; $682f: $ff
	rst  $38                                         ; $6830: $ff
	jp   nz, $1111                                   ; $6831: $c2 $11 $11

	ld   de, $1111                                   ; $6834: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6837: $cf
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	rst  $38                                         ; $683a: $ff
	ld   [hl], c                                     ; $683b: $71
	ld   de, $9e12                                   ; $683c: $11 $12 $9e
	rst  $38                                         ; $683f: $ff
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	ei                                               ; $6842: $fb
	ld   sp, $1411                                   ; $6843: $31 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6846: $cf
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	db   $fc                                         ; $6849: $fc
	ld   hl, $1111                                   ; $684a: $21 $11 $11
	ld   de, $1f11                                   ; $684d: $11 $11 $1f
	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	rst  $38                                         ; $6852: $ff
	push af                                          ; $6853: $f5
	ld   de, $1111                                   ; $6854: $11 $11 $11
	ld   e, a                                        ; $6857: $5f
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	cp   $71                                         ; $685b: $fe $71
	inc  de                                          ; $685d: $13
	ld   b, l                                        ; $685e: $45
	sbc  [hl]                                        ; $685f: $9e
	rst  $38                                         ; $6860: $ff
	db   $fc                                         ; $6861: $fc
	ld   [hl], l                                     ; $6862: $75
	ld   sp, $1111                                   ; $6863: $31 $11 $11
	ld   de, $8e12                                   ; $6866: $11 $12 $8e
	rst  $38                                         ; $6869: $ff
	rst  $38                                         ; $686a: $ff
	rst  $38                                         ; $686b: $ff
	rst  $28                                         ; $686c: $ef
	or   l                                           ; $686d: $b5
	ld   de, $9b13                                   ; $686e: $11 $13 $9b
	cp   a                                           ; $6871: $bf
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	db   $eb                                         ; $6876: $eb
	call z, Call_0e3_61ba                            ; $6877: $cc $ba $61
	ld   de, $1111                                   ; $687a: $11 $11 $11
	ld   de, $1311                                   ; $687d: $11 $11 $13
	ld   h, a                                        ; $6880: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6881: $cf
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	or   [hl]                                        ; $6886: $b6
	ld   b, [hl]                                     ; $6887: $46
	sbc  c                                           ; $6888: $99
	ld   h, l                                        ; $6889: $65
	ld   a, c                                        ; $688a: $79
	call $ffde                                       ; $688b: $cd $de $ff
	rst  $38                                         ; $688e: $ff
	rst  $38                                         ; $688f: $ff
	rst  $38                                         ; $6890: $ff
	or   l                                           ; $6891: $b5
	ld   de, $1111                                   ; $6892: $11 $11 $11
	ld   de, $1111                                   ; $6895: $11 $11 $11
	inc  de                                          ; $6898: $13
	adc  h                                           ; $6899: $8c
	rst  $38                                         ; $689a: $ff
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	rst  $38                                         ; $689d: $ff
	rst  $38                                         ; $689e: $ff
	call c, $a7bb                                    ; $689f: $dc $bb $a7
	ld   h, [hl]                                     ; $68a2: $66
	ld   h, a                                        ; $68a3: $67
	ld   a, b                                        ; $68a4: $78
	adc  d                                           ; $68a5: $8a
	cp   h                                           ; $68a6: $bc
	call z, $b9cb                                    ; $68a7: $cc $cb $b9
	sbc  b                                           ; $68aa: $98
	ld   [hl], a                                     ; $68ab: $77
	ld   h, h                                        ; $68ac: $64
	inc  [hl]                                        ; $68ad: $34
	ld   b, h                                        ; $68ae: $44
	ld   b, h                                        ; $68af: $44
	ld   d, l                                        ; $68b0: $55
	ld   d, h                                        ; $68b1: $54
	ld   b, e                                        ; $68b2: $43
	inc  hl                                          ; $68b3: $23
	inc  [hl]                                        ; $68b4: $34
	ld   b, l                                        ; $68b5: $45
	ld   h, a                                        ; $68b6: $67
	ld   a, c                                        ; $68b7: $79
	xor  d                                           ; $68b8: $aa
	cp   h                                           ; $68b9: $bc
	call z, $ccbc                                    ; $68ba: $cc $bc $cc
	set  1, h                                        ; $68bd: $cb $cc
	call $dddd                                       ; $68bf: $cd $dd $dd
	call c, $bbcb                                    ; $68c2: $dc $cb $bb
	xor  c                                           ; $68c5: $a9
	xor  d                                           ; $68c6: $aa
	sbc  b                                           ; $68c7: $98
	ld   [hl], a                                     ; $68c8: $77
	ld   h, l                                        ; $68c9: $65
	ld   b, e                                        ; $68ca: $43
	ld   de, $1111                                   ; $68cb: $11 $11 $11
	ld   de, $2411                                   ; $68ce: $11 $11 $24
	ld   d, [hl]                                     ; $68d1: $56
	ld   [hl], a                                     ; $68d2: $77
	adc  c                                           ; $68d3: $89
	xor  d                                           ; $68d4: $aa
	xor  e                                           ; $68d5: $ab
	cp   h                                           ; $68d6: $bc
	xor  $ff                                         ; $68d7: $ee $ff
	rst  $38                                         ; $68d9: $ff
	rst  $38                                         ; $68da: $ff
	cp   $ed                                         ; $68db: $fe $ed
	call $cbcc                                       ; $68dd: $cd $cc $cb
	cp   d                                           ; $68e0: $ba
	sbc  c                                           ; $68e1: $99
	add  a                                           ; $68e2: $87
	ld   d, h                                        ; $68e3: $54
	ld   [hl-], a                                    ; $68e4: $32
	ld   de, $1111                                   ; $68e5: $11 $11 $11
	ld   de, $1211                                   ; $68e8: $11 $11 $12
	inc  [hl]                                        ; $68eb: $34
	ld   d, [hl]                                     ; $68ec: $56
	ld   a, b                                        ; $68ed: $78
	sbc  c                                           ; $68ee: $99
	xor  e                                           ; $68ef: $ab
	cp   e                                           ; $68f0: $bb
	adc  $ef                                         ; $68f1: $ce $ef
	xor  $fe                                         ; $68f3: $ee $fe
	rst  $28                                         ; $68f5: $ef
	xor  $ee                                         ; $68f6: $ee $ee
	call c, $bbcc                                    ; $68f8: $dc $cc $bb
	xor  c                                           ; $68fb: $a9
	sub  a                                           ; $68fc: $97
	ld   h, [hl]                                     ; $68fd: $66
	ld   d, h                                        ; $68fe: $54
	inc  sp                                          ; $68ff: $33
	ld   [hl+], a                                    ; $6900: $22
	ld   hl, $1111                                   ; $6901: $21 $11 $11
	ld   de, $3322                                   ; $6904: $11 $22 $33
	ld   b, l                                        ; $6907: $45
	ld   h, [hl]                                     ; $6908: $66
	ld   a, b                                        ; $6909: $78
	sbc  d                                           ; $690a: $9a
	xor  e                                           ; $690b: $ab
	xor  e                                           ; $690c: $ab
	cp   e                                           ; $690d: $bb
	call z, $eeed                                    ; $690e: $cc $ed $ee
	rst  $28                                         ; $6911: $ef
	cp   $dd                                         ; $6912: $fe $dd
	db   $dd                                         ; $6914: $dd
	call z, $a8ba                                    ; $6915: $cc $ba $a8
	add  a                                           ; $6918: $87
	ld   [hl], a                                     ; $6919: $77
	ld   h, [hl]                                     ; $691a: $66
	ld   d, l                                        ; $691b: $55
	ld   b, h                                        ; $691c: $44
	ld   [hl-], a                                    ; $691d: $32
	ld   hl, $1111                                   ; $691e: $21 $11 $11
	ld   [de], a                                     ; $6921: $12
	inc  hl                                          ; $6922: $23
	ld   b, h                                        ; $6923: $44
	ld   d, l                                        ; $6924: $55
	ld   h, a                                        ; $6925: $67
	adc  c                                           ; $6926: $89
	sbc  c                                           ; $6927: $99
	xor  d                                           ; $6928: $aa
	cp   e                                           ; $6929: $bb
	call z, $eddd                                    ; $692a: $cc $dd $ed
	xor  $dd                                         ; $692d: $ee $dd
	db   $ed                                         ; $692f: $ed
	call c, $cbdc                                    ; $6930: $dc $dc $cb
	cp   d                                           ; $6933: $ba
	sbc  b                                           ; $6934: $98
	add  a                                           ; $6935: $87
	halt                                             ; $6936: $76
	ld   d, l                                        ; $6937: $55
	ld   b, h                                        ; $6938: $44
	ld   b, e                                        ; $6939: $43
	ld   [hl-], a                                    ; $693a: $32
	ld   [hl+], a                                    ; $693b: $22
	ld   de, $2211                                   ; $693c: $11 $11 $22
	inc  [hl]                                        ; $693f: $34
	ld   b, l                                        ; $6940: $45
	ld   h, a                                        ; $6941: $67
	ld   a, b                                        ; $6942: $78
	adc  c                                           ; $6943: $89
	sbc  d                                           ; $6944: $9a
	cp   d                                           ; $6945: $ba
	xor  e                                           ; $6946: $ab
	set  1, h                                        ; $6947: $cb $cc
	sbc  $ee                                         ; $6949: $de $ee
	xor  $ee                                         ; $694b: $ee $ee
	call c, $b9bb                                    ; $694d: $dc $bb $b9
	xor  c                                           ; $6950: $a9
	adc  c                                           ; $6951: $89
	add  a                                           ; $6952: $87
	ld   [hl], a                                     ; $6953: $77
	ld   h, [hl]                                     ; $6954: $66
	ld   d, h                                        ; $6955: $54
	ld   b, h                                        ; $6956: $44
	ld   b, e                                        ; $6957: $43
	inc  sp                                          ; $6958: $33
	ld   [de], a                                     ; $6959: $12
	ld   [hl+], a                                    ; $695a: $22
	inc  sp                                          ; $695b: $33
	inc  [hl]                                        ; $695c: $34
	ld   d, l                                        ; $695d: $55
	ld   h, [hl]                                     ; $695e: $66
	ld   [hl], a                                     ; $695f: $77
	adc  b                                           ; $6960: $88
	sbc  d                                           ; $6961: $9a
	xor  d                                           ; $6962: $aa
	call z, $ddbc                                    ; $6963: $cc $bc $dd
	db   $dd                                         ; $6966: $dd
	db   $dd                                         ; $6967: $dd
	db   $dd                                         ; $6968: $dd
	call c, $ccdc                                    ; $6969: $dc $dc $cc
	cp   e                                           ; $696c: $bb
	cp   d                                           ; $696d: $ba
	sbc  c                                           ; $696e: $99
	adc  b                                           ; $696f: $88
	halt                                             ; $6970: $76
	ld   h, [hl]                                     ; $6971: $66
	ld   h, [hl]                                     ; $6972: $66
	ld   b, l                                        ; $6973: $45
	ld   d, h                                        ; $6974: $54
	inc  sp                                          ; $6975: $33
	ld   [hl+], a                                    ; $6976: $22
	ld   b, e                                        ; $6977: $43
	inc  h                                           ; $6978: $24
	ld   b, e                                        ; $6979: $43
	ld   b, l                                        ; $697a: $45
	ld   h, [hl]                                     ; $697b: $66
	ld   [hl], a                                     ; $697c: $77
	adc  d                                           ; $697d: $8a
	sbc  d                                           ; $697e: $9a
	xor  h                                           ; $697f: $ac
	call $eedd                                       ; $6980: $cd $dd $ee
	rst  $38                                         ; $6983: $ff
	rst  $38                                         ; $6984: $ff
	rst  $38                                         ; $6985: $ff
	rst  $38                                         ; $6986: $ff
	db   $ed                                         ; $6987: $ed
	db   $dd                                         ; $6988: $dd
	cp   d                                           ; $6989: $ba
	xor  c                                           ; $698a: $a9
	ld   h, h                                        ; $698b: $64
	ld   [hl-], a                                    ; $698c: $32
	ld   de, $1111                                   ; $698d: $11 $11 $11
	ld   de, $1111                                   ; $6990: $11 $11 $11
	ld   de, $6813                                   ; $6993: $11 $13 $68
	xor  [hl]                                        ; $6996: $ae
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	cp   $cb                                         ; $699c: $fe $cb
	cp   d                                           ; $699e: $ba
	xor  c                                           ; $699f: $a9
	sbc  e                                           ; $69a0: $9b
	cp   h                                           ; $69a1: $bc
	cp   h                                           ; $69a2: $bc
	call $99c9                                       ; $69a3: $cd $c9 $99
	ld   b, d                                        ; $69a6: $42
	ld   de, $1111                                   ; $69a7: $11 $11 $11
	ld   de, $1111                                   ; $69aa: $11 $11 $11
	ld   de, $df6a                                   ; $69ad: $11 $6a $df
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	rst  $38                                         ; $69b2: $ff
	rst  $38                                         ; $69b3: $ff
	rst  $38                                         ; $69b4: $ff
	db   $eb                                         ; $69b5: $eb
	ld   h, e                                        ; $69b6: $63
	inc  [hl]                                        ; $69b7: $34
	ld   [hl+], a                                    ; $69b8: $22
	ld   l, c                                        ; $69b9: $69
	cp   l                                           ; $69ba: $bd
	rst  $38                                         ; $69bb: $ff
	rst  $38                                         ; $69bc: $ff
	rst  $38                                         ; $69bd: $ff
	cp   e                                           ; $69be: $bb
	ld   h, c                                        ; $69bf: $61
	ld   de, $1111                                   ; $69c0: $11 $11 $11
	ld   de, $1111                                   ; $69c3: $11 $11 $11
	ld   c, e                                        ; $69c6: $4b
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	rst  $38                                         ; $69cc: $ff
	ret  c                                           ; $69cd: $d8

	ld   sp, $1111                                   ; $69ce: $31 $11 $11
	dec  d                                           ; $69d1: $15
	xor  [hl]                                        ; $69d2: $ae
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	rst  $38                                         ; $69d5: $ff
	db   $fd                                         ; $69d6: $fd
	sub  e                                           ; $69d7: $93
	ld   de, $1111                                   ; $69d8: $11 $11 $11
	ld   de, $1111                                   ; $69db: $11 $11 $11
	ld   l, a                                        ; $69de: $6f
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	db   $fd                                         ; $69e4: $fd
	sub  h                                           ; $69e5: $94
	ld   de, $1111                                   ; $69e6: $11 $11 $11
	rla                                              ; $69e9: $17
	rst  JumpTable                                         ; $69ea: $df
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	rst  $38                                         ; $69ed: $ff
	ld   sp, hl                                      ; $69ee: $f9
	ld   d, c                                        ; $69ef: $51
	ld   de, $1111                                   ; $69f0: $11 $11 $11
	ld   de, $1511                                   ; $69f3: $11 $11 $15
	cp   a                                           ; $69f6: $bf
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	jp   hl                                          ; $69fc: $e9


	ld   de, $1111                                   ; $69fd: $11 $11 $11
	inc  de                                          ; $6a00: $13
	ld   a, a                                        ; $6a01: $7f
	rst  $38                                         ; $6a02: $ff
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	sub  e                                           ; $6a06: $93
	ld   de, $1111                                   ; $6a07: $11 $11 $11
	ld   de, $1111                                   ; $6a0a: $11 $11 $11
	ld   a, h                                        ; $6a0d: $7c
	rst  $38                                         ; $6a0e: $ff
	rst  $38                                         ; $6a0f: $ff
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	and  h                                           ; $6a14: $a4
	ld   de, $1111                                   ; $6a15: $11 $11 $11
	add  hl, sp                                      ; $6a18: $39
	rst  $38                                         ; $6a19: $ff
	rst  $38                                         ; $6a1a: $ff
	rst  $38                                         ; $6a1b: $ff
	rst  $38                                         ; $6a1c: $ff
	rst  $20                                         ; $6a1d: $e7
	ld   sp, $1111                                   ; $6a1e: $31 $11 $11
	ld   de, $1111                                   ; $6a21: $11 $11 $11
	ld   de, $ffcf                                   ; $6a24: $11 $cf $ff
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	db   $fc                                         ; $6a2b: $fc
	or   h                                           ; $6a2c: $b4
	ld   de, $1411                                   ; $6a2d: $11 $11 $14
	adc  h                                           ; $6a30: $8c
	rst  $38                                         ; $6a31: $ff
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	cp   $94                                         ; $6a34: $fe $94
	ld   de, $1111                                   ; $6a36: $11 $11 $11
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	ld   de, $ff9d                                   ; $6a3c: $11 $9d $ff
	rst  $38                                         ; $6a3f: $ff
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	cp   c                                           ; $6a44: $b9
	ld   d, c                                        ; $6a45: $51
	inc  de                                          ; $6a46: $13
	inc  [hl]                                        ; $6a47: $34
	ld   a, e                                        ; $6a48: $7b
	rst  $38                                         ; $6a49: $ff
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	db   $fc                                         ; $6a4c: $fc
	sub  a                                           ; $6a4d: $97
	ld   sp, $1111                                   ; $6a4e: $31 $11 $11
	ld   de, $1111                                   ; $6a51: $11 $11 $11
	ld   de, $ef59                                   ; $6a54: $11 $59 $ef
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	rst  $38                                         ; $6a59: $ff
	rst  $38                                         ; $6a5a: $ff
	rst  $38                                         ; $6a5b: $ff
	ld   a, [$4356]                                  ; $6a5c: $fa $56 $43
	ld   [hl-], a                                    ; $6a5f: $32
	adc  d                                           ; $6a60: $8a
	adc  $ef                                         ; $6a61: $ce $ef
	rst  $38                                         ; $6a63: $ff
	db   $ed                                         ; $6a64: $ed
	sub  a                                           ; $6a65: $97
	ld   hl, $1111                                   ; $6a66: $21 $11 $11
	ld   de, $1111                                   ; $6a69: $11 $11 $11
	ld   de, $cf24                                   ; $6a6c: $11 $24 $cf
	rst  $38                                         ; $6a6f: $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	ld   a, [$73ba]                                  ; $6a74: $fa $ba $73
	ld   h, $67                                      ; $6a77: $26 $67
	xor  d                                           ; $6a79: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a7a: $cf
	cp   $cb                                         ; $6a7b: $fe $cb
	ret  c                                           ; $6a7d: $d8

	ld   sp, $1111                                   ; $6a7e: $31 $11 $11
	ld   de, $1111                                   ; $6a81: $11 $11 $11
	ld   de, $af11                                   ; $6a84: $11 $11 $af
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	rst  $38                                         ; $6a8c: $ff
	ld   a, [$7488]                                  ; $6a8d: $fa $88 $74
	ld   d, l                                        ; $6a90: $55
	ld   l, b                                        ; $6a91: $68
	sbc  d                                           ; $6a92: $9a
	cp   h                                           ; $6a93: $bc
	jp   hl                                          ; $6a94: $e9


	ld   l, d                                        ; $6a95: $6a
	sub  d                                           ; $6a96: $92
	ld   de, $1111                                   ; $6a97: $11 $11 $11
	ld   de, $1111                                   ; $6a9a: $11 $11 $11
	ld   de, $ce3b                                   ; $6a9d: $11 $3b $ce
	rst  $38                                         ; $6aa0: $ff
	rst  $38                                         ; $6aa1: $ff
	rst  $38                                         ; $6aa2: $ff
	rst  $38                                         ; $6aa3: $ff
	rst  $38                                         ; $6aa4: $ff
	rst  $38                                         ; $6aa5: $ff
	ld   sp, hl                                      ; $6aa6: $f9
	ld   [hl], a                                     ; $6aa7: $77
	sub  l                                           ; $6aa8: $95
	dec  d                                           ; $6aa9: $15
	sub  [hl]                                        ; $6aaa: $96
	ld   e, b                                        ; $6aab: $58
	xor  c                                           ; $6aac: $a9
	adc  c                                           ; $6aad: $89
	adc  b                                           ; $6aae: $88
	ld   d, c                                        ; $6aaf: $51
	ld   de, $1111                                   ; $6ab0: $11 $11 $11
	ld   de, $1111                                   ; $6ab3: $11 $11 $11
	ld   de, $7b7a                                   ; $6ab6: $11 $7a $7b
	rst  $38                                         ; $6ab9: $ff
	rst  $38                                         ; $6aba: $ff
	rst  $38                                         ; $6abb: $ff
	rst  $38                                         ; $6abc: $ff
	rst  $38                                         ; $6abd: $ff
	rst  $38                                         ; $6abe: $ff
	xor  $c7                                         ; $6abf: $ee $c7
	ld   h, l                                        ; $6ac1: $65
	ld   h, l                                        ; $6ac2: $65
	ld   h, $75                                      ; $6ac3: $26 $75
	ld   e, b                                        ; $6ac5: $58
	cp   b                                           ; $6ac6: $b8
	ld   e, b                                        ; $6ac7: $58
	sub  e                                           ; $6ac8: $93
	dec  d                                           ; $6ac9: $15
	ld   hl, $1111                                   ; $6aca: $21 $11 $11
	ld   de, $1111                                   ; $6acd: $11 $11 $11
	ld   [hl], $66                                   ; $6ad0: $36 $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad2: $cf
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	rst  $38                                         ; $6ad6: $ff
	cp   $ff                                         ; $6ad7: $fe $ff
	jp   hl                                          ; $6ad9: $e9


	cp   l                                           ; $6ada: $bd
	sub  e                                           ; $6adb: $93
	ld   e, e                                        ; $6adc: $5b
	ld   [hl], d                                     ; $6add: $72
	ld   h, a                                        ; $6ade: $67
	ld   h, [hl]                                     ; $6adf: $66
	ld   a, b                                        ; $6ae0: $78
	ld   [hl], l                                     ; $6ae1: $75
	ld   l, b                                        ; $6ae2: $68
	ld   h, e                                        ; $6ae3: $63
	ld   b, c                                        ; $6ae4: $41
	dec  d                                           ; $6ae5: $15
	ld   b, d                                        ; $6ae6: $42
	ld   [hl+], a                                    ; $6ae7: $22
	ld   d, h                                        ; $6ae8: $54
	ld   [hl+], a                                    ; $6ae9: $22
	ld   [hl], l                                     ; $6aea: $75
	ld   d, $a5                                      ; $6aeb: $16 $a5
	ld   b, a                                        ; $6aed: $47
	xor  c                                           ; $6aee: $a9
	cp   e                                           ; $6aef: $bb
	xor  h                                           ; $6af0: $ac
	db   $dd                                         ; $6af1: $dd
	db   $dd                                         ; $6af2: $dd
	rst  $38                                         ; $6af3: $ff
	jp   z, $99fd                                    ; $6af4: $ca $fd $99

	jp   z, $9778                                    ; $6af7: $ca $78 $97

	ld   h, l                                        ; $6afa: $65
	ld   l, b                                        ; $6afb: $68
	ld   h, [hl]                                     ; $6afc: $66
	xor  c                                           ; $6afd: $a9
	ld   a, c                                        ; $6afe: $79
	cp   b                                           ; $6aff: $b8
	ld   a, c                                        ; $6b00: $79
	sbc  c                                           ; $6b01: $99
	ld   a, b                                        ; $6b02: $78
	add  a                                           ; $6b03: $87
	ld   a, b                                        ; $6b04: $78
	add  [hl]                                        ; $6b05: $86
	ld   a, c                                        ; $6b06: $79
	add  [hl]                                        ; $6b07: $86
	adc  c                                           ; $6b08: $89
	ld   a, b                                        ; $6b09: $78
	add  a                                           ; $6b0a: $87
	adc  b                                           ; $6b0b: $88
	ld   a, c                                        ; $6b0c: $79
	add  [hl]                                        ; $6b0d: $86
	adc  b                                           ; $6b0e: $88
	ld   [hl], a                                     ; $6b0f: $77
	ld   [hl], a                                     ; $6b10: $77
	ld   [hl], a                                     ; $6b11: $77
	ld   a, b                                        ; $6b12: $78
	add  a                                           ; $6b13: $87
	adc  b                                           ; $6b14: $88
	sbc  b                                           ; $6b15: $98
	adc  c                                           ; $6b16: $89
	adc  d                                           ; $6b17: $8a
	xor  c                                           ; $6b18: $a9
	sbc  c                                           ; $6b19: $99
	xor  d                                           ; $6b1a: $aa
	sbc  d                                           ; $6b1b: $9a
	sbc  c                                           ; $6b1c: $99
	sbc  c                                           ; $6b1d: $99
	sbc  c                                           ; $6b1e: $99
	sbc  c                                           ; $6b1f: $99
	xor  c                                           ; $6b20: $a9
	sbc  c                                           ; $6b21: $99
	adc  c                                           ; $6b22: $89
	adc  b                                           ; $6b23: $88
	sbc  c                                           ; $6b24: $99
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	add  a                                           ; $6b27: $87
	ld   [hl], a                                     ; $6b28: $77
	ld   [hl], a                                     ; $6b29: $77
	ld   [hl], a                                     ; $6b2a: $77
	ld   [hl], a                                     ; $6b2b: $77
	ld   [hl], a                                     ; $6b2c: $77
	ld   [hl], a                                     ; $6b2d: $77
	ld   [hl], a                                     ; $6b2e: $77
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	sbc  b                                           ; $6b33: $98
	adc  c                                           ; $6b34: $89
	adc  b                                           ; $6b35: $88
	sbc  c                                           ; $6b36: $99
	sbc  b                                           ; $6b37: $98
	sbc  c                                           ; $6b38: $99
	sbc  c                                           ; $6b39: $99
	sbc  c                                           ; $6b3a: $99
	sbc  c                                           ; $6b3b: $99
	sbc  c                                           ; $6b3c: $99
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	add  a                                           ; $6b40: $87
	ld   [hl], a                                     ; $6b41: $77
	ld   [hl], a                                     ; $6b42: $77
	ld   [hl], a                                     ; $6b43: $77
	ld   [hl], a                                     ; $6b44: $77
	ld   [hl], a                                     ; $6b45: $77
	ld   a, b                                        ; $6b46: $78
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	sbc  b                                           ; $6b49: $98
	adc  c                                           ; $6b4a: $89
	adc  b                                           ; $6b4b: $88
	sbc  c                                           ; $6b4c: $99
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  c                                           ; $6b50: $89
	sbc  c                                           ; $6b51: $99
	sbc  c                                           ; $6b52: $99
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	ld   [hl], a                                     ; $6b58: $77
	ld   [hl], a                                     ; $6b59: $77
	ld   [hl], a                                     ; $6b5a: $77
	ld   [hl], a                                     ; $6b5b: $77
	ld   [hl], a                                     ; $6b5c: $77
	ld   [hl], a                                     ; $6b5d: $77
	ld   [hl], a                                     ; $6b5e: $77
	ld   [hl], a                                     ; $6b5f: $77
	ld   [hl], a                                     ; $6b60: $77
	ld   [hl], a                                     ; $6b61: $77

Call_0e3_6b62:
	ld   [hl], a                                     ; $6b62: $77
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	sbc  b                                           ; $6b66: $98
	adc  c                                           ; $6b67: $89
	sbc  c                                           ; $6b68: $99
	sbc  c                                           ; $6b69: $99
	sbc  c                                           ; $6b6a: $99
	adc  b                                           ; $6b6b: $88
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	add  a                                           ; $6b6f: $87
	ld   [hl], a                                     ; $6b70: $77
	ld   [hl], a                                     ; $6b71: $77
	ld   [hl], a                                     ; $6b72: $77
	ld   [hl], a                                     ; $6b73: $77
	ld   [hl], a                                     ; $6b74: $77
	ld   [hl], a                                     ; $6b75: $77
	ld   [hl], a                                     ; $6b76: $77
	ld   [hl], a                                     ; $6b77: $77
	ld   [hl], a                                     ; $6b78: $77
	ld   [hl], a                                     ; $6b79: $77
	ld   [hl], a                                     ; $6b7a: $77
	ld   [hl], a                                     ; $6b7b: $77
	ld   [hl], a                                     ; $6b7c: $77
	ld   [hl], a                                     ; $6b7d: $77
	ld   [hl], a                                     ; $6b7e: $77
	adc  b                                           ; $6b7f: $88
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	add  a                                           ; $6b89: $87
	ld   [hl], a                                     ; $6b8a: $77
	ld   [hl], a                                     ; $6b8b: $77
	ld   [hl], a                                     ; $6b8c: $77
	ld   [hl], a                                     ; $6b8d: $77
	ld   [hl], a                                     ; $6b8e: $77
	ld   [hl], a                                     ; $6b8f: $77
	ld   [hl], a                                     ; $6b90: $77
	ld   [hl], a                                     ; $6b91: $77
	ld   [hl], a                                     ; $6b92: $77
	ld   a, b                                        ; $6b93: $78
	adc  b                                           ; $6b94: $88
	ld   a, b                                        ; $6b95: $78
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	adc  b                                           ; $6b9a: $88
	adc  b                                           ; $6b9b: $88
	adc  b                                           ; $6b9c: $88
	adc  b                                           ; $6b9d: $88
	adc  b                                           ; $6b9e: $88
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	adc  b                                           ; $6ba1: $88
	adc  b                                           ; $6ba2: $88
	adc  b                                           ; $6ba3: $88
	adc  b                                           ; $6ba4: $88
	adc  b                                           ; $6ba5: $88
	adc  b                                           ; $6ba6: $88
	add  a                                           ; $6ba7: $87
	ld   a, b                                        ; $6ba8: $78
	ld   [hl], a                                     ; $6ba9: $77
	ld   a, b                                        ; $6baa: $78
	ld   [hl], a                                     ; $6bab: $77
	adc  b                                           ; $6bac: $88
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	adc  b                                           ; $6bb4: $88
	adc  b                                           ; $6bb5: $88
	adc  b                                           ; $6bb6: $88
	adc  b                                           ; $6bb7: $88
	adc  b                                           ; $6bb8: $88
	adc  b                                           ; $6bb9: $88
	adc  b                                           ; $6bba: $88
	adc  b                                           ; $6bbb: $88
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	adc  b                                           ; $6bc0: $88
	adc  b                                           ; $6bc1: $88
	adc  b                                           ; $6bc2: $88
	adc  b                                           ; $6bc3: $88
	ld   a, b                                        ; $6bc4: $78
	adc  b                                           ; $6bc5: $88
	adc  b                                           ; $6bc6: $88
	adc  b                                           ; $6bc7: $88
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	adc  b                                           ; $6bcc: $88
	adc  b                                           ; $6bcd: $88
	adc  b                                           ; $6bce: $88
	adc  b                                           ; $6bcf: $88
	adc  b                                           ; $6bd0: $88
	adc  b                                           ; $6bd1: $88
	adc  b                                           ; $6bd2: $88
	adc  b                                           ; $6bd3: $88
	adc  b                                           ; $6bd4: $88
	adc  b                                           ; $6bd5: $88
	adc  b                                           ; $6bd6: $88
	adc  b                                           ; $6bd7: $88
	adc  b                                           ; $6bd8: $88
	adc  b                                           ; $6bd9: $88
	adc  b                                           ; $6bda: $88
	adc  b                                           ; $6bdb: $88
	adc  b                                           ; $6bdc: $88
	adc  b                                           ; $6bdd: $88
	adc  b                                           ; $6bde: $88
	adc  b                                           ; $6bdf: $88
	adc  b                                           ; $6be0: $88
	adc  b                                           ; $6be1: $88
	adc  b                                           ; $6be2: $88
	adc  b                                           ; $6be3: $88
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  b                                           ; $6be6: $88
	adc  b                                           ; $6be7: $88
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	adc  b                                           ; $6bea: $88
	adc  b                                           ; $6beb: $88
	ld   a, b                                        ; $6bec: $78
	sub  a                                           ; $6bed: $97
	adc  b                                           ; $6bee: $88
	adc  b                                           ; $6bef: $88
	sbc  b                                           ; $6bf0: $98
	adc  c                                           ; $6bf1: $89
	sbc  b                                           ; $6bf2: $98
	adc  c                                           ; $6bf3: $89
	adc  b                                           ; $6bf4: $88
	sbc  b                                           ; $6bf5: $98
	adc  b                                           ; $6bf6: $88
	adc  b                                           ; $6bf7: $88
	adc  b                                           ; $6bf8: $88
	sbc  b                                           ; $6bf9: $98
	adc  c                                           ; $6bfa: $89
	adc  b                                           ; $6bfb: $88
	sbc  b                                           ; $6bfc: $98
	adc  b                                           ; $6bfd: $88
	adc  b                                           ; $6bfe: $88
	adc  c                                           ; $6bff: $89
	adc  b                                           ; $6c00: $88
	sbc  b                                           ; $6c01: $98
	adc  c                                           ; $6c02: $89
	adc  b                                           ; $6c03: $88
	adc  b                                           ; $6c04: $88
	adc  b                                           ; $6c05: $88
	adc  b                                           ; $6c06: $88
	adc  b                                           ; $6c07: $88
	adc  b                                           ; $6c08: $88
	adc  b                                           ; $6c09: $88
	sbc  b                                           ; $6c0a: $98
	ld   l, d                                        ; $6c0b: $6a
	add  [hl]                                        ; $6c0c: $86
	xor  d                                           ; $6c0d: $aa
	ld   e, c                                        ; $6c0e: $59
	and  l                                           ; $6c0f: $a5
	sbc  b                                           ; $6c10: $98
	ld   l, d                                        ; $6c11: $6a
	add  [hl]                                        ; $6c12: $86
	sub  a                                           ; $6c13: $97
	adc  h                                           ; $6c14: $8c
	ld   c, b                                        ; $6c15: $48
	or   [hl]                                        ; $6c16: $b6
	ld   a, e                                        ; $6c17: $7b
	add  l                                           ; $6c18: $85
	cp   c                                           ; $6c19: $b9
	ld   e, d                                        ; $6c1a: $5a
	and  [hl]                                        ; $6c1b: $a6
	sbc  d                                           ; $6c1c: $9a
	sub  a                                           ; $6c1d: $97
	adc  b                                           ; $6c1e: $88
	ld   l, c                                        ; $6c1f: $69
	add  [hl]                                        ; $6c20: $86
	sbc  c                                           ; $6c21: $99
	ld   e, b                                        ; $6c22: $58
	add  $4e                                         ; $6c23: $c6 $4e
	sub  d                                           ; $6c25: $92
	jp   c, $953a                                    ; $6c26: $da $3a $95

	xor  c                                           ; $6c29: $a9
	ld   c, b                                        ; $6c2a: $48
	and  [hl]                                        ; $6c2b: $a6
	xor  d                                           ; $6c2c: $aa
	ld   l, c                                        ; $6c2d: $69
	sub  a                                           ; $6c2e: $97
	sbc  c                                           ; $6c2f: $99
	ld   a, b                                        ; $6c30: $78
	adc  b                                           ; $6c31: $88
	adc  b                                           ; $6c32: $88
	sbc  b                                           ; $6c33: $98
	sbc  b                                           ; $6c34: $98
	adc  c                                           ; $6c35: $89
	ld   a, c                                        ; $6c36: $79
	sbc  b                                           ; $6c37: $98
	adc  b                                           ; $6c38: $88
	adc  c                                           ; $6c39: $89
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	sbc  b                                           ; $6c3c: $98
	adc  b                                           ; $6c3d: $88
	ld   [hl], a                                     ; $6c3e: $77
	adc  b                                           ; $6c3f: $88
	ld   a, c                                        ; $6c40: $79
	add  a                                           ; $6c41: $87
	sbc  c                                           ; $6c42: $99
	ld   a, c                                        ; $6c43: $79
	add  a                                           ; $6c44: $87
	sbc  c                                           ; $6c45: $99
	ld   a, c                                        ; $6c46: $79
	adc  b                                           ; $6c47: $88
	add  a                                           ; $6c48: $87
	ld   a, b                                        ; $6c49: $78
	xor  b                                           ; $6c4a: $a8
	adc  c                                           ; $6c4b: $89
	adc  b                                           ; $6c4c: $88
	sub  a                                           ; $6c4d: $97
	adc  c                                           ; $6c4e: $89
	ld   a, b                                        ; $6c4f: $78
	sub  a                                           ; $6c50: $97
	ld   a, c                                        ; $6c51: $79
	ld   [hl], a                                     ; $6c52: $77
	and  a                                           ; $6c53: $a7
	ld   a, c                                        ; $6c54: $79
	add  a                                           ; $6c55: $87
	sbc  b                                           ; $6c56: $98
	adc  c                                           ; $6c57: $89
	ld   a, c                                        ; $6c58: $79
	sub  a                                           ; $6c59: $97
	adc  c                                           ; $6c5a: $89
	ld   a, c                                        ; $6c5b: $79
	add  a                                           ; $6c5c: $87
	sbc  b                                           ; $6c5d: $98
	ld   a, b                                        ; $6c5e: $78
	sub  a                                           ; $6c5f: $97
	sbc  b                                           ; $6c60: $98
	adc  c                                           ; $6c61: $89
	adc  b                                           ; $6c62: $88
	adc  b                                           ; $6c63: $88
	adc  b                                           ; $6c64: $88
	sbc  c                                           ; $6c65: $99
	ld   a, b                                        ; $6c66: $78
	add  a                                           ; $6c67: $87
	adc  b                                           ; $6c68: $88
	ld   a, c                                        ; $6c69: $79
	ld   [hl], a                                     ; $6c6a: $77
	sbc  b                                           ; $6c6b: $98
	ld   a, b                                        ; $6c6c: $78
	add  a                                           ; $6c6d: $87
	sbc  c                                           ; $6c6e: $99
	adc  b                                           ; $6c6f: $88
	halt                                             ; $6c70: $76
	adc  h                                           ; $6c71: $8c
	or   [hl]                                        ; $6c72: $b6
	sbc  c                                           ; $6c73: $99
	ld   l, d                                        ; $6c74: $6a
	add  [hl]                                        ; $6c75: $86
	adc  b                                           ; $6c76: $88
	ld   l, b                                        ; $6c77: $68
	add  [hl]                                        ; $6c78: $86
	add  a                                           ; $6c79: $87
	ld   a, c                                        ; $6c7a: $79
	adc  b                                           ; $6c7b: $88
	adc  b                                           ; $6c7c: $88
	ld   a, b                                        ; $6c7d: $78
	sbc  b                                           ; $6c7e: $98
	adc  b                                           ; $6c7f: $88
	sbc  b                                           ; $6c80: $98
	adc  b                                           ; $6c81: $88
	ld   l, c                                        ; $6c82: $69
	sub  a                                           ; $6c83: $97
	sub  a                                           ; $6c84: $97
	ld   a, c                                        ; $6c85: $79
	ld   [hl], a                                     ; $6c86: $77
	sub  a                                           ; $6c87: $97
	adc  b                                           ; $6c88: $88
	adc  c                                           ; $6c89: $89
	sbc  b                                           ; $6c8a: $98
	sub  a                                           ; $6c8b: $97
	ld   a, b                                        ; $6c8c: $78
	ld   a, b                                        ; $6c8d: $78
	add  a                                           ; $6c8e: $87
	sub  a                                           ; $6c8f: $97
	adc  b                                           ; $6c90: $88
	ld   a, c                                        ; $6c91: $79
	ld   [hl], a                                     ; $6c92: $77
	and  a                                           ; $6c93: $a7
	adc  c                                           ; $6c94: $89
	add  a                                           ; $6c95: $87
	and  a                                           ; $6c96: $a7
	ld   a, d                                        ; $6c97: $7a
	adc  b                                           ; $6c98: $88
	sbc  c                                           ; $6c99: $99
	adc  c                                           ; $6c9a: $89
	sub  a                                           ; $6c9b: $97
	adc  b                                           ; $6c9c: $88
	ld   a, b                                        ; $6c9d: $78
	ld   [hl], a                                     ; $6c9e: $77
	sub  a                                           ; $6c9f: $97
	ld   [hl], a                                     ; $6ca0: $77
	add  a                                           ; $6ca1: $87
	ld   a, c                                        ; $6ca2: $79
	ld   [hl], a                                     ; $6ca3: $77
	sbc  b                                           ; $6ca4: $98
	ld   a, c                                        ; $6ca5: $79
	adc  b                                           ; $6ca6: $88
	adc  b                                           ; $6ca7: $88
	adc  b                                           ; $6ca8: $88
	sub  a                                           ; $6ca9: $97
	adc  c                                           ; $6caa: $89
	ld   a, c                                        ; $6cab: $79
	add  a                                           ; $6cac: $87
	adc  d                                           ; $6cad: $8a
	adc  c                                           ; $6cae: $89
	sub  [hl]                                        ; $6caf: $96
	xor  b                                           ; $6cb0: $a8
	ld   l, c                                        ; $6cb1: $69
	ld   [hl], a                                     ; $6cb2: $77
	and  [hl]                                        ; $6cb3: $a6
	adc  b                                           ; $6cb4: $88
	adc  b                                           ; $6cb5: $88
	ld   a, b                                        ; $6cb6: $78
	adc  b                                           ; $6cb7: $88
	ld   a, c                                        ; $6cb8: $79
	add  a                                           ; $6cb9: $87
	sbc  b                                           ; $6cba: $98
	sbc  b                                           ; $6cbb: $98
	adc  b                                           ; $6cbc: $88
	adc  c                                           ; $6cbd: $89
	ld   a, b                                        ; $6cbe: $78
	adc  b                                           ; $6cbf: $88
	sub  a                                           ; $6cc0: $97
	adc  b                                           ; $6cc1: $88
	ld   a, c                                        ; $6cc2: $79
	adc  c                                           ; $6cc3: $89
	ld   a, b                                        ; $6cc4: $78
	sub  a                                           ; $6cc5: $97
	adc  c                                           ; $6cc6: $89
	ld   l, b                                        ; $6cc7: $68
	and  [hl]                                        ; $6cc8: $a6
	adc  e                                           ; $6cc9: $8b
	ld   l, c                                        ; $6cca: $69
	sub  [hl]                                        ; $6ccb: $96
	xor  b                                           ; $6ccc: $a8
	ld   l, d                                        ; $6ccd: $6a
	sub  [hl]                                        ; $6cce: $96
	add  a                                           ; $6ccf: $87
	ld   l, d                                        ; $6cd0: $6a
	sub  [hl]                                        ; $6cd1: $96
	xor  b                                           ; $6cd2: $a8
	ld   e, e                                        ; $6cd3: $5b
	ld   l, c                                        ; $6cd4: $69
	sub  [hl]                                        ; $6cd5: $96
	sbc  b                                           ; $6cd6: $98
	add  a                                           ; $6cd7: $87
	and  a                                           ; $6cd8: $a7
	adc  b                                           ; $6cd9: $88
	sub  [hl]                                        ; $6cda: $96
	ld   l, h                                        ; $6cdb: $6c
	ld   e, d                                        ; $6cdc: $5a
	add  a                                           ; $6cdd: $87
	sub  l                                           ; $6cde: $95
	or   a                                           ; $6cdf: $b7
	adc  c                                           ; $6ce0: $89
	ld   l, c                                        ; $6ce1: $69
	ld   a, c                                        ; $6ce2: $79
	ld   l, b                                        ; $6ce3: $68
	and  l                                           ; $6ce4: $a5
	and  a                                           ; $6ce5: $a7
	sub  a                                           ; $6ce6: $97
	ld   l, d                                        ; $6ce7: $6a
	ld   a, c                                        ; $6ce8: $79
	ld   a, c                                        ; $6ce9: $79
	adc  b                                           ; $6cea: $88
	and  l                                           ; $6ceb: $a5
	xor  b                                           ; $6cec: $a8
	ld   [hl], a                                     ; $6ced: $77
	add  a                                           ; $6cee: $87
	add  a                                           ; $6cef: $87
	ld   l, h                                        ; $6cf0: $6c
	ld   c, b                                        ; $6cf1: $48
	or   l                                           ; $6cf2: $b5
	cp   b                                           ; $6cf3: $b8
	ld   [hl], a                                     ; $6cf4: $77
	ld   a, c                                        ; $6cf5: $79
	ld   h, a                                        ; $6cf6: $67
	or   l                                           ; $6cf7: $b5
	sbc  c                                           ; $6cf8: $99
	sbc  b                                           ; $6cf9: $98
	ld   l, h                                        ; $6cfa: $6c
	ld   e, c                                        ; $6cfb: $59
	sub  [hl]                                        ; $6cfc: $96
	sbc  c                                           ; $6cfd: $99
	sub  a                                           ; $6cfe: $97
	sub  [hl]                                        ; $6cff: $96
	ld   a, c                                        ; $6d00: $79
	ld   a, c                                        ; $6d01: $79
	ld   a, d                                        ; $6d02: $7a
	ld   [hl], a                                     ; $6d03: $77
	and  l                                           ; $6d04: $a5
	or   a                                           ; $6d05: $b7
	sbc  c                                           ; $6d06: $99
	ld   l, d                                        ; $6d07: $6a
	ld   e, d                                        ; $6d08: $5a
	halt                                             ; $6d09: $76
	xor  b                                           ; $6d0a: $a8
	ld   a, b                                        ; $6d0b: $78
	sub  a                                           ; $6d0c: $97
	and  a                                           ; $6d0d: $a7
	ld   a, c                                        ; $6d0e: $79
	ld   [hl], a                                     ; $6d0f: $77
	and  a                                           ; $6d10: $a7
	ld   a, c                                        ; $6d11: $79
	ld   a, b                                        ; $6d12: $78
	sbc  b                                           ; $6d13: $98
	ld   a, c                                        ; $6d14: $79
	sbc  b                                           ; $6d15: $98
	adc  c                                           ; $6d16: $89
	ld   [hl], a                                     ; $6d17: $77
	and  a                                           ; $6d18: $a7
	adc  d                                           ; $6d19: $8a
	sub  [hl]                                        ; $6d1a: $96
	adc  d                                           ; $6d1b: $8a
	ld   l, c                                        ; $6d1c: $69
	ld   [hl], a                                     ; $6d1d: $77
	adc  c                                           ; $6d1e: $89
	ld   [hl], a                                     ; $6d1f: $77
	and  a                                           ; $6d20: $a7
	adc  b                                           ; $6d21: $88
	ld   a, b                                        ; $6d22: $78
	sbc  b                                           ; $6d23: $98
	ld   a, c                                        ; $6d24: $79
	sbc  b                                           ; $6d25: $98
	adc  b                                           ; $6d26: $88
	adc  b                                           ; $6d27: $88
	adc  b                                           ; $6d28: $88
	adc  b                                           ; $6d29: $88
	ld   a, b                                        ; $6d2a: $78
	adc  b                                           ; $6d2b: $88
	adc  c                                           ; $6d2c: $89
	adc  b                                           ; $6d2d: $88
	adc  b                                           ; $6d2e: $88
	adc  b                                           ; $6d2f: $88
	sub  a                                           ; $6d30: $97
	adc  b                                           ; $6d31: $88
	ld   a, b                                        ; $6d32: $78
	adc  b                                           ; $6d33: $88
	adc  b                                           ; $6d34: $88
	ld   a, c                                        ; $6d35: $79
	add  a                                           ; $6d36: $87
	sub  a                                           ; $6d37: $97
	adc  b                                           ; $6d38: $88
	ld   a, b                                        ; $6d39: $78
	sbc  b                                           ; $6d3a: $98
	adc  c                                           ; $6d3b: $89
	adc  c                                           ; $6d3c: $89
	adc  b                                           ; $6d3d: $88
	adc  b                                           ; $6d3e: $88
	adc  b                                           ; $6d3f: $88
	sbc  b                                           ; $6d40: $98
	adc  b                                           ; $6d41: $88
	adc  b                                           ; $6d42: $88
	adc  c                                           ; $6d43: $89
	adc  b                                           ; $6d44: $88
	adc  b                                           ; $6d45: $88
	adc  b                                           ; $6d46: $88
	adc  b                                           ; $6d47: $88
	adc  b                                           ; $6d48: $88
	adc  b                                           ; $6d49: $88
	adc  b                                           ; $6d4a: $88
	adc  b                                           ; $6d4b: $88
	adc  b                                           ; $6d4c: $88
	adc  b                                           ; $6d4d: $88
	adc  b                                           ; $6d4e: $88
	adc  c                                           ; $6d4f: $89
	add  a                                           ; $6d50: $87
	adc  b                                           ; $6d51: $88
	adc  b                                           ; $6d52: $88
	adc  b                                           ; $6d53: $88
	adc  b                                           ; $6d54: $88
	adc  b                                           ; $6d55: $88
	adc  b                                           ; $6d56: $88
	adc  b                                           ; $6d57: $88
	adc  b                                           ; $6d58: $88
	adc  b                                           ; $6d59: $88
	adc  b                                           ; $6d5a: $88
	adc  b                                           ; $6d5b: $88
	adc  b                                           ; $6d5c: $88
	adc  b                                           ; $6d5d: $88
	adc  b                                           ; $6d5e: $88
	adc  b                                           ; $6d5f: $88
	adc  b                                           ; $6d60: $88
	adc  b                                           ; $6d61: $88
	adc  b                                           ; $6d62: $88
	adc  b                                           ; $6d63: $88
	adc  b                                           ; $6d64: $88
	adc  b                                           ; $6d65: $88
	adc  b                                           ; $6d66: $88
	adc  b                                           ; $6d67: $88
	adc  b                                           ; $6d68: $88
	adc  b                                           ; $6d69: $88
	adc  b                                           ; $6d6a: $88
	adc  b                                           ; $6d6b: $88
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	adc  b                                           ; $6d6e: $88
	adc  b                                           ; $6d6f: $88
	adc  b                                           ; $6d70: $88
	adc  b                                           ; $6d71: $88
	adc  b                                           ; $6d72: $88
	adc  b                                           ; $6d73: $88
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	adc  b                                           ; $6d78: $88
	adc  b                                           ; $6d79: $88
	adc  b                                           ; $6d7a: $88
	adc  b                                           ; $6d7b: $88
	adc  b                                           ; $6d7c: $88
	adc  b                                           ; $6d7d: $88
	adc  b                                           ; $6d7e: $88
	adc  b                                           ; $6d7f: $88
	adc  b                                           ; $6d80: $88
	adc  b                                           ; $6d81: $88
	adc  b                                           ; $6d82: $88
	adc  b                                           ; $6d83: $88
	adc  b                                           ; $6d84: $88
	adc  b                                           ; $6d85: $88
	adc  b                                           ; $6d86: $88
	adc  b                                           ; $6d87: $88
	adc  b                                           ; $6d88: $88
	adc  b                                           ; $6d89: $88
	adc  b                                           ; $6d8a: $88
	adc  b                                           ; $6d8b: $88
	adc  b                                           ; $6d8c: $88
	adc  b                                           ; $6d8d: $88
	adc  b                                           ; $6d8e: $88
	adc  b                                           ; $6d8f: $88
	adc  b                                           ; $6d90: $88
	adc  b                                           ; $6d91: $88
	adc  b                                           ; $6d92: $88
	adc  b                                           ; $6d93: $88
	adc  b                                           ; $6d94: $88
	adc  b                                           ; $6d95: $88
	adc  b                                           ; $6d96: $88
	adc  b                                           ; $6d97: $88
	adc  b                                           ; $6d98: $88
	adc  b                                           ; $6d99: $88
	adc  b                                           ; $6d9a: $88
	adc  b                                           ; $6d9b: $88
	adc  b                                           ; $6d9c: $88
	adc  b                                           ; $6d9d: $88
	adc  b                                           ; $6d9e: $88
	adc  b                                           ; $6d9f: $88
	adc  b                                           ; $6da0: $88
	adc  b                                           ; $6da1: $88
	adc  b                                           ; $6da2: $88
	adc  b                                           ; $6da3: $88
	adc  b                                           ; $6da4: $88
	adc  b                                           ; $6da5: $88
	adc  b                                           ; $6da6: $88
	adc  b                                           ; $6da7: $88
	adc  b                                           ; $6da8: $88
	adc  b                                           ; $6da9: $88
	adc  b                                           ; $6daa: $88
	adc  b                                           ; $6dab: $88
	adc  b                                           ; $6dac: $88
	adc  b                                           ; $6dad: $88
	adc  b                                           ; $6dae: $88
	adc  b                                           ; $6daf: $88
	adc  b                                           ; $6db0: $88
	adc  b                                           ; $6db1: $88
	adc  b                                           ; $6db2: $88
	adc  b                                           ; $6db3: $88
	adc  b                                           ; $6db4: $88
	adc  b                                           ; $6db5: $88
	adc  b                                           ; $6db6: $88
	adc  b                                           ; $6db7: $88
	adc  b                                           ; $6db8: $88
	adc  b                                           ; $6db9: $88
	adc  b                                           ; $6dba: $88
	adc  b                                           ; $6dbb: $88
	adc  b                                           ; $6dbc: $88
	adc  b                                           ; $6dbd: $88
	adc  b                                           ; $6dbe: $88
	adc  b                                           ; $6dbf: $88
	adc  b                                           ; $6dc0: $88
	adc  b                                           ; $6dc1: $88
	adc  b                                           ; $6dc2: $88
	adc  b                                           ; $6dc3: $88
	adc  b                                           ; $6dc4: $88
	adc  b                                           ; $6dc5: $88
	adc  b                                           ; $6dc6: $88
	adc  b                                           ; $6dc7: $88
	adc  b                                           ; $6dc8: $88
	adc  b                                           ; $6dc9: $88
	adc  b                                           ; $6dca: $88
	adc  b                                           ; $6dcb: $88
	adc  b                                           ; $6dcc: $88
	adc  b                                           ; $6dcd: $88
	adc  b                                           ; $6dce: $88
	adc  b                                           ; $6dcf: $88
	adc  b                                           ; $6dd0: $88
	adc  b                                           ; $6dd1: $88
	adc  b                                           ; $6dd2: $88
	adc  b                                           ; $6dd3: $88
	adc  b                                           ; $6dd4: $88
	adc  b                                           ; $6dd5: $88
	adc  b                                           ; $6dd6: $88
	adc  b                                           ; $6dd7: $88
	adc  b                                           ; $6dd8: $88
	adc  b                                           ; $6dd9: $88
	adc  b                                           ; $6dda: $88
	adc  b                                           ; $6ddb: $88
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	adc  b                                           ; $6dde: $88
	adc  b                                           ; $6ddf: $88
	adc  b                                           ; $6de0: $88
	adc  b                                           ; $6de1: $88
	adc  b                                           ; $6de2: $88
	adc  b                                           ; $6de3: $88
	adc  b                                           ; $6de4: $88
	adc  b                                           ; $6de5: $88
	adc  b                                           ; $6de6: $88
	adc  b                                           ; $6de7: $88
	adc  b                                           ; $6de8: $88
	adc  b                                           ; $6de9: $88
	adc  b                                           ; $6dea: $88
	adc  b                                           ; $6deb: $88
	adc  b                                           ; $6dec: $88
	adc  b                                           ; $6ded: $88
	adc  b                                           ; $6dee: $88
	adc  b                                           ; $6def: $88
	adc  b                                           ; $6df0: $88
	adc  b                                           ; $6df1: $88
	adc  b                                           ; $6df2: $88
	adc  b                                           ; $6df3: $88
	adc  b                                           ; $6df4: $88
	adc  b                                           ; $6df5: $88
	adc  b                                           ; $6df6: $88
	adc  b                                           ; $6df7: $88
	adc  b                                           ; $6df8: $88
	adc  b                                           ; $6df9: $88
	adc  b                                           ; $6dfa: $88
	adc  b                                           ; $6dfb: $88
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  b                                           ; $6dff: $88
	adc  b                                           ; $6e00: $88
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	adc  b                                           ; $6e04: $88
	adc  b                                           ; $6e05: $88
	adc  b                                           ; $6e06: $88
	adc  b                                           ; $6e07: $88
	adc  b                                           ; $6e08: $88
	adc  b                                           ; $6e09: $88
	adc  b                                           ; $6e0a: $88
	adc  b                                           ; $6e0b: $88
	adc  b                                           ; $6e0c: $88
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
	adc  b                                           ; $6e10: $88
	adc  b                                           ; $6e11: $88
	adc  b                                           ; $6e12: $88
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	adc  b                                           ; $6e15: $88
	adc  b                                           ; $6e16: $88
	adc  b                                           ; $6e17: $88
	adc  b                                           ; $6e18: $88
	adc  b                                           ; $6e19: $88
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	adc  b                                           ; $6e1e: $88
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	adc  b                                           ; $6e22: $88
	adc  b                                           ; $6e23: $88
	adc  b                                           ; $6e24: $88
	adc  b                                           ; $6e25: $88
	adc  b                                           ; $6e26: $88
	adc  b                                           ; $6e27: $88
	adc  b                                           ; $6e28: $88
	adc  b                                           ; $6e29: $88
	adc  b                                           ; $6e2a: $88
	adc  b                                           ; $6e2b: $88
	adc  b                                           ; $6e2c: $88
	adc  b                                           ; $6e2d: $88
	adc  b                                           ; $6e2e: $88
	adc  b                                           ; $6e2f: $88
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	adc  b                                           ; $6e32: $88
	adc  b                                           ; $6e33: $88
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	adc  b                                           ; $6e36: $88
	adc  b                                           ; $6e37: $88
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	adc  b                                           ; $6e3f: $88
	adc  b                                           ; $6e40: $88
	adc  b                                           ; $6e41: $88
	adc  b                                           ; $6e42: $88
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	adc  b                                           ; $6e47: $88
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	adc  b                                           ; $6e62: $88
	adc  b                                           ; $6e63: $88
	adc  b                                           ; $6e64: $88
	adc  c                                           ; $6e65: $89
	sbc  b                                           ; $6e66: $98
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	sbc  b                                           ; $6e6c: $98
	adc  b                                           ; $6e6d: $88
	sbc  c                                           ; $6e6e: $99
	add  a                                           ; $6e6f: $87
	xor  b                                           ; $6e70: $a8
	adc  c                                           ; $6e71: $89
	sbc  c                                           ; $6e72: $99
	xor  b                                           ; $6e73: $a8
	sub  a                                           ; $6e74: $97
	sbc  d                                           ; $6e75: $9a
	sbc  d                                           ; $6e76: $9a
	cp   b                                           ; $6e77: $b8
	ld   a, d                                        ; $6e78: $7a
	sbc  b                                           ; $6e79: $98
	adc  b                                           ; $6e7a: $88
	ld   a, b                                        ; $6e7b: $78
	halt                                             ; $6e7c: $76
	add  a                                           ; $6e7d: $87
	xor  e                                           ; $6e7e: $ab
	ld   a, c                                        ; $6e7f: $79
	adc  d                                           ; $6e80: $8a
	xor  c                                           ; $6e81: $a9
	sbc  b                                           ; $6e82: $98
	cp   e                                           ; $6e83: $bb
	ld   a, c                                        ; $6e84: $79
	ld   h, a                                        ; $6e85: $67
	sub  [hl]                                        ; $6e86: $96
	add  a                                           ; $6e87: $87
	ld   h, [hl]                                     ; $6e88: $66
	ld   l, b                                        ; $6e89: $68
	xor  b                                           ; $6e8a: $a8
	ld   h, a                                        ; $6e8b: $67
	ld   a, c                                        ; $6e8c: $79
	ld   h, l                                        ; $6e8d: $65
	ld   a, e                                        ; $6e8e: $7b
	push de                                          ; $6e8f: $d5
	sbc  e                                           ; $6e90: $9b
	ld   l, l                                        ; $6e91: $6d
	halt                                             ; $6e92: $76
	cp   c                                           ; $6e93: $b9
	xor  b                                           ; $6e94: $a8
	ld   d, e                                        ; $6e95: $53
	ld   c, d                                        ; $6e96: $4a
	ld   [hl], l                                     ; $6e97: $75
	ld   b, e                                        ; $6e98: $43
	ld   h, [hl]                                     ; $6e99: $66
	ld   h, d                                        ; $6e9a: $62
	ld   e, b                                        ; $6e9b: $58
	sbc  c                                           ; $6e9c: $99
	ld   d, l                                        ; $6e9d: $55
	ld   l, b                                        ; $6e9e: $68
	xor  d                                           ; $6e9f: $aa
	ld   d, d                                        ; $6ea0: $52
	ld   a, b                                        ; $6ea1: $78
	halt                                             ; $6ea2: $76
	ld   h, [hl]                                     ; $6ea3: $66
	ld   a, c                                        ; $6ea4: $79
	xor  c                                           ; $6ea5: $a9
	adc  c                                           ; $6ea6: $89
	cp   e                                           ; $6ea7: $bb
	sbc  e                                           ; $6ea8: $9b
	or   a                                           ; $6ea9: $b7
	sbc  b                                           ; $6eaa: $98
	sub  [hl]                                        ; $6eab: $96
	ld   h, l                                        ; $6eac: $65
	ld   c, b                                        ; $6ead: $48
	ld   [hl], l                                     ; $6eae: $75
	ld   b, h                                        ; $6eaf: $44
	inc  [hl]                                        ; $6eb0: $34
	ld   sp, $1111                                   ; $6eb1: $31 $11 $11
	ld   de, $1111                                   ; $6eb4: $11 $11 $11
	ld   de, $ff5b                                   ; $6eb7: $11 $5b $ff
	rst  $38                                         ; $6eba: $ff
	rst  $38                                         ; $6ebb: $ff
	rst  $38                                         ; $6ebc: $ff
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	and  a                                           ; $6ec0: $a7
	ld   b, e                                        ; $6ec1: $43
	ld   [hl-], a                                    ; $6ec2: $32
	ld   [hl+], a                                    ; $6ec3: $22
	ld   de, $1111                                   ; $6ec4: $11 $11 $11
	ld   de, $1111                                   ; $6ec7: $11 $11 $11
	ld   de, $af11                                   ; $6eca: $11 $11 $af
	rst  $38                                         ; $6ecd: $ff
	rst  $38                                         ; $6ece: $ff
	rst  $38                                         ; $6ecf: $ff
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	add  l                                           ; $6ed3: $85
	inc  sp                                          ; $6ed4: $33
	ld   b, h                                        ; $6ed5: $44
	sbc  e                                           ; $6ed6: $9b
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	sub  a                                           ; $6ed9: $97
	ld   de, $1111                                   ; $6eda: $11 $11 $11
	ld   de, $1111                                   ; $6edd: $11 $11 $11
	ld   e, a                                        ; $6ee0: $5f
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	rst  $38                                         ; $6ee3: $ff
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	add  h                                           ; $6ee6: $84
	ld   d, e                                        ; $6ee7: $53
	ld   [hl-], a                                    ; $6ee8: $32
	ld   e, e                                        ; $6ee9: $5b
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	rst  $38                                         ; $6eec: $ff
	ld   a, [$1111]                                  ; $6eed: $fa $11 $11
	ld   de, $1111                                   ; $6ef0: $11 $11 $11
	ld   de, $ff4f                                   ; $6ef3: $11 $4f $ff
	rst  $38                                         ; $6ef6: $ff
	rst  $38                                         ; $6ef7: $ff
	rst  $38                                         ; $6ef8: $ff
	ei                                               ; $6ef9: $fb
	ld   sp, $ff4c                                   ; $6efa: $31 $4c $ff
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	rst  $38                                         ; $6eff: $ff
	rst  $38                                         ; $6f00: $ff
	add  sp, $31                                     ; $6f01: $e8 $31
	ld   de, $1111                                   ; $6f03: $11 $11 $11
	ld   de, $1111                                   ; $6f06: $11 $11 $11
	cpl                                              ; $6f09: $2f
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	rst  $38                                         ; $6f0c: $ff
	rst  $38                                         ; $6f0d: $ff
	cp   e                                           ; $6f0e: $bb
	rst  $38                                         ; $6f0f: $ff
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	rst  $38                                         ; $6f12: $ff
	rst  $38                                         ; $6f13: $ff
	rst  $28                                         ; $6f14: $ef
	ld   sp, hl                                      ; $6f15: $f9
	ld   [hl], l                                     ; $6f16: $75
	ld   de, $1111                                   ; $6f17: $11 $11 $11
	ld   de, $1111                                   ; $6f1a: $11 $11 $11
	ld   de, $ff1c                                   ; $6f1d: $11 $1c $ff
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	rst  $38                                         ; $6f22: $ff
	jp   c, $ffbf                                    ; $6f23: $da $bf $ff

	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	db   $ed                                         ; $6f2a: $ed
	jp   nz, $1111                                   ; $6f2b: $c2 $11 $11

	ld   de, $1111                                   ; $6f2e: $11 $11 $11
	ld   de, $2c11                                   ; $6f31: $11 $11 $2c
	rst  $38                                         ; $6f34: $ff
	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	ld   a, h                                        ; $6f38: $7c
	rst  $38                                         ; $6f39: $ff
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	rst  $30                                         ; $6f3f: $f7
	ld   b, l                                        ; $6f40: $45
	ld   de, $1111                                   ; $6f41: $11 $11 $11
	ld   de, $1111                                   ; $6f44: $11 $11 $11
	ld   de, $cf11                                   ; $6f47: $11 $11 $cf
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	xor  $ff                                         ; $6f4e: $ee $ff
	rst  $38                                         ; $6f50: $ff
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	cp   c                                           ; $6f54: $b9
	or   a                                           ; $6f55: $b7
	ld   de, $1111                                   ; $6f56: $11 $11 $11
	ld   de, $1111                                   ; $6f59: $11 $11 $11
	ld   de, $1f11                                   ; $6f5c: $11 $11 $1f
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	ld   sp, hl                                      ; $6f63: $f9
	rst  $38                                         ; $6f64: $ff
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	add  sp, -$41                                    ; $6f69: $e8 $bf
	ld   d, c                                        ; $6f6b: $51
	ld   de, $1111                                   ; $6f6c: $11 $11 $11
	ld   de, $1111                                   ; $6f6f: $11 $11 $11
	ld   de, $af11                                   ; $6f72: $11 $11 $af
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	rst  $38                                         ; $6f79: $ff
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	rst  $38                                         ; $6f7d: $ff
	rst  $38                                         ; $6f7e: $ff
	xor  [hl]                                        ; $6f7f: $ae
	ld   [hl], c                                     ; $6f80: $71
	ld   de, $1111                                   ; $6f81: $11 $11 $11
	ld   de, $1111                                   ; $6f84: $11 $11 $11
	ld   de, $1111                                   ; $6f87: $11 $11 $11
	xor  a                                           ; $6f8a: $af
	rst  $38                                         ; $6f8b: $ff
	rst  $38                                         ; $6f8c: $ff
	rst  $38                                         ; $6f8d: $ff
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	rst  $38                                         ; $6f94: $ff
	add  a                                           ; $6f95: $87
	ld   b, c                                        ; $6f96: $41
	ld   de, $1111                                   ; $6f97: $11 $11 $11
	ld   de, $1111                                   ; $6f9a: $11 $11 $11
	ld   de, $1211                                   ; $6f9d: $11 $11 $12
	rst  $38                                         ; $6fa0: $ff
	rst  $38                                         ; $6fa1: $ff
	rst  $38                                         ; $6fa2: $ff
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	rst  $38                                         ; $6fa7: $ff
	rst  $38                                         ; $6fa8: $ff
	rst  $38                                         ; $6fa9: $ff
	rst  $30                                         ; $6faa: $f7
	dec  [hl]                                        ; $6fab: $35
	ld   hl, $1111                                   ; $6fac: $21 $11 $11
	ld   de, $1111                                   ; $6faf: $11 $11 $11
	ld   de, $1111                                   ; $6fb2: $11 $11 $11
	ld   e, h                                        ; $6fb5: $5c
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	rst  $38                                         ; $6fb8: $ff
	rst  $38                                         ; $6fb9: $ff
	rst  $38                                         ; $6fba: $ff
	rst  $38                                         ; $6fbb: $ff
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	rst  $38                                         ; $6fbe: $ff
	rst  $38                                         ; $6fbf: $ff
	rst  $10                                         ; $6fc0: $d7
	ld   [hl], e                                     ; $6fc1: $73
	ld   de, $1111                                   ; $6fc2: $11 $11 $11
	ld   de, $1111                                   ; $6fc5: $11 $11 $11
	ld   de, $1111                                   ; $6fc8: $11 $11 $11
	cp   a                                           ; $6fcb: $bf
	rst  $38                                         ; $6fcc: $ff
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	rst  $38                                         ; $6fd4: $ff
	cp   $bb                                         ; $6fd5: $fe $bb
	ld   d, c                                        ; $6fd7: $51
	ld   de, $1111                                   ; $6fd8: $11 $11 $11
	ld   de, $1111                                   ; $6fdb: $11 $11 $11
	ld   de, $1511                                   ; $6fde: $11 $11 $15
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	rst  $38                                         ; $6fe3: $ff
	rst  $38                                         ; $6fe4: $ff
	rst  $38                                         ; $6fe5: $ff
	rst  $38                                         ; $6fe6: $ff
	rst  $38                                         ; $6fe7: $ff
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	rst  $38                                         ; $6fea: $ff
	ld   a, [$1196]                                  ; $6feb: $fa $96 $11
	ld   de, $1111                                   ; $6fee: $11 $11 $11
	ld   de, $1111                                   ; $6ff1: $11 $11 $11
	ld   de, $2d11                                   ; $6ff4: $11 $11 $2d
	rst  $38                                         ; $6ff7: $ff
	rst  $38                                         ; $6ff8: $ff
	rst  $38                                         ; $6ff9: $ff
	rst  $38                                         ; $6ffa: $ff
	rst  $38                                         ; $6ffb: $ff
	rst  $38                                         ; $6ffc: $ff
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	rst  $38                                         ; $6fff: $ff
	db   $fc                                         ; $7000: $fc
	call c, $1175                                    ; $7001: $dc $75 $11
	ld   de, $1111                                   ; $7004: $11 $11 $11
	ld   de, $1111                                   ; $7007: $11 $11 $11
	ld   de, $bf12                                   ; $700a: $11 $12 $bf
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	rst  $38                                         ; $7010: $ff
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	rst  $38                                         ; $7013: $ff
	rst  $38                                         ; $7014: $ff
	rst  $38                                         ; $7015: $ff
	cp   $b9                                         ; $7016: $fe $b9
	ld   sp, $1111                                   ; $7018: $31 $11 $11
	ld   de, $1111                                   ; $701b: $11 $11 $11
	ld   de, $1111                                   ; $701e: $11 $11 $11
	ld   a, [de]                                     ; $7021: $1a
	cp   $ff                                         ; $7022: $fe $ff
	rst  $38                                         ; $7024: $ff
	rst  $38                                         ; $7025: $ff
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	rst  $38                                         ; $7028: $ff
	rst  $38                                         ; $7029: $ff
	rst  $38                                         ; $702a: $ff
	db   $fc                                         ; $702b: $fc
	ei                                               ; $702c: $fb

jr_0e3_702d:
	jr   c, jr_0e3_7040                              ; $702d: $38 $11

	ld   de, $1111                                   ; $702f: $11 $11 $11
	ld   de, $1111                                   ; $7032: $11 $11 $11
	ld   de, $6f14                                   ; $7035: $11 $14 $6f
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	rst  $38                                         ; $703f: $ff

jr_0e3_7040:
	rst  $38                                         ; $7040: $ff
	xor  a                                           ; $7041: $af
	rst  $30                                         ; $7042: $f7
	sub  c                                           ; $7043: $91
	ld   de, $1111                                   ; $7044: $11 $11 $11
	ld   de, $1111                                   ; $7047: $11 $11 $11
	ld   de, $2211                                   ; $704a: $11 $11 $22
	ld   e, a                                        ; $704d: $5f
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	rst  $38                                         ; $7052: $ff
	rst  $38                                         ; $7053: $ff
	rst  $38                                         ; $7054: $ff
	rst  $38                                         ; $7055: $ff
	cp   $cd                                         ; $7056: $fe $cd
	cp   b                                           ; $7058: $b8
	ld   b, d                                        ; $7059: $42
	ld   de, $1111                                   ; $705a: $11 $11 $11
	ld   de, $1111                                   ; $705d: $11 $11 $11
	ld   de, $1111                                   ; $7060: $11 $11 $11
	dec  d                                           ; $7063: $15
	ld   a, e                                        ; $7064: $7b
	rst  $38                                         ; $7065: $ff
	rst  $38                                         ; $7066: $ff
	rst  $38                                         ; $7067: $ff
	rst  $38                                         ; $7068: $ff
	rst  $38                                         ; $7069: $ff
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	jp   c, Jump_0e3_5397                            ; $706f: $da $97 $53

	ld   de, $1111                                   ; $7072: $11 $11 $11
	ld   de, $1111                                   ; $7075: $11 $11 $11
	ld   de, $1211                                   ; $7078: $11 $11 $12
	ld   l, b                                        ; $707b: $68
	xor  [hl]                                        ; $707c: $ae
	rst  $38                                         ; $707d: $ff
	rst  $38                                         ; $707e: $ff
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	cp   $b8                                         ; $7085: $fe $b8
	ld   h, h                                        ; $7087: $64
	ld   de, $1111                                   ; $7088: $11 $11 $11
	ld   de, $1111                                   ; $708b: $11 $11 $11
	ld   de, $1111                                   ; $708e: $11 $11 $11
	jr   z, jr_0e3_702d                              ; $7091: $28 $9a

	rst  $28                                         ; $7093: $ef
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	rst  $38                                         ; $7096: $ff
	rst  $38                                         ; $7097: $ff
	rst  $38                                         ; $7098: $ff
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	jp   c, $1175                                    ; $709c: $da $75 $11

	ld   de, $1111                                   ; $709f: $11 $11 $11
	ld   de, $1111                                   ; $70a2: $11 $11 $11
	ld   de, $1311                                   ; $70a5: $11 $11 $13
	ld   l, b                                        ; $70a8: $68
	cp   a                                           ; $70a9: $bf
	rst  $38                                         ; $70aa: $ff
	rst  $38                                         ; $70ab: $ff
	rst  $38                                         ; $70ac: $ff
	rst  $38                                         ; $70ad: $ff
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	rst  $38                                         ; $70b0: $ff
	rst  $38                                         ; $70b1: $ff
	db   $fc                                         ; $70b2: $fc
	and  [hl]                                        ; $70b3: $a6
	ld   b, c                                        ; $70b4: $41
	ld   de, $1111                                   ; $70b5: $11 $11 $11
	ld   de, $1111                                   ; $70b8: $11 $11 $11
	ld   de, $1111                                   ; $70bb: $11 $11 $11
	ld   [hl], $9d                                   ; $70be: $36 $9d
	rst  $38                                         ; $70c0: $ff
	rst  $38                                         ; $70c1: $ff
	rst  $38                                         ; $70c2: $ff
	rst  $38                                         ; $70c3: $ff
	rst  $38                                         ; $70c4: $ff
	rst  $38                                         ; $70c5: $ff
	rst  $38                                         ; $70c6: $ff
	rst  $38                                         ; $70c7: $ff
	rst  $38                                         ; $70c8: $ff
	ret  z                                           ; $70c9: $c8

	ld   d, e                                        ; $70ca: $53
	ld   de, $1111                                   ; $70cb: $11 $11 $11
	ld   de, $1111                                   ; $70ce: $11 $11 $11
	ld   de, $1111                                   ; $70d1: $11 $11 $11
	inc  d                                           ; $70d4: $14
	ld   a, d                                        ; $70d5: $7a
	rst  JumpTable                                         ; $70d6: $df
	rst  $38                                         ; $70d7: $ff
	rst  $38                                         ; $70d8: $ff
	rst  $38                                         ; $70d9: $ff
	rst  $38                                         ; $70da: $ff
	rst  $38                                         ; $70db: $ff
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	db   $eb                                         ; $70df: $eb
	ld   [hl], h                                     ; $70e0: $74
	ld   hl, $1111                                   ; $70e1: $21 $11 $11
	ld   de, $1111                                   ; $70e4: $11 $11 $11
	ld   de, $1111                                   ; $70e7: $11 $11 $11
	ld   [de], a                                     ; $70ea: $12
	ld   d, a                                        ; $70eb: $57
	xor  [hl]                                        ; $70ec: $ae
	rst  $38                                         ; $70ed: $ff
	rst  $38                                         ; $70ee: $ff
	rst  $38                                         ; $70ef: $ff
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	db   $fd                                         ; $70f5: $fd
	and  a                                           ; $70f6: $a7
	ld   [hl-], a                                    ; $70f7: $32
	ld   de, $1111                                   ; $70f8: $11 $11 $11
	ld   de, $1111                                   ; $70fb: $11 $11 $11
	ld   de, $1111                                   ; $70fe: $11 $11 $11
	ld   [hl], $9b                                   ; $7101: $36 $9b
	rst  $28                                         ; $7103: $ef
	rst  $38                                         ; $7104: $ff
	rst  $38                                         ; $7105: $ff
	rst  $38                                         ; $7106: $ff
	rst  $38                                         ; $7107: $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	jp   c, $2153                                    ; $710c: $da $53 $21

	ld   de, $1111                                   ; $710f: $11 $11 $11
	ld   de, $1111                                   ; $7112: $11 $11 $11
	ld   de, $1411                                   ; $7115: $11 $11 $14
	ld   a, c                                        ; $7118: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7119: $cf
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	rst  $38                                         ; $711f: $ff
	rst  $38                                         ; $7120: $ff
	rst  $38                                         ; $7121: $ff
	db   $fc                                         ; $7122: $fc
	and  [hl]                                        ; $7123: $a6
	ld   sp, $1111                                   ; $7124: $31 $11 $11
	ld   de, $1111                                   ; $7127: $11 $11 $11
	ld   de, $1111                                   ; $712a: $11 $11 $11
	ld   de, $ac47                                   ; $712d: $11 $47 $ac
	rst  $38                                         ; $7130: $ff
	rst  $38                                         ; $7131: $ff
	rst  $38                                         ; $7132: $ff
	rst  $38                                         ; $7133: $ff
	rst  $38                                         ; $7134: $ff
	rst  $38                                         ; $7135: $ff
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	sbc  $fc                                         ; $7138: $de $fc
	ld   hl, $1111                                   ; $713a: $21 $11 $11
	ld   de, $1111                                   ; $713d: $11 $11 $11
	ld   de, $1111                                   ; $7140: $11 $11 $11
	ld   de, $ff6d                                   ; $7143: $11 $6d $ff
	rst  $38                                         ; $7146: $ff
	rst  $38                                         ; $7147: $ff
	rst  $38                                         ; $7148: $ff
	rst  $38                                         ; $7149: $ff
	rst  $38                                         ; $714a: $ff
	rst  $38                                         ; $714b: $ff
	rst  $38                                         ; $714c: $ff
	rst  $38                                         ; $714d: $ff
	rst  $38                                         ; $714e: $ff
	ret  z                                           ; $714f: $c8

	ld   d, c                                        ; $7150: $51
	ld   de, $1111                                   ; $7151: $11 $11 $11
	ld   de, $1111                                   ; $7154: $11 $11 $11
	ld   de, $1611                                   ; $7157: $11 $11 $16
	adc  h                                           ; $715a: $8c
	rst  $38                                         ; $715b: $ff
	rst  $38                                         ; $715c: $ff
	rst  $38                                         ; $715d: $ff
	rst  $38                                         ; $715e: $ff
	rst  $38                                         ; $715f: $ff
	rst  $38                                         ; $7160: $ff
	rst  $38                                         ; $7161: $ff
	rst  $38                                         ; $7162: $ff
	rst  $38                                         ; $7163: $ff
	db   $eb                                         ; $7164: $eb
	add  [hl]                                        ; $7165: $86
	ld   hl, $1111                                   ; $7166: $21 $11 $11
	ld   de, $1111                                   ; $7169: $11 $11 $11
	ld   de, $1111                                   ; $716c: $11 $11 $11
	inc  l                                           ; $716f: $2c
	rst  $38                                         ; $7170: $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	rst  $38                                         ; $7173: $ff
	rst  $38                                         ; $7174: $ff
	rst  $38                                         ; $7175: $ff
	rst  $38                                         ; $7176: $ff
	rst  $38                                         ; $7177: $ff
	rst  $38                                         ; $7178: $ff
	rst  $38                                         ; $7179: $ff
	db   $eb                                         ; $717a: $eb
	ld   h, e                                        ; $717b: $63
	ld   de, $1111                                   ; $717c: $11 $11 $11
	ld   de, $1111                                   ; $717f: $11 $11 $11
	ld   de, $1111                                   ; $7182: $11 $11 $11
	ld   e, c                                        ; $7185: $59
	rst  $38                                         ; $7186: $ff
	rst  $38                                         ; $7187: $ff
	rst  $38                                         ; $7188: $ff
	rst  $38                                         ; $7189: $ff
	rst  $38                                         ; $718a: $ff
	rst  $38                                         ; $718b: $ff
	rst  $38                                         ; $718c: $ff
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	rst  $38                                         ; $718f: $ff
	reti                                             ; $7190: $d9


	ld   h, d                                        ; $7191: $62
	ld   de, $1111                                   ; $7192: $11 $11 $11
	ld   de, $1111                                   ; $7195: $11 $11 $11
	ld   de, $1111                                   ; $7198: $11 $11 $11
	ld   a, e                                        ; $719b: $7b
	rst  $38                                         ; $719c: $ff
	rst  $38                                         ; $719d: $ff
	rst  $38                                         ; $719e: $ff
	rst  $38                                         ; $719f: $ff
	rst  $38                                         ; $71a0: $ff
	rst  $38                                         ; $71a1: $ff
	rst  $38                                         ; $71a2: $ff
	rst  $38                                         ; $71a3: $ff
	rst  $38                                         ; $71a4: $ff
	cp   $b8                                         ; $71a5: $fe $b8
	ld   sp, $1111                                   ; $71a7: $31 $11 $11
	ld   de, $1111                                   ; $71aa: $11 $11 $11
	ld   de, $1111                                   ; $71ad: $11 $11 $11
	ld   de, $ff18                                   ; $71b0: $11 $18 $ff
	rst  $38                                         ; $71b3: $ff
	rst  $38                                         ; $71b4: $ff
	rst  $38                                         ; $71b5: $ff
	rst  $38                                         ; $71b6: $ff
	rst  $38                                         ; $71b7: $ff
	rst  $38                                         ; $71b8: $ff
	rst  $38                                         ; $71b9: $ff
	rst  $38                                         ; $71ba: $ff
	rst  $38                                         ; $71bb: $ff
	add  sp, $11                                     ; $71bc: $e8 $11
	ld   de, $1111                                   ; $71be: $11 $11 $11
	ld   de, $1111                                   ; $71c1: $11 $11 $11
	ld   de, $1411                                   ; $71c4: $11 $11 $14
	ld   c, c                                        ; $71c7: $49
	rst  $38                                         ; $71c8: $ff
	rst  $38                                         ; $71c9: $ff
	rst  $38                                         ; $71ca: $ff
	rst  $38                                         ; $71cb: $ff
	rst  $38                                         ; $71cc: $ff
	rst  $38                                         ; $71cd: $ff
	rst  $38                                         ; $71ce: $ff
	rst  $38                                         ; $71cf: $ff
	rst  $38                                         ; $71d0: $ff
	cp   $dc                                         ; $71d1: $fe $dc
	ld   d, e                                        ; $71d3: $53
	ld   de, $1111                                   ; $71d4: $11 $11 $11
	ld   de, $1111                                   ; $71d7: $11 $11 $11
	ld   de, $1211                                   ; $71da: $11 $11 $12
	ld   c, c                                        ; $71dd: $49
	rst  JumpTable                                         ; $71de: $df
	rst  $38                                         ; $71df: $ff
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	rst  $38                                         ; $71e2: $ff
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	rst  $38                                         ; $71e5: $ff
	rst  $38                                         ; $71e6: $ff
	rst  $38                                         ; $71e7: $ff
	ld   a, [$1153]                                  ; $71e8: $fa $53 $11
	ld   de, $1111                                   ; $71eb: $11 $11 $11
	ld   de, $1111                                   ; $71ee: $11 $11 $11
	ld   de, $1711                                   ; $71f1: $11 $11 $17
	db   $ec                                         ; $71f4: $ec
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	rst  $38                                         ; $71fa: $ff
	rst  $38                                         ; $71fb: $ff
	rst  $38                                         ; $71fc: $ff
	rst  $38                                         ; $71fd: $ff
	ei                                               ; $71fe: $fb
	halt                                             ; $71ff: $76
	ld   sp, $1111                                   ; $7200: $31 $11 $11
	ld   de, $1111                                   ; $7203: $11 $11 $11
	ld   de, $1111                                   ; $7206: $11 $11 $11
	ld   de, $ff5a                                   ; $7209: $11 $5a $ff
	rst  $38                                         ; $720c: $ff
	rst  $38                                         ; $720d: $ff
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	rst  $38                                         ; $7210: $ff
	rst  $38                                         ; $7211: $ff
	rst  $38                                         ; $7212: $ff
	rst  $38                                         ; $7213: $ff
	cp   $ca                                         ; $7214: $fe $ca
	ld   h, e                                        ; $7216: $63
	ld   de, $1111                                   ; $7217: $11 $11 $11
	ld   de, $1111                                   ; $721a: $11 $11 $11
	ld   de, $1111                                   ; $721d: $11 $11 $11
	inc  sp                                          ; $7220: $33
	sbc  a                                           ; $7221: $9f
	rst  $38                                         ; $7222: $ff
	rst  $38                                         ; $7223: $ff
	rst  $38                                         ; $7224: $ff
	rst  $38                                         ; $7225: $ff
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	rst  $38                                         ; $7229: $ff
	rst  $38                                         ; $722a: $ff
	ei                                               ; $722b: $fb
	sbc  b                                           ; $722c: $98
	ld   d, d                                        ; $722d: $52
	ld   de, $1111                                   ; $722e: $11 $11 $11
	ld   de, $1111                                   ; $7231: $11 $11 $11
	ld   de, $1211                                   ; $7234: $11 $11 $12
	ld   [bc], a                                     ; $7237: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7238: $cf
	rst  $38                                         ; $7239: $ff
	rst  $38                                         ; $723a: $ff

Call_0e3_723b:
	rst  $38                                         ; $723b: $ff
	rst  $38                                         ; $723c: $ff
	rst  $38                                         ; $723d: $ff
	rst  $38                                         ; $723e: $ff
	rst  $38                                         ; $723f: $ff
	rst  $38                                         ; $7240: $ff
	rst  $38                                         ; $7241: $ff
	db   $eb                                         ; $7242: $eb
	sub  l                                           ; $7243: $95
	ld   de, $1111                                   ; $7244: $11 $11 $11
	ld   de, $1111                                   ; $7247: $11 $11 $11
	ld   de, $1111                                   ; $724a: $11 $11 $11
	ld   de, $9e7b                                   ; $724d: $11 $7b $9e
	rst  $38                                         ; $7250: $ff
	rst  $38                                         ; $7251: $ff
	rst  $38                                         ; $7252: $ff
	rst  $38                                         ; $7253: $ff
	rst  $38                                         ; $7254: $ff
	rst  $38                                         ; $7255: $ff
	rst  $38                                         ; $7256: $ff
	rst  $38                                         ; $7257: $ff
	rst  $38                                         ; $7258: $ff
	cp   d                                           ; $7259: $ba
	or   a                                           ; $725a: $b7
	ld   b, d                                        ; $725b: $42
	ld   de, $1111                                   ; $725c: $11 $11 $11
	ld   de, $1111                                   ; $725f: $11 $11 $11
	ld   de, $1111                                   ; $7262: $11 $11 $11
	adc  c                                           ; $7265: $89
	call $ffdf                                       ; $7266: $cd $df $ff
	rst  $38                                         ; $7269: $ff
	rst  $38                                         ; $726a: $ff
	rst  $38                                         ; $726b: $ff
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	rst  $38                                         ; $726e: $ff
	rst  $38                                         ; $726f: $ff
	bit  6, [hl]                                     ; $7270: $cb $76
	ld   h, e                                        ; $7272: $63
	ld   de, $1111                                   ; $7273: $11 $11 $11
	ld   de, $1111                                   ; $7276: $11 $11 $11
	ld   de, $1411                                   ; $7279: $11 $11 $14
	sub  l                                           ; $727c: $95
	inc  l                                           ; $727d: $2c
	rst  $38                                         ; $727e: $ff
	rst  $38                                         ; $727f: $ff
	rst  $38                                         ; $7280: $ff
	rst  $38                                         ; $7281: $ff
	rst  $38                                         ; $7282: $ff
	rst  $38                                         ; $7283: $ff
	rst  $38                                         ; $7284: $ff
	rst  $38                                         ; $7285: $ff
	rst  $38                                         ; $7286: $ff
	db   $fd                                         ; $7287: $fd
	cp   c                                           ; $7288: $b9
	ld   b, d                                        ; $7289: $42
	ld   de, $1111                                   ; $728a: $11 $11 $11
	ld   de, $1111                                   ; $728d: $11 $11 $11
	ld   de, $1111                                   ; $7290: $11 $11 $11
	inc  de                                          ; $7293: $13
	cp   l                                           ; $7294: $bd
	db   $ec                                         ; $7295: $ec
	rst  $38                                         ; $7296: $ff
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	rst  $38                                         ; $7299: $ff
	rst  $38                                         ; $729a: $ff
	rst  $38                                         ; $729b: $ff
	rst  $38                                         ; $729c: $ff
	rst  $38                                         ; $729d: $ff
	db   $fd                                         ; $729e: $fd
	jp   z, $2185                                    ; $729f: $ca $85 $21

	ld   de, $1111                                   ; $72a2: $11 $11 $11
	ld   de, $1111                                   ; $72a5: $11 $11 $11
	ld   de, $1111                                   ; $72a8: $11 $11 $11
	adc  e                                           ; $72ab: $8b
	ld   a, d                                        ; $72ac: $7a
	rst  $38                                         ; $72ad: $ff
	rst  $38                                         ; $72ae: $ff
	rst  $38                                         ; $72af: $ff
	rst  $38                                         ; $72b0: $ff
	rst  $38                                         ; $72b1: $ff
	rst  $38                                         ; $72b2: $ff
	rst  $38                                         ; $72b3: $ff
	rst  $38                                         ; $72b4: $ff
	cp   $fa                                         ; $72b5: $fe $fa
	cp   b                                           ; $72b7: $b8
	ld   b, e                                        ; $72b8: $43
	ld   hl, $1111                                   ; $72b9: $21 $11 $11
	ld   de, $1111                                   ; $72bc: $11 $11 $11
	ld   de, $1111                                   ; $72bf: $11 $11 $11
	ld   d, $76                                      ; $72c2: $16 $76
	xor  l                                           ; $72c4: $ad
	rst  $38                                         ; $72c5: $ff
	rst  $38                                         ; $72c6: $ff
	rst  $38                                         ; $72c7: $ff
	rst  $38                                         ; $72c8: $ff
	rst  $38                                         ; $72c9: $ff
	rst  $38                                         ; $72ca: $ff
	rst  $38                                         ; $72cb: $ff
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	cp   c                                           ; $72ce: $b9
	and  l                                           ; $72cf: $a5
	inc  [hl]                                        ; $72d0: $34
	ld   hl, $1111                                   ; $72d1: $21 $11 $11
	ld   de, $1111                                   ; $72d4: $11 $11 $11
	ld   de, $1111                                   ; $72d7: $11 $11 $11
	inc  de                                          ; $72da: $13
	ld   h, a                                        ; $72db: $67
	sbc  d                                           ; $72dc: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72dd: $cf
	rst  $38                                         ; $72de: $ff
	rst  $38                                         ; $72df: $ff
	rst  $38                                         ; $72e0: $ff
	rst  $38                                         ; $72e1: $ff
	rst  $38                                         ; $72e2: $ff
	rst  $38                                         ; $72e3: $ff
	rst  $38                                         ; $72e4: $ff
	rst  $38                                         ; $72e5: $ff
	xor  $dc                                         ; $72e6: $ee $dc
	add  [hl]                                        ; $72e8: $86
	ld   h, l                                        ; $72e9: $65
	ld   [hl-], a                                    ; $72ea: $32
	ld   de, $1111                                   ; $72eb: $11 $11 $11
	ld   de, $1111                                   ; $72ee: $11 $11 $11
	ld   de, $2311                                   ; $72f1: $11 $11 $23
	ld   [hl], $ab                                   ; $72f4: $36 $ab
	rst  $28                                         ; $72f6: $ef
	rst  $38                                         ; $72f7: $ff
	rst  $38                                         ; $72f8: $ff
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	rst  $38                                         ; $72fd: $ff
	rst  $38                                         ; $72fe: $ff
	db   $fc                                         ; $72ff: $fc
	cp   d                                           ; $7300: $ba
	ld   [hl], l                                     ; $7301: $75
	ld   d, e                                        ; $7302: $53
	ld   de, $1111                                   ; $7303: $11 $11 $11
	ld   de, $1111                                   ; $7306: $11 $11 $11
	ld   de, $1111                                   ; $7309: $11 $11 $11
	ld   [de], a                                     ; $730c: $12
	ld   l, c                                        ; $730d: $69
	cp   l                                           ; $730e: $bd
	rst  $38                                         ; $730f: $ff
	rst  $38                                         ; $7310: $ff
	rst  $38                                         ; $7311: $ff
	rst  $38                                         ; $7312: $ff
	rst  $38                                         ; $7313: $ff
	rst  $38                                         ; $7314: $ff
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	cp   $ca                                         ; $7317: $fe $ca
	add  [hl]                                        ; $7319: $86
	ld   d, d                                        ; $731a: $52
	ld   de, $1111                                   ; $731b: $11 $11 $11
	ld   de, $1111                                   ; $731e: $11 $11 $11
	ld   de, $1111                                   ; $7321: $11 $11 $11
	ld   de, $7836                                   ; $7324: $11 $36 $78
	rst  JumpTable                                         ; $7327: $df
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	rst  $38                                         ; $732a: $ff
	rst  $38                                         ; $732b: $ff
	rst  $38                                         ; $732c: $ff
	rst  $38                                         ; $732d: $ff
	rst  $38                                         ; $732e: $ff
	rst  $38                                         ; $732f: $ff
	db   $ec                                         ; $7330: $ec
	and  a                                           ; $7331: $a7
	ld   h, h                                        ; $7332: $64
	ld   hl, $1111                                   ; $7333: $21 $11 $11
	ld   de, $1111                                   ; $7336: $11 $11 $11
	ld   de, $1111                                   ; $7339: $11 $11 $11
	ld   de, $5712                                   ; $733c: $11 $12 $57
	sbc  h                                           ; $733f: $9c
	rst  $38                                         ; $7340: $ff
	rst  $38                                         ; $7341: $ff
	rst  $38                                         ; $7342: $ff
	rst  $38                                         ; $7343: $ff
	rst  $38                                         ; $7344: $ff
	rst  $38                                         ; $7345: $ff
	rst  $38                                         ; $7346: $ff
	rst  $38                                         ; $7347: $ff
	cp   $ca                                         ; $7348: $fe $ca
	add  l                                           ; $734a: $85
	ld   b, d                                        ; $734b: $42
	ld   de, $1111                                   ; $734c: $11 $11 $11
	ld   de, $1111                                   ; $734f: $11 $11 $11
	ld   de, $1111                                   ; $7352: $11 $11 $11
	ld   de, $7925                                   ; $7355: $11 $25 $79
	cp   [hl]                                        ; $7358: $be
	rst  $38                                         ; $7359: $ff
	rst  $38                                         ; $735a: $ff
	rst  $38                                         ; $735b: $ff
	rst  $38                                         ; $735c: $ff
	rst  $38                                         ; $735d: $ff
	rst  $38                                         ; $735e: $ff
	rst  $38                                         ; $735f: $ff
	rst  $38                                         ; $7360: $ff
	db   $fd                                         ; $7361: $fd
	cp   c                                           ; $7362: $b9
	ld   h, l                                        ; $7363: $65
	ld   [hl-], a                                    ; $7364: $32
	ld   de, $1111                                   ; $7365: $11 $11 $11
	ld   de, $1111                                   ; $7368: $11 $11 $11
	ld   de, $1111                                   ; $736b: $11 $11 $11
	ld   de, $7925                                   ; $736e: $11 $25 $79
	cp   a                                           ; $7371: $bf
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	rst  $38                                         ; $7374: $ff
	rst  $38                                         ; $7375: $ff
	rst  $38                                         ; $7376: $ff
	rst  $38                                         ; $7377: $ff
	rst  $38                                         ; $7378: $ff
	rst  $38                                         ; $7379: $ff
	db   $ed                                         ; $737a: $ed

Call_0e3_737b:
	cp   c                                           ; $737b: $b9
	ld   [hl], l                                     ; $737c: $75
	ld   [hl-], a                                    ; $737d: $32
	ld   de, $1111                                   ; $737e: $11 $11 $11
	ld   de, $1111                                   ; $7381: $11 $11 $11
	ld   de, $1111                                   ; $7384: $11 $11 $11
	ld   [de], a                                     ; $7387: $12
	ld   b, [hl]                                     ; $7388: $46
	ld   a, c                                        ; $7389: $79
	rst  JumpTable                                         ; $738a: $df
	rst  $38                                         ; $738b: $ff
	rst  $38                                         ; $738c: $ff
	rst  $38                                         ; $738d: $ff
	rst  $38                                         ; $738e: $ff
	rst  $38                                         ; $738f: $ff
	rst  $38                                         ; $7390: $ff
	rst  $38                                         ; $7391: $ff
	rst  $38                                         ; $7392: $ff
	db   $eb                                         ; $7393: $eb
	sbc  b                                           ; $7394: $98
	ld   h, h                                        ; $7395: $64
	ld   [hl+], a                                    ; $7396: $22
	ld   de, $1111                                   ; $7397: $11 $11 $11
	ld   de, $1111                                   ; $739a: $11 $11 $11
	ld   de, $1111                                   ; $739d: $11 $11 $11
	ld   de, $8a46                                   ; $73a0: $11 $46 $8a
	rst  JumpTable                                         ; $73a3: $df
	rst  $38                                         ; $73a4: $ff
	rst  $38                                         ; $73a5: $ff
	rst  $38                                         ; $73a6: $ff
	rst  $38                                         ; $73a7: $ff
	rst  $38                                         ; $73a8: $ff
	rst  $38                                         ; $73a9: $ff
	rst  $38                                         ; $73aa: $ff
	rst  $38                                         ; $73ab: $ff
	db   $ec                                         ; $73ac: $ec
	sub  a                                           ; $73ad: $97
	ld   h, h                                        ; $73ae: $64
	ld   sp, $1111                                   ; $73af: $31 $11 $11
	ld   de, $1111                                   ; $73b2: $11 $11 $11
	ld   de, $1111                                   ; $73b5: $11 $11 $11
	ld   de, $4612                                   ; $73b8: $11 $12 $46
	ld   a, c                                        ; $73bb: $79
	rst  JumpTable                                         ; $73bc: $df
	rst  $38                                         ; $73bd: $ff
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
	rst  $38                                         ; $73c0: $ff
	rst  $38                                         ; $73c1: $ff
	rst  $38                                         ; $73c2: $ff
	rst  $38                                         ; $73c3: $ff
	rst  $38                                         ; $73c4: $ff
	db   $eb                                         ; $73c5: $eb
	sbc  b                                           ; $73c6: $98
	ld   h, h                                        ; $73c7: $64
	ld   sp, $1111                                   ; $73c8: $31 $11 $11
	ld   de, $1111                                   ; $73cb: $11 $11 $11
	ld   de, $1111                                   ; $73ce: $11 $11 $11
	ld   de, $4613                                   ; $73d1: $11 $13 $46
	xor  e                                           ; $73d4: $ab
	rst  JumpTable                                         ; $73d5: $df
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	rst  $38                                         ; $73d8: $ff
	rst  $38                                         ; $73d9: $ff
	rst  $38                                         ; $73da: $ff
	rst  $38                                         ; $73db: $ff
	rst  $38                                         ; $73dc: $ff
	rst  $38                                         ; $73dd: $ff
	call z, Call_0e3_4286                            ; $73de: $cc $86 $42
	ld   hl, $1111                                   ; $73e1: $21 $11 $11
	ld   de, $1111                                   ; $73e4: $11 $11 $11
	ld   de, $1111                                   ; $73e7: $11 $11 $11
	ld   de, $ab25                                   ; $73ea: $11 $25 $ab
	cp   a                                           ; $73ed: $bf
	rst  $38                                         ; $73ee: $ff
	rst  $38                                         ; $73ef: $ff
	rst  $38                                         ; $73f0: $ff
	rst  $38                                         ; $73f1: $ff
	rst  $38                                         ; $73f2: $ff
	rst  $38                                         ; $73f3: $ff
	rst  $38                                         ; $73f4: $ff
	rst  $38                                         ; $73f5: $ff
	db   $fc                                         ; $73f6: $fc
	ret  z                                           ; $73f7: $c8

	adc  c                                           ; $73f8: $89
	inc  hl                                          ; $73f9: $23
	ld   sp, $1111                                   ; $73fa: $31 $11 $11
	ld   de, $1111                                   ; $73fd: $11 $11 $11
	ld   de, $1111                                   ; $7400: $11 $11 $11
	ld   de, $9d67                                   ; $7403: $11 $67 $9d
	rst  $38                                         ; $7406: $ff
	rst  $38                                         ; $7407: $ff
	rst  $38                                         ; $7408: $ff
	rst  $38                                         ; $7409: $ff
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	cp   d                                           ; $740f: $ba
	call nz, $1155                                   ; $7410: $c4 $55 $11
	ld   de, $1111                                   ; $7413: $11 $11 $11
	ld   de, $1111                                   ; $7416: $11 $11 $11
	ld   de, $1111                                   ; $7419: $11 $11 $11
	jr   jr_0e3_7485                                 ; $741c: $18 $67

	rst  $38                                         ; $741e: $ff
	rst  $28                                         ; $741f: $ef
	rst  $38                                         ; $7420: $ff
	rst  $38                                         ; $7421: $ff
	rst  $38                                         ; $7422: $ff
	rst  $38                                         ; $7423: $ff
	rst  $38                                         ; $7424: $ff
	rst  $38                                         ; $7425: $ff
	rst  $38                                         ; $7426: $ff
	ld   a, [$34ca]                                  ; $7427: $fa $ca $34
	ld   [hl-], a                                    ; $742a: $32
	ld   de, $1111                                   ; $742b: $11 $11 $11
	ld   de, $1111                                   ; $742e: $11 $11 $11
	ld   de, $1111                                   ; $7431: $11 $11 $11
	ld   b, c                                        ; $7434: $41
	inc  a                                           ; $7435: $3c
	adc  l                                           ; $7436: $8d
	cp   $ff                                         ; $7437: $fe $ff
	rst  $38                                         ; $7439: $ff
	rst  $38                                         ; $743a: $ff
	rst  $38                                         ; $743b: $ff
	rst  $38                                         ; $743c: $ff
	rst  $38                                         ; $743d: $ff
	rst  $38                                         ; $743e: $ff
	rst  $38                                         ; $743f: $ff
	db   $ec                                         ; $7440: $ec
	sub  [hl]                                        ; $7441: $96
	ld   h, e                                        ; $7442: $63
	ld   de, $1111                                   ; $7443: $11 $11 $11
	ld   de, $1111                                   ; $7446: $11 $11 $11
	ld   de, $1111                                   ; $7449: $11 $11 $11
	ld   de, $3827                                   ; $744c: $11 $27 $38
	db   $fd                                         ; $744f: $fd
	rst  $38                                         ; $7450: $ff
	rst  $38                                         ; $7451: $ff
	rst  $38                                         ; $7452: $ff
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	rst  $38                                         ; $7457: $ff
	db   $ed                                         ; $7458: $ed
	jp   z, Jump_0e3_4264                            ; $7459: $ca $64 $42

	ld   de, $1111                                   ; $745c: $11 $11 $11
	ld   de, $1111                                   ; $745f: $11 $11 $11
	ld   de, $1111                                   ; $7462: $11 $11 $11
	ld   [de], a                                     ; $7465: $12
	scf                                              ; $7466: $37
	adc  h                                           ; $7467: $8c
	sbc  $ff                                         ; $7468: $de $ff
	rst  $38                                         ; $746a: $ff
	rst  $38                                         ; $746b: $ff
	rst  $38                                         ; $746c: $ff
	rst  $38                                         ; $746d: $ff
	rst  $38                                         ; $746e: $ff
	rst  $38                                         ; $746f: $ff
	rst  $38                                         ; $7470: $ff
	db   $fc                                         ; $7471: $fc
	sub  a                                           ; $7472: $97
	ld   h, e                                        ; $7473: $63
	ld   hl, $1111                                   ; $7474: $21 $11 $11
	ld   de, $1111                                   ; $7477: $11 $11 $11
	ld   de, $1111                                   ; $747a: $11 $11 $11
	ld   de, $5614                                   ; $747d: $11 $14 $56
	xor  a                                           ; $7480: $af
	db   $ed                                         ; $7481: $ed
	rst  $38                                         ; $7482: $ff
	rst  $38                                         ; $7483: $ff
	rst  $38                                         ; $7484: $ff

jr_0e3_7485:
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	rst  $38                                         ; $7487: $ff
	rst  $38                                         ; $7488: $ff
	db   $fd                                         ; $7489: $fd
	call c, Call_0e3_4585                            ; $748a: $dc $85 $45
	ld   de, $1111                                   ; $748d: $11 $11 $11
	ld   de, $1111                                   ; $7490: $11 $11 $11
	ld   de, $1111                                   ; $7493: $11 $11 $11
	inc  de                                          ; $7496: $13
	ld   [hl-], a                                    ; $7497: $32
	sbc  c                                           ; $7498: $99
	sbc  a                                           ; $7499: $9f
	db   $fd                                         ; $749a: $fd
	rst  $38                                         ; $749b: $ff
	rst  $38                                         ; $749c: $ff
	rst  $38                                         ; $749d: $ff
	rst  $38                                         ; $749e: $ff
	rst  $38                                         ; $749f: $ff
	rst  $38                                         ; $74a0: $ff
	rst  $38                                         ; $74a1: $ff
	ei                                               ; $74a2: $fb
	call c, Call_0e3_5474                            ; $74a3: $dc $74 $54
	ld   de, $1111                                   ; $74a6: $11 $11 $11
	ld   de, $1111                                   ; $74a9: $11 $11 $11
	ld   de, $1111                                   ; $74ac: $11 $11 $11
	ld   de, $9714                                   ; $74af: $11 $14 $97
	xor  a                                           ; $74b2: $af
	rst  $28                                         ; $74b3: $ef
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff
	rst  $38                                         ; $74b9: $ff

Call_0e3_74ba:
	rst  $38                                         ; $74ba: $ff
	cp   $e9                                         ; $74bb: $fe $e9
	ld   [hl], a                                     ; $74bd: $77
	ld   b, d                                        ; $74be: $42
	ld   de, $1111                                   ; $74bf: $11 $11 $11
	ld   de, $1111                                   ; $74c2: $11 $11 $11
	ld   de, $1111                                   ; $74c5: $11 $11 $11
	ld   sp, $4a47                                   ; $74c8: $31 $47 $4a
	rst  $28                                         ; $74cb: $ef
	rst  $28                                         ; $74cc: $ef
	rst  $38                                         ; $74cd: $ff
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	rst  $38                                         ; $74d0: $ff
	rst  $38                                         ; $74d1: $ff
	rst  $38                                         ; $74d2: $ff
	rst  $38                                         ; $74d3: $ff
	db   $ed                                         ; $74d4: $ed
	jp   c, $6466                                    ; $74d5: $da $66 $64

	ld   de, $1111                                   ; $74d8: $11 $11 $11
	ld   de, $1111                                   ; $74db: $11 $11 $11
	ld   de, $1111                                   ; $74de: $11 $11 $11
	inc  de                                          ; $74e1: $13
	dec  d                                           ; $74e2: $15
	and  l                                           ; $74e3: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74e4: $cf
	cp   a                                           ; $74e5: $bf
	rst  $38                                         ; $74e6: $ff
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	rst  $38                                         ; $74e9: $ff
	rst  $38                                         ; $74ea: $ff
	rst  $38                                         ; $74eb: $ff
	rst  $38                                         ; $74ec: $ff
	cp   $da                                         ; $74ed: $fe $da
	ld   [hl], a                                     ; $74ef: $77
	ld   [hl], d                                     ; $74f0: $72
	ld   [de], a                                     ; $74f1: $12
	ld   de, $1111                                   ; $74f2: $11 $11 $11
	ld   de, $1111                                   ; $74f5: $11 $11 $11
	ld   de, $1111                                   ; $74f8: $11 $11 $11
	inc  h                                           ; $74fb: $24
	ld   e, b                                        ; $74fc: $58
	or   a                                           ; $74fd: $b7
	rst  $28                                         ; $74fe: $ef
	rst  JumpTable                                         ; $74ff: $df
	rst  $38                                         ; $7500: $ff
	rst  $38                                         ; $7501: $ff
	rst  $38                                         ; $7502: $ff
	rst  $38                                         ; $7503: $ff
	rst  $38                                         ; $7504: $ff
	rst  $38                                         ; $7505: $ff
	rst  $38                                         ; $7506: $ff
	ld   a, [$66cb]                                  ; $7507: $fa $cb $66
	ld   d, d                                        ; $750a: $52
	ld   sp, $1111                                   ; $750b: $31 $11 $11
	ld   de, $1111                                   ; $750e: $11 $11 $11
	ld   de, $1211                                   ; $7511: $11 $11 $12
	ld   hl, $442b                                   ; $7514: $21 $2b $44
	ei                                               ; $7517: $fb
	xor  a                                           ; $7518: $af
	rst  $38                                         ; $7519: $ff
	rst  $38                                         ; $751a: $ff
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	rst  $38                                         ; $751f: $ff
	db   $fc                                         ; $7520: $fc
	ei                                               ; $7521: $fb
	ld   a, c                                        ; $7522: $79
	ld   [hl], e                                     ; $7523: $73
	ld   [hl+], a                                    ; $7524: $22
	ld   de, $1111                                   ; $7525: $11 $11 $11
	ld   de, $1111                                   ; $7528: $11 $11 $11
	ld   de, $1111                                   ; $752b: $11 $11 $11
	inc  [hl]                                        ; $752e: $34
	dec  [hl]                                        ; $752f: $35
	sbc  e                                           ; $7530: $9b
	sbc  a                                           ; $7531: $9f
	db   $ec                                         ; $7532: $ec
	rst  $38                                         ; $7533: $ff
	rst  $38                                         ; $7534: $ff
	rst  $38                                         ; $7535: $ff
	rst  $38                                         ; $7536: $ff
	rst  $38                                         ; $7537: $ff
	rst  $38                                         ; $7538: $ff
	xor  $ed                                         ; $7539: $ee $ed
	cp   e                                           ; $753b: $bb
	add  a                                           ; $753c: $87
	ld   d, e                                        ; $753d: $53
	ld   [de], a                                     ; $753e: $12
	ld   hl, $1111                                   ; $753f: $21 $11 $11
	ld   de, $1111                                   ; $7542: $11 $11 $11
	ld   de, $1111                                   ; $7545: $11 $11 $11
	ld   [hl+], a                                    ; $7548: $22
	ld   e, b                                        ; $7549: $58
	ld   a, c                                        ; $754a: $79
	adc  $dc                                         ; $754b: $ce $dc
	rst  $38                                         ; $754d: $ff
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	cp   $df                                         ; $7552: $fe $df
	ei                                               ; $7554: $fb
	cp   h                                           ; $7555: $bc
	sub  [hl]                                        ; $7556: $96
	ld   h, l                                        ; $7557: $65
	inc  sp                                          ; $7558: $33
	ld   [de], a                                     ; $7559: $12
	ld   de, $1111                                   ; $755a: $11 $11 $11
	ld   de, $1321                                   ; $755d: $11 $21 $13
	ld   de, $4621                                   ; $7560: $11 $21 $46
	ld   d, a                                        ; $7563: $57
	adc  c                                           ; $7564: $89
	xor  h                                           ; $7565: $ac
	sbc  $ff                                         ; $7566: $de $ff
	rst  $38                                         ; $7568: $ff
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	rst  $38                                         ; $756b: $ff
	db   $fd                                         ; $756c: $fd
	rst  $38                                         ; $756d: $ff
	call z, $96a9                                    ; $756e: $cc $a9 $96
	ld   h, l                                        ; $7571: $65
	ld   b, e                                        ; $7572: $43
	ld   [de], a                                     ; $7573: $12
	ld   sp, $1111                                   ; $7574: $31 $11 $11
	dec  d                                           ; $7577: $15
	ld   de, $1131                                   ; $7578: $11 $31 $11
	dec  d                                           ; $757b: $15
	ld   de, $7799                                   ; $757c: $11 $99 $77
	call $ffbd                                       ; $757f: $cd $bd $ff
	rst  $38                                         ; $7582: $ff
	rst  $38                                         ; $7583: $ff
	rst  $38                                         ; $7584: $ff
	rst  $38                                         ; $7585: $ff
	rst  $38                                         ; $7586: $ff
	rst  JumpTable                                         ; $7587: $df
	db   $eb                                         ; $7588: $eb
	jp   z, $67a7                                    ; $7589: $ca $a7 $67

	ld   d, h                                        ; $758c: $54
	ld   b, d                                        ; $758d: $42
	ld   [hl-], a                                    ; $758e: $32
	ld   de, $1111                                   ; $758f: $11 $11 $11
	ld   [de], a                                     ; $7592: $12
	ld   de, $2113                                   ; $7593: $11 $13 $21
	dec  h                                           ; $7596: $25
	ld   h, e                                        ; $7597: $63
	ld   l, h                                        ; $7598: $6c
	sbc  b                                           ; $7599: $98
	call c, $ffdf                                    ; $759a: $dc $df $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	sbc  $fc                                         ; $75a1: $de $fc
	xor  h                                           ; $75a3: $ac
	cp   b                                           ; $75a4: $b8
	sbc  c                                           ; $75a5: $99
	ld   [hl], l                                     ; $75a6: $75
	inc  [hl]                                        ; $75a7: $34

Call_0e3_75a8:
	ld   d, e                                        ; $75a8: $53
	ld   [de], a                                     ; $75a9: $12
	ld   [de], a                                     ; $75aa: $12
	ld   de, $1221                                   ; $75ab: $11 $21 $12
	ld   sp, $3116                                   ; $75ae: $31 $16 $31
	ld   d, l                                        ; $75b1: $55
	ld   [hl], $8b                                   ; $75b2: $36 $8b
	adc  c                                           ; $75b4: $89
	db   $ed                                         ; $75b5: $ed
	rst  $28                                         ; $75b6: $ef
	rst  JumpTable                                         ; $75b7: $df
	cp   $ff                                         ; $75b8: $fe $ff

Call_0e3_75ba:
	rst  $38                                         ; $75ba: $ff
	rst  $28                                         ; $75bb: $ef
	ei                                               ; $75bc: $fb
	db   $dd                                         ; $75bd: $dd
	cp   e                                           ; $75be: $bb
	xor  b                                           ; $75bf: $a8
	sbc  b                                           ; $75c0: $98
	ld   h, l                                        ; $75c1: $65
	ld   d, e                                        ; $75c2: $53
	inc  sp                                          ; $75c3: $33
	ld   [hl+], a                                    ; $75c4: $22
	ld   de, $2112                                   ; $75c5: $11 $12 $21
	inc  [hl]                                        ; $75c8: $34
	ld   de, $1365                                   ; $75c9: $11 $65 $13
	sub  l                                           ; $75cc: $95
	daa                                              ; $75cd: $27
	adc  c                                           ; $75ce: $89
	reti                                             ; $75cf: $d9


	xor  a                                           ; $75d0: $af
	db   $eb                                         ; $75d1: $eb
	rst  $38                                         ; $75d2: $ff
	db   $fc                                         ; $75d3: $fc
	rst  $38                                         ; $75d4: $ff
	rst  $28                                         ; $75d5: $ef
	rst  $38                                         ; $75d6: $ff
	db   $dd                                         ; $75d7: $dd
	set  1, d                                        ; $75d8: $cb $ca
	sbc  b                                           ; $75da: $98
	sub  a                                           ; $75db: $97
	ld   b, [hl]                                     ; $75dc: $46
	ld   d, h                                        ; $75dd: $54
	ld   b, d                                        ; $75de: $42
	dec  [hl]                                        ; $75df: $35
	ld   hl, $2124                                   ; $75e0: $21 $24 $21
	inc  h                                           ; $75e3: $24
	ld   hl, $1456                                   ; $75e4: $21 $56 $14
	ld   h, h                                        ; $75e7: $64
	ld   h, a                                        ; $75e8: $67
	adc  e                                           ; $75e9: $8b
	sbc  b                                           ; $75ea: $98
	rst  $28                                         ; $75eb: $ef
	cp   l                                           ; $75ec: $bd
	rst  $38                                         ; $75ed: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75ee: $cf
	rst  $38                                         ; $75ef: $ff
	cp   $ff                                         ; $75f0: $fe $ff
	cp   [hl]                                        ; $75f2: $be
	res  5, c                                        ; $75f3: $cb $a9
	sbc  b                                           ; $75f5: $98
	ld   [hl], a                                     ; $75f6: $77
	ld   d, l                                        ; $75f7: $55
	ld   b, h                                        ; $75f8: $44
	ld   d, e                                        ; $75f9: $53
	inc  hl                                          ; $75fa: $23
	ld   hl, $2124                                   ; $75fb: $21 $24 $21
	inc  [hl]                                        ; $75fe: $34
	ld   [de], a                                     ; $75ff: $12
	ld   h, h                                        ; $7600: $64
	inc  de                                          ; $7601: $13
	ld   d, [hl]                                     ; $7602: $56
	ld   h, l                                        ; $7603: $65
	ld   a, d                                        ; $7604: $7a
	xor  c                                           ; $7605: $a9
	xor  a                                           ; $7606: $af
	ld   a, [$fdcf]                                  ; $7607: $fa $cf $fd
	rst  JumpTable                                         ; $760a: $df
	db   $fc                                         ; $760b: $fc
	sbc  $fd                                         ; $760c: $de $fd
	xor  l                                           ; $760e: $ad
	jp   c, $9987                                    ; $760f: $da $87 $99

	inc  sp                                          ; $7612: $33
	add  l                                           ; $7613: $85
	inc  hl                                          ; $7614: $23
	inc  sp                                          ; $7615: $33
	inc  hl                                          ; $7616: $23
	ld   [hl+], a                                    ; $7617: $22
	ld   sp, $3214                                   ; $7618: $31 $14 $32
	inc  h                                           ; $761b: $24
	ld   d, e                                        ; $761c: $53
	scf                                              ; $761d: $37
	sub  a                                           ; $761e: $97
	ld   l, h                                        ; $761f: $6c
	reti                                             ; $7620: $d9


	adc  $fd                                         ; $7621: $ce $fd
	rst  $28                                         ; $7623: $ef
	cp   $ff                                         ; $7624: $fe $ff
	db   $fd                                         ; $7626: $fd
	sbc  $ed                                         ; $7627: $de $ed
	cp   e                                           ; $7629: $bb
	cp   d                                           ; $762a: $ba
	sbc  c                                           ; $762b: $99
	sub  a                                           ; $762c: $97
	ld   d, l                                        ; $762d: $55
	ld   h, e                                        ; $762e: $63
	ld   b, h                                        ; $762f: $44
	inc  sp                                          ; $7630: $33
	ld   hl, $2123                                   ; $7631: $21 $23 $21
	inc  h                                           ; $7634: $24
	ld   [de], a                                     ; $7635: $12
	ld   h, l                                        ; $7636: $65
	inc  d                                           ; $7637: $14
	sub  e                                           ; $7638: $93
	ld   e, h                                        ; $7639: $5c
	ld   h, a                                        ; $763a: $67
	res  7, l                                        ; $763b: $cb $bd
	db   $ec                                         ; $763d: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $763e: $cf
	db   $ec                                         ; $763f: $ec
	rst  $38                                         ; $7640: $ff
	sbc  $ed                                         ; $7641: $de $ed
	sbc  $bb                                         ; $7643: $de $bb
	jp   c, $8789                                    ; $7645: $da $89 $87

	ld   b, l                                        ; $7648: $45
	ld   [hl], l                                     ; $7649: $75
	inc  sp                                          ; $764a: $33
	ld   d, e                                        ; $764b: $53
	inc  de                                          ; $764c: $13
	ld   d, c                                        ; $764d: $51
	inc  d                                           ; $764e: $14
	ld   b, c                                        ; $764f: $41
	inc  [hl]                                        ; $7650: $34
	inc  d                                           ; $7651: $14
	ld   b, d                                        ; $7652: $42
	ld   d, h                                        ; $7653: $54
	ld   a, d                                        ; $7654: $7a
	ld   d, [hl]                                     ; $7655: $56
	sbc  $9a                                         ; $7656: $de $9a
	rst  $38                                         ; $7658: $ff
	sbc  a                                           ; $7659: $9f
	cp   $ff                                         ; $765a: $fe $ff
	rst  $38                                         ; $765c: $ff
	db   $ec                                         ; $765d: $ec
	cp   $ac                                         ; $765e: $fe $ac
	call z, $b8a8                                    ; $7660: $cc $a8 $b8
	ld   d, l                                        ; $7663: $55
	ld   d, l                                        ; $7664: $55
	ld   b, c                                        ; $7665: $41
	inc  sp                                          ; $7666: $33
	ld   [hl-], a                                    ; $7667: $32
	dec  h                                           ; $7668: $25
	ld   hl, $2333                                   ; $7669: $21 $33 $23
	inc  [hl]                                        ; $766c: $34
	ld   h, h                                        ; $766d: $64
	dec  [hl]                                        ; $766e: $35
	ld   h, [hl]                                     ; $766f: $66
	ld   b, a                                        ; $7670: $47
	db   $db                                         ; $7671: $db
	adc  h                                           ; $7672: $8c
	cp   $bd                                         ; $7673: $fe $bd
	rst  $38                                         ; $7675: $ff
	xor  a                                           ; $7676: $af
	cp   $bf                                         ; $7677: $fe $bf
	db   $fc                                         ; $7679: $fc
	jp   z, $a9dd                                    ; $767a: $ca $dd $a9

	adc  e                                           ; $767d: $8b
	ld   h, h                                        ; $767e: $64
	ld   [hl], a                                     ; $767f: $77
	ld   b, e                                        ; $7680: $43
	inc  sp                                          ; $7681: $33
	ld   sp, $1113                                   ; $7682: $31 $13 $11
	ld   hl, $2224                                   ; $7685: $21 $24 $22

Jump_0e3_7688:
	dec  [hl]                                        ; $7688: $35
	ld   sp, $7569                                   ; $7689: $31 $69 $75
	ld   a, l                                        ; $768c: $7d
	jp   hl                                          ; $768d: $e9


	xor  a                                           ; $768e: $af
	ld   sp, hl                                      ; $768f: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7690: $cf
	db   $fc                                         ; $7691: $fc
	rst  $38                                         ; $7692: $ff
	db   $fc                                         ; $7693: $fc
	rst  JumpTable                                         ; $7694: $df
	jp   z, $cbba                                    ; $7695: $ca $ba $cb

	ld   a, c                                        ; $7698: $79
	sub  l                                           ; $7699: $95
	dec  [hl]                                        ; $769a: $35
	ld   d, e                                        ; $769b: $53
	inc  sp                                          ; $769c: $33

Jump_0e3_769d:
	inc  [hl]                                        ; $769d: $34
	ld   sp, $1123                                   ; $769e: $31 $23 $11
	inc  sp                                          ; $76a1: $33
	ld   [hl+], a                                    ; $76a2: $22
	ld   h, h                                        ; $76a3: $64
	inc  h                                           ; $76a4: $24

Jump_0e3_76a5:
	dec  [hl]                                        ; $76a5: $35
	sub  [hl]                                        ; $76a6: $96
	ld   l, h                                        ; $76a7: $6c
	rst  $30                                         ; $76a8: $f7

Jump_0e3_76a9:
	sbc  a                                           ; $76a9: $9f
	jp   hl                                          ; $76aa: $e9


	rst  $38                                         ; $76ab: $ff
	rst  $38                                         ; $76ac: $ff
	rst  $38                                         ; $76ad: $ff
	rst  $38                                         ; $76ae: $ff
	call $bdfc                                       ; $76af: $cd $fc $bd
	cp   d                                           ; $76b2: $ba
	sbc  c                                           ; $76b3: $99
	add  [hl]                                        ; $76b4: $86
	ld   h, l                                        ; $76b5: $65
	ld   b, h                                        ; $76b6: $44
	ld   b, c                                        ; $76b7: $41
	inc  d                                           ; $76b8: $14
	ld   de, $1222                                   ; $76b9: $11 $22 $12
	ld   de, $2431                                   ; $76bc: $11 $31 $24
	inc  hl                                          ; $76bf: $23
	ld   d, l                                        ; $76c0: $55
	ld   h, [hl]                                     ; $76c1: $66
	ld   a, c                                        ; $76c2: $79
	sbc  d                                           ; $76c3: $9a
	cp   l                                           ; $76c4: $bd
	db   $fd                                         ; $76c5: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76c6: $cf
	cp   $ff                                         ; $76c7: $fe $ff
	cp   $ef                                         ; $76c9: $fe $ef
	call $bcda                                       ; $76cb: $cd $da $bc
	and  a                                           ; $76ce: $a7
	cp   c                                           ; $76cf: $b9
	ld   h, a                                        ; $76d0: $67
	ld   h, h                                        ; $76d1: $64
	inc  sp                                          ; $76d2: $33
	ld   hl, $2113                                   ; $76d3: $21 $13 $21
	ld   hl, $2111                                   ; $76d6: $21 $11 $21
	ld   b, h                                        ; $76d9: $44
	inc  de                                          ; $76da: $13
	ld   d, l                                        ; $76db: $55
	ld   d, l                                        ; $76dc: $55
	ld   a, c                                        ; $76dd: $79
	adc  c                                           ; $76de: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76df: $cf
	db   $db                                         ; $76e0: $db
	rst  $38                                         ; $76e1: $ff
	rst  $28                                         ; $76e2: $ef
	rst  $38                                         ; $76e3: $ff
	cp   $ff                                         ; $76e4: $fe $ff
	ei                                               ; $76e6: $fb
	xor  l                                           ; $76e7: $ad
	ret                                              ; $76e8: $c9


	xor  h                                           ; $76e9: $ac
	sub  [hl]                                        ; $76ea: $96
	ld   [hl], a                                     ; $76eb: $77
	ld   b, e                                        ; $76ec: $43
	inc  sp                                          ; $76ed: $33
	ld   [de], a                                     ; $76ee: $12
	ld   hl, $1121                                   ; $76ef: $21 $21 $11
	ld   [de], a                                     ; $76f2: $12
	ld   bc, $1554                                   ; $76f3: $01 $54 $15
	ld   [hl], c                                     ; $76f6: $71
	add  hl, sp                                      ; $76f7: $39
	sbc  b                                           ; $76f8: $98
	ld   l, e                                        ; $76f9: $6b
	db   $db                                         ; $76fa: $db
	xor  $ff                                         ; $76fb: $ee $ff
	rst  JumpTable                                         ; $76fd: $df
	rst  $38                                         ; $76fe: $ff
	cp   $ff                                         ; $76ff: $fe $ff
	sbc  $ec                                         ; $7701: $de $ec
	cp   d                                           ; $7703: $ba
	res  1, c                                        ; $7704: $cb $89
	halt                                             ; $7706: $76
	ld   d, h                                        ; $7707: $54
	ld   d, h                                        ; $7708: $54
	ld   [hl+], a                                    ; $7709: $22
	ld   sp, $2111                                   ; $770a: $31 $11 $21
	ld   de, $1321                                   ; $770d: $11 $21 $13
	ld   de, $6623                                   ; $7710: $11 $23 $66
	ld   l, c                                        ; $7713: $69
	xor  d                                           ; $7714: $aa
	xor  a                                           ; $7715: $af
	xor  $ff                                         ; $7716: $ee $ff
	rst  $38                                         ; $7718: $ff
	rst  $38                                         ; $7719: $ff
	rst  $38                                         ; $771a: $ff
	cp   $fe                                         ; $771b: $fe $fe
	adc  $cb                                         ; $771d: $ce $cb
	xor  b                                           ; $771f: $a8
	and  a                                           ; $7720: $a7
	ld   d, l                                        ; $7721: $55
	ld   d, h                                        ; $7722: $54
	ld   [de], a                                     ; $7723: $12
	ld   sp, $1111                                   ; $7724: $31 $11 $11
	ld   de, $1211                                   ; $7727: $11 $11 $12
	ld   hl, $2314                                   ; $772a: $21 $14 $23
	ld   h, a                                        ; $772d: $67
	sbc  d                                           ; $772e: $9a
	adc  e                                           ; $772f: $8b
	cp   $bf                                         ; $7730: $fe $bf
	cp   $ff                                         ; $7732: $fe $ff
	rst  $38                                         ; $7734: $ff
	rst  $38                                         ; $7735: $ff
	rst  $38                                         ; $7736: $ff
	db   $ec                                         ; $7737: $ec
	db   $ed                                         ; $7738: $ed
	sbc  d                                           ; $7739: $9a
	xor  b                                           ; $773a: $a8
	halt                                             ; $773b: $76
	ld   d, h                                        ; $773c: $54
	ld   b, e                                        ; $773d: $43
	ld   [de], a                                     ; $773e: $12
	ld   de, $1111                                   ; $773f: $11 $11 $11
	ld   de, $1111                                   ; $7742: $11 $11 $11
	ld   [de], a                                     ; $7745: $12
	ld   hl, $6658                                   ; $7746: $21 $58 $66
	sbc  l                                           ; $7749: $9d
	jp   c, $feff                                    ; $774a: $da $ff $fe

	rst  $38                                         ; $774d: $ff
	rst  $38                                         ; $774e: $ff
	rst  $38                                         ; $774f: $ff
	cp   $ff                                         ; $7750: $fe $ff
	db   $fc                                         ; $7752: $fc
	cp   h                                           ; $7753: $bc
	xor  b                                           ; $7754: $a8
	ld   [hl], a                                     ; $7755: $77
	ld   [hl], h                                     ; $7756: $74
	inc  sp                                          ; $7757: $33
	ld   [hl+], a                                    ; $7758: $22
	ld   de, $1111                                   ; $7759: $11 $11 $11
	ld   de, $1111                                   ; $775c: $11 $11 $11
	ld   de, $4713                                   ; $775f: $11 $13 $47
	ld   a, b                                        ; $7762: $78
	cp   h                                           ; $7763: $bc
	xor  $ff                                         ; $7764: $ee $ff
	rst  $38                                         ; $7766: $ff
	rst  $38                                         ; $7767: $ff
	rst  $38                                         ; $7768: $ff
	rst  $38                                         ; $7769: $ff
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	db   $ed                                         ; $776c: $ed
	jp   z, Jump_0e3_66a9                            ; $776d: $ca $a9 $66

	ld   d, h                                        ; $7770: $54
	ld   [hl+], a                                    ; $7771: $22
	ld   hl, $1111                                   ; $7772: $21 $11 $11
	ld   de, $1111                                   ; $7775: $11 $11 $11
	ld   de, $4411                                   ; $7778: $11 $11 $44
	ld   b, a                                        ; $777b: $47
	sbc  e                                           ; $777c: $9b
	cp   l                                           ; $777d: $bd
	rst  $38                                         ; $777e: $ff
	rst  $38                                         ; $777f: $ff
	rst  $38                                         ; $7780: $ff
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	rst  $38                                         ; $7784: $ff
	cp   $dc                                         ; $7785: $fe $dc
	xor  c                                           ; $7787: $a9
	sub  a                                           ; $7788: $97
	ld   d, h                                        ; $7789: $54
	ld   b, d                                        ; $778a: $42
	ld   de, $1111                                   ; $778b: $11 $11 $11
	ld   de, $1111                                   ; $778e: $11 $11 $11
	ld   de, $1211                                   ; $7791: $11 $11 $12
	ld   d, l                                        ; $7794: $55
	ld   a, e                                        ; $7795: $7b
	call $ffff                                       ; $7796: $cd $ff $ff
	rst  $38                                         ; $7799: $ff
	rst  $38                                         ; $779a: $ff
	rst  $38                                         ; $779b: $ff
	rst  $38                                         ; $779c: $ff
	rst  $38                                         ; $779d: $ff
	cp   $dd                                         ; $779e: $fe $dd
	ret                                              ; $77a0: $c9


	add  a                                           ; $77a1: $87
	ld   h, l                                        ; $77a2: $65
	ld   b, d                                        ; $77a3: $42
	ld   hl, $1111                                   ; $77a4: $21 $11 $11
	ld   de, $1111                                   ; $77a7: $11 $11 $11
	ld   de, $1311                                   ; $77aa: $11 $11 $13
	inc  [hl]                                        ; $77ad: $34
	adc  d                                           ; $77ae: $8a
	cp   l                                           ; $77af: $bd
	rst  $38                                         ; $77b0: $ff
	rst  $38                                         ; $77b1: $ff
	rst  $38                                         ; $77b2: $ff
	rst  $38                                         ; $77b3: $ff
	rst  $38                                         ; $77b4: $ff
	rst  $38                                         ; $77b5: $ff
	rst  $38                                         ; $77b6: $ff
	cp   $dc                                         ; $77b7: $fe $dc
	xor  c                                           ; $77b9: $a9
	add  a                                           ; $77ba: $87
	ld   d, h                                        ; $77bb: $54
	ld   b, d                                        ; $77bc: $42
	ld   hl, $1111                                   ; $77bd: $21 $11 $11
	ld   de, $1111                                   ; $77c0: $11 $11 $11
	ld   de, $1311                                   ; $77c3: $11 $11 $13
	ld   b, [hl]                                     ; $77c6: $46
	sbc  e                                           ; $77c7: $9b
	rst  JumpTable                                         ; $77c8: $df
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	rst  $38                                         ; $77cb: $ff
	rst  $38                                         ; $77cc: $ff
	rst  $38                                         ; $77cd: $ff
	rst  $38                                         ; $77ce: $ff
	rst  $38                                         ; $77cf: $ff
	db   $fd                                         ; $77d0: $fd
	jp   z, Jump_0e3_76a9                            ; $77d1: $ca $a9 $76

	ld   d, l                                        ; $77d4: $55
	ld   [hl-], a                                    ; $77d5: $32
	ld   hl, $1111                                   ; $77d6: $21 $11 $11
	ld   de, $1111                                   ; $77d9: $11 $11 $11
	ld   de, $1211                                   ; $77dc: $11 $11 $12
	ld   b, l                                        ; $77df: $45
	ld   a, d                                        ; $77e0: $7a
	adc  $ff                                         ; $77e1: $ce $ff
	rst  $38                                         ; $77e3: $ff
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff

Jump_0e3_77e6:
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	rst  $38                                         ; $77e9: $ff
	db   $db                                         ; $77ea: $db
	cp   d                                           ; $77eb: $ba
	sub  a                                           ; $77ec: $97
	ld   h, l                                        ; $77ed: $65
	ld   b, h                                        ; $77ee: $44
	ld   b, d                                        ; $77ef: $42
	ld   [de], a                                     ; $77f0: $12
	ld   de, $1111                                   ; $77f1: $11 $11 $11
	ld   de, $1111                                   ; $77f4: $11 $11 $11
	ld   de, $4623                                   ; $77f7: $11 $23 $46
	adc  c                                           ; $77fa: $89
	cp   l                                           ; $77fb: $bd
	rst  $28                                         ; $77fc: $ef
	rst  $38                                         ; $77fd: $ff
	rst  $38                                         ; $77fe: $ff
	rst  $38                                         ; $77ff: $ff
	rst  $38                                         ; $7800: $ff
	rst  $38                                         ; $7801: $ff
	rst  $38                                         ; $7802: $ff
	cp   $ec                                         ; $7803: $fe $ec
	res  3, b                                        ; $7805: $cb $98
	halt                                             ; $7807: $76
	ld   b, e                                        ; $7808: $43
	inc  sp                                          ; $7809: $33
	ld   hl, $1111                                   ; $780a: $21 $11 $11
	ld   de, $1111                                   ; $780d: $11 $11 $11
	ld   [de], a                                     ; $7810: $12
	ld   [hl+], a                                    ; $7811: $22
	inc  [hl]                                        ; $7812: $34
	ld   b, l                                        ; $7813: $45
	ld   h, a                                        ; $7814: $67
	sbc  d                                           ; $7815: $9a
	cp   l                                           ; $7816: $bd
	sbc  $ff                                         ; $7817: $de $ff
	rst  $38                                         ; $7819: $ff
	rst  $38                                         ; $781a: $ff
	rst  $38                                         ; $781b: $ff
	rst  $38                                         ; $781c: $ff
	rst  $38                                         ; $781d: $ff
	db   $dd                                         ; $781e: $dd
	res  5, c                                        ; $781f: $cb $a9
	sbc  b                                           ; $7821: $98
	ld   [hl], a                                     ; $7822: $77
	ld   h, [hl]                                     ; $7823: $66
	ld   d, l                                        ; $7824: $55
	ld   b, h                                        ; $7825: $44
	ld   [hl-], a                                    ; $7826: $32
	ld   [hl+], a                                    ; $7827: $22
	inc  sp                                          ; $7828: $33
	inc  sp                                          ; $7829: $33
	inc  sp                                          ; $782a: $33
	inc  sp                                          ; $782b: $33
	ld   [hl+], a                                    ; $782c: $22
	inc  hl                                          ; $782d: $23
	ld   b, h                                        ; $782e: $44
	ld   d, l                                        ; $782f: $55
	ld   h, a                                        ; $7830: $67
	ld   a, b                                        ; $7831: $78
	sbc  e                                           ; $7832: $9b
	cp   h                                           ; $7833: $bc
	db   $dd                                         ; $7834: $dd
	db   $ed                                         ; $7835: $ed
	db   $dd                                         ; $7836: $dd
	db   $dd                                         ; $7837: $dd
	db   $dd                                         ; $7838: $dd
	sbc  $dc                                         ; $7839: $de $dc
	call c, $babc                                    ; $783b: $dc $bc $ba
	xor  b                                           ; $783e: $a8
	sbc  b                                           ; $783f: $98
	ld   [hl], a                                     ; $7840: $77
	ld   h, l                                        ; $7841: $65
	ld   d, l                                        ; $7842: $55
	ld   d, h                                        ; $7843: $54
	ld   b, e                                        ; $7844: $43
	inc  sp                                          ; $7845: $33
	inc  sp                                          ; $7846: $33
	ld   [hl-], a                                    ; $7847: $32
	ld   hl, $2212                                   ; $7848: $21 $12 $22
	inc  hl                                          ; $784b: $23
	ld   b, l                                        ; $784c: $45
	ld   h, a                                        ; $784d: $67
	adc  b                                           ; $784e: $88
	xor  d                                           ; $784f: $aa
	xor  e                                           ; $7850: $ab
	cp   h                                           ; $7851: $bc
	call z, $dede                                    ; $7852: $cc $de $de
	rst  $28                                         ; $7855: $ef
	cp   $fe                                         ; $7856: $fe $fe
	sbc  $dd                                         ; $7858: $de $dd
	db   $db                                         ; $785a: $db
	cp   e                                           ; $785b: $bb
	sbc  b                                           ; $785c: $98
	ld   [hl], a                                     ; $785d: $77
	ld   h, l                                        ; $785e: $65
	ld   d, l                                        ; $785f: $55
	ld   b, h                                        ; $7860: $44
	inc  sp                                          ; $7861: $33
	ld   [hl-], a                                    ; $7862: $32
	ld   hl, $1111                                   ; $7863: $21 $11 $11
	ld   bc, $2311                                   ; $7866: $01 $11 $23
	ld   b, l                                        ; $7869: $45
	ld   h, a                                        ; $786a: $67
	adc  c                                           ; $786b: $89

Jump_0e3_786c:
	xor  e                                           ; $786c: $ab
	set  1, h                                        ; $786d: $cb $cc
	call $fede                                       ; $786f: $cd $de $fe
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	xor  $dd                                         ; $7875: $ee $dd
	call z, $87b9                                    ; $7877: $cc $b9 $87
	ld   [hl], a                                     ; $787a: $77
	ld   h, l                                        ; $787b: $65
	ld   d, l                                        ; $787c: $55
	ld   b, e                                        ; $787d: $43
	inc  sp                                          ; $787e: $33
	ld   [hl+], a                                    ; $787f: $22
	ld   [hl+], a                                    ; $7880: $22
	ld   hl, $1111                                   ; $7881: $21 $11 $11
	ld   de, $5623                                   ; $7884: $11 $23 $56
	ld   a, b                                        ; $7887: $78
	adc  c                                           ; $7888: $89
	sbc  d                                           ; $7889: $9a
	cp   e                                           ; $788a: $bb
	call z, $decd                                    ; $788b: $cc $cd $de
	db   $ed                                         ; $788e: $ed
	xor  $ff                                         ; $788f: $ee $ff
	xor  $ff                                         ; $7891: $ee $ff
	db   $dd                                         ; $7893: $dd
	res  5, c                                        ; $7894: $cb $a9
	sbc  b                                           ; $7896: $98
	sub  a                                           ; $7897: $97
	ld   [hl], a                                     ; $7898: $77
	ld   h, l                                        ; $7899: $65
	ld   b, h                                        ; $789a: $44
	ld   b, e                                        ; $789b: $43
	inc  sp                                          ; $789c: $33
	ld   [hl-], a                                    ; $789d: $32
	ld   [hl+], a                                    ; $789e: $22
	ld   de, $1111                                   ; $789f: $11 $11 $11
	ld   [hl+], a                                    ; $78a2: $22
	inc  [hl]                                        ; $78a3: $34
	ld   d, [hl]                                     ; $78a4: $56
	ld   a, b                                        ; $78a5: $78
	adc  d                                           ; $78a6: $8a
	xor  e                                           ; $78a7: $ab
	xor  e                                           ; $78a8: $ab
	cp   h                                           ; $78a9: $bc
	call $eecd                                       ; $78aa: $cd $cd $ee
	xor  $ee                                         ; $78ad: $ee $ee
	rst  $28                                         ; $78af: $ef
	db   $ed                                         ; $78b0: $ed
	call c, $bacb                                    ; $78b1: $dc $cb $ba
	sbc  c                                           ; $78b4: $99
	add  a                                           ; $78b5: $87
	halt                                             ; $78b6: $76
	ld   d, h                                        ; $78b7: $54
	ld   b, h                                        ; $78b8: $44
	inc  sp                                          ; $78b9: $33
	inc  sp                                          ; $78ba: $33
	ld   [hl-], a                                    ; $78bb: $32
	ld   [hl+], a                                    ; $78bc: $22
	ld   hl, $1211                                   ; $78bd: $21 $11 $12
	inc  hl                                          ; $78c0: $23
	ld   b, h                                        ; $78c1: $44
	ld   d, [hl]                                     ; $78c2: $56
	ld   a, b                                        ; $78c3: $78
	sbc  c                                           ; $78c4: $99
	xor  d                                           ; $78c5: $aa
	xor  e                                           ; $78c6: $ab
	res  7, e                                        ; $78c7: $cb $bb
	call $eddd                                       ; $78c9: $cd $dd $ed
	db   $dd                                         ; $78cc: $dd
	db   $ed                                         ; $78cd: $ed
	db   $dd                                         ; $78ce: $dd
	call z, $aacb                                    ; $78cf: $cc $cb $aa
	sbc  c                                           ; $78d2: $99
	sub  a                                           ; $78d3: $97
	halt                                             ; $78d4: $76
	ld   d, l                                        ; $78d5: $55
	ld   d, l                                        ; $78d6: $55
	ld   d, h                                        ; $78d7: $54
	ld   b, h                                        ; $78d8: $44
	ld   b, h                                        ; $78d9: $44
	inc  sp                                          ; $78da: $33
	inc  sp                                          ; $78db: $33
	ld   [hl+], a                                    ; $78dc: $22
	ld   [hl+], a                                    ; $78dd: $22
	ld   [hl+], a                                    ; $78de: $22
	inc  [hl]                                        ; $78df: $34
	ld   b, l                                        ; $78e0: $45
	ld   h, a                                        ; $78e1: $67
	adc  c                                           ; $78e2: $89
	sbc  c                                           ; $78e3: $99
	xor  d                                           ; $78e4: $aa
	cp   e                                           ; $78e5: $bb
	cp   e                                           ; $78e6: $bb
	call z, $cccc                                    ; $78e7: $cc $cc $cc
	call z, $dddc                                    ; $78ea: $cc $dc $dd
	call $cacc                                       ; $78ed: $cd $cc $ca
	cp   c                                           ; $78f0: $b9
	xor  c                                           ; $78f1: $a9
	add  a                                           ; $78f2: $87
	ld   [hl], a                                     ; $78f3: $77
	ld   h, [hl]                                     ; $78f4: $66
	ld   d, l                                        ; $78f5: $55
	ld   d, l                                        ; $78f6: $55
	ld   b, h                                        ; $78f7: $44
	ld   b, h                                        ; $78f8: $44
	ld   b, h                                        ; $78f9: $44
	ld   b, h                                        ; $78fa: $44
	inc  sp                                          ; $78fb: $33
	ld   [hl-], a                                    ; $78fc: $32
	inc  sp                                          ; $78fd: $33
	inc  [hl]                                        ; $78fe: $34
	ld   b, l                                        ; $78ff: $45
	ld   h, a                                        ; $7900: $67
	ld   a, b                                        ; $7901: $78
	sbc  c                                           ; $7902: $99
	xor  d                                           ; $7903: $aa
	cp   e                                           ; $7904: $bb
	xor  d                                           ; $7905: $aa
	cp   e                                           ; $7906: $bb
	xor  e                                           ; $7907: $ab
	cp   e                                           ; $7908: $bb
	cp   h                                           ; $7909: $bc
	call z, $cbcd                                    ; $790a: $cc $cd $cb
	cp   h                                           ; $790d: $bc
	cp   e                                           ; $790e: $bb
	xor  d                                           ; $790f: $aa
	sbc  b                                           ; $7910: $98
	adc  b                                           ; $7911: $88
	add  a                                           ; $7912: $87
	ld   [hl], a                                     ; $7913: $77
	ld   h, [hl]                                     ; $7914: $66
	ld   h, [hl]                                     ; $7915: $66
	ld   h, l                                        ; $7916: $65
	ld   d, l                                        ; $7917: $55
	ld   d, l                                        ; $7918: $55
	ld   d, l                                        ; $7919: $55
	ld   b, h                                        ; $791a: $44
	ld   b, h                                        ; $791b: $44
	inc  sp                                          ; $791c: $33
	inc  [hl]                                        ; $791d: $34
	ld   b, l                                        ; $791e: $45
	ld   d, l                                        ; $791f: $55
	ld   h, a                                        ; $7920: $67
	ld   [hl], a                                     ; $7921: $77
	adc  c                                           ; $7922: $89
	xor  d                                           ; $7923: $aa
	xor  d                                           ; $7924: $aa
	sbc  d                                           ; $7925: $9a
	cp   d                                           ; $7926: $ba
	xor  d                                           ; $7927: $aa
	xor  e                                           ; $7928: $ab
	cp   e                                           ; $7929: $bb
	res  7, h                                        ; $792a: $cb $bc
	cp   e                                           ; $792c: $bb
	cp   h                                           ; $792d: $bc
	cp   d                                           ; $792e: $ba
	xor  d                                           ; $792f: $aa
	xor  c                                           ; $7930: $a9
	sbc  d                                           ; $7931: $9a
	adc  b                                           ; $7932: $88
	sbc  c                                           ; $7933: $99
	adc  c                                           ; $7934: $89
	halt                                             ; $7935: $76
	ld   h, [hl]                                     ; $7936: $66
	ld   h, [hl]                                     ; $7937: $66
	ld   d, l                                        ; $7938: $55
	ld   d, h                                        ; $7939: $54
	ld   b, l                                        ; $793a: $45
	ld   d, l                                        ; $793b: $55
	ld   b, h                                        ; $793c: $44
	ld   b, h                                        ; $793d: $44
	ld   b, h                                        ; $793e: $44
	ld   b, l                                        ; $793f: $45
	ld   d, [hl]                                     ; $7940: $56
	ld   a, b                                        ; $7941: $78
	add  a                                           ; $7942: $87
	sbc  c                                           ; $7943: $99
	sbc  c                                           ; $7944: $99
	sbc  c                                           ; $7945: $99
	xor  e                                           ; $7946: $ab
	cp   d                                           ; $7947: $ba
	xor  e                                           ; $7948: $ab
	cp   e                                           ; $7949: $bb
	cp   d                                           ; $794a: $ba
	cp   e                                           ; $794b: $bb
	cp   h                                           ; $794c: $bc
	cp   e                                           ; $794d: $bb
	xor  e                                           ; $794e: $ab
	jp   z, $aaba                                    ; $794f: $ca $ba $aa

	xor  d                                           ; $7952: $aa
	adc  b                                           ; $7953: $88
	add  a                                           ; $7954: $87
	add  a                                           ; $7955: $87
	halt                                             ; $7956: $76
	ld   h, [hl]                                     ; $7957: $66
	ld   h, [hl]                                     ; $7958: $66
	ld   h, [hl]                                     ; $7959: $66
	ld   d, h                                        ; $795a: $54
	ld   b, h                                        ; $795b: $44
	ld   d, l                                        ; $795c: $55
	ld   b, l                                        ; $795d: $45
	ld   b, h                                        ; $795e: $44
	ld   d, l                                        ; $795f: $55
	ld   d, [hl]                                     ; $7960: $56
	ld   h, [hl]                                     ; $7961: $66
	ld   l, b                                        ; $7962: $68
	adc  b                                           ; $7963: $88

Call_0e3_7964:
	sbc  c                                           ; $7964: $99
	sbc  d                                           ; $7965: $9a
	sbc  c                                           ; $7966: $99
	sbc  d                                           ; $7967: $9a
	xor  d                                           ; $7968: $aa
	cp   e                                           ; $7969: $bb
	cp   d                                           ; $796a: $ba
	cp   h                                           ; $796b: $bc
	cp   h                                           ; $796c: $bc
	xor  h                                           ; $796d: $ac
	cp   e                                           ; $796e: $bb
	xor  e                                           ; $796f: $ab
	xor  d                                           ; $7970: $aa
	sbc  c                                           ; $7971: $99
	xor  d                                           ; $7972: $aa
	adc  c                                           ; $7973: $89
	adc  b                                           ; $7974: $88
	sbc  b                                           ; $7975: $98
	ld   a, b                                        ; $7976: $78
	sub  a                                           ; $7977: $97
	ld   h, a                                        ; $7978: $67
	halt                                             ; $7979: $76
	ld   h, l                                        ; $797a: $65
	ld   b, h                                        ; $797b: $44
	ld   d, h                                        ; $797c: $54
	ld   b, l                                        ; $797d: $45
	ld   b, h                                        ; $797e: $44
	ld   b, h                                        ; $797f: $44
	ld   b, h                                        ; $7980: $44
	ld   b, l                                        ; $7981: $45
	ld   h, [hl]                                     ; $7982: $66
	ld   l, b                                        ; $7983: $68
	sbc  c                                           ; $7984: $99
	sbc  c                                           ; $7985: $99
	xor  d                                           ; $7986: $aa
	xor  d                                           ; $7987: $aa
	xor  e                                           ; $7988: $ab
	jp   z, $bbab                                    ; $7989: $ca $ab $bb

	set  1, h                                        ; $798c: $cb $cc
	cp   e                                           ; $798e: $bb
	call z, $bbcc                                    ; $798f: $cc $cc $bb
	cp   d                                           ; $7992: $ba
	sbc  c                                           ; $7993: $99
	sbc  b                                           ; $7994: $98
	ld   a, b                                        ; $7995: $78
	add  [hl]                                        ; $7996: $86

Call_0e3_7997:
	ld   d, a                                        ; $7997: $57
	ld   h, l                                        ; $7998: $65
	ld   b, e                                        ; $7999: $43
	ld   d, h                                        ; $799a: $54
	ld   b, e                                        ; $799b: $43
	inc  hl                                          ; $799c: $23
	ld   b, h                                        ; $799d: $44
	ld   [hl+], a                                    ; $799e: $22
	inc  [hl]                                        ; $799f: $34
	ld   d, h                                        ; $79a0: $54
	ld   b, h                                        ; $79a1: $44
	ld   e, b                                        ; $79a2: $58
	sbc  b                                           ; $79a3: $98
	sbc  d                                           ; $79a4: $9a
	xor  e                                           ; $79a5: $ab
	cp   e                                           ; $79a6: $bb
	xor  d                                           ; $79a7: $aa
	xor  h                                           ; $79a8: $ac
	cp   e                                           ; $79a9: $bb
	call $ceca                                       ; $79aa: $cd $ca $ce
	db   $db                                         ; $79ad: $db
	call $abec                                       ; $79ae: $cd $ec $ab
	res  5, c                                        ; $79b1: $cb $a9
	sbc  d                                           ; $79b3: $9a
	adc  b                                           ; $79b4: $88
	add  a                                           ; $79b5: $87
	inc  sp                                          ; $79b6: $33
	ld   d, h                                        ; $79b7: $54
	ld   [hl+], a                                    ; $79b8: $22
	ld   de, $2211                                   ; $79b9: $11 $11 $22
	ld   de, $4614                                   ; $79bc: $11 $14 $46
	ld   d, l                                        ; $79bf: $55
	adc  d                                           ; $79c0: $8a
	cp   b                                           ; $79c1: $b8
	cp   d                                           ; $79c2: $ba
	cp   e                                           ; $79c3: $bb
	xor  h                                           ; $79c4: $ac
	cp   [hl]                                        ; $79c5: $be
	db   $dd                                         ; $79c6: $dd
	db   $ed                                         ; $79c7: $ed
	cp   $ef                                         ; $79c8: $fe $ef
	rst  $38                                         ; $79ca: $ff
	rst  $38                                         ; $79cb: $ff
	xor  $da                                         ; $79cc: $ee $da
	cp   c                                           ; $79ce: $b9
	adc  c                                           ; $79cf: $89
	add  [hl]                                        ; $79d0: $86
	ld   d, [hl]                                     ; $79d1: $56
	ld   hl, $1111                                   ; $79d2: $21 $11 $11
	ld   de, $1111                                   ; $79d5: $11 $11 $11
	ld   de, $6611                                   ; $79d8: $11 $11 $66
	ld   h, [hl]                                     ; $79db: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79dc: $cf
	rst  $38                                         ; $79dd: $ff

Jump_0e3_79de:
	rst  $38                                         ; $79de: $ff
	rst  $38                                         ; $79df: $ff
	rst  $38                                         ; $79e0: $ff
	db   $fd                                         ; $79e1: $fd
	rst  $38                                         ; $79e2: $ff
	rst  $38                                         ; $79e3: $ff
	call z, $fdff                                    ; $79e4: $cc $ff $fd
	cp   l                                           ; $79e7: $bd
	xor  $ba                                         ; $79e8: $ee $ba
	ld   d, [hl]                                     ; $79ea: $56
	and  a                                           ; $79eb: $a7
	ld   de, $1111                                   ; $79ec: $11 $11 $11
	ld   de, $1111                                   ; $79ef: $11 $11 $11
	ld   de, $ff16                                   ; $79f2: $11 $16 $ff
	xor  [hl]                                        ; $79f5: $ae
	rst  $38                                         ; $79f6: $ff
	rst  $38                                         ; $79f7: $ff
	rst  $38                                         ; $79f8: $ff
	rst  $38                                         ; $79f9: $ff
	db   $fc                                         ; $79fa: $fc
	ld   l, e                                        ; $79fb: $6b
	rst  JumpTable                                         ; $79fc: $df
	cp   c                                           ; $79fd: $b9
	ld   l, c                                        ; $79fe: $69
	rst  $38                                         ; $79ff: $ff
	db   $fc                                         ; $7a00: $fc
	rst  JumpTable                                         ; $7a01: $df
	rst  $38                                         ; $7a02: $ff
	sub  e                                           ; $7a03: $93
	ld   [de], a                                     ; $7a04: $12
	ld   de, $1111                                   ; $7a05: $11 $11 $11
	ld   de, $1111                                   ; $7a08: $11 $11 $11
	ld   d, $ff                                      ; $7a0b: $16 $ff
	rst  $38                                         ; $7a0d: $ff
	rst  $38                                         ; $7a0e: $ff
	rst  $38                                         ; $7a0f: $ff
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	db   $fc                                         ; $7a12: $fc
	ld   de, $3412                                   ; $7a13: $11 $12 $34
	ld   b, [hl]                                     ; $7a16: $46
	rst  $38                                         ; $7a17: $ff
	rst  $38                                         ; $7a18: $ff
	rst  $38                                         ; $7a19: $ff
	rst  $38                                         ; $7a1a: $ff
	ld   sp, hl                                      ; $7a1b: $f9
	ld   de, $1111                                   ; $7a1c: $11 $11 $11
	ld   de, $1111                                   ; $7a1f: $11 $11 $11
	dec  d                                           ; $7a22: $15
	rst  $38                                         ; $7a23: $ff
	rst  $38                                         ; $7a24: $ff
	rst  $38                                         ; $7a25: $ff
	rst  $38                                         ; $7a26: $ff
	rst  $38                                         ; $7a27: $ff
	ld   d, c                                        ; $7a28: $51
	ld   de, $1111                                   ; $7a29: $11 $11 $11
	ld   l, a                                        ; $7a2c: $6f
	rst  $38                                         ; $7a2d: $ff
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	rst  $38                                         ; $7a30: $ff
	rst  $38                                         ; $7a31: $ff
	and  c                                           ; $7a32: $a1
	ld   de, $1111                                   ; $7a33: $11 $11 $11
	ld   de, $6f11                                   ; $7a36: $11 $11 $6f
	rst  $38                                         ; $7a39: $ff
	rst  $38                                         ; $7a3a: $ff
	rst  $38                                         ; $7a3b: $ff
	cp   $16                                         ; $7a3c: $fe $16
	pop  bc                                          ; $7a3e: $c1
	ld   de, rAUD1LEN                                   ; $7a3f: $11 $11 $ff
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	rst  $38                                         ; $7a44: $ff
	rst  $38                                         ; $7a45: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a46: $cf
	pop  af                                          ; $7a47: $f1
	ld   de, $1111                                   ; $7a48: $11 $11 $11
	ld   de, $1111                                   ; $7a4b: $11 $11 $11
	ld   de, $fa1f                                   ; $7a4e: $11 $1f $fa
	rst  JumpTable                                         ; $7a51: $df
	rst  $38                                         ; $7a52: $ff
	db   $fc                                         ; $7a53: $fc
	inc  d                                           ; $7a54: $14
	push af                                          ; $7a55: $f5
	ld   de, rAUD1HIGH                                   ; $7a56: $11 $14 $ff
	rst  $38                                         ; $7a59: $ff
	rst  $38                                         ; $7a5a: $ff
	rst  $38                                         ; $7a5b: $ff
	ldh  [c], a                                      ; $7a5c: $e2
	rla                                              ; $7a5d: $17
	rst  ToBoot                                         ; $7a5e: $c7
	dec  d                                           ; $7a5f: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a60: $cf
	and  $11                                         ; $7a61: $e6 $11
	ld   de, $1111                                   ; $7a63: $11 $11 $11
	ld   e, $ff                                      ; $7a66: $1e $ff
	rst  $38                                         ; $7a68: $ff
	rst  $38                                         ; $7a69: $ff
	rst  $38                                         ; $7a6a: $ff
	ld   de, $1111                                   ; $7a6b: $11 $11 $11
	inc  de                                          ; $7a6e: $13
	rst  $38                                         ; $7a6f: $ff
	rst  $38                                         ; $7a70: $ff
	rst  $38                                         ; $7a71: $ff
	rst  $38                                         ; $7a72: $ff
	ld   [hl], c                                     ; $7a73: $71
	ld   de, $ff1b                                   ; $7a74: $11 $1b $ff
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	sub  c                                           ; $7a79: $91
	ld   de, $1111                                   ; $7a7a: $11 $11 $11
	ld   de, $ffef                                   ; $7a7d: $11 $ef $ff
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	ld   h, c                                        ; $7a82: $61
	ld   de, $ab11                                   ; $7a83: $11 $11 $ab
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	ld   d, c                                        ; $7a89: $51
	ld   de, $1711                                   ; $7a8a: $11 $11 $17
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	pop  bc                                          ; $7a90: $c1
	ld   de, $1111                                   ; $7a91: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7a94: $11 $11 $ff
	rst  $38                                         ; $7a97: $ff
	db   $fc                                         ; $7a98: $fc

Call_0e3_7a99:
	and  a                                           ; $7a99: $a7
	ld   de, $1f11                                   ; $7a9a: $11 $11 $1f
	rst  $38                                         ; $7a9d: $ff
	rst  $38                                         ; $7a9e: $ff
	rst  $38                                         ; $7a9f: $ff
	ld   sp, hl                                      ; $7aa0: $f9
	ld   de, $ef11                                   ; $7aa1: $11 $11 $ef
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	pop  af                                          ; $7aa7: $f1
	ld   de, $1111                                   ; $7aa8: $11 $11 $11
	ld   de, $1111                                   ; $7aab: $11 $11 $11
	rst  $38                                         ; $7aae: $ff
	rst  $38                                         ; $7aaf: $ff
	pop  af                                          ; $7ab0: $f1
	ld   b, h                                        ; $7ab1: $44
	ld   de, $1f11                                   ; $7ab2: $11 $11 $1f
	rst  $38                                         ; $7ab5: $ff
	rst  $38                                         ; $7ab6: $ff
	rst  $38                                         ; $7ab7: $ff
	ld   a, [$1111]                                  ; $7ab8: $fa $11 $11
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	rst  $38                                         ; $7abe: $ff
	ld   sp, hl                                      ; $7abf: $f9
	ld   de, $1111                                   ; $7ac0: $11 $11 $11
	ld   de, $1111                                   ; $7ac3: $11 $11 $11
	ld   e, a                                        ; $7ac6: $5f
	rst  $38                                         ; $7ac7: $ff
	ei                                               ; $7ac8: $fb
	ld   de, $1111                                   ; $7ac9: $11 $11 $11
	ld   a, [de]                                     ; $7acc: $1a
	rst  $38                                         ; $7acd: $ff
	rst  $38                                         ; $7ace: $ff
	rst  $38                                         ; $7acf: $ff
	rst  ToBoot                                         ; $7ad0: $c7
	ld   de, $9f11                                   ; $7ad1: $11 $11 $9f
	rst  $38                                         ; $7ad4: $ff
	rst  $38                                         ; $7ad5: $ff
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	ld   sp, $1111                                   ; $7ad8: $31 $11 $11
	ld   de, $1111                                   ; $7adb: $11 $11 $11
	rra                                              ; $7ade: $1f
	rst  $38                                         ; $7adf: $ff
	rst  $38                                         ; $7ae0: $ff
	ld   hl, $1111                                   ; $7ae1: $21 $11 $11
	ld   de, $ffff                                   ; $7ae4: $11 $ff $ff
	rst  $38                                         ; $7ae7: $ff
	sub  [hl]                                        ; $7ae8: $96
	ld   sp, $2f11                                   ; $7ae9: $31 $11 $2f
	rst  $38                                         ; $7aec: $ff
	rst  $38                                         ; $7aed: $ff
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	sub  c                                           ; $7af0: $91
	ld   de, $1111                                   ; $7af1: $11 $11 $11
	ld   de, $1111                                   ; $7af4: $11 $11 $11
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	pop  af                                          ; $7af9: $f1
	ld   de, $1111                                   ; $7afa: $11 $11 $11
	ld   e, a                                        ; $7afd: $5f
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	jp   nc, $1153                                   ; $7b00: $d2 $53 $11

	rla                                              ; $7b03: $17
	rst  $38                                         ; $7b04: $ff
	rst  $38                                         ; $7b05: $ff
	db   $fd                                         ; $7b06: $fd
	cp   l                                           ; $7b07: $bd
	reti                                             ; $7b08: $d9


	ld   de, $1111                                   ; $7b09: $11 $11 $11
	ld   de, $1111                                   ; $7b0c: $11 $11 $11
	rra                                              ; $7b0f: $1f
	rst  $38                                         ; $7b10: $ff
	rst  $38                                         ; $7b11: $ff
	ld   de, $1111                                   ; $7b12: $11 $11 $11
	jr   @+$01                                       ; $7b15: $18 $ff

	rst  $38                                         ; $7b17: $ff
	ld   sp, hl                                      ; $7b18: $f9
	daa                                              ; $7b19: $27
	ld   sp, $9f11                                   ; $7b1a: $31 $11 $9f
	rst  $38                                         ; $7b1d: $ff
	rst  $38                                         ; $7b1e: $ff
	cp   e                                           ; $7b1f: $bb
	rst  $38                                         ; $7b20: $ff
	add  c                                           ; $7b21: $81
	ld   de, $1112                                   ; $7b22: $11 $12 $11
	ld   de, $1111                                   ; $7b25: $11 $11 $11
	rst  $38                                         ; $7b28: $ff
	rst  $38                                         ; $7b29: $ff
	pop  hl                                          ; $7b2a: $e1
	ld   sp, $1111                                   ; $7b2b: $31 $11 $11
	sbc  a                                           ; $7b2e: $9f
	rst  $38                                         ; $7b2f: $ff
	rst  $38                                         ; $7b30: $ff
	ld   d, h                                        ; $7b31: $54
	and  h                                           ; $7b32: $a4
	ld   de, $ff17                                   ; $7b33: $11 $17 $ff
	rst  $38                                         ; $7b36: $ff
	ei                                               ; $7b37: $fb
	rst  $28                                         ; $7b38: $ef
	and  $11                                         ; $7b39: $e6 $11
	ld   de, $1121                                   ; $7b3b: $11 $21 $11
	ld   de, $1f11                                   ; $7b3e: $11 $11 $1f
	rst  $38                                         ; $7b41: $ff
	db   $f4                                         ; $7b42: $f4
	ld   d, $11                                      ; $7b43: $16 $11
	ld   de, $ff1d                                   ; $7b45: $11 $1d $ff
	rst  $38                                         ; $7b48: $ff
	ldh  a, [c]                                      ; $7b49: $f2
	sbc  a                                           ; $7b4a: $9f
	ld   sp, $5f11                                   ; $7b4b: $31 $11 $5f
	rst  $38                                         ; $7b4e: $ff
	rst  $38                                         ; $7b4f: $ff
	rst  $28                                         ; $7b50: $ef
	db   $fc                                         ; $7b51: $fc
	ld   de, $0211                                   ; $7b52: $11 $11 $02
	ld   de, $1111                                   ; $7b55: $11 $11 $11
	dec  de                                          ; $7b58: $1b
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	ld   de, $11b1                                   ; $7b5b: $11 $b1 $11
	ld   de, $ffff                                   ; $7b5e: $11 $ff $ff
	rst  $38                                         ; $7b61: $ff
	cpl                                              ; $7b62: $2f
	and  d                                           ; $7b63: $a2
	ld   de, $ff1a                                   ; $7b64: $11 $1a $ff

jr_0e3_7b67:
	rst  $38                                         ; $7b67: $ff
	ld   sp, hl                                      ; $7b68: $f9
	rst  $38                                         ; $7b69: $ff
	sub  c                                           ; $7b6a: $91
	ld   de, $1113                                   ; $7b6b: $11 $13 $11
	ld   de, $1111                                   ; $7b6e: $11 $11 $11
	rst  $38                                         ; $7b71: $ff
	rst  $38                                         ; $7b72: $ff
	pop  af                                          ; $7b73: $f1
	and  h                                           ; $7b74: $a4
	ld   de, $7f11                                   ; $7b75: $11 $11 $7f
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	ld   a, a                                        ; $7b7a: $7f
	ld   sp, hl                                      ; $7b7b: $f9
	ld   de, rAUD1LEN                                   ; $7b7c: $11 $11 $ff
	rst  $38                                         ; $7b7f: $ff
	ld   a, [$d1ff]                                  ; $7b80: $fa $ff $d1
	ld   de, $2115                                   ; $7b83: $11 $15 $21
	ld   de, $1111                                   ; $7b86: $11 $11 $11
	rra                                              ; $7b89: $1f
	rst  $38                                         ; $7b8a: $ff
	pop  af                                          ; $7b8b: $f1
	ld   e, $11                                      ; $7b8c: $1e $11
	ld   de, $ff1e                                   ; $7b8e: $11 $1e $ff
	rst  $38                                         ; $7b91: $ff
	ei                                               ; $7b92: $fb
	rst  $38                                         ; $7b93: $ff
	ld   de, $af11                                   ; $7b94: $11 $11 $af
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	push af                                          ; $7b9a: $f5
	ld   de, $1111                                   ; $7b9b: $11 $11 $11
	ld   de, $1111                                   ; $7b9e: $11 $11 $11
	rra                                              ; $7ba1: $1f
	rst  $38                                         ; $7ba2: $ff
	db   $fd                                         ; $7ba3: $fd
	ld   a, [de]                                     ; $7ba4: $1a
	ld   b, c                                        ; $7ba5: $41
	ld   de, $ff1c                                   ; $7ba6: $11 $1c $ff
	rst  $38                                         ; $7ba9: $ff
	cp   $ff                                         ; $7baa: $fe $ff
	ld   d, e                                        ; $7bac: $53
	ld   de, $ff6f                                   ; $7bad: $11 $6f $ff
	rst  $38                                         ; $7bb0: $ff
	rst  $38                                         ; $7bb1: $ff
	db   $fc                                         ; $7bb2: $fc
	ld   b, c                                        ; $7bb3: $41
	ld   de, $1111                                   ; $7bb4: $11 $11 $11
	ld   de, $1f11                                   ; $7bb7: $11 $11 $1f
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	jr   @-$7d                                       ; $7bbc: $18 $81

	ld   de, $ff1c                                   ; $7bbe: $11 $1c $ff
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	sbc  e                                           ; $7bc4: $9b
	ld   de, $ff9d                                   ; $7bc5: $11 $9d $ff
	rst  $38                                         ; $7bc8: $ff
	rst  $38                                         ; $7bc9: $ff
	rst  $38                                         ; $7bca: $ff
	ld   sp, $1111                                   ; $7bcb: $31 $11 $11
	ld   de, $1111                                   ; $7bce: $11 $11 $11
	rra                                              ; $7bd1: $1f
	rst  $38                                         ; $7bd2: $ff
	rst  $38                                         ; $7bd3: $ff
	jr   jr_0e3_7b67                                 ; $7bd4: $18 $91

	ld   de, $ff1b                                   ; $7bd6: $11 $1b $ff
	rst  $38                                         ; $7bd9: $ff
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	ldh  a, [c]                                      ; $7bdc: $f2
	ld   de, $ff8c                                   ; $7bdd: $11 $8c $ff
	rst  $38                                         ; $7be0: $ff
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	ld   hl, $1111                                   ; $7be3: $21 $11 $11
	ld   de, $1111                                   ; $7be6: $11 $11 $11
	ld   e, $ff                                      ; $7be9: $1e $ff
	rst  $38                                         ; $7beb: $ff
	dec  d                                           ; $7bec: $15
	pop  bc                                          ; $7bed: $c1
	ld   de, $ff15                                   ; $7bee: $11 $15 $ff
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	ldh  a, [c]                                      ; $7bf4: $f2
	ld   de, $af96                                   ; $7bf5: $11 $96 $af
	xor  a                                           ; $7bf8: $af
	rst  $38                                         ; $7bf9: $ff
	rst  $38                                         ; $7bfa: $ff
	dec  [hl]                                        ; $7bfb: $35
	ld   d, c                                        ; $7bfc: $51
	ld   de, $1111                                   ; $7bfd: $11 $11 $11
	ld   de, $ff18                                   ; $7c00: $11 $18 $ff
	rst  $38                                         ; $7c03: $ff
	dec  d                                           ; $7c04: $15
	db   $e3                                         ; $7c05: $e3
	ld   de, rAUD1LEN                                   ; $7c06: $11 $11 $ff
	rst  $38                                         ; $7c09: $ff
	rst  $38                                         ; $7c0a: $ff
	rst  $38                                         ; $7c0b: $ff
	push af                                          ; $7c0c: $f5
	ld   de, $6944                                   ; $7c0d: $11 $44 $69
	cp   a                                           ; $7c10: $bf
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	bit  4, c                                        ; $7c13: $cb $61
	ld   de, $1111                                   ; $7c15: $11 $11 $11
	ld   de, $ff16                                   ; $7c18: $11 $16 $ff
	rst  $38                                         ; $7c1b: $ff
	ld   l, e                                        ; $7c1c: $6b
	ld   sp, hl                                      ; $7c1d: $f9
	ld   de, $bf11                                   ; $7c1e: $11 $11 $bf
	rst  $38                                         ; $7c21: $ff
	rst  $38                                         ; $7c22: $ff
	rst  $38                                         ; $7c23: $ff
	db   $fc                                         ; $7c24: $fc
	ld   [de], a                                     ; $7c25: $12
	ld   [hl-], a                                    ; $7c26: $32
	ld   d, [hl]                                     ; $7c27: $56
	ld   a, l                                        ; $7c28: $7d
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	db   $fd                                         ; $7c2b: $fd
	and  l                                           ; $7c2c: $a5
	ld   de, $1111                                   ; $7c2d: $11 $11 $11
	ld   de, $ff1a                                   ; $7c30: $11 $1a $ff
	rst  $38                                         ; $7c33: $ff
	rst  $38                                         ; $7c34: $ff
	ei                                               ; $7c35: $fb
	ld   de, $7f11                                   ; $7c36: $11 $11 $7f
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	xor  d                                           ; $7c3d: $aa
	sub  l                                           ; $7c3e: $95
	ld   h, h                                        ; $7c3f: $64
	jr   @-$0f                                       ; $7c40: $18 $ef

	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	reti                                             ; $7c44: $d9


	ld   de, $1111                                   ; $7c45: $11 $11 $11
	ld   de, $ff17                                   ; $7c48: $11 $17 $ff
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	ld   hl, $8d11                                   ; $7c4e: $21 $11 $8d
	cp   d                                           ; $7c51: $ba
	rst  $38                                         ; $7c52: $ff
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	rst  $38                                         ; $7c56: $ff
	or   [hl]                                        ; $7c57: $b6
	inc  de                                          ; $7c58: $13
	adc  e                                           ; $7c59: $8b
	cp   e                                           ; $7c5a: $bb
	jp   z, $31ba                                    ; $7c5b: $ca $ba $31

	ld   de, $1111                                   ; $7c5e: $11 $11 $11
	ld   [de], a                                     ; $7c61: $12
	ld   c, c                                        ; $7c62: $49
	xor  l                                           ; $7c63: $ad
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	sbc  d                                           ; $7c66: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c67: $cf
	rst  $38                                         ; $7c68: $ff
	ld   h, a                                        ; $7c69: $67
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	rst  $38                                         ; $7c6e: $ff
	ld   a, [$d969]                                  ; $7c6f: $fa $69 $d9
	ld   d, l                                        ; $7c72: $55
	ld   b, h                                        ; $7c73: $44
	ld   [hl], l                                     ; $7c74: $75
	ld   de, $1111                                   ; $7c75: $11 $11 $11
	ld   de, $1111                                   ; $7c78: $11 $11 $11
	add  hl, sp                                      ; $7c7b: $39
	rst  $28                                         ; $7c7c: $ef
	ei                                               ; $7c7d: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c7e: $cf
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	adc  $ff                                         ; $7c81: $ce $ff
	rst  $38                                         ; $7c83: $ff
	cp   $ff                                         ; $7c84: $fe $ff
	rst  $38                                         ; $7c86: $ff
	jp   c, $c9ac                                    ; $7c87: $da $ac $c9

	add  a                                           ; $7c8a: $87
	ld   h, a                                        ; $7c8b: $67
	ld   [hl], l                                     ; $7c8c: $75
	ld   de, $1111                                   ; $7c8d: $11 $11 $11
	ld   de, $1111                                   ; $7c90: $11 $11 $11
	ld   [de], a                                     ; $7c93: $12
	ld   d, [hl]                                     ; $7c94: $56
	ld   d, l                                        ; $7c95: $55
	adc  e                                           ; $7c96: $8b
	rst  $38                                         ; $7c97: $ff
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	rst  $38                                         ; $7c9b: $ff
	rst  $38                                         ; $7c9c: $ff
	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	rst  $38                                         ; $7ca0: $ff
	db   $ed                                         ; $7ca1: $ed
	set  1, e                                        ; $7ca2: $cb $cb
	xor  b                                           ; $7ca4: $a8
	ld   b, c                                        ; $7ca5: $41
	ld   de, $1111                                   ; $7ca6: $11 $11 $11
	ld   de, $1111                                   ; $7ca9: $11 $11 $11
	ld   de, $6a12                                   ; $7cac: $11 $12 $6a
	rst  $28                                         ; $7caf: $ef
	rst  $38                                         ; $7cb0: $ff
	rst  $38                                         ; $7cb1: $ff
	rst  $38                                         ; $7cb2: $ff
	rst  $38                                         ; $7cb3: $ff
	rst  $38                                         ; $7cb4: $ff
	rst  $38                                         ; $7cb5: $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	db   $ed                                         ; $7cb9: $ed
	xor  c                                           ; $7cba: $a9
	sub  [hl]                                        ; $7cbb: $96
	ld   b, c                                        ; $7cbc: $41
	ld   de, $1111                                   ; $7cbd: $11 $11 $11
	ld   de, $1111                                   ; $7cc0: $11 $11 $11
	ld   de, $3711                                   ; $7cc3: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cc6: $cf
	rst  $38                                         ; $7cc7: $ff
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	rst  $38                                         ; $7ccc: $ff
	rst  $38                                         ; $7ccd: $ff
	rst  $38                                         ; $7cce: $ff
	rst  $38                                         ; $7ccf: $ff
	db   $fd                                         ; $7cd0: $fd
	xor  c                                           ; $7cd1: $a9
	ld   [hl], l                                     ; $7cd2: $75
	ld   hl, $1111                                   ; $7cd3: $21 $11 $11
	ld   de, $1111                                   ; $7cd6: $11 $11 $11
	ld   de, $1111                                   ; $7cd9: $11 $11 $11
	dec  d                                           ; $7cdc: $15
	cp   a                                           ; $7cdd: $bf
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	rst  $38                                         ; $7ce3: $ff
	rst  $38                                         ; $7ce4: $ff
	rst  $38                                         ; $7ce5: $ff
	rst  $38                                         ; $7ce6: $ff
	db   $fd                                         ; $7ce7: $fd
	cp   c                                           ; $7ce8: $b9
	ld   [hl], l                                     ; $7ce9: $75
	ld   sp, $1111                                   ; $7cea: $31 $11 $11
	ld   de, $1111                                   ; $7ced: $11 $11 $11
	ld   de, $1111                                   ; $7cf0: $11 $11 $11
	ld   de, $ff7d                                   ; $7cf3: $11 $7d $ff
	rst  $38                                         ; $7cf6: $ff
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	rst  $38                                         ; $7cfd: $ff
	rst  $38                                         ; $7cfe: $ff
	ret                                              ; $7cff: $c9


	sub  [hl]                                        ; $7d00: $96
	ld   sp, $1111                                   ; $7d01: $31 $11 $11
	ld   de, $1111                                   ; $7d04: $11 $11 $11
	ld   de, $1111                                   ; $7d07: $11 $11 $11
	ld   de, $ef49                                   ; $7d0a: $11 $49 $ef
	rst  $38                                         ; $7d0d: $ff
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	rst  $38                                         ; $7d15: $ff
	db   $db                                         ; $7d16: $db
	sub  a                                           ; $7d17: $97
	ld   b, c                                        ; $7d18: $41
	ld   de, $1111                                   ; $7d19: $11 $11 $11
	ld   de, $1111                                   ; $7d1c: $11 $11 $11
	ld   de, $1111                                   ; $7d1f: $11 $11 $11
	ld   d, $bf                                      ; $7d22: $16 $bf
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	rst  $38                                         ; $7d26: $ff
	rst  $38                                         ; $7d27: $ff
	rst  $38                                         ; $7d28: $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	rst  $38                                         ; $7d2b: $ff
	rst  $38                                         ; $7d2c: $ff
	db   $ec                                         ; $7d2d: $ec
	xor  b                                           ; $7d2e: $a8
	ld   d, d                                        ; $7d2f: $52
	ld   de, $1111                                   ; $7d30: $11 $11 $11
	ld   de, $1111                                   ; $7d33: $11 $11 $11
	ld   de, $1111                                   ; $7d36: $11 $11 $11
	inc  d                                           ; $7d39: $14
	sbc  l                                           ; $7d3a: $9d
	rst  $38                                         ; $7d3b: $ff
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	rst  $38                                         ; $7d3e: $ff
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	db   $fc                                         ; $7d44: $fc
	xor  c                                           ; $7d45: $a9
	ld   h, e                                        ; $7d46: $63
	ld   de, $1111                                   ; $7d47: $11 $11 $11
	ld   de, $1111                                   ; $7d4a: $11 $11 $11
	ld   de, $1111                                   ; $7d4d: $11 $11 $11
	inc  de                                          ; $7d50: $13
	adc  l                                           ; $7d51: $8d
	rst  $38                                         ; $7d52: $ff
	rst  $38                                         ; $7d53: $ff
	rst  $38                                         ; $7d54: $ff
	rst  $38                                         ; $7d55: $ff
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	db   $fc                                         ; $7d5b: $fc
	xor  c                                           ; $7d5c: $a9
	ld   h, e                                        ; $7d5d: $63
	ld   de, $1111                                   ; $7d5e: $11 $11 $11
	ld   de, $1111                                   ; $7d61: $11 $11 $11
	ld   de, $1111                                   ; $7d64: $11 $11 $11
	ld   [de], a                                     ; $7d67: $12
	ld   a, h                                        ; $7d68: $7c
	rst  $38                                         ; $7d69: $ff
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	db   $fd                                         ; $7d72: $fd
	xor  b                                           ; $7d73: $a8
	ld   h, e                                        ; $7d74: $63
	ld   de, $1111                                   ; $7d75: $11 $11 $11
	ld   de, $1111                                   ; $7d78: $11 $11 $11
	ld   de, $1111                                   ; $7d7b: $11 $11 $11
	ld   [de], a                                     ; $7d7e: $12
	ld   a, e                                        ; $7d7f: $7b
	rst  $38                                         ; $7d80: $ff
	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	db   $fd                                         ; $7d89: $fd
	sub  a                                           ; $7d8a: $97
	ld   d, d                                        ; $7d8b: $52
	ld   de, $1111                                   ; $7d8c: $11 $11 $11
	ld   de, $1111                                   ; $7d8f: $11 $11 $11
	ld   de, $1111                                   ; $7d92: $11 $11 $11
	inc  de                                          ; $7d95: $13
	ld   a, e                                        ; $7d96: $7b
	rst  $38                                         ; $7d97: $ff
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	db   $fc                                         ; $7da0: $fc
	sub  a                                           ; $7da1: $97
	ld   b, c                                        ; $7da2: $41
	ld   de, $1111                                   ; $7da3: $11 $11 $11

Jump_0e3_7da6:
	ld   de, $1111                                   ; $7da6: $11 $11 $11
	ld   de, $1111                                   ; $7da9: $11 $11 $11
	inc  d                                           ; $7dac: $14
	sbc  l                                           ; $7dad: $9d
	rst  $38                                         ; $7dae: $ff
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	db   $eb                                         ; $7db7: $eb
	add  [hl]                                        ; $7db8: $86
	ld   sp, $1111                                   ; $7db9: $31 $11 $11
	ld   de, $1111                                   ; $7dbc: $11 $11 $11
	ld   de, $1111                                   ; $7dbf: $11 $11 $11
	ld   de, $bf26                                   ; $7dc2: $11 $26 $bf
	rst  $38                                         ; $7dc5: $ff
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $38                                         ; $7dca: $ff
	rst  $38                                         ; $7dcb: $ff
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	ret                                              ; $7dce: $c9


	ld   h, h                                        ; $7dcf: $64
	ld   de, $1111                                   ; $7dd0: $11 $11 $11
	ld   de, $1111                                   ; $7dd3: $11 $11 $11
	ld   de, $1111                                   ; $7dd6: $11 $11 $11
	ld   de, $ef5a                                   ; $7dd9: $11 $5a $ef
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	rst  $38                                         ; $7ddf: $ff
	rst  $38                                         ; $7de0: $ff
	rst  $38                                         ; $7de1: $ff
	rst  $38                                         ; $7de2: $ff
	rst  $38                                         ; $7de3: $ff
	cp   $a7                                         ; $7de4: $fe $a7
	ld   d, d                                        ; $7de6: $52
	ld   de, $1111                                   ; $7de7: $11 $11 $11
	ld   de, $1111                                   ; $7dea: $11 $11 $11
	ld   de, $1111                                   ; $7ded: $11 $11 $11
	inc  d                                           ; $7df0: $14
	sbc  h                                           ; $7df1: $9c
	rst  $38                                         ; $7df2: $ff
	rst  $38                                         ; $7df3: $ff
	rst  $38                                         ; $7df4: $ff
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	rst  $38                                         ; $7df9: $ff
	rst  $38                                         ; $7dfa: $ff
	jp   c, $2175                                    ; $7dfb: $da $75 $21

	ld   de, $1111                                   ; $7dfe: $11 $11 $11
	ld   de, $1111                                   ; $7e01: $11 $11 $11
	ld   de, $1111                                   ; $7e04: $11 $11 $11
	ld   c, c                                        ; $7e07: $49
	rst  JumpTable                                         ; $7e08: $df
	rst  $38                                         ; $7e09: $ff
	rst  $38                                         ; $7e0a: $ff
	rst  $38                                         ; $7e0b: $ff
	rst  $38                                         ; $7e0c: $ff
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	cp   $b7                                         ; $7e11: $fe $b7
	ld   d, d                                        ; $7e13: $52
	ld   de, $1111                                   ; $7e14: $11 $11 $11
	ld   de, $1111                                   ; $7e17: $11 $11 $11
	ld   de, $1111                                   ; $7e1a: $11 $11 $11
	inc  de                                          ; $7e1d: $13
	sbc  l                                           ; $7e1e: $9d
	rst  $38                                         ; $7e1f: $ff
	rst  $38                                         ; $7e20: $ff
	rst  $38                                         ; $7e21: $ff
	rst  $38                                         ; $7e22: $ff
	rst  $38                                         ; $7e23: $ff
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	rst  $38                                         ; $7e26: $ff
	rst  $38                                         ; $7e27: $ff
	db   $eb                                         ; $7e28: $eb
	ld   [hl], l                                     ; $7e29: $75
	ld   hl, $1111                                   ; $7e2a: $21 $11 $11
	ld   de, $1111                                   ; $7e2d: $11 $11 $11
	ld   de, $1111                                   ; $7e30: $11 $11 $11
	ld   de, $ef4a                                   ; $7e33: $11 $4a $ef
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	cp   $a7                                         ; $7e3e: $fe $a7
	ld   b, c                                        ; $7e40: $41
	ld   de, $1111                                   ; $7e41: $11 $11 $11
	ld   de, $1111                                   ; $7e44: $11 $11 $11
	ld   de, $1111                                   ; $7e47: $11 $11 $11
	dec  d                                           ; $7e4a: $15
	cp   a                                           ; $7e4b: $bf
	rst  $38                                         ; $7e4c: $ff
	rst  $38                                         ; $7e4d: $ff
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	rst  $38                                         ; $7e51: $ff
	rst  $38                                         ; $7e52: $ff
	rst  $38                                         ; $7e53: $ff
	rst  $38                                         ; $7e54: $ff
	ret                                              ; $7e55: $c9


	ld   b, c                                        ; $7e56: $41
	ld   de, $1111                                   ; $7e57: $11 $11 $11
	ld   de, $1111                                   ; $7e5a: $11 $11 $11
	ld   de, $1111                                   ; $7e5d: $11 $11 $11
	ld   e, l                                        ; $7e60: $5d
	rst  $38                                         ; $7e61: $ff
	rst  $38                                         ; $7e62: $ff
	rst  $38                                         ; $7e63: $ff
	rst  $38                                         ; $7e64: $ff
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	rst  $38                                         ; $7e68: $ff
	rst  $38                                         ; $7e69: $ff
	cp   b                                           ; $7e6a: $b8
	ld   [hl], l                                     ; $7e6b: $75
	ld   sp, $1111                                   ; $7e6c: $31 $11 $11
	ld   de, $1111                                   ; $7e6f: $11 $11 $11
	ld   de, $1611                                   ; $7e72: $11 $11 $16
	rst  JumpTable                                         ; $7e75: $df
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	rst  $38                                         ; $7e7a: $ff
	rst  $38                                         ; $7e7b: $ff
	rst  $38                                         ; $7e7c: $ff
	rst  $38                                         ; $7e7d: $ff
	db   $dd                                         ; $7e7e: $dd
	db   $eb                                         ; $7e7f: $eb
	ld   [hl], e                                     ; $7e80: $73
	ld   de, $1111                                   ; $7e81: $11 $11 $11
	ld   de, $1111                                   ; $7e84: $11 $11 $11
	ld   de, $1911                                   ; $7e87: $11 $11 $19
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	rst  $38                                         ; $7e8f: $ff
	rst  $38                                         ; $7e90: $ff
	rst  $38                                         ; $7e91: $ff
	rst  $38                                         ; $7e92: $ff
	sbc  $ff                                         ; $7e93: $de $ff
	or   l                                           ; $7e95: $b5
	ld   de, $1111                                   ; $7e96: $11 $11 $11
	ld   de, $1111                                   ; $7e99: $11 $11 $11
	ld   de, $1d11                                   ; $7e9c: $11 $11 $1d
	rst  $38                                         ; $7e9f: $ff
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	rst  $38                                         ; $7ea3: $ff
	rst  $38                                         ; $7ea4: $ff
	rst  $38                                         ; $7ea5: $ff
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	rst  JumpTable                                         ; $7ea8: $df
	rst  $38                                         ; $7ea9: $ff
	and  c                                           ; $7eaa: $a1
	ld   de, $1111                                   ; $7eab: $11 $11 $11
	ld   de, $1111                                   ; $7eae: $11 $11 $11
	ld   de, $5f11                                   ; $7eb1: $11 $11 $5f
	rst  $38                                         ; $7eb4: $ff
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	rst  $38                                         ; $7eb8: $ff
	rst  $38                                         ; $7eb9: $ff
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	rst  $38                                         ; $7ebc: $ff
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	ld   d, c                                        ; $7ebf: $51
	ld   de, $1111                                   ; $7ec0: $11 $11 $11
	ld   de, $1111                                   ; $7ec3: $11 $11 $11
	ld   de, $cf13                                   ; $7ec6: $11 $13 $cf
	rst  $38                                         ; $7ec9: $ff
	rst  $38                                         ; $7eca: $ff
	rst  $38                                         ; $7ecb: $ff
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	rst  $38                                         ; $7ece: $ff
	rst  $38                                         ; $7ecf: $ff
	rst  $38                                         ; $7ed0: $ff
	rst  $38                                         ; $7ed1: $ff
	rst  $38                                         ; $7ed2: $ff
	ei                                               ; $7ed3: $fb
	ld   b, c                                        ; $7ed4: $41
	ld   de, $1111                                   ; $7ed5: $11 $11 $11
	ld   de, $1111                                   ; $7ed8: $11 $11 $11
	ld   de, $ef23                                   ; $7edb: $11 $23 $ef
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	rst  $38                                         ; $7ee0: $ff
	rst  $38                                         ; $7ee1: $ff
	rst  $38                                         ; $7ee2: $ff
	rst  $38                                         ; $7ee3: $ff
	rst  $38                                         ; $7ee4: $ff
	rst  $38                                         ; $7ee5: $ff
	rst  $38                                         ; $7ee6: $ff
	rst  $38                                         ; $7ee7: $ff
	ld   hl, sp+$11                                  ; $7ee8: $f8 $11
	ld   de, $1111                                   ; $7eea: $11 $11 $11
	ld   de, $1111                                   ; $7eed: $11 $11 $11
	ld   de, $ff17                                   ; $7ef0: $11 $17 $ff
	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	rst  $38                                         ; $7ef6: $ff
	rst  $38                                         ; $7ef7: $ff
	rst  $38                                         ; $7ef8: $ff
	rst  $38                                         ; $7ef9: $ff
	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	rst  $38                                         ; $7efc: $ff
	or   e                                           ; $7efd: $b3
	ld   de, $1111                                   ; $7efe: $11 $11 $11
	ld   de, $1111                                   ; $7f01: $11 $11 $11
	ld   de, $2c11                                   ; $7f04: $11 $11 $2c
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	rst  $38                                         ; $7f0b: $ff
	rst  $38                                         ; $7f0c: $ff
	rst  $38                                         ; $7f0d: $ff
	rst  $38                                         ; $7f0e: $ff
	rst  $38                                         ; $7f0f: $ff
	rst  $38                                         ; $7f10: $ff
	rst  $38                                         ; $7f11: $ff
	add  e                                           ; $7f12: $83
	ld   de, $1111                                   ; $7f13: $11 $11 $11
	ld   de, $1111                                   ; $7f16: $11 $11 $11
	ld   de, $5d11                                   ; $7f19: $11 $11 $5d
	rst  $38                                         ; $7f1c: $ff
	rst  $38                                         ; $7f1d: $ff
	rst  $38                                         ; $7f1e: $ff
	rst  $38                                         ; $7f1f: $ff
	rst  $38                                         ; $7f20: $ff
	rst  $38                                         ; $7f21: $ff
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	rst  $38                                         ; $7f25: $ff
	cp   $61                                         ; $7f26: $fe $61
	ld   de, $1111                                   ; $7f28: $11 $11 $11
	ld   de, $1111                                   ; $7f2b: $11 $11 $11
	ld   de, $7b13                                   ; $7f2e: $11 $13 $7b
	rst  $38                                         ; $7f31: $ff

Jump_0e3_7f32:
	rst  $38                                         ; $7f32: $ff
	rst  $38                                         ; $7f33: $ff
	rst  $38                                         ; $7f34: $ff
	rst  $38                                         ; $7f35: $ff
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	rst  $38                                         ; $7f38: $ff
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	db   $fd                                         ; $7f3b: $fd
	add  c                                           ; $7f3c: $81
	ld   de, $1111                                   ; $7f3d: $11 $11 $11
	ld   de, $1111                                   ; $7f40: $11 $11 $11
	ld   de, $6f11                                   ; $7f43: $11 $11 $6f
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	db   $db                                         ; $7f50: $db
	ld   h, c                                        ; $7f51: $61
	ld   de, $1111                                   ; $7f52: $11 $11 $11
	ld   de, $1111                                   ; $7f55: $11 $11 $11
	ld   de, $af11                                   ; $7f58: $11 $11 $af
	rst  $38                                         ; $7f5b: $ff
	rst  $38                                         ; $7f5c: $ff
	rst  $38                                         ; $7f5d: $ff
	rst  $38                                         ; $7f5e: $ff
	rst  $38                                         ; $7f5f: $ff
	rst  $38                                         ; $7f60: $ff
	rst  $38                                         ; $7f61: $ff
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	rst  $38                                         ; $7f64: $ff
	db   $eb                                         ; $7f65: $eb
	ld   d, c                                        ; $7f66: $51
	ld   de, $1111                                   ; $7f67: $11 $11 $11
	ld   de, $1111                                   ; $7f6a: $11 $11 $11
	ld   de, $9f11                                   ; $7f6d: $11 $11 $9f
	rst  $38                                         ; $7f70: $ff
	rst  $38                                         ; $7f71: $ff
	rst  $38                                         ; $7f72: $ff
	rst  $38                                         ; $7f73: $ff
	rst  $38                                         ; $7f74: $ff
	rst  $38                                         ; $7f75: $ff
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	ld   hl, sp+$21                                  ; $7f7a: $f8 $21
	ld   de, $1111                                   ; $7f7c: $11 $11 $11
	ld   de, $1111                                   ; $7f7f: $11 $11 $11
	ld   de, $af11                                   ; $7f82: $11 $11 $af
	rst  $38                                         ; $7f85: $ff
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	rst  $38                                         ; $7f8b: $ff
	rst  $38                                         ; $7f8c: $ff
	rst  $38                                         ; $7f8d: $ff
	rst  $38                                         ; $7f8e: $ff
	or   a                                           ; $7f8f: $b7
	ld   b, c                                        ; $7f90: $41
	ld   de, $1111                                   ; $7f91: $11 $11 $11
	ld   de, $1111                                   ; $7f94: $11 $11 $11
	ld   de, $3d13                                   ; $7f97: $11 $13 $3d
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	rst  $38                                         ; $7fa0: $ff
	rst  $38                                         ; $7fa1: $ff
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	db   $db                                         ; $7fa4: $db
	ld   sp, $1111                                   ; $7fa5: $31 $11 $11
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $1111                                   ; $7fab: $11 $11 $11
	inc  l                                           ; $7fae: $2c
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	ei                                               ; $7fb9: $fb
	ld   d, c                                        ; $7fba: $51
	ld   de, $1111                                   ; $7fbb: $11 $11 $11
	ld   de, $1111                                   ; $7fbe: $11 $11 $11
	ld   de, $1311                                   ; $7fc1: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc4: $cf
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	rst  $38                                         ; $7fc9: $ff
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	cp   $a3                                         ; $7fce: $fe $a3
	ld   de, $1111                                   ; $7fd0: $11 $11 $11
	ld   de, $1111                                   ; $7fd3: $11 $11 $11
	ld   de, $1111                                   ; $7fd6: $11 $11 $11
	ld   e, l                                        ; $7fd9: $5d
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	rst  $38                                         ; $7fdc: $ff
	rst  $38                                         ; $7fdd: $ff
	rst  $38                                         ; $7fde: $ff
	rst  $38                                         ; $7fdf: $ff
	rst  $38                                         ; $7fe0: $ff
	rst  $38                                         ; $7fe1: $ff
	rst  $38                                         ; $7fe2: $ff
	rst  $38                                         ; $7fe3: $ff
	rst  $10                                         ; $7fe4: $d7
	ld   de, $1111                                   ; $7fe5: $11 $11 $11
	ld   de, $1111                                   ; $7fe8: $11 $11 $11
	ld   de, $1111                                   ; $7feb: $11 $11 $11
	ld   de, $ffaf                                   ; $7fee: $11 $af $ff
	rst  $38                                         ; $7ff1: $ff
	rst  $38                                         ; $7ff2: $ff
	rst  $38                                         ; $7ff3: $ff
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	db   $ed                                         ; $7ff9: $ed
	sub  h                                           ; $7ffa: $94
	ld   de, $1111                                   ; $7ffb: $11 $11 $11
	db   $11                                         ; $7ffe: $11
	db   $11                                         ; $7fff: $11
